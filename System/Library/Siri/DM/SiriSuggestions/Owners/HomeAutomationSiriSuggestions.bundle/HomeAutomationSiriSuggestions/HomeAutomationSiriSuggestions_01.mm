uint64_t sub_18FDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_19004()
{
  sub_18FDC();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_19060()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190F8;

  return sub_165B0();
}

uint64_t sub_190F8()
{
  sub_116D0();
  sub_1AA08();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1A8F0();
  *v4 = v3;

  sub_1AA4C();

  return v5();
}

uint64_t sub_191D8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19270;

  return sub_17B3C();
}

uint64_t sub_19270()
{
  sub_116D0();
  v2 = v1;
  sub_1AA08();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1A8F0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1935C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1940C;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t sub_1940C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AA08();
  v8 = *(v7 + 16);
  v9 = *v3;
  sub_1A8F0();
  *v10 = v9;

  v11 = *(v9 + 8);

  return v11(a1, a2, a3);
}

uint64_t sub_19514(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A708(&qword_55780, a2, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

void *sub_195E0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1DC4(&qword_55760, &qword_38038);
  v4 = sub_1AC90();
  j__malloc_size(v4);
  sub_1A990();
  v4[2] = a1;
  v4[3] = 2 * v5;
  return v4;
}

void *sub_19650(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1DC4(&qword_54F58, &qword_38060);
  v4 = sub_1AC90();
  j__malloc_size(v4);
  sub_1A990();
  v4[2] = a1;
  v4[3] = (2 * v5) | 1;
  return v4;
}

char *sub_196C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1A89C(a3, result);
  }

  return result;
}

char *sub_196E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1A89C(a3, result);
  }

  return result;
}

char *sub_19700(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1A89C(a3, result);
  }

  return result;
}

unint64_t sub_19734(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_36A60();
  sub_36760();
  v6 = sub_36A80();

  return sub_198A4(a1, a2, v6);
}

unint64_t sub_197AC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_36A60();
  v4 = sub_36340();
  sub_36A70(v4);
  v5 = sub_36A80();

  return sub_19958(a1, v5);
}

unint64_t sub_1981C(char a1)
{
  v3 = *(v1 + 40);
  sub_36A60();
  sub_3493C(a1);
  sub_36760();

  v4 = sub_36A80();

  return sub_199FC(a1, v4);
}

unint64_t sub_198A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_36A20() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_19958(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_36340();
    if (v6 == sub_36340())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_199FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x656E656353746573;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          break;
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x8000000000039B30;
          break;
        case 3:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000000039B50;
          break;
        case 4:
          v8 = 0xD000000000000013;
          v7 = 0x8000000000039B70;
          break;
        case 5:
          v8 = 0x65706D6554746573;
          v9 = 0x657275746172;
          goto LABEL_17;
        case 6:
          v8 = 0x6867697242746573;
          v7 = 0xED00007373656E74;
          break;
        case 7:
          v8 = 0x616D696C43746573;
          v9 = 0x65646F4D6574;
LABEL_17:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 8:
          v8 = 0x726F6C6F43746573;
          break;
        case 9:
          v8 = 0x70536E6146746573;
          v7 = 0xEB00000000646565;
          break;
        case 0xA:
          v8 = 0x746867694C6D6964;
          v7 = 0xE900000000000073;
          break;
        case 0xB:
          v8 = 0xD000000000000014;
          v7 = 0x8000000000039BD0;
          break;
        case 0xC:
          v8 = 0xD000000000000013;
          v7 = 0x8000000000039BF0;
          break;
        case 0xD:
          v8 = 0xD000000000000015;
          v7 = 0x8000000000039C10;
          break;
        case 0xE:
          v8 = 0xD000000000000012;
          v7 = 0x8000000000039C30;
          break;
        case 0xF:
          v8 = 0xD000000000000015;
          v7 = 0x8000000000039C50;
          break;
        case 0x10:
          v8 = 0xD000000000000019;
          v7 = 0x8000000000039C70;
          break;
        case 0x11:
          v8 = 0xD000000000000015;
          v7 = 0x8000000000039C90;
          break;
        case 0x12:
          v8 = 0xD000000000000011;
          v7 = 0x8000000000039CB0;
          break;
        default:
          v8 = 0xD000000000000010;
          v7 = 0x8000000000039B10;
          break;
      }

      v10 = 0xE800000000000000;
      v11 = 0x656E656353746573;
      switch(a1)
      {
        case 1:
          break;
        case 2:
          v11 = 0xD000000000000010;
          v10 = 0x8000000000039B30;
          break;
        case 3:
          v11 = 0xD00000000000001ALL;
          v10 = 0x8000000000039B50;
          break;
        case 4:
          v11 = 0xD000000000000013;
          v10 = 0x8000000000039B70;
          break;
        case 5:
          v11 = 0x65706D6554746573;
          v12 = 0x657275746172;
          goto LABEL_37;
        case 6:
          v11 = 0x6867697242746573;
          v10 = 0xED00007373656E74;
          break;
        case 7:
          v11 = 0x616D696C43746573;
          v12 = 0x65646F4D6574;
LABEL_37:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 8:
          v11 = 0x726F6C6F43746573;
          break;
        case 9:
          v11 = 0x70536E6146746573;
          v10 = 0xEB00000000646565;
          break;
        case 10:
          v11 = 0x746867694C6D6964;
          v10 = 0xE900000000000073;
          break;
        case 11:
          v11 = 0xD000000000000014;
          v10 = 0x8000000000039BD0;
          break;
        case 12:
          v11 = 0xD000000000000013;
          v10 = 0x8000000000039BF0;
          break;
        case 13:
          v11 = 0xD000000000000015;
          v10 = 0x8000000000039C10;
          break;
        case 14:
          v11 = 0xD000000000000012;
          v10 = 0x8000000000039C30;
          break;
        case 15:
          v11 = 0xD000000000000015;
          v10 = 0x8000000000039C50;
          break;
        case 16:
          v11 = 0xD000000000000019;
          v10 = 0x8000000000039C70;
          break;
        case 17:
          v11 = 0xD000000000000015;
          v10 = 0x8000000000039C90;
          break;
        case 18:
          v11 = 0xD000000000000011;
          v10 = 0x8000000000039CB0;
          break;
        default:
          v11 = 0xD000000000000010;
          v10 = 0x8000000000039B10;
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_36A20();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_19F6C(char *a1, int64_t a2, char a3)
{
  result = sub_1A23C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_19FA0(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1AAF4();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1AAE4();
    }
  }

  else
  {
    v8 = a2;
  }

  sub_1AAD4(v8);
  if (v4)
  {
    sub_1DC4(&qword_557C0, &qword_38088);
    v11 = sub_1AC90();
    j__malloc_size(v11);
    sub_1A990();
    *(v11 + 2) = v5;
    *(v11 + 3) = 2 * v12;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v5] <= v13)
    {
      memmove(v13, v14, 8 * v5);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v5);
  }
}

void sub_1A078(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1AAF4();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1AAE4();
    }
  }

  else
  {
    v8 = a2;
  }

  sub_1AAD4(v8);
  if (v4)
  {
    sub_1DC4(&qword_557C8, &unk_38090);
    v11 = sub_1AC90();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v5;
    *(v11 + 3) = 2 * ((v12 - 32) / 2);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[2 * v5] <= v13)
    {
      memmove(v13, v14, 2 * v5);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 2 * v5);
  }
}

void sub_1A16C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1AAF4();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1AAE4();
    }
  }

  else
  {
    v8 = a2;
  }

  sub_1AAD4(v8);
  if (v4)
  {
    sub_1DC4(v11, v12);
    v13 = sub_1AC90();
    j__malloc_size(v13);
    sub_1A990();
    *(v13 + 2) = v5;
    *(v13 + 3) = 2 * v14;
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[8 * v5] <= v15)
    {
      memmove(v15, v16, 8 * v5);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v5);
  }
}

char *sub_1A23C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DC4(&qword_55768, &qword_38040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_1A344(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v7 = sub_1A900(a1, a2, a3);
  sub_3E7C(v7);
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    sub_1AB48();
    v9 = sub_36930();
  }

  *v3 = v9;
  return sub_1A3AC;
}

uint64_t (*sub_1A3B4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_1A900(a1, a2, a3);
  sub_3E7C(v7);
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    sub_1AB48();
    v9 = sub_36930();
  }

  *v3 = v9;
  return sub_1A858;
}

uint64_t sub_1A41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC4(&qword_55748, &qword_38030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1A48C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1A574(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_1A668()
{
  result = qword_55778;
  if (!qword_55778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55778);
  }

  return result;
}

uint64_t sub_1A6BC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_368D0();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1A6FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1A708(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A750(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1A7AC()
{
  result = qword_557A8;
  if (!qword_557A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_557A8);
  }

  return result;
}

unint64_t sub_1A800()
{
  result = qword_557B8;
  if (!qword_557B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_557B8);
  }

  return result;
}

BOOL sub_1A860(uint64_t a1)
{

  return sub_15C38(a1, v1, &HomeDeviceType.rawValue.getter);
}

uint64_t (*sub_1A934(uint64_t a1, uint64_t a2))()
{
  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
  return sub_174E8;
}

uint64_t sub_1A958()
{

  return sub_366F0();
}

uint64_t sub_1A974()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t sub_1A9C0()
{

  return sub_36A20();
}

uint64_t sub_1A9E8(uint64_t a1)
{

  return sub_3D4C(v1, 1, 1, a1);
}

uint64_t sub_1AA14()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 378);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v8 = *(v0 + 176);
  v6 = *(v0 + 168);

  return sub_366C0();
}

uint64_t sub_1AA4C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1AA58(uint64_t a1)
{
  sub_3D4C(v1, 1, 1, a1);

  return sub_36610();
}

void sub_1AAD4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1AB04()
{

  return sub_36610();
}

uint64_t sub_1AB60()
{
}

uint64_t sub_1AB78()
{
}

uint64_t sub_1AB90()
{

  return sub_36930();
}

uint64_t sub_1ABA8()
{

  return sub_36A20();
}

uint64_t sub_1ABCC()
{

  return sub_36760();
}

uint64_t sub_1ABF0()
{

  return sub_36760();
}

uint64_t sub_1AC14()
{
  *(v0 + 336) = *v1;
  *(v0 + 344) = v1[1];

  return swift_getObjectType();
}

char *sub_1AC38@<X0>(unint64_t a1@<X8>)
{

  return sub_19F6C((a1 > 1), v1, 1);
}

uint64_t sub_1AC5C()
{

  return sub_36650();
}

uint64_t sub_1AC78()
{

  return swift_task_alloc();
}

uint64_t sub_1AC90()
{

  return swift_allocObject();
}

uint64_t sub_1ACA8()
{
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
}

void sub_1AD1C(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 - 110;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_36790(v3);
}

uint64_t sub_1AD3C()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[13];
}

uint64_t sub_1AD5C()
{

  return sub_36650();
}

uint64_t sub_1AD7C()
{

  return sub_36A20();
}

double sub_1AD94(uint64_t a1, double result)
{
  if (a1 == 3)
  {
    v2 = (result + -32.0) * 5.0 / 9.0;
  }

  else
  {
    if (a1 != 2)
    {
      return result;
    }

    v2 = result * 9.0 / 5.0 + 32.0;
  }

  return round(v2 * 10.0) / 10.0;
}

uint64_t sub_1ADF4()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_595B8);
  v1 = sub_1D8C(v0, qword_595B8);
  *v1 = sub_2866C();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1AE9C()
{
  sub_1DC4(&qword_55850, &qword_380F8);
  v0 = sub_35E20();
  sub_4E88(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_36F10;
  (*(v2 + 104))(v6 + v5, enum case for DeviceType.watch(_:), v0);
  return v6;
}

uint64_t sub_1AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0xD000000000000010, 0x8000000000039B10);
  v8[3] = v4;
  v8[4] = sub_1B5F0(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_1B074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = sub_4E88(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = v26 - v8;
  sub_1DC4(&qword_55848, &qword_380E8);
  v10 = (sub_1DC4(&qword_54FA0, &qword_380F0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  v29 = v13;
  *(v13 + 16) = xmmword_37390;
  v14 = v13 + v12;
  v15 = type metadata accessor for AccessoryTypeResolver();
  v16 = swift_allocObject();
  strcpy((v16 + 16), "accessoryType");
  *(v16 + 30) = -4864;
  v35 = v15;
  v36 = sub_1B5F0(&qword_55238, type metadata accessor for AccessoryTypeResolver);
  v34[0] = v16;
  sub_1DC4(&qword_55078, &unk_373F0);
  v28 = sub_352A0;
  sub_35D10();
  *v14 = 0;
  sub_3BCC(v34, v14 + 8);
  *(v14 + 48) = 1;
  v17 = v10[12];
  v27 = *(v5 + 16);
  v27(v14 + v17, v9, v2);
  v18 = v10[13];
  v26[2] = sub_362D0();
  sub_35D10();
  v19 = *(v5 + 8);
  v26[1] = v5 + 8;
  v19(v9, v2);
  sub_3D00(v34);
  v20 = v14 + v11;
  v21 = type metadata accessor for RoomNameResolver();
  v22 = swift_allocObject();
  *(v22 + 16) = 0x656D614E6D6F6F72;
  *(v22 + 24) = 0xE800000000000000;
  v35 = v21;
  v36 = sub_1B5F0(&qword_551B8, type metadata accessor for RoomNameResolver);
  v34[0] = v22;
  sub_35D10();
  *v20 = 1;
  sub_3BCC(v34, v20 + 8);
  *(v20 + 48) = 1;
  v27(v20 + v10[12], v9, v2);
  v23 = v20 + v10[13];
  sub_35D10();
  v19(v9, v2);
  sub_3D00(v34);
  v24 = v30;
  sub_4E08(v31, v30);
  v33 = v24;
  sub_1F794(sub_1B5D4, v32, v29);
  swift_setDeallocating();
  return sub_39D8();
}

uint64_t sub_1B490()
{
  sub_1DC4(&qword_55080, &unk_379E0);
  v0 = sub_35F40();
  sub_4E88(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_37390;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, enum case for DeliveryVehicle.siriHelp(_:), v0);
  v8(v7 + v4, enum case for DeliveryVehicle.assistantSuggestions(_:), v0);
  return v6;
}

uint64_t sub_1B5F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B638(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_1B658, 0, 0);
}

uint64_t sub_1B658()
{
  v1 = v0[2];
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35FD0();
  v5 = v4;
  v0[4] = v3;
  v0[5] = v4;
  v0[6] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_36830();

  return _swift_task_switch(sub_1B708, v8, v7);
}

uint64_t sub_1B708()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_29700();
  v6 = v5;
  swift_unknownObjectRelease();
  v0[7] = v4;
  v0[8] = v6;

  return _swift_task_switch(sub_1B790, 0, 0);
}

uint64_t sub_1B790()
{
  v15 = v0;
  v1 = v0[8];
  if (v1)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v2 = v0[7];
    v3 = v0[3];
    v4 = sub_366C0();
    sub_1D8C(v4, static Log.suggestions);
    sub_36920(27);

    v14._countAndFlagsBits = 0xD000000000000013;
    v14._object = 0x8000000000039DF0;
    sub_36790(v3[1]);
    v17._countAndFlagsBits = 544175136;
    v17._object = 0xE400000000000000;
    sub_36790(v17);
    v18._countAndFlagsBits = v2;
    v18._object = v1;
    sub_36790(v18);
    v5._countAndFlagsBits = 0xD000000000000013;
    v6._object = 0x800000000003CCC0;
    v5._object = 0x8000000000039DF0;
    v6._countAndFlagsBits = 0xD000000000000077;
    Logger.debug(output:test:caller:)(v5, 0, v6);

    sub_1DC4(&qword_54E78, &unk_37010);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_36F10;
    v7[7] = &type metadata for String;
    v7[4] = v2;
    v7[5] = v1;
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v8 = v0[3];
    v9 = sub_366C0();
    sub_1D8C(v9, static Log.suggestions);
    sub_36920(16);

    strcpy(&v14, "Couldn't find ");
    HIBYTE(v14._object) = -18;
    sub_36790(v8[1]);
    v10._countAndFlagsBits = 0xD00000000000003FLL;
    v11._object = 0x800000000003CCC0;
    v10._object = 0x800000000003C7F0;
    v11._countAndFlagsBits = 0xD000000000000077;
    Logger.warning(output:test:file:function:line:)(v14, 0, v11, v10, 18);

    v7 = _swiftEmptyArrayStorage;
  }

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_1BA28(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BA0;

  return sub_1B638(v6, a2);
}

uint64_t sub_1BB28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RoomNameResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB68(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  v4 = sub_1A8D0();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1BB90()
{
  v1 = v0[10];
  v2 = v1[3];
  v0[12] = v2;
  v0[13] = v1[4];
  v0[14] = sub_1D48(v1, v2);
  v3 = sub_35FD0();
  v5 = v4;
  v0[15] = v3;
  v0[16] = v4;
  v0[17] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_36830();

  return _swift_task_switch(sub_1BC50, v8, v7);
}

uint64_t sub_1BC50()
{
  sub_116D0();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  *(v0 + 192) = sub_29884();
  swift_unknownObjectRelease();
  v4 = sub_1A8D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1BCBC()
{
  v2 = *(v0 + 192);
  if (v2 == 2)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);
    v6 = sub_35FD0();
    v8 = v7;
    *(v0 + 144) = v6;
    *(v0 + 152) = v7;
    *(v0 + 160) = swift_getObjectType();
    v9 = *(*(v8 + 8) + 8);
    v11 = sub_36830();

    return _swift_task_switch(sub_1BEAC, v11, v10);
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v12 = *(v0 + 88);
    v13 = sub_366C0();
    sub_1D8C(v13, static Log.suggestions);
    sub_36920(27);

    sub_1C6F0();
    sub_36790(v12[1]);
    sub_1C6B0();
    if (v2)
    {
      v14._countAndFlagsBits = 1702195828;
    }

    else
    {
      v14._countAndFlagsBits = 0x65736C6166;
    }

    if (v2)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v14._object = v15;
    sub_36790(v14);

    sub_1C670("/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationSiriSuggestions/Resolvers/IsSingleAccessoryOfTypeInHomeResolver.swift", v1);

    sub_1DC4(&qword_54E78, &unk_37010);
    v16 = swift_allocObject();
    v17 = sub_1C698(v16, &type metadata for Bool, xmmword_36F10);

    return v18(v17);
  }
}

uint64_t sub_1BEAC()
{
  sub_116D0();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = sub_29A2C();
  v6 = v5;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  swift_unknownObjectRelease();
  *(v0 + 193) = v6;
  v7 = sub_1A8D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1BF24()
{
  if (*(v0 + 193))
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v1 = sub_366C0();
    sub_1D8C(v1, static Log.suggestions);
    v2._countAndFlagsBits = 0xD00000000000004ALL;
    v2._object = 0x800000000003CD90;
    v3._object = 0x800000000003CDE0;
    v3._countAndFlagsBits = 0xD00000000000008CLL;
    Logger.debug(output:test:caller:)(v2, 0, v3);
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v4 = *(v0 + 88);
    sub_1D8C(v1, static Log.suggestions);
    sub_1C6CC();

    sub_36790(v4[1]);
    sub_1C6B0();
    v16._countAndFlagsBits = 0x65736C6166;
    v16._object = 0xE500000000000000;
    sub_36790(v16);

    v5._countAndFlagsBits = 0xD000000000000013;
    v6._object = 0x800000000003CDE0;
    v5._object = 0x8000000000039DF0;
    v6._countAndFlagsBits = 0xD00000000000008CLL;
    Logger.debug(output:test:caller:)(v5, 0, v6);

    sub_1DC4(&qword_54E78, &unk_37010);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_36F10;
    *(v7 + 56) = &type metadata for Bool;
    *(v7 + 32) = 0;
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 64);
    v11 = *(v0 + 88);
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    type metadata accessor for SuggestionEntityRetrieval();
    *(v0 + 168) = swift_initStackObject();

    *(v0 + 176) = sub_2DDB0(v12, v13);
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_1C1AC;

    return sub_301A4();
  }
}

