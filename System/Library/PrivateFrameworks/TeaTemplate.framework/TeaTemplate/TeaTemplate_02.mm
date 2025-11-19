uint64_t sub_1D7945518(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D7945558(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_1D79455B0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D79456B8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D796EBB0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1D794577C();
  *(inited + 40) = a3;
  type metadata accessor for Key(0);
  sub_1D792FE4C();
  v8 = v7;
  v9 = a3;
  v10 = sub_1D796C240();
  v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v12 = sub_1D792FFF4(a1, a2, v10);

  return v12;
}

void sub_1D79456B8()
{
  if (!qword_1EC9D9FF8)
  {
    sub_1D7945710();
    v0 = sub_1D796C940();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9D9FF8);
    }
  }
}

void sub_1D7945710()
{
  if (!qword_1EC9DA000)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9DA000);
    }
  }
}

unint64_t sub_1D794577C()
{
  result = qword_1EC9DA008;
  if (!qword_1EC9DA008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9DA008);
  }

  return result;
}

uint64_t sub_1D79457D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v9[2] = *(a1 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D79461A0(v9, a2, a3);

    *v3 = v8;
  }

  else
  {
    sub_1D7946388(a1);
    sub_1D7945D84(a2, a3, v9);

    return sub_1D7946388(v9);
  }

  return result;
}

