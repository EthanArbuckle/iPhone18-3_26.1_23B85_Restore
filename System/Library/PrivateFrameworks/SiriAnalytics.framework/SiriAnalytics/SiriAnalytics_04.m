unint64_t sub_1D98B8E3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1D992BBC4();
  v5 = -1 << *(a2 + 32);
  result = sub_1D992BC74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D98B8EC0(uint64_t a1, unint64_t a2, char a3)
{
  v27 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D98B80D8(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_1D98B75E0(v5 + 1);
LABEL_8:
      v26 = v3;
      v7 = *v3;
      v8 = *(*v3 + 40);
      v9 = sub_1D992AE84();
      sub_1D9882D14(&qword_1ED8BF060);
      v10 = sub_1D992B5C4();
      v11 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v12 = *(v9 - 8);
        v13 = *(v12 + 64);
        v14 = MEMORY[0x1EEE9AC00](v10);
        v16 = &v26 - v15;
        (*(v12 + 16))(&v26 - v15, *(v7 + 48) + *(v17 + 72) * a2, v9, v14);
        sub_1D9882D14(&qword_1ED8BF058);
        v18 = sub_1D992B5F4();
        (*(v12 + 8))(v16, v9);
        if (v18)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v3 = v26;
      goto LABEL_13;
    }

    sub_1D98B6F6C();
  }

LABEL_13:
  v19 = *v3;
  *(v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v20 = *(v19 + 48);
  v21 = sub_1D992AE84();
  result = (*(*(v21 - 8) + 32))(v20 + *(*(v21 - 8) + 72) * a2, v27, v21);
  v23 = *(v19 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_16:
    result = sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v25;
  }

  return result;
}