uint64_t sub_1C1AC()
{
  sub_116D0();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v8 = *v0;
  *(*v0 + 194) = v3;

  v4 = sub_1A8D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1C2C0()
{
  v2 = *(v0 + 194);
  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v3 = *(v0 + 88);
  v4 = sub_366C0();
  sub_1D8C(v4, static Log.suggestions);
  sub_1C6CC();

  sub_1C6F0();
  sub_36790(v3[1]);
  v5 = 0xE400000000000000;
  sub_1C6B0();
  if (v2)
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if (!v2)
  {
    v5 = 0xE500000000000000;
  }

  v6._object = v5;
  sub_36790(v6);

  sub_1C670("/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationSiriSuggestions/Resolvers/IsSingleAccessoryOfTypeInHomeResolver.swift", v1);

  sub_1DC4(&qword_54E78, &unk_37010);
  v7 = swift_allocObject();
  v8 = sub_1C698(v7, &type metadata for Bool, xmmword_36F10);

  return v9(v8);
}

uint64_t sub_1C438(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C4D0;

  return sub_1BB68(v6, a2);
}

uint64_t sub_1C4D0()
{
  sub_116D0();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_1C630(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IsSingleAccessoryOfTypeInHomeResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 *sub_1C698@<X0>(__n128 *result@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[3].n128_u64[1] = a2;
  result[2].n128_u8[0] = v4;
  v5 = *(v3 + 8);
  return result;
}

void sub_1C6B0()
{
  v1._countAndFlagsBits = 544175136;
  v1._object = 0xE400000000000000;

  sub_36790(v1);
}

void sub_1C6CC()
{

  sub_36920(27);
}

uint64_t sub_1C704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[33] = a1;
  v5 = sub_1DC4(&qword_559B8, &qword_38298);
  v4[36] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v7 = sub_36280();
  v4[38] = v7;
  v8 = *(v7 - 8);
  v4[39] = v8;
  v9 = *(v8 + 64) + 15;
  v4[40] = swift_task_alloc();
  v10 = sub_1DC4(&qword_559C0, &qword_382A0);
  v4[41] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v12 = sub_1DC4(&qword_559C8, &qword_382A8);
  v4[45] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();

  return _swift_task_switch(sub_1C8F4, 0, 0);
}

uint64_t sub_1D7BC()
{
  v1 = *(v0 + 520);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  sub_29C7C(*(v0 + 504), *(v0 + 633), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 512), *(v0 + 634), *(v0 + 576), *(v0 + 584), *(v0 + 635), *(v0 + 636));
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1D8A0, 0, 0);
}

uint64_t sub_1D8A0()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  *(v0 + 232) = 0;
  *(v0 + 240) = 0xE000000000000000;
  sub_36920(41);
  v5 = *(v0 + 240);
  *(v0 + 216) = *(v0 + 232);
  *(v0 + 224) = v5;
  v161._countAndFlagsBits = 0xD000000000000016;
  v161._object = 0x800000000003D010;
  sub_36790(v161);
  v162._countAndFlagsBits = v2;
  v162._object = v1;
  sub_36790(v162);

  v163._countAndFlagsBits = 0x6F63206874697720;
  v163._object = 0xEF203A747865746ELL;
  sub_36790(v163);
  v6 = *(v0 + 48);
  sub_1D48((v0 + 16), *(v0 + 40));
  *(v0 + 248) = sub_35FD0();
  v7 = v0 + 248;
  v8 = (v0 + 96);
  *(v0 + 256) = v9;
  sub_1DC4(&qword_559D8, &qword_382B8);
  sub_369A0();
  swift_unknownObjectRelease();
  v10._countAndFlagsBits = 0xD000000000000092;
  v10._object = 0x800000000003CEA0;
  Logger.debug(output:test:caller:)(*(v0 + 216), 0, v10);

  sub_3BCC(v0 + 16, v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v159 = *(v0 + 464);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_46:
    v159 = sub_313F8(0, *(v159 + 2) + 1, 1, v159);
  }

  v147 = (v7 - 192);
  v142 = v7;
  v7 = *(v159 + 2);
  v12 = *(v159 + 3);
  if (v7 >= v12 >> 1)
  {
    v159 = sub_313F8((v12 > 1), v7 + 1, 1, v159);
  }

  sub_11590(*(v0 + 424), &qword_559C8, &qword_382A8);
  *(v159 + 2) = v7 + 1;
  sub_1EF58(v8, &v159[40 * v7 + 32]);
  sub_3D00((v0 + 16));
  sub_3ED0();
  v137 = v14;
  v138 = v13;
  sub_3ED0();
  v139 = v15;
  v140 = v16;
  sub_3ED0();
  v141 = v17;
  sub_3ED0();
  v143 = v18;
  v144 = v19;
  sub_3ED0();
  v145 = v20;
  sub_3ED0();
  v148 = v21;
  v8 = "erator+Hints.swift";
  sub_3ED0();
  v150 = v22;
  while (1)
  {
    v24 = *(v0 + 472);
    v23 = *(v0 + 480);
    *(v0 + 464) = v159;
    v25 = (v24 - 1) & v24;
    if (!v25)
    {
      break;
    }

    v26 = *(v0 + 440);
LABEL_12:
    *(v0 + 472) = v25;
    *(v0 + 480) = v23;
    v31 = *(v0 + 456);
    v33 = *(v0 + 424);
    v32 = *(v0 + 432);
    v34 = *(v0 + 416);
    v35 = *(v0 + 352);
    v36 = *(v0 + 360);
    sub_1EFBC(v26, v23);
    v38 = *v37;
    v39 = v37[1];
    sub_1F014();
    v41 = v40;
    v43 = *(v42 + 72);
    v44 = *(v36 + 48);
    sub_1F014();
    (*(v45 + 16))(v32 + v44);
    v46 = *(v36 + 48);
    *v33 = v38;
    *(v33 + 1) = v39;
    (*(v41 + 32))(&v33[v46], v32 + v44, v31);
    sub_11528(v33, v34, &qword_559C8, &qword_382A8);
    v47 = *v34;
    v48 = v34[1];
    v49 = *(v36 + 48);

    sub_364F0();
    v50 = *(v41 + 8);
    v50(v34 + v49, v31);
    v51 = sub_36500();
    if (sub_3D74(v156, 1, v51) == 1)
    {
      goto LABEL_13;
    }

    v67 = *(v0 + 592);
    v68 = *(v0 + 344);
    sub_11528(*(v0 + 352), v68, &qword_559C0, &qword_382A0);
    v69 = *(v51 - 8);
    v70 = (*(v69 + 88))(v68, v51);
    if (v70 == v67)
    {
      v66 = 0xE900000000000073;
      sub_1F02C();
    }

    else if (v70 == *(v0 + 596))
    {
      v71 = 0xD000000000000014;
      v66 = v145;
    }

    else if (v70 == *(v0 + 600))
    {
      v71 = 0xD000000000000013;
      v66 = v143;
    }

    else
    {
      v71 = 0xD000000000000015;
      v66 = v144;
      if (v70 != *(v0 + 604))
      {
        if (v70 == *(v0 + 608))
        {
          v71 = 0xD000000000000019;
          v66 = v141;
        }

        else if (v70 == *(v0 + 612))
        {
          v71 = 0xD000000000000012;
          v66 = v139;
        }

        else
        {
          v66 = v140;
          if (v70 != *(v0 + 616))
          {
            v66 = v138;
            if (v70 != *(v0 + 620))
            {
              if (v70 != *(v0 + 624))
              {
                (*(v69 + 8))(*(v0 + 344), v51);
LABEL_13:
                v149 = *(v0 + 456);
                v156 = *(v0 + 448);
                v53 = *(v0 + 416);
                v52 = *(v0 + 424);
                v55 = *(v0 + 352);
                v54 = *(v0 + 360);
                v56 = v50;
                v58 = *(v0 + 328);
                v57 = *(v0 + 336);
                *(v0 + 152) = 0;
                *(v0 + 160) = 0xE000000000000000;
                sub_36920(29);
                v59 = *(v0 + 160);

                *(v0 + 136) = 0xD00000000000001BLL;
                *(v0 + 144) = v148;
                sub_11528(v52, v53, &qword_559C8, &qword_382A8);
                v60 = *v53;
                v61 = v53[1];
                v62 = *(v54 + 48);
                sub_364F0();
                v56(v53 + v62, v149);
                v164._countAndFlagsBits = sub_36720();
                sub_36790(v164);

                v63._countAndFlagsBits = 0xD000000000000092;
                v63._object = 0x800000000003CEA0;
                v64._countAndFlagsBits = 0xD00000000000003DLL;
                v8 = "erator+Hints.swift";
                v64._object = 0x800000000003CF40;
                Logger.warning(output:test:file:function:line:)(*(v0 + 136), 0, v63, v64, 64);

                sub_11590(v55, &qword_559C0, &qword_382A0);
                v65 = 0;
                v66 = 0;
                goto LABEL_31;
              }

              v71 = 0xD000000000000011;
              v66 = v137;
            }
          }
        }
      }
    }

    v146 = v50;
    *(v0 + 488) = v71;
    *(v0 + 496) = v66;
    v72 = *(v0 + 628);
    v73 = v71;
    v75 = *(v0 + 312);
    v74 = *(v0 + 320);
    v76 = *(v0 + 304);
    v77 = *(v0 + 272);
    sub_11590(*(v0 + 352), &qword_559C0, &qword_382A0);
    v156 = v77[4];
    sub_1D48(v77, v77[3]);

    sub_366F0();
    (*(v75 + 104))(v74, v72, v76);
    v65 = v73;
    sub_36150();

    (*(v75 + 8))(v74, v76);
    v78 = *(v0 + 80);

    if (v78)
    {
      v95 = *(v0 + 424);
      v96 = *(v0 + 408);
      v97 = *(v0 + 360);
      sub_1EF58(v147, v0 + 16);
      sub_11528(v95, v96, &qword_559C8, &qword_382A8);
      v98 = *(v96 + 8);

      v99 = *(v97 + 48);
      sub_36570();
      sub_1F008();
      if (v100)
      {
        v146(v96 + v99);
        v101 = sub_1F020();
      }

      else
      {
        v146(v96 + v99);
        v101 = sub_36330();
      }

      v142[385] = v102 & 1;
      *(v0 + 504) = v101;
      v103 = *(v0 + 400);
      v104 = *(v0 + 360);
      sub_11528(*(v0 + 424), v103, &qword_559C8, &qword_382A8);
      v105 = *(v103 + 8);

      v106 = *(v104 + 48);
      sub_36570();
      sub_1F008();
      if (v107)
      {
        v146(v103 + v106);
        v108 = sub_1F020();
      }

      else
      {
        v146(v103 + v106);
        v108 = sub_36370();
      }

      v142[386] = v109 & 1;
      *(v0 + 512) = v108;
      v110 = *(v0 + 456);
      v111 = *(v0 + 416);
      v112 = *(v0 + 424);
      v113 = *(v0 + 384);
      v114 = *(v0 + 392);
      v152 = *(v0 + 376);
      v154 = *(v0 + 368);
      v115 = *(v0 + 360);
      v116 = *(v0 + 48);
      sub_1D48((v0 + 16), *(v0 + 40));
      v117 = sub_35FD0();
      v158 = v118;
      *(v0 + 520) = v117;
      *(v0 + 528) = v118;
      *(v0 + 536) = swift_getObjectType();
      sub_11528(v112, v111, &qword_559C8, &qword_382A8);
      v119 = *(v111 + 8);

      v120 = *(v115 + 48);
      *(v0 + 544) = sub_36560();
      *(v0 + 552) = v121;
      (v146)(v111 + v120, v110);
      sub_11528(v112, v114, &qword_559C8, &qword_382A8);
      v122 = *(v114 + 8);

      v123 = *(v115 + 48);
      *(v0 + 560) = sub_365A0();
      *(v0 + 568) = v124;
      (v146)(v114 + v123, v110);
      sub_11528(v112, v113, &qword_559C8, &qword_382A8);
      v125 = *(v113 + 8);

      v126 = *(v115 + 48);
      *(v0 + 576) = sub_36580();
      *(v0 + 584) = v127;
      (v146)(v113 + v126, v110);
      sub_11528(v112, v152, &qword_559C8, &qword_382A8);
      v128 = *(v152 + 8);

      v129 = *(v115 + 48);
      v142[387] = sub_36590() & 1;
      (v146)(v152 + v129, v110);
      sub_11528(v112, v154, &qword_559C8, &qword_382A8);
      v130 = *(v154 + 8);

      v131 = *(v115 + 48);
      v142[388] = sub_36550() & 1;
      (v146)(v154 + v131, v110);
      v132 = *(*(v158 + 8) + 8);
      v133 = sub_36830();
      v134 = sub_1EF98(v133);

      return _swift_task_switch(v134, v135, v136);
    }

    sub_11590(v147, &qword_559D0, &qword_382B0);
    v8 = "erator+Hints.swift";
LABEL_31:
    v7 = *(v0 + 448);
    v79 = *(v0 + 424);
    *(v0 + 184) = 0;
    *(v0 + 192) = 0xE000000000000000;
    sub_36920(44);
    v80 = *(v0 + 192);

    *(v0 + 168) = 0xD00000000000002ALL;
    *(v0 + 176) = v150;
    *(v0 + 200) = v65;
    *(v0 + 208) = v66;
    sub_1DC4(&qword_54F68, &qword_37150);
    v165._countAndFlagsBits = sub_36720();
    sub_36790(v165);

    v81._countAndFlagsBits = 0xD000000000000092;
    v81._object = 0x800000000003CEA0;
    v82._countAndFlagsBits = 0xD00000000000003DLL;
    v82._object = 0x800000000003CF40;
    Logger.warning(output:test:file:function:line:)(*(v0 + 168), 0, v81, v82, 90);

    sub_11590(v79, &qword_559C8, &qword_382A8);
  }

  while (1)
  {
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    v26 = sub_1EFF0();
    if (v29 == v30)
    {
      break;
    }

    v25 = *(v26 + 8 * v28 + 64);
    v23 = v27 + 1;
    if (v25)
    {
      v23 = v28;
      goto LABEL_12;
    }
  }

  v84 = *(v0 + 424);
  v83 = *(v0 + 432);
  v86 = *(v0 + 408);
  v85 = *(v0 + 416);
  v88 = *(v0 + 392);
  v87 = *(v0 + 400);
  v90 = *(v0 + 376);
  v89 = *(v0 + 384);
  v91 = *(v0 + 368);
  v92 = *(v0 + 352);
  v151 = *(v0 + 344);
  v153 = *(v0 + 336);
  v155 = *(v0 + 320);
  v157 = *(v0 + 296);

  v93 = *(v0 + 8);

  return v93(v159);
}

BOOL sub_1E574(void *a1)
{
  v2 = sub_1DC4(&qword_559B8, &qword_38298);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_35E10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = a1[4];
  sub_1D48(a1, a1[3]);
  sub_35E80();
  v15 = sub_35FB0();
  if (sub_3D74(v5, 1, v15) == 1)
  {
    sub_11590(v5, &qword_559B8, &qword_38298);
  }

  else
  {
    v16 = *(v15 - 8);
    if ((*(v16 + 88))(v5, v15) == enum case for InteractionIntents.siriInteractionIntents(_:))
    {
      (*(v16 + 96))(v5, v15);
      v17 = *&v5[*(sub_1DC4(&qword_559F8, &qword_382D8) + 48)];

      (*(v7 + 32))(v13, v5, v6);
      (*(v7 + 16))(v11, v13, v6);
      if ((*(v7 + 88))(v11, v6) == enum case for SiriSuggestions.Intent.inIntent(_:))
      {
        (*(v7 + 96))(v11, v6);
        v18 = *v11;
        sub_362C0();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          v20 = [v19 userTask];
          if (v20)
          {
            v21 = v20;
            [v20 taskType];

            v22 = sub_36350();
            v23 = sub_36350();

            (*(v7 + 8))(v13, v6);
            return v22 == v23;
          }
        }

        (*(v7 + 8))(v13, v6);
      }

      else
      {
        v25 = *(v7 + 8);
        v25(v13, v6);
        v25(v11, v6);
      }
    }

    else
    {
      (*(v16 + 8))(v5, v15);
    }
  }

  return 0;
}

