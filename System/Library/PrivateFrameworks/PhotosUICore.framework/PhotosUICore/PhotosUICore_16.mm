uint64_t sub_1A3E2A064(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A524E2B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A3E2CD4C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A3E2A154(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v6 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = sub_1A524E2B4();
  v7 = __OFADD__(v16, v5);
  result = v16 + v5;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1A3D5C1C8(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v3 + 0x10);
  v10 = (*(v3 + 0x18) >> 1) - v9;
  result = sub_1A3E2CBF8(&v34, (v3 + 8 * v9 + 32), v10, v4);
  if (result < v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  if (result >= 1)
  {
    v14 = *(v3 + 16);
    v7 = __OFADD__(v14, result);
    v15 = v14 + result;
    if (v7)
    {
      __break(1u);
LABEL_16:
      v19 = (v12 + 64) >> 6;
      while (1)
      {
        v20 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_38;
        }

        if (v20 >= v19)
        {
          goto LABEL_8;
        }

        v21 = *(v11 + 8 * v20);
        ++v3;
        if (v21)
        {
          v17 = (v21 - 1) & v21;
          v18 = __clz(__rbit64(v21)) | (v20 << 6);
          v3 = v20;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v15;
  }

  result = v34;
  if (v13 != v10)
  {
LABEL_8:
    result = sub_1A3C42540();
    *v1 = v2;
    return result;
  }

LABEL_13:
  v4 = *(v3 + 16);
  v11 = v35;
  v12 = v36;
  v3 = v37;
  v33 = v35;
  if (!v38)
  {
    goto LABEL_16;
  }

  v17 = (v38 - 1) & v38;
  v18 = __clz(__rbit64(v38)) | (v37 << 6);
  v19 = (v36 + 64) >> 6;
LABEL_21:
  v22 = result;
  v23 = *(*(result + 56) + 8 * v18);
  v24 = v23;
  v25 = v23;
  v26 = v33;
  while (1)
  {
LABEL_23:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = v25;
      sub_1A524CA74();
      v25 = v32;
      v26 = v33;
    }

    v2 = *v1;
    v27 = *v1 & 0xFFFFFFFFFFFFFF8;
    v28 = *(v27 + 0x18) >> 1;
    if (v4 < v28)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v27 + 32 + 8 * v4++) = v25;
    if (!v17)
    {
      break;
    }

    result = v22;
LABEL_33:
    v31 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = *(*(result + 56) + ((v3 << 9) | (8 * v31)));
    v26 = v33;
    if (v4 == v28)
    {
      v4 = v28;
      *(v27 + 16) = v28;
      goto LABEL_23;
    }
  }

  v29 = v3;
  result = v22;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v19)
    {
      *(v27 + 16) = v4;
      goto LABEL_8;
    }

    v17 = *(v26 + 8 * v30);
    ++v29;
    if (v17)
    {
      v3 = v30;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A3E2A3F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A524BEE4();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524BF64();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v17[1] = qword_1EB1EADF0;
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v11;
  v12[4] = a3;
  aBlock[4] = sub_1A3E2F218;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_311;
  v13 = _Block_copy(aBlock);

  v14 = a3;
  sub_1A524BF14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v15 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v15);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v10, v7, v13);
  _Block_release(v13);
  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);
}

uint64_t sub_1A3E2A770(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A524BFF4();
  MEMORY[0x1EEE9AC00](v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    (*(*v7 + 1944))();

    v8 = v7[37];

    if (v8 == a1)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1A3E2EAF0(a3);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        swift_getKeyPath();
        (*(*v10 + 1944))();

        swift_getKeyPath();
        sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
        sub_1A52415F4();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v11 = result;
        swift_getKeyPath();
        (*(*v11 + 1944))();

        swift_getKeyPath();
        sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
        sub_1A52415F4();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  return result;
}

uint64_t sub_1A3E2ACA0()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1579F0 = result;
  return result;
}

void sub_1A3E2AD0C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B520);
  __swift_project_value_buffer(v0, qword_1EB15B520);
  sub_1A5246EF4();
}

char *sub_1A3E2AD70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2A040(0, &qword_1EB120240, sub_1A3E2F8A0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1A3E2AE98(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1A524E2B4();
  }

  return sub_1A524E494();
}

uint64_t sub_1A3E2AEFC(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1A590EEE0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1A3E2AEFC(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1A3E2AFA0(uint64_t result, float a2, float a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE_INT(fabs(a3 - a2)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1A590EEE0](&v7, 8);
  if (((v5 * vcvts_n_f32_u64(v7 & 0xFFFFFF, 0x18uLL)) + a2) == a3)
  {
    return sub_1A3E2AFA0(v6, a2, a3);
  }

  return result;
}

void sub_1A3E2B044(unint64_t a1, void *a2, char a3)
{
  v4 = a1;
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1A5909630](a1, a2, v6);
      sub_1A3C52C70(0, &unk_1EB1205A0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_26;
  }

  v7 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if (a3)
  {
    v11 = v3;
    sub_1A3C52C70(0, &unk_1EB1205A0);
    if (sub_1A524E294() != *(v10 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1A524E2A4();
    swift_dynamicCast();
    v7 = v16;
    v3 = v16;
    v12 = sub_1A524DBE4();
    v13 = -1 << *(v10 + 32);
    v4 = v12 & ~v13;
    if ((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v10 + 48) + 8 * v4);
        v3 = sub_1A524DBF4();

        if (v3)
        {
          goto LABEL_19;
        }

        v4 = (v4 + 1) & v14;
      }

      while (((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= v4)
  {
    goto LABEL_24;
  }

  if (((*(v10 + 8 * (v4 >> 6) + 56) >> v4) & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v11 = v3;
  if (*(v10 + 36) != v7)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A3E2B420();
  }

  sub_1A3E2B988(v4);
  *v11 = v10;
}

uint64_t sub_1A3E2B2B8()
{
  v1 = v0;

  v2 = sub_1A524E2B4();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1A3E2BB28(v3, v2);
  v13 = v4;

  v5 = sub_1A524DBE4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1A3C52C70(0, &unk_1EB1205A0);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_1A524DBF4();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1A3E2B988(v7);
  result = sub_1A524DBF4();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A3E2B420()
{
  v1 = v0;
  sub_1A3E2F224();
  v2 = *v0;
  v3 = sub_1A524E3A4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t sub_1A3E2B564()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3E2F224();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1A524DBE4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A3E2B76C()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3E2F224();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A524DBE4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1A3E2B988(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1A524E244();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1A524DBE4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1A3E2BB28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3E2F224();
    v2 = sub_1A524E3C4();
    v14 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &unk_1EB1205A0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A3E2B76C();
        }

        v2 = v14;
        result = sub_1A524DBE4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1A3E2BD08(uint64_t a1, uint64_t a2)
{
  sub_1A524DBE4();
  result = sub_1A524E254();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1A3E2BD8C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &unk_1EB1205A0);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A3E2BFC4(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

void sub_1A3E2BFC4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A3E2B76C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A3E2B420();
      goto LABEL_12;
    }

    sub_1A3E2B564();
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A3C52C70(0, &unk_1EB1205A0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

unint64_t sub_1A3E2C134(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  result = sub_1A3CAB9BC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_1A3E2C274(v14, isUniquelyReferenced_nonNull_native);
    result = sub_1A3CAB9BC(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1A524EB84();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = result;
    sub_1A3E2C4D0();
    result = v19;
    v16 = v8;
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v16 = v8;
  if (v3)
  {
LABEL_7:
    v17 = v16[7];
    v18 = *(v17 + 8 * result);
    *(v17 + 8 * result) = a1;
LABEL_12:
    *v4 = v16;
    return v18;
  }

LABEL_10:
  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a2;
  *(v16[7] + 8 * result) = a1;
  v20 = v16[2];
  v21 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    v18 = 0;
    v16[2] = v21;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3E2C274(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3E2F300();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_1A524EC84();
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_1A3E2C4D0()
{
  v1 = v0;
  sub_1A3E2F300();
  v2 = *v0;
  v3 = sub_1A524E764();
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

uint64_t sub_1A3E2C620(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A3CAB9BC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A3E2C4D0();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1A3CB1208(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1A3E2C6A8(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s32(vceqq_f32(v6, v7));
    if (((v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return (v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1;
}

void sub_1A3E2C728(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = sub_1A3CAB9BC(*(*(a1 + 48) + 8 * v12));
      if (v15)
      {
        v16 = v14;
        sub_1A3C52C70(0, &unk_1EB1205A0);
        v17 = *(*(a2 + 56) + 8 * v16);
        v18 = v13;
        v19 = v17;
        LOBYTE(v17) = sub_1A524DBF4();

        if (v17)
        {
          continue;
        }
      }

      return;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1A3E2C880(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1A3E2CAF8(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1A3C52C70(0, &unk_1EB1205A0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_1A524DBE4();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_1A524DBF4();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_1A3E2CAF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1A524E2B4())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1A524E314();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_1A3E2CBF8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A3E2CD4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A3E2F950();
          sub_1A3E30D84(&qword_1EB12CE98, sub_1A3E2F950);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &unk_1EB1205A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3E2CEF8(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_1A3E2CF20()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t type metadata accessor for TimelineVFXEngineController()
{
  result = qword_1EB165BE0;
  if (!qword_1EB165BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A3E2CFD0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A3E2F300();
  v3 = sub_1A524E794();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1A3CAB9BC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1A3CAB9BC(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1A3E2D0C0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      sub_1A3E2F224();
      v3 = sub_1A524E3D4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1A524E2B4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1A59097F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1A524DBE4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1A3C52C70(0, &unk_1EB1205A0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1A524DBF4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1A524DBE4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1A3C52C70(0, &unk_1EB1205A0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1A524DBF4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1A3E2D3D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;
  v4 = v2;
}

uint64_t sub_1A3E2D408()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 136) = v1;
  return result;
}

uint64_t sub_1A3E2D458()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 144) = v1;
  return result;
}

uint64_t sub_1A3E2D4B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
  return result;
}

uint64_t sub_1A3E2D510()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
  return result;
}

void sub_1A3E2D568()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 192);
  *(v2 + 192) = v1;
  v4 = v1;
}

void sub_1A3E2D5C4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 200);
  *(v2 + 200) = v1;
  v4 = v1;
}

uint64_t sub_1A3E2D620()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 208) = v2;
  return result;
}

uint64_t sub_1A3E2D674()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 216) = v2;
  return result;
}

uint64_t sub_1A3E2D6C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 224) = v2;
  return result;
}

uint64_t sub_1A3E2D71C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 225) = v2;
  return result;
}

uint64_t sub_1A3E2D770()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 232) = v2;
  *(v1 + 240) = v3;
  return result;
}

void sub_1A3E2D7C4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 248) = v1;
  sub_1A3E0F428();
}

uint64_t sub_1A3E2D81C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 256);
  v5 = *(v2 + 264);
  *(v2 + 256) = v1;
  *(v2 + 264) = v3;
  sub_1A3C66EE8(v1);
  return sub_1A3C784D4(v4, v5);
}

uint64_t sub_1A3E2D894()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 304);
  *(v1 + 304) = *(v0 + 24);
  return sub_1A3E106B0(v2);
}

uint64_t sub_1A3E2D8D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController__state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A3E2D99C()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3E18484(v1, v3, v2);
  }

  return result;
}

uint64_t sub_1A3E2DA30()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 25);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3E1B3A4(v1, v2, v5, v3, v4);
  }

  return result;
}

uint64_t sub_1A3E2DAD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(*result + 896))(result))
    {
      sub_1A3E1EBD4();
    }

    else
    {
      sub_1A3E1D87C();
    }
  }

  return result;
}

unint64_t sub_1A3E2DC40()
{
  result = qword_1EB12CE60;
  if (!qword_1EB12CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CE60);
  }

  return result;
}

unint64_t sub_1A3E2DC98()
{
  result = qword_1EB12CE68;
  if (!qword_1EB12CE68)
  {
    sub_1A3C370B0(255, &qword_1EB12CE70, &type metadata for RippleCenter, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CE68);
  }

  return result;
}

unint64_t sub_1A3E2DD18()
{
  result = qword_1EB12CE78;
  if (!qword_1EB12CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CE78);
  }

  return result;
}

uint64_t sub_1A3E2DD84()
{
  result = sub_1A5246E94();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimelineVFXEngineController.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimelineVFXEngineController.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1A3E2E0E0(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

id sub_1A3E2E0F0(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t sub_1A3E2E100()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(*result + 1720))(result) == 7)
    {
      swift_getKeyPath();
      (*(*v3 + 1944))();

      if (v3[37] == v1)
      {
        (*(*v3 + 1728))(2);
      }
    }
  }

  return result;
}

uint64_t sub_1A3E2E254()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(*result + 1720))(result) == 6)
    {
      swift_getKeyPath();
      (*(*v3 + 1944))();

      if (v3[37] == v1)
      {
        (*(*v3 + 1728))(3);
      }
    }
  }

  return result;
}

uint64_t sub_1A3E2E368()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    (*(*v3 + 1944))();

    if (v3[37] == v1)
    {
      v5 = (*v3 + 400);
      v6 = *v5;
      v7 = (*v5)(v4);
      (*(*v7 + 4096))(v7);

      v8 = v3[6];
      v9 = [v8 camera];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 bloom];

        if (v11)
        {
          [v11 setEnabled_];
        }
      }

      v12 = [v8 camera];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 chromaticTransform];

        if (v14)
        {
          [v14 setEnabled_];
        }
      }

      v15 = [v3[4] camera];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 chromaticTransform];

        if (v17)
        {
          [v17 setEnabled_];
        }
      }

      v18 = v6();
      v19 = (*(*v18 + 2464))(v18);

      if (v19)
      {
        v20 = (*(*v3 + 1672))(v20);
        if ((v20 & 1) == 0)
        {
          if (v3[16] >> 62)
          {
            sub_1A524E2B4();
          }

          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      v21 = (*(*v3 + 1136))(v20);
      [v21 invalidate];

      (*(*v3 + 1144))(0);
    }
  }

  return result;
}