uint64_t sub_1D7945884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D792CF90(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1D79458D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D7945E90(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1D79326F0(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t LayoutContext.contextFrame(for:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_3();
  if (*(*(v2 + 56) + 16) && (v5 = sub_1D792CF90(a1, a2), (v6 & 1) != 0))
  {
    OUTLINED_FUNCTION_5_3(v5);
  }

  else
  {
    a2 = 0;
  }

  swift_endAccess();
  return a2;
}

uint64_t LayoutContext.set(layoutAttributes:layoutContext:direction:metadata:for:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  return sub_1D7933DA4(v14, a2, a3, a4, a5, a6, v6, v12, v13);
}

void __swiftcall LayoutContext.frame(for:)(__C::CGRect_optional *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  swift_beginAccess();
  v6 = *(v2 + 56);
  if (*(v6 + 16) && (v7 = sub_1D792CF90(countAndFlagsBits, object), (v8 & 1) != 0))
  {
    v9 = 0;
    v10 = *(*(v6 + 56) + 8 * v7);
    v11 = *(v10 + 32);
    v12 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v9 = 1;
  }

  swift_endAccess();
  retstr->value.origin = v12;
  retstr->value.size = v11;
  retstr->is_nil = v9;
}

uint64_t LayoutContext.embedContext(for:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_3();
  if (*(*(v2 + 72) + 16) && (v5 = sub_1D792CF90(a1, a2), (v6 & 1) != 0))
  {
    OUTLINED_FUNCTION_5_3(v5);
  }

  else
  {
    a2 = 0;
  }

  swift_endAccess();
  return a2;
}

Swift::OpaquePointer_optional __swiftcall LayoutContext.metadata(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  OUTLINED_FUNCTION_3_3();
  if (*(*(v1 + 64) + 16) && (v4 = sub_1D792CF90(countAndFlagsBits, object), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_5_3(v4);
  }

  else
  {
    object = 0;
  }

  swift_endAccess();
  v7 = object;
  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

unint64_t LayoutContext.description.getter()
{
  sub_1D796C780();

  OUTLINED_FUNCTION_4_3();
  type metadata accessor for LayoutContextFrame();

  v0 = sub_1D796C230();
  v2 = v1;

  MEMORY[0x1DA704750](v0, v2);

  MEMORY[0x1DA704750](0x736465626D65202CLL, 0xE90000000000003DLL);
  OUTLINED_FUNCTION_4_3();

  v3 = sub_1D796C230();
  v5 = v4;

  MEMORY[0x1DA704750](v3, v5);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0xD000000000000015;
}

double sub_1D7945D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1D792CF90(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_1D7929994(0, &qword_1EE09C4B0, 255, sub_1D792A2B0);
    sub_1D796C880();

    v8 = (*(v11 + 56) + 48 * v7);
    v9 = v8[1];
    *a3 = *v8;
    a3[1] = v9;
    a3[2] = v8[2];
    sub_1D792A2B0();
    sub_1D796C8A0();
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1D7945E90()
{
  sub_1D796CAC0();
  sub_1D796C320();
  v0 = sub_1D796CAF0();

  return sub_1D7945EF8(v0);
}

_OWORD *sub_1D7945F24(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_1D792CF90(a2, a3);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_1D793274C();
  if ((sub_1D796C880() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1D792CF90(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1D796CA70();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  if (v11)
  {
    v14 = (*(*v3 + 56) + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1(v14);

    return sub_1D79326E0(a1, v14);
  }

  else
  {
    OUTLINED_FUNCTION_2_5();
    sub_1D7953510(v16, v17, v18, a1, v19);
  }
}

uint64_t sub_1D7946050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D792CF90(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1D7929994(0, &qword_1EE09C4A8, 255, sub_1D7946448);
  if ((sub_1D796C880() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1D792CF90(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1D796CA70();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(*(v15 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_1D792D8B0(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_1D79461A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D792CF90(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1D7929994(0, &qword_1EE09C4B0, 255, sub_1D792A2B0);
  if ((sub_1D796C880() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1D792CF90(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1D796CA70();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = *(v15 + 56) + 48 * v11;

    return sub_1D79463E4(a1, v16);
  }

  else
  {
    sub_1D79535A8(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_1D79462F4(uint64_t a1, uint64_t a2)
{
  sub_1D792A2B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7946388(uint64_t a1)
{
  sub_1D792C5E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D79463E4(uint64_t a1, uint64_t a2)
{
  sub_1D792A2B0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7946448()
{
  if (!qword_1EE09C570)
  {
    sub_1D79464B0();
    v0 = sub_1D796C270();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE09C570);
    }
  }
}

unint64_t sub_1D79464B0()
{
  result = qword_1EE09D068[0];
  if (!qword_1EE09D068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE09D068);
  }

  return result;
}

uint64_t sub_1D7946504()
{
  if (*v0)
  {
    v1 = 0x676E696361705376;
  }

  else
  {
    v1 = 0x676E696361705368;
  }

  MEMORY[0x1DA704750](v1, 0xE800000000000000);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0x70536E6D756C6F63;
}

_BYTE *storeEnumTagSinglePayload for ColumnSpecSizer(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t If<A>(_:then:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1D7946744(a1, a2, a3, a4, a5);
}

{
  return sub_1D7946744(a1, a2, a3, a4, a5);
}

uint64_t sub_1D7946744(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  type metadata accessor for IfNode();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  sub_1D7938D28(v9);

  return sub_1D79466D0();
}

uint64_t If<A, B>(_:then:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1D7946938(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return sub_1D7946938(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1D7946880()
{
  OUTLINED_FUNCTION_1_7();
  swift_allocObject();
  return sub_1D7946B24();
}

uint64_t sub_1D7946938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for IfNode();
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v10;
  v16[4] = v9;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a9;
  v16[8] = v13;
  v16[9] = v12;

  return sub_1D7946880();
}

uint64_t sub_1D7946A04(uint64_t (*a1)(void))
{
  sub_1D79206C4();
  swift_allocObject();
  v2 = sub_1D796C440();
  *v3 = a1();
  type metadata accessor for Node();
  result = v2;

  sub_1D7920548();
  return result;
}

uint64_t sub_1D7946AAC()
{
  OUTLINED_FUNCTION_0_14();
  v0 = type metadata accessor for Conditional();
  OUTLINED_FUNCTION_2_6(v0, &protocol witness table for Conditional<A>);
  v3 = v1;
  return Node.init(kind:identifier:)(&v3, 0, 0);
}

uint64_t sub_1D7946B24()
{
  OUTLINED_FUNCTION_0_14();
  v2 = *(v1 + 176);
  v10[0] = *(v0 + 168);
  v10[1] = v3;
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = type metadata accessor for ConditionalList();
  OUTLINED_FUNCTION_2_6(v7, &protocol witness table for ConditionalList<A, B>);
  LOBYTE(v10[0]) = v8;
  return Node.init(kind:identifier:)(v10, 0, 0);
}

uint64_t IfNode.Else(elseBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 168);
  v6[3] = *(v5 + 176);
  v6[4] = a1;
  v6[5] = a2;
  v7 = v2[17];
  v2[17] = sub_1D7946FC8;
  v2[18] = v6;

  sub_1D7935140(v7);
}

{
  v3 = *(v2 + 136);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  sub_1D7935140(v3);
}

uint64_t sub_1D7946C64(uint64_t (*a1)(void))
{
  sub_1D79206C4();
  swift_allocObject();
  v2 = sub_1D796C440();
  *v3 = a1();
  type metadata accessor for Node();
  result = v2;

  sub_1D7920548();
  return result;
}

uint64_t sub_1D7946D94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  sub_1D7935140(*(v0 + 136));
}

uint64_t IfNode.deinit()
{
  v0 = Node.deinit();
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  sub_1D7935140(*(v0 + 136));

  return v0;
}

uint64_t IfNode.__deallocating_deinit()
{
  v0 = IfNode.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 161, 7);
}

uint64_t IfNode.description.getter()
{
  MEMORY[0x1DA704750](2647625, 0xE300000000000000);
  sub_1D7946ECC();
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D7946ECC()
{
  result = qword_1EC9DA010[0];
  if (!qword_1EC9DA010[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EC9DA010);
  }

  return result;
}

uint64_t LayoutItemList.values.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t LayoutItemList.__allocating_init()()
{
  OUTLINED_FUNCTION_3_4();
  v0 = swift_allocObject();
  LayoutItemList.init()();
  return v0;
}

uint64_t LayoutItemList.init()()
{
  sub_1D796C690();
  v1 = sub_1D796C200();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_1D7947104(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_4();
  v4 = swift_allocObject();
  sub_1D794714C(a1, a2);
  return v4;
}

uint64_t sub_1D794714C(uint64_t a1, uint64_t a2)
{
  sub_1D796C690();
  *(v2 + 16) = sub_1D796C200();
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *(v2 + 16) = a1;

  swift_beginAccess();
  *(v2 + 24) = a2;

  return v2;
}

uint64_t LayoutItemList.lookupValue(source:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = *(*v4 + 80);
  sub_1D796C690();
  OUTLINED_FUNCTION_0_15();
  v22 = v9;
  v23 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_4_3();
  v12 = v4[3];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(v14 + 8);

  v16 = v15(v13, v14);
  sub_1D7934318(v16, v17, v12);
  v19 = v18;

  if (v19)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  sub_1D796C500();
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    result = (*(v22 + 8))(v3, v23);
LABEL_4:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v3, v7);
}

uint64_t LayoutItemList.description.getter()
{
  v0 = sub_1D796CB50();
  MEMORY[0x1DA704750](v0);

  MEMORY[0x1DA704750](40, 0xE100000000000000);
  OUTLINED_FUNCTION_4_3();
  sub_1D796C690();
  sub_1D796C4F0();

  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_10_1();
  sub_1D796C370();

  sub_1D796C4F0();
  swift_getWitnessTable();
  sub_1D796C960();

  return 0;
}

uint64_t LayoutItemList.flipRightToLeft(bounds:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  OUTLINED_FUNCTION_4_3();
  v23 = v4[2];
  v18[1] = *(v10 + 80);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v11 = sub_1D796C690();
  v12 = sub_1D796C4F0();

  WitnessTable = swift_getWitnessTable();
  v15 = sub_1D794789C(sub_1D7947C8C, v18, v12, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);

  OUTLINED_FUNCTION_4_3();
  v16 = v5[3];

  return sub_1D7947104(v15, v16);
}

uint64_t sub_1D79476E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = sub_1D796C690();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v24 - v20;
  (*(v17 + 16))(&v24 - v20, a1, v16, v19);
  if (__swift_getEnumTagSinglePayload(v21, 1, a2) == 1)
  {
    (*(v17 + 8))(v21, v16);
    v22 = 1;
  }

  else
  {
    (*(*(a3 + 24) + 8))(a2, a5, a6, a7, a8);
    (*(*(a2 - 8) + 8))(v21, a2);
    v22 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v22, 1, a2);
}

uint64_t sub_1D794789C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v46 = a1;
  v47 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  OUTLINED_FUNCTION_7_4();
  v48 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_15();
  v50 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  v18 = a4 - 8;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_7_4();
  v44 = v21;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_15();
  v38 = v23;
  v39 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_2_7();
  v26 = sub_1D796C540();
  if (!v26)
  {
    return sub_1D796C480();
  }

  v49 = v26;
  v53 = sub_1D796C830();
  v40 = sub_1D796C840();
  sub_1D796C7E0();
  result = sub_1D796C530();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v35 = v11;
    v36 = a5;
    v28 = 0;
    v41 = (v50 + 16);
    v42 = v50 + 8;
    v43 = v8;
    while (!__OFADD__(v28, 1))
    {
      v50 = v28 + 1;
      v29 = sub_1D796C590();
      (*v41)(v17);
      v29(v52, 0);
      v30 = v51;
      v46(v17, v48);
      if (v30)
      {
        v33 = OUTLINED_FUNCTION_8_1();
        v34(v33);
        (*(v38 + 8))(v18, v39);

        return (*(v35 + 32))(v37, v48, v36);
      }

      v51 = 0;
      v31 = OUTLINED_FUNCTION_8_1();
      v32(v31);
      sub_1D796C820();
      result = sub_1D796C550();
      ++v28;
      if (v50 == v49)
      {
        (*(v38 + 8))(v18, v39);
        return v53;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7947C60@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = LayoutItemList.flipRightToLeft(bounds:)(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

uint64_t Log.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  v4 = 10;
  return Node.init(kind:identifier:)(&v4, 0, 0);
}

unint64_t sub_1D7947D64()
{
  if (qword_1EC9D9E48 != -1)
  {
    swift_once();
  }

  sub_1D796C5E0();
  sub_1D793F858();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D796EBB0;
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1D793F970();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  sub_1D796C1D0();

  return 0x8000000000000000;
}

uint64_t Log.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Log.__deallocating_deinit()
{
  v0 = Log.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t Log.description.getter()
{
  MEMORY[0x1DA704750](*(v0 + 80), *(v0 + 88));
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 677867340;
}

uint64_t LayoutItem.value.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_2();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_2();
  sub_1D796C690();
  OUTLINED_FUNCTION_0_0();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t LayoutItem.value.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_8_2();
  sub_1D796C690();
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t LayoutItem.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LayoutItem.init(_:)(a1);
  return v2;
}

uint64_t LayoutItem.lookupValue(source:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_5();
  v4 = *(v3 + 80);
  sub_1D796C690();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_5();
  v7 = OUTLINED_FUNCTION_6_4();
  v8(v7);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    v9 = OUTLINED_FUNCTION_7_5();
    result = v10(v9);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(*(v4 - 8) + 32))(boxed_opaque_existential_1, v1, v4);
  }

  return result;
}

uint64_t LayoutItem.description.getter()
{
  OUTLINED_FUNCTION_3_5();
  v2 = *(v1 + 80);
  v3 = sub_1D796C690();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_5();
  v14 = OUTLINED_FUNCTION_6_4();
  v15(v14);
  if (__swift_getEnumTagSinglePayload(v0, 1, v2) == 1)
  {
    (*(v5 + 8))(v0, v3);
    v21 = sub_1D796CB50();
    v22 = v16;
    MEMORY[0x1DA704750](0x296C696E28, 0xE500000000000000);
    return v21;
  }

  else
  {
    (*(v9 + 32))(v13, v0, v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    v18 = sub_1D796CB50();
    MEMORY[0x1DA704750](v18);

    MEMORY[0x1DA704750](40, 0xE100000000000000);
    sub_1D796C950();
    MEMORY[0x1DA704750](41, 0xE100000000000000);
    v17 = v21;
    (*(v9 + 8))(v13, v2);
  }

  return v17;
}

uint64_t LayoutItem.flipRightToLeft(bounds:)(double a1, double a2, double a3, double a4)
{
  v10 = *v4;
  v11 = *(*v4 + 80);
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_1_9();
  sub_1D796C690();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  OUTLINED_FUNCTION_3_5();
  v21 = *(v20 + 96);
  swift_beginAccess();
  v22 = 1;
  if (!__swift_getEnumTagSinglePayload(v4 + v21, 1, v11))
  {
    (*(v13 + 16))(v5, v4 + v21, v11);
    (*(*(*(v10 + 88) + 24) + 8))(v11, a1, a2, a3, a4);
    v23 = OUTLINED_FUNCTION_7_5();
    v24(v23);
    v22 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v22, 1, v11);
  return LayoutItem.__allocating_init(_:)(v19);
}

uint64_t sub_1D79487AC@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = LayoutItem.flipRightToLeft(bounds:)(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

uint64_t sub_1D7948814()
{
  v0 = [objc_opt_self() mainBundle];
  sub_1D7948A10(v0);
  sub_1D7948A80();
  result = sub_1D796C680();
  qword_1EC9DFA10 = result;
  return result;
}

uint64_t sub_1D794894C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EE09C7B8;
  return result;
}

uint64_t sub_1D7948998(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EE09C7B8 = v1;
  return result;
}

uint64_t sub_1D7948A10(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D796C310();

  return v3;
}

unint64_t sub_1D7948A80()
{
  result = qword_1EC9DA098;
  if (!qword_1EC9DA098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9DA098);
  }

  return result;
}

uint64_t sub_1D7948AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v12 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v12);
  result = (*(v11 + 16))(a1, a2, a3, *(v9 + 80), *(v9 + 88), v12, v11);
  if (v5)
  {
    return swift_deallocUninitializedObject();
  }

  *a4 = v10 | 0x5000000000000000;
  return result;
}

uint64_t sub_1D7948BF4()
{
  sub_1D796C780();
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x6E496E6F6E202B20, 0xEE006C6172676574);
  return 0;
}

uint64_t sub_1D7948C90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for DimensionCursor();
  sub_1D794D994(v11);
  if (sub_1D792C4B8(v11) == 1)
  {
    sub_1D7930964();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0;
    *(v4 + 48) = 6;
    return swift_willThrow();
  }

  else
  {
    v6 = v12;
    v7 = v13;
    v8 = DimensionCursor.origin.getter();
    v9 = DimensionCursor.position.getter();
    v10 = DimensionCursor.origin.getter();
    result = swift_allocObject();
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      *(result + 16) = v8 + (v6 + v7) * ceil((v9 - v10) / (v6 + v7));
      *(result + 24) = v6 * v3 + v7 * (v3 - 1);
      *(result + 32) = 1;
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_1D7948E44()
{
  v0 = sub_1D796C930();
  MEMORY[0x1DA704750](v0);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0x28736E6D756C6F63;
}

void *LayoutEdgeInsetAdjuster.init(top:left:bottom:right:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  return result;
}

uint64_t static LayoutEdgeInsetAdjustment.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v3 >> 61 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    case 2uLL:
      if (v3 >> 61 != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    case 3uLL:
      if (v3 >> 61 != 3)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    case 4uLL:
      if (v3 >> 61 != 4)
      {
        goto LABEL_21;
      }

LABEL_12:
      sub_1D793BBD8(v3);
      v6 = sub_1D793BBD8(v2);
      v7 = OUTLINED_FUNCTION_4_4(v6);
      if ((v7 & 1) == 0)
      {
        goto LABEL_22;
      }

      v8 = OUTLINED_FUNCTION_4_4(v7);
      OUTLINED_FUNCTION_7_6();
      return v8 & 1;
    case 5uLL:
      if (v2 == 0xA000000000000000)
      {
        if (v3 == 0xA000000000000000)
        {
          sub_1D79436D4(0xA000000000000000);
          v9 = 0xA000000000000000;
          goto LABEL_19;
        }
      }

      else if (v3 == 0xA000000000000008)
      {
        sub_1D79436D4(0xA000000000000008);
        v9 = 0xA000000000000008;
LABEL_19:
        sub_1D79436D4(v9);
LABEL_20:
        v8 = 1;
        return v8 & 1;
      }

LABEL_21:
      sub_1D793BBD8(*a2);
      sub_1D793BBD8(v2);
LABEL_22:
      OUTLINED_FUNCTION_7_6();
LABEL_23:
      v8 = 0;
      return v8 & 1;
    default:
      if (v3 >> 61)
      {
        goto LABEL_21;
      }

      v4 = *(v2 + 16);
      v5 = *(v3 + 16);
      sub_1D793BBD8(*a2);
      sub_1D793BBD8(v2);
      OUTLINED_FUNCTION_7_6();
      if (v4 != v5)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
  }
}

unint64_t + infix(_:_:)()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_6();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_2_8(v2 | 0x2000000000000000);

  return sub_1D793BBD8(v3);
}

unint64_t - infix(_:_:)()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_6();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_2_8(v2 | 0x4000000000000000);

  return sub_1D793BBD8(v3);
}

unint64_t * infix(_:_:)()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_6();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_2_8(v2 | 0x6000000000000000);

  return sub_1D793BBD8(v3);
}

unint64_t / infix(_:_:)()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_6();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_2_8(v2 | 0x8000000000000000);

  return sub_1D793BBD8(v3);
}

double LayoutEdgeInsetAdjuster.adjust(layoutMargins:hSpacing:vSpacing:)(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  OUTLINED_FUNCTION_6_5();
  v13 = sub_1D793BBC4(v9);
  v21 = OUTLINED_FUNCTION_5_6(v13, v14, v15, v16, v17, v18, v19, v20, v51, v9);
  v22 = OUTLINED_FUNCTION_8_3(v21, a1);
  sub_1D79436C0(v55);
  OUTLINED_FUNCTION_6_5();
  v23 = sub_1D793BBC4(v10);
  v31 = OUTLINED_FUNCTION_5_6(v23, v24, v25, v26, v27, v28, v29, v30, v52, v10);
  OUTLINED_FUNCTION_8_3(v31, a2);
  sub_1D79436C0(v56);
  OUTLINED_FUNCTION_6_5();
  v32 = sub_1D793BBC4(v12);
  v40 = OUTLINED_FUNCTION_5_6(v32, v33, v34, v35, v36, v37, v38, v39, v53, v12);
  OUTLINED_FUNCTION_8_3(v40, a3);
  sub_1D79436C0(v57);
  OUTLINED_FUNCTION_6_5();
  v41 = sub_1D793BBC4(v11);
  v49 = OUTLINED_FUNCTION_5_6(v41, v42, v43, v44, v45, v46, v47, v48, v54, v11);
  OUTLINED_FUNCTION_8_3(v49, a4);
  sub_1D79436C0(v58);
  return v22;
}

double sub_1D7949304(unint64_t *a1, double a2, double a3, double a4)
{
  v6 = *a1;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v9 = *v4;
    v8 = v4[1];
    v11 = v4[2];
    v10 = v4[3];
    switch(v6 >> 61)
    {
      case 1uLL:
        v29 = v6 & 0x1FFFFFFFFFFFFFFFLL;
        v30 = *(v29 + 16);
        v31 = *(v29 + 24);
        v35 = *v4;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v30;
        sub_1D793BBD8(v30);
        v32 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        v35 = v9;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v31;
        sub_1D793BBD8(v31);
        v33 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        a2 = v32 + v33;
        break;
      case 2uLL:
        v19 = v6 & 0x1FFFFFFFFFFFFFFFLL;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v35 = *v4;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v20;
        sub_1D793BBD8(v20);
        v22 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        v35 = v9;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v21;
        sub_1D793BBD8(v21);
        v23 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        a2 = v22 - v23;
        break;
      case 3uLL:
        v24 = v6 & 0x1FFFFFFFFFFFFFFFLL;
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v35 = *v4;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v25;
        sub_1D793BBD8(v25);
        v27 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        v35 = v9;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v26;
        sub_1D793BBD8(v26);
        v28 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        a2 = v27 * v28;
        break;
      case 4uLL:
        v14 = v6 & 0x1FFFFFFFFFFFFFFFLL;
        v15 = *(v14 + 16);
        v16 = *(v14 + 24);
        v35 = *v4;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v15;
        sub_1D793BBD8(v15);
        v17 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        v35 = v9;
        v36 = v8;
        v37 = v11;
        v38 = v10;
        v34 = v16;
        sub_1D793BBD8(v16);
        v18 = sub_1D7949304(&v34, a2, a3, a4);
        sub_1D79436C0(v34);
        a2 = v17 / v18;
        break;
      case 5uLL:
        if (v6 == 0xA000000000000000)
        {
          a2 = a3;
        }

        else
        {
          a2 = a4;
        }

        break;
      default:
        a2 = *(v6 + 16);
        break;
    }
  }

  return a2;
}

BOOL static LayoutEdgeInsetAdjuster.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((~*a1 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(*a1);
    sub_1D793BBC4(v7);
    if ((~v7 & 0xF000000000000007) == 0)
    {
      sub_1D79436C0(v3);
      goto LABEL_8;
    }

LABEL_6:
    sub_1D79436C0(v3);
    v10 = v7;
LABEL_28:
    sub_1D79436C0(v10);
    return 0;
  }

  v48 = *a1;
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v3);
    sub_1D793BBC4(v7);
    sub_1D793BBC4(v3);
    sub_1D79436D4(v3);
    goto LABEL_6;
  }

  sub_1D793BBC4(v3);
  sub_1D793BBC4(v7);
  v11 = sub_1D793BBC4(v3);
  v19 = OUTLINED_FUNCTION_4_4(v11, v12, v13, v14, v15, v16, v17, v18, v7, v48);
  sub_1D79436D4(v7);
  sub_1D79436D4(v3);
  sub_1D79436C0(v3);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((~v2 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v2);
    sub_1D793BBC4(v6);
    if ((~v6 & 0xF000000000000007) == 0)
    {
      sub_1D79436C0(v2);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v2);
    sub_1D793BBC4(v6);
    sub_1D793BBC4(v2);
    sub_1D79436D4(v2);
LABEL_13:
    sub_1D79436C0(v2);
    v10 = v6;
    goto LABEL_28;
  }

  sub_1D793BBC4(v2);
  sub_1D793BBC4(v6);
  v20 = sub_1D793BBC4(v2);
  v28 = OUTLINED_FUNCTION_4_4(v20, v21, v22, v23, v24, v25, v26, v27, v6, v2);
  sub_1D79436D4(v6);
  sub_1D79436D4(v2);
  sub_1D79436C0(v2);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if ((~v5 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v5);
    sub_1D793BBC4(v9);
    if ((~v9 & 0xF000000000000007) == 0)
    {
      sub_1D79436C0(v5);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if ((~v9 & 0xF000000000000007) == 0)
  {
    sub_1D793BBC4(v5);
    sub_1D793BBC4(v9);
    sub_1D793BBC4(v5);
    sub_1D79436D4(v5);
LABEL_20:
    sub_1D79436C0(v5);
    v10 = v9;
    goto LABEL_28;
  }

  sub_1D793BBC4(v5);
  sub_1D793BBC4(v9);
  v29 = sub_1D793BBC4(v5);
  v37 = OUTLINED_FUNCTION_4_4(v29, v30, v31, v32, v33, v34, v35, v36, v9, v5);
  sub_1D79436D4(v9);
  sub_1D79436D4(v5);
  sub_1D79436C0(v5);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if ((~v8 & 0xF000000000000007) == 0)
    {
      sub_1D793BBC4(v4);
      sub_1D793BBC4(v8);
      sub_1D793BBC4(v4);
      sub_1D79436D4(v4);
      goto LABEL_27;
    }

    sub_1D793BBC4(v4);
    sub_1D793BBC4(v8);
    v39 = sub_1D793BBC4(v4);
    v47 = OUTLINED_FUNCTION_4_4(v39, v40, v41, v42, v43, v44, v45, v46, v8, v4);
    OUTLINED_FUNCTION_7_6();
    sub_1D79436C0(v4);
    return (v47 & 1) != 0;
  }

  sub_1D793BBC4(v4);
  sub_1D793BBC4(v8);
  if ((~v8 & 0xF000000000000007) != 0)
  {
LABEL_27:
    sub_1D79436C0(v4);
    v10 = v8;
    goto LABEL_28;
  }

  sub_1D79436C0(v4);
  return 1;
}

uint64_t sub_1D79498A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
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

uint64_t sub_1D79498F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D7949948(unint64_t *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D7949980(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 32))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v3 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
      v4 = v3 ^ 0x7E;
      v2 = 126 - v3;
      if (v4 >= 0x7A)
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

uint64_t sub_1D79499DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 122;
    *(result + 8) = 0;
    if (a3 >= 0x7A)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = ((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t Pass.DynamicOptions.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Pass.cursorFramePass.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t Cursor.pass.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_11();
  v3 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = *(v1 + 64);
  *(a1 + 24) = v3;
}

uint64_t Cursor.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 128), 0x109uLL);
  memcpy(a1, (v1 + 128), 0x109uLL);
  return sub_1D7923AE4(__dst, v4);
}

__n128 Cursor.filledBounds.getter@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_11();
  v3 = *(v1 + 656);
  result = *(v1 + 624);
  v5 = *(v1 + 640);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void Cursor.sizingBehavior.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 714);
  *a1 = *(v1 + 713);
  a1[1] = v2;
}

uint64_t sub_1D7949C24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7949C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D7949CCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D7949CE4(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D7949D14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D7949D54(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DimensionSizerResult.ProcessResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DimensionSizerResult.ProcessResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7949E3C(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D7949E54(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t (*Template<A, B>(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v10 = *(a3 + 32);
  v11 = *(a3 + 33);
  *&v15 = a4;
  *(&v15 + 1) = a5;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  type metadata accessor for Layout();
  v12 = *a3;
  v16 = *(a3 + 16);
  v15 = v12;
  v17 = v10;
  v18 = v11;

  Layout.__allocating_init(canvas:name:)(&v15, a1, a2);
  v13 = sub_1D7949F28();

  return v13;
}

int64_t sub_1D7949F6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1D794A788(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 16 * v7 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

TeaTemplate::SizeConstraints __swiftcall SizeConstraints.init(width:height:)(Swift::OpaquePointer width, Swift::OpaquePointer height)
{
  v2->_rawValue = width._rawValue;
  v2[1]._rawValue = height._rawValue;
  result.height = height;
  result.width = width;
  return result;
}

int64_t SizeConstraints.adding(widthConstraint:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  v7 = v2[1];
  sub_1D792E934(0, &qword_1EE09C488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D796EBB0;
  *(inited + 32) = v4;
  *(inited + 40) = v5;

  result = sub_1D7949F6C(inited);
  *a2 = v6;
  a2[1] = v7;
  return result;
}

int64_t SizeConstraints.adding(heightConstraint:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *v2;
  v6 = v2[1];
  sub_1D792E934(0, &qword_1EE09C488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D796EBB0;
  *(inited + 32) = v4;
  *(inited + 40) = v5;

  result = sub_1D7949F6C(inited);
  *a2 = v7;
  a2[1] = v6;
  return result;
}

TeaTemplate::SizeConstraints __swiftcall SizeConstraints.adding(constraints:)(TeaTemplate::SizeConstraints constraints)
{
  v3 = v1;
  v4 = *constraints.width._rawValue;
  v5 = *(constraints.width._rawValue + 1);
  v6 = v2[1];
  v10 = *v2;

  sub_1D7949F6C(v4);
  v7 = sub_1D7949F6C(v5);
  *v3 = v10;
  v3[1] = v6;
  result.height._rawValue = v8;
  result.width._rawValue = v7;
  return result;
}

uint64_t static SizeConstraints.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D794A29C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D794A29C(v2, v3);
}

uint64_t sub_1D794A29C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *(v4 - 1);
      v7 = *v4;
      if (*v3)
      {
        if (v5 != v6)
        {
          v7 = 0;
        }

        if (v7 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v5 != v6)
        {
          LOBYTE(v7) = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t static SizeConstraints.none.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC9D9E50 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EC9DA0A8;
  *a1 = qword_1EC9DA0A0;
  a1[1] = v2;
}

double sub_1D794A3C4@<D0>(char a1@<W0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  sub_1D792E934(0, &qword_1EE09C488);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_1D796EBB0;
  *(v6 + 32) = a3;
  *(v6 + 40) = a1;
  v8 = MEMORY[0x1E69E7CC0];
  *a2 = v6;
  a2[1] = v8;
  return result;
}

double sub_1D794A440@<D0>(char a1@<W0>, void *a2@<X8>, double a3@<D0>)
{
  sub_1D792E934(0, &qword_1EE09C488);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_1D796EBB0;
  *(v6 + 32) = a3;
  *(v6 + 40) = a1;
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v6;
  return result;
}

BOOL static SizeConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t getEnumTagSinglePayload for LayoutGuideAdjuster.BoundsAdjuster.Value(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutGuideAdjuster.BoundsAdjuster.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1D794A5B0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_2_10(), v9 == v10))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_8();
    if (v5)
    {
      sub_1D792E934(0, &qword_1EC9DA0B0);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 8);
      if (a1)
      {
LABEL_8:
        v13 = OUTLINED_FUNCTION_1_12();
        sub_1D794E15C(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v11 + 4, (a4 + 32), 8 * v4);
    goto LABEL_11;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_0_17();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D794A68C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1D792E934(0, &qword_1EE09C488);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D7929974((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D794A788(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1D794A68C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate18LayoutDecoderErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t sub_1D794A824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D794A860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D794A8B0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SizeToFitDimensionSizer(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SizeToFitDimensionSizer(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D794AA8C(uint64_t a1@<X0>, void *a2@<X2>, const __CFAttributedString *a3@<X3>, uint64_t a4@<X4>, const __CFAttributedString *a5@<X8>)
{
  v6 = v5;
  swift_beginAccess();
  v12 = *(a1 + 64);
  if (!v12)
  {
    v27 = swift_allocObject();
    *(v27 + 40) = &type metadata for AltFlexibleTextSizer;
    *(v27 + 48) = &off_1F52899A0;
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    *a5 = v27 | 0x2000000000000000;
    v28 = a3;

    return;
  }

  v13 = *(a1 + 80);
  if (v13 <= 0.0)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    if (qword_1EE09D478 == -1)
    {
LABEL_10:
      v30 = HIBYTE(word_1EE09D480);
      *(v29 + 48) = word_1EE09D480;
      *(v29 + 49) = v30;
      *a5 = v29;
      return;
    }

LABEL_34:
    swift_once();
    goto LABEL_10;
  }

  v76 = *(a1 + 56);
  v14 = *(a1 + 72);
  v15 = a2[3];
  if (v15)
  {
    v16 = a2[2];
    swift_beginAccess();
    v17 = a2[8];

    v18 = sub_1D7945884(v16, v15, v17);
    swift_endAccess();
    if (v18)
    {
      sub_1D79458D4(v18, __src);
      if (*(&__src[1] + 1))
      {
        sub_1D794B580();
        if (swift_dynamicCast())
        {
          v19 = __dst[0];
          v20 = v12;
          v21 = sub_1D7921F20();
          __dst[0] = v76;
          __dst[1] = v20;
          *&__dst[2] = v14;
          *&__dst[3] = v13;
          sub_1D794B150(v21, a1, __dst, __src);

          v23 = __src[2];
          v22 = *&__src[3];
          v24 = swift_allocObject();
          OUTLINED_FUNCTION_1_13();
          v25 = swift_allocObject();
          v26 = OUTLINED_FUNCTION_0_19(v25);
          *(v26 + 80) = v23;
          *(v26 + 96) = v22;
          *(v24 + 16) = v26 | 0x1000000000000000;
          *(v24 + 24) = v18;
          *a5 = v24 | 0x9000000000000000;
          return;
        }
      }

      else
      {

        sub_1D7925A20(__src);
      }
    }
  }

  else
  {
  }

  __dst[0] = v76;
  __dst[1] = v12;
  *&__dst[2] = v14;
  *&__dst[3] = v13;
  sub_1D794B150(a3, a1, __dst, __src);
  v31 = __src[0];
  v32 = __src[1];
  v74 = a5;
  v34 = __src[2];
  v33 = *&__src[3];
  v35 = v12;
  v36 = *(a4 + 16);
  if (!v36)
  {
    a5 = a3;

    v37 = MEMORY[0x1E69E7CC0];
LABEL_23:
    *&__src[0] = v37;
    sub_1D7926CFC(0, &qword_1EE09C568, &type metadata for AltTextSized, MEMORY[0x1E69E62F8]);
    sub_1D794B344();
    sub_1D794B3C0();
    v29 = __src;
    v50 = sub_1D796C360();
    v51 = 0;
    v52 = *(v37 + 16);
    for (i = 32; ; i += 96)
    {
      if (v52 == v51)
      {

        OUTLINED_FUNCTION_1_13();
        v60 = swift_allocObject();
        v61 = OUTLINED_FUNCTION_0_19(v60);
        *(v61 + 80) = v34;
        *(v61 + 96) = v33;
        v62 = v61 | 0x1000000000000000;
LABEL_32:
        *v74 = v62;
        return;
      }

      if (v51 >= *(v37 + 16))
      {
        break;
      }

      memcpy(__src, (v37 + i), sizeof(__src));
      v78[0] = *(&__src[1] + 1);
      v54 = *&__src[1];
      sub_1D794B414(__src, __dst);

      v56.n128_u64[0] = *(&v31 + 1);
      v55.n128_u64[0] = v31;
      v58.n128_u64[0] = *(&v32 + 1);
      v57.n128_u64[0] = v32;
      v59 = sub_1D795A214(a5, v50, v55, v56, v57, v58);
      if (v6)
      {
        sub_1D794B470(__src);

        return;
      }

      v29 = v59;

      if (v29)
      {

        v63 = *(&__src[4] + 1);
        v64 = __src[5];
        v65 = swift_allocObject();
        OUTLINED_FUNCTION_1_13();
        v66 = swift_allocObject();
        v67 = OUTLINED_FUNCTION_0_19(v66);
        *(v67 + 80) = v63;
        *(v67 + 88) = v64;
        *(v65 + 16) = v67 | 0x1000000000000000;
        sub_1D794B4C4();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D796EBB0;
        *(inited + 56) = sub_1D794B580();
        *(inited + 32) = v54;
        sub_1D79464B0();
        v69 = v63;
        v70 = v54;
        v71 = sub_1D796C240();
        sub_1D794B470(__src);

        *(v65 + 24) = v71;
        v62 = v65 | 0x9000000000000000;
        goto LABEL_32;
      }

      sub_1D794B470(__src);
      ++v51;
    }

    __break(1u);
    goto LABEL_34;
  }

  v75 = v35;
  v83 = MEMORY[0x1E69E7CC0];
  sub_1D794E17C(0, v36, 0);
  v37 = v83;
  v38 = a4;
  v39 = v36 - 1;
  for (j = (v38 + 64); ; j += 5)
  {
    v41 = *(j - 3);
    v43 = *(j - 2);
    v42 = *(j - 1);
    v44 = *j;
    v78[0] = *(j - 4);
    v78[1] = v41;
    v79 = v43;
    v80 = v42;
    v81 = v44;

    v45 = v44;

    v46 = v43;
    a5 = a3;
    sub_1D794B21C(v78, a1, v76, v75, __src, v14, v13);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v47 = v79;

    memcpy(__dst, __src, sizeof(__dst));
    v83 = v37;
    v49 = *(v37 + 16);
    v48 = *(v37 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_1D794E17C((v48 > 1), v49 + 1, 1);
      v37 = v83;
    }

    *(v37 + 16) = v49 + 1;
    memcpy((v37 + 96 * v49 + 32), __dst, 0x60uLL);
    if (!v39)
    {

      goto LABEL_23;
    }

    --v39;
    a3 = a5;
  }

  v72 = v79;
  v73 = v81;

  __break(1u);
}

id sub_1D794B150@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  [a1 boundingRectWithSize:33 options:0 context:{v6, v7}];
  width = v14.size.width;
  height = v14.size.height;
  if (trunc(CGRectGetHeight(v14)) <= trunc(v7))
  {
    swift_beginAccess();
    v10 = *(a2 + 664);
  }

  else
  {
    v10 = 0uLL;
    width = 0.0;
    height = 0.0;
  }

  *a4 = v10;
  *(a4 + 16) = width;
  *(a4 + 24) = height;
  *(a4 + 32) = a1;
  *(a4 + 40) = v6;
  *(a4 + 48) = v7;

  return a1;
}

id sub_1D794B21C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v19[0] = a3;
  v19[1] = a4;
  *&v19[2] = a6;
  *&v19[3] = a7;
  sub_1D794B150(v12, a2, v19, v20);
  v13 = v21;
  v14 = v20[0];
  v15 = v20[1];
  v16 = v22;
  *a5 = v9;
  *(a5 + 8) = v8;
  *(a5 + 16) = v10;
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  *(a5 + 40) = v14;
  *(a5 + 56) = v15;
  *(a5 + 72) = v13;
  *(a5 + 80) = v16;

  v17 = v12;

  return v10;
}

unint64_t sub_1D794B344()
{
  result = qword_1EE09C560;
  if (!qword_1EE09C560)
  {
    sub_1D7926CFC(255, &qword_1EE09C568, &type metadata for AltTextSized, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE09C560);
  }

  return result;
}

unint64_t sub_1D794B3C0()
{
  result = qword_1EE09DB08[0];
  if (!qword_1EE09DB08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE09DB08);
  }

  return result;
}

void sub_1D794B4C4()
{
  if (!qword_1EE09C478)
  {
    sub_1D794B51C();
    v0 = sub_1D796C940();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE09C478);
    }
  }
}

void sub_1D794B51C()
{
  if (!qword_1EE09D058)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE09D058);
    }
  }
}

unint64_t sub_1D794B580()
{
  result = qword_1EE09C508;
  if (!qword_1EE09C508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE09C508);
  }

  return result;
}

__C::CGRect __swiftcall CGRect.replacing(origin:)(CGPoint origin)
{
  v3 = v2;
  v4 = v1;
  result.origin.y = origin.y;
  result.origin.x = origin.x;
  result.size.height = v3;
  result.size.width = v4;
  return result;
}

double sub_1D794B604()
{
  OUTLINED_FUNCTION_4_6();
  MaxX = CGRectGetMaxX(v3);
  v4.origin.x = OUTLINED_FUNCTION_0();
  v1 = MaxX - CGRectGetMaxX(v4);
  v5.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetMinY(v5);
  v6.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetWidth(v6);
  v7.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetHeight(v7);
  return v1;
}

void sub_1D794B718(uint64_t a1, double (*a2)(double))
{
  OUTLINED_FUNCTION_7();
  v4 = v3;
  v6 = v5();
  v7 = OUTLINED_FUNCTION_0();
  v8 = a2(v7);
  *v4 = v6;
  v4[1] = v8;
}

__C::CGRect __swiftcall CGRect.verticalFlip(inBounds:)(__C::CGRect inBounds)
{
  OUTLINED_FUNCTION_4_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v21.origin.x = v9;
  v21.origin.y = v10;
  v21.size.width = v11;
  v21.size.height = v12;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = v8;
  v22.origin.y = v6;
  v22.size.width = v4;
  v22.size.height = v2;
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = OUTLINED_FUNCTION_0();
  v14 = MaxY - CGRectGetMaxY(v23);
  v24.origin.x = OUTLINED_FUNCTION_0();
  Width = CGRectGetWidth(v24);
  v25.origin.x = OUTLINED_FUNCTION_0();
  Height = CGRectGetHeight(v25);
  v17 = MinX;
  v18 = v14;
  v19 = Width;
  result.size.height = Height;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

void CGRect.replacing(minX:)(double a1, double a2)
{
  v2.origin.x = OUTLINED_FUNCTION_2_11(a1, a2);
  CGRectGetMinY(v2);
  OUTLINED_FUNCTION_1_14();
}

void static CGRect.| infix(_:_:)(uint64_t a1)
{
  switch(*(a1 + 32))
  {
    case 2:
      OUTLINED_FUNCTION_1_14();
      CGRectGetMinY(v2);
      break;
    case 3:
      OUTLINED_FUNCTION_1_14();
      CGRectGetMinX(v1);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_1_14();
}

uint64_t sub_1D794B8FC(uint64_t a1)
{
  *(a1 + 8) = sub_1D794B964(&qword_1EE09C4E0);
  result = sub_1D794B964(&qword_1EE09C4E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D794B964(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CGRectTransform(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CGRectTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D794BA30(uint64_t a1)
{
  if (*(a1 + 32) <= 4u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D794BA48(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t Node.init(kind:identifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  sub_1D796C170();
  OUTLINED_FUNCTION_1_15();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_3_9();
  *(v6 + 32) = *a1;
  if (!a3)
  {
    sub_1D796C160();
    a2 = sub_1D796C150();
    a3 = v14;
    (*(v11 + 8))(v5, v4);
  }

  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 1;
  return v6;
}

uint64_t sub_1D794BB70()
{
  if (*(v0 + 72))
  {
    return 0;
  }

  else
  {
    return *(v0 + 48);
  }
}

uint64_t sub_1D794BB84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a5;
  sub_1D7929258(a6, a7);
  v23 = v8;
  v9 = type metadata accessor for Sizing();
  sub_1D79228AC(v9, v21);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v10 = OUTLINED_FUNCTION_2_12();
  v12 = v11(v10);
  v13 = v12;
  if (!v7)
  {
    v19 = v12;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = OUTLINED_FUNCTION_2_12();
    v15(v14);
    v17 = v23;
    if ((SizerResult.isAmbiguous.getter() & 1) == 0)
    {

      *a1 = v17;
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v19;
    }

    v13 = v19;

    sub_1D7930964();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 6;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v13;
}

double sub_1D794BD90()
{
  OUTLINED_FUNCTION_7();
  if (*(v0 + 56))
  {
    v6 = (v0 + 72);
    v7 = (v0 + 80);
    v8 = (v0 + 88);
    OUTLINED_FUNCTION_0_20();
    v9();
    if (v1)
    {
      return v5;
    }

    OUTLINED_FUNCTION_4_7();
    v10 = (v0 + 64);
    goto LABEL_8;
  }

  v10 = (v0 + 64);
  v6 = (v0 + 72);
  v7 = (v0 + 80);
  v8 = (v0 + 88);
  OUTLINED_FUNCTION_0_20();
  if (!CGRectEqualToRect(v13, v14))
  {
    OUTLINED_FUNCTION_0_20();
    v11();
    if (!v1)
    {
      OUTLINED_FUNCTION_4_7();
LABEL_8:
      *v10 = v5;
      *v6 = v4;
      *v7 = v3;
      *v8 = v2;
    }
  }

  return v5;
}

uint64_t Node.__allocating_init(kind:identifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  Node.init(kind:identifier:)(a1, a2, a3);
  return v6;
}

uint64_t Node.__deallocating_deinit()
{
  Node.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 73, 7);
}

TeaTemplate::NodeKind_optional __swiftcall NodeKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NodeKind.rawValue.getter()
{
  result = 0x656D617266;
  switch(*v0)
  {
    case 1:
      result = 0x6563617073;
      break;
    case 2:
      result = 7892834;
      break;
    case 3:
      result = 0x79616C7265766FLL;
      break;
    case 4:
      result = 0x6465626D65;
      break;
    case 5:
      result = 1886351984;
      break;
    case 6:
      result = 0x63696D616E7964;
      break;
    case 7:
      result = 0x6B63617473;
      break;
    case 8:
      result = 0x68636145726F66;
      break;
    case 9:
      result = 0x65736C456669;
      break;
    case 0xA:
      result = 6778732;
      break;
    case 0xB:
      result = 0x74636570736E69;
      break;
    case 0xC:
      result = 0x74756F79616CLL;
      break;
    case 0xD:
      result = 0x786F4278656C66;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D794C1BC()
{
  result = qword_1EC9DA0B8[0];
  if (!qword_1EC9DA0B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9DA0B8);
  }

  return result;
}

uint64_t sub_1D794C234@<X0>(uint64_t *a1@<X8>)
{
  result = NodeKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NodeKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D794C45C(char a1)
{
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](a1 & 1);
  return sub_1D796CAF0();
}

uint64_t sub_1D794C4C0()
{
  sub_1D796CAC0();
  sub_1D794C434(v2, *v0);
  return sub_1D796CAF0();
}

_BYTE *sub_1D794C500(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D794C600(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v37 = a2;
  OUTLINED_FUNCTION_6_7();
  v7 = v6;
  sub_1D796C690();
  OUTLINED_FUNCTION_0_1();
  v34 = v9;
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v33 - v11;
  OUTLINED_FUNCTION_0_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_4_8();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v33 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v23 = *(v14 + 16);
  v23(v33 - v24, v3, v2);
  sub_1D793257C(0, qword_1EE09CFD0);
  v25 = swift_dynamicCast();
  v38 = v7;
  v36 = v23;
  if (v25)
  {
    v33[0] = v3;
    sub_1D7924DA0(v39, &v41);
    v27 = v42;
    v26 = v43;
    v28 = __swift_project_boxed_opaque_existential_1(&v41, v42);
    v33[1] = v33;
    MEMORY[0x1EEE9AC00](v28, v29);
    v30 = OUTLINED_FUNCTION_0();
    v31(v27, v26, v30);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v2);
      (*(v14 + 32))(v38, v12, v2);
      return OUTLINED_FUNCTION_7_7();
    }

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v2);
    (*(v34 + 8))(v12, v35);
    OUTLINED_FUNCTION_7_7();
    v7 = v38;
    v5 = v33[0];
    v23 = v36;
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_1D794CE18(v39);
  }

  type metadata accessor for LayoutDecoder();
  v23(v21, v5, v2);
  OUTLINED_FUNCTION_0();
  sub_1D7952CC4();
  sub_1D79327B0(v4);

  return (*(v14 + 32))(v7, v4, v2);
}

uint64_t LayoutAttributesType.flipRightToLeft(bounds:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_7();
  v7 = v6;
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v17 - v14;
  type metadata accessor for LayoutDecoder();
  v18 = *(v9 + 16);
  v18(v15, v3, v2);
  (*(a2 + 16))(v2, a2);
  v19.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetMaxX(v19);
  v20.origin.x = OUTLINED_FUNCTION_0_21();
  CGRectGetMaxX(v20);
  v21.origin.x = OUTLINED_FUNCTION_0_21();
  CGRectGetMinY(v21);
  v22.origin.x = OUTLINED_FUNCTION_0_21();
  CGRectGetWidth(v22);
  v23.origin.x = OUTLINED_FUNCTION_0_21();
  CGRectGetHeight(v23);
  sub_1D7952CC4();
  sub_1D79327B0(v4);

  return (*(v9 + 32))(v7, v4, v2);
}

uint64_t sub_1D794CE18(uint64_t a1)
{
  sub_1D794CEA0(0, &qword_1EC9DA140, qword_1EE09CFD0, &protocol descriptor for LayoutAttributesRepositioning, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D794CEA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D793257C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double static RectDimension.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EC9D9E58 != -1)
  {
    swift_once();
  }

  result = *&xmmword_1EC9DA148;
  *a1 = xmmword_1EC9DA148;
  return result;
}

float64x2_t RectDimension.integral.getter@<Q0>(float64x2_t *a1@<X8>)
{
  result = vrndpq_f64(*v1);
  *a1 = result;
  return result;
}

double RectDimension.union(_:)@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  if (*a1 >= *v2)
  {
    v3 = *v2;
  }

  else
  {
    v3 = *a1;
  }

  v4 = *a1 + a1[1];
  if (*v2 + v2[1] > v4)
  {
    v4 = *v2 + v2[1];
  }

  result = v4 - v3;
  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FlexBoxItemFlex(uint64_t a1, int a2)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D794D07C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D794D0BC(uint64_t result, int a2, int a3)
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

void *sub_1D794D11C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v11 = *a1;
  v12 = *(v6 + 24);
  v13 = *(v6 + 32);
  __swift_project_boxed_opaque_existential_1(v6, v12);
  result = (*(v13 + 16))(v25, a1, a2, a3, *(v11 + 80), *(v11 + 88), v12, v13);
  if (!v5)
  {
    v15 = v25[0];
    v17 = *(v6 + 48);
    v16 = *(v6 + 56);
    swift_beginAccess();
    v18 = sub_1D792D5D0(v17, v16, *(a3 + 56));
    swift_endAccess();
    if (v18)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v15;
      v20 = *(v6 + 40);
      result = swift_allocObject();
      *(result + 16) = v20;
      result[3] = v18;
      *(v19 + 24) = sub_1D794D514;
      *(v19 + 32) = result;
      v21 = v19 | 0x6000000000000000;
LABEL_4:
      *a4 = v21;
      return result;
    }

    swift_beginAccess();
    if (!a1[8])
    {
      v23 = swift_allocObject();
      *(v23 + 40) = &type metadata for ResizeConstrainingSizer;
      *(v23 + 48) = &off_1F5289F58;
      v24 = swift_allocObject();
      *(v23 + 16) = v24;
      sub_1D794D4DC(v6, v24 + 16);

      v21 = v23 | 0x2000000000000000;
      goto LABEL_4;
    }

    sub_1D7930964();
    swift_allocError();
    *v22 = v17;
    *(v22 + 8) = v16;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 2;
    swift_willThrow();
  }

  return result;
}

void sub_1D794D358(char a1@<W1>, void *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, CGFloat Width@<D2>, CGFloat Height@<D3>)
{
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  if (a1)
  {
    Width = CGRectGetWidth(*&v12);
  }

  else
  {
    Height = CGRectGetHeight(*&v12);
  }

  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = Width;
  *(a3 + 24) = Height;
  *(a3 + 32) = 1;
}

uint64_t sub_1D794D3E0()
{
  BYTE8(v2) = 0;
  sub_1D796C780();
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0xD000000000000016, 0x80000001D7976700);
  *&v2 = *(v0 + 40);
  sub_1D796C860();
  MEMORY[0x1DA704750](0x203A6F74202CLL, 0xE600000000000000);
  MEMORY[0x1DA704750](*(v0 + 48), *(v0 + 56));
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return *(&v2 + 1);
}

uint64_t sub_1D794D530()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x7265766E69202B20, 0xE900000000000074);
  return 0;
}

uint64_t sub_1D794D5AC()
{
  v0 = sub_1D796C510();
  MEMORY[0x1DA704750](v0);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0x656C626978656C66;
}

_BYTE *storeEnumTagSinglePayload for BoolCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t CursorFramePass.description.getter()
{
  if (!v0[1])
  {
    return 7631665;
  }

  MEMORY[0x1DA704750](*v0);
  return 0x202C646E32;
}

uint64_t sub_1D794D778(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D794D7C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1D794D81C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D794D84C()
{
  MEMORY[0x1DA704750](0x286F69746172, 0xE600000000000000);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t getEnumTagSinglePayload for Ratio(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
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

uint64_t storeEnumTagSinglePayload for Ratio(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

double DimensionCursor.origin.getter()
{
  v1 = (*(v0 + 8) + 400);
  if (*v0)
  {
    memcpy(__dst, v1, sizeof(__dst));
    if (sub_1D792C4B8(__dst) != 1)
    {
      return *&__dst[9];
    }

    return 0.0;
  }

  memcpy(__dst, v1, sizeof(__dst));
  if (sub_1D792C4B8(__dst) == 1)
  {
    return 0.0;
  }

  return *&__dst[8];
}

double DimensionCursor.bounds.getter()
{
  v1 = *(v0 + 8);
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  if (*v0)
  {
    return CGRectGetHeight(*&v2);
  }

  else
  {
    return CGRectGetWidth(*&v2);
  }
}

uint64_t sub_1D794DA34()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D794DA70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D794DAB0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D794DB10@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  memcpy(__dst, (v3 + 128), 0x109uLL);
  memcpy(a1, (v3 + 128), 0x109uLL);
  return sub_1D7923AE4(__dst, &v5);
}

uint64_t sub_1D794DC34(uint64_t a1, uint64_t a2, char a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t (*a11)(void))
{
  v17 = *a4;
  type metadata accessor for Overlay();
  v23 = v17;
  v22 = a10;
  memset(v20, 0, sizeof(v20));
  v21 = 1;
  sub_1D7922754(v17);

  sub_1D7925620(&v23, &v22, a1, a2, a5, a6, a7, a3, v20);
  v18 = a11();

  return v18;
}

double sub_1D794DD7C(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t *a7)
{
  v13 = sub_1D792D620(*a7);
  if (!v7)
  {
    v14 = v13;
    v56.origin.x = a2;
    v56.origin.y = a3;
    v56.size.width = a4;
    v56.size.height = a5;
    if (CGRectEqualToRect(v56, *(v13 + 16)))
    {
    }

    else
    {
      v55 = type metadata accessor for Cursor();
      v16 = v14[2];
      v15 = v14[3];
      v17 = *(a1 + 160);
      v35 = *(a1 + 144);
      v36 = v17;
      v18 = *(a1 + 192);
      v37 = *(a1 + 176);
      v38 = v18;
      v40 = *(a1 + 216);
      v41 = *(a1 + 232);
      v19 = *(a1 + 296);
      v46 = *(a1 + 280);
      v20 = v14[5];
      v21 = *(a1 + 208);
      v22 = *(a1 + 264);
      v23 = *(a1 + 272);
      v24 = *(a1 + 312);
      v34[0] = v14[4];
      v34[1] = v20;
      v39 = v21;
      v42 = 0;
      v43 = 0;
      v44 = v22;
      v45 = v23;
      v47 = v19;
      v48 = v24;
      v49 = vdupq_n_s64(0xF000000000000007);
      v50 = v49;
      v51 = v49;
      v52 = v49;
      v53 = 0;
      v54 = -1;
      memcpy(__dst, (a1 + 400), sizeof(__dst));
      v32 = *(a1 + 48);
      v31 = 0x8000000000000000;
      v25 = *(a1 + 616);
      v26 = v21;
      v27 = v23;
      sub_1D792E84C(v30);
      v29[0] = v30[0];
      v29[1] = v30[1];
      sub_1D792B65C(v34, __dst, &v32, v16, v15, 0, v29, &v31, v25);
      a2 = sub_1D794BD90();
    }
  }

  return a2;
}

uint64_t sub_1D794DFD8()
{
}

uint64_t sub_1D794E03C()
{
  v1 = sub_1D794E0A4(*(v0 + 40), *(v0 + 48));
  MEMORY[0x1DA704750](v1);

  return 0x656E694C74786574;
}

uint64_t sub_1D794E0A4(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 678977901;
  }

  else
  {
    v2 = 678324589;
  }

  v5 = v2;
  v3 = sub_1D796C930();
  MEMORY[0x1DA704750](v3);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return v5;
}

char *sub_1D794E138(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

char *sub_1D794E15C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

char *sub_1D794E17C(char *a1, int64_t a2, char a3)
{
  result = sub_1D794E19C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D794E19C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D792FD4C(0, &qword_1EE09C490, &type metadata for AltTextSized, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[96 * v8] <= v12)
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D794E2DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D794E330(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, char *), uint64_t a5)
{
  v37 = a5;
  v38 = a4;
  OUTLINED_FUNCTION_5_7(a1, a2);
  v35 = v8;
  v36 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_0_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17, v18);
  v39 = OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34 - v21;
  v23 = type metadata accessor for Cursor();
  v24 = OUTLINED_FUNCTION_3_10(v23);
  (*(v16 + 16))(v5, v44, v14);
  v25 = v36;
  swift_dynamicCast();
  sub_1D7942B34(v24, v12, v25, v22);

  v26 = v40;
  v38(v41, v22);
  if (v26)
  {
    v27 = OUTLINED_FUNCTION_1_18();
    v28(v27);
  }

  else
  {
    v29 = v42;
    v30 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v25 = (*(v30 + 8))(v6, v44, v25, v14, *(v35 + 88), v29, v30);
    v32 = OUTLINED_FUNCTION_1_18();
    v33(v32);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  return v25;
}

uint64_t sub_1D794E5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v35 = a5;
  v32[1] = a6;
  v33 = a3;
  OUTLINED_FUNCTION_5_7(a1, a2);
  v32[0] = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_0_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17, v18);
  v34 = OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_0_1();
  v20 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v32 - v23;
  v25 = type metadata accessor for Cursor();
  v26 = OUTLINED_FUNCTION_3_10(v25);
  (*(v16 + 16))(v6, v41, v14);
  v27 = v33;
  swift_dynamicCast();
  sub_1D7942B34(v26, v12, v27, v24);

  v28 = v37;
  v36(v38, v24);
  if (v28)
  {
    return (*(v20 + 8))(v24, v34);
  }

  v30 = v39;
  v31 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v31 + 16))(v7, v41, v27, v14, *(v32[0] + 88), v30, v31);
  (*(v20 + 8))(v24, v34);
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D794E918(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D794E958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D794E9B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *a1;
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  __swift_project_boxed_opaque_existential_1(v5, v10);
  result = (*(v11 + 8))(a1, a2, a3, *(v9 + 80), *(v9 + 88), v10, v11);
  v13 = result;
  if (!v4)
  {
    sub_1D794EE3C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D796EBB0;
    *(inited + 32) = *(v5 + 40);
    *(inited + 48) = 0;
    return sub_1D792D1AC(inited, v13);
  }

  return result;
}

void *sub_1D794EAB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v11 = *a1;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  result = (*(v13 + 16))(v21, a1, a2, a3, *(v11 + 80), *(v11 + 88), v12, v13);
  if (!v5)
  {
    v15 = *&v21[0];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = v6[5];
    v18 = v6[6];
    sub_1D794EDE0(v6, v21);
    v19 = swift_allocObject();
    v20 = v21[1];
    *(v19 + 16) = v21[0];
    *(v19 + 32) = v20;
    *(v19 + 48) = v21[2];
    *(v19 + 64) = v22;
    *(v19 + 72) = v17;
    *(v19 + 80) = v18;
    *(v19 + 88) = a1;
    *(v16 + 24) = sub_1D794EE18;
    *(v16 + 32) = v19;
    *a4 = v16 | 0x7000000000000000;
  }

  return result;
}

double sub_1D794EC24(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + 616) == 1)
  {
    v11 = -a5;
    if (*(a7 + 48))
    {
      v11 = a5;
    }

    v12 = v11 + a1;
  }

  else
  {
    v12 = a1 + a5;
  }

  v13 = a1;
  CGRectGetWidth(*(&a2 - 1));
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetHeight(v15);
  return v12;
}

uint64_t sub_1D794ED18()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x657366666F202B20, 0xEA00000000002874);
  type metadata accessor for CGPoint(0);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

void sub_1D794EE3C()
{
  if (!qword_1EE09C498)
  {
    v0 = sub_1D796C940();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE09C498);
    }
  }
}

TeaTemplate::LayoutContentScale_optional __swiftcall LayoutContentScale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D796C910();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D794F008()
{
  result = qword_1EE09C410;
  if (!qword_1EE09C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE09C410);
  }

  return result;
}

double *static SizerResult.frame(_:)@<X0>(double **a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = swift_allocObject();
  v11 = result;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  if (qword_1EE09D478 != -1)
  {
    OUTLINED_FUNCTION_5_8();
    result = swift_once();
  }

  v12 = HIBYTE(word_1EE09D480);
  *(v11 + 48) = word_1EE09D480;
  *(v11 + 49) = v12;
  *a1 = v11;
  return result;
}

uint64_t sub_1D794F174(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1D794F64C(a1, sub_1D794F640, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1D794F204(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x77 && *(a1 + 8))
    {
      v2 = *a1 + 118;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x76)
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

uint64_t sub_1D794F24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SizerResult.ProcessResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SizerResult.ProcessResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D794F358(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D794F370(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D794F39C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D794F9BC(0, &qword_1EE09C408, MEMORY[0x1E69E6EC8]);
  result = sub_1D796C8E0();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (a2)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        sub_1D7963888(0, (v27 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = (*(v5 + 56) + 32 * (v15 | (v8 << 6)));
    if (a2)
    {
      sub_1D79326E0(v18, v28);
    }

    else
    {
      sub_1D79326F0(v18, v28);
    }

    sub_1D796CAC0();
    sub_1D796C320();
    result = sub_1D796CAF0();
    v19 = -1 << *(v7 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_1D79326E0(v28, (*(v7 + 56) + 32 * v22));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
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
    v26 = *(v14 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1D794F64C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1D794F85C(a1, a2, a3, v31);
  v27 = v31[0];
  v28 = v31[1];
  v29 = v31[2];
  v30 = v32;

  while (1)
  {
    sub_1D794F898(&v25);
    if (!v26)
    {
      sub_1D794F9B4();
    }

    sub_1D79326E0(&v25, v24);
    v7 = *a5;
    v9 = sub_1D7945E90();
    v10 = *(v7 + 16);
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (*(v7 + 24) >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D794F9BC(0, &qword_1EC9DA158, MEMORY[0x1E69E6DC8]);
        sub_1D796C890();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1D794F39C(v12, a4 & 1);
      v14 = sub_1D7945E90();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1D79326F0(*(*a5 + 56) + 32 * v9, v23);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v17 = (*(v16 + 56) + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1D79326E0(v23, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    sub_1D79326E0(v24, (*(v18 + 56) + 32 * v9));
    v19 = *(v18 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_17;
    }

    *(v18 + 16) = v21;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1D796CA70();
  __break(1u);
  return result;
}

uint64_t sub_1D794F85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

_OWORD *sub_1D794F898@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    sub_1D79326F0(*(v3 + 56) + ((v8 << 11) | (32 * __clz(__rbit64(v7)))), &v13);
    result = sub_1D79326E0(&v13, &v16);
    v11 = *(&v17 + 1);
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v11)
    {
      v12 = v1[5];
      v13 = v16;
      v14 = v17;
      v15 = v11;
      v12(&v13);
      return sub_1D794FA2C(&v13);
    }

    else
    {
      *a1 = 0u;
      a1[1] = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v11 = 0;
        v9 = 0;
        v16 = 0u;
        v17 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D794F9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D79464B0();
    v7 = a3(a1, &type metadata for SizerResultMetadataKey, MEMORY[0x1E69E7CA0] + 8, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D794FA2C(uint64_t a1)
{
  sub_1D794FA88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D794FA88()
{
  if (!qword_1EC9DA160)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9DA160);
    }
  }
}

uint64_t Optional<A>.flipRightToLeft(bounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = *(a1 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v19);
  v24 = 1;
  if (__swift_getEnumTagSinglePayload(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v21, v13);
    (*(*(a2 + 24) + 8))(v13, a4, a5, a6, a7);
    (*(v14 + 8))(v16, v13);
    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v24, 1, v13);
}

uint64_t sub_1D794FCEC(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t FastLayoutDecoderError.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

unint64_t sub_1D794FE40()
{
  result = qword_1EC9DA168[0];
  if (!qword_1EC9DA168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9DA168);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FastLayoutDecoderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 LayoutGuideAdjuster.init(layoutMarginAdjuster:safeAreaInsetAdjuster:layoutBoundsAdjuster:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v6;
  result = *a2;
  v8 = *(a2 + 16);
  *(a4 + 32) = *a2;
  *(a4 + 48) = v8;
  *(a4 + 64) = v4;
  *(a4 + 72) = v5;
  return result;
}

uint64_t static LayoutGuideAdjuster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 64);
  v17 = *(a1 + 72);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v18 = *(a1 + 48);
  v19 = *(a2 + 40);
  v20 = *(a1 + 56);
  v21 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *a2;
  v13 = *(a2 + 64);
  v16 = *(a2 + 72);
  v27 = v2;
  v28 = v3;
  v29 = v5;
  v30 = v4;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  sub_1D793BBC4(v2);
  sub_1D793BBC4(v3);
  sub_1D793BBC4(v5);
  sub_1D793BBC4(v4);
  sub_1D793BBC4(v23);
  sub_1D793BBC4(v9);
  sub_1D793BBC4(v10);
  sub_1D793BBC4(v11);
  LOBYTE(v4) = static LayoutEdgeInsetAdjuster.== infix(_:_:)(&v27, &v23);
  OUTLINED_FUNCTION_0_26(v23);
  OUTLINED_FUNCTION_0_26(v27);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v27 = v7;
  v28 = v6;
  v29 = v18;
  v30 = v20;
  v23 = v12;
  v24 = v19;
  v25 = v21;
  v26 = v22;
  sub_1D793BBC4(v7);
  sub_1D793BBC4(v6);
  sub_1D793BBC4(v18);
  sub_1D793BBC4(v20);
  sub_1D793BBC4(v12);
  sub_1D793BBC4(v19);
  sub_1D793BBC4(v21);
  sub_1D793BBC4(v22);
  v14 = static LayoutEdgeInsetAdjuster.== infix(_:_:)(&v27, &v23);
  OUTLINED_FUNCTION_0_26(v23);
  OUTLINED_FUNCTION_0_26(v27);
  if (!v14)
  {
    return 0;
  }

  if (v17 == 255)
  {
    if (v16 == 255)
    {
      return 1;
    }
  }

  else if (v16 != 255)
  {
    if (v17)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    if (v8 == v13)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t LayoutGuideAdjuster.layoutMarginAdjuster.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_3_12(*v1, a1);

  return sub_1D793BBC4(v2);
}

unint64_t LayoutGuideAdjuster.safeAreaInsetAdjuster.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_3_12(*(v1 + 32), a1);

  return sub_1D793BBC4(v2);
}

uint64_t static LayoutGuideAdjuster.BoundsAdjuster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      return 1;
    }
  }

  else if (v3 != 255)
  {
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }

    if (*a1 == *a2)
    {
      return 1;
    }
  }

  return 0;
}

BOOL static LayoutGuideAdjuster.BoundsAdjuster.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D79502C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 73))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7950304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LayoutGuideAdjuster.BoundsAdjuster(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LayoutGuideAdjuster.BoundsAdjuster(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

void sub_1D7950444(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  v6 = v5;
  v10 = a2[3];
  if (v10)
  {
    v12 = a2[2];
    swift_beginAccess();
    v13 = sub_1D7945884(v12, v10, a2[8]);
    swift_endAccess();
    if (v13)
    {
      sub_1D79458D4(v13, __src);
      if (*(&__src[1] + 1))
      {
        sub_1D794B580();
        if (swift_dynamicCast())
        {
          v14 = sub_1D7921F20();
          sub_1D7950994(v14, a1, __src);

          v16 = __src[2];
          v15 = *&__src[3];
          v17 = swift_allocObject();
          OUTLINED_FUNCTION_1_13();
          v18 = swift_allocObject();
          v19 = OUTLINED_FUNCTION_0_19(v18);
          *(v19 + 80) = v16;
          *(v19 + 96) = v15;
          *(v17 + 16) = v19 | 0x1000000000000000;
          *(v17 + 24) = v13;
          *a5 = v17 | 0x9000000000000000;
          return;
        }
      }

      else
      {

        sub_1D7925A20(__src);
      }
    }
  }

  v61 = a5;
  sub_1D7950994(a3, a1, __src);
  v20 = __src[0];
  v21 = __src[1];
  v23 = __src[2];
  v22 = *&__src[3];
  v24 = *(a4 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1D794E17C(0, v24, 0);
    v25 = v69;
    v26 = (a4 + 64);
    while (1)
    {
      v27 = *(v26 - 3);
      v29 = *(v26 - 2);
      v28 = *(v26 - 1);
      v30 = *v26;
      v64[0] = *(v26 - 4);
      v64[1] = v27;
      v65 = v29;
      v66 = v28;
      v67 = v30;

      v31 = v30;

      v32 = v29;
      sub_1D7950A44(v64, a1, __src);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v33 = v65;

      memcpy(__dst, __src, sizeof(__dst));
      v69 = v25;
      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1D794E17C((v34 > 1), v35 + 1, 1);
        v25 = v69;
      }

      *(v25 + 16) = v35 + 1;
      memcpy((v25 + 96 * v35 + 32), __dst, 0x60uLL);
      v26 += 5;
      if (!--v24)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *&__src[0] = v25;
    sub_1D7926CFC(0, &qword_1EE09C568, &type metadata for AltTextSized, MEMORY[0x1E69E62F8]);
    sub_1D794B344();
    sub_1D794B3C0();
    v36 = sub_1D796C360();
    v37 = 0;
    v38 = *(v25 + 16);
    for (i = 32; ; i += 96)
    {
      if (v38 == v37)
      {

        OUTLINED_FUNCTION_1_13();
        v47 = swift_allocObject();
        v48 = OUTLINED_FUNCTION_0_19(v47);
        *(v48 + 80) = v23;
        *(v48 + 96) = v22;
        v49 = v48 | 0x1000000000000000;
LABEL_23:
        *v61 = v49;
        return;
      }

      if (v37 >= *(v25 + 16))
      {
        break;
      }

      memcpy(__src, (v25 + i), sizeof(__src));
      v64[0] = *(&__src[1] + 1);
      v40 = *&__src[1];
      sub_1D794B414(__src, __dst);

      v42.n128_u64[0] = *(&v20 + 1);
      v41.n128_u64[0] = v20;
      v44.n128_u64[0] = *(&v21 + 1);
      v43.n128_u64[0] = v21;
      v45 = sub_1D795A214(a3, v36, v41, v42, v43, v44);
      if (v6)
      {
        sub_1D794B470(__src);

        return;
      }

      v46 = v45;

      if (v46)
      {

        v50 = *(&__src[4] + 1);
        v51 = __src[5];
        v52 = swift_allocObject();
        OUTLINED_FUNCTION_1_13();
        v53 = swift_allocObject();
        v54 = OUTLINED_FUNCTION_0_19(v53);
        *(v54 + 80) = v50;
        *(v54 + 88) = v51;
        *(v52 + 16) = v54 | 0x1000000000000000;
        sub_1D794B4C4();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D796EBB0;
        *(inited + 56) = sub_1D794B580();
        *(inited + 32) = v40;
        sub_1D79464B0();
        v56 = v50;
        v57 = v40;
        v58 = sub_1D796C240();
        sub_1D794B470(__src);

        *(v52 + 24) = v58;
        v49 = v52 | 0x9000000000000000;
        goto LABEL_23;
      }

      sub_1D794B470(__src);
      ++v37;
    }

    __break(1u);
  }

  v59 = v65;
  v60 = v67;

  __break(1u);
}

id sub_1D7950994@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Cursor.remainingBounds.getter();
  [a1 boundingRectWithSize:1 options:0 context:{v5, v6}];
  v8 = v7;
  v10 = v9;
  swift_beginAccess();
  v11 = *(a2 + 664);
  v12 = *(a2 + 672);
  Cursor.remainingBounds.getter();
  *a3 = v11;
  a3[1] = v12;
  a3[2] = v8;
  a3[3] = v10;
  a3[4] = a1;
  a3[5] = v13;
  a3[6] = v14;

  return a1;
}

id sub_1D7950A44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_1D7950994(v8, a2, v15);
  v9 = v16;
  v10 = v15[0];
  v11 = v15[1];
  v12 = v17;
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v10;
  *(a3 + 56) = v11;
  *(a3 + 72) = v9;
  *(a3 + 80) = v12;

  v13 = v8;

  return v6;
}

void *sub_1D7950B48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = v4;
  v11 = *a1;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  result = (*(v13 + 16))(v19, a1, a2, a3, *(v11 + 80), *(v11 + 88), v12, v13);
  if (!v5)
  {
    v15 = *&v19[0];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_1D7950D90(v6, v19);
    v17 = swift_allocObject();
    v18 = v19[1];
    *(v17 + 16) = v19[0];
    *(v17 + 32) = v18;
    *(v17 + 48) = v19[2];
    *(v17 + 64) = v20;
    *(v17 + 72) = a1;
    *(v16 + 24) = sub_1D7950DC8;
    *(v16 + 32) = v17;
    *a4 = v16 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1D7950D10()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x656D6F6567202B20, 0xEB00000000797274);
  return 0;
}

uint64_t CursorResizing.isNestedResizing.getter()
{
  v1 = *v0 >> 62;
  if (v1)
  {
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_0_27();
      v2 = CursorResizing.isNestedResizing.getter();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t CursorResizing.identifier.getter()
{
  v1 = *v0 >> 62;
  if (v1)
  {
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_0_27();
      return CursorResizing.identifier.getter();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = *(*v0 + 16);
  }

  return v2;
}

uint64_t CursorResizing.description.getter()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    v5 = 539782767;
    MEMORY[0x1DA704750](*(*v0 + 16), *(*v0 + 24));
    return v5;
  }

  if (v1 == 1)
  {
    v5 = 0x202C6465626D65;

    v3 = CursorResizing.description.getter(v2);
    MEMORY[0x1DA704750](v3);

    return v5;
  }

  return 6710895;
}

unint64_t get_enum_tag_for_layout_string_11TeaTemplate14CursorResizingO(uint64_t *a1)
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

uint64_t sub_1D7950FA0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D7950FF4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t *sub_1D7951044(unint64_t *result, uint64_t a2)
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

uint64_t sub_1D795107C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  swift_beginAccess();
  if (*(a1 + 64))
  {
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    if (*(a1 + 48))
    {
      OUTLINED_FUNCTION_3_13();
      v9 = *(a1 + 664);
      v10 = *(a1 + 672);
      OUTLINED_FUNCTION_4_2();
      v11 = swift_allocObject();
      v12 = swift_allocObject();
      v12[2] = v9;
      v12[3] = v10;
      v12[4] = v8;
      v12[5] = v7;
      if (qword_1EE09D478 != -1)
      {
        OUTLINED_FUNCTION_0_22();
      }

      OUTLINED_FUNCTION_1_21(&word_1EE09D480);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D796EBB0;
      *(v13 + 32) = v7;
      *(v13 + 40) = 1;
      *(v11 + 24) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      OUTLINED_FUNCTION_3_13();
      v17 = *(a1 + 664);
      v18 = *(a1 + 672);
      OUTLINED_FUNCTION_4_2();
      v11 = swift_allocObject();
      v19 = swift_allocObject();
      v19[2] = v17;
      v19[3] = v18;
      v19[4] = v8;
      v19[5] = v7;
      if (qword_1EE09D478 != -1)
      {
        OUTLINED_FUNCTION_0_22();
      }

      OUTLINED_FUNCTION_1_21(&word_1EE09D480);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D796EBB0;
      *(v20 + 32) = v8;
      *(v20 + 40) = 1;
      *(v11 + 24) = v20;
      v13 = MEMORY[0x1E69E7CC0];
    }

    *(v11 + 32) = v13;
    OUTLINED_FUNCTION_4_2();
    v14 = swift_allocObject();
    *(v14 + 16) = v11 | 0x4000000000000000;
    *(v14 + 24) = v6;
    v15 = (v14 + 32);
    v16 = 0x4000000000000000;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 40) = &type metadata for FlexibleMaxSizer;
    *(v14 + 48) = &off_1F528B0D8;
    *(v14 + 16) = v6;
    v15 = (v14 + 24);
    v16 = 0x2000000000000000;
  }

  *v15 = v5;
  *a2 = v16 | v14;
}

uint64_t sub_1D79512C8()
{
  sub_1D796C780();
  MEMORY[0x1DA704750](0x69617274736E6F63, 0xED000028676E696ELL);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t Inspect.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  v4 = 11;
  return Node.init(kind:identifier:)(&v4, 0, 0);
}

unint64_t sub_1D795140C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v19 = a3;
  v6 = *(*v3 + 168);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Inspect.State();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v18 - v14;
  (*(v7 + 16))(v9, a2, v6, v13);
  sub_1D79515E4(a1, v9, *v19, v15);
  v16 = v3[10];

  v16(v15);
  (*(v11 + 8))(v15, v10);
  return 0x8000000000000000;
}

uint64_t sub_1D79515E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  *a4 = a1;
  v8 = *(v7 + 80);
  v9 = type metadata accessor for Inspect.State();
  result = (*(*(v8 - 8) + 32))(&a4[*(v9 + 36)], a2, v8);
  *&a4[*(v9 + 40)] = a3;
  return result;
}

uint64_t Inspect.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Inspect.__deallocating_deinit()
{
  v0 = Inspect.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1D795180C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D7951954(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D7951B48()
{
  MEMORY[0x1DA704750](0x286465786966, 0xE600000000000000);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7951C04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7951C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7951CA0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_28();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D7951D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  type metadata accessor for StackLayer();
  v10 = *(a3 + 16);
  v11 = *a3;
  v8 = sub_1D796C200();
  v3[11] = a2;
  v3[12] = v8;
  v3[10] = a1;
  v14 = 7;
  v12[1] = v10;
  v12[0] = v11;
  v13 = v7;

  return sub_1D79202C0(&v14, a1, a2, v12);
}

uint64_t sub_1D7951E18()
{
  swift_beginAccess();
  type metadata accessor for StackLayer();
  sub_1D796C4F0();

  sub_1D796C4C0();
  return swift_endAccess();
}

uint64_t sub_1D7951EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7951CCC();
  type metadata accessor for StackLayer();
  OUTLINED_FUNCTION_3_15();
  v5 = sub_1D796C430();
  v14 = v5;
  OUTLINED_FUNCTION_3_15();
  if (v5 != sub_1D796C4A0())
  {
    do
    {
      OUTLINED_FUNCTION_3_15();
      v7 = sub_1D796C490();
      sub_1D796C450();
      if (v7)
      {
        v8 = *(v4 + 32 + 8 * v5);
      }

      else
      {
        v8 = sub_1D796C790();
      }

      sub_1D796C4E0();
      v9 = *(v8 + 16);
      type metadata accessor for Node();

      v10 = sub_1D796C430();
      for (i = v10; i != sub_1D796C4A0(); v10 = i)
      {
        v11 = sub_1D796C490();
        sub_1D796C450();
        if (v11)
        {
          v12 = *(v9 + 32 + 8 * v10);
        }

        else
        {
          v12 = sub_1D796C790();
        }

        sub_1D796C4E0();
        (*(*v12 + 144))(a1, a2);
      }

      OUTLINED_FUNCTION_3_15();
      v5 = v14;
    }

    while (v14 != sub_1D796C4A0());
  }
}

unint64_t sub_1D7952124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *&v9 = Cursor.remainingBounds.getter();
  sub_1D79522FC(a1, a2, a3, &v13, v9, v10);
  if (!v4)
  {
    if (v14)
    {
      return 0x8000000000000000;
    }

    else
    {
      a3 = swift_allocObject();
      type metadata accessor for NodeRepositioning();
      v11 = sub_1D792EC4C();
      *(a3 + 16) = sub_1D7928004(v5, v11 & 1, sub_1D7952908, v5);
      swift_retain_n();
    }
  }

  return a3;
}

double sub_1D7952274(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = a8;
  sub_1D79522FC(a1, a2, a3, &v12, *&a8, *&a9);
  if (!v9 && (v13 & 1) == 0)
  {
    return v12;
  }

  return v10;
}

void sub_1D79522FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<D0>, uint64_t a6@<D1>)
{
  v44 = (a1 + 280);
  v15 = sub_1D7951CCC();
  v47 = v6;
  type metadata accessor for StackLayer();
  v16 = sub_1D796C430();
  v75 = v16;
  v40 = v15 + 32;
  v42 = a6;
  v43 = a5;
  v17 = 1;
  v18 = 0.0;
  v41 = vdupq_n_s64(0xF000000000000007);
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  while (v16 != sub_1D796C4A0())
  {
    v76 = v17;
    v22 = sub_1D796C490();
    sub_1D796C450();
    if (v22)
    {
      v23 = *(v40 + 8 * v16);
    }

    else
    {
      v23 = sub_1D796C790();
    }

    sub_1D796C4E0();
    type metadata accessor for Cursor();
    Cursor.remainingBounds.getter();
    v24 = *(a1 + 208);
    v25 = *(a1 + 264);
    v26 = *(a1 + 272);
    v27 = *(a1 + 312);
    v52[0] = v28;
    v52[1] = v29;
    v30 = *(a1 + 160);
    v53 = *(a1 + 144);
    v54 = v30;
    v31 = *(a1 + 192);
    v55 = *(a1 + 176);
    v56 = v31;
    v58 = *(a1 + 216);
    v59 = *(a1 + 232);
    v60 = 0;
    v61 = 0;
    v57 = v24;
    v62 = v25;
    v63 = v26;
    v32 = v44[1];
    v64 = *v44;
    v65 = v32;
    v66 = v27;
    *v67 = *v74;
    *&v67[3] = *&v74[3];
    v68 = v41;
    v69 = v41;
    v70 = v41;
    v71 = v41;
    v72 = 0;
    v73 = -1;
    memcpy(__dst, (a1 + 400), sizeof(__dst));
    v50 = *(a1 + 48);
    v33 = qword_1EE09D488;
    v34 = v24;
    v35 = v26;
    if (v33 != -1)
    {
      swift_once();
    }

    v49 = word_1EE09D492;
    v48 = *(a1 + 88);
    v36 = sub_1D792B65C(v52, __dst, &v50, v43, v42, 0, &v49, &v48, *(a1 + 616));
    v37 = *(v23 + 16);

    sub_1D792B794(v47, v37, v36, a2, a3);
    if (v7)
    {

      return;
    }

    Cursor.absoluteFrame.getter();
    OUTLINED_FUNCTION_2_18();
    if ((v76 & 1) == 0)
    {
      v77.origin.x = OUTLINED_FUNCTION_2_0();
      v78.origin.x = v8;
      v78.origin.y = v9;
      v78.size.width = v10;
      v78.size.height = v11;
      CGRectUnion(v77, v78);
      OUTLINED_FUNCTION_2_18();
    }

    v17 = 0;
    v16 = v75;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
  }

  if ((v17 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_0();
    sub_1D7927B8C(v38);
  }

  *a4 = v18;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = v17 & 1;
}

uint64_t sub_1D795271C()
{
}

uint64_t Stack.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Stack.__deallocating_deinit()
{
  v0 = Stack.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1D79528C4()
{
  sub_1D79528A4();
  v0 = OUTLINED_FUNCTION_0_28();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D7952924(char *a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, char a4@<W5>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  switch(a4)
  {
    case 1:
      v19 = *&a2;
      v20 = OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_0_29();
      DimensionCursor.position.getter();
      OUTLINED_FUNCTION_1_22();
      v21 = sub_1D794DAEC();
      goto LABEL_6;
    case 2:
      v13 = OUTLINED_FUNCTION_2_19();
      v24 = v6;
      v25 = v7;
      type metadata accessor for DimensionCursor();
      v14 = DimensionCursor.position.getter();
      sub_1D794DB10(v22);
      v15 = v23;
      sub_1D7952C94(a2, a3, 2);
      v16 = v15;
      sub_1D79243AC(v22);
      [a2 scaledValueForValue:v16 compatibleWithTraitCollection:*&a3];
      v18 = v17;
      sub_1D7952CA8(a2, a3, 2);

      *(v13 + 16) = v14;
      *(v13 + 24) = v18;
      *(v13 + 32) = 1;
      *a5 = v13;
      break;
    case 3:
      v19 = *&a2;
      v20 = OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_0_29();
      DimensionCursor.position.getter();
      OUTLINED_FUNCTION_1_22();
      v21 = DimensionCursor.bounds.getter();
LABEL_6:
      *(v20 + 16) = v5;
      *(v20 + 24) = v21 * v19;
      *(v20 + 32) = 1;
      *a5 = v20;
      break;
    default:
      v10 = OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_0_29();
      *(v10 + 16) = DimensionCursor.position.getter();
      *(v10 + 24) = *&a2;
      *(v10 + 32) = 1;
      *a5 = v10;
      break;
  }
}

uint64_t sub_1D7952B40()
{
  MEMORY[0x1DA704750](0x286465786966, 0xE600000000000000);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7952C00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7952C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

id sub_1D7952C94(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  return result;
}

void sub_1D7952CA8(id a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }
}

uint64_t sub_1D7952CC4()
{
  OUTLINED_FUNCTION_12_1();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_0();
  sub_1D7952D20();
  return v0;
}

uint64_t sub_1D7952D20()
{
  OUTLINED_FUNCTION_12_1();
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v37 = sub_1D796CB20();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v38 = v0;
  v14 = *(v8 + 80);
  *(&v43[0] + 1) = v14;
  __swift_allocate_boxed_opaque_existential_1(&v42);
  OUTLINED_FUNCTION_15_1();
  v36 = v14;
  (*(v15 + 16))();
  sub_1D796CB00();
  v35 = v13;
  sub_1D796CB10();
  sub_1D796C850();

  for (i = MEMORY[0x1E69E7CC8]; ; i[2] = v27)
  {
    while (1)
    {
      sub_1D796C8F0();
      v43[0] = v40[1];
      v43[1] = v41;
      v42 = v40[0];
      if (!*(&v41 + 1))
      {

        type metadata accessor for CGRect(0);
        *(&v43[0] + 1) = v28;
        v29 = swift_allocObject();
        *&v42 = v29;
        v29[2] = v5;
        v29[3] = v3;
        v29[4] = v2;
        v29[5] = v1;
        sub_1D79326E0(&v42, v40);
        swift_isUniquelyReferenced_nonNull_native();
        *&v39[0] = i;
        sub_1D7945F24(v40, 0x656D617266, 0xE500000000000000);
        v30 = *&v39[0];
        OUTLINED_FUNCTION_9_4();
        v31(v7, v36);
        OUTLINED_FUNCTION_9_4();
        v32(v35, v37);
        v33 = v38 + *(*v38 + 96);
        *v33 = v30;
        v33[8] = 1;
        OUTLINED_FUNCTION_13_1();
        type metadata accessor for LayoutDecoder.ObjectPath();
        swift_storeEnumTagMultiPayload();
        return v38;
      }

      v17 = v42;
      sub_1D79326E0(v43, v40);
      if (*(&v17 + 1))
      {
        break;
      }

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    sub_1D79326F0(v40, v39);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1D792CF90(v17, *(&v17 + 1));
    if (__OFADD__(i[2], (v19 & 1) == 0))
    {
      break;
    }

    v20 = v18;
    v21 = v19;
    sub_1D793274C();
    if (sub_1D796C880())
    {
      v22 = sub_1D792CF90(v17, *(&v17 + 1));
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_16;
      }

      v20 = v22;
    }

    if (v21)
    {

      v24 = (i[7] + 32 * v20);
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_1D79326E0(v39, v24);
      goto LABEL_10;
    }

    i[(v20 >> 6) + 8] |= 1 << v20;
    *(i[6] + 16 * v20) = v17;
    sub_1D79326E0(v39, (i[7] + 32 * v20));
    __swift_destroy_boxed_opaque_existential_1(v40);
    v25 = i[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1D796CA70();
  __break(1u);
  return result;
}

uint64_t sub_1D7953160()
{
  sub_1D79534BC();
  swift_allocError();
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 2;
  return swift_willThrow();
}

uint64_t sub_1D79531BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 9;
  if (*(v3 + 64) > 9uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D79532E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1D79534BC()
{
  result = qword_1EC9DA270;
  if (!qword_1EC9DA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA270);
  }

  return result;
}

_OWORD *sub_1D7953510(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  result = sub_1D79326E0(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_1D7953554()
{
  result = qword_1EC9DA288;
  if (!qword_1EC9DA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9DA288);
  }

  return result;
}

void sub_1D79535A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * v5);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_1(v6, v13);
  }
}

uint64_t Prop.init(_:_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  sub_1D7924F60(a2, v2 + 88);
  v8 = 5;
  memset(v6, 0, sizeof(v6));
  v7 = 1;
  v4 = sub_1D79202C0(&v8, 0, 0, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

uint64_t sub_1D79536C0()
{
  OUTLINED_FUNCTION_2_21();
  swift_allocObject();
  return sub_1D7953720();
}

uint64_t sub_1D7953720()
{
  OUTLINED_FUNCTION_2_21();
  v6 = *(v5 + 32);
  *(v1 + 80) = v7;
  sub_1D7924F60(v4, v1 + 88);
  v13 = 5;
  v8 = *v0;
  v11[1] = v0[1];
  v11[0] = v8;
  v12 = v6;
  v9 = sub_1D79202C0(&v13, v3, v2, v11);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v9;
}

uint64_t sub_1D79537A8()
{
  OUTLINED_FUNCTION_1_24();
  v2 = v1;
  OUTLINED_FUNCTION_1_24();
  v4 = *(v3 + 176);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - v8;
  swift_getAtKeyPath();
  v14 = *(v2 + 184);
  v10.n128_u64[0] = *(v2 + 168);
  v10.n128_u64[1] = v4;
  OUTLINED_FUNCTION_0_31(v10, v14);
  v15[3] = type metadata accessor for Prop();
  v15[4] = &protocol witness table for Node<A>;
  v15[0] = v0;
  v11 = v14.n128_u64[1];
  v12 = *(v14.n128_u64[1] + 8);

  v12(v15, v4, v11);
  (*(v5 + 8))(v9, v4);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

unint64_t sub_1D7953910()
{
  OUTLINED_FUNCTION_1_24();
  v2 = v1;
  OUTLINED_FUNCTION_1_24();
  v4 = *(v3 + 176);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v15 - v8;
  swift_getAtKeyPath();
  v15 = *(v2 + 184);
  v10.n128_u64[0] = *(v2 + 168);
  v10.n128_u64[1] = v4;
  OUTLINED_FUNCTION_0_31(v10, v15);
  v16[3] = type metadata accessor for Prop();
  v16[4] = &protocol witness table for Node<A>;
  v16[0] = v0;
  v11 = v15.n128_u64[1];
  v12 = *(v15.n128_u64[1] + 16);
  v13 = sub_1D7953C04();

  v12(v0 + 88, v16, v13, v4, v11);
  (*(v5 + 8))(v9, v4);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return 0x8000000000000000;
}

uint64_t sub_1D7953AE8()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 88);
}

uint64_t Prop.deinit()
{
  v0 = Node.deinit();

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  return v0;
}

uint64_t Prop.__deallocating_deinit()
{
  v0 = Prop.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t Prop.description.getter()
{
  MEMORY[0x1DA704750](0x28706F7250, 0xE500000000000000);
  sub_1D7953C04();
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D7953C04()
{
  result = qword_1EE09D140;
  if (!qword_1EE09D140)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE09D140);
  }

  return result;
}

uint64_t ConditionalList.condition.getter@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v190 = a2;
  v178 = *(a1 + 7);
  v2 = *(*(v178 + 24) + 16);
  v181 = *(a1 + 5);
  v3 = *(v181 + 1);
  v188 = a1;
  v4 = *(a1 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v176 = v2;
  v175 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v175, v6);
  v174[1] = v174 - v7;
  v8 = sub_1D796C690();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v180 = v174 - v10;
  OUTLINED_FUNCTION_0_1();
  v184 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_0_32();
  v177 = v14 - v15;
  OUTLINED_FUNCTION_4_12();
  MEMORY[0x1EEE9AC00](v16, v17);
  v185 = (v174 - v18);
  OUTLINED_FUNCTION_4_12();
  MEMORY[0x1EEE9AC00](v19, v20);
  v183 = v174 - v21;
  v186 = v3;
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1D796C690();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_0_32();
  v182 = (v26 - v27);
  OUTLINED_FUNCTION_4_12();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_0_1();
  v187 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_0_32();
  MEMORY[0x1EEE9AC00](v33, v34);
  v179 = v174 - v35;
  OUTLINED_FUNCTION_4_12();
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v174 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v46 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_0_32();
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = v174 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = v174 - v57;
  v191 = v4;
  v192 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v59, v60);
  OUTLINED_FUNCTION_0_32();
  MEMORY[0x1EEE9AC00](v63, v61 - v62);
  v65 = v174 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v80 = v174 - v79;
  switch(*v189 >> 62)
  {
    case 1:
      v180 = v72;
      v183 = v71;
      v184 = v78;
      v189 = v68;
      v122 = v191;
      v123 = v46;
      v124 = v76;
      v125 = v73;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v127 = swift_projectBox();
      v128 = *(TupleTypeMetadata2 + 48);
      (*(v192 + 16))(v65, v127, v122);
      v185 = v123;
      v129 = v123[2];
      (v129)(v52, v127 + v128, v124);
      v181 = v65;
      sub_1D796C2A0();
      v130 = v179;
      v186 = v52;
      (v129)(v179, v52, v124);
      __swift_storeEnumTagSinglePayload(v130, 0, 1, v124);
      v131 = *(v189 + 48);
      v132 = v187;
      v133 = *(v187 + 16);
      v134 = v182;
      v133(v182, v125, v23);
      v133((v134 + v131), v130, v23);
      OUTLINED_FUNCTION_5_11(v134);
      if (v139)
      {
        v135 = *(v132 + 8);
        v135(v130, v23);
        v135(v125, v23);
        OUTLINED_FUNCTION_5_11(v134 + v131);
        v136 = v181;
        if (v139)
        {
          v135(v134, v23);
          v137 = 1;
LABEL_30:
          v163 = v190;
          v190[3] = &type metadata for BoolCondition;
          v163[4] = &off_1F528A208;
          *v163 = v137 & 1;
          v185[1](v186, v124);
          v157 = *(v192 + 8);
          v158 = v136;
          goto LABEL_31;
        }
      }

      else
      {
        v178 = v125;
        v141 = v180;
        v133(v180, v134, v23);
        OUTLINED_FUNCTION_5_11(v134 + v131);
        if (!v142)
        {
          v159 = v185;
          v160 = v183;
          (v185[4])(v183, v134 + v131, v124);
          v137 = sub_1D796C2D0();
          v161 = v159[1];
          v161(v160, v124);
          v162 = *(v187 + 8);
          v162(v130, v23);
          v162(v178, v23);
          v161(v141, v124);
          v162(v134, v23);
          v136 = v181;
          goto LABEL_30;
        }

        v143 = *(v187 + 8);
        v143(v130, v23);
        v143(v178, v23);
        v185[1](v141, v124);
        v136 = v181;
      }

      (*(v184 + 8))(v134, v189);
      v137 = 0;
      goto LABEL_30;
    case 2:
      v101 = v191;
      v102 = v69;
      v103 = v76;
      v104 = v77;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v106 = swift_projectBox();
      v107 = *(TupleTypeMetadata3 + 48);
      v108 = *(TupleTypeMetadata3 + 64);
      (*(v192 + 16))(v102, v106, v101);
      v109 = *(v46 + 2);
      v187 = v103;
      v109(v104, v106 + v107, v103);
      v111 = v183;
      v110 = v184;
      (*(v184 + 16))(v183, v106 + v108, AssociatedTypeWitness);
      v112 = v180;
      v188 = v102;
      v189 = v104;
      sub_1D796C580();
      result = __swift_getEnumTagSinglePayload(v112, 1, AssociatedTypeWitness);
      if (result != 1)
      {
        v114 = v185;
        sub_1D796C6C0();
        v115 = v112;
        v116 = *(v110 + 8);
        v116(v115, AssociatedTypeWitness);
        OUTLINED_FUNCTION_1_25();
        if (sub_1D796C6F0())
        {
          OUTLINED_FUNCTION_1_25();
          if (sub_1D796C6E0() < 64)
          {
            OUTLINED_FUNCTION_1_25();
            v117 = sub_1D796C6D0();
            v118 = v114;
            v119 = v117;
            v120 = v118;
LABEL_35:
            v116(v120, AssociatedTypeWitness);
            v150 = v119 == 0;
LABEL_36:
            v167 = v150;
            goto LABEL_41;
          }

          v193 = 0;
          v165 = sub_1D7954CD4();
          OUTLINED_FUNCTION_3_16(v165, MEMORY[0x1E69E6530], v165);
          v166 = v114;
          v167 = sub_1D796C2D0();
          v116(v104, AssociatedTypeWitness);
          v168 = v166;
        }

        else
        {
          OUTLINED_FUNCTION_1_25();
          v144 = sub_1D796C6F0();
          OUTLINED_FUNCTION_1_25();
          v145 = sub_1D796C6E0();
          if (v144)
          {
            if (v145 <= 64)
            {
              swift_getAssociatedConformanceWitness();
              sub_1D796CA50();
              v146 = v177;
              sub_1D796C970();
              swift_getAssociatedConformanceWitness();
              v147 = v185;
              v148 = sub_1D796C2C0();
              v116(v146, AssociatedTypeWitness);
              if (v148)
              {
                OUTLINED_FUNCTION_1_25();
                v149 = sub_1D796C6D0();
                v116(v147, AssociatedTypeWitness);
                v150 = v149 == 0;
                goto LABEL_36;
              }

              v116(v147, AssociatedTypeWitness);
              v167 = 0;
LABEL_41:
              v172 = v190;
              v173 = v187;
              v190[3] = &type metadata for BoolCondition;
              v172[4] = &off_1F528A208;
              *v172 = v167 & 1;
              v116(v111, AssociatedTypeWitness);
              (*(v46 + 1))(v189, v173);
              v157 = *(v192 + 8);
              v158 = v188;
              v164 = v101;
              return v157(v158, v164);
            }
          }

          else if (v145 < 64)
          {
            v169 = v185;
            OUTLINED_FUNCTION_1_25();
            v119 = sub_1D796C6D0();
            v120 = v169;
            goto LABEL_35;
          }

          v193 = 0;
          v170 = sub_1D7954CD4();
          OUTLINED_FUNCTION_3_16(v170, MEMORY[0x1E69E6530], v170);
          v171 = v185;
          v167 = sub_1D796C2D0();
          v116(v104, AssociatedTypeWitness);
          v168 = v171;
        }

        v116(v168, AssociatedTypeWitness);
        goto LABEL_41;
      }

      __break(1u);
      return result;
    case 3:
      v193 = *((*v189 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v121 = v190;
      v190[3] = &type metadata for NotCondition;
      v121[4] = &off_1F528C758;
      *v121 = swift_allocObject();
      return ConditionalList.condition.getter(v188);
    default:
      v179 = v74;
      v180 = v23;
      v183 = v71;
      v184 = v78;
      v189 = v68;
      v81 = v46;
      v82 = v191;
      v83 = v76;
      v84 = v70;
      v181 = v43;
      v85 = v75;
      v86 = swift_getTupleTypeMetadata2();
      v87 = swift_projectBox();
      v88 = *(v86 + 48);
      (*(v192 + 16))(v80, v87, v82);
      v185 = v81;
      v89 = v81[2];
      (v89)(v58, v87 + v88, v83);
      v182 = v80;
      v90 = v85;
      v92 = v180;
      v91 = v181;
      sub_1D796C560();
      v186 = v58;
      (v89)(v91, v58, v83);
      __swift_storeEnumTagSinglePayload(v91, 0, 1, v83);
      v93 = *(v189 + 48);
      v94 = v187;
      v95 = *(v187 + 16);
      v95(v84, v90, v92);
      v95(v84 + v93, v91, v92);
      OUTLINED_FUNCTION_6_9(v84);
      if (v139)
      {
        v96 = *(v94 + 8);
        v96(v91, v92);
        v97 = v90;
        v98 = v92;
        v96(v97, v92);
        OUTLINED_FUNCTION_6_9(v84 + v93);
        v99 = v185;
        if (v139)
        {
          v96(v84, v98);
          v100 = 1;
          goto LABEL_29;
        }
      }

      else
      {
        v178 = v90;
        v138 = v179;
        v95(v179, v84, v92);
        OUTLINED_FUNCTION_6_9(v84 + v93);
        if (!v139)
        {
          v151 = v92;
          v99 = v185;
          v152 = v185[4];
          v189 = v84;
          v153 = v183;
          (v152)(v183, v84 + v93, v83);
          v100 = sub_1D796C2D0();
          v154 = v99[1];
          v154(v153, v83);
          v155 = *(v94 + 8);
          v155(v91, v151);
          v155(v178, v151);
          v154(v138, v83);
          v155(v189, v151);
          goto LABEL_29;
        }

        v140 = *(v94 + 8);
        v140(v91, v92);
        v140(v178, v92);
        v99 = v185;
        v185[1](v138, v83);
      }

      (*(v184 + 8))(v84, v189);
      v100 = 0;
LABEL_29:
      v156 = v190;
      v190[3] = &type metadata for BoolCondition;
      v156[4] = &off_1F528A208;
      *v156 = v100 & 1;
      v99[1](v186, v83);
      v157 = *(v192 + 8);
      v158 = v182;
LABEL_31:
      v164 = v191;
      return v157(v158, v164);
  }
}

unint64_t sub_1D7954CD4()
{
  result = qword_1EC9DA290[0];
  if (!qword_1EC9DA290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9DA290);
  }

  return result;
}

uint64_t Conditional.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    v7 = 0x28727078652ELL;
    if (*(v1 + 16))
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (*(v1 + 16))
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1DA704750](v4, v5);

    MEMORY[0x1DA704750](41, 0xE100000000000000);
    return v7;
  }

  if (v2 == 1)
  {
    v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = 0;
    sub_1D7938D28(v3);
    MEMORY[0x1DA704750](0x28746F6E2ELL, 0xE500000000000000);
    swift_getWitnessTable();
    sub_1D796C960();
    MEMORY[0x1DA704750](41, 0xE100000000000000);
    sub_1D793D248(v3);
    return v7;
  }

  return 0x6C626978656C662ELL;
}

uint64_t sub_1D7954EDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7954F18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7954F60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
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

uint64_t sub_1D7954FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
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

uint64_t sub_1D7955060@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v4 = *v2;
  v5 = result;
  switch(*v2 >> 61)
  {
    case 1uLL:
      if (qword_1EC9D9E58 != -1)
      {
        result = swift_once();
      }

      v10 = xmmword_1EC9DA148;
      goto LABEL_7;
    case 2uLL:
    case 4uLL:
    case 6uLL:
      v22.i64[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = result & 1;
      v7 = a2;
      goto LABEL_9;
    case 3uLL:
      v22.i64[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = a2;
      v6 = 1;
LABEL_9:
      result = sub_1D7955060(v7, v6);
      break;
    case 5uLL:
      v11 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D7955250(result & 1, &v22);
      v12 = v22;
      sub_1D7955060(&v22, v5 & 1);
      v13 = v22;
      v21 = v12;
      result = v11(&v22, &v21);
      v15 = *&v22.i64[1];
      v14 = *v22.i64;
      if (*v13.i64 <= *v22.i64)
      {
        v16 = *v13.i64;
      }

      else
      {
        v16 = *v22.i64;
      }

      v17 = *v13.i64 + *&v13.i64[1];
      if (*v13.i64 + *&v13.i64[1] <= *v22.i64 + *&v22.i64[1])
      {
        v17 = *v22.i64 + *&v22.i64[1];
      }

      v18 = v17 - v16;
      if (v23 != 1)
      {
        v14 = *v13.i64;
        v15 = *&v13.i64[1];
      }

      if (!v23)
      {
        v14 = v16;
        v15 = v18;
      }

      v19 = ceil(v14);
      v20 = ceil(v15);
      if ((v5 & 1) == 0)
      {
        v14 = v19;
        v15 = v20;
      }

      *a2 = v14;
      a2[1] = v15;
      break;
    default:
      v8 = vdup_n_s32(result);
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v10 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), *(v4 + 16), vrndpq_f64(*(v4 + 16)));
LABEL_7:
      *a2 = v10;
      break;
  }

  return result;
}

uint64_t sub_1D7955250@<X0>(uint64_t result@<X0>, int8x16_t *a2@<X8>)
{
  v4 = *v2;
  v5 = result;
  switch(*v2 >> 61)
  {
    case 1uLL:
      if (qword_1EC9D9E58 != -1)
      {
        result = swift_once();
      }

      v10 = xmmword_1EC9DA148;
      goto LABEL_13;
    case 2uLL:
    case 4uLL:
    case 6uLL:
      v17.f64[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = result & 1;
      v7 = a2;
      return sub_1D7955250(v7, v6);
    case 3uLL:
      v17.f64[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = a2;
      v6 = 1;
      return sub_1D7955250(v7, v6);
    case 5uLL:
      v11 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D7955250(&v17, result & 1);
      v15 = v17;
      v16 = v17;
      result = v11(&v17, &v16);
      if (!v18 || (v12 = v15, v18 == 1))
      {
        v12 = v17;
      }

      v13 = vdup_n_s32(v5);
      v14.i64[0] = v13.u32[0];
      v14.i64[1] = v13.u32[1];
      v10 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v14, 0x3FuLL)), v12, vrndpq_f64(v12));
      goto LABEL_13;
    default:
      v8 = vdup_n_s32(result);
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v10 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), *(v4 + 16), vrndpq_f64(*(v4 + 16)));
LABEL_13:
      *a2 = v10;
      return result;
  }
}

uint64_t DimensionSizerResult.isAmbiguous.getter()
{
  v1 = *v0 >> 61;
  if ((v1 - 2) >= 5)
  {
    v2 = v1 != 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_33();
    v2 = DimensionSizerResult.isAmbiguous.getter();
  }

  return v2 & 1;
}

uint64_t DimensionSizerResult.nonIntegral.getter()
{
  if (((1 << (*v0 >> 61)) & 0x74) != 0)
  {
    OUTLINED_FUNCTION_0_33();
    v1 = DimensionSizerResult.nonIntegral.getter();
  }

  else
  {
    v1 = ((1 << (*v0 >> 61)) & 3) == 0;
  }

  return v1 & 1;
}

uint64_t DimensionSizerResult.constraints.getter()
{
  v1 = *v0 >> 61;
  if ((v1 - 3) >= 4)
  {
    if (v1 >= 2)
    {
      v3 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v4 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_1D792EC60();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D796EBB0;
      *(v5 + 32) = v3;
      *(v5 + 40) = v4;
      v6 = DimensionSizerResult.constraints.getter();
      sub_1D7949F6C(v6);
      return v5;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_33();
    return DimensionSizerResult.constraints.getter();
  }
}

uint64_t sub_1D7955540(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
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

uint64_t sub_1D7955594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D7955618()
{
  MEMORY[0x1DA704750](0x286E6D756C6F63, 0xE700000000000000);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ColumnSizer(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ColumnSizer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_1D7955794()
{
  result = 0.0;
  xmmword_1EC9DA318 = xmmword_1D7973030;
  return result;
}

__n128 sub_1D79557D0()
{
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EC9DA328 = result;
  return result;
}

__n128 sub_1D795583C@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

void static FlexBoxItemFlex.value(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  *a1 = a2;
  *(a1 + 8) = 0x3FF0000000000000;
}

void sub_1D7955970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  OUTLINED_FUNCTION_65();
  a39 = v44;
  a40 = v45;
  v62 = v46;
  v58 = v47;
  v61 = v48;
  v50 = v49;
  v60 = v51;
  v59 = a42;
  v53 = *v52;
  OUTLINED_FUNCTION_28();
  swift_getAssociatedTypeWitness();
  v54 = OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_30();
  type metadata accessor for Box();
  a20 = v53;
  sub_1D792233C(&a20, v58, &a30);
  a28 = v59;
  OUTLINED_FUNCTION_52();
  a19 = 2;

  sub_1D792280C(&a19, &a30, &a28, v60, v50, v61, &a20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20_0();
  v55();
  OUTLINED_FUNCTION_13_2();
  v56 = OUTLINED_FUNCTION_7_10();
  a20 = v43;
  a21 = v42;
  a22 = v54;
  a23 = v56;
  OUTLINED_FUNCTION_32();
  type metadata accessor for BoxBuilder();
  v57 = OUTLINED_FUNCTION_48();
  sub_1D79207F4(v57);
  OUTLINED_FUNCTION_73();
  v62(v54);
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_63();
}

uint64_t BuilderType.flexBox(name:flexBoxLayout:flexBoxItem:size:positions:block:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, uint64_t *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v28[0] = *a3;
  *(v28 + 9) = *(a3 + 9);
  v21 = *(a4 + 32);
  v14 = *a5;
  v15 = OUTLINED_FUNCTION_11_3();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FlexBox();
  *&v25 = v14;
  sub_1D792233C(&v25, a6, &v29);
  v17 = *a4;
  v26 = a4[1];
  v25 = v17;
  v27 = v21;

  sub_1D793D8AC(&v29, v28, a1, a2, &v25);
  (*(a10 + 40))();
  OUTLINED_FUNCTION_11_3();
  v18 = OUTLINED_FUNCTION_34();
  *&v25 = v15;
  *(&v25 + 1) = v11;
  *&v26 = AssociatedConformanceWitness;
  *(&v26 + 1) = v18;
  type metadata accessor for FlexBoxBuilder();
  v19 = OUTLINED_FUNCTION_19_0();
  sub_1D79207F4(v19);
  OUTLINED_FUNCTION_45();
  a7(a4);
}

uint64_t BuilderType.flexBox(name:flexBoxLayout:flexBoxItem:size:positions:block:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t))
{
  v8 = v7;
  v29[0] = *a3;
  *(v29 + 9) = *(a3 + 9);
  v22 = *(a4 + 32);
  v11 = *a5;
  v12 = OUTLINED_FUNCTION_10_4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for FlexBox();
  *&v26 = v11;
  OUTLINED_FUNCTION_31();
  sub_1D792233C(v14, v15, v16);
  v17 = *a4;
  v27 = a4[1];
  v26 = v17;
  v28 = v22;

  sub_1D793D8AC(&v30, v29, a1, a2, &v26);
  OUTLINED_FUNCTION_25();
  v18();
  OUTLINED_FUNCTION_10_4();
  v19 = OUTLINED_FUNCTION_35_0();
  *&v26 = v12;
  *(&v26 + 1) = v13;
  *&v27 = AssociatedConformanceWitness;
  *(&v27 + 1) = v19;
  type metadata accessor for FlexBoxBuilder();
  v20 = OUTLINED_FUNCTION_48();
  sub_1D79207F4(v20);
  OUTLINED_FUNCTION_73();
  a7(v8);
  OUTLINED_FUNCTION_72();
}

uint64_t sub_1D7955E10(uint64_t a1, uint64_t a2, __int128 *a3, char a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v25 = *(a3 + 32);
  v14 = *a5;
  v15 = OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_54();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30();
  v16 = type metadata accessor for Box();
  *&v31 = v14;
  OUTLINED_FUNCTION_31();
  sub_1D792233C(v17, v18, v19);
  v34 = a11;
  v20 = *a3;
  v32 = a3[1];
  v31 = v20;
  v33 = v25;
  v30 = 2;

  sub_1D792280C(&v30, &v35, &v34, a1, a2, a4, &v31);
  OUTLINED_FUNCTION_25();
  v21();
  OUTLINED_FUNCTION_10_4();
  v22 = OUTLINED_FUNCTION_35_0();
  *&v31 = v15;
  *(&v31 + 1) = v16;
  *&v32 = AssociatedConformanceWitness;
  *(&v32 + 1) = v22;
  type metadata accessor for BoxBuilder();
  v23 = OUTLINED_FUNCTION_48();
  sub_1D79207F4(v23);
  OUTLINED_FUNCTION_73();
  a7(v11);
  OUTLINED_FUNCTION_72();
}

uint64_t sub_1D7956034()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);
  v2[3] = *(v0 + 24);
  __swift_allocate_boxed_opaque_existential_1(v2);
  v3 = OUTLINED_FUNCTION_1_27();
  return v1(v3);
}

uint64_t sub_1D795611C(uint64_t a1, uint64_t (*a2)(double))
{
  OUTLINED_FUNCTION_7();
  v5 = v4;
  v4[3] = v6;
  __swift_allocate_boxed_opaque_existential_1(v4);
  v7 = OUTLINED_FUNCTION_1_27();
  result = a2(v7);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v5);
  }

  return result;
}

