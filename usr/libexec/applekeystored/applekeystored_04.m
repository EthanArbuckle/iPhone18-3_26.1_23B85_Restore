Swift::Int ProtectionClassJanitor.Client.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_10005C520()
{
  result = qword_1000A46E0;
  if (!qword_1000A46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46E0);
  }

  return result;
}

__n128 sub_10005C574(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005C588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C5D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10005C694()
{
  sub_10005D9AC(&v1);
  xmmword_1000B1A38 = v3;
  *&qword_1000B1A48 = v4;
  qword_1000B1A58 = v5;
  result = *&v2;
  xmmword_1000B1A18 = v1;
  *&qword_1000B1A28 = v2;
  return result;
}

void sub_10005C6E0(uint64_t a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = MGCopyAnswerWithError();

  if (v3)
  {
    *(a1 + 24) = swift_getObjectType();
    *a1 = v3;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_10005C8EC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10005C9E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DDEC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10005CA18@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ELL;
  v3 = *v1;
  v4 = "untDirectory";
  v5 = "ritance_enforcement";
  v6 = 0xD000000000000025;
  if (v3 != 5)
  {
    v6 = 0xD00000000000001ELL;
    v5 = "rce_disabled_policies";
  }

  v7 = "dataprotect_policy_logging";
  v8 = 0xD00000000000001CLL;
  result = 0xD000000000000023;
  if (v3 != 3)
  {
    v8 = 0xD000000000000023;
    v7 = "dataprotect_policy_analytics";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "dataprotect_policy_enable";
  if (v3 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v10 = "dataprotect_policy_enforcement";
  }

  if (*v1)
  {
    v4 = v10;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_10005CAF0(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_100061C68();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8);
      if (v10 <= 2)
      {
        if (v10 == 1)
        {
          v13 = 0xD00000000000001ELL;
        }

        else
        {
          v13 = 0xD00000000000001ALL;
        }

        v14 = "dataprotect_policy_enable";
        if (v10 != 1)
        {
          v14 = "dataprotect_policy_enforcement";
        }

        v15 = v10 == 0;
        v12 = "untDirectory";
        if (v15)
        {
          v11 = 0xD000000000000019;
        }

        else
        {
          v11 = v13;
        }

        if (!v15)
        {
          v12 = v14;
        }
      }

      else if (*(*(v4 + 48) + v8) > 4u)
      {
        if (v10 == 5)
        {
          v11 = 0xD000000000000025;
          v12 = "ritance_enforcement";
        }

        else
        {
          v11 = 0xD00000000000001ELL;
          v12 = "rce_disabled_policies";
        }
      }

      else if (v10 == 3)
      {
        v11 = 0xD00000000000001CLL;
        v12 = "dataprotect_policy_logging";
      }

      else
      {
        v11 = 0xD000000000000023;
        v12 = "dataprotect_policy_analytics";
      }

      if (a2 <= 2u)
      {
        if (a2 == 1)
        {
          v22 = 0xD00000000000001ELL;
        }

        else
        {
          v22 = 0xD00000000000001ALL;
        }

        v23 = "dataprotect_policy_enable";
        if (a2 != 1)
        {
          v23 = "dataprotect_policy_enforcement";
        }

        if (a2)
        {
          v20 = v22;
        }

        else
        {
          v20 = 0xD000000000000019;
        }

        v21 = "untDirectory";
        if (a2)
        {
          v21 = v23;
        }
      }

      else
      {
        v16 = 0xD000000000000025;
        if (a2 != 5)
        {
          v16 = 0xD00000000000001ELL;
        }

        v17 = "ritance_enforcement";
        if (a2 != 5)
        {
          v17 = "rce_disabled_policies";
        }

        v18 = 0xD00000000000001CLL;
        if (a2 != 3)
        {
          v18 = 0xD000000000000023;
        }

        v19 = "dataprotect_policy_logging";
        if (a2 != 3)
        {
          v19 = "dataprotect_policy_analytics";
        }

        v20 = a2 <= 4u ? v18 : v16;
        v21 = a2 <= 4u ? v19 : v17;
      }

      if (v11 == v20 && (v12 | 0x8000000000000000) == (v21 | 0x8000000000000000))
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_53;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_53:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_51:
    v25 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v28;
    sub_10005D0BC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v28 = v30;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10005CD88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000A0C8(&qword_1000A46F8, &qword_100078768);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10005D0BC(Swift::Int result, unint64_t a2, char a3)
{
  v31 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_57;
  }

  if (a3)
  {
    sub_10005CD88(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10005D3A4();
      goto LABEL_57;
    }

    sub_10005D4E4(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = sub_100061C68();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 2)
      {
        if (v11 == 1)
        {
          v14 = 0xD00000000000001ELL;
        }

        else
        {
          v14 = 0xD00000000000001ALL;
        }

        v15 = "dataprotect_policy_enable";
        if (v11 != 1)
        {
          v15 = "dataprotect_policy_enforcement";
        }

        v16 = v11 == 0;
        v13 = "untDirectory";
        if (v16)
        {
          v12 = 0xD000000000000019;
        }

        else
        {
          v12 = v14;
        }

        if (!v16)
        {
          v13 = v15;
        }
      }

      else if (*(*(v7 + 48) + a2) > 4u)
      {
        if (v11 == 5)
        {
          v12 = 0xD000000000000025;
          v13 = "ritance_enforcement";
        }

        else
        {
          v12 = 0xD00000000000001ELL;
          v13 = "rce_disabled_policies";
        }
      }

      else if (v11 == 3)
      {
        v12 = 0xD00000000000001CLL;
        v13 = "dataprotect_policy_logging";
      }

      else
      {
        v12 = 0xD000000000000023;
        v13 = "dataprotect_policy_analytics";
      }

      if (v31 <= 2u)
      {
        if (v31 == 1)
        {
          v23 = 0xD00000000000001ELL;
        }

        else
        {
          v23 = 0xD00000000000001ALL;
        }

        v24 = "dataprotect_policy_enable";
        if (v31 != 1)
        {
          v24 = "dataprotect_policy_enforcement";
        }

        if (v31)
        {
          v21 = v23;
        }

        else
        {
          v21 = 0xD000000000000019;
        }

        v22 = "untDirectory";
        if (v31)
        {
          v22 = v24;
        }
      }

      else
      {
        v17 = 0xD000000000000025;
        if (v31 != 5)
        {
          v17 = 0xD00000000000001ELL;
        }

        v18 = "ritance_enforcement";
        if (v31 != 5)
        {
          v18 = "rce_disabled_policies";
        }

        v19 = 0xD000000000000023;
        v20 = "dataprotect_policy_logging";
        if (v31 == 3)
        {
          v19 = 0xD00000000000001CLL;
        }

        else
        {
          v20 = "dataprotect_policy_analytics";
        }

        v21 = v31 <= 4u ? v19 : v17;
        v22 = v31 <= 4u ? v20 : v18;
      }

      if (v12 == v21 && (v13 | 0x8000000000000000) == (v22 | 0x8000000000000000))
      {
        goto LABEL_60;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_61;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_57:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v31;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_60:

LABEL_61:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10005D3A4()
{
  v1 = v0;
  sub_10000A0C8(&qword_1000A46F8, &qword_100078768);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

uint64_t sub_10005D4E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000A0C8(&qword_1000A46F8, &qword_100078768);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_10005D7E8()
{
  v0 = 0;
  v5 = &_swiftEmptySetSingleton;
  do
  {
    v1 = *(&off_100095C00 + v0++ + 32);
    v4 = 0;
    String.utf8CString.getter();

    v2 = os_parse_boot_arg_int();

    if ((v2 & 1) != 0 && v4)
    {
      sub_10005CAF0(&v4, v1);
    }
  }

  while (v0 != 7);
  return v5;
}

void *sub_10005D9AC@<X0>(void *a1@<X8>)
{
  v2 = objc_autoreleasePoolPush();
  sub_10005C6E0(v17);
  objc_autoreleasePoolPop(v2);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v3 = v15;
      v4 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10005DBE8(v17);
  }

  v3 = 0;
  v4 = 0xE000000000000000;
LABEL_6:
  v5 = objc_autoreleasePoolPush();
  sub_10005C6E0(v17);
  objc_autoreleasePoolPop(v5);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v6 = v15;
      v7 = v16;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10005DBE8(v17);
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_11:
  v8 = objc_autoreleasePoolPush();
  sub_10005C6E0(v17);
  objc_autoreleasePoolPop(v8);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v9 = v15;
      v10 = v16;
      goto LABEL_16;
    }
  }

  else
  {
    sub_10005DBE8(v17);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
LABEL_16:
  v11 = objc_autoreleasePoolPush();
  sub_10005C6E0(v17);
  objc_autoreleasePoolPop(v11);
  if (!v18)
  {
    sub_10005DBE8(v17);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_21;
  }

  v12 = v15;
  v13 = v16;
LABEL_21:
  result = sub_10005D7E8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = result;
  return result;
}

uint64_t sub_10005DBE8(uint64_t a1)
{
  v2 = sub_10000A0C8(&qword_1000A46F0, &qword_100078760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10005DC50(uint64_t a1, uint64_t a2)
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

uint64_t sub_10005DC74(uint64_t a1, int a2)
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

uint64_t sub_10005DCBC(uint64_t result, int a2, int a3)
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

unint64_t sub_10005DD30()
{
  result = qword_1000A4700;
  if (!qword_1000A4700)
  {
    sub_10000A738(&qword_1000A4708, qword_1000787E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4700);
  }

  return result;
}

unint64_t sub_10005DD98()
{
  result = qword_1000A4710;
  if (!qword_1000A4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4710);
  }

  return result;
}

unint64_t sub_10005DDEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100096010, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005DE38@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v1 = sub_10000A0C8(&qword_1000A4728, &unk_1000788D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v64 = &v59 - v3;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for URL();
  v72 = v13;
  v76 = *(v13 - 8);
  v14 = v76;
  v15 = *(v76 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v59 - v20;
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  URL.standardized.getter();
  v24 = *(v14 + 56);
  v74 = v14 + 56;
  v67 = v24;
  v24(v12, 1, 1, v13);
  v25 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v27 = v5 + 13;
  v26 = v5[13];
  v26(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  v75 = v12;
  v28 = v8;
  URL.init(filePath:directoryHint:relativeTo:)();
  strcpy(v78, "PersonaVolumes");
  HIBYTE(v78[1]) = -18;
  v68 = v25;
  v69 = v26;
  v26(v8, v25, v4);
  v29 = sub_10005E554();
  URL.appending<A>(component:directoryHint:)();
  v30 = v5[1];
  v70 = v5 + 1;
  v71 = v4;
  v31 = v4;
  v32 = v30;
  v30(v8, v31);
  v33 = (v76 + 8);
  v34 = *(v76 + 8);
  v35 = v72;
  v34(v18, v72);
  v77 = v23;
  v36 = v35;
  LOBYTE(v35) = sub_10005E82C();
  v34(v21, v36);
  v66 = v32;
  if ((v35 & 1) == 0)
  {
    v67(v75, 1, 1, v36);
    v63 = v33;
    v37 = v68;
    v38 = v71;
    v65 = v29;
    v39 = v69;
    v69(v28, v68, v71);
    URL.init(filePath:directoryHint:relativeTo:)();
    v78[0] = 0x7372657355;
    v78[1] = 0xE500000000000000;
    v39(v28, v37, v38);
    v29 = v65;
    URL.appending<A>(component:directoryHint:)();
    v66(v28, v38);
    v34(v18, v36);
    v40 = sub_10005E82C();
    v34(v21, v36);
    if ((v40 & 1) == 0)
    {
      return (*(v76 + 32))(v73, v77, v36);
    }
  }

  v61 = v27;
  v62 = v34;
  v63 = v18;
  v60 = v21;
  v41 = v75;
  v42 = v77;
  v43 = URL.pathComponents.getter();
  v44 = v43;
  if (v43[2] < 5uLL)
  {
    (*(v76 + 32))(v73, v42, v36);
  }

  else
  {
    v65 = v29;
    v46 = v43[12];
    v45 = v43[13];

    v47 = v64;
    UUID.init(uuidString:)();

    v48 = type metadata accessor for UUID();
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {

      sub_10005E9B8(v47);
      return (*(v76 + 32))(v73, v77, v36);
    }

    sub_10005E9B8(v47);
    v50 = v36;
    v67(v41, 1, 1, v36);
    v51 = v68;
    v52 = v71;
    v53 = v69;
    v69(v28, v68, v71);
    v54 = v63;
    URL.init(filePath:directoryHint:relativeTo:)();
    v78[0] = 0x656C69626F6DLL;
    v78[1] = 0xE600000000000000;
    v53(v28, v51, v52);
    v55 = v50;
    v56 = v60;
    URL.appending<A>(component:directoryHint:)();
    v66(v28, v52);
    v57 = v62;
    result = (v62)(v54, v55);
    v58 = v44[2];
    if (v58 < 5)
    {
      __break(1u);
    }

    else
    {
      sub_10005E5A8((v44 + 4), 5, (2 * v58) | 1, v73);

      v57(v56, v55);
      return (v57)(v77, v55);
    }
  }

  return result;
}

unint64_t sub_10005E554()
{
  result = qword_1000A4730;
  if (!qword_1000A4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4730);
  }

  return result;
}

uint64_t sub_10005E5A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v35 = type metadata accessor for URL.DirectoryHint();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v35);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v33 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v18;
  result = (*(v15 + 16))(a4, v5);
  v20 = a3 >> 1;
  v21 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    v32 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v30 = (v10 + 8);
    v31 = (v10 + 104);
    v29 = (v15 + 8);
    if (a2 > v20)
    {
      v20 = a2;
    }

    v22 = v20 - a2;
    v23 = (a1 + 16 * a2 + 8);
    while (v22)
    {
      v24 = *v23;
      v36 = *(v23 - 1);
      v37 = v24;
      v25 = v35;
      (*v31)(v13, v32, v35);
      sub_10005E554();

      v26 = v33;
      URL.appending<A>(component:directoryHint:)();
      (*v30)(v13, v25);

      v27 = v34;
      (*v29)(a4, v34);
      result = (*(v15 + 32))(a4, v26, v27);
      --v22;
      v23 += 2;
      if (!--v21)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005E82C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.standardized.getter();
  v5 = URL.pathComponents.getter();
  v6 = *(v1 + 8);
  v6(v4, v0);
  URL.standardized.getter();
  v7 = URL.pathComponents.getter();
  v6(v4, v0);
  v8 = *(v5 + 16);
  if (v8 >= *(v7 + 16))
  {
    v11 = 0;
  }

  else if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v5 + v9 + 32) == *(v7 + v9 + 32) && *(v5 + v9 + 40) == *(v7 + v9 + 40);
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v9 += 16;
      if (!--v8)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
  }

  else
  {
LABEL_12:
    v11 = 1;
  }

  return v11;
}

uint64_t sub_10005E9B8(uint64_t a1)
{
  v2 = sub_10000A0C8(&qword_1000A4728, &unk_1000788D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

ProtectionDomainManager::SplunkLoggerConfig __swiftcall SplunkLoggerConfig.init(productionServer:targetMessageSize:)(Swift::Bool productionServer, Swift::Int targetMessageSize)
{
  v2 = productionServer;
  result.targetMessageSize = targetMessageSize;
  result.productionServer = v2;
  return result;
}

uint64_t sub_10005EA34()
{
  v1[8] = v0;
  v2 = type metadata accessor for URL();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  if (qword_1000A2190 != -1)
  {
    swift_once();
  }

  v8 = qword_1000B1990;
  v1[15] = qword_1000B1990;

  return _swift_task_switch(sub_10005EB88, v8, 0);
}

uint64_t sub_10005EB88()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2 && *(v2 + 16) != *(v2 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v4)
  {
    if (v2 != v2 >> 32)
    {
      goto LABEL_7;
    }

LABEL_12:
    v7 = *(v0 + 112);
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9(1);
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v5 = *(*(v0 + 64) + 16);
  *(v0 + 160) = v5;
  if (v5 == 1)
  {
    if (qword_1000A21D0 != -1)
    {
      swift_once();
    }

    v6 = qword_1000A4738;
  }

  else
  {
    if (qword_1000A21D8 != -1)
    {
      swift_once();
    }

    v6 = qword_1000A4750;
  }

  v11 = *(v0 + 112);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 72);
  v15 = sub_100002DB8(v14, v6);
  (*(v13 + 16))(v12, v15, v14);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  sub_100011FAC(*(v1 + 40), *(v1 + 48));
  URLRequest.httpBody.setter();
  if (v5)
  {
    if (qword_1000A21E0 != -1)
    {
      swift_once();
    }

    v16 = &qword_1000A4768;
  }

  else
  {
    if (qword_1000A21E8 != -1)
    {
      swift_once();
    }

    v16 = &qword_1000A4778;
  }

  v17 = *(v0 + 112);
  v18 = *v16;
  v19 = v16[1];

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v21.value._countAndFlagsBits = 0x206B6E756C7053;
  v22._countAndFlagsBits = 0x7A69726F68747541;
  v22._object = 0xED00006E6F697461;
  v21.value._object = 0xE700000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v21, v22);

  v23 = [objc_opt_self() ephemeralSessionConfiguration];
  *(v0 + 128) = [objc_opt_self() sessionWithConfiguration:v23];

  v24 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v25 = swift_task_alloc();
  *(v0 + 136) = v25;
  *v25 = v0;
  v25[1] = sub_10005EF30;
  v26 = *(v0 + 112);

  return NSURLSession.data(for:delegate:)(v26, 0);
}

uint64_t sub_10005EF30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  v9 = *(*v4 + 136);
  v10 = *v4;
  *(v8 + 144) = a3;
  *(v8 + 152) = v3;

  v11 = *(v7 + 120);
  if (v3)
  {
    v12 = sub_10005F428;
  }

  else
  {
    sub_10000B068(a1, a2);
    v12 = sub_10005F07C;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_10005F07C()
{
  v40 = v0;
  v1 = *(v0 + 144);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && (v3 = v2, [v2 statusCode] != 200))
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 144);
    v18 = type metadata accessor for Logger();
    sub_100002DB8(v18, qword_1000B1908);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 144);
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = [v3 statusCode];

      _os_log_impl(&_mh_execute_header, v20, v21, "failed to post telemetry: %ld", v24, 0xCu);
    }

    else
    {
    }

    v16 = 0;
  }

  else
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 64);
    v5 = type metadata accessor for Logger();
    sub_100002DB8(v5, qword_1000B1908);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 144);
    if (v8)
    {
      v10 = *(v0 + 160);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39 = v12;
      *v11 = 136315138;
      if (v10)
      {
        v13 = 0x69746375646F7270;
      }

      else
      {
        v13 = 24945;
      }

      if (v10)
      {
        v14 = 0xEA00000000006E6FLL;
      }

      else
      {
        v14 = 0xE200000000000000;
      }

      v15 = sub_100005C68(v13, v14, &v39);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "successfully posted telemetry to %s server", v11, 0xCu);
      sub_100005E9C(v12);
    }

    v16 = 1;
  }

  v25 = *(v0 + 64);
  swift_beginAccess();
  v26 = *(v25 + 40);
  v27 = *(v25 + 48) >> 62;
  if (v27 > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_28;
    }

    v28 = *(v26 + 16);
    v29 = *(v26 + 24);
  }

  else
  {
    if (!v27)
    {
      goto LABEL_28;
    }

    v28 = v26;
    v29 = v26 >> 32;
  }

  if (v29 < v28)
  {
    __break(1u);
  }

