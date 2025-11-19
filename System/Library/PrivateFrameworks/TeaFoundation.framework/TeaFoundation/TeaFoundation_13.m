uint64_t sub_1BF0F7D88()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))(*(v0 + 96), *(v0 + 88));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BF0F7DFC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  (*(v0 + 56))(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t AuthTokenService.deinit()
{
  v1 = *(v0 + 16);

  sub_1BF0F840C(v0 + 24);
  sub_1BF0F8460(v0 + 72, &qword_1ED8ED400, &qword_1ED8ED408);
  sub_1BF0F8460(v0 + 112, &qword_1ED8ECF08, &qword_1ED8ECF10);
  return v0;
}

uint64_t AuthTokenService.__deallocating_deinit()
{
  AuthTokenService.deinit();
  v0 = OUTLINED_FUNCTION_2_45();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1BF0F7F28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BF1794AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  v12 = &v3[qword_1ED8EE2D0];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[qword_1ED8EE2B8] = a1;
  sub_1BF0F86D0(a2, &v3[qword_1ED8EE2C0]);

  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  (*(v8 + 32))(&v3[qword_1ED8EE2A8], v11, v7);
  *&v3[qword_1ED8ED240] = 0;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  sub_1BF0F840C(a2);
  return v13;
}

uint64_t sub_1BF0F80AC(void *a1)
{
  v2 = v1;
  sub_1BF0F87D0(0, &qword_1ED8E9D10, &type metadata for AuthTokenResponse, type metadata accessor for Promise);
  v4 = swift_allocObject();
  v9 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v5 = a1;
  v6 = UnfairLock.init(options:)(&v9);
  sub_1BF0F87D0(0, &qword_1ED8E9DE0, &type metadata for AuthTokenResponse, type metadata accessor for Seal);
  swift_allocObject();
  *(v4 + 16) = sub_1BF034CD4(v6);
  v7 = swift_allocObject();
  v7[2] = sub_1BF0F8850;
  v7[3] = v4;
  v7[4] = sub_1BF0F8888;
  v7[5] = v4;
  v7[6] = sub_1BF0F8858;
  v7[7] = v4;
  swift_retain_n();
  sub_1BF0F5F1C(sub_1BF0F88B8, v7);

  [*(v2 + 24) addOperation_];
  return v4;
}

unint64_t sub_1BF0F824C()
{
  result = qword_1ED8EA9C8;
  if (!qword_1ED8EA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA9C8);
  }

  return result;
}

void sub_1BF0F82A0()
{
  if (!qword_1EBDCA9D8)
  {
    sub_1BF0F87D0(255, &qword_1ED8ECC00, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Promise();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA9D8);
    }
  }
}

uint64_t sub_1BF0F831C(uint64_t *a1)
{
  v3 = *(sub_1BF17923C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1BF0F6AE0(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1BF0F8460(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1BF008E2C(0, a2, a3);
  OUTLINED_FUNCTION_0_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t get_enum_tag_for_layout_string_13TeaFoundation21AuthTokenServiceError33_FBBE5ADC03C4EEA987088D28F183E5D7LLO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1BF0F8530(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1BF0F8584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1BF0F85E4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

void sub_1BF0F861C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF17923C();
    v7 = type metadata accessor for AuthToken();
    v8 = sub_1BF0F8B54(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BF0F872C(uint64_t *a1)
{
  v3 = *(sub_1BF178C6C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1BF0F71F8(a1, v5, v1 + v4, v7, v8);
}

void sub_1BF0F87D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BF0F88C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

id sub_1BF0F890C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF0F8918(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1BF0F8924(uint64_t a1, uint64_t a2)
{
  sub_1BF008E2C(0, &qword_1ED8ECF08, &qword_1ED8ECF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0F89A0()
{
  v1 = *(sub_1BF178C6C() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BF114BEC(v2);
}

void sub_1BF0F8A10()
{
  if (!qword_1ED8EA9B0)
  {
    sub_1BF0F8AA4();
    sub_1BF0F8B54(&qword_1ED8EA9C0, sub_1BF0F8AA4);
    v0 = type metadata accessor for NetworkOperation();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EA9B0);
    }
  }
}

void sub_1BF0F8AA4()
{
  if (!qword_1ED8EA9B8)
  {
    sub_1BF0F8B00();
    v0 = type metadata accessor for JSONDeserializer();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EA9B8);
    }
  }
}

unint64_t sub_1BF0F8B00()
{
  result = qword_1ED8EA710;
  if (!qword_1ED8EA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA710);
  }

  return result;
}

uint64_t sub_1BF0F8B54(unint64_t *a1, void (*a2)(uint64_t))
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

void AsyncObservable.next(value:quiet:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v2 + 2);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  v9 = *(v8 + 104);
  swift_beginAccess();
  (*(*(*(v6 + 80) - 8) + 24))(&v3[v9], a1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v7 + 16));
  if ((a2 & 1) == 0)
  {
    sub_1BF03A5D8();
  }
}

void AsyncObservable.mutate(with:quiet:)()
{
  OUTLINED_FUNCTION_32();
  v19 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_0_62();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v15 = *(v0 + 2);
  UnfairLock.lock()();
  v16 = *(*v0 + 104);
  OUTLINED_FUNCTION_3_33();
  (*(v8 + 16))(v14, &v0[v16], v6);
  v4(v14);
  v17 = *(v8 + 8);
  v17(v14, v6);
  OUTLINED_FUNCTION_4_25();
  (*(v8 + 24))(&v0[v16], v1, v6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v15 + 16));
  if ((v19 & 1) == 0)
  {
    sub_1BF03A5D8();
  }

  v17(v1, v6);
  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall AsyncObservable.triggerObservers()()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_0_62();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v9 - v7;
  AsyncObservable.value.getter(&v9 - v7);
  sub_1BF03A5D8();
  (*(v3 + 8))(v8, v1);
}

void AsyncObservable<A>.maybeMutate(with:quiet:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v21 = v3;
  v22 = v4;
  HIDWORD(v20) = v5;
  OUTLINED_FUNCTION_29();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_0_62();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v23 = *(v0 + 2);
  UnfairLock.lock()();
  v16 = *(*v0 + 104);
  OUTLINED_FUNCTION_3_33();
  v17 = *(v9 + 16);
  v17(v15, &v0[v16], v7);
  (v21)(v15);
  v21 = v9;
  v18 = *(v9 + 8);
  v18(v15, v7);
  v17(v15, &v0[v16], v7);
  v19 = sub_1BF17A05C();
  v18(v15, v7);
  if (v19)
  {
    os_unfair_lock_unlock(*(v23 + 16));
  }

  else
  {
    OUTLINED_FUNCTION_4_25();
    (*(v21 + 24))(&v2[v16], v1, v7);
    swift_endAccess();
    os_unfair_lock_unlock(*(v23 + 16));
    if ((v20 & 0x100000000) == 0)
    {
      sub_1BF03A5D8();
    }
  }

  v18(v1, v7);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0F9108()
{
  sub_1BF042FB8(v0 + 16);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1BF0F9138()
{
  v0 = sub_1BF0F9108();

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t static XPCBlockBuilder.buildBlock(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

_BYTE *storeEnumTagSinglePayload for XPCBlockBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF0F92E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = NonEmpty.rawElements.read();
  (*(*(v4 - 8) + 16))(a3);
  return (v5)(&v7, 0);
}

uint64_t sub_1BF0F9394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = type metadata accessor for NonEmpty();
  v8 = NonEmpty.rawElements.modify(v11, v7);
  (*(*(v6 - 8) + 24))(v9, a1, v6);
  return (v8)(v11, 0);
}

uint64_t (*NonEmpty.rawElements.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_1BF0F945C;
}

uint64_t sub_1BF0F946C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  v7 = sub_1BF17AA7C();
  result = (*(v3 + 8))(v6, a2);
  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t NonEmpty.rawElements.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_2_3();
  v11 = v6;
  (*(v7 + 24))(v2, a1, v5);
  v8 = *(a2 + 24);
  sub_1BF0F946C(v2, v5);
  v9 = *(v11 + 8);

  return v9(a1, v5);
}

void NonEmpty.init<A, B>(_:)()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 16))(v12 - v11, v3);
  sub_1BF17A67C();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_2_46();
  swift_getWitnessTable();
  NonEmpty.init(_:)();
  (*(v7 + 8))(v3, v1);
  *v5 = v13;
  OUTLINED_FUNCTION_55();
}

uint64_t NonEmpty.randomElement<A>(using:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_68(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_51();
  sub_1BF17AACC();
  result = OUTLINED_FUNCTION_4_26();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20(v2);
    v12 = *(v11 + 32);
    v13 = OUTLINED_FUNCTION_5_28();
    return v14(v13);
  }

  return result;
}

void sub_1BF0F985C()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v1;
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  v7 = OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_68(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_51();
  v2(v5, v4);
  OUTLINED_FUNCTION_4_26();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20(v0);
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_5_28();
    v15(v14);
    OUTLINED_FUNCTION_55();
  }
}

uint64_t sub_1BF0F9998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 16);
  v10 = *(*(a3 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10_23();
  v12 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_68(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  result = a4(a1, a2, v9, v10);
  if (!v4)
  {
    result = __swift_getEnumTagSinglePayload(v5, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_20(AssociatedTypeWitness);
      v18 = *(v17 + 32);
      v19 = OUTLINED_FUNCTION_21_0();
      return v20(v19);
    }
  }

  return result;
}

uint64_t sub_1BF0F9AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static NonEmpty<>.== infix(_:_:)();
}

uint64_t NonEmpty<>.hashValue.getter(uint64_t a1)
{
  sub_1BF17BB6C();
  NonEmpty<>.hash(into:)(v3, a1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0F9B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1BF17BB6C();
  NonEmpty<>.hash(into:)(v6, a2);
  return sub_1BF17BB9C();
}

uint64_t NonEmpty.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(*(a3 + 24) + 8);
  return sub_1BF17A36C();
}

uint64_t NonEmpty._copyToContiguousArray()(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_2_3();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  (*(v8 + 16))(v7 - v6);
  v9 = *(*(a1 + 24) + 8);
  return sub_1BF17A34C();
}

uint64_t sub_1BF0F9CAC(uint64_t a1)
{
  NonEmpty.makeIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t NonEmpty.underestimatedCount.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  return sub_1BF17A33C();
}

uint64_t sub_1BF0F9D24(uint64_t a1)
{
  v3 = NonEmpty._copyToContiguousArray()(a1);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t NonEmpty.isEmpty.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1BF17AA7C();
}

uint64_t NonEmpty.count.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1BF17AA2C();
}

uint64_t NonEmpty.startIndex.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1BF17A9EC();
}

uint64_t NonEmpty.endIndex.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1BF17AA9C();
}

uint64_t NonEmpty.formIndex(after:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_1BF17AAAC();
}

uint64_t NonEmpty.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1BF17AA8C();
}

uint64_t NonEmpty.subscript.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = OUTLINED_FUNCTION_14_18();
  v5 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20(AssociatedTypeWitness);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_21_0();
  v11 = v10(v9);
  v19 = OUTLINED_FUNCTION_15_16(v11, v12, v13, v14, v15, v16, v17, v18, v21);
  return v4(v19);
}

{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_1BF17ABEC();
}

void (*sub_1BF0F9EF8(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1BF0F9F6C(v6, a2, a3);
  return sub_1BF0462C0;
}

void (*sub_1BF0F9F6C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v8 = *(*(v7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  a1[1] = v10;
  a1[2] = __swift_coroFrameAllocStub(*(v10 + 64));
  NonEmpty.subscript.getter(a2, a3);
  return sub_1BF0FB920;
}

uint64_t NonEmpty<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a3 + 8);
  v5 = OUTLINED_FUNCTION_14_18();
  v6 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20(AssociatedTypeWitness);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_21_0();
  v12 = v11(v10);
  v20 = OUTLINED_FUNCTION_15_16(v12, v13, v14, v15, v16, v17, v18, v19, v22);
  return v5(v20);
}

{
  v3 = *(a2 + 16);
  v4 = *(a3 + 8);
  return sub_1BF17ABEC();
}

uint64_t sub_1BF0FA110@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = *(v6 + 8);
  v8 = type metadata accessor for NonEmpty();
  v9 = NonEmpty<>.subscript.read(v15, a1, v8, v6);
  v11 = v10;
  v12 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v11, AssociatedTypeWitness);
  return (v9)(v15, 0);
}

void (*NonEmpty<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v7;
  v8 = *(a4 + 8);
  v7[4] = *(a3 + 16);
  OUTLINED_FUNCTION_10_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[5] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v7[6] = v10;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v7[7] = v13;
  OUTLINED_FUNCTION_2_3();
  v15 = v14;
  v7[8] = v14;
  v7[9] = __swift_coroFrameAllocStub(*(v16 + 64));
  (*(v15 + 16))();
  (*(v11 + 16))(v13, a2, AssociatedTypeWitness);
  v7[10] = sub_1BF17ABFC();
  return sub_1BF0FA3A0;
}

void sub_1BF0FA3A0()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(*v0 + 72);
  v1 = *(*v0 + 80);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 32);
  v8 = OUTLINED_FUNCTION_16_14();
  v9(v8);
  (*(v6 + 8))(v3, v5);
  (*(v4 + 8))(v2, v7);
  free(v2);
  free(v3);
  OUTLINED_FUNCTION_55();

  free(v10);
}

uint64_t sub_1BF0FA444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *(v7 + 8);
  v9 = type metadata accessor for NonEmpty();
  v10 = NonEmpty<>.subscript.modify(v16, a3, v9, v7);
  v12 = v11;
  v13 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v12, a1, AssociatedTypeWitness);
  return (v10)(v16, 0);
}

void (*NonEmpty<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v8 = *(a4 + 8);
  v9 = *(a3 + 16);
  v7[4] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v7[5] = v10;
  v7[6] = __swift_coroFrameAllocStub(*(v12 + 64));
  (*(v11 + 16))();
  v7[7] = sub_1BF17A03C();
  return sub_1BF0FA654;
}

{
  v7 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v7;
  v8 = *(a4 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7[8] = sub_1BF17AC8C();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v7[9] = v10;
  v7[10] = __swift_coroFrameAllocStub(*(v12 + 64));
  (*(v11 + 16))();
  v7[11] = NonEmpty.rawElements.modify(v7, a3);
  v7[12] = sub_1BF17A02C();
  return sub_1BF0FAC44;
}

void sub_1BF0FA654(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = OUTLINED_FUNCTION_16_14();
  v7(v6);
  (*(v5 + 8))(v3, v4);
  free(v3);

  free(v1);
}

uint64_t NonEmpty<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = sub_1BF17A03C();
  v10 = v9;
  v11 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = (*(v13 + 24))(v10, a1, AssociatedTypeWitness);
  v22 = OUTLINED_FUNCTION_15_16(v14, v15, v16, v17, v18, v19, v20, v21, v26);
  v8(v22);
  OUTLINED_FUNCTION_10_23();
  v23 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20(v23);
  (*(v24 + 8))(a2);
  return (*(v13 + 8))(a1, AssociatedTypeWitness);
}

{
  v8 = *(a3 + 16);
  v9 = sub_1BF17A02C();
  v11 = v10;
  v12 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = (*(v14 + 24))(v11, a1, AssociatedTypeWitness);
  v23 = OUTLINED_FUNCTION_15_16(v15, v16, v17, v18, v19, v20, v21, v22, v30);
  v9(v23);
  sub_1BF0F946C(v4, v8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v24 = sub_1BF17AC8C();
  OUTLINED_FUNCTION_20(v24);
  (*(v25 + 8))(a2);
  v26 = *(v14 + 8);
  v27 = OUTLINED_FUNCTION_21_0();
  return v28(v27);
}

uint64_t sub_1BF0FA820@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = *(v6 + 8);
  v8 = type metadata accessor for NonEmpty();
  v9 = NonEmpty<>.subscript.read(v14, a1, v8, v6);
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v11, AssociatedTypeWitness);
  return (v9)(v14, 0);
}

void (*NonEmpty<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  v5 = *(a4 + 8);
  v6 = *(a3 + 16);
  OUTLINED_FUNCTION_10_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  a1[1] = v8;
  a1[2] = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_21_0();
  sub_1BF17ABEC();
  return sub_1BF0FA9E4;
}

uint64_t sub_1BF0FA9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *(v7 + 8);
  v9 = type metadata accessor for NonEmpty();
  v10 = NonEmpty<>.subscript.modify(v15, a3, v9, v7);
  v12 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v12, a1, AssociatedTypeWitness);
  return (v10)(v15, 0);
}

void sub_1BF0FAC44(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v6 = OUTLINED_FUNCTION_16_14();
  v2(v6);
  free(v3);

  free(v1);
}

uint64_t (*sub_1BF0FAE90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = NonEmpty<>.subscript.modify(v8, a2, a3, *(a4 - 8));
  return sub_1BF0FB924;
}

uint64_t (*sub_1BF0FAF14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = NonEmpty<>.subscript.modify(v8, a2, a3, *(a4 - 8));
  return sub_1BF0FAF90;
}

void sub_1BF0FAF94(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t NonEmpty<>.last.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  v4 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_68(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_51();
  sub_1BF179F6C();
  result = OUTLINED_FUNCTION_4_26();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20(v2);
    v12 = *(v11 + 32);
    v13 = OUTLINED_FUNCTION_5_28();
    return v14(v13);
  }

  return result;
}

