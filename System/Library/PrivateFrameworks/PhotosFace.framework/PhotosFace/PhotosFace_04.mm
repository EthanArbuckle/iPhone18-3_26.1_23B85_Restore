uint64_t sub_22FDC198C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22FE43CB4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22FE43CB4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_22FDC1BB4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FDC1C40(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_22FDC1C54(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_22FDC1DAC(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_22FE43E04();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_22FE43DB4();

    sub_22FE430D4();
    v15 = sub_22FE43E04();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x23190B9C0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDC1F08(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22FE43164();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23190AD40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22FDC1F84@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_22FE43904();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s10PhotosFace9ShuffleIDV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) != 0 && (v4 = type metadata accessor for ShuffleID(), (sub_22FDBF9D4(*(a1 + v4[5]), *(a2 + v4[5]))) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_22FDC2070(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23190B100](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22FDC05CC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22FDC2108(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_22FE088A0(result);
    }

    else
    {
      v2 = sub_22FE42694();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22FE42664();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22FE427A4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_22FDC21A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22FE42694();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22FE42644();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22FE427A4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22FDC2224(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22FE42694();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22FE42644();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22FDC22A8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4518, &qword_22FE4B648);
  v10 = sub_22FDC2774();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22FDC0FC8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_22FDC2358(uint64_t a1)
{
  v2 = type metadata accessor for ShuffleIDProto();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FDC241C(uint64_t a1)
{
  *(a1 + 16) = sub_22FDC24A0(&qword_28148AF38, type metadata accessor for ShuffleID);
  result = sub_22FDC24A0(&qword_28148AF48, type metadata accessor for ShuffleID);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22FDC24A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22FDC2558()
{
  sub_22FE428C4();
  if (v0 <= 0x3F)
  {
    sub_22FDC25E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FDC25E8()
{
  if (!qword_28148AE60)
  {
    v0 = sub_22FE43554();
    if (!v1)
    {
      atomic_store(v0, &qword_28148AE60);
    }
  }
}

uint64_t sub_22FDC2640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4510, &qword_22FE4B640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_22FDC26A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_22FDC105C(sub_22FDC2754, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22FDC2774()
{
  result = qword_27DAE4520;
  if (!qword_27DAE4520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4518, &qword_22FE4B648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4520);
  }

  return result;
}

void pickPhotos(totalCount:day:picking:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  if (a3 >= a1)
  {
    if (qword_27DAE2AC8 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_67;
  }

  if (!a3)
  {
    goto LABEL_66;
  }

  v6 = a1 % a3 != 0;
  v7 = a1 / a3 + v6;
  if (__OFADD__(a1 / a3, v6))
  {
    goto LABEL_69;
  }

  v4 = v7 * a3;
  if ((v7 * a3) >> 64 != (v7 * a3) >> 63)
  {
    goto LABEL_70;
  }

  v3 = a2;
  if (qword_27DAE2AC8 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v8 = sub_22FE42D34();
    __swift_project_value_buffer(v8, qword_27DAE5118);
    v9 = sub_22FE42D14();
    v10 = sub_22FE43694();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218496;
      *(v11 + 4) = a3;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      *(v11 + 22) = 2048;
      *(v11 + 24) = v4;
      _os_log_impl(&dword_22FD6D000, v9, v10, "Picking %ld from array of size %ld, picking from %ld elements", v11, 0x20u);
      MEMORY[0x23190C380](v11, -1, -1);
    }

    if (a3 == -1 && v4 == 0x8000000000000000)
    {
      goto LABEL_82;
    }

    v12 = v4 / a3;
    if (!(v4 / a3))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      return;
    }

    if (v3 == 0x8000000000000000 && v12 == -1)
    {
      goto LABEL_83;
    }

    v13 = v3 / v12;
    v14 = v3 % v12;
    v15 = sub_22FE42D14();
    v16 = sub_22FE43694();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218496;
      *(v17 + 4) = v13;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v14;
      *(v17 + 22) = 2048;
      *(v17 + 24) = v12;
      _os_log_impl(&dword_22FD6D000, v15, v16, "Position: Cycle %ld (%ld/%ld)", v17, 0x20u);
      MEMORY[0x23190C380](v17, -1, -1);
    }

    v18 = __clz(v4);
    v19 = 64 - v18;
    v20 = sub_22FE42D14();
    v21 = sub_22FE43694();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = v19;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v4;
      _os_log_impl(&dword_22FD6D000, v20, v21, "Need %ld bits for count of %ld", v22, 0x16u);
      MEMORY[0x23190C380](v22, -1, -1);
    }

    v23 = 63 - v18;
    v24 = 2 << v23;
    if (!v4)
    {
      v24 = 1;
    }

    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v25)
    {
      goto LABEL_73;
    }

    if (!v26)
    {
      goto LABEL_74;
    }

    if (v13 == 0x8000000000000000 && v26 == -1)
    {
      goto LABEL_84;
    }

    v28 = v13 % v26;
    if (v28 < 0)
    {
      goto LABEL_75;
    }

    v29 = v28 + 1;
    v3 = sub_22FE1765C(v19);
    v30 = sub_22FE42D14();
    v31 = sub_22FE43694();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = v19;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v29;
      _os_log_impl(&dword_22FD6D000, v30, v31, "Created RNG with size %ld and seed %llu", v32, 0x16u);
      MEMORY[0x23190C380](v32, -1, -1);
    }

    v33 = sub_22FE42D14();
    v34 = sub_22FE43694();
    v35 = (v14 * a3) >> 64;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      if (v35 != (v14 * a3) >> 63)
      {
        goto LABEL_85;
      }

      *(v36 + 4) = v14 * a3;
      v37 = v34;
      v38 = v36;
      _os_log_impl(&dword_22FD6D000, v33, v37, "Discarding %ld previous values", v36, 0xCu);
      MEMORY[0x23190C380](v38, -1, -1);
    }

    if (a1 < 0)
    {
      goto LABEL_76;
    }

    v39 = v14 * a3;
    if (v35 != (v14 * a3) >> 63)
    {
      goto LABEL_77;
    }

    if (v39 < 0)
    {
      goto LABEL_78;
    }

    v4 = v23 & 0x3F;
    if (v39)
    {
      if (!a1)
      {
        goto LABEL_81;
      }

      v40 = 0;
      while (1)
      {
        v25 = __OFADD__(v40++, 1);
        if (v25)
        {
          break;
        }

        do
        {
          v29 = ((vaddlv_u8(vcnt_s8((v29 & v3))) & 1) << v4) | (v29 >> 1);
        }

        while (v29 - 1 >= a1);
        if (v40 == v39)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_40:
      v41 = sub_22FE42D14();
      v42 = sub_22FE43694();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 134218496;
        *(v43 + 4) = a3;
        *(v43 + 12) = 2048;
        *(v43 + 14) = v14;
        *(v43 + 22) = 2048;
        *(v43 + 24) = v13;
        _os_log_impl(&dword_22FD6D000, v41, v42, "Using next %ld values for position %ld in cycle %ld", v43, 0x20u);
        MEMORY[0x23190C380](v43, -1, -1);
      }

      if (a3 < 0)
      {
        goto LABEL_79;
      }

      v60[0] = MEMORY[0x277D84F90];
      sub_22FD92558(0, a3, 0);
      if (!a1)
      {
        goto LABEL_80;
      }

      v44 = 0;
      v45 = a3;
      v46 = v60[0];
      while (v44 < v45)
      {
        v25 = __OFADD__(v44++, 1);
        if (v25)
        {
          goto LABEL_64;
        }

        do
        {
          v29 = ((vaddlv_u8(vcnt_s8((v29 & v3))) & 1) << v4) | (v29 >> 1);
        }

        while (v29 - 1 >= a1);
        v60[0] = v46;
        v48 = v46[2];
        v47 = v46[3];
        if (v48 >= v47 >> 1)
        {
          sub_22FD92558((v47 > 1), v48 + 1, 1);
          v45 = a3;
          v46 = v60[0];
        }

        v46[2] = v48 + 1;
        v46[v48 + 4] = v29 - 1;
        if (v44 == v45)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
LABEL_53:
    v49 = sub_22FE42D34();
    __swift_project_value_buffer(v49, qword_27DAE5118);
    v50 = sub_22FE42D14();
    v51 = sub_22FE43694();
    if (os_log_type_enabled(v50, v51))
    {
      v3 = swift_slowAlloc();
      *v3 = 134218240;
      *(v3 + 4) = a1;
      *(v3 + 12) = 2048;
      *(v3 + 14) = a3;
      _os_log_impl(&dword_22FD6D000, v50, v51, "Total Count (%ld) is less than %ld, using entire array.", v3, 0x16u);
      MEMORY[0x23190C380](v3, -1, -1);
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  if (a1)
  {
    v46 = sub_22FDC0548(a1, 0);
    if (sub_22FDC3024(v60, (v46 + 4), a1, 0, a1) != a1)
    {
      __break(1u);
LABEL_59:

      v52 = sub_22FE42D14();
      v53 = sub_22FE43694();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v60[0] = v55;
        *v54 = 136315138;
        v56 = MEMORY[0x23190AE90](v46, MEMORY[0x277D83B88]);
        v58 = sub_22FD98218(v56, v57, v60);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_22FD6D000, v52, v53, "Picked %s.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x23190C380](v55, -1, -1);
        MEMORY[0x23190C380](v54, -1, -1);
      }
    }
  }
}

uint64_t *sub_22FDC3024(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PhotosFaceInterface.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4528, &qword_22FE4B660);
  v1 = swift_allocObject();
  v1[3] = 0x800000022FE48140;
  v1[4] = 0;
  v1[2] = 0xD000000000000014;
  type metadata accessor for PhotosXPCClient();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t PhotosFaceInterface.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4528, &qword_22FE4B660);
  v1 = swift_allocObject();
  v1[3] = 0x800000022FE48140;
  v1[4] = 0;
  v1[2] = 0xD000000000000014;
  type metadata accessor for PhotosXPCClient();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t PhotosFaceInterface.process(photos:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;

  v6 = sub_22FDCF488("process(photos:)", 16, 2, &unk_22FE4B670, v5, &unk_2844D0D68, &unk_22FE4B9E8);

  *a2 = v6;
  return result;
}

uint64_t sub_22FDC3294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45C8, &qword_22FE4BA00);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC3338);
}

uint64_t sub_22FDC3338()
{
  v1 = *(v0[4] + 16);
  v0[2] = v0[5];

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC33F4;
  v3 = v0[7];

  return PhotosXPCClient.generatePhoto(request:)(v3, v0 + 2);
}

uint64_t sub_22FDC33F4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(v2 + 72) = v0;

  v4 = *(v2 + 16);

  if (v0)
  {
    v5 = sub_22FDC3644;
  }

  else
  {
    v5 = sub_22FDC3510;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FDC3510()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45D0, &unk_22FE4BA10);
  sub_22FDBC930(&qword_27DAE45D8, &qword_27DAE45C8, &qword_22FE4BA00);
  sub_22FDBC930(&qword_27DAE45E0, &qword_27DAE45D0, &unk_22FE4BA10);
  sub_22FE43B24();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FDC3644()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_22FDC36A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FDC36CC);
}

uint64_t sub_22FDC36CC()
{
  **(v0 + 16) = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t PhotosFaceInterface.send(message:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDC375C);
}

uint64_t sub_22FDC375C()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22FDC3818;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_22FDCF69C("send(message:)", 14, 2, v4, v6, v5);
}

uint64_t sub_22FDC3818(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 40);
  v7 = *(*v3 + 32);
  v8 = *(*v3 + 24);
  v13 = *v3;

  v11 = *(v13 + 8);
  if (!v2)
  {
    v9 = a1;
    v10 = a2;
  }

  return v11(v9, v10);
}

uint64_t sub_22FDC3968(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 80) = a4;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  return MEMORY[0x2822009F8](sub_22FDC3990);
}

uint64_t sub_22FDC3990()
{
  v19 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 48) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  v17 = (*(v0 + 32) + **(v0 + 32));
  v13 = *(*(v0 + 32) + 4);
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_22FDC3BD8;
  v15 = *(v0 + 40);

  return v17();
}

uint64_t sub_22FDC3BD8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_22FDC3E94;
  }

  else
  {
    v3 = sub_22FDC3CEC;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDC3CEC()
{
  v19 = v0;
  v1 = *(v0 + 56);
  v2 = sub_22FE42D14();
  v3 = sub_22FE436C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315650;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v4;
    *(v8 + 22) = 2080;
    v13 = sub_22FE430B4();
    v15 = sub_22FD98218(v13, v14, &v18);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_22FD6D000, v2, v3, "%s (%ld) finished: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22FDC3E94()
{
  v24 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v22 = *(v0 + 48);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315650;
    v13 = sub_22FE43914();
    v15 = sub_22FD98218(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v22;
    *(v10 + 22) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) failed: %@", v10, 0x20u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  v18 = *(v0 + 72);
  swift_willThrow();
  v19 = *(v0 + 8);
  v20 = *(v0 + 72);

  return v19();
}

uint64_t sub_22FDC4078(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 96) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_22FDC40A0);
}

uint64_t sub_22FDC40A0()
{
  v19 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 64) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 72) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  v17 = (*(v0 + 48) + **(v0 + 48));
  v13 = *(*(v0 + 48) + 4);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_22FDC42F0;
  v15 = *(v0 + 56);

  return v17(v0 + 16);
}

uint64_t sub_22FDC42F0()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22FDD4648;
  }

  else
  {
    v3 = sub_22FDD4660;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDC4404(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 96) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_22FDC442C);
}

uint64_t sub_22FDC442C()
{
  v19 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 64) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 72) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  v17 = (*(v0 + 48) + **(v0 + 48));
  v13 = *(*(v0 + 48) + 4);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_22FDC467C;
  v15 = *(v0 + 56);

  return v17(v0 + 16);
}

uint64_t sub_22FDC467C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22FDC497C;
  }

  else
  {
    v3 = sub_22FDC4790;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDC4790()
{
  v20 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 72);
  swift_bridgeObjectRetain_n();
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315650;
    v11 = sub_22FE43914();
    v13 = sub_22FD98218(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v5;
    *(v9 + 22) = 2080;
    *(v0 + 24) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4570, &qword_22FE4B968);
    v14 = sub_22FE430B4();
    v16 = sub_22FD98218(v14, v15, &v19);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v10, -1, -1);
    MEMORY[0x23190C380](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_22FDC497C()
{
  v24 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v22 = *(v0 + 64);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315650;
    v13 = sub_22FE43914();
    v15 = sub_22FD98218(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v22;
    *(v10 + 22) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) failed: %@", v10, 0x20u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  v18 = *(v0 + 88);
  swift_willThrow();
  v19 = *(v0 + 8);
  v20 = *(v0 + 88);

  return v19();
}

uint64_t sub_22FDC4B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 120) = a4;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  return MEMORY[0x2822009F8](sub_22FDC4B8C);
}

uint64_t sub_22FDC4B8C()
{
  v19 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 88) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 96) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  v17 = (*(v0 + 72) + **(v0 + 72));
  v13 = *(*(v0 + 72) + 4);
  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  *v14 = v0;
  v14[1] = sub_22FDC4DDC;
  v15 = *(v0 + 80);

  return v17(v0 + 16);
}

uint64_t sub_22FDC4DDC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22FDC50F0;
  }

  else
  {
    v3 = sub_22FDC4EF0;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDC4EF0()
{
  v21 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 96);
  v3 = *(v0 + 24);
  sub_22FDB4380(v1, v3);
  sub_22FDB4380(v1, v3);
  v4 = sub_22FE42D14();
  v5 = sub_22FE436C4();
  sub_22FD917D4(v1, v3);
  if (os_log_type_enabled(v4, v5))
  {
    v19 = *(v0 + 88);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315650;
    v11 = sub_22FE43914();
    v13 = sub_22FD98218(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v19;
    *(v9 + 22) = 2080;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3;
    v14 = sub_22FE430B4();
    v16 = sub_22FD98218(v14, v15, &v20);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) finished: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v10, -1, -1);
    MEMORY[0x23190C380](v9, -1, -1);
  }

  else
  {
    sub_22FD917D4(v1, v3);
  }

  **(v0 + 48) = *(v0 + 16);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22FDC50F0()
{
  v24 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v22 = *(v0 + 88);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315650;
    v13 = sub_22FE43914();
    v15 = sub_22FD98218(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v22;
    *(v10 + 22) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) failed: %@", v10, 0x20u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  v18 = *(v0 + 112);
  swift_willThrow();
  v19 = *(v0 + 8);
  v20 = *(v0 + 112);

  return v19();
}

uint64_t PhotosFaceInterface.track(album:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for AlbumID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22FDD4464(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlbumID);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_22FDD43FC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AlbumID);

  v10 = sub_22FDCF488("track(album:)", 13, 2, &unk_22FE4B690, v9, &unk_2844D0D18, &unk_22FE4B9B8);

  *a2 = v10;
  return result;
}

uint64_t sub_22FDC5440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22FDC5464);
}

uint64_t sub_22FDC5464()
{
  *(v0 + 48) = *(*(v0 + 32) + 16);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDC555C);
}