uint64_t objectdestroy_279Tm()
{
  v1 = sub_1A5246E54();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3E2EA78(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1A5246E54() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

void sub_1A3E2EAF0(void *a1)
{
  [a1 removeAllAnimations];
  [a1 setPosition_];
  [a1 setOpacity_];
  [a1 setScale_];
  v3 = [a1 childNodes];
  v4 = sub_1A3C52C70(0, &unk_1EB1205A0);
  v5 = sub_1A524CA34();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1A59097F0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  [v7 removeAllAnimations];

  v8 = [a1 childNodes];
  v9 = sub_1A524CA34();

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1A59097F0](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  v1 = &_OBJC_LABEL_PROTOCOL___PXActivityActionDelegate;
  [v11 setEulerAngles_];

  v12 = [a1 childNodes];
  v4 = sub_1A524CA34();

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v13 = MEMORY[0x1A59097F0](0, v4);
    goto LABEL_10;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v13 = *(v4 + 32);
LABEL_10:
  v14 = v13;

  [v14 setScale_];

  v15 = sub_1A524C634();
  v16 = [a1 childNodeWithName_];

  [v16 removeAllAnimations];
  v17 = sub_1A524C634();
  v18 = [a1 childNodeWithName_];

  [v18 setPosition_];
  v19 = sub_1A524C634();
  v20 = [a1 childNodeWithName_];

  [v20 v1[485]];
  v21 = sub_1A524C634();
  v22 = [a1 childNodeWithName_];

  [v22 setScale_];
  v23 = sub_1A524C634();
  v24 = [a1 childNodeWithName_];

  if (v24)
  {
    v25 = [v24 model];

    if (v25)
    {
      v26 = [v25 firstMaterial];

      if (v26)
      {
        v27 = sub_1A524CF14();
        v28 = sub_1A524C634();
        [v26 setValue:v27 forKey:v28];

        v29 = sub_1A524CF14();
        v30 = sub_1A524C634();
        [v26 setValue:v29 forKey:v30];

        v31 = sub_1A524CF14();
        v32 = sub_1A524C634();
        [v26 setValue:v31 forKey:v32];
      }
    }
  }
}

void sub_1A3E2EFD8(void *a1, void *a2)
{
  v4 = sub_1A524C634();
  v14 = [a1 childNodeWithName_];

  if (v14)
  {
    v5 = [v14 model];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 firstMaterial];

      if (v7)
      {
        v8 = sub_1A524C634();

        [v7 setValue:a2 forKeyPath:v8];
      }
    }

    v9 = [v14 model];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 firstMaterial];

      if (v11)
      {
        [a2 size];
        [a2 size];
        v12 = sub_1A5241684();
        v13 = sub_1A524C634();

        [v11 setValue:v12 forKey:v13];
      }
    }
  }
}

void sub_1A3E2F224()
{
  if (!qword_1EB120520)
  {
    sub_1A3C52C70(255, &unk_1EB1205A0);
    sub_1A3E2F298();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120520);
    }
  }
}

unint64_t sub_1A3E2F298()
{
  result = qword_1EB120598;
  if (!qword_1EB120598)
  {
    sub_1A3C52C70(255, &unk_1EB1205A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120598);
  }

  return result;
}

void sub_1A3E2F300()
{
  if (!qword_1EB120408)
  {
    sub_1A3C52C70(255, &unk_1EB1205A0);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120408);
    }
  }
}

unint64_t sub_1A3E2F3B8()
{
  result = qword_1EB125840;
  if (!qword_1EB125840)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB125840);
  }

  return result;
}

uint64_t sub_1A3E2F41C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v11 = *(v0 + 48);
  v5 = *(v0 + 64);
  v6 = *(v0 + 68);
  v7 = *(v0 + 72);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_getKeyPath();
    (*(*v9 + 1944))();

    v10 = v9[37];

    if (v10 == v1)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_1A3E24670(v2, v3, 0, v11, v4, v5, v6 | (v7 << 32));
      }
    }
  }

  return result;
}

uint64_t sub_1A3E2F54C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    (*(*v3 + 1944))();

    if (v3[37] == v1 && (*(*v3 + 1720))(v4) == 5)
    {
      (*(*v3 + 1728))(2);
    }
  }

  return result;
}

uint64_t objectdestroy_300Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A3E2F6B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    (*(*v4 + 1944))();

    if (v4[37] == v1)
    {
      v5 = sub_1A5240EE4();
      v7 = v6 - (*(*v4 + 1232))(v5);
      v8 = *(*(*v4 + 400))();
      v9 = (*(v8 + 6928))();

      if (v9 < v7)
      {
        [v2 worldPosition];
        v12 = v10;
        v11 = sub_1A5240EE4();
        (*(*v4 + 1240))(v11);
        sub_1A3E28DF0(v12);
      }
    }
  }

  return result;
}

void sub_1A3E2F8A0()
{
  if (!qword_1EB120228)
  {
    sub_1A3E2F8FC();
    v0 = sub_1A524EC44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120228);
    }
  }
}

unint64_t sub_1A3E2F8FC()
{
  result = qword_1EB120E38;
  if (!qword_1EB120E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120E38);
  }

  return result;
}

void sub_1A3E2F950()
{
  if (!qword_1EB12CE90)
  {
    sub_1A3C52C70(255, &unk_1EB1205A0);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CE90);
    }
  }
}

uint64_t objectdestroy_307Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A3E2FA28()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(*result + 1720))(result) == 5)
    {
      swift_getKeyPath();
      (*(*v3 + 1944))();

      if (v3[37] == v1)
      {
        (*(*v3 + 1728))(2);
      }
    }
  }

  return result;
}

uint64_t sub_1A3E2FC80()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    v4 = (*v3 + 1944);
    v5 = *v4;
    (*v4)();

    if ((*(v3 + 153) & 1) == 0)
    {
      swift_getKeyPath();
      v5();

      if (v3[37] == v1)
      {
        sub_1A3E2AEFC(v6, 0.0, 1.0);
        v8 = v7;
        v9 = sub_1A4731C54();
        v10 = swift_beginAccess();
        if (v8 < *v9 && ((*(*v3 + 896))(v10) & 1) == 0)
        {
          swift_getKeyPath();
          v11 = (*v3 + 1944);
          v12 = *v11;
          (*v11)();

          v13 = v3[8];
          if (v13 >> 62)
          {
            v14 = sub_1A524E2B4();
            if (v14)
            {
LABEL_8:
              sub_1A3E2AFA0(v14, 0.0, 1.0);
              v16 = v15;
              swift_getKeyPath();
              v12();

              v17 = v3[8];
              if (v17 >> 62)
              {
                result = sub_1A524E2B4();
              }

              else
              {
                result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v18 = v16 * result;
              if (COERCE_INT(fabs(v18)) > 2139095039)
              {
                __break(1u);
              }

              else if (v18 > -9.2234e18)
              {
                if (v18 < 9.2234e18)
                {
                  v19 = v18;
                  swift_getKeyPath();
                  v12();

                  if (!*(v3[11] + 16) || (v20 = sub_1A3CAB9BC(v19), (v21 & 1) == 0))
                  {
                    v22 = (*(*v3 + 752))(v20);
                    if (!v22 || (v22, v19))
                    {
                      sub_1A3E24670(v19, 0, 1, 0, 0, 1, 0x100000000);
                    }
                  }
                }

LABEL_25:
                __break(1u);
                return result;
              }

              __break(1u);
              goto LABEL_25;
            }
          }

          else
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v14)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A3E2FFA8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    v4 = (*v3 + 1944);
    v5 = *v4;
    (*v4)();

    if (*(v3 + 153))
    {
    }

    swift_getKeyPath();
    v5();

    if (v3[37] != v1)
    {
    }

    if ((*(*v3 + 896))(v6))
    {
      v7 = (*v3 + 400);
      v8 = *v7;
      v9 = (*v7)();
      v10 = (*(*v9 + 5200))(v9);

      if ((v10 & 1) == 0)
      {
      }

      v12 = (v8)(v11);
      v13 = (*(*v12 + 5488))(v12);

      sub_1A3E2AFA0(v14, 0.0, 1.0);
      if (v13 >= v15)
      {
      }
    }

    swift_getKeyPath();
    v16 = (*v3 + 1944);
    v17 = *v16;
    (*v16)();

    v18 = v3[8];
    if (v18 >> 62)
    {
      v19 = sub_1A524E2B4();
      if (!v19)
      {
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
      }
    }

    sub_1A3E2AFA0(v19, 0.0, 1.0);
    v21 = v20;
    swift_getKeyPath();
    v17();

    v22 = v3[8];
    if (v22 >> 62)
    {
      v23 = sub_1A524E2B4();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v21 * v23;
    if (COERCE_INT(fabs(v24)) > 2139095039)
    {
      __break(1u);
    }

    else if (v24 > -9.2234e18)
    {
      if (v24 < 9.2234e18)
      {
        v25 = v24;
        swift_getKeyPath();
        v17();

        v26 = v3[8];
        if ((v26 & 0xC000000000000001) == 0)
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) > v25)
          {
            v27 = *(v26 + 8 * v25 + 32);
            swift_getKeyPath();
            v17();

            if (*(v3[11] + 16))
            {
              v28 = sub_1A3CAB9BC(v25);
              if (v29)
              {
                goto LABEL_47;
              }
            }

            v30 = (*(*v3 + 752))(v28);
            if (v30)
            {

              if (!v25)
              {
                goto LABEL_47;
              }
            }

            v31 = sub_1A524C634();
            v32 = [v27 childNodeWithName_];

            if (!v32)
            {
              goto LABEL_47;
            }

            v33 = [v32 model];

            if (!v33)
            {
              goto LABEL_47;
            }

            v34 = [v33 firstMaterial];

            if (!v34)
            {
              goto LABEL_47;
            }

            v35 = (*v3 + 1672);
            v36 = *v35;
            v37 = (*v35)();
            v38 = *(*(*v3 + 400))();
            if (v37)
            {
              (*(v38 + 5728))();
            }

            else
            {
              (*(v38 + 5584))();
            }

            v39 = sub_1A524CF14();
            v40 = sub_1A524C634();
            [v34 setValue:v39 forKey:v40];

            v41 = sub_1A524CF14();
            v42 = sub_1A524C634();
            [v34 setValue:v41 forKey:v42];

            v43 = sub_1A524CF14();
            v44 = sub_1A524C634();
            [v34 setValue:v43 forKey:v44];

            v45 = [v34 presentationMaterial];
            v46 = sub_1A524C634();
            v47 = [v45 valueForKey_];

            if (v47)
            {
              sub_1A524E0B4();
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
              sub_1A3C52C70(0, &qword_1EB126610);
              if (swift_dynamicCast())
              {
                [v62 floatValue];
                v49 = v48;

                if (v49 != 0.0 && v49 != 1.0)
                {
LABEL_46:

LABEL_47:
                }

LABEL_37:
                v50 = objc_opt_self();
                if ((*(*v3 + 896))([v50 begin]))
                {
                  v51 = (*(*v3 + 400))();
                  (*(*v51 + 5440))(v51);
                }

                else
                {
                  v53 = v36();
                  v54 = *(*(*v3 + 400))();
                  if (v53)
                  {
                    (*(v54 + 5632))();
                  }

                  else
                  {
                    v52 = (*(v54 + 5392))();
                  }
                }

                v55 = v52;

                v56 = *(*(*v3 + 400))([v50 setAnimationDuration_]);
                v57 = (*(v56 + 5536))();

                [v50 setAnimationTimingFunction_];

                if (v49 == 0.0 || (v58 = 0.0, v49 == 1.0))
                {
                  v59 = sub_1A524CF14();
                  v60 = sub_1A524C634();
                  [v34 setValue:v59 forKey:v60];
                }

                [v50 commit];
                v61 = sub_1A3E29BE8();
                sub_1A3E2EFD8(v27, v61);

                goto LABEL_46;
              }
            }

            else
            {
              sub_1A3C35B00(v65);
            }

            v49 = 0.0;
            goto LABEL_37;
          }

          __break(1u);
          return result;
        }

LABEL_56:
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_55;
  }

  return result;
}

uint64_t sub_1A3E309E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 280);
  v5 = *(v2 + 288);
  *(v2 + 280) = v1;
  *(v2 + 288) = v3;
  sub_1A3C66EE8(v1);
  return sub_1A3C784D4(v4, v5);
}

uint64_t sub_1A3E30A30(void (*a1)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a1();
  }

  return result;
}

void sub_1A3E30A8C()
{
  if (!qword_1EB120B38)
  {
    type metadata accessor for TimelineVFXEngineCell();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120B38);
    }
  }
}

