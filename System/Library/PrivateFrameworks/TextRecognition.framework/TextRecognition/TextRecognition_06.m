unint64_t sub_1B4152028(uint64_t a1)
{
  sub_1B429F6D8();
  sub_1B4155024(&unk_1EB884860, MEMORY[0x1E69695A8]);
  v2 = sub_1B429FB28();

  return sub_1B41520C0(a1, v2);
}

unint64_t sub_1B41520C0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1B429F6D8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_1B4155024(&unk_1EB884850, MEMORY[0x1E69695A8]);
      v17 = sub_1B429FB58();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1B4152280(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1B429F6D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885620);
  v40 = a2;
  result = sub_1B42A05D8();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_1B4155024(&unk_1EB884860, MEMORY[0x1E69695A8]);
      result = sub_1B429FB28();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

char *sub_1B415265C()
{
  v1 = v0;
  v32 = sub_1B429F6D8();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885620);
  v4 = *v0;
  v5 = sub_1B42A05C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void sub_1B41528D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B429F6D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1B4152028(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1B415265C();
      goto LABEL_7;
    }

    sub_1B4152280(v18, a3 & 1);
    v24 = sub_1B4152028(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1B4152A9C(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_1B42A06E8();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1B4152A9C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B429F6D8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1B4152B54(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s15TextRecognition18CRImageReaderErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 4)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

uint64_t sub_1B4152D78(uint64_t a1)
{
  v2 = sub_1B429FB98();
  if (!*(a1 + 16))
  {

LABEL_11:
    sub_1B429FB98();
    goto LABEL_12;
  }

  v4 = sub_1B40F0030(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B40E2888(*(a1 + 56) + 32 * v4, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = sub_1B429FB98();
  if (!v22)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (v21 == v8 && v22 == v7)
  {

    v10 = 1;
  }

  else
  {
    v10 = sub_1B42A0678();
  }

LABEL_13:

  v11 = sub_1B429FB98();
  if (!*(a1 + 16))
  {

LABEL_21:
    sub_1B429FB98();
    goto LABEL_22;
  }

  v13 = sub_1B40F0030(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1B40E2888(*(a1 + 56) + 32 * v13, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v16 = sub_1B429FB98();
  if (!v22)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v21 == v16 && v22 == v17)
  {

    goto LABEL_27;
  }

  v20 = sub_1B42A0678();

  if ((v20 & 1) == 0)
  {
LABEL_23:
    if ((v10 & 1) == 0)
    {
      return type metadata accessor for CREngineFast();
    }

LABEL_24:
    sub_1B40DF594();
    swift_allocError();
    *v18 = 1;
    *(v18 + 4) = 1;
    return swift_willThrow();
  }

LABEL_27:
  if ((v10 & 1) == 0)
  {
    goto LABEL_24;
  }

  return type metadata accessor for CREngineAccurate();
}

uint64_t sub_1B415302C(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = sub_1B429FBD8();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  if (!a1)
  {
    return 0x3E6C696E3CLL;
  }

  v4 = 0xD000000000000012;
  v5 = sub_1B429FB98();
  v7 = v6;

  sub_1B410AB70(v5, v7, v23);

  sub_1B40E26E8(v23, &qword_1EB884FE8);
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v9 = sub_1B429FAE8();
  v10 = [v8 isValidJSONObject_];

  if (!v10)
  {
LABEL_9:

    return v4;
  }

  v11 = sub_1B429FAE8();
  *&v23[0] = 0;
  v12 = [v8 dataWithJSONObject:v11 options:2 error:v23];

  v13 = *&v23[0];
  if (!v12)
  {
    v20 = v13;
    v21 = sub_1B429F598();

    swift_willThrow();
    goto LABEL_9;
  }

  v14 = sub_1B429F668();
  v16 = v15;

  *&v23[0] = v14;
  *(&v23[0] + 1) = v16;
  sub_1B429FBC8();
  sub_1B4155188();
  v17 = sub_1B429FBA8();
  v19 = v18;
  sub_1B41551DC(v14, v16);

  if (v19)
  {
    return v17;
  }

  return v4;
}

unint64_t _sSo13CRImageReaderC15TextRecognitionE14defaultOptionsSDySSs8Sendable_pGyFZ_0()
{
  sub_1B4141614(0);
  sub_1B4141614(1u);
  sub_1B4141614(2u);
  v0 = sub_1B429FB98();
  v2 = v1;
  v3 = sub_1B429FB98();
  v5 = v4;
  sub_1B4141614(3u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B42AE6B0;
  *(inited + 32) = sub_1B429FB98();
  *(inited + 40) = v7;
  v8 = sub_1B429FB98();
  v9 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 80) = sub_1B429FB98();
  *(inited + 88) = v11;
  v12 = sub_1B42A07B8();
  v13 = sub_1B40E27B4(0, &qword_1ED95EE90);
  *(inited + 120) = v13;
  *(inited + 96) = v12;
  *(inited + 128) = sub_1B429FB98();
  *(inited + 136) = v14;
  v15 = sub_1B42A0748();
  *(inited + 168) = v13;
  *(inited + 144) = v15;
  *(inited + 176) = sub_1B429FB98();
  *(inited + 184) = v16;
  v17 = sub_1B429FB98();
  *(inited + 216) = v9;
  *(inited + 192) = v17;
  *(inited + 200) = v18;
  *(inited + 224) = sub_1B429FB98();
  *(inited + 232) = v19;
  *(inited + 264) = v9;
  *(inited + 240) = v0;
  *(inited + 248) = v2;
  *(inited + 272) = sub_1B429FB98();
  *(inited + 280) = v20;
  v21 = sub_1B42A0238();
  *(inited + 312) = v13;
  *(inited + 288) = v21;
  *(inited + 320) = sub_1B429FB98();
  *(inited + 328) = v22;
  *(inited + 360) = v9;
  *(inited + 336) = v3;
  *(inited + 344) = v5;
  *(inited + 368) = sub_1B429FB98();
  *(inited + 376) = v23;
  v24 = sub_1B42A0228();
  *(inited + 408) = v13;
  *(inited + 384) = v24;
  *(inited + 416) = sub_1B429FB98();
  *(inited + 424) = v25;
  v26 = sub_1B42A0238();
  *(inited + 456) = v13;
  *(inited + 432) = v26;
  *(inited + 464) = sub_1B429FB98();
  *(inited + 472) = v27;
  v44 = &type metadata for CRFeatureFlags;
  v45 = sub_1B4118C60();
  v43[0] = 0;
  sub_1B429F898();
  __swift_destroy_boxed_opaque_existential_0(v43);
  v28 = sub_1B429FE68();
  *(inited + 504) = v13;
  *(inited + 480) = v28;
  *(inited + 512) = sub_1B429FB98();
  *(inited + 520) = v29;
  v30 = sub_1B429FE68();
  *(inited + 552) = v13;
  *(inited + 528) = v30;
  *(inited + 560) = sub_1B429FB98();
  *(inited + 568) = v31;
  v32 = sub_1B42A0238();
  *(inited + 600) = v13;
  *(inited + 576) = v32;
  *(inited + 608) = sub_1B429FB98();
  *(inited + 616) = v33;
  v34 = sub_1B42A0238();
  *(inited + 648) = v13;
  *(inited + 624) = v34;
  *(inited + 656) = sub_1B429FB98();
  *(inited + 664) = v35;
  v36 = sub_1B429FE68();
  *(inited + 696) = v13;
  *(inited + 672) = v36;
  *(inited + 704) = sub_1B429FB98();
  *(inited + 712) = v37;
  v38 = sub_1B42A0238();
  *(inited + 744) = v13;
  *(inited + 720) = v38;
  *(inited + 752) = sub_1B429FB98();
  *(inited + 760) = v39;
  v40 = sub_1B42A0238();
  *(inited + 792) = v13;
  *(inited + 768) = v40;
  v41 = sub_1B40FC7D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885600);
  swift_arrayDestroy();
  return v41;
}

uint64_t sub_1B41536B4(uint64_t a1)
{
  v2 = _sSo13CRImageReaderC15TextRecognitionE14defaultOptionsSDySSs8Sendable_pGyFZ_0();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v10 = v7;
LABEL_14:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1B40E2888(*(a1 + 56) + 32 * v14, v34);
    *&v35 = v17;
    *(&v35 + 1) = v16;
    sub_1B40D4758(v34, &v36);

    v12 = v10;
LABEL_15:
    v38 = v35;
    v39[0] = v36;
    v39[1] = v37;
    v18 = *(&v35 + 1);
    if (!*(&v35 + 1))
    {

      return v2;
    }

    v19 = v38;
    sub_1B40D4758(v39, &v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[0] = v2;
    v21 = sub_1B40F0030(v19, v18);
    v23 = v2[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v2[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v32 = v21;
      sub_1B410B07C();
      v21 = v32;
      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v8 = v21;

      v2 = *&v34[0];
      v9 = (*(*&v34[0] + 56) + 32 * v8);
      __swift_destroy_boxed_opaque_existential_0(v9);
      sub_1B40D4758(&v35, v9);
      v7 = v12;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1B410AC14(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1B40F0030(v19, v18);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_32;
      }

LABEL_21:
      if (v27)
      {
        goto LABEL_5;
      }

LABEL_22:
      v2 = *&v34[0];
      *(*&v34[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v29 = (v2[6] + 16 * v21);
      *v29 = v19;
      v29[1] = v18;
      sub_1B40D4758(&v35, (v2[7] + 32 * v21));
      v30 = v2[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_31;
      }

      v2[2] = v31;
      v7 = v12;
      if (!v5)
      {
LABEL_7:
        if (v6 <= v7 + 1)
        {
          v11 = v7 + 1;
        }

        else
        {
          v11 = v6;
        }

        v12 = v11 - 1;
        while (1)
        {
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v10 >= v6)
          {
            v5 = 0;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            goto LABEL_15;
          }

          v5 = *(a1 + 64 + 8 * v10);
          ++v7;
          if (v5)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1B42A06E8();
  __break(1u);
  return result;
}

uint64_t sub_1B4153950()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v11 = *(v0 + 11);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1B40E6828;

  return sub_1B414976C(v5, v6, v7, v8, v12, v2, v3, v4, v9, v10, v11);
}

uint64_t sub_1B4153A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageReaderConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4153AA0(unint64_t a1, void *a2, void **a3)
{
  v5 = v3;
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_67;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v80 = MEMORY[0x1E69E7CC0];
  sub_1B42A0488();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v73 = v7 & 0xC000000000000001;
    v67 = v7 + 32;
    v68 = v7 & 0xFFFFFFFFFFFFFF8;
    v70 = a3;
    v71 = v5;
    v69 = v7;
    v72 = v8;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_62;
      }

      if (v73)
      {
        v12 = MEMORY[0x1B8C72CD0]();
      }

      else
      {
        if (v10 >= *(v68 + 16))
        {
          goto LABEL_66;
        }

        v12 = *(v67 + 8 * v10);
      }

      v4 = v12;
      v13 = objc_opt_self();
      [a2 size];
      v75 = [v13 _lineRegionFromLineTextFeature_imageSize_];
      v14 = [v4 stringValue];
      if (!v14)
      {
        goto LABEL_54;
      }

      v15 = v14;
      v74 = v11;
      if (!*a3)
      {
        v16 = [objc_allocWithZone(CRMutableRecognitionResult) init];
        v17 = *a3;
        *a3 = v16;
      }

      v76 = [objc_allocWithZone(CRMutableRecognizedTextRegion) initWithType:2 detectedLineRegion:v75];
      [v76 setText_];

      v18 = [v4 candidateProbs];
      sub_1B40E27B4(0, &qword_1ED95EE90);
      v19 = sub_1B429FDF8();

      if (v19 >> 62)
      {
        if (!sub_1B42A0518())
        {
LABEL_21:

          v23 = 0.0;
          goto LABEL_22;
        }
      }

      else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1B8C72CD0](0, v19);
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v20 = *(v19 + 32);
      }

      v21 = v20;

      [v21 doubleValue];
      v23 = v22;

LABEL_22:
      [v76 setConfidence_];
      v24 = [v4 candidateProbs];
      v25 = sub_1B429FDF8();

      if (v25 >> 62)
      {
        v26 = v76;
        if (!sub_1B42A0518())
        {
LABEL_29:

          v30 = 0.0;
          goto LABEL_30;
        }
      }

      else
      {
        v26 = v76;
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B8C72CD0](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v27 = *(v25 + 32);
      }

      v28 = v27;

      [v28 doubleValue];
      v30 = v29;

      v26 = v76;
LABEL_30:
      [v26 setActivationProbability_];
      v31 = [v4 selectedLocale];
      if (!v31)
      {
        sub_1B429FB98();
        v31 = sub_1B429FB88();
        v26 = v76;
      }

      [v26 setLocale_];

      v32 = [v4 subFeatures];
      if (v32)
      {
        v33 = v32;
        sub_1B40E27B4(0, &qword_1ED95E6D8);
        v34 = sub_1B429FDF8();

        if (v34 >> 62)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v34 = v9;
        if (v9 >> 62)
        {
LABEL_49:
          v35 = sub_1B42A0518();
          if (v35)
          {
LABEL_35:
            sub_1B42A0488();
            if (v35 < 0)
            {
              goto LABEL_64;
            }

            v7 = 0;
            while (1)
            {
              if ((v34 & 0xC000000000000001) != 0)
              {
                v36 = MEMORY[0x1B8C72CD0](v7, v34);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  v8 = sub_1B42A0518();
                  goto LABEL_3;
                }

                if (v7 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_61;
                }

                v36 = *(v34 + 8 * v7 + 32);
              }

              v37 = v36;
              v38 = [objc_allocWithZone(CRMutableRecognizedTextRegion) init];
              [v37 topLeft];
              v78 = v40;
              v79 = v39;
              [v37 topRight];
              v42 = v41;
              v44 = v43;
              [v37 bottomRight];
              v46 = v45;
              v48 = v47;
              [v37 bottomLeft];
              v50 = v49;
              v52 = v51;
              [a2 size];
              v55 = [objc_allocWithZone(CRNormalizedQuad) initWithNormalizedTopLeft:v79 topRight:v78 bottomRight:v42 bottomLeft:v44 size:{v46, v48, v50, v52, v53, v54}];
              [v38 setBoundingQuad_];

              v56 = [v37 stringValue];
              if (v56)
              {
                v57 = v56;
                sub_1B429FB98();
              }

              v58 = sub_1B429FB88();

              [v38 setText_];

              a3 = [v4 selectedLocale];
              if (!a3)
              {
                sub_1B429FB98();
                a3 = sub_1B429FB88();
              }

              [v38 setLocale_];

              [v38 setTextRegionType_];
              ++v7;
              sub_1B42A0458();
              v5 = *(v9 + 16);
              sub_1B42A0498();
              sub_1B42A04A8();
              sub_1B42A0468();
              if (v35 == v7)
              {

                a3 = v70;
                v5 = v71;
                v7 = v69;
                v9 = MEMORY[0x1E69E7CC0];
                goto LABEL_51;
              }
            }
          }

          goto LABEL_50;
        }
      }

      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_35;
      }

LABEL_50:

LABEL_51:
      sub_1B40E27B4(0, &qword_1ED95E670);
      v59 = sub_1B429FDE8();

      v60 = v76;
      [v76 setSubregions_];

      v61 = *a3;
      v8 = v72;
      if (*a3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1B42AC090;
        *(v62 + 32) = v76;
        v63 = v61;
        v64 = v76;
        v65 = sub_1B429FDE8();
        v60 = v76;

        [v63 addRecognizedRegions:v65 detectedRegion:v75];
      }

      v11 = v74;
LABEL_54:
      if (v5)
      {
        goto LABEL_69;
      }

      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      v10 = v11;
      if (v11 == v8)
      {
        return v80;
      }
    }
  }

  __break(1u);
LABEL_69:

  __break(1u);
  return result;
}

char *sub_1B415432C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v20[-1] - v5;
  v7 = type metadata accessor for ImageReaderConfiguration();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4152D78(a1);
  if (!v1)
  {
    v13 = v11;
    v14 = v12;

    ImageReaderConfiguration.init(options:)(v15, v10);
    v20[3] = v7;
    v20[4] = sub_1B4155024(&qword_1ED95E850, type metadata accessor for ImageReaderConfiguration);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
    sub_1B4153A3C(v10, boxed_opaque_existential_0);
    v17 = sub_1B429F6D8();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v6 = (*(v14 + 8))(v20, v6, v13, v14);
    sub_1B40FC988(v10);
  }

  return v6;
}

uint64_t sub_1B4154508(uint64_t a1)
{
  v2 = sub_1B429FB98();
  v4 = v3;
  v5 = objc_opt_self();
  sub_1B40EFB78(a1);
  v6 = sub_1B429FAE8();

  v7 = [v5 computeDeviceTypeForOptions:v6 mtlDevice:0];

  v8 = sub_1B429FB98();
  if (*(a1 + 16))
  {
    v10 = sub_1B40F0030(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_1B40E2888(*(a1 + 56) + 32 * v10, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
      if (swift_dynamicCast())
      {

        v2 = v17;
        v4 = v18;
      }
    }
  }

  else
  {
  }

  if (v2 == sub_1B429FB98() && v4 == v13)
  {
  }

  else
  {
    v15 = sub_1B42A0678();

    if ((v15 & 1) == 0)
    {
      return v2;
    }
  }

  if ((v7 - 1) >= 2)
  {
    deviceHasAppleNeuralEngine();
  }

  return sub_1B429FB98();
}

uint64_t sub_1B41546F4(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18[-v8];
  v10 = sub_1B41536B4(a1);
  v11 = sub_1B4152D78(v10);
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 1;
  v15 = sub_1B429FEE8();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  *(v16 + 24) = v14;
  *(v16 + 32) = v11;
  *(v16 + 40) = v13;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;

  sub_1B40E6C14(v9, &unk_1B42AE870, v16, MEMORY[0x1E69E7CA8] + 8);
  sub_1B40E26E8(v9, &unk_1EB884C70);

  swift_beginAccess();
  if (*(v14 + 32))
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4154934()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v12 = *(v0 + 11);
  v11 = *(v0 + 12);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1B40E6828;

  return sub_1B414E138(v5, v6, v7, v8, v13, v2, v3, v4, v9, v10, v12, v11);
}

uint64_t sub_1B4154A2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B40E6828;

  return sub_1B414EB24(v8, v2, v3, v4, v5, v7, v6);
}

void sub_1B4154AEC(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v9 = a1;
    v6 = [v5 detectedLineRegion];
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      v8 = v7;
      MEMORY[0x1B8C72680]();
      if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1B4154C10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B40E6828;

  return sub_1B414FE10(v9, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B4154CF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B40E6828;

  return sub_1B4151A88(v6, v2, v3, v5, v4);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CRImageReaderError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRImageReaderError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B4154DFC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4154E18(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4154E90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B40E17D0;

  return sub_1B414CDEC(v8, v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1B4154F90()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B40E6828;

  return sub_1B41483BC(v3, v2);
}

uint64_t sub_1B4155024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_61Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1B41550C0()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B40E6828;

  return sub_1B414D1B0(v6, v7, v8, v2, v3, v4, v5);
}

unint64_t sub_1B4155188()
{
  result = qword_1ED95E5C0;
  if (!qword_1ED95E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E5C0);
  }

  return result;
}

uint64_t sub_1B41551DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B4155254()
{
  v1 = [v0 textFeatureFilter];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885640);
  return swift_dynamicCast();
}

void CRNeuralRecognizerConfiguration.createTextFeatureFilter()(uint64_t *a1@<X8>)
{
  v3 = [v1 revision];
  if ((v3 - 1) > 1)
  {
    v4 = [v1 locale];
    v5 = sub_1B429FB98();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    CRLocale.init(rawValue:)(v8);
    if (v11 == 30)
    {
      __break(1u);
    }

    else
    {
      v10 = v11;
      a1[3] = &type metadata for CRRegionFilterMultiLocale;
      v9 = swift_allocObject();
      *a1 = v9;
      CRRegionFilterMultiLocale.init(locale:)(&v10, v9 + 16);
    }
  }

  else
  {
    nullsub_1(v3);
    a1[3] = &type metadata for CRRegionFilterIdentity;
  }
}

void CRMultiLocaleRecognizerConfiguration.createTextFeatureFilter()(uint64_t *a1@<X8>)
{
  v3 = [v1 revision];
  if ((v3 - 1) > 1)
  {
    v4 = [v1 languages];
    v5 = [v4 objectAtIndexedSubscript_];

    sub_1B42A0348();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    CRLocale.init(rawValue:)(v7);
    if (v9 == 30)
    {
      __break(1u);
    }

    else
    {
      v8[0] = v9;
      a1[3] = &type metadata for CRRegionFilterMultiLocale;
      v6 = swift_allocObject();
      *a1 = v6;
      CRRegionFilterMultiLocale.init(locale:)(v8, v6 + 16);
    }
  }

  else
  {
    nullsub_1(v3);
    a1[3] = &type metadata for CRRegionFilterIdentity;
  }
}

id sub_1B4155544(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_1B42A0668();
  __swift_destroy_boxed_opaque_existential_0(v7);

  return v5;
}

uint64_t sub_1B41555BC(uint64_t isUniquelyReferenced_nonNull_native)
{
  v76 = isUniquelyReferenced_nonNull_native;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_73;
  }

  v1 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v73 = v1;
  if (v1)
  {
    while (1)
    {
      v2 = isUniquelyReferenced_nonNull_native;
      v77 = MEMORY[0x1E69E7CC0];
      isUniquelyReferenced_nonNull_native = sub_1B4155D30(0, v1 & ~(v1 >> 63), 0);
      if (v1 < 0)
      {
        __break(1u);
        goto LABEL_77;
      }

      v3 = 0;
      v4 = v77;
      v5 = v2;
      v6 = v2 & 0xC000000000000001;
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v6)
        {
          v9 = MEMORY[0x1B8C72CD0](v3);
        }

        else
        {
          if (v3 >= *(v7 + 16))
          {
            goto LABEL_69;
          }

          v9 = *(v5 + 8 * v3 + 32);
        }

        v10 = v9;
        v11 = [v9 boundingQuad];
        if (!v11)
        {
          __break(1u);
LABEL_80:
          __break(1u);

          __break(1u);
          return result;
        }

        v12 = v11;
        [v11 size];
        v14 = v13;

        v77 = v4;
        v16 = *(v4 + 2);
        v15 = *(v4 + 3);
        if (v16 >= v15 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1B4155D30((v15 > 1), v16 + 1, 1);
          v4 = v77;
        }

        *(v4 + 2) = v16 + 1;
        *&v4[8 * v16 + 32] = v14;
        ++v3;
        v5 = v76;
        if (v8 == v1)
        {
          v2 = v76;
          while (1)
          {
            v77 = v4;

            isUniquelyReferenced_nonNull_native = sub_1B4155F88(&v77);
            v17 = *(v77 + 2);
            if (v17)
            {
              break;
            }

LABEL_77:
            __break(1u);
LABEL_78:
            v4 = MEMORY[0x1E69E7CC0];
          }

          v18 = v2;
          v19 = *(v4 + 2);
          if (!v19)
          {
            v69 = MEMORY[0x1E69E7CC0];
            goto LABEL_35;
          }

          v20 = 0;
          v21 = *&v77[8 * (v17 >> 1) + 32] * 1.7;
          v22 = v18 & 0xC000000000000001;
          v23 = v18 & 0xFFFFFFFFFFFFFF8;
          v24 = v18 + 32;
          v25 = v19 - 1;
          v69 = MEMORY[0x1E69E7CC0];
LABEL_18:
          v26 = v20;
          while (1)
          {
            if (v26 >= *(v4 + 2))
            {
              goto LABEL_71;
            }

            if (v73 == v26)
            {
              goto LABEL_33;
            }

            v27 = *&v4[8 * v26 + 32];
            if (v22)
            {
              v28 = MEMORY[0x1B8C72CD0](v26, v76);
              if (v21 < v27)
              {
                goto LABEL_27;
              }
            }

            else
            {
              if (v26 >= *(v23 + 16))
              {
                goto LABEL_72;
              }

              v28 = *(v24 + 8 * v26);
              if (v21 < v27)
              {
LABEL_27:
                v70 = v25;
                v74 = v28;
                v29 = v69;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v77 = v69;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  isUniquelyReferenced_nonNull_native = sub_1B4155D10(0, *(v69 + 2) + 1, 1);
                  v29 = v77;
                }

                v31 = *(v29 + 2);
                v30 = *(v29 + 3);
                v32 = v31 + 1;
                v33 = v74;
                if (v31 >= v30 >> 1)
                {
                  isUniquelyReferenced_nonNull_native = sub_1B4155D10((v30 > 1), v31 + 1, 1);
                  v32 = v31 + 1;
                  v33 = v74;
                  v29 = v77;
                }

                v20 = v26 + 1;
                *(v29 + 2) = v32;
                v69 = v29;
                v34 = &v29[16 * v31];
                *(v34 + 4) = v27;
                *(v34 + 5) = v33;
                v25 = v70;
                v18 = v76;
                if (v70 == v26)
                {
LABEL_35:
                  v71 = (v69 + 16);
                  v75 = *(v69 + 2);
                  if (v75)
                  {
                    v35 = *(v69 + 5);
                    v36 = [v35 boundingQuad];
                    if (v36)
                    {
                      v37 = v36;
                      swift_beginAccess();
                      v38 = *(**(v72 + 80) + 312);

                      v39 = v38(v35);

                      [v37 bottomLeft];
                      if (v40 >= 0.5 || ([v37 bottomRight], v41 >= 0.5) || (objc_msgSend(v37, sel_topLeft), v42 >= 0.5) || (objc_msgSend(v37, sel_topRight), v43 >= 0.5))
                      {
                      }

                      else
                      {
                        [v35 activationProbability];
                        v45 = v44;
                        [v39 minTitleProbability];
                        v47 = v46;

                        if (v45 < v47)
                        {

                          return v35;
                        }
                      }
                    }

                    v18 = v76;
                  }

                  v48 = v18;
                  isUniquelyReferenced_nonNull_native = swift_beginAccess();
                  v49 = v48;
                  v50 = 0;
                  v51 = v48 & 0xC000000000000001;
                  v52 = v48 & 0xFFFFFFFFFFFFFF8;
                  while (2)
                  {
                    if (v51)
                    {
                      isUniquelyReferenced_nonNull_native = MEMORY[0x1B8C72CD0](v50, v49);
                    }

                    else
                    {
                      if (v50 >= *(v52 + 16))
                      {
                        goto LABEL_68;
                      }

                      isUniquelyReferenced_nonNull_native = *(v49 + 8 * v50 + 32);
                    }

                    v35 = isUniquelyReferenced_nonNull_native;
                    v53 = v50 + 1;
                    if (__OFADD__(v50, 1))
                    {
                      goto LABEL_67;
                    }

                    v1 = *(**(v72 + 80) + 312);

                    v54 = (v1)(v35);

                    v55 = [v35 text];
                    if (!v55)
                    {
                      goto LABEL_80;
                    }

                    v56 = v55;
                    sub_1B429FB98();

                    v57 = sub_1B429FC68();

                    isUniquelyReferenced_nonNull_native = [v54 minTitleLength];
                    if (v57 >= isUniquelyReferenced_nonNull_native)
                    {
                      [v35 activationProbability];
                      v59 = v58;
                      isUniquelyReferenced_nonNull_native = [v54 minTitleProbability];
                      if (v59 > v60)
                      {

                        return v35;
                      }
                    }

                    if (v75)
                    {
                      if (v75 > *v71)
                      {
                        goto LABEL_70;
                      }

                      v61 = v71[2 * v75 + 1];
                      sub_1B41560BC();
                      v62 = v61;
                      if ((sub_1B42A0258() & 1) == 0)
                      {
                        [v35 activationProbability];
                        v64 = v63;
                        [v54 minTitleProbability];
                        v66 = v65;

                        if (v64 > v66)
                        {

                          return v35;
                        }

LABEL_48:

                        ++v50;
                        v49 = v76;
                        if (v53 == v73)
                        {

                          return 0;
                        }

                        continue;
                      }
                    }

                    break;
                  }

                  goto LABEL_48;
                }

                goto LABEL_18;
              }
            }

            ++v26;

            if (v19 == v26)
            {
LABEL_33:
              v18 = v76;
              goto LABEL_35;
            }
          }
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      v2 = isUniquelyReferenced_nonNull_native;
      v73 = sub_1B42A0518();
      if (!v73)
      {
        break;
      }

      v68 = sub_1B42A0518();
      if (!v68)
      {
        goto LABEL_78;
      }

      v1 = v68;
      isUniquelyReferenced_nonNull_native = v2;
    }
  }

  return 0;
}