uint64_t sub_22FDC555C()
{
  v15 = v0;
  v1 = v0[5];
  v2 = *(v0[6] + 16);
  v14[0] = 2;
  v3 = off_2844D07B0[0];
  v4 = type metadata accessor for AlbumID();
  v5 = v3(v14, v4);
  v6 = v0[3];
  v7 = v5;
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = 3;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  sub_22FDB4380(v7, v9);
  v11 = sub_22FE275DC(&unk_22FE4B9D8, v10);

  sub_22FD917D4(v7, v9);
  v0[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908);
  sub_22FE43C54();
  v12 = v0[1];

  return v12();
}

uint64_t PhotosFaceInterface.untrack(album:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDC5754);
}

uint64_t sub_22FDC5754()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC5824;

  return sub_22FDC3968(v2, "untrack(album:)", 15, 2, &unk_22FE4B6A8, v1);
}

uint64_t sub_22FDC5824()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22FDC5940;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22FD908B4;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_22FDC5940()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_22FDC59A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDC5A94);
}

uint64_t sub_22FDC5A94()
{
  v1 = v0[3];
  v2 = *(*(v0[2] + 16) + 16);
  v3 = UUID.serialized(version:)();
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = 4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  sub_22FDB4380(v3, v5);
  sub_22FE275DC(&unk_22FE4B9A8, v6);

  sub_22FD917D4(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FDC5BBC()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FDC5C6C;
  v3 = *(v0 + 16);

  return sub_22FDD001C("listAlbums()", 12, 2, v3);
}

uint64_t sub_22FDC5C6C(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_22FDC5D90(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v2 + 24) = sub_22FE43374();
  *(v2 + 32) = v3;

  return MEMORY[0x2822009F8](sub_22FDC5E84);
}

uint64_t sub_22FDC5E84()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = 0x180A0F05u >> (8 * *(v0 + 72));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_22FE4B510;

  *(v0 + 40) = sub_22FE275DC(&unk_22FE4B9A0, v3);

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22FDC5FA8;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC5FA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v3[3];
    v10 = v3[4];

    return MEMORY[0x2822009F8](sub_22FDC610C);
  }
}

uint64_t sub_22FDC610C()
{
  v1 = v0[7];
  if (v1[2] == 1)
  {
    v2 = v0[8];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1B164(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {
    v8 = v0[7];

    sub_22FDD4264();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FDC6228(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v2 + 24) = sub_22FE43374();
  *(v2 + 32) = v3;

  return MEMORY[0x2822009F8](sub_22FDC631C);
}

uint64_t sub_22FDC631C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = 0x180A0F05u >> (8 * *(v0 + 72));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_22FE4B510;

  *(v0 + 40) = sub_22FE275DC(&unk_22FE4B920, v3);

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22FDC6440;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC6440(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v3[3];
    v10 = v3[4];

    return MEMORY[0x2822009F8](sub_22FDC65A4);
  }
}

uint64_t sub_22FDC65A4()
{
  v1 = v0[7];
  if (v1[2] == 1)
  {
    v2 = v0[8];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1BC8C(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {
    v8 = v0[7];

    sub_22FDD4264();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FDC66C0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v2 + 24) = sub_22FE43374();
  *(v2 + 32) = v3;

  return MEMORY[0x2822009F8](sub_22FDC67B4);
}

uint64_t sub_22FDC67B4()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = 0x180A0F05u >> (8 * *(v0 + 72));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_22FE4B510;

  *(v0 + 40) = sub_22FE275DC(&unk_22FE4B8F0, v3);

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22FDC68D8;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC68D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v3[3];
    v10 = v3[4];

    return MEMORY[0x2822009F8](sub_22FDC6A3C);
  }
}

uint64_t sub_22FDC6A3C()
{
  v1 = v0[7];
  if (v1[2] == 1)
  {
    v2 = v0[8];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1C084(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {
    v8 = v0[7];

    sub_22FDD4264();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FDC6B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(*(FaceRequest - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC6C1C);
}

uint64_t sub_22FDC6C1C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = *(v0[3] + 16);
  v5 = sub_22FE428C4();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = v1 + *(v2 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22FDC6D20;
  v8 = v0[6];
  v9 = v0[2];

  return PhotosXPCClient.fetchFace(type:request:)(v9, 0, v8);
}

uint64_t sub_22FDC6D20()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  sub_22FDD44CC(v3, type metadata accessor for FetchFaceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FDC6E98);
  }

  else
  {
    v5 = v4[6];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_22FDC6E98()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_22FDC6F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  *(v5 + 48) = FaceRequest;
  v7 = *(*(FaceRequest - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC6FC4);
}

uint64_t sub_22FDC6FC4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(*(v0 + 24) + 16);
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v1, v4, v7);
  v8 = v1 + *(v2 + 20);
  *v8 = v5;
  *(v8 + 8) = v3 & 1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_22FDC70D8;
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return PhotosXPCClient.fetchFace(type:request:)(v11, 0, v10);
}

uint64_t sub_22FDC70D8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  sub_22FDD44CC(v3, type metadata accessor for FetchFaceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FDC3644);
  }

  else
  {
    v5 = v4[7];

    v6 = v4[1];

    return v6();
  }
}

uint64_t PhotosFaceInterface.provideAlbumAssetList(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDC7274);
}

uint64_t sub_22FDC7274()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22FDC7330;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_22FDD0A28("provideAlbumAssetList(for:)", 27, 2, v4, v6, v5);
}

uint64_t sub_22FDC7330(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_22FDC7470(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 80) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v3 + 32) = sub_22FE43374();
  *(v3 + 40) = v4;

  return MEMORY[0x2822009F8](sub_22FDC7564);
}

uint64_t sub_22FDC7564()
{
  v13 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 16);
  v12[0] = 2;
  v4 = off_2844D07B0[0];
  v5 = type metadata accessor for AlbumID();
  v6 = v4(v12, v5);
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v1 + 18;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;

  sub_22FDB4380(v6, v8);
  *(v0 + 48) = sub_22FE275DC(&unk_22FE4B988, v9);

  sub_22FD917D4(v6, v8);
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_22FDC772C;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC772C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v3[4];
    v10 = v3[5];

    return MEMORY[0x2822009F8](sub_22FDC7890);
  }
}

uint64_t sub_22FDC7890()
{
  v1 = v0[8];
  if (v1[2] == 1)
  {
    v2 = v0[9];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1B8B4(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {
    v8 = v0[8];

    sub_22FDD4264();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FDC79AC(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 80) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v3 + 32) = sub_22FE43374();
  *(v3 + 40) = v4;

  return MEMORY[0x2822009F8](sub_22FDC7AA0);
}

uint64_t sub_22FDC7AA0()
{
  v13 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 16);
  v12[0] = 2;
  v4 = off_2844D08E0[0];
  v5 = type metadata accessor for ShuffleID();
  v6 = v4(v12, v5);
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v1 + 18;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;

  sub_22FDB4380(v6, v8);
  *(v0 + 48) = sub_22FE275DC(&unk_22FE4B948, v9);

  sub_22FD917D4(v6, v8);
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_22FDC7C68;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC7C68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v3[4];
    v10 = v3[5];

    return MEMORY[0x2822009F8](sub_22FDD4650);
  }
}

uint64_t sub_22FDC7DCC(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 80) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v3 + 32) = sub_22FE43374();
  *(v3 + 40) = v4;

  return MEMORY[0x2822009F8](sub_22FDC7EC0);
}

uint64_t sub_22FDC7EC0()
{
  v13 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 16);
  v12[0] = 2;
  v4 = off_2844D0800;
  v5 = type metadata accessor for DailyID();
  v6 = v4(v12, v5);
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v1 + 18;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;

  sub_22FDB4380(v6, v8);
  *(v0 + 48) = sub_22FE275DC(&unk_22FE4B8D8, v9);

  sub_22FD917D4(v6, v8);
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_22FDC7C68;

  return sub_22FE1C78C();
}

uint64_t PhotosFaceInterface.track(shuffle:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ShuffleID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22FDD4464(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShuffleID);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_22FDD43FC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShuffleID);

  v10 = sub_22FDCF488("track(shuffle:)", 15, 2, &unk_22FE4B700, v9, &unk_2844D0D18, &unk_22FE4B9B8);

  *a2 = v10;
  return result;
}

uint64_t sub_22FDC81F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22FDC8218);
}

uint64_t sub_22FDC8218()
{
  *(v0 + 48) = *(*(v0 + 32) + 16);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDC8310);
}

uint64_t sub_22FDC8310()
{
  v15 = v0;
  v1 = v0[5];
  v2 = *(v0[6] + 16);
  v14[0] = 2;
  v3 = off_2844D08E0[0];
  v4 = type metadata accessor for ShuffleID();
  v5 = v3(v14, v4);
  v6 = v0[3];
  v7 = v5;
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = 13;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  sub_22FDB4380(v7, v9);
  v11 = sub_22FE275DC(&unk_22FE4B978, v10);

  sub_22FD917D4(v7, v9);
  v0[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908);
  sub_22FE43C54();
  v12 = v0[1];

  return v12();
}

uint64_t PhotosFaceInterface.untrack(shuffle:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDC8508);
}

uint64_t sub_22FDC8508()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC85D8;

  return sub_22FDC3968(v2, "untrack(shuffle:)", 17, 2, &unk_22FE4B718, v1);
}

uint64_t sub_22FDC85D8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22FDD4670;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22FD93F14;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_22FDC86F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDC87E4);
}

uint64_t sub_22FDC87E4()
{
  v1 = v0[3];
  v2 = *(*(v0[2] + 16) + 16);
  v3 = UUID.serialized(version:)();
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = 14;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  sub_22FDB4380(v3, v5);
  sub_22FE275DC(&unk_22FE4B970, v6);

  sub_22FD917D4(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FDC890C()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FDD4674;
  v3 = *(v0 + 16);

  return sub_22FDD2308("listShuffles()", 14, 2, v3);
}

uint64_t sub_22FDC89E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v19 = a5;
  v10 = sub_22FE428C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v13);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

  v16 = sub_22FDCF488(a2, a3, 2, a4, v15, &unk_2844D0D18, &unk_22FE4B9B8);

  *v19 = v16;
  return result;
}

uint64_t sub_22FDC8B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(*(FaceRequest - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC8C04);
}

uint64_t sub_22FDC8C04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = *(v0[3] + 16);
  v5 = sub_22FE428C4();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = v1 + *(v2 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22FDC8D08;
  v8 = v0[6];
  v9 = v0[2];

  return PhotosXPCClient.fetchFace(type:request:)(v9, 1, v8);
}

uint64_t sub_22FDC8D08()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  sub_22FDD44CC(v3, type metadata accessor for FetchFaceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FDD4664);
  }

  else
  {
    v5 = v4[6];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_22FDC8EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v25 = a7;
  v11 = sub_22FE428C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  (*(v12 + 32))(v18 + v16, v15, v11);
  v19 = v18 + v17;
  *v19 = a2;
  *(v19 + 8) = a3 & 1;

  v20 = sub_22FDCF488(v22, v23, 2, v24, v18, &unk_2844D0D18, &unk_22FE4B9B8);

  *v25 = v20;
  return result;
}

uint64_t sub_22FDC904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  *(v5 + 48) = FaceRequest;
  v7 = *(*(FaceRequest - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC90E8);
}

uint64_t sub_22FDC90E8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(*(v0 + 24) + 16);
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v1, v4, v7);
  v8 = v1 + *(v2 + 20);
  *v8 = v5;
  *(v8 + 8) = v3 & 1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_22FDC91FC;
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return PhotosXPCClient.fetchFace(type:request:)(v11, 1, v10);
}

uint64_t sub_22FDC91FC()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  sub_22FDD44CC(v3, type metadata accessor for FetchFaceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FDD4668);
  }

  else
  {
    v5 = v4[7];

    v6 = v4[1];

    return v6();
  }
}

uint64_t PhotosFaceInterface.fetchByDay(shuffle:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDC9394);
}

uint64_t sub_22FDC9394()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC9468;

  return sub_22FDC4404("fetchByDay(shuffle:)", 20, 2, &unk_22FE4B760, v1);
}

uint64_t sub_22FDC9468(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FDC5940);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_22FDC95C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  v3[5] = sub_22FE43374();
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_22FDC96B4);
}

uint64_t sub_22FDC96B4()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC9754;
  v3 = v0[4];

  return PhotosXPCClient.fetchFaceByDay(type:request:)(1, v3);
}

uint64_t sub_22FDC9754(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v4[8] = a1;
    v9 = v4[5];
    v10 = v4[6];

    return MEMORY[0x2822009F8](sub_22FDC989C);
  }
}

uint64_t PhotosFaceInterface.provideShuffleAssetList(people:pets:nature:cityscape:)(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 42) = a4;
  *(v5 + 41) = a3;
  *(v5 + 40) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return MEMORY[0x2822009F8](sub_22FDC98EC);
}

uint64_t sub_22FDC98EC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_22FDC99B0;
  v4 = *(v0 + 42);
  v5 = *(v0 + 41);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_22FDD14E4("provideShuffleAssetList(people:pets:nature:cityscape:)", 54, 2, v7, v8, v6, v5, v4);
}

uint64_t sub_22FDC99B0(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_22FDC9AF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v21 = *MEMORY[0x277D85DE8];
  *(v6 + 214) = a6;
  *(v6 + 213) = a5;
  *(v6 + 212) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_22FE42EF4();
  *(v6 + 40) = v7;
  v8 = *(v7 - 8);
  *(v6 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v10 = sub_22FE430A4();
  *(v6 + 64) = v10;
  v11 = *(v10 - 8);
  *(v6 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v13 = sub_22FE42F24();
  *(v6 + 88) = v13;
  v14 = *(v13 - 8);
  *(v6 + 96) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v16 = type metadata accessor for ShuffleID();
  *(v6 + 112) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v6 + 128) = sub_22FE43374();
  *(v6 + 136) = v18;
  v19 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FDC9D68);
}

uint64_t sub_22FDC9D68()
{
  v65 = v0;
  v64[5] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  v2 = *(v0 + 32);
  v54 = *(*(v0 + 24) + 16);
  sub_22FE42F14();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 32);
    v5 = sub_22FDC04C4(*(v2 + 16), 0);
    v6 = sub_22FDC1C54(v64, v5 + 4, v3, v4);

    sub_22FDAF1A8();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v64[0] = v5;
  sub_22FDC117C(v64);
  v7 = v64[0];
  v8 = *(v64[0] + 2);
  if (v8)
  {
    v9 = 0;
    v60 = v64[0];
    v62 = (*(v0 + 72) + 8);
    v10 = v64[0] + 40;
    v58 = *(v64[0] + 2);
    while (1)
    {
      if (v9 >= *(v7 + 2))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v13 = *(v0 + 80);
      v14 = *(v0 + 64);
      v16 = *(v10 - 1);
      v15 = *v10;

      sub_22FE43094();
      v17 = sub_22FE43074();
      v19 = v18;
      (*v62)(v13, v14);
      if (v19 >> 60 == 15)
      {
        goto LABEL_43;
      }

      v20 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        break;
      }

      if (!v20)
      {
        v21 = *(v0 + 104);
        v56 = *(v0 + 88);
        *(v0 + 184) = v17;
        *(v0 + 192) = v19;
        *(v0 + 194) = BYTE2(v19);
        *(v0 + 195) = BYTE3(v19);
        *(v0 + 196) = BYTE4(v19);
        *(v0 + 197) = BYTE5(v19);
        sub_22FDD42D8(&qword_27DAE44F0, MEMORY[0x277CC5540]);
LABEL_8:
        sub_22FE42ED4();
        sub_22FDC27F0(v17, v19);
        sub_22FDC27F0(v17, v19);
        goto LABEL_9;
      }

      if (v17 >> 32 < v17)
      {
        goto LABEL_39;
      }

      if (sub_22FE42654() && __OFSUB__(v17, sub_22FE42684()))
      {
        goto LABEL_42;
      }

      v26 = *(v0 + 104);
      v27 = *(v0 + 88);
      sub_22FE42674();
      sub_22FDD42D8(&qword_27DAE44F0, MEMORY[0x277CC5540]);
      sub_22FE42ED4();
      sub_22FDC27F0(v17, v19);
      sub_22FDC27F0(v17, v19);
      v8 = v58;
      v7 = v60;
LABEL_9:
      ++v9;
      v10 += 16;
      if (v8 == v9)
      {
        goto LABEL_24;
      }
    }

    if (v20 == 2)
    {
      v22 = *(v17 + 16);
      v23 = *(v17 + 24);

      if (sub_22FE42654() && __OFSUB__(v22, sub_22FE42684()))
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v23, v22))
      {
        goto LABEL_40;
      }

      v24 = *(v0 + 104);
      v25 = *(v0 + 88);
      sub_22FE42674();
      sub_22FDD42D8(&qword_27DAE44F0, MEMORY[0x277CC5540]);
      v8 = v58;
      v7 = v60;
    }

    else
    {
      v11 = *(v0 + 104);
      v12 = *(v0 + 88);
      sub_22FDD42D8(&qword_27DAE44F0, MEMORY[0x277CC5540]);
      *(v0 + 198) = 0;
      *(v0 + 204) = 0;
    }

    goto LABEL_8;
  }