unint64_t sub_1E924(uint64_t a1)
{
  v2 = sub_1DC4(&qword_559E0, &qword_382C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v55 - v4;
  v65 = sub_1DC4(&qword_559C8, &qword_382A8);
  v6 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v64 = v55 - v7;
  v63 = sub_1DC4(&qword_559E8, &qword_382C8);
  v8 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v62 = (v55 - v9);
  v10 = sub_365B0();
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  v12 = __chkstk_darwin(v10);
  v69 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v61 = v55 - v15;
  __chkstk_darwin(v14);
  v60 = v55 - v16;
  v68 = a1;
  if (*(a1 + 16))
  {
    sub_1DC4(&qword_559F0, &qword_382D0);
    v17 = sub_369E0();
  }

  else
  {
    v17 = &_swiftEmptyDictionarySingleton;
  }

  v18 = v68 + 64;
  v19 = 1 << *(v68 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v68 + 64);
  v22 = (v19 + 63) >> 6;
  v67 = (v66 + 32);
  v55[0] = v17 + 8;
  v55[1] = v66 + 40;

  v24 = 0;
  v58 = v5;
  v57 = v18;
  v56 = v22;
  v59 = v17;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_11:
      v26 = __clz(__rbit64(v21)) | (v25 << 6);
      v27 = (*(v68 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      sub_4E08(*(v68 + 56) + 48 * v26, v73);
      *&v72 = v28;
      *(&v72 + 1) = v29;
      v70[3] = v72;
      v71[0] = v73[0];
      v71[1] = v73[1];
      v71[2] = v73[2];
      v30 = v72;
      sub_1EF70(v71, v70);

      sub_1DC4(&qword_54F80, &qword_37160);
      if (!swift_dynamicCast())
      {
        break;
      }

      v21 &= v21 - 1;
      sub_3D4C(v5, 0, 1, v10);
      v31 = v5;
      v32 = *v67;
      v33 = v61;
      (*v67)(v61, v31, v10);
      v34 = *(v65 + 48);
      v35 = v10;
      v36 = v64;
      v32(&v64[v34], v33, v35);
      v37 = v63;
      v38 = *(v63 + 48);
      v39 = v62;
      *v62 = v30;
      v40 = &v36[v34];
      v10 = v35;
      v41 = v69;
      v17 = v59;
      v32(v39 + v38, v40, v35);
      v42 = *(v37 + 48);
      v43 = *v39;
      v44 = v39[1];
      v45 = v39 + v42;
      v46 = v60;
      v32(v60, v45, v10);
      v32(v41, v46, v10);
      result = sub_19734(v43, v44);
      v47 = result;
      if (v48)
      {
        v49 = (v17[6] + 16 * result);
        v50 = v49[1];
        *v49 = v43;
        v49[1] = v44;

        result = (*(v66 + 40))(v17[7] + *(v66 + 72) * v47, v69, v10);
      }

      else
      {
        if (v17[2] >= v17[3])
        {
          goto LABEL_23;
        }

        *(v55[0] + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        v51 = (v17[6] + 16 * result);
        *v51 = v43;
        v51[1] = v44;
        result = (v32)(v17[7] + *(v66 + 72) * result, v69, v10);
        v52 = v17[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_24;
        }

        v17[2] = v54;
      }

      v24 = v25;
      v5 = v58;
      v18 = v57;
      v22 = v56;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

    sub_3D4C(v5, 1, 1, v10);
    sub_11590(v5, &qword_559E0, &qword_382C0);

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        return v17;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1EF58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_1EF70(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1EFBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 96) = v3;
  v6 = *(result + 56);
  v7 = *(result + 48) + 16 * (__clz(__rbit64(v2)) | (a2 << 6));
  v8 = *(v4 - 8);
  return result;
}

uint64_t sub_1F040()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_595D0);
  v1 = sub_1D8C(v0, qword_595D0);
  *v1 = sub_286C8();
  v1[1] = v2;
  sub_21EE4(v0);
  v4 = *(v3 + 104);

  return v4(v1);
}

uint64_t sub_1F0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = a1;
  v43 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_21ED4();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  v8 = v38 - v7;
  sub_1DC4(&qword_55068, &unk_373E0);
  v9 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v10 = *v9;
  v39 = *(*v9 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v40 = v12;
  *(v12 + 16) = xmmword_37020;
  v13 = v12 + v11;
  HasTargetedMoreThanOneEntityResolver = type metadata accessor for HasTargetedMoreThanOneEntityResolver();
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD00000000000001CLL;
  *(v15 + 24) = 0x8000000000039D30;
  v52 = HasTargetedMoreThanOneEntityResolver;
  v53 = sub_20BEC(&qword_55A78, type metadata accessor for HasTargetedMoreThanOneEntityResolver);
  v51[0] = v15;
  sub_1DC4(&qword_55078, &unk_373F0);
  v38[1] = sub_352A0;
  sub_21FA8();
  *v13 = 5;
  sub_3BCC(v51, v13 + 8);
  *(v13 + 48) = 1;
  v16 = v9[12];
  v48 = *(v3 + 16);
  v17 = v43;
  v48(v13 + v16, v8, v43);
  v18 = v9[13];
  v47 = sub_362C0();
  v46 = sub_20BC0;
  sub_21FA8();
  v19 = *(v3 + 8);
  v44 = v3 + 8;
  v45 = v19;
  v19(v8, v17);
  sub_3D00(v51);
  v20 = v39;
  v21 = (v13 + v39);
  v22 = type metadata accessor for ContainerNameResolver();
  v23 = swift_allocObject();
  sub_21FE0();
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  v52 = v22;
  v53 = sub_20BEC(&qword_55A80, type metadata accessor for ContainerNameResolver);
  v51[0] = v23;
  sub_21FA8();
  *v21 = 6;
  sub_3BCC(v51, (v21 + 8));
  v27 = sub_21FCC();
  v28 = v43;
  (v48)(v27);
  sub_21F84();
  v45(v8, v28);
  sub_3D00(v51);
  v29 = (v13 + 2 * v20);
  v30 = type metadata accessor for AccessoryNameResolver();
  v31 = swift_allocObject();
  sub_21FE0();
  *(v33 + 16) = v34;
  *(v33 + 24) = v32 + 7;
  v52 = v30;
  v53 = sub_20BEC(&qword_55240, type metadata accessor for AccessoryNameResolver);
  v51[0] = v31;
  sub_21FA8();
  *v29 = 2;
  sub_3BCC(v51, (v29 + 8));
  v35 = sub_21FCC();
  (v48)(v35);
  sub_21F84();
  v45(v8, v28);
  sub_3D00(v51);
  v36 = v41;
  sub_4E08(v42, v41);
  v50 = v36;
  sub_1F7BC(sub_20C34, v49, v40, &qword_54F98, qword_37170);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_1F5D0()
{
  if ((sub_34BF4(&dword_0 + 3) & 1) == 0 || (sub_345E8() & 1) == 0)
  {
    return 0;
  }

  sub_34608(&dword_0 + 1);
  return v0 & 1;
}

uint64_t sub_1F61C()
{
  sub_1DC4(&qword_55080, &unk_379E0);
  v0 = sub_35F40();
  sub_21ED4();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_37390;
  v7 = v6 + v5;
  v8 = enum case for SiriHintsMode.display(_:);
  v9 = sub_35DC0();
  sub_3EC0(v9);
  (*(v10 + 104))(v7, v8);
  v11 = *(v2 + 104);
  v11(v7, enum case for DeliveryVehicle.siriHints(_:), v0);
  v11(v7 + v4, enum case for DeliveryVehicle.assistantSuggestions(_:), v0);
  return v6;
}

uint64_t sub_1F7BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = result;
  v10 = 0;
  v11 = *(a3 + 16);
  do
  {
    if (v11 == v10)
    {
      break;
    }

    v12 = *(sub_1DC4(a4, a5) - 8);
    result = v9(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10++);
  }

  while (!v5);
  return result;
}

uint64_t sub_1FB1C(uint64_t a1, void *a2)
{
  sub_20210(a1);
  v4 = a2[3];
  v5 = a2[5];
  sub_1D48(a2, v4);
  sub_21ED4();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_21F44();
  sub_21FF4();
  sub_21F0C();

  sub_3D9C(v12, &qword_55A88, &qword_38318);
  return (*(v7 + 8))(v2, v4);
}

uint64_t sub_1FE5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1FF7C(a1, a3, a4, a5, a6);
  v8 = a2[3];
  v9 = a2[5];
  sub_1D48(a2, v8);
  sub_21ED4();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_21F44();
  sub_21FF4();
  sub_21F0C();

  sub_3D9C(v16, &qword_55A88, &qword_38318);
  return (*(v11 + 8))(v6, v8);
}

uint64_t sub_1FF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41[2] = a5;
  v41[3] = a3;
  v41[1] = a2;
  v6 = sub_1DC4(&qword_54F98, qword_37170);
  sub_21ED4();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v12 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_21ED4();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v19 = v41 - v18;
  v20 = *(a1 + 49);
  sub_3434C(*a1);
  v43 = v21;
  v44 = v22;
  v42 = *(a1 + 48);
  if (v20 == 1)
  {
    (*(v14 + 16))(v19, a1 + *(v6 + 40), v12);
    sub_21FC0();
    sub_21278(v23, v24, v25, v26);
    v27 = *(v8 + 80);
    sub_21EB0();
  }

  else
  {
    sub_360B0();
    sub_21FC0();
    sub_21278(v32, v33, v34, v35);
    v36 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  }

  swift_allocObject();
  sub_21FC0();
  sub_212EC(v28, v29, v30, v31);
  sub_20D74();
  sub_360A0();

  v37 = sub_36010();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  return sub_36000();
}

uint64_t sub_20210(uint64_t a1)
{
  v2 = sub_1DC4(&qword_54FA0, &qword_380F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v22 - v5;
  v7 = sub_1DC4(&qword_55060, &qword_380E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = *(a1 + 49);
  sub_3434C(*a1);
  v22[1] = v13;
  v22[2] = v14;
  v15 = *(a1 + 48);
  if (v12 == 1)
  {
    (*(v8 + 16))(v11, a1 + *(v2 + 40), v7);
  }

  else
  {
    sub_360B0();
  }

  sub_21278(a1, v6, &qword_54FA0, &qword_380F0);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_212EC(v6, v17 + v16, &qword_54FA0, &qword_380F0);
  sub_20D74();
  sub_360A0();

  v18 = sub_36010();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  return sub_36000();
}

uint64_t sub_204DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = *(*(sub_1DC4(&qword_55AA0, &unk_38340) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_21DFC, 0, 0);
}

uint64_t sub_2057C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = *(*(sub_1DC4(&qword_55AA0, &unk_38340) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_2061C, 0, 0);
}

uint64_t sub_2061C()
{
  v1 = *(v0 + 56);
  sub_362D0();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 64);
    v5 = *(sub_1DC4(&qword_54FA0, &qword_380F0) + 44);
    v6 = v1;
    sub_1DC4(&qword_55AA8, &qword_383F0);
    sub_35D20();
    sub_21EF0();
    v7();

    if (!v4)
    {
      sub_21F6C(v8, v9, v10, v11, v12, v13, v14, v15, v39, v40, v16);
      if (v21)
      {
        sub_20DB8((v0 + 16), v3);
        v22 = enum case for IntentParameter.directAssignment(_:);
        v23 = sub_35F50();
        sub_3EC0(v23);
        (*(v24 + 104))(v3, v22, v23);
        v25 = v3;
        v26 = 0;
      }

      else
      {
        v23 = sub_35F50();
        v25 = sub_21F38();
      }

      sub_3D4C(v25, v26, 1, v23);
      v27 = *(v0 + 72);
      sub_35F50();
      v28 = sub_21F38();
      v30 = sub_3D74(v28, v29, v23);
      v31 = *(v0 + 48);
      if (v30 == 1)
      {
        sub_21EE4(v23);
        (*(v32 + 104))();
        v33 = sub_21F38();
        if (sub_3D74(v33, v34, v23) != 1)
        {
          sub_3D9C(*(v0 + 72), &qword_55AA0, &unk_38340);
        }
      }

      else
      {
        sub_21EE4(v23);
        (*(v35 + 32))();
      }
    }
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = enum case for IntentParameter.ignore(_:);
    v19 = sub_35F50();
    sub_3EC0(v19);
    (*(v20 + 104))(v17, v18);
  }

  v36 = *(v0 + 72);

  sub_1AA4C();

  return v37();
}

uint64_t sub_20898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = *(*(sub_1DC4(&qword_55AA0, &unk_38340) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_20938, 0, 0);
}

uint64_t sub_20938()
{
  v1 = *(v0 + 56);
  sub_362C0();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 64);
    v5 = *(sub_1DC4(&qword_54F98, qword_37170) + 44);
    v6 = v1;
    sub_1DC4(&qword_55A90, &qword_38328);
    sub_35D20();
    sub_21EF0();
    v7();

    if (!v4)
    {
      sub_21F6C(v8, v9, v10, v11, v12, v13, v14, v15, v39, v40, v16);
      if (v21)
      {
        sub_20DB8((v0 + 16), v3);
        v22 = enum case for IntentParameter.directAssignment(_:);
        v23 = sub_35F50();
        sub_3EC0(v23);
        (*(v24 + 104))(v3, v22, v23);
        v25 = v3;
        v26 = 0;
      }

      else
      {
        v23 = sub_35F50();
        v25 = sub_21F38();
      }

      sub_3D4C(v25, v26, 1, v23);
      v27 = *(v0 + 72);
      sub_35F50();
      v28 = sub_21F38();
      v30 = sub_3D74(v28, v29, v23);
      v31 = *(v0 + 48);
      if (v30 == 1)
      {
        sub_21EE4(v23);
        (*(v32 + 104))();
        v33 = sub_21F38();
        if (sub_3D74(v33, v34, v23) != 1)
        {
          sub_3D9C(*(v0 + 72), &qword_55AA0, &unk_38340);
        }
      }

      else
      {
        sub_21EE4(v23);
        (*(v35 + 32))();
      }
    }
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = enum case for IntentParameter.ignore(_:);
    v19 = sub_35F50();
    sub_3EC0(v19);
    (*(v20 + 104))(v17, v18);
  }

  v36 = *(v0 + 72);

  sub_1AA4C();

  return v37();
}

double sub_20BB4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_20BEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CAC()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

unint64_t sub_20D74()
{
  result = qword_55A98;
  if (!qword_55A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55A98);
  }

  return result;
}

_OWORD *sub_20DB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_20DC8()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_20E90()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_20F58()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_21020()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_210E8()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_211B0()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_21278(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22014(a1, a2, a3, a4);
  sub_3EC0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_212EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22014(a1, a2, a3, a4);
  sub_3EC0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2133C()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54FA0, &qword_380F0);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_2057C(v6, v7, v8);
}

uint64_t sub_21404()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_214CC()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_21594()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_2165C()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_21724()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_217EC()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_218B4()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_2197C()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_20898(v6, v7, v8);
}

uint64_t sub_21A44()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_20898(v6, v7, v8);
}

uint64_t sub_21B0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_1AA4C();

  return v2();
}

uint64_t sub_21BFC()
{
  sub_21EC8();
  sub_21EBC();
  v0 = sub_1DC4(&qword_54F98, qword_37170);
  sub_11734(v0);
  v2 = *(v1 + 80);
  sub_21EB0();
  v3 = swift_task_alloc();
  v4 = sub_21EA0(v3);
  *v4 = v5;
  v6 = sub_21E88(v4);

  return sub_204DC(v6, v7, v8);
}

uint64_t sub_21CC4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (sub_1DC4(a1, a2) - 8);
  v8 = *(*v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(*v7 + 64);
  sub_3D00((v4 + v9 + 8));
  v11 = v7[12];
  v12 = sub_1DC4(&qword_55060, &qword_380E0);
  sub_3EC0(v12);
  (*(v13 + 8))(v4 + v9 + v11);
  v14 = v7[13];
  v15 = sub_1DC4(a3, a4);
  sub_3EC0(v15);
  (*(v16 + 8))(v4 + v9 + v14);

  return _swift_deallocObject(v4, v9 + v10, v8 | 7);
}

uint64_t sub_21F0C()
{

  return SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)(v3, v4, v5 - 120, v1, v0, v2);
}

void sub_21F44()
{
  v2 = *v0;

  sub_3434C(v2);
}

__n128 sub_21F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __n128 a11)
{
  result = a11;
  *(v11 + 16) = a10;
  *(v11 + 32) = a11;
  v13 = *(v11 + 40);
  v14 = *(v11 + 72);
  return result;
}

uint64_t sub_21F84()
{
  v4 = v0 + *(v1 + 52);
  v5 = *(v2 - 184);
  v6 = *(v2 - 176);

  return sub_35D10();
}

uint64_t sub_21FA8()
{

  return sub_35D10();
}

uint64_t sub_21FF4()
{

  return sub_3BCC(v0, v1 - 120);
}

uint64_t sub_22014(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DC4(a3, a4);
}

uint64_t sub_22034()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_595E8);
  v1 = sub_1D8C(v0, qword_595E8);
  *v1 = sub_286E4();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_220DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0x656E656353746573, 0xE800000000000000);
  v8[3] = v4;
  v8[4] = sub_22584(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_221DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_1DC4(&qword_55060, &qword_380E0);
  v4 = sub_4E88(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v20 - v9;
  sub_1DC4(&qword_55068, &unk_373E0);
  v11 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_36F10;
  v15 = v14 + v13;
  v16 = type metadata accessor for SceneNameResolver();
  v17 = swift_allocObject();
  *(v17 + 16) = 0x6D614E656E656373;
  *(v17 + 24) = 0xE900000000000065;
  v24[3] = v16;
  v24[4] = sub_22584(&qword_55B28, type metadata accessor for SceneNameResolver);
  v24[0] = v17;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v15 = 7;
  sub_3BCC(v24, v15 + 8);
  *(v15 + 48) = 1;
  (*(v6 + 16))(v15 + v11[12], v10, v3);
  v18 = v11[13];
  sub_362C0();
  sub_35D10();
  (*(v6 + 8))(v10, v3);
  sub_3D00(v24);
  sub_4E08(v21, a2);
  v23 = a2;
  sub_1F76C(sub_22568, v22, v14);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_224D4(void *a1)
{
  v1 = [a1 userTask];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 taskType];

  v3 = sub_36350();
  if (v3 != sub_36350())
  {
    return 0;
  }

  sub_34C9C(&dword_4 + 1);
  return v4 & 1;
}

uint64_t sub_22584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225CC()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59600);
  v1 = sub_1D8C(v0, qword_59600);
  *v1 = sub_286F8();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_22674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0x616D696C43746573, 0xEE0065646F4D6574);
  v8[3] = v4;
  v8[4] = sub_22C44(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_22780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = sub_4E88(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = v35 - v8;
  sub_1DC4(&qword_55068, &unk_373E0);
  v10 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v11 = *v10;
  v38 = *(*v10 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v39 = v13;
  *(v13 + 16) = xmmword_37390;
  v14 = v13 + v12;
  v15 = type metadata accessor for RoomNameResolver();
  v16 = swift_allocObject();
  *(v16 + 16) = 0x656D614E6D6F6F72;
  *(v16 + 24) = 0xE800000000000000;
  v45 = v15;
  v46 = sub_22C44(&qword_551B8, type metadata accessor for RoomNameResolver);
  v44[0] = v16;
  sub_1DC4(&qword_55078, &unk_373F0);
  v37 = sub_352A0;
  sub_35D10();
  *v14 = 1;
  sub_3BCC(v44, v14 + 8);
  *(v14 + 48) = 1;
  v17 = v10[12];
  v36 = *(v5 + 16);
  v35[0] = v2;
  v36(v14 + v17, v9, v2);
  v18 = v10[13];
  v35[1] = sub_362C0();
  sub_35D10();
  v19 = *(v5 + 8);
  v19(v9, v2);
  sub_3D00(v44);
  v20 = v14 + v38;
  v21 = type metadata accessor for AttributeResolver();
  v22 = swift_allocObject();
  v30 = sub_2B290(v22, v23, v24, v25, v26, v27, v28, v29);
  v45 = v21;
  v46 = sub_22C44(&qword_55468, type metadata accessor for AttributeResolver);
  v44[0] = v30;
  sub_35D10();
  *v20 = 8;
  sub_3BCC(v44, v20 + 8);
  *(v20 + 48) = 1;
  v31 = v35[0];
  v36(v20 + v10[12], v9, v35[0]);
  v32 = v20 + v10[13];
  sub_35D10();
  v19(v9, v31);
  sub_3D00(v44);
  v33 = v40;
  sub_4E08(v41, v40);
  v43 = v33;
  sub_1F76C(sub_22C28, v42, v39);
  swift_setDeallocating();
  return sub_39C4();
}

BOOL sub_22B90(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_34664(&off_4F460);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0;

  return sub_1C704(a1, a2, a3);
}

uint64_t sub_22D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22EC4;

  return sub_22C8C(a1, a2, a3);
}

uint64_t sub_22E84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeAutomationGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall Logger.debug(output:test:caller:)(Swift::String output, Swift::Bool test, Swift::String caller)
{
  countAndFlagsBits = caller._countAndFlagsBits;
  object = output._object;
  v19 = output._countAndFlagsBits;
  v22 = 46;
  v23 = 0xE100000000000000;
  v21 = &v22;
  v5 = sub_242AC(sub_3BAC, v20, caller._countAndFlagsBits, caller._object);
  if (v6)
  {
    sub_24414();
    sub_24430();
    v5 = sub_36780();
  }

  v7 = v5;
  v22 = 47;
  v23 = 0xE100000000000000;
  __chkstk_darwin();
  sub_24430();
  sub_242AC(v8, v9, v10, v11);
  v13 = v12;

  v14 = sub_366B0();
  v15 = sub_36860();

  v16 = os_log_type_enabled(v14, v15);
  if (v13)
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v17 = 136446466;
LABEL_8:
      sub_24430();
      sub_367C0();
      sub_36730();
      sub_24500();
      v18 = sub_23D3C(countAndFlagsBits, v7, &v22);

      *(v17 + 4) = v18;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_23D3C(v19, object, &v22);
      _os_log_impl(&dword_0, v14, v15, "%{public}s: %s", v17, 0x16u);
      swift_arrayDestroy();
      sub_2449C();
      sub_2449C();
    }

LABEL_9:

    return;
  }

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  *v17 = 136446466;
  sub_24430();
  if (v7 >> 14 >= sub_36780() >> 14)
  {
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t *Log.OSLogs.suggestions.unsafeMutableAddressor()
{
  if (qword_54D30 != -1)
  {
    swift_once();
  }

  return &static Log.OSLogs.suggestions;
}

uint64_t *Log.OSLogs.general.unsafeMutableAddressor()
{
  if (qword_54D28 != -1)
  {
    swift_once();
  }

  return &static Log.OSLogs.general;
}

uint64_t sub_232A0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_366C0();

  return sub_1D8C(v3, a2);
}

uint64_t sub_23348(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_366C0();
  sub_486C(v7, a2);
  sub_1D8C(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_366D0();
}

uint64_t sub_233FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_366C0();
  v6 = sub_1D8C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_23500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_243D0();
  result = sub_368A0();
  *a4 = result;
  return result;
}

