void NonEmpty.init<A>(arrayWith:_:)()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1BF00CCEC(v0, v0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(v1 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  sub_1BF17A50C();
  (*(v9 + 16))(v12, v3, v1);
  sub_1BF00CD7C();
  v13 = sub_1BF17A54C();

  (*(v9 + 8))(v3, v1);
  *v5 = v13;
  OUTLINED_FUNCTION_55();
}

void NonEmpty.map<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a3 + 24);
  v12 = *(a3 + 16);
  v13 = a4;
  v14 = v8;
  v15 = a1;
  v16 = a2;
  v9 = sub_1BEFF79E8();
  v10 = sub_1BEFF5EDC(sub_1BF031230, &v11, v12, a4, v9, v8, MEMORY[0x1E69E7288], &v17);
  if (!v5)
  {
    v17 = v10;
    OUTLINED_FUNCTION_10_23();
    sub_1BF17A65C();
    OUTLINED_FUNCTION_2_46();
    swift_getWitnessTable();
    NonEmpty.init(_:)();
    if (v18)
    {
      *a5 = v18;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BF031230(uint64_t a1, void *a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void NonEmpty.init(_:)()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for NonEmpty();
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = sub_1BF17AA7C();
  v12 = *(v2 - 8);
  if (v11)
  {
    (*(v12 + 8))(v4, v2);
    OUTLINED_FUNCTION_55();

    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  else
  {
    (*(v12 + 32))(v0, v4, v2);
    v18 = *(v7 + 32);
    v19 = OUTLINED_FUNCTION_21_0();
    v20(v19);
    v21 = OUTLINED_FUNCTION_16_14();
    __swift_storeEnumTagSinglePayload(v21, v22, 1, v5);
    OUTLINED_FUNCTION_55();
  }
}

void sub_1BF0313D4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x1BF0315D8);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

void sub_1BF031600()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 16);
  v7 = *(*(v5 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_68(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_51();
  v2(v6, v7, v4);
  OUTLINED_FUNCTION_4_26();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20(v0);
    v14 = *(v13 + 32);
    v15 = OUTLINED_FUNCTION_5_28();
    v16(v15);
    OUTLINED_FUNCTION_55();
  }
}

uint64_t NonEmpty.makeIterator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_2_3();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  (*(v8 + 16))(v7 - v6);
  v9 = *(*(a1 + 24) + 8);
  return sub_1BF17A32C();
}

uint64_t LRUCache.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  LRUCache.refreshIfNeeded(at:)();

  return LRUCache.value(for:)(a1);
}

uint64_t LRUCache.refreshIfNeeded(at:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_10_9();
  v2 = v0[4];
  v3 = v1[10];
  v4 = v1[11];
  OUTLINED_FUNCTION_5_4();
  type metadata accessor for Node();
  v5 = v1[12];
  sub_1BF179EAC();
  if (!v7)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  OUTLINED_FUNCTION_3_5();
  if (*(*(v7 + 16) + *(**(v7 + 16) + 112)))
  {
    OUTLINED_FUNCTION_6_6();
    DoublyLinkedList.remove(node:)(v7);

    OUTLINED_FUNCTION_6_6();
    DoublyLinkedList.prepend(node:)(v7);
  }
}

uint64_t LRUCache.value(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_10_9();
  v4 = v1[4];
  v5 = v3[10];
  v6 = v3[11];
  OUTLINED_FUNCTION_5_4();
  type metadata accessor for Node();
  v7 = v3[12];
  sub_1BF179EAC();
  swift_endAccess();
  if (v12)
  {
    OUTLINED_FUNCTION_3_5();
    v8 = *(v12 + 16);

    (*(*(v6 - 8) + 16))(a1, v8 + *(*v8 + 104), v6);

    v9 = a1;
    v10 = 0;
  }

  else
  {
    v9 = a1;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v6);
}

uint64_t LRUCache.cache(value:for:expires:)(uint64_t a1, void (*a2)(void, void, void), int a3)
{
  v4 = v3;
  v43 = a3;
  v6 = *v3;
  v7 = v6[11];
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v15 = v6[10];
  OUTLINED_FUNCTION_2_3();
  v45 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v19);
  v44 = v41 - v20;
  OUTLINED_FUNCTION_10_9();
  v21 = v4[4];
  OUTLINED_FUNCTION_5_4();
  v41[1] = v22;
  v23 = type metadata accessor for Node();
  v41[3] = v6[12];
  v42 = a2;
  sub_1BF179EAC();
  v24 = v46;
  v41[2] = v23;
  if (v46)
  {
    swift_endAccess();
    v6 = v24;
    if ((Node.isLinked.getter() & 1) != 0 || (v6 = v4[5], OUTLINED_FUNCTION_3_5(), (v25 = v6[2]) != 0) && v25 == v24)
    {
      OUTLINED_FUNCTION_6_6();
      DoublyLinkedList.remove(node:)(v24);

      if (__OFSUB__(v4[3], 1))
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_2_6();
      v4[3] = v27;
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    swift_endAccess();
  }

  v28 = v44;
  v29 = *(v45 + 16);
  v30 = v42;
  v29(v44, v42, v15);
  (*(v9 + 16))(v23, v6, v14);
  v31 = v43;
  v47 = sub_1BF031FFC(v28, v23, v43 & 1);
  v32 = Node.__allocating_init(value:)(&v47);
  v42 = v29;
  v29(v28, v30, v15);
  v46 = v32;
  OUTLINED_FUNCTION_7_2();
  sub_1BF179E9C();

  sub_1BF179EBC();
  swift_endAccess();
  if ((v31 & 1) == 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_6();
  DoublyLinkedList.prepend(node:)(v32);

  v33 = v4[3];
  v34 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    v4[3] = v34;
    v35 = v4[5];
    OUTLINED_FUNCTION_3_5();
    v36 = *(v35 + 24);
    if (v36 && v4[2] < v34)
    {
      OUTLINED_FUNCTION_3_5();
      v37 = v44;
      v42(v44, *(v36 + 16) + *(**(v36 + 16) + 96), v15);
      OUTLINED_FUNCTION_7_2();

      sub_1BF179D7C();
      swift_endAccess();
      (*(v45 + 8))(v37, v15);

      OUTLINED_FUNCTION_6_6();
      DoublyLinkedList.remove(node:)(v36);

      v38 = v4[3];
      v39 = __OFSUB__(v38, 1);
      v40 = v38 - 1;
      if (!v39)
      {
        v4[3] = v40;
        return result;
      }

      goto LABEL_18;
    }

LABEL_15:
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t *sub_1BF031F00(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  (*(*(*(v6 + 88) - 8) + 32))(v3 + *(*v3 + 104), a2);
  *(v3 + *(*v3 + 112)) = a3;
  return v3;
}

uint64_t *sub_1BF031FFC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_1BF031F00(a1, a2, a3);
}

uint64_t Node.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Node.init(value:)(a1);
  return v5;
}

uint64_t Node.init(value:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_47();
  *(v1 + *(v4 + 96)) = 0;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 104);
  swift_weakInit();
  OUTLINED_FUNCTION_29();
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(v7 + 88), a1);
  return v1;
}

uint64_t DoublyLinkedList.prepend(node:)(uint64_t a1)
{
  OUTLINED_FUNCTION_125();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(*v3 + 104);
    OUTLINED_FUNCTION_125();
    swift_weakAssign();
    v5 = *(v1 + 16);
    OUTLINED_FUNCTION_4_0();
    v7 = *(v6 + 96);
    OUTLINED_FUNCTION_125();
    v8 = *(a1 + v7);
    *(a1 + v7) = v5;

    OUTLINED_FUNCTION_4_0();
    v10 = *(v9 + 104);
    OUTLINED_FUNCTION_125();
    swift_weakAssign();
    v11 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    *(v1 + 16) = a1;
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_6_41();
  }
}

uint64_t DoublyLinkedList.remove(node:)(uint64_t a1)
{
  OUTLINED_FUNCTION_125();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v14 = *(*v3 + 96);
    OUTLINED_FUNCTION_3_5();
    v15 = *(v3 + v14);
    if (v15)
    {
      *(v1 + 16) = v15;
      swift_retain_n();

      v16 = *(*v15 + 104);
      OUTLINED_FUNCTION_125();
      swift_weakAssign();
    }

    else
    {
      *(v1 + 16) = 0;

      OUTLINED_FUNCTION_125();
      v24 = *(v1 + 24);
      *(v1 + 24) = 0;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_0();
  v6 = *(v5 + 96);
  OUTLINED_FUNCTION_3_5();
  v7 = *(a1 + v6);
  if (v7)
  {
    OUTLINED_FUNCTION_4_0();
    v9 = *(v8 + 104);
    OUTLINED_FUNCTION_3_5();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = *(*Strong + 96);
      OUTLINED_FUNCTION_125();
      v13 = *(v11 + v12);
      *(v11 + v12) = v7;
      swift_retain_n();
    }

    else
    {
    }

    if (*(a1 + v6))
    {
      swift_weakLoadStrong();

      OUTLINED_FUNCTION_29();
      v26 = *(v25 + 104);
      OUTLINED_FUNCTION_125();
      swift_weakAssign();
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_0();
  v18 = *(v17 + 104);
  OUTLINED_FUNCTION_3_5();
  v19 = swift_weakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(*v19 + 96);
    OUTLINED_FUNCTION_125();
    v22 = *(v20 + v21);
    *(v20 + v21) = 0;

    OUTLINED_FUNCTION_125();
    v23 = *(v1 + 24);
    *(v1 + 24) = v20;
LABEL_16:
  }

  OUTLINED_FUNCTION_4_0();
  v28 = *(v27 + 104);
  OUTLINED_FUNCTION_125();
  swift_weakAssign();
  OUTLINED_FUNCTION_4_0();
  v30 = *(v29 + 96);
  OUTLINED_FUNCTION_125();
  v31 = *(a1 + v30);
  *(a1 + v30) = 0;
}

uint64_t sub_1BF03252C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  sub_1BF179D1C();
  (*(v7 + 16))(v13, v4, a3);
  v14 = sub_1BF17A3DC();

  return v14;
}

char *Atomic.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t objectdestroy_9Tm()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF032840(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 8))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      v14 = *(a1 + 16);
      *(a1 + 16) = v15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v12 = *(v9 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v13 = *(v15 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BF032A44(uint64_t a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_29();
  v5 = *(v1 + *(v4 + 112));
  UnfairLock.lock()();
  sub_1BF005128(a1);
  sub_1BF032AC0(v2);
}

uint64_t OUTLINED_FUNCTION_115@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1BF047B30(v2, &a2 - a1);
}

void OUTLINED_FUNCTION_115_0(uint64_t a1, uint64_t a2)
{

  sub_1BEFEEEE0(0, a2);
}

uint64_t sub_1BF032BA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1BF0115C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1BF02061C(a1, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      a3(256);

      return sub_1BF02F47C(v8, sub_1BF0115C4);
    }

    else
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v11 = sub_1BF1797FC();
      __swift_project_value_buffer(v11, qword_1ED8F5298);

      v12 = sub_1BF1797DC();
      v13 = sub_1BF17ACDC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21 = v15;
        *v14 = 136446210;
        v16 = *(v10 + 16);
        v17 = *(v16 + 40);
        v18 = *(v16 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v19 = sub_1BF01A7AC(v17, v18, &v21);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_1BEFE0000, v12, v13, "HttpConnectionHandler:[%{public}s] send 404", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1BFB547B0](v15, -1, -1);
        MEMORY[0x1BFB547B0](v14, -1, -1);
      }

      a3(0);
    }
  }

  return result;
}

void sub_1BF032E20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id AsyncOperation.init()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = (v0 + qword_1ED8EF088);
  OperationID.init()();
  v4 = v16;
  *v3 = v15;
  v3[1] = v4;
  v5 = qword_1ED8EEFF8;
  v6 = *((v2 & v1) + 0x50);
  v7 = OUTLINED_FUNCTION_9_3();
  *(v0 + v5) = sub_1BF038B6C(v7, v8);
  v9 = qword_1ED8EF090;
  v10 = OUTLINED_FUNCTION_9_3();
  *(v0 + v9) = sub_1BF038C98(v10, v11, v6);
  v12 = qword_1ED8EF000;
  *(v0 + v12) = sub_1BF0390C8(0);
  v14.receiver = v0;
  v14.super_class = type metadata accessor for AsyncOperation();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_1BF032F64()
{
  result = sub_1BF17A1BC();
  if (!result)
  {
    goto LABEL_4;
  }

  v1 = result;
  v2 = sub_1BF0387D8(result, 0);
  v3 = sub_1BF03888C(&v4, v2 + 4, v1, 0xD000000000000010, 0x80000001BF18EAD0);

  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x1E69E7CC0];
  }

  off_1ED8EF1E0 = v2;
  return result;
}

void sub_1BF033004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E5EE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Container.TestSuite.rawValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_44();
  v4 = 0x6974616D6F747561;
  if (!v5)
  {
    v4 = 1869440356;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BF0330A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1BF033104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

id sub_1BF033148(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1BF17A8CC();

  return v3;
}

uint64_t _s13TeaFoundation16UniqueCollectionV12arrayLiteralACyxGxd_tcfC_0@<X0>(Swift::OpaquePointer a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1BF179CFC();
  a2[1] = sub_1BF179CEC();
  OUTLINED_FUNCTION_54();
  type metadata accessor for UniqueCollection();
  UniqueCollection.append(contentsOf:)(a1);
}

uint64_t sub_1BF03324C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  sub_1BF033588();
  result = OUTLINED_FUNCTION_28_5();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_1BF17BB6C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_1BF17B86C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UniqueCollection.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v17 = v10;
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF17A4EC();
  v19 = v12;
  OUTLINED_FUNCTION_77_0();
  if (v12 == sub_1BF17A5AC())
  {
LABEL_2:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  while (1)
  {
    OUTLINED_FUNCTION_77_0();
    v13 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v13 & 1) == 0)
    {
      break;
    }

    (*(v6 + 16))(v11, v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v4);
LABEL_5:
    sub_1BF17A62C();
    UniqueCollection.append(_:)();
    (*(v6 + 8))(v11, v4);
    OUTLINED_FUNCTION_77_0();
    v14 = sub_1BF17A5AC();
    v12 = v19;
    if (v19 == v14)
    {
      goto LABEL_2;
    }
  }

  v15 = sub_1BF17B23C();
  if (v17 == 8)
  {
    v18 = v15;
    (*(v6 + 16))(v11, &v18, v4);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1BF033588()
{
  if (!qword_1ED8EE9A8)
  {
    v0 = sub_1BF17B19C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE9A8);
    }
  }
}

void UniqueCollection.append(_:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_2_3();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_40();
  v10 = sub_1BF17AE6C();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_12_17();
  v17 = v16(v15);
  OUTLINED_FUNCTION_31_8(v17, v18);
  sub_1BF179EAC();

  OUTLINED_FUNCTION_25_8(v1);
  v19(v1, v10);
  if (v3 == 1)
  {
    v20 = OUTLINED_FUNCTION_21_0();
    (v5)(v20);
    v21 = OUTLINED_FUNCTION_16_12();
    (v5)(v21);
    OUTLINED_FUNCTION_27_7(v0);
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_20_11();
    v5();
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5DC();
  }

  else
  {
    if (qword_1ED8F01C8 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    OUTLINED_FUNCTION_29_7();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    v23 = OUTLINED_FUNCTION_21_0();
    (v5)(v23);
    OUTLINED_FUNCTION_31_0();
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1BF071CD8();
    *(inited + 32) = v6;
    *(inited + 40) = v24;
    if (v0 != 1)
    {
      OUTLINED_FUNCTION_28_7("collection must contain unique elements, duplicate=%{public}@");
    }

    swift_setDeallocating();
    sub_1BF0C8384();
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0338A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF033900(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

id sub_1BF033940()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  if (sub_1BF033B8C())
  {
    return 0;
  }

  v3 = *(v1 + 80);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AsyncOperation();
  return objc_msgSendSuper2(&v4, sel_isReady);
}

uint64_t sub_1BF0339D0(void *a1)
{
  v1 = a1;
  v2 = sub_1BF033940();

  return v2 & 1;
}

uint64_t UniqueParentChildCollection.mapChildren(in:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v20 = *v12;
  v21 = v12[1];
  v14 = *(v13 + 40);
  v15 = *(v13 + 48);
  v16 = type metadata accessor for UniqueCollection();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v17 = UniqueCollection.startIndex.getter(v16);

  if (v17 != UniqueCollection.endIndex.getter(v16))
  {
    v18 = (v5 + 8);
    do
    {
      UniqueCollection.subscript.getter();
      v17 = UniqueCollection.index(after:)(v17);
      UniqueParentChildCollection.mapChildren(in:)(v11, a2);
      (*v18)(v11, v3);
    }

    while (v17 != UniqueCollection.endIndex.getter(v16));
  }
}

{
  v48 = a1;
  v4 = a2[2];
  v5 = *(*(sub_1BF17AE6C() - 8) + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = a2[3];
  OUTLINED_FUNCTION_2_3();
  v43 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v14 = *(*(OUTLINED_FUNCTION_4_40() - 8) + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  OUTLINED_FUNCTION_2_3();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v47 = a2;
  v26 = *(a2[4] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v44 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v42 - v32;
  v45 = *(v19 + 16);
  v46 = v19 + 16;
  v45(v25, v48, v4);
  v49 = v33;
  sub_1BF17A32C();
  v50 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v34 = (v43 + 32);
  for (i = (v43 + 8); ; (*i)(v2, v9))
  {
    sub_1BF17AF0C();
    if (__swift_getEnumTagSinglePayload(v17, 1, v9) == 1)
    {
      break;
    }

    (*v34)(v2, v17, v9);
    v36 = OUTLINED_FUNCTION_3_46(v47);
    v38 = v37(v36);
    v40 = v39;
    v45(v8, v48, v4);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v4);
    v51 = v38;
    v52 = v40;
    sub_1BF179E9C();
    sub_1BF179EBC();
  }

  return (*(v44 + 8))(v49, v50);
}

uint64_t sub_1BF033B8C()
{
  v1 = *(v0 + qword_1ED8EF000);

  Atomic.wrappedValue.getter(&v3);

  return v3;
}

uint64_t UniqueCollection.startIndex.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_1BF17A4EC();
}

uint64_t UniqueCollection.endIndex.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_1BF17A5AC();
}

uint64_t UniqueCollection.subscript.getter()
{
  OUTLINED_FUNCTION_57_2();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v11 = v0[1];
  v6 = UniqueCollection.startIndex.getter(v1);
  result = UniqueCollection.endIndex.getter(v2);
  if (result < v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v6 > v4 || result <= v4)
  {
    goto LABEL_10;
  }

  v9 = *(v2 + 16);
  OUTLINED_FUNCTION_56_2();

  return sub_1BF17A69C();
}

uint64_t sub_1BF033C94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BF037594(0, &qword_1ED8EAE18, sub_1BF0378F8);
  result = sub_1BF17B17C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v6;
    return result;
  }

  v30 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1BF1470D8(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v31 = *(v17 + 16);
    v32 = *v17;
    v18 = *(v17 + 32);
    v19 = *(v6 + 40);
    sub_1BF17BB6C();
    if (*(&v32 + 1) > 2uLL)
    {
      sub_1BF179F3C();
    }

    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v6 + 48) + 40 * v23;
    *v28 = v32;
    *(v28 + 16) = v31;
    *(v28 + 32) = v18;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_1BF033FC4(void *a1)
{
  v1 = a1;
  sub_1BF034374();
}

uint64_t (*sub_1BF034374())()
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = type metadata accessor for Result();
  v5 = OUTLINED_FUNCTION_8_36(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = (&v21 - v10);
  v12 = sub_1BF03463C();
  if (v12)
  {
    v13 = v12;
    v12();
    sub_1BEFE52DC(v13);
  }

  if ([v1 isCancelled])
  {
    sub_1BF0346F8(2);
    result = sub_1BF03938C();
    if (result)
    {
      v15 = result;
      sub_1BF1691AC();
      v16 = swift_allocError();
      *v17 = 0;
      *v11 = v16;
      swift_storeEnumTagMultiPayload();
      (v15)(v11);
      sub_1BEFE52DC(v15);
      return (*(v7 + 8))(v11, v0);
    }
  }

  else
  {
    sub_1BF0346F8(1);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    v19 = *((*v2 & *v1) + 0xC0);
    v20 = v1;
    v19(sub_1BF03930C, v18);
  }

  return result;
}

uint64_t sub_1BF034594()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF0345CC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v2 + 16);
  sub_1BF009984(v4);
  os_unfair_lock_unlock(v5);
  return v4;
}