LABEL_24:
  v28 = *(v0 + 212);

  v63 = *(v0 + 214);
  if (v28)
  {
    if (*(v0 + 214))
    {
      v29 = 3;
    }

    else
    {
      v29 = 1;
    }

    if (*(v0 + 213))
    {
LABEL_29:
      v29 |= 4u;
      v61 = 1;
      goto LABEL_35;
    }
  }

  else
  {
    if (*(v0 + 214))
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    if (*(v0 + 213))
    {
      goto LABEL_29;
    }
  }

  v61 = 0;
LABEL_35:
  v31 = *(v0 + 112);
  v30 = *(v0 + 120);
  v32 = *(v0 + 104);
  v33 = *(v0 + 48);
  v34 = *(v0 + 56);
  v59 = *(v0 + 212);
  v52 = *(v0 + 40);
  v53 = *(v0 + 96);
  v55 = *(v0 + 32);
  v57 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41E8, &qword_22FE4A2D8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_22FE49F60;
  *(v35 + 32) = v29;
  v36 = sub_22FDC22A8(v35);
  v38 = v37;

  sub_22FDC089C(v36, v38);
  sub_22FD917D4(v36, v38);
  sub_22FE42F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44F8, &qword_22FE4B960);
  sub_22FE42EE4();
  v39 = *(v0 + 175);
  v40 = *(v0 + 174);
  v41 = *(v0 + 173);
  v42 = *(v0 + 172);
  v43 = *(v0 + 171);
  v44 = *(v0 + 170);
  v45 = *(v0 + 169);
  v46 = *(v0 + 168);
  v51 = *(v0 + 176);
  sub_22FE42894();
  (*(v33 + 8))(v34, v52);
  (*(v53 + 8))(v32, v57);
  *(v30 + v31[5]) = v55;
  *(v30 + v31[6]) = v59;
  *(v30 + v31[7]) = v61;
  *(v30 + v31[8]) = v63;

  v47 = swift_task_alloc();
  *(v0 + 144) = v47;
  *v47 = v0;
  v47[1] = sub_22FDCA4A4;
  v48 = *(v0 + 120);
  v49 = *MEMORY[0x277D85DE8];

  return sub_22FDC79AC(1, v48);
}

uint64_t sub_22FDCA4A4(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = v1;

  v7 = v4[15];
  if (v1)
  {
    sub_22FDD44CC(v7, type metadata accessor for ShuffleID);
    v8 = v4[16];
    v9 = v4[17];
    v10 = sub_22FDCA708;
  }

  else
  {
    v4[20] = a1;
    sub_22FDD44CC(v7, type metadata accessor for ShuffleID);
    v11 = v4[16];
    v12 = v4[17];
    v10 = sub_22FDCA640;
  }

  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_22FDCA640()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  **(v0 + 16) = *(v0 + 160);

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_22FDCA708()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[19];
  v7 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t PhotosFaceInterface.provideShuffleAssetList(shuffle:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDCA7E4);
}

uint64_t sub_22FDCA7E4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCA8B8;

  return sub_22FDC4078("provideShuffleAssetList(shuffle:)", 33, 2, &unk_22FE4B790, v1);
}

uint64_t sub_22FDCA8B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FDD4670);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_22FDCAA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4568, &qword_22FE4B938) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for ShuffleID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  v3[9] = sub_22FE43374();
  v3[10] = v8;

  return MEMORY[0x2822009F8](sub_22FDCAB98);
}

uint64_t sub_22FDCAB98()
{
  v0[11] = *(v0[3] + 16);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_22FDCAC48;

  return sub_22FDC6228(1);
}

uint64_t sub_22FDCAC48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[5];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v4[14] = a1;
    v11 = v4[9];
    v12 = v4[10];

    return MEMORY[0x2822009F8](sub_22FDCADA8);
  }
}

uint64_t sub_22FDCADA8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(swift_task_alloc() + 16) = v6;
  sub_22FDCB2C8(sub_22FDD42B8, v1, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_22FD93E6C(*(v0 + 40), &qword_27DAE4568, &qword_22FE4B938);
    v7 = *(v0 + 64);
    v8 = *(v0 + 40);
    **(v0 + 16) = MEMORY[0x277D84F90];

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    sub_22FDD43FC(*(v0 + 40), *(v0 + 64), type metadata accessor for ShuffleID);
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *v11 = v0;
    v11[1] = sub_22FDCAF7C;
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);

    return sub_22FDC79AC(1, v13);
  }
}

uint64_t sub_22FDCAF7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_22FDCB13C;
  }

  else
  {
    v4[17] = a1;
    v10 = v4[9];
    v11 = v4[10];
    v9 = sub_22FDCB0A4;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_22FDCB0A4()
{
  sub_22FDD44CC(*(v0 + 64), type metadata accessor for ShuffleID);
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  **(v0 + 16) = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FDCB13C()
{
  sub_22FDD44CC(v0[8], type metadata accessor for ShuffleID);
  v1 = v0[16];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FDCB1C8()
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return _s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1;
}

uint64_t sub_22FDCB2C8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ShuffleID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_22FDD4464(v13, v11, type metadata accessor for ShuffleID);
      v15 = a1(v11);
      if (v3)
      {
        return sub_22FDD44CC(v11, type metadata accessor for ShuffleID);
      }

      if (v15)
      {
        break;
      }

      sub_22FDD44CC(v11, type metadata accessor for ShuffleID);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_22FDD43FC(v11, v19, type metadata accessor for ShuffleID);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t PhotosFaceInterface.track(gallery:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ShuffleID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22FDD4464(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShuffleID);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_22FDD43FC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShuffleID);

  v10 = sub_22FDCF488("track(gallery:)", 15, 2, &unk_22FE4B7A8, v9, &unk_2844D0D18, &unk_22FE4B9B8);

  *a2 = v10;
  return result;
}

uint64_t sub_22FDCB600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22FDCB624);
}

uint64_t sub_22FDCB624()
{
  *(v0 + 48) = *(*(v0 + 32) + 16);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCB71C);
}

uint64_t sub_22FDCB71C()
{
  v15 = v0;
  v1 = v0[5];
  v2 = *(v0[6] + 16);
  v14[0] = 2;
  v3 = off_2844D08E0[0];
  v4 = type metadata accessor for ShuffleID();
  v5 = v3(v14, v4);
  v6 = v0[3];
  v7 = v5;
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = 8;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  sub_22FDB4380(v7, v9);
  v11 = sub_22FE275DC(&unk_22FE4B930, v10);

  sub_22FD917D4(v7, v9);
  v0[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908);
  sub_22FE43C54();
  v12 = v0[1];

  return v12();
}

uint64_t PhotosFaceInterface.untrack(gallery:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDCB914);
}

uint64_t sub_22FDCB914()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC85D8;

  return sub_22FDC3968(v2, "untrack(gallery:)", 17, 2, &unk_22FE4B7C0, v1);
}

uint64_t sub_22FDCB9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCBAD4);
}

uint64_t sub_22FDCBAD4()
{
  v1 = v0[3];
  v2 = *(*(v0[2] + 16) + 16);
  v3 = UUID.serialized(version:)();
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = 9;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  sub_22FDB4380(v3, v5);
  sub_22FE275DC(&unk_22FE4B928, v6);

  sub_22FD917D4(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FDCBBFC()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FDD4674;
  v3 = *(v0 + 16);

  return sub_22FDD2F08("listGalleries()", 15, 2, v3);
}

uint64_t sub_22FDCBCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(*(FaceRequest - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDCBD70);
}

uint64_t sub_22FDCBD70()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = *(v0[3] + 16);
  v5 = sub_22FE428C4();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = v1 + *(v2 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22FDC8D08;
  v8 = v0[6];
  v9 = v0[2];

  return PhotosXPCClient.fetchFace(type:request:)(v9, 2, v8);
}

uint64_t sub_22FDCBEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  *(v5 + 48) = FaceRequest;
  v7 = *(*(FaceRequest - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDCBF3C);
}

uint64_t sub_22FDCBF3C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(*(v0 + 24) + 16);
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v1, v4, v7);
  v8 = v1 + *(v2 + 20);
  *v8 = v5;
  *(v8 + 8) = v3 & 1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_22FDC91FC;
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return PhotosXPCClient.fetchFace(type:request:)(v11, 2, v10);
}

uint64_t PhotosFaceInterface.track(daily:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for DailyID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22FDD4464(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DailyID);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_22FDD43FC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DailyID);

  v10 = sub_22FDCF488("track(daily:)", 13, 2, &unk_22FE4B800, v9, &unk_2844D0D18, &unk_22FE4B9B8);

  *a2 = v10;
  return result;
}

uint64_t sub_22FDCC1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22FDCC1E0);
}

uint64_t sub_22FDCC1E0()
{
  *(v0 + 48) = *(*(v0 + 32) + 16);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCC2D8);
}

uint64_t sub_22FDCC2D8()
{
  v15 = v0;
  v1 = v0[5];
  v2 = *(v0[6] + 16);
  v14[0] = 2;
  v3 = off_2844D0800;
  v4 = type metadata accessor for DailyID();
  v5 = v3(v14, v4);
  v6 = v0[3];
  v7 = v5;
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = 22;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  sub_22FDB4380(v7, v9);
  v11 = sub_22FE275DC(&unk_22FE4B900, v10);

  sub_22FD917D4(v7, v9);
  v0[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908);
  sub_22FE43C54();
  v12 = v0[1];

  return v12();
}

uint64_t PhotosFaceInterface.untrack(daily:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDCC4D0);
}

uint64_t sub_22FDCC4D0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC85D8;

  return sub_22FDC3968(v2, "untrack(daily:)", 15, 2, &unk_22FE4B818, v1);
}

uint64_t sub_22FDCC5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCC690);
}

uint64_t sub_22FDCC690()
{
  v1 = v0[3];
  v2 = *(*(v0[2] + 16) + 16);
  v3 = UUID.serialized(version:)();
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = 23;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  sub_22FDB4380(v3, v5);
  sub_22FE275DC(&unk_22FE4B8F8, v6);

  sub_22FD917D4(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FDCC7B8()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FDD4674;
  v3 = *(v0 + 16);

  return sub_22FDD36D4("listDailies()", 13, 2, v3);
}

uint64_t sub_22FDCC894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(*(FaceRequest - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDCC92C);
}

uint64_t sub_22FDCC92C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = *(v0[3] + 16);
  v5 = sub_22FE428C4();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = v1 + *(v2 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22FDC8D08;
  v8 = v0[6];
  v9 = v0[2];

  return PhotosXPCClient.fetchFace(type:request:)(v9, 3, v8);
}

uint64_t sub_22FDCCA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  *(v5 + 48) = FaceRequest;
  v7 = *(*(FaceRequest - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDCCAF8);
}

uint64_t sub_22FDCCAF8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(*(v0 + 24) + 16);
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v1, v4, v7);
  v8 = v1 + *(v2 + 20);
  *v8 = v5;
  *(v8 + 8) = v3 & 1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_22FDC91FC;
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return PhotosXPCClient.fetchFace(type:request:)(v11, 3, v10);
}

uint64_t sub_22FDCCC2C()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FDD4674;
  v3 = *(v0 + 16);

  return sub_22FDD1A18("provideDailyAssetList()", 23, 2, v3);
}

uint64_t PhotosFaceInterface.makeFullMask(localIdentifier:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22FDCCCFC);
}

uint64_t sub_22FDCCCFC()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCCDD4;

  return sub_22FDC4B60(v0[1].i64, "makeFullMask(localIdentifier:)", 30, 2, &unk_22FE4B870, v1);
}

uint64_t sub_22FDCCDD4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_22FDC6E98;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_22FDCCEF0;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_22FDCCF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  v3[5] = sub_22FE43374();
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_22FDCD000);
}

uint64_t sub_22FDCD000()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCD0A0;
  v3 = v0[4];

  return PhotosXPCClient.generateMask(identifier:)(v3);
}

uint64_t sub_22FDCD0A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    v6[8] = a2;
    v6[9] = a1;
    v11 = v6[5];
    v12 = v6[6];

    return MEMORY[0x2822009F8](sub_22FDCD1F8);
  }
}

uint64_t PhotosFaceInterface.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PhotosFaceInterface.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FDCD278(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a8;
  *(v8 + 208) = a7;
  *(v8 + 32) = a2;
  *(v8 + 40) = a5;
  *(v8 + 24) = a1;
  v10 = type metadata accessor for StoredPhoto(0);
  *(v8 + 64) = v10;
  v11 = *(v10 - 8);
  *(v8 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45A8, &qword_22FE4B9F0);
  *(v8 + 112) = v14;
  v15 = *(v14 - 8);
  *(v8 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45B0, &qword_22FE4B9F8);
  *(v8 + 136) = v17;
  v18 = *(v17 - 8);
  *(v8 + 144) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v20 = swift_task_alloc();
  *(v8 + 160) = v20;
  v24 = (a3 + *a3);
  v21 = a3[1];
  v22 = swift_task_alloc();
  *(v8 + 168) = v22;
  *v22 = v8;
  v22[1] = sub_22FDCD510;

  return v24(v20);
}

uint64_t sub_22FDCD510()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_22FDCD770;
  }

  else
  {
    v3 = sub_22FDCD624;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDCD624()
{
  v1 = v0[16];
  (*(v0[18] + 16))(v0[19], v0[20], v0[17]);
  sub_22FDBC930(&qword_27DAE45B8, &qword_27DAE45B0, &qword_22FE4B9F8);
  sub_22FE43464();
  v2 = sub_22FDBC930(&qword_27DAE45C0, &qword_27DAE45A8, &qword_22FE4B9F0);
  v3 = *(MEMORY[0x277D856D8] + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_22FDCD820;
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  return MEMORY[0x282200310](v6, 0, 0, v0 + 2, v7, v2);
}

uint64_t sub_22FDCD770()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];

  v8 = v0[1];
  v9 = v0[22];

  return v8();
}

uint64_t sub_22FDCD820()
{
  v2 = *(*v1 + 184);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_22FDCDEA4;
  }

  else
  {
    v3 = sub_22FDCD930;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDCD930()
{
  v56 = v0;
  v1 = *(v0 + 104);
  if ((*(*(v0 + 72) + 48))(v1, 1, *(v0 + 64)) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    if (qword_27DAE2AF0 != -1)
    {
      swift_once();
    }

    v2 = sub_22FE42D34();
    __swift_project_value_buffer(v2, qword_27DAE5190);
    v3 = sub_22FE42D14();
    v4 = sub_22FE436C4();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    if (v5)
    {
      v9 = *(v0 + 48);
      v50 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = *(v0 + 208);
      v52 = *(v0 + 160);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55 = v13;
      *v12 = 136315394;
      v14 = sub_22FE43914();
      v16 = sub_22FD98218(v14, v15, &v55);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v50;
      _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished.", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23190C380](v13, -1, -1);
      MEMORY[0x23190C380](v12, -1, -1);

      (*(v7 + 8))(v52, v8);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v38 = *(v0 + 152);
    v37 = *(v0 + 160);
    v39 = *(v0 + 128);
    v41 = *(v0 + 96);
    v40 = *(v0 + 104);
    v43 = *(v0 + 80);
    v42 = *(v0 + 88);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    sub_22FDD43FC(v1, *(v0 + 96), type metadata accessor for StoredPhoto);
    if (qword_27DAE2AF0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19 = sub_22FE42D34();
    __swift_project_value_buffer(v19, qword_27DAE5190);
    sub_22FDD4464(v18, v17, type metadata accessor for StoredPhoto);
    v20 = sub_22FE42D14();
    v21 = sub_22FE436C4();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 88);
    if (v22)
    {
      v24 = *(v0 + 80);
      v51 = *(v0 + 56);
      v53 = *(v0 + 64);
      v26 = *(v0 + 40);
      v25 = *(v0 + 48);
      v27 = *(v0 + 208);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55 = v29;
      *v28 = 136315650;
      v30 = sub_22FE43914();
      v32 = sub_22FD98218(v30, v31, &v55);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v51;
      *(v28 + 22) = 2080;
      sub_22FDD4464(v23, v24, type metadata accessor for StoredPhoto);
      v33 = sub_22FE430B4();
      v35 = v34;
      sub_22FDD44CC(v23, type metadata accessor for StoredPhoto);
      v36 = sub_22FD98218(v33, v35, &v55);

      *(v28 + 24) = v36;
      _os_log_impl(&dword_22FD6D000, v20, v21, "%s (%ld) has next result: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v29, -1, -1);
      MEMORY[0x23190C380](v28, -1, -1);
    }

    else
    {

      sub_22FDD44CC(v23, type metadata accessor for StoredPhoto);
    }

    v54 = (*(v0 + 24) + **(v0 + 24));
    v46 = *(*(v0 + 24) + 4);
    v47 = swift_task_alloc();
    *(v0 + 192) = v47;
    *v47 = v0;
    v47[1] = sub_22FDCE160;
    v48 = *(v0 + 96);
    v49 = *(v0 + 32);

    return v54(v48);
  }
}

uint64_t sub_22FDCDEA4()
{
  v34 = v0;
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v1 = *(v0 + 16);
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436A4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 160);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);
  if (v6)
  {
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    v31 = *(v0 + 136);
    v32 = *(v0 + 160);
    v10 = *(v0 + 40);
    v11 = *(v0 + 208);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v12 = 136315650;
    v15 = sub_22FE43914();
    v17 = sub_22FD98218(v15, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v30;
    *(v12 + 22) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v13 = v19;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) failed: %@", v12, 0x20u);
    sub_22FD93E6C(v13, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23190C380](v14, -1, -1);
    MEMORY[0x23190C380](v12, -1, -1);

    (*(v9 + 8))(v32, v31);
  }

  else
  {

    (*(v9 + 8))(v7, v8);
  }

  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 128);
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22FDCE160()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_22FDCE370;
  }

  else
  {
    v3 = sub_22FDCE274;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDCE274()
{
  sub_22FDD44CC(v0[12], type metadata accessor for StoredPhoto);
  v1 = sub_22FDBC930(&qword_27DAE45C0, &qword_27DAE45A8, &qword_22FE4B9F0);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_22FDCD820;
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];

  return MEMORY[0x282200310](v5, 0, 0, v0 + 2, v6, v1);
}