void sub_1D98B9138(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, char a5)
{
  v9 = a3 & 0x100;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    v30 = a3;
    if (a5)
    {
      sub_1D98B8404(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1D98B71B0();
LABEL_22:
        LOBYTE(a3) = v30;
        goto LABEL_23;
      }

      sub_1D98B78EC(v10 + 1);
    }

    v12 = *v5;
    v13 = *(*v5 + 40);
    sub_1D992C074();
    sub_1D992B6D4();
    v14 = sub_1D992C0C4();
    v15 = v12 + 56;
    v16 = -1 << *(v12 + 32);
    a4 = v14 & ~v16;
    if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v17 = ~v16;
      v18 = *(v12 + 48);
      LOBYTE(a3) = v30;
      while (1)
      {
        v19 = v18 + 24 * a4;
        v20 = *(v19 + 16);
        v21 = *(v19 + 17);
        if (*v19 == a1 && *(v19 + 8) == a2)
        {
          if (v20 == a3 && (((v9 != 0) ^ v21) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v23 = sub_1D992BF64();
          LOBYTE(a3) = v30;
          if ((v23 & 1) != 0 && v20 == v30 && (((v9 != 0) ^ v21) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        a4 = (a4 + 1) & v17;
        if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  v24 = *v29;
  *(*v29 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v24 + 48) + 24 * a4;
  *v25 = a1;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  *(v25 + 17) = BYTE1(v9);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_26:
    sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }
}

uint64_t sub_1D98B9324(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1D98B8684(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1D98B7B44(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1D992C074();
      sub_1D992B6D4();
      result = sub_1D992C0C4();
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
        if (v19 || (sub_1D992BF64() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1D98B72A8();
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
    result = sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1D98B948C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D98B88E0(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1D98B7D78(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      v14 = sub_1D992BBC4();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1D992B1A4();
        v16 = *(*(v12 + 48) + 8 * a2);
        v17 = sub_1D992BBD4();

        if (v17)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1D98B7400();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1D98B95D4(int a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_36_3(v10);
      sub_1D98B8B04();
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      OUTLINED_FUNCTION_36_3(v10);
      sub_1D98B7F88();
LABEL_10:
      v16 = *v6;
      v17 = *(*v6 + 40);
      sub_1D992C074();
      sub_1D992C0A4();
      sub_1D992C0C4();
      v18 = *(v16 + 32);
      OUTLINED_FUNCTION_26_5();
      v21 = ~v20;
      while (1)
      {
        a2 = v19 & v21;
        if (((*(v16 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        a6(0);
        if (*(*(v16 + 48) + 4 * a2) == a1)
        {
          goto LABEL_15;
        }

        v19 = a2 + 1;
      }
    }

    sub_1D98B74DC(a4, a5);
  }

LABEL_7:
  v12 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }
}

uint64_t sub_1D98B9718(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D99323C0;
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

void sub_1D98B977C()
{
  v1 = *v0;
  sub_1D98BA774();
  *v0 = v2;
}

void sub_1D98B97C8()
{
  v1 = *v0;
  sub_1D986C66C();
  *v0 = v2;
}

void sub_1D98B9814()
{
  v1 = *v0;
  sub_1D98BA2B4();
  *v0 = v2;
}

void sub_1D98B9860()
{
  v1 = *v0;
  sub_1D98B9DD0();
  *v0 = v2;
}

void sub_1D98B98AC()
{
  v1 = *v0;
  sub_1D98B9DD0();
  *v0 = v2;
}

uint64_t sub_1D98B98F8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1D98BA1BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D98B9918()
{
  v1 = *v0;
  sub_1D98BA2B4();
  *v0 = v2;
}

size_t sub_1D98B9964(size_t a1, int64_t a2, char a3)
{
  result = sub_1D98BA374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D98B9984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LargeMessageUploadProcessor.process(uploadEvent:requestIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D98B9BB0;

  return v10(a1, a2);
}

uint64_t sub_1D98B9BB0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

void sub_1D98B9CA4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_15_4();
  sub_1D98BA774();
  *v0 = v2;
}

uint64_t sub_1D98B9CEC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1D98BA57C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D98B9D0C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1D98BA67C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D98B9D2C()
{
  v1 = *v0;
  sub_1D986C66C();
  *v0 = v2;
}

void sub_1D98B9D78()
{
  v1 = *v0;
  sub_1D98BA774();
  *v0 = v2;
}

void sub_1D98B9DD0()
{
  OUTLINED_FUNCTION_7_10();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_0();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_19_4(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_48(v9, v10, v11, v12, v13, v14);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_23_5(v16 - 32);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_22_4();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_16_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1D98B9E90()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D98B9F50;

  return sub_1D98B5CC4(v2, v3, v5, v4);
}

uint64_t sub_1D98B9F50()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_17();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_1D98BA108()
{
  result = qword_1ECB47990;
  if (!qword_1ECB47990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB489C8, &qword_1D9932500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47990);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1D98BA1BC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489E8, &unk_1D9932520);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_1D98BEAA0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1D98BA2B4()
{
  OUTLINED_FUNCTION_7_10();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_0();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_19_4(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_48(v9, v10, v11, v12, v13, v14);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_23_5(v16 - 32);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_22_4();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_16_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_1D98BA374(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A20, &qword_1D9932578);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0) - 8) + 80);
  if (v5)
  {
    sub_1D98BEB00();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1D98BA57C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1D98BEA80((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98BA67C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A08, &qword_1D9932560);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1D98BEA80((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1D98BA774()
{
  OUTLINED_FUNCTION_6_2();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_6_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_35_3();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_48(v0, v1, v2, v3, v4, v5);
  v17 = *(v9(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_23_5(v21 - v19);
LABEL_18:
  v23 = *(v9(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v7(v10 + v24, v15, &v20[v24]);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98BA908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiableTag();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98BA96C(uint64_t a1)
{
  v2 = type metadata accessor for IdentifiableTag();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D98BA9C8()
{
  result = qword_1ED8BD838[0];
  if (!qword_1ED8BD838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8BD838);
  }

  return result;
}

uint64_t sub_1D98BAA44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D98BAA8C(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1D9890810(a2);
  }

  return result;
}

void OUTLINED_FUNCTION_19_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_29_4()
{
  v2 = *v0;

  return sub_1D992BD04();
}

void OUTLINED_FUNCTION_30_3()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t sub_1D98BABEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A28, &qword_1D9935500);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ECB49688 = result;
  return result;
}

void sub_1D98BAC2C()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();
  }

  else
  {
    deviceSupportsGenerativeModelSystems = 0;
  }

  byte_1ECB49690 = deviceSupportsGenerativeModelSystems;
}

void sub_1D98BAC78()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    byte_1ED8BFBD1 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D98BACC0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1D98BB2A0(0xD000000000000022, 0x80000001D9939E60);
  if (result)
  {
    qword_1ECB496B8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D98BAD18()
{
  result = sub_1D98BAD3C();
  byte_1ECB496B0 = result & 1;
  return result;
}

uint64_t sub_1D98BAD3C()
{
  if (qword_1ECB47D48 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECB496B8;
  v1 = sub_1D992B614();
  LODWORD(v0) = [v0 BOOLForKey_];

  if (v0)
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    v2 = sub_1D98DCE30();
    sub_1D98DD144(0xD000000000000064, 0x80000001D9939EB0, 0xD000000000000014, 0x80000001D9939F20, v2);
    goto LABEL_7;
  }

  if (qword_1ED8BF440 != -1)
  {
    swift_once();
  }

  if ((byte_1ED8BFBD1 & 1) == 0)
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    v4 = sub_1D98DCE30();
    if (*(v4 + 24) == 1)
    {
      v5 = sub_1D98BAF44();
      v6 = *(v4 + 16);
      sub_1D986A454(v5, v7, 0xD000000000000064, 0x80000001D9939EB0, 0xD000000000000014, 0x80000001D9939F20);

      return 0;
    }

LABEL_7:

    return 0;
  }

  return 1;
}

uint64_t sub_1D98BAF44()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000034, 0x80000001D9939F40);
  if (qword_1ED8BF440 != -1)
  {
    swift_once();
  }

  if (byte_1ED8BFBD1)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (byte_1ED8BFBD1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x1DA739C30](v0, v1);

  MEMORY[0x1DA739C30](0x6975426465657320, 0xEC000000203A646CLL);
  MEMORY[0x1DA739C30](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1DA739C30](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D98BB068()
{
  result = sub_1D992B054();
  if (result)
  {
    v1 = result;
    v2 = [result isProvisional];

    if (!v2)
    {
      return 1;
    }

    if (qword_1ECB47D40 != -1)
    {
      OUTLINED_FUNCTION_0_31();
    }

    return byte_1ECB496B0 == 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static RuntimeConfigurationShim.canCollectProvisional.getter()
{
  if (qword_1ECB47D40 != -1)
  {
    OUTLINED_FUNCTION_0_31();
  }

  return byte_1ECB496B0;
}

BOOL static RuntimeConfigurationShim.canCollect(anyEvent:)(void *a1)
{
  if ([a1 anyEventType] != 7)
  {
    return 1;
  }

  if (qword_1ECB47D40 != -1)
  {
    OUTLINED_FUNCTION_0_31();
  }

  return byte_1ECB496B0 == 1;
}

id RuntimeConfigurationShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RuntimeConfigurationShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuntimeConfigurationShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RuntimeConfigurationShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuntimeConfigurationShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D98BB2A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1D992B614();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t static LogicalClockSummary.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECB48A30 = a1;
  return result;
}

uint64_t sub_1D98BB444@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48A30;
  return result;
}

uint64_t sub_1D98BB490(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48A30 = v1;
  return result;
}

uint64_t LogicalClockSummary.clockIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SiriAnalyticsLogicalClockSummary_clockIdentifier;
  v4 = sub_1D992AE84();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t LogicalClockSummary.endedOn.getter()
{
  result = *(v0 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn);
  v2 = *(v0 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn + 8);
  return result;
}

id LogicalClockSummary.init(clockIdentifier:derivativeClockIdentifiers:active:startedOn:endedOn:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = OBJC_IVAR___SiriAnalyticsLogicalClockSummary_clockIdentifier;
  v14 = sub_1D992AE84();
  OUTLINED_FUNCTION_6(v14);
  v16 = v15;
  (*(v17 + 16))(&v6[v13], a1, v14);
  *&v6[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_derivativeClockIdentifiers] = a2;
  v6[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_active] = a3;
  *&v6[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_startedOn] = a4;
  v18 = &v6[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn];
  *v18 = a5;
  v18[8] = a6 & 1;
  v21.receiver = v6;
  v21.super_class = type metadata accessor for LogicalClockSummary();
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v16 + 8))(a1, v14);
  return v19;
}

uint64_t type metadata accessor for LogicalClockSummary()
{
  result = qword_1ED8BF678;
  if (!qword_1ED8BF678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void LogicalClockSummary.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D992AE84();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  sub_1D986E35C(0, &qword_1ED8BD640, 0x1E696AFB0);
  v15 = sub_1D992BB94();
  if (!v15)
  {
    goto LABEL_3;
  }

  v16 = v15;
  v47 = v11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v46 - v19;
  __swift_storeEnumTagSinglePayload(&v46 - v19, 1, 1, v4);
  sub_1D98BBC34();
  sub_1D992BEF4();

  if (__swift_getEnumTagSinglePayload(v20, 1, v4) == 1)
  {
LABEL_3:

    type metadata accessor for LogicalClockSummary();
    v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return;
  }

  v23 = *(v7 + 32);
  v24 = v20;
  v25 = v7;
  v23(v14, v24, v4);
  v26 = v47;
  v23(v47, v14, v4);
  (*(v25 + 16))(v1 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_clockIdentifier, v26, v4);
  v27 = sub_1D992BBA4();
  if (v27)
  {
    v49 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48A40, &unk_1D99325C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48740, &qword_1D99313F0);
    v28 = swift_dynamicCast();
    v29 = v48;
    if (!v28)
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  *(v1 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_derivativeClockIdentifiers) = v29;
  v30 = OUTLINED_FUNCTION_35_4();
  v31 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_active] = v31;
  v32 = OUTLINED_FUNCTION_22_5();
  v33 = [a1 decodeInt64ForKey_];

  if ((v33 & 0x8000000000000000) == 0)
  {
    *&v2[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_startedOn] = v33;
    v34 = sub_1D992B614();
    v35 = [a1 containsValueForKey_];

    if (v35)
    {
      v36 = sub_1D992B614();
      v37 = [a1 decodeInt64ForKey_];

      v38 = *(v25 + 8);
      v25 += 8;
      v39 = OUTLINED_FUNCTION_9_2();
      v40(v39);
      if ((v37 & 0x8000000000000000) == 0)
      {
LABEL_14:
        v44 = &v2[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn];
        *v44 = v37;
        v44[8] = v35 ^ 1;
        v45 = type metadata accessor for LogicalClockSummary();
        v50.receiver = v2;
        v50.super_class = v45;
        objc_msgSendSuper2(&v50, sel_init);

        return;
      }

      __break(1u);
    }

    v41 = *(v25 + 8);
    v42 = OUTLINED_FUNCTION_9_2();
    v43(v42);
    v37 = 0;
    goto LABEL_14;
  }

  __break(1u);
}

unint64_t sub_1D98BBC34()
{
  result = qword_1ED8BD8D8;
  if (!qword_1ED8BD8D8)
  {
    sub_1D992AE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD8D8);
  }

  return result;
}

void sub_1D98BBCA8(void *a1)
{
  v2 = v1;
  v4 = sub_1D992AE44();
  v5 = sub_1D992B614();
  OUTLINED_FUNCTION_26_6(v5, sel_encodeObject_forKey_);

  if (*(v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_derivativeClockIdentifiers))
  {
    sub_1D992AE84();
    sub_1D992B7A4();
  }

  v6 = sub_1D992B614();
  OUTLINED_FUNCTION_26_6(v6, sel_encodeObject_forKey_);
  swift_unknownObjectRelease();

  v7 = *(v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_active);
  v8 = OUTLINED_FUNCTION_35_4();
  [a1 encodeBool:v7 forKey:v8];

  if ((*(v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_startedOn) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_26_6(v9, sel_encodeInt64_forKey_);

  v10 = (v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn);
  if (*(v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn + 8))
  {
    return;
  }

  v11 = *v10;
  if (*v10 < 0)
  {
    goto LABEL_10;
  }

  v12 = sub_1D992B614();
  [a1 encodeInt64:v11 forKey:v12];
}

id LogicalClockSummary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

BOOL Sequence<>.containsClockIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_6(AssociatedTypeWitness);
  v29 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  (*(v4 + 16))(v7, v2, a2, v13);
  OUTLINED_FUNCTION_33();
  sub_1D992B744();
  swift_getAssociatedConformanceWitness();
  v14 = &unk_1ED8BF000;
  while (1)
  {
    sub_1D992BC14();
    v15 = v30;
    if (!v30)
    {
LABEL_11:
      v24 = OUTLINED_FUNCTION_33_4();
      v25(v24);
      return v15 != 0;
    }

    if (sub_1D992AE54())
    {
      break;
    }

    v16 = v14[386];
    v17 = *&v15[v16];
    if (v17)
    {
      v18 = *(v17 + 16);
      v19 = *&v15[v16];

      v20 = 0;
      while (v18 != v20)
      {
        v21 = *(sub_1D992AE84() - 8);
        v22 = *(v21 + 80);
        v23 = *(v21 + 72);
        ++v20;
        if (sub_1D992AE54())
        {

          goto LABEL_11;
        }
      }

      v14 = &unk_1ED8BF000;
    }
  }

  v27 = OUTLINED_FUNCTION_33_4();
  v28(v27);

  return v15 != 0;
}

uint64_t Sequence<>.indexedByClockIdentifier()(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6(a1);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = OUTLINED_FUNCTION_6(AssociatedTypeWitness);
  v78 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v77 - v16;
  (*(v5 + 16))(v9, v1, a1, v15);
  sub_1D992B744();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = MEMORY[0x1E69E7CC8];
  v79 = v17;
  v80 = AssociatedTypeWitness;
  while (1)
  {
LABEL_2:
    sub_1D992BC14();
    v19 = v93;
    if (!v93)
    {
      (*(v78 + 8))(v17, AssociatedTypeWitness);
      return v18;
    }

    v20 = OBJC_IVAR___SiriAnalyticsLogicalClockSummary_clockIdentifier;
    v21 = sub_1D992AE84();
    v22 = OUTLINED_FUNCTION_6(v21);
    v24 = *(v23 + 64);
    v25 = MEMORY[0x1EEE9AC00](v22);
    v87 = v26;
    v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v89 = v28;
    v90 = v29;
    v91 = *(v29 + 16);
    v92 = v29 + 16;
    v91(v27, &v19[v20], v25);
    v88 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    v93 = v18;
    v30 = sub_1D9889568();
    if (__OFADD__(*(v18 + 2), (v31 & 1) == 0))
    {
      break;
    }

    v32 = v30;
    v33 = v31;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A50, &unk_1D99325D8);
    if (sub_1D992BE34())
    {
      v34 = sub_1D9889568();
      v36 = v88;
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_33;
      }

      v32 = v34;
      v37 = v89;
    }

    else
    {
      v36 = v88;
      v37 = v89;
    }

    v18 = v93;
    if (v33)
    {
      v38 = *(v93 + 7);
      v39 = *(v38 + 8 * v32);
      *(v38 + 8 * v32) = v36;

      v40 = OUTLINED_FUNCTION_31_6(v90);
      v41(v40);
    }

    else
    {
      OUTLINED_FUNCTION_30_4(&v93[8 * (v32 >> 6)]);
      v42 = v90;
      (v91)(v43 + *(v90 + 72) * v32, v27, v37);
      *(*(v18 + 7) + 8 * v32) = v36;
      v44 = OUTLINED_FUNCTION_31_6(v42);
      v45(v44);
      v46 = *(v18 + 2);
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_32;
      }

      *(v18 + 2) = v48;
    }

    v49 = *&v36[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_derivativeClockIdentifiers];
    if (v49)
    {
      v85 = *(v49 + 16);
      if (v85)
      {
        v50 = *(v90 + 80);
        OUTLINED_FUNCTION_28_4();
        v84 = v49 + v51;
        v83 = v52 + 8;

        v54 = 0;
        v82 = v49;
        while (v54 < *(v49 + 16))
        {
          v55 = *(v90 + 72);
          v56 = MEMORY[0x1EEE9AC00](v53);
          v58 = &v77 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v91)(v58, v56);
          v59 = v36;
          swift_isUniquelyReferenced_nonNull_native();
          v93 = v18;
          v60 = sub_1D9889568();
          v62 = v61;
          if (__OFADD__(*(v18 + 2), (v61 & 1) == 0))
          {
            goto LABEL_29;
          }

          v63 = v60;
          if (sub_1D992BE34())
          {
            v64 = sub_1D9889568();
            if ((v62 & 1) != (v65 & 1))
            {
              goto LABEL_33;
            }

            v63 = v64;
          }

          v66 = v89;
          v18 = v93;
          if (v62)
          {
            v67 = *(v93 + 7);
            v68 = *(v67 + 8 * v63);
            *(v67 + 8 * v63) = v59;

            v69 = OUTLINED_FUNCTION_32_5();
            v53 = v70(v69);
          }

          else
          {
            OUTLINED_FUNCTION_30_4(&v93[8 * (v63 >> 6)]);
            (v91)(v71 + v63 * v55, v58, v66);
            *(*(v18 + 7) + 8 * v63) = v59;
            v72 = OUTLINED_FUNCTION_32_5();
            v53 = v73(v72);
            v74 = *(v18 + 2);
            v47 = __OFADD__(v74, 1);
            v75 = v74 + 1;
            if (v47)
            {
              goto LABEL_30;
            }

            *(v18 + 2) = v75;
          }

          ++v54;
          v36 = v88;
          v49 = v82;
          if (v85 == v54)
          {

            v17 = v79;
            AssociatedTypeWitness = v80;
            goto LABEL_2;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

id sub_1D98BC820()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    sub_1D986E35C(0, &qword_1ED8BDB90, off_1E8586448);
    sub_1D992B624();
    v4 = sub_1D988045C();
    v5 = *(v0 + 16);
    *(v3 + 16) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t LogicalClocksService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t LogicalClocksService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1D98BC8E8()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[20];
  v2 = sub_1D98BC820();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D98BCA0C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A58, &unk_1D99325E8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D98BCCBC;
  v0[13] = &block_descriptor_7;
  v0[14] = v3;
  [v2 fetchLogicalClocksWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98BCA0C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_1D98BCB84;
  }

  else
  {
    v5 = sub_1D98BCB10;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98BCB10()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  if (v1 != 1)
  {
  }

  v3 = OUTLINED_FUNCTION_21();

  return v4(v3);
}

uint64_t sub_1D98BCB84()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[18] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(v0[10], v0[11], 0xD00000000000005ELL, 0x80000001D993A000, 0x29286C6C61, 0xE500000000000000);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1D98BCCBC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v7 = a4;

    return sub_1D98F1C38(v6, v7);
  }

  else
  {
    type metadata accessor for LogicalClockSummary();
    v9 = sub_1D992B7B4();

    return sub_1D98EF8B8(v6, a2, v9);
  }
}

uint64_t LogicalClocksService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id LogicalClocksXPCHandler.init(logicalClocks:)(char *a1)
{
  *&v1[OBJC_IVAR___SiriAnalyticsLogicalClocksXPCHandler_logicalClocks] = *&a1[OBJC_IVAR___SiriAnalyticsLogicalClocksProvider_provider];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LogicalClocksXPCHandler();

  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_1D98BCEA0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 16) + OBJC_IVAR___SiriAnalyticsLogicalClocksXPCHandler_logicalClocks);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D98BCF38;

  return sub_1D98E2CE4();
}

uint64_t sub_1D98BCF38()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D98BD02C, 0, 0);
}

uint64_t sub_1D98BD02C()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_30;
  }

  v57 = MEMORY[0x1E69E7CC0];
  result = sub_1D98682F0(v1);
  v3 = 0;
  v46 = v1 & 0xC000000000000001;
  v47 = result;
  v44 = v1 + 32;
  v45 = v1 & 0xFFFFFFFFFFFFFF8;
  v43 = v1;
  while (v3 != v47)
  {
    if (v46)
    {
      result = MEMORY[0x1DA73A2C0](v3, v1);
      v4 = result;
    }

    else
    {
      if (v3 >= *(v45 + 16))
      {
        goto LABEL_35;
      }

      v4 = *(v44 + 8 * v3);
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_34;
    }

    v6 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier;
    v7 = sub_1D992AE84();
    OUTLINED_FUNCTION_6(v7);
    v9 = v8;
    v11 = *(v10 + 64) + 15;
    v50 = swift_task_alloc();
    v53 = *(v9 + 16);
    v53(v50, v4 + v6, v7);
    v12 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs);
    if (v12)
    {
      v48 = v4;
      v49 = v3;
      v13 = v12 + 56;
      v14 = -1 << *(v12 + 32);
      if (-v14 < 64)
      {
        v15 = ~(-1 << -v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v12 + 56);
      v54 = swift_task_alloc();
      v17 = (63 - v14) >> 6;
      v56 = v9;
      result = swift_bridgeObjectRetain_n();
      v18 = 0;
      v19 = MEMORY[0x1E69E7CC0];
      v52 = v7;
      v51 = v12;
      if (v16)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        if (v20 >= v17)
        {
          break;
        }

        v16 = *(v13 + 8 * v20);
        ++v18;
        if (v16)
        {
          v18 = v20;
          do
          {
LABEL_17:
            v55 = *(v56 + 72);
            v53(v54, *(v12 + 48) + v55 * (__clz(__rbit64(v16)) | (v18 << 6)), v7);
            v21 = swift_task_alloc();
            v22 = *(v56 + 32);
            v22(v21, v54, v7);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = *(v19 + 16);
              OUTLINED_FUNCTION_24_4();
              sub_1D98BDF20(0, v27 + 1, 1, v19, &unk_1ECB48AC0, &qword_1D9932730, v28, v29);
              v19 = v30;
            }

            v23 = *(v19 + 16);
            if (v23 >= *(v19 + 24) >> 1)
            {
              OUTLINED_FUNCTION_24_4();
              sub_1D98BDF20(v31, v23 + 1, 1, v19, &unk_1ECB48AC0, &qword_1D9932730, v32, v33);
              v19 = v34;
            }

            v16 &= v16 - 1;
            *(v19 + 16) = v23 + 1;
            v24 = *(v56 + 80);
            OUTLINED_FUNCTION_28_4();
            v7 = v52;
            v22(v19 + v25 + v23 * v55, v21, v52);

            v12 = v51;
          }

          while (v16);
        }
      }

      v1 = v43;
      v4 = v48;
      v3 = v49;
    }

    else
    {
      v19 = 0;
    }

    v35 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_active);
    v36 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn);
    v37 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn);
    v38 = *(v4 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn + 8);
    v39 = objc_allocWithZone(type metadata accessor for LogicalClockSummary());
    LogicalClockSummary.init(clockIdentifier:derivativeClockIdentifiers:active:startedOn:endedOn:)(v50, v19, v35, v36, v37, v38);

    MEMORY[0x1DA739CE0](v40);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D992B7D4();
    }

    result = sub_1D992B7F4();
  }

LABEL_30:
  v41 = OUTLINED_FUNCTION_21();

  return v42(v41);
}

uint64_t sub_1D98BD518(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D98BD5C0;

  return sub_1D98BCE8C();
}

uint64_t sub_1D98BD5C0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  v4 = v3;
  OUTLINED_FUNCTION_16();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v9 = *v0;
  OUTLINED_FUNCTION_16();
  *v10 = v9;

  if (v2)
  {
    type metadata accessor for LogicalClockSummary();
    v11 = sub_1D992B7A4();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v4 + 24);
  (v12)[2](v12, v11);

  _Block_release(v12);
  v13 = *(v9 + 8);

  return v13();
}

id sub_1D98BD770(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D98BD848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_35_3();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 16);
  if (v8 <= v11)
  {
    v12 = *(a4 + 16);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_48(a1, a2, a3, a4, a5, a6);
    v13 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_5_13();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = (a4 + 32);
  if (v7)
  {
    if (v13 != a4 || &v16[16 * v11] <= v15)
    {
      memmove(v15, v16, 16 * v11);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BD920()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48738, &qword_1D9932140);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_14_7(v9);
    OUTLINED_FUNCTION_11_8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[8 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_33();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48B70, &unk_1D99327F0);
    OUTLINED_FUNCTION_33();
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BDA20()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_6(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B50, &qword_1D99327D0);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_8_8();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_29_5();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 24 * v3);
  }
}

void sub_1D98BDB08()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
    v9 = OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_14_7(v9);
    OUTLINED_FUNCTION_11_8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v2] <= v11)
    {
      memmove(v11, v12, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BDC04()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_6(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489E8, &unk_1D9932520);
    v9 = OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_14_7(v9);
    OUTLINED_FUNCTION_11_8();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_29_5();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_1D98BDCF4()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48B00, &unk_1D9932780);
    v9 = OUTLINED_FUNCTION_25_4();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_8_8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v2] <= v11)
    {
      memmove(v11, v12, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BDDF8()
{
  OUTLINED_FUNCTION_9_8();
  if (v3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1D98BE82C(*(v0 + 16), v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48938, &unk_1D99321F8) - 8) + 80);
  OUTLINED_FUNCTION_28_4();
  if (v1)
  {
    sub_1D98BEB14();
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BDF20(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_35_3();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1D98BE934(v15, v12, a5, a6, a7);
  v17 = *(*(a8(0) - 8) + 80);
  OUTLINED_FUNCTION_28_4();
  if (a1)
  {
    sub_1D98BEBEC(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE018()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B30, &unk_1D9932540);
    v9 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_13();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE19C()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_6(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_48(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_5_13();
    v15[2] = v3;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = OUTLINED_FUNCTION_29_5();
  if (v1)
  {
    if (v15 != v0 || &v18[16 * v3] <= v17)
    {
      memmove(v17, v18, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v3);
  }
}

void sub_1D98BE254()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B98, &qword_1D9932810);
    v9 = OUTLINED_FUNCTION_25_4();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_8_8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_33();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48BA0, &qword_1D9932818);
    OUTLINED_FUNCTION_33();
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE364()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_48(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_5_13();
    v15[2] = v2;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[2 * v2 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_33();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48AB0, &qword_1D9932720);
    OUTLINED_FUNCTION_33();
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE4A8()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B38, &qword_1D99327B8);
    v9 = OUTLINED_FUNCTION_25_4();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_8_8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v2] <= v11)
    {
      memmove(v11, v12, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D98BE5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_35_3();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_48(a1, a2, a3, a4, a5, a6);
    v17 = OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_14_7(v17);
    OUTLINED_FUNCTION_11_8();
    v17[2] = v15;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v17 != a4 || a4 + 32 + 8 * v15 <= (v17 + 4))
    {
      memmove(v17 + 4, (a4 + 32), 8 * v15);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void *sub_1D98BE6B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B80, &unk_1D9932800);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_14_7(v4);
  v4[2] = a1;
  v4[3] = 2 * (v5 / 24);
  return v4;
}

void *sub_1D98BE74C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B48, &qword_1D9933FF0);
  v4 = OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_14_7(v4);
  v4[2] = a1;
  v4[3] = (2 * (v5 / 8)) | 1;
  return v4;
}

void *sub_1D98BE7C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489E8, &unk_1D9932520);
  v4 = OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_14_7(v4);
  OUTLINED_FUNCTION_11_8();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_1D98BE82C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AD0, &unk_1D9932750);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48938, &unk_1D99321F8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1D98BE934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1D98BEA3C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