uint64_t (*sub_1BF03463C())()
{
  v1 = *(v0 + qword_1ED8EEFF8);

  v2 = sub_1BF0345CC();
  v4 = v3;

  if (!v2)
  {
    return OUTLINED_FUNCTION_9_3();
  }

  OUTLINED_FUNCTION_58();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  return sub_1BF16C6EC;
}

uint64_t sub_1BF0346C4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1BF0346F8(char a1)
{
  sub_1BF034760();
  v3 = *(v1 + qword_1ED8EF000);
  v4 = a1;

  Atomic.wrappedValue.setter(&v4);

  sub_1BF0347BC();
}

void sub_1BF034760()
{
  v1 = sub_1BF17A07C();
  [v0 willChangeValueForKey_];
}

void sub_1BF0347BC()
{
  v1 = sub_1BF17A07C();
  [v0 didChangeValueForKey_];
}

BOOL sub_1BF03483C(void *a1)
{
  v1 = a1;
  v2 = sub_1BF034818();

  return v2;
}

BOOL sub_1BF034894(void *a1)
{
  v1 = a1;
  v2 = sub_1BF034870();

  return v2;
}

uint64_t AsyncBlockOperation.perform(completion:)()
{
  OUTLINED_FUNCTION_76();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *(v1 + qword_1ED8ED040);
  v6 = *(v1 + qword_1ED8ED040 + 8);
  v5();
  OUTLINED_FUNCTION_14_0();
  v7 = swift_allocObject();
  v8 = *((v4 & v3) + 0xF0);
  *(v7 + 16) = v8;
  *(v7 + 24) = v2;
  OUTLINED_FUNCTION_5_24(v7);
  v9 = sub_1BF014EDC(v8, MEMORY[0x1E69E7CA8] + 8);
  Promise.then<A>(on:closure:)();

  OUTLINED_FUNCTION_14_0();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v2;
  v10[4] = v0;
  v11 = qword_1ED8F0210;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v12 = off_1ED8F0218;
  sub_1BEFF77FC();

  OUTLINED_FUNCTION_14_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v2;
  OUTLINED_FUNCTION_5_24(v13);
  sub_1BF03952C(v12, sub_1BF0EC99C, v13);
}

uint64_t sub_1BF034A94()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF034AD0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = MEMORY[0x1E69E7CA8];
  sub_1BF032E20(0, &qword_1ED8ED8C0, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for Promise);
  v13 = swift_allocObject();
  v17 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v14 = a5;
  v15 = UnfairLock.init(options:)(&v17);
  sub_1BF032E20(0, &qword_1ED8ED8D0, v12 + 8, type metadata accessor for Seal);
  swift_allocObject();
  *(v13 + 16) = sub_1BF034CD4(v15);
  swift_retain_n();
  sub_1BF034CF0(sub_1BF0357A4, v13, sub_1BF1030C8, v13, a1, a2, a3, a4, v14, a6);

  return v13;
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Cache.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1BF034CD8(uint64_t a1)
{
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  *(v1 + 48) = -1;
  return OUTLINED_FUNCTION_80_0(a1);
}

uint64_t sub_1BF034CF0(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a7;
  v47 = a8;
  v13 = sub_1BF1794AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = swift_allocObject();
  v45 = a1;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  a5(v21);
  sub_1BF1793CC();
  sub_1BF0356E4(&qword_1EBDCAEE0, MEMORY[0x1E6969530]);
  v22 = sub_1BF17A05C();
  v48 = *(v14 + 8);
  v48(v17, v13);
  if (v22)
  {
    v24 = v46;
    v23 = v47;

    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v25 = sub_1BF1797FC();
    __swift_project_value_buffer(v25, qword_1ED8F5248);
    v26 = v23;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v27 = sub_1BF1797DC();
    v28 = sub_1BF17ACDC();

    v29 = os_log_type_enabled(v27, v28);
    v44 = v19;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1BF01A7AC(v24, v26, aBlock);
      _os_log_impl(&dword_1BEFE0000, v27, v28, "cancelling task request for %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1BFB547B0](v31, -1, -1);
      MEMORY[0x1BFB547B0](v30, -1, -1);
    }

    v32 = [objc_opt_self() sharedScheduler];
    v33 = sub_1BF17A07C();
    [v32 cancelTaskRequestWithIdentifier_];

    v45();
    v34 = v44;
  }

  else
  {
    v43 = a10;
    v45 = [objc_opt_self() sharedScheduler];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v14 + 16))(v17, v19, v13);
    v34 = v19;
    v36 = (*(v14 + 80) + 64) & ~*(v14 + 80);
    v37 = swift_allocObject();
    *(v37 + 2) = sub_1BF0004A8;
    *(v37 + 3) = v20;
    v38 = v47;
    *(v37 + 4) = v46;
    *(v37 + 5) = v38;
    v39 = v43;
    *(v37 + 6) = v35;
    *(v37 + 7) = v39;
    (*(v14 + 32))(&v37[v36], v17, v13);
    aBlock[4] = sub_1BF1030D0;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF1008AC;
    aBlock[3] = &block_descriptor_12;
    v40 = _Block_copy(aBlock);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v41 = v45;
    [v45 getPendingTaskRequestsWithCompletionHandler_];
    _Block_release(v40);
  }

  return (v48)(v34, v13);
}

uint64_t sub_1BF0351A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF0351DC()
{
  v1 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 3);

  v9 = *(v0 + 5);

  v10 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

void sub_1BF0352BC(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_38;
  }

  sub_1BF037534(0, &qword_1ED8EAE18, sub_1BF0378F8);
  v2 = sub_1BF17B18C();
  v3 = v2;
  v50 = *(v1 + 16);
  if (!v50)
  {
    goto LABEL_38;
  }

  v4 = 0;
  v5 = v2 + 56;
  v48 = v1;
  v49 = v1 + 32;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v6 = (v49 + 40 * v4);
    v7 = *v6;
    v8 = v6[1];
    v54 = v6[2];
    v55 = v6[3];
    v56 = v6[4];
    v9 = *(v3 + 40);
    v10 = sub_1BF17BB6C();
    v51 = v4;
    if (v8)
    {
      if (v8 == 1 || v8 == 2)
      {
        OUTLINED_FUNCTION_30_4(v10, v11, v12, v13, v14, v15, v16, v17, v48, v49, v50, v4, v52, v53, v54, v55, v56, v57[0]);
      }

      else
      {
        v18 = OUTLINED_FUNCTION_5_15();
        sub_1BF027218(v18, v19);
        sub_1BF179F3C();
      }
    }

    sub_1BF179F3C();
    v20 = sub_1BF17BB9C();
    v53 = ~(-1 << *(v3 + 32));
    v21 = v20 & v53;
    OUTLINED_FUNCTION_32_5();
    if ((v23 & v24) == 0)
    {
      break;
    }

    while (1)
    {
      v25 = v3;
      v26 = (*(v3 + 48) + 40 * v21);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      v31 = v26[4];
      v57[0] = *v26;
      v57[1] = v28;
      v57[2] = v29;
      v57[3] = v30;
      v57[4] = v31;
      v57[5] = v7;
      v57[6] = v8;
      v57[7] = v54;
      v57[8] = v55;
      v57[9] = v56;
      switch(v28)
      {
        case 0:
          if (!v8)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        case 1:
          if (v8 == 1)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        case 2:
          if (v8 == 2)
          {
            goto LABEL_36;
          }

LABEL_21:
          v32 = OUTLINED_FUNCTION_5_15();
LABEL_22:
          sub_1BF027218(v32, v33);
          v3 = v25;
          sub_1BF0379BC(v57);
          goto LABEL_23;
      }

      if (v8 < 3)
      {
        v35 = OUTLINED_FUNCTION_5_15();
        sub_1BF027218(v35, v36);
        v32 = OUTLINED_FUNCTION_24_7();
        goto LABEL_22;
      }

      if (v27 == v7 && v28 == v8)
      {
        break;
      }

      HIDWORD(v52) = sub_1BF17B86C();
      v38 = OUTLINED_FUNCTION_5_15();
      sub_1BF027218(v38, v39);
      v40 = OUTLINED_FUNCTION_24_7();
      sub_1BF027218(v40, v41);
      sub_1BF0379BC(v57);
      v3 = v25;
      if ((v52 & 0x100000000) != 0)
      {
        v42 = OUTLINED_FUNCTION_5_15();
        sub_1BF03794C(v42, v43);
        goto LABEL_37;
      }

LABEL_23:
      v21 = (v21 + 1) & v53;
      OUTLINED_FUNCTION_32_5();
      if ((v34 & v23) == 0)
      {
        v24 = *(v5 + 8 * v22);
        goto LABEL_33;
      }
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

LABEL_36:
    sub_1BF0379BC(v57);
    v3 = v25;
LABEL_37:
    v4 = v51 + 1;
    v1 = v48;
    if (v51 + 1 == v50)
    {
LABEL_38:

      return;
    }
  }

LABEL_33:
  *(v5 + 8 * v22) = v24 | v23;
  v44 = (*(v3 + 48) + 40 * v21);
  *v44 = v7;
  v44[1] = v8;
  v44[2] = v54;
  v44[3] = v55;
  v44[4] = v56;
  v45 = *(v3 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (!v46)
  {
    *(v3 + 16) = v47;
    goto LABEL_37;
  }

LABEL_40:
  __break(1u);
}

void *ObjectReuseProtector.init()()
{
  v1 = v0;
  v2 = *v0;
  sub_1BEFF9AF8(0, &qword_1ED8ED750, 0x1E696AD18);
  v3 = *(v2 + 80);
  sub_1BEFF9AF8(0, &qword_1ED8ECBC0, 0x1E696AEC0);
  v1[2] = sub_1BF03572C(5, 5);
  return v1;
}

uint64_t sub_1BF0356E4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BF03572C(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() mapTableWithKeyOptions:a1 valueOptions:a2];

  return v2;
}

void static Lazy<A>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v43 = v3;
  v4 = *(v0 + 80);
  OUTLINED_FUNCTION_2_3();
  v45 = v6;
  v46 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF17AE6C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1(TupleTypeMetadata2);
  v44 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_2_3();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_1();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_28_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v41 - v27;
  sub_1BF032A44(&v41 - v27);
  sub_1BF032A44(v2);
  v46 = TupleTypeMetadata2;
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = *(v18 + 16);
  v30(v1, v28, v11);
  v30(v1 + v29, v2, v11);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) != 1)
  {
    v30(v24, v1, v11);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1 + v29, 1, v4);
    v34 = v45;
    v35 = (v45 + 8);
    if (EnumTagSinglePayload != 1)
    {
      v37 = *(v45 + 32);
      v46 = v45 + 8;
      v38 = v42;
      v37(v42, v1 + v29, v4);
      sub_1BF17A05C();
      v45 = *(v34 + 8);
      (v45)(v38, v4);
      v39 = *(v18 + 8);
      v39(v2, v11);
      v39(v28, v11);
      (v45)(v24, v4);
      v40 = OUTLINED_FUNCTION_41_0();
      (v39)(v40);
      goto LABEL_8;
    }

    v36 = *(v18 + 8);
    v36(v2, v11);
    v36(v28, v11);
    (*v35)(v24, v4);
    goto LABEL_6;
  }

  v31 = *(v18 + 8);
  v31(v2, v11);
  v31(v28, v11);
  if (__swift_getEnumTagSinglePayload(v1 + v29, 1, v4) != 1)
  {
LABEL_6:
    (*(v44 + 8))(v1, v46);
    goto LABEL_8;
  }

  v32 = OUTLINED_FUNCTION_41_0();
  (v31)(v32);
LABEL_8:
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF035B84(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = *a2;
  static Lazy<A>.== infix(_:_:)();
}

uint64_t sub_1BF035B94()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_0(v1);

  return v4(v3);
}

uint64_t sub_1BF035C24()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_6(v6);

  return sub_1BF035CD4(v7, v8, v9, v5, v4);
}

uint64_t sub_1BF035CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1BF17A75C();
  v5[4] = sub_1BF17A74C();
  v7 = sub_1BF17A6AC();

  return MEMORY[0x1EEE6DFA0](sub_1BF035D6C, v7, v6);
}

uint64_t sub_1BF035D6C()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v3(v4);
  OUTLINED_FUNCTION_9();

  return v5();
}

uint64_t sub_1BF035DD4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return v5();
}

uint64_t sub_1BF035EB4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return v5();
}

void when<A>(on:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Promise();
  v6 = a2;
  OUTLINED_FUNCTION_54();
  v4 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  WitnessTable = swift_getWitnessTable();
  static Promise.all<A>(on:_:)(a1, &v6, v4, WitnessTable);
}

void static Promise.all<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a1;
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v59 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 8);
  v62 = sub_1BF17B4FC();
  v15 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v63 = v14;
  v61 = sub_1BF17B4EC();
  OUTLINED_FUNCTION_2_3();
  v48[0] = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v48 - v20;
  v22 = *(v4 + 80);
  sub_1BF17A65C();
  type metadata accessor for DeferredPromise();
  v23 = DeferredPromise.__allocating_init()();
  v64 = a4;
  if (sub_1BF17AA7C())
  {
    v65 = sub_1BF17A56C();
    DeferredPromise.resolve(_:)();

    OUTLINED_FUNCTION_2_41();
    if (*(v23 + 16))
    {
      v24 = *(v23 + 16);

LABEL_9:

      OUTLINED_FUNCTION_26_2();
      return;
    }

    __break(1u);
  }

  else
  {
    v58 = v23;
    v65 = 1;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v57 = UnfairLock.init(options:)(&v65);
    v25 = swift_allocObject();
    v51 = v22;
    v26 = sub_1BF179CEC();
    v56 = v25;
    *(v25 + 16) = v26;
    v27 = swift_allocObject();
    v54 = a2;
    v55 = v27;
    *(v27 + 16) = 0;
    MEMORY[0x1BFB52170](a3, v63);
    sub_1BF17B4CC();
    v49 = v11 + 7;
    v50 = v9 + 16;
    v52 = v21;
    v53 = v9;
    v48[1] = v9 + 32;
    while (1)
    {
      v28 = sub_1BF17B4DC();
      v29 = v66;
      if (!v66)
      {
        break;
      }

      v62 = v65;
      MEMORY[0x1EEE9AC00](v28);
      v30 = v64;
      v48[-4] = a3;
      v48[-3] = v30;
      v31 = v30;
      v48[-2] = v29;
      v32 = v51;
      v63 = firstly<A>(closure:)(sub_1BF0366BC);
      v33 = a3;
      v34 = v53;
      v35 = v59;
      (*(v53 + 16))(v59, v54, v33);
      v36 = (*(v34 + 80) + 72) & ~*(v34 + 80);
      v37 = (v49 + v36) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      *(v38 + 2) = v32;
      *(v38 + 3) = v33;
      v39 = v56;
      v40 = v57;
      *(v38 + 4) = v31;
      *(v38 + 5) = v40;
      v41 = v55;
      *(v38 + 6) = v55;
      *(v38 + 7) = v39;
      *(v38 + 8) = v62;
      v42 = *(v34 + 32);
      a3 = v33;
      v42(&v38[v36], v35, v33);
      v43 = v58;
      *&v38[v37] = v58;

      Promise.then<A>(on:closure:)();

      v44 = swift_allocObject();
      v45 = v64;
      v44[2] = v33;
      v44[3] = v45;
      v21 = v52;
      v44[4] = v40;
      v44[5] = v41;
      v44[6] = v43;

      sub_1BEFF77FC();
    }

    (*(v48[0] + 8))(v21, v61);
    v46 = v58;
    OUTLINED_FUNCTION_2_41();
    if (*(v46 + 16))
    {
      v47 = *(v46 + 16);

      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1BF036554()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF03659C()
{
  v1 = *(v0 + 3);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = *(v0 + 7);

  (*(v3 + 8))(&v0[v5], v1);
  v11 = *&v0[v7];

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1BF036674()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1BF036740()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = *(v0 + ((*(*(v0[3] - 8) + 64) + ((*(*(v0[3] - 8) + 80) + 72) & ~*(*(v0[3] - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];
  sub_1BF0366D8();
}

uint64_t sub_1BF0367E4(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(*a6 + 80) + 16);
  v15 = sub_1BF17AE6C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v22 - v17;
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    (*(*(v14 - 8) + 16))(v18, a4, v14);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v14);
    v25 = a3;
    swift_beginAccess();
    sub_1BF179E9C();
    sub_1BF179EBC();
    swift_endAccess();
    swift_beginAccess();
    v20 = *a2;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v21 = sub_1BF179DFC();

    result = sub_1BF17AA2C();
    if (v21 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      result = sub_1BF17AA2C();
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        v23 = 0;
        v24 = result;
        MEMORY[0x1EEE9AC00](result);
        *(&v22 - 4) = v14;
        *(&v22 - 3) = a7;
        *(&v22 - 2) = a8;
        *(&v22 - 1) = a2;
        sub_1BF036A78();
        sub_1BF036AD0();
        v23 = sub_1BF17A38C();
        DeferredPromise.resolve(_:)();
      }
    }
  }

  return result;
}

void sub_1BF036A78()
{
  if (!qword_1ED8EF238)
  {
    v0 = sub_1BF17AC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF238);
    }
  }
}

unint64_t sub_1BF036AD0()
{
  result = qword_1ED8EF230;
  if (!qword_1ED8EF230)
  {
    sub_1BF036A78();
    sub_1BF036B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF230);
  }

  return result;
}