void *sub_1B4155D10(void *a1, int64_t a2, char a3)
{
  result = sub_1B4155D50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4155D30(char *a1, int64_t a2, char a3)
{
  result = sub_1B4155E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4155D50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885650);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4155E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B4155F88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4156858(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B42A0638();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B429FE28();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B4156108(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1B41560BC()
{
  result = qword_1ED95E670;
  if (!qword_1ED95E670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95E670);
  }

  return result;
}

uint64_t sub_1B4156108(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B40E05F0(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1B4156664((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B40DDD00(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1B40DDD00((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1B4156664((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1B4156664(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1B415686C(void *a1, void *a2, uint64_t a3)
{
  v57 = a3;
  v59 = a2;
  v62 = sub_1B429F9B8();
  v5 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v6);
  v60 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v55 - v10;
  v12 = sub_1B429F9E8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B410F8A0();
  v18 = *(v13 + 16);
  v61 = v12;
  v18(v16, v17, v12);
  v19 = sub_1B410F9C4();
  v63 = *v19;
  v20 = *(v19 + 16);
  v21 = a1;
  sub_1B429F9A8();
  v22 = sub_1B429F9C8();
  v56 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v55[1] = v3;
  if (v20)
  {
    if (v63 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v63 & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v63 >> 16 <= 0x10)
      {
        v63 = &v65;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (!v63)
  {
    __break(1u);
LABEL_5:

    goto LABEL_13;
  }

LABEL_10:
  v24 = swift_slowAlloc();
  *v24 = 134217984;
  v25 = [v21 latestResult];
  v26 = [v25 trackedRegions];

  sub_1B40E27B4(0, &qword_1ED95EE70);
  v27 = sub_1B429FDF8();

  if (v27 >> 62)
  {
    v28 = sub_1B42A0518();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v24 + 4) = v28;

  v29 = sub_1B429F998();
  _os_signpost_emit_with_name_impl(&dword_1B40D2000, v22, v56, v29, v63, "tracked quads: %ld", v24, 0xCu);
  MEMORY[0x1B8C74FA0](v24, -1, -1);
LABEL_13:

  v30 = v62;
  (*(v5 + 16))(v60, v11, v62);
  sub_1B429FA28();
  swift_allocObject();
  v31 = sub_1B429FA18();
  (*(v5 + 8))(v11, v30);
  (*(v13 + 8))(v16, v61);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v33 = result;
  objc_sync_enter(result);

  Strong = swift_unknownObjectWeakLoadStrong();
  v35 = v59;
  if (Strong)
  {
    v36 = Strong;
    [Strong setDidDispatchOCROnFrame_];
  }

  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;
    [v37 setDidRunAssociationOnFrame_];
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    [(CRImageReaderTrackingSession *)v39 applyOpticalFlowTrackingForFrame:v35];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = result;
    objc_sync_exit(result);

    if ([(CRImageReaderTrackingSession *)v21 shouldRunOCROnCurrentFrame])
    {
      v42 = swift_allocObject();
      v63 = v31;
      v43 = v58;
      v42[2] = v57;
      v42[3] = v35;
      v42[4] = v43;
      v42[5] = v32;
      v42[6] = v21;
      aBlock[4] = sub_1B4158EE0;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B40E7E24;
      aBlock[3] = &block_descriptor_7;
      v44 = _Block_copy(aBlock);
      v45 = v21;
      v31 = v63;

      v46 = v35;

      v47 = [(CRImageReaderTrackingSession *)v45 dispatchIfReady:v44];
      _Block_release(v44);
      if (v47)
      {
        [v45 setDidDispatchOCROnFrame_];
        [(CRImageReaderTrackingSession *)v45 prepareSessionForOCRDispatch];
      }
    }

    v48 = [v21 usesGroupedRegions];
    v49 = [v21 latestResult];
    v50 = v49;
    if (v48)
    {
      v51 = [v49 regionTrackingGroups];

      if (v51)
      {
        v52 = &selRef_documentWithTrackedRegionGroups_;
LABEL_32:
        v53 = [objc_opt_self() *v52];

        Current = CFAbsoluteTimeGetCurrent();
        [(CRImageReaderTrackingSession *)v21 setLastFrameTime:?];

        sub_1B4156F54(v31, v21);

        return v53;
      }

      sub_1B40E27B4(0, &qword_1EB885668);
      v52 = &selRef_documentWithTrackedRegionGroups_;
    }

    else
    {
      v51 = [v49 trackedRegions];

      if (v51)
      {
        v52 = &selRef_documentWithTrackedRegions_;
        goto LABEL_32;
      }

      sub_1B40E27B4(0, &qword_1ED95EE70);
      v52 = &selRef_documentWithTrackedRegions_;
    }

    sub_1B429FDF8();
    v51 = sub_1B429FDE8();

    goto LABEL_32;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B4156F54(uint64_t a1, void *a2)
{
  v3 = sub_1B429F9F8();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B429F9B8();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B429F9E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B410F8A0();
  v17 = *(v12 + 16);
  v39 = v11;
  v17(v15, v16, v11);
  v18 = sub_1B410F9C4();
  v19 = *v18;
  v20 = *(v18 + 16);
  v21 = a2;
  v22 = sub_1B429F9C8();
  sub_1B429FA08();
  v38 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {

    v22 = v21;
LABEL_16:

    (*(v40 + 8))(v10, v41);
    return (*(v12 + 8))(v15, v39);
  }

  if ((v20 & 1) == 0)
  {
    if (v19)
    {
      v24 = v19;
LABEL_10:

      sub_1B429FA38();

      v26 = v36;
      v25 = v37;
      if ((*(v36 + 88))(v6, v37) == *MEMORY[0x1E69E93E8])
      {
        v27 = 0;
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v26 + 8))(v6, v25);
        v28 = "tracked quads: %ld";
        v27 = 1;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      *(v29 + 1) = v27;
      *(v29 + 2) = 2048;
      v30 = [v21 latestResult];
      v31 = [v30 trackedRegions];

      sub_1B40E27B4(0, &qword_1ED95EE70);
      v32 = sub_1B429FDF8();

      if (v32 >> 62)
      {
        v33 = sub_1B42A0518();
      }

      else
      {
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v29 + 4) = v33;

      v34 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v22, v38, v34, v24, v28, v29, 0xCu);
      MEMORY[0x1B8C74FA0](v29, -1, -1);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v19 >> 32)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v19 & 0xFFFFF800) != 0xD800)
  {
    if (v19 >> 16 <= 0x10)
    {
      v24 = &v42;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1B415737C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v132 = a5;
  v155 = a4;
  *&v161 = a3;
  v154 = a2;
  *&v160 = a1;
  v135 = sub_1B429F9F8();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v5);
  v133 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v131 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v142 = &v130 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v153 = &v130 - v15;
  v16 = type metadata accessor for ImageReaderConfiguration();
  v150 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v152 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  *&v163 = &v130 - v21;
  v22 = sub_1B429F9B8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v157 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v130 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v130 - v32;
  v34 = sub_1B429F9E8();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v156 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v130 - v40;
  v42 = sub_1B410F8A0();
  v43 = *(v35 + 16);
  v145 = v42;
  v146 = v35 + 16;
  v144 = v43;
  (v43)(v41);
  v44 = sub_1B410F934();
  v162 = *v44;
  v143 = v44;
  v45 = *(v44 + 16);
  sub_1B429F9A8();
  v46 = sub_1B429F9C8();
  LODWORD(v149) = sub_1B42A01C8();
  v47 = sub_1B42A0278();
  v158 = v22;
  if (v47)
  {
    v159 = v35;
    if ((v45 & 1) == 0)
    {
      v48 = v162;
      if (v162)
      {
LABEL_9:
        v49 = swift_slowAlloc();
        *v49 = 0;
        v50 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v46, v149, v50, v48, "", v49, 2u);
        MEMORY[0x1B8C74FA0](v49, -1, -1);
        v22 = v158;
        v35 = v159;
        goto LABEL_10;
      }

      __break(1u);
    }

    if (HIDWORD(v162))
    {
      __break(1u);
    }

    else
    {
      if ((v162 & 0xFFFFF800) == 0xD800)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v162 >> 16 <= 0x10)
      {
        v48 = &v164;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_10:

  (*(v23 + 16))(v29, v33, v22);
  sub_1B429FA28();
  swift_allocObject();
  v162 = sub_1B429FA18();
  v51 = *(v23 + 8);
  v141 = v23 + 8;
  v137 = v51;
  v51(v33, v22);
  v52 = *(v35 + 8);
  v147 = v34;
  v159 = v35 + 8;
  v136 = v52;
  v52(v41, v34);

  v54 = v163;
  ImageReaderConfiguration.init(options:)(v53, v163);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v149 = (v55 + 16);
  v56 = sub_1B429FEE8();
  v57 = *(v56 - 8);
  v58 = *(v57 + 56);
  v59 = v153;
  v140 = v56;
  v139 = v58;
  v138 = v57 + 56;
  (v58)(v153, 1, 1);
  v60 = v54;
  v61 = v152;
  sub_1B4153A3C(v60, v152);
  v62 = (*(v150 + 80) + 32) & ~*(v150 + 80);
  v63 = (v151 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v66 = v154;
  *(v65 + 16) = v161;
  *(v65 + 24) = v66;
  sub_1B4158F08(v61, v65 + v62);
  *(v65 + v63) = v155;
  *(v65 + v64) = v162;
  *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = v55;

  v67 = v66;

  v148 = v55;

  sub_1B40E6C14(v59, &unk_1B42AE8A0, v65, MEMORY[0x1E69E7CA8] + 8);
  sub_1B40E26E8(v59, &unk_1EB884C70);

  v68 = v149;
  swift_beginAccess();
  v69 = *v68;
  v70 = v157;
  v71 = v156;
  if (!*v68)
  {
    sub_1B40FC988(v163);

LABEL_45:

    return;
  }

  v152 = v67;
  v153 = 0;
  v72 = v147;
  v144(v156, v145, v147);
  v73 = *v143;
  v74 = *(v143 + 16);
  v154 = v69;
  v75 = sub_1B429F9C8();
  sub_1B429FA08();
  v76 = sub_1B42A01B8();
  v77 = sub_1B42A0278();
  v78 = v70;
  v79 = v158;
  if ((v77 & 1) == 0)
  {
LABEL_24:

    v137(v78, v79);
    v136(v71, v72);
    v86 = swift_allocObject();
    *(v86 + 16) = 0;
    v87 = (v86 + 16);
    v88 = sub_1B429FB98();
    v90 = v160;
    if (*(v160 + 16))
    {
      v91 = sub_1B40F0030(v88, v89);
      v93 = v92;

      v94 = v161;
      v95 = v154;
      v96 = v152;
      if (v93)
      {
        sub_1B40E2888(*(v90 + 56) + 32 * v91, v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v97 = v142;
          if (v165[8])
          {
            type metadata accessor for CREngineAccurate.Result();
            v98 = CREngineAccurate.Result.__allocating_init()();
            v99 = sub_1B40F3450();
            v100 = sub_1B410F988();
            MEMORY[0x1EEE9AC00](v100, v100[1]);
            *(&v130 - 4) = v98;
            *(&v130 - 3) = v94;
            *(&v130 - 2) = v95;
            v101 = MEMORY[0x1E69E7CA8];
            sub_1B40FF6E8(v103, v102, sub_1B40FC480, (&v130 - 6), v103);

            [v96 size];
            v105 = v104;
            v107 = v106;
            v97 = v131;
            v139(v131, 1, 1, v140);
            v108 = swift_allocObject();
            v108[2] = v86;
            v108[3] = v94;
            v108[4] = v98;
            v108[5] = v105;
            v108[6] = v107;

            v109 = v101 + 8;
            v110 = v153;
            sub_1B40E6C14(v97, &unk_1B42AE8C0, v108, v109);
            if (v110)
            {

LABEL_34:

              sub_1B40E26E8(v97, &unk_1EB884C70);
              sub_1B40FC988(v163);

LABEL_44:

              goto LABEL_45;
            }

            sub_1B40E26E8(v97, &unk_1EB884C70);

            goto LABEL_36;
          }

LABEL_32:
          v139(v97, 1, 1, v140);
          v111 = swift_allocObject();
          v111[2] = v86;
          v111[3] = v94;
          v111[4] = v95;
          v111[5] = v96;

          v112 = v96;
          v113 = v95;

          v110 = v153;
          sub_1B40E6C14(v97, &unk_1B42AE8B0, v111, MEMORY[0x1E69E7CA8] + 8);
          if (v110)
          {

            goto LABEL_34;
          }

          sub_1B40E26E8(v97, &unk_1EB884C70);
LABEL_36:

          v114 = v163;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            sub_1B40FC988(v114);

            return;
          }

          v116 = Strong;
          swift_beginAccess();
          v117 = *v87;
          if (*v87)
          {
            v118 = v117;
            v119 = [v118 trackingDocumentWithTrackedType:-[CRImageReaderTrackingSession trackedRegionType](v116) includeLines:{objc_msgSend(v116, sel_shouldIncludeLinesInTrackingResult)}];

            v117 = *v87;
          }

          else
          {
            v119 = 0;
          }

          *v87 = v119;

          objc_sync_enter(v116);
          v120.n128_f64[0] = [(CRImageReaderTrackingSession *)v116 sceneHomography];
          [(CRImageReaderTrackingSession *)v116 setAccumulatedSceneHomography:v120, v121, v122];
          if (*v87)
          {
            v123 = *v87;
            v124 = [v116 latestResult];
            *&v125 = [(CRImageReaderTrackingSession *)v116 accumulatedSceneHomography];
            v163 = v125;
            v161 = v126;
            v160 = v127;
            v128 = [v132 usesGroupedRegions];
            v129 = [v124 resultByUpdatingWithDocument:v123 sceneHomography:v128 usesGroupedRegions:{*&v163, *&v161, *&v160}];

            [v116 setLatestResult_];
            [v116 setDidRunAssociationOnFrame_];
            [(CRImageReaderTrackingSession *)v116 setSceneHomography:*(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)];
            [(CRImageReaderTrackingSession *)v116 saveQuadsAfterAssociation];
          }

          objc_sync_exit(v116);

          sub_1B40FC988(v114);
          goto LABEL_44;
        }
      }
    }

    else
    {

      v94 = v161;
      v95 = v154;
      v96 = v152;
    }

    v97 = v142;
    goto LABEL_32;
  }

  if ((v74 & 1) == 0)
  {
    if (v73)
    {
      v80 = v135;
      v81 = v134;
LABEL_20:

      v82 = v133;
      sub_1B429FA38();

      if ((*(v81 + 88))(v82, v80) == *MEMORY[0x1E69E93E8])
      {
        v83 = "[Error] Interval already ended";
      }

      else
      {
        (*(v81 + 8))(v82, v80);
        v83 = "";
      }

      v79 = v158;
      v84 = swift_slowAlloc();
      *v84 = 0;
      v78 = v157;
      v85 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v75, v76, v85, v73, v83, v84, 2u);
      MEMORY[0x1B8C74FA0](v84, -1, -1);
      v72 = v147;
      v71 = v156;
      goto LABEL_24;
    }

    goto LABEL_49;
  }

  if (v73 >> 32)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v80 = v135;
  v81 = v134;
  if ((v73 & 0xFFFFF800) != 0xD800)
  {
    if (v73 >> 16 <= 0x10)
    {
      v73 = v165;
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_53:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1B41582EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v7[14] = a2;
  v7[15] = a3;
  v8 = sub_1B429F9F8();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_1B429F9B8();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v10 = sub_1B429F9E8();
  v7[26] = v10;
  v7[27] = *(v10 - 8);
  v7[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E0);
  v7[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B41584A4, 0, 0);
}

uint64_t sub_1B41584A4()
{
  v1 = v0[29];
  v2 = v0[16];
  v3 = sub_1B429F868();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v0[5] = type metadata accessor for ImageReaderConfiguration();
  v0[6] = sub_1B4159210();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1B4153A3C(v2, boxed_opaque_existential_0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_1B41585E4;
  v7 = v0[29];
  v8 = v0[15];

  return sub_1B40F68E4(v8, v7, (v0 + 2), Strong);
}

uint64_t sub_1B41585E4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v7 = v4 + 29;
    v5 = v4[29];
    v6 = v7[1];

    sub_1B40E26E8(v5, &qword_1EB8855E0);
    v8 = sub_1B4158760;
  }

  else
  {
    v9 = v4[29];
    v10 = v4[30];
    v4[32] = a1;
    sub_1B40E26E8(v9, &qword_1EB8855E0);

    sub_1B40E26E8((v4 + 2), &unk_1EB8855F0);
    v8 = sub_1B4158A18;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B4158760()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1B40E26E8((v0 + 2), &unk_1EB8855F0);
  v4 = sub_1B410F8A0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1B410F934();
  v6 = *v5;
  v7 = *(v5 + 16);
  v8 = sub_1B429F9C8();
  sub_1B429FA08();
  v9 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v30 = v9;
  if (v7)
  {
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 13);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v6)
  {
LABEL_10:
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[20];

    sub_1B429FA38();

    if ((*(v18 + 88))(v17, v19) == *MEMORY[0x1E69E93E8])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[21] + 8))(v0[22], v0[20]);
      v20 = "";
    }

    v21 = v0[27];
    v29 = v0[28];
    v22 = v0[25];
    v23 = v0[26];
    v25 = v0[23];
    v24 = v0[24];
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_1B429F998();
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v8, v30, v27, v6, v20, v26, 2u);
    MEMORY[0x1B8C74FA0](v26, -1, -1);

    (*(v24 + 8))(v22, v25);
    (*(v21 + 8))(v29, v23);
    goto LABEL_14;
  }

  __break(1u);
LABEL_5:
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[23];
  v16 = v0[24];

  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);
LABEL_14:

  v28 = v0[1];

  return v28();
}

uint64_t sub_1B4158A18()
{
  v1 = v0[32];
  v2 = v0[19];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4158ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  v8 = swift_task_alloc();
  *(v5 + 48) = v8;
  *v8 = v5;
  v8[1] = sub_1B4158B8C;

  return sub_1B40F714C(a4, a5, 0, 0, 0);
}

uint64_t sub_1B4158B8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B40F33CC, 0, 0);
  }
}

uint64_t sub_1B4158CD8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  v10 = swift_task_alloc();
  *(v6 + 48) = v10;
  *v10 = v6;
  v10[1] = sub_1B4158D94;

  return CREngineAccurate._documentOutputRegionResult(_:imageSize:)(a6, a1, a2);
}

uint64_t sub_1B4158D94(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B40FD090, 0, 0);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4158F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageReaderConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4158F6C()
{
  v2 = *(type metadata accessor for ImageReaderConfiguration() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B40E6828;

  return sub_1B41582EC(v11, v6, v7, v0 + v3, v8, v9, v10);
}

uint64_t sub_1B41590A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B40E17D0;

  return sub_1B4158ACC(v6, v2, v3, v5, v4);
}

uint64_t sub_1B4159154()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B40E6828;

  return sub_1B4158CD8(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_1B4159210()
{
  result = qword_1ED95E850;
  if (!qword_1ED95E850)
  {
    type metadata accessor for ImageReaderConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E850);
  }

  return result;
}

double sub_1B4159268()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856A0);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1B42ACFB0;
  *(v0 + 32) = &type metadata for CRCorrectLatinCyrillicAmbiguities;
  *(v0 + 40) = &off_1F2BB2DE0;
  qword_1ED95F8B8 = v0;
  return result;
}

uint64_t sub_1B41592C4(uint64_t a1)
{
  if (qword_1ED95F8B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED95F8B8;
  v3 = *(qword_1ED95F8B8 + 16);
  if (v3)
  {

    v4 = v2 + 40;
    do
    {
      v5 = (*(*v4 + 8))(a1);

      v4 += 16;
      a1 = v5;
      --v3;
    }

    while (v3);
  }

  else
  {

    return a1;
  }

  return v5;
}

void sub_1B4159388(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 text];
  v7 = sub_1B429FB98();
  v9 = v8;

  v10 = [a1 text];
  v11 = sub_1B429FB98();
  v13 = v12;

  _s15TextRecognition33CRCorrectLatinCyrillicAmbiguitiesV03fixE0011correctableA0S2S_tFZ_0(v11, v13);

  v14 = sub_1B429FB88();

  [a1 setText_];

  if (a3)
  {

    v15 = sub_1B429FB88();
    [a1 setLocale_];
  }

  else
  {
    v23 = [a1 text];
    v24 = sub_1B429FB98();
    v26 = v25;

    if (v7 == v24 && v9 == v26)
    {

      return;
    }

    v28 = sub_1B42A0678();

    if (v28)
    {
      return;
    }
  }

  v16 = [a1 subregions];
  if (v16)
  {
    v17 = v16;
    v49 = sub_1B40E27B4(0, &qword_1ED95E670);
    v18 = sub_1B429FDF8();

    if (v18 >> 62)
    {
      v19 = sub_1B42A0518();
      if (v19)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_6:
        v50 = MEMORY[0x1E69E7CC0];
        sub_1B42A0488();
        if (v19 < 0)
        {
          __break(1u);
          goto LABEL_75;
        }

        v20 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1B8C72CD0](v20, v18);
          }

          else
          {
            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            [v22 mutableCopy];
            sub_1B42A0348();

            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630);
            swift_dynamicCast();
          }

          ++v20;
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        while (v19 != v20);

        v27 = v50;
        goto LABEL_25;
      }
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_25:
    if (v27 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B42A0518())
    {
      v30 = 0;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1B8C72CD0](v30, v27);
        }

        else
        {
          if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v31 = *(v27 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        sub_1B4159388(v31, a2, a3);

        ++v30;
        if (v33 == i)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:

    if (v27 >> 62)
    {
      sub_1B42A0558();
    }

    else
    {
      sub_1B42A0698();
    }

    v34 = sub_1B429FDE8();

    [a1 setSubregions_];
  }

  v35 = [a1 candidates];
  if (!v35)
  {
    return;
  }

  v36 = v35;
  sub_1B40E27B4(0, &qword_1ED95E670);
  v37 = sub_1B429FDF8();

  if (v37 >> 62)
  {
    v38 = sub_1B42A0518();
    if (v38)
    {
LABEL_45:
      v51 = MEMORY[0x1E69E7CC0];
      sub_1B42A0488();
      if ((v38 & 0x8000000000000000) == 0)
      {
        v39 = 0;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x1B8C72CD0](v39, v37);
          }

          else
          {
            v40 = *(v37 + 8 * v39 + 32);
          }

          v41 = v40;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            [v41 mutableCopy];
            sub_1B42A0348();

            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630);
            swift_dynamicCast();
          }

          ++v39;
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        while (v38 != v39);

        v42 = v51;
        goto LABEL_56;
      }