id sub_2358C(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

void sub_23690(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void *), uint64_t a8, uint64_t (*a9)(void))
{
  v11 = 0x65725F7261646172;
  v39 = 46;
  v40 = 0xE100000000000000;
  if (a3)
  {
    v12 = 0xEF202D2074726F70;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v38 = &v39;
  if ((a3 & 1) == 0)
  {
    v11 = 0;
  }

  v35 = v11;
  v13 = sub_242AC(a7, v37, a5, a6);
  if (v14)
  {
    sub_24414();
    sub_24430();
    v13 = sub_36780();
  }

  v36 = v13;
  v39 = 47;
  v40 = 0xE100000000000000;
  __chkstk_darwin(v13);
  sub_24430();
  sub_242AC(v15, v16, v17, v18);
  v20 = v19;

  v21 = a2;

  v22 = sub_366B0();
  v23 = a9();

  v24 = os_log_type_enabled(v22, v23);
  if (v20)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v25 = 136315650;
      v26 = sub_23D3C(v35, v12, &v39);

      *(v25 + 4) = v26;
      *(v25 + 12) = 2082;
      sub_24430();
      sub_367C0();
      sub_36730();
      sub_24500();
      v27 = sub_23D3C(a5, v12, &v39);

      *(v25 + 14) = v27;
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_23D3C(a1, v21, &v39);
      _os_log_impl(&dword_0, v22, v23, "%s%{public}s: %s", v25, 0x20u);
      swift_arrayDestroy();
      sub_2449C();
LABEL_14:
      sub_2449C();
LABEL_16:

      return;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v24)
  {
    goto LABEL_15;
  }

  v28 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  *v28 = 136315650;
  v29 = sub_23D3C(v35, v12, &v39);

  *(v28 + 4) = v29;
  *(v28 + 12) = 2082;
  sub_24430();
  if (v36 >> 14 >= sub_36780() >> 14)
  {
    sub_24430();
    sub_367C0();
    v30 = sub_36730();
    v32 = v31;

    v33 = sub_23D3C(v30, v32, &v39);

    *(v28 + 14) = v33;
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_23D3C(a1, v21, &v39);
    _os_log_impl(&dword_0, v22, v23, "%s%{public}s: %s", v28, 0x20u);
    swift_arrayDestroy();
    sub_2449C();
    goto LABEL_14;
  }

  __break(1u);
}