uint64_t sub_1A3E30AF8(uint64_t a1, uint64_t a2)
{
  sub_1A3C2A040(0, &qword_1EB120B30, sub_1A3E30A8C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3E30B8C(uint64_t a1)
{
  v2 = type metadata accessor for TimelineVFXEngineCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3E30BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineVFXEngineCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3E30C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E30CCC(void (*a1)(uint64_t))
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    (*(*v5 + 1944))();

    if (v5[37] == v3)
    {
      a1(v6);
    }
  }

  return result;
}

uint64_t sub_1A3E30D84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12PhotosUICore27TimelineVFXEngineControllerC24VFXCameraEffectAnimation33_8046F5C171533BD9A81B8EB4949D6401LLVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3E30DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1A3E30E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3E31074@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  sub_1A3E42020(v1 + *(v10 + 24), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for PhotosDetailsEXIFWidgetView()
{
  result = qword_1EB190500;
  if (!qword_1EB190500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3E312F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31654(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E42020(v2, v10, sub_1A3E31654);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5249554();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A3E31584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_1A3E31688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

BOOL sub_1A3E31720()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v6 = (v0 + v5[9]);
  v7 = *(v6 + 16);
  v8 = *(v6 + 3);
  v36 = *v6;
  v37 = v7;
  v38 = v8;
  sub_1A3E31688(0, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v35)
  {
    return 0;
  }

  v9 = v34;
  v10 = (v0 + v5[10]);
  v11 = *(v10 + 16);
  v12 = *(v10 + 3);
  v36 = *v10;
  v37 = v11;
  v38 = v12;
  sub_1A524B6A4();
  if (v35)
  {
    return 0;
  }

  v13 = v34;
  v14 = (v0 + v5[11]);
  v15 = *(v14 + 16);
  v16 = *(v14 + 3);
  v36 = *v14;
  v37 = v15;
  v38 = v16;
  sub_1A524B6A4();
  if (v35)
  {
    return 0;
  }

  v17 = v34;
  v18 = (v0 + v5[12]);
  v19 = *(v18 + 16);
  v20 = *(v18 + 3);
  v36 = *v18;
  v37 = v19;
  v38 = v20;
  sub_1A524B6A4();
  if (v35)
  {
    return 0;
  }

  v21 = v34;
  v22 = (v0 + v5[13]);
  v23 = *(v22 + 16);
  v24 = *(v22 + 3);
  v36 = *v22;
  v37 = v23;
  v38 = v24;
  v25 = sub_1A524B6A4();
  if (v35)
  {
    return 0;
  }

  v27 = v34;
  if ((*((*MEMORY[0x1E69E7D40] & **(v0 + v5[8] + 8)) + 0x140))(v25) == 5)
  {
    sub_1A3E31074(v4);
    v9 = sub_1A4394B64(v4, v5, &off_1EE6D6550);
    (*(v2 + 8))(v4, v1);
  }

  v29 = *(v0 + 24);
  LOBYTE(v36) = *(v0 + 16);
  v28 = v36;
  *(&v36 + 1) = v29;
  sub_1A3C4895C(0, &qword_1EB121C78, &type metadata for PhotosDetailsEXIFWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A4411780();
  v31 = v30;
  LOBYTE(v36) = v28;
  *(&v36 + 1) = v29;
  sub_1A524B6A4();
  sub_1A4411780();
  return v9 - (v31 + v32) - (v13 + v17 + v21 + *(v0 + v5[15]) * 3.0) < v27;
}

BOOL sub_1A3E31A8C()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v6 = (v0 + v5[9]);
  v7 = *(v6 + 16);
  v8 = *(v6 + 3);
  v40 = *v6;
  v41 = v7;
  v42 = v8;
  sub_1A3E31688(0, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v39)
  {
    return 0;
  }

  v9 = v38;
  v10 = (v0 + v5[10]);
  v11 = *(v10 + 16);
  v12 = *(v10 + 3);
  v40 = *v10;
  v41 = v11;
  v42 = v12;
  sub_1A524B6A4();
  if (v39)
  {
    return 0;
  }

  v13 = v38;
  v14 = (v0 + v5[11]);
  v15 = *(v14 + 16);
  v16 = *(v14 + 3);
  v40 = *v14;
  v41 = v15;
  v42 = v16;
  sub_1A524B6A4();
  if (v39)
  {
    return 0;
  }

  v17 = v38;
  v18 = (v0 + v5[12]);
  v19 = *(v18 + 16);
  v20 = *(v18 + 3);
  v40 = *v18;
  v41 = v19;
  v42 = v20;
  sub_1A524B6A4();
  if (v39)
  {
    return 0;
  }

  v21 = v38;
  v22 = (v0 + v5[14]);
  v23 = *(v22 + 16);
  v24 = *(v22 + 3);
  v40 = *v22;
  v41 = v23;
  v42 = v24;
  sub_1A524B6A4();
  if (v39)
  {
    return 0;
  }

  v26 = v38;
  v27 = (v0 + v5[13]);
  v28 = *(v27 + 16);
  v29 = *(v27 + 3);
  v40 = *v27;
  v41 = v28;
  v42 = v29;
  v30 = sub_1A524B6A4();
  if (v39)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v38;
  }

  if ((*((*MEMORY[0x1E69E7D40] & **(v0 + v5[8] + 8)) + 0x140))(v30) == 5)
  {
    sub_1A3E31074(v4);
    v9 = sub_1A4394B64(v4, v5, &off_1EE6D6550);
    (*(v2 + 8))(v4, v1);
  }

  v33 = *(v0 + 24);
  LOBYTE(v40) = *(v0 + 16);
  v32 = v40;
  *(&v40 + 1) = v33;
  sub_1A3C4895C(0, &qword_1EB121C78, &type metadata for PhotosDetailsEXIFWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A4411780();
  v35 = v34;
  LOBYTE(v40) = v32;
  *(&v40 + 1) = v33;
  sub_1A524B6A4();
  sub_1A4411780();
  return v9 - (v35 + v36) - (v13 + v17 + v21 + v31 + *(v0 + v5[15]) * 4.0) < v26;
}

void sub_1A3E31E50(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A524B694();
  *a2 = v24;
  *(a2 + 8) = *(&v24 + 1);
  v4 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_1A3E31654(0);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[9];
  sub_1A3E316EC(0);
  sub_1A524B694();
  *v7 = v24;
  *(v7 + 16) = v25;
  *(v7 + 24) = v26;
  v8 = a2 + v4[10];
  sub_1A524B694();
  *v8 = v24;
  *(v8 + 16) = v25;
  *(v8 + 24) = v26;
  v9 = a2 + v4[11];
  sub_1A524B694();
  *v9 = v24;
  *(v9 + 16) = v25;
  *(v9 + 24) = v26;
  v10 = a2 + v4[12];
  sub_1A524B694();
  *v10 = v24;
  *(v10 + 16) = v25;
  *(v10 + 24) = v26;
  v11 = a2 + v4[13];
  sub_1A524B694();
  *v11 = v24;
  *(v11 + 16) = v25;
  *(v11 + 24) = v26;
  v12 = a2 + v4[14];
  sub_1A524B694();
  *v12 = v24;
  *(v12 + 16) = v25;
  *(v12 + 24) = v26;
  *(a2 + v4[15]) = 0x4018000000000000;
  v13 = (a2 + v4[8]);
  type metadata accessor for PhotosDetailsEXIFWidgetViewModel();
  sub_1A3E33CB8(&qword_1EB12AA60, type metadata accessor for PhotosDetailsEXIFWidgetViewModel);
  v14 = a1;
  *v13 = sub_1A5248494();
  v13[1] = v15;
  v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x140);
  v17 = v14;
  v18 = v16();

  LOBYTE(v18) = sub_1A4411614(v18);
  sub_1A524B694();
  *(a2 + 16) = v24;
  *(a2 + 24) = *(&v24 + 1);
  sub_1A4411A14(v18);
  v19 = (a2 + v4[16]);
  sub_1A524B694();
  *v19 = v24;
  sub_1A4411818(v18);
  v20 = (a2 + v4[17]);
  sub_1A524B694();
  *v20 = v24;
  sub_1A4411898(v18);
  v21 = (a2 + v4[18]);
  sub_1A524B694();
  *v21 = v24;
  sub_1A44118E0(v18);
  v22 = (a2 + v4[19]);
  sub_1A524B694();
  *v22 = v24;
  sub_1A4411904(v18);
  v23 = (a2 + v4[20]);

  sub_1A524B694();

  *v23 = v24;
}

void sub_1A3E3226C(uint64_t a1@<X8>)
{
  v36 = a1;
  v22[0] = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v28 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v29 = v2;
  v31 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A5249554();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A52486A4();
  v22[7] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22[6] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v5);
  sub_1A3E33004();
  MEMORY[0x1EEE9AC00](v6);
  v22[2] = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E330F0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33AF4(0, &qword_1EB123A78, sub_1A3E330F0, sub_1A3E33BA0, MEMORY[0x1E697E830]);
  MEMORY[0x1EEE9AC00](v11);
  v22[1] = v22 - v12;
  sub_1A3E3674C();
  v22[3] = v13;
  MEMORY[0x1EEE9AC00](v13);
  v22[5] = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E367F0(0);
  v22[4] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v24 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E36818(0);
  v26 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v25 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E36840();
  v32 = v19;
  v30 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v27 = v22 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = sub_1A5249574();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_1A3E43C9C(0, &unk_1EB124498, sub_1A3E33184);
  sub_1A3E36A6C(v1, &v10[*(v21 + 44)]);
}

void sub_1A3E33004()
{
  if (!qword_1EB128738)
  {
    sub_1A5248A14();
    sub_1A3E33084(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128738);
    }
  }
}

void sub_1A3E33084(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C4895C(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3E330F0()
{
  if (!qword_1EB121710)
  {
    sub_1A3E33184(255);
    sub_1A3E33CB8(&unk_1EB121190, sub_1A3E33184);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121710);
    }
  }
}

void sub_1A3E331B8()
{
  if (!qword_1EB123818)
  {
    sub_1A3E332E4();
    sub_1A3E3402C(255, &qword_1EB124298);
    sub_1A3E340B0(255, &qword_1EB121F90, sub_1A3E3413C, sub_1A3E35D24);
    sub_1A3E340B0(255, &qword_1EB121FA0, sub_1A3E35E10, sub_1A3E36660);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB123818);
    }
  }
}

void sub_1A3E332E4()
{
  if (!qword_1EB123820)
  {
    sub_1A3E33378(255);
    sub_1A3E44EE8(255, &qword_1EB122D48, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697F930]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123820);
    }
  }
}

void sub_1A3E333A0()
{
  if (!qword_1EB121F70)
  {
    sub_1A3E340B0(255, &qword_1EB121F98, sub_1A3E33494, sub_1A3E33F40);
    sub_1A3E33494(255);
    sub_1A3E33F40();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F70);
    }
  }
}

void sub_1A3E334BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3E33548()
{
  if (!qword_1EB121908)
  {
    sub_1A3E335DC(255);
    sub_1A3E33CB8(&qword_1EB121100, sub_1A3E335DC);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121908);
    }
  }
}

void sub_1A3E33610()
{
  if (!qword_1EB1231C8)
  {
    sub_1A3E33688();
    sub_1A3E33830();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1231C8);
    }
  }
}

void sub_1A3E33688()
{
  if (!qword_1EB128158)
  {
    sub_1A3E33708();
    sub_1A3E33084(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128158);
    }
  }
}

void sub_1A3E33708()
{
  if (!qword_1EB128220)
  {
    sub_1A3E33788();
    sub_1A3E33084(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128220);
    }
  }
}

void sub_1A3E33788()
{
  if (!qword_1EB128398)
  {
    sub_1A3E33808(255);
    sub_1A3E33084(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128398);
    }
  }
}

void sub_1A3E33830()
{
  if (!qword_1EB1218F8)
  {
    sub_1A3E338C4(255);
    sub_1A3E33CB8(&qword_1EB1210C0, sub_1A3E338C4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1218F8);
    }
  }
}

void sub_1A3E338F8()
{
  if (!qword_1EB1227F8)
  {
    sub_1A3E33984();
    sub_1A3E35FDC(255, &qword_1EB127308, sub_1A3E33DEC);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1227F8);
    }
  }
}

void sub_1A3E33984()
{
  if (!qword_1EB122800)
  {
    sub_1A3E33AF4(255, &qword_1EB122808, sub_1A3E33A20, sub_1A3E33AAC, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122800);
    }
  }
}

void sub_1A3E33A48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3E33AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1A3E33BE8()
{
  result = qword_1EB128740;
  if (!qword_1EB128740)
  {
    sub_1A3E33004();
    sub_1A3E33CB8(&qword_1EB128088, MEMORY[0x1E697EAF0]);
    sub_1A3E34B50(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128740);
  }

  return result;
}

uint64_t sub_1A3E33CB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3E33D34()
{
  if (!qword_1EB126D68)
  {
    sub_1A3E33DA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126D68);
    }
  }
}

unint64_t sub_1A3E33DA0()
{
  result = qword_1EB126978;
  if (!qword_1EB126978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126978);
  }

  return result;
}

void sub_1A3E33E34()
{
  if (!qword_1EB1281D8)
  {
    sub_1A3E33EB4();
    sub_1A3E33084(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1281D8);
    }
  }
}

void sub_1A3E33EB4()
{
  if (!qword_1EB1282F0)
  {
    sub_1A3E44EE8(255, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1282F0);
    }
  }
}

unint64_t sub_1A3E33F7C()
{
  result = qword_1EB123B90;
  if (!qword_1EB123B90)
  {
    sub_1A3E33520(255);
    sub_1A3E33CB8(&qword_1EB121910, sub_1A3E33548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123B90);
  }

  return result;
}

void sub_1A3E3402C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A3C4895C(255, &qword_1EB122178, &type metadata for PhotosDetailsEXIFWidgetStyleSpec, MEMORY[0x1E6980A08]);
    v3 = sub_1A5248804();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A3E340B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3E3418C()
{
  if (!qword_1EB121750)
  {
    sub_1A3E34220(255);
    sub_1A3E33CB8(&qword_1EB121200, sub_1A3E34220);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121750);
    }
  }
}

void sub_1A3E34254()
{
  if (!qword_1EB123B70)
  {
    sub_1A3E342E8(255);
    sub_1A3E34448(255);
    sub_1A3E3447C();
    sub_1A3E35A48();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB123B70);
    }
  }
}

void sub_1A3E34310()
{
  if (!qword_1EB1273D0)
  {
    sub_1A3E343A4();
    sub_1A3E33CB8(&qword_1EB127100, sub_1A3E343A4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1273D0);
    }
  }
}

void sub_1A3E343A4()
{
  if (!qword_1EB1270F8)
  {
    sub_1A3E34784(255, &qword_1EB1280E0, sub_1A3E34420);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1270F8);
    }
  }
}

void sub_1A3E3447C()
{
  if (!qword_1EB1219B0)
  {
    sub_1A3E34510(255);
    sub_1A3E33CB8(&qword_1EB1212D8, sub_1A3E34510);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1219B0);
    }
  }
}

void sub_1A3E34544()
{
  if (!qword_1EB121F78)
  {
    sub_1A3E345E4();
    sub_1A3E34BA0();
    sub_1A3E34DB8();
    sub_1A3E34F58();
    sub_1A3E35468(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB121F78);
    }
  }
}

void sub_1A3E345E4()
{
  if (!qword_1EB127608)
  {
    sub_1A3E34C30(255, &qword_1EB127610, sub_1A3E34674, &qword_1EB1273E0, sub_1A3E34674);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127608);
    }
  }
}

void sub_1A3E34674()
{
  if (!qword_1EB1273D8)
  {
    sub_1A3E34708();
    sub_1A3E33CB8(&qword_1EB127150, sub_1A3E34708);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1273D8);
    }
  }
}

void sub_1A3E34708()
{
  if (!qword_1EB127148)
  {
    sub_1A3E34784(255, &qword_1EB127648, sub_1A3E347F0);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127148);
    }
  }
}

void sub_1A3E34784(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3E347F0()
{
  if (!qword_1EB127650)
  {
    sub_1A3E348A4();
    sub_1A3E44B24(&qword_1EB128150, sub_1A3E348A4, sub_1A3E349C8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127650);
    }
  }
}

void sub_1A3E348A4()
{
  if (!qword_1EB128148)
  {
    sub_1A3E34924();
    sub_1A3E33084(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128148);
    }
  }
}

void sub_1A3E34924()
{
  if (!qword_1EB128210)
  {
    sub_1A3E334BC(255, &qword_1EB128388, sub_1A3E33808);
    sub_1A3E33084(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128210);
    }
  }
}

unint64_t sub_1A3E349FC()
{
  result = qword_1EB128390;
  if (!qword_1EB128390)
  {
    sub_1A3E334BC(255, &qword_1EB128388, sub_1A3E33808);
    sub_1A3E34AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128390);
  }

  return result;
}

unint64_t sub_1A3E34AA0()
{
  result = qword_1EB1286B8;
  if (!qword_1EB1286B8)
  {
    sub_1A3E33808(255);
    sub_1A3E33CB8(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1286B8);
  }

  return result;
}

uint64_t sub_1A3E34B50(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3E33084(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3E34BA0()
{
  if (!qword_1EB1275F8)
  {
    sub_1A3E34C30(255, &qword_1EB127600, sub_1A3E34CE4, &qword_1EB127410, sub_1A3E34CE4);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1275F8);
    }
  }
}

void sub_1A3E34C30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3E33CB8(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3E34CE4()
{
  if (!qword_1EB127408)
  {
    sub_1A3E347F0();
    sub_1A3E348A4();
    sub_1A3E44B24(&qword_1EB128150, sub_1A3E348A4, sub_1A3E349C8);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127408);
    }
  }
}

void sub_1A3E34DB8()
{
  if (!qword_1EB127618)
  {
    sub_1A3E34C30(255, &qword_1EB127620, sub_1A3E34E48, &qword_1EB127400, sub_1A3E34E48);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127618);
    }
  }
}

void sub_1A3E34E48()
{
  if (!qword_1EB1273F8)
  {
    sub_1A3E34EDC();
    sub_1A3E33CB8(&unk_1EB127190, sub_1A3E34EDC);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1273F8);
    }
  }
}