void sub_1D7956230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _UNKNOWN **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_64();
  a31 = v34;
  a32 = v35;
  v37 = v36;
  v39 = v38;
  v57 = v40;
  OUTLINED_FUNCTION_60();
  v41 = a33;
  v44 = *v43;
  v45 = (*v42 + *MEMORY[0x1E69E77B0]);
  v46 = *v45;
  v47 = v45[1];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a15 = v46;
  a16 = v47;
  a17 = AssociatedConformanceWitness;
  a18 = &protocol witness table for LayoutItemList<A>;
  OUTLINED_FUNCTION_38();
  type metadata accessor for Frame();
  OUTLINED_FUNCTION_17_1();
  a14 = v44;

  sub_1D792233C(&a14, v33, &a13);
  OUTLINED_FUNCTION_39();
  v49 = swift_allocObject();
  v49[2] = v37;
  v49[3] = *(v47 + 80);
  v49[4] = v41;
  v49[5] = *(v47 + 88);
  v49[6] = v57;
  v49[7] = v39;

  OUTLINED_FUNCTION_51();
  sub_1D79236F8(v50, v51, v52, v53, v54, v55, v49);
  OUTLINED_FUNCTION_33();
  v56();

  OUTLINED_FUNCTION_66();
}

void sub_1D79563D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unint64_t a17, __int128 a18, __int128 a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_37();
  a31 = v34;
  a32 = v35;
  v62 = v36;
  v38 = v37;
  v61 = v39;
  v41 = v40;
  v43 = a33;
  v42 = a34;
  v45 = *(v40 + 32);
  v47 = *v46;
  v48 = (*v44 + *MEMORY[0x1E69E77B0]);
  v50 = *v48;
  v49 = v48[1];
  OUTLINED_FUNCTION_18_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&a18 = v50;
  *(&a18 + 1) = v49;
  *&a19 = AssociatedConformanceWitness;
  *(&a19 + 1) = &protocol witness table for LayoutItemList<A>;
  type metadata accessor for Frame();
  v52 = *v41;
  a19 = v41[1];
  a18 = v52;
  a20 = v45;
  a17 = v47;

  sub_1D792233C(&a17, v61, &a16);
  OUTLINED_FUNCTION_39();
  v53 = swift_allocObject();
  v53[2] = v43;
  v53[3] = *(v49 + 80);
  v53[4] = v42;
  v53[5] = *(v49 + 88);
  v53[6] = v62;
  v53[7] = v38;

  OUTLINED_FUNCTION_51();
  sub_1D79236F8(v54, v55, v56, v57, v58, v59, v53);
  OUTLINED_FUNCTION_3_17();
  v60();

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1D795656C(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v3 = *(v1 + 48);
  v4[3] = *(v1 + 24);
  __swift_allocate_boxed_opaque_existential_1(v4);
  v5 = OUTLINED_FUNCTION_1_27();
  return v3(a1, v5);
}