uint64_t NonEmpty<>.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = *(a2 + 16);
  sub_1BF17B95C();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t NonEmpty<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v37 = a5;
  v9 = type metadata accessor for NonEmpty();
  OUTLINED_FUNCTION_10_23();
  v10 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v36 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v40 = a2;
  v38 = *(a2 - 8);
  v15 = *(v38 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v35 - v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v46;
  sub_1BF17BBBC();
  if (!v22)
  {
    v35 = a3;
    v46 = a1;
    v23 = v38;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    sub_1BF17B8DC();
    v24 = v23;
    (*(v23 + 16))(v19, v41, v40);
    NonEmpty.init(_:)();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) != 1)
    {
      (*(v23 + 8))(v41, v40);
      OUTLINED_FUNCTION_20(v9);
      (*(v34 + 32))(v37, v5, v9);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v32 = v46;
      return __swift_destroy_boxed_opaque_existential_1(v32);
    }

    (*(v36 + 8))(v5, v10);
    v25 = sub_1BF17B29C();
    swift_allocError();
    v27 = v26;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    sub_1BF17B88C();
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1BF17B1EC();

    v42 = 0x6E6120646E756F46;
    v43 = 0xEF207974706D6520;
    v28 = v40;
    v29 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v29);

    MEMORY[0x1BFB52000](0xD00000000000001ELL, 0x80000001BF18EBA0);
    sub_1BF17B27C();
    v30 = *MEMORY[0x1E69E6B00];
    OUTLINED_FUNCTION_20(v25);
    (*(v31 + 104))(v27);
    swift_willThrow();
    (*(v24 + 8))(v41, v28);
    __swift_destroy_boxed_opaque_existential_1(v44);
    a1 = v46;
  }

  v32 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_1BF0FB64C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 16;
  v2 = *(a2 + 16);
  v4 = *(*(v3 + 8) + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BF0FB688(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BF0FB6A4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BF0FB6C0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BF0FB6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BF0FB700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BF0FB724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BF0FB790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BF0FB7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BF0FB7D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_1BF0FB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BF02693C(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1BF047B30(a3, v23 - v10);
  v12 = sub_1BF17A77C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00CAB0(v11);
  }

  else
  {
    sub_1BF17A76C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BF17A6AC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BF17A16C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1BF00CAB0(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF00CAB0(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BF0FBBA4()
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_3_34();
  if (v3)
  {
    v1 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_41_4();
    sub_1BF094380();
    OUTLINED_FUNCTION_49_4();
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v1;
}

uint64_t (*sub_1BF0FBC04())(void)
{
  v1 = *(v0 + 16);
  UnfairLock.lock()();
  if (*(v0 + 24))
  {
    v2 = nullsub_1;
  }

  else
  {
    *(v0 + 24) = 1;
    sub_1BF094408();
    v2 = v3;
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

uint64_t sub_1BF0FBC90(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_49_0();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    *(v3 + 24) = 1;
    sub_1BF014DC0(a1, a2);
    v8 = sub_1BF094518(a1, a2, 0);
    sub_1BF014E18(a1, a2);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return v8;
}

uint64_t (*sub_1BF0FBD44(uint64_t a1))(void)
{
  sub_1BF09704C(0, qword_1ED8E9E18, type metadata accessor for AuthToken);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {
    v8 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    sub_1BF0A8AC8(a1, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BF094660();
    v8 = v9;
    sub_1BF0967E8(v6, qword_1ED8E9E18, type metadata accessor for AuthToken);
  }

  os_unfair_lock_unlock(*(v7 + 16));
  return v8;
}

uint64_t sub_1BF0FBE7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_49_0();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_32_8();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v7 = sub_1BF094894(a1, a2, 0);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return v7;
}

uint64_t sub_1BF0FBF30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_5();
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF094B88(a1, a2, 0);
    OUTLINED_FUNCTION_31_9();
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_6_5();
}

uint64_t sub_1BF0FBFC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(void), void (*a5)(char *))
{
  sub_1BF09704C(0, a2, a3);
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v17 = *(v5 + 16);
  UnfairLock.lock()();
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    v18 = a4(0);
    OUTLINED_FUNCTION_12(v18);
    (*(v19 + 16))(v16, a1);
    swift_storeEnumTagMultiPayload();
    a5(v16);
    sub_1BF0967E8(v16, a2, a3);
  }

  os_unfair_lock_unlock(*(v17 + 16));
  return OUTLINED_FUNCTION_6_5();
}

uint64_t sub_1BF0FC114()
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_3_34();
  if (v3)
  {
    v1 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_41_4();
    sub_1BF094E7C();
    OUTLINED_FUNCTION_49_4();
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v1;
}

uint64_t sub_1BF0FC174(uint64_t a1, uint64_t a2)
{
  sub_1BF02693C(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1BF02693C(0, &unk_1EBDCC1E8, MEMORY[0x1E69E7E90], type metadata accessor for Promise);
  swift_allocObject();
  v8 = sub_1BF0FC724();
  v9 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v8;

  sub_1BF089AC0();

  return v8;
}

uint64_t sub_1BF0FC2FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v8 = sub_1BF17A6EC();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();
  v14 = (a4 + *a4);
  v11 = a4[1];
  v12 = swift_task_alloc();
  v6[8] = v12;
  *v12 = v6;
  v12[1] = sub_1BF0FC454;

  return v14(v6 + 2);
}

uint64_t sub_1BF0FC454()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    v9 = sub_1BF0FC5EC;
  }

  else
  {
    v9 = sub_1BF0FC550;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BF0FC550()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0[4] + 16);
  v2 = sub_1BF050DB4(v0[2], sub_1BF094F8C);
  v2();

  v3 = v0[7];

  OUTLINED_FUNCTION_9();

  return v4();
}

uint64_t sub_1BF0FC5EC()
{
  OUTLINED_FUNCTION_13_2();
  v1 = *(v0 + 72);
  *(v0 + 24) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  sub_1BEFF3A00(0, &qword_1ED8EFD30);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 72);
  if (v5)
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);

    v11 = *(v9 + 16);
    v12 = sub_1BF099D60();
    v12();

    (*(v8 + 8))(v7, v10);
    v13 = *(v0 + 24);
  }

  else
  {
    v14 = *(v0 + 32);

    v15 = *(v14 + 16);
    v16 = sub_1BF08AF2C();
    v16();

    v13 = v6;
  }

  v17 = *(v0 + 56);

  OUTLINED_FUNCTION_9();

  return v18();
}

uint64_t sub_1BF0FC724()
{
  v1 = v0;
  v4 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v2 = UnfairLock.init(options:)(&v4);
  sub_1BF02693C(0, &qword_1EBDCC1F8, MEMORY[0x1E69E7E90], type metadata accessor for Seal);
  swift_allocObject();
  *(v1 + 16) = sub_1BF034CD4(v2);
  return v1;
}

uint64_t sub_1BF0FC7D0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v5 = off_1ED8F0218;
  swift_retain_n();
  v6 = sub_1BF09D954(v5, sub_1BF10353C, a2, sub_1BF103540, a2, sub_1BF103544, a2);

  (v6)(v7);
}

void sub_1BF0FC8C0()
{
  v1 = *(v0 + 32);
  UnfairLock.lock()();
  if (*(v0 + 24))
  {
    v2 = *(v0 + 24);

    sub_1BF09E144();

    v3 = *(v0 + 24);
    *(v0 + 24) = 0;
  }

  v4 = *(v1 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_1BF0FC930(uint64_t a1)
{
  v3 = *(v1 + 32);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {
    v4 = *(v1 + 24);

    sub_1BF09DF9C(a1);

    v5 = *(v1 + 24);
    *(v1 + 24) = 0;
  }

  v6 = *(v3 + 16);

  os_unfair_lock_unlock(v6);
}

void sub_1BF0FC9D0(char a1)
{
  v3 = *(v1 + 32);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {
    v4 = *(v1 + 24);

    sub_1BF0FCE6C((a1 & 1));

    v5 = *(v1 + 24);
    *(v1 + 24) = 0;
  }

  v6 = *(v3 + 16);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1BF0FCA48(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BF032E20(0, &qword_1ED8EFB90, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF185520;
  *(inited + 32) = v3;

  *(inited + 40) = sub_1BF0FD23C(a1, a2, a3);
  v8 = sub_1BF0FD3E4(inited);
  swift_setDeallocating();
  sub_1BF0C8344();
  return v8;
}

uint64_t sub_1BF0FCB20(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_45_4(result);

    sub_1BF0FBC04();
    OUTLINED_FUNCTION_44_2();

    a1(v3);
  }

  return result;
}

uint64_t sub_1BF0FCBE4(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_45_4(result);

    sub_1BF0FBD44(a1);
    OUTLINED_FUNCTION_44_2();

    a1(v3);
  }

  return result;
}

uint64_t sub_1BF0FCC7C(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_57_4(result);

    sub_1BF0FBE7C(a1, a2);
    OUTLINED_FUNCTION_26_8();

    a2(v5);
    return OUTLINED_FUNCTION_58_3();
  }

  return result;
}

uint64_t sub_1BF0FCD60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(void), void (*a5)(char *))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_57_4(result);

    sub_1BF0FBFC8(a1, a2, a3, a4, a5);
    OUTLINED_FUNCTION_26_8();

    a5(v11);
    return OUTLINED_FUNCTION_58_3();
  }

  return result;
}

uint64_t sub_1BF0FCE6C(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_45_4(result);

    sub_1BF0FC114();
    OUTLINED_FUNCTION_44_2();

    a1(v3);
  }

  return result;
}

BOOL sub_1BF0FCF04(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1BF0FCF34(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_1BF0FCF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a6;
  v27 = a5;
  v12 = sub_1BF179B5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF179BBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a7;
  v22[5] = a8;
  aBlock[4] = sub_1BF0BB6BC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_84;
  v23 = _Block_copy(aBlock);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF179B8C();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1BF0356E4(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF02693C(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v26, v21, v16, v23);
  _Block_release(v23);
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
}

uint64_t sub_1BF0FD23C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF179BEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-v12];
  sub_1BF179BDC();
  sub_1BF179C6C();
  v14 = *(v7 + 8);
  v14(v11, v6);
  v15 = sub_1BF04E824(a1);
  v19 = v15;
  v20 = v13;
  v21 = a2;
  v22 = a3;
  sub_1BF032E20(0, qword_1ED8EB080, &type metadata for BackgroundFetchResult, type metadata accessor for Promise);
  swift_allocObject();
  v16 = sub_1BF08A8D8(sub_1BF10354C, v18);

  v14(v13, v6);
  return v16;
}

uint64_t sub_1BF0FD3E4(uint64_t a1)
{
  v2 = sub_1BEFE90AC(a1);
  if (v2)
  {
    v3 = v2;
    sub_1BF032E20(0, &qword_1EBDCAB48, &type metadata for BackgroundFetchResult, type metadata accessor for OnlyOnceDeferredPromise);
    swift_allocObject();
    result = sub_1BF102B54();
    if (v3 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = result;
      for (i = 0; i != v3; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB53020](i, a1);
        }

        else
        {
          v7 = *(a1 + 8 * i + 32);
        }

        if (qword_1ED8F0210 != -1)
        {
          swift_once();
        }

        sub_1BF0FC7D0(off_1ED8F0218, v5);
      }

      result = swift_beginAccess();
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 16);

        return v8;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1BF095D40();
    v10 = swift_allocError();
    *v11 = xmmword_1BF184A50;
    *(v11 + 16) = 2;
    sub_1BF032E20(0, qword_1ED8EB080, &type metadata for BackgroundFetchResult, type metadata accessor for Promise);
    swift_allocObject();
    return sub_1BF0DAD5C(v10);
  }

  return result;
}

uint64_t BackgroundFetchResult.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t BackgroundFetchTrigger.readableString.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x7266655220707041;
  }

  if (v1 == 1 || v1 == 2)
  {
    return 0x20676E697661654CLL;
  }

  MEMORY[0x1BFB52000](*v0);
  return 0x656C756465686353;
}

uint64_t BackgroundFetchTrigger.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF17BB6C();
  if (v2)
  {
    if (v2 == 1)
    {
      OUTLINED_FUNCTION_17_12();
    }

    else if (v2 == 2)
    {
      OUTLINED_FUNCTION_17_12();
    }

    else
    {
      OUTLINED_FUNCTION_50_3();
      sub_1BF179F3C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_3();
  }

  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

TeaFoundation::BackgroundFetchConditions sub_1BF0FD814@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = BackgroundFetchConditions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BF0FD854@<X0>(uint64_t *a1@<X8>)
{
  result = BackgroundFetchConditions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BF0FD8CC()
{
  sub_1BF032E20(0, qword_1ED8EB080, &type metadata for BackgroundFetchResult, type metadata accessor for Promise);
  swift_allocObject();
  return sub_1BF0AB134(0);
}

uint64_t BackgroundFetchWorker.performBackgroundFetch()(uint64_t a1)
{
  OUTLINED_FUNCTION_16_15(a1, qword_1ED8EB080, &type metadata for BackgroundFetchResult);
  swift_allocObject();
  return sub_1BF0AB134(0);
}

uint64_t BackgroundFetchWorker.performBackgroundFetch(trigger:conditions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    OUTLINED_FUNCTION_16_15(a1, qword_1ED8EB080, &type metadata for BackgroundFetchResult);
    swift_allocObject();
    return sub_1BF0AB134(0);
  }

  else
  {
    v5 = *(a4 + 24);

    return v5(a3, a4);
  }
}

id BackgroundFetchManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundFetchManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers;
  sub_1BF026754();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_configuredTriggers] = MEMORY[0x1E69E7CD0];
  *(v3 + 16) = v4;
  v5 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_networkReachability;
  if (qword_1ED8EB7C8 != -1)
  {
    OUTLINED_FUNCTION_18_9();
  }

  *&v0[v5] = qword_1ED8F5260;
  v6 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_backgroundTaskSchedulingQueue;
  v7 = objc_allocWithZone(MEMORY[0x1E696ADC8]);

  v8 = [v7 init];
  *&v0[v6] = v8;
  *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager] = 0;
  *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor] = 0;
  *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_journal] = 0;
  [v8 setMaxConcurrentOperationCount_];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void BackgroundFetchManager.__allocating_init(journal:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_66();
  BackgroundFetchManager.init(journal:)(v2);
}

uint64_t BackgroundFetchManager.performBackgroundFetch()()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  return sub_1BF0FDBF4(v1);
}

uint64_t sub_1BF0FDBF4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v3;
  v24 = *(a1 + 32);
  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5248);
  sub_1BF02832C(v23, &v21);
  v5 = sub_1BF1797DC();
  v6 = sub_1BF17ACDC();
  sub_1BF0282E0(v23);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    if (*(&v23[0] + 1))
    {
      if (*(&v23[0] + 1) == 2)
      {
        v9 = 0x20676E697661654CLL;
        v10 = 1802661719;
      }

      else
      {
        if (*(&v23[0] + 1) != 1)
        {
          v21 = 0x656C756465686353;
          v22 = 0xEB00000000203A64;
          MEMORY[0x1BFB52000](*&v23[0]);
          v9 = v21;
          v11 = v22;
          goto LABEL_12;
        }

        v9 = 0x20676E697661654CLL;
        v10 = 1701670728;
      }

      v11 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    }

    else
    {
      v9 = 0x7266655220707041;
      v11 = 0xEB00000000687365;
    }

LABEL_12:
    v12 = sub_1BF01A7AC(v9, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1BEFE0000, v5, v6, "will perform background fetch for trigger: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB547B0](v8, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }

  v13 = *(v2 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_journal);
  if (v13)
  {
    v14 = sub_1BF17A07C();

    [v13 addEntryWithReason_];
  }

  sub_1BF0FE560(v2, v23);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  v15 = sub_1BF17AD5C();
  sub_1BF09ABCC();

  v16 = sub_1BF17AD5C();
  sub_1BF08C5C8();

  if (*(&v23[0] + 1) <= 2uLL)
  {
    v17 = qword_1BF1859F0[*(&v23[0] + 1)];
  }

  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v18 = sub_1BF0FCA48(off_1ED8F0218, 0, 0);

  return v18;
}

uint64_t BackgroundFetchManager.performBackgroundFetch(trigger:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return sub_1BF0FDBF4(v4);
}

Swift::Void __swiftcall BackgroundFetchManager.rescheduleBackgroundTasks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = sub_1BEFE90AC(v2);
  v4 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB53020](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      Strong = swift_unknownObjectWeakLoadStrong();
      v7 = *(v5 + 24);

      if (!Strong)
      {
        goto LABEL_15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v36 + 16);
        sub_1BF0A6B70();
        v36 = v11;
      }

      v8 = *(v36 + 16);
      if (v8 >= *(v36 + 24) >> 1)
      {
        sub_1BF0A6B70();
        v36 = v12;
      }

      *(v36 + 16) = v8 + 1;
      v9 = v36 + 16 * v8;
      *(v9 + 32) = Strong;
      *(v9 + 40) = v7;
      ++v4;
    }

    else
    {

LABEL_15:
      ++v4;
    }
  }

  os_unfair_lock_unlock((v1 + 24));

  v13 = v36;
  v35 = *(v36 + 16);
  if (v35)
  {
    v14 = 0;
    while (2)
    {
      if (v14 >= *(v13 + 16))
      {
        goto LABEL_38;
      }

      v15 = (v36 + 32 + 16 * v14);
      v37 = v14 + 1;
      v16 = *v15;
      v17 = v15[1];
      ObjectType = swift_getObjectType();
      v19 = *(v17 + 8);
      swift_unknownObjectRetain();
      v20 = v19(ObjectType, v17);
      v21 = 0;
      v22 = v20 + 56;
      v23 = 1 << *(v20 + 32);
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v25 = v24 & *(v20 + 56);
      v26 = (v23 + 63) >> 6;
      v38 = v20;
      while (v25)
      {
LABEL_29:
        v28 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v29 = (*(v20 + 48) + 40 * (v28 | (v21 << 6)));
        v30 = v29[1];
        if (v30 >= 3)
        {
          v32 = v29[3];
          v31 = v29[4];
          v33 = *v29;
          v39 = v29[2];
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

          sub_1BF037B48(v33, v30, &v39, v32, v31);
          sub_1BF03794C(v33, v30);
          v20 = v38;
        }
      }

      while (1)
      {
        v27 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v27 >= v26)
        {
          break;
        }

        v25 = *(v22 + 8 * v27);
        ++v21;
        if (v25)
        {
          v21 = v27;
          goto LABEL_29;
        }
      }

      swift_unknownObjectRelease();
      v13 = v36;
      v14 = v37;
      if (v37 != v35)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_94();
}

uint64_t sub_1BF0FE560(uint64_t a1, uint64_t a2)
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1BF0FE644(v11);
  v4 = *&v11[0];
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v12 = *(a2 + 32);
  v10 = v4;
  sub_1BF02832C(a2, &v9);
  sub_1BF0FE93C(v11, &v10, a1, &v13, a2, v4);
  v6 = v13;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF09E768(off_1ED8F0218, v6);

  return v7;
}