void sub_1A3E34EDC()
{
  if (!qword_1EB127188)
  {
    sub_1A3E350F8(255, &unk_1EB12AB60, sub_1A3E348A4);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127188);
    }
  }
}

void sub_1A3E34F58()
{
  if (!qword_1EB121F80)
  {
    sub_1A3E34C30(255, &qword_1EB121F88, sub_1A3E34FE8, &qword_1EB1219D0, sub_1A3E34FE8);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121F80);
    }
  }
}

void sub_1A3E34FE8()
{
  if (!qword_1EB1219C8)
  {
    sub_1A3E3507C();
    sub_1A3E33CB8(&qword_1EB121328, sub_1A3E3507C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1219C8);
    }
  }
}

void sub_1A3E3507C()
{
  if (!qword_1EB121320)
  {
    sub_1A3E350F8(255, &qword_1EB125EE8, sub_1A3E35164);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121320);
    }
  }
}

void sub_1A3E350F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3E35164()
{
  if (!qword_1EB121948)
  {
    sub_1A3E351F8(255);
    sub_1A3E33CB8(&qword_1EB121140, sub_1A3E351F8);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121948);
    }
  }
}

void sub_1A3E3527C()
{
  if (!qword_1EB1236C0)
  {
    sub_1A3E352FC();
    sub_1A3E33084(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1236C0);
    }
  }
}

void sub_1A3E352FC()
{
  if (!qword_1EB128560)
  {
    sub_1A3E33084(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128560);
    }
  }
}

void sub_1A3E353BC()
{
  if (!qword_1EB1283E8)
  {
    sub_1A3E44EE8(255, &qword_1EB128710, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1A3E33084(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1283E8);
    }
  }
}

void sub_1A3E3549C()
{
  if (!qword_1EB127090)
  {
    sub_1A3E350F8(255, &qword_1EB1273A8, sub_1A3E35518);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127090);
    }
  }
}

void sub_1A3E35618()
{
  if (!qword_1EB127FA8)
  {
    sub_1A3E356AC();
    sub_1A3E33CB8(&qword_1EB1280A8, sub_1A3E356AC);
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127FA8);
    }
  }
}

void sub_1A3E356AC()
{
  if (!qword_1EB1280A0)
  {
    sub_1A5248A14();
    sub_1A3E33CB8(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    v0 = sub_1A52488F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1280A0);
    }
  }
}

unint64_t sub_1A3E35770()
{
  result = qword_1EB128108;
  if (!qword_1EB128108)
  {
    sub_1A3E35560(255);
    sub_1A3E35820();
    sub_1A3E33CB8(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128108);
  }

  return result;
}

unint64_t sub_1A3E35820()
{
  result = qword_1EB128178;
  if (!qword_1EB128178)
  {
    sub_1A3E355A8(255);
    sub_1A3E35908(&qword_1EB128258, sub_1A3E355F0, sub_1A3E35988);
    sub_1A3E33CB8(&qword_1EB127FB0, sub_1A3E35618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128178);
  }

  return result;
}

uint64_t sub_1A3E35908(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E35988()
{
  result = qword_1EB1283F0;
  if (!qword_1EB1283F0)
  {
    sub_1A3E353BC();
    sub_1A3E43BBC(&qword_1EB128718, &qword_1EB128710, MEMORY[0x1E697EBE8]);
    sub_1A3E34B50(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1283F0);
  }

  return result;
}

void sub_1A3E35A48()
{
  if (!qword_1EB121858)
  {
    sub_1A3E35ADC(255);
    sub_1A3E33CB8(&qword_1EB120FE0, sub_1A3E35ADC);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121858);
    }
  }
}

void sub_1A3E35B18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3E35BC8()
{
  if (!qword_1EB128180)
  {
    sub_1A3E33AF4(255, &qword_1EB128188, sub_1A3E35C64, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128180);
    }
  }
}

void sub_1A3E35C94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A3E44EE8(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v3 = sub_1A5248804();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1A3E35D60()
{
  result = qword_1EB123AC0;
  if (!qword_1EB123AC0)
  {
    sub_1A3E34164(255);
    sub_1A3E33CB8(&qword_1EB121758, sub_1A3E3418C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123AC0);
  }

  return result;
}

void sub_1A3E35E60()
{
  if (!qword_1EB1218A0)
  {
    sub_1A3E35EF4(255);
    sub_1A3E33CB8(&qword_1EB120FA0, sub_1A3E35EF4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1218A0);
    }
  }
}

void sub_1A3E35F28()
{
  if (!qword_1EB121810)
  {
    sub_1A3C4895C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A3E35FDC(255, &qword_1EB121488, sub_1A3E360E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB121810);
    }
  }
}

void sub_1A3E35FDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3E33D00(255);
    sub_1A3E33DA0();
    a3(255);
    sub_1A3E33CB8(&qword_1EB126EA0, sub_1A3E33D00);
    sub_1A3E33CB8(&qword_1EB126970, sub_1A3E33DA0);
    v5 = sub_1A524B9D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3E36164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A3E362A4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3E35B18(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3E36334()
{
  if (!qword_1EB1280F8)
  {
    sub_1A3E363B4();
    sub_1A3E33084(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1280F8);
    }
  }
}

void sub_1A3E363B4()
{
  if (!qword_1EB128168)
  {
    sub_1A3E36434(255);
    sub_1A3E33084(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128168);
    }
  }
}

unint64_t sub_1A3E364D4()
{
  result = qword_1EB127508;
  if (!qword_1EB127508)
  {
    sub_1A3E36234(255);
    sub_1A3E33CB8(&qword_1EB127110, sub_1A3E36268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127508);
  }

  return result;
}

void sub_1A3E365E4()
{
  if (!qword_1EB1217F0)
  {
    sub_1A3E3402C(255, &qword_1EB1242A0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1217F0);
    }
  }
}

unint64_t sub_1A3E3669C()
{
  result = qword_1EB123BF8;
  if (!qword_1EB123BF8)
  {
    sub_1A3E35E38(255);
    sub_1A3E33CB8(&qword_1EB1218A8, sub_1A3E35E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123BF8);
  }

  return result;
}

void sub_1A3E3674C()
{
  if (!qword_1EB123538)
  {
    sub_1A3E33AF4(255, &qword_1EB123A78, sub_1A3E330F0, sub_1A3E33BA0, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123538);
    }
  }
}

void sub_1A3E36840()
{
  if (!qword_1EB121D48)
  {
    sub_1A3E36818(255);
    sub_1A5249554();
    sub_1A3E35908(&qword_1EB123138, sub_1A3E36818, sub_1A3E3694C);
    sub_1A3E33CB8(&qword_1EB127FE0, MEMORY[0x1E697F6A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D48);
    }
  }
}

unint64_t sub_1A3E3694C()
{
  result = qword_1EB123288;
  if (!qword_1EB123288)
  {
    sub_1A3E367F0(255);
    sub_1A3E369E4(&qword_1EB123540, &qword_1EB123A80, &unk_1EB121718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123288);
  }

  return result;
}

uint64_t sub_1A3E369E4(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3E3674C();
    sub_1A3E423D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3E36A6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[19] = a2;
  sub_1A3E35E60();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43[15] = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E35E38(0);
  v43[14] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43[16] = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E35E10(0);
  v43[18] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43[17] = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E340B0(0, &qword_1EB121FA0, sub_1A3E35E10, sub_1A3E36660);
  v43[29] = *(v9 - 8);
  v43[30] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43[28] = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43[27] = v43 - v12;
  sub_1A3E3418C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v43[23] = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E34164(0);
  v43[10] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v43[11] = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E3413C(0);
  v43[13] = v17;
  MEMORY[0x1EEE9AC00](v17);
  v43[12] = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E340B0(0, &qword_1EB121F90, sub_1A3E3413C, sub_1A3E35D24);
  v43[34] = v19;
  v43[26] = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v43[25] = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v43[33] = v43 - v22;
  sub_1A3E441E8();
  v43[1] = v23;
  MEMORY[0x1EEE9AC00](v23);
  v43[0] = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33548();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33520(0);
  MEMORY[0x1EEE9AC00](v28);
  sub_1A3E33494(0);
  MEMORY[0x1EEE9AC00](v29);
  sub_1A3E340B0(0, &qword_1EB121F98, sub_1A3E33494, sub_1A3E33F40);
  v43[8] = v30;
  v43[4] = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v43[3] = v43 - v31;
  sub_1A3E333A0();
  v43[20] = v32;
  v43[7] = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v43[6] = v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33378(0);
  v43[5] = v34;
  MEMORY[0x1EEE9AC00](v34);
  v43[22] = v43 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E332E4();
  v43[21] = v36;
  MEMORY[0x1EEE9AC00](v36);
  v43[24] = v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v43[9] = v43 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v43[32] = v43 - v41;
  *v27 = sub_1A5249314();
  *(v27 + 1) = 0;
  v27[16] = 1;
  sub_1A3E43C9C(0, &qword_1EB124510, sub_1A3E335DC);
  sub_1A3E37EFC(a1, &v27[*(v42 + 44)]);
}

void sub_1A3E37EFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[4] = a1;
  v23 = a2;
  sub_1A3E33830();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v21 = v16 - v6;
  sub_1A3E33808(0);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v16[2] = v16 - v9;
  sub_1A3E33688();
  v19 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10 - 8);
  v20 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16[3] = v16 - v13;
  v17 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v14 = (*(a1 + *(v17 + 32) + 8) + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_makeAndModelDescription);
  swift_beginAccess();
  v15 = v14[1];
  v24 = *v14;
  v25 = v15;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E384D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v59 = v4;
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E35FDC(0, &qword_1EB127308, sub_1A3E33DEC);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v61 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = v43 - v11;
  v44 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v44);
  v48 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33004();
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v49 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33808(0);
  v43[13] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v43[11] = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v43[12] = v43 - v18;
  sub_1A3E33708();
  v43[14] = v19;
  MEMORY[0x1EEE9AC00](v19);
  v43[16] = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33B78(0);
  v43[15] = v21;
  MEMORY[0x1EEE9AC00](v21);
  v45 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33AAC(0);
  v55 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v43[17] = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v46 = v43 - v26;
  sub_1A3E33AF4(0, &qword_1EB122C40, sub_1A3E33A20, sub_1A3E33AAC, MEMORY[0x1E697F948]);
  v52 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v54 = v43 - v28;
  sub_1A3E33A20(0);
  v53 = v29;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v43[10] = v43 - v32;
  sub_1A3E33AF4(0, &qword_1EB122808, sub_1A3E33A20, sub_1A3E33AAC, MEMORY[0x1E697F960]);
  v34 = v33;
  v56 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v51 = v43 - v35;
  sub_1A3E33984();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v57 = v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v43 - v39;
  v50 = v3;
  v41 = *(v3 + 32);
  v64 = a1;
  v63 = *(a1 + v41 + 8);
  v42 = v63 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedFormatDescription;
  swift_beginAccess();
  if (*(v42 + 8))
  {
    v43[5] = v34;
    v43[6] = v40;
    v43[7] = v5;
    v43[8] = v8;
    v43[9] = v7;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v56 + 56))(v40, 1, 1, v34);
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E3981C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v39 = a3;
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33DEC(0);
  v38 = v8;
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 content];
  sub_1A524C674();

  v13 = [a1 accessibilityDescription];
  if (v13)
  {
    v14 = v13;
    v34 = sub_1A524C674();
    v16 = v15;
  }

  else
  {
    v34 = 0;
    v16 = 0;
  }

  v17 = [a1 accessibilityIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1A524C674();
    v36 = v20;
    v37 = v19;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  sub_1A524B574();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v21 = sub_1A524B5C4();

  (*(v5 + 8))(v7, v4);
  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v40[0]) = 1;
  *(v46 + 6) = *(&v46[3] + 6);
  *(&v46[1] + 6) = *(&v46[4] + 6);
  *(&v46[2] + 6) = *(&v46[5] + 6);
  v22 = *(v35 + 24);
  LOBYTE(v42) = *(v35 + 16);
  *(&v42 + 1) = v22;
  sub_1A3C4895C(0, &qword_1EB121C78, &type metadata for PhotosDetailsEXIFWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v23 = sub_1A4411E1C(v45);
  KeyPath = swift_getKeyPath();
  v42 = v21;
  LOWORD(v43[0]) = 1;
  *(v43 + 2) = v46[0];
  *(&v43[1] + 2) = v46[1];
  *(&v43[2] + 2) = v46[2];
  *&v43[3] = *(&v46[2] + 14);
  *(&v43[3] + 1) = KeyPath;
  v44 = v23;
  v25 = v34;
  if (!v16)
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v16)
  {
    v26 = v16;
  }

  *&v40[0] = v25;
  *(&v40[0] + 1) = v26;
  sub_1A3D5F9DC();
  v27 = sub_1A524A464();
  v29 = v28;
  v31 = v30;
  sub_1A3E33E34();
  sub_1A3E44B24(&qword_1EB1281E0, sub_1A3E33E34, sub_1A3E44BC8);
  sub_1A524AAC4();
  sub_1A3E04DF4(v27, v29, v31 & 1);

  v40[2] = v43[1];
  v40[3] = v43[2];
  v40[4] = v43[3];
  v41 = v44;
  v40[0] = v42;
  v40[1] = v43[0];
  sub_1A3E43FF0(v40, sub_1A3E33E34);
  sub_1A5248744();

  return sub_1A3E43FF0(v11, sub_1A3E33DEC);
}

uint64_t sub_1A3E39C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4411C1C();
  *a1 = result;
  return result;
}

void sub_1A3E39CAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[7] = a2;
  sub_1A3E35A48();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v19[8] = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v19[5] = v19 - v6;
  sub_1A3E3447C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v19[6] = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v19[1] = v19 - v10;
  sub_1A3E34448(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v19[4] = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  sub_1A3E342E8(0);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v19 - v16;
  *v17 = sub_1A5249314();
  *(v17 + 1) = 0;
  v17[16] = 1;
  sub_1A3E43C9C(0, &qword_1EB128928, sub_1A3E343A4);
  sub_1A3E3A254(a1, &v17[*(v18 + 44)]);
}

void sub_1A3E3A254(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[4] = a1;
  v15 = a2;
  sub_1A3E33808(0);
  v12 = v3;
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v10[2] = v10 - v5;
  sub_1A3E34420(0);
  v14 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v13 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10[3] = v10 - v9;
  v11 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v10[1] = *(a1 + *(v11 + 32) + 8);
  sub_1A46BF68C();
}

