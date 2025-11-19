uint64_t sub_275383F70(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_275384018;

  return MusicContentStorage.Operations.relatedContent(to:as:)();
}

uint64_t sub_275384018()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_105_3();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_275384104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.removeContent(id:removeRelationships:)();
}

uint64_t sub_275384194(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.updateDebugDescription(_:for:)();
}

uint64_t sub_27538424C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2753B3610(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_275385A28(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_2753842E4(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2753651BC();

  return sub_2753845A8(a1 & 1, v4);
}

unint64_t sub_275384328(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_27536527C();

  return sub_2753846F0(a1, v4);
}

uint64_t sub_27538436C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_319_0();
  a3(v10, v5, v4);
  v7 = sub_2753B77D8();

  return a4(v5, v4, v7);
}

unint64_t sub_2753843F0(unsigned int a1)
{
  v3 = MEMORY[0x277C76A60](*(v1 + 40), a1, 4);

  return sub_275384BE0(a1, v3);
}

unint64_t sub_275384438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_319_0();
  sub_2753B7288();
  v6 = sub_2753B77D8();

  return sub_275384C40(v4, v3, a3, v6);
}

unint64_t sub_2753844B4()
{
  v1 = *(v0 + 40);
  sub_2753B7318();
  v2 = OUTLINED_FUNCTION_245();

  return sub_275384CFC(v2, v3);
}