void sub_23A60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *))
{
  v100[0] = 47;
  v100[1] = 0xE100000000000000;
  v99 = v100;
  sub_242AC(a9, v98, a4, a5);
  v14 = v13;

  v15 = sub_366B0();
  v16 = sub_36870();

  v17 = os_log_type_enabled(v15, v16);
  if (v14)
  {
    if (v17)
    {
      v18 = swift_slowAlloc();
      v100[0] = swift_slowAlloc();
      v26 = sub_2443C(4.8154e-34, v100[0], v19, v20, v21, v22, v23, v24, v25);
      *(v18 + 4) = v26;
      v34 = sub_244DC(v26, v27, v28, v29, v30, v31, v32, v33);
      *(v18 + 24) = sub_24474(v34, v35, v36, v37, v38, v39, v40, v41, v93);
      *(v18 + 32) = a8;
      sub_24414();
      sub_24430();
      sub_367C0();
      sub_36730();
      sub_24500();
      v42 = sub_23D3C(a4, a2, v100);

      *(v18 + 34) = v42;
      sub_2451C(v43, v44, v45, v46, v47, v48, v49, v50, v94, v96, a8);
      sub_24530(&dword_0, v51, v52, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
      swift_arrayDestroy();
LABEL_9:
      sub_2449C();
      sub_2449C();
    }

LABEL_10:

    return;
  }

  if (!v17)
  {
    goto LABEL_10;
  }

  v53 = swift_slowAlloc();
  v97 = swift_slowAlloc();
  v100[0] = v97;
  v61 = sub_2443C(4.8154e-34, v97, v54, v55, v56, v57, v58, v59, v60);
  *(v53 + 4) = v61;
  v69 = sub_244DC(v61, v62, v63, v64, v65, v66, v67, v68);
  *(v53 + 24) = sub_24474(v69, v70, v71, v72, v73, v74, v75, v76, v93);
  *(v53 + 32) = a8;
  sub_24430();
  v77 = sub_36780();
  v78 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v78 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v78 >= v77 >> 14)
  {
    sub_24430();
    sub_367C0();
    v79 = sub_36730();
    v81 = v80;

    v82 = sub_23D3C(v79, v81, v100);

    *(v53 + 34) = v82;
    sub_2451C(v83, v84, v85, v86, v87, v88, v89, v90, v95, v97, a8);
    sub_24530(&dword_0, v91, v92, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
    swift_arrayDestroy();
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_23D3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23E00(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1A750(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_3D00(v11);
  return v7;
}

unint64_t sub_23E00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23F00(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_36950();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_23F00(uint64_t a1, unint64_t a2)
{
  v4 = sub_23F4C(a1, a2);
  sub_24064(&off_4D128);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_23F4C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_367A0())
  {
    result = sub_24148(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_36910();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_36950();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_24064(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_241B8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24148(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1DC4(&qword_55C60, &unk_38650);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_241B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DC4(&qword_55C60, &unk_38650);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_242AC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_36770();
    v13[0] = sub_367B0();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unint64_t sub_243D0()
{
  result = qword_55C58;
  if (!qword_55C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55C58);
  }

  return result;
}

uint64_t sub_2443C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v9 = a1;

  return sub_23D3C(0x65725F7261646172, 0xEF202D2074726F70, va);
}

uint64_t sub_24474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 14) = a1;
  *(v9 + 22) = 2080;

  return sub_23D3C(a5, v10, va);
}

uint64_t sub_2449C()
{
}

uint64_t sub_244DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(v8 + 12) = 2082;

  return sub_23D3C(v10, v9, va);
}

uint64_t sub_24500()
{
}

void sub_24530(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x34u);
}

uint64_t sub_24704()
{
  v0 = sub_35E50();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_35E60();
  qword_59658 = result;
  return result;
}

uint64_t sub_24764()
{
  v0 = sub_1DC4(&qword_55388, &unk_37950);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = sub_35CE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  sub_364C0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17 = [v16 resourceURL];

  if (v17)
  {
    sub_35CB0();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_3D4C(v4, v18, 1, v7);
  sub_26764(v4, v6);
  if (sub_3D74(v6, 1, v7) == 1)
  {
    result = sub_11590(v6, &qword_55388, &unk_37950);
    v20 = 0x800000000003D1E0;
    v21 = 0xD00000000000004DLL;
  }

  else
  {
    sub_35CA0();
    v22 = *(v8 + 8);
    v22(v6, v7);
    sub_35C90();
    v22(v14, v7);
    v21 = sub_35CC0(1);
    v20 = v23;
    result = (v22)(v12, v7);
  }

  qword_59660 = v21;
  *algn_59668 = v20;
  return result;
}

uint64_t sub_24A0C()
{
  qword_59688 = sub_36540();
  unk_59690 = &protocol witness table for FeatureFlagProvider;
  sub_3C30(qword_59670);
  return sub_36530();
}

uint64_t sub_24A4C(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = *(*(sub_1DC4(&qword_55770, &unk_38050) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = sub_366A0();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_24B44, 0, 0);
}

uint64_t sub_24B44()
{
  if (qword_54D30 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v0[28] = static Log.OSLogs.suggestions;
  sub_36620();
  sub_36640();
  if (qword_54D48 != -1)
  {
    swift_once();
  }

  v2 = qword_59688;
  v3 = sub_1D48(qword_59670, qword_59688);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  LOBYTE(v3) = sub_36520();
  (*(v4 + 8))(v6, v2);

  if (v3)
  {
    if (qword_54D38 != -1)
    {
      swift_once();
    }

    v7 = v0[22];
    v8 = qword_59658;
    v0[5] = sub_35E50();
    v0[6] = sub_2671C(&qword_55D00, &type metadata accessor for DomainOwner);
    v0[2] = v8;

    v25 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    v0[29] = v10;
    *v10 = v0;
    v10[1] = sub_24FA0;
    v11 = v0[23];

    return v25(v0 + 2);
  }

  else
  {
    if (qword_54D20 != -1)
    {
      swift_once();
    }

    v14 = v0[26];
    v13 = v0[27];
    v16 = v0[24];
    v15 = v0[25];
    v17 = sub_366C0();
    sub_1D8C(v17, static Log.suggestions);
    v18._countAndFlagsBits = 0xD000000000000031;
    v18._object = 0x800000000003D0E0;
    v19._countAndFlagsBits = 0xD000000000000081;
    v19._object = 0x800000000003D120;
    v20._object = 0x800000000003D1B0;
    v20._countAndFlagsBits = 0xD000000000000027;
    Logger.warning(output:test:file:function:line:)(v18, 0, v19, v20, 38);
    sub_36620();
    v21 = sub_36650();
    sub_1A9E8(v21);
    sub_36610();
    sub_11590(v16, &qword_55770, &unk_38050);
    (*(v14 + 8))(v13, v15);
    v22 = v0[27];
    v23 = v0[24];

    v24 = v0[1];

    return v24(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_24FA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v5 = *v1;
  *(v2 + 240) = a1;

  sub_3D00((v2 + 16));

  return _swift_task_switch(sub_250A8, 0, 0);
}

uint64_t sub_250A8()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for HomeAutomationGenerator();
  v3 = swift_allocObject();
  *(v0 + 80) = v2;
  v4 = sub_2671C(&qword_55D08, type metadata accessor for HomeAutomationGenerator);
  *(v0 + 56) = v3;
  *(v0 + 88) = v4;
  sub_361B0();

  sub_3D00((v0 + 56));
  if (qword_54D00 != -1)
  {
    swift_once();
  }

  v5 = sub_35ED0();
  sub_1D8C(v5, qword_595D0);
  v6 = swift_task_alloc();
  *(v6 + 16) = &type metadata for DimLightsSuggestion;
  *(v6 + 24) = &off_55A00;
  sub_26910();
  sub_361C0();

  if (qword_54CD8 != -1)
  {
    v7 = swift_once();
  }

  v8 = sub_267D8(v7, qword_59548);
  *(v8 + 16) = &type metadata for GetStateOfAirQuality;
  *(v8 + 24) = &off_552C8;
  sub_361C0();

  if (qword_54D60 != -1)
  {
    v9 = swift_once();
  }

  v10 = sub_267D8(v9, qword_596B8);
  *(v10 + 16) = &type metadata for GetStateOfDoorLocks;
  *(v10 + 24) = &off_56018;
  sub_26850();

  if (qword_54CD0 != -1)
  {
    v11 = swift_once();
  }

  v12 = sub_267D8(v11, qword_59530);
  *(v12 + 16) = &type metadata for GetStateOfGarageDoors;
  *(v12 + 24) = &off_55250;
  sub_2681C();

  if (qword_54CB8 != -1)
  {
    v13 = swift_once();
  }

  v14 = sub_267D8(v13, qword_594E8);
  *(v14 + 16) = &type metadata for GetStateOfHumidity;
  *(v14 + 24) = &off_550C8;
  sub_26850();

  if (qword_54CC0 != -1)
  {
    v15 = swift_once();
  }

  v16 = sub_267D8(v15, qword_59500);
  *(v16 + 16) = &type metadata for GetStateOfLightsPower;
  *(v16 + 24) = &off_55140;
  sub_2681C();

  if (qword_54D68 != -1)
  {
    v17 = swift_once();
  }

  v18 = sub_267D8(v17, qword_596D0);
  *(v18 + 16) = &type metadata for GetStateOfSecuritySystems;
  *(v18 + 24) = &off_56150;
  sub_26850();

  if (qword_54CE8 != -1)
  {
    v19 = swift_once();
  }

  v20 = sub_267D8(v19, qword_59588);
  *(v20 + 16) = &type metadata for GetStateOfTemperature;
  *(v20 + 24) = &off_55568;
  sub_2681C();

  if (qword_54CB0 != -1)
  {
    v21 = swift_once();
  }

  v22 = sub_267D8(v21, qword_594D0);
  *(v22 + 16) = &type metadata for GetStateOfWindows;
  *(v22 + 24) = &off_54FE8;
  sub_26850();

  if (qword_54CF8 != -1)
  {
    v23 = swift_once();
  }

  v24 = sub_267D8(v23, qword_595B8);
  *(v24 + 16) = &type metadata for CreateAutomationSuggestion;
  *(v24 + 24) = &off_557D0;
  sub_2686C();

  if (qword_54D08 != -1)
  {
    v25 = swift_once();
  }

  v26 = sub_267D8(v25, qword_595E8);
  *(v26 + 16) = &type metadata for SetSceneSuggestion;
  *(v26 + 24) = &off_55AB0;
  sub_26888();
  sub_2686C();

  if (qword_54D78 != -1)
  {
    v27 = swift_once();
  }

  v28 = sub_267D8(v27, qword_59700);
  *(v28 + 16) = &type metadata for SetTemperatureSuggestion;
  *(v28 + 24) = &off_563B0;
  v29 = sub_26888();
  sub_26894(v29);
  sub_2686C();

  if (qword_54CC8 != -1)
  {
    v30 = swift_once();
  }

  v31 = sub_267D8(v30, qword_59518);
  *(v31 + 16) = &type metadata for OpenCloseSecureAccessoriesSuggestion;
  *(v31 + 24) = &off_551C0;
  sub_2686C();

  if (qword_54D70 != -1)
  {
    v32 = swift_once();
  }

  v33 = sub_267D8(v32, qword_596E8);
  *(v33 + 16) = &type metadata for PowerAccessoriesSuggestion;
  *(v33 + 24) = &off_561C8;
  sub_2686C();

  if (qword_54CF0 != -1)
  {
    v34 = swift_once();
  }

  v35 = sub_267D8(v34, qword_595A0);
  *(v35 + 16) = &type metadata for SetBrightnessSuggestion;
  *(v35 + 24) = &off_55620;
  v36 = sub_26888();
  sub_268B4(v36);
  sub_26850();

  if (qword_54D10 != -1)
  {
    v37 = swift_once();
  }

  v38 = sub_267D8(v37, qword_59600);
  *(v38 + 16) = &type metadata for SetClimateModeSuggestion;
  *(v38 + 24) = &off_55B30;
  v39 = sub_26888();
  sub_268D4(v39);
  sub_26850();

  if (qword_54CE0 != -1)
  {
    v40 = swift_once();
  }

  v41 = sub_267D8(v40, qword_59570);
  *(v41 + 16) = &type metadata for SetColorSuggestion;
  *(v41 + 24) = &off_553F0;
  sub_26888();
  sub_26850();

  if (qword_54D80 != -1)
  {
    v42 = swift_once();
  }

  v43 = sub_267D8(v42, qword_59718);
  *(v43 + 16) = &type metadata for SetFanSpeedSuggestion;
  *(v43 + 24) = &off_56590;
  v44 = sub_26888();
  sub_268F4(v44);
  sub_26850();

  if (qword_54D50 != -1)
  {
    v45 = swift_once();
  }

  v46 = sub_267D8(v45, qword_59698);
  *(v46 + 16) = &type metadata for GetStateSmokeSensorSuggestion;
  *(v46 + 24) = &off_55F88;
  sub_361C0();

  if (qword_54CA8 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 216);
  v48 = *(v0 + 208);
  v59 = *(v0 + 224);
  v60 = *(v0 + 200);
  v49 = *(v0 + 192);
  v50 = qword_594C8;
  sub_1DC4(&qword_55D10, &qword_386D0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_36F10;
  v52 = type metadata accessor for HomeAutomationSignalExtractor();
  *(v51 + 56) = v52;
  *(v51 + 64) = sub_2671C(&qword_55D18, type metadata accessor for HomeAutomationSignalExtractor);
  *(v51 + 32) = v50;

  sub_361A0();

  *(v0 + 160) = v52;
  *(v0 + 168) = sub_2671C(&qword_54F38, type metadata accessor for HomeAutomationSignalExtractor);
  *(v0 + 136) = v50;

  sub_36190();

  sub_3D00((v0 + 136));
  sub_361D0();

  sub_1DC4(&qword_55D20, &unk_386D8);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_36F10;
  sub_1EF58((v0 + 96), v53 + 32);

  sub_36620();
  v54 = sub_36650();
  sub_1A9E8(v54);
  sub_36610();
  sub_11590(v49, &qword_55770, &unk_38050);
  (*(v48 + 8))(v47, v60);
  v55 = *(v0 + 216);
  v56 = *(v0 + 192);

  v57 = *(v0 + 8);

  return v57(v53);
}

uint64_t sub_25DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DC4(&qword_55D28, &unk_386E8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v48 = (&v46 - v8);
  v9 = sub_360C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 24);
  v50 = *(a1 + 32);
  v49 = a1;
  sub_1D48(a1, v14);
  (*(a3 + 48))(a2, a3);
  *v13 = (*(a3 + 64))(a2, a3);
  (*(v10 + 104))(v13, enum case for SignalContextProperties.deliveryVehicle(_:), v9);
  *v71 = v14;
  *&v71[8] = v50;
  sub_3C30(&v70);
  sub_35DB0();

  (*(v10 + 8))(v13, v9);
  v15 = *&v71[16];
  v50 = *v71;
  sub_1D48(&v70, *v71);
  (*(a3 + 56))(a2, a3);
  v68 = v50;
  v69 = v15;
  sub_3C30(v67);
  sub_36100();

  v16 = v69;
  v50 = v68;
  sub_1D48(v67, v68);
  (*(a3 + 32))(a2, a3);
  v65 = v50;
  v66 = v16;
  sub_3C30(v64);
  sub_36110();

  v17 = v66;
  v50 = v65;
  sub_1D48(v64, v65);
  if (qword_54D40 != -1)
  {
    swift_once();
  }

  v62 = v50;
  v63 = v17;
  sub_3C30(v61);
  sub_360E0();
  v18 = v63;
  v46 = v62;
  *&v47 = sub_1D48(v61, v62);
  sub_1DC4(&qword_55080, &unk_379E0);
  v19 = sub_35F40();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v50 = xmmword_36F10;
  *(v23 + 16) = xmmword_36F10;
  v24 = enum case for SiriHintsMode.spoken(_:);
  v25 = sub_35DC0();
  (*(*(v25 - 8) + 104))(v23 + v22, v24, v25);
  (*(v20 + 104))(v23 + v22, enum case for DeliveryVehicle.siriHints(_:), v19);
  v59 = v46;
  v60 = v18;
  sub_3C30(v58);
  sub_36130();

  v26 = v60;
  v47 = v59;
  sub_1D48(v58, v59);
  sub_1DC4(&qword_55D30, &qword_386F8);
  v27 = *(sub_36020() - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  *(swift_allocObject() + 16) = v50;
  sub_36040();
  v56 = v47;
  v57 = v26;
  sub_3C30(v55);
  sub_36120();

  v30 = v57;
  v50 = v56;
  sub_1D48(v55, v56);
  sub_34DE8(a2, a3, v51);
  v53 = v50;
  v54 = v30;
  sub_3C30(v52);
  sub_360D0();
  sub_3D00(v51);
  v31 = v53;
  *&v47 = v54;
  v32 = sub_1D48(v52, v53);
  *&v50 = &v46;
  v33 = *(v31 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v46 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v48;
  *v48 = 0x6C7070612E6D6F63;
  *(v37 + 8) = 0xEE00656D6F482E65;
  v38 = enum case for Image.appIcon(_:);
  v39 = sub_361E0();
  (*(*(v39 - 8) + 104))(v37, v38, v39);
  sub_3D4C(v37, 0, 1, v39);
  v40 = sub_36060();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_36050();
  v51[3] = v40;
  v51[4] = &protocol witness table for StaticIconUrlProvider;
  v51[0] = v43;
  sub_360F0();
  (*(v33 + 8))(v36, v31);
  sub_3D00(v51);
  sub_3D00(v52);
  sub_3D00(v55);
  sub_3D00(v58);
  sub_3D00(v61);
  sub_3D00(v64);
  sub_3D00(v67);
  sub_3D00(&v70);
  v44 = v49;
  sub_1EF70(v49, &v70);
  (*(a3 + 72))(&v70, a2, a3);
  sub_3D00(&v70);
  sub_1EF70(v44, &v70);
  (*(a3 + 80))(&v70, a2, a3);
  return sub_3D00(&v70);
}

uint64_t sub_26678(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0;

  return sub_24A4C(a1, a2);
}

uint64_t sub_2671C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC4(&qword_55388, &unk_37950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D8(uint64_t a1, uint64_t a2)
{
  sub_1D8C(v2, a2);

  return swift_task_alloc();
}

uint64_t sub_2681C()
{

  return sub_361C0();
}

uint64_t sub_26850()
{

  return sub_361C0();
}

uint64_t sub_2686C()
{

  return sub_361C0();
}

uint64_t sub_2692C(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  return _swift_task_switch(sub_2694C, 0, 0);
}

uint64_t sub_2694C()
{
  v1 = v0[4];
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35FD0();
  v5 = v4;
  v0[6] = v3;
  v0[7] = v4;
  v0[8] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_36830();

  return _swift_task_switch(sub_269FC, v8, v7);
}

uint64_t sub_269FC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_2A05C();
  v6 = v5;
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  swift_unknownObjectRelease();
  *(v0 + 72) = v6;

  return _swift_task_switch(sub_26A80, 0, 0);
}

uint64_t sub_26A80()
{
  if (*(v0 + 72))
  {
    if (qword_54D20 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 40);
    v2 = sub_366C0();
    sub_1D8C(v2, static Log.suggestions);
    sub_36920(31);

    sub_36790(v1[1]);
    v3._countAndFlagsBits = 0xD00000000000001DLL;
    v4._countAndFlagsBits = 0xD000000000000074;
    v4._object = 0x800000000003D230;
    v5._countAndFlagsBits = 0xD00000000000003FLL;
    v5._object = 0x800000000003C7F0;
    v3._object = 0x800000000003D3D0;
    Logger.warning(output:test:file:function:line:)(v3, 0, v4, v5, 58);

LABEL_5:
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = *(v0 + 16);
    v8 = sub_36470();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_36460();
    switch(v7)
    {
      case 2:
        v11 = *(*(v0 + 40) + 40);
        goto LABEL_13;
      case 5:
        v16 = *(*(v0 + 40) + 32);
        if (!*(v16 + 16))
        {
          goto LABEL_16;
        }

        v17 = *(v16 + 32);
        sub_1DC4(&qword_54E78, &unk_37010);
        v6 = swift_allocObject();
        *(v6 + 1) = xmmword_36F10;
        HueSemantic.rawValue.getter(v17);
        v6[7] = &type metadata for String;
        v6[4] = v18;
        v6[5] = v19;
        goto LABEL_17;
      case 6:
        v12 = *(*(v0 + 40) + 48);
        if (!*(v12 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(v12 + 32);
        sub_363B0();
        v14 = sub_363A0();
        v15 = HomeAttributeValue.localizedValue.getter();

        sub_364B0();
        [v15 doubleValue];
        [v15 unit];
        sub_275FC();
        sub_364A0();
        sub_36440();

        goto LABEL_15;
      case 11:
        v11 = *(*(v0 + 40) + 56);
LABEL_13:
        if (!*(v11 + 16))
        {
LABEL_21:

          goto LABEL_5;
        }

        v20 = *(v11 + 32);
        sub_364B0();
        sub_275FC();
        sub_364A0();
        sub_36440();
LABEL_15:

LABEL_16:
        sub_1DC4(&qword_54E78, &unk_37010);
        v6 = swift_allocObject();
        *(v6 + 1) = xmmword_36F10;
        v21 = sub_36450();
        v6[7] = sub_36480();
        v6[4] = v21;
LABEL_17:

        break;
      default:
        goto LABEL_16;
    }
  }

  v22 = *(v0 + 8);

  return v22(v6);
}

id HomeAttributeValue.localizedValue.getter()
{
  v0 = sub_1DC4(&qword_55D38, &qword_38700);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v24 - v3;
  v5 = [objc_allocWithZone(NSMeasurementFormatter) init];
  v6 = [objc_opt_self() celsius];
  sub_272A4();
  sub_35C80();
  v7 = sub_35C70();
  v9 = v8;
  (*(v1 + 8))(v4, v0, v7);
  v10 = [v5 stringFromMeasurement:v9];

  v11 = sub_36710();
  v13 = v12;

  v28 = v11;
  v29 = v13;
  v26 = 67;
  v27 = 0xE100000000000000;
  sub_272E8();
  v14 = sub_368B0();

  [v25 unit];
  v15 = sub_36390();
  if (v15 != sub_36390() && (([v25 unit], v18 = sub_36390(), v18 == sub_36390()) || (objc_msgSend(v25, "unit"), v19 = sub_36390(), v19 == sub_36390())))
  {
    [v25 doubleValue];
    if (v14)
    {
      sub_1AD94(3, v20);
      if (qword_54D18 != -1)
      {
        sub_275B4();
      }

      v21 = sub_366C0();
      sub_1D8C(v21, static Log.general);
      sub_27614();
      sub_36920(49);
      sub_27634("Converted value: ");
      [v25 doubleValue];
      sub_36840();
      v31._countAndFlagsBits = 0xD00000000000001CLL;
      v31._object = 0x800000000003D2F0;
      sub_36790(v31);
      sub_27654();
      sub_275D4("/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationSiriSuggestions/Resolvers/ValueResolver.swift", v28);

      sub_363B0();
    }

    else
    {
      sub_1AD94(2, v20);
      if (qword_54D18 != -1)
      {
        sub_275B4();
      }

      v22 = sub_366C0();
      sub_1D8C(v22, static Log.general);
      sub_27614();
      sub_36920(52);
      sub_27634("Converted value: ");
      [v25 doubleValue];
      sub_36840();
      v32._countAndFlagsBits = 0xD00000000000001FLL;
      v32._object = 0x800000000003D2D0;
      sub_36790(v32);
      sub_27654();
      sub_275D4("/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationSiriSuggestions/Resolvers/ValueResolver.swift", v28);

      sub_363B0();
    }

    v23 = sub_363A0();

    return v23;
  }

  else
  {

    v16 = v25;

    return v16;
  }
}

unint64_t sub_272A4()
{
  result = qword_55D40;
  if (!qword_55D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55D40);
  }

  return result;
}

unint64_t sub_272E8()
{
  result = qword_55D48;
  if (!qword_55D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55D48);
  }

  return result;
}

void *sub_2733C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return v0;
}

uint64_t sub_2737C()
{
  sub_2733C();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void *sub_273D4()
{
  v0[2] = 0x65756C6176;
  v0[3] = 0xE500000000000000;
  sub_27628();
  sub_31868(v1, v2, v3, v4, v5, v6, v7, v8);
  v0[4] = v34;
  sub_27628();
  sub_31754(v9, v10, v11, v12, v13, v14, v15, v16);
  v0[5] = v34;
  sub_27628();
  sub_31754(v17, v18, v19, v20, v21, v22, v23, v24);
  v0[6] = v34;
  sub_27628();
  sub_31754(v25, v26, v27, v28, v29, v30, v31, v32);
  v0[7] = v34;
  return v0;
}

uint64_t sub_27474(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BA0;

  return sub_2692C(v6, a2);
}

uint64_t sub_27574(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ValueResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275B4()
{

  return swift_once();
}

void sub_27634(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000011;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_36790(v2);
}

uint64_t sub_27654()
{

  return sub_36840();
}

uint64_t sub_27674(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_27694, 0, 0);
}

uint64_t sub_27694()
{
  v1 = v0[2];
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35FD0();
  v5 = v4;
  v0[4] = v3;
  v0[5] = v4;
  v0[6] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_36830();

  return _swift_task_switch(sub_27744, v8, v7);
}

uint64_t sub_27744()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_2A2C8();
  v6 = v5;
  swift_unknownObjectRelease();
  v0[7] = v4;
  v0[8] = v6;

  return _swift_task_switch(sub_277CC, 0, 0);
}

uint64_t sub_277CC()
{
  v15 = v0;
  v1 = v0[8];
  if (v1)
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v2 = v0[7];
    v3 = v0[3];
    v4 = sub_366C0();
    sub_1D8C(v4, static Log.suggestions);
    sub_36920(27);

    v14._countAndFlagsBits = 0xD000000000000013;
    v14._object = 0x8000000000039DF0;
    sub_36790(v3[1]);
    v17._countAndFlagsBits = 544175136;
    v17._object = 0xE400000000000000;
    sub_36790(v17);

    v18._countAndFlagsBits = v2;
    v18._object = v1;
    sub_36790(v18);

    v5._countAndFlagsBits = 0xD000000000000013;
    v6._object = 0x800000000003D430;
    v5._object = 0x8000000000039DF0;
    v6._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.debug(output:test:caller:)(v5, 0, v6);

    sub_1DC4(&qword_54E78, &unk_37010);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_36F10;
    v7[7] = &type metadata for String;
    v7[4] = v2;
    v7[5] = v1;
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v8 = v0[3];
    v9 = sub_366C0();
    sub_1D8C(v9, static Log.suggestions);
    sub_36920(16);

    strcpy(&v14, "Couldn't find ");
    HIBYTE(v14._object) = -18;
    sub_36790(v8[1]);
    v10._countAndFlagsBits = 0xD00000000000003FLL;
    v11._object = 0x800000000003D430;
    v10._object = 0x800000000003C7F0;
    v11._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.warning(output:test:file:function:line:)(v14, 0, v11, v10, 18);

    v7 = _swiftEmptyArrayStorage;
  }

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_27A74(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BA0;

  return sub_27674(v6, a2);
}

uint64_t sub_27B74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessoryNameResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27BB4(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  return _swift_task_switch(sub_27BD4, 0, 0);
}

uint64_t sub_27BD4()
{
  v1 = v0[10];
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35FD0();
  v5 = v4;
  v0[12] = v3;
  v0[13] = v4;
  v0[14] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_36830();

  return _swift_task_switch(sub_27C84, v8, v7);
}

uint64_t sub_27C84()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = sub_29A2C();
  v6 = v5;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  swift_unknownObjectRelease();
  *(v0 + 168) = v6;

  return _swift_task_switch(sub_27D08, 0, 0);
}

uint64_t sub_27D08()
{
  if (*(v0 + 168))
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v1 = *(v0 + 88);
    v2 = sub_366C0();
    sub_1D8C(v2, static Log.suggestions);
    sub_36920(33);

    sub_36790(v1[1]);
    v3._countAndFlagsBits = 0xD00000000000001FLL;
    v4._countAndFlagsBits = 0xD00000000000007CLL;
    v4._object = 0x800000000003D520;
    v5._countAndFlagsBits = 0xD00000000000003FLL;
    v5._object = 0x800000000003C7F0;
    v3._object = 0x800000000003D500;
    Logger.warning(output:test:file:function:line:)(v3, 0, v4, v5, 19);

    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }

  else
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 88);
    v10 = *(v9 + 16);
    *(v0 + 120) = v10;
    v11 = *(v9 + 24);
    *(v0 + 128) = v11;
    type metadata accessor for SuggestionEntityRetrieval();
    *(v0 + 136) = swift_initStackObject();

    *(v0 + 144) = sub_2DDB0(v10, v11);
    v12 = swift_task_alloc();
    *(v0 + 152) = v12;
    *v12 = v0;
    v12[1] = sub_27F08;

    return sub_304F4();
  }
}

uint64_t sub_27F08(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_28028, 0, 0);
}

uint64_t sub_28028()
{
  v1 = v0[20];
  if (*(v1 + 16) < 2uLL)
  {
    v8 = v0[20];

    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v9 = sub_366C0();
    sub_1D8C(v9, static Log.suggestions);
    v10._countAndFlagsBits = 0xD00000000000001DLL;
    v10._object = 0x800000000003D5A0;
    v11._object = 0x800000000003D520;
    v11._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.debug(output:test:caller:)(v10, 0, v11);
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
      v1 = v0[20];
    }

    v3 = v0[15];
    v2 = v0[16];
    v4 = sub_366C0();
    sub_1D8C(v4, static Log.suggestions);
    sub_36920(27);

    v15._countAndFlagsBits = v3;
    v15._object = v2;
    sub_36790(v15);
    v16._countAndFlagsBits = 544175136;
    v16._object = 0xE400000000000000;
    sub_36790(v16);
    v17._countAndFlagsBits = sub_36810();
    sub_36790(v17);

    v5._countAndFlagsBits = 0xD000000000000013;
    v6._object = 0x800000000003D520;
    v5._object = 0x8000000000039DF0;
    v6._countAndFlagsBits = 0xD00000000000007CLL;
    Logger.debug(output:test:caller:)(v5, 0, v6);

    sub_1DC4(&qword_54E78, &unk_37010);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_36F10;
    v7[7] = sub_1DC4(&qword_55F80, &unk_38990);
    v7[4] = v1;
  }

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_28294(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BA0;

  return sub_27BB4(v6, a2);
}

uint64_t sub_28394(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SameTypeMultipleRoomsResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_283D4()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28430()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_2848C()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_284E8()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28544()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_285A0()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28610()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_2866C()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_2871C()
{
  sub_28FC8();

  sub_28FA0();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_2877C()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_287D8()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28834()
{
  sub_28FC8();

  sub_28FA0();
  sub_1ACF4();
  v2._countAndFlagsBits = sub_36750();
  sub_28FF0(v2);

  return v1;
}

uint64_t sub_28890()
{
  sub_36920(17);

  v1._countAndFlagsBits = sub_36750();
  sub_36790(v1);

  return 0x67677553656D6F48;
}

uint64_t sub_28928()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59698);
  v1 = sub_1D8C(v0, qword_59698);
  *v1 = sub_28890();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_289C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0xD000000000000013, 0x8000000000039B70);
  v8[3] = v4;
  v8[4] = sub_28F58(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_28AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_55060, &qword_380E0);
  v5 = sub_4E88(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v21[-v10];
  sub_1DC4(&qword_55068, &unk_373E0);
  v12 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_36F10;
  v16 = v15 + v14;
  v17 = type metadata accessor for AccessoryTypeResolver();
  v18 = swift_allocObject();
  strcpy((v18 + 16), "accessoryType");
  *(v18 + 30) = -4864;
  v23[3] = v17;
  v23[4] = sub_28F58(&qword_55238, type metadata accessor for AccessoryTypeResolver);
  v23[0] = v18;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v16 = 0;
  sub_3BCC(v23, v16 + 8);
  *(v16 + 48) = 1;
  (*(v7 + 16))(v16 + v12[12], v11, v4);
  v19 = v12[13];
  sub_362C0();
  sub_35D10();
  (*(v7 + 8))(v11, v4);
  sub_3D00(v23);
  sub_4E08(a1, a2);
  v22 = a2;
  sub_1F76C(sub_28F3C, v21, v15);
  swift_setDeallocating();
  return sub_39C4();
}

unint64_t sub_28DC0(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_28E48()
{
  sub_1DC4(&qword_55080, &unk_379E0);
  v0 = sub_35F40();
  sub_4E88(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_36F10;
  (*(v2 + 104))(v6 + v5, enum case for DeliveryVehicle.siriHelp(_:), v0);
  return v6;
}

uint64_t sub_28F58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_28FC8()
{

  sub_36920(17);
}

void sub_28FF0(Swift::String a1)
{

  sub_36790(a1);
}

uint64_t sub_29008()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  sub_35EC0();
  sub_2A6F0();

  sub_36260();
  sub_3D00(v4);
  if (v6)
  {
    if (sub_2A604())
    {
      v0 = LOBYTE(v4[0]);
    }

    else
    {
      v0 = 2;
    }
  }

  else
  {
    sub_2A510(v5);
    v0 = 2;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v1 = sub_366C0();
  sub_1D8C(v1, static Log.suggestions);
  sub_2A624();
  sub_36920(42);

  sub_3ED0();
  v4[0] = 0xD000000000000028;
  v4[1] = v2;
  v5[0] = v0;
  sub_1DC4(&qword_56000, &qword_389E0);
  v7._countAndFlagsBits = sub_2A780();
  sub_36790(v7);

  sub_2A7F4("getedMoreThanOneEntity: ", v4[0]);

  return v0;
}

uint64_t sub_291B0()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  sub_35EC0();
  sub_2A6F0();

  sub_2A798();
  sub_2A648();
  sub_3D00(&v3);
  if (v5)
  {
    sub_2A604();
    sub_2A6E0();
  }

  else
  {
    sub_2A510(v4);
    v0 = 0;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v1 = sub_366C0();
  sub_1D8C(v1, static Log.suggestions);
  sub_2A624();
  sub_36920(27);

  sub_3ED0();
  sub_2A6A0();
  sub_1DC4(&qword_54F68, &qword_37150);
  v6._countAndFlagsBits = sub_2A780();
  sub_36790(v6);

  sub_2A6C0("getedMoreThanOneEntity: ", v3);

  return v0;
}

uint64_t sub_29334()
{
  sub_2A7AC();
  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v0 = sub_366C0();
  sub_1D8C(v0, static Log.suggestions);
  sub_2A75C();

  sub_3ED0();
  v13[1] = v1;
  v16._countAndFlagsBits = sub_365E0();
  sub_36790(v16);

  sub_2A814("getedMoreThanOneEntity: ", 0xD00000000000001DLL);

  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  sub_2A7C0();
  v2 = qword_596B0;
  v3 = sub_35EC0();
  v14 = v3;
  v15 = &protocol witness table for DefaultOwner;
  v13[0] = v2;

  swift_retain_n();
  v12 = &type metadata for String;
  v10 = sub_365F0();
  v11 = v4;
  sub_2A680();
  sub_3D00(&v10);
  sub_3D00(v13);
  v14 = v3;
  v15 = &protocol witness table for DefaultOwner;
  v13[0] = v2;
  v12 = sub_1DC4(&qword_54F68, &qword_37150);
  if (sub_36600())
  {
    v5 = sub_365F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v10 = v5;
  v11 = v7;
  sub_2A66C();
  sub_2A7C0();
  sub_2A680();
  sub_3D00(&v10);
  sub_3D00(v13);
  v14 = v3;
  v15 = &protocol witness table for DefaultOwner;
  v13[0] = v2;
  v8 = sub_36680();
  v12 = &type metadata for HomeDeviceType;
  v10 = v8;
  sub_2A634();
  sub_2A680();
  sub_3D00(&v10);
  return sub_3D00(v13);
}

uint64_t sub_29568()
{
  sub_2A7AC();
  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v1 = sub_366C0();
  sub_1D8C(v1, static Log.suggestions);
  sub_2A75C();

  sub_3ED0();
  v8[1] = v2;
  v9._countAndFlagsBits = sub_36360();
  sub_36790(v9);

  sub_2A814("getedMoreThanOneEntity: ", 0xD00000000000001DLL);

  v3 = sub_36380();
  v4 = sub_36380();
  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  if (v3 == v4)
  {
    v0 = 5;
  }

  v5 = qword_596B0;
  v8[3] = sub_35EC0();
  v8[4] = &protocol witness table for DefaultOwner;
  v8[0] = v5;
  v7[3] = &type metadata for HomeAttributeType;
  v7[0] = v0;

  sub_36270();
  sub_3D00(v7);
  return sub_3D00(v8);
}

uint64_t sub_29700()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  sub_35EC0();
  sub_2A6F0();

  sub_2A5F0();
  sub_2A648();
  sub_3D00(&v3);
  if (v5)
  {
    sub_2A604();
    sub_2A6E0();
  }

  else
  {
    sub_2A510(v4);
    v0 = 0;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v1 = sub_366C0();
  sub_1D8C(v1, static Log.suggestions);
  sub_2A624();
  sub_36920(28);

  sub_3ED0();
  sub_2A6A0();
  sub_1DC4(&qword_54F68, &qword_37150);
  v6._countAndFlagsBits = sub_2A780();
  sub_36790(v6);

  sub_2A6C0("getedMoreThanOneEntity: ", v3);

  return v0;
}

uint64_t sub_29884()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  sub_35EC0();
  sub_2A6F0();

  sub_36260();
  sub_3D00(v4);
  if (v6)
  {
    if (sub_2A604())
    {
      v0 = LOBYTE(v4[0]);
    }

    else
    {
      v0 = 2;
    }
  }

  else
  {
    sub_2A510(v5);
    v0 = 2;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v1 = sub_366C0();
  sub_1D8C(v1, static Log.suggestions);
  sub_2A624();
  sub_36920(43);

  sub_3ED0();
  v4[0] = 0xD000000000000029;
  v4[1] = v2;
  v5[0] = v0;
  sub_1DC4(&qword_56000, &qword_389E0);
  v7._countAndFlagsBits = sub_2A780();
  sub_36790(v7);

  sub_2A7F4("getedMoreThanOneEntity: ", v4[0]);

  return v0;
}

uint64_t sub_29A2C()
{
  v2 = sub_366C0();
  v3 = sub_2A72C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_2A6FC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  v8 = qword_596B0;
  v18 = sub_35EC0();
  v19 = &protocol witness table for DefaultOwner;
  v16 = v8;

  sub_2A5F0();
  sub_2A634();
  sub_36260();
  sub_3D00(&v16);
  if (v22)
  {
    if (swift_dynamicCast())
    {
      v9 = 0;
      v10 = v16;
      goto LABEL_8;
    }
  }

  else
  {
    sub_2A510(&v20);
  }

  v10 = 0;
  v9 = 1;
LABEL_8:
  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  sub_1D8C(v0, static Log.suggestions);
  v11 = sub_2A714();
  v12(v11);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_36920(28);

  sub_3ED0();
  v16 = 0xD00000000000001ALL;
  v17 = v14;
  if ((v9 & 1) == 0)
  {
    v13 = sub_36340();
  }

  v20 = v13;
  v21 = v9;
  sub_1DC4(&qword_56010, &qword_389E8);
  v23._countAndFlagsBits = sub_36720();
  sub_36790(v23);

  sub_2A7D4("getedMoreThanOneEntity: ", v16);

  (*(v5 + 8))(v1, v0);
  return v10;
}

uint64_t sub_29C7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, char a11, char a12)
{
  if ((a2 & 1) == 0)
  {
    if (qword_54D58 != -1)
    {
      sub_2A5D0();
    }

    v16 = qword_596B0;
    v34 = sub_35EC0();
    v35 = &protocol witness table for DefaultOwner;
    v33[0] = v16;
    v32 = &type metadata for HomeDeviceType;
    v30 = a1;

    sub_2A634();
    sub_2A5F0();
    sub_2A744();
    sub_3D00(&v30);
    sub_3D00(v33);
  }

  if (a4)
  {
    v17 = qword_54D58;

    if (v17 != -1)
    {
      sub_2A5D0();
    }

    v18 = qword_596B0;
    v34 = sub_35EC0();
    v35 = &protocol witness table for DefaultOwner;
    v32 = &type metadata for String;
    v33[0] = v18;
    v30 = a3;
    v31 = a4;

    sub_2A5F0();
    sub_2A744();
    sub_3D00(&v30);
    sub_3D00(v33);
  }

  if (a6)
  {
    v19 = qword_54D58;

    if (v19 != -1)
    {
      sub_2A5D0();
    }

    v20 = qword_596B0;
    v34 = sub_35EC0();
    v35 = &protocol witness table for DefaultOwner;
    v32 = &type metadata for String;
    v33[0] = v20;
    v30 = a5;
    v31 = a6;

    sub_2A66C();
    sub_2A5F0();
    sub_2A744();
    sub_3D00(&v30);
    sub_3D00(v33);
  }

  if ((a8 & 1) == 0)
  {
    if (qword_54D58 != -1)
    {
      sub_2A5D0();
    }

    v21 = qword_596B0;
    v34 = sub_35EC0();
    v35 = &protocol witness table for DefaultOwner;
    v33[0] = v21;
    v32 = &type metadata for HomeAttributeType;
    v30 = a7;

    sub_2A744();
    sub_3D00(&v30);
    sub_3D00(v33);
  }

  if (a10)
  {
    v22 = qword_54D58;

    if (v22 != -1)
    {
      sub_2A5D0();
    }

    v23 = qword_596B0;
    v34 = sub_35EC0();
    v35 = &protocol witness table for DefaultOwner;
    v32 = &type metadata for String;
    v33[0] = v23;
    v30 = a9;
    v31 = a10;

    sub_2A798();
    sub_2A744();
    sub_3D00(&v30);
    sub_3D00(v33);
  }

  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  v24 = qword_596B0;
  v25 = sub_35EC0();
  v34 = v25;
  v35 = &protocol witness table for DefaultOwner;
  v33[0] = v24;
  v32 = &type metadata for Bool;
  LOBYTE(v30) = a11 & 1;
  swift_retain_n();
  sub_2A744();
  sub_3D00(&v30);
  sub_3D00(v33);
  v34 = v25;
  v35 = &protocol witness table for DefaultOwner;
  v32 = &type metadata for Bool;
  v33[0] = v24;
  LOBYTE(v30) = a12 & 1;
  sub_2A744();
  sub_3D00(&v30);
  return sub_3D00(v33);
}

uint64_t sub_2A05C()
{
  v2 = sub_366C0();
  v3 = sub_2A72C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_2A6FC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  v8 = qword_596B0;
  v18 = sub_35EC0();
  v19 = &protocol witness table for DefaultOwner;
  v16 = v8;

  sub_36260();
  sub_3D00(&v16);
  if (v22)
  {
    if (swift_dynamicCast())
    {
      v9 = 0;
      v10 = v16;
      goto LABEL_8;
    }
  }

  else
  {
    sub_2A510(&v20);
  }

  v10 = 0;
  v9 = 1;
LABEL_8:
  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  sub_1D8C(v0, static Log.suggestions);
  v11 = sub_2A714();
  v12(v11);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_36920(42);

  sub_3ED0();
  v16 = 0xD000000000000028;
  v17 = v14;
  if ((v9 & 1) == 0)
  {
    v13 = sub_36380();
  }

  v20 = v13;
  v21 = v9;
  sub_1DC4(&qword_56010, &qword_389E8);
  v23._countAndFlagsBits = sub_36720();
  sub_36790(v23);

  sub_2A7D4("getedMoreThanOneEntity: ", v16);

  (*(v5 + 8))(v1, v0);
  return v10;
}

uint64_t sub_2A2C8()
{
  sub_21EBC();
  if (qword_54D58 != -1)
  {
    sub_2A5D0();
  }

  sub_35EC0();
  sub_2A6F0();

  sub_2A5F0();
  sub_2A648();
  sub_3D00(&v3);
  if (v5)
  {
    sub_2A604();
    sub_2A6E0();
  }

  else
  {
    sub_2A510(v4);
    v0 = 0;
  }

  if (qword_54D20 != -1)
  {
    sub_3E80();
  }

  v1 = sub_366C0();
  sub_1D8C(v1, static Log.suggestions);
  sub_2A624();
  sub_36920(28);

  sub_3ED0();
  sub_2A6A0();
  sub_1DC4(&qword_54F68, &qword_37150);
  v6._countAndFlagsBits = sub_2A780();
  sub_36790(v6);

  sub_2A6C0("getedMoreThanOneEntity: ", v3);

  return v0;
}

uint64_t sub_2A44C()
{
  v0 = sub_36030();
  v6[3] = v0;
  v6[4] = sub_2A578();
  v1 = sub_3C30(v6);
  (*(*(v0 - 8) + 104))(v1, enum case for CoreSuggestionGroups.domain(_:), v0);
  v2 = sub_35EC0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_35EB0();
  qword_596B0 = result;
  return result;
}

uint64_t sub_2A510(uint64_t a1)
{
  v2 = sub_1DC4(&qword_55078, &unk_373F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2A578()
{
  result = qword_56008;
  if (!qword_56008)
  {
    sub_36030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56008);
  }

  return result;
}

uint64_t sub_2A5D0()
{

  return swift_once();
}

uint64_t sub_2A604()
{

  return swift_dynamicCast();
}

uint64_t sub_2A648()
{

  return sub_36260();
}

uint64_t sub_2A680()
{

  return sub_36270();
}

uint64_t sub_2A6A0()
{
}

uint64_t sub_2A744()
{

  return sub_36270();
}

void sub_2A75C()
{

  sub_36920(31);
}

uint64_t sub_2A780()
{

  return sub_36720();
}

uint64_t sub_2A834()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_596B8);
  v1 = sub_1D8C(v0, qword_596B8);
  *v1 = sub_2877C();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_2A8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_55060, &qword_380E0);
  v5 = sub_4E88(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v21[-v10];
  sub_1DC4(&qword_55068, &unk_373E0);
  v12 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_36F10;
  v16 = v15 + v14;
  IsSingleAccessoryOfTypeInHomeResolver = type metadata accessor for IsSingleAccessoryOfTypeInHomeResolver();
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD00000000000001DLL;
  *(v18 + 24) = 0x8000000000039CF0;
  v23[3] = IsSingleAccessoryOfTypeInHomeResolver;
  v23[4] = sub_4DB0();
  v23[0] = v18;
  sub_1DC4(&qword_55078, &unk_373F0);
  sub_35D10();
  *v16 = 3;
  sub_3BCC(v23, v16 + 8);
  *(v16 + 48) = 1;
  (*(v7 + 16))(v16 + v12[12], v11, v4);
  v19 = v12[13];
  sub_362C0();
  sub_35D10();
  (*(v7 + 8))(v11, v4);
  sub_3D00(v23);
  sub_4E08(a1, a2);
  v22 = a2;
  sub_1F76C(sub_2AC40, v21, v15);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_2ABA4(void *a1)
{
  v1 = [a1 userTask];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 taskType];

  v3 = sub_36350();
  if (v3 != sub_36350() || (sub_345E8() & 1) == 0)
  {
    return 0;
  }

  sub_34608(&dword_C + 1);
  return v4 & 1;
}

uint64_t sub_2AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[6] = a2;
  v5 = *(*(sub_1DC4(&qword_553E0, &qword_37990) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = sub_35D70();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_2AD58, 0, 0);
}

uint64_t sub_2AD58()
{
  v1 = v0[6];
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35FD0();
  v5 = v4;
  v0[13] = v3;
  v0[14] = v4;
  v0[15] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_36830();

  return _swift_task_switch(sub_2AE08, v8, v7);
}

uint64_t sub_2AE08()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = sub_2A05C();
  v6 = v5;
  swift_unknownObjectRelease();
  *(v0 + 128) = v4;
  *(v0 + 136) = v6;

  return _swift_task_switch(sub_2AE94, 0, 0);
}

void *sub_2B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = 0x7475626972747461;
  v8[3] = 0xE900000000000065;
  sub_3173C(a1, a2, a3, a4, a5, a6, a7, a8);
  v8[4] = &off_4E508;
  return v8;
}

uint64_t sub_2B2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1BA0;

  return sub_2AC5C(v8, a2, a3);
}

uint64_t sub_2B404(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributeResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2B468()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_596D0);
  v1 = sub_1D8C(v0, qword_596D0);
  *v1 = sub_287D8();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

unint64_t sub_2B510(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2B59C(uint64_t a1)
{
  result = sub_2C18C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2C1CC(result, v3, 0, a1);
  }
}

uint64_t sub_2B618()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_596E8);
  v1 = sub_1D8C(v0, qword_596E8);
  *v1 = sub_28834();
  v1[1] = v2;
  v3 = enum case for DialogDetails.catId(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_2B6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0xD000000000000010, 0x8000000000039B30);
  v8[3] = v4;
  v8[4] = sub_2C21C(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_2B7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = sub_4E88(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v32 - v8;
  sub_1DC4(&qword_55068, &unk_373E0);
  v10 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v34 = *(*v10 + 72);
  v12 = v34;
  v13 = swift_allocObject();
  v37 = v13;
  *(v13 + 16) = xmmword_37020;
  v14 = v13 + v11;
  v15 = type metadata accessor for AccessoryTypeResolver();
  v16 = swift_allocObject();
  strcpy((v16 + 16), "accessoryType");
  *(v16 + 30) = -4864;
  v45 = v15;
  v46 = sub_2C21C(&qword_55238, type metadata accessor for AccessoryTypeResolver);
  v44[0] = v16;
  sub_1DC4(&qword_55078, &unk_373F0);
  v35 = sub_352A0;
  sub_6E54();
  *v14 = 0;
  sub_3BCC(v44, v14 + 8);
  *(v14 + 48) = 257;
  v17 = v10[12];
  v41 = *(v5 + 16);
  v33 = v2;
  v41(v14 + v17, v9, v2);
  v18 = v10[13];
  v36 = sub_362C0();
  sub_6E54();
  v19 = *(v5 + 8);
  v40 = v5 + 8;
  v19(v9, v2);
  v20 = v19;
  sub_3D00(v44);
  v21 = v14 + v12;
  v22 = type metadata accessor for RoomNameResolver();
  v23 = swift_allocObject();
  *(v23 + 16) = 0x656D614E6D6F6F72;
  *(v23 + 24) = 0xE800000000000000;
  v45 = v22;
  v46 = sub_2C21C(&qword_551B8, type metadata accessor for RoomNameResolver);
  v44[0] = v23;
  sub_6E54();
  *v21 = 1;
  sub_3BCC(v44, v21 + 8);
  *(v21 + 48) = 257;
  v24 = v33;
  v41(v21 + v10[12], v9, v33);
  v25 = v21 + v10[13];
  sub_35D10();
  v20(v9, v24);
  sub_3D00(v44);
  v26 = v14 + 2 * v34;
  v27 = type metadata accessor for SameTypeMultipleRoomsResolver();
  v28 = swift_allocObject();
  *(v28 + 16) = 0xD000000000000015;
  *(v28 + 24) = 0x8000000000039D10;
  v45 = v27;
  v46 = sub_2C21C(&qword_56240, type metadata accessor for SameTypeMultipleRoomsResolver);
  v44[0] = v28;
  sub_6E54();
  *v26 = 4;
  sub_3BCC(v44, v26 + 8);
  *(v26 + 48) = 0;
  v41(v26 + v10[12], v9, v24);
  v29 = v26 + v10[13];
  sub_35D10();
  v20(v9, v24);
  sub_3D00(v44);
  v30 = v38;
  sub_4E08(v39, v38);
  v43 = v30;
  sub_1F76C(sub_2C100, v42, v37);
  swift_setDeallocating();
  return sub_39C4();
}

uint64_t sub_2BD14@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_1DC4(&qword_553E0, &qword_37990);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v18[-v4];
  v6 = sub_1DC4(&qword_56248, &qword_38B88);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v18[-v11];
  v13 = sub_362A0();
  sub_2B59C(v13);
  v15 = v14;

  if (v15)
  {
    v16 = 1;
  }

  else
  {
    sub_364D0();
    v16 = 0;
  }

  sub_3D4C(v12, v16, 1, v2);
  sub_11528(v12, v10, &qword_56248, &qword_38B88);
  if (sub_3D74(v10, 1, v2) == 1)
  {
    result = sub_11590(v12, &qword_56248, &qword_38B88);
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    sub_2C11C(v10, v5);
    sub_2BF0C(v5, a1);
    sub_11590(v5, &qword_553E0, &qword_37990);
    return sub_11590(v12, &qword_56248, &qword_38B88);
  }

  return result;
}