unint64_t sub_1BF036B50()
{
  result = qword_1ED8EF240;
  if (!qword_1ED8EF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF240);
  }

  return result;
}

uint64_t sub_1BF036BA4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1BF036BC4(a1, *(v1 + 40));
}

uint64_t sub_1BF036BC4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *a2;
  sub_1BF179EAC();
  return swift_endAccess();
}

void TFUnregisterCrashCallbacks()
{
  if (NSGetUncaughtExceptionHandler() == TFExceptionHandler)
  {
    sigaction(4, &lastSigIll, 0);
    sigaction(11, &lastSigSegv, 0);
    sigaction(8, &lastSigFpe, 0);
    sigaction(10, &lastSigBus, 0);
    TFRemoveCrashFiles();

    NSSetUncaughtExceptionHandler(0);
  }
}

void TFRemoveCrashFiles()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  [v0 removeItemAtURL:detectedCrashOnLaunchURL error:0];

  v1 = [MEMORY[0x1E696AC08] defaultManager];
  [v1 removeItemAtURL:wipeStateOnLaunchURL error:0];
}

uint64_t sub_1BF036D70(uint64_t result, unint64_t a2, char a3)
{
  v7 = result;
  v30 = *result;
  v31 = *(result + 8);
  v29 = *(result + 24);
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF033C94(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1BF171DD4();
        goto LABEL_32;
      }

      sub_1BF037118(v8 + 1);
    }

    v28 = *v3;
    v10 = *(*v3 + 40);
    sub_1BF17BB6C();
    if (v31 > 2)
    {
      sub_1BF179F3C();
    }

    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v11 = -1 << *(v28 + 32);
    a2 = result & ~v11;
    if ((*(v28 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (1)
      {
        v13 = (*(v28 + 48) + 40 * a2);
        v5 = *v13;
        v4 = v13[1];
        v15 = v13[2];
        v14 = v13[3];
        v16 = v13[4];
        v33[0] = *v13;
        v33[1] = v4;
        v33[2] = v15;
        v33[3] = v14;
        v33[4] = v16;
        v33[5] = v30;
        v34 = v31;
        v35 = v29;
        if (!v4)
        {
          if (!*(v7 + 8))
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

        if (v4 == 1)
        {
          break;
        }

        if (v4 == 2)
        {
          if (*(v7 + 8) == 2)
          {
            goto LABEL_36;
          }

LABEL_20:
          sub_1BF02832C(v7, v32);
LABEL_21:
          result = sub_1BF0379BC(v33);
          goto LABEL_22;
        }

        v17 = *(v7 + 8);
        if (v17 < 3)
        {
          sub_1BF02832C(v7, v32);
          sub_1BF027218(v5, v4);
          goto LABEL_21;
        }

        if (v5 == *v7 && v4 == v17)
        {
          goto LABEL_35;
        }

        v19 = sub_1BF17B86C();
        sub_1BF02832C(v7, v32);
        sub_1BF027218(v5, v4);
        result = sub_1BF0379BC(v33);
        if (v19)
        {
          goto LABEL_37;
        }

LABEL_22:
        a2 = (a2 + 1) & v12;
        if (((*(v28 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if (*(v7 + 8) == 1)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }
  }

LABEL_32:
  v20 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v21 = *(v20 + 48) + 40 * a2;
  v22 = *v7;
  v23 = *(v7 + 16);
  *(v21 + 32) = *(v7 + 32);
  *v21 = v22;
  *(v21 + 16) = v23;
  v24 = *(v20 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_35:
    sub_1BF02832C(v7, v32);
    sub_1BF027218(v5, v4);
LABEL_36:
    sub_1BF0379BC(v33);
LABEL_37:
    result = sub_1BF17BA9C();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v26;
  }

  return result;
}

void sub_1BF0370D4()
{
  if (*(v0 + 16))
  {

    sub_1BF02EA58();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF037118(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BF037594(0, &qword_1ED8EAE18, sub_1BF0378F8);
  result = sub_1BF17B17C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v3 + 48) + 40 * (v13 | (v7 << 6));
        v29 = *(v16 + 16);
        v30 = *v16;
        v17 = *(v16 + 32);
        v18 = *(v6 + 40);
        sub_1BF17BB6C();
        if (*(&v30 + 1) > 2uLL)
        {
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

          sub_1BF179F3C();
        }

        sub_1BF179F3C();
        result = sub_1BF17BB9C();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v6 + 48) + 40 * v22;
        *v27 = v30;
        *(v27 + 16) = v29;
        *(v27 + 32) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v28;
          goto LABEL_29;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BF037424(char a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];

  v4(&v16, v6);

  v7 = v16;
  swift_beginAccess();
  v8 = a2[4];
  a2[4] = v7;

  swift_beginAccess();
  v9 = a2[5];
  a2[5] = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    os_unfair_lock_unlock(*(a2[6] + 16));
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v15 = v7;

      v13(&v15);

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return v7;
}

void sub_1BF037534(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1BF17B19C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF037594(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1BF17B19C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF0375F4@<X0>(void *a1@<X8>)
{
  v2 = sub_1BF179ADC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = sub_1BF179B2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v25 = a1;
    v17 = *(Strong + 32);
    sub_1BF179A4C();
    sub_1BF179AEC();
    v24 = *(v11 + 8);
    v24(v14, v10);
    (*(v3 + 104))(v7, *MEMORY[0x1E6977D10], v2);
    sub_1BF00AFCC(&qword_1ED8EAEB0, MEMORY[0x1E6977D20]);
    LOBYTE(v17) = sub_1BF17A05C();
    v18 = *(v3 + 8);
    v18(v7, v2);
    v18(v9, v2);
    if (v17)
    {
      type metadata accessor for SCNetworkReachability();
      v19 = sub_1BF037A18();
    }

    else
    {
      v22 = *(v16 + 32);
      sub_1BF179A4C();
      v19 = sub_1BF037CBC();
      v24(v14, v10);
    }

    sub_1BF026ECC();
    swift_allocObject();
    v21 = sub_1BF037AD8(v19);

    a1 = v25;
  }

  else
  {
    sub_1BF026ECC();
    swift_allocObject();
    result = sub_1BF037AD8(0);
    v21 = result;
  }

  *a1 = v21;
  return result;
}

unint64_t sub_1BF0378F8()
{
  result = qword_1ED8EB4A8[0];
  if (!qword_1ED8EB4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EB4A8);
  }

  return result;
}

uint64_t sub_1BF03794C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1BF0379BC(uint64_t a1)
{
  sub_1BF028F38();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF037A18()
{
  v6 = *MEMORY[0x1E69E9840];
  *&address.sa_data[6] = 0;
  *address.sa_data = 0;
  *&address.sa_len = 528;
  result = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (result)
  {
    v1 = result;
    flags = 0;
    v2 = SCNetworkReachabilityGetFlags(result, &flags);

    if (v2 && (flags & 2) != 0)
    {
      if ((flags & 4) != 0 && ((flags & 0x28) == 0 || (flags & 0x10) != 0))
      {
        result = (flags >> 17) & 2;
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1BF037AD8(uint64_t a1)
{
  v6 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3 = UnfairLock.init(options:)(&v6);
  v4 = MEMORY[0x1E69E7CC0];
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = a1;
  return v1;
}

void sub_1BF037B48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *&v5[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_backgroundTaskSchedulingQueue];
  v12 = swift_allocObject();
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  *(v12 + 6) = v5;
  *(v12 + 7) = v10;
  sub_1BF032E20(0, &unk_1EBDCABB8, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AsyncBlockOperation);
  v14 = v13;
  v15 = objc_allocWithZone(v13);
  v16 = &v15[qword_1ED8ED040];
  *v16 = sub_1BF034C9C;
  v16[1] = v12;
  v20.receiver = v15;
  v20.super_class = v14;
  v17 = v11;

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v18 = v5;
  v19 = objc_msgSendSuper2(&v20, sel_init);
  [v17 addOperation_];
}

uint64_t sub_1BF037C74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF037CBC()
{
  v0 = sub_1BF17998C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF179B0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF179B1C();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x1E6977D40])
  {
    goto LABEL_2;
  }

  if (v10 == *MEMORY[0x1E6977D30])
  {
LABEL_17:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  if (v10 != *MEMORY[0x1E6977D38])
  {
    (*(v6 + 8))(v9, v5);
    goto LABEL_17;
  }

LABEL_2:
  v11 = v1[13];
  v11(v4, *MEMORY[0x1E6977B40], v0);
  v12 = sub_1BF179AFC();
  v13 = v1[1];
  v13(v4, v0);
  if (v12 & 1) != 0 || (v11(v4, *MEMORY[0x1E6977B38], v0), v14 = sub_1BF179AFC(), v13(v4, v0), (v14) || (v11(v4, *MEMORY[0x1E6977B48], v0), v15 = sub_1BF179AFC(), v13(v4, v0), (v15))
  {
    sub_1BF0381A4();
    v17 = v16;
    v18 = *(v16 + 16);
    if (v18 >= *(v16 + 24) >> 1)
    {
      sub_1BF0381A4();
      v17 = v28;
    }

    *(v17 + 16) = v18 + 1;
    *(v17 + 8 * v18 + 32) = 1;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v11(v4, *MEMORY[0x1E6977B50], v0);
  v19 = sub_1BF179AFC();
  v13(v4, v0);
  if (v19)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = *(v17 + 16);
      sub_1BF0381A4();
      v17 = v36;
    }

    v20 = *(v17 + 16);
    if (v20 >= *(v17 + 24) >> 1)
    {
      sub_1BF0381A4();
      v17 = v37;
    }

    *(v17 + 16) = v20 + 1;
    *(v17 + 8 * v20 + 32) = 2;
  }

LABEL_18:
  if (sub_1BF179ABC())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = *(v17 + 16);
      sub_1BF0381A4();
      v17 = v30;
    }

    v21 = *(v17 + 16);
    if (v21 >= *(v17 + 24) >> 1)
    {
      sub_1BF0381A4();
      v17 = v31;
    }

    *(v17 + 16) = v21 + 1;
    *(v17 + 8 * v21 + 32) = 4;
  }

  if (sub_1BF179ACC())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = *(v17 + 16);
      sub_1BF0381A4();
      v17 = v33;
    }

    v22 = *(v17 + 16);
    v23 = v22 + 1;
    if (v22 >= *(v17 + 24) >> 1)
    {
      sub_1BF0381A4();
      v17 = v34;
    }

    *(v17 + 16) = v23;
    *(v17 + 8 * v22 + 32) = 8;
  }

  else
  {
    v23 = *(v17 + 16);
    if (!v23)
    {
      v24 = 0;
      goto LABEL_35;
    }
  }

  v24 = 0;
  v25 = 32;
  do
  {
    v26 = *(v17 + v25);
    if ((v26 & ~v24) == 0)
    {
      v26 = 0;
    }

    v24 |= v26;
    v25 += 8;
    --v23;
  }

  while (v23);
LABEL_35:

  return v24;
}

void sub_1BF0381A4()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_98_0(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_22_3();
    *(v12 + 2) = v3;
    *(v12 + 3) = v13;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = v0 + 32;
  if (v1)
  {
    if (v12 != v0 || &v15[8 * v3] <= v14)
    {
      memmove(v14, v15, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v3);
  }
}

BOOL sub_1BF038278(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v7 = *(v3 + 32);
  *(v3 + 32) = a1;
  os_unfair_lock_unlock(*(v6 + 16));
  if ((a2 & 1) == 0 || v7 != a1)
  {
    sub_1BF16A544(a1);
  }

  return v7 != a1;
}

TeaFoundation::OperationID __swiftcall OperationID.init()()
{
  v1 = v0;
  if (qword_1ED8EF1D8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v2 = 0;
  v3 = off_1ED8EF1E0;
  v4 = *(off_1ED8EF1E0 + 2);
  v5 = off_1ED8EF1E0 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v4)
    {
      v7 = v3[2];
      if (!v7)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v21 = 0;
      MEMORY[0x1BFB547D0](&v21, 8);
      v8 = (v21 * v7) >> 64;
      if (v7 > v21 * v7)
      {
        v9 = -v7 % v7;
        if (v9 > v21 * v7)
        {
          do
          {
            v21 = 0;
            MEMORY[0x1BFB547D0](&v21, 8);
          }

          while (v9 > v21 * v7);
          v8 = (v21 * v7) >> 64;
        }
      }

      if (v8 >= v3[2])
      {
        goto LABEL_18;
      }

      v10 = &v5[16 * v8];
      v12 = *v10;
      v11 = *(v10 + 1);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF038A4C(0, *(v6 + 16) + 1, 1, v6);
        v6 = v16;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1BF038A4C(v13 > 1, v14 + 1, 1, v6);
        v6 = v17;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
    }

    ++v2;
  }

  while (v2 != 16);
  v21 = v6;
  sub_1BF033004(0, &qword_1ED8EE9E0, MEMORY[0x1E69E62F8]);
  sub_1BF038A60();
  v18 = sub_1BF17A2FC();
  *v1 = v18;
  v1[1] = v19;
  result.string._object = v19;
  result.string._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1BF03859C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BF17923C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 temporaryDirectory];

  sub_1BF1791BC();
  v9 = type metadata accessor for DiagnosticAttachmentResolver();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  result = (*(v3 + 32))(v12 + OBJC_IVAR____TtC13TeaFoundation28DiagnosticAttachmentResolver_temporaryDirectory, v6, v2);
  a1[3] = v9;
  a1[4] = &off_1F3DBBD78;
  *a1 = v12;
  return result;
}

uint64_t type metadata accessor for DiagnosticAttachmentResolver()
{
  result = qword_1ED8EB170;
  if (!qword_1ED8EB170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF038734()
{
  result = sub_1BF17923C();
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

uint64_t sub_1BF0387C4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

void *sub_1BF0387D8(uint64_t a1, uint64_t a2)
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

  sub_1BF033004(0, &qword_1ED8EE9A0, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_1BF038864@<X0>(uint64_t *a1@<X8>)
{
  result = Container.TestSuite.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF03888C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_1BF17A23C();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BF038958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_140();
  if (v11)
  {
    OUTLINED_FUNCTION_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_0();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v12 = v9;
  }

  v15 = *(v6 + 2);
  if (v12 <= v15)
  {
    v16 = *(v6 + 2);
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_1BEFEC638(0, v10, a6, MEMORY[0x1E69E6F90]);
    v17 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_15_4();
    *(v17 + 2) = v15;
    *(v17 + 3) = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = v17 + 32;
  v20 = v6 + 32;
  if (v7)
  {
    if (v17 != v6 || &v20[16 * v15] <= v19)
    {
      memmove(v19, v20, 16 * v15);
    }

    *(v6 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_1BF038A60()
{
  result = qword_1ED8EE9D8;
  if (!qword_1ED8EE9D8)
  {
    sub_1BF033004(255, &qword_1ED8EE9E0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EE9D8);
  }

  return result;
}

void sub_1BF038AD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1BF038B6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_58();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_1BF16AF64;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_1BF038AD4(0, qword_1ED8EEA78, sub_1BF038B38, type metadata accessor for Atomic);
  OUTLINED_FUNCTION_14_0();
  swift_allocObject();
  return sub_1BF038C2C(v5, v4);
}

void *sub_1BF038C2C(uint64_t a1, uint64_t a2)
{
  v6 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v2[2] = UnfairLock.init(options:)(&v6);
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t sub_1BF038C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_14_0();
    v6 = swift_allocObject();
    v6[2] = a3;
    v6[3] = a1;
    v6[4] = a2;
    v7 = sub_1BF14FA94;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  sub_1BF17AE6C();
  type metadata accessor for Atomic();
  v9[0] = v7;
  v9[1] = v6;
  return Atomic.__allocating_init(wrappedValue:)(v9);
}

uint64_t sub_1BF038D68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  sub_1BF0330A8(a1, a2, a3, v53);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v42 = v53[5];
  v43 = v53[0];
  v9 = (v53[2] + 64) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v40 = v9;
  v41 = v6;
  while (1)
  {
    v10 = v8;
    v11 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = *(v43 + 48) + 24 * v13;
    v15 = *(v14 + 16);
    v16 = *(*(v43 + 56) + 8 * v13);
    v46 = *v14;
    v47 = v15;
    v48 = v16;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v42(&v49, &v46);

    if (!v52)
    {
LABEL_19:
      sub_1BF003FE8();
    }

    v45 = v52;
    v17 = v49;
    v18 = v50;
    v19 = v51;
    v20 = *v54;
    v22 = sub_1BEFE81F8(v49, v50, v51);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((a4 & 1) == 0)
      {
        sub_1BF039584(0, &qword_1ED8EFD40, MEMORY[0x1E69E6DC8]);
        sub_1BF17B44C();
      }
    }

    else
    {
      v27 = v54;
      sub_1BF039668(v25, a4 & 1);
      v28 = *v27;
      v29 = sub_1BEFE81F8(v17, v18, v19);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_23;
      }

      v22 = v29;
    }

    v44 = (v10 - 1) & v10;
    v31 = *v54;
    if (v26)
    {
      v32 = *(v31[7] + 8 * v22);

      v33 = v31[7];
      v34 = *(v33 + 8 * v22);
      *(v33 + 8 * v22) = v32;
    }

    else
    {
      v31[(v22 >> 6) + 8] |= 1 << v22;
      v35 = (v31[6] + 24 * v22);
      *v35 = v17;
      v35[1] = v18;
      v35[2] = v19;
      *(v31[7] + 8 * v22) = v45;
      v36 = v31[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_22;
      }

      v31[2] = v38;
    }

    a4 = 1;
    v7 = v11;
    v9 = v40;
    v6 = v41;
    v8 = v44;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_19;
    }

    v10 = *(v6 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF039054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_1BF038D68(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_1BF0390C8(char a1)
{
  type metadata accessor for AsyncOperation.State();
  type metadata accessor for Atomic();
  v3 = a1;
  return Atomic.__allocating_init(wrappedValue:)(&v3);
}

uint64_t sub_1BF03912C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  result = sub_1BF033104(a2, *a1, a1[1], a1[2]);
  a2[3] = result;
  return result;
}

uint64_t sub_1BF03917C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = a2();
  v3();
}

uint64_t sub_1BF0391C4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Result();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v16 - v13;
  (*(*(a4 - 8) + 16))(&v16 - v13, a1, a4);
  swift_storeEnumTagMultiPayload();
  a2(v14);
  return (*(v10 + 8))(v14, v7);
}

uint64_t (*sub_1BF039314(uint64_t a1))()
{
  sub_1BF0346F8(2);
  result = sub_1BF03938C();
  if (result)
  {
    v3 = result;
    (result)(a1);

    return sub_1BEFE52DC(v3);
  }

  return result;
}

uint64_t (*sub_1BF03938C())()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v0 + qword_1ED8EF090);

  Atomic.wrappedValue.getter(v7);

  v3 = v7[0];
  if (!v7[0])
  {
    return OUTLINED_FUNCTION_9_3();
  }

  v4 = v7[1];
  OUTLINED_FUNCTION_14_0();
  v5 = swift_allocObject();
  v5[2] = *(v1 + 80);
  v5[3] = v3;
  v5[4] = v4;
  return sub_1BF053D7C;
}

uint64_t sub_1BF03945C()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF039490(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_35(a1, a2);
  toKey<A>(type:name:)();
  v2 = OUTLINED_FUNCTION_0_73();
  sub_1BF02EC84(v2, v3, v4);
}

uint64_t sub_1BF03952C(void *a1, void (*a2)(), uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = sub_1BF0401B8(a1, a2, a3);
  v6();

  return v4;
}

void sub_1BF039584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for BasePoolObject();
    v7 = sub_1BEFEA078();
    v8 = a3(a1, &type metadata for Key, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BF0395F8(uint64_t a1)
{
  v2 = *(a1 + qword_1ED8EF088 + 8);

  v3 = *(a1 + qword_1ED8EEFF8);

  v4 = *(a1 + qword_1ED8EF090);

  v5 = *(a1 + qword_1ED8EF000);
}

uint64_t sub_1BF039668(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1BF039584(0, &unk_1ED8EF490, MEMORY[0x1E69E6EC8]);
  v39 = a2;
  result = sub_1BF17B51C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_35:

LABEL_36:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_1BF1470D8(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 56);
    v21 = (*(v5 + 48) + 24 * v19);
    v22 = *v21;
    v40 = v21[1];
    v23 = v21[2];
    v24 = *(v20 + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v25 = v21[2];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    v26 = *(v8 + 40);
    sub_1BF17BB6C();
    MEMORY[0x1BFB53950](v22);
    if (v23)
    {
      sub_1BF179F3C();
    }

    result = sub_1BF17BB9C();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 24 * v30);
    *v35 = v22;
    v35[1] = v40;
    v35[2] = v23;
    *(*(v8 + 56) + 8 * v30) = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BF03995C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, a1, a2);
  v11 = sub_1BEFE4460(v10, a2);
  (*(v5 + 8))(a1, a2);
  return v11;
}

uint64_t objectdestroy_23Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1BF039AF8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    return v5(a2);
  }

  return result;
}

void AsyncObservable<A>.next(value:quietIfUnchanged:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = *(v0 + 16);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_3_33();
  (*(v7 + 16))(v11, v0 + v14, v6);
  v15 = sub_1BF17A05C();
  (*(v7 + 8))(v11, v6);
  OUTLINED_FUNCTION_4_25();
  (*(v7 + 24))(v0 + v14, v4, v6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v12 + 16));
  if ((v2 & 1) == 0 || (v15 & 1) == 0)
  {
    sub_1BF03A5D8();
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF039CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = *MEMORY[0x1EEE9AC00](a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    v18 = *(v9 + 40);
    (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = v9;
    (*(v7 + 32))(v12 + v11, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    v13 = sub_1BF006210(v18, sub_1BF03AF94, v12);
    v15 = v14;

    result = swift_allocObject();
    *(result + 16) = v13;
    *(result + 24) = v15;
    v16 = sub_1BF006198;
  }

  else
  {
    v16 = 0;
  }

  *a4 = v16;
  a4[1] = result;
  return result;
}

uint64_t sub_1BF039E70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF039EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[4];
  v3 = v2[5];
  return sub_1BF039ECC(a1, v2[2], v2[3], a2);
}

uint64_t sub_1BF039ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1BF17AE6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_1BF179EAC();
  v13 = 1;
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v12, 1, a3);
  (*(v9 + 8))(v12, v8);
  if (a3 == 1)
  {
    (*(*(a2 - 8) + 16))(a4, a1, a2);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v13, 1, a2);
}

void SingleValueStore.init(directoryURL:filename:log:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v69 = v2;
  v70 = v3;
  v71 = *v0;
  sub_1BF00AE78(0);
  v5 = OUTLINED_FUNCTION_68(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v68 = v9 - v8;
  OUTLINED_FUNCTION_12_9();
  v72 = sub_1BF1797FC();
  v10 = OUTLINED_FUNCTION_1(v72);
  v74 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v73 = v15 - v14;
  OUTLINED_FUNCTION_12_9();
  v67 = sub_1BF17AD4C();
  v16 = OUTLINED_FUNCTION_1(v67);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v24 = sub_1BF17AD1C();
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = sub_1BF179BBC();
  v29 = OUTLINED_FUNCTION_68(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  v66 = qword_1ED8EE1E8;
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  sub_1BF179B7C();
  v75 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_13();
  sub_1BF00AEAC(v32, v33);
  sub_1BF00B014(0);
  OUTLINED_FUNCTION_8_10();
  sub_1BF00AEAC(v34, v35);
  sub_1BF17B0BC();
  (*(v18 + 104))(v23, *MEMORY[0x1E69E8090], v67);
  *&v0[v66] = sub_1BF17AD9C();
  v36 = qword_1ED8EE200;
  v75 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v0[v36] = UnfairLock.init(options:)(&v75);
  OUTLINED_FUNCTION_4_0();
  v38 = *(v37 + 152);
  v39 = *(v71 + 80);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  OUTLINED_FUNCTION_4_0();
  v0[*(v44 + 160)] = 0;
  OUTLINED_FUNCTION_4_0();
  v46 = *(v45 + 168);
  *&v1[v46] = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_4_0();
  v48 = *(v47 + 184);
  sub_1BF028120(0);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = &v1[qword_1ED8EE1F0];
  *v53 = 0;
  v53[8] = 1;
  v54 = qword_1ED8EE210;
  v55 = sub_1BF17923C();
  v56 = *(v55 - 8);
  (*(v56 + 16))(&v1[v54], v69, v55);
  __swift_storeEnumTagSinglePayload(&v1[v54], 0, 1, v55);
  v57 = &v1[qword_1ED8EE208];
  *v57 = 0;
  *(v57 + 1) = 0;
  OUTLINED_FUNCTION_5_10(&v1[qword_1ED8EE1F8]);
  sub_1BF0279C0(v70, v68, v58);
  if (__swift_getEnumTagSinglePayload(v68, 1, v72) == 1)
  {
    v59 = v73;
    v60 = v74;
    if (qword_1ED8EDDA8 != -1)
    {
      OUTLINED_FUNCTION_10_14();
    }

    v61 = __swift_project_value_buffer(v72, qword_1ED8F5280);
    (*(v74 + 16))(v73, v61, v72);
    OUTLINED_FUNCTION_0_24();
    sub_1BF00B048(v70, v62);
    (*(v56 + 8))(v69, v55);
    if (__swift_getEnumTagSinglePayload(v68, 1, v72) != 1)
    {
      OUTLINED_FUNCTION_0_24();
      sub_1BF00B048(v68, v63);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1BF00B048(v70, v64);
    (*(v56 + 8))(v69, v55);
    v60 = v74;
    v59 = v73;
    (*(v74 + 32))(v73, v68, v72);
  }

  OUTLINED_FUNCTION_4_0();
  (*(v60 + 32))(&v1[*(v65 + 176)], v59, v72);
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF03A5D8()
{
  v1 = *v0;
  v2 = v0[2];
  UnfairLock.lock()();
  swift_beginAccess();
  v13 = v0[3];
  v3 = *(v1 + 80);
  _s13TeaFoundation8ObserverCMa_0();
  sub_1BF17A65C();
  sub_1BEFF0B78();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v4 = sub_1BF17A38C();

  v14 = v0[3];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v5 = sub_1BF17B31C();
  v6 = v0[3];
  v0[3] = v5;

  os_unfair_lock_unlock(*(v2 + 16));
  v7 = 0;
  v8 = *(v4 + 16);
  for (i = (v4 + 40); ; i += 2)
  {
    if (v8 == v7)
    {

      return;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    ++v7;
    v11 = *(i - 1);
    v10 = *i;

    v11(v12);
  }

  __break(1u);
}

uint64_t sub_1BF03A7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v74[1] = *MEMORY[0x1E69E9840];
  sub_1BF028120(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF17923C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  if (*(a1 + qword_1ED8EE1F0 + 8) == 1)
  {
    sub_1BF0279C0(a1 + qword_1ED8EE210, v6, sub_1BF028120);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1BF00B048(v6, sub_1BF028120);
      v18 = a1 + *(*a1 + 176);
      v19 = sub_1BF1797DC();
      v20 = sub_1BF17ACBC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1BEFE0000, v19, v20, "SingleValueStore failed to determine storage URL", v21, 2u);
        MEMORY[0x1BFB547B0](v21, -1, -1);
      }

      goto LABEL_20;
    }

    (*(v8 + 32))(v17, v6, v7);
  }

  else
  {
    v22 = *(a1 + qword_1ED8EE1F0);
    v23 = *(a1 + *(*a1 + 168));
    v74[0] = 0;
    v24 = [v23 URLForDirectory:v22 inDomain:1 appropriateForURL:0 create:0 error:v74];
    v25 = v74[0];
    if (!v24)
    {
      v55 = v74[0];
      v54 = sub_1BF17911C();

      swift_willThrow();
      goto LABEL_18;
    }

    v26 = v24;
    sub_1BF1791BC();
    v27 = v25;
  }

  v28 = v7;
  if (*(a1 + qword_1ED8EE208 + 8))
  {
    v29 = *(a1 + qword_1ED8EE208);
    sub_1BF17917C();
  }

  v73 = 0;
  v30 = *(a1 + *(*a1 + 168));
  sub_1BF1791DC();
  v31 = sub_1BF17A07C();

  v32 = [v30 fileExistsAtPath:v31 isDirectory:&v73];

  v7 = v28;
  if (v32 && (v73 & 1) != 0)
  {
    goto LABEL_14;
  }

  v33 = sub_1BF17916C();
  v74[0] = 0;
  v34 = [v30 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v74];

  if (!v34)
  {
    v53 = v74[0];
    v54 = sub_1BF17911C();

    swift_willThrow();
    (*(v8 + 8))(v17, v7);
LABEL_18:
    v56 = *(*a1 + 176);
    v57 = v54;
    v19 = sub_1BF1797DC();
    v58 = sub_1BF17ACBC();

    if (!os_log_type_enabled(v19, v58))
    {

      goto LABEL_22;
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138543362;
    v61 = v54;
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 4) = v62;
    *v60 = v62;
    _os_log_impl(&dword_1BEFE0000, v19, v58, "SingleValueStore failed to determine storage URL with error: %{public}@", v59, 0xCu);
    sub_1BF00B048(v60, sub_1BF082F84);
    MEMORY[0x1BFB547B0](v60, -1, -1);
    MEMORY[0x1BFB547B0](v59, -1, -1);

LABEL_20:
LABEL_22:
    v63 = v72;
    v64 = 1;
    goto LABEL_25;
  }

  v35 = v74[0];
LABEL_14:
  v36 = *(a1 + qword_1ED8EE1F8);
  v37 = *(a1 + qword_1ED8EE1F8 + 8);
  v38 = v15;
  sub_1BF17918C();
  v39 = *(*a1 + 176);
  (*(v8 + 16))(v12, v15, v7);
  v40 = sub_1BF1797DC();
  v41 = v8;
  v42 = sub_1BF17ACDC();
  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v71 = v38;
    v44 = v43;
    v45 = swift_slowAlloc();
    v74[0] = v45;
    *v44 = 136446210;
    v46 = sub_1BF1791DC();
    v48 = v47;
    v70 = v41;
    v49 = v12;
    v50 = *(v41 + 8);
    v50(v49, v7);
    v51 = sub_1BF01A7AC(v46, v48, v74);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_1BEFE0000, v40, v42, "SingleValueStore storage URL: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1BFB547B0](v45, -1, -1);
    v52 = v44;
    v38 = v71;
    MEMORY[0x1BFB547B0](v52, -1, -1);

    v50(v17, v7);
    v41 = v70;
  }

  else
  {

    v65 = *(v41 + 8);
    v65(v12, v7);
    v65(v17, v7);
  }

  v66 = v72;
  (*(v41 + 32))(v72, v38, v7);
  v63 = v66;
  v64 = 0;
LABEL_25:
  result = __swift_storeEnumTagSinglePayload(v63, v64, 1, v7);
  v68 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AsyncObservable.__deallocating_deinit()
{
  AsyncObservable.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *AsyncObservable.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  OUTLINED_FUNCTION_29();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v4 + 104)]);
  return v0;
}

uint64_t sub_1BF03AFCC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    v5 = *(a1 + 32);
    result = (*(a1 + 24))(a2);
    if (*(a1 + 48) == 1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t DisposableBag.init(disposeOn:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_10();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SingleValueStore.storedValue.getter()
{
  v1 = v0;
  v2 = *v0;
  v7 = *(v1 + qword_1ED8EE200);
  v3 = type metadata accessor for UnfairLock();
  v4 = *(v2 + 80);
  v5 = sub_1BF17AE6C();

  Lock.sync<A>(_:)(sub_1BF03BB7C, v1, v3, v5, &protocol witness table for UnfairLock);
}

uint64_t sub_1BF03B174()
{
  v1 = v0;
  v42 = *v0;
  v2 = *(v42 + 80);
  v3 = sub_1BF17AE6C();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  sub_1BF028120(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF17923C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF03BE14(v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_1BF00B048(v11, sub_1BF028120);
  }

  v41 = v3;
  (*(v13 + 32))(v16, v11, v12);
  v18 = *(v0 + *(*v0 + 168));
  sub_1BF1791DC();
  v19 = v13;
  v20 = sub_1BF17A07C();

  v21 = [v18 fileExistsAtPath_];

  if (!v21)
  {
    return (*(v19 + 8))(v16, v12);
  }

  v40 = v19;
  v22 = sub_1BF178CAC();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1BF178C9C();
  sub_1BF1791DC();
  v25 = sub_1BF17A07C();

  v26 = [v18 contentsAtPath_];

  if (v26)
  {
    v39 = v16;
    v27 = sub_1BF17935C();
    v29 = v28;

    v30 = *(v42 + 88);
    sub_1BF178C8C();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v2);
    v31 = *(*v1 + 152);
    swift_beginAccess();
    (*(v43 + 40))(v1 + v31, v7, v41);
    swift_endAccess();
    v32 = *(*v1 + 176);

    v33 = sub_1BF1797DC();
    v34 = sub_1BF17ACDC();

    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1BF01A7AC(*(v1 + qword_1ED8EE1F8), *(v1 + qword_1ED8EE1F8 + 8), &v44);
      _os_log_impl(&dword_1BEFE0000, v33, v34, "SingleValueStore loaded saved entry from %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFB547B0](v37, -1, -1);
      MEMORY[0x1BFB547B0](v36, -1, -1);
    }

    sub_1BF014E18(v27, v29);

    return (*(v40 + 8))(v39, v12);
  }

  else
  {
    (*(v40 + 8))(v16, v12);
  }
}

uint64_t Stack.push(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2);
  sub_1BF17A65C();
  return sub_1BF17A5DC();
}

uint64_t sub_1BF03B8FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  v6 = *(*a1 + 160);
  if ((*(a1 + v6) & 1) == 0)
  {
    sub_1BF03B174();
    *(a1 + v6) = 1;
    v4 = *a1;
  }

  v7 = *(v4 + 152);
  swift_beginAccess();
  v8 = *(v5 + 80);
  v9 = sub_1BF17AE6C();
  return (*(*(v9 - 8) + 16))(a2, a1 + v7, v9);
}

id DiagnosticFileCollectionCoordinator.init(resolver:diagnosticFileCollectionNotificationName:diagnosticFilesNotificationName:logger:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  sub_1BEFE6A78(a1, &v7[OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_resolver]);
  v13 = &v7[OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_diagnosticFilesNotificationName];
  *v13 = a4;
  *(v13 + 1) = a5;
  v14 = OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_logger;
  v15 = sub_1BF1797FC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v7[v14], a6, v15);
  v21.receiver = v7;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  v19 = sub_1BF17A07C();

  CFNotificationCenterAddObserver(v18, v17, sub_1BF0D8B24, v19, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  (*(v16 + 8))(a6, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return v17;
}

uint64_t sub_1BF03BBBC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t EventLoadedLazy.__allocating_init(eventManager:event:options:loadBlock:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = *(v3 + 280);
  sub_1BF00CCEC(v7, v7);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = *(v7 - 8);
  v12 = *(v11 + 72);
  v13 = *(v11 + 80);
  swift_allocObject();
  sub_1BF17A50C();
  (*(v11 + 16))(v14, a2, v7);
  OUTLINED_FUNCTION_26_11();
  sub_1BF00CD7C();
  if (sub_1BF17A5AC())
  {
    v15 = *(v3 + 288);
    v16 = OUTLINED_FUNCTION_26_11();
    v19 = sub_1BF02C7D0(v16, v17, v18);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CD0];
  }

  v22 = v6;
  v23 = v19;
  v24 = 1;
  v20 = EventLoadedLazy.__allocating_init(eventManager:event:options:loadBlock:)(a1, &v23, &v22);
  (*(v11 + 8))(a2, v7);
  return v20;
}

{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  EventLoadedLazy.init(eventManager:event:options:loadBlock:)(a1, a2, a3);
  return v9;
}

uint64_t sub_1BF03BD5C(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t))
{
  v11[3] = swift_getObjectType();
  v11[0] = a1;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = *(v7 + 72);
  swift_unknownObjectRetain();
  v9 = v8(v6, v7);
  a3(v11, v9);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1BF03BE14@<X0>(uint64_t a1@<X8>)
{
  sub_1BF027464(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = *(*v1 + 184);
  swift_beginAccess();
  sub_1BF0279C0(v1 + v10, v9, sub_1BF027464);
  sub_1BF028120(0);
  v12 = v11;
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    return sub_1BF05DE4C(v9, a1);
  }

  sub_1BF00B048(v9, sub_1BF027464);
  sub_1BF03A7A8(v1, a1);
  sub_1BF0279C0(a1, v7, sub_1BF028120);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1BF03C310(v7, v1 + v10);
  return swift_endAccess();
}

void *EventLoadedLazy.init(eventManager:event:options:loadBlock:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  v6 = *v3;
  v7 = *a2;
  v8 = *(a2 + 8);
  v16 = *a3;
  v9 = v6;

  Lazy.init(options:loadBlock:)();
  v10 = *(v5 + 288);
  if (v8)
  {
    v11 = 11;
  }

  else
  {
    v11 = 7;
  }

  v16 = v11;
  v12 = swift_allocObject();
  v15 = *(v9 + 272);
  swift_weakInit();

  v13 = swift_allocObject();
  *(v13 + 16) = v15;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;

  sub_1BEFFAB94(v7, &v16, sub_1BF058058, v13);

  return v4;
}

uint64_t sub_1BF03C13C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF03C174()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF03C250(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1BF17B84C();
  (*(a3 + 16))(a3, v5, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF03C2C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF03C310(uint64_t a1, uint64_t a2)
{
  sub_1BF027464(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ObservableProperty.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_24_13();
  v5 = *(v4 + 96);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_24_13();
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 24))(&v1[v5], a1, v7);
  swift_endAccess();
  sub_1BF03C44C();
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_1BF03C44C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BF179B5C();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BF179BBC();
  v29 = *(v31 - 8);
  v6 = *(v29 + 64);
  v7 = MEMORY[0x1EEE9AC00](v31);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *(v2 + 96);
  swift_beginAccess();
  v18 = *(v11 + 16);
  v18(v16, &v1[v17], v10);
  if ([objc_opt_self() isMainThread])
  {
    sub_1BF03C9AC(v16);
  }

  else
  {
    sub_1BEFF6E88();
    v28 = sub_1BF17AD5C();
    v19 = swift_allocObject();
    swift_weakInit();
    v18(v14, v16, v10);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v10;
    *(v21 + 24) = v19;
    (*(v11 + 32))(v21 + v20, v14, v10);
    aBlock[4] = sub_1BF150D4C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF0058CC;
    aBlock[3] = &block_descriptor_16;
    v22 = _Block_copy(aBlock);

    sub_1BF179B8C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
    sub_1BF027D54(0);
    sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54);
    v23 = v30;
    v24 = v33;
    sub_1BF17B0BC();
    v25 = v28;
    MEMORY[0x1BFB52B50](0, v9, v23, v22);
    _Block_release(v22);

    (*(v32 + 8))(v23, v24);
    (*(v29 + 8))(v9, v31);
  }

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_1BF03C8C8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF03C8FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

uint64_t sub_1BF03C9AC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v3 + 80);
  swift_getFunctionTypeMetadata1();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF17A4EC();
  v12 = v6;
  if (v6 == sub_1BF17A5AC())
  {
  }

  while (1)
  {
    v7 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = v4 + 32 + 16 * v6;
    v10 = *v8;
    v9 = *(v8 + 8);

    sub_1BF17A62C();
    v10(a1);

    v6 = v12;
    if (v12 == sub_1BF17A5AC())
    {
    }
  }

  result = sub_1BF17B23C();
  __break(1u);
  return result;
}

void sub_1BF03CB58()
{
  OUTLINED_FUNCTION_97_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v19 = v9;
  v10 = *v0;
  sub_1BF17A65C();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise();
  v11 = *(v0[2] + 16);

  v12 = sub_1BF0057E8();
  v13 = *(v10 + 80);
  v14 = v4(v12, v13, v6);
  v15 = OUTLINED_FUNCTION_36();
  v2(v15);
  OUTLINED_FUNCTION_46();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v6;
  v16[4] = v12;
  v16[5] = v19;
  v16[6] = v8;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v14(v17);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v12 + 16))
  {
    v18 = *(v12 + 16);

    OUTLINED_FUNCTION_96();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1BF03CCC8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF03CD40(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t Accessor.__deallocating_deinit()
{
  Accessor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t Accessor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1BF03CE4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v11[2] = a5;
  v12 = *(*(v8 + 80) + 16);
  v13 = a6;
  v14 = a3;
  v15 = a4;
  v9 = sub_1BEFE6EA8(0, &qword_1ED8EFD30);
  *&v16 = sub_1BF03CFB4(sub_1BF031230, v11, a5, v12, v9, a6, MEMORY[0x1E69E7288], &v16);
  DeferredPromise.resolve(_:)();
}

uint64_t sub_1BF03CFB4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a8;
  v9 = v8;
  v84 = a2;
  v85 = a4;
  v83 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v78 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_59();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v71 = a5;
  v72 = &v66 - v20;
  v69 = *(a5 - 8);
  v21 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_1();
  v81 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v79 = &v66 - v25;
  v26 = sub_1BF17AE6C();
  v27 = OUTLINED_FUNCTION_1(v26);
  v67 = v28;
  v68 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_1();
  v33 = v31 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v66 - v36;
  v38 = *(*(a4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_1();
  v80 = v39 - v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_3();
  v77 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_0();
  v76 = v47 - v46;
  v75 = a6;
  v86 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(v86);
  v73 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v66 - v52;
  v54 = sub_1BF17A33C();
  v87 = sub_1BF17B39C();
  v82 = sub_1BF17B3AC();
  sub_1BF17B34C();
  (*(v77 + 16))(v76, v74, a3);
  v85 = v53;
  v77 = a3;
  result = sub_1BF17A32C();
  if (v54 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v54)
  {
    v56 = (v78 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1BF17AF0C();
      result = __swift_getEnumTagSinglePayload(v37, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v83(v37, v79);
      if (v9)
      {
        v64 = OUTLINED_FUNCTION_3_12();
        v65(v64);

        (*(v69 + 32))(v70, v79, v71);
        return (*v56)(v37, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v56)(v37, AssociatedTypeWitness);
      sub_1BF17B38C();
      if (!--v54)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v57 = (v78 + 32);
  v58 = (v78 + 8);
  v59 = v72;
  while (1)
  {
    sub_1BF17AF0C();
    if (__swift_getEnumTagSinglePayload(v33, 1, AssociatedTypeWitness) == 1)
    {
      v60 = OUTLINED_FUNCTION_3_12();
      v61(v60);
      (*(v67 + 8))(v33, v68);
      return v87;
    }

    (*v57)(v59, v33, AssociatedTypeWitness);
    v83(v59, v81);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v58)(v59, AssociatedTypeWitness);
    sub_1BF17B38C();
  }

  (*v58)(v59, AssociatedTypeWitness);
  v62 = OUTLINED_FUNCTION_3_12();
  v63(v62);

  return (*(v69 + 32))(v70, v81, v71);
}

uint64_t sub_1BF03D5B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = *(v4 + 80);
  *(v8 + 24) = v9;
  (*(v5 + 32))(v8 + v7, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1BF014EDC(v9, TupleTypeMetadata2);
  Promise.then<A>(on:closure:)();
  v13 = v12;

  return v13;
}

uint64_t sub_1BF03D744(uint64_t a1)
{
  OUTLINED_FUNCTION_77_2(a1, *(v1 + 16));
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v1 + v4);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1BF03D7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a5, a2, a3);
  return (*(*(a4 - 8) + 16))(a5 + v10, a1, a4);
}

void TaskScheduler.scheduleLowPriority<A>(_:)()
{
  v1 = *(v0 + 32);
  type metadata accessor for AsyncBlockOperation();

  v2 = AsyncBlockOperation.__allocating_init(_:)();
  [v1 addOperation_];
}

void static TaskScheduler.scheduleLowPriority<A>(_:)()
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  TaskScheduler.scheduleLowPriority<A>(_:)();
}

id AsyncBlockOperation.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_76();
  v3 = objc_allocWithZone(v1);
  return AsyncBlockOperation.init(_:)(v2, v0);
}

id sub_1BF03D9CC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[*a3];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1BF03DA2C()
{
  v2 = *(v0 + 80);
  Promise.__allocating_init(resolver:)();
  OUTLINED_FUNCTION_66();

  return v0;
}

uint64_t Promise.__allocating_init(block:)()
{
  return sub_1BF03DA2C();
}

{
  return sub_1BF03DA2C();
}

uint64_t Promise.__allocating_init(resolver:)()
{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  OUTLINED_FUNCTION_42();
  Promise.init(resolver:)();
  return v0;
}

{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  OUTLINED_FUNCTION_42();
  Promise.init(resolver:)();
  return v0;
}

uint64_t sub_1BF03DAD4(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  a1(v13);
  return (*(v9 + 8))(v13, a7);
}

void Promise.error<A>(on:disposeOn:closure:)()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_122();
  v5 = v4;
  v6 = *v0;
  v7 = v0[2];
  OUTLINED_FUNCTION_27();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_46();
  v9 = swift_allocObject();
  v10 = *(v6 + 80);
  v9[2] = v10;
  v9[3] = v1;
  v9[4] = v8;
  v9[5] = v3;
  v9[6] = v2;
  OUTLINED_FUNCTION_58();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v1;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v5(v12);

  OUTLINED_FUNCTION_26_2();
}

unint64_t sub_1BF03DD6C()
{
  result = qword_1ED8EDCE8;
  if (!qword_1ED8EDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDCE8);
  }

  return result;
}