uint64_t sub_22FDCE370()
{
  v37 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  sub_22FDD44CC(*(v0 + 96), type metadata accessor for StoredPhoto);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 200);
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v5 = sub_22FE42D34();
  __swift_project_value_buffer(v5, qword_27DAE5190);
  v6 = v4;
  v7 = sub_22FE42D14();
  v8 = sub_22FE436A4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  if (v9)
  {
    v32 = *(v0 + 48);
    v33 = *(v0 + 56);
    v34 = *(v0 + 136);
    v35 = *(v0 + 160);
    v13 = *(v0 + 40);
    v14 = *(v0 + 208);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v15 = 136315650;
    v18 = sub_22FE43914();
    v20 = sub_22FD98218(v18, v19, &v36);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v33;
    *(v15 + 22) = 2112;
    v21 = v4;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v22;
    *v16 = v22;
    _os_log_impl(&dword_22FD6D000, v7, v8, "%s (%ld) failed: %@", v15, 0x20u);
    sub_22FD93E6C(v16, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190C380](v17, -1, -1);
    MEMORY[0x23190C380](v15, -1, -1);

    (*(v12 + 8))(v35, v34);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v25 = *(v0 + 128);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v29 = *(v0 + 80);
  v28 = *(v0 + 88);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_22FDCE650(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a8;
  *(v8 + 208) = a7;
  *(v8 + 32) = a2;
  *(v8 + 40) = a5;
  *(v8 + 24) = a1;
  v10 = type metadata accessor for StoredPhoto(0);
  *(v8 + 64) = v10;
  v11 = *(v10 - 8);
  *(v8 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4588, &qword_22FE4B9C8);
  *(v8 + 112) = v14;
  v15 = *(v14 - 8);
  *(v8 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4590, &qword_22FE4B9D0);
  *(v8 + 136) = v17;
  v18 = *(v17 - 8);
  *(v8 + 144) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v20 = swift_task_alloc();
  *(v8 + 160) = v20;
  v24 = (a3 + *a3);
  v21 = a3[1];
  v22 = swift_task_alloc();
  *(v8 + 168) = v22;
  *v22 = v8;
  v22[1] = sub_22FDCE8E8;

  return v24(v20);
}

uint64_t sub_22FDCE8E8()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_22FDD466C;
  }

  else
  {
    v3 = sub_22FDCE9FC;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDCE9FC()
{
  v1 = v0[16];
  (*(v0[18] + 16))(v0[19], v0[20], v0[17]);
  sub_22FDBC930(&qword_27DAE4598, &qword_27DAE4590, &qword_22FE4B9D0);
  sub_22FE43464();
  v2 = sub_22FDBC930(&qword_27DAE45A0, &qword_27DAE4588, &qword_22FE4B9C8);
  v3 = *(MEMORY[0x277D856D8] + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_22FDCEB48;
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  return MEMORY[0x282200310](v6, 0, 0, v0 + 2, v7, v2);
}

uint64_t sub_22FDCEB48()
{
  v2 = *(*v1 + 184);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_22FDD4658;
  }

  else
  {
    v3 = sub_22FDCEC58;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDCEC58()
{
  v56 = v0;
  v1 = *(v0 + 104);
  if ((*(*(v0 + 72) + 48))(v1, 1, *(v0 + 64)) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    if (qword_27DAE2AF0 != -1)
    {
      swift_once();
    }

    v2 = sub_22FE42D34();
    __swift_project_value_buffer(v2, qword_27DAE5190);
    v3 = sub_22FE42D14();
    v4 = sub_22FE436C4();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    if (v5)
    {
      v9 = *(v0 + 48);
      v50 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = *(v0 + 208);
      v52 = *(v0 + 160);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55 = v13;
      *v12 = 136315394;
      v14 = sub_22FE43914();
      v16 = sub_22FD98218(v14, v15, &v55);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v50;
      _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished.", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23190C380](v13, -1, -1);
      MEMORY[0x23190C380](v12, -1, -1);

      (*(v7 + 8))(v52, v8);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v38 = *(v0 + 152);
    v37 = *(v0 + 160);
    v39 = *(v0 + 128);
    v41 = *(v0 + 96);
    v40 = *(v0 + 104);
    v43 = *(v0 + 80);
    v42 = *(v0 + 88);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    sub_22FDD43FC(v1, *(v0 + 96), type metadata accessor for StoredPhoto);
    if (qword_27DAE2AF0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19 = sub_22FE42D34();
    __swift_project_value_buffer(v19, qword_27DAE5190);
    sub_22FDD4464(v18, v17, type metadata accessor for StoredPhoto);
    v20 = sub_22FE42D14();
    v21 = sub_22FE436C4();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 88);
    if (v22)
    {
      v24 = *(v0 + 80);
      v51 = *(v0 + 56);
      v53 = *(v0 + 64);
      v26 = *(v0 + 40);
      v25 = *(v0 + 48);
      v27 = *(v0 + 208);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55 = v29;
      *v28 = 136315650;
      v30 = sub_22FE43914();
      v32 = sub_22FD98218(v30, v31, &v55);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v51;
      *(v28 + 22) = 2080;
      sub_22FDD4464(v23, v24, type metadata accessor for StoredPhoto);
      v33 = sub_22FE430B4();
      v35 = v34;
      sub_22FDD44CC(v23, type metadata accessor for StoredPhoto);
      v36 = sub_22FD98218(v33, v35, &v55);

      *(v28 + 24) = v36;
      _os_log_impl(&dword_22FD6D000, v20, v21, "%s (%ld) has next result: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v29, -1, -1);
      MEMORY[0x23190C380](v28, -1, -1);
    }

    else
    {

      sub_22FDD44CC(v23, type metadata accessor for StoredPhoto);
    }

    v54 = (*(v0 + 24) + **(v0 + 24));
    v46 = *(*(v0 + 24) + 4);
    v47 = swift_task_alloc();
    *(v0 + 192) = v47;
    *v47 = v0;
    v47[1] = sub_22FDCF1CC;
    v48 = *(v0 + 96);
    v49 = *(v0 + 32);

    return v54(v48);
  }
}

uint64_t sub_22FDCF1CC()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_22FDD464C;
  }

  else
  {
    v3 = sub_22FDCF2E0;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDCF2E0()
{
  sub_22FDD44CC(v0[12], type metadata accessor for StoredPhoto);
  v1 = sub_22FDBC930(&qword_27DAE45A0, &qword_27DAE4588, &qword_22FE4B9C8);
  v2 = *(MEMORY[0x277D856D8] + 4);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_22FDCEB48;
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];

  return MEMORY[0x282200310](v5, 0, 0, v0 + 2, v6, v1);
}

uint64_t sub_22FDCF3DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDC3294(a1, v5, v4);
}

void *sub_22FDCF488(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v12 = sub_22FE177CC(100);
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v13 = sub_22FE42D34();
  __swift_project_value_buffer(v13, qword_27DAE5190);
  v14 = sub_22FE42D14();
  v15 = sub_22FE436C4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v16 = 136315394;
    v17 = sub_22FE43914();
    v19 = a2;
    v20 = a3;
    v21 = a7;
    v22 = sub_22FD98218(v17, v18, &v28);

    *(v16 + 4) = v22;
    a7 = v21;
    a3 = v20;
    a2 = v19;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v12;
    _os_log_impl(&dword_22FD6D000, v14, v15, "Executing %s (%ld)", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23190C380](v26, -1, -1);
    MEMORY[0x23190C380](v16, -1, -1);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  *(v23 + 48) = a3;
  *(v23 + 56) = v12;
  v24 = sub_22FE2738C(a7, v23);

  return v24;
}

uint64_t sub_22FDCF69C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 40) = a2;
  *(v6 + 48) = a4;
  *(v6 + 120) = a3;
  *(v6 + 32) = a1;
  return MEMORY[0x2822009F8](sub_22FDCF6C8);
}

uint64_t sub_22FDCF6C8()
{
  v15 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 72) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 80) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCF910);
}

uint64_t sub_22FDCF910()
{
  v1 = *(v0[6] + 16);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCF9B0;
  v4 = v0[7];
  v3 = v0[8];

  return PhotosXPCClient.sendMessage(request:)(v4, v3);
}

uint64_t sub_22FDCF9B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v8 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v6 = sub_22FDCFCA8;
  }

  else
  {
    v6 = sub_22FDCFAC8;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22FDCFAC8()
{
  v25 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  swift_bridgeObjectRetain_n();
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v23 = *(v0 + 104);
    v6 = *(v0 + 72);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315650;
    v12 = sub_22FE43914();
    v14 = sub_22FD98218(v12, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2080;
    *(v0 + 16) = v5;
    *(v0 + 24) = v23;
    v15 = sub_22FE430B4();
    v17 = sub_22FD98218(v15, v16, &v24);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v11, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 104);
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 96);
  v21 = *(v0 + 104);

  return v19(v20, v21);
}

uint64_t sub_22FDCFCA8()
{
  v24 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v22 = *(v0 + 72);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315650;
    v13 = sub_22FE43914();
    v15 = sub_22FD98218(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v22;
    *(v10 + 22) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) failed: %@", v10, 0x20u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  v18 = *(v0 + 112);
  swift_willThrow();
  v19 = *(v0 + 8);
  v20 = *(v0 + 112);

  return v19();
}

uint64_t sub_22FDCFE8C(uint64_t a1)
{
  v4 = *(type metadata accessor for AlbumID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDC5440(a1, v6, v1 + v5);
}

uint64_t sub_22FDCFF70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDC59A4(a1, v5, v4);
}

uint64_t sub_22FDD001C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 88) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22FDD0044);
}

uint64_t sub_22FDD0044()
{
  v15 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 48) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDD028C);
}

uint64_t sub_22FDD028C()
{
  v1 = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_22FDD0338;

  return sub_22FDC5D90(0);
}

uint64_t sub_22FDD0338(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_22FDD0638;
  }

  else
  {
    v5 = sub_22FDD044C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FDD044C()
{
  v23 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  swift_bridgeObjectRetain_n();
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315650;
    v12 = sub_22FE43914();
    v14 = sub_22FD98218(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2080;
    *(v0 + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4578, &qword_22FE4B998);
    v15 = sub_22FE430B4();
    v17 = sub_22FD98218(v15, v16, &v22);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v11, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 72);
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 72);

  return v19(v20);
}

uint64_t sub_22FDD0638()
{
  v24 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v22 = *(v0 + 48);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315650;
    v13 = sub_22FE43914();
    v15 = sub_22FD98218(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v22;
    *(v10 + 22) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) failed: %@", v10, 0x20u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  v18 = *(v0 + 80);
  swift_willThrow();
  v19 = *(v0 + 8);
  v20 = *(v0 + 80);

  return v19();
}

uint64_t sub_22FDD081C(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDC6B84(a1, v6, v1 + v5);
}

uint64_t sub_22FDD0900(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD8C738;

  return sub_22FDC6F28(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_22FDD0A28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 136) = a3;
  *(v6 + 24) = a1;
  v7 = type metadata accessor for AlbumID();
  *(v6 + 64) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDD0AC8);
}

uint64_t sub_22FDD0AC8()
{
  v16 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 80) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 88) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v0 + 96) = sub_22FE43374();
  *(v0 + 104) = v13;

  return MEMORY[0x2822009F8](sub_22FDD0D10);
}

uint64_t sub_22FDD0D10()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = *(v0[5] + 16);
  sub_22FE428B4();
  v6 = (v1 + *(v2 + 20));
  *v6 = v4;
  v6[1] = v3;

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_22FDD0DF8;
  v8 = v0[9];

  return sub_22FDC7470(0, v8);
}

uint64_t sub_22FDD0DF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  sub_22FDD44CC(v3[9], type metadata accessor for AlbumID);
  if (v1)
  {
    v7 = v4[12];
    v8 = v4[13];
    v9 = sub_22FDD1148;
  }

  else
  {
    v9 = sub_22FDD0F54;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_22FDD0F54()
{
  v24 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  swift_bridgeObjectRetain_n();
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 80);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 136);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315650;
    v12 = sub_22FE43914();
    v14 = sub_22FD98218(v12, v13, &v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2080;
    *(v0 + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44B0, &qword_22FE4B8D0);
    v15 = sub_22FE430B4();
    v17 = sub_22FD98218(v15, v16, &v23);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v11, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 120);
  }

  v19 = *(v0 + 72);

  v20 = *(v0 + 8);
  v21 = *(v0 + 120);

  return v20(v21);
}

uint64_t sub_22FDD1164()
{
  v25 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v23 = *(v0 + 80);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 136);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315650;
    v13 = sub_22FE43914();
    v15 = sub_22FD98218(v13, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v23;
    *(v10 + 22) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) failed: %@", v10, 0x20u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 72);
  swift_willThrow();

  v20 = *(v0 + 8);
  v21 = *(v0 + 128);

  return v20();
}

uint64_t sub_22FDD1354(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDC81F4(a1, v6, v1 + v5);
}

uint64_t sub_22FDD1438(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDC86F4(a1, v5, v4);
}

uint64_t sub_22FDD14E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 99) = a8;
  *(v8 + 98) = a7;
  *(v8 + 97) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 96) = a3;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  return MEMORY[0x2822009F8](sub_22FDD1518);
}

uint64_t sub_22FDD1518()
{
  v21 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 64) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 72) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = sub_22FDD1718;
  v14 = *(v0 + 99);
  v15 = *(v0 + 98);
  v16 = *(v0 + 97);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);

  return sub_22FDC9AF0(v0 + 16, v17, v18, v16, v15, v14);
}

uint64_t sub_22FDD1718()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22FDD4648;
  }

  else
  {
    v3 = sub_22FDD182C;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FDD182C()
{
  v20 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 72);
  swift_bridgeObjectRetain_n();
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315650;
    v11 = sub_22FE43914();
    v13 = sub_22FD98218(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v5;
    *(v9 + 22) = 2080;
    *(v0 + 24) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44B0, &qword_22FE4B8D0);
    v14 = sub_22FE430B4();
    v16 = sub_22FD98218(v14, v15, &v19);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v10, -1, -1);
    MEMORY[0x23190C380](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_22FDD1A18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 112) = a3;
  *(v4 + 24) = a1;
  v5 = *(*(type metadata accessor for DailyID() - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDD1AB0);
}

uint64_t sub_22FDD1AB0()
{
  v16 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 56) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 64) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v0 + 72) = sub_22FE43374();
  *(v0 + 80) = v13;

  return MEMORY[0x2822009F8](sub_22FDD1CF8);
}

uint64_t sub_22FDD1CF8()
{
  v1 = v0[6];
  v2 = *(v0[5] + 16);
  sub_22FE428B4();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_22FDD1DAC;
  v4 = v0[6];

  return sub_22FDC7DCC(3, v4);
}

uint64_t sub_22FDD1DAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  sub_22FDD44CC(v3[6], type metadata accessor for DailyID);
  if (v1)
  {
    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_22FDD20FC;
  }

  else
  {
    v9 = sub_22FDD1F08;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_22FDD1F08()
{
  v24 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  swift_bridgeObjectRetain_n();
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315650;
    v12 = sub_22FE43914();
    v14 = sub_22FD98218(v12, v13, &v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2080;
    *(v0 + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44B0, &qword_22FE4B8D0);
    v15 = sub_22FE430B4();
    v17 = sub_22FD98218(v15, v16, &v23);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v11, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 96);
  }

  v19 = *(v0 + 48);

  v20 = *(v0 + 8);
  v21 = *(v0 + 96);

  return v20(v21);
}

uint64_t sub_22FDD2118()
{
  v25 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v23 = *(v0 + 56);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315650;
    v13 = sub_22FE43914();
    v15 = sub_22FD98218(v13, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v23;
    *(v10 + 22) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) failed: %@", v10, 0x20u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  v18 = *(v0 + 104);
  v19 = *(v0 + 48);
  swift_willThrow();

  v20 = *(v0 + 8);
  v21 = *(v0 + 104);

  return v20();
}

uint64_t sub_22FDD2308(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 88) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22FDD2330);
}

uint64_t sub_22FDD2330()
{
  v15 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 48) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDD2578);
}

uint64_t sub_22FDD2578()
{
  v1 = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_22FDD2624;

  return sub_22FDC6228(1);
}

uint64_t sub_22FDD2624(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_22FDD4654;
  }

  else
  {
    v5 = sub_22FDD2738;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FDD2738()
{
  v23 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  swift_bridgeObjectRetain_n();
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315650;
    v12 = sub_22FE43914();
    v14 = sub_22FD98218(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2080;
    *(v0 + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4560, &qword_22FE4B918);
    v15 = sub_22FE430B4();
    v17 = sub_22FD98218(v15, v16, &v22);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v11, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 72);
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 72);

  return v19(v20);
}