uint64_t sub_2BF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC4(&qword_553E0, &qword_37990);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_11528(a1, &v12 - v6, &qword_553E0, &qword_37990);
  v8 = sub_35D70();
  if (sub_3D74(v7, 1, v8) == 1)
  {
    result = sub_11590(v7, &qword_553E0, &qword_37990);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v10 = sub_35D60();
    *(a2 + 24) = &type metadata for String;
    *a2 = v10;
    *(a2 + 8) = v11;
    return (*(*(v8 - 8) + 8))(v7, v8);
  }

  return result;
}

unint64_t sub_2C040(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC4(&qword_553E0, &qword_37990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C18C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_368D0();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2C1CC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2C21C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2C284()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v0[9] = v2;
  v3 = *(v1 + 24);
  v0[10] = v3;
  type metadata accessor for SuggestionEntityRetrieval();
  v0[11] = swift_initStackObject();

  v0[12] = sub_2DDB0(v2, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2C364;

  return sub_2FC84();
}

uint64_t sub_2C364(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_2C484, 0, 0);
}

uint64_t sub_2C484()
{
  v18 = v0;
  if (v0[14])
  {
    v1 = sub_365F0();
    v3 = v2;

    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v5 = v0[9];
    v4 = v0[10];
    v6 = sub_366C0();
    sub_1D8C(v6, static Log.suggestions);
    sub_36920(27);

    v17._countAndFlagsBits = 0xD000000000000013;
    v17._object = 0x8000000000039DF0;
    v20._countAndFlagsBits = v5;
    v20._object = v4;
    sub_36790(v20);
    v21._countAndFlagsBits = 544175136;
    v21._object = 0xE400000000000000;
    sub_36790(v21);
    v22._countAndFlagsBits = v1;
    v22._object = v3;
    sub_36790(v22);
    v7._countAndFlagsBits = 0xD000000000000013;
    v8._object = 0x800000000003D900;
    v7._object = 0x8000000000039DF0;
    v8._countAndFlagsBits = 0xD000000000000078;
    Logger.debug(output:test:caller:)(v7, 0, v8);

    sub_1DC4(&qword_54E78, &unk_37010);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_36F10;
    v9[7] = &type metadata for String;
    v9[4] = v1;
    v9[5] = v3;
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_3E80();
    }

    v11 = v0[9];
    v10 = v0[10];
    v12 = sub_366C0();
    sub_1D8C(v12, static Log.suggestions);
    sub_36920(16);

    strcpy(&v17, "Couldn't find ");
    HIBYTE(v17._object) = -18;
    v23._countAndFlagsBits = v11;
    v23._object = v10;
    sub_36790(v23);
    v13._countAndFlagsBits = 0xD00000000000003FLL;
    v14._object = 0x800000000003D900;
    v13._object = 0x800000000003C7F0;
    v14._countAndFlagsBits = 0xD000000000000078;
    Logger.warning(output:test:file:function:line:)(v17, 0, v14, v13, 18);

    v9 = _swiftEmptyArrayStorage;
  }

  v15 = v0[1];

  return v15(v9);
}

uint64_t sub_2C734()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BA0;

  return sub_2C264();
}

uint64_t sub_2C82C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SceneNameResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2C86C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v4 = *(*(sub_1DC4(&qword_553E0, &qword_37990) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = sub_35D70();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_2C964, 0, 0);
}

uint64_t sub_2C964()
{
  v1 = v0[4];
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35FD0();
  v5 = v4;
  v0[10] = v3;
  v0[11] = v4;
  v0[12] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  v8 = sub_36830();

  return _swift_task_switch(sub_2CA14, v8, v7);
}

uint64_t sub_2CA14()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = sub_29A2C();
  v6 = v5;
  swift_unknownObjectRelease();
  *(v0 + 104) = v4;
  *(v0 + 112) = v6;

  return _swift_task_switch(sub_2CAA0, 0, 0);
}

uint64_t sub_2CE54(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BA0;

  return sub_2C86C(v6, a2);
}

uint64_t sub_2CF54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessoryTypeResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2CFB8()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59700);
  v1 = sub_1D8C(v0, qword_59700);
  *v1 = &unk_38D10;
  v1[1] = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_2D054(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14958;

  return sub_2D0F4(a1, a2);
}