unint64_t sub_1BF03DDC4()
{
  result = qword_1ED8EDCE0;
  if (!qword_1ED8EDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDCE0);
  }

  return result;
}

uint64_t sub_1BF03DE18(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)())
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    OUTLINED_FUNCTION_14_0();
    v13 = swift_allocObject();
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = v12;

    sub_1BF000E90(v12, 0);
    sub_1BF006210(a3, a7, v13);
    OUTLINED_FUNCTION_31_0();

    (a7)(v14);
  }

  return result;
}

uint64_t sub_1BF03DF18(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (*(a3 + 8))
  {
    a1.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    a1.n128_u64[0] = *a3;
  }

  return v4(a1);
}

uint64_t sub_1BF03DF58(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[10];
  v4 = a3[11];
  v5 = a3[12];
  - infix<A, B>(_:_:)();
  sub_1BF17A65C();
  swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {

    sub_1BF179E9C();
    swift_getTupleTypeMetadata2();
    type metadata accessor for Promise();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    swift_getTupleTypeMetadata2();
    sub_1BF17A56C();
    sub_1BF179DAC();
    return Promise.__allocating_init(value:)();
  }

  else
  {
    sub_1BF179E9C();
    swift_getTupleTypeMetadata2();
    v7 = type metadata accessor for Promise();
    MEMORY[0x1EEE9AC00](v7);
    v6 = Promise.__allocating_init(resolver:)();
  }

  return v6;
}