uint64_t sub_1BF0FE644@<X0>(unint64_t *a1@<X8>)
{
  if (TFDrawingUnlimitedPower())
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_networkReachability);
  sub_1BF0370D4();
  v5 = sub_1BF0D1B00();

  v6 = v3 & 0xFFFFFFFFFFFFFFFELL | (v5 >> 2) & 1;
  sub_1BF0370D4();
  v7 = sub_1BF0D1B00();

  sub_1BF0370D4();
  LOBYTE(v4) = sub_1BF0D1B00();

  *a1 = (v6 & 0xFFFFFFFFFFFFFFFBLL | (v7 >> 2) & 2 | (4 * (v4 & 1))) ^ 3;
  return result;
}

uint64_t sub_1BF0FE700(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF1797FC();
  __swift_project_value_buffer(v10, qword_1ED8F5248);
  swift_unknownObjectRetain();
  v11 = sub_1BF1797DC();
  v12 = sub_1BF17ACDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = a1;
    v22 = v20;
    *&v23[0] = 0;
    *v13 = 136446210;
    *(&v23[0] + 1) = 0xE000000000000000;
    v21[1] = a2;
    sub_1BEFF3A00(0, &qword_1EBDCAB80);
    sub_1BF17B40C();
    v14 = a2;
    v15 = a5;
    v16 = sub_1BF01A7AC(*&v23[0], 0xE000000000000000, &v22);

    *(v13 + 4) = v16;
    a5 = v15;
    a2 = v14;
    _os_log_impl(&dword_1BEFE0000, v11, v12, "will trigger worker: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB547B0](v20, -1, -1);
    MEMORY[0x1BFB547B0](v13, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v18 = *(a4 + 16);
  v23[0] = *a4;
  v23[1] = v18;
  v24 = *(a4 + 32);
  v21[0] = a5;
  (*(a2 + 32))(v23, v21, ObjectType, a2);
  MEMORY[0x1BFB52290]();
  sub_1BF005F5C(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_1BF17A59C();
}

uint64_t sub_1BF0FE93C(__int128 *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[1];
  v38 = *a1;
  v39 = v7;
  v40 = *(a1 + 4);
  v32 = *a2;
  v8 = *(a3 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers);

  os_unfair_lock_lock((v8 + 24));
  sub_1BF0FF1D4((v8 + 16), v34);
  os_unfair_lock_unlock((v8 + 24));
  v9 = *&v34[0];

  v10 = *(v9 + 16);
  if (v10)
  {
    v31 = a5;
    for (i = 32; ; i += 16)
    {
      v33 = *(v9 + i);
      v12 = *(v9 + i);
      ObjectType = swift_getObjectType();
      v14 = *(*(&v33 + 1) + 8);
      swift_unknownObjectRetain();
      v15 = v14(ObjectType, *(&v33 + 1));
      v16 = sub_1BF028B1C(&v38, v15);

      if ((v16 & 1) == 0)
      {
        break;
      }

      v34[0] = v38;
      v34[1] = v39;
      v35 = v40;
      (*(*(&v33 + 1) + 16))(&v36, v34, ObjectType, *(&v33 + 1));
      if ((v36 & ~v32) != 0)
      {
        if (qword_1ED8EAEC8 != -1)
        {
          swift_once();
        }

        v24 = sub_1BF1797FC();
        __swift_project_value_buffer(v24, qword_1ED8F5248);
        swift_unknownObjectRetain();
        v18 = sub_1BF1797DC();
        v25 = sub_1BF17ACDC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v18, v25))
        {
          v20 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v37[0] = v26;
          *v20 = 136446210;
          *&v34[0] = 0;
          *(&v34[0] + 1) = 0xE000000000000000;
          v36 = v33;
          sub_1BEFF3A00(0, &qword_1EBDCAB80);
          sub_1BF17B40C();
          v27 = sub_1BF01A7AC(*&v34[0], *(&v34[0] + 1), v37);

          *(v20 + 4) = v27;
          _os_log_impl(&dword_1BEFE0000, v18, v25, "skipping worker because its preconditions aren't satisfied, worker=%{public}s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          v23 = v26;
LABEL_14:
          MEMORY[0x1BFB547B0](v23, -1, -1);
          MEMORY[0x1BFB547B0](v20, -1, -1);
        }

        goto LABEL_15;
      }

      sub_1BF0FE700(v12, *(&v33 + 1), a4, v31, a6);
      swift_unknownObjectRelease();
LABEL_16:
      if (!--v10)
      {

        return sub_1BF0282E0(v31);
      }
    }

    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF1797FC();
    __swift_project_value_buffer(v17, qword_1ED8F5248);
    swift_unknownObjectRetain();
    v18 = sub_1BF1797DC();
    v19 = sub_1BF17ACDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136446210;
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      v36 = v33;
      sub_1BEFF3A00(0, &qword_1EBDCAB80);
      sub_1BF17B40C();
      v22 = sub_1BF01A7AC(*&v34[0], *(&v34[0] + 1), v37);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_1BEFE0000, v18, v19, "skipping worker because it hasn't requested this trigger, worker=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v23 = v21;
      goto LABEL_14;
    }

LABEL_15:
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  return sub_1BF0282E0(a5);
}

void sub_1BF0FEDD4(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = sub_1BF0FCF34(1, *a1);
  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5248);
  v5 = sub_1BF1797DC();
  v6 = sub_1BF17ACDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    BYTE8(v11) = 0;
    v9 = v3;
    *&v11 = v3;
    sub_1BF17B40C();
    v10 = sub_1BF01A7AC(*(&v11 + 1), 0xE000000000000000, &v12);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_1BEFE0000, v5, v6, "successfully performed background fetch with result%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB547B0](v8, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }

  else
  {

    v9 = v3;
  }

  *a2 = v9;
}

void sub_1BF0FEF80(void *a1)
{
  v2 = a1;
  sub_1BEFF3A00(0, &qword_1ED8EFD30);
  if (!swift_dynamicCast())
  {
LABEL_4:
    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v3 = sub_1BF1797FC();
    __swift_project_value_buffer(v3, qword_1ED8F5248);
    v4 = a1;
    v5 = sub_1BF1797DC();
    v6 = sub_1BF17ACBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1BEFE0000, v5, v6, "background fetch failed with error: %{public}@", v7, 0xCu);
      sub_1BF028EE0(v8, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v8, -1, -1);
LABEL_8:
      MEMORY[0x1BFB547B0](v7, -1, -1);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v15)
  {
    sub_1BF08A4A8(v13, v14, v15);
    goto LABEL_4;
  }

  sub_1BF08A4A8(v13, v14, 0);
  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v11 = sub_1BF1797FC();
  __swift_project_value_buffer(v11, qword_1ED8F5248);
  v5 = sub_1BF1797DC();
  v12 = sub_1BF17ACBC();
  if (os_log_type_enabled(v5, v12))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BEFE0000, v5, v12, "background fetch timed out", v7, 2u);
    goto LABEL_8;
  }

LABEL_9:
}

void sub_1BF0FF1D4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v21 = MEMORY[0x1E69E7CC0];
  v4 = sub_1BEFE90AC(*a1);
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v7 = *(v21 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  *a1 = v21;
  v8 = sub_1BEFE90AC(v21);
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (v8 != v9)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB53020](v9, v21);
    }

    else
    {
      if (v9 >= *(v21 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(v21 + 8 * v9 + 32);
    }

    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v14 = *(v11 + 24);

    ++v9;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v10 + 16);
        sub_1BF0A6B70();
        v10 = v18;
      }

      v15 = *(v10 + 16);
      if (v15 >= *(v10 + 24) >> 1)
      {
        sub_1BF0A6B70();
        v10 = v19;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = Strong;
      *(v16 + 40) = v14;
      v9 = v12;
    }
  }

  *a2 = v10;
}

uint64_t sub_1BF0FF3FC(uint64_t a1)
{
  sub_1BF100A9C();
  *(swift_allocObject() + 16) = a1;
  v2 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1BF09AE0C();
}

uint64_t sub_1BF0FF4CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1BEFF9AF8(0, &unk_1EBDCC210, 0x1E6999058);
    v4 = sub_1BF17A4DC();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1BF0FF570(uint64_t a1, id a2, uint64_t a3, const char *a4, const char *a5, const char *a6)
{
  if (a2)
  {
    v8 = a2;
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63();
    }

    v9 = sub_1BF1797FC();
    __swift_project_value_buffer(v9, qword_1ED8F5248);
    v10 = OUTLINED_FUNCTION_66();
    oslog = sub_1BF1797DC();
    v11 = sub_1BF17ACBC();

    if (!os_log_type_enabled(oslog, v11))
    {

      OUTLINED_FUNCTION_55_4();

      goto LABEL_14;
    }

    v12 = OUTLINED_FUNCTION_70();
    v13 = OUTLINED_FUNCTION_83();
    *v12 = 138543362;
    v14 = a2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1BEFE0000, oslog, v11, a4, v12, 0xCu);
    OUTLINED_FUNCTION_2_47();
    sub_1BF028EE0(v13, v16);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();

LABEL_19:
    OUTLINED_FUNCTION_55_4();

LABEL_14:

    return;
  }

  if (!a1 || !sub_1BEFE90AC(a1))
  {
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63();
    }

    v26 = sub_1BF1797FC();
    __swift_project_value_buffer(v26, qword_1ED8F5248);
    osloga = sub_1BF1797DC();
    v27 = sub_1BF17ACDC();
    if (os_log_type_enabled(osloga, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BEFE0000, osloga, v27, a6, v28, 2u);
      OUTLINED_FUNCTION_28();
    }

    goto LABEL_19;
  }

  if (qword_1ED8EAEC8 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  v20 = sub_1BF1797FC();
  __swift_project_value_buffer(v20, qword_1ED8F5248);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v21 = sub_1BF1797DC();
  v22 = sub_1BF17ACDC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_70();
    *v23 = 134217984;
    *(v23 + 4) = sub_1BEFE90AC(a1);

    _os_log_impl(&dword_1BEFE0000, v21, v22, a5, v23, 0xCu);
    OUTLINED_FUNCTION_24_10();
  }

  else
  {
  }

  sub_1BF0FF3FC(a1);
  OUTLINED_FUNCTION_55_4();
}

uint64_t sub_1BF0FF870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v24 = a7;
    v18 = *(a3 + 16);
    v25[0] = *a3;
    v25[1] = v18;
    v26 = *(a3 + 32);
    sub_1BF0FDBF4(v25);
    *(swift_allocObject() + 16) = a1;
    v19 = qword_1ED8F0210;
    v20 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = off_1ED8F0218;
    sub_1BF09AD04();

    *(swift_allocObject() + 16) = v20;
    v22 = v20;
    sub_1BEFF77FC();

    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a4;
    v23[4] = a5;
    v23[5] = a6;
    v23[6] = v24;
    v23[7] = a8;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BF08C66C(v21, sub_1BF1034B0, v23);
  }

  return result;
}

uint64_t sub_1BF0FFA88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t))
{
  v9 = sub_1BF1794AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = a4;
    a5(result);
    sub_1BF0FFBC4(a2, a3, &v16, v13);

    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

void sub_1BF0FFBC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1BF1794AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - v13;
  v56 = *a3;
  v15 = objc_opt_self();
  v16 = [v15 sharedScheduler];
  v17 = sub_1BF17A07C();
  [v16 cancelTaskRequestWithIdentifier_];

  sub_1BF1793CC();
  sub_1BF0356E4(&qword_1EBDCAEE0, MEMORY[0x1E6969530]);
  LOBYTE(v16) = sub_1BF17A05C();
  v18 = *(v9 + 8);
  v18(v14, v8);
  if (v16)
  {
    v19 = a1;
    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v20 = sub_1BF1797FC();
    __swift_project_value_buffer(v20, qword_1ED8F5248);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v21 = sub_1BF1797DC();
    v22 = sub_1BF17ACDC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1BF01A7AC(v19, a2, v57);
      _os_log_impl(&dword_1BEFE0000, v21, v22, "will not schedule task request for %{public}s in distant future", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB547B0](v24, -1, -1);
      MEMORY[0x1BFB547B0](v23, -1, -1);
    }

LABEL_15:

    goto LABEL_16;
  }

  sub_1BEFF9AF8(0, &unk_1EBDCC1C8, 0x1E695A9D0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v54 = a1;
  v25 = sub_1BF100930();
  v26 = sub_1BF1793FC();
  [v25 setEarliestBeginDate_];

  [v25 setRequiresNetworkConnectivity_];
  [v25 setRequiresExternalPower_];
  v27 = [v15 sharedScheduler];
  v57[0] = 0;
  v28 = [v27 submitTaskRequest:v25 error:v57];

  if (!v28)
  {
    v43 = v57[0];
    v44 = sub_1BF17911C();

    swift_willThrow();
    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v45 = sub_1BF1797FC();
    __swift_project_value_buffer(v45, qword_1ED8F5248);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v46 = v44;
    v21 = sub_1BF1797DC();
    v47 = sub_1BF17ACBC();

    if (!os_log_type_enabled(v21, v47))
    {

      goto LABEL_16;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v57[0] = v50;
    *v48 = 136446466;
    *(v48 + 4) = sub_1BF01A7AC(v54, a2, v57);
    *(v48 + 12) = 2114;
    v51 = v44;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v52;
    *v49 = v52;
    _os_log_impl(&dword_1BEFE0000, v21, v47, "failed to schedule task request for  %{public}s with error: %{public}@", v48, 0x16u);
    sub_1BF028EE0(v49, sub_1BF082F84);
    MEMORY[0x1BFB547B0](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1BFB547B0](v50, -1, -1);
    MEMORY[0x1BFB547B0](v48, -1, -1);

    goto LABEL_15;
  }

  v29 = qword_1ED8EAEC8;
  v30 = v57[0];
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_1BF1797FC();
  __swift_project_value_buffer(v31, qword_1ED8F5248);
  v32 = v55;
  (*(v9 + 16))(v55, a4, v8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v33 = sub_1BF1797DC();
  v34 = sub_1BF17ACDC();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v54;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57[0] = v56;
    *v37 = 136446466;
    *(v37 + 4) = sub_1BF01A7AC(v36, a2, v57);
    *(v37 + 12) = 2082;
    sub_1BF0356E4(&qword_1EBDCC1C0, MEMORY[0x1E6969530]);
    v38 = sub_1BF17B6FC();
    v40 = v39;
    v18(v32, v8);
    v41 = sub_1BF01A7AC(v38, v40, v57);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_1BEFE0000, v33, v34, "successfully scheduled task request for %{public}s at %{public}s", v37, 0x16u);
    v42 = v56;
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v42, -1, -1);
    MEMORY[0x1BFB547B0](v37, -1, -1);
  }

  else
  {

    v18(v32, v8);
  }

LABEL_16:
  v53 = *MEMORY[0x1E69E9840];
}

void sub_1BF10034C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1BF1003B4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v54 = a7;
  v55 = a8;
  v56 = a6;
  v58 = a3;
  v59 = a2;
  v62 = sub_1BF1794AC();
  v57 = *(v62 - 8);
  v12 = *(v57 + 64);
  v13 = MEMORY[0x1EEE9AC00](v62);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v54 - v16;
  v65 = a1;
  v17 = sub_1BEFE90AC(a1);
  if (!v17)
  {
LABEL_19:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v35 = v59;
    if (Strong)
    {
      v36 = Strong;
      v66 = v54;
      sub_1BF0FFBC4(a4, a5, &v66, v55);
    }

    return v35();
  }

  v18 = v17;
  v19 = 0;
  v64 = v65 & 0xC000000000000001;
  v60 = v65 & 0xFFFFFFFFFFFFFF8;
  v61 = (v57 + 8);
  while (1)
  {
    if (v64)
    {
      v20 = MEMORY[0x1BFB53020](v19, v65);
    }

    else
    {
      if (v19 >= *(v60 + 16))
      {
        goto LABEL_28;
      }

      v20 = *(v65 + 8 * v19 + 32);
    }

    v8 = v20;
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v22 = a5;
    v23 = a4;
    v24 = [v20 identifier];
    v25 = sub_1BF17A0AC();
    v27 = v26;

    a4 = v23;
    a5 = v22;
    if (v25 == a4 && v27 == v22)
    {
    }

    else
    {
      v29 = sub_1BF17B86C();

      if ((v29 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v30 = [v8 earliestBeginDate];
    if (v30)
    {
      break;
    }

LABEL_18:

    ++v19;
    if (v21 == v18)
    {
      goto LABEL_19;
    }
  }

  v31 = v30;
  v32 = v63;
  sub_1BF17945C();

  sub_1BF17942C();
  if (v33 >= 86400.0)
  {
    (*v61)(v32, v62);
    goto LABEL_18;
  }

  if (qword_1ED8EAEC8 == -1)
  {
    goto LABEL_22;
  }

LABEL_29:
  swift_once();
LABEL_22:
  v37 = sub_1BF1797FC();
  __swift_project_value_buffer(v37, qword_1ED8F5248);
  v38 = v15;
  v39 = v15;
  v40 = v62;
  v41 = v63;
  (*(v57 + 16))(v39, v63, v62);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v42 = sub_1BF1797DC();
  v43 = sub_1BF17ACDC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v44 = 136446466;
    *(v44 + 4) = sub_1BF01A7AC(a4, a5, v67);
    *(v44 + 12) = 2082;
    sub_1BF0356E4(&qword_1EBDCC1C0, MEMORY[0x1E6969530]);
    v45 = sub_1BF17B6FC();
    v47 = v46;
    v48 = v40;
    v49 = *v61;
    (*v61)(v38, v48);
    v50 = sub_1BF01A7AC(v45, v47, v67);

    *(v44 + 14) = v50;
    _os_log_impl(&dword_1BEFE0000, v42, v43, "found existing task request for %{public}s, scheduledDate=%{public}s", v44, 0x16u);
    v51 = v65;
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v51, -1, -1);
    MEMORY[0x1BFB547B0](v44, -1, -1);

    v49(v63, v48);
  }

  else
  {

    v52 = *v61;
    (*v61)(v38, v40);
    v52(v41, v40);
  }

  v35 = v59;
  return v35();
}

uint64_t sub_1BF1008AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1BEFF9AF8(0, &qword_1EBDCC1B8, 0x1E695A9E0);
  v3 = sub_1BF17A4DC();

  v2(v3);
}