void sub_1D7956618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _UNKNOWN **a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  OUTLINED_FUNCTION_65();
  a33 = v37;
  a34 = v38;
  v60 = v39;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v61 = v50;
  v62 = a37;
  v51 = a35;
  v53 = *v52;
  v54 = (*v46 + *MEMORY[0x1E69E77B0]);
  v55 = *v54;
  v56 = v54[1];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a17 = v55;
  a18 = v56;
  a19 = AssociatedConformanceWitness;
  a20 = &protocol witness table for LayoutItemList<A>;
  OUTLINED_FUNCTION_32();
  type metadata accessor for Frame();
  OUTLINED_FUNCTION_52();
  a24 = v53;

  sub_1D792233C(&a24, v45, &a16);
  OUTLINED_FUNCTION_39();
  v58 = swift_allocObject();
  v58[2] = v41;
  v58[3] = *(v56 + 80);
  v58[4] = v51;
  v58[5] = *(v56 + 88);
  v58[6] = v60;
  v58[7] = v43;

  v59 = sub_1D79236F8(v61, v49, &a17, v47, &a16, v62, v58);
  (*(v51 + 40))(v59, v41, v51);

  OUTLINED_FUNCTION_63();
}

void sub_1D79567EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_65();
  a31 = v36;
  a32 = v37;
  v62 = v38;
  v63 = v40;
  v64 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v65 = a36;
  v48 = a33;
  v47 = a34;
  v49 = *(v43 + 32);
  v51 = *v50;
  v52 = (*v41 + *MEMORY[0x1E69E77B0]);
  v54 = *v52;
  v53 = v52[1];
  OUTLINED_FUNCTION_42();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&a18 = v54;
  *(&a18 + 1) = v53;
  *&a19 = AssociatedConformanceWitness;
  *(&a19 + 1) = &protocol witness table for LayoutItemList<A>;
  type metadata accessor for Frame();
  v56 = *v44;
  a19 = v44[1];
  a18 = v56;
  a20 = v49;
  a22 = v51;

  OUTLINED_FUNCTION_49();
  sub_1D792233C(v57, v58, v59);
  OUTLINED_FUNCTION_39();
  v60 = swift_allocObject();
  v60[2] = v48;
  v60[3] = *(v53 + 80);
  v60[4] = v47;
  v60[5] = *(v53 + 88);
  v60[6] = v62;
  v60[7] = v63;

  sub_1D79236F8(v64, v46, &a18, v42, &a17, v65, v60);
  OUTLINED_FUNCTION_2_22();
  v61();

  OUTLINED_FUNCTION_63();
}