char *sub_1D98BEA5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

char *sub_1D98BEA80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

char *sub_1D98BEAA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

char *sub_1D98BEAC0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

uint64_t sub_1D98BEB14()
{
  OUTLINED_FUNCTION_27_4();
  if (v3 && (v4 = OUTLINED_FUNCTION_9_2(), v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), result = OUTLINED_FUNCTION_5(v6), v1 + *(v8 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_6_12();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_6_12();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_1D98BEBEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_27_4();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_5(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_6_12();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_6_12();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

unint64_t sub_1D98BECA0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D98BED08()
{
  result = sub_1D992AE84();
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

uint64_t dispatch thunk of LogicalClocksService.all()()
{
  OUTLINED_FUNCTION_26();
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98BEF98;

  return v6();
}

uint64_t sub_1D98BEF98()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_16();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_21();

  return v6(v5);
}

uint64_t dispatch thunk of LogicalClocksXPCHandler.all()()
{
  OUTLINED_FUNCTION_26();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98BF360;

  return v6();
}

uint64_t sub_1D98BF1C8()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98BF270;

  return sub_1D98BD518(v2, v3);
}

uint64_t sub_1D98BF270()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_16();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t OUTLINED_FUNCTION_22_5()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_32_5()
{
  result = v0;
  v3 = *(v1 - 152);
  v4 = *(v1 - 176);
  return result;
}

uint64_t sub_1D98BF3EC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D98BF40C, v1, 0);
}

uint64_t sub_1D98BF40C()
{
  v1 = *(v0 + 56);
  v2 = sub_1D98BB068();
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 112), *(*(v0 + 64) + 136));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B48, &qword_1D9933FF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9932820;
    *(inited + 32) = v3;
    v6 = *v4;
    v7 = v3;
    sub_1D98B0BDC(inited);
    swift_setDeallocating();
    sub_1D989943C();
  }

  else
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    v8 = sub_1D98DCE30();
    if (*(v8 + 24) == 1)
    {
      v9 = *(v0 + 56);
      v10 = sub_1D98BF59C(v9);
      v11 = *(v8 + 16);
      sub_1D986A454(v10, v12, 0xD000000000000069, 0x80000001D993A1D0, 0x5F28646E65707061, 0xEA0000000000293ALL);
    }
  }

  v13 = *(v0 + 8);

  return v13(v2 & 1);
}

uint64_t sub_1D98BF59C(void *a1)
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000001ELL, 0x80000001D993A240);
  v2 = [a1 description];
  v3 = sub_1D992B624();
  v5 = v4;

  MEMORY[0x1DA739C30](v3, v5);

  MEMORY[0x1DA739C30](0xD000000000000018, 0x80000001D993A260);
  return 0;
}

uint64_t sub_1D98BF674()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D98BF6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_12_7(v7, v13);
  v8 = sub_1D992B874();
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    sub_1D988C380(v3);
  }

  else
  {
    sub_1D992B864();
    (*(*(v8 - 8) + 8))(v3, v8);
  }

  if (*(a3 + 16))
  {
    v9 = *(a3 + 24);
    v10 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D992B814();
    swift_unknownObjectRelease();
  }

  v11 = *v3;
  type metadata accessor for StagingReport();
  swift_task_create();
}

uint64_t sub_1D98BF868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1D988C450(a1, v20 - v9);
  v11 = sub_1D992B874();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1D988C380(v10);
  }

  else
  {
    sub_1D992B864();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1D992B814();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1D98BFA18()
{
  sub_1D992B514();
  sub_1D98C2AA4(&qword_1ED8BF418, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BD0, &unk_1D9932A70);
  sub_1D98C2AEC();
  return sub_1D992BC44();
}

uint64_t sub_1D98BFAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_12_7(v11, v18);
  v12 = sub_1D992B874();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D988C380(v5);
  }

  else
  {
    sub_1D992B864();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D988C380(a3);
    return OUTLINED_FUNCTION_16_7();
  }

  swift_getObjectType();
  sub_1D992B814();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D992B6B4();

  v16 = OUTLINED_FUNCTION_16_7();

  sub_1D988C380(a3);

  return v16;
}

id IngestionExtension.configuration.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_6(a1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, v2, a1);
  result = sub_1D98BFDB0(v10, a1);
  *a2 = result;
  return result;
}

id sub_1D98BFDB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  type metadata accessor for ConcreteConfiguration.ExportedObject();
  (*(v4 + 16))(v8, a1, a2);
  v9 = sub_1D98C0074(v8);
  (*(v4 + 8))(a1, a2);
  return v9;
}

uint64_t dispatch thunk of IngestionExtension.ingest(dataPool:)()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_1D98692C4;

  return v11(v6, v4, v2);
}

uint64_t sub_1D98BFFCC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D98C00A8(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_1D98C0170(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

id sub_1D98C01A4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = MEMORY[0x1E69E7D40];
  v7 = sub_1D992B514();
  v8 = OUTLINED_FUNCTION_6(v7);
  v38 = v9;
  v39 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v15 = sub_1D992B544();
  v16 = OUTLINED_FUNCTION_6(v15);
  v36 = v17;
  v37 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v22 = v21 - v20;
  *&v2[*((v5 & v4) + 0x70)] = 0;
  v23 = *((v5 & v4) + 0x50);
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v2[*((*v6 & *v2) + 0x60)], a1, v23);
  v25 = sub_1D992B314();
  signal(15, v25);
  sub_1D986E35C(0, &qword_1ED8BF3F0, 0x1E69E9630);
  sub_1D986E35C(0, &qword_1ED8BF400, 0x1E69E9610);
  v26 = sub_1D992BA44();
  v27 = sub_1D992BA84();

  *&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x68)] = v27;
  v28 = *((v5 & v4) + 0x58);
  v41.receiver = v2;
  v41.super_class = type metadata accessor for ConcreteConfiguration.ExportedObject();
  swift_unknownObjectRetain();
  v29 = objc_msgSendSuper2(&v41, sel_init);
  swift_getObjectType();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v31[2] = v23;
  v31[3] = v28;
  v31[4] = v30;
  aBlock[4] = sub_1D98C2A80;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D98F9B34;
  aBlock[3] = &block_descriptor_8;
  v32 = _Block_copy(aBlock);
  v33 = v29;

  sub_1D992B534();
  sub_1D98BFA18();
  sub_1D992BA94();
  _Block_release(v32);
  (*(v38 + 8))(v14, v39);
  (*(v36 + 8))(v22, v37);

  sub_1D992BAB4();
  swift_unknownObjectRelease();

  (*(v24 + 8))(a1, v23);
  return v33;
}

uint64_t sub_1D98C0598()
{
  v0 = sub_1D992B514();
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D992B544();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D992B504();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1D992B564();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  if (qword_1ED8BF430 != -1)
  {
    swift_once();
  }

  sub_1D986A454(0xD000000000000022, 0x80000001D993A2B0, 0xD000000000000071, 0x80000001D993A2E0, 0x293A5F2874696E69, 0xE800000000000000);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = sub_1D98C0144();

    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
      sub_1D992B894();
    }
  }

  sub_1D986E35C(0, &qword_1ED8BF400, 0x1E69E9610);
  v30 = sub_1D992BA44();
  sub_1D992B554();
  *v11 = 500;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E7F38], v7);
  MEMORY[0x1DA739AC0](v16, v11);
  (*(v8 + 8))(v11, v7);
  v23 = *(v13 + 8);
  v23(v16, v12);
  aBlock[4] = sub_1D98C0ADC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D98F9B34;
  aBlock[3] = &block_descriptor_37;
  v24 = _Block_copy(aBlock);
  sub_1D992B534();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D98C2AA4(&qword_1ED8BF418, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BD0, &unk_1D9932A70);
  sub_1D98C2AEC();
  v25 = v31;
  v26 = v35;
  sub_1D992BC44();
  v27 = v30;
  MEMORY[0x1DA739F70](v19, v6, v25, v24);
  _Block_release(v24);

  (*(v34 + 8))(v25, v26);
  (*(v32 + 8))(v6, v33);
  return (v23)(v19, v12);
}

void sub_1D98C0ADC()
{
  if (qword_1ED8BF430 != -1)
  {
    swift_once();
  }

  sub_1D986A454(0xD000000000000019, 0x80000001D993A360, 0xD000000000000071, 0x80000001D993A2E0, 0x293A5F2874696E69, 0xE800000000000000);
  exit(0);
}

void sub_1D98C0B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34[-v14];
  type metadata accessor for SandboxExtension();
  v16 = swift_allocObject();
  *(v16 + 24) = a3;
  *(v16 + 32) = 0;
  *(v16 + 40) = 1;
  *(v16 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48BB8, &qword_1D9932A00);
  v17 = sub_1D992AD44();
  v18 = OUTLINED_FUNCTION_6(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  (*(v23 + 16))(v22 - v21, a1);
  v24 = *MEMORY[0x1E696A388];

  v25 = v24;
  v34[12] = 0;
  v26 = sub_1D992B324();
  sub_1D988E70C();
  v27 = v16 | 0x8000000000000000;
  v28 = objc_allocWithZone(type metadata accessor for StagingReport());
  v29 = sub_1D988C7F4(1);
  v30 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v6;
  v31[5] = v26;
  v31[6] = v27;
  v31[7] = v29;
  v31[8] = a4;
  v31[9] = a5;
  v6;
  sub_1D98C19D8(v26, v27);
  v32 = v29;

  v33 = sub_1D98BFAD0(0, 0, v15, &unk_1D9932A10, v31);
  sub_1D98C0170(v33);
  sub_1D98C18BC(v26, v27);
}

uint64_t sub_1D98C0E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1D98C19D8(a5, a6);
  v10 = a7;

  return MEMORY[0x1EEE6DFA0](sub_1D98C0EBC, 0, 0);
}

uint64_t sub_1D98C0EBC()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D989EC44();
  v5 = swift_allocError();
  v0[8] = v5;
  *v6 = 1;
  OUTLINED_FUNCTION_128();
  v7 = swift_allocObject();
  v0[9] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v2;
  sub_1D98C19D8(v3, v1);
  v8 = v2;
  v9 = v4;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *(v10 + 16) = &unk_1D9932A20;
  *(v10 + 24) = v7;
  *(v10 + 32) = xmmword_1D9932890;
  *(v10 + 48) = v5;
  v11 = *(MEMORY[0x1E69E88A0] + 4);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1D98C102C;
  OUTLINED_FUNCTION_18_5();

  return MEMORY[0x1EEE6DD58](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1D98C102C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;
  v3[12] = v0;

  if (!v0)
  {
    v9 = v3[9];
    v10 = v3[10];
    v11 = v3[8];
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D98C1144()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 56);
  (*(v0 + 48))(*(v0 + 40), 0);
  v2 = *(v0 + 40);
  sub_1D98C18BC(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_16_0();

  return v3();
}

void sub_1D98C11B8()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  v8 = sub_1D992AC84();
  v7(v6, v8);

  v9 = v0[5];
  sub_1D98C18BC(v0[3], v0[4]);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_18_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D98C1270(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x60);
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v9 = *((v7 & v6) + 0x58);
  v10 = *(v9 + 16);
  v11 = *((v7 & v6) + 0x50);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_1D98C13EC;

  return (v15)(v5 + 2, v11, v9);
}

uint64_t sub_1D98C13EC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_1D98C1504()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t sub_1D98C1528(void *a1, int a2, int a3, int a4, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = sub_1D992AD44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AD14();
  v12 = sub_1D992B624();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  v16 = a1;
  sub_1D98C0B78(v11, v12, v14, sub_1D98C2B50, v15);

  return (*(v8 + 8))(v11, v7);
}

id sub_1D98C16C4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ConcreteConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D98C1734(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
  OUTLINED_FUNCTION_14_8();
  v3 = *&a1[*(v2 + 104)];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_8();
  v5 = *&a1[*(v4 + 112)];
}

uint64_t sub_1D98C1824()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D98C1880(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D98C18BC(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_1D98C1908()
{
  OUTLINED_FUNCTION_13_6();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4_13(v7);
  *v8 = v9;
  v8[1] = sub_1D98692C4;
  v10 = OUTLINED_FUNCTION_0_33();

  return sub_1D98C0E30(v10, v11, v12, v13, v2, v3, v4, v6);
}

uint64_t sub_1D98C19D8(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_1D98C1A24()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_13_6();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_13(v3);
  *v4 = v5;
  v4[1] = sub_1D98692C4;
  v6 = OUTLINED_FUNCTION_0_33();

  return sub_1D98C1270(v6, v7, v8, v9, v1);
}

uint64_t sub_1D98C1AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D98C1B68, 0, 0);
}