id sub_1BF100930()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BF17A07C();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

id sub_1BF1009A4()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager;
  v2 = *(v0 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager);
  }

  else
  {
    v4 = sub_1BF100A08(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BF100A08(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FBE8]) init];
  [v2 setDelegate_];
  [v2 setDesiredAccuracy_];
  [v2 setAllowsBackgroundLocationUpdates_];
  [v2 setPausesLocationUpdatesAutomatically_];
  return v2;
}

uint64_t sub_1BF100A9C()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor;
  if (*&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor])
  {
    v2 = *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = v0;
    v2 = sub_1BF0FC174(&unk_1BF1859C0, v3);
    v5 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1BF100B38(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1BF17978C();
  v3 = *(MEMORY[0x1E69E7EA0] + 4);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BF100BF0;

  return MEMORY[0x1EEE6C3E8](0xD000000000000019, 0x80000001BF18EE60);
}

uint64_t sub_1BF100BF0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF100CD8()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  sub_1BF100D4C(v1);
  *v3 = v1;
  OUTLINED_FUNCTION_9();

  return v4();
}

uint64_t sub_1BF100D4C(uint64_t a1)
{
  sub_1BF02693C(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = v1;

  v9 = v1;
  sub_1BF0FB930(0, 0, v6, &unk_1BF1859E0, v8);
}

void sub_1BF100E5C(uint64_t *a1, uint64_t a2)
{
  v36 = sub_1BF1796FC();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF02693C(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v13 = *a1;
  v37 = a2;
  v14 = sub_1BEFE90AC(a2);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
LABEL_11:
    v29 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v15;
    v30[5] = v13;

    sub_1BF089AC0();

    return;
  }

  v16 = v14;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1BF070768(0, v14 & ~(v14 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v31 = v13;
    v32 = v12;
    v17 = 0;
    v15 = v38;
    v35 = v37 & 0xC000000000000001;
    v33 = v2;
    v34 = v5 + 32;
    v18 = v16;
    do
    {
      if (v35)
      {
        v19 = MEMORY[0x1BFB53020](v17, v37);
      }

      else
      {
        v19 = *(v37 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 location];
      [v21 latitude];
      v23 = v22;

      v24 = [v20 location];
      [v24 longitude];
      v26 = v25;

      CLLocationCoordinate2DMake(v23, v26);
      sub_1BF1796EC();

      v38 = v15;
      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1BF070768(v27 > 1, v28 + 1, 1);
        v15 = v38;
      }

      ++v17;
      *(v15 + 16) = v28 + 1;
      (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, v8, v36);
    }

    while (v18 != v17);
    v12 = v32;
    v13 = v31;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1BF1011A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BF1011C4, 0, 0);
}

uint64_t sub_1BF1011C4()
{
  OUTLINED_FUNCTION_13_2();
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = sub_1BF1796FC();
    *(v0 + 80) = v3;
    v4 = OUTLINED_FUNCTION_1(v3);
    v6 = v5;
    *(v0 + 88) = v5;
    v7 = *(v5 + 80);
    *(v0 + 112) = v7;
    v8 = (v7 + 32) & ~v7;
    *(v0 + 96) = *(v9 + 72);
    *(v0 + 104) = 0;
    v10 = *(v0 + 64);
    *(v0 + 40) = v4;
    OUTLINED_FUNCTION_13_18();
    *(v0 + 48) = sub_1BF0356E4(v11, v12);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    (*(v6 + 16))(boxed_opaque_existential_0, v1 + v8, v3);
    sub_1BF17978C();
    OUTLINED_FUNCTION_12_19();
    sub_1BF0356E4(v14, v15);
    sub_1BF17A6AC();
    v16 = OUTLINED_FUNCTION_10_24();

    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v19();
  }
}

uint64_t sub_1BF101350()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 64);
  sub_1BF17970C();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BF1013D0()
{
  v1 = *(v0 + 104) + 1;
  if (v1 == *(v0 + 72))
  {
    OUTLINED_FUNCTION_9();

    return v2();
  }

  else
  {
    *(v0 + 104) = v1;
    v4 = *(v0 + 88);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = *(v0 + 56) + ((*(v0 + 112) + 32) & ~*(v0 + 112)) + *(v0 + 96) * v1;
    *(v0 + 40) = v5;
    OUTLINED_FUNCTION_13_18();
    *(v0 + 48) = sub_1BF0356E4(v8, v9);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    (*(v4 + 16))(boxed_opaque_existential_0, v7, v5);
    sub_1BF17978C();
    OUTLINED_FUNCTION_12_19();
    sub_1BF0356E4(v11, v12);
    v13 = sub_1BF17A6AC();
    v14 = OUTLINED_FUNCTION_10_24(v13);

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_1BF101514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = sub_1BF17973C();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  sub_1BF02693C(0, &qword_1EBDCC200, MEMORY[0x1E69E7E78], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v11 = sub_1BF17976C();
  v5[25] = v11;
  v12 = *(v11 - 8);
  v5[26] = v12;
  v13 = *(v12 + 64) + 15;
  v5[27] = swift_task_alloc();
  v14 = sub_1BF17975C();
  v5[28] = v14;
  v15 = *(v14 - 8);
  v5[29] = v15;
  v16 = *(v15 + 64) + 15;
  v5[30] = swift_task_alloc();
  sub_1BF17978C();
  sub_1BF0356E4(&qword_1EBDCC1E0, MEMORY[0x1E69E7E90]);
  v18 = sub_1BF17A6AC();

  return MEMORY[0x1EEE6DFA0](sub_1BF101770, v18, v17);
}

uint64_t sub_1BF101770()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 216);
  v2 = *(v0 + 120);
  sub_1BF17977C();
  v3 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF1017D0()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  sub_1BF17974C();
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_14_19();
  sub_1BF0356E4(v5, v6);
  v7 = *(MEMORY[0x1E69E85A8] + 4);
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_8_27(v8);

  return MEMORY[0x1EEE6D8C8](v9);
}

uint64_t sub_1BF1018A0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 256) = v0;

  if (v0)
  {
    v9 = sub_1BF1020B0;
  }

  else
  {
    v9 = sub_1BF10199C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BF10199C()
{
  v2 = *(v0 + 192);
  v3 = *(v0 + 136);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 216);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(v0 + 152);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    OUTLINED_FUNCTION_9();

    return v10();
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 184), v2, v3);
    if (sub_1BF17972C() == 2)
    {
      if (qword_1ED8EAEC8 != -1)
      {
        OUTLINED_FUNCTION_0_63();
      }

      v12 = *(v0 + 176);
      v13 = *(v0 + 184);
      v14 = *(v0 + 168);
      v15 = *(v0 + 136);
      v16 = *(v0 + 144);
      v17 = sub_1BF1797FC();
      __swift_project_value_buffer(v17, qword_1ED8F5248);
      v18 = OUTLINED_FUNCTION_37_3();
      v1(v18);
      (v1)(v14, v13, v15);
      v19 = sub_1BF1797DC();
      v20 = sub_1BF17ACDC();
      v21 = os_log_type_enabled(v19, v20);
      v23 = *(v0 + 168);
      v22 = *(v0 + 176);
      v25 = *(v0 + 136);
      v24 = *(v0 + 144);
      if (v21)
      {
        v26 = swift_slowAlloc();
        *(v0 + 112) = swift_slowAlloc();
        *v26 = 136446466;
        v95 = v20;
        v27 = sub_1BF17971C();
        v29 = v28;
        v30 = *(v24 + 8);
        v30(v22, v25);
        v31 = sub_1BF01A7AC(v27, v29, (v0 + 112));

        *(v26 + 4) = v31;
        *(v26 + 12) = 2082;
        sub_1BF17972C();
        OUTLINED_FUNCTION_7_26();
        v39 = v38 | 0x6673697461730000;
        if (v40)
        {
          v33 = 0xEB00000000646569;
        }

        else
        {
          v39 = 0x6E776F6E6B6E55;
        }

        if (v32 == 3)
        {
          v33 = v37;
        }

        else
        {
          v36 = v39;
        }

        if (v32 == 1)
        {
          v41 = v34;
        }

        else
        {
          v41 = v36;
        }

        if (v32 == 1)
        {
          v42 = v35;
        }

        else
        {
          v42 = v33;
        }

        v30(*(v0 + 168), *(v0 + 136));
        v43 = sub_1BF01A7AC(v41, v42, (v0 + 112));

        *(v26 + 14) = v43;
        _os_log_impl(&dword_1BEFE0000, v19, v95, "processing region event, id=%{public}s, state=%{public}s", v26, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_24_10();
      }

      else
      {

        v30 = *(v24 + 8);
        v30(v23, v25);
        v30(v22, v25);
      }

      v74 = *(v0 + 184);
      sub_1BF17971C();
      v75 = OUTLINED_FUNCTION_34_4();

      if (v75)
      {
        v76 = *(v0 + 128);
        *(v0 + 56) = xmmword_1BF185530;
        *(v0 + 80) = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0;
        sub_1BF0FDBF4(v0 + 56);
      }

      v77 = *(v0 + 184);
      sub_1BF17971C();
      v78 = OUTLINED_FUNCTION_34_4();

      v79 = *(v0 + 184);
      v80 = *(v0 + 136);
      if (v78)
      {
        v81 = *(v0 + 128);
        v82 = *(v0 + 144) + 8;
        *(v0 + 16) = xmmword_1BF185540;
        *(v0 + 40) = 0;
        *(v0 + 48) = 0;
        *(v0 + 32) = 0;
        sub_1BF0FDBF4(v0 + 16);

        v30(v79, v80);
      }

      else
      {
        v30(*(v0 + 184), *(v0 + 136));
      }
    }

    else
    {
      if (qword_1ED8EAEC8 != -1)
      {
        OUTLINED_FUNCTION_0_63();
      }

      v44 = *(v0 + 184);
      v46 = *(v0 + 152);
      v45 = *(v0 + 160);
      v47 = *(v0 + 136);
      v48 = *(v0 + 144);
      v49 = sub_1BF1797FC();
      __swift_project_value_buffer(v49, qword_1ED8F5248);
      v50 = OUTLINED_FUNCTION_37_3();
      v1(v50);
      (v1)(v46, v44, v47);
      v51 = sub_1BF1797DC();
      v52 = sub_1BF17ACDC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = *(v0 + 160);
        v96 = *(v0 + 152);
        v55 = *(v0 + 136);
        v54 = *(v0 + 144);
        v56 = swift_slowAlloc();
        *(v0 + 104) = swift_slowAlloc();
        *v56 = 136446466;
        v57 = sub_1BF17971C();
        v59 = v58;
        v94 = *(v54 + 8);
        v94(v53, v55);
        v60 = sub_1BF01A7AC(v57, v59, (v0 + 104));

        *(v56 + 4) = v60;
        *(v56 + 12) = 2082;
        sub_1BF17972C();
        OUTLINED_FUNCTION_7_26();
        v68 = v67 | 0x6673697461730000;
        if (v40)
        {
          v62 = 0xEB00000000646569;
        }

        else
        {
          v68 = 0x6E776F6E6B6E55;
        }

        if (v61 == 3)
        {
          v62 = v66;
        }

        else
        {
          v65 = v68;
        }

        if (v61 == 1)
        {
          v69 = v63;
        }

        else
        {
          v69 = v65;
        }

        if (v61 == 1)
        {
          v70 = v64;
        }

        else
        {
          v70 = v62;
        }

        v71 = *(v0 + 184);
        v72 = *(v0 + 136);
        v94(*(v0 + 152), v72);
        v73 = sub_1BF01A7AC(v69, v70, (v0 + 104));

        *(v56 + 14) = v73;
        _os_log_impl(&dword_1BEFE0000, v51, v52, "ignoring region event, id=%{public}s, state=%{public}s", v56, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_24_10();
        OUTLINED_FUNCTION_28();

        v94(v71, v72);
      }

      else
      {
        v83 = *(v0 + 184);
        v85 = *(v0 + 152);
        v84 = *(v0 + 160);
        v86 = *(v0 + 136);
        v87 = *(v0 + 144);

        v88 = *(v87 + 8);
        v88(v85, v86);
        v88(v84, v86);
        v88(v83, v86);
      }
    }

    OUTLINED_FUNCTION_14_19();
    sub_1BF0356E4(v89, v90);
    v91 = *(MEMORY[0x1E69E85A8] + 4);
    v92 = swift_task_alloc();
    *(v0 + 248) = v92;
    *v92 = v0;
    v93 = OUTLINED_FUNCTION_8_27();

    return MEMORY[0x1EEE6D8C8](v93);
  }
}

uint64_t sub_1BF1020B0()
{
  OUTLINED_FUNCTION_5();
  *(v0 + 96) = *(v0 + 256);
  sub_1BEFF3A00(0, &qword_1ED8EFD30);
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BF102140()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  (*(v0[29] + 8))(v0[30], v0[28]);

  OUTLINED_FUNCTION_9();
  v9 = v0[32];

  return v8();
}

uint64_t CLMonitoringState.readableString.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v1 = 0x6673697461736E55;
  }

  if (a1 == 3)
  {
    v1 = 0x6F74696E6F6D6E55;
  }

  if (a1 == 1)
  {
    return 0x6569667369746153;
  }

  else
  {
    return v1;
  }
}

id BackgroundFetchManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall BackgroundFetchManager.locationManager(_:didStartMonitoringFor:)(CLLocationManager _, CLRegion didStartMonitoringFor)
{
  internal = _._internal;
  v3 = [_._internal identifier];
  sub_1BF17A0AC();

  OUTLINED_FUNCTION_6_32();
  LOBYTE(v3) = sub_1BF17A2AC();

  if (v3)
  {
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63();
    }

    v4 = sub_1BF1797FC();
    __swift_project_value_buffer(v4, qword_1ED8F5248);
    v5 = sub_1BF1797DC();
    v6 = sub_1BF17ACDC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BEFE0000, v5, v6, "successfully setup monitoring for Home region", v7, 2u);
      OUTLINED_FUNCTION_28();
    }
  }

  v8 = [internal identifier];
  sub_1BF17A0AC();
  OUTLINED_FUNCTION_49_4();

  OUTLINED_FUNCTION_6_32();
  LOBYTE(v8) = sub_1BF17A2AC();

  if (v8)
  {
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63();
    }

    v9 = sub_1BF1797FC();
    __swift_project_value_buffer(v9, qword_1ED8F5248);
    oslog = sub_1BF1797DC();
    v10 = sub_1BF17ACDC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BEFE0000, oslog, v10, "successfully setup monitoring for Work region", v11, 2u);
      OUTLINED_FUNCTION_28();
    }
  }
}

void BackgroundFetchManager.locationManager(_:monitoringDidFailFor:withError:)(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v58 = a2;
    v4 = [v58 identifier];
    sub_1BF17A0AC();

    OUTLINED_FUNCTION_6_32();
    LOBYTE(v4) = sub_1BF17A2AC();

    if (v4)
    {
      if (qword_1ED8EAEC8 != -1)
      {
        OUTLINED_FUNCTION_0_63();
      }

      v5 = sub_1BF1797FC();
      __swift_project_value_buffer(v5, qword_1ED8F5248);
      v6 = OUTLINED_FUNCTION_66();
      v7 = sub_1BF1797DC();
      v8 = sub_1BF17ACBC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = OUTLINED_FUNCTION_70();
        v10 = OUTLINED_FUNCTION_83();
        *v9 = 138543362;
        v11 = a3;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        OUTLINED_FUNCTION_56_3(&dword_1BEFE0000, v13, v14, "failed to setup monitoring for Home region with error: %{public}@");
        OUTLINED_FUNCTION_2_47();
        sub_1BF028EE0(v10, v15);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_24_10();
      }

      OUTLINED_FUNCTION_43_3(xmmword_1BF185530, v16, v17, v18, v19, v20, v21, v22, v23, v57, v58, v24, v61, v62, v63);
    }

    v25 = [v58 identifier];
    sub_1BF17A0AC();

    OUTLINED_FUNCTION_6_32();
    LOBYTE(v25) = sub_1BF17A2AC();

    if (v25)
    {
      if (qword_1ED8EAEC8 != -1)
      {
        OUTLINED_FUNCTION_0_63();
      }

      v26 = sub_1BF1797FC();
      __swift_project_value_buffer(v26, qword_1ED8F5248);
      v27 = OUTLINED_FUNCTION_66();
      v28 = sub_1BF1797DC();
      v29 = sub_1BF17ACBC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_70();
        v31 = OUTLINED_FUNCTION_83();
        *v30 = 138543362;
        v32 = a3;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v33;
        *v31 = v33;
        OUTLINED_FUNCTION_56_3(&dword_1BEFE0000, v34, v35, "failed to setup monitoring for Work region with error: %{public}@");
        OUTLINED_FUNCTION_2_47();
        sub_1BF028EE0(v31, v36);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_24_10();
      }

      OUTLINED_FUNCTION_43_3(xmmword_1BF185540, v37, v38, v39, v40, v41, v42, v43, v44, v57, v58, v45, v61, v62, v63);
      OUTLINED_FUNCTION_94();

      return;
    }
  }

  else
  {
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63();
    }

    v47 = sub_1BF1797FC();
    __swift_project_value_buffer(v47, qword_1ED8F5248);
    v48 = OUTLINED_FUNCTION_66();
    v60 = sub_1BF1797DC();
    v49 = sub_1BF17ACBC();

    if (os_log_type_enabled(v60, v49))
    {
      v50 = OUTLINED_FUNCTION_70();
      v51 = OUTLINED_FUNCTION_83();
      *v50 = 138543362;
      v52 = a3;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_1BEFE0000, v60, v49, "failed to setup monitoring for unknown region with error: %{public}@", v50, 0xCu);
      OUTLINED_FUNCTION_2_47();
      sub_1BF028EE0(v51, v54);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }
  }

  OUTLINED_FUNCTION_94();
}