uint64_t sub_22FDD2924(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDC8B6C(a1, v6, v1 + v5);
}

uint64_t sub_22FDD2A08(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD8C738;

  return sub_22FDC904C(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_22FDD2B30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD73F54;

  return sub_22FDC95C0(a1, v5, v4);
}

uint64_t sub_22FDD2BDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDCAA10(a1, v5, v4);
}

uint64_t objectdestroy_24Tm()
{
  v1 = (type metadata accessor for ShuffleID() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = sub_22FE428C4();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_22FDD2D78(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDCB600(a1, v6, v1 + v5);
}

uint64_t sub_22FDD2E5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDCB9E4(a1, v5, v4);
}

uint64_t sub_22FDD2F08(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 88) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22FDD2F30);
}

uint64_t sub_22FDD2F30()
{
  v15 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 48) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDD3178);
}

uint64_t sub_22FDD3178()
{
  v1 = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_22FDD3224;

  return sub_22FDC6228(2);
}

uint64_t sub_22FDD3224(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_22FDD4654;
  }

  else
  {
    v5 = sub_22FDD465C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FDD3338(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDCBCD8(a1, v6, v1 + v5);
}

uint64_t sub_22FDD341C(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD8C738;

  return sub_22FDCBEA0(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_22FDD3544(uint64_t a1)
{
  v4 = *(type metadata accessor for DailyID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDCC1BC(a1, v6, v1 + v5);
}

uint64_t sub_22FDD3628(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDCC5A0(a1, v5, v4);
}

uint64_t sub_22FDD36D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 88) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22FDD36FC);
}

uint64_t sub_22FDD36FC()
{
  v15 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 48) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    v10 = sub_22FE43914();
    v12 = sub_22FD98218(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDD3944);
}

uint64_t sub_22FDD3944()
{
  v1 = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_22FDD39F0;

  return sub_22FDC66C0(3);
}