uint64_t sub_1D795697C(uint64_t a1, uint64_t (*a2)(uint64_t, double))
{
  OUTLINED_FUNCTION_7();
  v6 = v5;
  v5[3] = v7;
  __swift_allocate_boxed_opaque_existential_1(v5);
  v8 = OUTLINED_FUNCTION_1_27();
  result = a2(a1, v8);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(v6);
  }

  return result;
}

uint64_t BuilderType.space(name:flexBoxItem:size:)(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t *a4)
{
  v5 = *(a3 + 32);
  v6 = *a4;
  OUTLINED_FUNCTION_28();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29();
  type metadata accessor for Space();
  v18 = *a3;
  v19 = a3[1];
  LOBYTE(v20) = v5;
  sub_1D7922754(v6);

  v15 = OUTLINED_FUNCTION_59(v7, v8, v9, v10, v11, v12, v13, v14, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v6);
  sub_1D792362C(v15);
  OUTLINED_FUNCTION_0_35();
  v16();
}

uint64_t BuilderType.prop<A>(keyPath:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_21();
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = a5;
  type metadata accessor for Prop();
  sub_1D7924F60(a2, &v11);

  Prop.__allocating_init(_:_:)(v7, &v11);
  OUTLINED_FUNCTION_0_35();
  v8();
}