uint64_t sub_1BF102A60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1BF102A88()
{
  v0 = sub_1BF102A60();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF102AC0(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  return sub_1BF0FD8CC();
}

uint64_t sub_1BF102AF4()
{
  sub_1BF042FB8(v0 + 16);
  sub_1BF042FB8(v0 + 32);
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1BF102B24()
{
  v0 = sub_1BF102AF4();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void *sub_1BF102B54()
{
  v1 = v0;
  v0[3] = 0;
  v0[2] = 0;
  v2 = v0 + 2;
  *v8 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v0[4] = UnfairLock.init(options:)(v8);
  *v8 = 0;
  swift_allocObject();
  v3 = UnfairLock.init(options:)(v8);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_1BF032E20(0, qword_1ED8EB080, &type metadata for BackgroundFetchResult, type metadata accessor for Promise);
  v4 = swift_allocObject();
  swift_unownedRetain();
  v5 = sub_1BF097A08(v3, v4, v1);
  swift_unownedRelease();
  swift_unownedRelease();
  swift_beginAccess();
  v6 = *v2;
  *v2 = v5;

  return v1;
}

uint64_t sub_1BF102C88(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a2 + 40) = 0;
  *(a2 + 24) = &off_1F3DC1468;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return a2;
}

unint64_t sub_1BF102D24()
{
  result = qword_1EBDCC118;
  if (!qword_1EBDCC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC118);
  }

  return result;
}

unint64_t sub_1BF102D7C()
{
  result = qword_1EBDCC120;
  if (!qword_1EBDCC120)
  {
    sub_1BF032E20(255, &unk_1EBDCC128, &type metadata for BackgroundFetchTrigger, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC120);
  }

  return result;
}

unint64_t sub_1BF102DFC()
{
  result = qword_1EBDCC138;
  if (!qword_1EBDCC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC138);
  }

  return result;
}

unint64_t sub_1BF102E54()
{
  result = qword_1EBDCC140;
  if (!qword_1EBDCC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC140);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BackgroundFetchResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF102F74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF102FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1BF1030D0(uint64_t a1)
{
  v3 = *(sub_1BF1794AC() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_1BF1003B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BF1031E8()
{
  OUTLINED_FUNCTION_13_2();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_5_29(v6);

  return sub_1BF1011A4(v8, v9, v10, v11, v3);
}

uint64_t sub_1BF103288()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v5[1] = sub_1BF035DD4;

  return sub_1BF100B38(v2, v3);
}

uint64_t sub_1BF10331C()
{
  OUTLINED_FUNCTION_13_2();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_5_29(v7);

  return sub_1BF0FC2FC(v9, v10, v11, v12, v4, v5);
}

uint64_t sub_1BF1033C4()
{
  OUTLINED_FUNCTION_13_2();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_5_29(v6);

  return sub_1BF101514(v8, v9, v10, v11, v3);
}

void sub_1BF1034C0()
{
  if (!qword_1ED8EB078)
  {
    sub_1BF032E20(255, &qword_1ED8EAE60, &type metadata for BackgroundFetchResult, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Promise();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EB078);
    }
  }
}

id sub_1BF10358C()
{
  v2 = v0;
  v3 = sub_1BF17986C();
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15_17();
  v9 = sub_1BF17983C();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v0 + 128);
  v11 = *(v2 + 128);

  sub_1BF17987C();

  v12 = (*(v5 + 88))(v1, v3);
  if (v12 == *MEMORY[0x1E6977AA8])
  {
    (*(v5 + 96))(v1, v3);
    v13 = v1[1];
    v26 = *v1;
    v14 = sub_1BF17B6FC();
    v16 = v15;
    objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = v14;
    v18 = v16;
    v19 = v13;
    return sub_1BF104F04(v17, v18, v19, 0);
  }

  if (v12 == *MEMORY[0x1E6977AB0])
  {
    (*(v5 + 96))(v1, v3);
    v21 = *v1;
    v22 = v1[1];
    v23 = v1[2];
    objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = v21;
    v18 = v22;
    v19 = v23;
    return sub_1BF104F04(v17, v18, v19, 0);
  }

  if (v12 == *MEMORY[0x1E6977AB8])
  {
    return 0;
  }

  if (v12 == *MEMORY[0x1E6977AC8])
  {
    return 0;
  }

  if (v12 == *MEMORY[0x1E6977AC0])
  {
    sub_1BF105370();
    result = swift_allocError();
    *v24 = 0;
  }

  else if (v12 == *MEMORY[0x1E6977AD0])
  {
    sub_1BF105370();
    result = swift_allocError();
    *v25 = 1;
  }

  else
  {
    result = sub_1BF17B49C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF103860()
{
  v0 = sub_1BF10358C();
  if (v1 != 254)
  {
    if (v1 == 255)
    {
      return 0;
    }

    sub_1BF105358(v0, v1);
  }

  return 1;
}

uint64_t sub_1BF10389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF1038C0, a4, 0);
}

uint64_t sub_1BF1038C0()
{
  OUTLINED_FUNCTION_5();
  *(v0 + 40) = *(*(v0 + 16) + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BF103930, 0, 0);
}

uint64_t sub_1BF103930()
{
  v14 = v0;
  if (qword_1EBDCAFD0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1BF1797FC();
  __swift_project_value_buffer(v3, qword_1EBDCBC28);

  v4 = sub_1BF1797DC();
  v5 = sub_1BF17ACDC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1BF01A7AC(*(v6 + 136), *(v6 + 144), &v13);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1BF01A7AC(*(v7 + 136), *(v7 + 144), &v13);
    _os_log_impl(&dword_1BEFE0000, v4, v5, "Associating network activity with parent, activity=%s, parentActivity=%s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v10 = v0[4];
  v9 = v0[5];

  sub_1BF17984C();

  OUTLINED_FUNCTION_9();

  return v11();
}

void sub_1BF103ADC()
{
  v2 = v0;
  sub_1BF00974C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15_17();
  v5 = sub_1BF17983C();

  if (v5)
  {
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v6 = sub_1BF1797FC();
    OUTLINED_FUNCTION_11_18(v6, qword_1EBDCBC28);
    v19 = sub_1BF1797DC();
    v7 = sub_1BF17ACAC();

    if (os_log_type_enabled(v19, v7))
    {
      v8 = OUTLINED_FUNCTION_70();
      v9 = OUTLINED_FUNCTION_44_0();
      v20 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1BF01A7AC(v2[17], v2[18], &v20);
      _os_log_impl(&dword_1BEFE0000, v19, v7, "Attempting to activate a network activity that is already started, activity=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v10 = sub_1BF1797FC();
    OUTLINED_FUNCTION_11_18(v10, qword_1EBDCBC28);
    v11 = sub_1BF1797DC();
    v12 = sub_1BF17ACDC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_70();
      v14 = OUTLINED_FUNCTION_44_0();
      v20 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1BF01A7AC(v2[17], v2[18], &v20);
      _os_log_impl(&dword_1BEFE0000, v11, v12, "Activating network activity, activity=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    v15 = v2[16];

    sub_1BF17989C();

    v16 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v16);
    v17 = sub_1BF103F20();
    v18 = swift_allocObject();
    v18[2] = v2;
    v18[3] = v17;
    v18[4] = v2;
    swift_retain_n();
    OUTLINED_FUNCTION_9_1();
    sub_1BF089D40();
  }
}

uint64_t sub_1BF103DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF103DCC, a4, 0);
}

uint64_t sub_1BF103DCC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = *(v0[3] + 120);
    v0[5] = v3;
    v0[6] = swift_getObjectType();
    v4 = *(v3 + 16);
    v3 += 16;
    v0[7] = v4;
    v0[8] = v3 & 0xFFFFFFFFFFFFLL | 0xF3B0000000000000;
    v5 = *(v3 - 8);
    v7 = sub_1BF17A6AC();

    return MEMORY[0x1EEE6DFA0](sub_1BF103EA0, v7, v6);
  }

  else
  {
    OUTLINED_FUNCTION_12_20();

    return v8();
  }
}

uint64_t sub_1BF103EA0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  (*(v0 + 56))(v2, *(v0 + 48), *(v0 + 40));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1BF103F18, v2, 0);
}

unint64_t sub_1BF103F20()
{
  result = qword_1EBDCC228;
  if (!qword_1EBDCC228)
  {
    type metadata accessor for NetworkActivitySession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC228);
  }

  return result;
}

uint64_t sub_1BF103F98()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_48(v5);

  return sub_1BF103DAC(v7, v8, v2, v3);
}

uint64_t sub_1BF104034()
{
  v1 = v0;
  if (qword_1EBDCAFD0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v2 = sub_1BF1797FC();
  OUTLINED_FUNCTION_11_18(v2, qword_1EBDCBC28);
  v3 = sub_1BF1797DC();
  v4 = sub_1BF17ACAC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_70();
    v6 = OUTLINED_FUNCTION_44_0();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1BF01A7AC(v1[17], v1[18], &v14);
    _os_log_impl(&dword_1BEFE0000, v3, v4, "Retrying network activity, activity=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v7 = v1[16];
  v8 = sub_1BF1798BC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = sub_1BF17988C();
  v12 = v1[16];
  v1[16] = v11;
}

void sub_1BF104180(void *a1, char a2)
{
  v3 = v2;
  sub_1BF00974C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_1BF17986C();
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = v2[16];

  v21 = sub_1BF17982C();

  if (v21)
  {
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v22 = sub_1BF1797FC();
    OUTLINED_FUNCTION_11_18(v22, qword_1EBDCBC28);
    v43 = sub_1BF1797DC();
    v23 = sub_1BF17ACAC();

    if (os_log_type_enabled(v43, v23))
    {
      v24 = OUTLINED_FUNCTION_70();
      v25 = OUTLINED_FUNCTION_44_0();
      v45 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1BF01A7AC(v3[17], v3[18], &v45);
      _os_log_impl(&dword_1BEFE0000, v43, v23, "Attempting to complete a Network Activity that is already started, activity=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v26 = sub_1BF1797FC();
    OUTLINED_FUNCTION_11_18(v26, qword_1EBDCBC28);
    sub_1BF104FB4(a1, a2 & 1);
    v27 = sub_1BF1797DC();
    v28 = sub_1BF17ACDC();

    sub_1BF104FC0(a1, a2 & 1);
    v44 = a1;
    if (os_log_type_enabled(v27, v28))
    {
      v42 = v11;
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1BF01A7AC(v3[17], v3[18], &v47);
      *(v29 + 12) = 2080;
      v45 = a1;
      v46 = a2 & 1;
      sub_1BF104FB4(a1, a2 & 1);
      sub_1BF105080();
      v30 = sub_1BF17A13C();
      v32 = v13;
      v33 = v10;
      v34 = a2;
      v35 = sub_1BF01A7AC(v30, v31, &v47);

      *(v29 + 14) = v35;
      a2 = v34;
      v10 = v33;
      v13 = v32;
      _os_log_impl(&dword_1BEFE0000, v27, v28, "Completing network activity, activity=%s, result=%s", v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      v11 = v42;
      OUTLINED_FUNCTION_28();
    }

    v36 = v3[16];
    if (a2)
    {

      v37 = v44;
      v38 = sub_1BF17910C();
      sub_1BF17985C();
    }

    else
    {
      (*(v13 + 104))(v19, *MEMORY[0x1E6977AC8], v11);

      v37 = v44;
    }

    sub_1BF1798AC();

    (*(v13 + 8))(v19, v11);
    v39 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v39);
    v40 = sub_1BF103F20();
    v41 = swift_allocObject();
    *(v41 + 16) = v3;
    *(v41 + 24) = v40;
    *(v41 + 32) = v3;
    *(v41 + 40) = v37;
    *(v41 + 48) = a2 & 1;
    swift_retain_n();
    sub_1BF104FB4(v37, a2 & 1);
    OUTLINED_FUNCTION_9_1();
    sub_1BF089D40();
  }
}

uint64_t sub_1BF104624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF10464C, a4, 0);
}

uint64_t sub_1BF10464C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = *(v0[3] + 120);
    v0[6] = v3;
    v0[7] = swift_getObjectType();
    v4 = *(v3 + 24);
    v3 += 24;
    v0[8] = v4;
    v0[9] = v3 & 0xFFFFFFFFFFFFLL | 0x7A94000000000000;
    v5 = *(v3 - 16);
    v7 = sub_1BF17A6AC();

    return MEMORY[0x1EEE6DFA0](sub_1BF104720, v7, v6);
  }

  else
  {
    OUTLINED_FUNCTION_12_20();

    return v8();
  }
}

uint64_t sub_1BF104720()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  (*(v0 + 64))(v3, *(v0 + 32), *(v0 + 80) & 1, *(v0 + 56), *(v0 + 48));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1BF1047A4, v3, 0);
}

uint64_t sub_1BF1047AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF1047D0, v3, 0);
}

uint64_t sub_1BF1047D0()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[5];
  v2 = v0[3];
  sub_1BF103ADC();
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BF1048CC;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_1BF1048CC()
{
  OUTLINED_FUNCTION_16();
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1BF104A58;
  }

  else
  {
    v6 = sub_1BF1049F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1BF1049F4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  sub_1BF104180(0, 0);
  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1BF104A58()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = v1;
  sub_1BF104180(v1, 1);

  swift_willThrow();
  OUTLINED_FUNCTION_9();
  v5 = *(v0 + 56);

  return v4();
}

uint64_t NetworkActivitySession.deinit()
{
  sub_1BF042FB8(v0 + 112);
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t NetworkActivitySession.__deallocating_deinit()
{
  NetworkActivitySession.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *Promise.associatedWith(networkActivitySession:)(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = v1;

    return Promise.__allocating_init<A>(task:)(&unk_1BF185A60, v4);
  }

  else
  {
  }
}

uint64_t sub_1BF104C2C(uint64_t a1, uint64_t a2, void *a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1BF104C78, 0, 0);
}

uint64_t sub_1BF104C78()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1BF104D20;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  return sub_1BF1047AC(v4, &unk_1BF185B28, v2);
}

uint64_t sub_1BF104D20()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF104E40, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v7();
  }
}

uint64_t sub_1BF104E40()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t sub_1BF104E64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF035DD4;

  return Promise.resolveAsync()(a1);
}

id sub_1BF104F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BF17A07C();

  if (a4)
  {
    v8 = sub_1BF179D3C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

id sub_1BF104FB4(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1BF104FC0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1BF104FCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_2_48(v7);

  return sub_1BF104624(v9, v10, v2, v3, v4, v5);
}

void sub_1BF105080()
{
  if (!qword_1EBDCC230)
  {
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCC230);
    }
  }
}

uint64_t sub_1BF1050D4()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_48(v4);

  return sub_1BF104C2C(v6, v7, v1);
}

uint64_t dispatch thunk of NetworkActivitySession.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 216);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4(v11);
  *v12 = v13;
  v12[1] = sub_1BF035DD4;

  return v15(a1, a2, a3, a4);
}

void sub_1BF105358(void *a1, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    sub_1BF104FC0(a1, a2 & 1);
  }
}

unint64_t sub_1BF105370()
{
  result = qword_1EBDCC238;
  if (!qword_1EBDCC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC238);
  }

  return result;
}

void *sub_1BF1053C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  (*(v9 + 32))(&v21 - v16);
  type metadata accessor for NetworkActivitySession();
  v18 = swift_allocObject();
  (*(v9 + 16))(v15, v17, a4);
  v19 = sub_1BF105518(v15, a2, v18, a4, a5);
  (*(v9 + 8))(v17, a4);
  return v19;
}

void *sub_1BF105518(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1BF00974C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v22[3] = a4;
  v22[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  swift_defaultActor_initialize();
  a3[15] = 0;
  swift_unknownObjectWeakInit();
  v16 = (*(a5 + 8))(a4, a5);
  a3[16] = v16;
  sub_1BEFE6A78(v22, v21);
  sub_1BF1056E8();

  a3[17] = sub_1BF17A13C();
  a3[18] = v17;
  if (a2)
  {
    v18 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = a2;
    v19[5] = a3;
    v19[6] = v16;

    OUTLINED_FUNCTION_9_1();
    sub_1BF089AC0();
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return a3;
}

unint64_t sub_1BF1056E8()
{
  result = qword_1EBDCC240;
  if (!qword_1EBDCC240)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDCC240);
  }

  return result;
}

uint64_t sub_1BF105744()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_2_48(v7);

  return sub_1BF10389C(v9, v10, v2, v3, v4, v5);
}

uint64_t sub_1BF1057F8()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4(v2);
  *v3 = v4;
  v3[1] = sub_1BF035DD0;

  return sub_1BF104E64(v1);
}

_BYTE *storeEnumTagSinglePayload for NetworkActivitySession.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF105968()
{
  result = qword_1EBDCC248;
  if (!qword_1EBDCC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC248);
  }

  return result;
}

uint64_t Accessor.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BF105A6C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - v8;
  v11 = *(v10 + 24);
  (*(v10 + 16))(v7);
  a1(v9);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BF105BA0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for ManualClock.WakeUp() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t ManualClock.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s13TeaFoundation11ManualClockV17minimumResolutions8DurationVvg_0();
  v4 = v3;
  sub_1BF105CF8();
  result = swift_allocObject();
  *(result + 56) = 0;
  *(result + 16) = v2;
  *(result + 24) = v4;
  v6 = MEMORY[0x1E69E7CD0];
  *(result + 32) = MEMORY[0x1E69E7CC0];
  *(result + 40) = v6;
  *(result + 48) = v6;
  *a1 = result;
  return result;
}

void sub_1BF105CF8()
{
  if (!qword_1EBDCC250)
  {
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_1BF17B2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCC250);
    }
  }
}

uint64_t ManualClock.advance(by:)()
{
  v1 = type metadata accessor for ManualClock.WakeUp();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  os_unfair_lock_lock((v6 + 56));
  sub_1BF105F40((v6 + 16), v17);
  os_unfair_lock_unlock((v6 + 56));
  v7 = v17[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF107154(v7);
    v7 = v15;
  }

  v8 = *(v7 + 16);
  v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v17[0] = v9;
  v17[1] = v8;
  sub_1BF1071E0(v17);
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = *(v1 + 24);
    v12 = *(v2 + 72);
    do
    {
      sub_1BF0C4520(v9, v5);
      v13 = *&v5[v11];
      sub_1BF107310(v5);
      swift_continuation_throwingResume();
      v9 += v12;
      --v10;
    }

    while (v10);
  }
}