uint64_t sub_2D0F4(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = *(*(sub_1DC4(&qword_553E0, &qword_37990) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = *(*(sub_35D90() - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v5 = *(*(sub_1DC4(&qword_55388, &unk_37950) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v6 = sub_35CF0();
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v8 = *(v7 + 64) + 15;
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_2D25C, 0, 0);
}

uint64_t sub_2D25C()
{
  v1 = *(v0 + 200);
  v2 = v1[4];
  sub_1D48(v1, v1[3]);
  v3 = sub_35F70();
  sub_162C8(0x656D614E6D6F6F72, 0xE800000000000000, v3, (v0 + 16));

  if (*(v0 + 40))
  {
    v4 = sub_15C08();
    v5 = *(v0 + 160);
    if (v4)
    {
      v6 = *(v0 + 168);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_11590(v0 + 16, &qword_55078, &unk_373F0);
    v6 = 0;
  }

  v7 = sub_35F70();
  sub_162C8(0x7475626972747461, 0xE900000000000065, v7, (v0 + 48));

  if (*(v0 + 72))
  {
    v8 = sub_15C08();
    v9 = *(v0 + 144);
    if (v8)
    {
      v10 = *(v0 + 144);
      v11 = *(v0 + 152);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_11590(v0 + 48, &qword_55078, &unk_373F0);
    v11 = 0;
  }

  v12 = sub_35F70();
  sub_162C8(0x65756C6176, 0xE500000000000000, v12, (v0 + 80));

  if (!*(v0 + 104))
  {
    sub_11590(v0 + 80, &qword_55078, &unk_373F0);
LABEL_18:
    v13 = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    goto LABEL_19;
  }

  sub_36480();
  if ((sub_15C08() & 1) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(v0 + 184);
  v14 = v1[4];
  sub_1D48(*(v0 + 200), v1[3]);

  sub_35F80();
  sub_36430();

  if (!v13)
  {
    goto LABEL_18;
  }

  sub_36420();

  if (!*(v0 + 136))
  {
LABEL_19:
    sub_11590(v0 + 112, &qword_55078, &unk_373F0);
    goto LABEL_20;
  }

  sub_364B0();
  if (sub_15C08())
  {
    v15 = *(v0 + 176);
    v16 = v1[4];
    sub_1D48(*(v0 + 200), v1[3]);

    sub_35F80();
    sub_36490();

    goto LABEL_21;
  }

LABEL_20:
  v15 = 0;
LABEL_21:
  *(v0 + 264) = v13;
  *(v0 + 272) = v15;
  if (qword_54D40 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 200);
  sub_35CD0();
  v21 = v1[3];
  v20 = v1[4];
  sub_1D48(v19, v21);
  sub_35F80();
  sub_35D80();
  v22 = type metadata accessor for HomeSuggestionCATs();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v0 + 280) = HomeSuggestionCATs.init(templateDir:options:globals:)(v17, v18);
  if (v6)
  {
    v25 = *(v0 + 216);
    sub_36740();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v0 + 216);
  v28 = sub_35D70();
  v29 = 1;
  sub_3D4C(v27, v26, 1, v28);
  if (v11)
  {
    v30 = *(v0 + 208);
    sub_36740();

    v29 = 0;
  }

  sub_3D4C(*(v0 + 208), v29, 1, v28);
  v31 = swift_task_alloc();
  *(v0 + 288) = v31;
  *v31 = v0;
  v31[1] = sub_15050;
  v32 = *(v0 + 256);
  v34 = *(v0 + 208);
  v33 = *(v0 + 216);

  return sub_10FD8();
}

uint64_t sub_2D708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0x65706D6554746573, 0xEE00657275746172);
  v8[3] = v4;
  v8[4] = sub_12154(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_2D814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v39 - v5;
  sub_1DC4(&qword_55068, &unk_373E0);
  v7 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v8 = *v7;
  v43 = *(*v7 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v44 = v10;
  *(v10 + 16) = xmmword_37020;
  v11 = v10 + v9;
  v12 = type metadata accessor for RoomNameResolver();
  v13 = swift_allocObject();
  *(v13 + 16) = 0x656D614E6D6F6F72;
  *(v13 + 24) = 0xE800000000000000;
  v54 = v12;
  v55 = sub_12154(&qword_551B8, type metadata accessor for RoomNameResolver);
  v53[0] = v13;
  sub_1DC4(&qword_55078, &unk_373F0);
  v41 = sub_352A0;
  sub_1219C();
  *v11 = 1;
  sub_3BCC(v53, v11 + 8);
  *(v11 + 48) = 1;
  v14 = v7[12];
  v42 = v3[2];
  v40 = v2;
  v42(v11 + v14, v6, v2);
  v15 = v7[13];
  v50 = sub_362C0();
  v49 = sub_20BC0;
  sub_1219C();
  v16 = v3[1];
  v47 = v3 + 1;
  v48 = v16;
  v16(v6, v2);
  sub_3D00(v53);
  v17 = v43;
  v18 = v11 + v43;
  v19 = type metadata accessor for AttributeResolver();
  v20 = swift_allocObject();
  v28 = sub_2B290(v20, v21, v22, v23, v24, v25, v26, v27);
  v54 = v19;
  v55 = sub_12154(&qword_55468, type metadata accessor for AttributeResolver);
  v53[0] = v28;
  sub_1219C();
  *v18 = 8;
  sub_3BCC(v53, v18 + 8);
  *(v18 + 48) = 1;
  v29 = v40;
  v30 = v42;
  v42(v18 + v7[12], v6, v40);
  v31 = v18 + v7[13];
  sub_1219C();
  v32 = v29;
  v48(v6, v29);
  sub_3D00(v53);
  v33 = v11 + 2 * v17;
  v34 = type metadata accessor for ValueResolver();
  swift_allocObject();
  v35 = sub_273D4();
  v54 = v34;
  v55 = sub_12154(&qword_55470, type metadata accessor for ValueResolver);
  v53[0] = v35;
  sub_1219C();
  *v33 = 9;
  sub_3BCC(v53, v33 + 8);
  *(v33 + 48) = 0;
  v30(v33 + v7[12], v6, v32);
  v36 = v33 + v7[13];
  sub_1219C();
  v48(v6, v32);
  sub_3D00(v53);
  v37 = v45;
  sub_4E08(v46, v45);
  v52 = v37;
  sub_1F76C(sub_2DD94, v51, v44);
  swift_setDeallocating();
  return sub_39C4();
}

unint64_t sub_2DD00(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_345E8() & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_2DDB0(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;

  sub_36920(29);

  sub_3ED0();
  v7 = v5;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_36790(v8);

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_36790(v9);
  v2[4] = 0xD00000000000001ALL;
  v2[5] = v7;
  return v2;
}

uint64_t sub_2DE78()
{
  sub_116D0();
  if (qword_54CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_594C8;
  *(v0 + 16) = qword_594C8;

  return _swift_task_switch(sub_2DF0C, v1, 0);
}

uint64_t sub_2DF0C()
{
  sub_116D0();
  *(v0 + 24) = *(*(v0 + 16) + 112);

  return _swift_task_switch(sub_2DF7C, 0, 0);
}

uint64_t sub_2DF7C()
{
  if (*(v0 + 24))
  {
    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
      v16 = *(v0 + 24);
    }

    v1 = sub_366C0();
    sub_1D8C(v1, static Log.suggestions);
    sub_36920(45);

    v2 = sub_365F0();
    v4 = v3;

    v18._countAndFlagsBits = v2;
    v18._object = v4;
    sub_36790(v18);

    v19._countAndFlagsBits = 0xD00000000000001FLL;
    v19._object = 0x800000000003DF80;
    sub_36790(v19);
    sub_33254();
    Logger.debug(output:test:caller:)(v5, v6, v7);
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
    }

    v8 = sub_366C0();
    sub_333B0(v8, static Log.suggestions);
    sub_33254();
    v9._object = 0xE900000000000029;
    Logger.warning(output:test:file:function:line:)(v10, v11, v12, v9, 35);
  }

  sub_332EC();
  v14 = *(v0 + 24);

  return v13(v14);
}

uint64_t sub_2E170()
{
  sub_116D0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  sub_3335C(v3);

  return sub_2DE5C();
}

uint64_t sub_2E1F8()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = sub_1A8D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_2E2E0()
{
  if (v0[5])
  {
    v2 = v0[2];
    v1 = v0[3];
    v3 = v0[5];
    v4 = sub_362E0();
    v5 = sub_309A8(v2, v4, 0, 1);
  }

  else
  {
    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
    }

    v6 = sub_366C0();
    sub_333B0(v6, static Log.suggestions);
    sub_332B8();
    v7._countAndFlagsBits = 0xD000000000000027;
    Logger.warning(output:test:file:function:line:)(v8, v9, v10, v7, 47);
    v5 = 0;
  }

  sub_332EC();

  return v11(v5);
}

uint64_t sub_2E418()
{
  sub_116D0();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_366C0();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[22] = v6;
  *v6 = v1;
  v6[1] = sub_2E568;

  return sub_2DE5C();
}

uint64_t sub_2E568()
{
  sub_116D0();
  v1 = *v0;
  sub_1AAB4();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v0;
  *(v2 + 184) = v6;

  return _swift_task_switch(sub_2E688, 0, 0);
}

void sub_2E688()
{
  v281 = v0;
  v1 = &HasTargetedMoreThanOneEntityResolver;
  if (!v0[23])
  {
    goto LABEL_96;
  }

  v2 = v0[12];
  v3 = *(v2 + 64);
  v259 = v2 + 64;
  v262 = v0[13];
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v7 = v0[15];
  v258 = (63 - v5) >> 6;
  sub_3ED0();
  v261 = v8;
  v271 = (v9 + 8);
  v272 = v10;
  v260 = 0x800000000003DD60;
  v253 = 0x800000000003DDE0;
  v254 = "supportedAttributes: ";
  swift_bridgeObjectRetain_n();
  v11 = 0;
  v263 = v2;
LABEL_5:
  v269 = v2;
  while (1)
  {
    if (v6)
    {
      goto LABEL_12;
    }

    sub_33368();
    do
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (v13 >= v258)
      {
        v0 = v274;
        v135 = v274[12];

        if (!*(v2 + 16))
        {
          if (qword_54D20 != -1)
          {
            sub_33224();
            swift_once();
          }

          sub_333B0(v0[14], static Log.suggestions);
          v201 = *(v262 + 32);
          v200 = *(v262 + 40);

          sub_332C8();
          v203._countAndFlagsBits = v202 + 31;
          v203._object = 0x800000000003DEE0;
          v204._countAndFlagsBits = v201;
          v204._object = v200;
          Logger.debug(output:test:caller:)(v203, 1, v204);

          goto LABEL_137;
        }

        v0 = (v2 + 64);
        v136 = -1;
        v137 = -1 << *(v2 + 32);
        if (-v137 < 64)
        {
          v136 = ~(-1 << -v137);
        }

        v138 = v136 & *(v2 + 64);
        v139 = (63 - v137) >> 6;
        swift_bridgeObjectRetain_n();
        v140 = 0;
        v141 = _swiftEmptyArrayStorage;
        do
        {
          while (1)
          {
            if (v138)
            {
              goto LABEL_82;
            }

            do
            {
              v142 = v140 + 1;
              if (__OFADD__(v140, 1))
              {
                goto LABEL_145;
              }

              if (v142 >= v139)
              {

                if (qword_54D20 != -1)
                {
                  sub_33224();
                  swift_once();
                }

                v157 = v274[18];
                v158 = sub_1D8C(v274[14], static Log.suggestions);
                v159 = *v272;
                v275 = v158;
                v273 = v159;
                v159(v157);
                v279 = 0;
                v280 = 0xE000000000000000;
                sub_36920(32);

                sub_3ED0();
                v279 = 0xD00000000000001ELL;
                v280 = v160;
                v161 = v141[2];
                if (v161)
                {
                  v278 = _swiftEmptyArrayStorage;
                  sub_33390();
                  v162 = v278;
                  v163 = v141 + 4;
                  do
                  {
                    v164 = *v163++;
                    v165 = sub_36360();
                    v167 = v166;
                    v278 = v162;
                    v169 = v162[2];
                    v168 = v162[3];
                    if (v169 >= v168 >> 1)
                    {
                      v171 = sub_33298(v168);
                      sub_19F6C(v171, v169 + 1, 1);
                      v162 = v278;
                    }

                    v162[2] = v169 + 1;
                    v170 = &v162[2 * v169];
                    v170[4] = v165;
                    v170[5] = v167;
                    --v161;
                  }

                  while (v161);
                }

                v173 = v274[17];
                v172 = v274[18];
                v174 = v274[13];
                v175 = v274[14];
                v176 = sub_36810();
                v178 = v177;

                v286._countAndFlagsBits = v176;
                v286._object = v178;
                sub_36790(v286);

                v180 = *(v262 + 32);
                v179 = *(v262 + 40);

                sub_33278();
                Logger.debug(output:test:caller:)(v181, v182, v183);

                v276 = *v271;
                (v276)(v172, v175);
                v184 = sub_30DF0(v141);
                v186 = v185;

                (v273)(v173, v275, v175);
                v279 = 0;
                v280 = 0xE000000000000000;
                sub_36920(58);
                sub_33288();
                v287._countAndFlagsBits = v187 - 12;
                v287._object = (v188 | 0x8000000000000000);
                sub_36790(v287);
                v189 = sub_332D4();
                if ((v186 & 1) == 0)
                {
                  v189 = sub_36360();
                }

                v0 = v274;
                v191 = v274[17];
                v192 = v274[14];
                v274[4] = v189;
                v0[5] = v190;
                v193 = sub_1DC4(&qword_54F68, &qword_37150);
                v288._countAndFlagsBits = sub_36720();
                sub_36790(v288);

                sub_33288();
                v289._countAndFlagsBits = v194 - 4;
                v289._object = (v195 | 0x8000000000000000);
                sub_36790(v289);

                sub_33278();
                Logger.debug(output:test:caller:)(v196, v197, v198);

                (v276)(v191, v192);
                v270 = v193;
                if (v186)
                {
                  v199 = 0;
                }

                else
                {
                  v267 = v180;
                  v205 = v0[12];
                  v206 = -1;
                  v207 = -1 << *(v263 + 32);
                  if (-v207 < 64)
                  {
                    v206 = ~(-1 << -v207);
                  }

                  v208 = v206 & *(v263 + 64);
                  v209 = (63 - v207) >> 6;
                  v210 = v0[12];

                  v211 = 0;
                  v268 = _swiftEmptyArrayStorage;
                  sub_33368();
                  while (v208)
                  {
LABEL_121:
                    v214 = __clz(__rbit64(v208));
                    v208 &= v208 - 1;
                    v215 = (v211 << 9) | (8 * v214);
                    v216 = *(*(v263 + 48) + v215);
                    v217 = *(*(v205 + 56) + v215);

                    v218 = sub_15C20(v184, v217);

                    sub_33368();
                    if (v218)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v268 = sub_312F8(0, v268[2] + 1, 1, v268, &qword_55760, &qword_38038, sub_1A854);
                      }

                      v220 = v268[2];
                      v219 = v268[3];
                      v212 = v259;
                      if (v220 >= v219 >> 1)
                      {
                        sub_312F8((v219 > 1), v220 + 1, 1, v268, &qword_55760, &qword_38038, sub_1A854);
                        sub_33368();
                        v268 = v222;
                      }

                      v221 = v268;
                      v268[2] = v220 + 1;
                      v221[v220 + 4] = v216;
                    }
                  }

                  v0 = v274;
                  while (1)
                  {
                    v213 = v211 + 1;
                    if (__OFADD__(v211, 1))
                    {
                      goto LABEL_146;
                    }

                    if (v213 >= v209)
                    {
                      break;
                    }

                    v208 = *(v212 + 8 * v213);
                    ++v211;
                    if (v208)
                    {
                      v211 = v213;
                      goto LABEL_121;
                    }
                  }

                  v223 = v274[12];
                  v224 = v274[13];

                  sub_362E0();
                  v225 = sub_332E0();
                  v199 = sub_309A8(v225, v226, v184, 0);

                  v180 = v267;
                }

                (v273)(v0[16], v275, v0[14]);
                sub_332A8();
                sub_36920(90);
                v290._object = 0x800000000003DE80;
                v290._countAndFlagsBits = 0xD000000000000024;
                sub_36790(v290);
                v227 = sub_332D4();
                if ((v186 & 1) == 0)
                {
                  v227 = sub_36360();
                }

                v0[6] = v227;
                v0[7] = v228;
                v291._countAndFlagsBits = sub_36720();
                sub_36790(v291);

                sub_33288();
                v292._countAndFlagsBits = v229 + 3;
                v292._object = (v230 | 0x8000000000000000);
                sub_36790(v292);
                if (v199)
                {
                  v231 = sub_365E0();
                }

                else
                {
                  v231 = sub_332D4();
                }

                v0[8] = v231;
                v0[9] = v232;
                v293._countAndFlagsBits = sub_36720();
                sub_36790(v293);

                v294._countAndFlagsBits = 0x3A65707974202D20;
                v294._object = 0xE900000000000020;
                sub_36790(v294);
                v233 = v180;
                if (v199)
                {
                  sub_36680();
                  v234 = sub_36320();
                }

                else
                {
                  v234 = sub_332D4();
                }

                v236 = v0[16];
                v237 = v0[14];
                v0[10] = v234;
                v0[11] = v235;
                v295._countAndFlagsBits = sub_36720();
                sub_36790(v295);

                v238 = v279;
                v239 = v280;

                v240._countAndFlagsBits = v238;
                v240._object = v239;
                v241._countAndFlagsBits = v233;
                v241._object = v179;
                Logger.debug(output:test:caller:)(v240, 1, v241);

                (v276)(v236, v237);

LABEL_137:
                v243 = v0[20];
                v242 = v0[21];
                v244 = v0[18];
                v245 = v0[19];
                v247 = v0[16];
                v246 = v0[17];

                v248 = v0[1];
                sub_33374();

                __asm { BRAA            X4, X16 }
              }

              v138 = v0[v142];
              ++v140;
            }

            while (!v138);
            v140 = v142;
LABEL_82:
            v143 = (v140 << 9) | (8 * __clz(__rbit64(v138)));
            v144 = *(*(v269 + 56) + v143);
            v145 = *(v144 + 16);
            v146 = v141[2];
            v147 = v146 + v145;
            if (__OFADD__(v146, v145))
            {
              goto LABEL_147;
            }

            v148 = *(*(v269 + 56) + v143);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v147 > v141[3] >> 1)
            {
              if (v146 <= v147)
              {
                v150 = v146 + v145;
              }

              else
              {
                v150 = v146;
              }

              v141 = sub_312F8(isUniquelyReferenced_nonNull_native, v150, 1, v141, &qword_55788, &qword_38E30, sub_1A854);
            }

            v138 &= v138 - 1;
            if (!*(v144 + 16))
            {
              break;
            }

            v151 = v141[2];
            if ((v141[3] >> 1) - v151 < v145)
            {
              goto LABEL_149;
            }

            memcpy(&v141[v151 + 4], (v144 + 32), 8 * v145);

            if (v145)
            {
              v152 = v141[2];
              v75 = __OFADD__(v152, v145);
              v153 = v152 + v145;
              if (v75)
              {
                goto LABEL_152;
              }

              v141[2] = v153;
            }
          }
        }

        while (!v145);
        __break(1u);
LABEL_96:
        if (v1[46].ivars == -1)
        {
LABEL_97:
          sub_333B0(v0[14], static Log.suggestions);
          v154._countAndFlagsBits = 0xD000000000000037;
          v154._object = 0x800000000003DCA0;
          v155._countAndFlagsBits = 0xD000000000000076;
          v155._object = 0x800000000003DB30;
          v156._countAndFlagsBits = 0xD000000000000040;
          v156._object = 0x800000000003DCE0;
          Logger.warning(output:test:file:function:line:)(v154, 0, v155, v156, 59);
          goto LABEL_137;
        }

LABEL_153:
        sub_33224();
        swift_once();
        goto LABEL_97;
      }

      v6 = *(v12 + 8 * v13);
      ++v11;
    }

    while (!v6);
    v11 = v13;
LABEL_12:
    v14 = v274[12];
    v267 = (v6 - 1) & v6;
    v15 = *(*(v263 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v6)))));
    v273 = sub_1632C(v15, v14);
    v16 = sub_362E0();
    v279 = _swiftEmptyArrayStorage;
    v17 = sub_3E5C(v16);
    v18 = 0;
    v275 = v15;
LABEL_13:
    if (v17 != v18)
    {
      break;
    }

    v21 = v279;
    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
    }

    v22 = v274[21];
    v23 = v274[14];
    v24 = sub_1D8C(v23, static Log.suggestions);
    v279 = 0;
    v280 = 0xE000000000000000;
    sub_36920(17);

    v279 = 0x6574726F70707573;
    v280 = 0xEF203A6570795464;
    v282._countAndFlagsBits = sub_36320();
    sub_36790(v282);

    v25 = v279;
    v26 = v280;
    v0 = *(v262 + 40);
    v270 = *(v262 + 32);
    v27 = v270;

    v28._countAndFlagsBits = v25;
    v28._object = v26;
    v29._countAndFlagsBits = v27;
    v29._object = v0;
    Logger.debug(output:test:caller:)(v28, 1, v29);
    v266 = v0;

    v30 = *v272;
    v268 = v24;
    v265 = v30;
    (v30)(v22, v24, v23);
    v279 = 0;
    v280 = 0xE000000000000000;
    sub_36920(38);

    sub_332C8();
    v279 = v31;
    v280 = v261;
    v32 = sub_3E5C(v21);
    v276 = v21;
    if (v32)
    {
      v33 = v32;
      v278 = _swiftEmptyArrayStorage;
      sub_19F6C(0, v32 & ~(v32 >> 63), 0);
      if (v33 < 0)
      {
        goto LABEL_148;
      }

      v34 = 0;
      v35 = v278;
      v36 = v21 & 0xC000000000000001;
      do
      {
        if (v36)
        {
          sub_36930();
        }

        else
        {
          v37 = *(v21 + 8 * v34 + 32);
        }

        v38 = sub_365E0();
        v40 = v39;

        v278 = v35;
        v42 = v35[2];
        v41 = v35[3];
        if (v42 >= v41 >> 1)
        {
          v44 = sub_33298(v41);
          sub_19F6C(v44, v42 + 1, 1);
          v35 = v278;
        }

        ++v34;
        v35[2] = v42 + 1;
        v43 = &v35[2 * v42];
        v43[4] = v38;
        v43[5] = v40;
        v21 = v276;
      }

      while (v33 != v34);
    }

    v45 = v266;
    v47 = v274[20];
    v46 = v274[21];
    v48 = v274[14];
    v49 = sub_36810();
    v51 = v50;

    v283._countAndFlagsBits = v49;
    v283._object = v51;
    sub_36790(v283);

    v52 = v279;
    v53 = v280;

    v54._countAndFlagsBits = v52;
    v54._object = v53;
    v55 = v270;
    v56._countAndFlagsBits = v270;
    v56._object = v45;
    Logger.debug(output:test:caller:)(v54, 1, v56);

    v57 = *v271;
    (*v271)(v46, v48);
    (v265)(v47, v268, v48);
    sub_332A8();
    sub_36920(23);

    sub_332C8();
    v279 = v58 - 15;
    v280 = v260;
    v0 = v275;
    if (v273)
    {
      v2 = v269;
      if (*(v273 + 16))
      {
        v59 = *(v273 + 32);
        v60 = sub_36360();
      }

      else
      {
        v60 = sub_332D4();
      }
    }

    else
    {
      v60 = 0;
      v61 = 1;
      v2 = v269;
    }

    v62 = v274;
    v63 = v274[20];
    v64 = v274[14];
    v274[2] = v60;
    v62[3] = v61;
    sub_1DC4(&qword_56548, &qword_38E18);
    v284._countAndFlagsBits = sub_36720();
    sub_36790(v284);

    sub_33278();
    Logger.debug(output:test:caller:)(v65, v66, v67);

    v57(v63, v64);
    v68 = sub_3E5C(v276);
    if (v68)
    {
      if (v273)
      {
        v71 = v68;
        v72 = 0;
        v277 = _swiftEmptyArrayStorage;
        v257 = v276 & 0xC000000000000001;
        v255 = (v276 + 32);
        v256 = (v273 + 32);
        v73 = v252;
        while (v72 != v71)
        {
          if (v257)
          {
            sub_36930();
          }

          else
          {
            if (v72 >= *(v276 + 16))
            {
              goto LABEL_151;
            }

            v74 = *&v255[8 * v72];
          }

          v75 = __OFADD__(v72++, 1);
          if (v75)
          {
            goto LABEL_150;
          }

          v76 = sub_36660();
          v77 = *(v76 + 16);
          sub_33124();
          v78 = sub_36850();
          v278 = v78;
          v79 = *(v76 + 16);
          if (v79)
          {
            v80 = 32;
            do
            {
              sub_31E18(&v279, *(v76 + v80));
              v80 += 8;
              --v79;
            }

            while (v79);

            v81 = v278;
          }

          else
          {
            v81 = v78;
          }

          v82 = v273;
          v83 = *(v273 + 16);
          v278 = sub_36850();
          v84 = *(v82 + 16);
          for (i = v256; v84; --v84)
          {
            v86 = *i++;
            sub_31E18(&v279, v86);
          }

          v87 = *(v81 + 32);
          v88 = v87 & 0x3F;
          v73 = ((1 << v87) + 63) >> 6;

          if (v88 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
          {
            __chkstk_darwin(isStackAllocationSafe);
            sub_31DB4(0, v73, &v251 - ((8 * v73 + 15) & 0x3FFFFFFFFFFFFFF0));
            sub_33348();
            v94 = sub_32210(v90, v91, v92, v93);

            if (v73)
            {
              goto LABEL_142;
            }

            swift_bridgeObjectRelease_n();
          }

          else
          {
            swift_slowAlloc();

            sub_33348();
            v99 = sub_32180(v95, v96, v97, v98);
            if (v73)
            {

              goto LABEL_143;
            }

            v94 = v99;
          }

          v0 = v275;
          sub_31090(v94);
          v55 = v270;
        }

        v252 = v73;
        v109 = v274[19];
        v110 = v274[14];

        sub_33178();
        v111 = sub_36820();

        (v265)(v109, v268, v110);
        sub_332A8();
        sub_36920(37);

        sub_332C8();
        v279 = v112 - 1;
        v280 = v253;
        v113 = *(v111 + 16);
        if (v113)
        {
          v278 = _swiftEmptyArrayStorage;
          sub_33390();
          v114 = v278;
          v115 = (v111 + 32);
          do
          {
            v116 = *v115++;
            v117 = sub_36360();
            v119 = v118;
            v278 = v114;
            v121 = v114[2];
            v120 = v114[3];
            if (v121 >= v120 >> 1)
            {
              v123 = sub_33298(v120);
              sub_19F6C(v123, v121 + 1, 1);
              v114 = v278;
            }

            v114[2] = v121 + 1;
            v122 = &v114[2 * v121];
            v122[4] = v117;
            v122[5] = v119;
            --v113;
          }

          while (v113);
          v0 = v275;
          v55 = v270;
        }

        v124 = v274[19];
        v125 = v274[14];
        v126 = sub_36810();
        v128 = v127;

        v285._countAndFlagsBits = v126;
        v285._object = v128;
        sub_36790(v285);

        v129 = v279;
        v130 = v280;
        v131 = v266;

        v132._countAndFlagsBits = v129;
        v132._object = v130;
        v133._countAndFlagsBits = v55;
        v133._object = v131;
        Logger.debug(output:test:caller:)(v132, 1, v133);

        v57(v124, v125);
        v134 = v269;
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v279 = v134;
        v108 = v111;
      }

      else
      {

        sub_332C8();
        v105._countAndFlagsBits = v104 + 44;
        v105._object = (v254 | 0x8000000000000000);
        v106._countAndFlagsBits = v55;
        v106._object = v45;
        Logger.debug(output:test:caller:)(v105, 0, v106);

        v107 = swift_isUniquelyReferenced_nonNull_native();
        v279 = v2;
        v108 = _swiftEmptyArrayStorage;
      }

      sub_31C4C(v108, v0, v107);
      v2 = v279;
      v6 = v267;
      goto LABEL_5;
    }

    v69 = sub_197AC(v0);
    v6 = v267;
    if (v70)
    {
      v100 = v69;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v279 = v2;
      v102 = *(v2 + 24);
      sub_1DC4(&qword_56560, &unk_38E20);
      sub_369B0(v101, v102);
      v2 = v279;
      v103 = *(*(v279 + 56) + 8 * v100);
      v0 = sub_1DC4(&qword_557A0, &qword_38078);
      sub_1A7AC();
      sub_369C0();

      goto LABEL_5;
    }
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    sub_36930();
  }

  else
  {
    if (v18 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_141;
    }

    v19 = *(v16 + 8 * v18 + 32);
  }

  if (!__OFADD__(v18, 1))
  {
    if (sub_36670())
    {
      sub_36960();
      v20 = *(v279 + 16);
      sub_36980();
      sub_36990();
      sub_36970();
    }

    else
    {
    }

    ++v18;
    goto LABEL_13;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:

  swift_willThrow();

LABEL_143:
  sub_33374();
}