uint64_t sub_1BF03E1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(char *, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = swift_allocObject();
  v19 = a5[10];
  v20 = a5[11];
  v18[2] = v19;
  v18[3] = v20;
  v21 = a5[12];
  v18[4] = v21;
  v18[5] = a1;
  v18[6] = a2;

  sub_1BF03E448(a6, a7, a8, a9, a10, a11, a12, a13);
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v21;
  v22[5] = sub_1BF041A78;
  v22[6] = v18;
  v22[7] = a14;
  v23 = sub_1BF179E9C();

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v24 = sub_1BF014EDC(v23, MEMORY[0x1E69E7CA8] + 8);
  Promise.then<A>(on:closure:)();

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v20;
  v25[4] = v21;
  v25[5] = a15;
  v25[6] = a14;
  v25[7] = sub_1BF041A78;
  v25[8] = v18;
  v25[9] = a3;
  v25[10] = a4;
  v26 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if (v26 != -1)
  {
    swift_once();
  }

  sub_1BEFF77FC();
}

uint64_t sub_1BF03E3F8()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BF03E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t), uint64_t a8)
{
  v30 = a1;
  v15 = v8[10];
  sub_1BF17A65C();
  v16 = v8[12];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v30 = sub_1BF17A9BC();
  v17 = v8[11];
  v22 = v15;
  v23 = v17;
  v24 = v16;
  v25 = a2;
  v26 = a3;
  v27 = a1;
  v28 = a4;
  v29 = a5;
  v18 = PromiseDeduper.promise(key:loggingKey:createBlock:)(&v30, a7, a8, sub_1BF03E554, v21);

  return v18;
}

uint64_t sub_1BF03E568(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1(a3);
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a4;
  v13[6] = a5;
  v14 = sub_1BF179E9C();

  v15 = sub_1BF014EDC(v14, v14);
  Promise.then<A>(on:closure:)();
  v17 = v16;

  return v17;
}