LABEL_75:
      __break(1u);
      return;
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_45;
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_56:
  if (v42 >> 62)
  {
    goto LABEL_68;
  }

  for (j = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1B42A0518())
  {
    v44 = 0;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1B8C72CD0](v44, v42);
      }

      else
      {
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v45 = *(v42 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      sub_1B4159388(v45, a2, a3);

      ++v44;
      if (v47 == j)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_69:

  if (v42 >> 62)
  {
    sub_1B42A0558();
  }

  else
  {
    sub_1B42A0698();
  }

  v48 = sub_1B429FDE8();

  [a1 setCandidates_];
}

void sub_1B4159B0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 text];
  v7 = sub_1B429FB98();
  v9 = v8;

  v10 = [v5 text];
  v11 = sub_1B429FB98();
  v13 = v12;

  sub_1B415CDCC(v11, v13);
  sub_1B429FB78();

  v14 = sub_1B429FB88();

  [v5 setText_];

  if (a3)
  {

    v15 = sub_1B429FB88();
    [v5 setLocale_];
  }

  else
  {
    v23 = [v5 text];
    v24 = sub_1B429FB98();
    v26 = v25;

    if (v7 == v24 && v9 == v26)
    {

      return;
    }

    v28 = sub_1B42A0678();

    if (v28)
    {
      return;
    }
  }

  v16 = [v5 subregions];
  v49 = v5;
  if (v16)
  {
    v17 = v16;
    sub_1B40E27B4(0, &qword_1ED95E670);
    v18 = sub_1B429FDF8();

    if (v18 >> 62)
    {
      v19 = sub_1B42A0518();
      if (v19)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_6:
        v50 = MEMORY[0x1E69E7CC0];
        sub_1B42A0488();
        if (v19 < 0)
        {
          __break(1u);
          goto LABEL_75;
        }

        v20 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1B8C72CD0](v20, v18);
          }

          else
          {
            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            [v22 mutableCopy];
            sub_1B42A0348();

            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630);
            swift_dynamicCast();
          }

          ++v20;
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        while (v19 != v20);

        v27 = v50;
        goto LABEL_25;
      }
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_25:
    if (v27 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B42A0518())
    {
      v30 = 0;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1B8C72CD0](v30, v27);
        }

        else
        {
          if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v31 = *(v27 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        sub_1B4159B0C(v31, a2, a3);

        ++v30;
        if (v33 == i)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:

    if (v27 >> 62)
    {
      sub_1B42A0558();
    }

    else
    {
      sub_1B42A0698();
    }

    v5 = v49;

    v34 = sub_1B429FDE8();

    [v49 setSubregions_];
  }

  v35 = [v5 candidates];
  if (!v35)
  {
    return;
  }

  v36 = v35;
  sub_1B40E27B4(0, &qword_1ED95E670);
  v37 = sub_1B429FDF8();

  if (v37 >> 62)
  {
    v38 = sub_1B42A0518();
    if (v38)
    {
LABEL_45:
      v51 = MEMORY[0x1E69E7CC0];
      sub_1B42A0488();
      if ((v38 & 0x8000000000000000) == 0)
      {
        v39 = 0;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x1B8C72CD0](v39, v37);
          }

          else
          {
            v40 = *(v37 + 8 * v39 + 32);
          }

          v41 = v40;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            [v41 mutableCopy];
            sub_1B42A0348();

            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630);
            swift_dynamicCast();
          }

          ++v39;
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        while (v38 != v39);

        v42 = v51;
        goto LABEL_56;
      }