LABEL_28:
  v30 = *(v0 + 128);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v33 = *(v0 + 96);
  v34 = *(v0 + 64) + 40;
  Data._Representation.replaceSubrange(_:with:count:)();
  swift_endAccess();

  (*(v32 + 8))(v31, v33);
  v35 = *(v0 + 112);
  v36 = *(v0 + 88);

  v37 = *(v0 + 8);

  return v37(v16);
}

uint64_t sub_10005F428()
{
  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  sub_100002DB8(v2, qword_1000B1908);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "failed to post telemetry: %@", v7, 0xCu);
    sub_10000A50C(v8);
  }

  else
  {
  }

  v10 = v0[8];
  swift_beginAccess();
  v11 = *(v10 + 40);
  v12 = *(v10 + 48) >> 62;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_14;
    }

    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = v11;
    v14 = v11 >> 32;
  }

  if (v14 < v13)
  {
    __break(1u);
  }

LABEL_14:
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  v19 = v0[8] + 40;
  Data._Representation.replaceSubrange(_:with:count:)();
  swift_endAccess();

  (*(v17 + 8))(v16, v18);
  v20 = v0[14];
  v21 = v0[11];

  v22 = v0[1];

  return v22(0);
}

unint64_t sub_10005F688()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_10005F6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000100083D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100083DA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10005F7A4(uint64_t a1)
{
  v2 = sub_10005F9A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F7E0(uint64_t a1)
{
  v2 = sub_10005F9A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SplunkLoggerConfig.encode(to:)(void *a1)
{
  v3 = sub_10000A0C8(&qword_1000A4788, &qword_1000788F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10005F9A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_10005F9A4()
{
  result = qword_1000A4790;
  if (!qword_1000A4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4790);
  }

  return result;
}

uint64_t sub_10005FA14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974656372756F73 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10005FB78(unsigned __int8 a1)
{
  v1 = 1701669236;
  v2 = 0x7865646E69;
  if (a1 != 2)
  {
    v2 = 0x746E657665;
  }

  if (a1)
  {
    v1 = 0x7974656372756F73;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10005FBE8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21[0] = *(a2 + 32);
  v21[1] = v4;
  type metadata accessor for SplunkMessage.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = a1[4];
  sub_100006978(a1, a1[3]);
  v12 = v21[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v12;
  v25 = 0;
  v14 = v21[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = v12[1];
    v16 = v12[2];
    v24 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v12[3];
    v18 = v12[4];
    v23 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(a2 + 52);
    v22 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10005FDCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v27 = *(a2 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(a1);
  v30 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SplunkMessage.CodingKeys();
  swift_getWitnessTable();
  v34 = type metadata accessor for KeyedDecodingContainer();
  v29 = *(v34 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v34);
  v11 = &v26 - v10;
  v31 = a2;
  v32 = a3;
  v12 = type metadata accessor for SplunkMessage();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  __chkstk_darwin(v12);
  v15 = (&v26 - v14);
  v16 = a1[4];
  sub_100006978(a1, a1[3]);
  v33 = v11;
  v17 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100005E9C(a1);
  }

  v35 = v12;
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v39 = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = 1;
  v15[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[2] = v21;
  v37 = 2;
  v15[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[4] = v22;
  v36 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v33, v34);
  v23 = v35;
  (*(v27 + 32))(v15 + *(v35 + 52), v19, v20);
  v24 = v26;
  (*(v26 + 16))(v28, v15, v23);
  sub_100005E9C(a1);
  return (*(v24 + 8))(v15, v23);
}

uint64_t sub_1000601A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100060840(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1000601D8(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return SplunkLoggerConfig.encode(to:)(a1);
}

BOOL sub_1000601F8(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static ProtectionClassJanitor.Client.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_100060210(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return ProtectionClassJanitor.Client.hashValue.getter(*v1);
}

void sub_100060220(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  ProtectionClassJanitor.Client.hash(into:)(a1, *v2);
}

Swift::Int sub_100060230(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  ProtectionClassJanitor.Client.hash(into:)(v8, *v2);
  return Hasher._finalize()();
}

uint64_t sub_10006027C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_10005FB78(*v1);
}

uint64_t sub_10006028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_10005FA14(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1000602C0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1000610D8();
  *a2 = result;
  return result;
}

uint64_t sub_1000602F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100060348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1000603D8()
{
  v0 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_10000A574(v4, qword_1000A4738);
  v5 = sub_100002DB8(v4, qword_1000A4738);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100060508()
{
  v0 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_10000A574(v4, qword_1000A4750);
  v5 = sub_100002DB8(v4, qword_1000A4750);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100060638()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  result = Data.init(base64Encoded:options:)();
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = v3;
    static String.Encoding.utf8.getter();
    v6 = String.init(data:encoding:)();
    v8 = v7;
    result = sub_10003FDF8(v4, v5);
    if (v8)
    {
      qword_1000A4768 = v6;
      unk_1000A4770 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006071C()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  result = Data.init(base64Encoded:options:)();
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = v3;
    static String.Encoding.utf8.getter();
    v6 = String.init(data:encoding:)();
    v8 = v7;
    result = sub_10003FDF8(v4, v5);
    if (v8)
    {
      qword_1000A4778 = v6;
      unk_1000A4780 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100060800()
{
  v1 = v0[4];

  sub_10000B068(v0[5], v0[6]);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100060840(uint64_t *a1)
{
  v2 = sub_10000A0C8(qword_1000A4860, &qword_100078AE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10005F9A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[15] = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100005E9C(a1);
  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for SplunkLoggerConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SplunkLoggerConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100060AC4()
{
  result = qword_1000A4848;
  if (!qword_1000A4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4848);
  }

  return result;
}

unint64_t sub_100060B1C()
{
  result = qword_1000A4850;
  if (!qword_1000A4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4850);
  }

  return result;
}

unint64_t sub_100060B74()
{
  result = qword_1000A4858;
  if (!qword_1000A4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4858);
  }

  return result;
}

uint64_t sub_100060BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100060C60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100060DF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    v19[1] = a2 - 1;
  }
}

uint64_t sub_1000610E0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, unint64_t a6, char *path)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v13 = a2 & 0xFFFFFFFFFFFFFFLL;
      sub_10001147C(name, path, a5, a6, v14);
      if (!v7)
      {
        v8 = v14[0];
        goto LABEL_10;
      }

LABEL_7:

      sub_10000B068(a5, a6);
      return v8;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_10001147C(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), path, a5, a6, name);
      if (!v7)
      {
        v8 = *name;
LABEL_10:

        sub_10000B068(a5, a6);
        return v8;
      }

      goto LABEL_7;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();

  sub_10000B068(a5, a6);
  if (!v7)
  {
    return v14[1];
  }

  return v8;
}

uint64_t sub_100061228(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x6946657461657263;
  v4 = a1;
  v5 = 0x656C694665766F6DLL;
  v6 = 0x6C6946656E6F6C63;
  v7 = 0xE900000000000065;
  if (a1 != 4)
  {
    v6 = 0x656C694670617773;
    v7 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xD000000000000012;
  v10 = 0x8000000100082AF0;
  if (a1 != 1)
  {
    v9 = 0x656C69466B6E696CLL;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x6946657461657263;
    v10 = 0xEA0000000000656CLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000100082AF0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      v2 = 0xE800000000000000;
      v3 = 0x656C69466B6E696CLL;
    }

    if (v11 != v3)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 == 3)
  {
    v2 = 0xE800000000000000;
    v13 = 1702260589;
  }

  else
  {
    if (a2 == 4)
    {
      v2 = 0xE900000000000065;
      if (v11 != 0x6C6946656E6F6C63)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v2 = 0xE800000000000000;
    v13 = 1885435763;
  }

  if (v11 != (v13 | 0x656C694600000000))
  {
LABEL_33:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

LABEL_31:
  if (v12 != v2)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_1000613F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000656E6F4ELL;
  v3 = 0x7269447373616C63;
  if (a1 <= 3u)
  {
    v4 = 0xE600000000000000;
    v5 = 0x427373616C63;
    v8 = 0xE600000000000000;
    if (a1 != 2)
    {
      v5 = 0x437373616C63;
      v4 = 0xE600000000000000;
    }

    v9 = 0x417373616C63;
    if (!a1)
    {
      v9 = 0x7269447373616C63;
      v8 = 0xEC000000656E6F4ELL;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x467373616C63;
    v6 = 0xE700000000000000;
    v7 = 0x58437373616C63;
    if (a1 != 7)
    {
      v7 = 0x6365746F72506F6ELL;
      v6 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE600000000000000;
    v9 = 0x447373616C63;
    if (a1 != 4)
    {
      v9 = 0x457373616C63;
      v8 = 0xE600000000000000;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE600000000000000;
      if (a2 == 2)
      {
        if (v11 != 0x427373616C63)
        {
          goto LABEL_45;
        }
      }

      else if (v11 != 0x437373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x417373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      v2 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v11 != 0x447373616C63)
        {
          goto LABEL_45;
        }
      }

      else if (v11 != 0x457373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a2 == 6)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x467373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a2 == 7)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x58437373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v3 = 0x6365746F72506F6ELL;
    v2 = 0xEC0000006E6F6974;
  }

  if (v11 != v3)
  {
LABEL_45:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_46;
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_100061678(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x74616964656D6D69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F6974617267696DLL;
    }

    else
    {
      v5 = 0x726F74696E616ALL;
    }

    if (v4 == 2)
    {
      v6 = 0xE90000000000006ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465727265666564;
    }

    else
    {
      v5 = 0x74616964656D6D69;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  v7 = 0x6F6974617267696DLL;
  v8 = 0xE90000000000006ELL;
  if (a2 != 2)
  {
    v7 = 0x726F74696E616ALL;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6465727265666564;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1000617BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000100082AF0;
  v6 = 0xE400000000000000;
  v7 = 1802398060;
  if (a1 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6574697277;
  if (a1 != 1)
  {
    v9 = 0x657461657263;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1684104562;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000100082AF0;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802398060)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6574697277)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x657461657263)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1684104562)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100061978(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6465776F6C6C61;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x50676E697373696DLL;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000100082BF0;
    }

    else
    {
      v5 = 0xED00007963696C6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465696E6564;
    }

    else
    {
      v4 = 0x6465776F6C6C61;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000010;
  v8 = 0x8000000100082BF0;
  if (a2 != 2)
  {
    v7 = 0x50676E697373696DLL;
    v8 = 0xED00007963696C6FLL;
  }

  if (a2)
  {
    v2 = 0x6465696E6564;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100061ACC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = "untDirectory";
  if (a1 == 5)
  {
    v4 = 0xD000000000000025;
  }

  else
  {
    v4 = 0xD00000000000001ELL;
  }

  if (a1 == 5)
  {
    v5 = "ritance_enforcement";
  }

  else
  {
    v5 = "rce_disabled_policies";
  }

  v6 = 0xD000000000000023;
  if (a1 == 3)
  {
    v6 = 0xD00000000000001CLL;
    v7 = "dataprotect_policy_logging";
  }

  else
  {
    v7 = "dataprotect_policy_analytics";
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  if (a1 == 1)
  {
    v9 = 0xD00000000000001ELL;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a1 == 1)
  {
    v10 = "dataprotect_policy_enable";
  }

  else
  {
    v10 = "dataprotect_policy_enforcement";
  }

  if (!a1)
  {
    v9 = 0xD000000000000019;
    v10 = "untDirectory";
  }

  v11 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    v7 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "dataprotect_policy_enable";
      }

      else
      {
        v2 = 0xD00000000000001ALL;
        v3 = "dataprotect_policy_enforcement";
      }
    }

    else
    {
      v2 = 0xD000000000000019;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000025;
      v3 = "ritance_enforcement";
    }

    else
    {
      v3 = "rce_disabled_policies";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD00000000000001CLL;
    v3 = "dataprotect_policy_logging";
  }

  else
  {
    v2 = 0xD000000000000023;
    v3 = "dataprotect_policy_analytics";
  }

  if (v12 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int sub_100061C68()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100061D70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100061E60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t *RapidRepair.shared.unsafeMutableAddressor()
{
  if (qword_1000A21F8 != -1)
  {
    swift_once();
  }

  return &static RapidRepair.shared;
}

uint64_t RapidRepair.run()()
{
  v1[9] = v0;
  v2 = type metadata accessor for String.Encoding();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = type metadata accessor for SHA384Digest();
  v1[17] = v8;
  v9 = *(v8 - 8);
  v1[18] = v9;
  v10 = *(v9 + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100062140, 0, 0);
}

uint64_t sub_100062140()
{
  v67 = v0;
  sub_10006DCE4(v0 + 16);
  if ((*(v0 + 16) & 1) == 0)
  {
    sub_10006AEE0();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v17 = *(v0 + 152);
    v18 = *(v0 + 128);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);

    v21 = *(v0 + 8);
LABEL_9:

    return v21();
  }

  v1 = 0;
  atomic_compare_exchange_strong((*(v0 + 72) + 16), &v1, 1u);
  if (v1)
  {
LABEL_35:
    v49 = *(v0 + 152);
    v50 = *(v0 + 128);
    v52 = *(v0 + 96);
    v51 = *(v0 + 104);

    v21 = *(v0 + 8);
    goto LABEL_9;
  }

  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(*(v0 + 72) + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_rules);
  v66[0] = 3813750;
  v66[1] = 0xE300000000000000;
  sub_1000664F0(v5);
  v6 = sub_1000666D8();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  *(v0 + 160) = 3813750;
  *(v0 + 168) = 0xE300000000000000;
  if (qword_1000A21F0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002DB8(v10, qword_1000B1A60);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v66[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_100005C68(3813750, 0xE300000000000000, v66);
    _os_log_impl(&_mh_execute_header, v11, v12, "Current rules fingerprint: %{public}s", v13, 0xCu);
    sub_100005E9C(v14);
  }

  v15 = *(v0 + 72);
  sub_10006303C(*(v0 + 128));
  if (qword_1000A21C8 != -1)
  {
    swift_once();
  }

  v65 = v5;
  v23 = qword_1000B1A58;
  if (!*(qword_1000B1A58 + 16) || (v24 = *(qword_1000B1A58 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v25 = Hasher._finalize()(), v26 = -1 << *(v23 + 32), v27 = v25 & ~v26, ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
  {
LABEL_26:
    v32 = *(v0 + 128);
    v33 = *(v0 + 104);
    static String.Encoding.utf8.getter();
    v34 = v65;
    v35 = String.init(contentsOf:encoding:)();
    v37 = v36;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v66[0] = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_100005C68(v35, v37, v66);
      _os_log_impl(&_mh_execute_header, v38, v39, "Found previously applied rules fingerprint: %{public}s", v40, 0xCu);
      sub_100005E9C(v41);

      v34 = v65;
    }

    if (v35 == 3813750 && v37 == 0xE300000000000000)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "Repair rules have changed since last run", v55, 2u);
        }

        goto LABEL_43;
      }
    }

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "No repairs needed", v45, 2u);
    }

    v47 = *(v0 + 120);
    v46 = *(v0 + 128);
    v48 = *(v0 + 112);

    (*(v47 + 8))(v46, v48);
    atomic_store(0, (*(v0 + 72) + 16));
    goto LABEL_35;
  }

  v28 = ~v26;
  while (1)
  {
    v29 = *(*(v23 + 48) + v27);
    if (v29 <= 2)
    {
      break;
    }

    if (*(*(v23 + 48) + v27) > 4u)
    {
      v30 = 0x8000000100082D30;
      if (v29 != 5)
      {
        goto LABEL_23;
      }
    }

LABEL_24:
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_40;
    }

    v27 = (v27 + 1) & v28;
    if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v29 != 1)
  {
    goto LABEL_24;
  }

  v30 = 0x8000000100082C70;
LABEL_23:
  if (0x8000000100082D30 != v30)
  {
    goto LABEL_24;
  }

LABEL_40:
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v66[0] = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_100005C68(0xD00000000000001ELL, 0x8000000100082D30, v66);
    _os_log_impl(&_mh_execute_header, v56, v57, "BootArg '%{public}s' is set, forcing repairs", v58, 0xCu);
    sub_100005E9C(v59);
  }

  v34 = v65;
LABEL_43:
  *(v0 + 176) = 0;

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v66[0] = v63;
    *v62 = 136446210;
    *(v62 + 4) = sub_100005C68(3813750, 0xE300000000000000, v66);
    _os_log_impl(&_mh_execute_header, v60, v61, "Applying repairs: %{public}s", v62, 0xCu);
    sub_100005E9C(v63);
  }

  v64 = swift_task_alloc();
  *(v0 + 184) = v64;
  *v64 = v0;
  v64[1] = sub_100062B18;

  return sub_1000636F4(v34);
}

uint64_t sub_100062B18(char a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100062C18, 0, 0);
}

uint64_t sub_100062C18()
{
  if (*(v0 + 192) != 1)
  {
    v14 = *(v0 + 168);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    v13 = *(v0 + 72);

    sub_10006AEE0();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
    goto LABEL_5;
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  *(v0 + 56) = *(v0 + 160);
  *(v0 + 64) = v1;
  static String.Encoding.utf8.getter();
  sub_10005E554();
  StringProtocol.write(to:atomically:encoding:)();
  v5 = v2;
  v6 = *(v0 + 168);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v12 = *(v0 + 80);
  if (v5)
  {
    v13 = *(v0 + 72);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);

LABEL_5:
    atomic_store(0, (v13 + 16));
    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);

    v23 = *(v0 + 8);
    goto LABEL_6;
  }

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);

  atomic_store(0, (*(v0 + 72) + 16));
  v25 = *(v0 + 152);
  v26 = *(v0 + 128);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);

  v23 = *(v0 + 8);
LABEL_6:

  return v23();
}

uint64_t sub_100062E28()
{
  v0 = type metadata accessor for Logger();
  sub_10000A574(v0, qword_1000B1A60);
  sub_100002DB8(v0, qword_1000B1A60);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100062EA8()
{
  v0 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  if (qword_1000A2200 != -1)
  {
    swift_once();
  }

  v5 = qword_1000B1A80;
  v6 = type metadata accessor for RapidRepair();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_baseURL;

  result = sub_10006C1DC(v3, v9 + v10);
  *(v9 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_rules) = v5;
  static RapidRepair.shared = v9;
  return result;
}

uint64_t static RapidRepair.shared.getter()
{
  if (qword_1000A21F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006303C@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for URLResourceValues();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  __chkstk_darwin(v2);
  v55 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL.DirectoryHint();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v65 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v55 - v18;
  v20 = v1 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_baseURL;
  v22 = v21;
  sub_10006C0D0(v20, v12);
  v23 = *(v14 + 48);
  v24 = v23(v12, 1, v22);
  v64 = v5;
  v66 = v22;
  if (v24 == 1)
  {
    v25 = [objc_opt_self() defaultManager];
    v68[0] = 0;
    v26 = [v25 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v68];

    v27 = v68[0];
    if (!v26)
    {
      v54 = v68[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      result = v23(v12, 1, v66);
      if (result != 1)
      {
        return sub_100002CF0(v12, &qword_1000A2CD8, &qword_1000763D0);
      }

      return result;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v23(v12, 1, v66);
    v5 = v64;
    v30 = v14;
    if (v29 != 1)
    {
      sub_100002CF0(v12, &qword_1000A2CD8, &qword_1000763D0);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v12, v22);
    v30 = v14;
  }

  strcpy(v68, "AKSAnalytics");
  BYTE5(v68[1]) = 0;
  HIWORD(v68[1]) = -5120;
  v31 = v67;
  v60 = *(v67 + 104);
  v60(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v32 = sub_10005E554();
  v33 = v65;
  v59 = v32;
  v62 = v19;
  URL.appending<A>(path:directoryHint:)();
  v34 = *(v31 + 8);
  v67 = v31 + 8;
  v58 = v34;
  v34(v8, v5);
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  URL.path(percentEncoded:)(0);
  v37 = String._bridgeToObjectiveC()();

  v38 = [v36 fileExistsAtPath:v37];

  if (v38)
  {
LABEL_7:
    v68[0] = 0xD000000000000014;
    v68[1] = 0x8000000100083F10;
    v39 = v64;
    v60(v8, enum case for URL.DirectoryHint.notDirectory(_:), v64);
    URL.appending<A>(path:directoryHint:)();
    v58(v8, v39);
    v40 = *(v30 + 8);
    v41 = v66;
    v40(v33, v66);
    return (v40)(v62, v41);
  }

  v43 = [v35 defaultManager];
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  v68[0] = 0;
  v47 = [v43 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:v68];

  if (v47)
  {
    v48 = v68[0];
    v49 = v55;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    v50 = v63;
    URL.setResourceValues(_:)();
    if (!v50)
    {
      v63 = 0;
      (*(v56 + 8))(v49, v57);
      goto LABEL_7;
    }

    (*(v56 + 8))(v49, v57);
  }

  else
  {
    v51 = v68[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v52 = *(v30 + 8);
  v53 = v66;
  v52(v33, v66);
  return (v52)(v62, v53);
}

uint64_t sub_100063714()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    *(v0 + 89) = 1;
    *(v0 + 16) = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 64);
    v5 = *(v1 + 80);
    *(v0 + 73) = *(v1 + 89);
    *(v0 + 48) = v4;
    *(v0 + 64) = v5;
    *(v0 + 32) = v3;
    *(v0 + 192) = 1;
    sub_10006B5BC(v0 + 16, v0 + 96);
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v6[1] = sub_100063820;

    return sub_100063C44();
  }

  else
  {
    v8 = *(v0 + 8);

    return v8(1);
  }
}

uint64_t sub_100063820(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v5 = *v1;
  *(v2 + 90) = a1;

  sub_10006B5F4(v2 + 16);

  return _swift_task_switch(sub_100063928, 0, 0);
}

void sub_100063928()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  if (*(v0 + 90))
  {
    if (v1 == v2)
    {
      v3 = *(v0 + 89);
LABEL_7:
      v4 = *(v0 + 8);

      v4(v3);
      return;
    }
  }

  else
  {
    if (v1 == v2)
    {
      v3 = 0;
      goto LABEL_7;
    }

    *(v0 + 89) = 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = (*(v0 + 176) + 80 * v1);
  *(v0 + 16) = v5[2];
  v6 = v5[3];
  v7 = v5[4];
  v8 = v5[5];
  *(v0 + 73) = *(v5 + 89);
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  *(v0 + 32) = v6;
  *(v0 + 192) = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_16:
    __break(1u);
    return;
  }

  sub_10006B5BC(v0 + 16, v0 + 96);
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  *v9 = v0;
  v9[1] = sub_100063820;

  sub_100063C44();
}

uint64_t RapidRepair.fingerprint.getter()
{
  v1 = type metadata accessor for SHA384Digest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_rules);
  v12[0] = 3813750;
  v12[1] = 0xE300000000000000;
  sub_1000664F0(v6);
  v7 = sub_1000666D8();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  return v12[0];
}

uint64_t RapidRepair.deinit()
{
  sub_100002CF0(v0 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_baseURL, &qword_1000A2CD8, &qword_1000763D0);
  v1 = *(v0 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_rules);

  return v0;
}

uint64_t RapidRepair.__deallocating_deinit()
{
  sub_100002CF0(v0 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_baseURL, &qword_1000A2CD8, &qword_1000763D0);
  v1 = *(v0 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_rules);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_100063C64()
{
  v39 = v0;
  v1 = *(v0 + 464);
  if ((*v1 & 1) == 0)
  {
    if (qword_1000A21F0 != -1)
    {
      swift_once();
      v1 = *(v0 + 464);
    }

    v19 = type metadata accessor for Logger();
    sub_100002DB8(v19, qword_1000B1A60);
    sub_10006B5BC(v1, v0 + 16);
    v14 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    sub_10006B5F4(v1);
    if (!os_log_type_enabled(v14, v20))
    {
      goto LABEL_16;
    }

    v21 = *(v0 + 464);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38[0] = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_100005C68(*(v21 + 8), *(v21 + 16), v38);
    _os_log_impl(&_mh_execute_header, v14, v20, "Repair Rule '%{public}s' is disabled", v22, 0xCu);
    sub_100005E9C(v23);

    goto LABEL_15;
  }

  if (qword_1000A21F0 != -1)
  {
    swift_once();
    v1 = *(v0 + 464);
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 472) = sub_100002DB8(v2, qword_1000B1A60);
  sub_10006B5BC(v1, v0 + 96);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_10006B5F4(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 464);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100005C68(*(v5 + 8), *(v5 + 16), v38);
    _os_log_impl(&_mh_execute_header, v3, v4, "Applying repair rule: '%{public}s'", v6, 0xCu);
    sub_100005E9C(v7);
  }

  v8 = *(v0 + 464);
  v10 = *(v8 + 24);
  v9 = *(v8 + 32);
  v11 = *(v8 + 48);
  if (!(v11 >> 62))
  {
    if (sub_10006B728(*(v8 + 24), *(v8 + 32), *(v8 + 72)))
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v11 >> 62 == 1)
  {
    v12 = *(v8 + 72);
    LOBYTE(v38[0]) = 1;
    sub_10006B5BC(v8, v0 + 336);
    sub_10003187C(v10, v9, v12, v38);
    sub_10006B5F4(v8);
    if (v38[0])
    {
LABEL_9:
      v13 = *(v0 + 464);
      sub_10006B5BC(v13, v0 + 256);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      sub_10006B5F4(v13);
      if (!os_log_type_enabled(v14, v15))
      {
LABEL_16:

        v24 = 1;
LABEL_17:
        v25 = *(v0 + 8);

        return v25(v24);
      }

      v16 = *(v0 + 464);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100005C68(*(v16 + 8), *(v16 + 16), v38);
      _os_log_impl(&_mh_execute_header, v14, v15, "Application of repair rule '%s' succeeded", v17, 0xCu);
      sub_100005E9C(v18);

LABEL_15:

      goto LABEL_16;
    }

LABEL_21:
    v27 = *(v0 + 464);
    sub_10006B5BC(v27, v0 + 176);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    sub_10006B5F4(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 464);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100005C68(*(v30 + 8), *(v30 + 16), v38);
      _os_log_impl(&_mh_execute_header, v28, v29, "Application of repair rule '%s' failed", v31, 0xCu);
      sub_100005E9C(v32);
    }

    v24 = 0;
    goto LABEL_17;
  }

  v33 = *(v8 + 40);
  v34 = *(v8 + 56);
  *(v0 + 416) = v10;
  *(v0 + 424) = v9;
  *(v0 + 432) = v33;
  *(v0 + 440) = v11 & 0x3FFFFFFFFFFFFFFFLL;
  *(v0 + 448) = v34;
  v35 = *(v8 + 72);
  v36 = swift_task_alloc();
  *(v0 + 480) = v36;
  *v36 = v0;
  v36[1] = sub_100064198;
  v37 = *(v0 + 464);

  return sub_10006446C(v0 + 416, v35);
}

uint64_t sub_100064198(char a1)
{
  v2 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 89) = a1;

  return _swift_task_switch(sub_100064298, 0, 0);
}

uint64_t sub_100064298()
{
  v14 = v0;
  v1 = *(v0 + 89);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  if (v1)
  {
    sub_10006B5BC(*(v0 + 464), v0 + 256);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    sub_10006B5F4(v3);
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = *(v0 + 464);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100005C68(*(v6 + 8), *(v6 + 16), &v13);
    v9 = "Application of repair rule '%s' succeeded";
  }

  else
  {
    sub_10006B5BC(*(v0 + 464), v0 + 176);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_10006B5F4(v3);
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v10 = *(v0 + 464);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100005C68(*(v10 + 8), *(v10 + 16), &v13);
    v9 = "Application of repair rule '%s' failed";
  }

  _os_log_impl(&_mh_execute_header, v4, v5, v9, v7, 0xCu);
  sub_100005E9C(v8);

LABEL_7:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_10006446C(uint64_t a1, char a2)
{
  *(v3 + 153) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = type metadata accessor for URL.DirectoryHint();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v7 = *(*(sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0) - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v3 + 96) = v8;
  v9 = *(v8 - 8);
  *(v3 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v11 = *(*(sub_10000A0C8(&qword_1000A4AD0, &qword_100079100) - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v12 = sub_10000A0C8(&qword_1000A4AD8, &qword_100079108);
  *(v3 + 128) = v12;
  v13 = *(v12 - 8);
  *(v3 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100064664, 0, 0);
}

uint64_t sub_100064664()
{
  v1 = v0;
  *(v0 + 152) = 1;
  v2 = v0 + 152;
  v3 = *(v2 - 32);
  v4 = *(v2 - 104);
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);

  Regex<A>.init(_:)();
  v7 = *(v1 + 144);
  v8 = *(v1 + 120);
  v9 = *(v1 + 128);
  v10 = *(v1 + 104);
  v33 = *(v1 + 96);
  v24 = *(v1 + 88);
  v11 = *(v1 + 72);
  v27 = *(v1 + 80);
  v28 = *(v1 + 64);
  v29 = *(v1 + 112);
  v31 = *(v1 + 153);
  v12 = *(v1 + 48);
  v30 = *(v1 + 56);
  v32 = *(v1 + 136);
  (*(v32 + 56))(v8, 0, 1, v9);
  (*(v32 + 32))(v7, v8, v9);
  v26 = *(v12 + 16);
  v25 = *(v12 + 24);
  v14 = *v12;
  v13 = *(v12 + 8);
  (*(v10 + 56))(v24, 1, 1, v33);
  (*(v11 + 104))(v27, enum case for URL.DirectoryHint.inferFromPath(_:), v28);

  URL.init(filePath:directoryHint:relativeTo:)();
  v15 = swift_task_alloc();
  *(v15 + 16) = v26;
  *(v15 + 24) = v25;
  *(v15 + 32) = v29;
  *(v15 + 40) = v7;
  *(v15 + 48) = v30;
  *(v15 + 56) = v31;
  *(v15 + 64) = v2;
  sub_10002FE64(v14, v13, sub_10006C090);

  v16 = *(v1 + 152);
  (*(v10 + 8))(v29, v33);
  (*(v32 + 8))(v7, v9);
  v17 = *(v1 + 144);
  v18 = *(v1 + 112);
  v19 = *(v1 + 120);
  v21 = *(v1 + 80);
  v20 = *(v1 + 88);

  v22 = *(v1 + 8);

  return v22(v16);
}

uint64_t sub_100064A68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, _BYTE *a10)
{
  v50 = a4;
  v51 = a7;
  v49 = a6;
  LODWORD(v55) = a5;
  v13 = sub_10000A0C8(&qword_1000A4AD8, &qword_100079108);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  v17 = sub_10000A0C8(&qword_1000A4AE0, &qword_100079110);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v54 = &v46 - v19;
  v20 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v46 - v22;
  v24 = type metadata accessor for URL.DirectoryHint();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for URL();
  v30 = *(*(v29 - 8) + 64);
  result = __chkstk_darwin(v29);
  v34 = &v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v35 = result;
    v36 = v24;
    v37 = v32;
    (*(v25 + 104))(v28, enum case for URL.DirectoryHint.notDirectory(_:), v36);
    v47 = v37;
    v48 = v35;
    (*(v37 + 56))(v23, 1, 1, v35);

    URL.init(filePath:directoryHint:relativeTo:)();
    URL.lastPathComponent.getter();
    if ((v55 & 1) == 0)
    {
      v38 = *(URL.pathComponents.getter() + 16);

      v39 = *(URL.pathComponents.getter() + 16);

      if (v38 - v39 > v50)
      {
        (*(v47 + 8))(v34, v48);
      }
    }

    v55 = a2;
    sub_100059EE0(&qword_1000A4AE8, &qword_1000A4AD8, &qword_100079108);
    v40 = v53;
    dispatch thunk of RegexComponent.regex.getter();
    String.subscript.getter();

    v41 = v54;
    v42 = v56;
    Regex.wholeMatch(in:)();
    if (v42)
    {

      (*(v52 + 8))(v16, v40);
      v43 = sub_10000A0C8(&qword_1000A4AF0, &qword_100079118);
      (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
LABEL_8:
      (*(v47 + 8))(v34, v48);
      return sub_100002CF0(v41, &qword_1000A4AE0, &qword_100079110);
    }

    (*(v52 + 8))(v16, v40);

    v44 = sub_10000A0C8(&qword_1000A4AF0, &qword_100079118);
    if ((*(*(v44 - 8) + 48))(v41, 1, v44) == 1)
    {
      goto LABEL_8;
    }

    sub_100002CF0(v41, &qword_1000A4AE0, &qword_100079110);
    v45 = sub_10006B728(a1, v55, a9);
    result = (*(v47 + 8))(v34, v48);
    if ((v45 & 1) == 0)
    {
      *a10 = 0;
    }
  }

  return result;
}

uint64_t sub_10006500C(void *a1)
{
  v3 = v1;
  v5 = sub_10000A0C8(&qword_1000A4B48, &qword_100079590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10006C624();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 1);
    v14 = *(v3 + 2);
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 40);
    v18 = *(v3 + 24);
    v19 = v15;
    v20 = *(v3 + 56);
    v17 = 2;
    sub_10006C678();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = v3[72];
    v17 = 3;
    sub_10002AC9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100065238()
{
  Hasher._combine(_:)(*v0 & 1);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  String.hash(into:)();
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 48);
  if (!(v5 >> 62))
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (v5 >> 62 == 1)
  {
    v6 = 1;
LABEL_5:
    Hasher._combine(_:)(v6);
    goto LABEL_9;
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  Hasher._combine(_:)(2uLL);
  String.hash(into:)();
  if (v5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v7);
  }

LABEL_9:
  String.hash(into:)();
  v10 = *(v0 + 72);

  return sub_10003173C();
}

uint64_t sub_10006532C()
{
  v1 = 0x64656C62616E65;
  v2 = 0x746567726174;
  if (*v0 != 2)
  {
    v2 = 0x69746365746F7270;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000653A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006BA04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000653DC(uint64_t a1)
{
  v2 = sub_10006C624();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100065418(uint64_t a1)
{
  v2 = sub_10006C624();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10006546C()
{
  Hasher.init(_seed:)();
  sub_100065238();
  return Hasher._finalize()();
}

Swift::Int sub_1000654B0()
{
  Hasher.init(_seed:)();
  sub_100065238();
  return Hasher._finalize()();
}

uint64_t sub_1000654EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10006A6AC(v7, v9) & 1;
}

uint64_t sub_100065548(void *a1)
{
  v3 = v1;
  v5 = sub_10000A0C8(&qword_1000A4BA8, &qword_1000795B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10006C870();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v18[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000656EC()
{
  v1 = 0x687470654478616DLL;
  if (*v0 != 1)
  {
    v1 = 0x7865676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_10006573C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006BB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100065764(uint64_t a1)
{
  v2 = sub_10006C870();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000657A0(uint64_t a1)
{
  v2 = sub_10006C870();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000657F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000658A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
  }

  return String.hash(into:)();
}

Swift::Int sub_10006592C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000659D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100065AB8(void *a1)
{
  v2 = v1;
  v4 = sub_10000A0C8(&qword_1000A4B60, &qword_100079598);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v36 = &v32 - v6;
  v7 = sub_10000A0C8(&qword_1000A4B68, &qword_1000795A0);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_10000A0C8(&qword_1000A4B70, &qword_1000795A8);
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v39 = sub_10000A0C8(&qword_1000A4B78, &qword_1000795B0);
  v15 = *(v39 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v39);
  v18 = &v32 - v17;
  v19 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10006C6CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v2;
  v20 = v2[1];
  v22 = v2[3];
  if (v22 >> 62)
  {
    if (v22 >> 62 == 1)
    {
      LOBYTE(v40) = 1;
      sub_10006C7C8();
      v23 = v39;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v35;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v34 + 8))(v10, v24);
    }

    else
    {
      v27 = v2[5];
      v34 = v2[4];
      v35 = v27;
      v28 = v2[2];
      v29 = v22 & 0x3FFFFFFFFFFFFFFFLL;
      LOBYTE(v40) = 2;
      sub_10006C720();
      v30 = v36;
      v23 = v39;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = v21;
      v41 = v20;
      v42 = v28;
      v43 = v29;
      v44 = v34;
      v45 = v35;
      sub_10006C774();
      v31 = v38;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v37 + 8))(v30, v31);
    }

    return (*(v15 + 8))(v18, v23);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_10006C81C();
    v25 = v39;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v33 + 8))(v14, v11);
    return (*(v15 + 8))(v18, v25);
  }
}

Swift::Int sub_100065EFC()
{
  Hasher.init(_seed:)();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  if (!(v3 >> 62))
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 >> 62 == 1)
  {
    v4 = 1;
LABEL_5:
    Hasher._combine(_:)(v4);
    goto LABEL_9;
  }

  v5 = v0[2];
  v6 = v0[4];
  v7 = v0[5];
  Hasher._combine(_:)(2uLL);
  String.hash(into:)();
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

LABEL_9:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100065FE8()
{
  v1 = 0x726F746365726964;
  if (*v0 != 1)
  {
    v1 = 0x6E726574746170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_100066040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006BC80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100066068(uint64_t a1)
{
  v2 = sub_10006C6CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000660A4(uint64_t a1)
{
  v2 = sub_10006C6CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000660EC(uint64_t a1)
{
  v2 = sub_10006C7C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066128(uint64_t a1)
{
  v2 = sub_10006C7C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066164(uint64_t a1)
{
  v2 = sub_10006C81C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000661A0(uint64_t a1)
{
  v2 = sub_10006C81C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000661DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10006625C(uint64_t a1)
{
  v2 = sub_10006C720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066298(uint64_t a1)
{
  v2 = sub_10006C720();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000662F0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  if (!(v3 >> 62))
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 >> 62 == 1)
  {
    v4 = 1;
LABEL_5:
    Hasher._combine(_:)(v4);
    goto LABEL_9;
  }

  v5 = v0[2];
  v6 = v0[4];
  v7 = v0[5];
  Hasher._combine(_:)(2uLL);
  String.hash(into:)();
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

LABEL_9:

  return String.hash(into:)();
}

Swift::Int sub_1000663CC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  if (!(v4 >> 62))
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (v4 >> 62 == 1)
  {
    v7 = 1;
LABEL_5:
    Hasher._combine(_:)(v7);
    goto LABEL_9;
  }

  Hasher._combine(_:)(2uLL);
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
  }

LABEL_9:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000664A8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_10006A890(v7, v8) & 1;
}

uint64_t sub_1000664F0(uint64_t a1)
{
  v2 = type metadata accessor for SHA384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006C140(&qword_1000A4B18, &type metadata accessor for SHA384);
  dispatch thunk of HashFunction.init()();
  v7 = type metadata accessor for PropertyListEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v14[1] = a1;
  sub_10006C188();
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v12 = v11;
  sub_100011FAC(v10, v11);
  sub_100068068(v10, v12);
  sub_10000B068(v10, v12);
  sub_10000B068(v10, v12);
  dispatch thunk of HashFunction.finalize()();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000666D8()
{
  v1 = type metadata accessor for SHA384Digest();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  (*(v4 + 16))(&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  sub_10006C140(&qword_1000A4AF8, &type metadata accessor for SHA384Digest);
  result = dispatch thunk of Sequence.makeIterator()();
  v6 = v21;
  v7 = v22;
  v8 = v21[2];
  v9 = &_swiftEmptyArrayStorage;
  if (v22 == v8)
  {
LABEL_2:

    v21 = v9;
    sub_10000A0C8(&qword_1000A4B08, &qword_100079128);
    sub_100059EE0(&qword_1000A4B10, &qword_1000A4B08, &qword_100079128);
    v10 = BidirectionalCollection<>.joined(separator:)();

    return v10;
  }

  else
  {
    v20 = xmmword_100076380;
    v11 = v22;
    while ((v7 & 0x8000000000000000) == 0)
    {
      if (v11 >= v6[2])
      {
        goto LABEL_13;
      }

      v12 = *(v6 + v11 + 32);
      sub_10000A0C8(&qword_1000A4B00, &qword_100079120);
      v13 = swift_allocObject();
      *(v13 + 16) = v20;
      *(v13 + 56) = &type metadata for UInt8;
      *(v13 + 64) = &protocol witness table for UInt8;
      *(v13 + 32) = v12;
      v14 = String.init(format:_:)();
      v16 = v15;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10002834C(0, v9[2] + 1, 1, v9);
        v9 = result;
      }

      v18 = v9[2];
      v17 = v9[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10002834C((v17 > 1), v18 + 1, 1, v9);
        v9 = result;
      }

      ++v11;
      v9[2] = v18 + 1;
      v19 = &v9[2 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      if (v8 == v11)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006699C(void *a1, uint64_t a2)
{
  v5 = sub_10000A0C8(&qword_1000A4A90, &qword_1000790D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10006B36C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  sub_10006B3C0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = a2;
    v12[15] = 1;
    sub_10000A0C8(&qword_1000A4AA8, &qword_1000790D8);
    sub_10006B414();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100066B34()
{
  if (*v0)
  {
    result = 0x73656C7572;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_100066B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100066C44(uint64_t a1)
{
  v2 = sub_10006B36C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066C80(uint64_t a1)
{
  v2 = sub_10006B36C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100066CD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  sub_10006A404(v3, v1);
  return Hasher._finalize()();
}

void sub_100066D2C(uint64_t a1)
{
  v3 = *v1;
  Hasher._combine(_:)(1uLL);

  sub_10006A404(a1, v3);
}

Swift::Int sub_100066D7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  sub_10006A404(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_100066DCC@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;

  sub_100068550(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_100066E58()
{
  v1 = sub_10006BDA0(*v0);

  return v1;
}

Swift::Int sub_100066F40(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100066FB8(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

Swift::Int RapidRepair.Error.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10006707C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  if (v6 >> 62)
  {
    if (v6 >> 62 != 1)
    {
      v13 = a2[2];
      v15 = a2[4];
      v14 = a2[5];
      v17 = a1[4];
      v16 = a1[5];
      v18 = a1[2];
      v20[0] = v4;
      v20[1] = v5;
      v20[2] = v18;
      v21 = v6 & 1;
      v22 = v17;
      v23 = v16;
      if (v9 >> 62 != 2)
      {
        v10 = 3;
        goto LABEL_18;
      }

      v24[0] = v7;
      v24[1] = v8;
      v24[2] = v13;
      v25 = v9 & 1;
      v26 = v15;
      v27 = v14;
      v19 = sub_10006A9D8(v20, v24);
      return v19 & 1;
    }

    if (v9 >> 62 != 1)
    {
      v10 = 2;
LABEL_18:
      v19 = v10 <= v9 >> 62;
      return v19 & 1;
    }
  }

  else if (v9 >> 62)
  {
    v10 = 1;
    goto LABEL_18;
  }

  if (v4 == v7 && v5 == v8)
  {
    v19 = 0;
    return v19 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_100067180(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  if (!(v9 >> 62))
  {
    if (v6 >> 62)
    {
      v10 = 1;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (v9 >> 62 == 1)
  {
    if (v6 >> 62 != 1)
    {
      v10 = 2;
LABEL_16:
      v12 = v10 <= v6 >> 62;
      return (v12 & 1) == 0;
    }

LABEL_6:
    if (v7 == v4 && v8 == v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return (v12 & 1) == 0;
  }

  v13 = a1[2];
  v15 = a1[4];
  v14 = a1[5];
  v17 = a2[4];
  v16 = a2[5];
  v18 = a2[2];
  v20[0] = v7;
  v20[1] = v8;
  v20[2] = v18;
  v21 = v9 & 1;
  v22 = v17;
  v23 = v16;
  if (v6 >> 62 != 2)
  {
    v10 = 3;
    goto LABEL_16;
  }

  v24[0] = v4;
  v24[1] = v5;
  v24[2] = v13;
  v25 = v6 & 1;
  v26 = v15;
  v27 = v14;
  v12 = sub_10006A9D8(v20, v24);
  return (v12 & 1) == 0;
}

BOOL sub_100067270(uint64_t a1, uint64_t *a2)
{
  if (*a2 != *a1 || a2[1] != *(a1 + 8))
  {
    v5 = *a2;
    v6 = a2[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (a2[3])
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      v9 = 0x8000000000000000;
LABEL_16:
      v10 = v9 < v7;
      return (v10 & 1) == 0;
    }
  }

  else
  {
    v9 = a2[2];
    if (*(a1 + 24))
    {
      v7 = 0x8000000000000000;
      goto LABEL_16;
    }

    if (v9 != v7)
    {
      goto LABEL_16;
    }
  }

  if (a2[4] != *(a1 + 32) || a2[5] != *(a1 + 40))
  {
LABEL_17:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    return (v10 & 1) == 0;
  }

  v10 = 0;
  return (v10 & 1) == 0;
}

BOOL sub_100067358(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  if (!(v6 >> 62))
  {
    if (v9 >> 62)
    {
      v10 = 1;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (v6 >> 62 == 1)
  {
    if (v9 >> 62 != 1)
    {
      v10 = 2;
LABEL_16:
      v12 = v10 <= v9 >> 62;
      return (v12 & 1) == 0;
    }

LABEL_6:
    if (v4 == v7 && v5 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return (v12 & 1) == 0;
  }

  v13 = a2[2];
  v15 = a2[4];
  v14 = a2[5];
  v17 = a1[4];
  v16 = a1[5];
  v18 = a1[2];
  v20[0] = v4;
  v20[1] = v5;
  v20[2] = v18;
  v21 = v6 & 1;
  v22 = v17;
  v23 = v16;
  if (v9 >> 62 != 2)
  {
    v10 = 3;
    goto LABEL_16;
  }

  v24[0] = v7;
  v24[1] = v8;
  v24[2] = v13;
  v25 = v9 & 1;
  v26 = v15;
  v27 = v14;
  v12 = sub_10006A9D8(v20, v24);
  return (v12 & 1) == 0;
}

BOOL sub_10006744C(uint64_t *a1, uint64_t a2)
{
  if (*a1 != *a2 || a1[1] != *(a2 + 8))
  {
    v5 = *a1;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (a1[3])
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      v8 = 0x8000000000000000;
LABEL_16:
      v9 = v8 < v6;
      return (v9 & 1) == 0;
    }
  }

  else
  {
    v8 = a1[2];
    if (*(a2 + 24))
    {
      v6 = 0x8000000000000000;
      goto LABEL_16;
    }

    if (v8 != v6)
    {
      goto LABEL_16;
    }
  }

  if (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40))
  {
LABEL_17:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    return (v9 & 1) == 0;
  }

  v9 = 0;
  return (v9 & 1) == 0;
}

uint64_t sub_100067534(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  if (v9 >> 62)
  {
    if (v9 >> 62 != 1)
    {
      v13 = a1[2];
      v15 = a1[4];
      v14 = a1[5];
      v17 = a2[4];
      v16 = a2[5];
      v18 = a2[2];
      v20[0] = v7;
      v20[1] = v8;
      v20[2] = v18;
      v21 = v9 & 1;
      v22 = v17;
      v23 = v16;
      if (v6 >> 62 != 2)
      {
        v10 = 3;
        goto LABEL_18;
      }

      v24[0] = v4;
      v24[1] = v5;
      v24[2] = v13;
      v25 = v6 & 1;
      v26 = v15;
      v27 = v14;
      v19 = sub_10006A9D8(v20, v24);
      return v19 & 1;
    }

    if (v6 >> 62 != 1)
    {
      v10 = 2;
LABEL_18:
      v19 = v10 <= v6 >> 62;
      return v19 & 1;
    }
  }

  else if (v6 >> 62)
  {
    v10 = 1;
    goto LABEL_18;
  }

  if (v7 == v4 && v8 == v5)
  {
    v19 = 0;
    return v19 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100067634(uint64_t a1, uint64_t *a2)
{
  v4 = *a2 == *a1 && a2[1] == *(a1 + 8);
  if (v4 || (v5 = *a2, v6 = a2[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    if (a2[3])
    {
      if ((*(a1 + 24) & 1) == 0)
      {
        v9 = 0x8000000000000000;
        return v9 < v7;
      }
    }

    else
    {
      v9 = a2[2];
      if (*(a1 + 24))
      {
        v7 = 0x8000000000000000;
        return v9 < v7;
      }

      if (v9 != v7)
      {
        return v9 < v7;
      }
    }

    if (a2[4] == *(a1 + 32) && a2[5] == *(a1 + 40))
    {
      return 0;
    }
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100067730(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_10006A9D8(v7, v8) & 1;
}

BOOL sub_100067778(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100067270(v7, v8);
}

BOOL sub_1000677C0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_10006744C(v7, v8);
}

uint64_t sub_100067808(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100067634(v7, v8) & 1;
}

uint64_t sub_100067850(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10006AAD4(v7, v9) & 1;
}

BOOL sub_1000678AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v10[0] = v2;
  *(v10 + 9) = *(a1 + 57);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v8[0] = v4;
  *(v8 + 9) = *(a2 + 57);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return (sub_10006AAD4(v7, v9) & 1) == 0;
}

BOOL sub_10006790C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return (sub_10006AAD4(v7, v9) & 1) == 0;
}

uint64_t sub_10006796C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v10[0] = v2;
  *(v10 + 9) = *(a1 + 57);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v8[0] = v4;
  *(v8 + 9) = *(a2 + 57);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return sub_10006AAD4(v7, v9) & 1;
}

uint64_t sub_1000679C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v32 = *(a1 + 32);
    *v33 = v3;
    v4 = *(a1 + 80);
    *&v33[16] = *(a1 + 64);
    *v34 = v4;
    *&v34[9] = *(a1 + 89);
    v5 = *(a2 + 80);
    *&v36[16] = *(a2 + 64);
    *v37 = v5;
    *&v37[9] = *(a2 + 89);
    v6 = *(a2 + 48);
    v35 = *(a2 + 32);
    *v36 = v6;
    if (v32 != v35)
    {
      return 0;
    }

    v8 = (a2 + 112);
    v9 = (a1 + 112);
    while (1)
    {
      v10 = *(&v32 + 1) == *(&v35 + 1) && *v33 == *v36;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v11 = v34[0];
      v12 = v37[0];
      if (!(*v34 >> 62))
      {
        break;
      }

      if (*v34 >> 62 == 1)
      {
        if (*v37 >> 62 != 1)
        {
          return 0;
        }

        goto LABEL_17;
      }

      if (*v37 >> 62 != 2)
      {
        return 0;
      }

      v13 = *&v33[24];
      v14 = *&v34[8];
      v15 = *&v34[16];
      v16 = *&v36[24];
      v18 = *&v37[8];
      v17 = *&v37[16];
      if (*&v33[8] != *&v36[8])
      {
        v30 = *&v34[8];
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v14 = v30;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      if (v11)
      {
        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v12 & 1) != 0 || v13 != v16)
      {
        return 0;
      }

      if (v14 != v18 || v15 != v17)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (v34[24] <= 3u)
      {
        if (v34[24] > 1u)
        {
          v20 = 0xE600000000000000;
          if (v34[24] == 2)
          {
            v21 = 0x427373616C63;
          }

          else
          {
            v21 = 0x437373616C63;
          }
        }

        else
        {
          v21 = 0x7269447373616C63;
          v20 = 0xEC000000656E6F4ELL;
          if (v34[24])
          {
            v20 = 0xE600000000000000;
            v21 = 0x417373616C63;
          }
        }
      }

      else if (v34[24] <= 5u)
      {
        v20 = 0xE600000000000000;
        if (v34[24] == 4)
        {
          v21 = 0x447373616C63;
        }

        else
        {
          v21 = 0x457373616C63;
        }
      }

      else if (v34[24] == 6)
      {
        v20 = 0xE600000000000000;
        v21 = 0x467373616C63;
      }

      else if (v34[24] == 7)
      {
        v20 = 0xE700000000000000;
        v21 = 0x58437373616C63;
      }

      else
      {
        v21 = 0x6365746F72506F6ELL;
        v20 = 0xEC0000006E6F6974;
      }

      if (v37[24] <= 3u)
      {
        if (v37[24] > 1u)
        {
          v22 = 0xE600000000000000;
          if (v37[24] == 2)
          {
            if (v21 != 0x427373616C63)
            {
              goto LABEL_71;
            }
          }

          else if (v21 != 0x437373616C63)
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

        v23 = 0x7269447373616C63;
        v22 = 0xEC000000656E6F4ELL;
        if (v37[24])
        {
          v22 = 0xE600000000000000;
          if (v21 != 0x417373616C63)
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v37[24] > 5u)
      {
        if (v37[24] == 6)
        {
          v22 = 0xE600000000000000;
          if (v21 != 0x467373616C63)
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

        if (v37[24] == 7)
        {
          v22 = 0xE700000000000000;
          if (v21 != 0x58437373616C63)
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

        v23 = 0x6365746F72506F6ELL;
        v22 = 0xEC0000006E6F6974;
LABEL_67:
        if (v21 != v23)
        {
          goto LABEL_71;
        }

        goto LABEL_68;
      }

      v22 = 0xE600000000000000;
      if (v37[24] == 4)
      {
        if (v21 != 0x447373616C63)
        {
          goto LABEL_71;
        }
      }

      else if (v21 != 0x457373616C63)
      {
LABEL_71:
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10006B5BC(&v32, v31);
        sub_10006B5BC(&v35, v31);

        sub_10006B5F4(&v35);
        sub_10006B5F4(&v32);
        if ((v24 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_72;
      }

LABEL_68:
      if (v20 != v22)
      {
        goto LABEL_71;
      }

      sub_10006B5BC(&v32, v31);
      sub_10006B5BC(&v35, v31);

      sub_10006B5F4(&v35);
      sub_10006B5F4(&v32);
LABEL_72:
      if (!--v2)
      {
        return 1;
      }

      v25 = v9[1];
      v32 = *v9;
      *v33 = v25;
      v26 = v9[3];
      *&v33[16] = v9[2];
      *v34 = v26;
      *&v34[9] = *(v9 + 57);
      v27 = v8[3];
      *&v36[16] = v8[2];
      *v37 = v27;
      *&v37[9] = *(v8 + 57);
      v29 = *v8;
      v28 = v8[1];
      v8 += 5;
      v9 += 5;
      v35 = v29;
      *v36 = v28;
      if (v32 != v29)
      {
        return 0;
      }
    }

    if (*v37 >> 62)
    {
      return 0;
    }

LABEL_17:
    if (*&v33[8] == *&v36[8])
    {
      goto LABEL_30;
    }

LABEL_29:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_30;
  }

  return 1;
}

uint64_t sub_100067E94(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100067F08(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100005C68(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100067F64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A0C8(&qword_1000A4AC8, &qword_100079CE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_100068058(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100068068(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA384();
      sub_10006C140(&qword_1000A4B18, &type metadata accessor for SHA384);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100068248(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100068248(v4, v5);
  }

  type metadata accessor for SHA384();
  sub_10006C140(&qword_1000A4B18, &type metadata accessor for SHA384);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100068248(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA384();
      sub_10006C140(&qword_1000A4B18, &type metadata accessor for SHA384);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100068328(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A0C8(&qword_1000A4AC0, &qword_1000790E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100068444(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A0C8(&qword_1000A2B50, &qword_100075A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_100068550(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10006A698(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000685BC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000685BC(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100068D38(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1000686B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000686B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 80 * a3);
    v6 = result - a3 + 1;
    v33 = *a4;
LABEL_6:
    v53 = a3;
    v41 = v6;
    v42 = v5;
    while (1)
    {
      *v47 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      *&v48[9] = *(v5 + 57);
      *&v47[32] = v8;
      *v48 = v9;
      *&v47[16] = v7;
      v11 = *(v5 - 3);
      v10 = *(v5 - 2);
      v12 = *(v5 - 4);
      *&v52[9] = *(v5 - 23);
      v51 = v11;
      *v52 = v10;
      v50 = v12;
      v49 = *(v5 - 5);
      if (v47[0] != v49)
      {
        if ((v49 & (v47[0] ^ 1) & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_96;
      }

      if (*&v47[8] != __PAIR128__(v50, *(&v49 + 1)))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v13 = v48[0];
      v14 = v52[0];
      if (!(*v48 >> 62))
      {
        if (*v52 >> 62)
        {
          v16 = 1;
          goto LABEL_36;
        }

LABEL_17:
        if (*&v47[24] != __PAIR128__(v51, *(&v50 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_55:
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_96;
        }

LABEL_42:
        if (v48[24] <= 3u)
        {
          if (v48[24] > 1u)
          {
            v20 = 0xE600000000000000;
            if (v48[24] == 2)
            {
              v21 = 0x427373616C63;
            }

            else
            {
              v21 = 0x437373616C63;
            }
          }

          else
          {
            v21 = 0x7269447373616C63;
            v20 = 0xEC000000656E6F4ELL;
            if (v48[24])
            {
              v20 = 0xE600000000000000;
              v21 = 0x417373616C63;
            }
          }
        }

        else if (v48[24] <= 5u)
        {
          v20 = 0xE600000000000000;
          if (v48[24] == 4)
          {
            v21 = 0x447373616C63;
          }

          else
          {
            v21 = 0x457373616C63;
          }
        }

        else if (v48[24] == 6)
        {
          v20 = 0xE600000000000000;
          v21 = 0x467373616C63;
        }

        else if (v48[24] == 7)
        {
          v20 = 0xE700000000000000;
          v21 = 0x58437373616C63;
        }

        else
        {
          v21 = 0x6365746F72506F6ELL;
          v20 = 0xEC0000006E6F6974;
        }

        if (v52[24] <= 3u)
        {
          if (v52[24] > 1u)
          {
            v23 = 0xE600000000000000;
            if (v52[24] == 2)
            {
              if (v21 == 0x427373616C63)
              {
                goto LABEL_94;
              }
            }

            else if (v21 == 0x437373616C63)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v24 = 0x7269447373616C63;
            v23 = 0xEC000000656E6F4ELL;
            if (!v52[24])
            {
              goto LABEL_93;
            }

            v23 = 0xE600000000000000;
            if (v21 == 0x417373616C63)
            {
              goto LABEL_94;
            }
          }
        }

        else if (v52[24] <= 5u)
        {
          v23 = 0xE600000000000000;
          if (v52[24] == 4)
          {
            if (v21 == 0x447373616C63)
            {
              goto LABEL_94;
            }
          }

          else if (v21 == 0x457373616C63)
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (v52[24] != 6)
          {
            if (v52[24] == 7)
            {
              v23 = 0xE700000000000000;
              if (v21 != 0x58437373616C63)
              {
                goto LABEL_95;
              }

LABEL_94:
              if (v20 == v23)
              {
                sub_10006B5BC(v47, &v43);
                sub_10006B5BC(&v49, &v43);

                sub_10006B5F4(&v49);
                result = sub_10006B5F4(v47);
LABEL_5:
                a3 = v53 + 1;
                v5 = v42 + 5;
                v6 = v41 - 1;
                if (v53 + 1 == a2)
                {
                  return result;
                }

                goto LABEL_6;
              }

              goto LABEL_95;
            }

            v24 = 0x6365746F72506F6ELL;
            v23 = 0xEC0000006E6F6974;
LABEL_93:
            if (v21 != v24)
            {
              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v23 = 0xE600000000000000;
          if (v21 == 0x467373616C63)
          {
            goto LABEL_94;
          }
        }

LABEL_95:
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10006B5BC(v47, &v43);
        sub_10006B5BC(&v49, &v43);

        sub_10006B5F4(&v49);
        result = sub_10006B5F4(v47);
        if ((v25 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_96;
      }

      v15 = *v52 >> 62;
      if (*v48 >> 62 == 1)
      {
        if (v15 != 1)
        {
          v16 = 2;
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      if (v15 != 2)
      {
        v16 = 3;
LABEL_36:
        if (v16 > *v52 >> 62)
        {
          goto LABEL_5;
        }

        goto LABEL_96;
      }

      v37 = *&v48[16];
      v38 = *(&v51 + 1);
      v39 = *&v52[8];
      v40 = *&v48[8];
      v35 = *&v47[40];
      v36 = *&v52[16];
      v17 = *&v47[24] == *(&v50 + 1) && *&v47[32] == v51;
      v18 = v17;
      if (!v17)
      {
        v19 = v18;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v19;
        v4 = v33;
        if ((result & 1) == 0)
        {
LABEL_51:
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_52;
        }
      }

      if (v13)
      {
        if ((v14 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (v14 & 1 | (v35 != v38))
      {
        goto LABEL_50;
      }

      if (v40 == v39 && v37 == v36)
      {
        goto LABEL_42;
      }

      v32 = v18;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v32;
      if (result)
      {
        goto LABEL_42;
      }

LABEL_50:
      if ((v18 & 1) == 0)
      {
        goto LABEL_51;
      }

LABEL_52:
      if (v13)
      {
        if (v14)
        {
          goto LABEL_63;
        }

        v22 = 0x8000000000000000;
      }

      else
      {
        if (v14)
        {
          goto LABEL_5;
        }

        v22 = v35;
        if (v35 == v38)
        {
LABEL_63:
          if (v40 == v39 && v37 == v36)
          {
            goto LABEL_5;
          }

LABEL_20:
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_96;
        }
      }

      if (v22 >= v38)
      {
        goto LABEL_5;
      }

LABEL_96:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v26 = v5 - 5;
      v44 = v5[1];
      v45 = v5[2];
      v46[0] = v5[3];
      *(v46 + 9) = *(v5 + 57);
      v43 = *v5;
      v27 = *(v5 - 2);
      v5[2] = *(v5 - 3);
      v5[3] = v27;
      v5[4] = *(v5 - 1);
      v28 = *(v5 - 4);
      *v5 = *(v5 - 5);
      v5[1] = v28;
      *v26 = v43;
      v29 = v44;
      v30 = v45;
      v31 = v46[0];
      *(v26 + 57) = *(v46 + 9);
      v26[2] = v30;
      v26[3] = v31;
      v26[1] = v29;
      if (!v6)
      {
        goto LABEL_5;
      }

      ++v6;
      v5 -= 5;
    }
  }

  return result;
}

uint64_t sub_100068D38(int64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    result = &_swiftEmptyArrayStorage;
LABEL_278:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_317;
    }

    v4 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_311:
      result = sub_10006A2FC(v4);
    }

    v156 = result;
    v116 = *(result + 16);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v4 = v116 - 1;
        v117 = *(result + 16 * v116);
        v118 = result;
        v119 = *(result + 16 * (v116 - 1) + 40);
        v120 = v161;
        sub_100069F64((*a3 + 80 * v117), (*a3 + 80 * *(result + 16 * (v116 - 1) + 32)), (*a3 + 80 * v119), v6);
        v161 = v120;
        if (v120)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_304;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_10006A2FC(v118);
        }

        if (v116 - 2 >= *(v118 + 2))
        {
          goto LABEL_305;
        }

        v121 = &v118[16 * v116];
        *v121 = v117;
        *(v121 + 1) = v119;
        v156 = v118;
        sub_10006A270(v4);
        result = v156;
        v116 = *(v156 + 16);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_315;
    }
  }

  v6 = 0;
  result = &_swiftEmptyArrayStorage;
LABEL_4:
  v8 = v6;
  v9 = v6 + 1;
  v130 = result;
  if (v6 + 1 >= v5)
  {
    v37 = a4;
    goto LABEL_116;
  }

  v4 = *a3;
  v10 = (*a3 + 80 * v9);
  v157[0] = *v10;
  v12 = v10[2];
  v11 = v10[3];
  v13 = v10[1];
  *(v158 + 9) = *(v10 + 57);
  v157[2] = v12;
  v158[0] = v11;
  v157[1] = v13;
  v14 = (v4 + 80 * v6);
  v16 = v14[2];
  v15 = v14[3];
  v17 = v14[1];
  *&v160[9] = *(v14 + 57);
  v159[2] = v16;
  *v160 = v15;
  v159[1] = v17;
  v159[0] = *v14;
  sub_10006B5BC(v157, v154);
  sub_10006B5BC(v159, v154);
  v18 = sub_10006AAD4(v157, v159);
  sub_10006B5F4(v159);
  sub_10006B5F4(v157);
  v9 = v6 + 2;
  v122 = v6;
  if (v6 + 2 < v5)
  {
    v19 = (v4 + 80 * v6 + 160);
    result = v130;
    v145 = v5;
    v143 = v18;
    while (1)
    {
      *v152 = *v19;
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      *&v153[9] = *(v19 + 57);
      *&v152[32] = v21;
      *v153 = v22;
      *&v152[16] = v20;
      v24 = *(v19 - 3);
      v23 = *(v19 - 2);
      v25 = *(v19 - 4);
      *&v155[9] = *(v19 - 23);
      *&v154[32] = v24;
      *v155 = v23;
      *&v154[16] = v25;
      *v154 = *(v19 - 5);
      if (v152[0] == v154[0])
      {
        break;
      }

      if ((v18 ^ v154[0] & (v152[0] ^ 1)))
      {
        goto LABEL_106;
      }

LABEL_94:
      v19 += 5;
      if (v5 == ++v9)
      {
        v9 = v5;
        v8 = v122;
        v37 = a4;
        if (v18)
        {
          goto LABEL_107;
        }

        goto LABEL_116;
      }
    }

    v4 = *&v152[8];
    v6 = *&v154[8];
    if (*&v152[8] != *&v154[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_20:
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = v130;
      if ((v18 ^ v28))
      {
        goto LABEL_106;
      }

      goto LABEL_94;
    }

    v6 = *v153;
    v4 = *v155;
    v26 = *v155 >> 62;
    if (!(*v153 >> 62))
    {
      if (v26)
      {
        v27 = 1;
        goto LABEL_36;
      }

      goto LABEL_17;
    }

    if (*v153 >> 62 == 1)
    {
      if (v26 != 1)
      {
        v27 = 2;
        goto LABEL_36;
      }

LABEL_17:
      if (*&v152[24] == *&v154[24] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_43;
      }

LABEL_56:
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = v130;
      goto LABEL_37;
    }

    if (v26 != 2)
    {
      v27 = 3;
LABEL_36:
      result = v130;
      v31 = v27 <= *v155 >> 62;
LABEL_37:
      v5 = v145;
      v18 = v143;
      if ((v143 ^ v31))
      {
        goto LABEL_106;
      }

      goto LABEL_94;
    }

    v139 = *&v153[8];
    v141 = *&v154[40];
    v135 = *&v153[16];
    v137 = *&v155[8];
    v131 = *&v152[40];
    v133 = *&v155[16];
    v29 = *&v152[24] == *&v154[24] && *&v152[32] == *&v154[32];
    v30 = v29;
    if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_52;
    }

    if (v6)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v4 & 1 | (v131 != v141))
    {
      goto LABEL_51;
    }

    if (v139 == v137 && v135 == v133 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_43:
      if (v153[24] <= 3u)
      {
        v18 = v143;
        if (v153[24] > 1u)
        {
          v32 = 0xE600000000000000;
          if (v153[24] == 2)
          {
            v33 = 0x427373616C63;
          }

          else
          {
            v33 = 0x437373616C63;
          }
        }

        else
        {
          v33 = 0x7269447373616C63;
          v32 = 0xEC000000656E6F4ELL;
          if (v153[24])
          {
            v32 = 0xE600000000000000;
            v33 = 0x417373616C63;
          }
        }
      }

      else
      {
        v18 = v143;
        if (v153[24] <= 5u)
        {
          v32 = 0xE600000000000000;
          if (v153[24] == 4)
          {
            v33 = 0x447373616C63;
          }

          else
          {
            v33 = 0x457373616C63;
          }
        }

        else if (v153[24] == 6)
        {
          v32 = 0xE600000000000000;
          v33 = 0x467373616C63;
        }

        else if (v153[24] == 7)
        {
          v32 = 0xE700000000000000;
          v33 = 0x58437373616C63;
        }

        else
        {
          v33 = 0x6365746F72506F6ELL;
          v32 = 0xEC0000006E6F6974;
        }
      }

      if (v155[24] <= 3u)
      {
        if (v155[24] > 1u)
        {
          v4 = 0xE600000000000000;
          if (v155[24] == 2)
          {
            if (v33 == 0x427373616C63)
            {
              goto LABEL_89;
            }
          }

          else if (v33 == 0x437373616C63)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v35 = 0x7269447373616C63;
          v4 = 0xEC000000656E6F4ELL;
          if (!v155[24])
          {
            goto LABEL_88;
          }

          v4 = 0xE600000000000000;
          if (v33 == 0x417373616C63)
          {
            goto LABEL_89;
          }
        }
      }

      else if (v155[24] <= 5u)
      {
        v4 = 0xE600000000000000;
        if (v155[24] != 4)
        {
          if (v33 != 0x457373616C63)
          {
            goto LABEL_92;
          }

          goto LABEL_89;
        }

        if (v33 == 0x447373616C63)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v155[24] != 6)
        {
          if (v155[24] == 7)
          {
            v4 = 0xE700000000000000;
            if (v33 != 0x58437373616C63)
            {
              goto LABEL_92;
            }

LABEL_89:
            if (v32 != v4)
            {
              goto LABEL_92;
            }

            v36 = 0;
LABEL_93:
            sub_10006B5BC(v152, &v148);
            sub_10006B5BC(v154, &v148);

            sub_10006B5F4(v154);
            sub_10006B5F4(v152);
            result = v130;
            v5 = v145;
            if ((v18 ^ v36))
            {
              goto LABEL_106;
            }

            goto LABEL_94;
          }

          v35 = 0x6365746F72506F6ELL;
          v4 = 0xEC0000006E6F6974;
LABEL_88:
          if (v33 != v35)
          {
            goto LABEL_92;
          }

          goto LABEL_89;
        }

        v4 = 0xE600000000000000;
        if (v33 == 0x467373616C63)
        {
          goto LABEL_89;
        }
      }

LABEL_92:
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_93;
    }

LABEL_51:
    if (v30)
    {
LABEL_53:
      if (v6)
      {
        result = v130;
        v5 = v145;
        v18 = v143;
        if ((v4 & 1) == 0)
        {
          v34 = 0x8000000000000000;
          goto LABEL_101;
        }
      }

      else
      {
        result = v130;
        v5 = v145;
        v18 = v143;
        if (v4)
        {
          v141 = 0x8000000000000000;
          v34 = v131;
LABEL_101:
          if ((v18 ^ (v34 < v141)))
          {
            goto LABEL_106;
          }

          goto LABEL_94;
        }

        v34 = v131;
        if (v131 != v141)
        {
          goto LABEL_101;
        }
      }

      if (v139 == v137 && v135 == v133)
      {
        if (v18)
        {
          v8 = v122;
          v37 = a4;
          if (v9 < v122)
          {
            goto LABEL_308;
          }

          goto LABEL_108;
        }

        goto LABEL_94;
      }

      goto LABEL_20;
    }

LABEL_52:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  result = v130;
LABEL_106:
  v8 = v122;
  v37 = a4;
  if (v18)
  {
LABEL_107:
    if (v9 < v8)
    {
      goto LABEL_308;
    }

LABEL_108:
    v6 = v9;
    if (v8 < v9)
    {
      v38 = v8;
      v39 = 80 * v9 - 80;
      v40 = 80 * v38;
      v41 = v38;
      do
      {
        if (v38 != --v6)
        {
          v42 = *a3;
          if (!*a3)
          {
            goto LABEL_314;
          }

          v4 = v42 + v39;
          *&v154[16] = *(v42 + v40 + 16);
          *&v154[32] = *(v42 + v40 + 32);
          *v155 = *(v42 + v40 + 48);
          *&v155[9] = *(v42 + v40 + 57);
          *v154 = *(v42 + v40);
          memmove((v42 + v40), (v42 + v39), 0x50uLL);
          *(v4 + 16) = *&v154[16];
          *(v4 + 32) = *&v154[32];
          *(v4 + 48) = *v155;
          *(v4 + 57) = *&v155[9];
          *v4 = *v154;
          result = v130;
        }

        ++v38;
        v39 -= 80;
        v40 += 80;
      }

      while (v38 < v6);
      v8 = v41;
    }
  }

LABEL_116:
  v43 = a3[1];
  if (v9 >= v43)
  {
    goto LABEL_125;
  }

  if (__OFSUB__(v9, v8))
  {
    goto LABEL_307;
  }

  if (v9 - v8 >= v37)
  {
LABEL_125:
    if (v9 < v8)
    {
      goto LABEL_306;
    }

    goto LABEL_126;
  }

  v44 = v8 + v37;
  if (__OFADD__(v8, v37))
  {
    goto LABEL_309;
  }

  if (v44 >= v43)
  {
    v44 = a3[1];
  }

  if (v44 < v8)
  {
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  if (v9 == v44)
  {
    goto LABEL_125;
  }

  v45 = *a3;
  v46 = *a3 + 80 * v9;
  v123 = v8;
  v47 = v8 - v9 + 1;
  v126 = v44;
LABEL_177:
  v144 = v46;
  v146 = v9;
  v142 = v47;
  for (i = v46; ; i -= 5)
  {
    *v152 = *i;
    v96 = i[1];
    v97 = i[2];
    v98 = i[3];
    *&v153[9] = *(i + 57);
    *&v152[32] = v97;
    *v153 = v98;
    *&v152[16] = v96;
    v100 = *(i - 3);
    v99 = *(i - 2);
    v101 = *(i - 4);
    *&v155[9] = *(i - 23);
    *&v154[32] = v100;
    *v155 = v99;
    *&v154[16] = v101;
    *v154 = *(i - 5);
    if (v152[0] != v154[0])
    {
      if ((v154[0] & (v152[0] ^ 1) & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_267;
    }

    v4 = *&v152[8];
    v6 = *&v154[8];
    if (*&v152[8] != *&v154[8])
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    v6 = *v153;
    v4 = *v155;
    if (!(*v153 >> 62))
    {
      if (!(*v155 >> 62))
      {
        goto LABEL_188;
      }

      v103 = 1;
LABEL_207:
      if (v103 > *v155 >> 62)
      {
        goto LABEL_176;
      }

      goto LABEL_267;
    }

    v102 = *v155 >> 62;
    if (*v153 >> 62 == 1)
    {
      if (v102 != 1)
      {
        v103 = 2;
        goto LABEL_207;
      }

LABEL_188:
      if (*&v152[24] != *&v154[24] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_226:
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_176;
        }

        goto LABEL_267;
      }

LABEL_213:
      if (v153[24] <= 3u)
      {
        if (v153[24] > 1u)
        {
          v6 = 0xE600000000000000;
          if (v153[24] == 2)
          {
            v106 = 0x427373616C63;
          }

          else
          {
            v106 = 0x437373616C63;
          }
        }

        else
        {
          v106 = 0x7269447373616C63;
          v6 = 0xEC000000656E6F4ELL;
          if (v153[24])
          {
            v6 = 0xE600000000000000;
            v106 = 0x417373616C63;
          }
        }
      }

      else if (v153[24] <= 5u)
      {
        v6 = 0xE600000000000000;
        if (v153[24] == 4)
        {
          v106 = 0x447373616C63;
        }

        else
        {
          v106 = 0x457373616C63;
        }
      }

      else if (v153[24] == 6)
      {
        v6 = 0xE600000000000000;
        v106 = 0x467373616C63;
      }

      else if (v153[24] == 7)
      {
        v6 = 0xE700000000000000;
        v106 = 0x58437373616C63;
      }

      else
      {
        v106 = 0x6365746F72506F6ELL;
        v6 = 0xEC0000006E6F6974;
      }

      if (v155[24] <= 3u)
      {
        if (v155[24] > 1u)
        {
          v4 = 0xE600000000000000;
          if (v155[24] == 2)
          {
            if (v106 == 0x427373616C63)
            {
              goto LABEL_265;
            }
          }

          else if (v106 == 0x437373616C63)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v108 = 0x7269447373616C63;
          v4 = 0xEC000000656E6F4ELL;
          if (!v155[24])
          {
            goto LABEL_264;
          }

          v4 = 0xE600000000000000;
          if (v106 == 0x417373616C63)
          {
            goto LABEL_265;
          }
        }
      }

      else if (v155[24] <= 5u)
      {
        v4 = 0xE600000000000000;
        if (v155[24] == 4)
        {
          if (v106 == 0x447373616C63)
          {
            goto LABEL_265;
          }
        }

        else if (v106 == 0x457373616C63)
        {
          goto LABEL_265;
        }
      }

      else
      {
        if (v155[24] != 6)
        {
          if (v155[24] == 7)
          {
            v4 = 0xE700000000000000;
            if (v106 != 0x58437373616C63)
            {
              goto LABEL_266;
            }

LABEL_265:
            if (v6 == v4)
            {
              sub_10006B5BC(v152, &v148);
              sub_10006B5BC(v154, &v148);

              sub_10006B5F4(v154);
              result = sub_10006B5F4(v152);
LABEL_176:
              v9 = v146 + 1;
              v46 = v144 + 80;
              v47 = v142 - 1;
              if (v146 + 1 == v126)
              {
                v9 = v126;
                v8 = v123;
                if (v126 < v123)
                {
                  goto LABEL_306;
                }

LABEL_126:
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  result = v130;
                }

                else
                {
                  result = sub_100028248(0, *(v130 + 16) + 1, 1, v130);
                }

                v4 = *(result + 16);
                v48 = *(result + 24);
                v49 = v4 + 1;
                if (v4 >= v48 >> 1)
                {
                  result = sub_100028248((v48 > 1), v4 + 1, 1, result);
                }

                *(result + 16) = v49;
                v50 = result + 16 * v4;
                *(v50 + 32) = v8;
                *(v50 + 40) = v9;
                v6 = v9;
                v51 = *a1;
                if (!*a1)
                {
                  goto LABEL_316;
                }

                if (v4)
                {
                  while (2)
                  {
                    v52 = v49 - 1;
                    if (v49 >= 4)
                    {
                      v57 = result + 32 + 16 * v49;
                      v58 = *(v57 - 64);
                      v59 = *(v57 - 56);
                      v63 = __OFSUB__(v59, v58);
                      v60 = v59 - v58;
                      if (v63)
                      {
                        goto LABEL_293;
                      }

                      v62 = *(v57 - 48);
                      v61 = *(v57 - 40);
                      v63 = __OFSUB__(v61, v62);
                      v55 = v61 - v62;
                      v56 = v63;
                      if (v63)
                      {
                        goto LABEL_294;
                      }

                      v64 = (result + 16 * v49);
                      v66 = *v64;
                      v65 = v64[1];
                      v63 = __OFSUB__(v65, v66);
                      v67 = v65 - v66;
                      if (v63)
                      {
                        goto LABEL_296;
                      }

                      v63 = __OFADD__(v55, v67);
                      v68 = v55 + v67;
                      if (v63)
                      {
                        goto LABEL_299;
                      }

                      if (v68 >= v60)
                      {
                        v86 = (result + 32 + 16 * v52);
                        v88 = *v86;
                        v87 = v86[1];
                        v63 = __OFSUB__(v87, v88);
                        v89 = v87 - v88;
                        if (v63)
                        {
                          goto LABEL_303;
                        }

                        if (v55 < v89)
                        {
                          v52 = v49 - 2;
                        }
                      }

                      else
                      {
LABEL_145:
                        if (v56)
                        {
                          goto LABEL_295;
                        }

                        v69 = (result + 16 * v49);
                        v71 = *v69;
                        v70 = v69[1];
                        v72 = __OFSUB__(v70, v71);
                        v73 = v70 - v71;
                        v74 = v72;
                        if (v72)
                        {
                          goto LABEL_298;
                        }

                        v75 = (result + 32 + 16 * v52);
                        v77 = *v75;
                        v76 = v75[1];
                        v63 = __OFSUB__(v76, v77);
                        v78 = v76 - v77;
                        if (v63)
                        {
                          goto LABEL_301;
                        }

                        if (__OFADD__(v73, v78))
                        {
                          goto LABEL_302;
                        }

                        if (v73 + v78 < v55)
                        {
                          goto LABEL_159;
                        }

                        if (v55 < v78)
                        {
                          v52 = v49 - 2;
                        }
                      }
                    }

                    else
                    {
                      if (v49 == 3)
                      {
                        v53 = *(result + 32);
                        v54 = *(result + 40);
                        v63 = __OFSUB__(v54, v53);
                        v55 = v54 - v53;
                        v56 = v63;
                        goto LABEL_145;
                      }

                      v79 = (result + 16 * v49);
                      v81 = *v79;
                      v80 = v79[1];
                      v63 = __OFSUB__(v80, v81);
                      v73 = v80 - v81;
                      v74 = v63;
LABEL_159:
                      if (v74)
                      {
                        goto LABEL_297;
                      }

                      v82 = result + 16 * v52;
                      v84 = *(v82 + 32);
                      v83 = *(v82 + 40);
                      v63 = __OFSUB__(v83, v84);
                      v85 = v83 - v84;
                      if (v63)
                      {
                        goto LABEL_300;
                      }

                      if (v85 < v73)
                      {
                        break;
                      }
                    }

                    v4 = v52 - 1;
                    if (v52 - 1 >= v49)
                    {
                      __break(1u);
LABEL_291:
                      __break(1u);
LABEL_292:
                      __break(1u);
LABEL_293:
                      __break(1u);
LABEL_294:
                      __break(1u);
LABEL_295:
                      __break(1u);
LABEL_296:
                      __break(1u);
LABEL_297:
                      __break(1u);
LABEL_298:
                      __break(1u);
LABEL_299:
                      __break(1u);
LABEL_300:
                      __break(1u);
LABEL_301:
                      __break(1u);
LABEL_302:
                      __break(1u);
LABEL_303:
                      __break(1u);
LABEL_304:
                      __break(1u);
LABEL_305:
                      __break(1u);
LABEL_306:
                      __break(1u);
LABEL_307:
                      __break(1u);
LABEL_308:
                      __break(1u);
LABEL_309:
                      __break(1u);
                      goto LABEL_310;
                    }

                    if (!*a3)
                    {
                      goto LABEL_313;
                    }

                    v90 = result;
                    v91 = *(result + 32 + 16 * v4);
                    v92 = *(result + 32 + 16 * v52 + 8);
                    v93 = v161;
                    sub_100069F64((*a3 + 80 * v91), (*a3 + 80 * *(result + 32 + 16 * v52)), (*a3 + 80 * v92), v51);
                    v161 = v93;
                    if (v93)
                    {
                    }

                    if (v92 < v91)
                    {
                      goto LABEL_291;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v90 = sub_10006A2FC(v90);
                    }

                    if (v4 >= *(v90 + 2))
                    {
                      goto LABEL_292;
                    }

                    v94 = &v90[16 * v4];
                    *(v94 + 4) = v91;
                    *(v94 + 5) = v92;
                    v156 = v90;
                    sub_10006A270(v52);
                    result = v156;
                    v49 = *(v156 + 16);
                    if (v49 <= 1)
                    {
                      break;
                    }

                    continue;
                  }
                }

                v5 = a3[1];
                if (v6 >= v5)
                {
                  goto LABEL_278;
                }

                goto LABEL_4;
              }

              goto LABEL_177;
            }

            goto LABEL_266;
          }

          v108 = 0x6365746F72506F6ELL;
          v4 = 0xEC0000006E6F6974;
LABEL_264:
          if (v106 != v108)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        v4 = 0xE600000000000000;
        if (v106 == 0x467373616C63)
        {
          goto LABEL_265;
        }
      }

LABEL_266:
      v109 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10006B5BC(v152, &v148);
      sub_10006B5BC(v154, &v148);

      sub_10006B5F4(v154);
      result = sub_10006B5F4(v152);
      if ((v109 & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_267;
    }

    if (v102 != 2)
    {
      v103 = 3;
      goto LABEL_207;
    }

    v129 = *&v152[40];
    v134 = *&v153[16];
    v136 = *&v154[40];
    v138 = *&v155[8];
    v140 = *&v153[8];
    v132 = *&v155[16];
    v104 = *&v152[24] == *&v154[24] && *&v152[32] == *&v154[32];
    v105 = v104;
    if (!v104)
    {
      v127 = v105;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v105 = v127;
      if ((result & 1) == 0)
      {
LABEL_222:
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_226;
        }

        goto LABEL_223;
      }
    }

    if (v6)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_221;
      }
    }

    else if (v4 & 1 | (v129 != v136))
    {
      goto LABEL_221;
    }

    if (v140 == v138 && v134 == v132)
    {
      goto LABEL_213;
    }

    v128 = v105;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v105 = v128;
    if (result)
    {
      goto LABEL_213;
    }

LABEL_221:
    if ((v105 & 1) == 0)
    {
      goto LABEL_222;
    }

LABEL_223:
    if (v6)
    {
      if (v4)
      {
        goto LABEL_234;
      }

      v107 = 0x8000000000000000;
    }

    else
    {
      if (v4)
      {
        goto LABEL_176;
      }

      v107 = v129;
      if (v129 == v136)
      {
LABEL_234:
        if (v140 == v138 && v134 == v132)
        {
          goto LABEL_176;
        }

LABEL_191:
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_176;
        }

        goto LABEL_267;
      }
    }

    if (v107 >= v136)
    {
      goto LABEL_176;
    }

LABEL_267:
    if (!v45)
    {
      break;
    }

    v110 = i - 5;
    v149 = i[1];
    v150 = i[2];
    v151[0] = i[3];
    *(v151 + 9) = *(i + 57);
    v148 = *i;
    v111 = *(i - 2);
    i[2] = *(i - 3);
    i[3] = v111;
    i[4] = *(i - 1);
    v112 = *(i - 4);
    *i = *(i - 5);
    i[1] = v112;
    *v110 = v148;
    v113 = v149;
    v114 = v150;
    v115 = v151[0];
    *(v110 + 57) = *(v151 + 9);
    v110[2] = v114;
    v110[3] = v115;
    v110[1] = v113;
    if (!v47)
    {
      goto LABEL_176;
    }

    ++v47;
  }

  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
  return result;
}

uint64_t sub_100069F64(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    v12 = 80 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 80)
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

      v36 = *v6;
      v16 = *(v6 + 1);
      v17 = *(v6 + 2);
      v18 = *(v6 + 3);
      *(v39 + 9) = *(v6 + 57);
      v38 = v17;
      v39[0] = v18;
      v37 = v16;
      v20 = *(v4 + 2);
      v19 = *(v4 + 3);
      v21 = *(v4 + 1);
      *(v43 + 9) = *(v4 + 57);
      v42 = v20;
      v43[0] = v19;
      v41 = v21;
      v40 = *v4;
      sub_10006B5BC(&v36, v35);
      sub_10006B5BC(&v40, v35);
      v22 = sub_10006AAD4(&v36, &v40);
      sub_10006B5F4(&v40);
      sub_10006B5F4(&v36);
      if (v22)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 80;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 80;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 80;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x50uLL);
    goto LABEL_9;
  }

  v23 = 80 * v11;
  if (a4 != __src || &__src[v23] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v13 = &v4[v23];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_20:
    v24 = v6 - 80;
    v5 -= 80;
    do
    {
      v25 = v5 + 80;
      v36 = *(v13 - 5);
      v26 = *(v13 - 4);
      v27 = *(v13 - 3);
      v28 = *(v13 - 2);
      *(v39 + 9) = *(v13 - 23);
      v38 = v27;
      v39[0] = v28;
      v37 = v26;
      v29 = *(v6 - 2);
      v42 = *(v6 - 3);
      v43[0] = v29;
      *(v43 + 9) = *(v6 - 23);
      v30 = *(v6 - 4);
      v40 = *v24;
      v41 = v30;
      sub_10006B5BC(&v36, v35);
      sub_10006B5BC(&v40, v35);
      v31 = sub_10006AAD4(&v36, &v40);
      sub_10006B5F4(&v40);
      sub_10006B5F4(&v36);
      if (v31)
      {
        if (v25 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v13 <= v4 || (v6 -= 80, v24 <= v7))
        {
          v6 = v24;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v32 = (v13 - 80);
      if (v25 != v13)
      {
        memmove(v5, v13 - 80, 0x50uLL);
      }

      v5 -= 80;
      v13 -= 80;
    }

    while (v32 > v4);
    v13 = v32;
  }

LABEL_31:
  v33 = 80 * ((v13 - v4) / 80);
  if (v6 != v4 || v6 >= &v4[v33])
  {
    memmove(v6, v4, v33);
  }

  return 1;
}

uint64_t sub_10006A270(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10006A2FC(v3);
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

void *sub_10006A310(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!__dst)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = __dst;
      v9 = 0;
      v10 = (a4 + 32);
      v11 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        v12 = v10[3];
        v15[2] = v10[2];
        v16[0] = v12;
        *(v16 + 9) = *(v10 + 57);
        v13 = v10[1];
        v15[0] = *v10;
        v15[1] = v13;
        memmove(v8, v10, 0x49uLL);
        if (v11 == v9)
        {
          sub_10006B5BC(v15, v14);
          goto LABEL_12;
        }

        v8 += 80;
        result = sub_10006B5BC(v15, v14);
        ++v9;
        v10 += 5;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_10006A404(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 56;
    do
    {
      v5 = *(v4 - 8);
      v18 = v3;
      v19 = *(v4 - 16);
      v7 = *v4;
      v6 = *(v4 + 8);
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      v10 = *(v4 + 32);
      v11 = *(v4 + 40);
      v12 = *(v4 + 48);
      Hasher._combine(_:)(*(v4 - 24));

      v20 = v7;
      v13 = v7;
      v14 = v6;
      sub_10006B4EC(v13, v6, v9, v8);
      String.hash(into:)();
      if (v8 >> 62)
      {
        if (v8 >> 62 != 1)
        {
          Hasher._combine(_:)(2uLL);
          v16 = v20;
          String.hash(into:)();
          if (v8)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            Hasher._combine(_:)(v9);
          }

          v17 = v18;
          String.hash(into:)();
          goto LABEL_3;
        }

        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      Hasher._combine(_:)(v15);
      v16 = v20;
      String.hash(into:)();
      v17 = v18;
LABEL_3:
      v4 += 80;
      String.hash(into:)();

      sub_10006B554(v16, v14, v9, v8);
      v3 = v17 - 1;
    }

    while (v3);
  }
}

uint64_t sub_10006A6AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v4 = a1;
    v5 = *(a1 + 1);
    v6 = a2;
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v6;
    v8 = v7;
    a1 = v4;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 3);
  v9 = *(a1 + 4);
  v11 = *(a1 + 6);
  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  v14 = *(a2 + 6);
  if (!(v11 >> 62))
  {
    if (!(v14 >> 62))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v11 >> 62 != 1)
  {
    if (v14 >> 62 != 2)
    {
      return 0;
    }

    v20 = *(a1 + 5);
    v21 = *(a1 + 7);
    v22 = *(a1 + 8);
    v23 = *(a2 + 5);
    v24 = *(a2 + 7);
    v25 = *(a2 + 8);
    if (v10 != v12 || v9 != v13)
    {
      v26 = a1;
      v27 = *(a1 + 3);
      v28 = a2;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }

    if (v11)
    {
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14 & 1 | (v20 != v23))
    {
      return 0;
    }

    if (v21 == v24 && v22 == v25)
    {
      goto LABEL_28;
    }

    v31 = a1;
    v32 = a2;
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v32;
    v34 = v33;
    a1 = v31;
    if (v34)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (v14 >> 62 != 1)
  {
    return 0;
  }

LABEL_13:
  if (v10 != v12 || v9 != v13)
  {
    v15 = a1;
    v16 = *(a1 + 3);
    v17 = a2;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v17;
    v19 = v18;
    a1 = v15;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_28:
  v35 = a2[72];
  v36 = a1[72];

  return sub_1000613F8(v36, v35);
}

uint64_t sub_10006A890(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  if (!(v6 >> 62))
  {
    if (!(a2[3] >> 62))
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (v6 >> 62 != 1)
  {
    v9 = a2[3];
    if (v9 >> 62 != 2)
    {
      return 0;
    }

    v10 = a1[2];
    v11 = a1[4];
    v12 = a1[5];
    v13 = a2[2];
    v14 = a2[4];
    v15 = a2[5];
    if ((v4 != *a2 || v5 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v6)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }

      return v11 == v14 && v12 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    if (!(v9 & 1 | (v10 != v13)))
    {
      return v11 == v14 && v12 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    return 0;
  }

  if (a2[3] >> 62 != 1)
  {
    return 0;
  }

LABEL_6:
  if (v4 == *a2 && v5 == a2[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006A9D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = *a1, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    if (a1[3])
    {
      if ((*(a2 + 24) & 1) == 0)
      {
        v8 = 0x8000000000000000;
        return v8 < v6;
      }
    }

    else
    {
      v8 = a1[2];
      if (*(a2 + 24))
      {
        v6 = 0x8000000000000000;
        return v8 < v6;
      }

      if (v8 != v6)
      {
        return v8 < v6;
      }
    }

    if (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40))
    {
      return 0;
    }
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006AAD4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) != (*a2 & 1))
  {
    v2 = *a2 & (*a1 ^ 1);
    return v2 & 1;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    v7 = *(a1 + 8);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_19:

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v8 = *(a1 + 40);
  v22 = *(a1 + 24);
  v23 = v8;
  v24 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = *(a2 + 40);
  v19 = *(a2 + 24);
  v20 = v10;
  v21 = *(a2 + 56);
  v11 = *(a2 + 48);
  if ((sub_10006A890(&v22, &v19) & 1) == 0)
  {
    if (*(&v23 + 1) >> 62)
    {
      if (*(&v23 + 1) >> 62 == 1)
      {
        if (*(&v20 + 1) >> 62 != 1)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v25 = v22;
      v26 = v23;
      v27 = *(&v23 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      v28 = v24;
      if (*(&v20 + 1) >> 62 == 2)
      {
        v29 = v19;
        v30 = v20;
        v31 = *(&v20 + 1) & 0x3FFFFFFFFFFFFFFFLL;
        v32 = v21;
        v2 = sub_10006A9D8(&v25, &v29);
        return v2 & 1;
      }
    }

    else if (!(*(&v20 + 1) >> 62))
    {
LABEL_26:
      if (v22 == v19)
      {
        goto LABEL_58;
      }

      goto LABEL_19;
    }

LABEL_30:
    v2 = v9 >> 62 < v11 >> 62;
    return v2 & 1;
  }

  v12 = 0xEC000000656E6F4ELL;
  v13 = 0x7269447373616C63;
  v14 = *(a1 + 72);
  if (v14 <= 3)
  {
    if (*(a1 + 72) > 1u)
    {
      v15 = 0xE600000000000000;
      if (v14 == 2)
      {
        v16 = 0x427373616C63;
      }

      else
      {
        v16 = 0x437373616C63;
      }
    }

    else
    {
      v16 = 0x7269447373616C63;
      v15 = 0xEC000000656E6F4ELL;
      if (v14)
      {
        v15 = 0xE600000000000000;
        v16 = 0x417373616C63;
      }
    }
  }

  else if (*(a1 + 72) <= 5u)
  {
    v15 = 0xE600000000000000;
    if (v14 == 4)
    {
      v16 = 0x447373616C63;
    }

    else
    {
      v16 = 0x457373616C63;
    }
  }

  else if (v14 == 6)
  {
    v15 = 0xE600000000000000;
    v16 = 0x467373616C63;
  }

  else if (v14 == 7)
  {
    v15 = 0xE700000000000000;
    v16 = 0x58437373616C63;
  }

  else
  {
    v16 = 0x6365746F72506F6ELL;
    v15 = 0xEC0000006E6F6974;
  }

  v17 = *(a2 + 72);
  if (v17 <= 3)
  {
    if (*(a2 + 72) > 1u)
    {
      v12 = 0xE600000000000000;
      if (v17 == 2)
      {
        v13 = 0x427373616C63;
      }

      else
      {
        v13 = 0x437373616C63;
      }
    }

    else if (*(a2 + 72))
    {
      v12 = 0xE600000000000000;
      v13 = 0x417373616C63;
    }
  }

  else if (*(a2 + 72) <= 5u)
  {
    v12 = 0xE600000000000000;
    if (v17 == 4)
    {
      v13 = 0x447373616C63;
    }

    else
    {
      v13 = 0x457373616C63;
    }
  }

  else if (v17 == 6)
  {
    v12 = 0xE600000000000000;
    v13 = 0x467373616C63;
  }

  else if (v17 == 7)
  {
    v12 = 0xE700000000000000;
    v13 = 0x58437373616C63;
  }

  else
  {
    v13 = 0x6365746F72506F6ELL;
    v12 = 0xEC0000006E6F6974;
  }

  if (v16 == v13 && v15 == v12)
  {

LABEL_58:
    v2 = 0;
    return v2 & 1;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v18 & 1;
}

unint64_t sub_10006AEE0()
{
  result = qword_1000A4968;
  if (!qword_1000A4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4968);
  }

  return result;
}

unint64_t sub_10006AF38()
{
  result = qword_1000A4980;
  if (!qword_1000A4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4980);
  }

  return result;
}

uint64_t type metadata accessor for RapidRepair()
{
  result = qword_1000A49B0;
  if (!qword_1000A49B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006AFE0()
{
  sub_10006B084();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10006B084()
{
  if (!qword_1000A49C0)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A49C0);
    }
  }
}

uint64_t sub_10006B0EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10006B134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006B1C8()
{
  result = qword_1000A4A68;
  if (!qword_1000A4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A68);
  }

  return result;
}

unint64_t sub_10006B21C()
{
  result = qword_1000A4A70;
  if (!qword_1000A4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A70);
  }

  return result;
}

unint64_t sub_10006B270()
{
  result = qword_1000A4A78;
  if (!qword_1000A4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A78);
  }

  return result;
}

unint64_t sub_10006B2C4()
{
  result = qword_1000A4A80;
  if (!qword_1000A4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A80);
  }

  return result;
}

unint64_t sub_10006B318()
{
  result = qword_1000A4A88;
  if (!qword_1000A4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A88);
  }

  return result;
}

unint64_t sub_10006B36C()
{
  result = qword_1000A4A98;
  if (!qword_1000A4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A98);
  }

  return result;
}

unint64_t sub_10006B3C0()
{
  result = qword_1000A4AA0;
  if (!qword_1000A4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4AA0);
  }

  return result;
}

unint64_t sub_10006B414()
{
  result = qword_1000A4AB0;
  if (!qword_1000A4AB0)
  {
    sub_10000A738(&qword_1000A4AA8, &qword_1000790D8);
    sub_10006B498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4AB0);
  }

  return result;
}

unint64_t sub_10006B498()
{
  result = qword_1000A4AB8;
  if (!qword_1000A4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4AB8);
  }

  return result;
}

uint64_t sub_10006B4EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 >> 62) < 2)
  {
  }

  if (a4 >> 62 != 3)
  {
  }

  return result;
}

uint64_t sub_10006B554(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 >> 62) < 2)
  {
  }

  if (a4 >> 62 != 3)
  {
  }

  return result;
}

uint64_t sub_10006B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *path = a1;
      v15 = a2 & 0xFFFFFFFFFFFFFFLL;
      v11 = a4;

      sub_100011FAC(a5, a6);
      v12 = path;
      return sub_1000610E0(a3, v11, a3, v11, a5, a6, v12);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v11 = a4;

      sub_100011FAC(a5, a6);
      v12 = (v10 + 32);
      return sub_1000610E0(a3, v11, a3, v11, a5, a6, v12);
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v6)
  {
    return v16;
  }

  return result;
}

uint64_t sub_10006B728(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = SecTaskCreateFromSelf(0);
  if (v11)
  {
    v12 = v11;
    v13 = SecTaskCopySigningIdentifier(v11, 0);
    if (v13)
    {
      v14 = v13;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v24 = 0;
        v25 = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        goto LABEL_8;
      }
    }

    else
    {
      v14 = v12;
    }
  }

LABEL_8:
  v15 = objc_opt_self();

  if (sub_10005A5A4(a1, a2, a3))
  {

    v16 = errno.getter();
    LODWORD(v24) = v16;
    sub_100033644();
    swift_willThrowTypedImpl();
  }

  else
  {
    v17 = [v15 defaultManager];
    static String.Encoding.utf8.getter();
    v18 = String.data(using:allowLossyConversion:)();
    v20 = v19;
    result = (*(v7 + 8))(v10, v6);
    if (v20 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    sub_100011FAC(v18, v20);
    v22 = sub_10006B624(a1, a2, 0xD000000000000034, 0x8000000100083890, v18, v20);

    sub_10000B068(v18, v20);
    if (!v22)
    {
      sub_10003FDF8(v18, v20);
      return 1;
    }

    v16 = errno.getter();
    LODWORD(v24) = v16;
    sub_100033644();
    swift_willThrowTypedImpl();
    sub_10003FDF8(v18, v20);
  }

  return v16 == 2;
}

uint64_t sub_10006BA04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10006BB6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x687470654478616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865676572 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10006BC80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F746365726964 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E726574746170 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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