void sub_1A3E3A720(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[5] = a3;
  v14[0] = a2;
  v14[1] = a1;
  v14[8] = a4;
  sub_1A3E33808(0);
  v14[4] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v14[9] = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v14[2] = v14 - v9;
  sub_1A3E34420(0);
  v14[7] = v10 - 8;
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14[6] = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14[3] = v14 - v13;
  v14[14] = a1;
  v14[15] = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E3ABE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  sub_1A3E3549C();
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v100 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v91);
  v92 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E355A8(0);
  v94 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v93 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E35560(0);
  v95 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v96 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E35518(0);
  v98 = *(v10 - 8);
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v90[1] = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = v90 - v13;
  sub_1A3E35468(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v118 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v127 = v90 - v17;
  sub_1A3E34FE8();
  v105 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v106 = (v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E34C30(0, &qword_1EB121F88, sub_1A3E34FE8, &qword_1EB1219D0, sub_1A3E34FE8);
  v120 = v20;
  v114 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v104 = v90 - v21;
  sub_1A3E34F58();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v115 = v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v131 = v90 - v25;
  sub_1A3E34E48();
  v102 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v103 = v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E34C30(0, &qword_1EB127620, sub_1A3E34E48, &qword_1EB127400, sub_1A3E34E48);
  v112 = *(v28 - 8);
  v113 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v101 = v90 - v29;
  sub_1A3E34DB8();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v125 = v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v130 = v90 - v33;
  sub_1A3E34CE4();
  v108 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v109 = v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E34C30(0, &qword_1EB127600, sub_1A3E34CE4, &qword_1EB127410, sub_1A3E34CE4);
  v110 = *(v36 - 8);
  v111 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v107 = v90 - v37;
  sub_1A3E34BA0();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v124 = v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v126 = v90 - v41;
  sub_1A3E34674();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v42);
  sub_1A3E34C30(0, &qword_1EB127610, sub_1A3E34674, &qword_1EB1273E0, sub_1A3E34674);
  v45 = v44;
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  sub_1A3E345E4();
  MEMORY[0x1EEE9AC00](v47 - 8);
  v123 = v90 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v129 = v90 - v50;
  v51 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v121 = a1;
  v122 = v51;
  v52 = *(a1 + *(v51 + 32) + 8);
  v53 = (v52 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_megaPixelsDescription);
  swift_beginAccess();
  v54 = v53[1];
  v128 = v52;
  if (v54)
  {
    v55 = *v53;
    v56 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v56 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      v90[0] = v43;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v58 = v126;
  v57 = v127;
  (*(v46 + 56))(v129, 1, 1, v45);
  v59 = (v52 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_resolutionDescription);
  swift_beginAccess();
  v60 = v59[1];
  if (v60)
  {
    v61 = *v59;
    v62 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v62 = v61 & 0xFFFFFFFFFFFFLL;
    }

    v63 = v121;
    if (v62)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v63 = v121;
  }

  (*(v110 + 56))(v58, 1, 1, v111);
  v64 = (v52 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_fileSizeDescription);
  swift_beginAccess();
  v66 = *v64;
  v65 = v64[1];
  v67 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v67 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v112 + 56))(v130, 1, 1, v113);
  v68 = sub_1A46BF4A4();
  if (v69)
  {
    v70 = v68;
    v71 = v69;
    if (!sub_1A3E31720())
    {
      v72 = *(v63 + *(v122 + 60));
      v73 = sub_1A5249314();
      v74 = v106;
      *v106 = v73;
      v74[1] = v72;
      *(v74 + 16) = 0;
      sub_1A3E43C9C(0, &qword_1EB12CF80, sub_1A3E3507C);
      sub_1A3E3D464(v63, v70, v71);
    }
  }

  (*(v114 + 56))(v131, 1, 1, v120);
  v75 = (v128 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedSemanticStyleDisplayString);
  swift_beginAccess();
  v76 = v75[1];
  if (v76)
  {
    v77 = HIBYTE(v76) & 0xF;
    if ((v76 & 0x2000000000000000) == 0)
    {
      v77 = *v75 & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  (*(v116 + 56))(v57, 1, 1, v117);
  v78 = v123;
  sub_1A3E44CA8(v129, v123, sub_1A3E345E4);
  v79 = v58;
  v80 = v124;
  sub_1A3E44CA8(v79, v124, sub_1A3E34BA0);
  sub_1A3E44CA8(v130, v125, sub_1A3E34DB8);
  v81 = v115;
  sub_1A3E44CA8(v131, v115, sub_1A3E34F58);
  v82 = v57;
  v83 = v118;
  sub_1A3E44CA8(v82, v118, sub_1A3E35468);
  v84 = v78;
  v85 = v119;
  sub_1A3E44CA8(v84, v119, sub_1A3E345E4);
  sub_1A3E34544();
  v87 = v86;
  sub_1A3E44CA8(v80, v85 + v86[12], sub_1A3E34BA0);
  v88 = v125;
  sub_1A3E44CA8(v125, v85 + v87[16], sub_1A3E34DB8);
  sub_1A3E44CA8(v81, v85 + v87[20], sub_1A3E34F58);
  sub_1A3E44CA8(v83, v85 + v87[24], sub_1A3E35468);
  sub_1A3E44360(v127, sub_1A3E35468);
  sub_1A3E44360(v131, sub_1A3E34F58);
  sub_1A3E44360(v130, sub_1A3E34DB8);
  sub_1A3E44360(v126, sub_1A3E34BA0);
  sub_1A3E44360(v129, sub_1A3E345E4);
  sub_1A3E44360(v83, sub_1A3E35468);
  sub_1A3E44360(v81, sub_1A3E34F58);
  sub_1A3E44360(v88, sub_1A3E34DB8);
  sub_1A3E44360(v124, sub_1A3E34BA0);
  return sub_1A3E44360(v123, sub_1A3E345E4);
}

void sub_1A3E3C430(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[4] = a3;
  v16[13] = a4;
  sub_1A3E33808(0);
  v16[7] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v16[2] = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v16[5] = v16 - v9;
  sub_1A3E348A4();
  v16[9] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v16[6] = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E347F0();
  v16[11] = *(v12 - 8);
  v16[12] = v12;
  MEMORY[0x1EEE9AC00](v12);
  v16[10] = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16[8] = v16 - v15;
  v16[19] = a1;
  v16[20] = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E3CAA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11[7] = a3;
  v11[9] = a4;
  sub_1A3E33808(0);
  v11[5] = v6;
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v11[3] = v11 - v8;
  sub_1A3E348A4();
  v11[8] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11[6] = v11 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[15] = a1;
  v11[16] = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E3CF80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[6] = a3;
  v13[1] = a2;
  v13[2] = a1;
  v13[10] = a4;
  sub_1A3E33808(0);
  v13[5] = v6;
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v13[3] = v13 - v8;
  sub_1A3E348A4();
  v13[8] = v9 - 8;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13[9] = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13[4] = v13 - v12;
  v13[7] = swift_getKeyPath();
  v13[15] = a1;
  v13[16] = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E3D464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3E35164();
  MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  v11 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  if ((*((*MEMORY[0x1E69E7D40] & **(a1 + *(v11 + 32) + 8)) + 0x140))() == 5)
  {
    v12 = 0x4008000000000000;
  }

  else
  {
    v12 = *(a1 + *(v11 + 60));
  }

  *v9 = sub_1A5249314();
  *(v9 + 1) = v12;
  v9[16] = 0;
  sub_1A3E43C9C(0, &qword_1EB12CF78, sub_1A3E351F8);
  sub_1A3E3D6E8(a1, a2, a3, &v9[*(v13 + 44)]);
}

void sub_1A3E3D6E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v24 = a2;
  v28 = a4;
  sub_1A3E35374(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v25 = v21 - v8;
  sub_1A3E35234(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v26 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v23 = v21 - v12;
  v13 = sub_1A524B544();
  v15 = *(a1 + 24);
  LOBYTE(v30) = *(a1 + 16);
  v14 = v30;
  v31 = v15;
  sub_1A3C4895C(0, &qword_1EB121C78, &type metadata for PhotosDetailsEXIFWidgetStyleSpec, MEMORY[0x1E6981790]);
  v21[1] = v16;
  sub_1A524B6A4();
  v17 = sub_1A4411E20(v29);
  KeyPath = swift_getKeyPath();
  LOBYTE(v30) = v14;
  v31 = v15;
  sub_1A524B6A4();
  v19 = sub_1A4411E1C(v29);
  v20 = swift_getKeyPath();
  v30 = v13;
  v31 = KeyPath;
  v32 = v17;
  v33 = v20;
  *&v34 = v19;
  sub_1A3E3527C();
  sub_1A3E44B24(&qword_1EB13DA20, sub_1A3E3527C, sub_1A3E4509C);
  sub_1A524AAE4();

  v30 = v24;
  v31 = v22;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E3DBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v41 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E35C64(0);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E33AF4(0, &qword_1EB128188, sub_1A3E35C64, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40[-v7];
  sub_1A3E35BC8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v40[-v11];
  sub_1A3E35164();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  sub_1A3E35B94(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v46 = &v40[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v40[-v21];
  v22 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v23 = *(a1 + *(v22 + 32) + 8);
  v24 = sub_1A46BF4A4();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    if (sub_1A3E31720())
    {
      if ((*((*MEMORY[0x1E69E7D40] & *v23) + 0x140))() == 5)
      {
        v28 = 0x4008000000000000;
      }

      else
      {
        v28 = *(a1 + *(v22 + 60));
      }

      *v16 = sub_1A5249314();
      *(v16 + 1) = v28;
      v16[16] = 0;
      sub_1A3E43C9C(0, &qword_1EB12CF78, sub_1A3E351F8);
      sub_1A3E3E694(a1, v26, v27, &v16[*(v30 + 44)]);
    }
  }

  v29 = v52;
  (*(v14 + 56))(v52, 1, 1, v13);
  v31 = (v23 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedSemanticStyleDisplayString);
  swift_beginAccess();
  v32 = v31[1];
  if (v32)
  {
    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = *v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v34 = v49;
  (*(v47 + 56))(v49, 1, 1, v48);
  v35 = v46;
  sub_1A3E42020(v29, v46, sub_1A3E35B94);
  v36 = v50;
  sub_1A3E42020(v34, v50, sub_1A3E35BC8);
  v37 = v51;
  sub_1A3E42020(v35, v51, sub_1A3E35B94);
  sub_1A3E35B18(0, &qword_1EB121938, sub_1A3E35B94, sub_1A3E35BC8);
  sub_1A3E42020(v36, v37 + *(v38 + 48), sub_1A3E35BC8);
  sub_1A3E43FF0(v34, sub_1A3E35BC8);
  sub_1A3E43FF0(v29, sub_1A3E35B94);
  sub_1A3E43FF0(v36, sub_1A3E35BC8);
  return sub_1A3E43FF0(v35, sub_1A3E35B94);
}

void sub_1A3E3E694(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(&v23 + 1) = a3;
  *&v23 = a2;
  v28 = a4;
  sub_1A3E35374(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v25 = v21 - v8;
  sub_1A3E35234(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v26 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v24 = v21 - v12;
  v13 = sub_1A524B544();
  v14 = *(a1 + 24);
  LOBYTE(v30) = *(a1 + 16);
  v15 = v30;
  v22 = v30;
  *(&v30 + 1) = v14;
  v16 = v14;
  v21[2] = v14;
  v21[1] = MEMORY[0x1E6981790];
  sub_1A3C4895C(0, &qword_1EB121C78, &type metadata for PhotosDetailsEXIFWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v17 = sub_1A4411E20(v29);
  KeyPath = swift_getKeyPath();
  LOBYTE(v30) = v15;
  *(&v30 + 1) = v16;
  sub_1A524B6A4();
  v19 = sub_1A4411E1C(v29);
  v20 = swift_getKeyPath();
  *&v30 = v13;
  *(&v30 + 1) = KeyPath;
  v31 = v17;
  v32 = v20;
  *&v33 = v19;
  sub_1A3E3527C();
  sub_1A3E44B24(&qword_1EB13DA20, sub_1A3E3527C, sub_1A3E4509C);
  sub_1A524AAE4();

  v30 = v23;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E3EBD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3E35FDC(0, &qword_1EB121488, sub_1A3E360E0);
  MEMORY[0x1EEE9AC00](v5);
  v15 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v17 = &v12 - v8;
  v9 = *(a1 + *(v4 + 40) + 8);
  v10 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_hasCameraSettings;
  swift_beginAccess();
  if (*(v9 + v10) == 1)
  {
    v11 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_isVideo;
    swift_beginAccess();
    v14 = *(v9 + v11);
    v13 = v14 ^ 1;
  }

  else
  {
    v13 = 0;
    v14 = 1;
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E3F098(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v32[1] = a1;
  v32[3] = a4;
  v37 = sub_1A5249554();
  MEMORY[0x1EEE9AC00](v37);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A3E36234(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E3620C(0);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v41 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E361E4(0);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v39 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E3611C(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v32[2] = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v32 - v17;
  v19 = [a2 accessibilityDescription];
  if (v19)
  {
    v20 = v19;
    v33 = sub_1A524C674();
    v43 = v21;
  }

  else
  {
    v33 = 0;
    v43 = 0;
  }

  v22 = [a2 accessibilityValue];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1A524C674();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [a2 accessibilityIdentifier];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1A524C674();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *v18 = sub_1A5249314();
  *(v18 + 1) = 0x4010000000000000;
  v18[16] = 0;
  v34 = v26;
  v35 = v31;
  sub_1A3E3F8DC(a2, v42, v24, v26, v33, v43, v29, v31, v44);
}

void sub_1A3E3F8DC(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v76 = a8;
  v74 = a7;
  v67 = a6;
  v64 = a4;
  v65 = a5;
  v63 = a3;
  v84 = a9;
  v11 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3E33808(0);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v59 - v17;
  sub_1A3E33788();
  v75 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E36434(0);
  v72 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E363B4();
  v70 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E36334();
  v80 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v83 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v79 = &v59 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v82 = &v59 - v29;
  v30 = sub_1A524B554();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33DEC(0);
  v62 = v34;
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v61 = &v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E36300(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v77 = &v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = MEMORY[0x1EEE9AC00](v39).n128_u64[0];
  v42 = &v59 - v41;
  v43 = [a1 accessoryImageSystemName];
  v85 = a2;
  v86 = v42;
  if (v43)
  {
    v44 = v43;
    v60 = a1;
    sub_1A524C674();

    v45 = *(a2 + *(type metadata accessor for PhotosDetailsEXIFWidgetView() + 32) + 8);
    v46 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_hasCameraSettings;
    swift_beginAccess();
    if (*(v45 + v46) == 1)
    {
      sub_1A524B574();
      (*(v31 + 104))(v33, *MEMORY[0x1E6981630], v30);
      v47 = sub_1A524B5C4();

      (*(v31 + 8))(v33, v30);
      sub_1A524BC74();
      sub_1A52481F4();
      LOBYTE(v87) = 1;
      *&v91[6] = v98;
      *&v91[22] = v99;
      *&v91[38] = v100;
      v48 = *(v85 + 24);
      LOBYTE(v92) = *(v85 + 16);
      *(&v92 + 1) = v48;
      sub_1A3C4895C(0, &qword_1EB121C78, &type metadata for PhotosDetailsEXIFWidgetStyleSpec, MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      v49 = sub_1A4411E1C(v90);
      KeyPath = swift_getKeyPath();
      v87 = v47;
      LOWORD(v88[0]) = 1;
      *(v88 + 2) = *v91;
      *(&v88[1] + 2) = *&v91[16];
      *(&v88[2] + 2) = *&v91[32];
      *&v88[3] = *&v91[46];
      *(&v88[3] + 1) = KeyPath;
      v89 = v49;
      sub_1A3E33E34();
      sub_1A3E44B24(&qword_1EB1281E0, sub_1A3E33E34, sub_1A3E44BC8);
      v51 = v61;
      sub_1A524AAE4();
      v94 = v88[1];
      v95 = v88[2];
      v96 = v88[3];
      v97 = v89;
      v92 = v87;
      v93 = v88[0];
      sub_1A3E43FF0(&v92, sub_1A3E33E34);
      v52 = v86;
      sub_1A3E41F50(v51, v86, sub_1A3E33DEC);
      (*(v35 + 56))(v52, 0, 1, v62);
      a1 = v60;
      goto LABEL_6;
    }

    v42 = v86;
    a1 = v60;
  }

  (*(v35 + 56))(v42, 1, 1, v62);
LABEL_6:
  sub_1A5249414();
  sub_1A5249404();
  sub_1A3E404EC(a1);
  sub_1A52493F4();

  sub_1A5249404();
  sub_1A5249444();
  v53 = sub_1A524A444();
  v62 = v54;
  *&v92 = v53;
  *(&v92 + 1) = v55;
  LOBYTE(v93) = v56 & 1;
  *(&v93 + 1) = v54;
  v57 = v63;
  if (v64)
  {
    v58 = v64;
  }

  else
  {
    v57 = 0;
    v58 = 0xE000000000000000;
  }

  *&v87 = v57;
  *(&v87 + 1) = v58;
  v63 = sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E404EC(void *a1)
{
  v2 = v1;
  v4 = sub_1A5249554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = v30 - v10;
  v12 = [a1 content];
  v13 = sub_1A524C674();
  v15 = v14;

  v16 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  sub_1A3E312F0(v11);
  (*(v5 + 104))(v7, *MEMORY[0x1E697F680], v4);
  v17 = sub_1A3E4470C(v11, v7);
  v18 = *(v5 + 8);
  v18(v7, v4);
  v19 = (v18)(v11, v4);
  v20 = (*((*MEMORY[0x1E69E7D40] & **(v2 + *(v16 + 32) + 8)) + 0xC0))(v19);
  [v20 layoutReferenceSize];
  v22 = v21;

  if (v17 || v22 < 375.0)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    v23 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v23 = v13 & 0xFFFFFFFFFFFFLL;
    }

    v30[0] = v13;
    v30[1] = v15;
    v30[2] = 0;
    v30[3] = v23;
    v24 = sub_1A524C824();
    v13 = v25;
    if (v25)
    {
      v26 = v24;
      do
      {
        v28 = v26 == 41154 && v13 == 0xA200000000000000;
        if (!v28 && (sub_1A524EAB4() & 1) == 0)
        {
          MEMORY[0x1A5907B50](v26, v13);
        }

        v26 = sub_1A524C824();
        v13 = v27;
      }

      while (v27);
      v13 = v31;
    }
  }

  return v13;
}

uint64_t sub_1A3E407A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v29 = *(v3 - 8);
  v28 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E426FC();
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_1A3E36840();
  v9 = v8;
  sub_1A3E42888(0);
  v25 = v10;
  sub_1A3E36818(255);
  v12 = v11;
  v13 = sub_1A5249554();
  v14 = sub_1A3E35908(&qword_1EB123128, sub_1A3E36818, sub_1A3E42340);
  v15 = sub_1A3E33CB8(&qword_1EB127FE0, MEMORY[0x1E697F6A0]);
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_1A3E33CB8(&qword_1EB1270A8, sub_1A3E42888);
  sub_1A524A954();
  v18 = *(a1 + 8);
  v34 = *a1;
  v35 = v18;
  sub_1A3C4895C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v19 = v27;
  sub_1A3E42020(a1, v27, type metadata accessor for PhotosDetailsEXIFWidgetView);
  v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v21 = swift_allocObject();
  sub_1A3E41F50(v19, v21 + v20, type metadata accessor for PhotosDetailsEXIFWidgetView);
  sub_1A3E42A30();
  v36 = v9;
  v37 = v25;
  v38 = OpaqueTypeConformance2;
  v39 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1A3E33CB8(&qword_1EB127160, sub_1A3E42A30);
  v22 = v30;
  v23 = v26;
  sub_1A524AFF4();

  return (*(v31 + 8))(v23, v22);
}

uint64_t sub_1A3E40BD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a1;
  v36 = a2;
  v3 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30[1] = v5;
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E42920();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = v30 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v33 = v30 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v30[0] = v30 - v16;
  v32 = type metadata accessor for PhotosDetailsEXIFWidgetView;
  sub_1A3E42020(a1, v6, type metadata accessor for PhotosDetailsEXIFWidgetView);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_1A3E41F50(v6, v18 + v17, type metadata accessor for PhotosDetailsEXIFWidgetView);
  sub_1A3E429B4();
  sub_1A3E33CB8(&qword_1EB1274F0, sub_1A3E429B4);
  sub_1A524B704();
  v19 = v31;
  sub_1A3E42020(v31, v6, v32);
  v20 = swift_allocObject();
  sub_1A3E41F50(v6, v20 + v17, type metadata accessor for PhotosDetailsEXIFWidgetView);
  v37 = v19;
  v21 = v33;
  sub_1A524B704();
  v22 = *(v9 + 16);
  v23 = v34;
  v24 = v30[0];
  v22(v34, v30[0], v8);
  v25 = v35;
  v22(v35, v21, v8);
  v26 = v36;
  v22(v36, v23, v8);
  sub_1A3E428BC();
  v22(&v26[*(v27 + 48)], v25, v8);
  v28 = *(v9 + 8);
  v28(v21, v8);
  v28(v24, v8);
  v28(v25, v8);
  return (v28)(v23, v8);
}

uint64_t sub_1A3E40FD0()
{
  sub_1A5249434();

  return sub_1A524B604();
}

uint64_t sub_1A3E41044()
{
  v0 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A5249414();
  sub_1A5249404();
  type metadata accessor for PhotosDetailsEXIFWidgetView();
  sub_1A46BF3C4();
  sub_1A52493F4();

  sub_1A5249404();
  sub_1A5249444();
  return sub_1A524B604();
}

uint64_t sub_1A3E41174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DebugInfoPanel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - v8);
  v10 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v11 = (*((*MEMORY[0x1E69E7D40] & **(a1 + *(v10 + 32) + 8)) + 0x88))();
  v12 = sub_1A43C1B14();
  v14 = v13;

  sub_1A49286B0(v12, v14, v9);
  sub_1A3E42020(v9, v6, type metadata accessor for DebugInfoPanel);
  sub_1A3E42020(v6, a2, type metadata accessor for DebugInfoPanel);
  sub_1A3E43FF0(v9, type metadata accessor for DebugInfoPanel);
  return sub_1A3E43FF0(v6, type metadata accessor for DebugInfoPanel);
}

double sub_1A3E412DC@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v29 = a1;
  }

  else
  {

    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a1, 0);
    (*(v7 + 8))(v9, v6);
  }

  v11 = sub_1A44116C8();
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  if (a2)
  {
    v25[15] = a1;
  }

  else
  {

    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a1, 0);
    (*(v7 + 8))(v9, v6);
  }

  sub_1A4411804();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_1A524A064();
  *a3 = KeyPath;
  *(a3 + 8) = v11;
  v23 = v27;
  *(a3 + 16) = v26;
  *(a3 + 32) = v23;
  result = v28[0];
  *(a3 + 48) = *v28;
  *(a3 + 64) = v22;
  *(a3 + 72) = v15;
  *(a3 + 80) = v17;
  *(a3 + 88) = v19;
  *(a3 + 96) = v21;
  *(a3 + 104) = 0;
  return result;
}

double sub_1A3E41570@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v28 = a1;
  }

  else
  {

    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a1, 0);
    (*(v7 + 8))(v9, v6);
  }

  v11 = sub_1A44116C8();
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  if (a2)
  {
    v24[15] = a1;
  }

  else
  {

    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a1, 0);
    (*(v7 + 8))(v9, v6);
  }

  v14 = sub_1A441180C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_1A524A064();
  *a3 = KeyPath;
  *(a3 + 8) = v11;
  v22 = v26;
  *(a3 + 16) = v25;
  *(a3 + 32) = v22;
  result = v27[0];
  *(a3 + 48) = *v27;
  *(a3 + 64) = v21;
  *(a3 + 72) = v14;
  *(a3 + 80) = v16;
  *(a3 + 88) = v18;
  *(a3 + 96) = v20;
  *(a3 + 104) = 0;
  return result;
}

double sub_1A3E41804@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v18 = a1;
  }

  else
  {

    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a1, 0);
    (*(v7 + 8))(v9, v6);
    a1 = v18;
  }

  v11 = sub_1A4411E1C(a1);
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  *a3 = KeyPath;
  *(a3 + 8) = v11;
  v13 = v16;
  *(a3 + 16) = *&v15[8];
  *(a3 + 32) = v13;
  result = v17[0];
  *(a3 + 48) = *v17;
  return result;
}

