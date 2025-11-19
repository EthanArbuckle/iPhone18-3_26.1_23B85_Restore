uint64_t sub_1AF7A1FA8(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1AFDFEE28() & 1) != 0)
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
      if (!v21 && (sub_1AFDFEE28() & 1) != 0)
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

uint64_t sub_1AF7A21D0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
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

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_1AFDFEE28() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_1AF7A24A4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1AF7A2610(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1AF7A284C(v13, v7, v3);
  result = MEMORY[0x1B271DEA0](v13, -1, -1);
  if (!v2)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1AF7A2610(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_10:
    v14 = (*(a3 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    sub_1AF4455CC(*(a3 + 56) + 88 * v10, v22);
    v20[0] = v15;
    v20[1] = v16;
    sub_1AF4455CC(v22, &v21);
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1AFDFD188();
    sub_1AF7A7124(v20);
    sub_1AF761390(v22);

    if (v15)
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++v23;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return sub_1AF8FAF28(a1, a2, v23, a3);
    }

    v13 = *(a3 + 8 * v4 + 72);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF7A27B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v8 = sub_1AF7A6380(a1, a2, a3, a4);
  swift_bridgeObjectRelease_n();

  return v8;
}

uint64_t sub_1AF7A284C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a1;
    v5 = a2;
    bzero(a1, 8 * a2);
    a1 = v4;
    a2 = v5;
  }

  v6 = sub_1AF7A2610(a1, a2, a3);

  return v6;
}

uint64_t sub_1AF7A28CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v6 = sub_1AF7AD284(a1, a2, a3);
  swift_bridgeObjectRelease_n();

  return v6;
}

uint64_t sub_1AF7A2968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v8 = sub_1AF7A8254(a1, a2, a3, a4);
  swift_bridgeObjectRelease_n();

  return v8;
}

uint64_t sub_1AF7A2A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v12 = a6(a1, a2, a3, a4, a5);

  return v12;
}

uint64_t sub_1AF7A2AE8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v8 = sub_1AF7A3E10(a1, a2, a3, a4 & 1);
  swift_bridgeObjectRelease_n();

  return v8;
}

uint64_t sub_1AF7A2B94(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v14 = sub_1AF7A3A04(a1, a2, a3, a4 & 1, a5, a6, a7);
  swift_bridgeObjectRelease_n();

  return v14;
}

uint64_t sub_1AF7A2C48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v10 = a5(a1, a2, a3, a4);

  return v10;
}

uint64_t sub_1AF7A2CE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1AF4455CC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_1AF7A2D30()
{
  result = qword_1ED7231B0;
  if (!qword_1ED7231B0)
  {
    sub_1AF7AD234(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7231B0);
  }

  return result;
}

unint64_t sub_1AF7A2DC4()
{
  result = qword_1EB63E830;
  if (!qword_1EB63E830)
  {
    sub_1AF7A4728(255, &qword_1EB63E828, _s7ContextCMa);
    sub_1AF7A2F5C(&qword_1EB63E838, _s7ContextCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E830);
  }

  return result;
}

unint64_t sub_1AF7A2E90()
{
  result = qword_1EB63E848;
  if (!qword_1EB63E848)
  {
    sub_1AF7A4728(255, &qword_1EB63E840, type metadata accessor for GraphV1CodeGeneration.BaseObject);
    sub_1AF7A2F5C(&qword_1EB63E850, type metadata accessor for GraphV1CodeGeneration.BaseObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E848);
  }

  return result;
}

uint64_t sub_1AF7A2F5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AF7A2FA4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF7AD234(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF7A3014()
{
  result = qword_1EB63E868;
  if (!qword_1EB63E868)
  {
    sub_1AF7A4728(255, &qword_1EB63E860, _s11ContextExitCMa);
    sub_1AF7A2F5C(&qword_1EB63E870, _s11ContextExitCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E868);
  }

  return result;
}

unint64_t sub_1AF7A30E0()
{
  result = qword_1EB63E880;
  if (!qword_1EB63E880)
  {
    sub_1AF7A4728(255, &qword_1EB63E878, _s12ContextEntryCMa);
    sub_1AF7A2F5C(&qword_1EB63E888, _s12ContextEntryCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E880);
  }

  return result;
}

unint64_t sub_1AF7A31AC()
{
  result = qword_1EB63E898;
  if (!qword_1EB63E898)
  {
    sub_1AF7A4728(255, &qword_1EB63E890, _s10SubContextCMa);
    sub_1AF7A2F5C(&qword_1EB63E8A0, _s10SubContextCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E898);
  }

  return result;
}

unint64_t sub_1AF7A3278()
{
  result = qword_1EB63E8B0;
  if (!qword_1EB63E8B0)
  {
    sub_1AF7A4728(255, &qword_1EB63E8A8, _s20ArraySequenceSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63E8B8, _s20ArraySequenceSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E8B0);
  }

  return result;
}

unint64_t sub_1AF7A3344()
{
  result = qword_1EB63E8C0;
  if (!qword_1EB63E8C0)
  {
    sub_1AF7A4728(255, &qword_1EB63E828, _s7ContextCMa);
    sub_1AF7A2F5C(&qword_1EB63E8C8, _s7ContextCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E8C0);
  }

  return result;
}

unint64_t sub_1AF7A3410()
{
  result = qword_1EB63E8D8;
  if (!qword_1EB63E8D8)
  {
    sub_1AF7A4728(255, &qword_1EB63E8D0, _s17CustomCodeSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63E8E0, _s17CustomCodeSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E8D8);
  }

  return result;
}

unint64_t sub_1AF7A34DC()
{
  result = qword_1EB63E8F0;
  if (!qword_1EB63E8F0)
  {
    sub_1AF7A4728(255, &qword_1EB63E8E8, _s17TypedArraySnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63E8F8, _s17TypedArraySnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E8F0);
  }

  return result;
}

unint64_t sub_1AF7A35A8()
{
  result = qword_1EB63E908;
  if (!qword_1EB63E908)
  {
    sub_1AF7A4728(255, &qword_1EB63E900, _s19StaticSwitchSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63E910, _s19StaticSwitchSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E908);
  }

  return result;
}

unint64_t sub_1AF7A3674()
{
  result = qword_1EB63E918;
  if (!qword_1EB63E918)
  {
    sub_1AF7A4728(255, &qword_1EB63E840, type metadata accessor for GraphV1CodeGeneration.BaseObject);
    sub_1AF7A2F5C(&qword_1EB63E920, type metadata accessor for GraphV1CodeGeneration.BaseObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E918);
  }

  return result;
}

unint64_t sub_1AF7A3740()
{
  result = qword_1EB63E930;
  if (!qword_1EB63E930)
  {
    sub_1AF7A4728(255, &qword_1EB63E928, _s15VariableSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63E938, _s15VariableSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E930);
  }

  return result;
}

unint64_t sub_1AF7A380C()
{
  result = qword_1EB63E948;
  if (!qword_1EB63E948)
  {
    sub_1AF7A4728(255, &qword_1EB63E940, _s24VariableReferenceSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63E950, _s24VariableReferenceSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E948);
  }

  return result;
}

void sub_1AF7A38D8()
{
  if (!qword_1EB63E958)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63E958);
    }
  }
}

uint64_t sub_1AF7A3938(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF7A38D8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF7A39B0()
{
  result = qword_1EB63E968;
  if (!qword_1EB63E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E968);
  }

  return result;
}

uint64_t sub_1AF7A3A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a4;
  v24 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_8:
  v16 = v9 << 6;
  while (1)
  {
    v17 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      return a7(a1, a2, v24, a3);
    }

    v18 = *(a3 + 8 * v9 + 72);
    v16 += 64;
    ++v9;
    if (v18)
    {
      v12 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) + v16;
      v9 = v17;
      while (2)
      {
        if (v7)
        {

          MEMORY[0x1B2718AE0](95, 0xE100000000000000);
          sub_1AF4486E4();
          v19 = sub_1AFDFDF18();

          v7 = a4;

          if (v19)
          {
            goto LABEL_14;
          }

LABEL_6:
          if (!v12)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_1AF4486E4();
          if ((sub_1AFDFDF18() & 1) == 0)
          {
            goto LABEL_6;
          }

LABEL_14:
          *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          ++v24;
          if (!v12)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v9 << 6);
        continue;
      }
    }
  }
}

uint64_t sub_1AF7A3C1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20[1] = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();

      v17 = sub_1AF7A2B94(v19, v13, a1, a2 & 1, a3, a4, a5);
      MEMORY[0x1B271DEA0](v19, -1, -1);
      swift_bridgeObjectRelease_n();
      return v17;
    }
  }

  v20[0] = v20;
  MEMORY[0x1EEE9AC00](v15, v16);
  bzero(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);

  v17 = sub_1AF7A3A04(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2 & 1, a3, a4, a5);

  if (v5)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v17;
}

uint64_t sub_1AF7A3E10(unint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v20 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_8:
  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FBE48(a1, a2, v20, a3);
    }

    v15 = *(a3 + 8 * v6 + 72);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      while (2)
      {
        if (a4)
        {

          v16 = sub_1AFDFD188();

          if (v16)
          {
            goto LABEL_14;
          }

LABEL_6:
          if (!v9)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_1AF4486E4();
          if ((sub_1AFDFDF18() & 1) == 0)
          {
            goto LABEL_6;
          }

LABEL_14:
          *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
          ++v20;
          if (!v9)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v12 = v11 | (v6 << 6);
        continue;
      }
    }
  }
}

uint64_t sub_1AF7A3FD4(uint64_t a1, char a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1AF7A2AE8(v13, v7, a1, a2 & 1);
      MEMORY[0x1B271DEA0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v11 = sub_1AF7A3E10((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2 & 1);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_1AF7A41B4()
{
  sub_1AF7A4574(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v22 - v2;
  v4 = sub_1AFDFE488();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFCF78();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFCF58();
  v23 = sub_1AFDFCF08();
  v15 = v14;
  (*(v10 + 8))(v13, v9);
  sub_1AFDFBBB8();
  swift_allocObject();
  sub_1AFDFBBA8();
  sub_1AFDFE478();
  (*(v5 + 48))(v3, 1, v4);
  (*(v5 + 32))(v8, v3, v4);
  v16 = type metadata accessor for SerializationContext();
  swift_allocObject();
  LOBYTE(v25[0]) = 1;
  v17 = sub_1AF69D428(0, 3031, 0, 0x100000000);
  v25[3] = v16;
  v25[0] = v17;
  v18 = sub_1AFDFBB98();
  sub_1AF824640(v25, v8);
  v18(v24, 0);
  if (v15 >> 60 == 15)
  {

    return 0;
  }

  else
  {
    _s7ContextCMa();
    v20 = v23;
    sub_1AF43C9F0(v23, v15);
    sub_1AF7A2F5C(&qword_1EB63E838, _s7ContextCMa);
    v21 = v25[5];
    sub_1AFDFBB88();
    sub_1AF587E7C(v20, v15);
    if (v21)
    {

      return sub_1AF587E7C(v20, v15);
    }

    else
    {
      sub_1AF587E7C(v20, v15);

      return v25[0];
    }
  }
}

void sub_1AF7A4574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF7A45D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AF7A4638()
{
  result = qword_1EB63E978;
  if (!qword_1EB63E978)
  {
    sub_1AF7AD234(255, &qword_1EB63E970, &_s7ContextC14AssignmentInfoVN, MEMORY[0x1E69E62F8]);
    sub_1AF7A46D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E978);
  }

  return result;
}

unint64_t sub_1AF7A46D4()
{
  result = qword_1EB63E980;
  if (!qword_1EB63E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E980);
  }

  return result;
}

void sub_1AF7A4728(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFCCB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF7A478C()
{
  result = qword_1EB63E990;
  if (!qword_1EB63E990)
  {
    sub_1AF7A4728(255, &qword_1EB63E988, _s11MetadataSetCMa);
    sub_1AF7A2F5C(&unk_1EB633E68, _s11MetadataSetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E990);
  }

  return result;
}

void sub_1AF7A4858()
{
  if (!qword_1EB63E998)
  {
    sub_1AF444CB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63E998);
    }
  }
}

uint64_t sub_1AF7A48C4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7AD234(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF7A491C()
{
  v0 = sub_1AFDFF118();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF7A4970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44495565736162 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795465736162 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1AF7A4A90(unint64_t result, uint64_t a2, void *a3)
{
  v6 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B2719C70](v8, v6);
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    sub_1AF79AA9C(&v10, a2, a3);

    if (v3)
    {
      break;
    }

    ++v8;
  }

  while (v7 != v8);
  return result;
}

unint64_t sub_1AF7A4B7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }
  }

  v10 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B2719C70](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    sub_1AF79861C(&v12, a2, a3, a4);

    if (v4)
    {
      break;
    }

    ++v10;
  }

  while (v9 != v10);
  return result;
}