void sub_1BF03E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_32();
  v55 = v24;
  v56 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v61 = v32;
  v62 = v31;
  v59 = v33;
  v34 = *v22;
  OUTLINED_FUNCTION_2_3();
  v36 = v35;
  v38 = *(v37 + 64);
  v60 = a22;
  v57 = a21;
  MEMORY[0x1EEE9AC00](v39);
  v40 = (v54 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for DeferredPromise();
  v58 = v22[2];
  v41 = *(v58 + 16);

  v42 = sub_1BF0057E8();
  v43 = *(v34 + 80);
  v44 = v26(v42, v43, v28);
  v54[1] = v45;
  v54[2] = v44;
  v46 = OUTLINED_FUNCTION_36();
  v55 = v55(v46);
  (*(v36 + 16))(v40, v56, v30);
  v47 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v48 = (v38 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 2) = v43;
  *(v49 + 3) = v30;
  *(v49 + 4) = v28;
  *(v49 + 5) = v42;
  (*(v36 + 32))(&v49[v47], v40, v30);
  v50 = &v49[v48];
  v51 = v61;
  *v50 = v59;
  *(v50 + 1) = v51;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v40(v52);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v42 + 16))
  {
    v53 = *(v42 + 16);

    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1BF03E908(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF03E980(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

void sub_1BF03E9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  v15[2] = a8;
  v15[3] = a9;
  v15[4] = a10;
  v15[5] = a1;
  v15[6] = a2;

  a5(a7);
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = sub_1BF041720;
  v16[6] = v15;
  v16[7] = a7;
  sub_1BF179E9C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v17 = sub_1BF041694();
  Promise.always(on:closure:)(v17, sub_1BF0416F0, v16);
}

uint64_t sub_1BF03EB60(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v48 = a1;
  v49 = v3;
  v4 = *(v2 + 80);
  v52 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v52);
  v47 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_59();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = *(v4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = sub_1BF179C5C();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v26 = (&v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF6E88();
  *v26 = sub_1BF17AD5C();
  (*(v22 + 104))(v26, *MEMORY[0x1E69E8020], v19);
  v27 = sub_1BF179C8C();
  result = (*(v22 + 8))(v26, v19);
  if (v27)
  {
    v29 = v48;
    v50 = *(v12 + 16);
    v51 = v12 + 16;
    v50(v16, v48, v4);
    swift_beginAccess();
    v30 = *(v49 + 88);
    sub_1BF17A9AC();
    sub_1BF17A94C();
    (*(v12 + 8))(v18, v4);
    swift_endAccess();
    v56 = v4;
    v57 = v4;
    v58 = v30;
    v59 = v30;
    type metadata accessor for EventManager.EventTrigger();
    v56 = sub_1BF179CFC();
    v55 = sub_1BF179CFC();
    v31 = sub_1BF03F108();
    v32 = sub_1BF17A4EC();
    v54 = v32;
    if (v32 != sub_1BF17A5AC())
    {
      v35 = (v47 + 8);
      v49 = v31;
      do
      {
        v36 = sub_1BF17A58C();
        sub_1BF17A51C();
        if (v36)
        {
          v37 = *(v31 + 32 + 8 * v32);
        }

        else
        {
          v37 = sub_1BF17B23C();
        }

        sub_1BF17A62C();
        v50(v11, v29, v4);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v4);
        v38 = sub_1BEFFAEDC(v37, v11);
        (*v35)(v11, v52);
        if (v38 & 1) != 0 && (v53 = v37, sub_1BF17A65C(), , sub_1BF17A5DC(), (*(v37 + 16)))
        {
        }

        else
        {
          v53 = v37;
          sub_1BF17A65C();
          sub_1BF17A5DC();
        }

        v39 = sub_1BF17A5AC();
        v32 = v54;
      }

      while (v54 != v39);
    }

    sub_1BF03F140(v56);
    v33 = v55;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v34 = sub_1BF17A4EC();

    v54 = v34;
    if (v34 != sub_1BF17A5AC())
    {
      do
      {
        v40 = sub_1BF17A58C();
        sub_1BF17A51C();
        if (v40)
        {
          v41 = *(v33 + 32 + 8 * v34);
        }

        else
        {
          v41 = sub_1BF17B23C();
        }

        sub_1BF17A62C();
        v43 = *(v41 + 32);
        v42 = *(v41 + 40);

        v43(v44);

        v45 = sub_1BF17A5AC();
        v34 = v54;
      }

      while (v54 != v45);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF03F108()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF03F140(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void + infix<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v72 = v0;
  v81 = v2;
  v82 = v1;
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_25_7();
  v9 = OUTLINED_FUNCTION_68(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v71 = v65 - v12;
  OUTLINED_FUNCTION_2_3();
  v67 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v69 = v18 - v17;
  OUTLINED_FUNCTION_2_3();
  v66 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_14_1();
  v76 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_16();
  v79 = v29;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_21();
  v78 = v32;
  v83 = v7;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v33 = v31;
    v34 = sub_1BF17B47C();
    v35 = v33;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = v34 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    v36 = v5 + 64;
    v40 = *(v5 + 64);
    OUTLINED_FUNCTION_18_0();
    v38 = v41 & v42;
    v39 = v5;
  }

  v43 = (v66 + 32);
  v44 = (v67 + 32);
  v45 = (v37 + 64) >> 6;
  v65[2] = v66 + 16;
  v65[0] = v37;
  v65[1] = v67 + 16;
  v73 = (v35 + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v46 = 0;
  v70 = v25;
  v68 = v3;
  v75 = v36;
  v77 = v39;
  v47 = v38;
  while (1)
  {
    v74 = v47;
    v80 = v46;
    if ((v39 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1BF17B48C())
    {
      v58 = 1;
      v36 = v47;
      v50 = v79;
      v49 = v80;
      goto LABEL_16;
    }

    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v55 = v69;
    v56 = v81;
    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v48 = v80;
    v36 = v47;
LABEL_15:
    v57 = *(v68 + 48);
    v3 = v68;
    v50 = v79;
    (*v43)();
    (*v44)((v50 + v57), v55, v56);
    v58 = 0;
    v49 = v48;
LABEL_16:
    v51 = v78;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v50, v58, 1, v3);
    (*v73)(v51, v50, v76);
    if (__swift_getEnumTagSinglePayload(v51, 1, v3) == 1)
    {
      sub_1BF003FE8();
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v59 = *(v3 + 48);
    v25 = v70;
    (*v43)(v70, v51, v82);
    v60 = v51 + v59;
    v61 = v81;
    (*v44)(v71, v60, v81);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
    sub_1BF179E9C();
    sub_1BF179EBC();
    v46 = v49;
    v47 = v36;
    v36 = v75;
    v39 = v77;
  }

  v48 = v46;
  if (v47)
  {
LABEL_12:
    OUTLINED_FUNCTION_21_8();
    v53 = v52 | (v48 << 6);
    (*(v66 + 16))(v25, *(v39 + 48) + *(v66 + 72) * v53, v82);
    v54 = *(v39 + 56) + *(v67 + 72) * v53;
    v55 = v69;
    v56 = v81;
    (*(v67 + 16))(v69, v54, v81);
    goto LABEL_15;
  }

  v49 = v46;
  v51 = v78;
  v50 = v79;
  while (1)
  {
    v48 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v48 >= v45)
    {
      v36 = 0;
      v58 = 1;
      goto LABEL_17;
    }

    ++v49;
    if (*(v36 + 8 * v48))
    {
      v39 = v77;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1BF03F6B0(uint64_t a1, uint64_t (*a2)(uint64_t, void, char *, void, void, void, void))
{
  v3 = *(*(v2 + 3) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = &v2[(*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8];
  return a2(a1, *(v2 + 5), &v2[v4], *v5, *(v5 + 1), *(v2 + 2), *(v2 + 4));
}

uint64_t sub_1BF03F724(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v3 + 16))(v7, v10, v2);
  sub_1BF17A3EC();
  DeferredPromise.resolve(_:)();
  return (*(v3 + 8))(v9, v2);
}

uint64_t objectdestroy_74Tm()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_3();
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 48) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 40);

  v7 = OUTLINED_FUNCTION_92();
  v8(v7);
  v9 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t static Manager.fetch(keys:cachePolicy:fetchWith:readCacheWithAge:writeCacheWith:deduper:options:loggingKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, void (*a11)(char *, uint64_t, uint64_t), uint64_t a12)
{
  v13 = v12;
  v51 = *a2;
  v19 = *(a2 + 8);
  v48 = *a10;
  v53 = a1;
  v20 = *(v12 + 80);
  sub_1BF17A65C();
  swift_getWitnessTable();
  v21 = sub_1BF17AB6C();
  if (v21)
  {
    if (qword_1ED8EF4B0 != -1)
    {
      OUTLINED_FUNCTION_0_74();
    }

    v22 = sub_1BF1797FC();
    __swift_project_value_buffer(v22, qword_1ED8F52B0);
    v23 = sub_1BF1797DC();
    v24 = sub_1BF17ACDC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BEFE0000, v23, v24, "Manager will not fetch because no keys were specified", v25, 2u);
      MEMORY[0x1BFB547B0](v25, -1, -1);
    }

    v27 = *(v13 + 88);
    v26 = *(v13 + 96);
    sub_1BF179E9C();
    type metadata accessor for Promise();
    swift_getTupleTypeMetadata2();
    sub_1BF17A56C();
    v53 = sub_1BF179DAC();
    return Promise.__allocating_init(value:)();
  }

  v47 = a8;
  if (a12)
  {
    v46 = a6;
    if (qword_1ED8EF4B0 != -1)
    {
      OUTLINED_FUNCTION_0_74();
    }

    v29 = sub_1BF1797FC();
    __swift_project_value_buffer(v29, qword_1ED8F52B0);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v30 = sub_1BF1797DC();
    v31 = sub_1BF17ACDC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v32 = 136315394;
      v52 = v45;
      v53 = v51;
      v54 = v19;
      v33 = CachePolicy.description.getter();
      v35 = sub_1BF01A7AC(v33, v34, &v52);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_1BF01A7AC(a11, a12, &v52);
      _os_log_impl(&dword_1BEFE0000, v30, v31, "Manager will fetch using %s: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v45, -1, -1);
      MEMORY[0x1BFB547B0](v32, -1, -1);
    }

    a6 = v46;
  }

  if (!v19)
  {
    v41 = 0;
    goto LABEL_18;
  }

  if (v19 != 1 && (v51 - 2) >= 2)
  {
    if (!v51)
    {
      return sub_1BF03E448(a1, a3, a4, a7, v47, a9, a11, a12);
    }

    v51 = 0;
    v41 = 1;
LABEL_18:
    v53 = v51;
    v54 = v41;
    return a5(a1, &v53);
  }

  MEMORY[0x1EEE9AC00](v21);
  v43 = *(v13 + 88);
  v44 = *(v13 + 96);
  v36 = sub_1BF179E9C();
  firstly<A>(closure:)(sub_1BF03FF54);
  v37 = swift_allocObject();
  *(v37 + 16) = v13;
  *(v37 + 24) = a1;
  *(v37 + 32) = v51;
  *(v37 + 40) = v19;
  *(v37 + 48) = a3;
  *(v37 + 56) = a4;
  *(v37 + 64) = a5;
  *(v37 + 72) = a6;
  *(v37 + 80) = a7;
  *(v37 + 88) = v47;
  *(v37 + 96) = a9;
  *(v37 + 104) = v48;
  *(v37 + 112) = a11;
  *(v37 + 120) = a12;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v38 = sub_1BF014EDC(v36, v36);
  Promise.then<A>(on:closure:)();
  v40 = v39;

  return v40;
}

uint64_t sub_1BF03FEF4()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1BF03FF54(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1BF03FFA4(*(v1 + 40), *(v1 + 48), *(v1 + 56), a1, *(v1 + 64), *(v1 + 72));
}

uint64_t sub_1BF03FFA4(unint64_t a1, unsigned __int8 a2, uint64_t (*a3)(uint64_t, _BOOL8 *, __n128), __n128 a4, uint64_t a5, uint64_t a6)
{
  if (a2 >= 2u)
  {
    v7 = a1 > 2;
    v8 = 1;
    return a3(a6, &v7, a4);
  }

  a4.n128_u64[0] = a1;
  if (*&a1 > 0.0)
  {
    v7 = a1;
    v8 = 0;
    return a3(a6, &v7, a4);
  }

  sub_1BF179E9C();
  type metadata accessor for Promise();
  sub_1BF179CEC();
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF040080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1BFB51C20](*a1, a4, a5, a6);
  sub_1BF179E9C();
  v7 = type metadata accessor for Promise();
  if (v6)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    return Promise.__allocating_init(value:)();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    return Promise.__allocating_init(resolver:)();
  }
}

void (*sub_1BF0401B8(void *a1, void (*a2)(), uint64_t a3))()
{
  v7 = *(v3 + 16);
  UnfairLock.lock()();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = a1;

  sub_1BF040820();
  v11 = v10;
  v13 = v12;

  os_unfair_lock_unlock(*(v7 + 16));
  v14 = nullsub_1;
  if (v13 < 2u)
  {
    goto LABEL_4;
  }

  if (v13 == 2)
  {
    v14 = sub_1BF006210(v9, a2, a3);
LABEL_4:
    sub_1BF043E18(v11, v13);
  }

  return v14;
}

uint64_t sub_1BF0407B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *a1;
  v15 = a13;
  return sub_1BF040E54(a3, v13, a3, a6, a7, a8, a9, a10, a11, a12, &v15);
}

void static Cache.+= infix(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v79 = *(v0 + 88);
  type metadata accessor for CacheEntry();
  OUTLINED_FUNCTION_12_1();
  v68 = v5;
  v6 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_68(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_30();
  v67 = v10;
  OUTLINED_FUNCTION_2_3();
  v66 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_2();
  v78 = v15;
  v69 = v0;
  v16 = *(v0 + 80);
  OUTLINED_FUNCTION_2_3();
  v65 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_2();
  v77 = v21;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_1();
  v73 = v22;
  v72 = sub_1BF17AE6C();
  v23 = OUTLINED_FUNCTION_1(v72);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_1();
  v75 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_21();
  v74 = v31;
  v63 = *(v4 + 24);
  UnfairLock.lock()();
  if ((v2 & 0xC000000000000001) != 0)
  {
    v32 = sub_1BF17B47C();
    v64 = 0;
    v33 = 0;
    v34 = 0;
    v35 = v32 | 0x8000000000000000;
  }

  else
  {
    v36 = -1 << *(v2 + 32);
    v37 = *(v2 + 64);
    v64 = v2 + 64;
    OUTLINED_FUNCTION_18_0();
    v34 = v38 & v39;
    v35 = v2;
  }

  v40 = (v65 + 32);
  v41 = (v66 + 32);
  v42 = (v33 + 64) >> 6;
  v70 = (v25 + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v43 = 0;
  v76 = v16;
  v71 = v35;
  v44 = v34;
  while ((v35 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF17B48C())
    {
      v56 = 1;
      v62 = v44;
      v47 = v43;
      v80 = v62;
      v52 = v73;
      v48 = v75;
      goto LABEL_15;
    }

    sub_1BF17B82C();
    swift_unknownObjectRelease();
    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v46 = v43;
    v80 = v44;
LABEL_14:
    v52 = v73;
    v53 = *(v73 + 48);
    v48 = v75;
    (*v40)();
    v54 = *v41;
    OUTLINED_FUNCTION_17_11();
    v55();
    v56 = 0;
    v47 = v46;
LABEL_15:
    v49 = v74;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v48, v56, 1, v52);
    (*v70)(v49, v48, v72);
    if (__swift_getEnumTagSinglePayload(v49, 1, v52) == 1)
    {
      sub_1BF003FE8();
      os_unfair_lock_unlock(*(v63 + 16));
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v57 = *(v52 + 48);
    v16 = v76;
    (*v40)(v77, v49, v76);
    (*v41)(v78, v49 + v57, v79);
    sub_1BF01BEC4(v78, v79, v67);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v68);
    OUTLINED_FUNCTION_7_2();
    v61 = *(v69 + 96);
    OUTLINED_FUNCTION_17_11();
    sub_1BF179E9C();
    sub_1BF179EBC();
    swift_endAccess();
    v43 = v47;
    v44 = v80;
    v35 = v71;
  }

  v45 = v44;
  v46 = v43;
  if (v44)
  {
LABEL_11:
    OUTLINED_FUNCTION_22_9(v45);
    v51 = v50 | (v46 << 6);
    (*(v65 + 16))(v77, *(v35 + 48) + *(v65 + 72) * v51, v16);
    (*(v66 + 16))(v78, *(v35 + 56) + *(v66 + 72) * v51, v79);
    goto LABEL_14;
  }

  v47 = v43;
  v49 = v74;
  v48 = v75;
  while (1)
  {
    v46 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v46 >= v42)
    {
      v80 = 0;
      v56 = 1;
      v52 = v73;
      goto LABEL_16;
    }

    v45 = *(v64 + 8 * v46);
    ++v47;
    if (v45)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1BF040E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v29 = *a11;
  v13 = v11[10];
  v14 = v11[11];
  v15 = v11[12];
  v16 = sub_1BF179E9C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  firstly<A>(closure:)(sub_1BF04114C);
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v15;
  OUTLINED_FUNCTION_46();
  v19 = swift_allocObject();
  v19[2] = v13;
  v19[3] = v14;
  v19[4] = v15;
  v19[5] = sub_1BF041C70;
  v19[6] = v18;
  v20 = sub_1BF014EDC(TupleTypeMetadata2, v16);
  Promise.then<A>(on:closure:)();

  v21 = swift_allocObject();
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = v15;
  v21[5] = v29;
  v21[6] = a1;
  v21[7] = a6;
  v21[8] = a7;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v22 = sub_1BF014EDC(v16, TupleTypeMetadata2);
  Promise.then<A>(on:closure:)();

  v23 = swift_allocObject();
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  OUTLINED_FUNCTION_46();
  v24 = swift_allocObject();
  v24[2] = v13;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = sub_1BF042164;
  v24[6] = v23;
  v25 = sub_1BF014EDC(TupleTypeMetadata2, v16);
  Promise.then<A>(on:closure:)();
  v27 = v26;

  return v27;
}

uint64_t sub_1BF0410FC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF04114C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 96);
  v7 = *(v0 + 80);
  return sub_1BF03DF58(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_1BF04118C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Stack.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Stack.startIndex.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_1BF17A4EC();
}

uint64_t sub_1BF0411C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Stack.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Stack.endIndex.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_1BF17A5AC();
}

void *StubNetworkProxy.init(data:response:metrics:error:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 1) = xmmword_1BF188D40;
  v5[6] = 0;
  v5[5] = 0;
  v5[4] = 0;
  OUTLINED_FUNCTION_125();
  v9 = v5[2];
  v10 = v5[3];
  v5[2] = a1;
  v5[3] = a2;
  sub_1BF00F5E0(a1, a2);
  sub_1BF00F5F4(v9, v10);
  sub_1BF00F5F4(a1, a2);
  OUTLINED_FUNCTION_125();
  v11 = v5[4];
  v5[4] = a3;

  OUTLINED_FUNCTION_125();
  v12 = v5[5];
  v5[5] = a4;

  OUTLINED_FUNCTION_125();
  v13 = v5[6];
  v5[6] = a5;
  v14 = a5;

  v5[7] = 0;
  return v5;
}