void sub_1A3E41C60()
{
  sub_1A3E42EC0();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E41E7C(uint64_t *a1@<X8>)
{
  *a1 = sub_1A524BC74();
  a1[1] = v2;
  sub_1A3E42AAC();
  sub_1A3E419BC();
}

uint64_t sub_1A3E41EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5249114();
  *a1 = result;
  return result;
}

uint64_t sub_1A3E41F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E41FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E42020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E42088()
{
  v1 = (type metadata accessor for PhotosDetailsEXIFWidgetView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = MEMORY[0x1E6981790];
  sub_1A3C4895C(0, &qword_1EB121C78, &type metadata for PhotosDetailsEXIFWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v9 = sub_1A4411A14(v8);
  sub_1A3C4895C(0, &qword_1EB1274B8, MEMORY[0x1E6980F50], v3);
  sub_1A524B6B4();
  sub_1A524B6A4();
  v10 = sub_1A4411818(v9);
  sub_1A524B6B4();
  sub_1A524B6A4();
  v11 = sub_1A4411898(v10);
  sub_1A524B6B4();
  sub_1A524B6A4();
  v12 = sub_1A44118E0(v11);
  sub_1A524B6B4();
  sub_1A524B6A4();
  sub_1A4411904(v12);
  v4 = sub_1A524B6B4();
  v5 = *(v2 + v1[10] + 8);
  v6 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x140))(v4);
  if (result == 5)
  {
    return (*((*v6 & *v5) + 0x158))();
  }

  return result;
}

unint64_t sub_1A3E42340()
{
  result = qword_1EB123278;
  if (!qword_1EB123278)
  {
    sub_1A3E367F0(255);
    sub_1A3E369E4(&qword_1EB123530, &qword_1EB123A70, &qword_1EB121708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123278);
  }

  return result;
}

uint64_t sub_1A3E423D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A3E33AF4(255, &qword_1EB123A78, sub_1A3E330F0, sub_1A3E33BA0, MEMORY[0x1E697E830]);
    sub_1A3E33CB8(a2, sub_1A3E330F0);
    sub_1A3E33CB8(&qword_1EB127FC8, sub_1A3E33BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3E424FC()
{
  if (!qword_1EB121DC8)
  {
    sub_1A3E426FC();
    sub_1A3E42A30();
    sub_1A3E36840();
    sub_1A3E42888(255);
    sub_1A3E36818(255);
    sub_1A5249554();
    sub_1A3E35908(&qword_1EB123138, sub_1A3E36818, sub_1A3E3694C);
    sub_1A3E33CB8(&qword_1EB127FE0, MEMORY[0x1E697F6A0]);
    swift_getOpaqueTypeConformance2();
    sub_1A3E33CB8(&qword_1EB1270A8, sub_1A3E42888);
    swift_getOpaqueTypeConformance2();
    sub_1A3E33CB8(&qword_1EB127160, sub_1A3E42A30);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DC8);
    }
  }
}

void sub_1A3E426FC()
{
  if (!qword_1EB121EC0)
  {
    sub_1A3E36840();
    sub_1A3E42888(255);
    sub_1A3E36818(255);
    sub_1A5249554();
    sub_1A3E35908(&qword_1EB123138, sub_1A3E36818, sub_1A3E3694C);
    sub_1A3E33CB8(&qword_1EB127FE0, MEMORY[0x1E697F6A0]);
    swift_getOpaqueTypeConformance2();
    sub_1A3E33CB8(&qword_1EB1270A8, sub_1A3E42888);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121EC0);
    }
  }
}

void sub_1A3E428BC()
{
  if (!qword_1EB127438)
  {
    sub_1A3E42920();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB127438);
    }
  }
}

void sub_1A3E42920()
{
  if (!qword_1EB127440)
  {
    sub_1A3E429B4();
    sub_1A3E33CB8(&qword_1EB1274F0, sub_1A3E429B4);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127440);
    }
  }
}

void sub_1A3E429B4()
{
  if (!qword_1EB1274E0)
  {
    v0 = sub_1A524B624();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1274E0);
    }
  }
}

void sub_1A3E42A30()
{
  if (!qword_1EB127158)
  {
    sub_1A3E350F8(255, &qword_1EB1272E8, type metadata accessor for DebugInfoPanel);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127158);
    }
  }
}

void sub_1A3E42AAC()
{
  if (!qword_1EB12CEA0)
  {
    sub_1A3E42B40(255, &qword_1EB12CEA8, &qword_1EB12CEB0, MEMORY[0x1E697C1C0], sub_1A3E42BB8);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CEA0);
    }
  }
}

void sub_1A3E42B40(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3E35C94(255, a3);
    a5(255);
    v7 = sub_1A5248804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3E42BB8()
{
  if (!qword_1EB12CEB8)
  {
    sub_1A3E33AF4(255, &qword_1EB12CEC0, sub_1A3E42C60, sub_1A3E42D1C, MEMORY[0x1E697E830]);
    sub_1A3E42F54();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CEB8);
    }
  }
}

void sub_1A3E42C88()
{
  if (!qword_1EB1289F0)
  {
    sub_1A5248A14();
    sub_1A3E33CB8(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5247FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1289F0);
    }
  }
}

void sub_1A3E42D1C()
{
  if (!qword_1EB12CEC8)
  {
    sub_1A3E42DB0();
    sub_1A3E33CB8(&qword_1EB12CEF8, sub_1A3E42DB0);
    v0 = sub_1A5247FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CEC8);
    }
  }
}

void sub_1A3E42DB0()
{
  if (!qword_1EB12CED0)
  {
    sub_1A3E42E44();
    sub_1A3E33CB8(&qword_1EB12CEF0, sub_1A3E42E44);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CED0);
    }
  }
}