uint64_t sub_22FDD39F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_22FDD4654;
  }

  else
  {
    v5 = sub_22FDD3B04;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FDD3B04()
{
  v23 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  swift_bridgeObjectRetain_n();
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315650;
    v12 = sub_22FE43914();
    v14 = sub_22FD98218(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2080;
    *(v0 + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4548, &qword_22FE4B8E8);
    v15 = sub_22FE430B4();
    v17 = sub_22FD98218(v15, v16, &v22);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v11, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 72);
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 72);

  return v19(v20);
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_22FE428C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22FDD3DB4(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDCC894(a1, v6, v1 + v5);
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_22FE428C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22FDD3F68(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD8C738;

  return sub_22FDCCA5C(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_22FDD4090(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDCCF0C(a1, v5, v4);
}

uint64_t sub_22FDD418C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD8C738;

  return sub_22FE26ABC(a1, a2, v6, (v2 + 24), v7, v8);
}

unint64_t sub_22FDD4264()
{
  result = qword_27DAE4540;
  if (!qword_27DAE4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4540);
  }

  return result;
}

uint64_t sub_22FDD42D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FDD4320(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 56);
  v11 = *(v2 + 48);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22FD8C738;

  return sub_22FDCE650(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_22FDD43FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDD4464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDD44CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_97Tm()
{
  v1 = v0[2];

  sub_22FD917D4(v0[4], v0[5]);

  return swift_deallocObject();
}

uint64_t sub_22FDD456C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 56);
  v11 = *(v2 + 48);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22FD8C738;

  return sub_22FDCD278(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_22FDD4678(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x277D84F90];
  sub_22FD9244C(0, v4, 0);
  v5 = v16;
  v8 = *(sub_22FE428C4() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_22FD9244C((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDD47D8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = a3;
    v37 = MEMORY[0x277D84F90];
    sub_22FD9244C(0, v4, 0);
    v7 = v37;
    v8 = v6 + 56;
    v9 = -1 << *(v6 + 32);
    v10 = sub_22FE43834();
    v11 = 0;
    v31 = v6 + 64;
    v32 = v4;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v6 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v34 = v11;
      v14 = *(v6 + 36);
      v15 = v6;
      v16 = (*(v6 + 48) + 16 * v10);
      v17 = v16[1];
      v35[0] = *v16;
      v35[1] = v17;

      a1(&v36, v35);
      if (v3)
      {
        goto LABEL_27;
      }

      v18 = v36;
      v19 = v7;
      v37 = v7;
      v20 = *(v7 + 16);
      v21 = *(v19 + 24);
      if (v20 >= v21 >> 1)
      {
        v30 = v36;
        sub_22FD9244C((v21 > 1), v20 + 1, 1);
        v18 = v30;
        v19 = v37;
      }

      *(v19 + 16) = v20 + 1;
      *(v19 + 8 * v20 + 32) = v18;
      v12 = 1 << *(v15 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v22 = *(v8 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v15;
      v7 = v19;
      v23 = v14;
      if (v14 != *(v15 + 36))
      {
        goto LABEL_26;
      }

      v24 = v22 & (-2 << (v10 & 0x3F));
      if (v24)
      {
        v12 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v27 = (v31 + 8 * v13);
        while (v26 < (v12 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_22FD72BF8(v10, v23, 0);
            v12 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_22FD72BF8(v10, v23, 0);
      }

LABEL_4:
      v3 = 0;
      v11 = v34 + 1;
      v10 = v12;
      if (v34 + 1 == v32)
      {
        return v7;
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
LABEL_27:

    __break(1u);
  }

  return result;
}

void sub_22FDD4A54(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FE43AD4())
  {
    v25 = MEMORY[0x277D84F90];
    sub_22FD92388(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v25;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = MEMORY[0x23190B530](v11, a3);
      }

      else
      {
        if (v11 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      i = v14;
      v24 = v14;
      v22(&v24);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v25 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22FD92388(v15 > 1, v16 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v16 + 1;
      sub_22FD93E04(v9, v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16, &qword_27DAE2CE8, &unk_22FE4A850);
      ++v11;
      if (v13 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_22FDD4C90(uint64_t a1, int a2)
{
  v42 = a2;
  v4 = type metadata accessor for StoredPhotoLayout(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoredPhotoLayoutProto(0);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v45 = v2;
    v46 = MEMORY[0x277D84F90];
    sub_22FD92770(0, v11, 0);
    v44 = v46;
    v13 = a1 + 64;
    v14 = -1 << *(a1 + 32);
    result = sub_22FE43834();
    v15 = result;
    v16 = 0;
    v35 = a1 + 72;
    v36 = v11;
    v37 = a1 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v43 = *(a1 + 36);
      v20 = v40;
      v21 = sub_22FDE02B8(*(a1 + 56) + *(v41 + 72) * v15, v40, type metadata accessor for StoredPhotoLayout);
      MEMORY[0x28223BE20](v21);
      *(&v34 - 2) = v20;
      *(&v34 - 8) = v42;
      sub_22FDD5628(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto);
      v22 = v45;
      sub_22FE42C14();
      v45 = v22;
      sub_22FDE01F0(v20, type metadata accessor for StoredPhotoLayout);
      v23 = v44;
      v46 = v44;
      v25 = *(v44 + 16);
      v24 = *(v44 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22FD92770(v24 > 1, v25 + 1, 1);
        v23 = v46;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v44 = v23;
      result = sub_22FDE0250(v10, v23 + v26 + *(v38 + 72) * v25, type metadata accessor for StoredPhotoLayoutProto);
      v17 = 1 << *(a1 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v13 = v37;
      v27 = *(v37 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v43 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v36;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v18 = v36;
        v31 = (v35 + 8 * v19);
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_22FD72BF8(v15, v43, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_22FD72BF8(v15, v43, 0);
      }

LABEL_4:
      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v44;
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

uint64_t StoredPhoto.init(localIdentifier:modificationDate:creationDate:parallaxScale:title:subtitle:preferredLayout:layouts:accessibilityDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = sub_22FE428C4();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for StoredPhoto(0);
  v21 = v20[5];
  v22 = sub_22FE42854();
  v23 = *(*(v22 - 8) + 32);
  v23(a9 + v21, a2, v22);
  result = (v23)(a9 + v20[6], a3, v22);
  *(a9 + v20[7]) = a10;
  v25 = (a9 + v20[8]);
  *v25 = a4;
  v25[1] = a5;
  v26 = (a9 + v20[9]);
  *v26 = a6;
  v26[1] = a7;
  *(a9 + v20[10]) = a8;
  *(a9 + v20[11]) = a11;
  v27 = (a9 + v20[12]);
  *v27 = a12;
  v27[1] = a13;
  return result;
}

PhotosFace::StoredPhotoLayout::Rect __swiftcall StoredPhotoLayout.Rect.init(x:y:width:height:)(Swift::Double x, Swift::Double y, Swift::Double width, Swift::Double height)
{
  *v4 = x;
  v4[1] = y;
  v4[2] = width;
  v4[3] = height;
  result.height = height;
  result.width = width;
  result.y = y;
  result.x = x;
  return result;
}

__n128 StoredPhotoLayout.init(baseImage:maskImage:originalCrop:timePosition:timeRect:backgroundZorder:foregroundZorder:timeElementZorder:imageAOTBrightness:userEdited:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v22 = type metadata accessor for StoredPhotoLayout(0);
  v23 = v22[5];
  v24 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v30 = a5[1];
  v31 = *a5;
  v28 = a3[1];
  v29 = *a3;
  (*(*(v24 - 8) + 56))(a7 + v23, 1, 1, v24);
  sub_22FDE0250(a1, a7, type metadata accessor for StoredPhotoLayout.ImageLocation);
  sub_22FDE176C(a2, a7 + v23, &qword_27DAE42D8, &unk_22FE4BA30);
  v25 = (a7 + v22[6]);
  *v25 = v29;
  v25[1] = v28;
  *(a7 + v22[7]) = a4;
  v26 = (a7 + v22[8]);
  result = v31;
  *v26 = v31;
  v26[1] = v30;
  *(a7 + v22[9]) = a8;
  *(a7 + v22[10]) = a9;
  *(a7 + v22[11]) = a10;
  *(a7 + v22[12]) = a11;
  *(a7 + v22[13]) = a6;
  return result;
}

uint64_t StoredPhoto.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_22FE428C4();
  sub_22FDD5628(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  v4 = type metadata accessor for StoredPhoto(0);
  v5 = v4[5];
  sub_22FE42854();
  sub_22FDD5628(&qword_27DAE44C0, MEMORY[0x277CC9578]);
  sub_22FE42FE4();
  v6 = v2 + v4[6];
  sub_22FE42FE4();
  v7 = *(v2 + v4[7]);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v7);
  v8 = (v2 + v4[8]);
  if (v8[1])
  {
    v9 = *v8;
    sub_22FE43DD4();
    sub_22FE430D4();
  }

  else
  {
    sub_22FE43DD4();
  }

  v10 = (v2 + v4[9]);
  if (v10[1])
  {
    v11 = *v10;
    sub_22FE43DD4();
    sub_22FE430D4();
  }

  else
  {
    sub_22FE43DD4();
  }

  MEMORY[0x23190B9C0](*(v2 + v4[10]));
  sub_22FDDFDF8(a1, *(v2 + v4[11]));
  v12 = (v2 + v4[12]);
  if (!v12[1])
  {
    return sub_22FE43DD4();
  }

  v13 = *v12;
  sub_22FE43DD4();

  return sub_22FE430D4();
}

uint64_t sub_22FDD5628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StoredPhoto.init(protobuf:version:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v73 = a3;
  v72 = sub_22FE42854();
  v7 = *(v72 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v72);
  v74 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v68 - v11;
  v12 = sub_22FE428C4();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v76 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for StoredPhotoLayout(0);
  v15 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v86 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StoredPhotoLayoutProto(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v85 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  v82 = *(v24 - 8);
  v83 = v24;
  v25 = *(v82 + 64);
  MEMORY[0x28223BE20](v24);
  v75 = *a2;
  v77 = a1;
  v27 = *(a1 + 40);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v79 = (&v68 - v26);
    v68 = v7;
    v87 = MEMORY[0x277D84F90];
    sub_22FD92388(0, v28, 0);
    v30 = 0;
    v29 = v87;
    v31 = *(v18 + 80);
    v80 = v27;
    v81 = v27 + ((v31 + 32) & ~v31);
    v78 = v28;
    while (v30 < *(v27 + 16))
    {
      sub_22FDE02B8(v81 + *(v18 + 72) * v30, v23, type metadata accessor for StoredPhotoLayoutProto);
      v32 = v85;
      sub_22FDE02B8(v23, v85, type metadata accessor for StoredPhotoLayoutProto);
      v33 = v86;
      StoredPhotoLayout.init(protobuf:version:)(v32, v86);
      if (v4)
      {
        sub_22FDE01F0(v23, type metadata accessor for StoredPhotoLayoutProto);

        return sub_22FDE01F0(v77, type metadata accessor for StoredPhotoProto);
      }

      sub_22FDE01F0(v23, type metadata accessor for StoredPhotoLayoutProto);
      v34 = *(v83 + 48);
      v35 = v79;
      *v79 = *(v33 + *(v84 + 28));
      sub_22FDE0250(v33, v35 + v34, type metadata accessor for StoredPhotoLayout);
      v87 = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_22FD92388(v36 > 1, v37 + 1, 1);
        v29 = v87;
      }

      ++v30;
      *(v29 + 16) = v37 + 1;
      sub_22FD93E04(v35, v29 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v37, &qword_27DAE2CE8, &unk_22FE4A850);
      v4 = 0;
      v27 = v80;
      if (v78 == v30)
      {
        v7 = v68;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    if (*(v29 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
      v39 = sub_22FE43B04();
    }

    else
    {
      v39 = MEMORY[0x277D84F98];
    }

    v87 = v39;
    sub_22FDDF410(v29, 1, &v87);
    if (!v4)
    {
      v86 = v87;
      v40 = v77;
      v41 = *(v77 + 32);
      v42 = *v77;
      v43 = *(v77 + 8);
      LOBYTE(v87) = v75;
      sub_22FDB4380(v42, v43);
      v44 = v76;
      UUID.init(serialized:version:)(v42, v43);
      v45 = *(v40 + 16);
      v85 = v41;
      v46 = v71;
      sub_22FE427E4();
      v47 = type metadata accessor for StoredPhotoProto(0);
      v48 = v40 + v47[11];
      v49 = *v48;
      *(v48 + 8);
      sub_22FE427E4();
      v50 = *(v40 + 24);
      v51 = (v40 + v47[12]);
      v52 = *v51;
      v53 = v51[1];
      v54 = (v40 + v47[13]);
      v55 = *v54;
      v56 = v54[1];
      v82 = v52;
      v83 = v55;
      v57 = (v40 + v47[10]);
      v58 = v57[1];
      v84 = *v57;

      sub_22FDE01F0(v40, type metadata accessor for StoredPhotoProto);
      v59 = v73;
      (*(v69 + 32))(v73, v44, v70);
      v60 = type metadata accessor for StoredPhoto(0);
      v61 = *(v7 + 32);
      v62 = v72;
      v61(v59 + v60[5], v46, v72);
      result = (v61)(v59 + v60[6], v74, v62);
      *(v59 + v60[7]) = v50;
      v63 = (v59 + v60[8]);
      v64 = v83;
      *v63 = v82;
      v63[1] = v53;
      v65 = (v59 + v60[9]);
      *v65 = v64;
      v65[1] = v56;
      v66 = v86;
      *(v59 + v60[10]) = v85;
      *(v59 + v60[11]) = v66;
      v67 = (v59 + v60[12]);
      *v67 = v84;
      v67[1] = v58;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t StoredPhoto.protobuf(version:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for StoredPhotoProto(0);
  sub_22FDD5628(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
  return sub_22FE42C14();
}

Swift::Void __swiftcall StoredPhoto.gather(attachments:version:)(Swift::OpaquePointer *attachments, PhotosFace::ProtocolVersion version)
{
  v3 = v2;
  v127 = type metadata accessor for LazyDataState();
  v5 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v102 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v125 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v124 = &v102 - v15;
  v16 = sub_22FE426C4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v123 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_22FE42774();
  v20 = *(v143 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v143);
  v122 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v121 = &v102 - v24;
  MEMORY[0x28223BE20](v25);
  v142 = &v102 - v26;
  v27 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v107 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for StoredPhotoLayout(0);
  v106 = *(v103 - 8);
  v30 = *(v106 + 64);
  MEMORY[0x28223BE20](v103);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v105 = &v102 - v34;
  v35 = *(v3 + *(type metadata accessor for StoredPhoto(0) + 44));
  v36 = *(v35 + 64);
  v111 = v35 + 64;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v110 = (v37 + 63) >> 6;
  v104 = (v20 + 48);
  v102 = (v20 + 32);
  v144 = (v20 + 8);
  v141 = *MEMORY[0x277CC91D8];
  v132 = (v17 + 8);
  v133 = (v17 + 104);
  v120 = (v20 + 16);
  v119 = (v20 + 56);
  v40 = v32;
  v109 = v35;

  v41 = 0;
  v131 = v40;
  v128 = v3;
  v126 = v7;
  v108 = v10;
  v118 = attachments;
  v140 = xmmword_22FE4BA20;
  v117 = v16;
  while (v39)
  {
    v42 = v142;
LABEL_12:
    v44 = v105;
    sub_22FDE02B8(*(v109 + 56) + *(v106 + 72) * (__clz(__rbit64(v39)) | (v41 << 6)), v105, type metadata accessor for StoredPhotoLayout);
    sub_22FDE0250(v44, v40, type metadata accessor for StoredPhotoLayout);
    v45 = v40;
    v46 = v40;
    v47 = v107;
    sub_22FDE02B8(v45, v107, type metadata accessor for StoredPhotoLayout.ImageLocation);
    v48 = v143;
    if ((*v104)(v47, 1, v143) == 1)
    {
      v49 = *(v46 + *(v103 + 28));
      v145 = 0x5F65736162;
      v146 = 0xE500000000000000;
      v50 = sub_22FE436D4();
      MEMORY[0x23190ACF0](v50);

      MEMORY[0x23190ACF0](95, 0xE100000000000000);
      sub_22FE428C4();
      sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
      v51 = sub_22FE43C24();
      MEMORY[0x23190ACF0](v51);

      MEMORY[0x23190ACF0](0x636965682ELL, 0xE500000000000000);
      v134 = v145;
      v135 = v146;
    }

    else
    {
      (*v102)(v42, v47, v48);
      v134 = sub_22FE426E4();
      v135 = v52;
      (*v144)(v42, v48);
    }

    v53 = v122;
    v130 = v39;
    if (qword_28148B788 != -1)
    {
      swift_once();
    }

    v115 = __swift_project_value_buffer(v48, qword_28148B790);
    sub_22FE42704();
    v145 = sub_22FE42874();
    v146 = v54;
    v138 = *v133;
    v55 = v123;
    v56 = v16;
    (v138)(v123, v141, v16);
    v137 = sub_22FD750CC();
    v57 = v121;
    sub_22FE42764();
    v136 = *v132;
    v136(v55, v56);

    v58 = *v144;
    (*v144)(v53, v143);
    v139 = v58;
    v145 = v134;
    v146 = v135;
    (v138)(v55, v141, v56);
    v59 = v142;
    sub_22FE42764();
    v136(v55, v56);
    v60 = v143;
    v58(v57, v143);
    v61 = v124;
    v114 = *v120;
    v114(v124, v59, v60);
    v62 = *v119;
    (*v119)(v61, 0, 1, v60);
    v112 = type metadata accessor for LazyData();
    v129 = swift_allocObject();
    v63 = v125;
    sub_22FD764B4(v61, v125, &qword_27DAE4300, &qword_22FE4AB28);
    v64 = v108;
    *v108 = v140;
    v65 = v127;
    v66 = *(v127 + 20);
    v116 = v62;
    v62(v64 + v66, 1, 1, v60);
    sub_22FDC27F0(*v64, *(v64 + 1));
    *v64 = v140;
    sub_22FDE176C(v63, v64 + v66, &qword_27DAE4300, &qword_22FE4AB28);
    *(v64 + *(v65 + 24)) = 0;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45E8, &qword_22FE4BA40);
    v68 = ((*(v67 + 48) + 3) & 0x1FFFFFFFCLL) + 4;
    v69 = *(v67 + 52) | 3;
    v113 = v67;
    v70 = swift_allocObject();
    *(v70 + ((*(*v70 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v71 = v126;
    sub_22FDE02B8(v64, v126, type metadata accessor for LazyDataState);
    sub_22FD93E6C(v61, &qword_27DAE4300, &qword_22FE4AB28);
    v139(v59, v60);
    sub_22FDE01F0(v64, type metadata accessor for LazyDataState);
    sub_22FDE0250(v71, v70 + *(*v70 + *MEMORY[0x277D841D0] + 16), type metadata accessor for LazyDataState);
    v72 = v129;
    *(v129 + 16) = v70;
    v73 = v118;
    rawValue = v118->_rawValue;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = *v73;
    v76 = v128;
    sub_22FDDF95C(v72, v134, v135, isUniquelyReferenced_nonNull_native);

    *v73 = v145;
    v77 = StoredPhotoLayout.maskFilename(for:)(v76);
    if (v78)
    {
      v79 = v122;
      v134 = v78;
      v135 = v77;
      sub_22FE42704();
      v145 = sub_22FE42874();
      v146 = v80;
      v81 = v123;
      v82 = v117;
      (v138)(v123, v141, v117);
      v83 = v121;
      sub_22FE42764();
      v136(v81, v82);

      v84 = v143;
      v85 = v139;
      v139(v79, v143);
      v145 = v135;
      v146 = v134;
      (v138)(v81, v141, v82);
      v86 = v142;
      sub_22FE42764();
      v136(v81, v82);
      v85(v83, v84);
      v87 = v124;
      v114(v124, v86, v84);
      v88 = v84;
      v89 = v116;
      v116(v87, 0, 1, v84);
      v138 = swift_allocObject();
      v90 = v125;
      sub_22FD764B4(v87, v125, &qword_27DAE4300, &qword_22FE4AB28);
      *v64 = v140;
      v91 = v127;
      v92 = *(v127 + 20);
      v89(v64 + v92, 1, 1, v88);
      sub_22FDC27F0(*v64, *(v64 + 1));
      *v64 = v140;
      sub_22FDE176C(v90, v64 + v92, &qword_27DAE4300, &qword_22FE4AB28);
      *(v64 + *(v91 + 24)) = 0;
      v93 = (*(v113 + 48) + 3) & 0x1FFFFFFFCLL;
      v94 = *(v113 + 52) | 3;
      v95 = swift_allocObject();
      *(v95 + ((*(*v95 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
      v96 = v126;
      sub_22FDE02B8(v64, v126, type metadata accessor for LazyDataState);
      v97 = v87;
      v98 = v118;
      sub_22FD93E6C(v97, &qword_27DAE4300, &qword_22FE4AB28);
      v139(v142, v88);
      sub_22FDE01F0(v64, type metadata accessor for LazyDataState);
      sub_22FDE0250(v96, v95 + *(*v95 + *MEMORY[0x277D841D0] + 16), type metadata accessor for LazyDataState);
      v99 = v138;
      *(v138 + 16) = v95;
      v100 = *v98;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v145 = *v98;
      sub_22FDDF95C(v99, v135, v134, v101);

      *v98 = v145;
    }

    v40 = v131;
    v39 = (v130 - 1) & v130;
    sub_22FDE01F0(v131, type metadata accessor for StoredPhotoLayout);
    v16 = v117;
  }

  v42 = v142;
  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v110)
    {

      return;
    }

    v39 = *(v111 + 8 * v43);
    ++v41;
    if (v39)
    {
      v41 = v43;
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoredPhoto.save(attachments:version:)(Swift::OpaquePointer attachments, PhotosFace::ProtocolVersion version)
{
  v3 = v2;
  rawValue = attachments._rawValue;
  v101 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v86 = &v79 - v6;
  v85 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v93 = *(v85 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v85);
  v79 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v79 - v10;
  MEMORY[0x28223BE20](v11);
  v92 = &v79 - v12;
  v96 = type metadata accessor for StoredPhotoLayout(0);
  v88 = *(v96 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v79 - v16;
  v17 = sub_22FE426C4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22FE42774();
  v23 = *(v22 - 1);
  v83 = v23;
  v24 = v23[8];
  MEMORY[0x28223BE20](v22);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - v28;
  if (qword_28148B788 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  __swift_project_value_buffer(v22, qword_28148B790);
  sub_22FE42704();
  v91 = v3;
  v99 = sub_22FE42874();
  v100 = v30;
  (*(v18 + 104))(v21, *MEMORY[0x277CC91D8], v17);
  sub_22FD750CC();
  sub_22FE42764();
  (*(v18 + 8))(v21, v17);

  v31 = v23[1];
  v98 = v22;
  v89 = v31;
  (v31)(v26, v22);
  v32 = [objc_opt_self() defaultManager];
  v97 = v29;
  v33 = sub_22FE426F4();
  v99 = 0;
  v34 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v99];

  v82 = v26;
  v90 = v23 + 1;
  if (v34)
  {
    v35 = v99;
    v29 = v94;
    v26 = v81;
  }

  else
  {
    v36 = v99;
    v37 = sub_22FE426B4();

    swift_willThrow();
    v26 = 0;
    v29 = v94;
  }

  v38 = *(v91 + *(type metadata accessor for StoredPhoto(0) + 44));
  v21 = (v38 + 64);
  v39 = 1 << *(v38 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v18 = v40 & *(v38 + 64);
  v3 = (v39 + 63) >> 6;
  v41 = v83;
  v81 = (v83 + 4);
  v83 = (v93 + 48);
  v93 = v38;
  v94 = (v41 + 6);

  v42 = 0;
  v43 = v92;
  v23 = v98;
  v80 = v21;
  if (v18)
  {
    while (2)
    {
      v17 = v42;
LABEL_14:
      v44 = v87;
      sub_22FDE02B8(*(v93 + 56) + *(v88 + 72) * (__clz(__rbit64(v18)) | (v17 << 6)), v87, type metadata accessor for StoredPhotoLayout);
      sub_22FDE0250(v44, v29, type metadata accessor for StoredPhotoLayout);
      sub_22FDE02B8(v29, v43, type metadata accessor for StoredPhotoLayout.ImageLocation);
      v22 = *v94;
      if ((*v94)(v43, 1, v23) == 1)
      {
        v45 = *&v29[*(v96 + 28)];
        v99 = 0x5F65736162;
        v100 = 0xE500000000000000;
        v46 = sub_22FE436D4();
        MEMORY[0x23190ACF0](v46);

        MEMORY[0x23190ACF0](95, 0xE100000000000000);
        sub_22FE428C4();
        sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
        v47 = sub_22FE43C24();
        MEMORY[0x23190ACF0](v47);

        MEMORY[0x23190ACF0](0x636965682ELL, 0xE500000000000000);
        v48 = v99;
        v49 = v100;
      }

      else
      {
        v50 = v3;
        v51 = v22;
        v52 = v29;
        v53 = v26;
        v54 = v82;
        (*v81)(v82, v43, v23);
        v55 = sub_22FE426E4();
        v56 = v23;
        v57 = v55;
        v49 = v58;
        v59 = v54;
        v26 = v53;
        v29 = v52;
        v22 = v51;
        v3 = v50;
        v21 = v80;
        (v89)(v59, v56);
        v48 = v57;
      }

      v60 = v97;
      sub_22FDDA0A8(v48, v49, v97, rawValue);
      if (v26)
      {
        v78 = v98;

        sub_22FDE01F0(v29, type metadata accessor for StoredPhotoLayout);
        (v89)(v60, v78);
        goto LABEL_25;
      }

      v18 &= v18 - 1;

      v61 = v86;
      sub_22FD764B4(&v29[*(v96 + 20)], v86, &qword_27DAE42D8, &unk_22FE4BA30);
      v62 = (*v83)(v61, 1, v85);
      v23 = v98;
      if (v62 == 1)
      {
        sub_22FDE01F0(v29, type metadata accessor for StoredPhotoLayout);
        v42 = v17;
        v43 = v92;
        if (v18)
        {
          continue;
        }
      }

      else
      {
        v63 = v61;
        v64 = v84;
        sub_22FDE0250(v63, v84, type metadata accessor for StoredPhotoLayout.ImageLocation);
        v65 = v64;
        v66 = v79;
        sub_22FDE02B8(v65, v79, type metadata accessor for StoredPhotoLayout.ImageLocation);
        if ((v22)(v66, 1, v23) == 1)
        {
          v67 = *&v29[*(v96 + 28)];
          v99 = 0x5F6B73616DLL;
          v100 = 0xE500000000000000;
          v68 = sub_22FE436D4();
          MEMORY[0x23190ACF0](v68);

          MEMORY[0x23190ACF0](95, 0xE100000000000000);
          sub_22FE428C4();
          sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
          v69 = sub_22FE43C24();
          MEMORY[0x23190ACF0](v69);

          MEMORY[0x23190ACF0](1735290926, 0xE400000000000000);
          v71 = v99;
          v70 = v100;
        }

        else
        {
          v22 = 0;
          v72 = v82;
          (*v81)(v82, v66, v23);
          v73 = sub_22FE426E4();
          v74 = v23;
          v71 = v73;
          v70 = v75;
          v76 = v72;
          v26 = 0;
          (v89)(v76, v74);
        }

        sub_22FDE01F0(v84, type metadata accessor for StoredPhotoLayout.ImageLocation);
        sub_22FDDA0A8(v71, v70, v97, rawValue);
        sub_22FDE01F0(v29, type metadata accessor for StoredPhotoLayout);

        v42 = v17;
        v43 = v92;
        v23 = v98;
        if (v18)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v17 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v17 >= v3)
    {
      break;
    }

    v18 = *&v21[8 * v17];
    ++v42;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  (v89)(v97, v23);

LABEL_25:
  v77 = *MEMORY[0x277D85DE8];
}

uint64_t StoredPhoto.localIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StoredPhoto.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhoto(0) + 20);
  v4 = sub_22FE42854();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhoto.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhoto(0) + 24);
  v4 = sub_22FE42854();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhoto.title.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhoto(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StoredPhoto.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhoto(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StoredPhoto.preferredLayout.setter(uint64_t a1)
{
  result = type metadata accessor for StoredPhoto(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t StoredPhoto.layouts.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredPhoto(0) + 44));
}

uint64_t StoredPhoto.layouts.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StoredPhoto(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t StoredPhoto.accessibilityDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhoto(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_22FDD7B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhotoLayout(0);
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4698, &unk_22FE4BEB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v53 - v16);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = a2;
  v56 = v8;
  v18 = 0;
  v54 = a1;
  v19 = *(a1 + 64);
  v53 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v24 = &unk_27DAE42E0;
  v25 = &unk_22FE4A870;
  while (v22)
  {
    v58 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
    v32 = *(*(v54 + 48) + 8 * v26);
    v33 = v59;
    sub_22FDE02B8(*(v54 + 56) + *(v60 + 72) * v26, v59, type metadata accessor for StoredPhotoLayout);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v35 = *(v34 + 48);
    *v14 = v32;
    sub_22FDE0250(v33, v14 + v35, type metadata accessor for StoredPhotoLayout);
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
    v29 = v56;
LABEL_17:
    sub_22FD93E04(v14, v17, &qword_27DAE4698, &unk_22FE4BEB0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v37 = (*(*(v36 - 8) + 48))(v17, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return 1;
    }

    v39 = *(v36 + 48);
    v40 = *v17;
    sub_22FDE0250(v17 + v39, v29, type metadata accessor for StoredPhotoLayout);
    v41 = v55;
    v42 = sub_22FD746AC(v40);
    if ((v43 & 1) == 0)
    {
      sub_22FDE01F0(v29, type metadata accessor for StoredPhotoLayout);
      return 0;
    }

    v44 = v38;
    v45 = *(v41 + 56) + *(v60 + 72) * v42;
    v46 = v25;
    v47 = v23;
    v48 = v24;
    v49 = v17;
    v50 = v59;
    sub_22FDE02B8(v45, v59, type metadata accessor for StoredPhotoLayout);
    v57 = _s10PhotosFace17StoredPhotoLayoutV2eeoiySbAC_ACtFZ_0(v50, v29);
    v51 = v50;
    v17 = v49;
    v24 = v48;
    v23 = v47;
    v25 = v46;
    sub_22FDE01F0(v51, type metadata accessor for StoredPhotoLayout);
    result = sub_22FDE01F0(v29, type metadata accessor for StoredPhotoLayout);
    v22 = v58;
    if ((v57 & 1) == 0)
    {
      return v44;
    }
  }

  if (v23 <= v18 + 1)
  {
    v27 = v18 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v56;
  while (1)
  {
    v30 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v30 >= v23)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      (*(*(v52 - 8) + 56))(v14, 1, 1, v52);
      v58 = 0;
      v18 = v28;
      goto LABEL_17;
    }

    v31 = *(v53 + 8 * v30);
    ++v18;
    if (v31)
    {
      v58 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v18 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void static StoredPhoto.localIdentifier(from:)()
{
  sub_22FDE0E58(0, &qword_27DAE45F0, 0x277CD97A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_22FE42874();
  v1 = sub_22FE43054();

  v2 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  if (v2)
  {
    sub_22FE43064();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static StoredPhoto.uuid(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45F8, &qword_22FE4BA48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  sub_22FDE0E58(0, &qword_27DAE45F0, 0x277CD97A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_22FE43054();
  v8 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

  if (!v8)
  {
    goto LABEL_4;
  }

  sub_22FE43064();

  sub_22FE42864();

  v9 = sub_22FE428C4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_22FD93E6C(v5, &qword_27DAE45F8, &qword_22FE4BA48);
LABEL_4:
    type metadata accessor for StoredPhotoError(0);
    sub_22FDD5628(&qword_27DAE4600, type metadata accessor for StoredPhotoError);
    swift_allocError();
    v12 = v11;
    v13 = sub_22FE42774();
    (*(*(v13 - 8) + 56))(v12, 2, 2, v13);
    return swift_willThrow();
  }

  return (*(v10 + 32))(a1, v5, v9);
}

uint64_t StoredPhoto.init(pfcStoredPhoto:baseURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v6 = sub_22FE42854();
  v94 = *(v6 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v6);
  v96 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v84 - v10;
  v12 = sub_22FE428C4();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 layouts];
  v18 = sub_22FDE0E58(0, &qword_27DAE4608, 0x277D3B3A8);
  v19 = sub_22FE43284();

  v98[1] = v19;
  v95 = v6;
  if (v19 >> 62)
  {
    v83 = sub_22FE43AD4();
    if (v83 < 0)
    {
      __break(1u);
LABEL_26:
      swift_once();
LABEL_7:
      v23 = sub_22FE42D34();
      __swift_project_value_buffer(v23, qword_28148B108);
      v24 = a1;
      v25 = sub_22FE42D14();
      v26 = sub_22FE436B4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v98[0] = v28;
        *v27 = 136315394;
        v29 = [v24 layouts];
        v30 = sub_22FE43284();

        v31 = MEMORY[0x23190AE90](v30, v18);
        v96 = v24;
        v33 = v32;

        v34 = sub_22FD98218(v31, v33, v98);

        *(v27 + 4) = v34;
        *(v27 + 12) = 2080;

        v36 = MEMORY[0x23190AE90](v35, v18);
        v38 = v37;

        v39 = sub_22FD98218(v36, v38, v98);

        *(v27 + 14) = v39;
        _os_log_impl(&dword_22FD6D000, v25, v26, "Invalid layout index: %s in layouts %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190C380](v28, -1, -1);
        MEMORY[0x23190C380](v27, -1, -1);

        type metadata accessor for StoredPhotoError(0);
        sub_22FDD5628(&qword_27DAE4600, type metadata accessor for StoredPhotoError);
        swift_allocError();
        v41 = v40;
        v42 = sub_22FE42774();
        (*(*(v42 - 8) + 56))(v41, 1, 2, v42);
        swift_willThrow();
      }

      else
      {

        type metadata accessor for StoredPhotoError(0);
        sub_22FDD5628(&qword_27DAE4600, type metadata accessor for StoredPhotoError);
        swift_allocError();
        v44 = v43;
        v45 = sub_22FE42774();
        (*(*(v45 - 8) + 56))(v44, 1, 2, v45);
        swift_willThrow();
      }

      goto LABEL_23;
    }

    v20 = v83;
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ([a1 preferredLayout] >= v20)
  {
    if (qword_28148B100 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  v91 = v11;
  v21 = sub_22FDD8C70([a1 preferredLayout]);
  v22 = [a1 localIdentifier];
  sub_22FE43064();

  static StoredPhoto.uuid(from:)(v16);
  if (v3)
  {
  }

  else
  {
    v90 = v21;

    v46 = [a1 modificationDate];
    sub_22FE42834();

    v47 = [a1 creationDate];
    sub_22FE42834();

    [a1 parallaxScale];
    v49 = v48;
    v50 = [a1 title];
    if (v50)
    {
      v51 = v50;
      v52 = sub_22FE43064();
      v88 = v53;
      v89 = v52;
    }

    else
    {
      v88 = 0;
      v89 = 0;
    }

    v54 = v90;
    v55 = [a1 subtitle];
    if (v55)
    {
      v56 = v55;
      v57 = sub_22FE43064();
      v86 = v58;
      v87 = v57;
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v85 = [v54 timePosition];
    v59 = [a1 layouts];
    v60 = sub_22FE43284();

    MEMORY[0x28223BE20](v61);
    *(&v84 - 2) = v97;
    sub_22FDD4A54(sub_22FDE0EA0, (&v84 - 4), v60);
    v63 = v62;

    if (*(v63 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
      v64 = sub_22FE43B04();
    }

    else
    {
      v64 = MEMORY[0x277D84F98];
    }

    v65 = v91;
    v98[0] = v64;
    sub_22FDDF410(v63, 1, v98);
    v66 = v98[0];
    v67 = [a1 accessibilityDescription];
    if (v67)
    {
      v68 = v67;
      v69 = sub_22FE43064();
      v71 = v70;
    }

    else
    {

      v69 = 0;
      v71 = 0;
    }

    (*(v92 + 32))(a3, v16, v93);
    v72 = type metadata accessor for StoredPhoto(0);
    v73 = *(v94 + 32);
    v74 = v65;
    v75 = v95;
    v73(a3 + v72[5], v74, v95);
    v73(a3 + v72[6], v96, v75);

    *(a3 + v72[7]) = v49;
    v76 = (a3 + v72[8]);
    v77 = v88;
    *v76 = v89;
    v76[1] = v77;
    v78 = (a3 + v72[9]);
    v79 = v86;
    *v78 = v87;
    v78[1] = v79;
    *(a3 + v72[10]) = v85;
    *(a3 + v72[11]) = v66;
    v80 = (a3 + v72[12]);
    *v80 = v69;
    v80[1] = v71;
  }

LABEL_23:
  v81 = sub_22FE42774();
  return (*(*(v81 - 8) + 8))(v97, v81);
}

uint64_t sub_22FDD8C70(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_22FDDFD94(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_22FDD8D00@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22FE42774();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850) + 48);
  *a3 = [v11 timePosition];
  (*(v7 + 16))(v10, a2, v6);
  return StoredPhotoLayout.init(pfcStoredLayout:baseURL:)(v11, v10, a3 + v12);
}

uint64_t StoredPhotoLayout.init(pfcStoredLayout:baseURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  *&MinX = &v67 - v7;
  v8 = sub_22FE426C4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MinY = COERCE_DOUBLE(type metadata accessor for StoredPhotoLayout.ImageLocation(0));
  v73 = *(*&MinY - 8);
  v13 = *(*&v73 + 64);
  v14 = MEMORY[0x28223BE20](*&MinY);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 baseImageName];
  v18 = sub_22FE43064();
  v20 = v19;

  v80 = v18;
  v81 = v20;
  v21 = v9[13];
  LODWORD(v72) = *MEMORY[0x277CC91D8];
  v71 = v21;
  v21(v12);
  v70 = sub_22FD750CC();
  v79 = a2;
  sub_22FE42764();
  v22 = v9[1];
  v68 = v8;
  v69 = v22;
  v22(v12, v8);

  v23 = sub_22FE42774();
  v74 = *(v23 - 8);
  v24 = *(v74 + 56);
  v76 = v16;
  v25 = v16;
  v26 = v23;
  v24(v25, 0, 1, v23);
  v27 = [a1 maskImageName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_22FE43064();
    v31 = v30;

    v80 = v29;
    v81 = v31;
    v32 = v68;
    v71(v12, LODWORD(v72), v68);
    v33 = *&MinX;
    sub_22FE42764();
    v69(v12, v32);
    v24(v33, 0, 1, v26);
    v34 = *(*&v73 + 56);
    v35 = MinY;
    v34(v33, 0, 1, *&MinY);
  }

  else
  {
    v34 = *(*&v73 + 56);
    v35 = MinY;
    v33 = *&MinX;
    v34(*&MinX, 1, 1, *&MinY);
  }

  v36 = v26;
  [a1 originalCrop];
  x = v82.origin.x;
  y = v82.origin.y;
  width = v82.size.width;
  height = v82.size.height;
  MinX = CGRectGetMinX(v82);
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  MinY = CGRectGetMinY(v83);
  v84.origin.x = x;
  v84.origin.y = y;
  v84.size.width = width;
  v84.size.height = height;
  v73 = CGRectGetWidth(v84);
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  v72 = CGRectGetHeight(v85);
  v41 = [a1 timePosition];
  [a1 timeRect];
  v42 = v86.origin.x;
  v43 = v86.origin.y;
  v44 = v86.size.width;
  v45 = v86.size.height;
  v46 = CGRectGetMinX(v86);
  v87.origin.x = v42;
  v87.origin.y = v43;
  v87.size.width = v44;
  v87.size.height = v45;
  v47 = CGRectGetMinY(v87);
  v88.origin.x = v42;
  v88.origin.y = v43;
  v88.size.width = v44;
  v88.size.height = v45;
  v48 = CGRectGetWidth(v88);
  v89.origin.x = v42;
  v89.origin.y = v43;
  v89.size.width = v44;
  v89.size.height = v45;
  v49 = CGRectGetHeight(v89);
  [a1 backgroundZorder];
  v51 = v50;
  [a1 foregroundZorder];
  v53 = v52;
  [a1 timeElementZorder];
  v55 = v54;
  [a1 imageAOTBrightness];
  v57 = v56;
  v58 = [a1 userEdited];

  v59 = type metadata accessor for StoredPhotoLayout(0);
  v60 = v59[5];
  v61 = v75;
  v34(v75 + v60, 1, 1, *&v35);
  sub_22FDE0250(v76, v61, type metadata accessor for StoredPhotoLayout.ImageLocation);
  sub_22FDE176C(v33, v61 + v60, &qword_27DAE42D8, &unk_22FE4BA30);
  v62 = (v61 + v59[6]);
  v63 = MinY;
  *v62 = MinX;
  v62[1] = v63;
  v64 = v72;
  v62[2] = v73;
  v62[3] = v64;
  *(v61 + v59[7]) = v41;
  v65 = (v61 + v59[8]);
  *v65 = v46;
  v65[1] = v47;
  v65[2] = v48;
  v65[3] = v49;
  *(v61 + v59[9]) = v51;
  *(v61 + v59[10]) = v53;
  *(v61 + v59[11]) = v55;
  *(v61 + v59[12]) = v57;
  *(v61 + v59[13]) = v58;
  return (*(v74 + 8))(v79, v36);
}

uint64_t StoredPhoto.description.getter()
{
  strcpy(v2, "StoredPhoto(");
  sub_22FE428C4();
  sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
  v0 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v0);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_22FDD94F0()
{
  strcpy(v2, "StoredPhoto(");
  sub_22FE428C4();
  sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
  v0 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v0);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t StoredPhotoLayout.init(protobuf:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v87 - v7;
  *&v97 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  *&v96 = *(v97 - 8);
  v8 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  *&v98 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = (&v87 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = (&v87 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v89 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v87 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  v24 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v88 = (&v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v30 = &v87 - v29;
  *&v95 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v100 = *(v95 - 8);
  v31 = *(v100 + 64);
  MEMORY[0x28223BE20](v95);
  v103 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v102 = a1;
  v34 = *(a1 + v33);
  v35 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  v91 = *(v34 + v35);
  v36 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  sub_22FD764B4(v34 + v36, v23, &qword_27DAE4618, &unk_22FE4DA30);
  v37 = *(v25 + 48);
  if (v37(v23, 1, v24) == 1)
  {
    *v30 = 0;
    v30[8] = 1;
    v38 = &v30[*(v24 + 20)];
    sub_22FE42A44();
    v39 = &v30[*(v24 + 24)];
    *v39 = 0;
    *(v39 + 1) = 0;
    if (v37(v23, 1, v24) != 1)
    {
      sub_22FD93E6C(v23, &qword_27DAE4618, &unk_22FE4DA30);
    }
  }

  else
  {
    sub_22FDE0250(v23, v30, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  v40 = v101;
  StoredPhotoLayout.ImageLocation.init(protobuf:version:)(v30, v103);
  if (v40)
  {
    return sub_22FDE01F0(v102, type metadata accessor for StoredPhotoLayoutProto);
  }

  v101 = 0;
  v42 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  swift_beginAccess();
  sub_22FD764B4(v34 + v42, v20, &qword_27DAE4618, &unk_22FE4DA30);
  v43 = v37(v20, 1, v24);
  sub_22FD93E6C(v20, &qword_27DAE4618, &unk_22FE4DA30);
  if (v43 == 1)
  {
    v44 = v99;
    v45 = v98;
    v46 = v97;
    v47 = v96;
    v48 = v95;
    v49 = v94;
    v50 = 1;
  }

  else
  {
    v51 = v34 + v42;
    v52 = v89;
    sub_22FD764B4(v51, v89, &qword_27DAE4618, &unk_22FE4DA30);
    v53 = v37(v52, 1, v24);
    v44 = v99;
    v47 = v96;
    v48 = v95;
    if (v53 == 1)
    {
      v54 = v88;
      *v88 = 0;
      *(v54 + 8) = 1;
      v55 = v54;
      v56 = v54 + *(v24 + 20);
      sub_22FE42A44();
      v57 = (v55 + *(v24 + 24));
      *v57 = 0;
      v57[1] = 0;
      if (v37(v52, 1, v24) != 1)
      {
        sub_22FD93E6C(v52, &qword_27DAE4618, &unk_22FE4DA30);
      }
    }

    else
    {
      v55 = v88;
      sub_22FDE0250(v52, v88, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    }

    v58 = v101;
    StoredPhotoLayout.ImageLocation.init(protobuf:version:)(v55, v44);
    v45 = v98;
    v46 = v97;
    v49 = v94;
    if (v58)
    {
      sub_22FDE01F0(v103, type metadata accessor for StoredPhotoLayout.ImageLocation);
      return sub_22FDE01F0(v102, type metadata accessor for StoredPhotoLayoutProto);
    }

    v101 = 0;
    v50 = 0;
  }

  v59 = *(v100 + 56);
  v60 = v48;
  v100 += 56;
  v99 = v59;
  v59(v44, v50, 1, v48);
  v61 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  sub_22FD764B4(v34 + v61, v49, &qword_27DAE4610, &unk_22FE4BA50);
  v62 = *(v47 + 48);
  if (v62(v49, 1, v46) == 1)
  {
    v63 = v90;
    *v90 = 0u;
    v63[1] = 0u;
    v64 = v63 + *(v46 + 32);
    sub_22FE42A44();
    if (v62(v49, 1, v46) != 1)
    {
      sub_22FD93E6C(v49, &qword_27DAE4610, &unk_22FE4BA50);
    }
  }

  else
  {
    v63 = v90;
    sub_22FDE0250(v49, v90, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  v65 = *v63;
  v97 = v63[1];
  v98 = v65;
  sub_22FDE01F0(v63, type metadata accessor for StoredPhotoLayoutRectProto);
  v66 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  swift_beginAccess();
  v67 = v34 + v66;
  v68 = v92;
  sub_22FD764B4(v67, v92, &qword_27DAE4610, &unk_22FE4BA50);
  if (v62(v68, 1, v46) == 1)
  {
    *v45 = 0u;
    v45[1] = 0u;
    v69 = v45 + *(v46 + 32);
    sub_22FE42A44();
    if (v62(v68, 1, v46) != 1)
    {
      sub_22FD93E6C(v68, &qword_27DAE4610, &unk_22FE4BA50);
    }
  }

  else
  {
    sub_22FDE0250(v68, v45, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  v70 = v45[1];
  v96 = *v45;
  v95 = v70;
  sub_22FDE01F0(v45, type metadata accessor for StoredPhotoLayoutRectProto);
  v71 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  swift_beginAccess();
  v72 = *(v34 + v71);
  v73 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
  swift_beginAccess();
  v74 = *(v34 + v73);
  v75 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
  swift_beginAccess();
  v76 = *(v34 + v75);
  v77 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
  swift_beginAccess();
  v78 = *(v34 + v77);
  v79 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  LOBYTE(v79) = *(v34 + v79);
  v80 = type metadata accessor for StoredPhotoLayout(0);
  v81 = v80[5];
  v82 = v93;
  v99(v93 + v81, 1, 1, v60);
  sub_22FDE0250(v103, v82, type metadata accessor for StoredPhotoLayout.ImageLocation);
  sub_22FDE176C(v44, v82 + v81, &qword_27DAE42D8, &unk_22FE4BA30);
  v83 = (v82 + v80[6]);
  v84 = v97;
  *v83 = v98;
  v83[1] = v84;
  *(v82 + v80[7]) = v91;
  v85 = (v82 + v80[8]);
  v86 = v95;
  *v85 = v96;
  v85[1] = v86;
  *(v82 + v80[9]) = v72;
  *(v82 + v80[10]) = v74;
  *(v82 + v80[11]) = v76;
  *(v82 + v80[12]) = v78;
  *(v82 + v80[13]) = v79;
  return sub_22FDE01F0(v102, type metadata accessor for StoredPhotoLayoutProto);
}

uint64_t sub_22FDDA0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22FE426C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22FE42774();
  v12 = *(v31 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v31);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = a1;
  v32[1] = a2;
  (*(v8 + 104))(v11, *MEMORY[0x277CC91D8], v7, v14);
  sub_22FD750CC();
  sub_22FE42764();
  (*(v8 + 8))(v11, v7);
  if (*(a4 + 16) && (v17 = sub_22FD74870(a1, a2), (v18 & 1) != 0))
  {
    v19 = *(*(a4 + 56) + 8 * v17);
    v20 = *(v19 + 16);
    MEMORY[0x28223BE20](v17);
    *(&v30 - 2) = v16;
    *(&v30 - 1) = v19;
    v21 = *(*v20 + *MEMORY[0x277D841D0] + 16);
    v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v20 + v22));
    v23 = v32[3];
    sub_22FDE17D4(v20 + v21, v32);
    os_unfair_lock_unlock((v20 + v22));
    if (!v23)
    {
    }

    return (*(v12 + 8))(v16, v31);
  }

  else
  {
    if (qword_27DAE2AC8 != -1)
    {
      swift_once();
    }

    v24 = sub_22FE42D34();
    __swift_project_value_buffer(v24, qword_27DAE5118);

    v25 = sub_22FE42D14();
    v26 = sub_22FE436C4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_22FD98218(a1, a2, v32);
      _os_log_impl(&dword_22FD6D000, v25, v26, "Couldn't find necessary attachment: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23190C380](v28, -1, -1);
      MEMORY[0x23190C380](v27, -1, -1);
    }

    return (*(v12 + 8))(v16, v31);
  }
}

uint64_t sub_22FDDA47C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = UUID.serialized(version:)();
  v8 = v7;
  sub_22FD917D4(*a1, *(a1 + 8));
  *a1 = v6;
  *(a1 + 8) = v8;
  v9 = type metadata accessor for StoredPhoto(0);
  v10 = a2 + v9[5];
  result = sub_22FE427F4();
  *(a1 + 16) = v12;
  *(a1 + 24) = *(a2 + v9[7]);
  v13 = *(a2 + v9[10]);
  if (HIDWORD(v13))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 32) = v13;
    v14 = *(a2 + v9[11]);

    v16 = sub_22FDD4C90(v15, a3);

    v17 = *(a1 + 40);

    *(a1 + 40) = v16;
    v18 = (a2 + v9[12]);
    v19 = v18[1];
    if (v19)
    {
      v20 = *v18;
      v21 = (a1 + *(type metadata accessor for StoredPhotoProto(0) + 40));
      v22 = v21[1];

      *v21 = v20;
      v21[1] = v19;
    }

    v23 = a2 + v9[6];
    sub_22FE427F4();
    v25 = v24;
    result = type metadata accessor for StoredPhotoProto(0);
    v26 = result;
    v27 = a1 + *(result + 44);
    *v27 = v25;
    *(v27 + 8) = 0;
    v28 = (a2 + v9[8]);
    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      v31 = (a1 + *(result + 48));
      v32 = v31[1];

      *v31 = v30;
      v31[1] = v29;
    }

    v33 = (a2 + v9[9]);
    v34 = v33[1];
    if (v34)
    {
      v35 = *v33;
      v36 = (a1 + *(v26 + 52));
      v37 = v36[1];

      *v36 = v35;
      v36[1] = v34;
    }
  }

  return result;
}

uint64_t StoredPhotoLayout.protobuf(version:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for StoredPhotoLayoutProto(0);
  sub_22FDD5628(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDDA710(char *a1)
{
  v1 = *a1;
  type metadata accessor for StoredPhotoProto(0);
  sub_22FDD5628(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
  return sub_22FE42C14();
}

uint64_t StoredPhotoListProto.init(protoList:version:)@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for StoredPhotoListProto(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];

  *a1 = MEMORY[0x277D84F90];
  v6 = a1 + *(v2 + 20);
  sub_22FE42A44();
  v9 = a1;
  sub_22FDD5628(&qword_27DAE4628, type metadata accessor for StoredPhotoListProto);
  sub_22FE42C14();
  return sub_22FDE0F34(v5, a1, type metadata accessor for StoredPhotoListProto);
}

uint64_t sub_22FDDA914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];

  *a3 = MEMORY[0x277D84F90];
  v8 = a3 + *(a2 + 20);
  sub_22FE42A44();
  v11 = a3;
  sub_22FDD5628(&qword_27DAE4628, type metadata accessor for StoredPhotoListProto);
  sub_22FE42C14();
  return sub_22FDE0F34(v7, a3, type metadata accessor for StoredPhotoListProto);
}

uint64_t StoredPhotoLayout.Rect.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x23190B9F0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x23190B9F0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x23190B9F0](*&v7);
}

uint64_t StoredPhotoLayout.Rect.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_22FE43DB4();
  StoredPhotoLayout.Rect.hash(into:)();
  return sub_22FE43E04();
}

uint64_t sub_22FDDAB20()
{
  v2 = *v0;
  v3 = v0[1];
  sub_22FE43DB4();
  StoredPhotoLayout.Rect.hash(into:)();
  return sub_22FE43E04();
}

uint64_t sub_22FDDAB70()
{
  v2 = *v0;
  v3 = v0[1];
  sub_22FE43DB4();
  StoredPhotoLayout.Rect.hash(into:)();
  return sub_22FE43E04();
}

uint64_t StoredPhotoLayout.ImageLocation.hash(into:)()
{
  v1 = sub_22FE42774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE02B8(v0, v9, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return MEMORY[0x23190B9C0](0);
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x23190B9C0](1);
  sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260]);
  sub_22FE42FE4();
  return (*(v2 + 8))(v5, v1);
}

uint64_t StoredPhotoLayout.ImageLocation.hashValue.getter()
{
  v1 = v0;
  v2 = sub_22FE42774();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE43DB4();
  sub_22FDE02B8(v1, v10, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    MEMORY[0x23190B9C0](0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x23190B9C0](1);
    sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260]);
    sub_22FE42FE4();
    (*(v3 + 8))(v6, v2);
  }

  return sub_22FE43E04();
}

uint64_t sub_22FDDAF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE02B8(v2, v12, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return MEMORY[0x23190B9C0](0);
  }

  (*(v5 + 32))(v8, v12, v4);
  MEMORY[0x23190B9C0](1);
  sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260]);
  sub_22FE42FE4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22FDDB14C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_22FE42774();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE43DB4();
  sub_22FDE02B8(v4, v13, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    MEMORY[0x23190B9C0](0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x23190B9C0](1);
    sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260]);
    sub_22FE42FE4();
    (*(v6 + 8))(v9, v5);
  }

  return sub_22FE43E04();
}

__n128 StoredPhotoLayout.originalCrop.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoredPhotoLayout(0) + 24);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 StoredPhotoLayout.timeRect.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoredPhotoLayout(0) + 32);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

uint64_t StoredPhotoLayout.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_22FE42774();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v51 = &v48 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  sub_22FDE02B8(v1, &v48 - v18, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v49 = *(v7 + 48);
  v20 = v49(v19, 1, v6);
  v48 = v7;
  if (v20 == 1)
  {
    MEMORY[0x23190B9C0](0);
  }

  else
  {
    (*(v7 + 32))(v10, v19, v6);
    MEMORY[0x23190B9C0](1);
    sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260]);
    sub_22FE42FE4();
    (*(v7 + 8))(v10, v6);
  }

  v21 = type metadata accessor for StoredPhotoLayout(0);
  sub_22FD764B4(v1 + v21[5], v5, &qword_27DAE42D8, &unk_22FE4BA30);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_22FE43DD4();
  }

  else
  {
    v22 = v5;
    v23 = v51;
    sub_22FDE0250(v22, v51, type metadata accessor for StoredPhotoLayout.ImageLocation);
    sub_22FE43DD4();
    v24 = v50;
    sub_22FDE02B8(v23, v50, type metadata accessor for StoredPhotoLayout.ImageLocation);
    if (v49(v24, 1, v6) == 1)
    {
      MEMORY[0x23190B9C0](0);
    }

    else
    {
      v25 = v48;
      (*(v48 + 32))(v10, v24, v6);
      MEMORY[0x23190B9C0](1);
      sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260]);
      sub_22FE42FE4();
      (*(v25 + 8))(v10, v6);
    }

    sub_22FDE01F0(v23, type metadata accessor for StoredPhotoLayout.ImageLocation);
  }

  v26 = (v1 + v21[6]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  if (*v26 == 0.0)
  {
    v27 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v27);
  if (v28 == 0.0)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v28;
  }

  MEMORY[0x23190B9F0](*&v31);
  if (v29 == 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  MEMORY[0x23190B9F0](*&v32);
  if (v30 == 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v30;
  }

  MEMORY[0x23190B9F0](*&v33);
  MEMORY[0x23190B9C0](*(v1 + v21[7]));
  v34 = (v1 + v21[8]);
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[2];
  v38 = v34[3];
  if (*v34 == 0.0)
  {
    v35 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v35);
  if (v36 == 0.0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v36;
  }

  MEMORY[0x23190B9F0](*&v39);
  if (v37 == 0.0)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v37;
  }

  MEMORY[0x23190B9F0](*&v40);
  if (v38 == 0.0)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v38;
  }

  MEMORY[0x23190B9F0](*&v41);
  v42 = *(v1 + v21[9]);
  if (v42 == 0.0)
  {
    v42 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v42);
  v43 = *(v1 + v21[10]);
  if (v43 == 0.0)
  {
    v43 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v43);
  v44 = *(v1 + v21[11]);
  if (v44 == 0.0)
  {
    v44 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v44);
  v45 = *(v1 + v21[12]);
  if (v45 == 0.0)
  {
    v45 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v45);
  v46 = *(v1 + v21[13]);
  return sub_22FE43DD4();
}

uint64_t sub_22FDDBB88(void (*a1)(_BYTE *))
{
  sub_22FE43DB4();
  a1(v3);
  return sub_22FE43E04();
}

uint64_t sub_22FDDBBE8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_22FE43DB4();
  a3(v5);
  return sub_22FE43E04();
}

uint64_t sub_22FDDBC4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_22FE43DB4();
  a4(v6);
  return sub_22FE43E04();
}

PhotosFace::StoredPhotoLayout::Rect __swiftcall StoredPhotoLayout.Rect.init(cgRect:)(CGRect cgRect)
{
  height = cgRect.size.height;
  width = cgRect.size.width;
  y = cgRect.origin.y;
  x = cgRect.origin.x;
  v6 = v1;
  MinX = CGRectGetMinX(cgRect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MinY = CGRectGetMinY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16);
  *v6 = MinX;
  v6[1] = MinY;
  v6[2] = v9;
  v6[3] = v10;
  result.height = v13;
  result.width = v12;
  result.y = v11;
  result.x = v10;
  return result;
}

uint64_t StoredPhotoLayout.ImageLocation.init(protobuf:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FE426C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v20 - v11;
  if (*(a1 + 8) != 1 || !*a1)
  {
    goto LABEL_7;
  }

  if (*a1 == 1)
  {
    sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    v13 = sub_22FE42774();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  v15 = (a1 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v20[0] = v16;
    v20[1] = v17;
    v21 = sub_22FE42774();
    v18 = *(*(v21 - 8) + 56);
    v18(v12, 1, 1, v21);
    (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);

    sub_22FE42754();
    sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    return (v18)(a2, 0, 1, v21);
  }

  else
  {
LABEL_7:
    sub_22FD91780();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }
}

__n128 StoredPhotoLayout.Rect.init(protobuf:version:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[1];
  v5 = *a1;
  sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutRectProto);
  result = v5;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_22FDDC04C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v148 = v142 - v7;
  v154 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v152 = *(v154 - 8);
  v8 = *(v152 + 64);
  v9 = (MEMORY[0x28223BE20])(v154);
  v147 = v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v146 = v142 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v142 - v14;
  v144 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v16 = *(v144 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v144);
  v143 = v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v142 - v21;
  v23 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v150 = *(v23 - 8);
  v24 = *(v150 + 64);
  v25 = (MEMORY[0x28223BE20])(v23);
  v145 = v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v142 - v27;
  v153 = a2;
  v155 = a2;
  v142[1] = sub_22FDD5628(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FE42C14();
  v149 = v2;
  v29 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v30 = *(a1 + v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a1 + v29);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = sub_22FE03B20(v32);

    *(a1 + v29) = v36;
    v32 = v36;
  }

  sub_22FDE0250(v28, v22, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  v37 = *(v150 + 56);
  v150 += 56;
  v37(v22, 0, 1, v23);
  v38 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  sub_22FDE176C(v22, v32 + v38, &qword_27DAE4618, &unk_22FE4DA30);
  swift_endAccess();
  v151 = type metadata accessor for StoredPhotoLayout(0);
  v39 = v153;
  sub_22FD764B4(v153 + v151[5], v15, &qword_27DAE42D8, &unk_22FE4BA30);
  if ((*(v16 + 48))(v15, 1, v144) == 1)
  {
    v40 = sub_22FD93E6C(v15, &qword_27DAE42D8, &unk_22FE4BA30);
  }

  else
  {
    v41 = v15;
    v42 = v143;
    v43 = sub_22FDE0250(v41, v143, type metadata accessor for StoredPhotoLayout.ImageLocation);
    MEMORY[0x28223BE20](v43);
    v142[-2] = v42;
    v44 = v149;
    sub_22FE42C14();
    v149 = v44;
    v45 = *(a1 + v29);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(a1 + v29);
    if ((v46 & 1) == 0)
    {
      v48 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      v51 = sub_22FE03B20(v47);

      *(a1 + v29) = v51;
      v47 = v51;
    }

    sub_22FDE0250(v145, v22, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    v37(v22, 0, 1, v23);
    v52 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
    swift_beginAccess();
    sub_22FDE176C(v22, v47 + v52, &qword_27DAE4618, &unk_22FE4DA30);
    swift_endAccess();
    v40 = sub_22FDE01F0(v42, type metadata accessor for StoredPhotoLayout.ImageLocation);
  }

  v53 = v151;
  v54 = (v39 + v151[6]);
  v55 = *v54;
  v56 = v54[1];
  *&v57 = MEMORY[0x28223BE20](v40);
  *&v142[-4] = v57;
  *&v142[-2] = v58;
  sub_22FDD5628(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto);
  v59 = v146;
  sub_22FE42C14();
  v60 = *(a1 + v29);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(a1 + v29);
  if ((v61 & 1) == 0)
  {
    v63 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    v66 = sub_22FE03B20(v62);

    *(a1 + v29) = v66;
    v62 = v66;
  }

  v67 = v148;
  sub_22FDE0250(v59, v148, type metadata accessor for StoredPhotoLayoutRectProto);
  v68 = *(v152 + 56);
  v152 += 56;
  v68(v67, 0, 1, v154);
  v69 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  sub_22FDE176C(v67, v62 + v69, &qword_27DAE4610, &unk_22FE4BA50);
  result = swift_endAccess();
  v71 = *(v153 + v53[7]);
  if (HIDWORD(v71))
  {
    __break(1u);
  }

  else
  {
    v72 = *(a1 + v29);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v74 = *(a1 + v29);
    if ((v73 & 1) == 0)
    {
      v75 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      swift_allocObject();
      v78 = sub_22FE03B20(v74);

      *(a1 + v29) = v78;
      v74 = v78;
    }

    v79 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
    v80 = swift_beginAccess();
    *(v74 + v79) = v71;
    v81 = v153;
    v82 = (v153 + v151[8]);
    v83 = *v82;
    v84 = v82[1];
    *&v85 = MEMORY[0x28223BE20](v80);
    *&v142[-4] = v85;
    *&v142[-2] = v86;
    sub_22FE42C14();
    v87 = *(a1 + v29);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(a1 + v29);
    if ((v88 & 1) == 0)
    {
      v90 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      swift_allocObject();
      v93 = sub_22FE03B20(v89);

      *(a1 + v29) = v93;
      v89 = v93;
    }

    v94 = v148;
    sub_22FDE0250(v147, v148, type metadata accessor for StoredPhotoLayoutRectProto);
    v68(v94, 0, 1, v154);
    v95 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
    swift_beginAccess();
    sub_22FDE176C(v94, v89 + v95, &qword_27DAE4610, &unk_22FE4BA50);
    swift_endAccess();
    v96 = v151;
    v97 = *(v81 + v151[9]);
    v98 = *(a1 + v29);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(a1 + v29);
    if ((v99 & 1) == 0)
    {
      v101 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      swift_allocObject();
      v104 = sub_22FE03B20(v100);

      *(a1 + v29) = v104;
      v100 = v104;
    }

    v105 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
    swift_beginAccess();
    *(v100 + v105) = v97;
    v106 = *(v81 + v96[10]);
    v107 = *(a1 + v29);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(a1 + v29);
    if ((v108 & 1) == 0)
    {
      v110 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v111 = *(v110 + 48);
      v112 = *(v110 + 52);
      swift_allocObject();
      v113 = sub_22FE03B20(v109);

      *(a1 + v29) = v113;
      v109 = v113;
    }

    v114 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
    swift_beginAccess();
    *(v109 + v114) = v106;
    v115 = *(v81 + v96[11]);
    v116 = *(a1 + v29);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v118 = *(a1 + v29);
    if ((v117 & 1) == 0)
    {
      v119 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v120 = *(v119 + 48);
      v121 = *(v119 + 52);
      swift_allocObject();
      v122 = sub_22FE03B20(v118);

      *(a1 + v29) = v122;
      v118 = v122;
    }

    v123 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
    swift_beginAccess();
    *(v118 + v123) = v115;
    v124 = *(v81 + v96[12]);
    v125 = *(a1 + v29);
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v127 = *(a1 + v29);
    if ((v126 & 1) == 0)
    {
      v128 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v129 = *(v128 + 48);
      v130 = *(v128 + 52);
      swift_allocObject();
      v131 = sub_22FE03B20(v127);

      *(a1 + v29) = v131;
      v127 = v131;
    }

    v132 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
    swift_beginAccess();
    *(v127 + v132) = v124;
    v133 = *(v81 + v96[13]);
    v134 = *(a1 + v29);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v136 = *(a1 + v29);
    if ((v135 & 1) == 0)
    {
      v137 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v138 = *(v137 + 48);
      v139 = *(v137 + 52);
      swift_allocObject();
      v140 = sub_22FE03B20(v136);

      *(a1 + v29) = v140;
      v136 = v140;
    }

    v141 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
    result = swift_beginAccess();
    *(v136 + v141) = v133;
  }

  return result;
}