uint64_t sub_1D98C1B68()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  sub_1D992B874();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_128();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v5;

  sub_1D98BF868(v1, &unk_1D9932A40, v8);
  sub_1D988C380(v1);
  OUTLINED_FUNCTION_17_6();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v2;
  v10 = v2;
  sub_1D98BF868(v1, &unk_1D9932A50, v9);
  sub_1D988C380(v1);
  v11 = *(MEMORY[0x1E69E8700] + 4);
  v12 = swift_task_alloc();
  v0[11] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BC8, &unk_1D9932A58);
  *v12 = v0;
  v12[1] = sub_1D98C1D00;
  v14 = v0[4];

  return MEMORY[0x1EEE6DAB8](v0 + 2, v13);
}

uint64_t sub_1D98C1D00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    *(v3 + 104) = *(v3 + 16);
    *(v3 + 25) = *(v3 + 24);
  }

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D98C1E0C()
{
  v1 = *(v0 + 25);
  v2 = **(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992B8D4();
  if (v1 == 255)
  {
    v5 = *(v0 + 72);
    swift_willThrow();
    v6 = v5;
    v7 = *(v0 + 72);
    goto LABEL_5;
  }

  v3 = *(v0 + 104);
  if (*(v0 + 25))
  {
    v4 = *(v0 + 104);
    swift_willThrow();
LABEL_5:
    v8 = *(v0 + 80);

    OUTLINED_FUNCTION_25();
    goto LABEL_7;
  }

  v10 = *(v0 + 80);
  sub_1D98C25E0(*(v0 + 104), *(v0 + 25));

  OUTLINED_FUNCTION_16_0();
LABEL_7:

  return v9();
}

uint64_t sub_1D98C1F20(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_13(v10);
  *v11 = v12;
  v11[1] = sub_1D98692C4;

  return sub_1D98C1AC4(a1, a2, v5, v6, v7, v8, v9);
}

uint64_t sub_1D98C1FF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1D989EB64;

  return v9(a1);
}

uint64_t sub_1D98C20E8()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_13_6();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_13(v3);
  *v4 = v5;
  v4[1] = sub_1D98692C4;
  v6 = OUTLINED_FUNCTION_0_33();

  return sub_1D98C1FF0(v6, v7, v8, v9);
}

uint64_t sub_1D98C2188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1D992BE04();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D98C224C, 0, 0);
}

uint64_t sub_1D98C224C()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[7];
  sub_1D992BFF4();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1D98C2308;
  v3 = v0[7];
  v5 = v0[2];
  v4 = v0[3];

  return sub_1D98C2604();
}

uint64_t sub_1D98C2308()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  v8 = v4[5];
  v9 = *v1;
  OUTLINED_FUNCTION_17();
  *v10 = v9;
  *(v11 + 72) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D98C2464()
{
  v1 = *(v0 + 32);
  swift_willThrow();
  v2 = v1;
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D98C24E0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1D98C253C()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_13_6();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4_13(v4);
  *v5 = v6;
  v5[1] = sub_1D989EB64;
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_18_5();

  return sub_1D98C2188(v7, v8, v9, v10, v11, v12);
}

void sub_1D98C25E0(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D98C25F8(a1, a2 & 1);
  }
}

void sub_1D98C25F8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1D98C2604()
{
  OUTLINED_FUNCTION_26_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1D992BDF4();
  *(v1 + 64) = v12;
  v13 = *(v12 - 8);
  *(v1 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_5();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D98C26F8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D992BE04();
  v7 = sub_1D98C2AA4(&qword_1ED8BF508, MEMORY[0x1E69E8820]);
  sub_1D992BFD4();
  sub_1D98C2AA4(&qword_1ED8BF510, MEMORY[0x1E69E87E8]);
  sub_1D992BE14();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D98C2888;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D98C2888()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_17();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (!v0)
  {
    v18 = v3[10];
    v17 = v3[11];

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_18_5();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_5();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D98C2A1C()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_25();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1D98C2A80()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D98C0598();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D98C2AA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D98C2AEC()
{
  result = qword_1ED8BF408;
  if (!qword_1ED8BF408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48BD0, &unk_1D9932A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BF408);
  }

  return result;
}

uint64_t static DataClassificationTag.space.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48BD8;
  return result;
}

uint64_t static DataClassificationTag.space.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48BD8 = v1;
  return result;
}

uint64_t sub_1D98C2C68@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48BD8;
  return result;
}

uint64_t sub_1D98C2CB4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48BD8 = v1;
  return result;
}

unint64_t DataClassificationTag.predicate.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return sub_1D98907D8(v2);
}

uint64_t DataClassificationTag.init(classification:predicate:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  result = sub_1D986D53C(a1, a3);
  *(a3 + 40) = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics12TagPredicateO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
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

uint64_t sub_1D98C2D78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98C2DB8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t SensitiveConditionTag.init(conditionType:predicate:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t static SensitiveConditionTag.space.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48BE0;
  return result;
}

uint64_t static SensitiveConditionTag.space.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48BE0 = v1;
  return result;
}

uint64_t sub_1D98C2F10@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48BE0;
  return result;
}

uint64_t sub_1D98C2F5C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48BE0 = v1;
  return result;
}

unint64_t SensitiveConditionTag.predicate.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D98907D8(v2);
}

uint64_t static SensitiveConditionTag.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
    v5 = v2;
    v6 = *(a1 + 8);
    sub_1D98907D8(v6);
    sub_1D98907D8(v2);
    v3 = static TagPredicate.== infix(_:_:)();
    sub_1D9890810(v5);
    sub_1D9890810(v6);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id TagShim.__allocating_init(conditionType:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);

  return [v7 initWithConditionType:a1 start:a2 end:a3];
}

id TagShim.init(conditionType:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = 0;
  v14 = objc_allocWithZone(type metadata accessor for TagShim());
  v15 = OUTLINED_FUNCTION_4_14(v14);
  sub_1D9890810(v13);
  swift_getObjectType();
  OUTLINED_FUNCTION_1_21();
  v17 = *((*MEMORY[0x1E69E7D40] & v16) + 0x30);
  v18 = *((*MEMORY[0x1E69E7D40] & v16) + 0x34);
  swift_deallocPartialClassInstance();
  return v15;
}

id TagShim.__allocating_init(conditionType:start:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithConditionType:a1 start:a2];
}

id TagShim.__allocating_init(conditionType:end:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithConditionType:a1 end:a2];
}

id sub_1D98C32B8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = 0;
  *(v13 + 32) = a3;
  v14 = objc_allocWithZone(type metadata accessor for TagShim());
  v15 = OUTLINED_FUNCTION_4_14(v14);
  sub_1D9890810(v13);
  swift_getObjectType();
  OUTLINED_FUNCTION_1_21();
  v17 = *((*MEMORY[0x1E69E7D40] & v16) + 0x30);
  v18 = *((*MEMORY[0x1E69E7D40] & v16) + 0x34);
  swift_deallocPartialClassInstance();
  return v15;
}

id TagShim.__allocating_init(conditionTypeAffectingEntireClock:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithConditionTypeAffectingEntireClock_];
}

id TagShim.init(conditionTypeAffectingEntireClock:)(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = objc_allocWithZone(type metadata accessor for TagShim());
  sub_1D98907D8(0xA000000000000000);
  v13 = sub_1D98C3A7C(v7, a1, 0xA000000000000000, v12);
  sub_1D9890810(0xA000000000000000);
  swift_getObjectType();
  OUTLINED_FUNCTION_1_21();
  v15 = *((*MEMORY[0x1E69E7D40] & v14) + 0x30);
  v16 = *((*MEMORY[0x1E69E7D40] & v14) + 0x34);
  swift_deallocPartialClassInstance();
  return v13;
}

id TagShim.__allocating_init(conditionType:componentId:componentName:joined:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1D992AE44();
  v11 = [v9 initWithConditionType:a1 componentId:v10 componentName:a3 joined:a4 & 1];

  v12 = sub_1D992AE84();
  OUTLINED_FUNCTION_0_4(v12);
  (*(v13 + 8))(a2);
  return v11;
}

id TagShim.init(conditionType:componentId:componentName:joined:)(int a1, uint64_t a2, int a3, char a4)
{
  v31 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v18 = swift_allocBox();
  v20 = v19;
  v21 = *(v17 + 48);
  v22 = *(type metadata accessor for ComponentId(0) + 20);
  v23 = *(v13 - 8);
  (*(v23 + 16))(&v20[v22], a2, v13);
  *v20 = a3;
  v20[v21] = a4;
  v24 = objc_allocWithZone(type metadata accessor for TagShim());
  sub_1D98907D8(v18 | 0x2000000000000000);
  v25 = sub_1D98C3A7C(v12, v31, v18 | 0x2000000000000000, v24);
  (*(v23 + 8))(a2, v13);
  sub_1D9890810(v18 | 0x2000000000000000);
  swift_getObjectType();
  OUTLINED_FUNCTION_1_21();
  v27 = *((*MEMORY[0x1E69E7D40] & v26) + 0x30);
  v28 = *((*MEMORY[0x1E69E7D40] & v26) + 0x34);
  swift_deallocPartialClassInstance();
  return v25;
}

id TagShim.__allocating_init(conditionType:requestId:joined:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1D992AE44();
  v9 = [v7 initWithConditionType:a1 requestId:v8 joined:a3 & 1];

  v10 = sub_1D992AE84();
  OUTLINED_FUNCTION_0_4(v10);
  (*(v11 + 8))(a2);
  return v9;
}

id TagShim.init(conditionType:requestId:joined:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D992AE44();
  v9 = [v4 initWithConditionType:a1 componentId:v8 componentName:1 joined:a3 & 1];

  v10 = sub_1D992AE84();
  OUTLINED_FUNCTION_0_4(v10);
  (*(v11 + 8))(a2);
  return v9;
}

id sub_1D98C3A7C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v9[3] = &type metadata for SensitiveConditionTag;
  v9[4] = &protocol witness table for SensitiveConditionTag;
  LODWORD(v9[0]) = a2;
  v9[1] = a3;
  sub_1D9879FF8(a1, a4 + OBJC_IVAR___SiriAnalyticsTagShim_identifier);
  sub_1D98B37DC(v9, a4 + OBJC_IVAR___SiriAnalyticsTagShim_underlying);
  v8.receiver = a4;
  v8.super_class = type metadata accessor for TagShim();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1D987625C(a1);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t sub_1D98C3B24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 16))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D98C3B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D98C3BD8(void (*a1)(__int128 *__return_ptr, unint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v16 = *v7;
      sub_1D98907D8(v16);
      a1(&v13, &v16);
      if (v3)
      {
        break;
      }

      sub_1D9890810(v16);
      if (v14)
      {
        sub_1D986D53C(&v13, v15);
        sub_1D986D53C(v15, &v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = *(v6 + 16);
          sub_1D98BE254();
          v6 = v10;
        }

        v8 = *(v6 + 16);
        if (v8 >= *(v6 + 24) >> 1)
        {
          sub_1D98BE254();
          v6 = v11;
        }

        *(v6 + 16) = v8 + 1;
        sub_1D986D53C(&v13, v6 + 40 * v8 + 32);
      }

      else
      {
        sub_1D986B804(&v13, &qword_1ECB48BE8, &qword_1D9932CC8);
      }

      ++v7;
      if (!--v5)
      {
        return v6;
      }
    }

    sub_1D9890810(v16);
  }

  return v6;
}

uint64_t sub_1D98C3D44(uint64_t a1)
{
  v2 = v1;
  v4 = v1[2];
  if (*(v4 + 16) && (v5 = sub_1D9889568(), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56);
    v8 = *(v7 + 8 * v5);
    if (v8)
    {
      v9 = *(v7 + 8 * v5);
    }
  }

  else
  {
    v10 = *v2;
    v8 = Metastore.componentIdComprehension(for:)(a1);
    if (v8)
    {

      v11 = v2[2];
      swift_isUniquelyReferenced_nonNull_native();
      v12 = v2[2];
      OUTLINED_FUNCTION_7_11();
      v19 = v8;
    }

    else
    {
      v20 = v2[2];
      swift_isUniquelyReferenced_nonNull_native();
      v21 = v2[2];
      OUTLINED_FUNCTION_7_11();
      v19 = 0;
    }

    sub_1D989E2CC(v19, a1, v13, v14, v15, v16, v17, v18, v23, v24, v26, v27);
    v2[2] = v25;
  }

  return v8;
}

uint64_t sub_1D98C3E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v4[2] = a3;
  v4[3] = a2;
  sub_1D98B6408(sub_1D98B99F4, v4, a1);
  result = v5;
  if (!*(v5 + 16))
  {

    return 0;
  }

  return result;
}