uint64_t type metadata accessor for ManualClock.WakeUp()
{
  result = qword_1EBDCC278;
  if (!qword_1EBDCC278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF105F40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  sub_1BF108EDC(0, &qword_1EBDCBC40, type metadata accessor for ManualClock.WakeUp, MEMORY[0x1E69E6BC0]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v28 - v5;
  v29 = type metadata accessor for ManualClock.WakeUp();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = *a1;
  v14 = a1[1];
  result = sub_1BF17BC4C();
  *a1 = result;
  a1[1] = v16;
  v18 = a1[2];
  v17 = a1 + 2;
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = MEMORY[0x1E69E7CC0];
    while (v19 <= *(*v17 + 16))
    {
      --v19;
      sub_1BF0C4520(*v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v12);
      v21 = &v12[*(v29 + 20)];
      v22 = *v21;
      v23 = *(v21 + 1);
      if ((sub_1BF17BC3C() & 1) == 0)
      {
        sub_1BF0C4520(v12, v30);
        v24 = *(v20 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v20;
        if (!isUniquelyReferenced_nonNull_native || v24 >= *(v20 + 24) >> 1)
        {
          if (*(v20 + 16) <= v24 + 1)
          {
            v26 = v24 + 1;
          }

          else
          {
            v26 = *(v20 + 16);
          }

          sub_1BF0A6CA4(isUniquelyReferenced_nonNull_native, v26, 1, v20);
          v20 = v27;
          v31 = v27;
        }

        sub_1BF0C4170(0, 0, 1, v30);
        sub_1BF0BDF68(v19, v10);
        sub_1BF107310(v10);
      }

      result = sub_1BF107310(v12);
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_13:
  *v28 = v20;
  return result;
}

uint64_t ManualClock.Instant.advanced(by:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = sub_1BF17BC4C();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t static ManualClock.Instant.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1BF17BC3C();
}

uint64_t static ManualClock.Instant.initial.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _s13TeaFoundation11ManualClockV17minimumResolutions8DurationVvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ManualClock.Instant.duration(to:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  return sub_1BF17BC5C();
}

uint64_t ManualClock.Instant.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BF17BC7C();
}

uint64_t ManualClock.Instant.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF17BB6C();
  sub_1BF17BC7C();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF1062B0@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ManualClock.Instant.advanced(by:)(a1);
}

uint64_t sub_1BF1062BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ManualClock.Instant.duration(to:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL sub_1BF1062E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1BF16680C();
}

BOOL sub_1BF1062FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1BF147A28();
}

uint64_t sub_1BF106310(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1BF147A48();
}

uint64_t sub_1BF10632C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF17BB6C();
  sub_1BF17BC7C();
  return sub_1BF17BB9C();
}

void ManualClock.now.getter(_OWORD *a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 56));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 56));
}

uint64_t ManualClock.sleep(until:tolerance:)()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = sub_1BF1794FC();
  *(v1 + 16) = v4;
  v5 = *(v4 - 8);
  *(v1 + 24) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = *v3;
  *(v1 + 56) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1BF106490, 0, 0);
}

uint64_t sub_1BF106490()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_1BF1794EC();
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v1;
  v5[5] = v2;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  v7 = *(MEMORY[0x1E69E88F0] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1BF1065B0;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v8, &unk_1BF185C88, v5, sub_1BF10742C, v6, 0, 0, v9);
}

uint64_t sub_1BF1065B0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = v2[10];
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = sub_1BF10673C;
  }

  else
  {
    v9 = v3[8];
    v8 = v3[9];

    v7 = sub_1BF1066C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF1066C4()
{
  OUTLINED_FUNCTION_5();
  (*(v0[3] + 8))(v0[4], v0[2]);

  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_1BF10673C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_9();
  v7 = v0[11];

  return v6();
}

uint64_t sub_1BF1067D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1BF1067F8, 0, 0);
}

uint64_t sub_1BF1067F8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1BF1068B0;
  v5 = swift_continuation_init();
  sub_1BF1069B4(v5, v4, v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BF1068B0()
{
  OUTLINED_FUNCTION_10();
  v2 = *v0;
  if (*(v1 + 48))
  {
    v3 = *(v1 + 48);
    swift_willThrow();
  }

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1BF1069B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ManualClock.WakeUp();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1BF1794FC();
  (*(*(v15 - 8) + 16))(v14, a2, v15);
  v16 = &v14[*(v11 + 28)];
  *v16 = a3;
  v16[1] = a4;
  *&v14[*(v11 + 32)] = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v14;
  os_unfair_lock_lock((a5 + 56));
  sub_1BF1078B4((a5 + 16), &v25);
  os_unfair_lock_unlock((a5 + 56));
  if (v25)
  {
    if (v25 != 1)
    {
      sub_1BF17A6EC();
      sub_1BF108B88(qword_1ED8ECC30, MEMORY[0x1E69E8550]);
      v17 = swift_allocError();
      sub_1BF179D0C();
      sub_1BEFF79E8();
      swift_allocError();
      *v18 = v17;
      swift_continuation_throwingResumeWithError();
    }
  }

  else
  {
    swift_continuation_throwingResume();
  }

  return sub_1BF107310(v14);
}

uint64_t sub_1BF106B7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char *a4@<X8>)
{
  sub_1BF108EDC(0, &qword_1EBDCC290, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v21 - v10;
  sub_1BF108888(a2, v21 - v10);
  v12 = sub_1BF1794FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  result = sub_1BF108AFC(v11);
  if (EnumTagSinglePayload == 1)
  {
    v15 = *a1;
    v16 = a1[1];
    result = sub_1BF17BC3C();
    if (result)
    {
      sub_1BF071BFC();
      v17 = *(a1[2] + 16);
      sub_1BF071E38(v17);
      v18 = a1[2];
      *(v18 + 16) = v17 + 1;
      v19 = *(type metadata accessor for ManualClock.WakeUp() - 8);
      result = sub_1BF0C4520(a3, v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17);
      a1[2] = v18;
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 2;
  }

  *a4 = v20;
  return result;
}

void sub_1BF106D44(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 14);
  sub_1BF107864(&a1[4], &v4);
  os_unfair_lock_unlock(a1 + 14);
  if (v4)
  {
    sub_1BF17A6EC();
    sub_1BF108B88(qword_1ED8ECC30, MEMORY[0x1E69E8550]);
    v2 = swift_allocError();
    sub_1BF179D0C();
    sub_1BEFF79E8();
    swift_allocError();
    *v3 = v2;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1BF106E38@<X0>(uint64_t *a1@<X8>)
{
  result = ManualClock.minimumResolution.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF106E60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF035DD4;

  return ManualClock.sleep(until:tolerance:)();
}

unint64_t sub_1BF106EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v5 = type metadata accessor for ManualClock.WakeUp();
  v21 = *(v5 - 8);
  v22 = v5;
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF1794FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v17 = *(a1 + 16);
  v24 = a2;
  result = sub_1BF105BA0(sub_1BF107880, v23, v17);
  if (v19)
  {
    (*(v10 + 16))(v14, a2, v9);
    sub_1BF16FEE4();
    result = (*(v10 + 8))(v16, v9);
    *v25 = 0;
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v17 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *v25 = *(v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * result + *(v22 + 24));
  sub_1BF0BDF68(result, v8);
  return sub_1BF107310(v8);
}

uint64_t sub_1BF107168(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BF17B50C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1BF17B25C();
}

uint64_t sub_1BF1071E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF17B6DC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManualClock.WakeUp();
        v6 = sub_1BF17A57C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ManualClock.WakeUp() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BF107AD4(v8, v9, a1, v4);
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
    return sub_1BF1078D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF107310(uint64_t a1)
{
  v2 = type metadata accessor for ManualClock.WakeUp();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF10736C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BF035DD4;

  return sub_1BF1067D4(a1, v4, v5, v7, v6);
}

unint64_t sub_1BF107438()
{
  result = qword_1EBDCC258;
  if (!qword_1EBDCC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC258);
  }

  return result;
}

unint64_t sub_1BF107490()
{
  result = qword_1EBDCC260;
  if (!qword_1EBDCC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC260);
  }

  return result;
}

unint64_t sub_1BF1074F0()
{
  result = qword_1EBDCC268;
  if (!qword_1EBDCC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC268);
  }

  return result;
}

unint64_t sub_1BF107548()
{
  result = qword_1EBDCC270;
  if (!qword_1EBDCC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC270);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ManualClock.Instant(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ManualClock.Instant(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1BF1076D4()
{
  sub_1BF1794FC();
  if (v0 <= 0x3F)
  {
    sub_1BF107760();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF107760()
{
  if (!qword_1EBDCC288)
  {
    sub_1BEFF79E8();
    v0 = sub_1BF17A80C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCC288);
    }
  }
}

uint64_t sub_1BF1077CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BF10780C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF1078B4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1BF106B7C(a1, v2[2], v2[5], a2);
}

uint64_t sub_1BF1078D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ManualClock.WakeUp();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v41 = v20;
    v35 = v21;
    v25 = v20 + v21 * a3;
    while (2)
    {
      v39 = v22;
      v40 = a3;
      v37 = v25;
      v38 = v24;
      do
      {
        sub_1BF0C4520(v25, v19);
        sub_1BF0C4520(v22, v15);
        v26 = *(v8 + 20);
        v27 = *&v19[v26];
        v28 = *&v19[v26 + 8];
        v29 = &v15[v26];
        v30 = *v29;
        v31 = *(v29 + 1);
        v32 = sub_1BF17BC3C();
        sub_1BF107310(v15);
        result = sub_1BF107310(v19);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v41)
        {
          __break(1u);
          return result;
        }

        sub_1BF0BE5BC(v25, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1BF0BE5BC(v12, v22);
        v22 += v23;
        v25 += v23;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v40 + 1;
      v22 = v39 + v35;
      v24 = v38 - 1;
      v25 = v37 + v35;
      if (v40 + 1 != v36)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF107AD4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v123 = a1;
  v136 = type metadata accessor for ManualClock.WakeUp();
  v130 = *(v136 - 8);
  v9 = *(v130 + 64);
  v10 = MEMORY[0x1EEE9AC00](v136);
  v127 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v120 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v135 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v120 - v16;
  v131 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v114 = (v20 + 16);
      v115 = *(v20 + 16);
      for (i = v20; v115 >= 2; v20 = i)
      {
        if (!*v131)
        {
          goto LABEL_142;
        }

        v116 = (v20 + 16 * v115);
        v20 = *v116;
        v117 = &v114[2 * v115];
        v118 = *(v117 + 1);
        sub_1BF108344(*v131 + *(v130 + 72) * *v116, *v131 + *(v130 + 72) * *v117, *v131 + *(v130 + 72) * v118, v5);
        if (v6)
        {
          break;
        }

        if (v118 < v20)
        {
          goto LABEL_130;
        }

        if (v115 - 2 >= *v114)
        {
          goto LABEL_131;
        }

        *v116 = v20;
        v116[1] = v118;
        v119 = *v114 - v115;
        if (*v114 < v115)
        {
          goto LABEL_132;
        }

        v115 = *v114 - 1;
        sub_1BF1751C0(v117 + 16, v119, v117);
        *v114 = v115;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v20 = sub_1BF1751AC(v20);
    goto LABEL_106;
  }

  v122 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = v136;
  while (1)
  {
    v22 = v19;
    v23 = v19 + 1;
    if (v19 + 1 < v18)
    {
      v24 = *v131;
      v5 = *(v130 + 72);
      v133 = v19 + 1;
      v25 = v24 + v5 * v23;
      v129 = v18;
      sub_1BF0C4520(v25, v17);
      v26 = v24 + v5 * v22;
      v124 = v22;
      v27 = v135;
      sub_1BF0C4520(v26, v135);
      v28 = *(v21 + 20);
      v29 = *&v17[v28];
      v30 = *&v17[v28 + 8];
      v31 = (v27 + v28);
      v32 = *v31;
      v33 = v31[1];
      v34 = sub_1BF17BC3C();
      sub_1BF107310(v27);
      sub_1BF107310(v17);
      v35 = v129;
      v36 = v124 + 2;
      i = v5;
      v37 = v24 + v5 * (v124 + 2);
      while (1)
      {
        v38 = v36;
        if (++v133 >= v35)
        {
          break;
        }

        sub_1BF0C4520(v37, v17);
        v5 = v135;
        sub_1BF0C4520(v25, v135);
        v39 = *(v136 + 20);
        v40 = *&v17[v39];
        v41 = *&v17[v39 + 8];
        v42 = (v5 + v39);
        v43 = *v42;
        v44 = v42[1];
        v45 = sub_1BF17BC3C() & 1;
        sub_1BF107310(v5);
        sub_1BF107310(v17);
        v37 += i;
        v25 += i;
        v36 = v38 + 1;
        v35 = v129;
        if ((v34 & 1) != v45)
        {
          if (v34)
          {
            goto LABEL_8;
          }

LABEL_28:
          v21 = v136;
LABEL_29:
          v23 = v133;
          v22 = v124;
          goto LABEL_31;
        }
      }

      v133 = v35;
      if ((v34 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_8:
      v23 = v133;
      if (v133 < v124)
      {
        goto LABEL_136;
      }

      if (v124 < v133)
      {
        v5 = v20;
        v121 = v6;
        if (v35 >= v38)
        {
          v46 = v38;
        }

        else
        {
          v46 = v35;
        }

        v47 = i * (v46 - 1);
        v48 = i * v46;
        v49 = v124 * i;
        v50 = v124;
        v21 = v136;
        do
        {
          if (v50 != --v23)
          {
            v51 = *v131;
            if (!*v131)
            {
              goto LABEL_143;
            }

            sub_1BF0BE5BC(v51 + v49, v127);
            v52 = v49 < v47 || v51 + v49 >= (v51 + v48);
            if (v52)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BF0BE5BC(v127, v51 + v47);
            v21 = v136;
          }

          ++v50;
          v47 -= i;
          v48 -= i;
          v49 += i;
        }

        while (v50 < v23);
        v6 = v121;
        v20 = v5;
        goto LABEL_29;
      }

      v21 = v136;
      v22 = v124;
    }

LABEL_31:
    v53 = v131[1];
    if (v23 < v53)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_135;
      }

      if (v23 - v22 < v122)
      {
        break;
      }
    }

LABEL_49:
    if (v23 < v22)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = *(v20 + 16);
      sub_1BF0A6798();
      v20 = v112;
    }

    v70 = *(v20 + 16);
    v71 = v70 + 1;
    if (v70 >= *(v20 + 24) >> 1)
    {
      sub_1BF0A6798();
      v20 = v113;
    }

    *(v20 + 16) = v71;
    v72 = v20 + 32;
    v73 = (v20 + 32 + 16 * v70);
    *v73 = v22;
    v73[1] = v23;
    v129 = *v123;
    if (!v129)
    {
      goto LABEL_144;
    }

    v133 = v23;
    if (v70)
    {
      v21 = v136;
      i = v20;
      while (1)
      {
        v74 = v71 - 1;
        v75 = (v72 + 16 * (v71 - 1));
        v76 = (v20 + 16 * v71);
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v77 = *(v20 + 32);
          v78 = *(v20 + 40);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_70:
          if (v80)
          {
            goto LABEL_121;
          }

          v92 = *v76;
          v91 = v76[1];
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_124;
          }

          v96 = v75[1];
          v97 = v96 - *v75;
          if (__OFSUB__(v96, *v75))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v94, v97))
          {
            goto LABEL_129;
          }

          if (v94 + v97 >= v79)
          {
            if (v79 < v97)
            {
              v74 = v71 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v71 < 2)
        {
          goto LABEL_123;
        }

        v99 = *v76;
        v98 = v76[1];
        v87 = __OFSUB__(v98, v99);
        v94 = v98 - v99;
        v95 = v87;
LABEL_85:
        if (v95)
        {
          goto LABEL_126;
        }

        v101 = *v75;
        v100 = v75[1];
        v87 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v87)
        {
          goto LABEL_128;
        }

        if (v102 < v94)
        {
          goto LABEL_101;
        }

LABEL_92:
        if (v74 - 1 >= v71)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v131)
        {
          goto LABEL_141;
        }

        v5 = v17;
        v106 = (v72 + 16 * (v74 - 1));
        v107 = *v106;
        v108 = v74;
        v109 = v72 + 16 * v74;
        v20 = *(v109 + 8);
        sub_1BF108344(*v131 + *(v130 + 72) * *v106, *v131 + *(v130 + 72) * *v109, *v131 + *(v130 + 72) * v20, v129);
        if (v6)
        {
          goto LABEL_114;
        }

        if (v20 < v107)
        {
          goto LABEL_116;
        }

        v6 = *(i + 16);
        if (v108 > v6)
        {
          goto LABEL_117;
        }

        *v106 = v107;
        v106[1] = v20;
        if (v108 >= v6)
        {
          goto LABEL_118;
        }

        v71 = v6 - 1;
        sub_1BF1751C0((v109 + 16), v6 - 1 - v108, v109);
        v20 = i;
        *(i + 16) = v6 - 1;
        v110 = v6 > 2;
        v6 = 0;
        v21 = v136;
        v17 = v5;
        if (!v110)
        {
          goto LABEL_101;
        }
      }

      v81 = v72 + 16 * v71;
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_119;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_120;
      }

      v88 = v76[1];
      v89 = v88 - *v76;
      if (__OFSUB__(v88, *v76))
      {
        goto LABEL_122;
      }

      v87 = __OFADD__(v79, v89);
      v90 = v79 + v89;
      if (v87)
      {
        goto LABEL_125;
      }

      if (v90 >= v84)
      {
        v104 = *v75;
        v103 = v75[1];
        v87 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v87)
        {
          goto LABEL_133;
        }

        if (v79 < v105)
        {
          v74 = v71 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

    v21 = v136;
LABEL_101:
    v18 = v131[1];
    v19 = v133;
    if (v133 >= v18)
    {
      goto LABEL_104;
    }
  }

  v54 = v22 + v122;
  if (__OFADD__(v22, v122))
  {
    goto LABEL_137;
  }

  if (v54 >= v53)
  {
    v54 = v131[1];
  }

  if (v54 < v22)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v23 == v54)
  {
    goto LABEL_49;
  }

  i = v20;
  v121 = v6;
  v55 = *v131;
  v56 = *(v130 + 72);
  v57 = *v131 + v56 * (v23 - 1);
  v58 = -v56;
  v124 = v22;
  v125 = v56;
  v59 = v22 - v23;
  v60 = v55 + v23 * v56;
  v126 = v54;