uint64_t StubNetworkProxy.__deallocating_deinit()
{
  StubNetworkProxy.deinit();
  v0 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t StubNetworkProxy.deinit()
{
  sub_1BF00F5F4(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_1BF041398(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void when2<A, B>(on:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_80();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v46 = v26;
  v28 = *(*v27 + 80);
  v29 = *(*v24 + 80);
  v30 = type metadata accessor for WhenEither2();
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for Promise();
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v31 = sub_1BF17A50C();
  v33 = v32;
  v34 = OUTLINED_FUNCTION_24_11();
  *(v34 + 16) = v28;
  *(v34 + 24) = v29;
  v35 = sub_1BF014EDC(v28, v30);
  Promise.then<A>(on:closure:)();
  v37 = v36;

  *v33 = v37;
  v38 = OUTLINED_FUNCTION_24_11();
  *(v38 + 16) = v28;
  *(v38 + 24) = v29;
  v39 = sub_1BF014EDC(v29, v30);
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_17_9();

  v33[1] = v25;
  sub_1BF00CD7C();
  a10 = v31;
  OUTLINED_FUNCTION_39_0();
  v40 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  WitnessTable = swift_getWitnessTable();
  static Promise.all<A>(on:_:)(v46, &a10, v40, WitnessTable);
  OUTLINED_FUNCTION_17_9();

  v42 = OUTLINED_FUNCTION_24_11();
  *(v42 + 16) = v28;
  *(v42 + 24) = v29;
  OUTLINED_FUNCTION_10_23();
  v43 = sub_1BF17A65C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = sub_1BF014EDC(v43, TupleTypeMetadata2);
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_31_10();

  OUTLINED_FUNCTION_33();
}

void sub_1BF041640()
{
  if (!qword_1ED8EFB90)
  {
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EFB90);
    }
  }
}

id sub_1BF041694()
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v1 = off_1ED8F0218;

  return v1;
}

uint64_t sub_1BF041720(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = a1;
  return v2(&v5);
}

uint64_t static Manager.fetch(keys:cachePolicy:fetchWith:readCacheWith:writeCacheWith:deduper:options:loggingKey:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v17 = *(a2 + 8);
  v18 = *a10;
  v24 = *a2;
  v25 = v17;
  OUTLINED_FUNCTION_46();
  v19 = swift_allocObject();
  *(v19 + 16) = *(v10 + 80);
  *(v19 + 32) = *(v10 + 96);
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  v23 = v18;

  v20 = static Manager.fetch(keys:cachePolicy:fetchWith:readCacheWithAge:writeCacheWith:deduper:options:loggingKey:)(a1, &v24, a3, a4, sub_1BF03DF18, v19, a7, a8, a9, &v23, 0, 0);

  return v20;
}

uint64_t sub_1BF041854()
{
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF041888(uint64_t *a1, int a2)
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

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_11Tm_0(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t objectdestroy_11Tm_1()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t objectdestroy_11Tm_2()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_11Tm_3()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1BF041A5C()
{
  qword_1ED8EB000 = &unk_1F3DB6A50;
  *algn_1ED8EB008 = 0;
  qword_1ED8EB010 = 0;
  unk_1ED8EB018 = 0;
}

uint64_t sub_1BF041A78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  return sub_1BF041B7C(a1, a2, *(v2 + 40));
}

void __swiftcall Version.init(_:)(TeaFoundation::Version_optional *__return_ptr retstr, Swift::String_optional a2)
{
  if (a2.value._object && (sub_1BF024410(a2.value._countAndFlagsBits, a2.value._object, &v5), , v5))
  {
    v3 = v7;
    v4 = v6;
    retstr->value.base.numbers._rawValue = v5;
    retstr->value.qualifier.value.name = v4;
    retstr->value.qualifier.value.version.value.numbers._rawValue = v3;
  }

  else
  {
    *&retstr->value.base.numbers._rawValue = 0u;
    *&retstr->value.qualifier.value.name._object = 0u;
  }
}

uint64_t static Version.min.getter()
{
  if (qword_1ED8EAFF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_37(&qword_1ED8EB000);

  return sub_1BF026144(v0, v1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF041B7C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  a3(v5);
}

uint64_t static Version.max.getter()
{
  if (qword_1ED8EB020 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_37(&qword_1ED8EB028);

  return sub_1BF026144(v0, v1);
}

uint64_t sub_1BF041C70()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1BF041CE4();
}

uint64_t sub_1BF041C90(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1, a1[1]);
}

void sub_1BF041CC8()
{
  qword_1ED8EB028 = &unk_1F3DB6A78;
  unk_1ED8EB030 = 0;
  qword_1ED8EB038 = 0;
  unk_1ED8EB040 = 0;
}

uint64_t sub_1BF041CE4()
{
  sub_1BF179E9C();
  type metadata accessor for Promise();
  + infix<A, B>(_:_:)();
  return Promise.__allocating_init(value:)();
}

uint64_t Promise.__allocating_init(value:)()
{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  Promise.init(value:)();
  return v0;
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF041E50(uint64_t *a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  if ((a2 & 2) != 0)
  {
    v24 = v8;
    v15 = - infix<A, B>(_:_:)();
    v22 = v15;
    sub_1BF17A65C();
    swift_getWitnessTable();
    if (sub_1BF17AB6C())
    {

      sub_1BF179E9C();
      swift_getTupleTypeMetadata2();
      type metadata accessor for Promise();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      swift_getTupleTypeMetadata2();
      sub_1BF17A56C();
      v22 = v12;
      v23 = sub_1BF179DAC();
      return Promise.__allocating_init(value:)();
    }

    else
    {
      v22 = 0;
      LOBYTE(v23) = 1;
      a4(v15, &v22);

      v16 = swift_allocObject();
      v16[2] = a6;
      v16[3] = a7;
      v16[4] = a8;
      v16[5] = v12;
      v17 = sub_1BF179E9C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v19 = sub_1BF014EDC(v17, TupleTypeMetadata2);
      Promise.then<A>(on:closure:)();
      v13 = v20;
    }
  }

  else
  {
    sub_1BF179E9C();
    swift_getTupleTypeMetadata2();
    type metadata accessor for Promise();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    swift_getTupleTypeMetadata2();
    sub_1BF17A56C();
    v22 = v12;
    v23 = sub_1BF179DAC();
    return Promise.__allocating_init(value:)();
  }

  return v13;
}

uint64_t sub_1BF042114()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation16VersionQualifierVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF04219C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Multicaster.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1BF1794FC();
  sub_1BF17A7BC();
  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  OUTLINED_FUNCTION_0_89();
  sub_1BEFE7314(v2, v3);
  result = sub_1BF179DAC();
  *a1 = result;
  return result;
}

unint64_t sub_1BF042284()
{
  result = qword_1ED8ECD50[0];
  if (!qword_1ED8ECD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8ECD50);
  }

  return result;
}

uint64_t sub_1BF042308()
{
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_20(v0);
  (*(v2 + 16))(v1);
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for WhenEither2();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF04237C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1BF042308();
}

uint64_t sub_1BF0423DC()
{
  v0 = sub_1BF04240C();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF04240C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t Accessor.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for Accessor();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v4;
  v9 = Accessor.__allocating_init(_:)(sub_1BF105B68, v8);

  return v9;
}

uint64_t sub_1BF0424D4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t Accessor.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1BF042564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF0425B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation12NetworkProxyO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t firstly<A>(on:closure:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DeferredPromise();
  v6 = DeferredPromise.__allocating_init()();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;

  v8 = sub_1BF006210(a1, sub_1BF042734, v7);

  (v8)(v9);
  result = OUTLINED_FUNCTION_10_3();
  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = *(v6 + 16);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0426F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF042740(void (*a1)(void), uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  a1();
  v4 = *(v3 + 80);

  v5 = sub_1BF014EDC(v4, MEMORY[0x1E69E7CA8] + 8);
  Promise.then<A>(on:closure:)();

  v6 = qword_1ED8F0210;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_1BEFF77FC();
}

uint64_t static Version.< infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5, a6, a7, a8, *a2, v33, v35, *a1);
  v18 = static VersionNumber.== infix(_:_:)(v16, v17);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if (v18)
  {
    if (v10)
    {
      if (v14)
      {
        v27 = OUTLINED_FUNCTION_1_58(v19, v20, v21, v22, v23, v24, v25, v26, v13, v14, v15, v9);
        v29 = static VersionQualifier.< infix(_:_:)(v27, v28);
      }

      else
      {
        v29 = 1;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v30 = OUTLINED_FUNCTION_1_58(v19, v20, v21, v22, v23, v24, v25, v26, v12, v34, v36, v8);
    v29 = static VersionNumber.< infix(_:_:)(v30, v31);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return v29 & 1;
}

uint64_t DoublyLinkedList.append(node:)(uint64_t a1)
{
  OUTLINED_FUNCTION_125();
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_125();
    v3 = *(v1 + 24);
    OUTLINED_FUNCTION_4_0();
    v5 = *(v4 + 104);
    OUTLINED_FUNCTION_125();
    swift_weakAssign();
    v6 = *(v1 + 24);
    if (v6)
    {
      v7 = *(*v6 + 96);
      OUTLINED_FUNCTION_125();
      v8 = *(v6 + v7);
      *(v6 + v7) = a1;

      v9 = *(v1 + 24);
    }

    *(v1 + 24) = a1;
  }

  else
  {
    *(v1 + 16) = a1;
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_6_41();
  }
}

uint64_t static VersionNumber.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 16);
  v3 = *(*a2 + 16);
  if (v3 <= v2)
  {
    v4 = *(*result + 16);
  }

  else
  {
    v4 = *(*a2 + 16);
  }

  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    if (v5 >= v2)
    {
      if (v5 >= v3)
      {
        goto LABEL_14;
      }

      v6 = 0;
    }

    else
    {
      v6 = *(*result + 32 + 8 * v5);
      if (v5 >= v3)
      {
        if (v6)
        {
          return 0;
        }

        goto LABEL_14;
      }
    }

    if (v5 >= v3)
    {
      break;
    }

    if (v6 != *(*a2 + 32 + 8 * v5))
    {
      return 0;
    }

LABEL_14:
    if (v4 == ++v5)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

void AsyncObservable.value.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[2];
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  v7 = *(v6 + 104);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 16))(a1, v2 + v7);
  sub_1BEFF99D8(v2);
}

BOOL static VersionNumber.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  v2 = *(*result + 16);
  v3 = *(*a2 + 16);
  if (v3 <= v2)
  {
    v4 = *(*result + 16);
  }

  else
  {
    v4 = *(*a2 + 16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *result + 32;
  v7 = *a2 + 32;
  while (1)
  {
    if (v5 >= v2)
    {
      if (v5 >= v3)
      {
        goto LABEL_14;
      }

      v8 = 0;
    }

    else
    {
      v8 = *(v6 + 8 * v5);
      if (v5 >= v3)
      {
        if (v8)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

    if (v5 >= v3)
    {
      break;
    }

    v9 = *(v7 + 8 * v5);
    if (v8 != v9)
    {
      if (v5 >= v2)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v6 + 8 * v5);
LABEL_18:
        if (v5 >= v3)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v7 + 8 * v5);
        }
      }

      return v8 < v9;
    }

LABEL_14:
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

BOOL Locale.textDirectionIsRTL.getter()
{
  v0 = sub_1BF1795AC();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  OUTLINED_FUNCTION_1_28();
  sub_1BF042FE0(0, v11, v12);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  if (qword_1ED8ED680 != -1)
  {
    swift_once();
  }

  if (byte_1ED8ECA48)
  {
    return 1;
  }

  if (qword_1ED8ED688 != -1)
  {
    swift_once();
  }

  if (byte_1ED8ECA49)
  {
    return 1;
  }

  sub_1BF1795BC();
  sub_1BF17957C();
  v18 = *(v3 + 8);
  v18(v10, v0);
  v19 = sub_1BF17952C();
  if (__swift_getEnumTagSinglePayload(v16, 1, v19) == 1)
  {
    OUTLINED_FUNCTION_1_28();
    sub_1BF0C83E0(v16, v20, v21);
    return 0;
  }

  else
  {
    sub_1BF17951C();
    (*(*(v19 - 8) + 8))(v16, v19);
    sub_1BF17956C();
    v22 = sub_1BF17958C();
    v18(v8, v0);
    return v22 == 2;
  }
}

uint64_t sub_1BF042F78()
{
  sub_1BF042FB8(v0 + 16);
  sub_1BF042FB8(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_1BF042FE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF043034()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1BF17A07C();
  v2 = [v0 BOOLForKey_];

  byte_1ED8ECA48 = v2;
}

uint64_t sub_1BF0430C4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];
  v2 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[5] = v3;
  v4 = *(v1 + 80);
  *v3 = v5;
  v3[1] = sub_1BF043BE4;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0x4165766C6F736572, 0xEE002928636E7973, sub_1BF0432F4, v7, v4);
}

uint64_t sub_1BF043198()
{
  result = sub_1BF0431BC();
  byte_1ED8ECA49 = result & 1;
  return result;
}

uint64_t sub_1BF0431BC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 arguments];

  v2 = sub_1BF17A4DC();
  result = sub_1BF0432FC(0xD000000000000023, 0x80000001BF18DA00, v2);
  if ((v4 & 1) != 0 || (v5 = *(v2 + 16), result >= v5))
  {

    return 0;
  }

  else if (result + 1 >= v5)
  {
    __break(1u);
  }

  else
  {
    v6 = v2 + 16 * (result + 1);
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    if (v8 == 5457241 && v7 == 0xE300000000000000)
    {

      return 1;
    }

    else
    {
      v10 = sub_1BF17B86C();

      return v10 & 1;
    }
  }

  return result;
}

uint64_t sub_1BF0432FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1BF17B86C() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1BF043388(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = *(*a2 + 80);
  sub_1BEFF79E8();
  v4 = sub_1BF17A6DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v25 = firstly<A>(closure:)(sub_1BF04380C);
  v22 = *(v5 + 16);
  v22(v8, a1, v4);
  v9 = *(v5 + 80);
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v28 = v3;
  v26 = *(v5 + 32);
  v26(v11 + v10, v8, v4);
  v12 = sub_1BF014EDC(v3, MEMORY[0x1E69E7CA8] + 8);
  Promise.then<A>(on:closure:)();
  v21 = v13;

  v24 = v5 + 16;
  v14 = v22;
  v22(v8, v27, v4);
  v15 = v14;
  v25 = v6;
  v23 = v9;
  v16 = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  v26(v17 + v10, v8, v4);
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v18 = off_1ED8F0218;
  sub_1BEFF77FC();

  v15(v8, v27, v4);
  v19 = swift_allocObject();
  *(v19 + 16) = v28;
  v26(v19 + v16, v8, v4);
  sub_1BF03952C(v18, sub_1BF155020, v19);
}

void *sub_1BF0436EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  return sub_1BF04370C(a1, *(v1 + 24), *(v1 + 32));
}

void *sub_1BF04370C(uint64_t a1, uint64_t a2, void *(*a3)(void *__return_ptr, uint64_t))
{
  result = swift_beginAccess();
  if (*(a2 + 16))
  {
    result = a3(v8, a1);
    if (LOBYTE(v8[0]) == 1)
    {
      swift_beginAccess();
      v7 = *(a2 + 16);
      *(a2 + 16) = 0;
    }
  }

  return result;
}

id AsyncTaskOperation.init<A>(object:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xF0);
  sub_1BEFF79E8();
  sub_1BF17A7EC();
  type metadata accessor for Lazy();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a2;
  v12[6] = a3;
  v16 = 0;

  *(v5 + qword_1ED8EB978) = Lazy.__allocating_init(options:loadBlock:)();
  v15.receiver = v5;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_1BF0439EC()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF043A24()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF043A5C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1BEFF79E8();
  v4 = *(sub_1BF17A6DC() - 8);
  return sub_1BF043AF8(a1, v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)), v3);
}

uint64_t sub_1BF043AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF79E8();
  sub_1BF17A6DC();
  return sub_1BF17A6CC();
}

uint64_t sub_1BF043BE4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF15496C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v7();
  }
}

uint64_t sub_1BF043D04(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *(v2 + qword_1ED8EF090);
  if (a1)
  {
    v7 = v5;
    OUTLINED_FUNCTION_14_0();
    a1 = swift_allocObject();
    a1[2] = *(v7 + 80);
    a1[3] = v4;
    a1[4] = a2;
    v8 = sub_1BF02E89C;
  }

  else
  {
    v8 = 0;
  }

  v12[0] = v8;
  v12[1] = a1;

  v9 = OUTLINED_FUNCTION_13_0();
  sub_1BF009984(v9);
  Atomic.wrappedValue.setter(v12);

  v10 = OUTLINED_FUNCTION_13_0();
  return sub_1BEFE52DC(v10);
}

uint64_t AsyncTaskOperation.perform(completion:)(uint64_t a1, uint64_t a2)
{
  sub_1BF00974C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  sub_1BF089AC0();
}

uint64_t sub_1BF043F10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF043F50()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_15_7();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_52(v6);

  return sub_1BF043FF8(v8, v1, v2, v3, v4, v0);
}

uint64_t sub_1BF043FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *a4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1BF17A6EC();
  v6[7] = v9;
  v10 = *(v9 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = *((v8 & v7) + 0xF0);
  v6[10] = v12;
  v13 = type metadata accessor for Result();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v16 = *(v12 - 8);
  v6[14] = v16;
  v17 = *(v16 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0441A0, 0, 0);
}

uint64_t sub_1BF0441A0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0[4] + qword_1ED8EB978);
  sub_1BF004F64((v0 + 2));
  v2 = v0[2];
  v0[16] = v2;
  v3 = *(MEMORY[0x1E69E86A8] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = sub_1BEFF79E8();
  v0[18] = v5;
  *v4 = v0;
  v4[1] = sub_1BF053908;
  v6 = v0[15];
  v7 = v0[10];
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v6, v2, v7, v5, v8);
}

uint64_t sub_1BF044274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  sub_1BF00974C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a1;
  v17[7] = a2;
  v17[8] = a3;

  result = sub_1BF1687E8(0, 0, v15, &unk_1BF18AF20, v17);
  *a6 = result;
  return result;
}

uint64_t sub_1BF04438C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF0443E4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_3_52(v9);

  return sub_1BF0448C0(v11, v3, v4, v5, v6, v7);
}

uint64_t sub_1BF0444B0()
{
  OUTLINED_FUNCTION_13_2();
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v11 = (v0[7] + *v0[7]);
    v4 = *(v0[7] + 4);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1BF0533AC;
    v6 = v0[8];
    v7 = v0[5];

    return v11(v7, v3);
  }

  else
  {
    sub_1BF1691AC();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_9();

    return v10();
  }
}

uint64_t static DateInterval.tf_safe(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BF1794AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - v12;
  sub_1BF044868();
  if (sub_1BF179F8C())
  {
    v26[1] = sub_1BF17ACCC();
    sub_1BF071C70();
    v14 = swift_allocObject();
    v27 = a3;
    v15 = v14;
    *(v14 + 16) = xmmword_1BF17E820;
    v16 = sub_1BF1793BC();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    v15[7] = MEMORY[0x1E69E6158];
    v20 = sub_1BF071CD8();
    v15[8] = v20;
    v15[4] = v16;
    v15[5] = v18;
    v21 = sub_1BF1793BC();
    v15[12] = v19;
    v15[13] = v20;
    v15[9] = v21;
    v15[10] = v22;
    sub_1BF071C2C();
    v23 = sub_1BF17AE3C();
    sub_1BF1797CC();

    (*(v7 + 16))(v13, a1, v6);
    return sub_1BF178DBC();
  }

  else
  {
    v25 = *(v7 + 16);
    v25(v13, a1, v6);
    v25(v11, a2, v6);
    return sub_1BF178DAC();
  }
}

unint64_t sub_1BF044868()
{
  result = qword_1EBDCAEE8;
  if (!qword_1EBDCAEE8)
  {
    sub_1BF1794AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAEE8);
  }

  return result;
}

uint64_t sub_1BF0448C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF0444B0, 0, 0);
}

uint64_t sub_1BF044920()
{
  v1 = *(v0 + 64);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  v2 = type metadata accessor for EagerCancellationState();
  v12 = *(v0 + 48);
  v3 = sub_1BF03995C(v0 + 16, v2);
  *(v0 + 72) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v12;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  v6 = *(MEMORY[0x1E69E88F0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 96) = v7;
  *v7 = v8;
  v7[1] = sub_1BF045FE0;
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);

  return MEMORY[0x1EEE6DE18](v10, &unk_1BF182B40, v4, sub_1BF0D0320, v5, 0, 0, v9);
}

uint64_t sub_1BF044A6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BF044ABC()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_1BF045E50;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return sub_1BF044F38(v8, 0, 0, sub_1BF045144, v3);
}

uint64_t sub_1BF044BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1BF035DD4;

  return sub_1BF044C68(a1, v5, v7, v6, v4);
}

uint64_t sub_1BF044C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF044ABC, 0, 0);
}

void sub_1BF044C90()
{
  OUTLINED_FUNCTION_97_0();
  v19 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 80);
  type metadata accessor for DeferredPromise();
  v12 = *(*(v0 + 16) + 16);

  v13 = sub_1BF0057E8();
  v3(v13, v5);
  OUTLINED_FUNCTION_27();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_46();
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v14;
  v15[4] = v13;
  v15[5] = v9;
  v15[6] = v7;
  v16 = v19(v13, v5);

  OUTLINED_FUNCTION_67_0();
  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v16(v17);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v13 + 16))
  {
    v18 = *(v13 + 16);

    OUTLINED_FUNCTION_96();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF044E1C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0 + 2;
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v0[2] = v0;
  v0[7] = v4;
  v0[3] = sub_1BF045D2C;
  v5 = swift_continuation_init();
  sub_1BEFF79E8();
  v3(v5);

  return MEMORY[0x1EEE6DEC8](v1);
}