unint64_t sub_1D98C3E84(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a1;
  v11 = *(a1 + 1);
  if ((sub_1D992BB74() & 1) == 0)
  {
    goto LABEL_10;
  }

  v98 = a4;
  v97 = v10;
  v96 = v5;
  v104 = a3;
  v12 = sub_1D992AE84();
  v95 = v79;
  v13 = OUTLINED_FUNCTION_6(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v99 = v18;
  v19 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v79 - v24;
  sub_1D9879FF8(a2, v79 - v24);
  if (__swift_getEnumTagSinglePayload(v25, 1, v12) == 1)
  {
    sub_1D986B804(v25, &qword_1ECB481D0, &qword_1D992F9F0);
LABEL_4:
    a3 = v104;
LABEL_9:
    v10 = v97;
LABEL_10:
    sub_1D98907D8(v11);
    v31 = v11;
    goto LABEL_11;
  }

  v92 = *(v15 + 32);
  v93 = v15 + 32;
  v92(v19, v25, v12);
  a3 = v104;
  v26 = sub_1D992AE54();
  if ((v26 & 1) == 0)
  {
    (*(v15 + 8))(v19, v12);
    goto LABEL_9;
  }

  v87 = v19;
  v86 = v15;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v100 = v11;
  MEMORY[0x1EEE9AC00](v29);
  v30 = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D990EE94(v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
  {
    (*(v86 + 8))(v87, v12);
    sub_1D986B804(v30, &qword_1ECB481D0, &qword_1D992F9F0);
    goto LABEL_4;
  }

  v85 = v79;
  v92(v28, v30, v12);
  v42 = v28;
  v43 = v87;
  v44 = sub_1D98C3D44(v87);
  v10 = v97;
  if (!v44)
  {
    v72 = v12;
    v73 = *(v86 + 8);
    v73(v42, v72);
    v73(v43, v72);
    a3 = v104;
    goto LABEL_10;
  }

  v91 = v12;
  v83 = v44;
  v45 = sub_1D98D6BC8(v42);
  if (qword_1ED8BD6E0 != -1)
  {
    swift_once();
  }

  v94 = qword_1ECB49640;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0x6F697469646E6F63, 0xEF203A657079546ELL);
  v46 = sub_1D992BB54();
  MEMORY[0x1DA739C30](v46);

  MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D993A400);
  sub_1D98A19C4();
  v84 = v42;
  v47 = v91;
  v48 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v48);

  MEMORY[0x1DA739C30](0xD00000000000001ELL, 0x80000001D993A420);
  v103[0] = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BF0, &unk_1D9932CD0);
  v49 = sub_1D992B6A4();
  MEMORY[0x1DA739C30](v49);

  sub_1D986A454(v100, *(&v100 + 1), 0xD00000000000005BLL, 0x80000001D993A440, 0xD000000000000031, 0x80000001D993A4A0);

  if (v45)
  {
    v82 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
    v50 = swift_allocObject();
    v51 = v50;
    *(v50 + 16) = xmmword_1D992FCB0;
    *(v50 + 32) = v11;
    v52 = *(v45 + 16);
    v53 = v86;
    if (v52)
    {
      v79[0] = v50;
      v80 = a5;
      v81 = v11;
      sub_1D98907D8(v11);
      *&v100 = MEMORY[0x1E69E7CC0];
      v54 = sub_1D98B9CEC(0, v52, 0);
      v55 = v100;
      v57 = *(v53 + 16);
      v56 = v53 + 16;
      v89 = v57;
      v58 = (*(v56 + 64) + 32) & ~*(v56 + 64);
      v79[1] = v45;
      v59 = v45 + v58;
      v90 = v56;
      v88 = *(v56 + 56);
      do
      {
        v60 = MEMORY[0x1EEE9AC00](v54);
        v62 = v79 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
        v63 = v91;
        v89(v62, v59, v91, v60);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
        v94 = swift_allocBox();
        v66 = v65;
        v67 = *(v64 + 48);
        *v65 = 1;
        v68 = type metadata accessor for ComponentId(0);
        v54 = (v92)(v66 + *(v68 + 20), v62, v63);
        *(v66 + v67) = 1;
        *&v100 = v55;
        v70 = *(v55 + 16);
        v69 = *(v55 + 24);
        if (v70 >= v69 >> 1)
        {
          v54 = sub_1D98B9CEC(v69 > 1, v70 + 1, 1);
          v55 = v100;
        }

        v71 = v94 | 0x2000000000000000;
        *(v55 + 16) = v70 + 1;
        *(v55 + 8 * v70 + 32) = v71;
        v59 += v88;
        --v52;
      }

      while (v52);

      v10 = v97;
      v11 = v81;
      a5 = v80;
      v53 = v86;
      v74 = v87;
      v51 = v79[0];
    }

    else
    {
      sub_1D98907D8(v11);

      v55 = MEMORY[0x1E69E7CC0];
      v74 = v87;
    }

    v76 = swift_allocObject();
    *&v100 = v51;
    sub_1D98EBF2C(v55);

    v77 = *(v53 + 8);
    v78 = v91;
    v77(v84, v91);
    v77(v74, v78);
    *(v76 + 16) = v100;
    v31 = v76 | 0x4000000000000000;
    a2 = v82;
    a3 = v104;
  }

  else
  {

    v75 = *(v86 + 8);
    v75(v84, v47);
    v75(v87, v47);
    sub_1D98907D8(v11);
    v31 = v11;
    a3 = v104;
  }

LABEL_11:
  v103[0] = v31;
  sub_1D98907D8(v31);
  sub_1D98C4818(v103, a3, a2, &v100);
  sub_1D9890810(v31);
  if (*(&v101 + 1))
  {
    sub_1D986D53C(&v100, v103);
    sub_1D98B37DC(v103, &v100 + 8);
    LODWORD(v100) = v10;
    sub_1D987B960();
    v32 = *(*a5 + 16);
    sub_1D987B9F0(v32);
    __swift_destroy_boxed_opaque_existential_1(v103);
    v33 = *a5;
    *(v33 + 16) = v32 + 1;
    v34 = (v33 + 48 * v32);
    v35 = v100;
    v36 = v102;
    v34[3] = v101;
    v34[4] = v36;
    v34[2] = v35;
  }

  else
  {
    sub_1D986B804(&v100, &qword_1ECB48BE8, &qword_1D9932CC8);
  }

  *&v100 = v11;
  if (sub_1D98C500C())
  {
    return sub_1D9890810(v31);
  }

  v38 = sub_1D98B3ED0(&unk_1F5518268);
  sub_1D987B960();
  v39 = *(*a5 + 16);
  sub_1D987B9F0(v39);
  result = sub_1D9890810(v31);
  v40 = *a5;
  *(v40 + 16) = v39 + 1;
  v41 = v40 + 48 * v39;
  *(v41 + 32) = v10;
  *(v41 + 40) = v38;
  *(v41 + 64) = &type metadata for MessageInAnyEventTypes;
  *(v41 + 72) = &off_1F551A668;
  return result;
}

double sub_1D98C4818@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for ComponentId(0);
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v16 = (v15 - v14);
  v17 = type metadata accessor for MessageGroupIdentifier(0);
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v91 - v24;
  v26 = *a1;
  switch(v26 >> 61)
  {
    case 1uLL:
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
      v40 = swift_projectBox();
      v41 = *(v40 + *(v39 + 48));
      sub_1D988EE2C(v40, v25);
      sub_1D988EE2C(v25, v22);
      sub_1D98C5154(v22, v16);
      v42 = *v16;
      v43 = *(v10 + 20);
      v44 = sub_1D992AE84();
      v45 = OUTLINED_FUNCTION_6(v44);
      v47 = *(v46 + 64);
      MEMORY[0x1EEE9AC00](v45);
      OUTLINED_FUNCTION_13();
      (*(v50 + 16))(v49 - v48, &v16[v43]);
      v51 = objc_allocWithZone(sub_1D992B1A4());
      v52 = sub_1D992B184();
      v53 = v52;
      if ((v41 & 1) == 0)
      {
        *(a4 + 24) = &type metadata for MessageHasComponentId;
        *(a4 + 32) = &off_1F5517078;
        *a4 = v52;
        goto LABEL_16;
      }

      if (!sub_1D98C3D44(a2))
      {

LABEL_32:
        OUTLINED_FUNCTION_2_20();
        OUTLINED_FUNCTION_1_22();
        goto LABEL_33;
      }

      if (!sub_1D98D6B60(v53))
      {

        goto LABEL_32;
      }

      sub_1D98D7290();
      v55 = v54;

      *(a4 + 24) = &type metadata for MessageInComponentIdSet;
      *(a4 + 32) = &off_1F5516FA0;

      *a4 = v55;
LABEL_16:
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_1_22();
      return *&v28;
    case 2uLL:
      v31 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a4 + 24) = &type metadata for CompositeMessagePredicate;
      *(a4 + 32) = &off_1F551A658;
      OUTLINED_FUNCTION_11_9();
      v32 = swift_allocObject();
      v33 = OUTLINED_FUNCTION_10_8(v32);
      MEMORY[0x1EEE9AC00](v33);
      OUTLINED_FUNCTION_6_14();
      v34 = OUTLINED_FUNCTION_12_8();

      *(v25 + 2) = v34;
      v25[56] = 0;
      return *&v28;
    case 3uLL:
      v35 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a4 + 24) = &type metadata for CompositeMessagePredicate;
      *(a4 + 32) = &off_1F551A658;
      OUTLINED_FUNCTION_11_9();
      v36 = swift_allocObject();
      v37 = OUTLINED_FUNCTION_10_8(v36);
      MEMORY[0x1EEE9AC00](v37);
      OUTLINED_FUNCTION_6_14();
      v38 = OUTLINED_FUNCTION_12_8();

      *(v25 + 2) = v38;
      v25[56] = 1;
      return *&v28;
    case 4uLL:
      v29 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v92 = v29;
      sub_1D98907D8(v29);
      sub_1D98C4818(&v92, a2, a3);
      if (v94)
      {
        sub_1D986D53C(&v93, v95);
        *(a4 + 24) = &type metadata for CompositeMessagePredicate;
        *(a4 + 32) = &off_1F551A658;
        OUTLINED_FUNCTION_11_9();
        v30 = swift_allocObject();
        *a4 = v30;
        sub_1D98B37DC(v95, v30 + 16);
        *(v30 + 56) = 2;
        sub_1D9890810(v29);
        __swift_destroy_boxed_opaque_existential_1(v95);
      }

      else
      {
        sub_1D9890810(v29);
        sub_1D986B804(&v93, &qword_1ECB48BE8, &qword_1D9932CC8);
LABEL_33:
        *(a4 + 32) = 0;
        *&v28 = 0;
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      return *&v28;
    case 5uLL:
      if (v26 == 0xA000000000000000)
      {
        *(a4 + 24) = type metadata accessor for MessageOnClock();
        *(a4 + 32) = &off_1F5517580;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
        v57 = sub_1D992AE84();
        v58 = OUTLINED_FUNCTION_5(v57);
        v60 = *(v59 + 16);

        v60(boxed_opaque_existential_1, a2, v58);
      }

      else
      {
        v61 = *(v5 + 8);
        if (!v61)
        {
          goto LABEL_25;
        }

        v62 = sub_1D992AE84();
        v63 = OUTLINED_FUNCTION_6(v62);
        v65 = v64;
        v67 = *(v66 + 64);
        MEMORY[0x1EEE9AC00](v63);
        OUTLINED_FUNCTION_13();
        v70 = v69 - v68;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        v72 = OUTLINED_FUNCTION_9(v71);
        v74 = *(v73 + 64);
        MEMORY[0x1EEE9AC00](v72);
        OUTLINED_FUNCTION_8_9(v75, v91);
        if (OUTLINED_FUNCTION_4_15() == 1)
        {
          (*(v65 + 16))(v70, a2, v62);
          if (OUTLINED_FUNCTION_4_15() != 1)
          {
            sub_1D986B804(v10, &qword_1ECB481D0, &qword_1D992F9F0);
          }
        }

        else
        {
          (*(v65 + 32))(v70, v10, v62);
        }

        v76 = sub_1D98B3974(v70, v61);
        (*(v65 + 8))(v70, v62);
        if (!v76)
        {
LABEL_25:
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
        v77 = sub_1D992AE84();
        OUTLINED_FUNCTION_6(v77);
        v79 = v78;
        v81 = *(v80 + 72);
        v82 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_1D992FCB0;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        v85 = OUTLINED_FUNCTION_9(v84);
        v87 = *(v86 + 64);
        MEMORY[0x1EEE9AC00](v85);
        OUTLINED_FUNCTION_8_9(v88, v91);
        if (OUTLINED_FUNCTION_4_15() == 1)
        {
          (*(v79 + 16))(v83 + v82, a2, v77);
          if (OUTLINED_FUNCTION_4_15() != 1)
          {
            sub_1D986B804(v10, &qword_1ECB481D0, &qword_1D992F9F0);
          }
        }

        else
        {
          (*(v79 + 32))(v83 + v82, v10, v77);
        }

        v95[0] = v83;
        sub_1D98EB9B4();
        sub_1D98B399C();
        *(a4 + 24) = &type metadata for MessageInClockIdSet;
        *(a4 + 32) = &off_1F551A648;
        *a4 = v89;
      }

      return *&v28;
    default:
      v27 = *(v26 + 32);
      v28 = *(v26 + 16);
      *(a4 + 24) = &type metadata for MessageInTimestampRange;
      *(a4 + 32) = &off_1F5516F68;
      *a4 = v28;
      *(a4 + 16) = v27;
      return *&v28;
  }
}

uint64_t sub_1D98C500C()
{
  v3 = *v1;
  switch(*v1 >> 61)
  {
    case 2uLL:
      result = OUTLINED_FUNCTION_13_7(v3);
      v5 = 0;
      while (1)
      {
        if (v2 == v5)
        {
          goto LABEL_14;
        }

        if (v5 >= *(v0 + 16))
        {
          break;
        }

        v6 = v5 + 1;
        v7 = *(v0 + 8 * v5 + 32);
        OUTLINED_FUNCTION_7_11();
        result = sub_1D98C500C();
        v5 = v6;
        if (result)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_18;
    case 3uLL:
      result = OUTLINED_FUNCTION_13_7(v3);
      v10 = 0;
      break;
    case 4uLL:
      v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_7_11();
      v9 = sub_1D98C500C() ^ 1;
      return v9 & 1;
    case 5uLL:
      v9 = (v3 & 0xFFFFFFFFFFFFFFF7) == 0xA000000000000000;
      return v9 & 1;
    default:
      goto LABEL_15;
  }

  while (1)
  {
    if (v2 == v10)
    {
LABEL_14:

LABEL_15:
      v9 = 0;
      return v9 & 1;
    }

    if (v10 >= *(v0 + 16))
    {
      break;
    }

    v11 = v10 + 1;
    v12 = *(v0 + 8 * v10 + 32);
    OUTLINED_FUNCTION_7_11();
    result = sub_1D98C500C();
    v10 = v11;
    if (result)
    {
LABEL_13:

      v9 = 1;
      return v9 & 1;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D98C5154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentId(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98C51B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_13_7@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);
}

unint64_t sub_1D98C5248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 16);
  if (v5)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D986C620();
    v7 = (a3 + 49);
    do
    {
      v8 = *(v7 - 17);
      v10 = *(v7 - 1);
      if (*v7)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0x4C554E20544F4E20;
      }

      if (*v7)
      {
        v12 = 0xE000000000000000;
      }

      else
      {
        v12 = 0xE90000000000004CLL;
      }

      v23 = *(v7 - 17);
      v9 = *(v7 - 9);
      swift_bridgeObjectRetain_n();
      MEMORY[0x1DA739C30](32, 0xE100000000000000);
      v13 = 0xE400000000000000;
      v14 = 1415071060;
      switch(v10)
      {
        case 1:
          v13 = 0xE700000000000000;
          v14 = 0x434952454D554ELL;
          break;
        case 2:
          v13 = 0xE700000000000000;
          v14 = 0x52454745544E49;
          break;
        case 3:
          v14 = 1279346002;
          break;
        case 4:
          v14 = 1112493122;
          break;
        default:
          break;
      }

      MEMORY[0x1DA739C30](v14, v13);

      MEMORY[0x1DA739C30](v11, v12);

      v15 = *(v24 + 16);
      if (v15 >= *(v24 + 24) >> 1)
      {
        sub_1D986C620();
      }

      *(v24 + 16) = v15 + 1;
      v16 = v24 + 16 * v15;
      *(v16 + 32) = v23;
      *(v16 + 40) = v9;
      v7 += 24;
      --v5;
    }

    while (v5);
    v4 = a1;
    v3 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v17 = sub_1D992B5E4();
  v19 = v18;

  sub_1D992BD64();

  MEMORY[0x1DA739C30](v4, v3);
  MEMORY[0x1DA739C30](0x202020200A2820, 0xE700000000000000);
  MEMORY[0x1DA739C30](v17, v19);

  MEMORY[0x1DA739C30](3877130, 0xE300000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1D98C5504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v14 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs;
  *(v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs) = 0;
  v15 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier;
  v16 = sub_1D992AE84();
  v17 = *(*(v16 - 8) + 32);
  v17(v9 + v15, a1, v16);
  v17(v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_bootSessionUUID, a2, v16);
  *(v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn) = a3;
  v18 = v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn;
  *v18 = a4;
  *(v18 + 8) = a5 & 1;
  v19 = v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_lastEvent;
  *v19 = a6;
  *(v19 + 8) = a7 & 1;
  *(v9 + v14) = a8;
  *(v9 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_active) = a9;
  return v9;
}

uint64_t sub_1D98C5648()
{
  v1 = v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn;
  if (*(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_endedOn + 8) == 1)
  {
    v1 = v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_lastEvent;
    v2 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_lastEvent + 8);
  }

  return *v1;
}