LABEL_40:
  v133 = v23;
  v61 = v60;
  v128 = v59;
  v129 = v57;
  v62 = v57;
  while (1)
  {
    sub_1BF0C4520(v61, v17);
    v5 = v135;
    sub_1BF0C4520(v62, v135);
    v63 = *(v21 + 20);
    v64 = *&v17[v63];
    v65 = *&v17[v63 + 8];
    v66 = (v5 + v63);
    v67 = *v66;
    v68 = v66[1];
    v69 = sub_1BF17BC3C();
    sub_1BF107310(v5);
    sub_1BF107310(v17);
    if ((v69 & 1) == 0)
    {
      v21 = v136;
LABEL_47:
      v23 = v133 + 1;
      v57 = v129 + v125;
      v59 = v128 - 1;
      v60 += v125;
      if (v133 + 1 == v126)
      {
        v23 = v126;
        v6 = v121;
        v20 = i;
        v22 = v124;
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (!v55)
    {
      break;
    }

    v5 = v134;
    sub_1BF0BE5BC(v61, v134);
    v21 = v136;
    swift_arrayInitWithTakeFrontToBack();
    sub_1BF0BE5BC(v5, v62);
    v62 += v58;
    v61 += v58;
    v52 = __CFADD__(v59++, 1);
    if (v52)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_1BF108344(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = type metadata accessor for ManualClock.WakeUp();
  v9 = *(*(v63 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v63);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = v57 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v66 = a1;
  v65 = a4;
  v21 = v19 / v17;
  v57[1] = v4;
  if ((a2 - a1) / v17 >= v19 / v17)
  {
    sub_1BF0A6F14(a2, v19 / v17, a4);
    v33 = a4 + v21 * v17;
    v34 = -v17;
    v35 = v33;
    v36 = a3;
    v59 = a1;
    v60 = a4;
    v62 = -v17;
LABEL_37:
    v61 = a2 + v34;
    v37 = v36;
    v57[0] = v35;
    while (1)
    {
      if (v33 <= a4)
      {
        v66 = a2;
        v64 = v35;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v58 = v35;
      v38 = v37 + v34;
      v39 = v33 + v34;
      v40 = v37;
      sub_1BF0C4520(v33 + v34, v15);
      sub_1BF0C4520(v61, v12);
      v41 = *(v63 + 20);
      v42 = *&v15[v41];
      v43 = *&v15[v41 + 8];
      v44 = &v12[v41];
      v45 = *v44;
      v46 = *(v44 + 1);
      v47 = sub_1BF17BC3C();
      v48 = v12;
      v49 = v47;
      v50 = v48;
      sub_1BF107310(v48);
      sub_1BF107310(v15);
      if (v49)
      {
        v57[0] = v33;
        v52 = v40 < a2 || v38 >= a2;
        v36 = v38;
        if (v52)
        {
          v53 = v61;
          swift_arrayInitWithTakeFrontToBack();
          v54 = v53;
          v35 = v58;
          a1 = v59;
          v12 = v50;
          a2 = v54;
          a4 = v60;
          v34 = v62;
          v33 = v57[0];
        }

        else
        {
          v35 = v58;
          v18 = v40 == a2;
          v55 = v61;
          v34 = v62;
          v12 = v50;
          a2 = v61;
          a1 = v59;
          a4 = v60;
          v33 = v57[0];
          if (!v18)
          {
            v56 = v58;
            swift_arrayInitWithTakeBackToFront();
            v33 = v57[0];
            v34 = v62;
            a2 = v55;
            v35 = v56;
          }
        }

        goto LABEL_37;
      }

      if (v40 < v33 || v38 >= v33)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 = v38;
        v33 = v39;
        v35 = v39;
        v12 = v50;
        a1 = v59;
        a4 = v60;
        v34 = v62;
      }

      else
      {
        v35 = v39;
        v18 = v33 == v40;
        v37 = v38;
        v33 = v39;
        v12 = v50;
        a1 = v59;
        a4 = v60;
        v34 = v62;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v62;
          v37 = v38;
          v33 = v39;
          v35 = v39;
        }
      }
    }

    v66 = a2;
    v64 = v57[0];
  }

  else
  {
    sub_1BF0A6F14(a1, (a2 - a1) / v17, a4);
    v22 = a4 + (a2 - a1) / v17 * v17;
    v64 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_1BF0C4520(a2, v15);
      sub_1BF0C4520(a4, v12);
      v24 = *(v63 + 20);
      v25 = *&v15[v24];
      v26 = *&v15[v24 + 8];
      v27 = &v12[v24];
      v28 = *v27;
      v29 = *(v27 + 1);
      v30 = sub_1BF17BC3C();
      sub_1BF107310(v12);
      sub_1BF107310(v15);
      if (v30)
      {
        if (a1 < a2 || a1 >= a2 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v17;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v65 = a4 + v17;
        a4 += v17;
      }

      a1 += v17;
      v66 = a1;
    }
  }

LABEL_59:
  sub_1BF1087A8(&v66, &v65, &v64);
  return 1;
}

uint64_t sub_1BF1087A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ManualClock.WakeUp();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BF108888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1BF1794FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1BF108B88(qword_1ED8F0138, MEMORY[0x1E69695A8]);
  v28 = a1;
  v11 = sub_1BF179F1C();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_1BF108B88(&qword_1ED8F0130, MEMORY[0x1E69695A8]);
    v15 = sub_1BF17A05C();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BF171F58();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_1BF108BD0(v13);
  v16 = 0;
  *v18 = v29;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
}

uint64_t sub_1BF108AFC(uint64_t a1)
{
  sub_1BF108EDC(0, &qword_1EBDCC290, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF108B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF108BD0(int64_t a1)
{
  v3 = sub_1BF1794FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1BF17B0DC();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_1BF108B88(qword_1ED8F0138, MEMORY[0x1E69695A8]);
        v27 = sub_1BF179F1C();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

void sub_1BF108EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t whenFirst<A, B, C>(on:providers:provide:where:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59 = a6;
  v60 = a4;
  v56 = a5;
  v65 = a3;
  v58 = a1;
  v62 = a9;
  v13 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_20(v13);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v53 - v17;
  OUTLINED_FUNCTION_2_3();
  v54 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v61 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v53 - v29;
  OUTLINED_FUNCTION_2_3();
  v64 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v63 = v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a8;
  v55 = a10;
  v36 = a2;
  sub_1BF17AB3C();
  if (__swift_getEnumTagSinglePayload(v30, 1, a7) == 1)
  {
    (*(v25 + 8))(v30, v23);
    type metadata accessor for Promise();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v62);
    return Promise.__allocating_init(value:)();
  }

  else
  {
    v39 = v62;
    v38 = v63;
    v53[1] = v13;
    (*(v64 + 32))(v63, v30, a7);
    v40 = v38;
    v41 = v60;
    v53[0] = v65(v40);
    if (v53[0])
    {
      v42 = v54;
      v43 = v57;
      (*(v54 + 16))(v61, v36, v57);
      v44 = (*(v42 + 80) + 72) & ~*(v42 + 80);
      v37 = (v21 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      *(v45 + 2) = a7;
      *(v45 + 3) = v43;
      v47 = v55;
      v46 = v56;
      *(v45 + 4) = v39;
      *(v45 + 5) = v47;
      v48 = v58;
      v49 = v59;
      *(v45 + 6) = v46;
      *(v45 + 7) = v49;
      *(v45 + 8) = v48;
      (*(v42 + 32))(&v45[v44], v61, v43);
      v50 = &v45[v37];
      *v50 = v65;
      *(v50 + 1) = v41;

      v51 = v48;
      OUTLINED_FUNCTION_95();

      Promise.then<A>(on:closure:)();
      OUTLINED_FUNCTION_95();
    }

    else
    {
      v37 = sub_1BF10A730(v58, a2, v65, v41, v56, v59, a7, v57, v39);
    }

    (*(v64 + 8))(v63, a7);
  }

  return v37;
}

void when3<A, B, C>(on:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_28_9();
  v14 = *v13;
  v16 = *v15;
  v18 = *v17;
  sub_1BF041640();
  swift_allocObject();
  v35 = sub_1BF17A50C();
  v20 = v19;
  OUTLINED_FUNCTION_14_0();
  v21 = swift_allocObject();
  v22 = *(v14 + 80);
  v21[2] = v22;
  v23 = *(v16 + 80);
  v21[3] = v23;
  v24 = *(v18 + 80);
  v21[4] = v24;
  OUTLINED_FUNCTION_54();
  v25 = type metadata accessor for WhenEither3();
  v26 = sub_1BF014EDC(v22, v25);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_66();

  *v20 = v10;
  OUTLINED_FUNCTION_14_0();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_15_18(v27);
  v28 = sub_1BF014EDC(v23, v25);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_66();

  v20[1] = v12;
  OUTLINED_FUNCTION_14_0();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_15_18(v29);
  v30 = sub_1BF014EDC(v24, v25);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_66();

  v20[2] = v11;
  type metadata accessor for Promise();
  sub_1BF00CD7C();
  when<A>(on:_:)(a10, v35);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_14_0();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_15_18(v31);
  v32 = sub_1BF17A65C();
  OUTLINED_FUNCTION_54();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v34 = sub_1BF014EDC(v32, TupleTypeMetadata3);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_95();

  OUTLINED_FUNCTION_33();
}

uint64_t sub_1BF109598(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = *(*(TupleTypeMetadata3 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v55 = &v50 - v10;
  v56 = *(a4 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(a3 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WhenEither3();
  v61 = *(v16 - 8);
  v17 = *(v61 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v50 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v50 - v25;
  v60 = a2;
  v27 = *(a2 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_8;
  }

  v52 = a4;
  v53 = v27;
  v32 = v26;
  v33 = v60;
  (*(v27 + 32))(v30, v32, v60);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = v23;
LABEL_7:
    (*(v53 + 8))(v30, v33);
    v26 = v20;
LABEL_8:
    (*(v61 + 8))(v26, v16);
    v47 = 0x80000001BF18F060;
    sub_1BF10E70C();
    swift_allocError();
    *v48 = 0xD00000000000001FLL;
    v48[1] = 0x80000001BF18F060;
    swift_willThrow();
    return v47;
  }

  v34 = v59;
  v35 = v57;
  (*(v59 + 32))(v57, v23, a3);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v34 + 8))(v35, a3);
    goto LABEL_7;
  }

  v36 = v56;
  v37 = v52;
  (*(v56 + 32))(v58, v20, v52);
  v38 = TupleTypeMetadata3;
  v61 = type metadata accessor for Promise();
  v39 = v30;
  v50 = a3;
  v51 = v30;
  v40 = v34;
  v41 = *(v38 + 48);
  v42 = *(v38 + 64);
  v43 = v53;
  v44 = v33;
  v45 = v55;
  (*(v53 + 16))(v55, v39, v44);
  (*(v40 + 16))(&v45[v41], v35, a3);
  v46 = v58;
  (*(v36 + 16))(&v45[v42], v58, v37);
  v47 = Promise.__allocating_init(value:)();
  (*(v36 + 8))(v46, v37);
  (*(v40 + 8))(v35, v50);
  (*(v43 + 8))(v51, v60);
  return v47;
}

uint64_t when4<A, B, C, D>(on:_:_:_:_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  sub_1BF041640();
  swift_allocObject();
  v34 = sub_1BF17A50C();
  v11 = v10;
  OUTLINED_FUNCTION_85();
  v12 = swift_allocObject();
  v13 = *(v6 + 80);
  v12[2] = v13;
  v14 = *(v7 + 80);
  v12[3] = v14;
  v15 = *(v8 + 80);
  v12[4] = v15;
  v16 = *(v9 + 80);
  v12[5] = v16;
  v17 = type metadata accessor for WhenEither4();
  v18 = sub_1BF014EDC(v13, v17);
  Promise.then<A>(on:closure:)();
  v20 = v19;

  *v11 = v20;
  OUTLINED_FUNCTION_85();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_4_29(v21);
  v22 = sub_1BF014EDC(v14, v17);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_66();

  v11[1] = a3;
  OUTLINED_FUNCTION_85();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_4_29(v23);
  v24 = sub_1BF014EDC(v15, v17);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_66();

  v11[2] = a4;
  OUTLINED_FUNCTION_85();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_4_29(v25);
  v26 = sub_1BF014EDC(v16, v17);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_66();

  v11[3] = a5;
  type metadata accessor for Promise();
  sub_1BF00CD7C();
  when<A>(on:_:)(a1, v34);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_85();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_4_29(v27);
  v28 = sub_1BF17A65C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v30 = sub_1BF014EDC(v28, TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_95();

  return TupleTypeMetadata;
}

uint64_t sub_1BF109DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for WhenEither4();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF109EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1);
  type metadata accessor for WhenEither4();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF109F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for WhenEither4();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF109FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for WhenEither4();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF10A094(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v10 = *(*(TupleTypeMetadata - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v63 = &v57 - v12;
  v64 = *(a5 - 8);
  v13 = *(v64 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a4 - 8);
  v16 = *(v66 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v67 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a3 - 8);
  v19 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v69 = a4;
  v61 = a5;
  v75 = a5;
  v21 = type metadata accessor for WhenEither4();
  v76 = *(v21 - 8);
  v22 = *(v76 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v57 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v57 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v57 - v33;
  v70 = a2;
  v35 = *(a2 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v38 = &v57 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_9;
  }

  v59 = v25;
  v60 = v38;
  v40 = v38;
  v41 = v69;
  v42 = v70;
  (*(v35 + 32))(v40, v34, v70);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:
    (*(v35 + 8))(v60, v42);
    v34 = v31;
LABEL_9:
    (*(v76 + 8))(v34, v21);
    sub_1BF10E70C();
    swift_allocError();
    *v55 = 0xD00000000000001FLL;
    v55[1] = 0x80000001BF18F040;
    swift_willThrow();
    return v21;
  }

  v43 = v68;
  (*(v68 + 32))(v71, v31, a3);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_7:
    (*(v43 + 8))(v71, a3);
    v31 = v28;
    goto LABEL_8;
  }

  v58 = v35;
  v45 = v66;
  v44 = v67;
  (*(v66 + 32))(v67, v28, v41);
  v28 = v59;
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v45 + 8))(v44, v41);
    v35 = v58;
    goto LABEL_7;
  }

  v46 = v64;
  v47 = v28;
  v48 = v61;
  (*(v64 + 32))(v65, v47, v61);
  v49 = TupleTypeMetadata;
  v76 = type metadata accessor for Promise();
  v50 = v42;
  v51 = v49[12];
  v59 = v49[16];
  TupleTypeMetadata = v49[20];
  v52 = v58;
  v53 = v63;
  (*(v58 + 16))(v63, v60, v50);
  (*(v43 + 16))(&v53[v51], v71, a3);
  (*(v45 + 16))(&v59[v53], v67, v41);
  v54 = v65;
  (*(v46 + 16))(&v53[TupleTypeMetadata], v65, v48);
  v21 = Promise.__allocating_init(value:)();
  (*(v46 + 8))(v54, v48);
  (*(v45 + 8))(v67, v41);
  (*(v43 + 8))(v71, a3);
  (*(v52 + 8))(v60, v70);
  return v21;
}

uint64_t sub_1BF10A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a6;
  v28 = a7;
  v25 = a4;
  v26 = a5;
  v23 = a1;
  v24 = a3;
  v11 = *(a8 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v23 - v18;
  (*(v11 + 16))(v14, a2, a8);
  sub_1BF084344();
  sub_1BF17AB8C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = whenFirst<A, B, C>(on:providers:provide:where:)(v23, v19, v24, v25, v26, v27, v28, AssociatedTypeWitness, a9, AssociatedConformanceWitness);
  (*(v16 + 8))(v19, AssociatedTypeWitness);
  return v21;
}

uint64_t sub_1BF10A91C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a7;
  v22 = a8;
  v16 = sub_1BF17AE6C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  if ((a2(a1) & 1) == 0)
  {
    return sub_1BF10A730(a4, a5, a6, v21, a2, a3, v22, a9, a10);
  }

  type metadata accessor for Promise();
  (*(*(a10 - 8) + 16))(v19, a1, a10);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, a10);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF10AA74(uint64_t a1)
{
  v2 = (*(*(*(v1 + 24) - 8) + 80) + 72) & ~*(*(*(v1 + 24) - 8) + 80);
  v3 = (v1 + ((*(*(*(v1 + 24) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 40);
  return sub_1BF10A91C(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v2, *v3, v3[1], *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t whenSome<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v15[2] = a3;
  type metadata accessor for Promise();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_16_16();
  type metadata accessor for Result();
  OUTLINED_FUNCTION_10_23();
  v6 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1BEFF5EDC(sub_1BF10D8DC, v15, v3, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  OUTLINED_FUNCTION_39_0();
  v9 = sub_1BF17A65C();
  v10 = swift_getWitnessTable();
  static Promise.all<A>(on:_:)(a1, &v16, v9, v10);

  *(swift_allocObject() + 16) = a3;
  OUTLINED_FUNCTION_10_23();
  v11 = sub_1BF17A65C();
  sub_1BF17A65C();
  sub_1BF10D918();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1BF014EDC(v11, TupleTypeMetadata2);
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_31_10();

  return TupleTypeMetadata2;
}

void sub_1BF10ACD4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  *(swift_allocObject() + 16) = a2;
  v6 = type metadata accessor for Result();
  v7 = sub_1BF014EDC(a2, v6);
  Promise.then<A>(on:closure:)();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = sub_1BF0075B8();
  v10 = Promise.recover(on:closure:)(v9, sub_1BF10E6F0, v8);

  *a3 = v10;
}

uint64_t sub_1BF10ADE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

id sub_1BF10AE6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1BF10AEC4(uint64_t *a1)
{
  v3 = *a1;
  sub_1BF179CFC();
  type metadata accessor for Result();
  sub_1BF17A65C();
  sub_1BF17A65C();
  sub_1BF10D918();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_1BF17A3EC();
  swift_getWitnessTable();
  if ((sub_1BF17AB6C() & 1) != 0 && *(v4 + 16))
  {

    if (*(v4 + 16))
    {
      v2 = *(v4 + 32);

      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for Promise();
    return Promise.__allocating_init(value:)();
  }

  return result;
}

uint64_t sub_1BF10B060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v13 = type metadata accessor for Result();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v22 - v15);
  (*(v17 + 16))(v22 - v15, a2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    sub_1BF071C14();
    v19 = *(*(a1 + 8) + 16);
    result = sub_1BF071E50(v19);
    v21 = *(a1 + 8);
    *(v21 + 16) = v19 + 1;
    *(v21 + 8 * v19 + 32) = v18;
    *(a1 + 8) = v21;
  }

  else
  {
    (*(v6 + 32))(v12, v16, a3);
    (*(v6 + 16))(v10, v12, a3);
    sub_1BF17A65C();
    sub_1BF17A5DC();
    return (*(v6 + 8))(v12, a3);
  }

  return result;
}

uint64_t whenSome<A, B>(on:_:_:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v6 = sub_1BF17A50C();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_24_11();
  v10 = *(v4 + 80);
  *(v9 + 16) = v10;
  v11 = *(v5 + 80);
  *(v9 + 24) = v11;
  OUTLINED_FUNCTION_54();
  v12 = type metadata accessor for WhenEither2();
  v13 = sub_1BF014EDC(v10, v12);
  Promise.then<A>(on:closure:)();
  v15 = v14;

  *v8 = v15;
  v16 = OUTLINED_FUNCTION_24_11();
  *(v16 + 16) = v10;
  *(v16 + 24) = v11;
  v17 = sub_1BF014EDC(v11, v12);
  Promise.then<A>(on:closure:)();
  v19 = v18;

  v8[1] = v19;
  OUTLINED_FUNCTION_39_0();
  type metadata accessor for Promise();
  sub_1BF00CD7C();
  whenSome<A>(on:_:)(a1, v6, v12);
  OUTLINED_FUNCTION_17_9();

  v20 = OUTLINED_FUNCTION_24_11();
  *(v20 + 16) = v10;
  *(v20 + 24) = v11;
  sub_1BF17A65C();
  sub_1BF10D918();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_16_16();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_54();
  v22 = swift_getTupleTypeMetadata2();
  v23 = sub_1BF014EDC(TupleTypeMetadata2, v22);
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_31_10();

  return v22;
}

uint64_t sub_1BF10B4E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v30 = sub_1BF17AE6C();
  v38 = *(v30 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v30 - v6;
  v8 = sub_1BF17AE6C();
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v14 = *(v35 + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v30 - v18;
  v19 = *a1;
  v34 = type metadata accessor for Promise();
  v41 = v19;
  v20 = a2;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, a2);
  v21 = v7;
  v22 = v33;
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v33);
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = *(v37 + 32);
  v37 += 32;
  v31 = v24;
  v24(v17, v12, v36);
  v25 = *(v38 + 32);
  v38 += 32;
  v26 = v30;
  v25(&v17[v23], v21, v30);
  v39 = v20;
  v40 = v22;
  type metadata accessor for WhenEither2();
  sub_1BF17A65C();
  swift_getWitnessTable();
  v27 = v32;
  sub_1BF17A3FC();
  (*(v35 + 8))(v17, TupleTypeMetadata2);
  v28 = *(TupleTypeMetadata2 + 48);
  v31(v17, v27, v36);
  v25(&v17[v28], &v27[v28], v26);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF10B85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v34 = a5;
  v30 = *(a4 - 8);
  v31 = a2;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF17AE6C();
  v11 = sub_1BF17AE6C();
  v32 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v29 - v15;
  v17 = type metadata accessor for WhenEither2();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  (*(v21 + 16))(&v29 - v19, v31, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v11;
    v22 = *(v30 + 32);
    v22(v9, v20, a4);
    v23 = *(TupleTypeMetadata2 + 48);
    (*(v13 + 16))(v16, v33, TupleTypeMetadata2);
    v24 = *(TupleTypeMetadata2 + 48);
    v25 = v34;
    (*(*(v32 - 8) + 32))(v34, v16);
    v22((v25 + v23), v9, a4);
    __swift_storeEnumTagSinglePayload(v25 + v23, 0, 1, a4);
    return (*(*(v31 - 8) + 8))(&v16[v24]);
  }

  else
  {
    v27 = *(TupleTypeMetadata2 + 48);
    v28 = v34;
    (*(*(a3 - 8) + 32))(v34, v20, a3);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, a3);
    (*(v13 + 16))(v16, v33, TupleTypeMetadata2);
    (*(*(v11 - 8) + 32))(v28 + v27, &v16[*(TupleTypeMetadata2 + 48)], v11);
    return (*(*(v32 - 8) + 8))(v16);
  }
}

void whenSome3<A, B, C>(on:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_28_9();
  v14 = *v13;
  v16 = *v15;
  v18 = *v17;
  sub_1BF041640();
  swift_allocObject();
  v35 = sub_1BF17A50C();
  v20 = v19;
  OUTLINED_FUNCTION_14_0();
  v21 = swift_allocObject();
  v22 = *(v14 + 80);
  v21[2] = v22;
  v23 = *(v16 + 80);
  v21[3] = v23;
  v24 = *(v18 + 80);
  v21[4] = v24;
  OUTLINED_FUNCTION_10_23();
  v25 = type metadata accessor for WhenEither3();
  v26 = sub_1BF014EDC(v22, v25);
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_17_9();

  *v20 = v10;
  OUTLINED_FUNCTION_14_0();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_14_20(v27);
  v28 = sub_1BF014EDC(v23, v25);
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_17_9();

  v20[1] = v12;
  OUTLINED_FUNCTION_14_0();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_14_20(v29);
  v30 = sub_1BF014EDC(v24, v25);
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_17_9();

  v20[2] = v11;
  type metadata accessor for Promise();
  sub_1BF00CD7C();
  whenSome<A>(on:_:)(a10, v35, v25);
  OUTLINED_FUNCTION_17_9();

  OUTLINED_FUNCTION_14_0();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_14_20(v31);
  sub_1BF17A65C();
  sub_1BF10D918();
  OUTLINED_FUNCTION_39_0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1BF17AE6C();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_16_16();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_10_23();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v34 = sub_1BF014EDC(TupleTypeMetadata2, TupleTypeMetadata3);
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_31_10();

  OUTLINED_FUNCTION_33();
}

uint64_t sub_1BF10BED0()
{
  OUTLINED_FUNCTION_2_50();
  OUTLINED_FUNCTION_20(v0);
  (*(v2 + 16))(v1);
  OUTLINED_FUNCTION_5_30();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF10BF3C()
{
  OUTLINED_FUNCTION_2_50();
  OUTLINED_FUNCTION_20(v1);
  (*(v2 + 16))(v0);
  OUTLINED_FUNCTION_5_30();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF10BFA4()
{
  OUTLINED_FUNCTION_2_50();
  OUTLINED_FUNCTION_20(v1);
  (*(v2 + 16))(v0);
  OUTLINED_FUNCTION_5_30();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF10C010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v44 = a3;
  v39 = sub_1BF17AE6C();
  v52 = *(v39 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v45 = &v36 - v7;
  v49 = sub_1BF17AE6C();
  v51 = *(v49 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v36 - v9;
  v37 = &v36 - v9;
  v38 = a2;
  v50 = sub_1BF17AE6C();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v36 - v13;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v46 = *(TupleTypeMetadata3 - 8);
  v16 = *(v46 + 64);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v36 - v20;
  v21 = *a1;
  v48 = type metadata accessor for Promise();
  v56 = v21;
  __swift_storeEnumTagSinglePayload(v14, 1, 1, a2);
  v22 = v44;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v44);
  v23 = v45;
  v24 = v47;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v47);
  v25 = *(TupleTypeMetadata3 + 48);
  v26 = *(TupleTypeMetadata3 + 64);
  v27 = *(v11 + 32);
  v41 = v11 + 32;
  v42 = v27;
  v27(v19, v14, v50);
  v28 = *(v51 + 32);
  v51 += 32;
  v40 = v28;
  v28(&v19[v25], v37, v49);
  v29 = *(v52 + 32);
  v52 += 32;
  v30 = &v19[v26];
  v31 = v39;
  v29(v30, v23, v39);
  v53 = v38;
  v54 = v22;
  v55 = v24;
  type metadata accessor for WhenEither3();
  sub_1BF17A65C();
  swift_getWitnessTable();
  v32 = v43;
  sub_1BF17A3FC();
  (*(v46 + 8))(v19, TupleTypeMetadata3);
  v33 = *(TupleTypeMetadata3 + 48);
  v34 = *(TupleTypeMetadata3 + 64);
  v42(v19, v32, v50);
  v40(&v19[v33], &v32[v33], v49);
  v29(&v19[v34], &v32[v34], v31);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF10C48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a1;
  v78 = a2;
  v79 = a6;
  v75 = *(a5 - 8);
  v9 = *(v75 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v77 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v12 - 8);
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF17AE6C();
  v16 = sub_1BF17AE6C();
  v17 = sub_1BF17AE6C();
  v83 = v15;
  v80 = v17;
  v81 = v16;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v19 = *(TupleTypeMetadata3 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v70 - v24;
  v26 = type metadata accessor for WhenEither3();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v70 - v28;
  (*(v30 + 16))(&v70 - v28, v78, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v72 = *(v74 + 32);
      (v72)(v76, v29, a4);
      v32 = *(TupleTypeMetadata3 + 48);
      v33 = *(TupleTypeMetadata3 + 64);
      v74 = *(v19 + 16);
      v75 = v33;
      (v74)(v25, v82, TupleTypeMetadata3);
      v34 = *(TupleTypeMetadata3 + 48);
      v77 = *(TupleTypeMetadata3 + 64);
      v78 = v34;
      v35 = *(v83 - 8);
      v36 = v79;
      (*(v35 + 32))(v79, v25, v83);
      (v72)(v36 + v32, v76, a4);
      __swift_storeEnumTagSinglePayload(v36 + v32, 0, 1, a4);
      (v74)(v23, v82, TupleTypeMetadata3);
      v37 = *(TupleTypeMetadata3 + 48);
      v38 = *(TupleTypeMetadata3 + 64);
      v39 = v80;
      v40 = *(v80 - 8);
      (*(v40 + 32))(v36 + v75, &v23[v38], v80);
      v41 = v81;
      v42 = *(*(v81 - 8) + 8);
      v42(&v23[v37], v81);
      (*(v35 + 8))(v23, v83);
      (*(v40 + 8))(&v77[v25], v39);
      return (v42)(&v25[v78], v41);
    }

    else
    {
      v74 = *(v75 + 32);
      (v74)(v77, v29, a5);
      v56 = *(TupleTypeMetadata3 + 64);
      v71 = *(TupleTypeMetadata3 + 48);
      v72 = v56;
      v57 = *(v19 + 16);
      v73 = v25;
      v58 = v82;
      v57(v25, v82, TupleTypeMetadata3);
      v78 = *(TupleTypeMetadata3 + 48);
      v59 = *(TupleTypeMetadata3 + 64);
      v75 = *(v83 - 8);
      v76 = v59;
      v60 = v79;
      v61 = v83;
      (*(v75 + 32))(v79, v25);
      v57(v23, v58, TupleTypeMetadata3);
      v62 = *(TupleTypeMetadata3 + 48);
      v63 = *(TupleTypeMetadata3 + 64);
      v64 = v81;
      v65 = *(v81 - 8);
      (*(v65 + 32))(v60 + v71, &v23[v62], v81);
      v66 = v72;
      (v74)(&v72[v60], v77, a5);
      __swift_storeEnumTagSinglePayload(&v66[v60], 0, 1, a5);
      v67 = v80;
      v68 = *(*(v80 - 8) + 8);
      v68(&v23[v63], v80);
      (*(v75 + 8))(v23, v61);
      v69 = v73;
      v68(&v76[v73], v67);
      return (*(v65 + 8))(&v69[v78], v64);
    }
  }

  else
  {
    v76 = *(TupleTypeMetadata3 + 48);
    v78 = *(TupleTypeMetadata3 + 64);
    v44 = v79;
    (*(*(a3 - 8) + 32))(v79, v29, a3);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, a3);
    v45 = *(v19 + 16);
    v46 = v82;
    v45(v25, v82, TupleTypeMetadata3);
    v47 = *(TupleTypeMetadata3 + 48);
    v77 = *(TupleTypeMetadata3 + 64);
    v48 = v81;
    v49 = *(v81 - 8);
    (*(v49 + 32))(&v76[v44], &v25[v47], v81);
    v45(v23, v46, TupleTypeMetadata3);
    v50 = *(TupleTypeMetadata3 + 48);
    v51 = *(TupleTypeMetadata3 + 64);
    v52 = v80;
    v53 = *(v80 - 8);
    (*(v53 + 32))(v44 + v78, &v23[v51], v80);
    (*(v49 + 8))(&v23[v50], v48);
    v54 = v83;
    v55 = *(*(v83 - 8) + 8);
    v55(v23, v83);
    (*(v53 + 8))(&v77[v25], v52);
    return (v55)(v25, v54);
  }
}

uint64_t whenSome<A, B>(_:transform:)()
{
  OUTLINED_FUNCTION_5();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[5] = v5;
  OUTLINED_FUNCTION_2_3();
  v0[10] = v6;
  v8 = *(v7 + 64) + 15;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  sub_1BEFF79E8();
  OUTLINED_FUNCTION_27_8();
  v9 = sub_1BF17BBAC();
  v0[13] = v9;
  v10 = *(v9 - 8);
  v0[14] = v10;
  v0[15] = *(v10 + 64);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF10CE20, 0, 0);
}

uint64_t sub_1BF10CE20()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_85();
  v3 = swift_allocObject();
  *(v0 + 144) = v3;
  *(v3 + 16) = *(v0 + 64);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  sub_1BF17A65C();
  swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_1BF10CF5C;
  v5 = *(v0 + 104);

  return Sequence<>.concurrentMap<A>(_:)();
}

uint64_t sub_1BF10CF5C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v6 + 160) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BF10D070, 0, 0);
}

uint64_t sub_1BF10D070()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[9];
  v4 = sub_1BF179CFC();
  v48 = v4;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = sub_1BF17A4EC();
  v49 = v5;
  if (v5 != sub_1BF17A5AC())
  {
    v7 = v0[14];
    v46 = v0[15];
    v47 = 0;
    v8 = v0[10];
    v9 = (v8 + 32);
    v10 = (v8 + 16);
    v11 = (v8 + 8);
    while (1)
    {
      v12 = v0[20];
      v13 = v0[13];
      v14 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v14)
      {
        (*(v7 + 16))(v0[17], v0[20] + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v0[13]);
      }

      else
      {
        v26 = v0[13];
        result = sub_1BF17B23C();
        if (v46 != 8)
        {
          __break(1u);
          return result;
        }

        v28 = result;
        v29 = v0[17];
        v30 = v0[13];
        v0[3] = v28;
        (*(v7 + 16))(v29, v0 + 3, v30);
        swift_unknownObjectRelease();
      }

      v15 = v0[20];
      v17 = v0[16];
      v16 = v0[17];
      v18 = v0[13];
      sub_1BF17A62C();
      (*(v7 + 32))(v17, v16, v18);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = v0[16];
      if (EnumCaseMultiPayload == 1)
      {

        v47 = *v20;
      }

      else
      {
        v22 = v0[11];
        v21 = v0[12];
        v23 = v0[9];
        (*v9)(v21, v0[16], v23);
        (*v10)(v22, v21, v23);
        OUTLINED_FUNCTION_39_0();
        sub_1BF17A65C();
        sub_1BF17A5DC();
        (*v11)(v21, v23);
      }

      v24 = v0[20];
      v25 = v0[13];
      v5 = v49;
      if (v49 == sub_1BF17A5AC())
      {
        v6 = v47;
        v4 = v48;
        goto LABEL_13;
      }
    }
  }

  v6 = 0;