unint64_t sub_2753844F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2753B7718() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2753845A8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x647261646E617473;
    }

    else
    {
      v6 = 0x6966696C706D6973;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xEA00000000006465;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x647261646E617473 : 0x6966696C706D6973;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xEA00000000006465;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2753B7718();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_2753846F0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x73676E6F73;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x2D7972617262696CLL;
          v7 = 0xED000073676E6F73;
          break;
        case 2:
          v8 = 0x69762D636973756DLL;
          v7 = 0xEC000000736F6564;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x80000002753B8130;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x736D75626C61;
          break;
        case 5:
          v8 = 0x2D7972617262696CLL;
          v9 = 0x736D75626C61;
          goto LABEL_12;
        case 6:
          v8 = 0x7473696C79616C70;
          v7 = 0xE900000000000073;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x80000002753B8170;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x736E6F6974617473;
          break;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x7365726E6567;
          break;
        case 0xA:
          v8 = 0x612D6C6D78656C66;
          v7 = 0xEF736973796C616ELL;
          break;
        case 0xB:
          v8 = 0x6E612D6F69647561;
          v9 = 0x736973796C61;
LABEL_12:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      v10 = 0xE500000000000000;
      v11 = 0x73676E6F73;
      switch(a1)
      {
        case 1:
          v11 = 0x2D7972617262696CLL;
          v10 = 0xED000073676E6F73;
          break;
        case 2:
          v11 = 0x69762D636973756DLL;
          v10 = 0xEC000000736F6564;
          break;
        case 3:
          v11 = 0xD000000000000014;
          v10 = 0x80000002753B8130;
          break;
        case 4:
          v10 = 0xE600000000000000;
          v11 = 0x736D75626C61;
          break;
        case 5:
          v11 = 0x2D7972617262696CLL;
          v12 = 0x736D75626C61;
          goto LABEL_25;
        case 6:
          v11 = 0x7473696C79616C70;
          v10 = 0xE900000000000073;
          break;
        case 7:
          v11 = 0xD000000000000011;
          v10 = 0x80000002753B8170;
          break;
        case 8:
          v10 = 0xE800000000000000;
          v11 = 0x736E6F6974617473;
          break;
        case 9:
          v10 = 0xE600000000000000;
          v11 = 0x7365726E6567;
          break;
        case 10:
          v11 = 0x612D6C6D78656C66;
          v10 = 0xEF736973796C616ELL;
          break;
        case 11:
          v11 = 0x6E612D6F69647561;
          v12 = 0x736973796C61;
LABEL_25:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_2753B7718();

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

unint64_t sub_275384B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  for (i = a3 & v4; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = (*(v3 + 48) + 16 * i);
    v7 = *v6;
    v8 = v6[1];

    LOBYTE(v7) = sub_2753B6678();

    if (v7)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_275384BE0(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_275384C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = ~(-1 << *(v4 + 32));
  for (i = a4 & v5; ((1 << i) & *(v4 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = (*(v4 + 48) + 24 * i);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    if (sub_2753B7278())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_275384CFC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_275359C68(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x277C76600](v8, a1);
    sub_275387FFC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_275384DC0()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_275384E04()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v2, v3, v4, v5);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_275384E68()
{
  OUTLINED_FUNCTION_193_1();
  if (v3)
  {
    OUTLINED_FUNCTION_52_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_184_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_275387F04(0, &qword_2809C2F10, sub_2753881C4, MEMORY[0x277D84560]);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size_0(v9);
    OUTLINED_FUNCTION_293();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_275384F68()
{
  OUTLINED_FUNCTION_193_1();
  if (v5)
  {
    OUTLINED_FUNCTION_52_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_184_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_80_3(v6);
  if (v3)
  {
    v9 = OUTLINED_FUNCTION_9_5();
    sub_275388174(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_217_1();
    v14 = _swift_stdlib_malloc_size_0(v13);
    OUTLINED_FUNCTION_92_3(v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_290_0();
  if (v1)
  {
    if (v13 != v0 || &v16[56 * v2] <= v15)
    {
      memmove(v15, v16, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_275385044()
{
  OUTLINED_FUNCTION_193_1();
  if (v5)
  {
    OUTLINED_FUNCTION_52_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_184_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_80_3(v6);
  if (v3)
  {
    v9 = OUTLINED_FUNCTION_9_5();
    sub_275388174(v9, v10, v11, v12);
    v13 = swift_allocObject();
    _swift_stdlib_malloc_size_0(v13);
    OUTLINED_FUNCTION_293();
    v13[2] = v2;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_290_0();
  if (v1)
  {
    if (v13 != v0 || &v16[16 * v2] <= v15)
    {
      memmove(v15, v16, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_275385150()
{
  OUTLINED_FUNCTION_193_1();
  if (v5)
  {
    OUTLINED_FUNCTION_52_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_184_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_80_3(v6);
  if (v3)
  {
    v9 = OUTLINED_FUNCTION_9_5();
    sub_275388174(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_217_1();
    v14 = _swift_stdlib_malloc_size_0(v13);
    OUTLINED_FUNCTION_92_3(v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_290_0();
  if (v1)
  {
    if (v13 != v0 || &v16[40 * v2] <= v15)
    {
      memmove(v15, v16, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27538522C()
{
  OUTLINED_FUNCTION_193_1();
  if (v5)
  {
    OUTLINED_FUNCTION_52_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_184_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_80_3(v6);
  if (v3)
  {
    sub_275387F04(0, &qword_2809C2EF0, sub_275387F9C, MEMORY[0x277D84560]);
    v9 = OUTLINED_FUNCTION_217_1();
    v10 = _swift_stdlib_malloc_size_0(v9);
    OUTLINED_FUNCTION_92_3(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[56 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_97_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_275387F9C();
    OUTLINED_FUNCTION_97_0();
    swift_arrayInitWithCopy();
  }
}

void sub_275385338()
{
  OUTLINED_FUNCTION_193_1();
  if (v5)
  {
    OUTLINED_FUNCTION_52_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_184_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_80_3(v6);
  if (v3)
  {
    v9 = OUTLINED_FUNCTION_9_5();
    sub_275388174(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_217_1();
    v14 = _swift_stdlib_malloc_size_0(v13);
    OUTLINED_FUNCTION_92_3(v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_290_0();
  if (v1)
  {
    if (v13 != v0 || &v16[824 * v2] <= v15)
    {
      memmove(v15, v16, 824 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_275385448(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_52_4();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_184_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_275385954(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27538553C()
{
  OUTLINED_FUNCTION_193_1();
  if (v5)
  {
    OUTLINED_FUNCTION_52_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_184_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_80_3(v6);
  if (v3)
  {
    sub_2753148DC();
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size_0(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_97_0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_2753149C4(0, &qword_2809C1468);
    OUTLINED_FUNCTION_97_0();
    swift_arrayInitWithCopy();
  }
}

void *sub_275385670(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_275387F04(0, &qword_2809C2F20, type metadata accessor for CMTime, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

size_t sub_27538574C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(void))
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
    return MEMORY[0x277D84F90];
  }

  sub_275387F04(0, a3, a4, MEMORY[0x277D84560]);
  v8 = a5(0);
  OUTLINED_FUNCTION_17_1(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_275385858(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[56 * a2] <= __dst)
  {
    return memmove(__dst, __src, 56 * a2);
  }

  return __src;
}

char *sub_275385888(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

char *sub_2753858A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

char *sub_2753858CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

char *sub_2753858F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

char *sub_275385914(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_14_5(a3, result);
  }

  return result;
}

void sub_275385954(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), OUTLINED_FUNCTION_18(v8), a1 + *(v9 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_76();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_76();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_275385A28(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2753B76A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_275385BE4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_275385B1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_275385B1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2753B7718();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_275385BE4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2753B7718();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2753B7718()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
LABEL_123:
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2753B7718() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_275384E68();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_275384E68();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_275386218((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_2753860EC(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_2753860EC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2753B20A8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_275386218((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_275386218(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2753B7718() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_2753B7718() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_2753863DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_275386474()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_26_0(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_121_3(v6);
  OUTLINED_FUNCTION_195();

  return sub_275373BFC(v8, v9, v10, v11);
}

uint64_t sub_275386510()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_26_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_121_3(v8);
  OUTLINED_FUNCTION_111_0();

  return sub_275374198(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2753865B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_11_5();
    sub_275388174(255, v3, v4, v5);
    OUTLINED_FUNCTION_245();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2753865FC()
{
  result = qword_2809C2D10;
  if (!qword_2809C2D10)
  {
    sub_275388174(255, &qword_2809C2D08, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D10);
  }

  return result;
}

unint64_t sub_275386690()
{
  result = qword_2809C2D20;
  if (!qword_2809C2D20)
  {
    sub_275388174(255, &qword_2809C2D18, &type metadata for MusicContent.CloudStatus, MEMORY[0x277D83D88]);
    sub_27536172C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D20);
  }

  return result;
}

void sub_27538672C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, unint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_21_4();
    sub_2753868E4(255, v6, v7, v8, MEMORY[0x277D65188]);
    v10 = v9;
    v11 = sub_275314624();
    v12 = a3(a1, MEMORY[0x277D64FD0], v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

unint64_t sub_2753867C8()
{
  result = qword_2809C2D40;
  if (!qword_2809C2D40)
  {
    sub_275388174(255, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D40);
  }

  return result;
}

void sub_27538685C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2753868E4(255, a3, sub_2752FBA9C, &type metadata for MusicContent, a4);
    OUTLINED_FUNCTION_245();
    v5 = sub_2753B72A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2753868E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_275386964(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_275388174(255, &qword_2809C2CE8, &type metadata for MusicContent.ContentType, MEMORY[0x277D83D88]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2753869F4()
{
  result = qword_2809C2D70;
  if (!qword_2809C2D70)
  {
    sub_275388174(255, &qword_2809C2D08, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D70);
  }

  return result;
}

unint64_t sub_275386A88()
{
  result = qword_2809C2D78;
  if (!qword_2809C2D78)
  {
    sub_275388174(255, &qword_2809C0E08, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D78);
  }

  return result;
}

unint64_t sub_275386B1C()
{
  result = qword_2809C2D80;
  if (!qword_2809C2D80)
  {
    sub_27538685C(255, &qword_2809C2D48, &qword_2809C2D50, type metadata accessor for MusicContentStorage.Operations.ContentRow.Source);
    sub_275386BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D80);
  }

  return result;
}

unint64_t sub_275386BB8()
{
  result = qword_2809C2D88;
  if (!qword_2809C2D88)
  {
    sub_2753868E4(255, &qword_2809C2D50, sub_2752FBA9C, &type metadata for MusicContent, type metadata accessor for MusicContentStorage.Operations.ContentRow.Source);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D88);
  }

  return result;
}

unint64_t sub_275386C48()
{
  result = qword_2809C2D90;
  if (!qword_2809C2D90)
  {
    sub_275388174(255, &qword_2809C0DF0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D90);
  }

  return result;
}

unint64_t sub_275386CDC()
{
  result = qword_2809C2D98;
  if (!qword_2809C2D98)
  {
    sub_275388174(255, &qword_2809C2D58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2D98);
  }

  return result;
}

uint64_t sub_275386D70(uint64_t a1, uint64_t a2)
{
  sub_2753868E4(0, &qword_2809C2D60, sub_2752FBA9C, &type metadata for MusicContent, type metadata accessor for MusicContentStorage.Operations.ContentRow);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275386E0C(uint64_t a1)
{
  sub_2753868E4(0, &qword_2809C2D60, sub_2752FBA9C, &type metadata for MusicContent, type metadata accessor for MusicContentStorage.Operations.ContentRow);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_275386EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2753B6AD8();
    OUTLINED_FUNCTION_20_3();
    v9 = sub_2753870A8(v7, 255, v8);
    v10 = a3(a1, v6, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_275386F30()
{
  result = qword_2809C2DB8;
  if (!qword_2809C2DB8)
  {
    sub_275386EA0(255, &qword_2809C2DB0, MEMORY[0x277D64F08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2DB8);
  }

  return result;
}

unint64_t sub_275386FA4()
{
  result = qword_2809C2DC0;
  if (!qword_2809C2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2DC0);
  }

  return result;
}

unint64_t sub_275386FFC()
{
  result = qword_2809C2DC8;
  if (!qword_2809C2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2DC8);
  }

  return result;
}

uint64_t sub_275387050(uint64_t a1, uint64_t a2)
{
  result = sub_2753870A8(qword_2809C2DD0, a2, type metadata accessor for MusicContentStorage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2753870A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_245();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275387114(uint64_t a1)
{
  result = sub_275386FA4();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of MusicContentStorage.withOperations<A>(_:)()
{
  OUTLINED_FUNCTION_66_0();
  v1 = *(*v0 + 120);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_26_0(v3);
  *v4 = v5;
  v4[1] = sub_2752FD514;
  OUTLINED_FUNCTION_216_1();

  return v7();
}

uint64_t dispatch thunk of MusicContentStorage.withTransaction<A>(named:_:)()
{
  OUTLINED_FUNCTION_144_0();
  v1 = *(*v0 + 128);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_26_0(v3);
  *v4 = v5;
  v4[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_119_3();

  return v7();
}

uint64_t sub_2753873C8(uint64_t a1, int a2)
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

uint64_t sub_275387408(uint64_t result, int a2, int a3)
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

uint64_t sub_27538746C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    AssociatedTypeWitness = sub_2753B72A8();
    if (v5 <= 0x3F)
    {
      sub_275388174(319, &qword_2809C2D08, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      AssociatedTypeWitness = v6;
      if (v7 <= 0x3F)
      {
        sub_275388174(319, &qword_2809C0E08, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          type metadata accessor for MusicContentStorage.Operations.ContentRow.Source();
          v10 = sub_2753B72A8();
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_275388174(319, &qword_2809C0DF0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
          if (v12 > 0x3F)
          {
            return v10;
          }

          else
          {
            sub_275388174(319, &qword_2809C2D58, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            AssociatedTypeWitness = v13;
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_2753876B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(*(v10 - 8) + 64);
  if (!v12)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v10;
  v20 = v18 + 23;
  if (v14 < a2)
  {
    v21 = ((((((((((((((v20 + ((v16 + v17 + ((v15 + 8) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
    if (v21 <= 3)
    {
      v22 = ((a2 - v14 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      LODWORD(v23) = 4;
    }

    else
    {
      LODWORD(v23) = 2;
    }

    if (v22 < 0x100)
    {
      LODWORD(v23) = 1;
    }

    if (v22 >= 2)
    {
      v23 = v23;
    }

    else
    {
      v23 = 0;
    }

    switch(v23)
    {
      case 1:
        v24 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          break;
        }

        goto LABEL_28;
      case 2:
        v24 = *(a1 + v21);
        if (*(a1 + v21))
        {
          goto LABEL_28;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2753879BCLL);
      case 4:
        v24 = *(a1 + v21);
        if (!v24)
        {
          break;
        }

LABEL_28:
        v25 = (v24 - 1) << (8 * v21);
        if (v21 <= 3)
        {
          v26 = *a1;
        }

        else
        {
          v25 = 0;
          v26 = *a1;
        }

        return v14 + (v26 | v25) + 1;
      default:
        break;
    }
  }

  v27 = (a1 + v15 + 8) & ~v15;
  if (v9 == v14)
  {

    return __swift_getEnumTagSinglePayload(v27, v9, AssociatedTypeWitness);
  }

  v29 = (v27 + v16 + v17) & ~v17;
  if (v13 == v14)
  {
    if (v12 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, v12, v19);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(((v20 + v29) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  if ((v30 + 1) >= 2)
  {
    return v30;
  }

  else
  {
    return 0;
  }
}

void sub_2753879D0(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = swift_getAssociatedTypeWitness();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v13 + 80);
  v20 = *(*(v11 - 8) + 64);
  if (!v14)
  {
    ++v20;
  }

  v21 = v20 + 23;
  v22 = ((((((((((((((v21 + ((v18 + v19 + ((v17 + 8) & ~v17)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v16 < a3)
  {
    if (v22 <= 3)
    {
      v23 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v12 = v24;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v16 < a2)
  {
    v25 = ~v16 + a2;
    bzero(a1, v22);
    if (v22 <= 3)
    {
      v26 = HIWORD(v25) + 1;
    }

    else
    {
      v26 = 1;
    }

    if (v22 > 3)
    {
      *a1 = v25;
    }

    else
    {
      *a1 = v25;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v22) = v26;
        return;
      case 2:
        *(a1 + v22) = v26;
        return;
      case 3:
        goto LABEL_51;
      case 4:
        *(a1 + v22) = v26;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    case 2:
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    case 3:
LABEL_51:
      __break(1u);
      JUMPOUT(0x275387D24);
    case 4:
      *(a1 + v22) = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!a2)
      {
        return;
      }

LABEL_36:
      v27 = (a1 + v17 + 8) & ~v17;
      if (v10 == v16)
      {
        v28 = a2;
        v14 = v10;
        v11 = AssociatedTypeWitness;
      }

      else
      {
        v27 = (v27 + v18 + v19) & ~v19;
        if (v15 != v16)
        {
          v29 = ((v21 + v27) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v29 = 0;
            v29[1] = 0;
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            v29[1] = a2;
          }

          return;
        }

        v28 = (a2 + 1);
      }

      __swift_storeEnumTagSinglePayload(v27, v28, v14, v11);
      return;
  }
}

_BYTE *sub_275387D4C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x275387E18);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_275387F04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_304_0();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_275387F9C()
{
  if (!qword_2809C2EF8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C2EF8);
    }
  }
}

uint64_t sub_275388050()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_26_0(v3);
  *v4 = v5;
  v4[1] = sub_2752FE5C0;

  return sub_27537275C(v2, v0);
}

uint64_t sub_2753880E0()
{
  OUTLINED_FUNCTION_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_26_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_1(v2);

  return sub_275372AD4(v4, v5, v0);
}

void sub_275388174(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2753881C4()
{
  if (!qword_2809C2F18)
  {
    v0 = sub_2753B7218();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2F18);
    }
  }
}

void sub_27538827C()
{
  if (!qword_2809C2F30)
  {
    sub_2753868E4(255, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C2F30);
    }
  }
}

unint64_t sub_27538831C()
{
  result = qword_2809C2F38;
  if (!qword_2809C2F38)
  {
    sub_275387F04(255, &qword_2809C2F28, sub_27538827C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F38);
  }

  return result;
}

void sub_2753883A4()
{
  if (!qword_2809C2F40)
  {
    sub_27538672C(255, &qword_2809C2CD0, MEMORY[0x277D64FA0]);
    v0 = sub_2753B6568();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2F40);
    }
  }
}

uint64_t sub_275388418()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_26_0(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_19_1(v6);
  OUTLINED_FUNCTION_217();

  return sub_275374458(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_2753884C0()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_26_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_121_3(v7);
  OUTLINED_FUNCTION_217();

  return sub_27537489C(v9, v10, v11, v12, v13);
}

uint64_t sub_275388564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  OUTLINED_FUNCTION_18(v6);
  (*(v7 + 8))(a1);
  return a1;
}

void sub_2753885C0()
{
  if (!qword_2809C2F50)
  {
    v0 = MEMORY[0x277D83D88];
    sub_275388174(255, &qword_2809C2D08, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    sub_275388174(255, &qword_2809C0E08, MEMORY[0x277D837D0], v0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2809C2F50);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[222];
  v5 = v1[221];
  v6 = v1[220];
  v7 = v1[219];
  v8 = v1[216];
  v9 = v1[215];
  v10 = v1[214];
  v11 = v1[213];
  v12 = v1[210];
  v13 = v1[208];
  v19 = v1[207];
  v20 = v1[206];
  v21 = v1[205];
  v22 = v1[204];
  v23 = v1[203];
  v24 = v1[202];
  v25 = v1[201];
  v26 = v1[200];
  v27 = v1[199];
  v28 = v1[198];
  v29 = v1[197];
  v30 = v1[196];
  v31 = v1[195];
  v32 = v1[194];
  v33 = v1[193];
  v34 = v1[192];
  v35 = v1[191];
  v36 = v1[188];
  v37 = v1[187];
  v14 = v1[185];
  *(v2 - 152) = v1[186];
  *(v2 - 144) = v14;
  v15 = v1[183];
  *(v2 - 136) = v1[184];
  *(v2 - 128) = v15;
  v16 = v1[181];
  *(v2 - 120) = v1[182];
  *(v2 - 112) = v16;
  v17 = v1[177];
  *(v2 - 104) = v1[180];
  *(v2 - 96) = v17;
}

void OUTLINED_FUNCTION_2_9()
{
  v1 = v0[217];
  v4 = v0[216];
  v5 = v0[215];
  v6 = v0[214];
  v7 = v0[213];
  v8 = v0[210];
  v9 = v0[208];
  v10 = v0[207];
  v11 = v0[206];
  v12 = v0[205];
  v13 = v0[204];
  v14 = v0[203];
  v15 = v0[202];
  v16 = v0[201];
  v17 = v0[200];
  v18 = v0[199];
  v19 = v0[198];
  v20 = v0[197];
  v21 = v0[196];
  v2 = v0[195];
  v22 = v0[194];
  v3 = v0[193];
}

uint64_t OUTLINED_FUNCTION_4_7()
{
  v3 = v0[200];
  v7 = v0[199];
  v8 = v0[198];
  v9 = v0[197];
  v10 = v0[196];
  v11 = v0[195];
  v12 = v0[194];
  v13 = v0[193];
  v14 = v0[192];
  v15 = v0[189];
  v16 = v0[188];
  v17 = v0[187];
  v18 = v0[186];
  v19 = v0[185];
  v20 = v0[184];
  v21 = v0[183];
  v4 = v0[181];
  *(v1 - 112) = v0[182];
  *(v1 - 104) = v4;
  v5 = v0[175];
  *(v1 - 96) = v0[178];
  *(v1 - 88) = v5;
}

uint64_t OUTLINED_FUNCTION_8_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 176) = a1;
  *(v2 - 160) = v1[192];
  *(v2 - 144) = v1[191];
  *(v2 - 128) = v1[188];
  v4 = *(v1[175] + 40);
  v9 = v1[187];
  *(v2 - 168) = v1[186];
  *(v2 - 152) = v1[185];
  *(v2 - 136) = v1[184];
  v5 = v1[182];
  *(v2 - 120) = v1[183];
  *(v2 - 112) = v5;
  v6 = v1[180];
  *(v2 - 104) = v1[181];
  *(v2 - 96) = v6;
  *(v2 - 88) = v1[177];
  v7 = v1[172];

  return sub_2753B6A88();
}

void OUTLINED_FUNCTION_13_6()
{
  v3 = v0[238];
  v4 = v0[237];
  v5 = v0[236];
  v6 = v0[235];
  v7 = v0[232];
  v8 = v0[231];
  v9 = v0[230];
  v10 = v0[227];
  v11 = v0[226];
  v2 = v0[225];
  v12 = v0[222];
  *(v1 - 128) = v0[220];
  *(v1 - 112) = v0[218];
}

uint64_t OUTLINED_FUNCTION_15_5()
{
  v3 = v0[202];
  v4 = v0[201];
  v5 = v0[200];
  v8 = v0[199];
  v9 = v0[198];
  v10 = v0[197];
  v11 = v0[196];
  v12 = v0[195];
  v13 = v0[194];
  v14 = v0[193];
  v15 = v0[192];
  v16 = v0[189];
  v17 = v0[188];
  v18 = v0[187];
  v19 = v0[186];
  v20 = v0[185];
  v21 = v0[184];
  v22 = v0[183];
  v23 = v0[182];
  v6 = v0[178];
  *(v1 - 112) = v0[181];
  *(v1 - 104) = v6;
  *(v1 - 96) = v0[175];
}

void OUTLINED_FUNCTION_16_3()
{
  v1 = v0[204];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[201];
}

uint64_t OUTLINED_FUNCTION_17_5()
{
  v2 = v0[223];
  v3 = v0[222];
  v4 = v0[219];
  v5 = v0[218];
  v6 = v0[217];
  v7 = v0[212];
  v8 = v0[211];
  v9 = v0[210];
}

uint64_t OUTLINED_FUNCTION_24_3()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  v3 = *(v0 + 1336);
  v4 = *(v0 + 1344);
  v5 = *(v2 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_26_4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[248];
  v5 = v1[247];
  v6 = v1[246];
  v7 = v1[245];
  v8 = v1[244];
  v9 = v1[241];
  v10 = v1[240];
  v11 = v1[239];
  v12 = v1[238];
  v16 = v1[237];
  v17 = v1[236];
  v18 = v1[235];
  v19 = v1[232];
  v20 = v1[231];
  v21 = v1[230];
  v22 = v1[227];
  v23 = v1[226];
  v24 = v1[225];
  v25 = v1[222];
  v13 = v1[220];
  v26 = v1[218];
  v14 = v1[213];
}

uint64_t OUTLINED_FUNCTION_28_4(uint64_t a1)
{
  *(a1 + 8) = sub_27537FF94;
  v2 = *(v1 + 1840);
  return v1 + 1568;
}

uint64_t OUTLINED_FUNCTION_29_4(uint64_t a1)
{
  *(a1 + 8) = sub_27537F32C;
  v2 = *(v1 + 1848);
  return v1 + 1552;
}

uint64_t OUTLINED_FUNCTION_30_4()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 80);
  return result;
}

void OUTLINED_FUNCTION_32_3()
{
  v1 = v0[222];
  v2 = v0[221];
  v3 = v0[220];
  v4 = v0[219];
}

uint64_t OUTLINED_FUNCTION_33_2()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  *(v1 + 1320) = v0;
  *(v1 + 1328) = v3;

  return sub_2753B6558();
}

uint64_t OUTLINED_FUNCTION_34_4(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_38_3()
{
  v3 = *(v1 + 1336);
  v4 = *(v1 + 1344);
  v5 = *(v0 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_39_4()
{
  v1 = v0[211];
  result = v0[210];
  v3 = *(v0[212] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_41_4(unint64_t *a1)
{

  return sub_2753865B8(a1);
}

void OUTLINED_FUNCTION_42_3(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x277D64F08];

  sub_275386EA0(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_46_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 1400);
  v4 = *(v2 + 1376);
  v5 = *(a1 + 96);
  return v1;
}

uint64_t OUTLINED_FUNCTION_49_3()
{
  result = v0[246];
  v2 = v0[242];
  v3 = *(v0[243] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_4()
{
  v2 = *(v1 + 1688);
  v3 = *(*(v1 + 1696) + 96);
  return v0;
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  *(v0 + 1320) = v1;
  *(v0 + 1328) = v3;

  return sub_2753B6558();
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_61_2()
{
  v1 = v0[254];
  v2 = v0[253];
  v3 = v0[236];
  v4 = v0[235];
  v5 = v0[233];
  v6 = v0[230];
  return v0[215];
}

uint64_t OUTLINED_FUNCTION_62_3()
{
  v1 = v0[254];
  v2 = v0[253];
  v3 = v0[238];
  v4 = v0[237];
  v5 = v0[233];
  v6 = v0[231];
  return v0[215];
}

uint64_t OUTLINED_FUNCTION_69_4(void *a1)
{
  v2 = a1[3];
  *(v1 - 112) = a1[4];
  *(v1 - 128) = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_2753B65C8();
}

uint64_t OUTLINED_FUNCTION_70_4()
{

  return sub_2753B62C8();
}

uint64_t OUTLINED_FUNCTION_73_4()
{

  return sub_2753B65B8();
}

void OUTLINED_FUNCTION_79_3()
{
  v1 = v0[248];
  v2 = v0[247];
  v3 = v0[246];
  v4 = v0[245];
  v5 = v0[244];
  v6 = v0[241];
}

void OUTLINED_FUNCTION_80_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_81_1()
{
  v1 = v0[213];
  v2 = v0[212];
  v3 = v0[211];
}

__n128 OUTLINED_FUNCTION_82_3(__n128 *a1, __n128 a2, __n128 a3)
{
  a1[1] = a2;
  result = *(v7 - 112);
  a1[2] = result;
  a1[3] = a3;
  a1[4].n128_u64[0] = v3;
  a1[4].n128_u64[1] = v4;
  a1[5].n128_u8[2] = v6;
  a1[5].n128_u16[0] = v5;
  return result;
}

void OUTLINED_FUNCTION_83_3()
{
  v3 = v2[225];
  v4 = v2[224];
  v5 = v2[223];
  v2[198] = v0;
  v2[199] = v1;
  v6 = *(v4 + 16);
}

uint64_t OUTLINED_FUNCTION_91_3()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_92_3(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_97_2(uint64_t a1)
{
  *(a1 + 8) = sub_275378A60;
  v2 = *(v1 + 600);
  return v1 + 496;
}

uint64_t OUTLINED_FUNCTION_109_3()
{
  v4 = v2[262];
  v5 = v2[244];
  v6 = v2[243];
  v7 = v2[242];
  *(v1 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v8 = (*(v1 + 48) + 16 * v0);
  *v8 = v4;
  v8[1] = v3;
  v9 = *(v6 + 32);
  return *(v1 + 56) + *(v6 + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_112_3(uint64_t a1)
{
  *(v5 - 128) = v1;
  *(v5 - 112) = v4;
  v6 = *(v3 + 220);
  v7 = *(v3 + 1944);
  v8 = *(v3 + 1936);
  v9 = *(v3 + 1816);
  v10 = *(v3 + 1792);
  v11 = *(v3 + 1784);
  v14 = *(v7 + 16);
  v12 = *(v2 + 56) + *(v7 + 72) * a1;
  return *(v3 + 1968);
}

uint64_t OUTLINED_FUNCTION_113_3()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_116_3(uint64_t a1)
{
  *(a1 + 8) = sub_27536BC20;
  v3 = *(v1 + 1400);
  return v2;
}

uint64_t OUTLINED_FUNCTION_117_3()
{
  v1 = v0[260];
  v2 = v0[261] + 1;
  return v0[256];
}

void OUTLINED_FUNCTION_118_3()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[241];
  v5 = v0[240];
}

void *OUTLINED_FUNCTION_120_2(uint64_t a1)
{
  *v1 = a1;
  v3 = *(v2 + 104);
  return v1;
}

uint64_t OUTLINED_FUNCTION_124_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_125_3()
{
  result = *(v0 + 1784);
  v2 = *(v0 + 1776);
  return result;
}

uint64_t OUTLINED_FUNCTION_129_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v19 + 8 * (v18 >> 6) + 64) |= 1 << v18;
  v22 = (*(v19 + 48) + 16 * v18);
  *v22 = v21;
  v22[1] = v20;
  result = *(v19 + 56) + v18 * a18;
  v24 = *(a1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_130_1(uint64_t result)
{
  *(result + 8) = sub_27536D674;
  v2 = *(v1 + 1448);
  return result;
}

uint64_t OUTLINED_FUNCTION_131_3(uint64_t result)
{
  *(result + 8) = sub_27536A2C4;
  v2 = *(v1 + 1504);
  return result;
}

uint64_t OUTLINED_FUNCTION_133_3()
{

  return sub_2753B74A8();
}

void *OUTLINED_FUNCTION_135_2()
{
  v1 = *(v0 + 1400);
  v3 = v1[4];
  return __swift_project_boxed_opaque_existential_1(v1, v1[3]);
}

void *OUTLINED_FUNCTION_150_2@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 40);
  *a1 = v3;

  return __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
}

uint64_t OUTLINED_FUNCTION_159_2(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_160_2()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_164_1(unint64_t *a1)
{

  return sub_2753865B8(a1);
}

void OUTLINED_FUNCTION_166_1()
{
  v1 = v0[220];
  v2 = v0[219];
  v3 = v0[218];
  v4 = v0[217];
}

uint64_t OUTLINED_FUNCTION_172_1()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_173_1()
{
  v8 = *(v0 + 220);
  v2 = *(v0 + 1968);
  v9 = *(v0 + 1960);
  v3 = *(v0 + 1936);
  v4 = *(v0 + 1808);
  v5 = *(v0 + 1792);
  v7 = *(v0 + 1784);

  return sub_275386E0C(v0 + 432);
}

void *OUTLINED_FUNCTION_174_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 208 * a2;

  return memcpy((v2 + 432), (v4 + 32), 0xCAuLL);
}

uint64_t OUTLINED_FUNCTION_177_1()
{
  v2 = v0[173];
  v3 = v0[166];
  v4 = v0[165];
  v5 = v0[164];
  v6 = v0[162];
  v7 = v0[161];
  v8 = v0[160];
  v9 = v0[159];
  v10 = v0[158];
  v12 = v0[157];
}

void OUTLINED_FUNCTION_183(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 + 16) = v18;
  v23 = v19 + 40 * v17;
  *(v23 + 32) = a16;
  *(v23 + 40) = v16;
  *(v23 + 48) = v20;
  *(v23 + 56) = v21;
  *(v23 + 64) = v22;
}

uint64_t OUTLINED_FUNCTION_187_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_188_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17)
{
  *(a1 + 16) = a15;
  *(a1 + 32) = a17;
  *(a1 + 48) = a16;
  *(a1 + 64) = v20;
  *(a1 + 72) = v19;
  *(a1 + 82) = v17;
  *(a1 + 80) = v21;
  *(v22 - 96) = v18;

  return sub_275365400(a1);
}

uint64_t OUTLINED_FUNCTION_189_1()
{
  v4 = v1[223];
  v5 = v1[222];
  v6 = v1[219];
  v7 = v1[218];
  v8 = v1[217];
  v9 = v1[212];
  *(v2 - 120) = v1[211];
  *(v2 - 112) = v0;
  v10 = v1[210];
}

uint64_t OUTLINED_FUNCTION_190_1()
{
  v1 = v0[221];
  result = v0[219];
  v3 = v0[217];
  v4 = v0[172];
  v5 = *(v0[218] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_191_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_192_0()
{
  v3 = v2[244];
  v4 = v2[243];
  v5 = v2[242];
  v6 = *(v4 + 40);
  return *(v1 + 56) + *(v4 + 72) * v0;
}

void OUTLINED_FUNCTION_194_0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 16) = v6;
  v9 = a5 + 56 * v8;
  *(v9 + 32) = v7;
  *(v9 + 40) = a1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 56) = v5;
}

uint64_t OUTLINED_FUNCTION_196_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 1840);
  return result;
}

uint64_t OUTLINED_FUNCTION_203_1()
{
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[32];

  return sub_2753B65C8();
}

uint64_t OUTLINED_FUNCTION_204_1()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_205_1()
{
  v2 = v0[232];
  v3 = v0[230];
  v4 = v0[208];
  v5 = v0[207];
  v6 = v0[190];
  v7 = v0[189];
  v8 = v0[188];
  v9 = v0[175];
}

uint64_t OUTLINED_FUNCTION_206_1()
{
  v3 = *v0;
  *(v1 - 128) = v0[1];
  *(v1 - 112) = v3;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_207_1()
{
  v2 = v0[225];
  v3 = v0[224];
  v4 = v0[223];

  return sub_275386E0C((v0 + 54));
}

void *OUTLINED_FUNCTION_208_1()
{
  v3 = *v0;

  return memcpy((v1 + 224), (v1 + 432), 0xCAuLL);
}

uint64_t OUTLINED_FUNCTION_209_1()
{

  return sub_2753B62B8();
}

uint64_t OUTLINED_FUNCTION_212_1()
{

  return sub_2753B65F8();
}

uint64_t OUTLINED_FUNCTION_213_1()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_217_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_218_1()
{
  v1 = *v0;
  v5 = *(v0 - 1);
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 42) >> 5;
}

uint64_t OUTLINED_FUNCTION_219_1()
{
  result = v0[221];
  v2 = v0[217];
  v3 = v0[213];
  v4 = v0[212];
  v5 = v0[211];
  v6 = v0[172];
  return result;
}

void *OUTLINED_FUNCTION_223_1()
{
  *v1 = *(v2 - 96);
  v3 = *(v0 + 104);
  return v1;
}

uint64_t OUTLINED_FUNCTION_224_1()
{
  v3 = v0[53];
  v2 = v0[54];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[47];
  v6 = v0[48];
}

void *OUTLINED_FUNCTION_227_1(double a1)
{

  return __swift_project_boxed_opaque_existential_1((v1 + 16), *&a1);
}

void OUTLINED_FUNCTION_230_1()
{
  v1 = v0[219];
  v2 = v0[218];
  v3 = v0[217];
}

uint64_t OUTLINED_FUNCTION_233_1()
{

  return sub_2753B65B8();
}

void OUTLINED_FUNCTION_234_1()
{

  sub_275386454(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_235_1()
{
  v5 = *(v3 - 112);
  v6 = *(v3 - 104);
  v7 = *(v3 - 96);
  v8 = *(v3 - 88);

  return sub_2752FBB6C(v2, v1, v0, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_236_1()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_237_1()
{

  return sub_2753B65C8();
}

void OUTLINED_FUNCTION_238_1()
{
  v1 = v0[46];
  v2 = v0[37];
  v3 = v0[35];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v7 = v0[29];
}

void OUTLINED_FUNCTION_239_1()
{
  v1 = v0[263];
  v2 = v0[259];
  v3 = v0[258];
  v4 = v0[256];
  v5 = v0[252];
}

uint64_t OUTLINED_FUNCTION_240_1(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_242_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[15];
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_243_0(uint64_t result)
{
  *(result + 8) = v2;
  v5 = v3[25];
  v6 = v3[23];
  v7 = v3[14];
  *(v4 + 16) = v3[24];
  *(v4 + 24) = v1;
  return result;
}

void OUTLINED_FUNCTION_247_0()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
}

uint64_t OUTLINED_FUNCTION_249_0()
{
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_2753B65C8();
}

uint64_t OUTLINED_FUNCTION_250_0()
{
  v1 = v0[223];
  result = v0[219];
  v3 = v0[217];
  v4 = *(v0[218] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_251@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 80) | (v2 << 16);
  result = *(a1 - 3);
  v5 = *(a1 - 2);
  v6 = *(a1 - 1);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_255@<X0>(uint64_t a1@<X8>)
{
  v5 = v3[26];
  v3[10] = v1;
  v3[11] = v2;
  v3[7] = a1;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_256(uint64_t a1)
{

  return MEMORY[0x2821CC2B8](a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_257()
{

  return sub_2753B6A78();
}

uint64_t OUTLINED_FUNCTION_258_0()
{
  v2 = v0[223];
  v3 = v0[219];
  v4 = v0[218];
  v5 = v0[217];
}

uint64_t OUTLINED_FUNCTION_259_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[84] = a1;
  v10[80] = a10;
  v10[81] = a9;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_260_0()
{
  v1[103] = v2;
  v1[104] = v0;
  v1[100] = v3;
  v1[101] = v4;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_261_0()
{

  return sub_2753B62C8();
}

void OUTLINED_FUNCTION_262_0()
{

  sub_275386454(v0 > 1, v1, 1);
}

void *OUTLINED_FUNCTION_263_0()
{

  return memcpy((v0 + 848), (v0 + 432), 0xCAuLL);
}

uint64_t OUTLINED_FUNCTION_264_0()
{

  return sub_2753B6A78();
}

uint64_t OUTLINED_FUNCTION_265_0()
{
  v2 = *(v0 + 1328);
  v4 = *(v0 + 1312);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_266_0()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_267_0()
{
  v1 = *(v0 + 120);
  *(v0 + 568) = v1;
  *(v0 + 584) = __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
}

uint64_t OUTLINED_FUNCTION_269_0()
{
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v9 = v0[13];

  return sub_2753B6598();
}

uint64_t OUTLINED_FUNCTION_270_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, char a8@<W8>, __n128 a9@<Q0>, __n128 a10@<Q1>)
{
  *(v10 + 88) = a10;
  *(v10 + 72) = a9;
  *(v10 + 104) = a5;
  *(v10 + 112) = a6;
  *(v10 + 122) = a8;

  return sub_275315CB8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_271_0()
{

  return sub_2753B7798();
}

uint64_t OUTLINED_FUNCTION_272_0()
{

  return sub_2753B6A88();
}

uint64_t OUTLINED_FUNCTION_273_0()
{

  return sub_2753B65F8();
}

uint64_t OUTLINED_FUNCTION_274_0()
{

  return sub_2753B65B8();
}

void OUTLINED_FUNCTION_276_0(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v8[2] = a2;
  v8[1] = a1;
  v8[3].n128_u64[0] = a7;
  v8[3].n128_u64[1] = a8;
}

void OUTLINED_FUNCTION_280_0()
{
  v2 = v1[56];
  v1[262] = v1[55];
  v1[263] = v2;
  v3 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_282_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  result = *(v19 + 56) + v18 * a18;
  v21 = *(a1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_284_0()
{
  result = *(v0 + 1672);
  v2 = *(v0 + 1664);
  return result;
}

uint64_t OUTLINED_FUNCTION_286_0()
{
  result = v0[232];
  v2 = v0[228];
  v3 = *(v0[229] + 8);
  return result;
}

void OUTLINED_FUNCTION_288_0(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = a2;
  *(v8 + 184) = a1;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
}

void OUTLINED_FUNCTION_292_0(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v8[9] = a2;
  v8[8] = a1;
  v8[10].n128_u64[0] = a7;
  v8[10].n128_u64[1] = a8;
}

uint64_t OUTLINED_FUNCTION_314_0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v4 - 128);
  v7 = *(v4 - 112);

  return sub_27538436C(v6, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_315_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  v4[58] = a1;
  v4[59] = v3;
  v4[55] = a3;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_316_0()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_317_0@<X0>(uint64_t a1@<X8>)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[17] = v3;

  return sub_2753B6588();
}

uint64_t OUTLINED_FUNCTION_318_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 560) = *(a2 + 40);
  v4 = *(a2 + 32);

  return sub_27537D100(a1, v2 + 96);
}

uint64_t OUTLINED_FUNCTION_319_0()
{
  v2 = *(v0 + 40);

  return sub_2753B7798();
}

uint64_t OUTLINED_FUNCTION_320_0()
{

  return sub_2753B65B8();
}

void OUTLINED_FUNCTION_321_0()
{

  sub_275384F68();
}

uint64_t OUTLINED_FUNCTION_322_0()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[28];
  v8 = v0[29];
}

uint64_t OUTLINED_FUNCTION_323_0()
{
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
}

uint64_t OUTLINED_FUNCTION_324_0()
{
  v2 = v0[256];
  v3 = v0[252];
  v4 = v0[249];
}

uint64_t OUTLINED_FUNCTION_325_0()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_326_0()
{

  return sub_2753B65F8();
}

uint64_t OUTLINED_FUNCTION_327_0()
{

  return sub_2753B65B8();
}

uint64_t OUTLINED_FUNCTION_328_0()
{

  return sub_2753B62C8();
}

uint64_t OUTLINED_FUNCTION_329_0()
{
  v2 = *(v0 + 1704);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_330_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_331_0()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[19];
  v4 = v0[20];
}

uint64_t OUTLINED_FUNCTION_333_0()
{

  return sub_2753B65F8();
}

uint64_t MusicContent.SourceType.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

char *MusicContentSystem.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = *(v0 + 4);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 120)]);
  return v0;
}

uint64_t MusicContentSystem.__deallocating_deinit()
{
  MusicContentSystem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MusicContentSystem.qualify(rawIdentifiers:_:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[17] = *v0;
  sub_2753B6288();
  v1[18] = sub_2753B6278();
  sub_27538B458(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v6 = sub_2753B70C8();
  v1[19] = v6;
  v1[20] = v5;

  return MEMORY[0x2822009F8](sub_27538AA34, v6, v5);
}

uint64_t sub_27538AA34()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = *(v3 + 16);
  v0[21] = v4;
  v0[22] = *(*v1 + 120);
  v0[23] = 0;
  if (v4)
  {
    OUTLINED_FUNCTION_1_9(v3);
    v5 = *(v2 + 80);
    v6 = *(*(*(v2 + 88) + 8) + 8);
    v7 = *(MEMORY[0x277D650E8] + 4);
    v8 = swift_task_alloc();
    v0[28] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_0_8(v8);

    return MEMORY[0x2821CC408](v0 + 2);
  }

  else
  {
    v9 = v0[18];

    OUTLINED_FUNCTION_19_0();

    return v10();
  }
}

uint64_t sub_27538AB40()
{
  OUTLINED_FUNCTION_14_0();
  v3 = *(*v1 + 224);
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v2;
  *(v2 + 232) = v0;

  if (v0)
  {
    sub_2753147B0(*(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 89));
    v5 = *(v2 + 152);
    v6 = *(v2 + 160);
    v7 = sub_27538B028;
  }

  else
  {
    v5 = *(v2 + 152);
    v6 = *(v2 + 160);
    v7 = sub_27538AC58;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_27538AC58()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v7 = *(v0 + 208);
  v8 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 72) = v7;
  *(v0 + 56) = v8;
  *(v0 + 88) = v1;
  v4 = *(MEMORY[0x277D65228] + 4);
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = sub_27538AD38;

  return MEMORY[0x2821CC598](v0 + 56, v2, v3);
}

uint64_t sub_27538AD38(uint64_t a1)
{
  v5 = *(*v2 + 240);
  v4 = *v2;
  OUTLINED_FUNCTION_2();
  *v6 = v4;
  *(v4 + 248) = v1;

  if (v1)
  {
    v7 = *(v4 + 152);
    v8 = *(v4 + 160);
    v9 = sub_27538B084;
  }

  else
  {
    v10 = *(v4 + 208);
    v11 = *(v4 + 216);
    v12 = *(v4 + 192);
    v13 = *(v4 + 200);
    *(v4 + 256) = a1;
    sub_2753147B0(v12, v13, v10, v11, *(v4 + 89));
    v7 = *(v4 + 152);
    v8 = *(v4 + 160);
    v9 = sub_27538AE64;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27538AE64()
{
  v0[12] = v0[32];
  v2 = v0[14];
  v1 = v0[15];
  sub_275361684(0, &qword_2809C1450);
  sub_275362630();
  sub_27538B120(&qword_2809C2F58, &qword_2809C1450);
  v3 = sub_2753B71E8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2(v3);

  v4 = v0[23] + 1;
  v0[23] = v4;
  if (v4 == v0[21])
  {
    v5 = v0[18];

    OUTLINED_FUNCTION_19_0();

    return v6();
  }

  else
  {
    v8 = v0[22];
    v10 = v0[16];
    v9 = v0[17];
    OUTLINED_FUNCTION_1_9(v0[13] + 40 * v4);
    v11 = *(v9 + 80);
    v12 = *(*(*(v9 + 88) + 8) + 8);
    v13 = *(MEMORY[0x277D650E8] + 4);
    v14 = swift_task_alloc();
    v0[28] = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_0_8();

    return MEMORY[0x2821CC408](v0 + 2);
  }
}

uint64_t sub_27538B028()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 144);

  v2 = *(v0 + 232);
  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_27538B084()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 144);
  v6 = *(v0 + 89);

  sub_2753147B0(v4, v3, v1, v2, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v7 = *(v0 + 248);
  OUTLINED_FUNCTION_19_0();

  return v8();
}

uint64_t sub_27538B120(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_275361684(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27538B168()
{
  result = qword_2809C2F60;
  if (!qword_2809C2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F60);
  }

  return result;
}

unint64_t sub_27538B1C0()
{
  result = qword_2809C2F68;
  if (!qword_2809C2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F68);
  }

  return result;
}

unint64_t sub_27538B218()
{
  result = qword_2809C2F70;
  if (!qword_2809C2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F70);
  }

  return result;
}

unint64_t sub_27538B270()
{
  result = qword_2809C2F78;
  if (!qword_2809C2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F78);
  }

  return result;
}

uint64_t sub_27538B37C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27538B3BC()
{
  result = qword_2809C2F90;
  if (!qword_2809C2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2F90);
  }

  return result;
}

uint64_t sub_27538B458(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27538B4A4()
{
  result = qword_2809C2F98[0];
  if (!qword_2809C2F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C2F98);
  }

  return result;
}

uint64_t sub_27538B4F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = MusicContentSystem.storage.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27538B548()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27538B5F8;

  return MusicContentSystem.qualify(rawIdentifiers:_:)();
}

uint64_t sub_27538B5F8()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  OUTLINED_FUNCTION_19_0();

  return v4();
}

_BYTE *_s10SourceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27538B7A8);
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

uint64_t sub_27538B820(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_0_8(uint64_t result)
{
  *(result + 8) = sub_27538AB40;
  v2 = *(v1 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_9@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 32);
  *(v1 + 192) = v3;
  v4 = *(a1 + 40);
  *(v1 + 200) = v4;
  v5 = *(a1 + 48);
  *(v1 + 208) = v5;
  v6 = *(a1 + 56);
  *(v1 + 216) = v6;
  v7 = *(a1 + 64);
  *(v1 + 89) = v7;

  return sub_275329198(v3, v4, v5, v6, v7);
}

unint64_t sub_27538B964()
{
  result = qword_2809C3020;
  if (!qword_2809C3020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3020);
  }

  return result;
}

uint64_t sub_27538BA08(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2753B6148();
  OUTLINED_FUNCTION_75(v2);
  v4 = *(v3 + 64);
  v1[3] = OUTLINED_FUNCTION_138_0();
  sub_27538C3F8();
  OUTLINED_FUNCTION_75(v5);
  v7 = *(v6 + 64);
  v1[4] = OUTLINED_FUNCTION_138_0();
  v8 = sub_2753B61F8();
  v1[5] = v8;
  OUTLINED_FUNCTION_75(v8);
  v10 = *(v9 + 64);
  v1[6] = OUTLINED_FUNCTION_138_0();
  v11 = sub_2753B63F8();
  OUTLINED_FUNCTION_75(v11);
  v13 = *(v12 + 64);
  v1[7] = OUTLINED_FUNCTION_138_0();
  v14 = sub_2753B6418();
  OUTLINED_FUNCTION_75(v14);
  v16 = *(v15 + 64);
  v1[8] = OUTLINED_FUNCTION_138_0();
  sub_2753B6288();
  v1[9] = sub_2753B6278();
  sub_27538C5D0(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v18 = sub_2753B70C8();
  v1[10] = v18;
  v1[11] = v17;

  return MEMORY[0x2822009F8](sub_27538BB74, v18, v17);
}

uint64_t sub_27538BB74()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_2753B6438();
  sub_2753B6408();
  sub_2753B63E8();
  v3 = *(MEMORY[0x277D64F60] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_27538BC38;
  v5 = v0[7];
  v6 = v0[8];

  return MEMORY[0x2821CC1F8](v6, v5);
}

uint64_t sub_27538BC38()
{
  v2 = *v1;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v5 = v2[12];
  v6 = *v1;
  OUTLINED_FUNCTION_53_0();
  *v7 = v6;
  *(v9 + 104) = v8;
  *(v9 + 112) = v0;

  v10 = v2[11];
  v11 = v2[10];
  if (v0)
  {
    v12 = sub_27538C1D4;
  }

  else
  {
    v12 = sub_27538BD74;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_27538BD74()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  sub_2753B6188();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
  sub_2753B6138();
  v6 = sub_2753B66C8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_2753B66A8();
  if (v1)
  {
    v9 = v0[13];
    v10 = v0[9];

    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v15 = v0[3];
    v14 = v0[4];

    OUTLINED_FUNCTION_19_0();

    return v16();
  }

  else
  {
    type metadata accessor for MusicContent.Sources.MusicKit();
    swift_allocObject();
    sub_27538C450();
    swift_allocObject();
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_27538BF48;
    v19 = v0[13];

    return sub_27538C990();
  }
}

uint64_t sub_27538BF48(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_53_0();
  *v5 = v4;
  v7 = *(v6 + 120);
  v8 = *v2;
  OUTLINED_FUNCTION_53_0();
  *v9 = v8;
  v4[16] = v1;

  if (v1)
  {
    v10 = v4[10];
    v11 = v4[11];
    v12 = sub_27538C134;
  }

  else
  {
    v4[17] = a1;
    v10 = v4[10];
    v11 = v4[11];
    v12 = sub_27538C068;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_27538C068()
{
  v1 = v0[17];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  sub_27538C4E4();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *v8 = v9;

  OUTLINED_FUNCTION_19_0();

  return v10();
}

uint64_t sub_27538C134()
{
  v1 = v0[9];

  v2 = v0[16];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];

  OUTLINED_FUNCTION_19_0();

  return v8();
}

uint64_t sub_27538C1D4()
{
  v1 = v0[9];

  v2 = v0[14];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];

  OUTLINED_FUNCTION_19_0();

  return v8();
}

uint64_t sub_27538C274(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27538C30C;

  return sub_27538BA08(a1);
}

uint64_t sub_27538C30C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;

  OUTLINED_FUNCTION_19_0();

  return v4();
}

void sub_27538C3F8()
{
  if (!qword_2809C08E8)
  {
    sub_2753B61F8();
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C08E8);
    }
  }
}

void sub_27538C450()
{
  if (!qword_2809C3028)
  {
    type metadata accessor for MusicContent.Sources.MusicKit();
    sub_27538C5D0(&qword_2809C3030, type metadata accessor for MusicContent.Sources.MusicKit);
    v0 = type metadata accessor for MusicContentSystem();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3028);
    }
  }
}

void sub_27538C4E4()
{
  if (!qword_2809C3038)
  {
    sub_27538C450();
    sub_27538C5D0(&qword_2809C3040, sub_27538C450);
    v0 = type metadata accessor for MusicContentBehavior();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3038);
    }
  }
}

uint64_t sub_27538C5D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27538C618()
{
  sub_2753920F0(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v23 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v23 - v3);
  sub_2753920F0(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  sub_275391F70();
  sub_2753B69A8();
  v11 = sub_2753B6648();
  v13 = v12;

  v32 = v11;
  v33 = v13;
  sub_2753B6988();
  sub_2753B6A58();
  (*(v7 + 8))(v10, v6);
  v14 = v23;
  if ((*(v1 + 88))(v4, v23) == *MEMORY[0x277D65178])
  {
    (*(v1 + 96))(v4, v14);
    sub_27535A340(*v4, &v24);

    v15 = v30 | (v31 << 16);
    if ((~v15 & 0xFE00FE) != 0)
    {
      v17 = v24;
      v16 = v25;
      v18 = v26;
      v19 = v27;
      v20 = v28;
      v21 = v29;
      if ((v15 & 0xE00000) != 0)
      {
        sub_2752FBB58(v24, v25, v26, v27, v28, v29, v30 | (v31 << 16));
      }

      else
      {
        v24 = 45;
        v25 = 0xE100000000000000;

        MEMORY[0x277C76100](v17, v16);
        sub_2752FBB58(v17, v16, v18, v19, v20, v21, v15);

        MEMORY[0x277C76100](v24, v25);
      }
    }
  }

  else
  {
    (*(v1 + 8))(v4, v14);
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_2753B7398();

  v24 = v32;
  v25 = v33;
  MEMORY[0x277C76100](0x7469736E6172742DLL, 0xEF6F666E496E6F69);
  return v24;
}

uint64_t sub_27538C990()
{
  OUTLINED_FUNCTION_14_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *v0;
  sub_2753B6288();
  v1[7] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  sub_275392218(v5, v6);
  v8 = OUTLINED_FUNCTION_22_3();
  v1[8] = v8;
  v1[9] = v7;

  return MEMORY[0x2822009F8](sub_27538CA60, v8, v7);
}

uint64_t sub_27538CA60()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[5];
  v2 = v0[2];
  sub_2753B6AF8();
  *(v1 + 16) = sub_2753B6AE8();
  type metadata accessor for MusicContentStorage();
  swift_allocObject();

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_27538CB38;
  v4 = v0[2];

  return sub_275371F64();
}

uint64_t sub_27538CB38()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[11] = v0;

  if (v0)
  {
    v11 = v5[4];

    v12 = v5[8];
    v13 = v5[9];
    v14 = sub_27538CCD8;
  }

  else
  {
    v5[12] = v3;
    v12 = v5[8];
    v13 = v5[9];
    v14 = sub_27538CC4C;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_27538CC4C()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0[12];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  v3[3] = v1;
  v3[4] = v6;
  v3[5] = v4;
  OUTLINED_FUNCTION_105_3();
  v8 = v0[5];

  return v7(v8);
}

uint64_t sub_27538CCD8()
{
  OUTLINED_FUNCTION_3();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = *(v3 + 16);

  OUTLINED_FUNCTION_27();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_19_0();
  v8 = v0[11];

  return v7();
}

uint64_t sub_27538CD6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  sub_275392260(a2, v2 + OBJC_IVAR____TtC18_SonicKit_MusicKit8SonicNES_smartTransitionRenderer, type metadata accessor for SmartTransitionRenderer);
  return v2;
}

uint64_t static SonicNES.shared.getter()
{
  OUTLINED_FUNCTION_14_0();
  v1[6] = v0;
  v2 = type metadata accessor for SmartTransitionRenderer();
  OUTLINED_FUNCTION_75(v2);
  v4 = *(v3 + 64);
  v1[7] = OUTLINED_FUNCTION_138_0();
  v5 = sub_2753B5E48();
  v1[8] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v1[9] = v6;
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_138_0();
  v9 = sub_2753B5E78();
  v1[11] = v9;
  OUTLINED_FUNCTION_17_1(v9);
  v1[12] = v10;
  v12 = *(v11 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v13 = sub_2753B6878();
  v1[15] = v13;
  OUTLINED_FUNCTION_17_1(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_138_0();
  sub_27538E610();
  v1[18] = v17;
  OUTLINED_FUNCTION_17_1(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_138_0();
  v21 = sub_2753B6148();
  OUTLINED_FUNCTION_75(v21);
  v23 = *(v22 + 64);
  v1[21] = OUTLINED_FUNCTION_138_0();
  sub_275392158(0, &qword_2809C08E8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_75(v24);
  v26 = *(v25 + 64);
  v1[22] = OUTLINED_FUNCTION_138_0();
  v27 = sub_2753B6168();
  v1[23] = v27;
  OUTLINED_FUNCTION_17_1(v27);
  v1[24] = v28;
  v30 = *(v29 + 64);
  v1[25] = OUTLINED_FUNCTION_138_0();
  v31 = sub_2753B61F8();
  v1[26] = v31;
  OUTLINED_FUNCTION_17_1(v31);
  v1[27] = v32;
  v34 = *(v33 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v35 = sub_2753B6418();
  v1[33] = v35;
  OUTLINED_FUNCTION_17_1(v35);
  v1[34] = v36;
  v38 = *(v37 + 64);
  v1[35] = OUTLINED_FUNCTION_138_0();
  v39 = sub_2753B63B8();
  v1[36] = v39;
  OUTLINED_FUNCTION_17_1(v39);
  v1[37] = v40;
  v42 = *(v41 + 64);
  v1[38] = OUTLINED_FUNCTION_138_0();
  v43 = sub_2753B63F8();
  v1[39] = v43;
  OUTLINED_FUNCTION_17_1(v43);
  v1[40] = v44;
  v46 = *(v45 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  sub_2753B6288();
  v1[43] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  sub_275392218(v47, v48);
  v50 = OUTLINED_FUNCTION_22_3();
  v1[44] = v50;
  v1[45] = v49;

  return MEMORY[0x2822009F8](sub_27538D1F4, v50, v49);
}

uint64_t sub_27538D1F4()
{
  if (qword_2809C3050)
  {
    v1 = v0[43];

    OUTLINED_FUNCTION_5_7();
    v3 = v0[29];
    v2 = v0[30];
    v4 = v0[28];
    v22 = v0[25];
    v23 = v0[22];
    v24 = v0[21];
    v25 = v0[20];
    v26 = v0[17];
    v27 = v0[14];
    v29 = v0[13];
    v31 = v0[10];
    v33 = v0[7];

    OUTLINED_FUNCTION_105_3();
    OUTLINED_FUNCTION_309_0();

    __asm { BRAA            X2, X16 }
  }

  v7 = v0[42];
  v8 = v0[40];
  v32 = v0[39];
  v34 = v0[41];
  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[35];
  v12 = v0[34];
  v28 = v0[36];
  v30 = v0[33];
  v13 = NSTemporaryDirectory();
  sub_2753B6D88();

  MEMORY[0x277C76100](0xD000000000000013, 0x80000002753BD8C0);

  sub_2753B63E8();
  (*(v10 + 104))(v9, *MEMORY[0x277D64F50], v28);
  sub_2753B63C8();
  sub_2753B63D8();
  sub_2753B6438();
  sub_2753B6178();

  (*(v12 + 104))(v11, *MEMORY[0x277D64F58], v30);
  (*(v8 + 16))(v34, v7, v32);
  v14 = *(MEMORY[0x277D64F60] + 4);
  v15 = swift_task_alloc();
  v0[46] = v15;
  *v15 = v0;
  v15[1] = sub_27538D4D8;
  v16 = v0[41];
  v17 = v0[35];
  OUTLINED_FUNCTION_309_0();

  return MEMORY[0x2821CC1F8](v18, v19);
}

uint64_t sub_27538D4D8()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v2[46];
  v6 = *v1;
  *(v3 + 376) = v7;
  *(v3 + 384) = v0;

  v8 = v2[45];
  v9 = v2[44];
  if (v0)
  {
    v10 = sub_27538E4DC;
  }

  else
  {
    v10 = sub_27538D610;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_27538D610()
{
  v1 = v0[48];
  v2 = v0[31];
  v3 = objc_opt_self();
  v4 = [v3 defaultManager];
  sub_2753B7238();
  if (v1)
  {
    v5 = v0[47];
    v6 = v0[43];
    (*(v0[40] + 8))(v0[42], v0[39]);

    v25 = v0[41];
    v24 = v0[42];
    v26 = v0[38];
    v27 = v0[35];
    v28 = v0[31];
    v29 = v0[32];
    v30 = v0[29];
    v31 = v0[30];
    v32 = v0[28];
    v33 = v0[25];
    v61 = v0[22];
    v63 = v0[21];
    v65 = v0[20];
    v66 = v0[17];
    v68 = v0[14];
    v70 = v0[13];
    v72 = v0[10];
    v74 = v0[7];

    OUTLINED_FUNCTION_19_0();

    return v34();
  }

  else
  {
    v7 = v0[31];
    v8 = v0[32];
    v73 = v0[27];
    v75 = v0[29];
    v71 = v0[26];
    v9 = v0[24];
    v10 = v0[25];
    v11 = v0[23];

    v0[2] = 0xD000000000000014;
    v0[3] = 0x80000002753BD8E0;
    v69 = *MEMORY[0x277CC91D8];
    v67 = *(v9 + 104);
    v67(v10);
    sub_275329E48();
    sub_2753B61E8();
    v12 = *(v9 + 8);
    v12(v10, v11);
    v13 = *(v73 + 8);
    v0[49] = v13;
    v0[50] = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v7, v71);
    v14 = [v3 defaultManager];
    sub_2753B7238();
    v58 = v0[30];
    v59 = v12;
    v15 = v0[29];
    v60 = v0[28];
    v17 = v0[26];
    v16 = v0[27];
    v18 = v0[25];
    v19 = v0[23];
    v62 = v0[22];
    v64 = v0[32];
    v76 = v0[21];

    v0[4] = 0xD000000000000029;
    v0[5] = 0x80000002753BD900;
    (v67)(v18, v69, v19);
    sub_2753B61E8();
    v59(v18, v19);
    v13(v15, v17);
    v20 = *(v16 + 16);
    v20(v60, v64, v17);
    v20(v62, v58, v17);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v17);
    sub_2753B6138();
    v21 = sub_2753B66C8();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v0[51] = sub_2753B66A8();
    sub_2753B66B8();
    v36 = 0.2;
    if (MSVDeviceOSIsInternalInstall())
    {
      v37 = [objc_opt_self() standardUserDefaults];
      v38 = sub_2753B6D78();
      [v37 doubleForKey_];
      v40 = v39;

      if (v40 > 0.0001)
      {
        if (v40 > 1.0)
        {
          v36 = 0.2;
        }

        else
        {
          v36 = v40;
        }
      }
    }

    v42 = v0[19];
    v41 = v0[20];
    v44 = v0[17];
    v43 = v0[18];
    MEMORY[0x277C75B00]();
    sub_2753B6838();
    (*(v42 + 8))(v41, v43);
    v45 = sub_2753B6858();
    v46 = sub_2753B7248();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134349056;
      *(v47 + 4) = v36;
      _os_log_impl(&dword_2752E3000, v45, v46, "[ALC] - Setting planner configuration with step duration: - %{public}f", v47, 0xCu);
      MEMORY[0x277C77190](v47, -1, -1);
    }

    v48 = v0[16];
    v49 = v0[17];
    v51 = v0[14];
    v50 = v0[15];
    v53 = v0[9];
    v52 = v0[10];
    v54 = v0[8];

    (*(v48 + 8))(v49, v50);
    *v52 = v36;
    (*(v53 + 104))(v52, *MEMORY[0x277D7F030], v54);
    sub_2753B5E68();
    v55 = v0[47];
    type metadata accessor for MusicContent.Sources.MusicKit();
    swift_allocObject();
    sub_27538C450();
    swift_allocObject();

    v56 = swift_task_alloc();
    v0[52] = v56;
    *v56 = v0;
    v56[1] = sub_27538DE6C;
    v57 = v0[47];

    return sub_27538C990();
  }
}

uint64_t sub_27538DE6C()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v2[52];
  v6 = *v1;
  *(v3 + 424) = v7;
  *(v3 + 432) = v0;

  v8 = v2[45];
  v9 = v2[44];
  if (v0)
  {
    v10 = sub_27538E344;
  }

  else
  {
    v10 = sub_27538DFA4;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

void sub_27538DFA4()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[43];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[7];

  sub_27538C4E4();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v7 + 16))(v5, v4, v6);

  sub_27539D9E8(v5, v8);
  v10 = v0[53];
  v11 = v0[50];
  v12 = v0[49];
  v13 = v0[42];
  v14 = v0[40];
  v41 = v0[32];
  v42 = v0[39];
  v39 = v0[51];
  v40 = v0[30];
  v15 = v0[26];
  v37 = v0[47];
  v38 = v0[14];
  v16 = v0[12];
  v36 = v0[11];
  if (v2)
  {

    (*(v16 + 8))(v38, v36);
    v12(v40, v15);
    v12(v41, v15);
    (*(v14 + 8))(v13, v42);
    OUTLINED_FUNCTION_5_7();
    v17 = v0[29];
    v18 = v0[30];
    OUTLINED_FUNCTION_12_6();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_309_0();

    __asm { BRAA            X1, X16 }
  }

  v35 = v0[42];
  v21 = v0[6];
  v22 = v0[7];
  v23 = *(v21 + 48);
  v24 = *(v21 + 52);
  swift_allocObject();
  qword_2809C3050 = sub_27538CD6C(v9, v22);

  (*(v16 + 8))(v38, v36);
  v12(v40, v15);
  v12(v41, v15);
  (*(v14 + 8))(v35, v42);
  v26 = v0[41];
  v25 = v0[42];
  v27 = v0[38];
  v28 = v0[35];
  v30 = v0[31];
  v29 = v0[32];
  v32 = v0[29];
  v31 = v0[30];
  OUTLINED_FUNCTION_12_6();

  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_309_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_27538E344()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  v4 = v0[47];
  v5 = v0[43];
  v6 = v0[40];
  v15 = v0[39];
  v16 = v0[42];
  v13 = v0[30];
  v14 = v0[32];
  v7 = v0[26];
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];

  (*(v9 + 8))(v8, v10);
  v3(v13, v7);
  v3(v14, v7);
  (*(v6 + 8))(v16, v15);
  v17 = v0[54];
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_6();

  OUTLINED_FUNCTION_19_0();

  return v11();
}

uint64_t sub_27538E4DC()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[39];
  v4 = v0[40];

  (*(v4 + 8))(v2, v3);
  v7 = v0[48];
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_6();

  OUTLINED_FUNCTION_19_0();

  return v5();
}

void sub_27538E610()
{
  if (!qword_2809C1480)
  {
    sub_2753B6878();
    v0 = sub_2753B6848();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1480);
    }
  }
}

uint64_t SonicNES.behavior.getter()
{
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t SonicNES.behavior.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t SonicNES.smartTransitionRenderer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18_SonicKit_MusicKit8SonicNES_smartTransitionRenderer;
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_10_7();
  return sub_27539177C(v1 + v3, a1, v4);
}

uint64_t SonicNES.smartTransitionRenderer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18_SonicKit_MusicKit8SonicNES_smartTransitionRenderer;
  swift_beginAccess();
  sub_27539160C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SonicNES.load(identifiers:in:)()
{
  OUTLINED_FUNCTION_14_0();
  sub_2753B6288();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  sub_275392218(v0, v1);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_118_0();

  return MEMORY[0x2822009F8](sub_27538E8F0, v2, v3);
}

uint64_t SonicNES.deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_1_10();
  sub_275392098(v0 + v2, v3);
  return v0;
}

uint64_t SonicNES.__deallocating_deinit()
{
  v1 = v0[2];

  OUTLINED_FUNCTION_1_10();
  sub_275392098(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t SonicNES.loadContentID(for:in:)()
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 104) = v0;
  v3 = *(v2 + 16);
  *(v1 + 112) = *v2;
  *(v1 + 128) = v3;
  *(v1 + 50) = *(v2 + 32);
  sub_2753B6288();
  *(v1 + 144) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  sub_275392218(v4, v5);
  v7 = OUTLINED_FUNCTION_22_3();
  *(v1 + 152) = v7;
  *(v1 + 160) = v6;

  return MEMORY[0x2822009F8](sub_27538EAB4, v7, v6);
}

uint64_t sub_27538EAB4()
{
  OUTLINED_FUNCTION_66_0();
  v1 = *(v0 + 50);
  v2 = *(v0 + 104);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v0 + 168) = v3;
  *(v0 + 96) = v3;
  *(v0 + 32) = v9;
  *(v0 + 16) = v10;
  *(v0 + 48) = v1;
  v4 = *(MEMORY[0x277D651F8] + 4);

  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  sub_27538C4E4();
  OUTLINED_FUNCTION_8_7();
  sub_275392218(v6, v7);
  *v5 = v0;
  v5[1] = sub_27538EBE4;
  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821CC570]();
}

uint64_t sub_27538EBE4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[23] = v0;

  v9 = v3[21];

  v10 = v3[19];
  v11 = v3[20];
  if (v0)
  {
    v12 = sub_27538EEE4;
  }

  else
  {
    v12 = sub_27538ECF0;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_27538ECF0()
{
  v1 = *(v0 + 144);

  if (*(v0 + 88))
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v5 = *(v0 + 50);
    *(v0 + 49) = 3;
    v9 = *(v0 + 128);
    v10 = *(v0 + 112);
    sub_2753B7398();

    v6 = MusicContent.RawIdentifier.description.getter();
    MEMORY[0x277C76100](v6);

    sub_2753920F0(0, &qword_2809C3058, sub_275391670, &type metadata for SonicNESError, MEMORY[0x277D64F08]);
    sub_2753916C4(&qword_2809C3068, &qword_2809C3058, sub_275391670, &type metadata for SonicNESError);
    swift_allocError();
    sub_275391670();
    v7 = OUTLINED_FUNCTION_27();
    MEMORY[0x277C755D0](v7);
    swift_willThrow();
    OUTLINED_FUNCTION_19_0();

    return v8();
  }
}

uint64_t sub_27538EEE4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 144);

  v2 = *(v0 + 184);
  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t SonicNES.loadTransitionData(outgoingTrackInfo:incomingTrackInfo:in:previousTransitionPlaybackEndState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v10 = v8;
  *(v9 + 72) = a1;
  *(v9 + 80) = v10;
  v15 = type metadata accessor for SmartTransitionRequestSongData();
  *(v9 + 88) = v15;
  OUTLINED_FUNCTION_75(v15);
  v17 = *(v16 + 64) + 15;
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();
  v18 = type metadata accessor for SmartTransitionRenderer();
  OUTLINED_FUNCTION_75(v18);
  v20 = *(v19 + 64);
  *(v9 + 112) = OUTLINED_FUNCTION_138_0();
  v21 = sub_2753B6878();
  *(v9 + 120) = v21;
  OUTLINED_FUNCTION_17_1(v21);
  *(v9 + 128) = v22;
  v24 = *(v23 + 64);
  *(v9 + 136) = OUTLINED_FUNCTION_138_0();
  v25 = type metadata accessor for SongTransitionInfo();
  *(v9 + 144) = v25;
  OUTLINED_FUNCTION_75(v25);
  v27 = *(v26 + 64) + 15;
  v28 = swift_task_alloc();
  *(v9 + 152) = v28;
  v29 = swift_task_alloc();
  *(v9 + 160) = v29;
  *(v9 + 168) = swift_task_alloc();
  v30 = swift_task_alloc();
  *(v9 + 46) = *a4;
  *(v9 + 47) = *(a4 + 1);
  *(v9 + 312) = *(a4 + 2);
  v31 = *(a4 + 8);
  *(v9 + 176) = v30;
  *(v9 + 184) = v31;
  *(v9 + 313) = *(a4 + 16);
  v32 = *(a4 + 24);
  *(v9 + 314) = *(a4 + 32);
  v33 = *(a4 + 40);
  *(v9 + 192) = v32;
  *(v9 + 200) = v33;
  *(v9 + 315) = *(a4 + 48);
  *(v9 + 316) = *a7;
  *(v9 + 317) = *(a7 + 1);
  *(v9 + 318) = *(a7 + 2);
  v34 = *(a7 + 8);
  *(v9 + 319) = *(a7 + 16);
  v35 = *(a7 + 24);
  *(v9 + 208) = v34;
  *(v9 + 216) = v35;
  *(v9 + 320) = *(a7 + 32);
  *(v9 + 224) = *(a7 + 40);
  *(v9 + 321) = *(a7 + 48);
  *(v9 + 29) = *(a8 + 13);
  *(v9 + 16) = *a8;
  *(v9 + 232) = *v43;
  *(v9 + 322) = *(v43 + 16);
  *(v9 + 248) = sub_2753B6288();
  *(v9 + 256) = sub_2753B6278();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v9 + 264) = v36;
  *v36 = v37;
  v36[1] = sub_27538F1E8;

  return sub_27538FAC8(v29, v28, a2, a3, a5, a6, (v9 + 16));
}

uint64_t sub_27538F1E8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 264);
  *v4 = *v1;
  v3[34] = v7;
  v3[35] = v8;
  v3[36] = v9;
  v3[37] = v10;
  v3[38] = v0;

  if (v0)
  {
    v13 = v3 + 31;
    v11 = v3[31];
    v12 = v13[1];
    OUTLINED_FUNCTION_0_9();
    sub_275392218(v14, v15);
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_118_0();
    v18 = sub_27538FA18;
  }

  else
  {
    v21 = v3 + 31;
    v19 = v3[31];
    v20 = v21[1];
    OUTLINED_FUNCTION_0_9();
    sub_275392218(v22, v23);
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_118_0();
    v18 = sub_27538F354;
  }

  return MEMORY[0x2822009F8](v18, v16, v17);
}

uint64_t sub_27538F354()
{
  v82 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  sub_275392260(v4, v3, type metadata accessor for SongTransitionInfo);
  sub_275392260(v5, v2, type metadata accessor for SongTransitionInfo);
  v7 = *(v6 + 36);
  if (*(v3 + v7) == 1)
  {
    v8 = *(*(v0 + 168) + v7);
  }

  else
  {
    v8 = 0;
  }

  if (MSVDeviceOSIsInternalInstall() && (v9 = [objc_opt_self() standardUserDefaults], v10 = sub_2753B6D78(), v11 = objc_msgSend(v9, sel_BOOLForKey_, v10), v10, v9, v11))
  {
    v12 = *(v0 + 136);
    sub_2753B6868();
    v13 = sub_2753B6858();
    v14 = sub_2753B7248();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2752E3000, v13, v14, "[ALC] - SupportsSmartTransitions overridden", v15, 2u);
      MEMORY[0x277C77190](v15, -1, -1);
    }

    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);

    (*(v17 + 8))(v16, v18);
  }

  else if ((v8 & 1) == 0)
  {
    v41 = *(v0 + 296);
    v42 = *(v0 + 280);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);

    *(v0 + 45) = 2;
    sub_2753920F0(0, &qword_2809C3070, sub_275391728, &type metadata for SmartTransitionRendererError, MEMORY[0x277D64F08]);
    sub_2753916C4(&qword_2809C3080, &qword_2809C3070, sub_275391728, &type metadata for SmartTransitionRendererError);
    swift_allocError();
    v45 = sub_275391728();
    MEMORY[0x277C755D0](v0 + 45, 0xD00000000000003ELL, 0x80000002753BD9C0, MEMORY[0x277D84F90], &type metadata for SmartTransitionRendererError, v45);
    swift_willThrow();
    sub_275392098(v44, type metadata accessor for SongTransitionInfo);
    v40 = v43;
    goto LABEL_13;
  }

  v79 = *(v0 + 304);
  v70 = *(v0 + 288);
  v71 = *(v0 + 296);
  v62 = *(v0 + 280);
  v60 = *(v0 + 272);
  v78 = *(v0 + 322);
  v76 = *(v0 + 232);
  v77 = *(v0 + 240);
  v75 = *(v0 + 321);
  v73 = *(v0 + 320);
  v74 = *(v0 + 224);
  v72 = *(v0 + 216);
  v68 = *(v0 + 318);
  v69 = *(v0 + 319);
  v66 = *(v0 + 317);
  v63 = *(v0 + 315);
  v64 = *(v0 + 316);
  v67 = *(v0 + 208);
  v61 = *(v0 + 200);
  v59 = *(v0 + 314);
  v56 = *(v0 + 313);
  v55 = *(v0 + 184);
  v54 = *(v0 + 312);
  v19 = *(v0 + 47);
  v20 = *(v0 + 46);
  v21 = *(v0 + 176);
  v57 = *(v0 + 192);
  v58 = *(v0 + 168);
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v24 = OBJC_IVAR____TtC18_SonicKit_MusicKit8SonicNES_smartTransitionRenderer;
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v27 = *(v0 + 80);
  v65 = *(v0 + 72);
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_10_7();
  sub_27539177C(v27 + v24, v23, v28);
  sub_27539177C(v21, v22 + v25[5], type metadata accessor for SongTransitionInfo);
  *v22 = v60;
  v22[1] = v62;
  *(v22 + v25[6]) = v20;
  *(v22 + v25[7]) = v19;
  *(v22 + v25[8]) = v54;
  v29 = v22 + v25[9];
  *v29 = v55;
  v29[8] = v56;
  v30 = v22 + v25[10];
  *v30 = v57;
  v30[8] = v59;
  v31 = v22 + v25[11];
  *v31 = v61;
  v31[8] = v63;
  sub_27539177C(v58, v26 + v25[5], type metadata accessor for SongTransitionInfo);
  *v26 = v70;
  v26[1] = v71;
  *(v26 + v25[6]) = v64;
  *(v26 + v25[7]) = v66;
  *(v26 + v25[8]) = v68;
  v32 = v26 + v25[9];
  *v32 = v67;
  v32[8] = v69;
  v33 = v26 + v25[10];
  *v33 = v72;
  v33[8] = v73;
  v34 = v26 + v25[11];
  *v34 = v74;
  v34[8] = v75;
  v80[0] = v76;
  v80[1] = v77;
  v81 = v78;
  sub_27539DB88(v22, v26, v80, v65);
  v36 = *(v0 + 168);
  v35 = *(v0 + 176);
  if (v79)
  {
    v38 = *(v0 + 104);
    v37 = *(v0 + 112);
    sub_275392098(*(v0 + 96), type metadata accessor for SmartTransitionRequestSongData);
    sub_275392098(v38, type metadata accessor for SmartTransitionRequestSongData);
    OUTLINED_FUNCTION_1_10();
    sub_275392098(v37, v39);
    sub_275392098(v36, type metadata accessor for SongTransitionInfo);
    v40 = v35;
LABEL_13:
    sub_275392098(v40, type metadata accessor for SongTransitionInfo);
    OUTLINED_FUNCTION_23_2();

    OUTLINED_FUNCTION_19_0();
    goto LABEL_15;
  }

  v48 = *(v0 + 152);
  v47 = *(v0 + 160);
  v49 = *(v0 + 136);
  v50 = *(v0 + 104);
  v51 = *(v0 + 112);
  sub_275392098(*(v0 + 96), type metadata accessor for SmartTransitionRequestSongData);
  sub_275392098(v50, type metadata accessor for SmartTransitionRequestSongData);
  OUTLINED_FUNCTION_1_10();
  sub_275392098(v51, v52);
  sub_275392098(v36, type metadata accessor for SongTransitionInfo);
  sub_275392098(v35, type metadata accessor for SongTransitionInfo);

  OUTLINED_FUNCTION_19_0();
LABEL_15:

  return v46();
}

uint64_t sub_27538FA18()
{
  OUTLINED_FUNCTION_66_0();
  v1 = *(v0 + 256);

  v2 = *(v0 + 304);
  OUTLINED_FUNCTION_23_2();

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_27538FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *(v8 + 88) = a6;
  *(v8 + 96) = v7;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  *(v8 + 48) = a1;
  sub_275391C04();
  *(v8 + 104) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a7;
  *(v8 + 112) = v12;
  *(v8 + 120) = v13;
  *(v8 + 128) = *(a7 + 1);
  *(v8 + 200) = *(a7 + 6);
  *(v8 + 204) = *(a7 + 28);
  sub_2753B6288();
  *(v8 + 144) = sub_2753B6278();
  sub_275392218(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v15 = sub_2753B70C8();
  *(v8 + 152) = v15;
  *(v8 + 160) = v14;

  return MEMORY[0x2822009F8](sub_27538FBEC, v15, v14);
}

uint64_t sub_27538FBEC()
{
  sub_2753B7178();
  v1 = *(v0 + 204);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v19 = *(v0 + 80);
  v20 = *(v0 + 120);
  v17 = v4;
  LODWORD(v4) = *(v0 + 200);
  v18 = vmovl_u8(*&v4).u64[0];
  OUTLINED_FUNCTION_16_4();
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 168) = v5;
  *(v0 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *(v6 + 16) = v17;
  *(v6 + 32) = v19;
  *(v6 + 48) = v20;
  *(v6 + 64) = v2;
  *(v6 + 72) = vuzp1_s8((v18 & 0xFF01FF01FF01FF01), (v18 & 0xFF01FF01FF01FF01)).u32[0];
  *(v6 + 76) = v1 & 1;
  v7 = *(MEMORY[0x277D65200] + 4);

  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  sub_27538C4E4();
  v10 = v9;
  OUTLINED_FUNCTION_8_7();
  v13 = sub_275392218(v11, v12);
  *v8 = v0;
  v8[1] = sub_27538FDC8;
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);

  return MEMORY[0x2821CC578](v14, sub_275391D04, v6, v10, v15, v13);
}

uint64_t sub_27538FDC8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = v3[21];
    v10 = v3[22];

    v11 = v3[19];
    v12 = v3[20];
    v13 = sub_27538FFD4;
  }

  else
  {
    v14 = v3[21];
    v15 = v3[22];

    v11 = v3[19];
    v12 = v3[20];
    v13 = sub_27538FEE4;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_27538FEE4()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[6];
  v4 = v0[7];

  v6 = *v2;
  v7 = v2[1];
  v8 = (v2 + v3[16]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v3[20];
  sub_275392260(v2 + v3[12], v5, type metadata accessor for SongTransitionInfo);
  sub_275392260(v2 + v11, v4, type metadata accessor for SongTransitionInfo);

  v12 = v0[1];

  return v12(v6, v7, v9, v10);
}

uint64_t sub_27538FFD4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[18];

  v2 = v0[24];
  v3 = v0[14];

  OUTLINED_FUNCTION_19_0();

  return v4();
}

uint64_t sub_275390038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_275391D8C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2753C28B0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  sub_275391DDC();

  sub_2753B6BC8();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  sub_275391C04();

  sub_2753B6B78();
}

uint64_t sub_27539019C(uint64_t a1)
{
  sub_275392158(0, &qword_2809C30D8, sub_2753921BC, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2753BE420;
  sub_275392004();
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_275392218(&qword_2809C30E8, sub_275392004);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_275391F70();
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  return v2;
}

uint64_t sub_2753902A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = *(*(type metadata accessor for SongTransitionInfo() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  sub_275391F70();
  v6[18] = v8;
  v9 = *(v8 - 8);
  v6[19] = v9;
  v10 = *(v9 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  sub_275392004();
  v6[22] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  sub_2753B6288();
  v6[25] = sub_2753B6278();
  sub_275392218(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v14 = sub_2753B70C8();
  v6[26] = v14;
  v6[27] = v13;

  return MEMORY[0x2822009F8](sub_275390454, v14, v13);
}

uint64_t sub_275390454()
{
  OUTLINED_FUNCTION_66_0();
  sub_2753B7178();
  v1 = v0[13];
  v0[2] = v0[12];
  v0[3] = v1;
  v2 = *(MEMORY[0x277D651E0] + 4);
  v3 = swift_task_alloc();
  v0[28] = v3;
  sub_275391DDC();
  v0[29] = v4;
  *v3 = v0;
  v3[1] = sub_2753905A0;
  v5 = v0[21];
  v6 = v0[11];
  OUTLINED_FUNCTION_32_4();

  return MEMORY[0x2821CC540](v7, v8, v9);
}

uint64_t sub_2753905A0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[30] = v0;

  v9 = v3[26];
  v10 = v3[27];
  if (v0)
  {
    v11 = sub_275390E80;
  }

  else
  {
    v11 = sub_27539069C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_27539069C()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = *(v4 + 32);
  v0[31] = v7;
  v0[32] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v1, v2, v3);
  v0[4] = v6;
  v0[5] = v5;
  v8 = *(MEMORY[0x277D651E0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[33] = v9;
  *v9 = v10;
  v9[1] = sub_275390778;
  v11 = v0[29];
  v12 = v0[20];
  v13 = v0[11];

  return MEMORY[0x2821CC540](v12, v0 + 4, v11);
}

uint64_t sub_275390778()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[34] = v0;

  v9 = v3[26];
  v10 = v3[27];
  if (v0)
  {
    v11 = sub_275390F18;
  }

  else
  {
    v11 = sub_275390874;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275390874()
{
  OUTLINED_FUNCTION_66_0();
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  (*(v0 + 248))(*(v0 + 184), *(v0 + 160), *(v0 + 144));
  sub_2753B7178();
  if (v1)
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = *(v0 + 184);

    sub_275392098(v5, sub_275392004);
    sub_275392098(v4, sub_275392004);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_32_4();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v0 + 192);
  *(v0 + 48) = sub_27538C618();
  *(v0 + 56) = v15;
  *(v0 + 280) = v15;
  v16 = *(MEMORY[0x277D650F8] + 4);
  v17 = swift_task_alloc();
  *(v0 + 288) = v17;
  *(v0 + 296) = sub_275392218(&qword_2809C30D0, sub_275392004);
  *v17 = v0;
  v17[1] = sub_275390A30;
  v18 = *(v0 + 192);
  v19 = *(v0 + 176);
  v20 = *(v0 + 136);
  OUTLINED_FUNCTION_32_4();

  return MEMORY[0x2821CC420](v21, v22, v23);
}

uint64_t sub_275390A30()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[38] = v0;

  if (v0)
  {
    v9 = v3[35];

    v10 = v3[26];
    v11 = v3[27];
    v12 = sub_275390FCC;
  }

  else
  {
    v10 = v3[26];
    v11 = v3[27];
    v12 = sub_275390B34;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_275390B34()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[23];
  v0[8] = sub_27538C618();
  v0[9] = v2;
  v0[39] = v2;
  v3 = *(MEMORY[0x277D650F8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[40] = v4;
  *v4 = v5;
  v4[1] = sub_275390BDC;
  v6 = v0[37];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[16];

  return MEMORY[0x2821CC420](v9, v7, v6);
}

uint64_t sub_275390BDC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[41] = v0;

  if (v0)
  {
    v9 = v3[39];
    v10 = v3[35];
    sub_275392098(v3[17], type metadata accessor for SongTransitionInfo);

    v11 = v3[26];
    v12 = v3[27];
    v13 = sub_275391084;
  }

  else
  {
    v14 = v3[6];
    v3[42] = v3[8];
    v3[43] = v14;
    v11 = v3[26];
    v12 = v3[27];
    v13 = sub_275390D20;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_275390D20()
{
  v1 = v0[43];
  v15 = v0[39];
  v16 = v0[42];
  v2 = v0[35];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v17 = v0[21];
  v18 = v0[20];
  v6 = v0[17];
  v14 = v0[16];
  v7 = v0[10];

  sub_275392098(v5, sub_275392004);
  sub_275392098(v4, sub_275392004);
  sub_275391C04();
  v9 = v8[12];
  v10 = (v7 + v8[16]);
  v11 = v8[20];
  *v7 = v1;
  v7[1] = v2;
  sub_275392260(v6, v7 + v9, type metadata accessor for SongTransitionInfo);
  *v10 = v16;
  v10[1] = v15;
  sub_275392260(v14, v7 + v11, type metadata accessor for SongTransitionInfo);

  OUTLINED_FUNCTION_19_0();

  return v12();
}

uint64_t sub_275390E80()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 200);

  v2 = *(v0 + 240);
  OUTLINED_FUNCTION_18_4();

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_275390F18()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v0[24];
  v1 = v0[25];

  sub_275392098(v2, sub_275392004);
  v3 = v0[34];
  OUTLINED_FUNCTION_18_4();

  OUTLINED_FUNCTION_19_0();

  return v4();
}

uint64_t sub_275390FCC()
{
  OUTLINED_FUNCTION_68_0();
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];

  OUTLINED_FUNCTION_9_6();
  sub_275392098(v4, v5);
  sub_275392098(v3, v0);
  v6 = v1[38];
  OUTLINED_FUNCTION_18_4();

  OUTLINED_FUNCTION_19_0();

  return v7();
}

uint64_t sub_275391084()
{
  OUTLINED_FUNCTION_68_0();
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];

  OUTLINED_FUNCTION_9_6();
  sub_275392098(v4, v5);
  sub_275392098(v3, v0);
  v6 = v1[41];
  OUTLINED_FUNCTION_18_4();

  OUTLINED_FUNCTION_19_0();

  return v7();
}

uint64_t SonicNES.loadTransitionInfoFor(outgoingTrackID:incomingTrackID:in:)()
{
  OUTLINED_FUNCTION_14_0();
  sub_2753B6288();
  *(v0 + 16) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_0_9();
  sub_275392218(v1, v2);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_118_0();

  return MEMORY[0x2822009F8](sub_2753911D8, v3, v4);
}

uint64_t sub_2753911D8()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_105_3();
  v3 = MEMORY[0x277D84F90];

  return v2(v3);
}

uint64_t MusicContent.ContentType.StructureRole.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

uint64_t SmartPlayerItemInfo.description.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 3);
  v6 = v0[32];
  v7 = *(v0 + 5);
  v8 = v0[48];
  if (v0[16])
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v11 = *(v0 + 1);
    OUTLINED_FUNCTION_25_5();
    sub_2753B7198();
    v10 = v26;
    v9 = v27;
  }

  v25 = v10;
  if (v6)
  {
    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    OUTLINED_FUNCTION_25_5();
    sub_2753B7198();
    v13 = v26;
    v12 = v27;
  }

  v24 = v13;
  v14 = 0xE300000000000000;
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_5();
    sub_2753B7198();
    v1 = v26;
    v14 = v27;
  }

  v23 = v1;
  if (v4)
  {
    v15 = 0xE300000000000000;
  }

  else
  {
    v15 = 0xE200000000000000;
  }

  if (v4)
  {
    v16 = 7562617;
  }

  else
  {
    v16 = 28526;
  }

  if (v3)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  if (v3)
  {
    v18 = 7562617;
  }

  else
  {
    v18 = 28526;
  }

  v19 = v2 == 0;
  if (v2)
  {
    v20 = 0xE300000000000000;
  }

  else
  {
    v20 = 0xE200000000000000;
  }

  if (v19)
  {
    v21 = 28526;
  }

  else
  {
    v21 = 7562617;
  }

  OUTLINED_FUNCTION_25_5();
  sub_2753B7398();
  MEMORY[0x277C76100](0x6C61697461707328, 0xEE00203A64657A69);
  MEMORY[0x277C76100](v21, v20);

  OUTLINED_FUNCTION_27_4();
  MEMORY[0x277C76100](0xD000000000000015);
  MEMORY[0x277C76100](v18, v17);

  OUTLINED_FUNCTION_27_4();
  MEMORY[0x277C76100]();
  MEMORY[0x277C76100](v16, v15);

  MEMORY[0x277C76100](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  MEMORY[0x277C76100](v25, v9);

  OUTLINED_FUNCTION_27_4();
  MEMORY[0x277C76100](0xD000000000000015);
  MEMORY[0x277C76100](v24, v12);

  OUTLINED_FUNCTION_27_4();
  MEMORY[0x277C76100]();
  MEMORY[0x277C76100](v23, v14);

  MEMORY[0x277C76100](41, 0xE100000000000000);
  return v26;
}

uint64_t sub_27539160C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartTransitionRenderer();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_275391670()
{
  result = qword_2809C3060;
  if (!qword_2809C3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3060);
  }

  return result;
}

uint64_t sub_2753916C4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2753920F0(255, a2, a3, a4, MEMORY[0x277D64F08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275391728()
{
  result = qword_2809C3078;
  if (!qword_2809C3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3078);
  }

  return result;
}

uint64_t sub_27539177C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

unint64_t sub_2753917DC()
{
  result = qword_2809C3088;
  if (!qword_2809C3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3088);
  }

  return result;
}

uint64_t type metadata accessor for SonicNES()
{
  result = qword_2809C3090;
  if (!qword_2809C3090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275391884()
{
  result = sub_2753B5F98();
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

uint64_t sub_275391954(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 7 && *(a1 + 33))
    {
      v2 = *a1 + 6;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 1) & 6 | (*(a1 + 32) >> 4) & 1) ^ 7;
      if (v2 >= 6)
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

uint64_t sub_2753919A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 7;
    *(result + 8) = 0;
    if (a3 >= 7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * ((((-a2 >> 1) & 3) - 4 * a2) & 7);
    }
  }

  return result;
}

_BYTE *_s13StructureRoleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275391B00);
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_275391B54(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[49])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275391BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_275391C04()
{
  if (!qword_2809C30A0)
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for SongTransitionInfo();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2809C30A0);
    }
  }
}

uint64_t sub_275391D04(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = 256;
  if (!*(v1 + 73))
  {
    v5 = 0;
  }

  v6 = v5 | *(v1 + 72);
  *(v1 + 74);
  *(v1 + 75);
  *(v1 + 76);
  return sub_275390038(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

void sub_275391D8C()
{
  if (!qword_2809C30A8)
  {
    v0 = sub_2753B76C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C30A8);
    }
  }
}

void sub_275391DDC()
{
  if (!qword_2809C30B0)
  {
    sub_27538C450();
    sub_275392218(&qword_2809C30B8, sub_27538C450);
    v0 = sub_2753B6BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C30B0);
    }
  }
}

uint64_t sub_275391E70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275391EB0()
{
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v8 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_2752FD514;

  return sub_2753902A8(v5, v3, v6, v7, v9, v8);
}

void sub_275391F70()
{
  if (!qword_2809C30C0)
  {
    sub_27538C450();
    sub_275392218(&qword_2809C30B8, sub_27538C450);
    v0 = sub_2753B69B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C30C0);
    }
  }
}

void sub_275392004()
{
  if (!qword_2809C30C8)
  {
    sub_27538C450();
    sub_275392218(&qword_2809C3040, sub_27538C450);
    v0 = type metadata accessor for FacetCollection<>.TransitionInfo();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C30C8);
    }
  }
}

uint64_t sub_275392098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_2753920F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_275392158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2753921BC()
{
  result = qword_2809C30E0;
  if (!qword_2809C30E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809C30E0);
  }

  return result;
}

uint64_t sub_275392218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275392260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_7()
{
  v2 = v0[41];
  result = v0[42];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_6()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v8 = v0[22];
  v9 = v0[21];
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[13];
  v6 = v0[10];
  v14 = v0[7];
}

uint64_t OUTLINED_FUNCTION_12_6()
{
  v2 = v0[28];
  v3 = v0[25];
  v6 = v0[22];
  v7 = v0[21];
  v8 = v0[20];
  v4 = v0[17];
  v9 = v0[14];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[7];
}

uint64_t OUTLINED_FUNCTION_18_4()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return sub_2753B70C8();
}

uint64_t OUTLINED_FUNCTION_23_2()
{
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
}

_SonicKit_MusicKit::SonicNESError_optional __swiftcall SonicNESError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2753924AC()
{
  result = qword_2809C30F0;
  if (!qword_2809C30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C30F0);
  }

  return result;
}

uint64_t sub_275392508@<X0>(uint64_t *a1@<X8>)
{
  result = SonicNESError.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_275392534()
{
  result = qword_2809C30F8;
  if (!qword_2809C30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C30F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SonicNESError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x275392654);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_SonicKit_MusicKit::SubscriptionLeaseError_optional __swiftcall SubscriptionLeaseError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2753926CC@<X0>(uint64_t *a1@<X8>)
{
  result = SubscriptionLeaseError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static SubscriptionDRMSession.session(for:in:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 80) = v4;
  v5 = type metadata accessor for AssetRecipe(0);
  OUTLINED_FUNCTION_75(v5);
  v7 = *(v6 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 16) = *v3;
  *(v1 + 29) = *(v3 + 13);
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2753927B0()
{
  v7 = v0;
  v1 = v0[13];
  v2 = v0[11];
  sub_275396C74(v0[10], v1, type metadata accessor for AssetRecipe);
  v6[0] = *v2;
  *(v6 + 13) = *(v2 + 13);
  sub_2753928BC((v0 + 2), (v0 + 6));
  v3 = sub_275392870(v1, v6);

  v4 = v0[1];

  return v4(v3);
}

uint64_t *sub_275392918(uint64_t a1, _OWORD *a2)
{
  v30 = a1;
  v5 = *v2;
  v6 = type metadata accessor for AssetRecipe(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_275396C20(0, &qword_2809C32C0, MEMORY[0x277D85720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25[-v11];
  v29 = &v25[-v11];
  *v32 = *a2;
  v13 = *v32;
  *&v32[13] = *(a2 + 13);
  v14 = *&v32[13];
  v2[6] = 0;
  v2[7] = 0;
  *(v2 + 1) = v13;
  *(v2 + 29) = v14;
  v15 = sub_2753B7148();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  sub_275396C74(a1, &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AssetRecipe);
  v27 = *v32;
  v16 = *&v32[16];
  v17 = v32[24];
  v18 = v32[25];
  v26 = v32[26];
  v19 = v32[27];
  LOBYTE(v12) = v32[28];
  v20 = (*(v7 + 80) + 77) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = *(v5 + 80);
  *(v21 + 40) = *(v5 + 88);
  *(v21 + 48) = v27;
  *(v21 + 64) = v16;
  *(v21 + 72) = v17;
  *(v21 + 73) = v18;
  *(v21 + 74) = v26;
  *(v21 + 75) = v19;
  *(v21 + 76) = v12;
  sub_275396D2C(v28, v21 + v20, type metadata accessor for AssetRecipe);
  sub_2753928BC(v32, v31);
  type metadata accessor for SubscriptionDRMSession.Lease();
  v22 = sub_275396E44(0, 0, v29, &unk_2753CC8C8, v21);
  sub_275396CD4(v30, type metadata accessor for AssetRecipe);
  v23 = v2[6];
  v2[6] = v22;

  return v2;
}

uint64_t sub_275392BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x2822009F8](sub_275392C04, 0, 0);
}

uint64_t sub_275392C04()
{
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 48);
  v1 = MusicContent.Environment.storeRequestContext.getter();
  *(v0 + 80) = v1;
  v2 = v1;
  v3 = *(*(v0 + 72) + 16);
  OUTLINED_FUNCTION_15_6();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_275392D80;
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);

  return v11(v2);
}

uint64_t sub_275392D80()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  v2[12] = v6;
  v2[13] = v7;
  v2[14] = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_275392E84()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[14];
  sub_2753B7178();
  if (v1)
  {
    v2 = v0[12];
    v3 = v0[10];
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_19_0();

    return v4();
  }

  else
  {
    v6 = v0[12];
    ObjectType = swift_getObjectType();
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_275392F78;
    v10 = v0[12];
    v9 = v0[13];

    return sub_2753931F4(ObjectType, v9);
  }
}

uint64_t sub_275392F78()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_275393070()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0[16];
  sub_2753B7178();
  v2 = v0[10];
  if (v1)
  {
    v3 = v0[12];
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[7];
    v8 = v0[2];
    type metadata accessor for SubscriptionDRMSession();
    v11 = *(v0 + 6);
    v9 = sub_275393738(v7, v2);

    *v8 = v11;
    *(v8 + 16) = v9;
    OUTLINED_FUNCTION_35_0();
  }

  return v4();
}

uint64_t sub_275393134()
{
  OUTLINED_FUNCTION_14_0();

  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_19_0();

  return v2();
}

uint64_t sub_275393190()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[12];
  v2 = v0[10];
  swift_unknownObjectRelease();

  v3 = v0[16];
  OUTLINED_FUNCTION_19_0();

  return v4();
}

uint64_t sub_2753931F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_275393218, 0, 0);
}

uint64_t sub_275393218()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v3 + 8);
  *(v0 + 40) = v4;
  *(v0 + 48) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x42AF000000000000;
  v5 = v4(v2);
  *(v0 + 56) = v5;
  if ([v5 shouldPlaybackRequireOnlineKeys] && (objc_msgSend(v5, sel_hasOnlinePlaybackKeys) & 1) != 0 || (objc_msgSend(v5, sel_shouldPlaybackRequireOnlineKeys) & 1) == 0 && (objc_msgSend(v5, sel_hasOfflinePlaybackKeys) & 1) != 0)
  {

    OUTLINED_FUNCTION_35_0();
LABEL_9:

    return v6();
  }

  if (([v5 hasPendingLeaseAcquisition] & 1) == 0 && objc_msgSend(v5, sel_leaseState))
  {
    *(v0 + 80) = 1;
    sub_275396760();
    OUTLINED_FUNCTION_8_8();
    sub_275396810(v7, v8);
    OUTLINED_FUNCTION_19_5();
    v9 = sub_2753967BC();
    MEMORY[0x277C755D0](v0 + 80, 0xD00000000000002BLL, 0x80000002753BDC40, MEMORY[0x277D84F90], &type metadata for SubscriptionLeaseError, v9);
    swift_willThrow();

    OUTLINED_FUNCTION_19_0();
    goto LABEL_9;
  }

  v11 = *(*(v0 + 24) + 24);
  OUTLINED_FUNCTION_15_6();
  v19 = (v12 + *v12);
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_2753934A4;
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);

  return v19(v18, v16);
}

uint64_t sub_2753934A4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_27539359C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = (*(v0 + 40))(*(v0 + 16), *(v0 + 24));
  if ([v3 hasOnlinePlaybackKeys])
  {
    v4 = *(v0 + 56);

    OUTLINED_FUNCTION_35_0();
  }

  else
  {
    v6 = *(v0 + 56);
    *(v0 + 81) = 2;
    sub_275396760();
    OUTLINED_FUNCTION_8_8();
    sub_275396810(v7, v8);
    OUTLINED_FUNCTION_19_5();
    v9 = sub_2753967BC();
    MEMORY[0x277C755D0](v0 + 81, 0xD000000000000021, 0x80000002753BDC70, MEMORY[0x277D84F90], &type metadata for SubscriptionLeaseError, v9);
    swift_willThrow();

    OUTLINED_FUNCTION_19_0();
  }

  return v5();
}

uint64_t sub_2753936DC()
{
  OUTLINED_FUNCTION_14_0();

  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_19_0();

  return v2();
}

id sub_275393738(uint64_t a1, void *a2)
{
  v37 = a2;
  v3 = sub_2753B61F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275396C20(0, &qword_2809C08E8, MEMORY[0x277CC9260]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for AssetRecipe.DRM(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AssetRecipe(0);
  sub_275396C74(a1 + *(v23 + 20), v18, type metadata accessor for AssetRecipe.DRM);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v26 = type metadata accessor for AssetRecipe.DRM;
    v27 = v18;
LABEL_10:
    sub_275396CD4(v27, v26);
    return 0;
  }

  sub_275396D2C(v18, v22, type metadata accessor for AssetRecipe.DRM.FairPlayStreaming);
  if ((v22[8] & 1) != 0 || (v24 = *v22) == 0)
  {
    v26 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming;
    v27 = v22;
    goto LABEL_10;
  }

  __swift_storeEnumTagSinglePayload(v14, 1, 1, v3);
  if (sub_2753B6158())
  {
    sub_275327638(v14);
    (*(v4 + 16))(v14, a1, v3);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  }

  sub_275359EB0(v14, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    sub_275327638(v12);
    v25 = [objc_allocWithZone(MEMORY[0x277D7FB28]) init];
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    sub_2753277B8(0, &qword_2809C32D0, 0x277D7FA98);
    sub_2753B61C8();
    v25 = sub_275394CB8();
    (*(v4 + 8))(v7, v3);
  }

  v29 = v25;
  sub_2753277B8(0, &qword_2809C32C8, 0x277D7FA70);
  v28 = sub_275394D2C(v37, v29, 0);
  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  [v28 setAdamID_];

  v31 = &v22[v19[5]];
  v32 = sub_2753B6198();
  [v28 setKeyServerURL_];

  v33 = &v22[v19[6]];
  v34 = sub_2753B6198();
  [v28 setKeyCertificateURL_];

  [v28 setKeyServerProtocolType_];
  [v28 setAllowFallbackToStreamingKeys_];
  [v28 setRequestOfflineKeys_];
  [v28 setIsStoreKeyServer_];
  swift_unknownObjectRelease();
  sub_275327638(v14);
  sub_275396CD4(v22, type metadata accessor for AssetRecipe.DRM.FairPlayStreaming);
  return v28;
}

void SubscriptionDRMSession.deinit()
{
  v1 = *v0;
  if (v0[6])
  {
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_21_5(v4, &qword_2809C1468);

    sub_2753B7168();

    v5 = v0[2];
    v6 = v0[4];

    v7 = v0[6];

    v8 = v0[7];
  }

  else
  {
    __break(1u);
  }
}

uint64_t SubscriptionDRMSession.__deallocating_deinit()
{
  SubscriptionDRMSession.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t SubscriptionDRMSession.add(asset:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return OUTLINED_FUNCTION_0_0(sub_275393D6C);
}

uint64_t sub_275393D6C(uint64_t a1)
{
  v2 = *(v1[6] + 48);
  v1[8] = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_3();
    v3 = v1[7];
    v4 = *(MEMORY[0x277D857C8] + 4);

    v5 = swift_task_alloc();
    v1[9] = v5;
    v6 = *(v3 + 80);
    v7 = *(v3 + 88);
    v8 = OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_21_5(v8, &qword_2809C1468);
    OUTLINED_FUNCTION_11_7();
    *v5 = v9;
    v5[1] = sub_275393E48;
    a1 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200430](a1);
}

uint64_t sub_275393E48()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *(v4 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v9 + 80) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_275393F5C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[5];
  v2 = v0[2];
  swift_unknownObjectRelease();
  v3 = v0[4];
  [v3 addAsset_];

  OUTLINED_FUNCTION_35_0();

  return v4();
}

uint64_t sub_275393FD4()
{
  OUTLINED_FUNCTION_19_0();
  v1 = *(v0 + 80);
  return v2();
}

uint64_t SubscriptionDRMSession.prepare(forRate:)(float a1)
{
  *(v2 + 40) = v1;
  *(v2 + 120) = a1;
  *(v2 + 48) = *v1;
  return OUTLINED_FUNCTION_0_0(sub_27539403C);
}

uint64_t sub_27539403C()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 120) == 0.0)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_2753945C0;
    v3 = *(v0 + 40);

    return sub_275394B8C();
  }

  else
  {
    v5 = *(*(v0 + 40) + 48);
    *(v0 + 56) = v5;
    if (v5)
    {
      v6 = *(v0 + 48);
      v7 = *(MEMORY[0x277D857C8] + 4);

      v8 = swift_task_alloc();
      *(v0 + 64) = v8;
      v9 = *(v6 + 80);
      v10 = *(v6 + 88);
      v11 = OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_21_5(v11, &qword_2809C1468);
      OUTLINED_FUNCTION_11_7();
      *v8 = v12;
      v8[1] = sub_275394190;
      v1 = OUTLINED_FUNCTION_10_8();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200430](v1);
  }
}

uint64_t sub_275394190()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *(v4 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v9 + 72) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2753942A4()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 24);
  *(v0 + 80) = *(v0 + 16);

  swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_275394354;
  v3 = OUTLINED_FUNCTION_79_0();

  return sub_2753931F4(v3, v4);
}

uint64_t sub_275394354()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_7();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_27539444C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[10];
  swift_unknownObjectRelease();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_2753944E0;
  v3 = v0[5];

  return sub_275394720();
}

uint64_t sub_2753944E0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t sub_2753945C0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t sub_2753946A0()
{
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_19_0();
  return v2();
}

uint64_t sub_2753946C4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_275394720()
{
  v1[5] = v0;
  v1[6] = *v0;
  sub_2753B6288();
  v1[7] = sub_2753B6278();
  sub_275396810(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v3 = sub_2753B70C8();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_275394810, v3, v2);
}

uint64_t sub_275394810()
{
  OUTLINED_FUNCTION_3();
  v2 = v0[5];
  if (*(v2 + 56))
  {
    v3 = v0[7];

    OUTLINED_FUNCTION_35_0();

    return v4();
  }

  else
  {
    v6 = *(v2 + 48);
    v0[10] = v6;
    if (v6)
    {
      v7 = v0[6];
      v8 = *(MEMORY[0x277D857C8] + 4);

      v9 = swift_task_alloc();
      v0[11] = v9;
      v0[12] = *(v7 + 80);
      v0[13] = *(v7 + 88);
      v10 = OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_21_5(v10, &qword_2809C1468);
      OUTLINED_FUNCTION_11_7();
      *v9 = v11;
      v9[1] = sub_275394938;
      v1 = OUTLINED_FUNCTION_10_8();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200430](v1);
  }
}

uint64_t sub_275394938()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v2[11];
  v6 = v2[10];
  *v4 = *v1;
  *(v3 + 112) = v0;

  v7 = v2[9];
  v8 = v2[8];
  if (v0)
  {
    v9 = sub_275394B30;
  }

  else
  {
    v9 = sub_275394A84;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275394A84()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  type metadata accessor for SubscriptionDRMSession.LeaseRefresher();
  v7 = sub_275394D9C(v5, v6);
  v8 = *(v4 + 56);
  *(v4 + 56) = v7;

  OUTLINED_FUNCTION_35_0();

  return v9();
}

uint64_t sub_275394B30()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_275394B8C()
{
  *(v1 + 16) = v0;
  sub_2753B6288();
  *(v1 + 24) = sub_2753B6278();
  sub_275396810(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275394C54, v3, v2);
}

uint64_t sub_275394C54()
{
  OUTLINED_FUNCTION_14_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  OUTLINED_FUNCTION_35_0();

  return v4();
}

id sub_275394CB8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2753B6D78();

  v2 = [v0 initWithPath_];

  return v2;
}

id sub_275394D2C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequestContext:a1 keyStore:a2 delegate:a3];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_275394DE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  ObjectType = swift_getObjectType();
  v5 = *(a2 + 32);
  swift_unknownObjectRetain();
  v5(ObjectType, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_275394E5C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 40);
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();
  v6 = *(v1 + 16);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_275394ED8()
{
  v0 = sub_275394E5C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_275394F08(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752FD514;

  return SubscriptionDRMSession.add(asset:)(a1);
}

uint64_t sub_275394FA0(float a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752FE5C0;

  return SubscriptionDRMSession.prepare(forRate:)(a1);
}

uint64_t sub_275395050()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  sub_2753954A4(0, &qword_2809C3100);
  *v4 = v0;
  v4[1] = sub_275395154;
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_275395154()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_275395270()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 56);

  return v2();
}

void sub_2753952CC(uint64_t a1, uint64_t a2)
{
  sub_2753965B4();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = [objc_opt_self() sharedController];
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_2753966EC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275395584;
  aBlock[3] = &block_descriptor_32;
  v11 = _Block_copy(aBlock);

  [v8 getLeaseSessionWithRequestContext:a2 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_2753954A4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_2753954F8(void *result, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_2753965B4();
    return sub_2753B70D8();
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_2753965B4();
      v4 = v3;
      return sub_2753B70E8();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_275395584(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_275395628()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[2];
  v2 = [v1 requestContext];
  v3 = [objc_allocWithZone(MEMORY[0x277D7FB60]) initWithRequestContext_];
  v0[3] = v3;

  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_275395758;
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_275395758()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_275395858()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v1();
}

uint64_t sub_2753958B0()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 48);

  return v2();
}

void sub_275395914(uint64_t a1, void *a2, uint64_t a3)
{
  sub_275396480();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + v10, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_275396518;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275395BE8;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  v13 = [a2 performPlaybackRequest:a3 completionHandler:v12];
  _Block_release(v12);
}

unint64_t sub_275395ADC()
{
  result = qword_2809C3108;
  if (!qword_2809C3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3108);
  }

  return result;
}

unint64_t sub_275395B34()
{
  result = qword_2809C3110[0];
  if (!qword_2809C3110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C3110);
  }

  return result;
}

uint64_t sub_275395B88(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    sub_275396480();
    return sub_2753B70D8();
  }

  else
  {
    sub_275396480();
    return sub_2753B70E8();
  }
}

void sub_275395BE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

id sub_275395C94()
{
  v1 = [v0 leaseStatus];

  return v1;
}

uint64_t sub_275395CCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275395D60;

  return static ICMusicSubscriptionLeaseSession.lease(with:)(a1);
}

uint64_t sub_275395D60()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_18_0();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_79_0();
  }

  return v7(v6);
}

uint64_t sub_275395E58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return ICMusicSubscriptionLeaseSession.perform()();
}

uint64_t dispatch thunk of static SubscriptionLeaseImpl.lease(with:)()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 16);
  OUTLINED_FUNCTION_15_6();
  v13 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v0 + 16) = v11;
  *v11 = v0;
  v11[1] = sub_275396030;

  return v13(v6, v4, v2);
}

uint64_t sub_275396030()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_79_0();

  return v7(v6);
}

uint64_t dispatch thunk of SubscriptionLeaseImpl.perform()()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_96();
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_15_6();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_2752FD514;
  v7 = OUTLINED_FUNCTION_79_0();

  return v9(v7);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionLeaseError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275396320);
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

uint64_t sub_275396434()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_275396480()
{
  if (!qword_2809C3298)
  {
    sub_2753954A4(255, &qword_2809C1468);
    v0 = sub_2753B70F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3298);
    }
  }
}

uint64_t sub_275396518(int a1, int a2, void *a3)
{
  sub_275396480();
  OUTLINED_FUNCTION_75(v6);
  v8 = *(v7 + 80);

  return sub_275395B88(a1, a2, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2753965B4()
{
  if (!qword_2809C32A0)
  {
    sub_2753954A4(255, &qword_2809C3100);
    sub_2753954A4(255, &qword_2809C1468);
    v0 = sub_2753B70F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C32A0);
    }
  }
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void *sub_2753966EC()
{
  OUTLINED_FUNCTION_96();
  sub_2753965B4();
  OUTLINED_FUNCTION_75(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_0();

  return sub_2753954F8(v3, v4);
}

void sub_275396760()
{
  if (!qword_2809C32A8)
  {
    sub_2753967BC();
    v0 = sub_2753B6308();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C32A8);
    }
  }
}

unint64_t sub_2753967BC()
{
  result = qword_2809C32B0;
  if (!qword_2809C32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C32B0);
  }

  return result;
}

uint64_t sub_275396810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275396858()
{
  v1 = type metadata accessor for AssetRecipe(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 77) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 6);

  v7 = *(v0 + 8);

  v8 = sub_2753B61F8();
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 8);
  v10(&v0[v3], v8);
  v11 = &v0[v3 + *(v1 + 20)];
  type metadata accessor for AssetRecipe.DRM(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      sub_2752F2350(*v11, *(v11 + 1));
      v12 = *(v11 + 4);

      break;
    case 3u:
      sub_2752F2350(*(v11 + 1), *(v11 + 2));
      sub_2752F2350(*(v11 + 3), *(v11 + 4));
      break;
    case 4u:
      v23 = v4;
      v13 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
      v10(&v11[*(v13 + 20)], v8);
      v14 = *(v13 + 24);
      v4 = v23;
      v10(&v11[v14], v8);
      break;
    default:
      break;
  }

  v15 = &v0[v3 + *(v1 + 24)];
  v16 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    v17 = *(v15 + 3);

    v18 = *(v15 + 4);

    v19 = *(v15 + 6);

    v20 = *(v15 + 8);

    v21 = *(v16 + 40);
    if (!__swift_getEnumTagSinglePayload(&v15[v21], 1, v8))
    {
      v10(&v15[v21], v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_275396A9C(uint64_t a1)
{
  v3 = v2;
  v21 = *(v1 + 32);
  v20 = *(v1 + 40);
  v4 = type metadata accessor for AssetRecipe(0);
  OUTLINED_FUNCTION_75(v4);
  v6 = (*(v5 + 80) + 77) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = 256;
  if (!*(v1 + 73))
  {
    v12 = 0;
  }

  v13 = v12 | *(v1 + 72);
  v14 = 0x10000;
  if (!*(v1 + 74))
  {
    v14 = 0;
  }

  v15 = 0x1000000;
  if (!*(v1 + 75))
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  if (*(v1 + 76))
  {
    v17 = 0x100000000;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_2752FE5C0;

  return sub_275392BD0(a1, v7, v8, v9, v10, v11, v16 | v17, v1 + v6);
}

void sub_275396C20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2753B72A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_275396C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_9(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_275396CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_275396D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_9(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t a1, unint64_t *a2)
{

  return sub_2753954A4(0, a2);
}

uint64_t sub_275396E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_27539A1D4();
  v10 = OUTLINED_FUNCTION_75(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = a4;
  v28[1] = a5;
  sub_27539AA04(a3, v14);
  v15 = sub_2753B7148();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_27539A328(v14);
  }

  else
  {
    sub_2753B7138();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_2753B70C8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_2753B6DD8();
      v23 = *(v22 + 16);
      sub_27539AAF4(v22 + 32, v28, v27);

      v24 = v27[0];
      sub_27539A328(a3);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27539A328(a3);
  if (v21 | v19)
  {
    v27[1] = 0;
    v27[2] = 0;
    v27[3] = v19;
    v27[4] = v21;
  }

  return swift_task_create();
}

_SonicKit_MusicKit::SuzeLeaseError_optional __swiftcall SuzeLeaseError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2753970A4@<X0>(uint64_t *a1@<X8>)
{
  result = SuzeLeaseError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static SuzeDRMSession.session(for:in:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 45) = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v3 + 96) = v2;
  *(v3 + 104) = v4;
  *(v3 + 112) = v5;
  *(v3 + 16) = *a2;
  *(v3 + 29) = *(a2 + 13);
  return OUTLINED_FUNCTION_0_0(sub_275397128);
}

uint64_t sub_275397128()
{
  if (qword_2809C06F0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v15 = *(v0 + 45);
  v3 = *(v0 + 96);
  *(v0 + 120) = qword_2809C32D8;
  v14 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v7 = *(v0 + 42);
  v12 = *(v0 + 44);
  v13 = *(v0 + 43);
  v8 = swift_allocObject();
  *(v0 + 128) = v8;
  *(v8 + 16) = *(v3 + 80);
  *(v8 + 24) = *(v3 + 88);
  *(v8 + 32) = v15;
  *(v8 + 40) = v2;
  *(v8 + 48) = v1;
  *(v8 + 56) = v14;
  *(v8 + 72) = v4;
  *(v8 + 80) = v5;
  *(v8 + 81) = v6;
  *(v8 + 82) = v7;
  *(v8 + 83) = v13;
  *(v8 + 84) = v12;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  swift_bridgeObjectRetain_n();

  sub_2753928BC(v0 + 16, v0 + 48);
  v9 = *(MEMORY[0x277D64FE8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_2753972F8;

  return MEMORY[0x2821CC360](v0 + 80, sub_27539A148, v8);
}

uint64_t sub_2753972F8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[14];
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v12 + 144) = v11;
  *(v12 + 152) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_275397454()
{
  result = v0[18];
  if (result)
  {
    OUTLINED_FUNCTION_14_0();
    v2 = v0[12];
    v3 = swift_dynamicCastClassUnconditional();
    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2753974CC()
{
  OUTLINED_FUNCTION_19_0();
  v1 = *(v0 + 152);
  return v2();
}

uint64_t *sub_2753974F0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *v16 = a4;
  *&v16[8] = a5;
  *&v16[16] = a6;
  *&v16[24] = a7;
  v16[28] = BYTE4(a7);
  type metadata accessor for SuzeDRMSession();
  v13[0] = a1;
  v14 = a2;
  v15 = a3;
  v12[0] = *v16;
  *(v12 + 13) = *&v16[13];

  sub_2753928BC(v16, &v11);
  return sub_27539759C(v13, v12);
}

uint64_t *sub_2753975E8(unsigned __int8 *a1, _OWORD *a2)
{
  v27 = *v2;
  sub_27539A1D4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v9 = *(a1 + 1);
  v24 = *(a1 + 2);
  v25 = v9;
  *v29 = *a2;
  v10 = *v29;
  *&v29[13] = *(a2 + 13);
  v11 = *&v29[13];
  v2[7] = 0;
  *(v2 + 1) = v10;
  *(v2 + 29) = v11;
  v12 = sub_2753B7148();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
  v23 = *v29;
  v13 = *&v29[16];
  v14 = v29[24];
  v15 = v29[25];
  v16 = v29[26];
  v17 = v29[27];
  v18 = v29[28];
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = *(v20 + 80);
  *(v19 + 40) = *(v20 + 88);
  *(v19 + 48) = v23;
  *(v19 + 64) = v13;
  *(v19 + 72) = v14;
  *(v19 + 73) = v15;
  *(v19 + 74) = v16;
  *(v19 + 75) = v17;
  *(v19 + 76) = v18;
  *(v19 + 80) = v26;
  v21 = v24;
  *(v19 + 88) = v25;
  *(v19 + 96) = v21;
  sub_2753928BC(v29, v28);
  v2[6] = sub_275396E44(0, 0, v8, &unk_2753CCB70, v19);
  return v2;
}

uint64_t sub_2753977A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  *(v8 + 56) = v10;
  *(v8 + 128) = a8;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2753977E8, 0, 0);
}

uint64_t sub_2753977E8()
{
  v23 = v0;
  v1 = *(v0 + 48);
  v20 = *(v0 + 24);
  v21 = *(v0 + 32);
  LODWORD(v22) = v1;
  BYTE4(v22) = BYTE4(v1);
  v2 = MusicContent.Environment.storeRequestContext.getter();
  *(v0 + 88) = v2;
  v3 = v2;
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 128);
  v22 = MEMORY[0x277D837D0];
  v20 = v4;
  *&v21 = v5;
  v7 = *(v0 + 72);
  v19 = *(v0 + 80);
  v8 = objc_allocWithZone(MEMORY[0x277D7FC58]);

  v9 = sub_27539AA68(v3, &v20, v6 + 1);
  *(v0 + 96) = v9;
  *(v0 + 104) = (*(v19 + 8))(v9, v7, v19);
  v10 = *(v19 + 16);
  OUTLINED_FUNCTION_9_1();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_2753979E4;
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);

  return v18(v16, v15);
}

uint64_t sub_2753979E4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_275397AE0()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 16);

  *v3 = v2;
  OUTLINED_FUNCTION_35_0();

  return v4();
}

uint64_t sub_275397B50()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  swift_unknownObjectRelease();

  v4 = v0[15];
  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t *SuzeDRMSession.deinit()
{
  v1 = *v0;
  sub_27539A1D4();
  v3 = OUTLINED_FUNCTION_75(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[6];
  v9 = sub_2753B7148();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = *(v1 + 80);
  v10[5] = *(v1 + 88);
  v10[6] = v8;
  swift_retain_n();
  sub_2753982D4(0, 0, v7, &unk_2753CC8E0, v10);

  sub_27539A328(v7);
  v11 = v0[2];
  v12 = v0[4];

  v13 = v0[6];

  v14 = v0[7];

  return v0;
}

uint64_t sub_275397D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v7 = *(MEMORY[0x277D857C8] + 4);
  v8 = swift_task_alloc();
  v6[9] = v8;
  sub_275358C80();
  *v8 = v6;
  v8[1] = sub_275397DD8;

  return MEMORY[0x282200430](v6 + 5);
}

uint64_t sub_275397DD8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_275397ED4()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[8];
  v0[11] = v0[5];
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_9_1();
  v10 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_275397FD8;
  v8 = v0[7];
  v7 = v0[8];

  return v10(v8, v7);
}

uint64_t sub_275397FD8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2753980D4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 88);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_19_0();

  return v2();
}

uint64_t sub_27539812C()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0[10];
  sub_2752E5160();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_18_5(v2, xmmword_2753BE420);
  OUTLINED_FUNCTION_17_6();
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[3];
  sub_2753B76E8();
  OUTLINED_FUNCTION_11_8(v7);

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t sub_2753981FC()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0[11];
  swift_unknownObjectRelease();
  v2 = v0[13];
  sub_2752E5160();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_5(v3, xmmword_2753BE420);
  OUTLINED_FUNCTION_17_6();
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  sub_2753B76E8();
  OUTLINED_FUNCTION_11_8(v8);

  OUTLINED_FUNCTION_19_0();

  return v6();
}

uint64_t sub_2753982D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_27539A1D4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27539AA04(a3, v12);
  v13 = sub_2753B7148();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_27539A328(v12);
  }

  else
  {
    sub_2753B7138();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2753B70C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2753B6DD8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}