uint64_t sub_1D98C5680()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier;
  v2 = sub_1D992AE84();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_bootSessionUUID, v2);
  v4 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_derivativeClockIDs);

  return v0;
}

uint64_t sub_1D98C5720()
{
  sub_1D98C5680();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LogicalClockRecord()
{
  result = qword_1ED8BD7F0;
  if (!qword_1ED8BD7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98C57CC()
{
  result = sub_1D992AE84();
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

BOOL sub_1D98C588C(uint64_t a1, char a2)
{
  if ((sub_1D992AE54() & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    sub_1D98C5960(&v14);
    if (v16)
    {
      return 0;
    }

    v10 = v14;
    v11 = v15;
    v12 = *(a1 + *(type metadata accessor for MonotonicTimestamp() + 20));
    return v12 >= v10 && v11 >= v12;
  }

  sub_1D98C59A8(&v14);
  v5 = v14;
  v6 = v16;
  v7 = *(a1 + *(type metadata accessor for MonotonicTimestamp() + 20));
  if (!v6)
  {
    return v7 >= v5 && v15 >= v7;
  }

  v8 = v7 >= v5;
  v9 = v5 >= v7;
  if (v6 == 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1D98C5960@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn);
  result = sub_1D98C5648();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1D98C59A8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D98C5648();
  v4 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn;
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_startedOn);
  result = v4 + 300000000000;
  if (v4 >= 0xFFFFFFBA269B4800)
  {
    __break(1u);
LABEL_4:
    v4 = *(v1 + v4);
  }

  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1D98C5A38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98C5A78(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1D98C5AFC()
{
  result = type metadata accessor for DbResource(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BiomeResource(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DendriteStreamResource(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D98C5C0C()
{
  if (!qword_1ECB48060)
  {
    type metadata accessor for SASandboxExtensionResource(255);
    v0 = sub_1D992BC04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB48060);
    }
  }
}

void sub_1D98C5C64()
{
  if (!qword_1ECB48090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48BF8, &qword_1D9932DE8);
    v0 = sub_1D992BC04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB48090);
    }
  }
}

void sub_1D98C5CF0()
{
  sub_1D992AD44();
  if (v0 <= 0x3F)
  {
    sub_1D98C5C0C();
    if (v1 <= 0x3F)
    {
      sub_1D98C5C64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for BiomeIdentifier(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  v3 = OUTLINED_FUNCTION_12_9();
  v4 = OUTLINED_FUNCTION_15(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_3_13(*(v2 + 24));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm()
{
  v4 = OUTLINED_FUNCTION_8_10();
  result = OUTLINED_FUNCTION_15(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_23_0();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24) + 24) = v0;
  }

  return result;
}

void sub_1D98C5F80()
{
  sub_1D992AD44();
  if (v0 <= 0x3F)
  {
    sub_1D98C5C0C();
    if (v1 <= 0x3F)
    {
      sub_1D98C5C64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D98C601C@<X0>(uint64_t a1@<X8>)
{
  v6 = type metadata accessor for DendriteStreamResource(0);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = OUTLINED_FUNCTION_7_12();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = OUTLINED_FUNCTION_6_15();
  v15 = type metadata accessor for DbResource(v14);
  v16 = OUTLINED_FUNCTION_9(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v19 = OUTLINED_FUNCTION_5_14();
  v20 = type metadata accessor for ResourceType(v19);
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11_10(v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D98C69F4(v4, v1, type metadata accessor for DendriteStreamResource);
      v33 = sub_1D992AD44();
      OUTLINED_FUNCTION_5(v33);
      (*(v34 + 16))(a1, v1);
      v28 = v1;
      v32 = type metadata accessor for DendriteStreamResource;
      return sub_1D98C6A54(v28, v32);
    }

    v1 = type metadata accessor for BiomeResource;
    sub_1D98C69F4(v4, v2, type metadata accessor for BiomeResource);
    v26 = sub_1D992AD44();
    OUTLINED_FUNCTION_5(v26);
    (*(v27 + 16))(a1, v2);
    v28 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_1D98C69F4(v4, v3, v29);
    v30 = sub_1D992AD44();
    OUTLINED_FUNCTION_5(v30);
    (*(v31 + 16))(a1, v3);
    v28 = v3;
  }

  v32 = v1;
  return sub_1D98C6A54(v28, v32);
}

uint64_t sub_1D98C6250()
{
  v2 = type metadata accessor for DendriteStreamResource(0);
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v6 = OUTLINED_FUNCTION_7_12();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = OUTLINED_FUNCTION_5_14();
  v11 = type metadata accessor for DbResource(v10);
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v17 = v16 - v15;
  v18 = type metadata accessor for ResourceType(0);
  v19 = OUTLINED_FUNCTION_5(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v24 = v23 - v22;
  sub_1D98C6990(v0, v23 - v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D98C69F4(v24, v0, type metadata accessor for DendriteStreamResource);
      v34 = v0 + *(v2 + 20);
      v27 = *v34;
      v35 = v34[8];
      v29 = v0;
      v33 = type metadata accessor for DendriteStreamResource;
      goto LABEL_7;
    }

    v0 = type metadata accessor for BiomeResource;
    sub_1D98C69F4(v24, v1, type metadata accessor for BiomeResource);
    v26 = v1 + *(v6 + 24);
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_1D98C69F4(v24, v17, v30);
    v31 = v17 + *(v11 + 20);
    v27 = *v31;
    v32 = *(v31 + 8);
    v29 = v17;
  }

  v33 = v0;
LABEL_7:
  sub_1D98C6A54(v29, v33);
  return v27;
}

uint64_t sub_1D98C6448@<X0>(uint64_t a1@<X8>)
{
  v6 = type metadata accessor for DendriteStreamResource(0);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = OUTLINED_FUNCTION_7_12();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = OUTLINED_FUNCTION_6_15();
  v15 = type metadata accessor for DbResource(v14);
  v16 = OUTLINED_FUNCTION_9(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v19 = OUTLINED_FUNCTION_5_14();
  v20 = type metadata accessor for ResourceType(v19);
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11_10(v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v30 = type metadata accessor for DbResource;
    sub_1D98C69F4(v4, v3, type metadata accessor for DbResource);
    sub_1D992AD04();
    v28 = v3;
LABEL_6:
    v29 = v30;
    return sub_1D98C6A54(v28, v29);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v30 = type metadata accessor for DendriteStreamResource;
    sub_1D98C69F4(v4, v1, type metadata accessor for DendriteStreamResource);
    v31 = sub_1D992AD44();
    OUTLINED_FUNCTION_5(v31);
    (*(v32 + 16))(a1, v1);
    v28 = v1;
    goto LABEL_6;
  }

  sub_1D98C69F4(v4, v2, type metadata accessor for BiomeResource);
  v26 = sub_1D992AD44();
  OUTLINED_FUNCTION_5(v26);
  (*(v27 + 16))(a1, v2);
  v28 = v2;
  v29 = type metadata accessor for BiomeResource;
  return sub_1D98C6A54(v28, v29);
}

uint64_t sub_1D98C6664@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for DendriteStreamResource(0);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = OUTLINED_FUNCTION_6_15();
  v10 = type metadata accessor for BiomeResource(v9);
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = type metadata accessor for DbResource(0);
  v18 = OUTLINED_FUNCTION_5(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v23 = v22 - v21;
  v24 = type metadata accessor for ResourceType(0);
  v25 = OUTLINED_FUNCTION_5(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v30 = v29 - v28;
  sub_1D98C6990(v3, v29 - v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D98C69F4(v30, v2, type metadata accessor for DendriteStreamResource);
      sub_1D98C6AAC(v2 + *(v5 + 24), a1);
      v32 = v2;
      v34 = type metadata accessor for DendriteStreamResource;
      return sub_1D98C6A54(v32, v34);
    }

    v5 = type metadata accessor for BiomeResource;
    sub_1D98C69F4(v30, v16, type metadata accessor for BiomeResource);
    sub_1D98C6AAC(v16 + *(v10 + 28), a1);
    v32 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_1D98C69F4(v30, v23, v33);
    sub_1D98C6AAC(v23 + *(v17 + 24), a1);
    v32 = v23;
  }

  v34 = v5;
  return sub_1D98C6A54(v32, v34);
}

BOOL sub_1D98C6864()
{
  v0 = sub_1D992BF04();

  return v0 != 0;
}

BOOL sub_1D98C68D4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D98C6864();
  *a2 = result;
  return result;
}

unint64_t sub_1D98C6908@<X0>(void *a1@<X8>)
{
  result = sub_1D98C68AC();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D98C693C()
{
  result = qword_1ECB48C00;
  if (!qword_1ECB48C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C00);
  }

  return result;
}

uint64_t sub_1D98C6990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98C69F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D98C6A54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D98C6AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C08, &unk_1D9932EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id MessageTopicsShim.init(fbfStorage:messageTailing:rawStream:messageStore:)(void *a1, char *a2, char *a3, char *a4)
{
  v5 = v4;
  v32 = a4;
  v33 = a1;
  v10 = *&a2[OBJC_IVAR___SiriAnalyticsTailToOSLog_underlying];
  v11 = *&a3[OBJC_IVAR___SiriAnalyticsRawUnifiedStream_underlying];
  type metadata accessor for DiagnosticOutputTopic();
  v12 = swift_allocObject();
  v13 = v11;

  swift_defaultActor_initialize();
  *(v12 + 112) = v10;
  *(v12 + 120) = v11;
  sub_1D98B37DC(a1 + OBJC_IVAR___SiriAnalyticsFBFStorage_underlying, &v39);
  type metadata accessor for DirectUploadTopic();
  v14 = swift_allocObject();

  swift_defaultActor_initialize();
  sub_1D986D53C(&v39, v14 + 112);
  *(v14 + 152) = v12;
  v15 = *&a4[OBJC_IVAR___SiriAnalyticsMessageStore_underlying];
  v16 = type metadata accessor for MessageStoreConcrete();
  v40 = v16;
  v41 = &off_1F5519A38;
  *&v39 = v15;
  type metadata accessor for PackagedUploadTopic();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(&v39, v16);
  v19 = *(*(v16 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = *v22;
  v37 = v16;
  v38 = &off_1F5519A38;
  *&v36 = v24;

  swift_defaultActor_initialize();
  sub_1D986D53C(&v36, v17 + 112);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  type metadata accessor for OnDeviceSyndicationTopic();
  swift_allocObject();
  v25 = sub_1D98D4324();
  v26 = &v5[OBJC_IVAR___SiriAnalyticsMessageTopics_underlying];
  *v26 = v14;
  v26[1] = v17;
  v26[2] = v25;
  v26[3] = v12;
  v27 = type metadata accessor for DirectUploadTopicShim();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR___SiriAnalyticsDirectUploadTopic_underlying] = v14;
  v35.receiver = v28;
  v35.super_class = v27;

  *&v5[OBJC_IVAR___SiriAnalyticsMessageTopics_directUpload] = objc_msgSendSuper2(&v35, sel_init);
  v29 = type metadata accessor for MessageTopicsShim();
  v34.receiver = v5;
  v34.super_class = v29;
  v30 = objc_msgSendSuper2(&v34, sel_init);

  return v30;
}

id MessageTopicsShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MessageTopicsShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageTopicsShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D98C705C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98C709C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D98C70EC(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for MonotonicTimestamp();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D98C7934(v3, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_1D98C78CC(v8);
  }

  else
  {
    v14 = sub_1D98ACCA0(v8, v12);
    MEMORY[0x1EEE9AC00](v14);
    *(&v15 - 2) = v12;
    *(&v15 - 1) = a1;
    sub_1D992B9C4();
    result = sub_1D98C7A84(v12);
    if (v2)
    {
      return result;
    }
  }

  MEMORY[0x1EEE9AC00](result);
  *(&v15 - 2) = v3;
  *(&v15 - 1) = a1;
  return sub_1D992B9C4();
}

id sub_1D98C72AC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for MonotonicTimestamp();
  [a2 writeUint64:*(a1 + *(v4 + 20)) forTag:1];
  sub_1D992B9F4();
  return [a2 writeUint32:*(a1 + *(v4 + 24)) forTag:3];
}

uint64_t sub_1D98C7384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14[-v7];
  v9 = type metadata accessor for MonotonicTimestamp();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v15 = a1;
  v16 = v8;
  v17 = &v18;
  v18 = 0;
  sub_1D98C7878();
  sub_1D992B964();
  if (!v2)
  {
    v10 = v18;
    if (v18)
    {
      sub_1D98C7934(v8, a2);
      *(a2 + *(type metadata accessor for StagingPoolEntry() + 20)) = v10;
      return sub_1D98C78CC(v8);
    }

    v12 = sub_1D992B484();
    sub_1D98C7AE0(&qword_1ECB479C0, MEMORY[0x1E6999BC0]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x1E6999BA8], v12);
    swift_willThrow();
  }

  return sub_1D98C78CC(v8);
}

uint64_t sub_1D98C75B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - v7;
  result = static MonotonicTimestamp.read(from:)(a2, &v11 - v7);
  if (!v2)
  {
    v10 = type metadata accessor for MonotonicTimestamp();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    return sub_1D98C79DC(v8, a1);
  }

  return result;
}

id sub_1D98C7678(void **a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CF568]) init];
  v5 = *a1;
  *a1 = v4;

  result = *a1;
  if (*a1)
  {
    return [result readFrom_];
  }

  return result;
}

uint64_t sub_1D98C7858(_BYTE *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1D98C7544(a1);
}

unint64_t sub_1D98C7878()
{
  result = qword_1ECB47E00;
  if (!qword_1ECB47E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47E00);
  }

  return result;
}

uint64_t sub_1D98C78CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98C7934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98C79DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98C7A84(uint64_t a1)
{
  v2 = type metadata accessor for MonotonicTimestamp();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98C7AE0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s9ProtoTagsOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1D98C7C08()
{
  result = qword_1ECB48C20;
  if (!qword_1ECB48C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C20);
  }

  return result;
}

id static StagingPool.vended(containerURL:sandboxExtension:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48BB8, &qword_1D9932A00);
  v7 = sub_1D992AD44();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  (*(v11 + 16))(&v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v9);
  v12 = *MEMORY[0x1E696A388];
  v16[12] = 0;
  v13 = sub_1D992B324();
  sub_1D988E70C();
  if (v3)
  {
  }

  *a3 = v13;
  a3[1] = a2 | 0x8000000000000000;
  v15 = objc_allocWithZone(type metadata accessor for StagingReport());

  result = sub_1D988C7F4(1);
  a3[2] = result;
  return result;
}

void StagingPool.add(timestamp:message:)(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for StagingPoolEntry();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v14 = v2[2];
  v15 = [a2 wrapAsAnyEvent];
  if (v15)
  {
    v16 = v15;
    sub_1D98C7934(a1, v12);
    *&v12[*(v6 + 20)] = v16;
    v17 = v16;

    sub_1D992B374();
    sub_1D98C89B8(v12);

    if (!v3)
    {
      v18 = type metadata accessor for MonotonicTimestamp();
      if (__swift_getEnumTagSinglePayload(a1, 1, v18) == 1)
      {
        sub_1D988C9F8();
      }

      else
      {
        sub_1D988C9BC();
      }
    }
  }

  else
  {
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_1_17();
      swift_once();
    }

    sub_1D98DCEB4(0xD00000000000001ALL, 0x80000001D993A660, 0xD000000000000068, 0x80000001D993A680, 0xD000000000000017, 0x80000001D993A6F0);
  }
}

uint64_t sub_1D98C7F7C()
{
  v1 = *v0;

  sub_1D992B3A4();
}

uint64_t sub_1D98C80C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98C80E4()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for SandboxExtension();
  v6 = sub_1D988E2FC(v5, v4, v3, v1, v2 + OBJC_IVAR____TtC13SiriAnalytics15StagingPoolHost_stagingContainerURL, 0);
  v7 = *(v6 + 2);
  v8 = *(v6 + 3);

  v9 = v0[1];

  return v9(v7, v8);
}

uint64_t sub_1D98C8284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  a6;
  v12 = swift_task_alloc();
  v6[4] = v12;
  *v12 = v6;
  v12[1] = sub_1D98C8360;

  return sub_1D98C80C8(a1, a2, a3, a4);
}