void sub_1A3E42E44()
{
  if (!qword_1EB12CED8)
  {
    sub_1A3E350F8(255, &qword_1EB12CEE0, sub_1A3E42EC0);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CED8);
    }
  }
}

void sub_1A3E42EC0()
{
  if (!qword_1EB12CEE8)
  {
    sub_1A3E44EE8(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A5248AC4();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CEE8);
    }
  }
}

unint64_t sub_1A3E42F54()
{
  result = qword_1EB12CF00;
  if (!qword_1EB12CF00)
  {
    sub_1A3E33AF4(255, &qword_1EB12CEC0, sub_1A3E42C60, sub_1A3E42D1C, MEMORY[0x1E697E830]);
    sub_1A3E43048();
    sub_1A3E33CB8(&qword_1EB12CF08, sub_1A3E42D1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CF00);
  }

  return result;
}

unint64_t sub_1A3E43048()
{
  result = qword_1EB123DC8;
  if (!qword_1EB123DC8)
  {
    sub_1A3E42C60(255);
    sub_1A3E33CB8(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123DC8);
  }

  return result;
}

uint64_t sub_1A3E43168(uint64_t a1)
{
  result = sub_1A3E33CB8(&qword_1EB12AB58, type metadata accessor for PhotosDetailsEXIFWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A3E43204()
{
  sub_1A3C4895C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1A3C4895C(319, &qword_1EB121C78, &type metadata for PhotosDetailsEXIFWidgetStyleSpec, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A3E31688(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3E31688(319, &qword_1EB124708, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A3E43428();
          if (v4 <= 0x3F)
          {
            sub_1A3E31688(319, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1A3C4895C(319, &qword_1EB1274B8, MEMORY[0x1E6980F50], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
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

void sub_1A3E43428()
{
  if (!qword_1EB1243C8)
  {
    type metadata accessor for PhotosDetailsEXIFWidgetViewModel();
    sub_1A3E33CB8(&qword_1EB12AA60, type metadata accessor for PhotosDetailsEXIFWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243C8);
    }
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A3E4351C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A3E43564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A3E435C4()
{
  if (!qword_1EB128190)
  {
    sub_1A3E4363C(255, &qword_1EB128280, &qword_1EB1284A8);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128190);
    }
  }
}

void sub_1A3E4363C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3E4369C(255, a3);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3E4369C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A3E33084(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v3 = sub_1A5248804();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1A3E43714()
{
  result = qword_1EB128288;
  if (!qword_1EB128288)
  {
    v1 = MEMORY[0x1E6981EF8];
    sub_1A3E4363C(255, &qword_1EB128280, &qword_1EB1284A8);
    sub_1A3E437E0(&qword_1EB1284B0, &qword_1EB1284A8, v1, sub_1A3E43880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128288);
  }

  return result;
}

uint64_t sub_1A3E437E0(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A3E4369C(255, a2);
    a4();
    sub_1A3E34B50(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E43880()
{
  result = qword_1EB1271B0;
  if (!qword_1EB1271B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1271B0);
  }

  return result;
}

unint64_t sub_1A3E438D4()
{
  result = qword_1EB1282A8;
  if (!qword_1EB1282A8)
  {
    v1 = MEMORY[0x1E69817E8];
    sub_1A3E4363C(255, &qword_1EB1282A0, &qword_1EB128508);
    sub_1A3E437E0(&qword_1EB128510, &qword_1EB128508, v1, sub_1A3DC8F24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1282A8);
  }

  return result;
}

void sub_1A3E439A0()
{
  if (!qword_1EB12CF18)
  {
    sub_1A3E42B40(255, &qword_1EB12CEA8, &qword_1EB12CEB0, MEMORY[0x1E697C1C0], sub_1A3E42BB8);
    sub_1A3E43A30();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CF18);
    }
  }
}

unint64_t sub_1A3E43A30()
{
  result = qword_1EB12CF20;
  if (!qword_1EB12CF20)
  {
    sub_1A3E42B40(255, &qword_1EB12CEA8, &qword_1EB12CEB0, MEMORY[0x1E697C1C0], sub_1A3E42BB8);
    sub_1A3E43B0C();
    sub_1A3E33CB8(&qword_1EB12CF30, sub_1A3E42BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CF20);
  }

  return result;
}

unint64_t sub_1A3E43B0C()
{
  result = qword_1EB12CF28;
  if (!qword_1EB12CF28)
  {
    sub_1A3E35C94(255, &qword_1EB12CEB0);
    sub_1A3E43BBC(&qword_1EB128730, &qword_1EB128720, MEMORY[0x1E697E5E0]);
    sub_1A3E43C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CF28);
  }

  return result;
}

uint64_t sub_1A3E43BBC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3E44EE8(255, a2, MEMORY[0x1E6981148], a3, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E43C48()
{
  result = qword_1EB128098;
  if (!qword_1EB128098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128098);
  }

  return result;
}

void sub_1A3E43C9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_1A3E31654(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249554();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3E43F80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PhotosDetailsEXIFWidgetView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A3E41174(v4, a1);
}

uint64_t sub_1A3E43FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3E44050()
{
  type metadata accessor for PhotosDetailsEXIFWidgetView();
  sub_1A3C4895C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();
}

uint64_t sub_1A3E44140()
{
  type metadata accessor for PhotosDetailsEXIFWidgetView();
  v0 = sub_1A46BF400(v3);
  *v1 = !*v1;
  return (v0)(v3, 0);
}

void sub_1A3E441E8()
{
  if (!qword_1EB121FA8)
  {
    v0 = MEMORY[0x1E6981EF8];
    sub_1A3E4369C(255, &qword_1EB1284A8);
    sub_1A3E437E0(&qword_1EB1284B0, &qword_1EB1284A8, v0, sub_1A3E43880);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FA8);
    }
  }
}

unint64_t sub_1A3E442B0()
{
  result = qword_1EB123B80;
  if (!qword_1EB123B80)
  {
    sub_1A3E33520(255);
    sub_1A3E33CB8(&qword_1EB121900, sub_1A3E33548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123B80);
  }

  return result;
}

uint64_t sub_1A3E44360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A3E443C0()
{
  result = qword_1EB123BE8;
  if (!qword_1EB123BE8)
  {
    sub_1A3E35E38(255);
    sub_1A3E33CB8(&qword_1EB121898, sub_1A3E35E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123BE8);
  }

  return result;
}

unint64_t sub_1A3E44470(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1A59097F0](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1A524E2B4();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1A3E31688(0, &qword_1EB1261E8, sub_1A3E33D34, MEMORY[0x1E69E6F90]);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1A3E44684(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PhotosDetailsEXIFWidgetView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_1A3E3F098(a1, a2, v8, a3);
}

BOOL sub_1A3E4470C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1A5249554();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_1A3E44B24(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A3E34B50(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E44C04()
{
  result = qword_1EB128590;
  if (!qword_1EB128590)
  {
    sub_1A3E44EE8(255, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128590);
  }

  return result;
}

uint64_t sub_1A3E44CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3E44D10()
{
  if (!qword_1EB12CF40)
  {
    sub_1A5248A14();
    sub_1A3E33CB8(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5248384();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CF40);
    }
  }
}

void sub_1A3E44DA4()
{
  if (!qword_1EB12CF48)
  {
    sub_1A3E44D10();
    sub_1A3E33CB8(&qword_1EB12CF50, sub_1A3E44D10);
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CF48);
    }
  }
}

void sub_1A3E44E54()
{
  if (!qword_1EB12CF58)
  {
    sub_1A3E44DA4();
    sub_1A3E44EE8(255, &qword_1EB12CF60, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F930]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CF58);
    }
  }
}

void sub_1A3E44EE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A3E44F3C()
{
  result = qword_1EB12CF68;
  if (!qword_1EB12CF68)
  {
    sub_1A3E35C64(255);
    sub_1A3E44FEC();
    sub_1A3E33CB8(&qword_1EB127FB0, sub_1A3E35618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CF68);
  }

  return result;
}

unint64_t sub_1A3E44FEC()
{
  result = qword_1EB12CF70;
  if (!qword_1EB12CF70)
  {
    sub_1A3E35C94(255, &qword_1EB128408);
    sub_1A3E43BBC(&qword_1EB128730, &qword_1EB128720, MEMORY[0x1E697E5E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CF70);
  }

  return result;
}

unint64_t sub_1A3E4509C()
{
  result = qword_1EB128570;
  if (!qword_1EB128570)
  {
    sub_1A3E352FC();
    sub_1A3E34B50(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128570);
  }

  return result;
}

uint64_t sub_1A3E4513C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotosDetailsEXIFWidgetView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A3E3981C(a1, v6, a2);
}

unint64_t sub_1A3E451EC()
{
  result = qword_1EB128128;
  if (!qword_1EB128128)
  {
    sub_1A3E33DEC(255);
    sub_1A3E44B24(&qword_1EB1281E0, sub_1A3E33E34, sub_1A3E44BC8);
    sub_1A3E33CB8(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128128);
  }

  return result;
}

unint64_t sub_1A3E452CC()
{
  result = qword_1EB1242B0;
  if (!qword_1EB1242B0)
  {
    sub_1A3E33A20(255);
    sub_1A3E4537C();
    sub_1A3E33CB8(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1242B0);
  }

  return result;
}

unint64_t sub_1A3E4537C()
{
  result = qword_1EB125EF0;
  if (!qword_1EB125EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125EF0);
  }

  return result;
}

unint64_t sub_1A3E453D0()
{
  result = qword_1EB1230B8;
  if (!qword_1EB1230B8)
  {
    sub_1A3E33AAC(255);
    sub_1A3E45480();
    sub_1A3E33CB8(&qword_1EB127FC8, sub_1A3E33BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1230B8);
  }

  return result;
}

unint64_t sub_1A3E45480()
{
  result = qword_1EB1231D0;
  if (!qword_1EB1231D0)
  {
    sub_1A3E33B78(255);
    sub_1A3E44B24(&qword_1EB128228, sub_1A3E33708, sub_1A3E45530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1231D0);
  }

  return result;
}

uint64_t sub_1A3E45564(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A3E34B50(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3E45608(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1A3E33AF4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A3E45728()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3E457BC()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3E458FC()
{
  v0 = sub_1A52411C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v4 = sub_1A5241164();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1A3E459D8()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3E45A6C()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3E45B70(uint64_t a1, uint64_t *a2)
{
  sub_1A3CB4D08();
  v4 = v3;
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v4, a2);
  sub_1A3E48704();
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A3E45CF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a1;
  v3 = MEMORY[0x1E6968D10];
  sub_1A3CB7B30(0, &qword_1EB12B088, MEMORY[0x1E6968D10]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = MEMORY[0x1E6968D98];
  sub_1A3CB7B30(0, &qword_1EB12B010, MEMORY[0x1E6968D98]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  sub_1A3CB7E5C(&qword_1EB12B018, &qword_1EB12B010, v9);
  sub_1A5240AB4();
  v18 = 1;
  sub_1A5240AA4();
  sub_1A3CB7F40();
  a2[3] = v15;
  a2[4] = sub_1A3CB80BC();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1A3CB7E5C(&qword_1EB12B090, &qword_1EB12B088, v3);
  sub_1A5240A44();
  (*(v6 + 8))(v8, v5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1A3E45F6C()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3E46000()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

void sub_1A3E460E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1A3CB4D08();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5247704();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  (*(v8 + 16))(v10, v15, v7);
  sub_1A5247724();
  sub_1A52474F4();
  (*(v12 + 8))(v14, v11);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E46310()
{
  sub_1A3E47FB8();
  v1 = *(v0 - 8);
  v73 = v0;
  v74 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v70 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48238();
  v69 = v3;
  v72 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48434();
  v65 = v5;
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E485A4();
  v82 = v7;
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1A5247604();
  v59 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48680(0, &qword_1EB12CFC8, MEMORY[0x1E6982AD8]);
  v63 = v10;
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v54 - v11;
  v78 = sub_1A52475C4();
  v56 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48680(0, &qword_1EB12CFC0, MEMORY[0x1E6982AB0]);
  v80 = v14;
  v64 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v54 - v15;
  v16 = sub_1A52475E4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48680(0, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
  v77 = v20;
  v61 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v54 - v21;
  v22 = sub_1A52476E4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1E6982B20];
  sub_1A3E48680(0, &unk_1EB124A08, MEMORY[0x1E6982B28]);
  v28 = v27;
  v60 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v54 - v29;
  sub_1A52475D4();
  v55 = v30;
  MEMORY[0x1A59028B0](v25, v22, v26);
  (*(v23 + 8))(v25, v22);
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v19, v16, MEMORY[0x1E6982AC0]);
  (*(v17 + 8))(v19, v16);
  sub_1A52475D4();
  v31 = v78;
  MEMORY[0x1A59028B0](v13, v78, MEMORY[0x1E6982AA8]);
  (*(v56 + 8))(v13, v31);
  v32 = v58;
  sub_1A52475D4();
  v33 = v57;
  v34 = v79;
  MEMORY[0x1A59028B0](v32, v79, MEMORY[0x1E6982AD0]);
  (*(v59 + 8))(v32, v34);
  v83 = v22;
  v84 = MEMORY[0x1E6982B20];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v28;
  MEMORY[0x1A59028E0](v30, v28, OpaqueTypeConformance2);
  v83 = v28;
  v84 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v83 = v16;
  v84 = MEMORY[0x1E6982AC0];
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v62;
  v39 = v82;
  v40 = v77;
  sub_1A5247564();
  v83 = v39;
  v84 = v40;
  v85 = v36;
  v86 = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v83 = v78;
  v84 = MEMORY[0x1E6982AA8];
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v67;
  v44 = v65;
  v45 = v80;
  sub_1A5247564();
  v83 = v44;
  v84 = v45;
  v85 = v41;
  v86 = v42;
  v46 = swift_getOpaqueTypeConformance2();
  v83 = v79;
  v84 = MEMORY[0x1E6982AD0];
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v69;
  v49 = v70;
  v50 = v63;
  sub_1A5247564();
  v83 = v48;
  v84 = v50;
  v85 = v46;
  v86 = v47;
  swift_getOpaqueTypeConformance2();
  v51 = v73;
  v52 = sub_1A5247554();
  (*(v74 + 8))(v49, v51);
  (*(v72 + 8))(v43, v48);
  (*(v71 + 8))(v38, v44);
  (*(v68 + 8))(v81, v82);
  (*(v66 + 8))(v33, v50);
  (*(v64 + 8))(v76, v80);
  (*(v61 + 8))(v75, v77);
  (*(v60 + 8))(v55, v54);
  return v52;
}

uint64_t sub_1A3E46DD0()
{
  sub_1A3E47CB0();
  v1 = *(v0 - 8);
  v94 = v0;
  v95 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v91 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E47FB8();
  v90 = v3;
  v93 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48238();
  v86 = v5;
  v92 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48434();
  v106 = v7;
  v89 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E485A4();
  v103 = v9;
  v88 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1A5247584();
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48680(0, &qword_1EB128BA0, MEMORY[0x1E6982A98]);
  v82 = v12;
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v69 - v13;
  v99 = sub_1A5247604();
  v75 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v74 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48680(0, &qword_1EB12CFC8, MEMORY[0x1E6982AD8]);
  v102 = v15;
  v83 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v69 - v16;
  v96 = sub_1A52475C4();
  v71 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48680(0, &qword_1EB12CFC0, MEMORY[0x1E6982AB0]);
  v100 = v19;
  v81 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v69 - v20;
  v69 = sub_1A52475E4();
  v21 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E48680(0, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
  v97 = v24;
  v80 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v69 - v25;
  v27 = sub_1A52476E4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1E6982B20];
  sub_1A3E48680(0, &unk_1EB124A08, MEMORY[0x1E6982B28]);
  v33 = v32;
  v77 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v69 - v34;
  sub_1A52475D4();
  v73 = v35;
  MEMORY[0x1A59028B0](v30, v27, v31);
  (*(v28 + 8))(v30, v27);
  sub_1A52475D4();
  v70 = v26;
  v36 = v69;
  MEMORY[0x1A59028B0](v23, v69, MEMORY[0x1E6982AC0]);
  v37 = v36;
  (*(v21 + 8))(v23, v36);
  sub_1A52475D4();
  v38 = v96;
  MEMORY[0x1A59028B0](v18, v96, MEMORY[0x1E6982AA8]);
  (*(v71 + 8))(v18, v38);
  v39 = v74;
  sub_1A52475D4();
  v40 = v99;
  MEMORY[0x1A59028B0](v39, v99, MEMORY[0x1E6982AD0]);
  (*(v75 + 8))(v39, v40);
  v41 = v76;
  sub_1A5247594();
  v42 = v78;
  MEMORY[0x1A59028B0](v41, v78, MEMORY[0x1E6982A88]);
  v43 = v42;
  (*(v79 + 8))(v41, v42);
  v108 = v27;
  v109 = MEMORY[0x1E6982B20];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v33;
  MEMORY[0x1A59028E0](v35, v33, OpaqueTypeConformance2);
  v108 = v33;
  v109 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v108 = v37;
  v109 = MEMORY[0x1E6982AC0];
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v103;
  v48 = v97;
  sub_1A5247564();
  v108 = v47;
  v109 = v48;
  v110 = v45;
  v111 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v108 = v96;
  v109 = MEMORY[0x1E6982AA8];
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v84;
  v52 = v106;
  v53 = v100;
  sub_1A5247564();
  v108 = v52;
  v109 = v53;
  v110 = v49;
  v111 = v50;
  v54 = swift_getOpaqueTypeConformance2();
  v108 = v99;
  v109 = MEMORY[0x1E6982AD0];
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v87;
  v57 = v86;
  v58 = v102;
  sub_1A5247564();
  v108 = v57;
  v109 = v58;
  v110 = v54;
  v111 = v55;
  v59 = swift_getOpaqueTypeConformance2();
  v108 = v43;
  v109 = MEMORY[0x1E6982A88];
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v91;
  v62 = v56;
  v63 = v105;
  v64 = v90;
  v65 = v82;
  sub_1A5247564();
  v108 = v64;
  v109 = v65;
  v110 = v59;
  v111 = v60;
  swift_getOpaqueTypeConformance2();
  v66 = v94;
  v67 = sub_1A5247554();
  (*(v95 + 8))(v61, v66);
  (*(v93 + 8))(v62, v64);
  (*(v92 + 8))(v51, v57);
  (*(v89 + 8))(v104, v106);
  (*(v88 + 8))(v101, v103);
  (*(v85 + 8))(v63, v65);
  (*(v83 + 8))(v98, v102);
  (*(v81 + 8))(v107, v100);
  (*(v80 + 8))(v70, v97);
  (*(v77 + 8))(v73, v72);
  return v67;
}

unint64_t sub_1A3E47B74()
{
  result = qword_1EB12CF88;
  if (!qword_1EB12CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CF88);
  }

  return result;
}

unint64_t sub_1A3E47BCC()
{
  result = qword_1EB12CF90;
  if (!qword_1EB12CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CF90);
  }

  return result;
}

unint64_t sub_1A3E47C24()
{
  result = qword_1EB12CF98;
  if (!qword_1EB12CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CF98);
  }

  return result;
}

void sub_1A3E47CB0()
{
  if (!qword_1EB12CFA0)
  {
    sub_1A3E47FB8();
    sub_1A3E48680(255, &qword_1EB128BA0, MEMORY[0x1E6982A98]);
    sub_1A3E48238();
    sub_1A3E48680(255, &qword_1EB12CFC8, MEMORY[0x1E6982AD8]);
    sub_1A3E48434();
    sub_1A3E48680(255, &qword_1EB12CFC0, MEMORY[0x1E6982AB0]);
    sub_1A3E485A4();
    sub_1A3E48680(255, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
    sub_1A3E48680(255, &unk_1EB124A08, MEMORY[0x1E6982B28]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475C4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247604();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247584();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12CFA0);
    }
  }
}

void sub_1A3E47FB8()
{
  if (!qword_1EB12CFA8)
  {
    sub_1A3E48238();
    sub_1A3E48680(255, &qword_1EB12CFC8, MEMORY[0x1E6982AD8]);
    sub_1A3E48434();
    sub_1A3E48680(255, &qword_1EB12CFC0, MEMORY[0x1E6982AB0]);
    sub_1A3E485A4();
    sub_1A3E48680(255, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
    sub_1A3E48680(255, &unk_1EB124A08, MEMORY[0x1E6982B28]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475C4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247604();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12CFA8);
    }
  }
}

void sub_1A3E48238()
{
  if (!qword_1EB12CFB0)
  {
    sub_1A3E48434();
    sub_1A3E48680(255, &qword_1EB12CFC0, MEMORY[0x1E6982AB0]);
    sub_1A3E485A4();
    sub_1A3E48680(255, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
    sub_1A3E48680(255, &unk_1EB124A08, MEMORY[0x1E6982B28]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475C4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12CFB0);
    }
  }
}

void sub_1A3E48434()
{
  if (!qword_1EB12CFB8)
  {
    sub_1A3E485A4();
    sub_1A3E48680(255, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
    sub_1A3E48680(255, &unk_1EB124A08, MEMORY[0x1E6982B28]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12CFB8);
    }
  }
}

void sub_1A3E485A4()
{
  if (!qword_1EB1249E8)
  {
    sub_1A3E48680(255, &unk_1EB124A08, MEMORY[0x1E6982B28]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1249E8);
    }
  }
}

void sub_1A3E48680(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3E48704()
{
  if (!qword_1EB12B120)
  {
    sub_1A52475B4();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B120);
    }
  }
}

uint64_t PeopleUnifiedManagerSourceType.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t PeopleUnifiedItemListManager.itemList.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

id sub_1A3E49574(uint64_t a1)
{
  if (*(v1 + 16) != 1 || *(v1 + 17) != 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  v4 = *(v1 + 24);
  sub_1A3C36888();
  return sub_1A414E280(a1, v4);
}

void sub_1A3E495E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1A3E4964C(uint64_t a1)
{
  if (*(v1 + 16) == 2)
  {
    return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  v5 = v1 + 24;
  v4 = *(v1 + 24);
  v3 = *(v5 + 8);
  sub_1A3C36888();
  v7 = sub_1A3C30368();
  return sub_1A414DEC0(a1, v4, v3, v7 & 1);
}

id sub_1A3E496E0(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    }

    type metadata accessor for LemonadeSocialGroupsShelfProvider();
    sub_1A3E4C99C(&qword_1EB125368, 255, type metadata accessor for LemonadeSocialGroupsShelfProvider);
    v5 = a1;
    v6 = 0;
    v7 = 1;
    v8 = v3;
  }

  else
  {
    sub_1A3C36888();
    v5 = a1;
    v6 = 1;
    v7 = 0;
    v8 = v3;
  }

  return sub_1A414DACC(v5, v6, v7, v8);
}

void sub_1A3E497FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PeopleUnifiedItem();
    v7 = sub_1A3E4C99C(&qword_1EB12A450, 255, type metadata accessor for PeopleUnifiedItem);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3E498A0()
{
  v1 = sub_1A524BEE4();
  v32 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A524BFC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  if ((*(v0 + 120) & 1) == 0)
  {
    *(v0 + 120) = 1;
    v28 = v3;
    v19 = v16;
    sub_1A3C52C70(0, &qword_1EB12B180);
    v27 = v1;
    v29 = sub_1A524D474();
    sub_1A524BFA4();
    *v10 = 100;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7F38], v7);
    sub_1A524BFB4();
    (*(v8 + 8))(v10, v7);
    v20 = *(v12 + 8);
    v21 = v19;
    v20(v14, v19);
    v22 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A3E4C948;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_25;
    v23 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3E4C99C(&qword_1EB12B1E0, 255, MEMORY[0x1E69E7F60]);
    sub_1A3C2A0A4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    v25 = v27;
    v24 = v28;
    sub_1A524E224();
    v26 = v29;
    MEMORY[0x1A5908790](v18, v6, v24, v23);
    _Block_release(v23);

    (*(v32 + 8))(v24, v25);
    (*(v30 + 8))(v6, v31);
    v20(v18, v21);
  }
}

uint64_t sub_1A3E49D4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3E498A0();
  }

  return result;
}