uint64_t sub_1AF7A4C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8, uint64_t a9)
{
  v13 = sub_1AF76ED08(a2, a3);
  v15 = v14;
  v16 = sub_1AF76ED08(a5, a6);
  v18 = v17;
  v19 = sub_1AF7FE65C();
  v21 = v20;
  if (v19 == sub_1AF7FE65C() && v21 == v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_1AFDFEE28();
  }

  if (sub_1AF7FE65C() == 0x676E69727453 && v24 == 0xE600000000000000)
  {
LABEL_7:

    goto LABEL_9;
  }

  v25 = sub_1AFDFEE28();

  if ((v25 & 1) == 0)
  {
    if (sub_1AF7FE65C() != 5001813 || v49 != 0xE300000000000000)
    {
      v50 = sub_1AFDFEE28();

      if ((v50 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  if (sub_1AF7FE65C() == 0x676E69727453 && v26 == 0xE600000000000000)
  {
    goto LABEL_11;
  }

  v27 = sub_1AFDFEE28();

  if (v27)
  {
    goto LABEL_13;
  }

  if (sub_1AF7FE65C() == 5001813 && v51 == 0xE300000000000000)
  {
LABEL_11:
  }

  else
  {
    v52 = sub_1AFDFEE28();

    if ((v52 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_13:
  if ((*(a9 + 26) & 1) != 0 || !*(*(v77 + 264) + 16))
  {
LABEL_40:
    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    sub_1AF7FE65C();
    v56 = sub_1AFDFD188();

    if ((v56 & 1) == 0 || (sub_1AF7FE65C(), v57 = sub_1AFDFD188(), , (v57 & 1) == 0))
    {
      v64 = sub_1AF7EA6B0(a4, v16, v18, a1, v13, v15, a8 & 1, a7);
      v66 = v65;

      *&v82 = 8201;
      *(&v82 + 1) = 0xE200000000000000;
      MEMORY[0x1B2718AE0](v64, v66);

LABEL_53:
      MEMORY[0x1B2718AE0](8201, 0xE200000000000000);
LABEL_54:

      return 0;
    }

    v58 = sub_1AF78AD48(a2, a3, a7);
    if (a7 == 3)
    {
      if (a8)
      {
        *&v82 = 0;
        *(&v82 + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        MEMORY[0x1B2718AE0](v13, v15);

        MEMORY[0x1B2718AE0](5972026, 0xE300000000000000);
        sub_1AF7FE2EC(&v82);
        v59 = sub_1AF7DCE50(&v82, 3u);
        v61 = v60;
        sub_1AF444FBC(&v82);
        MEMORY[0x1B2718AE0](v59, v61);

        MEMORY[0x1B2718AE0](540876893, 0xE400000000000000);
        MEMORY[0x1B2718AE0](v16, v18);

        v62 = 544499052;
        v63 = 0xE400000000000000;
LABEL_52:
        MEMORY[0x1B2718AE0](v62, v63);

        goto LABEL_53;
      }

      *&v82 = v13;
      *(&v82 + 1) = v15;
      MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
      MEMORY[0x1B2718AE0](v16, v18);
    }

    else
    {
      v67 = v58;
      sub_1AFDFE218();

      *&v82 = 544501353;
      *(&v82 + 1) = 0xE400000000000000;
      MEMORY[0x1B2718AE0](v13, v15);
      MEMORY[0x1B2718AE0](0x3D20746E756F635FLL, 0xE900000000000020);
      v68 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v68);

      MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
      if (a8)
      {
        v80 = sub_1AF7DC134(a1, v13, v15, v67, 0, 0, 0, a9, a7);
        v81 = v69;
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v80, v81);
      }

      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](v13, v15);
      MEMORY[0x1B2718AE0](0x203B746E756F635FLL, 0xEF0A7B2029692B2BLL);
      MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF346D0);

      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](v13, v15);

      MEMORY[0x1B2718AE0](0x203D205D695BLL, 0xE600000000000000);
      MEMORY[0x1B2718AE0](v16, v18);

      MEMORY[0x1B2718AE0](0xA3B5D695BLL, 0xE500000000000000);
      MEMORY[0x1B2718AE0](2099465, 0xE300000000000000);

      MEMORY[0x1B2718AE0](8200201, 0xE300000000000000);
    }

    v63 = *(&v82 + 1);
    v62 = v82;
    goto LABEL_52;
  }

  sub_1AF419914(a2, a3);
  if ((v28 & 1) == 0)
  {

    goto LABEL_40;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
    goto LABEL_40;
  }

  v30 = *Strong == _TtCO3VFX21GraphV1CodeGeneration11ContextExit;

  if ((v30 | v23))
  {
    goto LABEL_41;
  }

LABEL_18:
  v73 = v13;
  v31 = v16;
  v32 = v16;
  v33 = v18;
  v72 = sub_1AF78A068(a1, a4, v32, v18, a7);
  v35 = v34;
  v37 = v36;
  sub_1AF7FE65C();
  v38 = sub_1AFDFD188();

  if (v38)
  {
    sub_1AF7FE65C();
    v39 = sub_1AFDFD188();

    if (v39)
    {
      if (v35)
      {
        v40 = v37;

        v41 = sub_1AF78AD48(a2, a3, a7);
        v42 = sub_1AF7E918C(v31, v33, a1, v73, v15, v72, v35, a8 & 1, v41, a9, a7);
        goto LABEL_24;
      }

      goto LABEL_34;
    }
  }

  if (!v35)
  {
LABEL_34:

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v79 = v82;
    MEMORY[0x1B2718AE0](0xD00000000000002DLL, 0x80000001AFF346A0);
    v53 = *(a1 + 16);
    v82 = *a1;
    v83 = v53;
    v84 = *(a1 + 32);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
    v54 = *(a4 + 16);
    v82 = *a4;
    v83 = v54;
    v84 = *(a4 + 32);
    sub_1AFDFE458();
    v55 = sub_1AFDFDA18();
    if (qword_1ED731058 != -1)
    {
      v71 = v55;
      swift_once();
      v55 = v71;
    }

    *&v82 = 0;
    sub_1AF0D4F18(v55, &v82, v79, *(&v79 + 1));
    goto LABEL_54;
  }

  v40 = v37;

  v42 = sub_1AF7E9E28(a4, v31, v33, a1, v73, v15, v72, v35, a8 & 1, a7);
LABEL_24:
  v44 = v42;
  v45 = v43;

  MEMORY[0x1B2718AE0](v44, v45);

  MEMORY[0x1B2718AE0](8201, 0xE200000000000000);

  if (v40)
  {
    *&v82 = 8201;
    *(&v82 + 1) = 0xE200000000000000;
    sub_1AF76ED08(a2, a3);
    sub_1AF4486E4();
    v46 = sub_1AFDFDEB8();
    v48 = v47;

    MEMORY[0x1B2718AE0](v46, v48);
  }

  return 0;
}

uint64_t sub_1AF7A5798(uint64_t a1, uint64_t a2, void **a3, int a4)
{
  v24 = a4;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_7:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(a1 + 56) + 24 * v13);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v23[0] = v15;
      v23[1] = v16;
      v23[2] = v18;
      v23[3] = v19;
      v23[4] = v20;

      sub_1AF79A55C(v23, a2, a3, v24);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (v11 + 1 >= v10)
      {
      }

      v9 = *(a1 + 8 * v11++ + 72);
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }
}

uint64_t sub_1AF7A5914(uint64_t a1)
{
  sub_1AF7A4574(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v47 = &v39 - v4;
  v46 = sub_1AFDFC128();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 56);
  if (v8 >> 62)
  {
    v9 = sub_1AFDFE108();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    v11 = 0x746C75616665642ELL;
    v48 = v8;
    v49 = v8 & 0xC000000000000001;
    v45 = (v5 + 56);
    v42 = (v5 + 32);
    v43 = (v5 + 48);
    v41 = (v5 + 8);
    while (1)
    {
      if (v49)
      {
        v12 = MEMORY[0x1B2719C70](v10, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v10 + 32);
      }

      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_6;
      }

      v14 = Strong;
      v15 = *(v12 + 32);
      *&v51[0] = *(v12 + 24);
      *(&v51[0] + 1) = v15;

      MEMORY[0x1B2718AE0](v11, 0xED000065756C6156);
      v16 = *(&v51[0] + 1);
      v17 = *(v14 + 16);
      if (!v17 || !*(v17 + 16))
      {
        break;
      }

      v18 = v9;
      v19 = v11;
      v20 = *&v51[0];

      v21 = sub_1AF419914(v20, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {

        v11 = v19;
LABEL_18:
        v9 = v18;
        v8 = v48;
        goto LABEL_7;
      }

      sub_1AF4455CC(*(v17 + 56) + 88 * v21, &v54);

      v58[2] = v56;
      v59[0] = *v57;
      v59[1] = *&v57[16];
      v60 = *&v57[32];
      v58[0] = v54;
      v58[1] = v55;
      v65 = *v57;
      v63 = v55;
      v64 = v56;
      if (sub_1AF7FE65C() == 5001813 && v24 == 0xE300000000000000)
      {

        v25 = v47;
        v11 = v19;
      }

      else
      {
        v26 = sub_1AFDFEE28();

        v25 = v47;
        v11 = v19;
        if ((v26 & 1) == 0)
        {

          sub_1AF761390(v58);
          goto LABEL_18;
        }
      }

      v27 = MEMORY[0x1E69E7CA0];
      sub_1AF7A74D0(v59 + 8, &v54, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      if (*(&v55 + 1))
      {
        v28 = v46;
        v29 = swift_dynamicCast();
        (*v45)(v25, v29 ^ 1u, 1, v28);
        v9 = v18;
        if ((*v43)(v25, 1, v28) != 1)
        {
          v30 = v44;
          (*v42)(v44, v25, v28);
          v31 = sub_1AFDFBFF8();
          v53[3] = MEMORY[0x1E69E6158];
          v53[0] = v31;
          v53[1] = v32;
          v33 = swift_weakLoadStrong();
          v8 = v48;
          if (v33)
          {
            v34 = v33;
            v35 = *(v12 + 32);
            *&v54 = *(v12 + 24);
            *(&v54 + 1) = v35;

            MEMORY[0x1B2718AE0](v11, 0xED000065756C6156);
            v36 = *(&v54 + 1);
            v40 = v54;
            if (!*(v34 + 16))
            {
              *(v34 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
            }

            sub_1AF0D5A54(v53, v51);
            memset(&v57[8], 0, 32);
            *&v54 = v40;
            *(&v54 + 1) = v36;

            sub_1AF809A8C(v51, v61);
            v55 = v61[0];
            v56 = v61[1];
            *v57 = v62;
            sub_1AF7A2FA4(&v57[8], &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
            sub_1AF449D40(v51, &v57[8]);
            v51[2] = v56;
            v51[3] = *v57;
            v51[4] = *&v57[16];
            v52 = *&v57[32];
            v51[0] = v54;
            v51[1] = v55;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50 = *(v34 + 16);
            *(v34 + 16) = 0x8000000000000000;
            sub_1AF85148C(v51, v40, v36, isUniquelyReferenced_nonNull_native);

            (*v41)(v44, v46);
            *(v34 + 16) = v50;
          }

          else
          {

            (*v41)(v30, v28);
          }

          sub_1AF761390(v58);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v53);
          goto LABEL_7;
        }
      }

      else
      {

        sub_1AF7A2FA4(&v54, &qword_1ED726850, v27 + 8);
        (*v45)(v25, 1, 1, v46);
        v9 = v18;
      }

      v8 = v48;
      sub_1AF761390(v58);
      sub_1AF7A7C7C(v25, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
LABEL_7:
      if (v9 == ++v10)
      {
      }
    }

LABEL_6:

    goto LABEL_7;
  }
}

uint64_t sub_1AF7A6008(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v6) = a4;
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v59 = a1;
  v60 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v61 = v8;
  v62 = 0;
  v63 = v11 & v9;
  v64 = a2;
  v65 = a3;

  sub_1AF948848(&v51);
  v12 = v52;
  if (v52)
  {
    v48 = v56;
    v49 = v57;
    v13 = v51;
    v50 = v58;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v14 = *a5;
    v15 = sub_1AF419914(v51, v52);
    v17 = v16;
    v18 = *(v14 + 16) + ((v16 & 1) == 0);
    if (*(v14 + 24) >= v18)
    {
      goto LABEL_8;
    }

    sub_1AF82C8F0(v18, v6 & 1);
    v15 = sub_1AF419914(v13, v12);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_9;
    }

    while (1)
    {
      v15 = sub_1AFDFF1A8();
      __break(1u);
LABEL_8:
      if (v6)
      {
LABEL_9:
        if (v17)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v22 = v15;
        sub_1AF844804();
        v15 = v22;
        if (v17)
        {
LABEL_10:
          v20 = *a5;
          v21 = 88 * v15;
          sub_1AF4455CC(*(*a5 + 56) + 88 * v15, v44);
          sub_1AF761390(&v45);

          sub_1AF770FA0(v44, *(v20 + 56) + v21);
          goto LABEL_13;
        }
      }

      v23 = *a5;
      *(*a5 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      v24 = (v23[6] + 16 * v15);
      *v24 = v13;
      v24[1] = v12;
      v25 = v23[7] + 88 * v15;
      v26 = v46;
      *v25 = v45;
      *(v25 + 16) = v26;
      v27 = v47;
      v28 = v48;
      v29 = v49;
      *(v25 + 80) = v50;
      *(v25 + 48) = v28;
      *(v25 + 64) = v29;
      *(v25 + 32) = v27;
      ++v23[2];
LABEL_13:
      sub_1AF948848(&v51);
      v12 = v52;
      if (!v52)
      {
        break;
      }

      v17 = 1;
      while (1)
      {
        v6 = v51;
        v48 = v56;
        v49 = v57;
        v50 = v58;
        v45 = v53;
        v46 = v54;
        v47 = v55;
        v37 = *a5;
        v38 = sub_1AF419914(v51, v12);
        v13 = v39;
        if (*(v37 + 24) < (*(v37 + 16) + ((v39 & 1) == 0)))
        {
          sub_1AF82C8F0(*(v37 + 16) + ((v39 & 1) == 0), 1);
          v38 = sub_1AF419914(v6, v12);
          if ((v13 & 1) != (v40 & 1))
          {
            break;
          }
        }

        if (v13)
        {
          v41 = *a5;
          v42 = 88 * v38;
          sub_1AF4455CC(*(*a5 + 56) + 88 * v38, v44);
          sub_1AF761390(&v45);

          sub_1AF770FA0(v44, *(v41 + 56) + v42);
        }

        else
        {
          v30 = *a5;
          *(*a5 + 8 * (v38 >> 6) + 64) |= 1 << v38;
          v31 = (v30[6] + 16 * v38);
          *v31 = v6;
          v31[1] = v12;
          v32 = v30[7] + 88 * v38;
          v33 = v46;
          *v32 = v45;
          *(v32 + 16) = v33;
          v34 = v47;
          v35 = v48;
          v36 = v49;
          *(v32 + 80) = v50;
          *(v32 + 48) = v35;
          *(v32 + 64) = v36;
          *(v32 + 32) = v34;
          ++v30[2];
        }

        sub_1AF948848(&v51);
        v12 = v52;
        if (!v52)
        {
          goto LABEL_21;
        }
      }
    }
  }

LABEL_21:
  sub_1AF0FBB14();
}

uint64_t sub_1AF7A6380(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v25 = (a4 + 40);
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_10:
    v15 = *(a4 + 16);
    if (v15)
    {
      v16 = (*(a3 + 48) + 16 * v11);
      v17 = *v16;
      v18 = v16[1];
      v19 = v25;
      while (1)
      {
        v20 = *(v19 - 1) == v17 && *v19 == v18;
        if (v20 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v19 += 2;
        if (!--v15)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      *(a1 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++v24;
    }
  }

  v12 = v5 << 6;
  while (1)
  {
    v13 = v5 + 1;
    if (v5 + 1 >= v9)
    {
      return sub_1AF8FAC78(a1, a2, v24, a3);
    }

    v14 = *(a3 + 8 * v5 + 72);
    v12 += 64;
    ++v5;
    if (v14)
    {
      v8 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) + v12;
      v5 = v13;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF7A64F4(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1AF7A27B8(v13, v7, a1, a2);
      MEMORY[0x1B271DEA0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v11 = sub_1AF7A6380((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_1AF7A66B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v69 = a5;
  v8 = sub_1AFDFD188();

  v11 = a1;
  v12 = a2;
  if (v8)
  {
    sub_1AFDFD048();
    v13 = sub_1AF8083E0();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v11 = MEMORY[0x1B27189E0](v13, v15, v17, v19);
    v12 = v20;
  }

  v70 = a1;
  v71 = a2;
  v21 = *(a4 + 40);
  v77 = v11;
  v78 = v12;
  MEMORY[0x1EEE9AC00](v9, v10);
  v65[2] = &v77;

  v22 = sub_1AF7B9518(sub_1AF7714A4, v65, v21);

  if ((v22 & 1) == 0)
  {
    v68 = a4;
    v23 = *(a4 + 40);
    v24 = *(v23 + 16);

    v67 = v23;
    if (v24)
    {
      v73 = sub_1AF770DF0();
      sub_1AF770E44();
      v25 = 0;
      v26 = v23 + 40;
      v27 = -v24;
      v28 = MEMORY[0x1E69E7CC0];
      v66 = v26;
      do
      {
        v72 = v28;
        v29 = (v26 + 16 * v25++);
        while (1)
        {
          v30 = *(v29 - 1);
          v31 = *v29;
          v77 = v30;
          v78 = v31;
          v74 = v11;
          v75 = v12;

          if (sub_1AFDFCD68())
          {
            break;
          }

          v29 += 2;
          ++v25;
          if (v27 + v25 == 1)
          {
            v28 = v72;
            goto LABEL_17;
          }
        }

        v28 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AFC05CE4(0, *(v28 + 16) + 1, 1);
          v28 = v76;
        }

        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v72 = v34 + 1;
          sub_1AFC05CE4(v33 > 1, v34 + 1, 1);
          v35 = v72;
          v28 = v76;
        }

        *(v28 + 16) = v35;
        v36 = v28 + 16 * v34;
        *(v36 + 32) = v30;
        *(v36 + 40) = v31;
        v26 = v66;
      }

      while (v27 + v25);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

LABEL_17:

    v37 = *(v28 + 16);

    a4 = v68;
    if (!v37)
    {

LABEL_36:
      v58 = v69;
      v59 = *v69;
      v60 = v71;

      result = swift_isUniquelyReferenced_nonNull_native();
      *v58 = v59;
      if ((result & 1) == 0)
      {
        result = sub_1AF420554(0, *(v59 + 16) + 1, 1, v59);
        v59 = result;
        *v58 = result;
      }

      v61 = v70;
      v63 = *(v59 + 16);
      v62 = *(v59 + 24);
      if (v63 >= v62 >> 1)
      {
        result = sub_1AF420554(v62 > 1, v63 + 1, 1, v59);
        v59 = result;
        *v58 = result;
      }

      *(v59 + 16) = v63 + 1;
      v64 = v59 + 16 * v63;
      *(v64 + 32) = v61;
      *(v64 + 40) = v60;
      return result;
    }
  }

  v38 = *(*(a4 + 40) + 16);

  v40 = 0;
  v72 = v39;
  v41 = v39 + 40;
  v42 = v38 + 1;
  v43 = MEMORY[0x1E69E7CC0];
  v73 = v39 + 40;
LABEL_19:
  v44 = ~v40;
  v45 = (v41 + 16 * v40);
  v46 = v42;
  v47 = v42 - v40;
  while (--v47)
  {
    v48 = v44;
    v50 = *(v45 - 1);
    v49 = *v45;
    if (v50 == v11 && v49 == v12)
    {
      v50 = v11;
LABEL_28:

      v52 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v43;
      if ((v52 & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v43 + 16) + 1, 1);
        v43 = v77;
      }

      v54 = *(v43 + 16);
      v53 = *(v43 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1AFC05CE4(v53 > 1, v54 + 1, 1);
        v43 = v77;
      }

      v40 = -v48;
      *(v43 + 16) = v54 + 1;
      v55 = v43 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v49;
      v41 = v73;
      v42 = v46;
      goto LABEL_19;
    }

    --v44;
    v45 += 2;
    if (sub_1AFDFEE28())
    {
      goto LABEL_28;
    }
  }

  v56 = *(v43 + 16);

  if (v56 == 1)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1AF7A6B30(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF764DBC();
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = (v3 + 4);
      do
      {
        sub_1AF7A70A0(v5, &v57);
        sub_1AF7A66B4(v57, *(&v57 + 1), &v58, a1, &v65);
        sub_1AF7A7124(&v57);
        v5 += 104;
        --v4;
      }

      while (v4);
      v2 = v65;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }
  }

  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = (v2 + 40);
    do
    {
      v8 = *(a1 + 16);
      if (!v8 || !*(v8 + 16))
      {
        goto LABEL_13;
      }

      v10 = *(v7 - 1);
      v9 = *v7;

      sub_1AF419914(v10, v9);
      v12 = v11;

      if (v12)
      {
        v14 = sub_1AF7FDA2C();
        if (!*v13)
        {
          (v14)(v64, 0);

          v62 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          sub_1AF7A2FA4(&v57, &qword_1EB6335B0, &_s8MetadataVN);
          goto LABEL_13;
        }

        v15 = v13;
        v16 = sub_1AF419914(v10, v9);
        if (v17)
        {
          v18 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = *v15;
          *v15 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1AF844804();
          }

          v20 = v63;

          v21 = *(v20 + 56) + 88 * v18;
          v22 = *(v21 + 16);
          v57 = *v21;
          v58 = v22;
          v24 = *(v21 + 48);
          v23 = *(v21 + 64);
          v25 = *(v21 + 32);
          v62 = *(v21 + 80);
          v60 = v24;
          v61 = v23;
          v59 = v25;
          sub_1AF6B1D58(v18, v20);
          *v15 = v20;
        }

        else
        {
          v62 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
        }

        sub_1AF7A2FA4(&v57, &qword_1EB6335B0, &_s8MetadataVN);
        (v14)(v64, 0);
      }

LABEL_13:
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  v26 = *(a1 + 40);
  if (v26[2])
  {
    v27 = v26[5];
    *&v57 = v26[4];
    *(&v57 + 1) = v27;
    sub_1AF4486E4();

    v28 = sub_1AFDFDF28();

    if (v28[2] != 2)
    {
      goto LABEL_26;
    }

    v29 = v28[4];
    v30 = v28[5];
    v31 = v28[6];
    v32 = v28[7];

    v33 = MEMORY[0x1B27189E0](v29, v30, v31, v32);
    v35 = v34;

    v56 = v33;
    if (sub_1AF769A0C(v33, v35))
    {
      goto LABEL_26;
    }

    v55 = v35;
    v36 = *(a1 + 40);
    v37 = *(v36 + 16);

    if (v37)
    {
      sub_1AF770DF0();
      sub_1AF770E44();
      v38 = 0;
      v39 = v36 + 40;
      v40 = -v37;
      v41 = MEMORY[0x1E69E7CC0];
      v54 = v39;
      do
      {
        v42 = (v39 + 16 * v38++);
        while (1)
        {
          v43 = *(v42 - 1);
          v44 = *v42;
          *&v57 = v43;
          *(&v57 + 1) = v44;
          v64[0] = v56;
          v64[1] = v55;

          if (sub_1AFDFCD68())
          {
            break;
          }

          v42 += 2;
          ++v38;
          if (v40 + v38 == 1)
          {
            goto LABEL_41;
          }
        }

        v45 = swift_isUniquelyReferenced_nonNull_native();
        v63 = v41;
        if ((v45 & 1) == 0)
        {
          sub_1AFC05CE4(0, *(v41 + 16) + 1, 1);
          v41 = v63;
        }

        v47 = *(v41 + 16);
        v46 = *(v41 + 24);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          sub_1AFC05CE4(v46 > 1, v47 + 1, 1);
          v48 = v47 + 1;
          v41 = v63;
        }

        *(v41 + 16) = v48;
        v49 = v41 + 16 * v47;
        *(v49 + 32) = v43;
        *(v49 + 40) = v44;
        v39 = v54;
      }

      while (v40 + v38);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

LABEL_41:

    v50 = *(v41 + 16);

    if (v50 >= 2 && v50 < 5)
    {
      *&v57 = v56;
      *(&v57 + 1) = v55;
      MEMORY[0x1B2718AE0](0x6E657474616C662ELL, 0xEA00000000006E49);
      v51 = v57;
      *&v57 = 0x74616F6C46;
      *(&v57 + 1) = 0xE500000000000000;
      v64[0] = v50;
      v52 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v52);

      *(&v58 + 1) = MEMORY[0x1E69E6158];
      sub_1AF7FDB64(v51, *(&v51 + 1), &v57);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v57);
    }

    else
    {
LABEL_26:
    }
  }
}

uint64_t sub_1AF7A70A0(uint64_t a1, uint64_t a2)
{
  sub_1AF4485F8(0, &qword_1EB63E698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF7A7124(uint64_t a1)
{
  sub_1AF4485F8(0, &qword_1EB63E698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF7A71A0()
{
  if (!qword_1EB63E9A0)
  {
    sub_1AF4452E4();
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63E9A0);
    }
  }
}

unint64_t sub_1AF7A7200()
{
  result = qword_1EB63E9A8;
  if (!qword_1EB63E9A8)
  {
    sub_1AF7A71A0();
    sub_1AF7A7278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E9A8);
  }

  return result;
}

unint64_t sub_1AF7A7278()
{
  result = qword_1EB63E9B0;
  if (!qword_1EB63E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E9B0);
  }

  return result;
}

unint64_t sub_1AF7A72CC()
{
  result = qword_1EB63E9B8;
  if (!qword_1EB63E9B8)
  {
    sub_1AF7A4728(255, &qword_1EB63E988, _s11MetadataSetCMa);
    sub_1AF7A2F5C(&qword_1EB633E60, _s11MetadataSetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E9B8);
  }

  return result;
}

void sub_1AF7A7398()
{
  if (!qword_1EB63E9C0)
  {
    sub_1AF4485F8(255, &qword_1EB63E9C8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63E9C0);
    }
  }
}

unint64_t sub_1AF7A7420()
{
  result = qword_1EB63E9D8;
  if (!qword_1EB63E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E9D8);
  }

  return result;
}

uint64_t sub_1AF7A74D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF7AD234(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1AF7A7550()
{
  result = qword_1EB63E9E0;
  if (!qword_1EB63E9E0)
  {
    sub_1AF7A4728(255, &qword_1EB63E900, _s19StaticSwitchSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63E9E8, _s19StaticSwitchSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E9E0);
  }

  return result;
}

unint64_t sub_1AF7A761C()
{
  result = qword_1EB63E9F0;
  if (!qword_1EB63E9F0)
  {
    sub_1AF7A4728(255, &qword_1EB63E8E8, _s17TypedArraySnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63E9F8, _s17TypedArraySnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E9F0);
  }

  return result;
}

unint64_t sub_1AF7A76E8()
{
  result = qword_1EB63EA00;
  if (!qword_1EB63EA00)
  {
    sub_1AF7A4728(255, &qword_1EB63E940, _s24VariableReferenceSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63EA08, _s24VariableReferenceSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EA00);
  }

  return result;
}

unint64_t sub_1AF7A77B4()
{
  result = qword_1EB63EA10;
  if (!qword_1EB63EA10)
  {
    sub_1AF7A4728(255, &qword_1EB63E928, _s15VariableSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63EA18, _s15VariableSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EA10);
  }

  return result;
}

unint64_t sub_1AF7A7880()
{
  result = qword_1EB63EA20;
  if (!qword_1EB63EA20)
  {
    sub_1AF7A4728(255, &qword_1EB63E8D0, _s17CustomCodeSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63EA28, _s17CustomCodeSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EA20);
  }

  return result;
}

unint64_t sub_1AF7A794C()
{
  result = qword_1EB63EA30;
  if (!qword_1EB63EA30)
  {
    sub_1AF7A4728(255, &qword_1EB63E890, _s10SubContextCMa);
    sub_1AF7A2F5C(&qword_1EB63EA38, _s10SubContextCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EA30);
  }

  return result;
}

unint64_t sub_1AF7A7A18()
{
  result = qword_1EB63EA40;
  if (!qword_1EB63EA40)
  {
    sub_1AF7A4728(255, &qword_1EB63E8A8, _s20ArraySequenceSnippetCMa);
    sub_1AF7A2F5C(&qword_1EB63EA48, _s20ArraySequenceSnippetCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EA40);
  }

  return result;
}

unint64_t sub_1AF7A7AE4()
{
  result = qword_1EB63EA50;
  if (!qword_1EB63EA50)
  {
    sub_1AF7A4728(255, &qword_1EB63E878, _s12ContextEntryCMa);
    sub_1AF7A2F5C(&qword_1EB63EA58, _s12ContextEntryCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EA50);
  }

  return result;
}

unint64_t sub_1AF7A7BB0()
{
  result = qword_1EB63EA60;
  if (!qword_1EB63EA60)
  {
    sub_1AF7A4728(255, &qword_1EB63E860, _s11ContextExitCMa);
    sub_1AF7A2F5C(&qword_1EB63EA68, _s11ContextExitCMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EA60);
  }

  return result;
}

uint64_t sub_1AF7A7C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF7A4574(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF7A7CEC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AF7A4574(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF7A7D6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1AF7AEE6C(0, &qword_1EB63EAC8, sub_1AF7AEDC4, &_s7ContextC14AssignmentInfoV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v21 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7AEDC4();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v11 = v22;
  v27 = 0;
  v12 = sub_1AFDFE708();
  v14 = v13;
  v15 = v12;
  v25 = 1;
  sub_1AF7AEED4();
  sub_1AFDFE768();
  v23 = v26;
  v24 = 2;
  v16 = sub_1AFDFE708();
  v17 = v9;
  v19 = v18;
  (*(v10 + 8))(v17, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v11 = v15;
  *(v11 + 8) = v14;
  *(v11 + 16) = v23;
  *(v11 + 24) = v16;
  *(v11 + 32) = v19;
  return result;
}

uint64_t sub_1AF7A7FF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = 0;
  v6 = 0;
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
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a4 + 264) + 16))
    {
      v16 = (*(a3 + 48) + 16 * v12);
      v29 = v12;
      v17 = *v16;
      v18 = v16[1];

      sub_1AF419914(v17, v18);
      if (v19)
      {

        Strong = swift_weakLoadStrong();

        if (Strong)
        {
          if (*(Strong + 24) == *(a5 + 24) && *(Strong + 32) == *(a5 + 32))
          {

            v23 = v29;
            goto LABEL_22;
          }

          v22 = sub_1AFDFEE28();

          v23 = v29;
          if (v22)
          {
LABEL_22:
            *(a1 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
            ++v28;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FBBD0(a1, a2, v28, a3);
    }

    v15 = *(a3 + 8 * v6 + 72);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1AF7A8254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E6158];
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v5 << 6);
LABEL_11:
    v44 = v12;
    v16 = (*(a3 + 56) + 24 * v12);
    v17 = v16[1];
    v18 = *(*(a4 + 264) + 16);
    v65 = v16[2];
    if (v18)
    {
      v19 = *v16;

      sub_1AF419914(v19, v17);
      if (v20)
      {
      }
    }

    else
    {
    }

    Strong = swift_weakLoadStrong();
    v22 = Strong;
    v58 = v10;
    v56 = 0;
    v57 = 0xE000000000000000;
    v23 = *(Strong + 16);
    if (v23)
    {
      if (!*(v23 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC8];
      *(Strong + 16) = MEMORY[0x1E69E7CC8];
      if (!*(v24 + 16))
      {
        goto LABEL_24;
      }
    }

    sub_1AF419914(1701667182, 0xE400000000000000);
    v26 = v25;

    if (v26)
    {
      goto LABEL_25;
    }

    if (!*(v22 + 16))
    {
      *(v22 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
    }

LABEL_24:
    sub_1AF0D5A54(&v56, &v46);
    memset(v55 + 8, 0, 32);
    *&v52 = 1701667182;
    *(&v52 + 1) = 0xE400000000000000;
    sub_1AF809A8C(&v46, v61);
    v53 = v61[0];
    v54 = v61[1];
    *&v55[0] = v62;
    sub_1AF7A2FA4(v55 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(&v46, (v55 + 8));
    v48 = v54;
    v49 = v55[0];
    v50 = v55[1];
    v51 = *&v55[2];
    v46 = v52;
    v47 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v59 = *(v22 + 16);
    sub_1AF85148C(&v46, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    *(v22 + 16) = v59;
LABEL_25:
    v28 = *(v22 + 16);
    v10 = MEMORY[0x1E69E6158];
    if (!v28)
    {
      goto LABEL_33;
    }

    if (!*(v28 + 16))
    {
      goto LABEL_31;
    }

    v29 = sub_1AF419914(1701667182, 0xE400000000000000);
    if ((v30 & 1) == 0)
    {

LABEL_31:
      memset(v55, 0, 40);
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
LABEL_32:
      sub_1AF7A2FA4(&v52, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_33:
      v59 = 0u;
      v60 = 0u;
      goto LABEL_34;
    }

    sub_1AF4455CC(*(v28 + 56) + 88 * v29, &v52);

    if (!*(&v52 + 1))
    {
      goto LABEL_32;
    }

    sub_1AF4455CC(&v52, &v46);
    sub_1AF7A2FA4(&v52, &qword_1EB6335B0, &_s8MetadataVN);
    sub_1AF7A74D0(&v49 + 8, &v59, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF761390(&v46);
LABEL_34:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v56);
    sub_1AF449D40(&v59, &v52);
    swift_dynamicCast();
    v52 = v46;
    *&v46 = 0x657461756C617645;
    *(&v46 + 1) = 0xE90000000000005FLL;
    sub_1AF770DF0();
    sub_1AF770E44();
    v31 = sub_1AFDFCD68();

    if (v31)
    {
      v58 = v10;
      v56 = 0;
      v57 = 0xE000000000000000;
      v32 = *(v22 + 16);
      if (v32)
      {
        if (!*(v32 + 16))
        {
          goto LABEL_37;
        }
      }

      else
      {
        *(v22 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);

        v32 = *(v22 + 16);
        if (!*(v32 + 16))
        {
LABEL_37:
          if (!v32)
          {
            goto LABEL_47;
          }

          goto LABEL_38;
        }
      }

      sub_1AF419914(1701667182, 0xE400000000000000);
      v35 = v34;

      if ((v35 & 1) == 0)
      {
        if (!*(v22 + 16))
        {
LABEL_47:
          *(v22 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
        }

LABEL_38:
        sub_1AF0D5A54(&v56, &v46);
        memset(v55 + 8, 0, 32);
        *&v52 = 1701667182;
        *(&v52 + 1) = 0xE400000000000000;
        sub_1AF809A8C(&v46, v63);
        v53 = v63[0];
        v54 = v63[1];
        *&v55[0] = v64;
        sub_1AF7A2FA4(v55 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v46, (v55 + 8));
        v48 = v54;
        v49 = v55[0];
        v50 = v55[1];
        v51 = *&v55[2];
        v46 = v52;
        v47 = v53;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        *&v59 = *(v22 + 16);
        sub_1AF85148C(&v46, 1701667182, 0xE400000000000000, v33);
        *(v22 + 16) = v59;
      }

      v36 = *(v22 + 16);
      if (!v36)
      {
        goto LABEL_51;
      }

      if (!*(v36 + 16))
      {
        goto LABEL_49;
      }

      v37 = sub_1AF419914(1701667182, 0xE400000000000000);
      if ((v38 & 1) == 0)
      {

LABEL_49:
        memset(v55, 0, 40);
        v53 = 0u;
        v54 = 0u;
        v52 = 0u;
LABEL_50:
        sub_1AF7A2FA4(&v52, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_51:
        v59 = 0u;
        v60 = 0u;
        goto LABEL_52;
      }

      sub_1AF4455CC(*(v36 + 56) + 88 * v37, &v52);

      if (!*(&v52 + 1))
      {
        goto LABEL_50;
      }

      sub_1AF4455CC(&v52, &v46);
      sub_1AF7A2FA4(&v52, &qword_1EB6335B0, &_s8MetadataVN);
      sub_1AF7A74D0(&v49 + 8, &v59, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF761390(&v46);
LABEL_52:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v56);
      sub_1AF449D40(&v59, &v52);
      swift_dynamicCast();
      v39 = sub_1AFDFD188();

      if (v39)
      {
        *(a1 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        ++v43;
      }
    }

    else
    {
    }
  }

  v13 = v5 << 6;
  while (1)
  {
    v14 = v5 + 1;
    if (v5 + 1 >= v9)
    {
      return sub_1AF8FBBD0(a1, a2, v43, a3);
    }

    v15 = *(a3 + 8 * v5 + 72);
    v13 += 64;
    ++v5;
    if (v15)
    {
      v8 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v5 = v14;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1AF7A89F0(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  swift_retain_n();
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1AF7A2968(v13, v7, a1, a2);
      MEMORY[0x1B271DEA0](v13, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v11 = sub_1AF7A8254((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:

  return v11;
}

uint64_t sub_1AF7A8C20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v33 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v34 = (v6 + 63) >> 6;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v10 = (v8 - 1) & v8;
    v11 = v9 | (v5 << 6);
LABEL_10:
    v49 = v10;
    v35 = v11;
    v15 = (*(v4 + 56) + 24 * v11);
    v16 = v15[1];
    if (*(*(a4 + 264) + 16))
    {
      v17 = *v15;

      sub_1AF419914(v17, v16);
      if (v18)
      {
      }
    }

    else
    {
    }

    Strong = swift_weakLoadStrong();
    v20 = Strong;
    v45[3] = MEMORY[0x1E69E6158];
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    v21 = *(Strong + 16);
    if (v21)
    {
      if (!*(v21 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC8];
      *(Strong + 16) = MEMORY[0x1E69E7CC8];
      if (!*(v22 + 16))
      {
        goto LABEL_23;
      }
    }

    sub_1AF419914(1701667182, 0xE400000000000000);
    v24 = v23;

    if (v24)
    {
      goto LABEL_24;
    }

    if (!*(v20 + 16))
    {
      *(v20 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
    }

LABEL_23:
    sub_1AF0D5A54(v45, v38);
    memset(v44 + 8, 0, 32);
    *&v41 = 1701667182;
    *(&v41 + 1) = 0xE400000000000000;
    sub_1AF809A8C(v38, v47);
    v42 = v47[0];
    v43 = v47[1];
    *&v44[0] = v48;
    sub_1AF7A2FA4(v44 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(v38, (v44 + 8));
    v38[2] = v43;
    v39[0] = v44[0];
    v39[1] = v44[1];
    v40 = *&v44[2];
    v38[0] = v41;
    v38[1] = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46[0] = *(v20 + 16);
    sub_1AF85148C(v38, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    *(v20 + 16) = *&v46[0];
LABEL_24:
    v26 = *(v20 + 16);
    if (!v26)
    {
      goto LABEL_32;
    }

    if (!*(v26 + 16))
    {
      goto LABEL_30;
    }

    v27 = sub_1AF419914(1701667182, 0xE400000000000000);
    if ((v28 & 1) == 0)
    {

LABEL_30:
      memset(v44, 0, 40);
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
LABEL_31:
      sub_1AF7A2FA4(&v41, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_32:
      memset(v46, 0, sizeof(v46));
      goto LABEL_33;
    }

    sub_1AF4455CC(*(v26 + 56) + 88 * v27, &v41);

    if (!*(&v41 + 1))
    {
      goto LABEL_31;
    }

    sub_1AF4455CC(&v41, v38);
    sub_1AF7A2FA4(&v41, &qword_1EB6335B0, &_s8MetadataVN);
    sub_1AF7A74D0(v39 + 8, v46, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF761390(v38);
LABEL_33:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
    sub_1AF449D40(v46, &v41);
    swift_dynamicCast();
    v41 = v38[0];
    *&v38[0] = 0x657461756C617645;
    *(&v38[0] + 1) = 0xE90000000000005FLL;
    sub_1AF770DF0();
    sub_1AF770E44();
    v29 = sub_1AFDFCD68();

    v8 = v49;
    v4 = a3;
    if ((v29 & 1) == 0)
    {
      *(a1 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      ++v33;
    }
  }

  v12 = v5 << 6;
  while (1)
  {
    v13 = v5 + 1;
    if (v5 + 1 >= v34)
    {
      return sub_1AF8FBBD0(a1, a2, v33, v4);
    }

    v14 = *(v4 + 8 * v5 + 72);
    v12 += 64;
    ++v5;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) + v12;
      v5 = v13;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF7A9100(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 16);
  if (v3 && *(a1 + 24) == 3)
  {
    v4 = ( + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      MEMORY[0x1B2718AE0](v6, v5);
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v7 = *(a1 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 128) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_1AF420554(0, *(v7 + 2) + 1, 1, v7);
        *(a1 + 128) = v7;
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        *(a1 + 128) = sub_1AF420554(v9 > 1, v10 + 1, 1, v7);
      }

      v11 = *(a1 + 128);
      *(v11 + 16) = v10 + 1;
      v12 = v11 + 16 * v10;
      *(v12 + 32) = 0x2074726F706D69;
      *(v12 + 40) = 0xE700000000000000;
      *(a1 + 128) = v11;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF7A927C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  sub_1AF7A74D0(a3 + 56, v130, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  sub_1AF449D40(v130, v132);
  swift_dynamicCast();
  sub_1AF809DF8(v124, v125, v128);
  v132[0] = v128[0];
  v132[1] = v128[1];
  v133 = v129;
  v9 = sub_1AFDFD188();

  if (v9)
  {
    sub_1AFDFD048();
    v10 = sub_1AF8083E0();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    a1 = MEMORY[0x1B27189E0](v10, v12, v14, v16);
    a2 = v17;
  }

  v18 = *(*(a4 + 136) + 64);
  if (!*(v18 + 16))
  {
    sub_1AF7A2FA4(v128, &qword_1EB63E690, &_s12MetadataTypeON);
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  v19 = sub_1AF41A308(v132);
  v21 = v20;
  sub_1AF7A2FA4(v128, &qword_1EB63E690, &_s12MetadataTypeON);
  if ((v21 & 1) == 0)
  {

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

LABEL_9:
  v23 = sub_1AF777A94(*(*a5 + 24));
  v25 = v24;
  v26 = sub_1AF761970();
  v108 = v22;
  if (sub_1AF76ACE8(v26) == 0x45747865746E6F43 && v27 == 0xEB00000000746978)
  {
  }

  else
  {
    v28 = sub_1AFDFEE28();

    if ((v28 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v113 = v23;
  v119 = v25;
  v29 = *(a6[10] + 16);

  if (v29)
  {
    v31 = 0;
    v32 = v30 + 40;
    v33 = MEMORY[0x1E69E7CC0];
    v115 = v30 + 40;
    do
    {
      v122 = v33;
      v34 = (v32 + 16 * v31++);
      while (1)
      {
        v36 = *(v34 - 1);
        v35 = *v34;
        *&v130[0] = a1;
        *(&v130[0] + 1) = a2;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        v37 = sub_1AFDFD178();

        if (v37)
        {
          break;
        }

        v34 += 2;
        if (++v31 - v29 == 1)
        {
          v33 = v122;
          goto LABEL_26;
        }
      }

      v33 = v122;
      v124 = v122;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v122 + 16) + 1, 1);
        v33 = v124;
      }

      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1AFC05CE4(v38 > 1, v39 + 1, 1);
        v33 = v124;
      }

      *(v33 + 16) = v39 + 1;
      v40 = v33 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v35;
      v32 = v115;
    }

    while (v31 != v29);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

LABEL_26:

  v41 = *(v33 + 16);
  if (!v41)
  {
LABEL_34:
  }

  v42 = (v33 + 40);
  while (1)
  {
    v43 = *(v42 - 1);
    v44 = *v42;
    v45 = *(*a6 + 1456);

    v46 = v45(v43, v44);
    if (v46)
    {
      v47 = *(v46 + 40);
      v48 = *(v46 + 48);

      LOBYTE(v47) = sub_1AF789F84(v47, v48);

      if (v47)
      {
        break;
      }
    }

    v42 += 2;
    if (!--v41)
    {
      goto LABEL_34;
    }
  }

  v22 = v108;
  v25 = v119;
  v23 = v113;
LABEL_32:
  *&v130[0] = v23;
  *(&v130[0] + 1) = v25;
  v124 = 36;
  v125 = 0xE100000000000000;
  v49 = v22[20];
  if (v49[2])
  {
    v51 = v49[4];
    v50 = v49[5];
  }

  else
  {
    v51 = 0;
    v50 = 0;
  }

  MEMORY[0x1B2718AE0](v51, v50);

  v53 = (*(*a6 + 1272))(a1, a2);
  v55 = v54;

  v56 = sub_1AF76ED08(v53, v55);
  v58 = v57;

  v126 = v56;
  v127 = v58;
  sub_1AF4486E4();
  v59 = sub_1AFDFDEB8();
  v61 = v60;

  *&v130[0] = v59;
  *(&v130[0] + 1) = v61;
  v124 = 8251;
  v125 = 0xE200000000000000;
  v62 = sub_1AFDFDE98();

  v63 = MEMORY[0x1E69E7CC0];
  if (v22[25])
  {
    v64 = v22[25];
  }

  else
  {
    v64 = MEMORY[0x1E69E7CC0];
  }

  if (v22[26])
  {
    v65 = v22[26];
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  v66 = sub_1AF7820DC(v64, v65);

  v67 = a6[12];
  v68 = v66;
  v69 = *(v62 + 16);
  swift_bridgeObjectRetain_n();

  v116 = v69;
  if (v69)
  {
    v70 = 0;
    v112 = v67;
    v114 = v67 & 0xFFFFFFFFFFFFFF8;
    v110 = v67 + 32;
    v111 = v67 & 0xC000000000000001;
    v71 = (v62 + 40);
    v72 = v68 + 56;
    v107 = v68;
    do
    {
      if (v70 == *(v68 + 16))
      {
        break;
      }

      v73 = *v71;
      v74 = *(v72 - 24);
      v75 = *(v72 - 16);
      v120 = *(v71 - 1);
      if (v67 >> 62)
      {
        if (v70 == sub_1AFDFE108())
        {
          break;
        }
      }

      else if (v70 == *(v114 + 16))
      {
        break;
      }

      v118 = v74;
      if (v111)
      {

        v76 = MEMORY[0x1B2719C70](v70, v67);
      }

      else
      {
        v76 = *(v110 + 8 * v70);
      }

      v77 = *(v76 + 40);
      v78 = *(v76 + 48);

      LOBYTE(v77) = sub_1AF789F84(v77, v78);

      if (v77)
      {
        v79 = *(v76 + 72);
        v80 = *(*a5 + 24);
        v130[0] = *(v76 + 56);
        v130[1] = v79;
        v131 = *(v76 + 88);
        v82 = *(v76 + 40);
        v81 = *(v76 + 48);
        sub_1AF444F60(v130, &v124);

        v83 = sub_1AF76ED08(v82, v81);
        v109 = v63;
        v85 = v84;

        sub_1AF7DBFF8(v130, v83, v85, 0, v80);

        sub_1AF444FBC(v130);
        v124 = v120;
        v125 = v73;
        v126 = 36;
        v127 = 0xE100000000000000;
        MEMORY[0x1B2718AE0](v118, v75);
        v121 = sub_1AFDFDEB8();
        v87 = v86;

        v88 = v109;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_1AF420554(0, *(v109 + 2) + 1, 1, v109);
        }

        v90 = *(v88 + 2);
        v89 = *(v88 + 3);
        if (v90 >= v89 >> 1)
        {
          v88 = sub_1AF420554(v89 > 1, v90 + 1, 1, v88);
        }

        *(v88 + 2) = v90 + 1;
        v91 = &v88[16 * v90];
        v63 = v88;
        *(v91 + 4) = v121;
        *(v91 + 5) = v87;

        v68 = v107;
      }

      else
      {
      }

      ++v70;

      v71 += 2;
      v72 += 32;
      v67 = v112;
    }

    while (v116 != v70);
  }

  v92 = *a5;
  v124 = 8201;
  v125 = 0xE200000000000000;
  v126 = v63;
  v93 = MEMORY[0x1E69E6158];
  sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF7A48C4(&qword_1ED726C68, &qword_1ED726C70, v93);

  v94 = sub_1AFDFCD98();
  v96 = v95;

  MEMORY[0x1B2718AE0](v94, v96);

  if (*(*a5 + 24) == 3)
  {
    v97 = 0;
  }

  else
  {
    v97 = 59;
  }

  if (*(*a5 + 24) == 3)
  {
    v98 = 0xE000000000000000;
  }

  else
  {
    v98 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v97, v98);

  v99 = v124;
  v100 = v125;
  v101 = *(v92 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v92 + 128) = v101;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v101 = sub_1AF420554(0, *(v101 + 2) + 1, 1, v101);
    *(v92 + 128) = v101;
  }

  v104 = *(v101 + 2);
  v103 = *(v101 + 3);
  if (v104 >= v103 >> 1)
  {
    *(v92 + 128) = sub_1AF420554(v103 > 1, v104 + 1, 1, v101);
  }

  v105 = *(v92 + 128);
  *(v105 + 16) = v104 + 1;
  v106 = v105 + 16 * v104;
  *(v106 + 32) = v99;
  *(v106 + 40) = v100;
  *(v92 + 128) = v105;
}

uint64_t sub_1AF7A9DCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = 0;
  v6 = 0;
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
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a4 + 264) + 16))
    {
      v29 = v12;
      v16 = (*(a3 + 56) + 24 * v12);
      v17 = v16[1];
      v18 = *v16;

      sub_1AF419914(v18, v17);
      if (v19)
      {

        Strong = swift_weakLoadStrong();

        if (Strong)
        {
          if (*(Strong + 24) == *(a5 + 24) && *(Strong + 32) == *(a5 + 32))
          {

            v23 = v29;
            goto LABEL_22;
          }

          v22 = sub_1AFDFEE28();

          v23 = v29;
          if (v22)
          {
LABEL_22:
            *(a1 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
            ++v28;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FBBD0(a1, a2, v28, a3);
    }

    v15 = *(a3 + 8 * v6 + 72);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1AF7AA0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = v5;
  v21[1] = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;
  swift_retain_n();
  v16 = swift_retain_n();
  if (v13 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v20 = swift_slowAlloc();

      v18 = sub_1AF7A2A28(v20, v14, a1, a2, a3, a5);
      MEMORY[0x1B271DEA0](v20, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v16, v17);
  bzero(v21 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v15);

  v18 = a4(v21 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v14, a1, a2, a3);

  if (v8)
  {
    swift_willThrow();
  }

LABEL_6:

  return v18;
}

uint64_t sub_1AF7AA2D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v15 = v14 | (v9 << 6);
LABEL_10:
    v19 = (*(a3 + 48) + 16 * v15);
    v20 = *v19 == *(a4 + 40) && v19[1] == *(a4 + 48);
    if (v20 || (sub_1AFDFEE28() & 1) != 0)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++v8;
    }
  }

  v16 = v9 << 6;
  while (1)
  {
    v17 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      return sub_1AF8FBBD0(a1, a2, v8, a3);
    }

    v18 = *(a3 + 8 * v9 + 72);
    v16 += 64;
    ++v9;
    if (v18)
    {
      v12 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) + v16;
      v9 = v17;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF7AA418(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v14 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v16 = sub_1AF7A2C48(v18, v12, a1, a2, a4);
      MEMORY[0x1B271DEA0](v18, -1, -1);

      return v16;
    }
  }

  MEMORY[0x1EEE9AC00](v14, v15);
  bzero(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);

  v16 = a3(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a1, a2);

  if (v7)
  {
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_1AF7AA5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, char a7)
{
  sub_1AF7A74D0(a3 + 56, v109, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  sub_1AF449D40(v109, v111);
  swift_dynamicCast();
  sub_1AF809DF8(*&v107[0], *(&v107[0] + 1), v105);
  v111[0] = v105[0];
  v111[1] = v105[1];
  v112 = v106;
  v12 = sub_1AFDFD188();

  if (v12)
  {
    sub_1AFDFD048();
    v13 = sub_1AF8083E0();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    a1 = MEMORY[0x1B27189E0](v13, v15, v17, v19);
    a2 = v20;
  }

  v21 = *(*(a4 + 136) + 56);
  v94 = a7;
  if (!*(v21 + 16))
  {
    sub_1AF7A2FA4(v105, &qword_1EB63E690, &_s12MetadataTypeON);
LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  v22 = sub_1AF41A308(v111);
  v24 = v23;
  sub_1AF7A2FA4(v105, &qword_1EB63E690, &_s12MetadataTypeON);
  if ((v24 & 1) == 0)
  {

    goto LABEL_8;
  }

  v25 = *(*(v21 + 56) + 8 * v22);

LABEL_9:
  v93 = sub_1AF777A94(*(*a5 + 24));
  v98 = v26;
  v27 = sub_1AF761970();
  v96 = a5;
  v97 = v25;
  if (sub_1AF76ACE8(v27) == 0x45747865746E6F43 && v28 == 0xEB00000000746978)
  {

LABEL_13:
    v30 = a1;
    v31 = *(a6[5] + 16);

    if (v31)
    {
      v33 = 0;
      v34 = v32 + 40;
      v35 = -v31;
      v36 = MEMORY[0x1E69E7CC0];
      v92 = v32 + 40;
      do
      {
        v37 = (v34 + 16 * v33++);
        while (1)
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          *&v109[0] = v30;
          *(&v109[0] + 1) = a2;

          MEMORY[0x1B2718AE0](46, 0xE100000000000000);
          v40 = sub_1AFDFD178();

          if (v40)
          {
            break;
          }

          v37 += 2;
          ++v33;
          if (v35 + v33 == 1)
          {
            goto LABEL_26;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v107[0] = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AFC05CE4(0, v36[2] + 1, 1);
          v36 = *&v107[0];
        }

        v43 = v36[2];
        v42 = v36[3];
        if (v43 >= v42 >> 1)
        {
          sub_1AFC05CE4(v42 > 1, v43 + 1, 1);
          v36 = *&v107[0];
        }

        v36[2] = v43 + 1;
        v44 = &v36[2 * v43];
        v44[4] = v38;
        v44[5] = v39;
        v34 = v92;
      }

      while (v35 + v33);
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

LABEL_26:

    v45 = v36[2];
    if (v45)
    {
      v46 = v36 + 5;
      do
      {
        v48 = *(v46 - 1);
        v47 = *v46;
        v49 = *(*a6 + 1440);

        v50 = v49(v48, v47);
        if (v50)
        {
          if (*(*(a4 + 256) + 16))
          {
            v52 = *(v50 + 40);
            v51 = *(v50 + 48);

            sub_1AF419914(v52, v51);
            LOBYTE(v52) = v53;

            if (v52)
            {

              a1 = v30;
              v25 = v97;
              goto LABEL_34;
            }
          }

          else
          {
          }
        }

        v46 += 2;
        --v45;
      }

      while (v45);
    }
  }

  v29 = sub_1AFDFEE28();

  if (v29)
  {
    goto LABEL_13;
  }

LABEL_34:
  if (sub_1AF7626A4())
  {
    v54 = a6[8] + 16 * (*(*a6 + 896))();
    v55 = *(v54 + 32) == a1 && *(v54 + 40) == a2;
    if (!v55 && (sub_1AFDFEE28() & 1) == 0)
    {
    }
  }

  v57 = (*a6 + 1272);
  v102 = *v57;
  v58 = (*v57)(a1, a2);
  v95 = sub_1AF76ED08(v58, v59);
  v61 = v60;

  if (v25[25])
  {
    v62 = v25[25];
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
  }

  if (v25[26])
  {
    v63 = v25[26];
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  v64 = sub_1AF7820DC(v62, v63);

  if (v64[2])
  {
    v65 = v64[4];
    v66 = v64[5];
    v68 = v64[6];
    v67 = v64[7];
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v68 = 0;
    v67 = 0;
  }

  if (v94)
  {
    v69 = *(*v96 + 24);

    sub_1AF809DF8(v68, v67, v107);
    v109[0] = v107[0];
    v109[1] = v107[1];
    v110 = v108;
    v70 = sub_1AF7DBFF8(v109, v95, v61, 0, v69);
    v72 = v71;

    sub_1AF7A2FA4(v107, &qword_1EB63E690, &_s12MetadataTypeON);
    v61 = v72;
  }

  else
  {
    sub_1AF7ADE60(v65, v66);
    v70 = v95;
  }

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](v93, v98);

  v73 = v70;
  v74 = v61;
  v75 = v25[20];
  if (v75)
  {
    v76 = a2;
    v77 = *(v75 + 16);

    v100 = v76;
    if (v77)
    {
      v99 = a1;
      v79 = (v78 + 40);
      do
      {
        v80 = *(v79 - 1);
        v81 = *v79;

        MEMORY[0x1B2718AE0](v80, v81);
        v103 = v102(v99, v100);
        v104 = v82;
        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v80, v81);
        sub_1AF76ED08(v103, v104);

        sub_1AF4486E4();
        v73 = sub_1AFDFDEB8();
        v61 = v83;

        swift_bridgeObjectRelease_n();

        v79 += 2;
        --v77;
      }

      while (v77);
    }

    v74 = v61;
    v84 = v96;
  }

  else
  {
    v84 = v96;
  }

  v85 = *v84;

  MEMORY[0x1B2718AE0](v73, v74);
  v86 = *(v85 + 128);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  *(v85 + 128) = v86;
  if ((v87 & 1) == 0)
  {
    v86 = sub_1AF420554(0, *(v86 + 2) + 1, 1, v86);
    *(v85 + 128) = v86;
  }

  v89 = *(v86 + 2);
  v88 = *(v86 + 3);
  if (v89 >= v88 >> 1)
  {
    *(v85 + 128) = sub_1AF420554(v88 > 1, v89 + 1, 1, v86);
  }

  v90 = *(v85 + 128);
  *(v90 + 16) = v89 + 1;
  v91 = v90 + 16 * v89;
  *(v91 + 32) = 8201;
  *(v91 + 40) = 0xE200000000000000;
  *(v85 + 128) = v90;
}

uint64_t sub_1AF7AAF38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v25 = a4 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_switchCaseValuePrefix;
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_10:
    v15 = (*(a3 + 48) + 16 * v11);
    v16 = *v15;
    v17 = v15[1];
    sub_1AF4455CC(*(a3 + 56) + 88 * v11, v24);
    v22[0] = v16;
    v22[1] = v17;
    sub_1AF4455CC(v24, &v23);
    sub_1AF770DF0();
    sub_1AF770E44();
    swift_bridgeObjectRetain_n();
    LOBYTE(v16) = sub_1AFDFCD68();
    sub_1AF7A7124(v22);
    sub_1AF761390(v24);

    if (v16)
    {
      *(a1 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++v21;
    }
  }

  v12 = v5 << 6;
  while (1)
  {
    v13 = v5 + 1;
    if (v5 + 1 >= v9)
    {
      return sub_1AF8FAF28(a1, a2, v21, a3);
    }

    v14 = *(a3 + 8 * v5 + 72);
    v12 += 64;
    ++v5;
    if (v14)
    {
      v8 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) + v12;
      v5 = v13;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF7AB100(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v29 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_10:
    v30 = v11;
    v40 = 0;
    v41 = 0xE000000000000000;
    v38[3] = MEMORY[0x1E69E6158];
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    v15 = *(v44 + 16);
    if (!v15)
    {
      v15 = MEMORY[0x1E69E7CC8];
      *(v44 + 16) = MEMORY[0x1E69E7CC8];
    }

    v16 = *(v15 + 16);

    if (v16)
    {

      sub_1AF419914(1701667182, 0xE400000000000000);
      v18 = v17;

      v19 = *(v44 + 16);
      if (v18)
      {
        goto LABEL_17;
      }

      if (!v19)
      {
        v20 = sub_1AF432414(MEMORY[0x1E69E7CC0]);
        *(v44 + 16) = v20;
      }
    }

    sub_1AF0D5A54(v38, v31);
    memset(v37 + 8, 0, 32);
    *&v34 = 1701667182;
    *(&v34 + 1) = 0xE400000000000000;
    sub_1AF809A8C(v31, v42);
    v35 = v42[0];
    v36 = v42[1];
    *&v37[0] = v43;
    sub_1AF7A2FA4(v37 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(v31, (v37 + 8));
    v31[2] = v36;
    v32[0] = v37[0];
    v32[1] = v37[1];
    v33 = *&v37[2];
    v31[0] = v34;
    v31[1] = v35;
    v21 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v39[0] = *(v21 + 16);
    sub_1AF85148C(v31, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v19 = *&v39[0];
    *(v21 + 16) = *&v39[0];
LABEL_17:
    if (!v19)
    {
      goto LABEL_25;
    }

    if (!*(v19 + 16))
    {
      goto LABEL_23;
    }

    v23 = sub_1AF419914(1701667182, 0xE400000000000000);
    if ((v24 & 1) == 0)
    {

LABEL_23:
      memset(v37, 0, 40);
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
LABEL_24:
      sub_1AF7A2FA4(&v34, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_25:
      memset(v39, 0, sizeof(v39));
      goto LABEL_26;
    }

    sub_1AF4455CC(*(v19 + 56) + 88 * v23, &v34);

    if (!*(&v34 + 1))
    {
      goto LABEL_24;
    }

    sub_1AF4455CC(&v34, v31);
    sub_1AF7A2FA4(&v34, &qword_1EB6335B0, &_s8MetadataVN);
    sub_1AF7A74D0(v32 + 8, v39, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF761390(v31);
LABEL_26:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v38);
    sub_1AF449D40(v39, &v34);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0](*&v31[0], *(&v31[0] + 1));

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    v25 = sub_1AFDFD178();

    if (v25)
    {
      *(a1 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      ++v29;
    }
  }

  v12 = v5 << 6;
  while (1)
  {
    v13 = v5 + 1;
    if (v5 + 1 >= v9)
    {
      return sub_1AF8FC1E4(a1, a2, v29, a3);
    }

    v14 = *(a3 + 8 * v5 + 72);
    v12 += 64;
    ++v5;
    if (v14)
    {
      v8 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) + v12;
      v5 = v13;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF7AB520(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = a1;
  v12 = a1 + 72;
  v47 = a5;
  v36 = v10;
  while (v9)
  {
    v14 = v11;
LABEL_12:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(v38 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v38 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v46[0] = v18;
    v46[1] = v19;
    v46[2] = v21;
    v46[3] = v22;

    a2(&v42, v46);

    v24 = v42;
    v23 = v43;
    v39 = v44;
    v40 = v45;
    v25 = *a5;
    v26 = sub_1AF419914(v42, v43);
    v28 = v27;
    v29 = *(v25 + 16) + ((v27 & 1) == 0);
    if (*(v25 + 24) >= v29)
    {
      if ((a4 & 1) == 0)
      {
        sub_1AF849704();
      }
    }

    else
    {
      sub_1AF8357A0(v29, a4 & 1);
      v30 = sub_1AF419914(v24, v23);
      if ((v28 & 1) != (v31 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v26 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v47;
    if (v28)
    {

      v13 = (v32[7] + 16 * v26);
      *v13 = v39;
      v13[1] = v40;

      a4 = 1;
    }

    else
    {
      a4 = 1;
      v32[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v24;
      v33[1] = v23;
      v34 = (v32[7] + 16 * v26);
      *v34 = v39;
      v34[1] = v40;
      ++v32[2];
    }

    v11 = v14;
    a5 = v47;
    v10 = v36;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (v15 + 1 >= v10)
    {
      break;
    }

    v9 = *(v12 + 8 * v15++);
    if (v9)
    {
      goto LABEL_12;
    }
  }

  sub_1AF0FBB14();
}

uint64_t sub_1AF7AB7C4(void *a1)
{
  v2 = sub_1AF7626A4();
  v3 = *a1;
  if (v2)
  {
    v4 = (*(v3 + 896))();
    v5 = a1[8];
    if (!*(v5 + 16) || ((v6 = v5 + 16 * v4, v8 = *(v6 + 32), v7 = *(v6 + 40), v9 = a1[5] + 16 * v4, v8 == *(v9 + 32)) ? (v10 = v7 == *(v9 + 40)) : (v10 = 0), v10 || (v11 = v4, v12 = sub_1AFDFEE28(), v4 = v11, (v12 & 1) != 0)))
    {
      v13 = a1[7];
      if ((v13 & 0xC000000000000001) != 0)
      {
        v92 = v4;

        v14 = MEMORY[0x1B2719C70](v92, v13);
      }

      else
      {
        v14 = *(v13 + 8 * v4 + 32);
      }

      if (swift_weakLoadStrong())
      {
        v15 = v14[4];
        *&v104 = v14[3];
        *(&v104 + 1) = v15;
        swift_retain_n();

        MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
        sub_1AF7FDD44(v104, v15, &v98);

        if (*(&v98 + 1))
        {
          v106 = v100;
          v107 = v101;
          v108 = v102;
          v109 = v103;
          v104 = v98;
          v105 = v99;
LABEL_16:
          v20 = MEMORY[0x1E69E6F90];
          sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1AFE431C0;
          v21 = v14[5];
          v22 = v14[6];

          *(v16 + 32) = v21;
          *(v16 + 40) = v22;
          sub_1AF7AD234(0, &qword_1EB638880, &_s12MetadataTypeON, v20);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1AFE431C0;
          v24 = v14[7];
          v25 = v14[8];
          v26 = v14[9];
          v27 = v14[10];
          v28 = v14[11];
          sub_1AF687F90(v24, v25);

          *(v23 + 32) = v24;
          *(v23 + 40) = v25;
          *(v23 + 48) = v26;
          *(v23 + 56) = v27;
          *(v23 + 64) = v28;
          sub_1AF445550();
          v29 = swift_allocObject();
          v30 = v106;
          v31 = v108;
          *(v29 + 80) = v107;
          *(v29 + 96) = v31;
          *(v29 + 112) = v109;
          v32 = v104;
          v33 = v105;
          *(v29 + 16) = xmmword_1AFE431C0;
          *(v29 + 32) = v32;
          *(v29 + 48) = v33;
          *(v29 + 64) = v30;

          return v16;
        }
      }

      else
      {
        swift_retain_n();
      }

      v19 = *(v14 + 9);
      v111 = *(v14 + 7);
      v112 = v19;
      v113 = v14[11];
      sub_1AF444F60(&v111, &v104);
      sub_1AF7FCDD4(&v111, 1, &v104);
      sub_1AF444FBC(&v111);
      goto LABEL_16;
    }

    v35 = a1[7];
    *&v98 = MEMORY[0x1E69E7CC0];
    if (v35 >> 62)
    {
      v36 = sub_1AFDFE108();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = MEMORY[0x1E69E7CC0];
    if (!v36)
    {
      v51 = MEMORY[0x1E69E7CC0];
      goto LABEL_39;
    }

    v38 = 0;
    while (1)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1B2719C70](v38, v35);
      }

      else
      {
        v39 = *(v35 + 8 * v38 + 32);
      }

      v40 = *(v39 + 32);
      *&v104 = *(v39 + 24);
      *(&v104 + 1) = v40;
      sub_1AF4486E4();

      v41 = sub_1AFDFDF28();

      if (*(v41 + 16) < 2uLL)
      {

        v49 = *(v39 + 24);
        v48 = *(v39 + 32);

        if (v49 != v8)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1AFC0DBAC(v41);
        }

        --*(v41 + 16);

        v42 = MEMORY[0x1E69E67B0];
        sub_1AF7AD234(0, &qword_1EB63EA80, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
        sub_1AF7A48C4(&qword_1EB63EA88, &qword_1EB63EA80, v42);
        sub_1AF6DC518();
        v43 = sub_1AFDFD298();
        v45 = v44;

        *&v104 = v43;
        *(&v104 + 1) = v45;
        v46 = sub_1AFDFD1E8();
        v48 = v47;
        if (v46 != v8)
        {
          goto LABEL_34;
        }
      }

      if (v48 == v7)
      {

LABEL_35:
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
        goto LABEL_23;
      }

LABEL_34:
      v50 = sub_1AFDFEE28();

      if (v50)
      {
        goto LABEL_35;
      }

LABEL_23:
      if (v36 == ++v38)
      {
        v51 = v98;
        v37 = MEMORY[0x1E69E7CC0];
LABEL_39:

        if (v51 < 0 || (v51 & 0x4000000000000000) != 0)
        {
          v52 = sub_1AFDFE108();
          if (v52)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v52 = *(v51 + 16);
          if (v52)
          {
LABEL_42:
            *&v104 = v37;
            v94 = v52 & ~(v52 >> 63);
            sub_1AFC05CE4(0, v94, 0);
            v53 = 0;
            v54 = v37;
            v97 = v51 & 0xC000000000000001;
            do
            {
              if (v97)
              {
                v55 = MEMORY[0x1B2719C70](v53, v51);
              }

              else
              {
                v55 = *(v51 + 8 * v53 + 32);
              }

              v57 = *(v55 + 40);
              v56 = *(v55 + 48);

              *&v104 = v54;
              v59 = *(v54 + 16);
              v58 = *(v54 + 24);
              if (v59 >= v58 >> 1)
              {
                sub_1AFC05CE4(v58 > 1, v59 + 1, 1);
                v54 = v104;
              }

              ++v53;
              *(v54 + 16) = v59 + 1;
              v60 = v54 + 16 * v59;
              *(v60 + 32) = v57;
              *(v60 + 40) = v56;
            }

            while (v52 != v53);
            v93 = v54;
            *&v104 = MEMORY[0x1E69E7CC0];
            sub_1AFC071E4(0, v94, 0);
            v61 = 0;
            v62 = v104;
            v95 = v51;
            v96 = v52;
            do
            {
              if (v97)
              {
                v63 = MEMORY[0x1B2719C70](v61, v51);
              }

              else
              {
                v63 = *(v51 + 8 * v61 + 32);
              }

              v64 = v63[7];
              v65 = v63[8];
              v67 = v63[9];
              v66 = v63[10];
              v68 = v63[11];
              sub_1AF687F90(v64, v65);

              *&v104 = v62;
              v70 = *(v62 + 16);
              v69 = *(v62 + 24);
              if (v70 >= v69 >> 1)
              {
                sub_1AFC071E4(v69 > 1, v70 + 1, 1);
                v62 = v104;
              }

              ++v61;
              *(v62 + 16) = v70 + 1;
              v71 = (v62 + 40 * v70);
              v71[4] = v64;
              v71[5] = v65;
              v71[6] = v67;
              v71[7] = v66;
              v71[8] = v68;
              v51 = v95;
            }

            while (v96 != v61);
            v110 = MEMORY[0x1E69E7CC0];
            sub_1AFC07688(0, v94, 0);
            v72 = 0;
            v73 = v110;
            while (1)
            {
              if (v97)
              {
                v74 = MEMORY[0x1B2719C70](v72, v51);
              }

              else
              {
                v74 = *(v51 + 8 * v72 + 32);
              }

              Strong = swift_weakLoadStrong();
              if (!Strong)
              {
                goto LABEL_67;
              }

              v76 = Strong;
              v77 = *(v74 + 32);
              *&v104 = *(v74 + 24);
              *(&v104 + 1) = v77;

              MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
              v78 = *(&v104 + 1);
              v79 = *(v76 + 16);
              if (!v79 || !*(v79 + 16))
              {
                break;
              }

              v80 = v104;

              v81 = sub_1AF419914(v80, v78);
              v83 = v82;

              if ((v83 & 1) == 0)
              {

                v51 = v95;
LABEL_67:
                v103 = 0;
                v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                v100 = 0u;
                v98 = 0u;
                v113 = *(v74 + 88);
                v84 = *(v74 + 72);
                v111 = *(v74 + 56);
                v112 = v84;
                sub_1AF444F60(&v111, &v104);
                sub_1AF7FCDD4(&v111, 1, &v104);

                sub_1AF444FBC(&v111);
                if (*(&v98 + 1))
                {
                  sub_1AF7A2FA4(&v98, &qword_1EB6335B0, &_s8MetadataVN);
                }

                goto LABEL_69;
              }

              sub_1AF4455CC(*(v79 + 56) + 88 * v81, &v98);

              v106 = v100;
              v107 = v101;
              v108 = v102;
              v109 = v103;
              v104 = v98;
              v105 = v99;
              v51 = v95;
LABEL_69:
              v110 = v73;
              v86 = *(v73 + 16);
              v85 = *(v73 + 24);
              if (v86 >= v85 >> 1)
              {
                sub_1AFC07688(v85 > 1, v86 + 1, 1);
                v73 = v110;
              }

              ++v72;
              *(v73 + 16) = v86 + 1;
              v87 = v73 + 88 * v86;
              v88 = v105;
              *(v87 + 32) = v104;
              *(v87 + 48) = v88;
              v89 = v106;
              v90 = v107;
              v91 = v108;
              *(v87 + 112) = v109;
              *(v87 + 80) = v90;
              *(v87 + 96) = v91;
              *(v87 + 64) = v89;
              if (v96 == v72)
              {

                return v93;
              }
            }

            goto LABEL_67;
          }
        }

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  v16 = (*(v3 + 1424))();
  v17 = *(*a1 + 904);

  v17(v18);
  return v16;
}

uint64_t sub_1AF7AC220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF7AC288()
{
  if (!qword_1EB6388A0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6388A0);
    }
  }
}

uint64_t sub_1AF7AC2F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AF7AC334(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v14 = v13 | (v8 << 6);
LABEL_10:
    v18 = (*(a3 + 56) + 24 * v14);
    v19 = *v18 == *(a4 + 40) && v18[1] == *(a4 + 48);
    if (v19 || (sub_1AFDFEE28() & 1) != 0)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      ++v7;
    }
  }

  v15 = v8 << 6;
  while (1)
  {
    v16 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      return sub_1AF8FBBD0(a1, a2, v7, a3);
    }

    v17 = *(a3 + 8 * v8 + 72);
    v15 += 64;
    ++v8;
    if (v17)
    {
      v11 = (v17 - 1) & v17;
      v14 = __clz(__rbit64(v17)) + v15;
      v8 = v16;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF7AC478(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  sub_1AF7A74D0(a3 + 56, v138, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  sub_1AF449D40(v138, v140);
  swift_dynamicCast();
  sub_1AF809DF8(*&v136[0], *(&v136[0] + 1), v130);
  v140[0] = v130[0];
  v140[1] = v130[1];
  v141 = v131;
  v11 = sub_1AFDFD188();

  if (v11)
  {
    sub_1AFDFD048();
    v12 = sub_1AF8083E0();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1B27189E0](v12, v14, v16, v18);
    a2 = v20;
    a1 = v19;
  }

  sub_1AF7B0B84(a1, a2);
  v21 = sub_1AF7AD3F0(a5);

  v22 = *(v21 + 16);

  if (!v22)
  {

    return sub_1AF7A2FA4(v130, &qword_1EB63E690, &_s12MetadataTypeON);
  }

  v23 = *(*(a6 + 136) + 64);
  if (!*(v23 + 16))
  {
    sub_1AF7A2FA4(v130, &qword_1EB63E690, &_s12MetadataTypeON);
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v24 = sub_1AF41A308(v140);
  v26 = v25;
  sub_1AF7A2FA4(v130, &qword_1EB63E690, &_s12MetadataTypeON);
  if ((v26 & 1) == 0)
  {

    goto LABEL_10;
  }

  v27 = *(*(v23 + 56) + 8 * v24);

LABEL_11:
  v126 = a1;
  v113 = a7;
  v112 = v27;
  v114 = sub_1AF777A94(*(*a7 + 24));
  v117 = v29;
  v30 = a4[5];
  v31 = *(v30 + 16);

  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v33 = 0;
    v34 = v30 + 40;
    v35 = -v31;
    do
    {
      v36 = (v34 + 16 * v33++);
      while (1)
      {
        v37 = *(v36 - 1);
        v38 = *v36;
        *&v138[0] = v126;
        *(&v138[0] + 1) = a2;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        v39 = sub_1AFDFD178();

        if (v39)
        {
          break;
        }

        v36 += 2;
        ++v33;
        if (v35 + v33 == 1)
        {
          goto LABEL_22;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v136[0] = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v32 + 16) + 1, 1);
        v32 = *&v136[0];
      }

      v42 = *(v32 + 16);
      v41 = *(v32 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1AFC05CE4(v41 > 1, v42 + 1, 1);
        v32 = *&v136[0];
      }

      *(v32 + 16) = v42 + 1;
      v43 = v32 + 16 * v42;
      *(v43 + 32) = v37;
      *(v43 + 40) = v38;
      v34 = v30 + 40;
    }

    while (v35 + v33);
  }

LABEL_22:

  v119 = v32;
  v44 = *(v32 + 16);
  if (!v44)
  {
LABEL_47:
  }

  v45 = 0;
  v121 = a2;
  v120 = v44;
  while (1)
  {
    v46 = a4[5];
    v47 = *(v46 + 16);
    if (!v47)
    {
      goto LABEL_25;
    }

    v48 = (v119 + 32 + 16 * v45);
    v49 = *v48;
    v50 = v48[1];
    v51 = (v46 + 40);
    v52 = *(v46 + 16);
    v53 = (v46 + 40);
    while (1)
    {
      v54 = *(v53 - 1) == v49 && *v53 == v50;
      if (v54 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v53 += 2;
      if (!--v52)
      {
        goto LABEL_25;
      }
    }

    v55 = 0;
    while (1)
    {
      v56 = *(v51 - 1) == v49 && *v51 == v50;
      if (v56 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v55;
      v51 += 2;
      if (v47 == v55)
      {
        v55 = 0;
        break;
      }
    }

    v122 = sub_1AF7B0B84(v49, v50);
    v58 = v57;
    v59 = a4[6] + 40 * v55;
    v60 = *(v59 + 32);
    v61 = *(v59 + 40);
    swift_weakInit();
    swift_weakAssign();
    if (*(*(a6 + 256) + 16))
    {
      break;
    }

    sub_1AF687F90(v60, v61);
    swift_weakDestroy();

    sub_1AF687FE4(v60, v61);
    v44 = v120;
LABEL_25:
    if (++v45 == v44)
    {
      goto LABEL_47;
    }
  }

  sub_1AF687F90(v60, v61);

  sub_1AF419914(v122, v58);
  v123 = v62;
  swift_weakDestroy();

  sub_1AF687FE4(v60, v61);

  v44 = v120;
  if ((v123 & 1) == 0)
  {
    goto LABEL_25;
  }

  *&v138[0] = v114;
  *(&v138[0] + 1) = v117;
  *&v136[0] = 36;
  *(&v136[0] + 1) = 0xE100000000000000;
  v63 = v112[20];
  if (v63[2])
  {
    v65 = v63[4];
    v64 = v63[5];
  }

  else
  {
    v65 = 0;
    v64 = 0;
  }

  MEMORY[0x1B2718AE0](v65, v64);

  v66 = sub_1AF7B0B84(v126, v121);
  v68 = sub_1AF76ED08(v66, v67);
  v70 = v69;

  *&v134[0] = v68;
  *(&v134[0] + 1) = v70;
  sub_1AF4486E4();
  sub_1AFDFDEB8();
  swift_bridgeObjectRelease_n();

  if (v112[25])
  {
    v71 = v112[25];
  }

  else
  {
    v71 = MEMORY[0x1E69E7CC0];
  }

  if (v112[26])
  {
    v72 = v112[26];
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  v73 = sub_1AF7820DC(v71, v72);

  v74 = *(v73 + 16);
  if (v74)
  {
    v75 = (v73 + 56);
    while (1)
    {
      v79 = *(v75 - 3);
      v78 = *(v75 - 2);
      v80 = *v75;
      v118 = *(v75 - 1);

      v81 = sub_1AFDFD178();

      v124 = v79;
      v82 = v78;
      if (v81)
      {
        v83 = sub_1AF701628();
        v85 = v84;
        v87 = v86;
        v89 = v88;

        v79 = MEMORY[0x1B27189E0](v83, v85, v87, v89);
        v82 = v90;
      }

      if (sub_1AFDFD048() == 1)
      {
        v79 = sub_1AFDFCF98();
        v92 = v91;

        v82 = v92;
      }

      v128 = a4[3];
      v129 = a4[4];

      MEMORY[0x1B2718AE0](47, 0xE100000000000000);

      MEMORY[0x1B2718AE0](v126, v121);

      MEMORY[0x1B2718AE0](v128, v129);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v79, v82);
      v115 = sub_1AF76ED08(1599362383, 0xE400000000000000);
      v116 = v93;

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v79, v82);

      v94 = sub_1AF7B0A00(v126, v121);

      if (!*(*(a6 + 256) + 16))
      {
        break;
      }

      v96 = v94[5];
      v95 = v94[6];

      sub_1AF419914(v96, v95);
      LOBYTE(v96) = v97;

      if ((v96 & 1) == 0)
      {
        goto LABEL_69;
      }

      v98 = *(*v113 + 24);

      sub_1AF809DF8(v118, v80, v134);
      v138[0] = v134[0];
      v138[1] = v134[1];
      v139 = v135;
      if (v98 == 3)
      {
        MEMORY[0x1B2718AE0](0, 0xE000000000000000);
        MEMORY[0x1B2718AE0](v115, v116);
        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        v99 = sub_1AF7DCE50(v138, 3u);
        MEMORY[0x1B2718AE0](v99);
      }

      else
      {
        sub_1AF7DCE50(v138, v98);
        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](0, 0xE000000000000000);
        MEMORY[0x1B2718AE0](v115, v116);
      }

      v77 = v134;
LABEL_59:
      sub_1AF7A2FA4(v77, &qword_1EB63E690, &_s12MetadataTypeON);

      MEMORY[0x1B2718AE0](v124, v78);
      sub_1AFDFDEB8();

      swift_bridgeObjectRelease_n();

      v75 += 4;
      if (!--v74)
      {
        goto LABEL_73;
      }
    }

LABEL_69:
    v100 = *(*v113 + 24);

    sub_1AF809DF8(v118, v80, v132);
    v136[0] = v132[0];
    v136[1] = v132[1];
    v137 = v133;
    if (v100 == 3)
    {
      MEMORY[0x1B2718AE0](0, 0xE000000000000000);
      MEMORY[0x1B2718AE0](v115, v116);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      v101 = sub_1AF7DCE50(v136, 3u);
      MEMORY[0x1B2718AE0](v101);
    }

    else
    {
      v76 = sub_1AF7DCE50(v136, v100);
      MEMORY[0x1B2718AE0](v76);

      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0, 0xE000000000000000);
      MEMORY[0x1B2718AE0](v115, v116);
    }

    v77 = v132;
    goto LABEL_59;
  }

LABEL_73:

  v102 = sub_1AFDFDEB8();
  v104 = v103;

  v105 = *v113;

  MEMORY[0x1B2718AE0](v102, v104);

  v106 = *(v105 + 128);
  v107 = swift_isUniquelyReferenced_nonNull_native();
  *(v105 + 128) = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_1AF420554(0, *(v106 + 2) + 1, 1, v106);
    *(v105 + 128) = v106;
  }

  v109 = *(v106 + 2);
  v108 = *(v106 + 3);
  if (v109 >= v108 >> 1)
  {
    *(v105 + 128) = sub_1AF420554(v108 > 1, v109 + 1, 1, v106);
  }

  v110 = *(v105 + 128);
  *(v110 + 16) = v109 + 1;
  v111 = v110 + 16 * v109;
  *(v111 + 32) = 8201;
  *(v111 + 40) = 0xE200000000000000;
  *(v105 + 128) = v110;
}

void sub_1AF7AD234(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF7AD284(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_10:
    sub_1AF770DF0();
    sub_1AF770E44();
    if (sub_1AFDFCD68())
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++v17;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return sub_1AF8FBBD0(a1, a2, v17, a3);
    }

    v13 = *(a3 + 8 * v4 + 72);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF7AD3F0(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v7 = swift_bridgeObjectRetain_n();
  if (v4 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();

      v9 = sub_1AF7A28CC(v11, v5, a1);
      MEMORY[0x1B271DEA0](v11, -1, -1);
      swift_bridgeObjectRelease_n();
      return v9;
    }
  }

  MEMORY[0x1EEE9AC00](v7, v8);
  bzero(v12 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0), v6);

  v9 = sub_1AF7AD284((v12 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0)), v5, a1);

  if (v1)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v9;
}

uint64_t sub_1AF7AD5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  sub_1AF7A74D0(a3 + 56, v99, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  sub_1AF449D40(v99, v102);
  swift_dynamicCast();
  sub_1AF809DF8(v97, v98, v100);
  v102[0] = v100[0];
  v102[1] = v100[1];
  v103 = v101;
  v12 = sub_1AFDFD188();

  if (v12)
  {
    sub_1AFDFD048();
    v13 = sub_1AF8083E0();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    a1 = MEMORY[0x1B27189E0](v13, v15, v17, v19);
    a2 = v20;
  }

  sub_1AF7B0B84(a1, a2);
  v21 = sub_1AF7AD3F0(a5);

  v22 = *(v21 + 16);

  if (!v22)
  {

    return sub_1AF7A2FA4(v100, &qword_1EB63E690, &_s12MetadataTypeON);
  }

  v23 = *(*(a6 + 136) + 56);
  if (!*(v23 + 16))
  {
    sub_1AF7A2FA4(v100, &qword_1EB63E690, &_s12MetadataTypeON);
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v24 = sub_1AF41A308(v102);
  v26 = v25;
  sub_1AF7A2FA4(v100, &qword_1EB63E690, &_s12MetadataTypeON);
  if ((v26 & 1) == 0)
  {

    goto LABEL_10;
  }

  v27 = *(*(v23 + 56) + 8 * v24);

LABEL_11:
  v85 = a7;
  v87 = v27;
  v84 = sub_1AF777A94(*(*a7 + 24));
  v86 = v29;
  v90 = a4;
  v30 = *(a4 + 40);
  v31 = *(v30 + 16);

  v94 = a1;
  if (v31)
  {
    v32 = 0;
    v33 = v30 + 40;
    v34 = MEMORY[0x1E69E7CC0];
    do
    {
      v35 = (v33 + 16 * v32++);
      while (1)
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        *&v99[0] = a1;
        *(&v99[0] + 1) = a2;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        v38 = sub_1AFDFD178();

        if (v38)
        {
          break;
        }

        v35 += 2;
        ++v32;
        a1 = v94;
        if (v32 - v31 == 1)
        {
          goto LABEL_24;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v34 + 16) + 1, 1);
      }

      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1AFC05CE4(v39 > 1, v40 + 1, 1);
      }

      *(v34 + 16) = v40 + 1;
      v41 = v34 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v36;
      v33 = v30 + 40;
      a1 = v94;
    }

    while (v32 != v31);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

LABEL_24:

  v42 = *(v34 + 16);
  v43 = v90;
  if (!v42)
  {
LABEL_52:
  }

  v44 = 0;
  v91 = v34 + 32;
  v88 = *(v34 + 16);
  while (1)
  {
    v45 = *(v43 + 40);
    v46 = *(v45 + 16);
    if (!v46)
    {
      goto LABEL_27;
    }

    v47 = (v91 + 16 * v44);
    v49 = *v47;
    v48 = v47[1];
    v50 = (v45 + 40);
    v51 = *(v45 + 16);
    v52 = (v45 + 40);
    while (1)
    {
      v53 = *(v52 - 1) == v49 && *v52 == v48;
      if (v53 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v52 += 2;
      if (!--v51)
      {
        goto LABEL_27;
      }
    }

    v54 = 0;
    while (1)
    {
      v55 = *(v50 - 1) == v49 && *v50 == v48;
      if (v55 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v54;
      v50 += 2;
      if (v46 == v54)
      {
        v54 = 0;
        break;
      }
    }

    v92 = sub_1AF7B0B84(v49, v48);
    v57 = v56;
    v58 = *(v43 + 48) + 40 * v54;
    v59 = *(v58 + 32);
    v60 = *(v58 + 40);
    swift_weakInit();
    swift_weakAssign();
    if (*(*(a6 + 256) + 16))
    {
      break;
    }

    sub_1AF687F90(v59, v60);
    swift_weakDestroy();

    sub_1AF687FE4(v59, v60);
    v42 = v88;
    v43 = v90;
LABEL_27:
    if (++v44 == v42)
    {
      goto LABEL_52;
    }
  }

  sub_1AF687F90(v59, v60);

  sub_1AF419914(v92, v57);
  v93 = v61;
  swift_weakDestroy();

  sub_1AF687FE4(v59, v60);

  v42 = v88;
  v43 = v90;
  if ((v93 & 1) == 0)
  {
    goto LABEL_27;
  }

  v62 = sub_1AF7B0B84(v94, a2);
  v64 = sub_1AF76ED08(v62, v63);
  v66 = v65;

  *&v99[0] = v64;
  *(&v99[0] + 1) = v66;
  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](v84, v86);

  v67 = *(&v99[0] + 1);
  v68 = *&v99[0];
  v69 = *(v87 + 160);
  if (v69)
  {
    v70 = *(v69 + 16);

    if (v70)
    {
      v72 = (v71 + 40);
      do
      {
        v74 = *(v72 - 1);
        v73 = *v72;
        *&v99[0] = v68;
        *(&v99[0] + 1) = v67;

        MEMORY[0x1B2718AE0](v74, v73);
        v95 = *(v90 + 24);
        v96 = *(v90 + 32);

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](v94, a2);

        MEMORY[0x1B2718AE0](v95, v96);

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v74, v73);
        sub_1AF76ED08(1599362383, 0xE400000000000000);

        sub_1AF4486E4();
        v68 = sub_1AFDFDEB8();
        v76 = v75;

        swift_bridgeObjectRelease_n();

        v72 += 2;
        v67 = v76;
        --v70;
      }

      while (v70);
    }

    else
    {
      v76 = v67;
    }

    v67 = v76;
  }

  v77 = *v85;
  *&v99[0] = 8201;
  *(&v99[0] + 1) = 0xE200000000000000;

  MEMORY[0x1B2718AE0](v68, v67);
  v78 = v99[0];
  v79 = *(v77 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v77 + 128) = v79;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v79 = sub_1AF420554(0, *(v79 + 2) + 1, 1, v79);
    *(v77 + 128) = v79;
  }

  v82 = *(v79 + 2);
  v81 = *(v79 + 3);
  if (v82 >= v81 >> 1)
  {
    *(v77 + 128) = sub_1AF420554(v81 > 1, v82 + 1, 1, v79);
  }

  v83 = *(v77 + 128);
  *(v83 + 16) = v82 + 1;
  *(v83 + 16 * v82 + 32) = v78;
  *(v77 + 128) = v83;
}

uint64_t sub_1AF7ADE60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AF7ADF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *(a5 + 264);
  if (*(v10 + 16))
  {

    v13 = sub_1AF419914(a1, a2);
    if (v14)
    {
      v15 = *(*(v10 + 56) + 8 * v13);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a5 + 264);
  if (*(v16 + 16))
  {

    v17 = sub_1AF419914(a3, a4);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *(swift_weakLoadStrong() + 80);

  v22 = *(v19 + 24);
  v21 = *(v19 + 32);

  v23 = *(v20 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (v20 + 40);
    while (1)
    {
      v26 = *(v25 - 1) == v22 && *v25 == v21;
      if (v26 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v24;
      v25 += 2;
      if (v23 == v24)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v24 = 0;
  }

  v27 = a6[10] + 16 * v24;
  v28 = *(v27 + 32);
  v29 = *(v27 + 40);
  v30 = *(*a6 + 1456);

  v31 = v30(v28, v29);

  if (v31)
  {

    sub_1AF7893A8(v31, v15, 0);
  }
}

uint64_t sub_1AF7AE17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(*(a5 + 264) + 16))
  {

    sub_1AF419914(a3, a4);
    if (v12)
    {
    }
  }

  v13 = *(a5 + 264);
  if (*(v13 + 16))
  {

    v14 = sub_1AF419914(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *(swift_weakLoadStrong() + 40);

  v19 = *(v16 + 24);
  v18 = *(v16 + 32);

  v20 = *(v17 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = (v17 + 40);
    while (1)
    {
      v23 = *(v22 - 1) == v19 && *v22 == v18;
      if (v23 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v21;
      v22 += 2;
      if (v20 == v21)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v21 = 0;
  }

  v24 = a6[5] + 16 * v21;
  v25 = *(v24 + 32);
  v26 = *(v24 + 40);
  v27 = *(*a6 + 1440);

  v28 = v27(v25, v26);

  if (v28)
  {

    sub_1AF7893A8(v29, v28, 0);
  }
}

uint64_t sub_1AF7AE3A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v6 = 0;
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
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a4 + 264) + 16))
    {
      v30 = v9;
      v16 = (*(a3 + 48) + 16 * v12);
      v17 = v12;
      v18 = *v16;
      v19 = v16[1];

      sub_1AF419914(v18, v19);
      if ((v20 & 1) == 0)
      {

LABEL_22:

        v12 = v17;
        v9 = v30;
        goto LABEL_23;
      }

      Strong = swift_weakLoadStrong();

      if (!Strong)
      {

        goto LABEL_22;
      }

      if (*(Strong + 24) == *(a5 + 24) && *(Strong + 32) == *(a5 + 32))
      {

        v9 = v30;
      }

      else
      {
        v23 = sub_1AFDFEE28();

        v12 = v17;
        v9 = v30;
        if ((v23 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++v27;
    }
  }

  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FBBD0(a1, a2, v27, a3);
    }

    v15 = *(a3 + 8 * v6 + 72);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1AF7AE60C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v6 = 0;
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
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a4 + 264) + 16))
    {
      v30 = v9;
      v16 = v12;
      v17 = (*(a3 + 56) + 24 * v12);
      v18 = v17[1];
      v19 = *v17;

      sub_1AF419914(v19, v18);
      if ((v20 & 1) == 0)
      {

LABEL_22:

        v12 = v16;
        v9 = v30;
        goto LABEL_23;
      }

      Strong = swift_weakLoadStrong();

      if (!Strong)
      {

        goto LABEL_22;
      }

      if (*(Strong + 24) == *(a5 + 24) && *(Strong + 32) == *(a5 + 32))
      {

        v9 = v30;
      }

      else
      {
        v23 = sub_1AFDFEE28();

        v12 = v16;
        v9 = v30;
        if ((v23 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++v27;
    }
  }

  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FBBD0(a1, a2, v27, a3);
    }

    v15 = *(a3 + 8 * v6 + 72);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1AF7AE87C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 24) == *(a4 + 24) && *(Strong + 32) == *(a4 + 32))
      {
      }

      else
      {
        v19 = sub_1AFDFEE28();

        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      ++v22;
    }
  }

  v14 = v7 << 6;
  while (1)
  {
    v15 = v7 + 1;
    if (v7 + 1 >= v11)
    {
      return sub_1AF8FBE48(a1, a2, v22, a3);
    }

    v16 = *(a3 + 8 * v7 + 72);
    v14 += 64;
    ++v7;
    if (v16)
    {
      v10 = (v16 - 1) & v16;
      v13 = __clz(__rbit64(v16)) + v14;
      v7 = v15;
      goto LABEL_11;
    }
  }
}

uint64_t _s7ContextC14AssignmentInfoVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t _s7ContextC14AssignmentInfoVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t _s7ContextC14AssignmentInfoVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptScheduling(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScriptScheduling(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AF7AEC68()
{
  result = qword_1EB63EA90;
  if (!qword_1EB63EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EA90);
  }

  return result;
}

unint64_t sub_1AF7AECC0()
{
  result = qword_1EB63EA98;
  if (!qword_1EB63EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EA98);
  }

  return result;
}

unint64_t sub_1AF7AED18()
{
  result = qword_1EB63EAA0;
  if (!qword_1EB63EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EAA0);
  }

  return result;
}

unint64_t sub_1AF7AED70()
{
  result = qword_1EB63EAA8;
  if (!qword_1EB63EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EAA8);
  }

  return result;
}

unint64_t sub_1AF7AEDC4()
{
  result = qword_1EB63EAB8;
  if (!qword_1EB63EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EAB8);
  }

  return result;
}

unint64_t sub_1AF7AEE18()
{
  result = qword_1EB63EAC0;
  if (!qword_1EB63EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EAC0);
  }

  return result;
}

void sub_1AF7AEE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF7AEED4()
{
  result = qword_1EB63EAD0;
  if (!qword_1EB63EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EAD0);
  }

  return result;
}

unint64_t sub_1AF7AEF3C()
{
  result = qword_1EB63EAD8;
  if (!qword_1EB63EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EAD8);
  }

  return result;
}

unint64_t sub_1AF7AEF94()
{
  result = qword_1EB63EAE0;
  if (!qword_1EB63EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EAE0);
  }

  return result;
}

unint64_t sub_1AF7AEFEC()
{
  result = qword_1EB63EAE8;
  if (!qword_1EB63EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EAE8);
  }

  return result;
}

uint64_t sub_1AF7AF060(uint64_t a1, uint64_t a2)
{
  v38 = *(a2 + 16);
  v39 = *(a1 + 16);
  if (v38 >= v39)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v59 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v59;
  v36 = a2;
  v6 = 0;
  if (v4)
  {
    v40 = 0;
    v41 = 0;
    v37 = a2 + 32;
    do
    {
      v7 = 0;
      v47 = v5;
      v43 = v4;
      if ((v6 & 1) != 0 || v41 == v39)
      {
        v45 = 1;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      else if (v40 == v38)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v45 = 1;
        v40 = v38;
        ++v41;
      }

      else
      {
        v14 = (a1 + 32 + 16 * v41);
        v12 = *v14;
        v11 = v14[1];
        v15 = (v37 + 40 * v40);
        v10 = *v15;
        v9 = v15[1];
        v8 = v15[2];
        v7 = v15[3];
        v13 = v15[4];
        ++v40;

        sub_1AF687F90(v10, v9);
        v45 = 0;
        ++v41;
      }

      v54 = v10;
      v55 = v9;
      v56 = v8;
      v57 = v7;
      v58 = v13;
      *&v52[0] = v12;
      *(&v52[0] + 1) = v11;

      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      v16 = sub_1AF7FE65C();
      MEMORY[0x1B2718AE0](v16);

      v17 = v52[0];

      sub_1AF687FE4(v10, v9);
      v5 = v47;
      v59 = v47;
      v19 = *(v47 + 16);
      v18 = *(v47 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AFC05CE4(v18 > 1, v19 + 1, 1);
        v5 = v59;
      }

      *(v5 + 16) = v19 + 1;
      *(v5 + 16 * v19 + 32) = v17;
      v4 = v43 - 1;
      v6 = v45;
    }

    while (v43 != 1);
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v48 = v5;
  if ((v6 & 1) == 0 && v41 != v39 && v40 != v38)
  {
    v21 = (a1 + 16 * v41 + 40);
    v22 = ~v41 + v39;
    v23 = v36 + 40 * v40 + 32;
    v24 = ~v40 + v38;
    do
    {
      v42 = v24;
      v25 = *(v21 - 1);
      v26 = *v21;
      v27 = *(v23 + 16);
      v52[0] = *v23;
      v52[1] = v27;
      v53 = *(v23 + 32);
      v44 = *(v23 + 8);
      v46 = *v23;
      v50 = v25;
      v51 = v26;
      swift_bridgeObjectRetain_n();
      sub_1AF444F60(v52, v49);
      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      v28 = sub_1AF7FE65C();
      MEMORY[0x1B2718AE0](v28);

      sub_1AF687FE4(v46, v44);
      v29 = v50;
      v30 = v51;
      v31 = v48;
      v59 = v48;
      v33 = *(v48 + 16);
      v32 = *(v48 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1AFC05CE4(v32 > 1, v33 + 1, 1);
        v31 = v59;
      }

      *(v31 + 16) = v33 + 1;
      v48 = v31;
      v34 = v31 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v30;
      if (!v22)
      {
        break;
      }

      v23 += 40;
      v21 += 2;
      --v22;
      v24 = v42 - 1;
    }

    while (v42);
  }

  return v48;
}

uint64_t sub_1AF7AF3E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3[10];
  v5 = *(v4 + 16);
  if (v5)
  {
    v8 = result;
    v9 = 0;
    v10 = (v4 + 40);
    v11 = -32;
    while (*(v10 - 1) != v8 || *v10 != a2)
    {
      result = sub_1AFDFEE28();
      if (result)
      {
        break;
      }

      ++v9;
      v11 -= 40;
      v10 += 2;
      if (v5 == v9)
      {
        return result;
      }
    }

    v13 = v3[11];
    sub_1AF444F60(a3, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[11] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AFC0DB98(v13);
      v3[11] = v13;
    }

    sub_1AF7AFA34(a3, &v13[-v11]);
    v15 = v3[12];
    if (v15 >> 62)
    {
      result = sub_1AFDFE108();
      if (v9 >= result)
      {
        return result;
      }
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= result)
      {
        return result;
      }
    }

    if ((v15 & 0xC000000000000001) != 0)
    {

      v21 = MEMORY[0x1B2719C70](v9, v15);

      v22 = *(v21 + 56);
      v23 = *(v21 + 64);
      v24 = *(a3 + 32);
      v25 = *(a3 + 16);
      *(v21 + 56) = *a3;
      *(v21 + 72) = v25;
      *(v21 + 88) = v24;
      sub_1AF444F60(a3, v26);
      sub_1AF687FE4(v22, v23);
      return swift_unknownObjectRelease();
    }

    else
    {
      v16 = *(v15 + 8 * v9 + 32);
      v17 = *(v16 + 56);
      v18 = *(v16 + 64);
      v19 = *(a3 + 32);
      v20 = *(a3 + 16);
      *(v16 + 56) = *a3;
      *(v16 + 72) = v20;
      *(v16 + 88) = v19;
      sub_1AF444F60(a3, v26);
      return sub_1AF687FE4(v17, v18);
    }
  }

  return result;
}

void *sub_1AF7AF5BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v25[0] = a1;
  v25[1] = a2;
  v24 = v25;

  v6 = sub_1AF7B9518(sub_1AF771190, v23, v5);

  result = 0;
  if (v6)
  {
    v8 = *(v2 + 80);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (v8 + 40);
      while (1)
      {
        v12 = *(v11 - 1) == a1 && *v11 == a2;
        if (v12 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v10;
        v11 += 2;
        if (v9 == v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v10 = 0;
    }

    v13 = (*(v2 + 88) + 40 * v10);
    v14 = v13[4];
    v15 = v13[5];
    v16 = v13[6];
    v17 = v13[7];
    v18 = v13[8];
    sub_1AF687F90(v14, v15);
    v22 = sub_1AF7AF740(a1, a2);
    v20 = v19;
    _s12ParameterOutCMa();
    v21 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v21[3] = a1;
    v21[4] = a2;
    v21[5] = v22;
    v21[6] = v20;
    v21[7] = v14;
    v21[8] = v15;
    v21[9] = v16;
    v21[10] = v17;
    v21[11] = v18;

    return v21;
  }

  return result;
}

uint64_t sub_1AF7AF740(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);

  MEMORY[0x1B2718AE0](a1, a2);

  MEMORY[0x1B2718AE0](v6, v7);

  return 6245961;
}

unint64_t sub_1AF7AF7E4()
{
  v1 = v0;
  v2 = v0[10];
  v3 = v1[11];

  sub_1AF7AF060(v2, v3);

  sub_1AF629AE4();
  sub_1AF488088();
  v4 = sub_1AFDFCD98();
  v6 = v5;

  sub_1AFDFE218();

  v8 = v1[3];
  v7 = v1[4];

  MEMORY[0x1B2718AE0](v8, v7);

  MEMORY[0x1B2718AE0](0x656D61726170202CLL, 0xEF5B203A73726574);
  MEMORY[0x1B2718AE0](v4, v6);

  MEMORY[0x1B2718AE0](10589, 0xE200000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1AF7AF944(uint64_t a1)
{
  swift_allocObject();
  sub_1AF441194(a1, v4);
  v2 = sub_1AF76BC24(v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF7AF9BC()
{
  sub_1AF76CB54();

  return swift_deallocClassInstance();
}

unint64_t sub_1AF7AFA90(unint64_t result, void *a2)
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2719C70](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    sub_1AF7B3234(&v8, a2);

    if (v2)
    {
      break;
    }

    ++v6;
  }

  while (v5 != v6);
  return result;
}

void sub_1AF7AFB6C(unint64_t a1, char **a2, int a3)
{
  LODWORD(v3) = a3;
  sub_1AF0D4E74();
  v98 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v97 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_1AFDFC298();
  v9 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v10);
  v95 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    v12 = sub_1AFDFE108();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v13 = 0;
      v103 = a1 & 0xC000000000000001;
      v92 = 0x80000001AFF33DF0;
      v91 = "CodeGenContext.typeAsCode: ";
      v90 = (v9 + 32);
      v89 = xmmword_1AFE431C0;
      v94 = a2;
      v104 = a1;
      v93 = v12;
      v112 = v3;
      do
      {
        if (v103)
        {
          v14 = MEMORY[0x1B2719C70](v13, a1);
        }

        else
        {
          v14 = *(a1 + 8 * v13 + 32);
        }

        v16 = *(v14 + 40);
        v15 = *(v14 + 48);

        v17 = sub_1AF76ED08(v16, v15);
        v19 = v18;

        v20 = *(v14 + 72);
        v109 = *(v14 + 56);
        v110 = v20;
        v111 = *(v14 + 88);
        if (v3 > 2u)
        {
          if (v3 == 3)
          {
            v107 = 8287;
            v108 = 0xE200000000000000;
            sub_1AF444F60(&v109, &v105);
            MEMORY[0x1B2718AE0](v17, v19);
            MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
            if (*(&v109 + 1) >= 0x3BuLL)
            {
              v57 = v110;
              v58 = v111;
              if (*(v111 + 16) && (v59 = sub_1AF41A220(3u), (v60 & 1) != 0))
              {
                v61 = (*(v58 + 56) + 16 * v59);
                v62 = *v61;
                v30 = v61[1];

                v28 = v62;
              }

              else
              {
                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v105 = 0;
                v106 = 0xE000000000000000;
                sub_1AFDFE218();

                v105 = 0xD00000000000001BLL;
                v106 = v92;
                MEMORY[0x1B2718AE0](v57, *(&v57 + 1));
                MEMORY[0x1B2718AE0](0xD000000000000011, v91 | 0x8000000000000000);
                MEMORY[0x1B2718AE0](0x4C28207466697753, 0xEE00297963616765);
                v64 = v105;
                v63 = v106;
                v65 = sub_1AFDFDA18();
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v102 = v19;
                if (qword_1ED730E98 != -1)
                {
                  swift_once();
                }

                sub_1AF6EFB60();
                v66 = swift_allocObject();
                *(v66 + 16) = v89;
                *(v66 + 56) = MEMORY[0x1E69E6158];
                *(v66 + 64) = sub_1AF0D544C();
                *(v66 + 32) = v64;
                *(v66 + 40) = v63;

                sub_1AFDFC4C8();

                v101 = v64;
                v67 = v95;
                sub_1AFDFC288();
                v100 = v98[12];
                v68 = v98[16];
                LOBYTE(v66) = v65;
                v69 = v97;
                v70 = &v97[v98[20]];
                (*v90)(v97, v67, v96);
                v71 = v101;
                *(v69 + v100) = v66;
                *(v69 + v68) = 0;
                *v70 = v71;
                v70[1] = v63;

                sub_1AFDFC608();

                sub_1AF7B49D8(v69, sub_1AF0D4E74);

                v28 = 0;
                v30 = 0xE000000000000000;
                a2 = v94;
                v12 = v93;
              }
            }

            else
            {
              v28 = sub_1AF7E4930(&v109);
              v30 = v29;
            }

            MEMORY[0x1B2718AE0](v28, v30);

            goto LABEL_72;
          }
        }

        else if (v3 >= 2u)
        {
          v21 = 0;
          v22 = *(v14 + 64);
          v23 = 0xE000000000000000;
          if (v22 <= 0x26 && ((1 << v22) & 0x43A0000000) != 0)
          {
            v23 = 0xE700000000000000;
            v21 = 0x20646165726874;
          }

          v107 = v21;
          v108 = v23;
          if (*(&v109 + 1) >= 0x3BuLL)
          {
            v102 = v19;
            v24 = v110;
            v25 = v111;
            if (!*(v111 + 16))
            {
              sub_1AF444F60(&v109, &v105);
LABEL_64:
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v101 = v17;
              v105 = 0;
              v106 = 0xE000000000000000;
              sub_1AFDFE218();

              v105 = 0xD00000000000001BLL;
              v106 = v92;
              MEMORY[0x1B2718AE0](v24, *(&v24 + 1));
              MEMORY[0x1B2718AE0](0xD000000000000011, v91 | 0x8000000000000000);
              MEMORY[0x1B2718AE0](0x6C6174654DLL, 0xE500000000000000);
              v72 = v105;
              v73 = v106;
              v74 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF6EFB60();
              v75 = swift_allocObject();
              *(v75 + 16) = v89;
              *(v75 + 56) = MEMORY[0x1E69E6158];
              *(v75 + 64) = sub_1AF0D544C();
              *(v75 + 32) = v72;
              *(v75 + 40) = v73;

              sub_1AFDFC4C8();

              v100 = v72;
              v76 = v95;
              sub_1AFDFC288();
              v99 = v98[12];
              v77 = v98[16];
              v78 = v74;
              v79 = v97;
              v80 = &v97[v98[20]];
              (*v90)(v97, v76, v96);
              v81 = v100;
              *(v79 + v99) = v78;
              *(v79 + v77) = 0;
              *v80 = v81;
              v80[1] = v73;

              sub_1AFDFC608();

              sub_1AF7B49D8(v79, sub_1AF0D4E74);

              v31 = 0;
              v33 = 0xE000000000000000;
              a2 = v94;
              v12 = v93;
              v17 = v101;
              v19 = v102;
              goto LABEL_71;
            }

            sub_1AF444F60(&v109, &v105);
            v26 = sub_1AF41A220(2u);
            if ((v27 & 1) == 0)
            {
              goto LABEL_64;
            }

            goto LABEL_24;
          }

          goto LABEL_21;
        }

        v107 = 0x2074736E6F63;
        v108 = 0xE600000000000000;
        if (*(&v109 + 1) >= 0x3BuLL)
        {
          v102 = v19;
          v34 = v110;
          v25 = v111;
          if (!*(v111 + 16))
          {
            sub_1AF444F60(&v109, &v105);
LABEL_29:
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v105 = 0;
            v106 = 0xE000000000000000;
            sub_1AFDFE218();

            v105 = 0xD00000000000001BLL;
            v106 = v92;
            MEMORY[0x1B2718AE0](v34, *(&v34 + 1));
            MEMORY[0x1B2718AE0](0xD000000000000011, v91 | 0x8000000000000000);
            v40 = 0x4C28207466697753;
            if (v3 != 3)
            {
              v40 = 0x697263536176614ALL;
            }

            v41 = 0xEE00297963616765;
            if (v3 != 3)
            {
              v41 = 0xEA00000000007470;
            }

            if (v3 == 2)
            {
              v40 = 0x6C6174654DLL;
              v41 = 0xE500000000000000;
            }

            v42 = 0x7070436A624FLL;
            if (!v3)
            {
              v42 = 67;
            }

            v43 = 0xE100000000000000;
            if (v3)
            {
              v43 = 0xE600000000000000;
            }

            if (v3 <= 1u)
            {
              v44 = v42;
            }

            else
            {
              v44 = v40;
            }

            if (v3 <= 1u)
            {
              v45 = v43;
            }

            else
            {
              v45 = v41;
            }

            v101 = v17;
            MEMORY[0x1B2718AE0](v44, v45);

            v46 = v105;
            v47 = v106;
            v48 = sub_1AFDFDA18();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v99 = v14;
            v100 = v13;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF6EFB60();
            v49 = swift_allocObject();
            *(v49 + 16) = v89;
            *(v49 + 56) = MEMORY[0x1E69E6158];
            *(v49 + 64) = sub_1AF0D544C();
            *(v49 + 32) = v46;
            *(v49 + 40) = v47;

            sub_1AFDFC4C8();

            v50 = v46;
            v51 = v95;
            sub_1AFDFC288();
            v52 = v97;
            v53 = v98[12];
            v54 = v98[16];
            v55 = v48;
            v56 = &v97[v98[20]];
            (*v90)(v97, v51, v96);
            *(v52 + v53) = v55;
            *(v52 + v54) = 0;
            *v56 = v50;
            v56[1] = v47;

            sub_1AFDFC608();

            sub_1AF7B49D8(v52, sub_1AF0D4E74);

            v31 = 0;
            v33 = 0xE000000000000000;
            a2 = v94;
            v12 = v93;
            v17 = v101;
            v19 = v102;
            v13 = v100;
            goto LABEL_71;
          }

          sub_1AF444F60(&v109, &v105);
          v26 = sub_1AF41A220(v3);
          if ((v35 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_24:
          v36 = (*(v25 + 56) + 16 * v26);
          v37 = *v36;
          v33 = v36[1];

          v31 = v37;
          v19 = v102;
          goto LABEL_71;
        }

        if (v3 <= 2u)
        {
          if (v3 < 2u)
          {
            goto LABEL_27;
          }

LABEL_21:
          sub_1AF444F60(&v109, &v105);
          v31 = sub_1AF7E4F70(&v109);
          v33 = v32;
          goto LABEL_71;
        }

        if (v3 != 3)
        {
LABEL_27:
          sub_1AF444F60(&v109, &v105);
          v31 = sub_1AF7E54DC(&v109);
          v33 = v39;
          goto LABEL_71;
        }

        sub_1AF444F60(&v109, &v105);
        v31 = sub_1AF7E4930(&v109);
        v33 = v38;
LABEL_71:
        MEMORY[0x1B2718AE0](v31, v33);

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v17, v19);
LABEL_72:
        sub_1AF444FBC(&v109);

        v82 = v107;
        v3 = v108;
        v83 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v83;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = sub_1AF420554(0, *(v83 + 2) + 1, 1, v83);
          *a2 = v83;
        }

        v86 = *(v83 + 2);
        v85 = *(v83 + 3);
        if (v86 >= v85 >> 1)
        {
          v83 = sub_1AF420554(v85 > 1, v86 + 1, 1, v83);
          *a2 = v83;
        }

        ++v13;
        *(v83 + 2) = v86 + 1;
        v87 = &v83[16 * v86];
        *(v87 + 4) = v82;
        *(v87 + 5) = v3;

        a1 = v104;
        LOBYTE(v3) = v112;
      }

      while (v12 != v13);
    }
  }
}

uint64_t sub_1AF7B085C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3[5];
  v5 = *(v4 + 16);
  if (v5)
  {
    v8 = result;
    v9 = 0;
    v10 = (v4 + 40);
    v11 = -32;
    while (*(v10 - 1) != v8 || *v10 != a2)
    {
      result = sub_1AFDFEE28();
      if (result)
      {
        break;
      }

      ++v9;
      v11 -= 40;
      v10 += 2;
      if (v5 == v9)
      {
        return result;
      }
    }

    v13 = v3[6];
    sub_1AF444F60(a3, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[6] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AFC0DB98(v13);
      v3[6] = v13;
    }

    sub_1AF7AFA34(a3, &v13[-v11]);
    v15 = v3[7];
    if ((v15 & 0xC000000000000001) != 0)
    {

      v21 = MEMORY[0x1B2719C70](v9, v15);

      v22 = *(v21 + 56);
      v23 = *(v21 + 64);
      v24 = *(a3 + 32);
      v25 = *(a3 + 16);
      *(v21 + 56) = *a3;
      *(v21 + 72) = v25;
      *(v21 + 88) = v24;
      sub_1AF444F60(a3, v26);
      sub_1AF687FE4(v22, v23);
      return swift_unknownObjectRelease();
    }

    else
    {
      v16 = *(v15 + 8 * v9 + 32);
      v17 = *(v16 + 56);
      v18 = *(v16 + 64);
      v19 = *(a3 + 32);
      v20 = *(a3 + 16);
      *(v16 + 56) = *a3;
      *(v16 + 72) = v20;
      *(v16 + 88) = v19;
      sub_1AF444F60(a3, v26);
      return sub_1AF687FE4(v17, v18);
    }
  }

  return result;
}

void *sub_1AF7B0A00(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v25[0] = a1;
  v25[1] = a2;
  v24 = v25;

  v6 = sub_1AF7B9518(sub_1AF771190, v23, v5);

  result = 0;
  if (v6)
  {
    v8 = *(v2 + 40);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (v8 + 40);
      while (1)
      {
        v12 = *(v11 - 1) == a1 && *v11 == a2;
        if (v12 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v10;
        v11 += 2;
        if (v9 == v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v10 = 0;
    }

    v22 = sub_1AF7B0B84(a1, a2);
    v14 = v13;
    v15 = (*(v2 + 48) + 40 * v10);
    v16 = v15[4];
    v17 = v15[5];
    v18 = v15[6];
    v19 = v15[7];
    v20 = v15[8];
    _s11ParameterInCMa();
    v21 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v21[3] = a1;
    v21[4] = a2;
    v21[5] = v22;
    v21[6] = v14;
    v21[7] = v16;
    v21[8] = v17;
    v21[9] = v18;
    v21[10] = v19;
    v21[11] = v20;
    sub_1AF687F90(v16, v17);

    return v21;
  }

  return result;
}

uint64_t sub_1AF7B0B84(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);

  MEMORY[0x1B2718AE0](a1, a2);

  MEMORY[0x1B2718AE0](v6, v7);

  return 1599362383;
}

uint64_t sub_1AF7B0C28(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = v5;
  LODWORD(v297) = a5;
  v301 = a4;
  sub_1AF0D4E74();
  v295 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v294 = &v291 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_1AFDFC298();
  v296 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293, v13);
  v292 = &v291 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = *a1;
  v310 = *(v305 + 24);
  v15 = MEMORY[0x1E69E7CC0];
  v333 = sub_1AF43EE50(MEMORY[0x1E69E7CC0]);

  v300 = a2;
  v309 = a1;
  sub_1AF7B43D0(a2, a1, &v333, a3);
  v298 = 0;
  v311 = a3;

  v16 = *(v6[5] + 16);

  v313 = v6;
  v299 = v17;
  if (!v16)
  {
    v302 = v15;
    goto LABEL_40;
  }

  v18 = 0;
  v306 = v17 + 32;
  v302 = MEMORY[0x1E69E7CC0];
  v303 = v16;
  do
  {
    v304 = v333;
    while (1)
    {
      v19 = v18++;
      v20 = v6[5];
      v21 = *(v20 + 16);
      if (!v21)
      {
        goto LABEL_4;
      }

      v22 = (v306 + 16 * v19);
      v24 = *v22;
      v23 = v22[1];
      v25 = (v20 + 40);
      while (1)
      {
        v26 = *(v25 - 1) == v24 && *v25 == v23;
        if (v26 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v25 += 2;
        if (!--v21)
        {
          goto LABEL_4;
        }
      }

      v27 = v6[5];
      v28 = *(v27 + 16);

      *&v316 = v18;
      v29 = 0;
      if (v28)
      {
        v30 = (v27 + 40);
        while (1)
        {
          v31 = *(v30 - 1) == v24 && *v30 == v23;
          if (v31 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }

          ++v29;
          v30 += 2;
          if (v28 == v29)
          {
            v29 = 0;
            break;
          }
        }
      }

      v32 = sub_1AF7B0B84(v24, v23);
      v34 = v33;
      v35 = (v6[6] + 40 * v29);
      v36 = v35[5];
      v314 = v35[4];
      *&v315 = v36;
      v37 = v35[6];
      v38 = v35[7];
      v39 = v35[8];
      _s11ParameterInCMa();
      v40 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v40[3] = v24;
      v40[4] = v23;
      *&v307 = v32;
      v40[5] = v32;
      v40[6] = v34;
      v308 = v34;
      v42 = v314;
      v41 = v315;
      v40[7] = v314;
      v40[8] = v41;
      v40[9] = v37;
      v40[10] = v38;
      v40[11] = v39;
      v43 = v304;
      v312 = *(v304 + 16);

      sub_1AF687F90(v42, v41);
      if (v312)
      {
        v44 = v308;

        v45 = sub_1AF419914(v307, v44);
        v47 = v46;

        if (v47)
        {
          break;
        }
      }

      if (*(v305 + 161) == 1)
      {
        v6 = v313;
        v48 = sub_1AF7B0A00(v24, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v302 = sub_1AF425824(0, v302[2] + 1, 1, v302);
        }

        v50 = v302[2];
        v49 = v302[3];
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v302 = sub_1AF425824(v49 > 1, v50 + 1, 1, v302);
        }

        v52 = 0;
        goto LABEL_37;
      }

      v6 = v313;
      v16 = v303;
      v18 = v316;
LABEL_4:
      if (v18 == v16)
      {
        goto LABEL_40;
      }
    }

    v52 = *(*(v43 + 56) + 8 * v45);

    v6 = v313;
    v48 = sub_1AF7B0A00(v24, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v302 = sub_1AF425824(0, v302[2] + 1, 1, v302);
    }

    v50 = v302[2];
    v53 = v302[3];
    v51 = v50 + 1;
    if (v50 >= v53 >> 1)
    {
      v302 = sub_1AF425824(v53 > 1, v50 + 1, 1, v302);
    }

LABEL_37:
    v54 = v302;
    v302[2] = v51;
    v55 = &v54[2 * v50];
    v55[4] = v48;
    v55[5] = v52;

    v16 = v303;
    v18 = v316;
  }

  while (v316 != v303);
LABEL_40:

  v332 = MEMORY[0x1E69E7CC0];
  v314 = sub_1AF764DBC();
  if (v314)
  {
    v56 = *(v314 + 16);
    if (v56)
    {
      v57 = (v314 + 32);
      v58 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1AF7B4A38(v57, &v317, sub_1AF7711B0);
        v59 = *(&v317 + 1);
        v60 = v317;
        sub_1AF44CBE4(&v321, v322);
        sub_1AF449D40(v322, v325);
        swift_dynamicCast();
        sub_1AF809DF8(*&v340[0], *(&v340[0] + 1), v334);
        v315 = v334[1];
        v316 = v334[0];
        v61 = v335;
        v62 = sub_1AFDFD188();

        if (v62)
        {
          sub_1AFDFD048();
          sub_1AFDFD078();
          v63 = sub_1AFDFD1F8();
          v65 = v64;
          v67 = v66;
          v69 = v68;

          v60 = MEMORY[0x1B27189E0](v63, v65, v67, v69);
          v59 = v70;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1AF4255E0(0, v58[2] + 1, 1, v58);
        }

        v72 = v58[2];
        v71 = v58[3];
        if (v72 >= v71 >> 1)
        {
          v58 = sub_1AF4255E0(v71 > 1, v72 + 1, 1, v58);
        }

        v58[2] = v72 + 1;
        v73 = &v58[8 * v72];
        v73[4] = v60;
        v73[5] = v59;
        v74 = v315;
        *(v73 + 3) = v316;
        *(v73 + 4) = v74;
        v73[10] = v61;
        *(v73 + 88) = 0;
        v332 = v58;
        sub_1AF7B49D8(&v317, sub_1AF7711B0);
        v57 += 104;
        --v56;
      }

      while (v56);
    }

    v6 = v313;
  }

  v75 = v302[2];
  v76 = v309;
  if (v75)
  {
    v77 = v302 + 5;
    do
    {

      sub_1AF7B4548(v78, &v332, v6, v76);

      v77 += 2;
      --v75;
    }

    while (v75);
  }

  v79 = *(v305 + 120);
  LODWORD(v80) = v310;
  if (v79 >> 62)
  {
    if (sub_1AFDFE108() < 1)
    {
      goto LABEL_220;
    }

LABEL_56:
    v330 = 0;
    v331 = 0xE000000000000000;
    v312 = v302[2];
    if (v312)
    {
      v81 = 0;
      v82 = v302 + 4;
      v314 = "e that can't be found.";
      v308 = (v296 + 32);
      v307 = xmmword_1AFE431C0;
      *&v316 = v302 + 4;
      do
      {
        if (!v82[2 * v81 + 1])
        {
          goto LABEL_61;
        }

        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          goto LABEL_61;
        }

        v85 = Strong;
        if (*Strong == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
        {

          v83 = v309;
          sub_1AF78CA54(v309, v85, 1);
        }

        else if (*Strong == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
        {

          v83 = v309;
          sub_1AF790074(v309, v85);
        }

        else
        {
          _s10SubContextCMa();
          v86 = swift_dynamicCastClass();
          if (!v86)
          {
            _s19StaticSwitchSnippetCMa();
            v88 = swift_dynamicCastClass();
            if (v88)
            {
              v89 = *v309;
              v90 = *(*v309 + 176);
              v91 = *(v88 + 24);
              v92 = *(v88 + 32);
              *&v315 = v88;
              v93 = *(v90 + 2);
              if (!v93)
              {
LABEL_79:

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v89 + 176) = v90;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v90 = sub_1AF420554(0, *(v90 + 2) + 1, 1, v90);
                  *(v89 + 176) = v90;
                }

                v98 = *(v90 + 2);
                v97 = *(v90 + 3);
                v99 = v98 + 1;
                if (v98 >= v97 >> 1)
                {
                  v306 = v98 + 1;
                  v133 = sub_1AF420554(v97 > 1, v98 + 1, 1, v90);
                  v99 = v306;
                  v90 = v133;
                }

                *(v90 + 2) = v99;
                v100 = &v90[16 * v98];
                *(v100 + 4) = v91;
                *(v100 + 5) = v92;
                *(v89 + 176) = v90;
                v83 = v309;
                v101 = v315;
                if (sub_1AF78EF18(v309))
                {
                  sub_1AF78E354(v83, v101, 1);
                }

                else
                {
                  sub_1AF78D808(v83, v101, 1);
                }

LABEL_112:
                LODWORD(v80) = v310;
                v6 = v313;
                goto LABEL_60;
              }

              v94 = v90 + 40;
              while (1)
              {
                v95 = *(v94 - 1) == v91 && *v94 == v92;
                if (v95 || (sub_1AFDFEE28() & 1) != 0)
                {
                  goto LABEL_95;
                }

                v94 += 2;
                if (!--v93)
                {
                  v91 = *(v315 + 24);
                  v92 = *(v315 + 32);
                  v90 = *(v89 + 176);
                  goto LABEL_79;
                }
              }
            }

            _s17CustomCodeSnippetCMa();
            v102 = swift_dynamicCastClass();
            if (v102)
            {
              v103 = v102;
              v104 = *(*v309 + 176);
              v105 = *(v102 + 24);
              v106 = *(v102 + 32);
              v107 = *(v104 + 2);
              if (!v107)
              {
                v110 = *v309;
LABEL_107:

                v121 = swift_isUniquelyReferenced_nonNull_native();
                *(v110 + 176) = v104;
                v122 = v110;
                if ((v121 & 1) == 0)
                {
                  v134 = sub_1AF420554(0, *(v104 + 2) + 1, 1, v104);
                  v122 = v110;
                  v104 = v134;
                  *(v110 + 176) = v134;
                }

                v124 = *(v104 + 2);
                v123 = *(v104 + 3);
                v125 = v124 + 1;
                if (v124 >= v123 >> 1)
                {
                  v305 = v124 + 1;
                  v306 = v122;
                  v135 = sub_1AF420554(v123 > 1, v124 + 1, 1, v104);
                  v125 = v305;
                  v122 = v306;
                  v104 = v135;
                }

                *(v104 + 2) = v125;
                v126 = &v104[16 * v124];
                *(v126 + 4) = v105;
                *(v126 + 5) = v106;
                *(v122 + 176) = v104;
                v127 = (*(*v103 + 1424))();
                v128 = v103;
                *&v315 = v103;
                v83 = v309;
                sub_1AF78A3AC(v309, v127);

                v129 = sub_1AF7AB7C4(v128);
                v306 = v130;
                sub_1AF78AFC4(v83, v129, v131, v130);

                v132 = v315;
                sub_1AF78C364(v83, v315, 1);
                sub_1AF7B67A4(v83);
                sub_1AF78C4A4(v83, v132);

                goto LABEL_112;
              }

              v306 = *v309;
              v108 = v104 + 40;
              while (1)
              {
                v109 = *(v108 - 1) == v105 && *v108 == v106;
                if (v109 || (sub_1AFDFEE28() & 1) != 0)
                {
                  break;
                }

                v108 += 2;
                if (!--v107)
                {
                  v105 = v103[3];
                  v106 = v103[4];
                  v110 = v306;
                  v104 = *(v306 + 176);
                  goto LABEL_107;
                }
              }

LABEL_95:
            }

            else
            {
              v111 = qword_1ED730EA0;

              if (v111 != -1)
              {
                swift_once();
              }

              *&v317 = 0;
              *(&v317 + 1) = 0xE000000000000000;
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD000000000000019, v314 | 0x8000000000000000);
              *&v325[0] = v85;
              type metadata accessor for GraphV1CodeGeneration.BaseObject();
              sub_1AFDFE458();
              v112 = v317;
              v113 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              *&v315 = qword_1ED73B8A0;
              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF6EFB60();
              v114 = swift_allocObject();
              *(v114 + 16) = v307;
              *(v114 + 56) = MEMORY[0x1E69E6158];
              *(v114 + 64) = sub_1AF0D544C();
              *(v114 + 32) = v112;

              sub_1AFDFC4C8();

              v115 = v292;
              sub_1AFDFC288();
              *&v315 = v295[12];
              v116 = v295[16];
              v305 = v112;
              v306 = v116;
              v117 = v295[20];
              LODWORD(v304) = v113;
              v118 = v294;
              v119 = &v294[v117];
              (*v308)(v294, v115, v293);
              *(v118 + v315) = v304;
              v120 = v305;
              *(v118 + v306) = 0;
              *v119 = v120;
              *(v119 + 1) = *(&v112 + 1);

              sub_1AFDFC608();

              sub_1AF7B49D8(v118, sub_1AF0D4E74);
            }

            LODWORD(v80) = v310;
            v6 = v313;
            v83 = v309;
            goto LABEL_60;
          }

          v87 = v86;

          v83 = v309;
          sub_1AF78F438(v309, v87, 1);
        }

LABEL_60:
        sub_1AF78BD70(v83, v85);

        v82 = v316;
LABEL_61:
        v81 = (v81 + 1);
      }

      while (v81 != v312);
    }

    v136 = MEMORY[0x1E69E7CC0];
    v329 = MEMORY[0x1E69E7CC0];
    v137 = *v309;

    v139 = v298;
    sub_1AF7AFA90(v138, &v329);

    v328 = v136;
    v303 = v329;
    sub_1AF7AFB6C(v329, &v328, v80);
    *&v307 = v137;
    v140 = *(v137 + 120);
    if (v140 >> 62)
    {
      v141 = sub_1AFDFE108();
    }

    else
    {
      v141 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v298 = v139;

    if (v141)
    {
      v142 = 0;
      *&v316 = v140 & 0xC000000000000001;
      v314 = MEMORY[0x1E69E7CC0];
      do
      {
        v143 = v141;
        if (v316)
        {
          v144 = MEMORY[0x1B2719C70](v142, v140);
        }

        else
        {
          v144 = *(v140 + 8 * v142 + 32);
        }

        v145 = *(v144 + 40);
        v146 = *(v144 + 48);

        v147 = sub_1AF76ED08(v145, v146);
        v149 = v148;

        v150 = *(v144 + 72);
        v340[0] = *(v144 + 56);
        v340[1] = v150;
        v341 = *(v144 + 88);
        sub_1AF444F60(v340, &v317);
        v80 = sub_1AF7E8C58(v147, v149, v340, v80);
        v152 = v151;
        sub_1AF444FBC(v340);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v314 = sub_1AF420554(0, *(v314 + 16) + 1, 1, v314);
        }

        v6 = v313;
        v154 = *(v314 + 16);
        v153 = *(v314 + 24);
        if (v154 >= v153 >> 1)
        {
          v314 = sub_1AF420554(v153 > 1, v154 + 1, 1, v314);
        }

        ++v142;
        v155 = v314;
        *(v314 + 16) = v154 + 1;
        v156 = v155 + 16 * v154;
        *(v156 + 32) = v80;
        *(v156 + 40) = v152;

        v141 = v143;
        LOBYTE(v80) = v310;
      }

      while (v143 != v142);
    }

    else
    {
      v314 = MEMORY[0x1E69E7CC0];
    }

    if (v301 & 1) != 0 && (v297)
    {
      *(&v318 + 1) = MEMORY[0x1E69E6158];
      *&v317 = 0;
      *(&v317 + 1) = 0xE000000000000000;
      sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v317, v325);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v317);
      sub_1AF449D40(v325, &v317);
      swift_dynamicCast();
      v158 = *(&v322[0] + 1);
      v157 = *&v322[0];
    }

    else
    {
      v159 = v6[3];
      v158 = v6[4];

      v157 = v159;
    }

    v160 = sub_1AF76ED08(v157, v158);
    v162 = v161;

    v163 = *(v307 + 48);
    v297 = v328;
    if (v301)
    {
      if (v310 != 3)
      {
        *&v317 = 0;
        *(&v317 + 1) = 0xE000000000000000;
        v176 = v163;

        sub_1AFDFE218();

        *&v317 = 0x20746375727473;
        *(&v317 + 1) = 0xE700000000000000;
        MEMORY[0x1B2718AE0](v160, v162);

        MEMORY[0x1B2718AE0](2128672, 0xE300000000000000);
        MEMORY[0x1B2718AE0](0x20656E696C6E69, 0xE700000000000000);

        MEMORY[0x1B2718AE0](0x20636974617473, 0xE700000000000000);
        *&v325[0] = v176;

        sub_1AF48FAF8(v177);

        sub_1AF48FAF8(v178);
        v179 = *&v325[0];
        *&v325[0] = 0;
        *(&v325[0] + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0, 0xE000000000000000);
        MEMORY[0x1B2718AE0](1684631414, 0xE400000000000000);
        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](6516326, 0xE300000000000000);
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        *&v322[0] = v179;
        sub_1AF7B4B10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1AF488088();
        v180 = sub_1AFDFCD98();
        v182 = v181;

        MEMORY[0x1B2718AE0](v180, v182);

        MEMORY[0x1B2718AE0](8069161, 0xE300000000000000);
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        MEMORY[0x1B2718AE0](*&v325[0], *(&v325[0] + 1));

        goto LABEL_143;
      }

      *&v317 = v163;

      sub_1AF48FAF8(v164);

      sub_1AF48FAF8(v165);
      v166 = v317;
      *&v317 = 0;
      *(&v317 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v317 = 0xD000000000000017;
      *(&v317 + 1) = 0x80000001AFF34AB0;
      MEMORY[0x1B2718AE0](v160, v162);

      MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      *&v325[0] = v166;
      sub_1AF7B4B10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF488088();
      v167 = sub_1AFDFCD98();
      v169 = v168;

      MEMORY[0x1B2718AE0](v167, v169);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      MEMORY[0x1B2718AE0](31520, 0xE200000000000000);
    }

    else
    {
      v170 = *(v307 + 41);
      *&v317 = v163;

      sub_1AF48FAF8(v171);

      sub_1AF48FAF8(v172);
      v173 = v317;
      if (v170 == 1)
      {
        *&v317 = 0x2D646E65202F2F20;
        *(&v317 + 1) = 0xEB000000002D666FLL;
        MEMORY[0x1B2718AE0](v160, v162);
        v174 = *(&v317 + 1);
        v175 = v317;
      }

      else
      {
        v175 = 0;
        v174 = 0xE000000000000000;
      }

      *&v317 = 0;
      *(&v317 + 1) = 0xE000000000000000;
      if (v310 == 3)
      {
        sub_1AFDFE218();

        *&v317 = 0x20636E7566;
        *(&v317 + 1) = 0xE500000000000000;
        MEMORY[0x1B2718AE0](v160, v162);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        *&v325[0] = v173;
        sub_1AF7B4B10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1AF488088();
        v183 = sub_1AFDFCD98();
        v185 = v184;

        MEMORY[0x1B2718AE0](v183, v185);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v186 = 31520;
        v187 = 0xE200000000000000;
      }

      else
      {
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0, 0xE000000000000000);
        MEMORY[0x1B2718AE0](1684631414, 0xE400000000000000);
        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v160, v162);

        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
        *&v325[0] = v173;
        sub_1AF7B4B10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1AF488088();
        v188 = sub_1AFDFCD98();
        v190 = v189;

        MEMORY[0x1B2718AE0](v188, v190);

        v186 = 8069161;
        v187 = 0xE300000000000000;
      }

      MEMORY[0x1B2718AE0](v186, v187);
      MEMORY[0x1B2718AE0](v175, v174);
    }

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_143:
    MEMORY[0x1B2718AE0](v317, *(&v317 + 1));

    v191 = v307;
    v192 = *(v307 + 128);
    v193 = swift_isUniquelyReferenced_nonNull_native();
    *(v191 + 128) = v192;
    v194 = v310;
    if ((v193 & 1) == 0)
    {
      v192 = sub_1AF420554(0, *(v192 + 2) + 1, 1, v192);
      *(v307 + 128) = v192;
    }

    v196 = *(v192 + 2);
    v195 = *(v192 + 3);
    if (v196 >= v195 >> 1)
    {
      v192 = sub_1AF420554(v195 > 1, v196 + 1, 1, v192);
    }

    *(v192 + 2) = v196 + 1;
    v197 = &v192[16 * v196];
    *(v197 + 4) = 0;
    *(v197 + 5) = 0xE000000000000000;
    v198 = v307;
    *(v307 + 128) = v192;
    v199 = *(v198 + 112);
    if (v199 >> 62)
    {
      v200 = sub_1AFDFE108();
    }

    else
    {
      v200 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v201 = v298;
    if (v303 >> 62)
    {
      if (sub_1AFDFE108() < v200)
      {
        goto LABEL_151;
      }
    }

    else if (*((v303 & 0xFFFFFFFFFFFFFF8) + 0x10) < v200)
    {
LABEL_151:
      v202 = *(v307 + 112);
      if (v202 >> 62)
      {
        v203 = sub_1AFDFE108();
      }

      else
      {
        v203 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v203)
      {
        v204 = 0;
        do
        {
          if ((v202 & 0xC000000000000001) != 0)
          {
            v205 = MEMORY[0x1B2719C70](v204, v202);
          }

          else
          {
            v205 = *(v202 + 8 * v204 + 32);
          }

          ++v204;
          *&v317 = v205;
          sub_1AF7B38AC(&v317, &v329, &v330, v311, v194, v309);
        }

        while (v203 != v204);
      }

      v298 = v201;

      v206 = v311;

LABEL_167:
      v207 = v307;
      v208 = *(v307 + 40);
      v317 = *(v307 + 24);
      v318 = v208;
      v209 = *(v307 + 72);
      v319 = *(v307 + 56);
      v320 = v209;
      v210 = *(v307 + 96);
      *&v316 = *(v307 + 88);
      sub_1AF7AAF00(&v317, v325);

      v211 = MEMORY[0x1E69E7CC0];
      v212 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
      v213 = *(v207 + 161);
      _s7ContextC14GenerationDataCMa();
      v214 = swift_allocObject();
      *(v214 + 104) = v211;
      *(v214 + 112) = v211;
      *(v214 + 120) = v211;
      *(v214 + 128) = v211;
      *(v214 + 136) = v211;
      *(v214 + 144) = v211;
      sub_1AF432980(v211);
      v215 = v318;
      *(v214 + 24) = v317;
      *(v214 + 40) = v215;
      v216 = v320;
      *(v214 + 56) = v319;
      *(v214 + 168) = v211;
      *(v214 + 176) = v211;
      *(v214 + 16) = v206;
      *(v214 + 72) = v216;
      *(v214 + 88) = v316;
      *(v214 + 96) = v210;
      *(v214 + 152) = v212;

      *(v214 + 161) = v213;
      *(v214 + 160) = 0;
      v327 = v214;
      sub_1AF78C5F8(&v327, v6, v300);
      v299 = v214;
      v217 = *(v214 + 128);
      if (*(v217 + 16))
      {
        *&v325[0] = *(v214 + 128);
        sub_1AF7B4B10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1AF488088();

        v218 = sub_1AFDFCD98();
        v220 = v219;

        *&v325[0] = v218;
        *(&v325[0] + 1) = v220;
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v222 = *(&v325[0] + 1);
        v221 = *&v325[0];
      }

      else
      {
        v221 = 0;
        v222 = 0xE000000000000000;
      }

      MEMORY[0x1B2718AE0](v221, v222);

      *&v325[0] = *(v307 + 128);
      sub_1AF7B4B10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v224 = v223;
      v225 = sub_1AF488088();

      v295 = v225;
      v296 = v224;
      v226 = sub_1AFDFCD98();
      v228 = v227;

      MEMORY[0x1B2718AE0](v226, v228);

      if (v312)
      {
        v229 = 0;
        v308 = (v302 + 4);
        v306 = v217;
        do
        {
          v243 = &v308[2 * v229];
          v244 = v243[1];
          if (v244)
          {
            v245 = *v243;
            v246 = *(*v243 + 32);
            *&v316 = *(*v243 + 24);
            *&v325[0] = v316;
            *(&v325[0] + 1) = v246;
            *&v322[0] = 46;
            *(&v322[0] + 1) = 0xE100000000000000;
            v247 = sub_1AF4486E4();
            swift_retain_n();

            *&v315 = v247;
            v248 = sub_1AFDFDF18();
            v309 = v229;
            if ((v248 & 1) != 0 && (v249 = v332, (v250 = v332[2]) != 0))
            {
              v304 = v245;
              v305 = v244;

              v251 = v250 - 1;
              for (i = 4; ; i += 8)
              {
                v253 = v249;
                v254 = *&v249[i];
                v255 = *&v249[i + 2];
                v256 = *&v249[i + 4];
                *(v326 + 9) = *(&v249[i + 5] + 1);
                v325[1] = v255;
                v326[0] = v256;
                v325[0] = v254;
                v323 = v316;
                v324 = v246;
                v257 = v246;
                sub_1AF7B4A38(v325, v322, sub_1AF7AC288);
                v258 = sub_1AFDFDF28();
                if (v258[2])
                {
                  v259 = v258[4];
                  v260 = v258[5];
                  v262 = v258[6];
                  v261 = v258[7];

                  v263 = v259 >> 16;
                  v264 = v260 >> 16;
                }

                else
                {

                  v263 = 0;
                  v264 = 0;
                  v262 = 0;
                  v261 = 0;
                }

                v265 = (*(&v325[0] + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v325[0] + 1)) & 0xFLL : *&v325[0] & 0xFFFFFFFFFFFFLL;
                v266 = *&v325[0] == v262 && v261 == *(&v325[0] + 1);
                v267 = v266 && v263 == 0;
                if (v267 && v265 == v264)
                {
                  break;
                }

                v269 = sub_1AFDFE9E8();

                sub_1AF7B49D8(v325, sub_1AF7AC288);
                if (v269)
                {
                  goto LABEL_200;
                }

                v249 = v253;
                v246 = v257;
                if (!v251)
                {
                  goto LABEL_200;
                }

                --v251;
              }

              sub_1AF7B49D8(v325, sub_1AF7AC288);
LABEL_200:

              v194 = v310;
              v245 = v304;
              v244 = v305;
            }

            else
            {
            }

            v230 = *(v245 + 72);
            v336[0] = *(v245 + 56);
            v336[1] = v230;
            v337 = *(v245 + 88);
            v231 = *(v245 + 40);
            v232 = *(v245 + 48);
            v233 = *(v244 + 72);
            v338[0] = *(v244 + 56);
            v338[1] = v233;
            v339 = *(v244 + 88);
            v234 = *(v244 + 40);
            v235 = *(v244 + 48);

            sub_1AF444F60(v336, v325);

            sub_1AF444F60(v338, v325);

            v236 = sub_1AF76ED08(v234, v235);
            v238 = v237;

            v239 = v307;

            v240 = sub_1AF7A4C70(v336, v231, v232, v338, v236, v238, v194, 0, v239);
            v242 = v241;

            sub_1AF444FBC(v338);

            sub_1AF444FBC(v336);

            *&v325[0] = v240;
            *(&v325[0] + 1) = v242;

            MEMORY[0x1B2718AE0](10, 0xE100000000000000);

            MEMORY[0x1B2718AE0](*&v325[0], *(&v325[0] + 1));

            v6 = v313;
            v229 = v309;
          }

          v229 = (v229 + 1);
        }

        while (v229 != v312);
      }

      v271 = v299;
      v270 = v300;
      *(v299 + 128) = MEMORY[0x1E69E7CC0];
      sub_1AF78C5E0(&v327, v6, v270);
      sub_1AF78BD70(&v327, v6);
      v272 = *(v271 + 128);
      if (*(v272 + 16))
      {
        *&v325[0] = v272;

        v273 = sub_1AFDFCD98();
        v275 = v274;

        *&v325[0] = v273;
        *(&v325[0] + 1) = v275;
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v277 = *(&v325[0] + 1);
        v276 = *&v325[0];
      }

      else
      {
        v276 = 0;
        v277 = 0xE000000000000000;
      }

      v278 = v307;
      MEMORY[0x1B2718AE0](v276, v277);

      if (*(*(v278 + 168) + 16))
      {
        *&v325[0] = *(v278 + 168);

        v279 = sub_1AFDFCD98();
        v281 = v280;

        *&v325[0] = v279;
        *(&v325[0] + 1) = v281;
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v283 = *(&v325[0] + 1);
        v282 = *&v325[0];
      }

      else
      {
        v282 = 0;
        v283 = 0xE000000000000000;
      }

      MEMORY[0x1B2718AE0](v282, v283);

      if (v301)
      {
        if (v194 != 3)
        {
          v286 = sub_1AFDFEE28();

          v284 = 0xE100000000000000;
          if (v286)
          {
            v285 = 125;
          }

          else
          {
            *&v325[0] = 8200317;
            *(&v325[0] + 1) = 0xE300000000000000;
            if (*(v278 + 24) == 3)
            {
              v287 = 0;
            }

            else
            {
              v287 = 59;
            }

            if (*(v278 + 24) == 3)
            {
              v284 = 0xE000000000000000;
            }

            MEMORY[0x1B2718AE0](v287, v284);

            v284 = *(&v325[0] + 1);
            v285 = *&v325[0];
          }

          goto LABEL_219;
        }
      }

      v284 = 0xE100000000000000;
      v285 = 125;
LABEL_219:
      MEMORY[0x1B2718AE0](v285, v284);

      sub_1AF7B4B10(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v288 = swift_allocObject();
      *(v288 + 16) = xmmword_1AFE431C0;
      v289 = v331;
      *(v288 + 32) = v330;
      *(v288 + 40) = v289;
      *(v278 + 128) = v288;

      *(v278 + 112) = v303;

      swift_setDeallocating();
      sub_1AF797CF0();
      swift_deallocClassInstance();

      goto LABEL_220;
    }

    v206 = v311;
    goto LABEL_167;
  }

  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_56;
  }

LABEL_220:
}

unint64_t sub_1AF7B2EFC()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v1[6];

  sub_1AF7AF060(v2, v3);

  sub_1AF7B4B10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v4 = sub_1AFDFCD98();
  v6 = v5;

  sub_1AFDFE218();

  v8 = v1[3];
  v7 = v1[4];

  MEMORY[0x1B2718AE0](v8, v7);

  MEMORY[0x1B2718AE0](0x656D61726170202CLL, 0xEF5B203A73726574);
  MEMORY[0x1B2718AE0](v4, v6);

  MEMORY[0x1B2718AE0](10589, 0xE200000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1AF7B3080(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  if (*(*a2 + 65) != 1)
  {

    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:

    goto LABEL_9;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v11 + 16);

    if (v12)
    {

      sub_1AF419914(1701536102, 0xE400000000000000);
      v20 = v13;

      if (v20)
      {
      }
    }
  }

  else
  {
  }

LABEL_9:
  v15 = *(a4 + 264);
  if (*(v15 + 16))
  {

    v16 = sub_1AF419914(v9, v8);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a3;
  *a3 = 0x8000000000000000;
  sub_1AF856FF4(v18, v7, v6, isUniquelyReferenced_nonNull_native);

  *a3 = v21;
}

uint64_t sub_1AF7B3234(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *&v62[0] = 0;
  *(&v62[0] + 1) = 0xE000000000000000;
  swift_weakLoadStrong();
  v4 = MEMORY[0x1E69E6158];
  *(&v55 + 1) = MEMORY[0x1E69E6158];
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v54, &v48);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v54);

  sub_1AF449D40(&v48, &v54);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0](*&v59[0], *(&v59[0] + 1));

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);

  MEMORY[0x1B2718AE0](v6, v5);

  v8 = *(&v62[0] + 1);
  v7 = *&v62[0];
  swift_weakLoadStrong();
  LOBYTE(v5) = sub_1AF761AD0();

  if ((v5 & 1) == 0)
  {
    v9 = *a2;
    v44 = a2;
    if (*a2 >> 62)
    {
      v10 = sub_1AFDFE108();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v11 = 0;
      v64 = v9 & 0xC000000000000001;
      v45 = v9;
      v46 = v8;
      v47 = v10;
      do
      {
        if (v64)
        {
          v12 = MEMORY[0x1B2719C70](v11, v9);
        }

        else
        {
          v12 = *(v9 + 8 * v11 + 32);
        }

        v60 = 0;
        v61 = 0xE000000000000000;
        Strong = swift_weakLoadStrong();
        v14 = Strong;
        v58[3] = v4;
        v58[0] = 0;
        v58[1] = 0xE000000000000000;
        v15 = *(Strong + 16);
        if (v15)
        {
          if (!*(v15 + 16))
          {
            goto LABEL_15;
          }
        }

        else
        {
          v16 = MEMORY[0x1E69E7CC8];
          *(Strong + 16) = MEMORY[0x1E69E7CC8];
          if (!*(v16 + 16))
          {
            goto LABEL_15;
          }
        }

        sub_1AF419914(1701667182, 0xE400000000000000);
        v18 = v17;

        if (v18)
        {
          goto LABEL_24;
        }

        if (!*(v14 + 16))
        {
          *(v14 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
        }

LABEL_15:
        v19 = v7;
        v20 = v4;
        sub_1AF0D5A54(v58, &v48);
        memset(v57 + 8, 0, 32);
        *&v54 = 1701667182;
        *(&v54 + 1) = 0xE400000000000000;
        sub_1AF809A8C(&v48, v62);
        v55 = v62[0];
        v56 = v62[1];
        *&v57[0] = v63;
        sub_1AF7B4AA0(v57 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v48, (v57 + 8));
        v50 = v56;
        v51 = v57[0];
        v52 = v57[1];
        v53 = *&v57[2];
        v48 = v54;
        v49 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v59[0] = *(v14 + 16);
        v22 = *&v59[0];
        *(v14 + 16) = 0x8000000000000000;
        v23 = sub_1AF419914(1701667182, 0xE400000000000000);
        v25 = v24;
        v26 = *(v22 + 16) + ((v24 & 1) == 0);
        if (*(v22 + 24) >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AF844804();
          }
        }

        else
        {
          sub_1AF82C8F0(v26, isUniquelyReferenced_nonNull_native);
          v27 = sub_1AF419914(1701667182, 0xE400000000000000);
          if ((v25 & 1) != (v28 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v23 = v27;
        }

        v4 = v20;
        v29 = *&v59[0];
        v7 = v19;
        if (v25)
        {
          sub_1AF770FA0(&v48, *(*&v59[0] + 56) + 88 * v23);
        }

        else
        {
          *(*&v59[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
          v30 = (v29[6] + 16 * v23);
          *v30 = 1701667182;
          v30[1] = 0xE400000000000000;
          v31 = v29[7] + 88 * v23;
          v32 = v49;
          *v31 = v48;
          *(v31 + 16) = v32;
          v33 = v50;
          v34 = v51;
          v35 = v52;
          *(v31 + 80) = v53;
          *(v31 + 48) = v34;
          *(v31 + 64) = v35;
          *(v31 + 32) = v33;
          ++v29[2];
        }

        v9 = v45;
        *(v14 + 16) = v29;

        v8 = v46;
LABEL_24:
        v36 = *(v14 + 16);
        if (!v36)
        {
          goto LABEL_32;
        }

        if (!*(v36 + 16))
        {
          goto LABEL_30;
        }

        v37 = sub_1AF419914(1701667182, 0xE400000000000000);
        if ((v38 & 1) == 0)
        {

LABEL_30:
          memset(v57, 0, 40);
          v55 = 0u;
          v56 = 0u;
          v54 = 0u;
LABEL_31:
          sub_1AF7B4AA0(&v54, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_32:
          memset(v59, 0, sizeof(v59));
          goto LABEL_33;
        }

        sub_1AF4455CC(*(v36 + 56) + 88 * v37, &v54);

        if (!*(&v54 + 1))
        {
          goto LABEL_31;
        }

        sub_1AF4455CC(&v54, &v48);
        sub_1AF7B4AA0(&v54, &qword_1EB6335B0, &_s8MetadataVN);
        sub_1AF44CBE4(&v51 + 8, v59);
        sub_1AF761390(&v48);
LABEL_33:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);

        sub_1AF449D40(v59, &v54);
        swift_dynamicCast();
        MEMORY[0x1B2718AE0](v48, *(&v48 + 1));

        MEMORY[0x1B2718AE0](124, 0xE100000000000000);
        v39 = *(v12 + 24);
        v40 = *(v12 + 32);

        MEMORY[0x1B2718AE0](v39, v40);

        if (v60 == v7 && v61 == v8)
        {

LABEL_44:
        }

        v41 = sub_1AFDFEE28();

        if (v41)
        {
          goto LABEL_44;
        }

        ++v11;
      }

      while (v47 != v11);
    }

    a2 = v44;
  }

  MEMORY[0x1B2718E00](v42);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  return sub_1AFDFD4B8();
}

uint64_t sub_1AF7B38AC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6)
{
  v6 = *a1;
  *&v88[0] = 0;
  *(&v88[0] + 1) = 0xE000000000000000;
  swift_weakLoadStrong();
  v7 = MEMORY[0x1E69E6158];
  *(&v82 + 1) = MEMORY[0x1E69E6158];
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v81, &v75);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v81);

  sub_1AF449D40(&v75, &v81);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0](*&v74[0], *(&v74[0] + 1));

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v8 = v6[3];
  v9 = v6[4];

  MEMORY[0x1B2718AE0](v8, v9);

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v10 = v6[5];
  v11 = v6[6];

  MEMORY[0x1B2718AE0](v10, v11);

  v12 = v88[0];
  *&v88[0] = 0;
  *(&v88[0] + 1) = 0xE000000000000000;
  swift_weakLoadStrong();
  *(&v82 + 1) = v7;
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v81, &v75);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v81);

  sub_1AF449D40(&v75, &v81);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0](*&v74[0], *(&v74[0] + 1));

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v13 = v6[3];
  v14 = v6[4];
  v68 = v6;

  MEMORY[0x1B2718AE0](v13, v14);

  v73 = *(&v88[0] + 1);
  v90 = *&v88[0];
  v15 = *a2;
  if (*a2 >> 62)
  {
    v16 = sub_1AFDFE108();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CA0];
  if (v16)
  {
    v18 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1B2719C70](v18, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v18 + 32);
      }

      *&v81 = v19;
      if (sub_1AF7B4200(&v81, v12, *(&v12 + 1)))
      {
        break;
      }

      if (v16 == ++v18)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v19 = 0;
  }

  v20 = *a2;
  v21 = MEMORY[0x1E69E6158];
  if (*a2 >> 62)
  {
    v22 = sub_1AFDFE108();
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    v23 = 0;
    v70 = v20 & 0xC000000000000001;
    v72 = v20;
    v69 = v22;
    do
    {
      if (v70)
      {
        v24 = MEMORY[0x1B2719C70](v23, v20);
      }

      else
      {
        v24 = *(v20 + 8 * v23 + 32);
      }

      v86 = 0;
      v87 = 0xE000000000000000;
      Strong = swift_weakLoadStrong();
      v26 = Strong;
      v85[3] = v21;
      v85[0] = 0;
      v85[1] = 0xE000000000000000;
      v27 = *(Strong + 16);
      if (v27)
      {
        if (!*(v27 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC8];
        *(Strong + 16) = MEMORY[0x1E69E7CC8];
        if (!*(v28 + 16))
        {
          goto LABEL_26;
        }
      }

      sub_1AF419914(1701667182, 0xE400000000000000);
      v30 = v29;

      if (v30)
      {
        goto LABEL_35;
      }

      if (!*(v26 + 16))
      {
        *(v26 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
      }

LABEL_26:
      sub_1AF0D5A54(v85, &v75);
      memset(&v84[8], 0, 32);
      *&v81 = 1701667182;
      *(&v81 + 1) = 0xE400000000000000;
      sub_1AF809A8C(&v75, v88);
      v82 = v88[0];
      v83 = v88[1];
      *v84 = v89;
      sub_1AF7B4AA0(&v84[8], &qword_1ED726850, v17 + 8);
      sub_1AF449D40(&v75, &v84[8]);
      v77 = v83;
      v78 = *v84;
      v79 = *&v84[16];
      v80 = *&v84[32];
      v75 = v81;
      v76 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v74[0] = *(v26 + 16);
      v32 = *&v74[0];
      *(v26 + 16) = 0x8000000000000000;
      v33 = sub_1AF419914(1701667182, 0xE400000000000000);
      v35 = v34;
      v36 = *(v32 + 16) + ((v34 & 1) == 0);
      if (*(v32 + 24) >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AF844804();
        }
      }

      else
      {
        sub_1AF82C8F0(v36, isUniquelyReferenced_nonNull_native);
        v37 = sub_1AF419914(1701667182, 0xE400000000000000);
        if ((v35 & 1) != (v38 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

        v33 = v37;
      }

      v21 = MEMORY[0x1E69E6158];
      v39 = *&v74[0];
      if (v35)
      {
        sub_1AF770FA0(&v75, *(*&v74[0] + 56) + 88 * v33);
      }

      else
      {
        *(*&v74[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v40 = (v39[6] + 16 * v33);
        *v40 = 1701667182;
        v40[1] = 0xE400000000000000;
        v41 = v39[7] + 88 * v33;
        v42 = v76;
        *v41 = v75;
        *(v41 + 16) = v42;
        v43 = v77;
        v44 = v78;
        v45 = v79;
        *(v41 + 80) = v80;
        *(v41 + 48) = v44;
        *(v41 + 64) = v45;
        *(v41 + 32) = v43;
        ++v39[2];
      }

      *(v26 + 16) = v39;

      v17 = MEMORY[0x1E69E7CA0];
LABEL_35:
      v46 = *(v26 + 16);
      if (!v46)
      {
        goto LABEL_43;
      }

      if (!*(v46 + 16))
      {
        goto LABEL_41;
      }

      v47 = sub_1AF419914(1701667182, 0xE400000000000000);
      if ((v48 & 1) == 0)
      {

LABEL_41:
        memset(v84, 0, sizeof(v84));
        v82 = 0u;
        v83 = 0u;
        v81 = 0u;
LABEL_42:
        sub_1AF7B4AA0(&v81, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_43:
        memset(v74, 0, 32);
        goto LABEL_44;
      }

      sub_1AF4455CC(*(v46 + 56) + 88 * v47, &v81);

      if (!*(&v81 + 1))
      {
        goto LABEL_42;
      }

      sub_1AF4455CC(&v81, &v75);
      sub_1AF7B4AA0(&v81, &qword_1EB6335B0, &_s8MetadataVN);
      sub_1AF44CBE4(&v78 + 8, v74);
      sub_1AF761390(&v75);
LABEL_44:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v85);

      sub_1AF449D40(v74, &v81);
      swift_dynamicCast();
      MEMORY[0x1B2718AE0](v75, *(&v75 + 1));

      MEMORY[0x1B2718AE0](124, 0xE100000000000000);
      v49 = *(v24 + 24);
      v50 = *(v24 + 32);

      MEMORY[0x1B2718AE0](v49, v50);

      if (v86 == v90 && v87 == v73)
      {

        goto LABEL_53;
      }

      v51 = sub_1AFDFEE28();

      v20 = v72;
      if (v51)
      {
        goto LABEL_53;
      }

      ++v23;
    }

    while (v69 != v23);
  }

  v24 = 0;
LABEL_53:

  if (v19)
  {
    v52 = v19;
  }

  else
  {

    v52 = v24;
  }

  v53 = v68[5];
  v54 = v68[6];
  v56 = *(v52 + 40);
  v55 = *(v52 + 48);
  if (v53 == v56 && v54 == v55 || (sub_1AFDFEE28() & 1) != 0)
  {
  }

  else
  {
    v57 = *(v68 + 9);
    v75 = *(v68 + 7);
    v76 = v57;
    *&v77 = v68[11];
    v58 = *(v52 + 72);
    v81 = *(v52 + 56);
    v82 = v58;
    *&v83 = *(v52 + 88);

    sub_1AF444F60(&v75, v74);

    sub_1AF444F60(&v81, v74);

    v59 = sub_1AF76ED08(v56, v55);
    v61 = v60;

    v62 = *a6;

    v90 = sub_1AF7A4C70(&v75, v53, v54, &v81, v59, v61, a5, 1, v62);
    v64 = v63;

    sub_1AF444FBC(&v81);

    sub_1AF444FBC(&v75);

    *&v74[0] = v90;
    *(&v74[0] + 1) = v64;

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);

    MEMORY[0x1B2718AE0](*&v74[0], *(&v74[0] + 1));
  }
}