uint64_t sub_1D98C8360()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_17();
  *v7 = v6;

  if (v2)
  {
    v8 = sub_1D992AC84();

    v9 = 0;
    v10 = v8;
  }

  else
  {
    v9 = sub_1D992B614();

    v8 = 0;
    v10 = v9;
  }

  v11 = *(v3 + 24);
  v11[2](v11, v9, v8);

  _Block_release(v11);
  OUTLINED_FUNCTION_25();

  return v12();
}

uint64_t sub_1D98C84E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98C84FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC13SiriAnalytics15StagingPoolHost_stagingContainerURL;
  v4 = sub_1D992AD44();
  OUTLINED_FUNCTION_5(v4);
  (*(v5 + 16))(v2, v1 + v3);
  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_1D98C8644(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = sub_1D992AD44();
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[5] = v8;
  v2[6] = _Block_copy(a1);
  a2;
  v9 = swift_task_alloc();
  v2[7] = v9;
  *v9 = v2;
  v9[1] = sub_1D98C8764;

  return sub_1D98C84E8(v8);
}

uint64_t sub_1D98C8764()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_17();
  *v8 = v7;

  v9 = sub_1D992ACD4();
  (*(v4 + 8))(v3, v5);
  (v2)[2](v2, v9);

  _Block_release(v2);

  OUTLINED_FUNCTION_25();

  return v10();
}

id sub_1D98C891C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StagingPoolHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98C89B8(uint64_t a1)
{
  v2 = type metadata accessor for StagingPoolEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98C8A20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98C8A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for StagingPoolHost()
{
  result = qword_1ECB47EA8;
  if (!qword_1ECB47EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98C8B04()
{
  result = sub_1D992AD44();
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

uint64_t sub_1D98C8B94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 16))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D98C8C04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D98C8C80(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1D98C8CA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98C8D54;

  return sub_1D98C8644(v2, v3);
}

uint64_t sub_1D98C8D54()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_17();
  *v3 = v2;

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_1D98C8E3C()
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
  v8[1] = sub_1D98C8F10;

  return sub_1D98C8284(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1D98C8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_5_15(v11, v20);
  v12 = sub_1D992B874();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D986DEE4(v5, &qword_1ECB48BB0, &qword_1D9930970);
  }

  else
  {
    sub_1D992B864();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D986DEE4(a3, &qword_1ECB48BB0, &qword_1D9930970);
    OUTLINED_FUNCTION_0_0();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1D992B814();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D992B6B4();
  OUTLINED_FUNCTION_0_0();
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;

  v18 = swift_task_create();

  sub_1D986DEE4(a3, &qword_1ECB48BB0, &qword_1D9930970);

  return v18;
}

uint64_t sub_1D98C91CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_5_15(v12, v21);
  v13 = sub_1D992B874();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D986DEE4(v5, &qword_1ECB48BB0, &qword_1D9930970);
  }

  else
  {
    sub_1D992B864();
    (*(*(v13 - 8) + 8))(v5, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D986DEE4(a3, &qword_1ECB48BB0, &qword_1D9930970);
    OUTLINED_FUNCTION_0_0();
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C30, &qword_1D9933238);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1D992B814();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D992B6B4();
  OUTLINED_FUNCTION_0_0();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C30, &qword_1D9933238);
  v18 = swift_task_create();

  sub_1D986DEE4(a3, &qword_1ECB48BB0, &qword_1D9930970);

  return v18;
}

id MessageProcessingStrategy.init(messageStaging:)(char *a1)
{
  *&v1[OBJC_IVAR___SiriAnalyticsMessageProcessingStrategy_messageStagingProvider] = *&a1[OBJC_IVAR____TtC13SiriAnalytics27SiriAnalyticsMessageStaging_stagingStreamProvider];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MessageProcessingStrategy();

  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id MessageProcessingStrategy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MessageProcessingStrategy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageProcessingStrategy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98C96AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98C973C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98C97CC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98C9860(uint64_t a1, uint64_t a2)
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000040, 0x80000001D993A8C0);
  MEMORY[0x1DA739C30](a1, a2);
  MEMORY[0x1DA739C30](15138, 0xE200000000000000);
  return 0;
}

id FBFStorageShim.__allocating_init(applicationIdentifier:telemetry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___SiriAnalyticsFBFStorage_underlying];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 3) = &type metadata for FBFStorage;
  *(v8 + 4) = &off_1F551A260;
  *(v8 + 2) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id FBFStorageShim.init(applicationIdentifier:telemetry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___SiriAnalyticsFBFStorage_underlying];
  *v4 = a1;
  *(v4 + 1) = a2;
  *(v4 + 3) = &type metadata for FBFStorage;
  *(v4 + 4) = &off_1F551A260;
  *(v4 + 2) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for FBFStorageShim();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1D98C9A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98C9A9C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = sub_1D992BF04();

  if (v3 > 3)
  {
    sub_1D98C9DC4();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v13();
  }

  else
  {
    v4 = (*(v0 + 40) + OBJC_IVAR___SiriAnalyticsFBFStorage_underlying);
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    *(v0 + 64) = v3;
    v7 = *(v6 + 8);
    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 48) = v9;
    *v9 = v0;
    v9[1] = sub_1D98C9C80;
    v10 = *(v0 + 16);

    return v14(v10, v0 + 64, v5, v6);
  }
}

uint64_t sub_1D98C9C80()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D98C9DA0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_1D98C9DA0()
{
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_25();
  return v2();
}

unint64_t sub_1D98C9DC4()
{
  result = qword_1ECB47EC8;
  if (!qword_1ECB47EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47EC8);
  }

  return result;
}

uint64_t sub_1D98C9EB0(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1D992B624();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1D98C9F9C;

  return sub_1D98C9A84(v10, v7, v9);
}

uint64_t sub_1D98C9F9C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  v6 = v3[6];
  v7 = v3[5];
  v8 = v3[3];
  v9 = v3[2];
  v10 = *v1;
  *v5 = *v1;

  v11 = v3[4];
  if (v2)
  {
    v12 = sub_1D992AC84();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v13 = v10[1];

  return v13();
}

id FBFStorageShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBFStorageShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBFStorageShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of OffDeviceStorage.store(_:topic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D98692C4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FBFStorageShim.store(_:topic:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D989EB64;

  return v12(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for FBFStorageError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1D98CA58C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98CA5CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D98CA620()
{
  result = qword_1ECB48C48;
  if (!qword_1ECB48C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C48);
  }

  return result;
}

uint64_t sub_1D98CA674(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 72) = *a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98CA694()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v9 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v9;
  *(v4 + 48) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1D98CA7B8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0x3A5F2865726F7473, 0xEF293A6369706F74, sub_1D98CB180, v4, v7);
}

uint64_t sub_1D98CA7B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *(v2 + 56);
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = sub_1D98CA8E8;
  }

  else
  {
    v8 = *(v3 + 48);

    v7 = sub_1D98CA8C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D98CA8E8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_25();
  v3 = *(v0 + 64);

  return v2();
}

void sub_1D98CA944(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = a4;
  v24 = a5;
  v22 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = [objc_opt_self() sharedLogger];
  v14 = sub_1D992B614();

  (*(v9 + 16))(v12, v22, v8);
  v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 2) = v23;
  *(v16 + 3) = v17;
  *(v16 + 4) = a6;
  *(v16 + 5) = a2;
  (*(v9 + 32))(&v16[v15], v12, v8);
  aBlock[4] = sub_1D98CB194;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D98CAE80;
  aBlock[3] = &block_descriptor_9;
  v18 = _Block_copy(aBlock);
  v19 = a6;
  v20 = a2;

  [v13 reportSiriInstrumentationEvent:v20 forBundleID:v14 completion:v18];
  _Block_release(v18);
}

uint64_t sub_1D98CABE4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {
    v10 = a1;
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000019, 0x80000001D993A990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
    sub_1D992BE24();
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD00000000000006ALL, 0x80000001D993A9B0, 0x3A5F2865726F7473, 0xEF293A6369706F74);

    sub_1D98CADAC(a1, a5, a2, a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438);
    return sub_1D992B824();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438);
    return sub_1D992B834();
  }
}

void sub_1D98CADAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v6 = a5;
    v7 = sub_1D992AC84();
    v8 = sub_1D98CAEEC(v7);
    v9 = sub_1D98CB230(a2);
    if (v10 >> 60 == 15)
    {
      v13 = 0;
      [v6 trackFBFError:v8 forEventData:0];
    }

    else
    {
      v11 = v9;
      v12 = v10;
      v13 = sub_1D992AD74();
      sub_1D9866358(v11, v12);
      [v6 trackFBFError:v8 forEventData:v13];
    }
  }
}