uint64_t sub_2FC84()
{
  sub_116D0();
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  sub_3335C(v2);

  return sub_2DE5C();
}

uint64_t sub_2FD0C()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = sub_1A8D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_2FDF4()
{
  v5 = v0[5];
  if (!v5)
  {
    if (qword_54D20 != -1)
    {
LABEL_33:
      sub_33224();
      swift_once();
    }

    v14 = sub_366C0();
    sub_333B0(v14, static Log.suggestions);
    sub_33328();
    sub_33254();
    v15._object = 0xE700000000000000;
    Logger.warning(output:test:file:function:line:)(v16, v17, v18, v15, 129);
    goto LABEL_27;
  }

  v6 = v0[5];
  v7 = sub_36300();
  sub_3E5C(v7);
  sub_33264();
  while (v1 != v2)
  {
    if (v3)
    {
      sub_36930();
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_32;
      }

      sub_332F8();
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v8 = sub_365C0();
    if (v8 >> 62)
    {
      v9 = sub_369D0();
    }

    else
    {
      v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    }

    if (v9)
    {
      sub_36960();
      v10 = _swiftEmptyArrayStorage[2];
      sub_36980();
      sub_332E0();
      sub_36990();
      sub_36970();
    }

    else
    {
    }

    ++v2;
  }

  if (!sub_3E5C(_swiftEmptyArrayStorage))
  {

    if (qword_54D20 != -1)
    {
      sub_33224();
      swift_once();
    }

    v19 = sub_366C0();
    sub_1D8C(v19, static Log.suggestions);
    sub_36920(34);

    sub_3ED0();
    v0[2] = v5;
    sub_36310();
    sub_330B8();
    v27._countAndFlagsBits = sub_36A10();
    sub_36790(v27);

    sub_33328();
    sub_33254();
    v20._object = 0xE700000000000000;
    Logger.warning(output:test:file:function:line:)(v21, v22, v23, v20, 135);

LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v11 = v0[3];
  v12 = sub_30E8C(_swiftEmptyArrayStorage, sub_1A85C, sub_32EF4, sub_33220);

  if (!sub_3E5C(v12))
  {

    goto LABEL_27;
  }

  sub_3E7C(0);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_36930();
  }

  else
  {
    v13 = *(v12 + 32);
  }

LABEL_28:
  sub_332EC();

  return v24(v13);
}

uint64_t sub_301A4()
{
  sub_116D0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_3335C(v2);

  return sub_2DE5C();
}

uint64_t sub_3022C()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = sub_1A8D0();

  return _swift_task_switch(v6, v7, v8);
}

void sub_30314()
{
  if (!*(v0 + 32))
  {
    if (qword_54D20 != -1)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(v0 + 32);
  v6 = sub_362E0();
  sub_3E5C(v6);
  sub_33264();
  while (v1 != v2)
  {
    if (v3)
    {
      sub_36930();
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_20;
      }

      sub_332F8();
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_33224();
      swift_once();
LABEL_15:
      v9 = sub_366C0();
      sub_333B0(v9, static Log.suggestions);
      sub_332B8();
      v10._countAndFlagsBits = 0xD00000000000001FLL;
      Logger.warning(output:test:file:function:line:)(v11, v12, v13, v10, 144);
LABEL_16:
      sub_332EC();
      sub_33374();

      __asm { BRAA            X2, X16 }
    }

    v7 = *(v0 + 16);
    if (sub_36670())
    {
      sub_36960();
      v8 = _swiftEmptyArrayStorage[2];
      sub_36980();
      sub_332E0();
      sub_36990();
      sub_36970();
    }

    else
    {
    }

    ++v2;
  }

  sub_3E5C(_swiftEmptyArrayStorage);

  goto LABEL_16;
}

uint64_t sub_304F4()
{
  sub_116D0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_3335C(v2);

  return sub_2DE5C();
}

uint64_t sub_3057C()
{
  sub_116D0();
  sub_1AA08();
  sub_1AAB4();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = sub_1A8D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_30664()
{
  if (*(v0 + 32))
  {
    v27 = *(v0 + 32);
    v5 = sub_362E0();
    sub_3E5C(v5);
    sub_33264();
    while (v1 != v2)
    {
      if (v3)
      {
        sub_36930();
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          goto LABEL_37;
        }

        sub_332F8();
      }

      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v6 = *(v0 + 16);
      if (sub_36670())
      {
        sub_36960();
        v7 = _swiftEmptyArrayStorage[2];
        sub_36980();
        sub_332E0();
        sub_36990();
        sub_36970();
      }

      else
      {
      }

      ++v2;
    }

    if (sub_3E5C(_swiftEmptyArrayStorage) <= 1)
    {

      goto LABEL_31;
    }

    v8 = sub_3E5C(_swiftEmptyArrayStorage);
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (v8 != v9)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        sub_36930();
      }

      else
      {
        if (v9 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_39;
        }

        v11 = _swiftEmptyArrayStorage[v9 + 4];
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_38;
      }

      if (sub_36600())
      {
        v13 = sub_365F0();
        v15 = v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_31510(0, *(v10 + 2) + 1, 1, v10);
        }

        v17 = *(v10 + 2);
        v16 = *(v10 + 3);
        if (v17 >= v16 >> 1)
        {
          v10 = sub_31510((v16 > 1), v17 + 1, 1, v10);
        }

        *(v10 + 2) = v17 + 1;
        v18 = &v10[16 * v17];
        *(v18 + 4) = v13;
        *(v18 + 5) = v15;
        v9 = v12;
      }

      else
      {

        ++v9;
      }
    }

    v24 = sub_36820();
  }

  else
  {
    if (qword_54D20 != -1)
    {
LABEL_40:
      sub_33224();
      swift_once();
    }

    v19 = sub_366C0();
    sub_333B0(v19, static Log.suggestions);
    sub_332B8();
    v20._countAndFlagsBits = 0xD00000000000001CLL;
    Logger.warning(output:test:file:function:line:)(v21, v22, v23, v20, 154);
LABEL_31:
    v24 = _swiftEmptyArrayStorage;
  }

  sub_332EC();

  return v25(v24);
}

uint64_t sub_309A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_30E4C(a1, sub_330A4);
  v9 = a1;
  v34 = *(a1 + 16);
  if (!v34)
  {

    if (a4)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v31 = a3;
  v32 = v5;
  v10 = sub_3E5C(a2);
  v11 = 0;
  v35 = v9 + 32;
  v33 = v9;
  while (2)
  {
    if (v11 >= *(v9 + 16))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      v29 = sub_36930();
      goto LABEL_38;
    }

    v12 = 0;
    v13 = *(v35 + 8 * v11++);
    while (v10 != v12)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        sub_36930();
      }

      else
      {
        if (v12 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_42;
        }

        v14 = *(a2 + 8 * v12 + 32);
      }

      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (sub_36670())
      {
        sub_36960();
        v15 = _swiftEmptyArrayStorage[2];
        sub_36980();
        sub_36990();
        sub_36970();
      }

      else
      {
      }

      ++v12;
    }

    if (sub_3E5C(_swiftEmptyArrayStorage))
    {

      if (qword_54D20 != -1)
      {
        sub_33224();
        swift_once();
      }

      v16 = sub_366C0();
      sub_1D8C(v16, static Log.suggestions);
      sub_36920(38);

      sub_3ED0();
      v36 = v17;
      v37._countAndFlagsBits = sub_36320();
      sub_36790(v37);

      v18 = *(v32 + 32);
      v19 = *(v32 + 40);

      v20._countAndFlagsBits = 0xD000000000000024;
      v20._object = v36;
      v21._countAndFlagsBits = v18;
      v21._object = v19;
      Logger.debug(output:test:caller:)(v20, 0, v21);
    }

    else
    {

      v9 = v33;
      if (v11 != v34)
      {
        continue;
      }
    }

    break;
  }

  a3 = v31;
  if ((a4 & 1) == 0)
  {
LABEL_24:
    v22 = sub_3E5C(_swiftEmptyArrayStorage);
    for (i = 0; v22 != i; ++i)
    {
      sub_3E7C(i);
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        sub_36930();
      }

      else
      {
        v24 = _swiftEmptyArrayStorage[i + 4];
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_43;
      }

      v25 = sub_36660();
      v26 = sub_15C20(a3, v25);

      if (v26)
      {
        sub_36960();
        v27 = _swiftEmptyArrayStorage[2];
        sub_36980();
        sub_332E0();
        sub_36990();
        sub_36970();
      }

      else
      {
      }
    }
  }

LABEL_35:
  v28 = sub_30E8C(_swiftEmptyArrayStorage, sub_1A85C, sub_32D80, sub_33220);

  if (!sub_3E5C(v28))
  {

    return 0;
  }

  sub_3E7C(0);
  if ((v28 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  v29 = *(v28 + 32);

LABEL_38:

  return v29;
}

uint64_t sub_30DF0(uint64_t a1)
{
  sub_30E4C(a1, sub_33068);
  if (*(a1 + 16))
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void *sub_30E8C(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(void *, uint64_t, unint64_t), uint64_t (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_369D0();
    if (v7)
    {
      v17 = v7;
      v6 = a2(v7, 0);

      a3(v6 + 4, v17, a1);
      v19 = v18;

      if (v19 == v17)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_3;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFF8);

LABEL_3:
  sub_31AB4(v7, a4, v8, v9, v10, v11, v12, v13);
  return v6;
}

uint64_t sub_30F5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_30F84()
{
  sub_30F5C();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_30FE4(unint64_t a1)
{
  v3 = sub_3E5C(a1);
  v4 = sub_3E5C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_31610(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_32C0C(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_31090(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_316B0(v5 + v4, 1);
  v1 = *v2;
  v6 = *(*v2 + 16);
  v7 = (*(*v2 + 24) >> 1) - v6;
  result = sub_1A48C(v37, (*v2 + 8 * v6 + 32), v7, v3);
  if (result < v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result)
  {
    v12 = v1[2];
    v13 = __OFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      __break(1u);
      goto LABEL_14;
    }

    v1[2] = v14;
  }

  if (result == v7)
  {
LABEL_11:
    v3 = v1[2];
    result = v37[0];
    v9 = v37[1];
    v10 = v38;
    v11 = v39;
    if (v40)
    {
      v15 = (v40 - 1) & v40;
      v16 = __clz(__rbit64(v40)) | (v39 << 6);
      v17 = (v38 + 64) >> 6;
LABEL_19:
      v21 = *(*(result + 48) + 8 * v16);
      v22 = &qword_55788;
      while (1)
      {
        v23 = v1[3];
        v24 = v23 >> 1;
        if ((v23 >> 1) < v3 + 1)
        {
          v35 = result;
          v36 = v17;
          v33 = v10;
          v34 = v9;
          v31 = v15;
          v32 = v11;
          v28 = v1;
          v29 = v22;
          v30 = sub_312F8((v23 > 1), v3 + 1, 1, v28, v22, &qword_38E30, sub_1A854);
          v15 = v31;
          v11 = v32;
          v22 = v29;
          v10 = v33;
          v9 = v34;
          v1 = v30;
          result = v35;
          v17 = v36;
          v24 = v1[3] >> 1;
        }

        if (v3 < v24)
        {
          break;
        }

        v25 = v11;
LABEL_33:
        v1[2] = v3;
        v11 = v25;
      }

      while (1)
      {
        v1[v3++ + 4] = v21;
        if (!v15)
        {
          break;
        }

        v25 = v11;
LABEL_30:
        v27 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v21 = *(*(result + 48) + ((v25 << 9) | (8 * v27)));
        if (v3 >= v24)
        {
          goto LABEL_33;
        }
      }

      v26 = v11;
      while (1)
      {
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v25 >= v17)
        {
          result = sub_1A65C();
          v1[2] = v3;
          goto LABEL_8;
        }

        v15 = *(v9 + 8 * v25);
        ++v26;
        if (v15)
        {
          v11 = v25;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

LABEL_14:
    v17 = (v10 + 64) >> 6;
    v18 = v11;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_37;
      }

      if (v19 >= v17)
      {
        break;
      }

      v20 = *(v9 + 8 * v19);
      ++v18;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v16 = __clz(__rbit64(v20)) | (v19 << 6);
        v11 = v19;
        goto LABEL_19;
      }
    }
  }

  result = sub_1A65C();
LABEL_8:
  *v2 = v1;
  return result;
}

void *sub_312F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, void (*a7)(void *, int64_t, void *))
{
  v9 = result;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_8;
  }

  v10 = a4[3];
  v11 = v10 >> 1;
  if ((v10 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v11 = a2;
    }

LABEL_8:
    v12 = a4[2];
    if (v11 <= v12)
    {
      v13 = a4[2];
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1DC4(a5, a6);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 8);
      if (v9)
      {
LABEL_13:
        a7(a4 + 4, v12, v14 + 4);
        a4[2] = 0;
LABEL_16:

        return v14;
      }
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v14 + 4, a4 + 4, 8 * v12);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}