uint64_t BuilderType.prop<A>(name:keyPath:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_22();
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = a7;
  OUTLINED_FUNCTION_32();
  type metadata accessor for Prop();
  sub_1D7924F60(a4, &v12);
  OUTLINED_FUNCTION_16_2();

  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_0_35();
  v9();
}

void BuilderType.prop<A>(name:keyPath:value:flexBoxItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_37();
  a31 = v32;
  a32 = v33;
  v35 = v34;
  v37 = v36;
  OUTLINED_FUNCTION_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a16 = a9;
  a17 = AssociatedConformanceWitness;
  a18 = v35;
  OUTLINED_FUNCTION_32();
  type metadata accessor for Prop();
  sub_1D7924F60(v37, &a16);

  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_0_35();
  v39();

  OUTLINED_FUNCTION_36();
}

uint64_t BuilderType.vOverlay(name:flexBoxItem:reversed:size:_:on:embedPath:block:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_14_1();
  return sub_1D7956FC0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14);
}

uint64_t BuilderType.vOverlay(name:reversed:size:positions:on:embedPath:block:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_2();
  return sub_1D79571D8(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t BuilderType.vOverlay(name:flexBoxItem:reversed:size:positions:on:embedPath:block:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_14_1();
  return sub_1D79573B8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
}

uint64_t BuilderType.inheritedOverlay(name:reversed:size:_:on:embedPath:block:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_2();
  return sub_1D79256D0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
}

uint64_t BuilderType.inheritedOverlay(name:flexBoxItem:reversed:size:_:on:embedPath:block:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_14_1();
  return sub_1D7956FC0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1D7956FC0(uint64_t a1, uint64_t a2, __int128 *a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v23 = *(a3 + 32);
  v16 = *a5;
  OUTLINED_FUNCTION_6_10();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Overlay();
  *&v30 = v16;
  sub_1D792233C(&v30, a6, v34);
  v33 = a14;
  v18 = *a3;
  v31 = a3[1];
  v30 = v18;
  v32 = v23;

  sub_1D7925620(v34, &v33, a1, a2, a7, a8, a9, a4, &v30);
  (*(a13 + 40))();
  OUTLINED_FUNCTION_6_10();
  v19 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_0();
  v20 = swift_getAssociatedConformanceWitness();
  *&v30 = AssociatedTypeWitness;
  *(&v30 + 1) = v19;
  *&v31 = AssociatedConformanceWitness;
  *(&v31 + 1) = v20;
  type metadata accessor for BoxBuilder();
  v21 = OUTLINED_FUNCTION_19_0();
  sub_1D79207F4(v21);
  OUTLINED_FUNCTION_45();
  a10(a13);
}

uint64_t BuilderType.inheritedOverlay(name:reversed:size:positions:on:embedPath:block:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_2();
  return sub_1D79571D8(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1D79571D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t))
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_42();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Overlay();
  OUTLINED_FUNCTION_49();
  sub_1D792233C(v11, v12, v13);

  v14 = OUTLINED_FUNCTION_40();
  sub_1D7925620(v14, v15, v16, a2, a6, a7, a8, a3, v21);
  OUTLINED_FUNCTION_2_22();
  v17();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_42();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_70();
  v18 = OUTLINED_FUNCTION_19_0();
  v19 = sub_1D79207F4(v18);

  a9(v19);
}

uint64_t BuilderType.inheritedOverlay(name:flexBoxItem:reversed:size:positions:on:embedPath:block:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_14_1();
  return sub_1D79573B8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
}

uint64_t sub_1D79573B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_42();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30();
  type metadata accessor for Overlay();
  OUTLINED_FUNCTION_49();
  sub_1D792233C(v13, v14, v15);

  v16 = OUTLINED_FUNCTION_40();
  sub_1D7925620(v16, v17, v18, a2, a7, a8, a9, a4, v22);
  (*(a13 + 40))();
  v19 = OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_42();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_70();
  v20 = OUTLINED_FUNCTION_48();
  sub_1D79207F4(v20);
  OUTLINED_FUNCTION_73();
  a10(v19);
  OUTLINED_FUNCTION_72();
}