void sub_1D98CAE80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1D98CAEEC(void *a1)
{
  type metadata accessor for FLError(0);
  sub_1D98CB294();
  sub_1D992AC54();

  result = 1;
  switch(v3)
  {
    case -9:
      result = 39;
      break;
    case -8:
      result = 38;
      break;
    case -7:
      result = 7;
      break;
    case -6:
      result = 6;
      break;
    case -5:
      result = 5;
      break;
    case -4:
      result = 4;
      break;
    case -3:
      result = 3;
      break;
    case -2:
      result = 2;
      break;
    case -1:
      return result;
    case 0:
      goto LABEL_6;
    case 1:
      result = 8;
      break;
    case 2:
      result = 9;
      break;
    case 3:
      result = 10;
      break;
    case 4:
      result = 11;
      break;
    case 5:
      result = 12;
      break;
    case 6:
      result = 13;
      break;
    case 7:
      result = 14;
      break;
    case 8:
      result = 15;
      break;
    case 9:
      result = 16;
      break;
    case 10:
      result = 17;
      break;
    case 11:
      result = 18;
      break;
    case 12:
      result = 19;
      break;
    case 13:
      result = 20;
      break;
    case 14:
      result = 21;
      break;
    case 15:
      result = 22;
      break;
    case 16:
      result = 23;
      break;
    case 17:
      result = 24;
      break;
    case 18:
      result = 25;
      break;
    case 19:
      result = 26;
      break;
    case 20:
      result = 27;
      break;
    case 21:
      result = 28;
      break;
    case 22:
      result = 29;
      break;
    case 23:
      result = 30;
      break;
    case 24:
      result = 31;
      break;
    case 25:
      result = 32;
      break;
    case 26:
      result = 33;
      break;
    case 27:
      result = 34;
      break;
    case 28:
      result = 35;
      break;
    default:
      if (v3 == 100)
      {
        result = 36;
      }

      else if (v3 == 101)
      {
        result = 37;
      }

      else
      {
LABEL_6:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1D98CB0C0(uint64_t a1, _BYTE *a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D989EB64;

  return sub_1D98CA674(a1, a2, v6, v7, v8);
}

uint64_t sub_1D98CB194(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];

  return sub_1D98CABE4(a1, v4, v5, v6, v7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D98CB230(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D992AD84();

  return v3;
}

unint64_t sub_1D98CB294()
{
  result = qword_1ECB48298;
  if (!qword_1ECB48298)
  {
    type metadata accessor for FLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48298);
  }

  return result;
}

uint64_t sub_1D98CB2EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D989EB64;

  return sub_1D98C9EB0(v2, v3, v5, v4);
}

uint64_t sub_1D98CB3AC()
{
  OUTLINED_FUNCTION_6_17();
  sub_1D992ACE4();
  v0 = type metadata accessor for DbResource(0);
  OUTLINED_FUNCTION_0_35(v0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB418@<X0>(uint64_t a1@<X8>)
{
  sub_1D992ACE4();
  v2 = type metadata accessor for BiomeResource(0);
  v3 = a1 + *(v2 + 28);
  *(v3 + 24) = &type metadata for UnifiedMessageStreamAccessDemand;
  *(v3 + 32) = &off_1F5516D80;
  v4 = a1 + *(v2 + 24);
  *v4 = 1;
  *(v4 + 8) = 0;
  type metadata accessor for ResourceType(0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB4C0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_17();
  sub_1D992ACE4();
  v2 = type metadata accessor for BiomeResource(0);
  v3 = a1 + *(v2 + 28);
  *(v3 + 24) = &type metadata for RawUnifiedMessageStreamAccessDemand;
  *(v3 + 32) = &off_1F551A2E0;
  v4 = a1 + *(v2 + 24);
  *v4 = 2;
  *(v4 + 8) = 0;
  type metadata accessor for ResourceType(0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB560()
{
  OUTLINED_FUNCTION_6_17();
  sub_1D992ACE4();
  v0 = type metadata accessor for DbResource(0);
  OUTLINED_FUNCTION_0_35(v0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB5CC()
{
  sub_1D992ACE4();
  v0 = type metadata accessor for DendriteStreamResource(0);
  OUTLINED_FUNCTION_0_35(v0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB648()
{
  OUTLINED_FUNCTION_6_17();
  sub_1D992ACE4();
  v0 = type metadata accessor for DendriteStreamResource(0);
  OUTLINED_FUNCTION_0_35(v0);
  OUTLINED_FUNCTION_7_13();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D98CB6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    sub_1D98CB4C0(a2);
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_1D98CB418(a2);
LABEL_5:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = 1;
LABEL_7:
  v4 = type metadata accessor for ResourceType(0);

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

uint64_t sub_1D98CB72C()
{
  v1 = type metadata accessor for ResourceType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_13();
  v39 = v4 - v3;
  if (qword_1ED8BF428 != -1)
  {
    swift_once();
  }

  v40 = "Migrating outdated resources";
  v41 = qword_1ED8BFBC8;
  sub_1D986A454(0xD00000000000001CLL, 0x80000001D993AA20, 0xD000000000000059, 0x80000001D993AA40, 0x286574617267696DLL, 0xE900000000000029);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C58, &qword_1D9933460);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487D0, &qword_1D99318D8);
  v35 = *(v5 - 8);
  v36 = v5 - 8;
  v6 = *(v35 + 72);
  v7 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9931220;
  v37 = v8;
  v9 = v8 + v7;
  v10 = *(v5 + 48);
  sub_1D992ACE4();
  sub_1D992ACE4();
  v34 = *(v5 + 48);
  v38 = 0xD000000000000010;
  sub_1D992ACE4();
  sub_1D992ACE4();
  v34 = *(v5 + 48);
  sub_1D992ACE4();
  v38 = v0;
  v11 = sub_1D992ACE4();
  v12 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = 3;
  do
  {
    sub_1D98CC7FC(v9, v14);
    v16 = *(v5 + 48);
    type metadata accessor for PersistentStorage();
    sub_1D98F90D4();
    sub_1D986B804(v14, &qword_1ECB487D0, &qword_1D99318D8);
    v9 += v6;
    --v15;
  }

  while (v15);
  swift_setDeallocating();
  sub_1D9899484();
  OUTLINED_FUNCTION_9_9();
  sub_1D986A454(v17, v18, v19, v20, v21, v22);
  type metadata accessor for PersistentStorage();
  v23 = v39;
  sub_1D98CB560();
  v24 = sub_1D992AD44();
  v25 = OUTLINED_FUNCTION_6(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v32 = v31 - v30;
  sub_1D98C601C(v31 - v30);
  sub_1D98876F0(v23);
  sub_1D98F9590();
  return (*(v27 + 8))(v32, v24);
}

uint64_t sub_1D98CBC84(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7)
{
  v42 = a5;
  v43 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C60, &qword_1D9933468);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for ResourceType(0);
  v17 = OUTLINED_FUNCTION_5(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v22 = v21 - v20;
  sub_1D98CB6B4(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1D986B804(v15, &qword_1ECB48C60, &qword_1D9933468);
    sub_1D98CC86C();
    OUTLINED_FUNCTION_10_9();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    sub_1D98CC8C0(v15, v22);
    sub_1D98C6664(&v44);
    if (v45)
    {
      sub_1D986D53C(&v44, v46);
      v24 = v47;
      v25 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      if ((*(v25 + 8))(a2, a7 & 1, v24, v25))
      {
        type metadata accessor for SandboxExtension();
        v26 = sub_1D992AD44();
        v27 = OUTLINED_FUNCTION_6(v26);
        v29 = v28;
        v31 = *(v30 + 64);
        MEMORY[0x1EEE9AC00](v27);
        OUTLINED_FUNCTION_13();
        v34 = v33 - v32;
        sub_1D98C6448(v33 - v32);
        v35 = v49;
        v36 = sub_1D988E2FC(a3, a4, v42, v43, v34, 1);
        if (!v35)
        {
          v40 = v36;
          (*(v29 + 8))(v34, v26);
          sub_1D98876F0(v22);
          v22 = *(v40 + 2);
          v41 = *(v40 + 3);

          __swift_destroy_boxed_opaque_existential_1(v46);
          return v22;
        }

        (*(v29 + 8))(v34, v26);
        sub_1D98876F0(v22);
      }

      else
      {
        sub_1D98CC86C();
        OUTLINED_FUNCTION_10_9();
        *v38 = 2;
        swift_willThrow();
        sub_1D98876F0(v22);
      }

      __swift_destroy_boxed_opaque_existential_1(v46);
    }

    else
    {
      sub_1D986B804(&v44, &qword_1ECB48C08, &unk_1D9932EF0);
      sub_1D98CC86C();
      OUTLINED_FUNCTION_10_9();
      *v37 = 1;
      swift_willThrow();
      sub_1D98876F0(v22);
    }
  }

  return v22;
}

uint64_t sub_1D98CC100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C60, &qword_1D9933468);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ResourceType(0);
  v9 = OUTLINED_FUNCTION_5(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  sub_1D98CB6B4(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1D986B804(v7, &qword_1ECB48C60, &qword_1D9933468);
    sub_1D98CC86C();
    OUTLINED_FUNCTION_10_9();
    *v15 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_1D98CC8C0(v7, v14);
    sub_1D98C6448(a2);
    return sub_1D98876F0(v14);
  }
}

id DataVault.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataVault.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataVault();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1D98CC4BC(uint64_t a1, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    OUTLINED_FUNCTION_2_23();
    v4 = sub_1D990B078(sub_1D98CCC18, v3, a1);
    if (v4)
    {
      return 1;
    }

    else
    {
      if (qword_1ED8BF440 != -1)
      {
        v4 = OUTLINED_FUNCTION_1_7();
      }

      if (byte_1ED8BFBD1 == 1)
      {
        MEMORY[0x1EEE9AC00](v4);
        OUTLINED_FUNCTION_2_23();
        return sub_1D990B078(sub_1D98CCC38, v6, a1);
      }

      else
      {
        if (qword_1ECB480C0 != -1)
        {
          OUTLINED_FUNCTION_4_16();
        }

        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000036, 0x80000001D993AC70);
        MEMORY[0x1DA739C30](0x65736C6166, 0xE500000000000000);
        sub_1D986A454(0, 0xE000000000000000, 0xD000000000000059, 0x80000001D993AA40, 0xD000000000000023, 0x80000001D993ACB0);

        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

BOOL sub_1D98CC6A8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    if (qword_1ED8BF440 != -1)
    {
      a1 = OUTLINED_FUNCTION_1_7();
    }

    if (byte_1ED8BFBD1 == 1)
    {
      MEMORY[0x1EEE9AC00](a1);
      OUTLINED_FUNCTION_2_23();
      return sub_1D990B078(sub_1D98CCC38, v3, v2);
    }

    else
    {
      if (qword_1ECB480C0 != -1)
      {
        OUTLINED_FUNCTION_4_16();
      }

      sub_1D986A454(0xD000000000000034, 0x80000001D993AD10, 0xD000000000000059, 0x80000001D993AA40, 0xD000000000000023, 0x80000001D993ACB0);
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98CC7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487D0, &qword_1D99318D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D98CC86C()
{
  result = qword_1ECB48C68;
  if (!qword_1ECB48C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C68);
  }

  return result;
}

uint64_t sub_1D98CC8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DataVault()
{
  result = qword_1ED8BD8F8;
  if (!qword_1ED8BD8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataVaultError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1D98CCB34()
{
  result = qword_1ECB48C70;
  if (!qword_1ECB48C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C70);
  }

  return result;
}

uint64_t sub_1D98CCBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D992BF64() & 1;
  }
}

uint64_t static XPCMessageEnvelope.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECB48C80 = a1;
  return result;
}

uint64_t sub_1D98CCDBC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48C80;
  return result;
}

uint64_t sub_1D98CCE08(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48C80 = v1;
  return result;
}

uint64_t XPCMessageEnvelope.payload.getter()
{
  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload);
  sub_1D987BA38(v1, *(v0 + OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload + 8));
  return v1;
}

id XPCMessageEnvelope.init(eventTypeId:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_eventTypeId] = a1;
  v4 = &v3[OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for XPCMessageEnvelope();
  return objc_msgSendSuper2(&v6, sel_init);
}

id XPCMessageEnvelope.init(coder:)(void *a1)
{
  v3 = OUTLINED_FUNCTION_0_36();
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_eventTypeId] = v4;
  v5 = OUTLINED_FUNCTION_1_0();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_1D992BC24();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {

    sub_1D98A1A10(v12);
LABEL_9:
    type metadata accessor for XPCMessageEnvelope();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload] = v9[1];
  v9[0].receiver = v1;
  v9[0].super_class = type metadata accessor for XPCMessageEnvelope();
  v7 = [(objc_super *)v9 init];

  return v7;
}

void sub_1D98CD1A8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_eventTypeId);
  v4 = OUTLINED_FUNCTION_0_36();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload);
  v6 = *(v1 + OBJC_IVAR___SiriAnalyticsXPCMessageEnvelope_payload + 8);
  v7 = sub_1D992AD74();
  v8 = OUTLINED_FUNCTION_1_0();
  [a1 encodeObject:v7 forKey:v8];
}

id XPCMessageEnvelope.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCMessageEnvelope.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCMessageEnvelope();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static DataClassificationTag.remoteRequest(requestIdentifier:optedInToSiriDataSharing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = &type metadata for RemoteRequestDataClassification;
  *(a3 + 32) = sub_1D98CD56C();
  *a3 = a2;
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  *v14 = 1;
  v17 = type metadata accessor for ComponentId(0);
  result = (*(v7 + 32))(&v15[*(v17 + 20)], v11, v6);
  v15[v16] = 1;
  *(a3 + 40) = v13 | 0x2000000000000000;
  return result;
}

unint64_t sub_1D98CD56C()
{
  result = qword_1ECB48C98;
  if (!qword_1ECB48C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48C98);
  }

  return result;
}

unint64_t sub_1D98CD5C0(uint64_t a1)
{
  result = sub_1D98CD5E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D98CD5E8()
{
  result = qword_1ECB48CA0;
  if (!qword_1ECB48CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48CA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteRequestDataClassification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteRequestDataClassification(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D98CD7C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1F && *(a1 + 33))
    {
      v2 = *a1 + 30;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 2) & 0x1E | (*(a1 + 32) >> 7)) ^ 0x1F;
      if (v2 >= 0x1E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D98CD810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1D98CD8A0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_1D98CD944()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_1D98CD9C4()
{
  sub_1D98CD944();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D98CDA34(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream) = 0;
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_internalTelemetry) = 0;
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask) = 0;
  v5 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_streamURL;
  v6 = sub_1D992AD44();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_internalTelemetry) = a2;
  return v2;
}

uint64_t sub_1D98CDAE4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D98CDBE0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v4 = *(v2 + v3);
  v5 = v0[4];
  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_1D98CDC68()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98CDCF8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask;
  if (*(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask);
  }

  else
  {
    v4 = v0[3];
    v5 = sub_1D992B874();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v6 = sub_1D98CE624();
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v6;
    v7[4] = v1;
    swift_retain_n();
    v3 = sub_1D98C8F14(0, 0, v4, &unk_1D9933A10, v7);
    v8 = *(v1 + v2);
  }

  v0[4] = v3;
  *(v1 + v2) = v3;

  v9 = *(MEMORY[0x1E69E86C0] + 4);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_1D98CDE6C;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1D98CDE6C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D98CDF68()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D98CDFEC()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream;
  if (*(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream))
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1();
      v1 = *(v0 + 40);
    }

LABEL_4:
    OUTLINED_FUNCTION_4_1();
    sub_1D986A454(v5, v3 | 0x8000000000000000, 0xD000000000000075, v4 | 0x8000000000000000, v6, v7);
    goto LABEL_14;
  }

  type metadata accessor for PersistentStorage();
  v8 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_streamURL;
  if (sub_1D98F8F10())
  {
    v9 = *(v0 + 40);
    v10 = sub_1D992AD44();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    (*(v11 + 16))(v13, v1 + v8, v10);
    v14 = *(v9 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_internalTelemetry);
    type metadata accessor for MessageStagingStream();
    swift_allocObject();
    v15 = v14;
    v16 = sub_1D98F61A0(v13, v14);

    v17 = *(v1 + v2);
    *(v1 + v2) = v16;

    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1();
    }

    v1 = *(v0 + 40);
    goto LABEL_4;
  }

  if (qword_1ED8BF428 != -1)
  {
    swift_once();
  }

  v18 = sub_1D98DCE30();
  if (*(v18 + 24) == 1)
  {
    v19 = *(v0 + 40);

    sub_1D98CE3BC();
    v20 = *(v18 + 16);
    OUTLINED_FUNCTION_4_1();
    sub_1D98DCEB4(v21, v22, 0xD000000000000075, 0x80000001D993AEB0, v23, v24);
  }

  v1 = *(v0 + 40);
LABEL_14:
  v25 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask);
  *(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask) = 0;

  v26 = *(v0 + 8);

  return v26();
}

unint64_t sub_1D98CE3BC()
{
  sub_1D992BD64();

  sub_1D992AD44();
  sub_1D9887904();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  return 0xD00000000000001ELL;
}

uint64_t sub_1D98CE464()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_streamURL;
  v2 = sub_1D992AD44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream);

  v4 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D98CE4FC()
{
  sub_1D98CE464();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for MessageStagingProvider()
{
  result = qword_1ECB47CA8;
  if (!qword_1ECB47CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98CE57C()
{
  result = sub_1D992AD44();
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

unint64_t sub_1D98CE624()
{
  result = qword_1ECB47CB8;
  if (!qword_1ECB47CB8)
  {
    type metadata accessor for MessageStagingProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47CB8);
  }

  return result;
}

uint64_t sub_1D98CE67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D988D0F4;

  return sub_1D98CDFCC(a1, v4, v5, v6);
}

uint64_t sub_1D98CE740(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48CA8, &qword_1D9933A90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9933A20;
  *(v4 + 56) = &type metadata for DataSharingOptOutDataCollectionPolicy;
  *(v4 + 64) = &off_1F551AAA8;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 96) = &type metadata for PersistentIdentifiersDataCollectionPolicy;
  *(v4 + 104) = &off_1F551B600;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  swift_unknownObjectRetain();

  return v4;
}

uint64_t sub_1D98CE7E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D98CE800, 0, 0);
}

uint64_t sub_1D98CE800()
{
  v1 = v0[3];
  v2 = v1[2];
  v0[4] = v2;
  if (v2)
  {
    v0[5] = 0;
    v3 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    OUTLINED_FUNCTION_1_23();
    v12 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_0_37(v7);

    return v9(v8);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D98CE930()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D98CEA2C, 0, 0);
}

uint64_t sub_1D98CEA2C()
{
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[5] = v1;
    v4 = (v0[3] + 40 * v1);
    v5 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    OUTLINED_FUNCTION_1_23();
    v12 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_0_37();

    return v11(v10);
  }
}