LABEL_75:
      __break(1u);
      return;
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_45;
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_56:
  if (v42 >> 62)
  {
    goto LABEL_68;
  }

  for (j = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1B42A0518())
  {
    v44 = 0;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1B8C72CD0](v44, v42);
      }

      else
      {
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v45 = *(v42 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      sub_1B4159B0C(v45, a2, a3);

      ++v44;
      if (v47 == j)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_69:

  if (v42 >> 62)
  {
    sub_1B42A0558();
  }

  else
  {
    sub_1B42A0698();
  }

  v48 = sub_1B429FDE8();

  [v49 setCandidates_];
}

unint64_t sub_1B415A2BC(uint64_t a1, unint64_t a2)
{
  v3 = MEMORY[0x1B8C725A0]();
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1B415BBA8(0, v3 & ~(v3 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_56;
  }

  v7 = 0;
  v4 = v26;
  v8 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v24 = 4 << v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v10 = (a2 >> 62) & 1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v10) = a1 < 0;
  }

  v21 = v10;
  v11 = 15;
  v22 = v9;
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v13 = v11;
    if ((v11 & 0xC) == v24)
    {
      v13 = sub_1B412A6EC(v11, a1, a2);
    }

    result = v13 >> 16;
    if (v13 >> 16 >= v9)
    {
      goto LABEL_52;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B429FCE8();
    }

    else
    {
      if ((v13 & 1) == 0)
      {
        sub_1B412A5C8(v13, a1, a2);
      }

      result = sub_1B42A03C8();
      if ((v13 & 0xC000) == 0x4000)
      {
        if (result < 0x10000)
        {
          goto LABEL_54;
        }

        result = result & 0x3FF | 0xFFFFDC00;
      }

      else if (WORD1(result))
      {
        result = ((result + 67043328) >> 10) + 55296;
        if ((result & 0x10000) != 0)
        {
          goto LABEL_55;
        }
      }
    }

    v14 = v5;
    v26 = v4;
    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      v20 = result;
      sub_1B415BBA8((v15 > 1), v16 + 1, 1);
      result = v20;
      v4 = v26;
    }

    *(v4 + 16) = v16 + 1;
    *(v4 + 2 * v16 + 32) = result;
    if ((v11 & 0xC) == v24)
    {
      result = sub_1B412A6EC(v11, a1, a2);
      v11 = result;
    }

    v5 = v14;
    v17 = v11 >> 16;
    v9 = v22;
    if (v11 >> 16 >= v22)
    {
      goto LABEL_53;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = MEMORY[0x1B8C72580](v11, a1, a2);
      v11 = result;
      goto LABEL_12;
    }

    if (v21)
    {
      v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65549;
      goto LABEL_12;
    }

    if ((v11 & 0xC001) != 0)
    {
      if ((a2 & 0x2000000000000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = sub_1B412A5C8(v11, a1, a2);
      v11 = result;
      v17 = result >> 16;
      if ((a2 & 0x2000000000000000) == 0)
      {
LABEL_37:
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          result = sub_1B42A0448();
        }

        v18 = *(result + v17);
        if ((v18 & 0x80) == 0)
        {
LABEL_48:
          v19 = 1;
          goto LABEL_49;
        }

        goto LABEL_40;
      }
    }

    v25[0] = a1;
    v25[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v18 = *(v25 + v17);
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_48;
    }

LABEL_40:
    LODWORD(v19) = __clz(v18 ^ 0xFF) - 24;
    if (v19 != 4)
    {
      v19 = v19;
      goto LABEL_49;
    }

    if ((v11 & 0xC000) != 0)
    {
      v19 = 4;
LABEL_49:
      v11 = (v11 + (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      goto LABEL_12;
    }

    v11 = v11 & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_12:
    ++v7;
    if (v12 == v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1B415A610(unint64_t a1, void *a2)
{
  v66 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    v12 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  v2 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8C72CD0](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v8 = *(a1 + 8 * v2 + 32);
    }

    v9 = v8;
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v6 = sub_1B42A0518();
      goto LABEL_3;
    }

    v11 = [v8 locale];
    if (!v11)
    {
      sub_1B429FB98();
      v11 = sub_1B429FB88();
    }

    v3 = [objc_opt_self() *a2];

    if (v3)
    {
      sub_1B42A0458();
      v3 = *(v66 + 16);
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
    }

    else
    {
    }

    ++v2;
  }

  while (v10 != v6);
  v12 = v66;
  v7 = MEMORY[0x1E69E7CC0];
  if ((v66 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v12 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_21;
    }

LABEL_34:

    a2 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v3 = a2[2];
    v25 = MEMORY[0x1E69E7CC8];
    if (!v3)
    {
      goto LABEL_40;
    }

    v13 = a2[4];
    v12 = a2[5];

    sub_1B40D6000(0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v25;
    v14 = sub_1B40F0030(v13, v12);
    v28 = v25[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    LOBYTE(v2) = v27;
    if (v25[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_1B412ED60(v31, isUniquelyReferenced_nonNull_native);
      v25 = v66;
      v14 = sub_1B40F0030(v13, v12);
      if ((v2 & 1) != (v32 & 1))
      {
LABEL_39:
        sub_1B42A06E8();
        __break(1u);
LABEL_40:
        v33 = 0;
        goto LABEL_65;
      }
    }

    if ((v2 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_33:
  v13 = sub_1B42A0518();
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_21:
  v66 = v7;
  v14 = sub_1B40FE1A8(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    a2 = v66;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8C72CD0](v15, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v17 locale];
      v19 = sub_1B429FB98();
      v21 = v20;

      v66 = a2;
      v23 = a2[2];
      v22 = a2[3];
      if (v23 >= v22 >> 1)
      {
        sub_1B40FE1A8((v22 > 1), v23 + 1, 1);
        a2 = v66;
      }

      ++v15;
      a2[2] = v23 + 1;
      v24 = &a2[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
    }

    while (v13 != v15);

    goto LABEL_35;
  }

  __break(1u);
LABEL_45:
  v35 = v14;
  sub_1B412FA28();
  v14 = v35;
  v25 = v66;
  if (v2)
  {
LABEL_43:
    v34 = v14;

    v14 = v34;
    goto LABEL_48;
  }

LABEL_46:
  v25[(v14 >> 6) + 8] |= 1 << v14;
  v36 = (v25[6] + 16 * v14);
  *v36 = v13;
  v36[1] = v12;
  *(v25[7] + 8 * v14) = 0;
  v37 = v25[2];
  v30 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v30)
  {
LABEL_76:
    __break(1u);

    __break(1u);
    return result;
  }

  v25[2] = v38;
LABEL_48:
  v39 = v25[7];
  v40 = *(v39 + 8 * v14);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  *(v39 + 8 * v14) = v41;
  if (v3 != 1)
  {
    v42 = a2 + 7;
    v43 = 1;
    while (1)
    {
      if (v43 >= a2[2])
      {
        goto LABEL_75;
      }

      v44 = *(v42 - 1);
      v12 = *v42;

      sub_1B40D6000(sub_1B4140C80);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v66 = v25;
      v46 = sub_1B40F0030(v44, v12);
      v48 = v25[2];
      v49 = (v47 & 1) == 0;
      v30 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v30)
      {
        goto LABEL_73;
      }

      v51 = v47;
      if (v25[3] < v50)
      {
        break;
      }

      if (v45)
      {
        goto LABEL_57;
      }

      v54 = v46;
      sub_1B412FA28();
      v46 = v54;
      v25 = v66;
      if ((v51 & 1) == 0)
      {
LABEL_60:
        v25[(v46 >> 6) + 8] |= 1 << v46;
        v55 = (v25[6] + 16 * v46);
        *v55 = v44;
        v55[1] = v12;
        *(v25[7] + 8 * v46) = 0;
        v56 = v25[2];
        v30 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v30)
        {
          goto LABEL_76;
        }

        v25[2] = v57;
        goto LABEL_62;
      }

LABEL_58:
      v53 = v46;

      v46 = v53;
LABEL_62:
      v58 = v25[7];
      v59 = *(v58 + 8 * v46);
      v30 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v30)
      {
        goto LABEL_74;
      }

      ++v43;
      *(v58 + 8 * v46) = v60;
      v42 += 2;
      if (v3 == v43)
      {
        goto LABEL_64;
      }
    }

    sub_1B412ED60(v50, v45);
    v25 = v66;
    v46 = sub_1B40F0030(v44, v12);
    if ((v51 & 1) != (v52 & 1))
    {
      goto LABEL_39;
    }

LABEL_57:
    if ((v51 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

LABEL_64:
  v33 = sub_1B4140C80;
LABEL_65:

  v61 = v25[2];
  if (v61)
  {
    v62 = sub_1B415BBC8(v25[2], 0);
    v63 = sub_1B415C8BC(&v66, v62 + 4, v61, v25);

    sub_1B41187E8();
    if (v63 != v61)
    {
      __break(1u);
      goto LABEL_68;
    }
  }

  else
  {
LABEL_68:
    v62 = MEMORY[0x1E69E7CC0];
  }

  v66 = v62;
  sub_1B415BEE4(&v66);

  if (*(v66 + 16))
  {
    v64 = *(v66 + 32);
  }

  else
  {
    v64 = 0;
  }

  sub_1B40D6000(v33);
  return v64;
}

unint64_t sub_1B415AC5C()
{
  result = sub_1B415CA2C(&unk_1F2BB2CB8);
  qword_1ED95F2F8 = result;
  return result;
}

unint64_t sub_1B415AC84()
{
  result = sub_1B415CA2C(&unk_1F2BB2D28);
  qword_1ED95F2E8 = result;
  return result;
}

unint64_t sub_1B415ACAC()
{
  result = sub_1B415CA2C(&unk_1F2BB2D70);
  qword_1ED95F6F8 = result;
  return result;
}

id static CRCorrectLatinCyrillicAmbiguities.postprocess(lineRegions:)(unint64_t a1)
{
  v107 = MEMORY[0x1E69E7CC0];
  v95 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_184;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v105 = a1;
    if (v1)
    {
      v3 = 0;
      v4 = a1 & 0xC000000000000001;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          a1 = MEMORY[0x1B8C72CD0](v3, a1);
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            goto LABEL_174;
          }

          a1 = *(a1 + 8 * v3 + 32);
        }

        v6 = a1;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = [a1 locale];
        if (!v8)
        {
          sub_1B429FB98();
          v8 = sub_1B429FB88();
        }

        v9 = [objc_opt_self() languageIsCyrillic_];

        if (v9)
        {
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          sub_1B42A0468();
        }

        else
        {
        }

        ++v3;
        a1 = v105;
        if (v7 == v1)
        {
          v2 = v107;
          goto LABEL_17;
        }
      }

LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

LABEL_17:
    v10 = (v2 >> 62) & 1;
    if (v2 < 0)
    {
      LODWORD(v10) = 1;
    }

    v96 = v10;
    if (v10 == 1)
    {
      a1 = sub_1B42A0518();
      v103 = a1;
    }

    else
    {
      v103 = *(v2 + 16);
    }

    v11 = 0;
    v12 = 0;
    v97 = v2 & 0xC000000000000001;
    v100 = v2;
    v13 = v2 + 32;
    while (v12 != v103)
    {
      if (v97)
      {
        a1 = MEMORY[0x1B8C72CD0](v12, v2);
      }

      else
      {
        if (v12 >= *(v2 + 16))
        {
          goto LABEL_171;
        }

        a1 = *(v13 + 8 * v12);
      }

      v16 = a1;
      v15 = __OFADD__(v12++, 1);
      if (v15)
      {
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      result = [a1 text];
      if (!result)
      {
        goto LABEL_192;
      }

      v18 = result;
      v19 = sub_1B429FB98();

      v107 = v19;
      swift_bridgeObjectRetain_n();
      v20 = sub_1B429FD18();
      if ((v20 & 0x10000) != 0)
      {
LABEL_39:

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v21 = v20;
        while (1)
        {
          if (utf16CheckIsCyrillic(v21))
          {
            if (qword_1ED95F2F0 != -1)
            {
              swift_once();
            }

            if (!*(qword_1ED95F2F8 + 16))
            {
              break;
            }

            sub_1B415BE9C(v21);
            if ((v23 & 1) == 0)
            {
              break;
            }
          }

          v22 = sub_1B429FD18();
          v21 = v22;
          if ((v22 & 0x10000) != 0)
          {
            goto LABEL_39;
          }
        }

        v107 = v19;

        while (1)
        {
          v24 = sub_1B429FD18();
          if ((v24 & 0x10000) != 0)
          {
            break;
          }

          if (qword_1ED95F2E0 != -1)
          {
            v26 = v24;
            swift_once();
            LOWORD(v24) = v26;
          }

          if (*(qword_1ED95F2E8 + 16))
          {
            sub_1B415BE9C(v24);
            if (v25)
            {
              continue;
            }
          }

          v14 = 0;
          goto LABEL_23;
        }
      }

      v14 = 1;
LABEL_23:
      v15 = __OFADD__(v11, v14);
      v11 += v14;
      v2 = v100;
      if (v15)
      {
        goto LABEL_172;
      }
    }

    v27 = MEMORY[0x1E69E7CC0];
    if (v11 > 0)
    {
      break;
    }

LABEL_53:
    v107 = v27;
    if (v1)
    {
      v28 = 0;
      while (1)
      {
        if ((v105 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x1B8C72CD0](v28, v105);
        }

        else
        {
          if (v28 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_179;
          }

          a1 = *(v105 + 8 * v28 + 32);
        }

        v29 = a1;
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v31 = [a1 locale];
        if (!v31)
        {
          sub_1B429FB98();
          v31 = sub_1B429FB88();
        }

        v32 = [objc_opt_self() languageIsLatin_];

        if (v32)
        {
          sub_1B42A0458();
          sub_1B42A0498();
          sub_1B42A04A8();
          a1 = sub_1B42A0468();
        }

        else
        {
        }

        ++v28;
        if (v30 == v1)
        {
          v27 = v107;
          goto LABEL_67;
        }
      }

LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

LABEL_67:
    v33 = (v27 >> 62) & 1;
    if (v27 < 0)
    {
      LODWORD(v33) = 1;
    }

    v98 = v33;
    if (v33 == 1)
    {
      a1 = sub_1B42A0518();
      v34 = a1;
    }

    else
    {
      v34 = *(v27 + 16);
    }

    v35 = 0;
    v36 = 0;
    while (v36 != v34)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x1B8C72CD0](v36, v27);
      }

      else
      {
        if (v36 >= *(v27 + 16))
        {
          goto LABEL_176;
        }

        a1 = *(v27 + 32 + 8 * v36);
      }

      v38 = a1;
      v15 = __OFADD__(v36++, 1);
      if (v15)
      {
        goto LABEL_175;
      }

      result = [a1 text];
      if (!result)
      {
        goto LABEL_193;
      }

      v39 = result;
      v40 = sub_1B429FB98();

      v107 = v40;

      v41 = sub_1B429FD18();
      if ((v41 & 0x10000) != 0)
      {
LABEL_72:
        v37 = 1;
      }

      else
      {
        v42 = v41;
        while (1)
        {
          if (utf16CheckIsLatin(v42))
          {
            if (qword_1ED95F6F0 != -1)
            {
              swift_once();
            }

            if (!*(qword_1ED95F6F8 + 16))
            {
              break;
            }

            sub_1B415BE9C(v42);
            if ((v44 & 1) == 0)
            {
              break;
            }
          }

          v43 = sub_1B429FD18();
          v42 = v43;
          if ((v43 & 0x10000) != 0)
          {
            goto LABEL_72;
          }
        }

        v37 = 0;
      }

      v15 = __OFADD__(v35, v37);
      v35 += v37;
      if (v15)
      {
        goto LABEL_177;
      }
    }

    if (v35 <= 0)
    {

      v45 = v105;
LABEL_165:

      return v45;
    }

    v45 = v105;
    if (v98)
    {
      v46 = sub_1B42A0518();
    }

    else
    {
      v46 = *(v27 + 16);
    }

    if (!v103 || v35 != v46)
    {
      goto LABEL_165;
    }

    v102 = sub_1B415A610(v105, &selRef_languageIsCyrillic_);
    v104 = v75;
    if (!v75)
    {
      v102 = sub_1B429FB98();
      v104 = v76;
    }

    if (v95)
    {
      v77 = sub_1B42A0518();
      if (!v77)
      {
LABEL_188:

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v77 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v77)
      {
        goto LABEL_188;
      }
    }

    v108 = MEMORY[0x1E69E7CC0];
    result = sub_1B42A0488();
    if (v77 < 0)
    {
      goto LABEL_191;
    }

    v78 = objc_opt_self();
    a1 = 0;
    while (1)
    {
      v82 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if ((v105 & 0xC000000000000001) != 0)
      {
        v83 = MEMORY[0x1B8C72CD0]();
      }

      else
      {
        if (a1 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_183;
        }

        v83 = *(v105 + 32 + 8 * a1);
      }

      v84 = v83;
      v85 = [v83 locale];
      if (!v85)
      {
        sub_1B429FB98();
        v85 = sub_1B429FB88();
      }

      v86 = [v78 languageIsLatin_];

      if (v86)
      {
        result = [v84 text];
        if (!result)
        {
          goto LABEL_195;
        }

        v87 = result;
        v88 = sub_1B429FB98();

        v107 = v88;

        v89 = sub_1B429FD18();
        if ((v89 & 0x10000) != 0)
        {
LABEL_141:

          objc_opt_self();
          v79 = swift_dynamicCastObjCClass();
          if (v79)
          {
            v80 = v79;
            v81 = v84;
          }

          else
          {
            [v84 mutableCopy];
            sub_1B42A0348();
            swift_unknownObjectRelease();
            sub_1B40E27B4(0, &unk_1ED95E630);
            swift_dynamicCast();
            v80 = v106;
          }

          sub_1B4159B0C(v80, v102, v104);
        }

        else
        {
          v90 = v89;
          while (1)
          {
            if (utf16CheckIsLatin(v90))
            {
              if (qword_1ED95F6F0 != -1)
              {
                swift_once();
              }

              if (!*(qword_1ED95F6F8 + 16))
              {
                break;
              }

              sub_1B415BE9C(v90);
              if ((v92 & 1) == 0)
              {
                break;
              }
            }

            v91 = sub_1B429FD18();
            v90 = v91;
            if ((v91 & 0x10000) != 0)
            {
              goto LABEL_141;
            }
          }
        }
      }

      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      a1 = v82;
      if (v82 == v77)
      {
        goto LABEL_166;
      }
    }

LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v94 = a1;
    v1 = sub_1B42A0518();
    a1 = v94;
  }

  if (v96)
  {
    a1 = sub_1B42A0518();
    if (v11 == a1)
    {
      goto LABEL_94;
    }

    goto LABEL_53;
  }

  a1 = *(v2 + 16);
  if (v11 != a1)
  {
    goto LABEL_53;
  }

LABEL_94:

  v47 = sub_1B415A610(v105, &selRef_languageIsLatin_);
  v101 = v48;
  if (v48)
  {
    v49 = v47;
    if (!v95)
    {
LABEL_96:
      v50 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
        goto LABEL_188;
      }

      goto LABEL_97;
    }
  }

  else
  {
    v49 = sub_1B429FB98();
    v101 = v93;
    if (!v95)
    {
      goto LABEL_96;
    }
  }

  v50 = sub_1B42A0518();
  if (!v50)
  {
    goto LABEL_188;
  }

LABEL_97:
  v108 = v27;
  result = sub_1B42A0488();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v51 = objc_opt_self();
    a1 = 0;
    v52 = v105 & 0xC000000000000001;
    v95 = v105 + 32;
    v53 = &selRef_initWithOptions_error_;
    v99 = v49;
    while (1)
    {
      v55 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_180;
      }

      if (v52)
      {
        v56 = MEMORY[0x1B8C72CD0]();
      }

      else
      {
        if (a1 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_182;
        }

        v56 = *(v95 + 8 * a1);
      }

      v57 = v56;
      v58 = [v56 locale];
      if (!v58)
      {
        sub_1B429FB98();
        v58 = sub_1B429FB88();
      }

      v59 = [v51 v53[114]];

      if (v59)
      {
        v60 = v53;
        v61 = v52;
        v62 = v51;
        v63 = v50;
        result = [v57 text];
        if (!result)
        {
          goto LABEL_194;
        }

        v64 = result;
        v65 = sub_1B429FB98();

        v107 = v65;
        swift_bridgeObjectRetain_n();
        v66 = sub_1B429FD18();
        if ((v66 & 0x10000) != 0)
        {
LABEL_120:
          swift_bridgeObjectRelease_n();

          v50 = v63;
          v51 = v62;
          v52 = v61;
          v53 = v60;
        }

        else
        {
          v67 = v66;
          while (1)
          {
            if (utf16CheckIsCyrillic(v67))
            {
              if (qword_1ED95F2F0 != -1)
              {
                swift_once();
              }

              if (!*(qword_1ED95F2F8 + 16))
              {
                break;
              }

              sub_1B415BE9C(v67);
              if ((v69 & 1) == 0)
              {
                break;
              }
            }

            v68 = sub_1B429FD18();
            v67 = v68;
            if ((v68 & 0x10000) != 0)
            {
              goto LABEL_120;
            }
          }

          v107 = v65;

          v50 = v63;
          v51 = v62;
          v52 = v61;
          v53 = v60;
          while (1)
          {
            v72 = sub_1B429FD18();
            if ((v72 & 0x10000) != 0)
            {
              break;
            }

            if (qword_1ED95F2E0 != -1)
            {
              v74 = v72;
              swift_once();
              LOWORD(v72) = v74;
            }

            if (*(qword_1ED95F2E8 + 16))
            {
              sub_1B415BE9C(v72);
              if (v73)
              {
                continue;
              }
            }

            goto LABEL_101;
          }
        }

        objc_opt_self();
        v70 = swift_dynamicCastObjCClass();
        if (v70)
        {
          v54 = v70;
          v71 = v57;
        }

        else
        {
          [v57 mutableCopy];
          sub_1B42A0348();
          swift_unknownObjectRelease();
          sub_1B40E27B4(0, &unk_1ED95E630);
          swift_dynamicCast();
          v54 = v106;
        }

        sub_1B4159388(v54, v99, v101);
      }

LABEL_101:
      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      a1 = v55;
      if (v55 == v50)
      {
LABEL_166:

        return v108;
      }
    }
  }

  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
  return result;
}