Swift::Bool __swiftcall PeopleUnifiedItemListManager.waitForItemList(timeout:)(Swift::Double timeout)
{
  if (timeout > 0.0)
  {
    v3 = (*(*v1[5] + 440))();
    v4 = (*(*v1[6] + 440))(v3, timeout);
    (*(*v1[7] + 440))(v4, timeout);

    sub_1A3E49EAC();
  }

  return 0;
}

uint64_t static PeopleUnifiedItemListManager.cappedPeopleCount(peopleCount:peopleFetchLimit:peopleSoftCap:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= result)
  {
    v3 = result;
  }

  else
  {
    v3 = a3;
  }

  if (result >= a2)
  {
    return v3;
  }

  return result;
}

void *sub_1A3E4AFAC(unint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a1 >> 62)
  {
    v9 = sub_1A524E2B4();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1A3E4C0A8(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x1A59097F0](v12, a1);
        v26 = v10;
        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1A3E4C0A8((v14 > 1), v15 + 1, 1);
          v10 = v26;
        }

        ++v12;
        sub_1A3E495E4(0, a2, a3, a4, type metadata accessor for PhotoKitItem);
        v24 = v16;
        v25 = sub_1A3E4C834(a5, a2, a3, a4);
        *&v23 = v13;
        *(v10 + 16) = v15 + 1;
        sub_1A3C34460(&v23, v10 + 40 * v15 + 32);
      }

      while (v9 != v12);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v26 = v10;
        v20 = *(v10 + 16);
        v19 = *(v10 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_1A3E4C0A8((v19 > 1), v20 + 1, 1);
          v10 = v26;
        }

        sub_1A3E495E4(0, a2, a3, a4, type metadata accessor for PhotoKitItem);
        v24 = v21;
        v25 = sub_1A3E4C834(a5, a2, a3, a4);
        *&v23 = v18;
        *(v10 + 16) = v20 + 1;
        sub_1A3C34460(&v23, v10 + 40 * v20 + 32);
        ++v17;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3E4B1D4(void *a1)
{
  type metadata accessor for LemonadePeopleProgressStatus();
  sub_1A3F53C40(a1);
  sub_1A3F546F4();
}

uint64_t (*sub_1A3E4B22C(uint64_t a1, void *a2))()
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  v5 = a2;
  return sub_1A3E4C898;
}

uint64_t sub_1A3E4B2C0(uint64_t a1, void *a2)
{
  sub_1A3C2A0A4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for LemonadePeopleProgressStatus();
    sub_1A3F53C40(a2);
    v7 = sub_1A3F546F4();

    v8 = sub_1A524CCB4();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    sub_1A524CC54();

    v10 = a2;
    v11 = sub_1A524CC44();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    v12[5] = v10;
    v12[6] = v7;

    sub_1A3D4D930(0, 0, v5, &unk_1A5301328, v12);
  }

  return result;
}

uint64_t sub_1A3E4B4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_1A524CC54();
  v6[8] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3E4B54C, v8, v7);
}

uint64_t sub_1A3E4B54C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[6];
    v4 = v0[7];
    type metadata accessor for LemonadePeopleProgressStatus();
    sub_1A3F53C40(v3);
    v5 = sub_1A3F546F4();

    if (v4 || v5 != 4)
    {
      v6 = *(*v2[5] + 272);

      v6(v7);

      v8 = *(*v2[6] + 272);

      v8(v9);

      v10 = *(*v2[7] + 272);

      v10(v11);
    }

    v12 = v0[6];
    *(swift_task_alloc() + 16) = v12;
    v13 = swift_task_alloc();
    *(v13 + 16) = v2;
    *(v13 + 24) = v12;
    sub_1A52415B4();
  }

  v14 = v0[1];

  return v14();
}

void PeopleUnifiedItemListManager.observeChanges(using:)()
{
  sub_1A3E497DC(0);
  sub_1A3E4C99C(&qword_1EB128DC8, 255, sub_1A3E497DC);

  sub_1A5245C54();
}

uint64_t PeopleUnifiedItemListManager.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PeopleUnifiedItemListManager.__deallocating_deinit()
{
  PeopleUnifiedItemListManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3E4B8E4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
}

uint64_t sub_1A3E4B950(double a1)
{
  if (a1 > 0.0)
  {
    v3 = (*(*v1[5] + 440))();
    v4 = (*(*v1[6] + 440))(v3, a1);
    (*(*v1[7] + 440))(v4, a1);

    sub_1A3E49EAC();
  }

  return 0;
}

void sub_1A3E4BA5C()
{
  sub_1A3E497DC(0);
  sub_1A3E4C99C(&qword_1EB128DC8, 255, sub_1A3E497DC);

  sub_1A5245C54();
}

unint64_t sub_1A3E4BB7C()
{
  result = qword_1EB125480;
  if (!qword_1EB125480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125480);
  }

  return result;
}

unint64_t sub_1A3E4BD60()
{
  result = qword_1EB129768;
  if (!qword_1EB129768)
  {
    sub_1A3E495E4(255, &qword_1EB129760, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129768);
  }

  return result;
}

void *sub_1A3E4BDE4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A3C2A0A4(0, &qword_1EB120370, sub_1A3E4C7D0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3E4C7D0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A3E4BF44(unsigned __int8 a1)
{
  sub_1A3C6C300();
  v1 = sub_1A524C4A4();
  return sub_1A3E4C228(a1, v1);
}

void *sub_1A3E4BFAC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1A3E4BDE4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A3E4C7D0();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A3E4C0A8(void *a1, int64_t a2, char a3)
{
  result = sub_1A3E4C0C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A3E4C0C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A3C2A0A4(0, &qword_1EB120370, sub_1A3E4C7D0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3E4C7D0();
    swift_arrayInitWithCopy();
  }

  return v10;
}