void Promise.recover<A>(on:disposeOn:closure:)()
{
  sub_1BF044C90();
}

{
  sub_1BF044C90();
}

uint64_t sub_1BF044F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1BF17A6AC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1BF044E1C, v6, v8);
}

void sub_1BF044FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = a5;
  v12[3] = a1;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a2;
  v7 = type metadata accessor for EagerCancellationState();
  v8 = sub_1BEFF79E8();
  sub_1BF17A80C();
  v9 = sub_1BF17AE6C();
  sub_1BF0451C0(sub_1BF045364, v12, a2, v7, v9);
  v10 = v13;
  if (v13)
  {
    sub_1BF17A6EC();
    sub_1BF0D03D0();
    v11 = swift_allocError();
    sub_1BF179D0C();
    v13 = v11;
    sub_1BF0D01E4(&v13, v10, a5, v8);
  }
}

uint64_t (*sub_1BF0450D4(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

uint64_t (*sub_1BF045150(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF05E03C;
}

uint64_t sub_1BF0451D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1BF00974C();
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[2] & 1) == 0)
  {
    a1[1] = a2;
    v19 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a6;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = a5;

    sub_1BF089AC0();
    v22 = v21;
    v23 = *a1;

    a2 = 0;
    *a1 = v22;
  }

  *a7 = a2;
  return result;
}

uint64_t sub_1BF04531C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF045388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1BF035DD4;

  return sub_1BF045458(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_1BF045458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v9 = *(a7 - 8);
  v7[5] = v9;
  v10 = *(v9 + 64) + 15;
  v7[6] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[7] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v7[8] = v13;
  *v13 = v7;
  v13[1] = sub_1BF046338;

  return v15(v11);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1BF0455CC()
{
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_20(v1);
  (*(v2 + 16))(v0);
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for WhenEither2();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF04563C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1BF0455CC();
}

uint64_t sub_1BF045674(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v35 = &v33 - v8;
  v36 = *(a3 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WhenEither2();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  v20 = *(a2 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v19;
LABEL_6:
    (*(v12 + 8))(v16, v11);
    v30 = 0x80000001BF18F080;
    sub_1BF10E70C();
    swift_allocError();
    *v31 = 0xD00000000000001FLL;
    v31[1] = 0x80000001BF18F080;
    swift_willThrow();
    return v30;
  }

  (*(v20 + 32))(v23, v19, a2);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v20 + 8))(v23, a2);
    goto LABEL_6;
  }

  v25 = v36;
  v26 = v33;
  (*(v36 + 32))(v33, v16, a3);
  v27 = TupleTypeMetadata2;
  type metadata accessor for Promise();
  v28 = *(v27 + 48);
  v29 = v35;
  (*(v20 + 16))(v35, v23, a2);
  (*(v25 + 16))(&v29[v28], v26, a3);
  v30 = Promise.__allocating_init(value:)();
  (*(v25 + 8))(v26, a3);
  (*(v20 + 8))(v23, a2);
  return v30;
}

void Array<A>.average.getter()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  OUTLINED_FUNCTION_2_3();
  v18 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_1();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = *(*(*(v10 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12(AssociatedTypeWitness);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {
    swift_getAssociatedConformanceWitness();
    sub_1BF17BA5C();
    OUTLINED_FUNCTION_13_27();
    sub_1BF17B83C();
  }

  else
  {
    Array<A>.total.getter();
    sub_1BF17A5AC();
    OUTLINED_FUNCTION_13_27();
    sub_1BF179F0C();
    sub_1BF179EEC();
    v16 = *(v18 + 8);
    v16(v8, v1);
    v17 = OUTLINED_FUNCTION_10_35();
    (v16)(v17);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF045CC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  *a2 = *v2;
  a2[1] = v5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = UniqueCollection.startIndex.getter(a1);

  a2[2] = v6;
  return result;
}

uint64_t sub_1BF045D2C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v1;
  if (*(v2 + 48))
  {
    v4 = *(v2 + 48);
    swift_willThrow();
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1BF045E28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = UniqueCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BF045E50()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF0D00D4, 0, 0);
  }

  else
  {
    v9 = *(v3 + 56);

    OUTLINED_FUNCTION_9();

    return v10();
  }
}

void (*sub_1BF045F74())(void *a1)
{
  OUTLINED_FUNCTION_22_8();
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *v1 = v2;
  v3 = *v0;
  v2[4] = sub_1BF0460F0();
  return sub_1BF0462C0;
}

uint64_t sub_1BF045FE0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    v9 = sub_1BF0D0064;
  }

  else
  {
    v11 = v3[10];
    v10 = v3[11];

    v9 = sub_1BF0461E8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void (*sub_1BF0460F0())(void *a1)
{
  OUTLINED_FUNCTION_22_8();
  *v2 = *(v1 + 16);
  OUTLINED_FUNCTION_2_3();
  *(v3 + 8) = v4;
  *(v0 + 16) = __swift_coroFrameAllocStub(*(v5 + 64));
  UniqueCollection.subscript.getter();
  return sub_1BF04619C;
}

void sub_1BF04619C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1BF0461E8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_9();

  return v2();
}

BOOL sub_1BF046244()
{
  v1 = *v0;
  v2 = 0x8000000000000010;
  if (v1 != 0x8000000000000010)
  {
    sub_1BF01716C(v1);
    sub_1BF01716C(v1);
    v2 = v1;
  }

  sub_1BF017214(v2);
  sub_1BF017214(0x8000000000000010);
  sub_1BF017214(v2);
  return v1 == 0x8000000000000010;
}

void sub_1BF0462C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Int sub_1BF04630C(Swift::Int *a1)
{
  result = UniqueCollection.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1BF046338()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    v9 = sub_1BF0D0130;
  }

  else
  {
    v9 = sub_1BF046438;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BF046438()
{
  v1 = OUTLINED_FUNCTION_1_34();
  v2 = v0[7];
  if (v1)
  {
    v3 = v1;
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    (*(v5 + 16))(v4, v0[7], v6);
    sub_1BEFF79E8();
    sub_1BF046830(v4, v3, v6);
  }

  else
  {
    v6 = v0[4];
    v5 = v0[5];
  }

  (*(v5 + 8))(v2, v6);
  v8 = v0[6];
  v7 = v0[7];

  OUTLINED_FUNCTION_9();

  return v9();
}

uint64_t sub_1BF046528(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 5);
  v17 = *v2;
  v18 = v2[1];
  v19 = *(v2 + 32);
  sub_1BF018248(a1, a2, &v20);
  if (!v3)
  {
    v8 = v20;
    v9 = v20 >> 61;
    if (v20 >> 61 != 4)
    {
      goto LABEL_20;
    }

    if (v20 == 0x8000000000000000)
    {
      v7 = 1;
      return v7 & 1;
    }

    if (v20 == 0x8000000000000008)
    {
      v7 = 0;
    }

    else
    {
LABEL_20:
      sub_1BF05350C();
      swift_allocError();
      v11 = v10;
      *v10 = v6;
      v12 = *(a2 + 16);
      v10[4] = v12;
      v10[5] = *(a2 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10 + 1);
      (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a1, v12);
      v11[6] = 0x6E61656C6F6F62;
      v11[7] = 0xE700000000000000;
      v14 = 0xE600000000000000;
      v15 = 0x7463656A626FLL;
      switch(v9)
      {
        case 1:
          v14 = 0xE500000000000000;
          v15 = 0x7961727261;
          break;
        case 2:
          v15 = 0x676E69727473;
          break;
        case 3:
          v15 = 0x7265626D756ELL;
          break;
        case 4:
          if (v8 == 0x8000000000000000)
          {
            v14 = 0xE400000000000000;
            v15 = 1702195828;
          }

          else if (v8 == 0x8000000000000008)
          {
            v14 = 0xE500000000000000;
            v15 = 0x65736C6166;
          }

          else
          {
            v14 = 0xE400000000000000;
            v15 = 1819047278;
          }

          break;
        default:
          break;
      }

      v11[8] = v15;
      v11[9] = v14;
      *(v11 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF017214(v8);
    }
  }

  return v7 & 1;
}

uint64_t sub_1BF046750(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v8[2] = a2;
  v5 = type metadata accessor for EagerCancellationState();
  sub_1BEFF79E8();
  sub_1BF17A80C();
  v6 = sub_1BF17AE6C();
  sub_1BF0451C0(a3, v8, a1, v5, v6);
  return v8[5];
}

uint64_t sub_1BF046804@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1BF046830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_1BF0468C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t VersionNumber.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v3 = (v1 + 32);
    sub_1BF0475B0();
    do
    {
      v4 = *v3++;
      v5 = sub_1BF17AFFC();
      v7 = v6;
      v8 = *(v12 + 16);
      if (v8 >= *(v12 + 24) >> 1)
      {
        sub_1BF00DD60();
      }

      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      --v2;
    }

    while (v2);
  }

  sub_1BF02027C();
  sub_1BF01B738();
  v10 = sub_1BF179F7C();

  return v10;
}

uint64_t Sequence<>.throwingUnorderedConcurrentMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t Version.description.getter()
{
  v1 = *v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = v0[1];
    v4 = v0[3];
    v7 = *v0;
    v8 = VersionNumber.description.getter();
    MEMORY[0x1BFB52000](45, 0xE100000000000000);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v4)
    {
      MEMORY[0x1BFB52000](45, 0xE100000000000000);
      v5 = VersionNumber.description.getter();
      MEMORY[0x1BFB52000](v5);
    }

    MEMORY[0x1BFB52000](v3, v2);

    return v8;
  }

  else
  {
    v9 = *v0;
    return VersionNumber.description.getter();
  }
}

uint64_t ObservableProperty.observe(block:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29();
  v6 = v5;
  v7 = sub_1BF179C5C();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_42();
  sub_1BEFF6E88();
  *v2 = sub_1BF17AD5C();
  (*(v10 + 104))(v2, *MEMORY[0x1E69E8020], v7);
  v13 = sub_1BF179C8C();
  result = (*(v10 + 8))(v2, v7);
  if (v13)
  {
    v15 = swift_allocObject();
    v15[2] = *(v6 + 80);
    v15[3] = a1;
    v15[4] = a2;
    OUTLINED_FUNCTION_9_29(v15);
    OUTLINED_FUNCTION_3_44();
    swift_getFunctionTypeMetadata1();
    OUTLINED_FUNCTION_21_15();

    OUTLINED_FUNCTION_20_17();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF046CEC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF046D24(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  OUTLINED_FUNCTION_10_9();
  v5 = *(v1 + 24);
  v6 = OUTLINED_FUNCTION_3_42();
  v10 = sub_1BEFEEDE8(v6, v7, v8, v9);
  if (!v10)
  {
    swift_endAccess();
    OUTLINED_FUNCTION_10_9();
    v16 = *(v1 + 32);
    v17 = OUTLINED_FUNCTION_3_42();
    if (!sub_1BEFEEDE8(v17, v18, v19, v20))
    {
      swift_endAccess();
      return 0;
    }

    v21 = swift_endAccess();
    OUTLINED_FUNCTION_2_57(v21, &qword_1ED8EDCF0);
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v15 = *(v22 + 16);
      swift_unknownObjectRetain();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_6_37(0, &qword_1EBDCBDF0);
    if (swift_dynamicCastClass())
    {
      v15 = sub_1BF1469C0();
LABEL_13:

      if (v15)
      {
        return v15;
      }

      return 0;
    }

LABEL_15:

    return 0;
  }

  v11 = v10;
  v12 = swift_endAccess();
  v13 = (*(*v11 + 80))(v12);
  if (!v13)
  {
    if ((*(*v11 + 88))())
    {
      v15 = sub_1BF1469C0();

      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v14 = v13;

  v15 = *(v14 + 16);
  swift_unknownObjectRetain();
LABEL_7:

  return v15;
}

uint64_t sub_1BF046ED4()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[8];
  v2 = v0[5];
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_22_7(v3);
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[10] = v5;
  *v5 = v6;
  v5[1] = sub_1BF053064;
  v7 = v0[6];
  v8 = OUTLINED_FUNCTION_24_9();

  return MEMORY[0x1EEE6DD58](v8);
}

void sub_1BF046F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF047630();
    v7 = a3(a1, &type metadata for ReferenceEncodingPool.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF047000()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_22();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v4[1] = sub_1BF035DD4;
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_35_4();

  return sub_1BF047284(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t ReferenceEncodingPool.__allocating_init(from:)(uint64_t *a1)
{
  sub_1BF046F9C(0, &qword_1ED8E9B88, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_1(v3);
  v16[0] = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - v9;
  OUTLINED_FUNCTION_0_1();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC8];
  *(v11 + 24) = MEMORY[0x1E69E7CC0];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF047630();
  sub_1BF17BBDC();
  if (v1)
  {
  }

  else
  {
    v13 = v16[0];
    sub_1BF047F9C();
    sub_1BF0481B8();
    sub_1BF17B5FC();
    (*(v13 + 8))(v10, v4);
    v14 = v16[5];
    swift_beginAccess();
    *(v11 + 16) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1BF047284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v10 = *(a7 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[15] = v13;
  v8[16] = *(v13 + 64);
  v8[17] = swift_task_alloc();
  sub_1BF00974C();
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v16 = *(*(sub_1BF17AE6C() - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = sub_1BEFF79E8();
  v17 = sub_1BF17A85C();
  v8[21] = v17;
  v18 = *(v17 - 8);
  v8[22] = v18;
  v19 = *(v18 + 64) + 15;
  v8[23] = swift_task_alloc();
  v20 = *(*(sub_1BF17AE6C() - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v21 = *(a6 - 8);
  v8[25] = v21;
  v22 = *(v21 + 64) + 15;
  v8[26] = swift_task_alloc();
  v23 = swift_getAssociatedTypeWitness();
  v8[27] = v23;
  v24 = *(v23 - 8);
  v8[28] = v24;
  v25 = *(v24 + 64) + 15;
  v8[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0476B8, 0, 0);
}

unint64_t sub_1BF0475B0()
{
  result = qword_1ED8EDD98;
  if (!qword_1ED8EDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDD98);
  }

  return result;
}

uint64_t sub_1BF047604@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ReferenceEncodingPool.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1BF047630()
{
  result = qword_1ED8EA050;
  if (!qword_1ED8EA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA050);
  }

  return result;
}

uint64_t DisposableBag.object.getter()
{
  OUTLINED_FUNCTION_0_10();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BF0476B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 232);
  v14 = *(v12 + 120);
  v15 = *(v12 + 88);
  (*(*(v12 + 200) + 16))(*(v12 + 208), *(v12 + 48), *(v12 + 72));
  sub_1BF17A32C();
  v51 = v14;
  while (1)
  {
    v16 = *(v12 + 232);
    v17 = *(v12 + 216);
    v18 = *(v12 + 192);
    v19 = *(v12 + 112);
    v20 = *(v12 + 88);
    v21 = *(v12 + 72);
    swift_getAssociatedConformanceWitness();
    sub_1BF17AF0C();
    OUTLINED_FUNCTION_51_2(v18, 1, v19);
    if (v22)
    {
      break;
    }

    v23 = *(v12 + 192);
    v25 = *(v12 + 136);
    v24 = *(v12 + 144);
    v26 = *(v12 + 128);
    v27 = *(v12 + 112);
    v28 = *(v12 + 64);
    v53 = *(v12 + 72);
    v54 = *(v12 + 160);
    v52 = *(v12 + 56);
    v55 = *(v12 + 40);
    v29 = sub_1BF17A77C();
    v56 = *(v12 + 80);
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v29);
    v30 = *(v51 + 32);
    v30(v25, v23, v27);
    v31 = (*(v51 + 80) + 72) & ~*(v51 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v53;
    *(v32 + 40) = v56;
    *(v32 + 56) = v52;
    *(v32 + 64) = v28;
    v30(v32 + v31, v25, v27);
    v33 = sub_1BF17A87C();

    sub_1BF047B94(v24, &unk_1BF182900, v32, v33);
    sub_1BF00CAB0(v24);
  }

  v34 = *(v12 + 184);
  v35 = *(v12 + 160);
  v36 = *(v12 + 80);
  v37 = *(v12 + 40);
  (*(*(v12 + 224) + 8))(*(v12 + 232), *(v12 + 216));
  OUTLINED_FUNCTION_54();
  *(v12 + 16) = sub_1BF17A56C();
  v38 = *v37;
  OUTLINED_FUNCTION_40();
  swift_checkMetadataState();
  sub_1BF17A82C();
  v39 = *(MEMORY[0x1E69E8710] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v12 + 240) = v40;
  *v40 = v41;
  v42 = OUTLINED_FUNCTION_9_19(v40);

  return MEMORY[0x1EEE6DAD8](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t DisposableBag.add(_:)(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectRetain();
    MEMORY[0x1BFB52290](v2);
    sub_1BF005F5C(*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
  }
}

uint64_t DisposableBag.__deallocating_deinit()
{
  sub_1BF042FB8(v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BF047ADC()
{
  result = qword_1ED8EA040;
  if (!qword_1ED8EA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA040);
  }

  return result;
}

uint64_t sub_1BF047B30(uint64_t a1, uint64_t a2)
{
  sub_1BF00974C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF047B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1BF00974C();
  v10 = OUTLINED_FUNCTION_68(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  sub_1BF047B30(a1, v14 - v13);
  v16 = sub_1BF17A77C();
  v17 = OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_51_2(v17, v18, v16);
  if (v19)
  {
    sub_1BF00CAB0(v15);
  }

  else
  {
    sub_1BF17A76C();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  if (*(a3 + 16))
  {
    v20 = *(a3 + 24);
    v21 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1BF17A6AC();
    swift_unknownObjectRelease();
  }

  v22 = *v5;
  v23 = *(a4 + 16);
  swift_task_create();
}

uint64_t sub_1BF047D3C()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_39_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68(AssociatedTypeWitness);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_55_3();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_16_8(v4);
  OUTLINED_FUNCTION_23_1();

  return sub_1BF047E90(v5, v6, v7, v8, v9, v10);
}