uint64_t static CRCorrectLatinCyrillicAmbiguities.fixLatin(correctableText:)(uint64_t a1, unint64_t a2)
{
  sub_1B415CDCC(a1, a2);
  v2 = sub_1B429FB78();

  return v2;
}

char *sub_1B415BBA8(char *a1, int64_t a2, char a3)
{
  result = sub_1B415BDA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B415BBC8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885698);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1B415BC58(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885698);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B415BDA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

unint64_t sub_1B415BE9C(unsigned __int16 a1)
{
  v3 = MEMORY[0x1B8C73000](*(v1 + 40), a1, 2);

  return sub_1B415C84C(a1, v3);
}

uint64_t sub_1B415BEE4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B415CA18(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_1B42A0638();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885690);
      v7 = sub_1B429FE28();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1B415C054(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B415C054(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B40E05F0(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1B415C610((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B40DDD00(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1B40DDD00((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_1B415C610((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1B415C610(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

unint64_t sub_1B415C84C(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1B415C8BC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B415CA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885688);
    v3 = sub_1B42A05F8();
    for (i = (a1 + 34); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B415BE9C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 2 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _s15TextRecognition33CRCorrectLatinCyrillicAmbiguitiesV03fixE0011correctableA0S2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B415A2BC(a1, a2);
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = &qword_1ED95F2E0;
  while (1)
  {
    v6 = *(v2 + 16);
    if (v4 == v3)
    {
      break;
    }

    if (v3 >= v6)
    {
      __break(1u);
LABEL_30:
      swift_once();
LABEL_10:
      v10 = qword_1ED95F2F8;
      v11 = 32;
      do
      {
        v12 = *(v2 + v11);
        if (*(v10 + 16))
        {
          v13 = sub_1B415BE9C(*(v2 + v11));
          if (v14)
          {
            v12 = *(*(v10 + 56) + 2 * v13);
          }
        }

        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          sub_1B415BBA8((v15 > 1), v16 + 1, 1);
        }

        v5[2] = v16 + 1;
        *(v5 + v16 + 16) = v12;
        v11 += 2;
        --v6;
      }

      while (v6);
      goto LABEL_28;
    }

    v7 = *(v2 + 2 * v3 + 32);
    if (qword_1ED95F2E0 != -1)
    {
      v9 = *(v2 + 2 * v3 + 32);
      swift_once();
      v7 = v9;
    }

    if (*(qword_1ED95F2E8 + 16))
    {
      sub_1B415BE9C(v7);
      ++v3;
      if (v8)
      {
        continue;
      }
    }

    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_28;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1B415BBA8(0, v6, 0);
    v5 = v26;
    if (qword_1ED95F2F0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  if (v6)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B415BBA8(0, v6, 0);
    if (qword_1ED95F2E0 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED95F2E8;
    v18 = 32;
    do
    {
      v19 = *(v2 + v18);
      if (*(v17 + 16))
      {
        v20 = sub_1B415BE9C(*(v2 + v18));
        if (v21)
        {
          v19 = *(*(v17 + 56) + 2 * v20);
        }
      }

      v23 = *(v27 + 16);
      v22 = *(v27 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B415BBA8((v22 > 1), v23 + 1, 1);
      }

      *(v27 + 16) = v23 + 1;
      *(v27 + 2 * v23 + 32) = v19;
      v18 += 2;
      --v6;
    }

    while (v6);
  }

LABEL_28:

  v24 = sub_1B429FB78();

  return v24;
}

unint64_t sub_1B415CDCC(uint64_t a1, unint64_t a2)
{
  v3 = MEMORY[0x1B8C725A0]();
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1B415BBA8(0, v3 & ~(v3 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_62;
  }

  v7 = 0;
  v4 = v30;
  v8 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v11 = (a2 >> 62) & 1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v11) = a1 < 0;
  }

  v24 = v11;
  v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v23 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v27 = a2;
  v25 = v9;
  v26 = v10;
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v14 = v12;
    if ((v12 & 0xC) == v9)
    {
      v14 = sub_1B412A6EC(v12, a1, a2);
    }

    result = v14 >> 16;
    if (v14 >> 16 >= v10)
    {
      goto LABEL_58;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B429FCE8();
LABEL_24:
      LOWORD(v15) = result;
      goto LABEL_25;
    }

    if ((v14 & 1) == 0)
    {
      sub_1B412A5C8(v14, a1, a2);
    }

    result = sub_1B42A03C8();
    if ((v14 & 0xC000) == 0x4000)
    {
      if (result < 0x10000)
      {
        goto LABEL_60;
      }

      LOWORD(v15) = result & 0x3FF | 0xDC00;
    }

    else
    {
      if (!WORD1(result))
      {
        goto LABEL_24;
      }

      v15 = ((result + 67043328) >> 10) + 55296;
      if ((v15 & 0x10000) != 0)
      {
        goto LABEL_61;
      }
    }

LABEL_25:
    if (qword_1ED95F6F0 != -1)
    {
      result = swift_once();
    }

    v16 = qword_1ED95F6F8;
    if (*(qword_1ED95F6F8 + 16))
    {
      result = sub_1B415BE9C(v15);
      if (v17)
      {
        LOWORD(v15) = *(*(v16 + 56) + 2 * result);
      }
    }

    v30 = v4;
    v19 = *(v4 + 16);
    v18 = *(v4 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1B415BBA8((v18 > 1), v19 + 1, 1);
      v4 = v30;
    }

    *(v4 + 16) = v19 + 1;
    *(v4 + 2 * v19 + 32) = v15;
    v9 = v25;
    a2 = v27;
    if ((v12 & 0xC) == v25)
    {
      result = sub_1B412A6EC(v12, a1, v27);
      v12 = result;
    }

    v10 = v26;
    v20 = v12 >> 16;
    if (v12 >> 16 >= v26)
    {
      goto LABEL_59;
    }

    if ((v27 & 0x1000000000000000) != 0)
    {
      result = MEMORY[0x1B8C72580](v12, a1, v27);
      v12 = result;
      goto LABEL_12;
    }

    if (v24)
    {
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65549;
      goto LABEL_12;
    }

    if ((v12 & 0xC001) != 0)
    {
      if ((v27 & 0x2000000000000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      result = sub_1B412A5C8(v12, a1, v27);
      v12 = result;
      v20 = result >> 16;
      if ((v27 & 0x2000000000000000) == 0)
      {
LABEL_43:
        result = v22;
        if ((a1 & 0x1000000000000000) != 0)
        {
          LODWORD(v21) = *(v22 + v20);
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
          result = sub_1B42A0448();
          LODWORD(v21) = *(result + v20);
          if ((v21 & 0x80) == 0)
          {
LABEL_52:
            v21 = 1;
            goto LABEL_53;
          }
        }

        goto LABEL_45;
      }
    }

    v29[0] = a1;
    v29[1] = v23;
    LODWORD(v21) = *(v29 + v20);
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_52;
    }

LABEL_45:
    LODWORD(v21) = __clz(v21 ^ 0xFF) - 24;
    if (v21 != 4)
    {
      v21 = v21;
      goto LABEL_53;
    }

    if ((v12 & 0xC000) != 0)
    {
      v21 = 4;
LABEL_53:
      v12 = (v12 + (v21 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      goto LABEL_12;
    }

    v12 = v12 & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_12:
    ++v7;
    if (v13 == v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

id CRCTCTextDecoderV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRCTCTextDecoderV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRCTCTextDecoderV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRCTCTextDecoderV3.__allocating_init(configuration:model:)(void *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v4 = [objc_allocWithZone(v2) initWithConfiguration:a1 model:a2 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1B429F598();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v4;
}

id CRCTCTextDecoderV3.init(configuration:model:)(void *a1, uint64_t a2)
{
  v3 = sub_1B415D8E4(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

id CRCTCTextDecoderV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRCTCTextDecoderV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B415D4AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B41232C0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s15TextRecognition18CRCTCTextDecoderV3C20lmSupportedLanguagesSaySSGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B42AE990;
  *(v0 + 32) = sub_1B429FB98();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1B429FB98();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1B429FB98();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1B429FB98();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1B429FB98();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1B429FB98();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1B429FB98();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_1B429FB98();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_1B429FB98();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_1B429FB98();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_1B429FB98();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_1B429FB98();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_1B429FB98();
  *(v0 + 232) = v13;
  *(v0 + 240) = sub_1B429FB98();
  *(v0 + 248) = v14;
  *(v0 + 256) = sub_1B429FB98();
  *(v0 + 264) = v15;
  *(v0 + 272) = sub_1B429FB98();
  *(v0 + 280) = v16;
  *(v0 + 288) = sub_1B429FB98();
  *(v0 + 296) = v17;
  *(v0 + 304) = sub_1B429FB98();
  *(v0 + 312) = v18;
  *(v0 + 320) = sub_1B429FB98();
  *(v0 + 328) = v19;
  *(v0 + 336) = sub_1B429FB98();
  *(v0 + 344) = v20;
  *(v0 + 352) = sub_1B429FB98();
  *(v0 + 360) = v21;
  *(v0 + 368) = sub_1B429FB98();
  *(v0 + 376) = v22;
  *(v0 + 384) = sub_1B429FB98();
  *(v0 + 392) = v23;
  *(v0 + 400) = sub_1B429FB98();
  *(v0 + 408) = v24;
  *(v0 + 416) = sub_1B429FB98();
  *(v0 + 424) = v25;
  *(v0 + 432) = sub_1B429FB98();
  *(v0 + 440) = v26;
  v34[3] = &type metadata for CRFeatureFlags;
  v34[4] = sub_1B4118C60();
  LOBYTE(v34[0]) = 1;
  v27 = sub_1B429F898();
  __swift_destroy_boxed_opaque_existential_0(v34);
  if (v27)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B42AD230;
    *(inited + 32) = sub_1B429FB98();
    *(inited + 40) = v29;
    *(inited + 48) = sub_1B429FB98();
    *(inited + 56) = v30;
    *(inited + 64) = sub_1B429FB98();
    *(inited + 72) = v31;
    *(inited + 80) = sub_1B429FB98();
    *(inited + 88) = v32;
    v34[0] = v0;
    sub_1B415D4AC(inited);
    return v34[0];
  }

  return v0;
}

id sub_1B415D8E4(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CRCTCTextDecoderV3();
  v5 = objc_msgSendSuper2(&v9, sel_initWithConfiguration_model_error_, a1, a2, v10);
  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1B415D9AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = v6(a2, a3);
  v8 = [v7 textFeatureOrder];

  if (a1 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
    sub_1B42A0558();
  }

  else
  {
    sub_1B42A0698();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
  v9 = sub_1B429FDE8();

  v10 = [v8 orderAndGroupRegions_];

  swift_unknownObjectRelease();
  sub_1B40E27B4(0, &qword_1ED95E6E0);
  v11 = sub_1B429FDF8();

  v12 = v6(a2, a3);
  LOBYTE(v10) = [v12 falsePositiveFilteringDisabled];

  if ((v10 & 1) == 0)
  {
    v13 = v6(a2, a3);
    sub_1B4155254();

    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_0(v18, v19);
    v16 = (*(v15 + 16))(v11, v14, v15);

    __swift_destroy_boxed_opaque_existential_0(v18);
    return v16;
  }

  return v11;
}

uint64_t sub_1B415DBC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v8 = v7(a3, a4);
  v9 = [v8 textFeatureOrder];

  if ([v9 respondsToSelector_])
  {

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
      sub_1B42A0558();
    }

    else
    {
      sub_1B42A0698();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
    v10 = sub_1B429FDE8();
    sub_1B40E27B4(0, &unk_1ED95E6B0);
    v11 = sub_1B429FDE8();
    v12 = [v9 orderAndGroupRegions:v10 tableGroups:v11];

    sub_1B40E27B4(0, &qword_1ED95E6E0);
    v13 = sub_1B429FDF8();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = v7(a3, a4);
    v15 = [v14 textFeatureOrder];

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
      sub_1B42A0558();
    }

    else
    {
      sub_1B42A0698();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
    v16 = sub_1B429FDE8();

    v12 = [v15 orderAndGroupRegions_];

    swift_unknownObjectRelease();
    sub_1B40E27B4(0, &qword_1ED95E6E0);
    v13 = sub_1B429FDF8();
  }

  v17 = v7(a3, a4);
  v18 = [v17 falsePositiveFilteringDisabled];

  if ((v18 & 1) == 0)
  {
    v19 = v7(a3, a4);
    sub_1B4155254();

    v20 = v25;
    v21 = v26;
    __swift_project_boxed_opaque_existential_0(v24, v25);
    v22 = (*(v21 + 16))(v13, v20, v21);

    __swift_destroy_boxed_opaque_existential_0(v24);
    return v22;
  }

  return v13;
}

id sub_1B415DF54(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B415E04C(a1, a2, a3, a4);
  v7 = *(a4 + 8);
  v8 = v7(a3, a4);
  v9 = [v8 falsePositiveFilteringDisabled];

  if ((v9 & 1) == 0)
  {
    v10 = v7(a3, a4);
    sub_1B4155254();

    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v13 = (*(v12 + 8))(v6, v11, v12);

    __swift_destroy_boxed_opaque_existential_0(v15);
    return v13;
  }

  return v6;
}

id sub_1B415E04C(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v52 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_58:
    v5 = sub_1B42A0518();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = 0;
    v44 = v4 & 0xC000000000000001;
    v40 = v4 + 32;
    v41 = v4 & 0xFFFFFFFFFFFFFF8;
    v42 = MEMORY[0x1E69E7CC0];
    v43 = v4;
    while (1)
    {
      if (v44)
      {
        v8 = MEMORY[0x1B8C72CD0](v7, v4);
      }

      else
      {
        if (v7 >= *(v41 + 16))
        {
          goto LABEL_57;
        }

        v8 = *(v40 + 8 * v7);
      }

      v9 = v8;
      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v47 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B42AC090;
      *(v12 + 32) = v9;
      sub_1B40E27B4(0, &unk_1ED95E680);
      v46 = v9;
      v13 = sub_1B429FDE8();

      v14 = [a2 recognizedRegionsForDetectedLineRegions_];

      sub_1B40E27B4(0, &qword_1ED95E670);
      v15 = sub_1B429FDF8();

      v51 = v6;
      if (v15 >> 62)
      {
        v16 = sub_1B42A0518();
        if (v16)
        {
LABEL_13:
          v17 = 0;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1B8C72CD0](v17, v15);
            }

            else
            {
              if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_54;
              }

              v18 = *(v15 + 8 * v17 + 32);
            }

            v19 = v18;
            v4 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

            result = [v18 text];
            if (!result)
            {
              break;
            }

            v21 = result;
            v22 = sub_1B429FB98();
            v24 = v23;

            v25 = HIBYTE(v24) & 0xF;
            if ((v24 & 0x2000000000000000) == 0)
            {
              v25 = v22 & 0xFFFFFFFFFFFFLL;
            }

            if (v25)
            {
              sub_1B42A0458();
              sub_1B42A0498();
              sub_1B42A04A8();
              sub_1B42A0468();
            }

            else
            {
            }

            ++v17;
            if (v4 == v16)
            {
              v6 = v51;
              goto LABEL_27;
            }
          }

          __break(1u);
          return result;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_13;
        }
      }

LABEL_27:

      if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
      {
        v26 = sub_1B42A0518();
        if (!v26)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v26 = *(v6 + 16);
        if (!v26)
        {
          goto LABEL_5;
        }
      }

      if (v26 < 1)
      {
        goto LABEL_56;
      }

      v27 = 0;
      v28 = *(a4 + 8);
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1B8C72CD0](v27, v6);
        }

        else
        {
          v29 = *(v6 + 8 * v27 + 32);
        }

        v30 = v29;
        [v29 mutableCopy];
        sub_1B42A0348();
        swift_unknownObjectRelease();
        sub_1B40E27B4(0, &unk_1ED95E630);
        swift_dynamicCast();
        v31 = v28(a3, a4);
        v32 = [v31 falsePositiveFilteringDisabled];

        if ((v32 & 1) == 0)
        {
          v33 = v28(a3, a4);
          v34 = [v33 revision];

          if (v34 >= 3)
          {
            v35 = [v50 subregions];
            if (v35)
            {
              v36 = v35;
              v37 = sub_1B429FDF8();

              v38 = v37 >> 62 ? sub_1B42A0518() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (v38)
              {
                [v50 adjustBoundsBasedOnSubregions];
              }
            }
          }
        }

        v39 = v50;
        MEMORY[0x1B8C72680]();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B429FE08();
        }

        ++v27;
        sub_1B429FE38();
      }

      while (v26 != v27);
      v42 = v52;
LABEL_5:

      v4 = v43;
      v7 = v47;
      v6 = MEMORY[0x1E69E7CC0];
      if (v47 == v5)
      {
        return v42;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t CRNonSplittingTextFeatureSplitter.split(lineRegions:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856A8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B42ACFB0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;

  return v2;
}

uint64_t sub_1B415E5F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856A8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B42ACFB0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;

  return v2;
}

uint64_t CRLocaleBasedTextFeatureSplitter.split(lineRegions:)(unint64_t a1)
{
  v109 = sub_1B429FA68();
  v3 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v4);
  v6 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v104 - v9;
  v116 = *v1;
  v119 = v116;
  v11 = sub_1B415F524();
  v123 = MEMORY[0x1E69E7CC8];
  sub_1B40D96FC(a1);
  v12 = objc_allocWithZone(CROrderedIndexSet);
  v13 = sub_1B429FDE8();
  v14 = a1;

  v111 = [v12 initWithArray_];

  if (a1 >> 62)
  {
LABEL_127:
    v108 = v14 & 0xFFFFFFFFFFFFFF8;
    v15 = sub_1B42A0518();
  }

  else
  {
    v108 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v106 = v6;
  v114 = (v3 + 8);
  v115 = (v3 + 16);
  v110 = v14;
  if (!v15)
  {
    v105 = MEMORY[0x1E69E7CC8];
    v3 = v109;
    goto LABEL_32;
  }

  v6 = 0;
  v105 = MEMORY[0x1E69E7CC8];
  v112 = v15;
  v113 = (v14 & 0xC000000000000001);
  v107 = v10;
  v10 = v108;
  v3 = v109;
  do
  {
    v16 = v6;
    while (1)
    {
      if (v113)
      {
        v17 = MEMORY[0x1B8C72CD0](v16, v14);
      }

      else
      {
        if (v16 >= *(v10 + 16))
        {
          goto LABEL_121;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v119 = v116;
      v19 = sub_1B415F6E4(v17);
      if (v19)
      {
        break;
      }

      [v111 addIndex_];

LABEL_7:
      ++v16;
      if (v6 == v112)
      {
        goto LABEL_32;
      }
    }

    v20 = v19;
    v21 = sub_1B40E682C();
    if (!*(v21 + 16))
    {

      [v111 addIndex_];

      v14 = v110;
      goto LABEL_7;
    }

    v122 = v116;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856B0);
    v121 = sub_1B40E27FC(&qword_1ED95E0E0, &unk_1EB8856B0);
    v119 = v21;
    sub_1B416013C(&v119, v117);
    __swift_destroy_boxed_opaque_existential_0(&v119);
    v22 = v117[0];
    if (v117[0] != 30)
    {
      goto LABEL_23;
    }

    if (!*(v11 + 16))
    {
      v23 = sub_1B41253CC();
      v24 = v107;
      (*v115)(v107, v23, v3);
      v25 = sub_1B429FA48();
      v26 = sub_1B42A0148();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1B40D2000, v25, v26, "Could not select locale.", v27, 2u);
        v28 = v27;
        v3 = v109;
        MEMORY[0x1B8C74FA0](v28, -1, -1);
      }

      (*v114)(v24, v3);
      v14 = v110;
      v10 = v108;
      goto LABEL_7;
    }

    v22 = *(v11 + 32);
LABEL_23:
    if (!*(v105 + 2) || (sub_1B4160594(v22), (v29 & 1) == 0))
    {
      sub_1B40D96FC(v110);
      v30 = objc_allocWithZone(CROrderedIndexSet);
      v31 = sub_1B429FDE8();

      v32 = [v30 initWithArray_];

      sub_1B4160218(v32, v22);
    }

    v33 = v123;
    if (*(v123 + 16))
    {
      v34 = sub_1B4160594(v22);
      if (v35)
      {
        v36 = *(*(v33 + 56) + 8 * v34);
        [v36 addIndex_];
      }
    }

    v105 = v33;

    v3 = v109;
    v14 = v110;
  }

  while (v6 != v112);
LABEL_32:
  if (CROrderedIndexSet.isEmpty.getter())
  {
    v37 = v105;
    goto LABEL_44;
  }

  v122 = v116;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856C0);
  v121 = sub_1B40E27FC(&qword_1ED95E0E8, &unk_1EB8856C0);
  v38 = v105;
  v119 = v105;
  swift_bridgeObjectRetain_n();
  sub_1B416013C(&v119, v117);
  __swift_destroy_boxed_opaque_existential_0(&v119);
  v14 = v117[0];
  v39 = MEMORY[0x1E69E7CA0];
  if (v117[0] != 30)
  {
LABEL_37:
    if (!*(v38 + 2) || (sub_1B4160594(v14), (v40 & 1) == 0))
    {
      sub_1B40D96FC(v110);
      v41 = objc_allocWithZone(CROrderedIndexSet);
      v42 = sub_1B429FDE8();

      v43 = [v41 initWithArray_];

      v44 = v43;
      v3 = v109;
      sub_1B4160218(v44, v14);
    }

    v37 = v123;
    if (*(v123 + 16))
    {
      v45 = sub_1B4160594(v14);
      if (v46)
      {
        v14 = *(*(v37 + 56) + 8 * v45);
        [v14 addIndexSet_];
      }
    }

LABEL_44:
    v47 = v37;
    v48 = *(v11 + 16);
    if (v48)
    {
      v49 = 0;
      v6 = 3;
      while (v49 < *(v11 + 16))
      {
        LOBYTE(v119) = *(v11 + v49 + 32);
        CRLocale.script.getter(&v122);
        v117[0] = v122;
        v118 = 3;
        v3 = sub_1B410D624();
        v14 = sub_1B429FB58();
        if (v14)
        {
          goto LABEL_51;
        }

        if (v48 == ++v49)
        {
          v49 = 0;
LABEL_51:
          v51 = 0;
          v10 = 2;
          v6 = &type metadata for CRScript;
          while (v51 < *(v11 + 16))
          {
            LOBYTE(v119) = *(v11 + v51 + 32);
            CRLocale.script.getter(&v122);
            v117[0] = v122;
            v118 = 2;
            if (sub_1B429FB58())
            {

              v3 = v109;
              v50 = v106;
              if ((v14 & 1) == 0 || v49 >= v51)
              {
                goto LABEL_61;
              }

              goto LABEL_63;
            }

            if (v48 == ++v51)
            {

              v3 = v109;
              v50 = v106;
              if ((v14 & 1) != 0 && v49 < sub_1B429F4D8())
              {
                goto LABEL_63;
              }

              goto LABEL_61;
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_124;
    }

    v50 = v106;
LABEL_61:
    v52 = v37;
    if (*(v37 + 16))
    {
      sub_1B4160594(0x1Bu);
      if (v53)
      {
LABEL_63:
        v54 = 1 << *(v37 + 32);
        v55 = -1;
        if (v54 < 64)
        {
          v55 = ~(-1 << v54);
        }

        v11 = v55 & *(v37 + 64);
        v56 = (v54 + 63) >> 6;

        v6 = 0;
        v14 = &type metadata for CRScript;
        while (v11)
        {
          v57 = v6;
LABEL_72:
          v58 = __clz(__rbit64(v11));
          v11 &= v11 - 1;
          v59 = v58 | (v57 << 6);
          LOBYTE(v58) = *(v47[6] + v59);
          v60 = *(v47[7] + 8 * v59);
          LOBYTE(v119) = v58;
          v61 = v60;
          CRLocale.script.getter(&v122);
          v117[0] = v122;
          v118 = 2;
          sub_1B410D624();
          v62 = sub_1B429FB58();

          v3 = v109;
          if (v62)
          {

            if (!v47[2] || (sub_1B4160594(0x1Bu), (v63 & 1) == 0))
            {
              sub_1B40D96FC(v110);
              v64 = objc_allocWithZone(CROrderedIndexSet);
              v65 = sub_1B429FDE8();

              v14 = [v64 initWithArray_];

              sub_1B4160218(v14, 0x1Bu);
            }

            v66 = v123;
            v39 = 0;
            sub_1B4160890(v123);
            v6 = 0;
            v68 = v67;
            v69 = 1 << *(v67 + 32);
            v70 = -1;
            if (v69 < 64)
            {
              v70 = ~(-1 << v69);
            }

            v71 = v67 + 64;
            v10 = v70 & *(v67 + 64);
            v11 = (v69 + 63) >> 6;
            while (v10)
            {
              v99 = v10;
LABEL_116:
              v10 = (v99 - 1) & v99;
              if (*(v66 + 16))
              {
                v14 = *(*(v68 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v99)))));
                v101 = sub_1B4160594(0x1Bu);
                if (v102)
                {
                  v103 = *(*(v66 + 56) + 8 * v101);
                  [v103 addIndexSet_];

                  v3 = v109;
                }
              }
            }

            while (1)
            {
              v100 = v6 + 1;
              if (__OFADD__(v6, 1))
              {
                goto LABEL_126;
              }

              if (v100 >= v11)
              {
                goto LABEL_80;
              }

              v99 = *(v71 + 8 * v100);
              ++v6;
              if (v99)
              {
                v6 = v100;
                goto LABEL_116;
              }
            }
          }
        }

        while (1)
        {
          v57 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v57 >= v56)
          {
            v39 = 0;
            v66 = v47;
LABEL_80:

            v52 = v66;
            v50 = v106;
            goto LABEL_83;
          }

          v11 = v47[v57 + 8];
          ++v6;
          if (v11)
          {
            v6 = v57;
            goto LABEL_72;
          }
        }

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

      v39 = 0;
      v52 = v37;
    }

    else
    {
      v39 = 0;
    }

LABEL_83:
    v72 = *(v52 + 16);
    v73 = MEMORY[0x1E69E7CC0];
    v104 = v52;
    if (v72)
    {
      v14 = sub_1B416042C(v72, 0);
      v74 = sub_1B4162070(&v119, (v14 + 32), v72, v52);

      sub_1B41187E8();
      if (v74 != v72)
      {
        __break(1u);
        goto LABEL_129;
      }

      v3 = v109;
      v50 = v106;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v119 = v14;

    sub_1B41609F0(&v119);

    v6 = v119;
    v75 = v104;
    v116 = *(v119 + 2);
    if (!v116)
    {

      v97 = MEMORY[0x1E69E7CC0];
LABEL_108:

      return v97;
    }

    v11 = 0;
    v112 = v119 + 32;
    v113 = v73;
    v10 = &unk_1ED95E680;
    v105 = v119;
    while (v11 < *(v6 + 16))
    {
      if (*(v75 + 16) && (v76 = v112[v11], v77 = sub_1B4160594(v76), (v78 & 1) != 0))
      {
        v79 = *(*(v75 + 56) + 8 * v77);
        v118 = v76;
        v80 = v79;
        v81 = CRLocale.rawValue.getter();
        v107 = v82;
        v108 = v81;
        v110 = v80;
        v83 = [v80 objects];
        v84 = sub_1B429FDF8();

        v85 = *(v84 + 16);
        if (v85)
        {
          v122 = MEMORY[0x1E69E7CC0];
          sub_1B42A0488();
          v86 = v84 + 32;
          do
          {
            sub_1B40E2888(v86, &v119);
            sub_1B40E27B4(0, &unk_1ED95E680);
            swift_dynamicCast();
            sub_1B42A0458();
            sub_1B42A0498();
            sub_1B42A04A8();
            sub_1B42A0468();
            v86 += 32;
            --v85;
          }

          while (v85);

          v87 = v122;
          v3 = v109;
          v50 = v106;
          v75 = v104;
        }

        else
        {

          v87 = MEMORY[0x1E69E7CC0];
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6 = v105;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v113 = sub_1B41602E4(0, v113[2] + 1, 1, v113);
        }

        v93 = v113[2];
        v92 = v113[3];
        v14 = v93 + 1;
        if (v93 >= v92 >> 1)
        {
          v113 = sub_1B41602E4((v92 > 1), v93 + 1, 1, v113);
        }

        v94 = v113;
        v113[2] = v14;
        v95 = &v94[3 * v93];
        v96 = v107;
        v95[4] = v108;
        v95[5] = v96;
        v95[6] = v87;
      }

      else
      {
        v88 = sub_1B41253CC();
        (*v115)(v50, v88, v3);
        v14 = sub_1B429FA48();
        v89 = sub_1B42A0148();
        if (os_log_type_enabled(v14, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_1B40D2000, v14, v89, "Could not select index set for locale.", v90, 2u);
          MEMORY[0x1B8C74FA0](v90, -1, -1);
        }

        (*v114)(v50, v3);
      }

      if (++v11 == v116)
      {

        v97 = v113;
        goto LABEL_108;
      }
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (*(v11 + 16))
  {
    v14 = *(v11 + 32);
    goto LABEL_37;
  }

LABEL_129:
  __break(1u);

  __break(1u);
  return result;
}

char *sub_1B415F524()
{
  objc_opt_self();
  v0 = [swift_dynamicCastObjCClassUnconditional() languages];
  v1 = [v0 array];

  v2 = sub_1B429FDF8();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B40E2888(v4, v13);
      sub_1B40E2888(v13, v11);
      swift_dynamicCast();
      CRLocale.init(rawValue:)(v10);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v6 = v12;
      if (v12 != 30)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1B40E6B20(0, *(v5 + 2) + 1, 1, v5);
        }

        v8 = *(v5 + 2);
        v7 = *(v5 + 3);
        if (v8 >= v7 >> 1)
        {
          v5 = sub_1B40E6B20((v7 > 1), v8 + 1, 1, v5);
        }

        *(v5 + 2) = v8 + 1;
        v5[v8 + 32] = v6;
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1B415F6E4(void *a1)
{
  v82[0] = *v1;
  v3 = sub_1B415F524();
  if (!*(v3 + 2))
  {

    v30 = [objc_opt_self() unknown];
    return v30;
  }

  v80 = v3[32];

  v4 = &selRef_scoreMapScaleFactor;
  v5 = [a1 scriptCategoryCounts];
  sub_1B40E27B4(0, &qword_1ED95EE90);
  v6 = sub_1B429FAF8();

  v7 = objc_opt_self();
  v81 = [v7 latinCyrillic];
  sub_1B40E27B4(0, &qword_1ED95E6C0);
  sub_1B416216C();
  sub_1B42A03B8();
  if (*(v6 + 16) && (v8 = sub_1B4100E08(v82), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
    sub_1B41012A0(v82);

    v11 = [v10 integerValue];

    v12 = v11;
  }

  else
  {

    sub_1B41012A0(v82);
    v12 = 0.0;
  }

  v13 = [a1 scriptCategoryCounts];
  v14 = sub_1B429FAF8();

  v81 = [v7 chinese];
  sub_1B42A03B8();
  if (*(v14 + 16) && (v15 = sub_1B4100E08(v82), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    sub_1B41012A0(v82);

    v18 = [v17 integerValue];

    v19 = v18;
  }

  else
  {

    sub_1B41012A0(v82);
    v19 = 0.0;
  }

  v20 = [a1 scriptCategoryCounts];
  v21 = sub_1B429FAF8();

  v81 = [v7 common];
  sub_1B42A03B8();
  if (*(v21 + 16) && (v22 = sub_1B4100E08(v82), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 8 * v22);
    sub_1B41012A0(v82);

    v25 = [v24 integerValue];

    v26 = v25;
  }

  else
  {

    sub_1B41012A0(v82);
    v26 = 0.0;
  }

  v27 = v80;
  LOBYTE(v82[0]) = v80;
  CRLocale.script.getter(&v81);
  sub_1B410D624();
  if (sub_1B429FB58())
  {
    v28 = [a1 topScriptCategory];
    v29 = [v7 chinese];

    swift_unknownObjectRelease();
    if (v28 != v29 && v12 < v19 * 80.0 + v26 && v19 > 0.0)
    {
      v30 = [v7 chinese];
      return v30;
    }
  }

  v31 = [a1 scriptCategoryCounts];
  v32 = sub_1B429FAF8();

  v81 = [v7 korean];
  sub_1B42A03B8();
  if (*(v32 + 16) && (v33 = sub_1B4100E08(v82), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * v33);
    sub_1B41012A0(v82);

    v36 = [v35 integerValue];

    v37 = v36;
  }

  else
  {

    sub_1B41012A0(v82);
    v37 = 0.0;
  }

  v39 = [a1 scriptCategoryCounts];
  v40 = sub_1B429FAF8();

  v81 = [v7 unknown];
  sub_1B42A03B8();
  if (*(v40 + 16) && (v41 = sub_1B4100E08(v82), (v42 & 1) != 0))
  {
    v43 = *(*(v40 + 56) + 8 * v41);
    sub_1B41012A0(v82);

    v44 = [v43 integerValue];

    v45 = v44;
  }

  else
  {

    sub_1B41012A0(v82);
    v45 = 0.0;
  }

  LOBYTE(v82[0]) = v80;
  CRLocale.script.getter(&v81);
  if (sub_1B429FB58())
  {
    v46 = [a1 topScriptCategory];
    v47 = [v7 korean];

    swift_unknownObjectRelease();
    if (v46 != v47)
    {
      v79 = v7;
      v48 = [a1 scriptCategoryCounts];
      v49 = sub_1B429FAF8();

      v50 = 1 << *(v49 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v49 + 64);
      v53 = (v50 + 63) >> 6;

      v54 = 0;
      v55 = 0;
      do
      {
        if (!v52)
        {
          while (1)
          {
            v56 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            if (v56 >= v53)
            {
              goto LABEL_43;
            }

            v52 = *(v49 + 64 + 8 * v56);
            ++v54;
            if (v52)
            {
              v54 = v56;
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_69:
          __break(1u);
          return result;
        }

        v56 = v54;
LABEL_40:
        v57 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
        result = [*(*(v49 + 56) + ((v56 << 9) | (8 * v57))) integerValue];
        v58 = __OFADD__(v55, result);
        v55 += result;
      }

      while (!v58);
      __break(1u);
LABEL_43:

      v7 = v79;
      v4 = &selRef_scoreMapScaleFactor;
      v27 = v80;
      if (v55 - v37 - v26 - v45 < v37 * 3.0)
      {
        v30 = [v79 korean];
        return v30;
      }
    }
  }

  v59 = [a1 v4[2]];
  v60 = sub_1B429FAF8();

  v81 = [v7 japanese];
  sub_1B42A03B8();
  if (*(v60 + 16) && (v61 = sub_1B4100E08(v82), (v62 & 1) != 0))
  {
    v63 = *(*(v60 + 56) + 8 * v61);
    sub_1B41012A0(v82);

    v64 = [v63 integerValue];

    v65 = v64;
  }

  else
  {

    sub_1B41012A0(v82);
    v65 = 0.0;
  }

  LOBYTE(v82[0]) = v27;
  CRLocale.script.getter(&v81);
  if (sub_1B429FB58())
  {
    v66 = [a1 topScriptCategory];
    v67 = [v7 japanese];

    swift_unknownObjectRelease();
    if (v66 != v67)
    {
      v68 = [a1 v4[2]];
      v69 = sub_1B429FAF8();

      v70 = 1 << *(v69 + 32);
      v71 = -1;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      v72 = v71 & *(v69 + 64);
      v73 = (v70 + 63) >> 6;

      v74 = 0;
      v75 = 0;
      do
      {
        if (!v72)
        {
          while (1)
          {
            v76 = v74 + 1;
            if (__OFADD__(v74, 1))
            {
              goto LABEL_69;
            }

            if (v76 >= v73)
            {
              goto LABEL_63;
            }

            v72 = *(v69 + 64 + 8 * v76);
            ++v74;
            if (v72)
            {
              v74 = v76;
              goto LABEL_60;
            }
          }
        }

        v76 = v74;
LABEL_60:
        v77 = __clz(__rbit64(v72));
        v72 &= v72 - 1;
        result = [*(*(v69 + 56) + ((v76 << 9) | (8 * v77))) integerValue];
        v58 = __OFADD__(v75, result);
        v75 += result;
      }

      while (!v58);
      __break(1u);
LABEL_63:

      if (v75 - v65 - v26 - v45 < v65 * 3.0)
      {
        v30 = [v7 japanese];
        return v30;
      }
    }
  }

  v78 = [a1 topScriptCategory];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_1B416013C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = sub_1B415F524();
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  while (1)
  {
    if (v7 == v6)
    {
      v8 = 30;
LABEL_7:

      *a2 = v8;
      return result;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v8 = *(v5 + v6++ + 32);
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_1B413EC3C();
    result = sub_1B429FDB8();
    if (result)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4160218(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1B4161DCC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1B4160594(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1B4161F14();
        v11 = v13;
      }

      sub_1B4161C30(v9, v11);
      *v3 = v11;
    }
  }
}

void *sub_1B41602E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B416042C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B41604A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}