LABEL_13:
  v31 = v0[20];
  v32 = v0[9];

  v0[4] = v4;
  OUTLINED_FUNCTION_27_8();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {
    if (v6)
    {
      v33 = v0[20];
      v35 = v0[16];
      v34 = v0[17];
      v37 = v0[11];
      v36 = v0[12];
      v38 = v6;

      swift_willThrow();

      OUTLINED_FUNCTION_9();

      return v39();
    }
  }

  else
  {
  }

  v40 = v0[20];
  v41 = v0[16];
  v42 = v0[17];
  v44 = v0[11];
  v43 = v0[12];

  v45 = v0[1];

  return v45(v4);
}

uint64_t sub_1BF10D414(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v9 = *(a6 - 8);
  v6[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[5] = v11;
  v15 = (a3 + *a3);
  v12 = a3[1];
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_1BF10D574;

  return v15(v11, a2);
}

uint64_t sub_1BF10D574()
{
  OUTLINED_FUNCTION_5();
  v2 = *(*v1 + 48);
  v3 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v5 + 56) = v0;

  if (v0)
  {
    v6 = sub_1BF10D720;
  }

  else
  {
    v6 = sub_1BF10D67C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BF10D67C()
{
  OUTLINED_FUNCTION_5();
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);
  sub_1BEFF79E8();
  OUTLINED_FUNCTION_27_8();
  sub_1BF17BBAC();
  swift_storeEnumTagMultiPayload();
  v1 = v0[5];

  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1BF10D720()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  sub_1BEFF79E8();
  OUTLINED_FUNCTION_27_8();
  sub_1BF17BBAC();
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_9();

  return v3();
}

void sub_1BF10D918()
{
  if (!qword_1ED8EAE50)
  {
    sub_1BEFF79E8();
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE50);
    }
  }
}

uint64_t sub_1BF10D9A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1BF10DA70;

  return sub_1BF10D414(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1BF10DA70()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_9();

  return v4();
}

uint64_t sub_1BF10DB64(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BF10DC10(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[4] - 8);
  if (*(*(a3[3] - 8) + 64) > v3)
  {
    v3 = *(*(a3[3] - 8) + 64);
  }

  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(*(a3[5] - 8) + 64);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_26;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_26:
      v12 = *(a1 + v5);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_26;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 253;
}

void sub_1BF10DD84(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = v5 + 1;
  v9 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 252) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFC)
  {
    v11 = a2 - 253;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v5 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1BF10DF98(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BF10E02C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(*(a3[4] - 8) + 64);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}