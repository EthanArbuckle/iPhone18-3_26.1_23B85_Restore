uint64_t sub_1890E7860@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A2B08();
  v5 = [a1 dataSourceIndexPathForPresentationIndexPath_];

  if (v5)
  {
    sub_18A4A2B18();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18A4A2B48();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_1890E7928()
{
  sub_1890C3D10(v0 + 16);
  sub_188A3F5FC(v0 + 96, &unk_1EA93CA68);

  return swift_deallocClassInstance();
}

uint64_t sub_1890E799C(uint64_t a1, int a2)
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

uint64_t sub_1890E79E4(uint64_t result, int a2, int a3)
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

uint64_t sub_1890E7A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18A4A2B48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1890E7A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CA68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890E7B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CA68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1890E7BAC()
{
  result = qword_1EA92F000[0];
  if (!qword_1EA92F000[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA937EF8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA92F000);
  }

  return result;
}

unint64_t sub_1890E7C24()
{
  result = qword_1EA93CA78;
  if (!qword_1EA93CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CA78);
  }

  return result;
}

id static UIVisualEffect.intelligenceLatency(mode:)(uint64_t a1)
{
  v2 = objc_allocWithZone(_UIIntelligenceLatencyEffect);

  return [v2 initWithMode_];
}

id _UIIntelligenceLatencyEffect.init(mode:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithMode_];
}

{
  *(v1 + OBJC_IVAR____UIIntelligenceLatencyEffect_mode) = a1;
  v3.super_class = _UIIntelligenceLatencyEffect;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t _UIIntelligenceLatencyEffect.init(coder:)(void *a1)
{
  type metadata accessor for _UIIntelligenceLatencyEffect();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t type metadata accessor for _UIIntelligenceLatencyEffect()
{
  result = qword_1EA93CA88;
  if (!qword_1EA93CA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93CA88);
  }

  return result;
}

void _UIIntelligenceLatencyEffect._update(_:for:usage:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (a1)
    {
      v5 = [objc_allocWithZone(type metadata accessor for _UILatencyEmitterViewEntry()) init];
      [a1 addOverlay_];
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL _UIIntelligenceLatencyEffect.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v6);
  if (v7)
  {
    type metadata accessor for _UIIntelligenceLatencyEffect();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR____UIIntelligenceLatencyEffect_mode);
      v3 = *&v5[OBJC_IVAR____UIIntelligenceLatencyEffect_mode];

      return v2 == v3;
    }
  }

  else
  {
    sub_188A553EC(v6);
  }

  return 0;
}

void __swiftcall _UIIntelligenceLatencyEffect.init()(_UIIntelligenceLatencyEffect *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1890E81D0(void *a1, uint64_t a2, void *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v5 = a3;
  v6 = a1;
  sub_1890E8C84(Strong);
}

void sub_1890E82FC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  v3 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style);
  *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style) = a1;
  if (v3 != a1)
  {
    if (*(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8))
    {
      v4 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);

      sub_1890A4410(v2, v4);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setNeedsUpdateProperties];
    }
  }
}

void sub_1890E8530(id a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  if (a1)
  {
    [a1 _UIRectCornerRadiiValue];
    v2 = a1;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v8 = v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii;
  v9 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii);
  v10 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii + 8);
  v11 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii + 16);
  v12 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii + 24);
  v13 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii + 32);
  *v8 = v4;
  *(v8 + 8) = v5;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = v2 == 0;
  if (!v2)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((v13 & 1) != 0 || (v14 = UIRectCornerRadiiEqualToRectCornerRadii(v4, v5, v6, v7, v9, v10, v11, v12), v2 = a1, !v14))
  {
LABEL_9:
    if (*(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8))
    {
      v15 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);
      swift_bridgeObjectRetain_n();
      sub_1890A4410(v3, v15);
      swift_bridgeObjectRelease_n();
      v2 = a1;
    }
  }
}

uint64_t _UIScrollPocketInteraction.description.getter()
{
  v1 = [objc_opt_self() descriptionForRootObject_];
  v2 = sub_18A4A7288();

  return v2;
}

uint64_t sub_1890E873C(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1890EA064;
  *(v4 + 24) = v3;
  v21 = sub_188E3FE50;
  v22 = v4;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_188A4A968;
  v20 = &block_descriptor_32_1;
  v5 = _Block_copy(&v17);
  v6 = a1;
  v7 = v1;

  [v6 appendProem:v7 block:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = [v6 style];
  v11 = [v10 verbosity];

  if (v11 == 2)
  {
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1890EA06C;
  *(v13 + 24) = v12;
  v21 = sub_188E3FE50;
  v22 = v13;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_188A4A968;
  v20 = &block_descriptor_42_2;
  v14 = _Block_copy(&v17);
  v15 = v6;
  v16 = v7;

  [v15 appendBodySectionWithName:0 block:v14];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1890E8A14(void *a1, id a2)
{
  v3 = _NSStringFromUIRectEdge([a2 _edge]);
  v4 = sub_18A4A7258();
  [a1 appendString:v3 withName:v4];
}

void sub_1890E8AA4(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  v4 = sub_18A4A7258();
}

void __swiftcall _UIScrollPocketInteraction.init()(_UIScrollPocketInteraction *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for _UIScrollPocketInteraction()
{
  result = qword_1EA93CAA0;
  if (!qword_1EA93CAA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93CAA0);
  }

  return result;
}

void sub_1890E8C84(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    if (v3 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsUpdateProperties];
  }
}

id sub_1890E8D28()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers];
  v3 = *&v0[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers];
  v4 = *&v0[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_188B025E0(v3, v4);

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1890E8E18(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_188F8E240(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1890E8E3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v7)
    {
      break;
    }

    v12 = v10;
LABEL_13:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    sub_188F8EA58(*(a1 + 56) + 16 * v15, &v21);
    v22 = v16;
    sub_188E8FC60(&v21, v23);
    v10 = v12;
LABEL_14:
    sub_188A3F704(&v22, &v24, &unk_1EA93CB10);
    if (!v25[0] && v25[1] == 1)
    {

      return a2;
    }

    v17 = v24;
    sub_188E8FC60(v25, &v22);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v18 = sub_188A403F4(v17);
      if (v19)
      {
        v20 = v18;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_188FA2094();
        }

        sub_188E8FC60(*(a2 + 56) + 16 * v20, &v21);
        sub_188F9D5A4(v20, a2);
        sub_188F8EAB4(&v22);
      }

      else
      {
        sub_188F8EAB4(&v22);
        v21 = xmmword_18A64C520;
      }

      result = sub_188A3F5FC(&v21, &qword_1EA9352B8);
    }

    else
    {
      result = sub_188F8EAB4(&v22);
    }
  }

  if (v8 <= v10 + 1)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v8;
  }

  v10 = v13 - 1;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      v7 = 0;
      v22 = 0;
      v23[0] = 0;
      v23[1] = 1;
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_1890E9064(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 descriptionForRootObject_];
  if (!v4)
  {
    sub_18A4A7288();
    v4 = sub_18A4A7258();
  }

  return v4;
}

void sub_1890E90F8(void *a1)
{
  v16 = signpost_c2_entryLock_start;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_188A4A968;
  v15 = &block_descriptor_109;
  v3 = _Block_copy(&v12);

  [a1 appendProem:v1 block:v3];
  _Block_release(v3);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  v4 = [a1 style];
  v5 = [v4 verbosity];

  if (v5 != 2)
  {
    v6 = [objc_opt_self() succinctStyle];
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1890E9E7C;
    *(v8 + 24) = v7;
    v16 = sub_188A4B574;
    v17 = v8;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_188A4A968;
    v15 = &block_descriptor_12_9;
    v9 = _Block_copy(&v12);
    v10 = a1;
    v11 = v1;

    [v10 overlayStyle:v6 block:v9];

    _Block_release(v9);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_1890E9374(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1890E9E84;
  *(v5 + 24) = v4;
  v10[4] = sub_188E3FE50;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A968;
  v10[3] = &block_descriptor_22_1;
  v6 = _Block_copy(v10);
  v7 = a1;
  v8 = a2;

  [v7 appendBodySectionWithName:0 block:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_1890E94D8(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
  }

  else
  {
    v9 = @"(nil)";
    v10 = @"(nil)";
  }

  v11 = v9;
  v12 = sub_18A4A7258();
  [a1 appendString:v11 withName:v12];

  v13 = swift_unknownObjectWeakLoadStrong();
  v14 = sub_18A4A7258();

  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = sub_18A4A7258();

  v17 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_requiresPocket);
  v18 = sub_18A4A7258();

  sub_1890E9918(*(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style));
  v19 = sub_18A4A7258();

  v20 = sub_18A4A7258();
  [a1 appendString:v19 withName:v20];

  v21 = _NSStringFromUIRectEdge(*(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_edge));
  v22 = sub_18A4A7258();
  [a1 appendString:v21 withName:v22];

  v23 = (a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect);
  v24 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect);
  v25 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect + 8);
  v26 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect + 16);
  v27 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect + 24);
  v28 = sub_18A4A7258();

  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v46 = v29;
    v30 = [v29 _window];
    if (v30)
    {

      if (CGRectIsNull(*v23))
      {
        [v46 bounds];
      }

      else
      {
        x = v23->origin.x;
        y = v23->origin.y;
        width = v23->size.width;
        height = v23->size.height;
      }

      [v46 convertRect:0 toView:{x, y, width, height}];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = sub_18A4A7258();
      v45 = [a1 appendRect:v44 withName:{v37, v39, v41, v43}];

      v35 = v44;
    }

    else
    {
      v35 = v46;
    }
  }
}

uint64_t sub_1890E9918(uint64_t a1)
{
  if (a1 <= 1)
  {
    switch(a1)
    {
      case -1:
        return 1701736302;
      case 0:
        return 0x676E6974616F6C66;
      case 1:
        return 0x7373616C67;
    }

LABEL_13:
    v2 = sub_18A4A8618();
    MEMORY[0x18CFE22D0](v2);

    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    return 0x286E776F6E6B6E75;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0x6E496D6574737973;
    }

    if (a1 == 5)
    {
      return 0x656E6961746E6F63;
    }

    goto LABEL_13;
  }

  if (a1 == 2)
  {
    return 7496034;
  }

  else
  {
    return 0x74656C6150726162;
  }
}

void sub_1890E9B70(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v6 = Strong;
  v7 = [Strong _window];
  if (!v7 || (v7, [v6 frame], CGRectIsNull(v27)) || (objc_msgSend(v6, sel_frame), CGRectIsEmpty(v28)))
  {

LABEL_6:
    [a2 invalidate];
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8, v8, v6 != v9) || !_UIScrollPocketFrameCacheEnabled())
  {
    [a2 invalidate];
    v10 = 0;
    goto LABEL_13;
  }

  [a2 getValueForCoordinateSpace_];
  if (CGRectEqualToRect(v29, *MEMORY[0x1E695F050]))
  {
    v10 = 1;
LABEL_13:
    v11 = (v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect);
    if (CGRectIsNull(*(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect)))
    {
      [v6 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
    }

    else
    {
      v13 = *v11;
      v15 = v11[1];
      v17 = v11[2];
      v19 = v11[3];
    }

    v30.origin.x = v13;
    v30.origin.y = v15;
    v30.size.width = v17;
    v30.size.height = v19;
    if (!CGRectIsEmpty(v30))
    {
      v13 = UIRectInset(v13, v15, v17, v19, *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets), *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets + 24), *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets + 16), *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets + 8));
      v15 = v20;
      v17 = v21;
      v19 = v22;
    }

    [v6 convertRect:a1 toCoordinateSpace:{v13, v15, v17, v19}];
    if (v10)
    {
      [a2 putValue:a1 forCoordinateSpace:{v23, v24, v25, v26}];
    }
  }
}

uint64_t sub_1890E9E8C(uint64_t a1, uint64_t a2)
{

  sub_1890A28A4();
  if (v5)
  {
    v6 = v4;
    do
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(a1, a2, ObjectType, v6);
      swift_unknownObjectRelease();
      sub_1890A28A4();
      v6 = v8;
    }

    while (v9);
  }

  return sub_188E036A4();
}

uint64_t sub_1890E9F78(uint64_t a1, uint64_t a2)
{

  sub_1890A28A4();
  if (v5)
  {
    v6 = v4;
    do
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(a1, a2, ObjectType, v6);
      swift_unknownObjectRelease();
      sub_1890A28A4();
      v6 = v8;
    }

    while (v9);
  }

  return sub_188E036A4();
}

id sub_1890EA148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_requiresPocket] = 1;
  v7 = &v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect];
  v8 = *(MEMORY[0x1E695F050] + 16);
  *v7 = *MEMORY[0x1E695F050];
  v7[1] = v8;
  v9 = &v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_isCapsular] = 0;
  *&v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets] = UIEdgeInsetsZero;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = &v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers];
  *v10 = 0;
  v10[1] = 0;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_edge] = a2;
  *&v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v26 = sub_188A4B574;
  v27 = v18;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188A4A968;
  v25 = &block_descriptor_110;
  v19 = _Block_copy(&v22);

  if (a4)
  {
    v26 = a4;
    v27 = a5;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_188ABD010;
    v25 = &block_descriptor_3_3;
    a4 = _Block_copy(&v22);
  }

  [objc_opt_self() animateWithSpringDuration:a1 bounce:v19 initialSpringVelocity:a4 delay:a6 options:a7 animations:a8 completion:a9];
  _Block_release(a4);
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

_BYTE *static UIView.LayoutRegion.margins(cornerAdaptation:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 1;
  return result;
}

_BYTE *static UIView.LayoutRegion.readableContent(cornerAdaptation:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 2;
  return result;
}

void UIView.layoutGuide(for:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = [(UIView *)v1 _typedStorage];
  v6 = sub_18902B878();

  v52 = v3;
  if (*(v6 + 16))
  {
    sub_188E8B6A8(v3 | (v4 << 8));
    if (v7)
    {
      goto LABEL_19;
    }
  }

  v8 = [objc_allocWithZone(UILayoutGuide) init];
  [v2 addLayoutGuide_];
  v9 = 1;
  [v8 _setLockedToOwningView_];
  if (v4)
  {
    if (v4 == 1)
    {
      v9 = dyld_program_sdk_at_least();
    }

    else
    {
      v9 = 0;
    }
  }

  [v8 _setAllowsNegativeDimensions_];
  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v3 == 2;
  }

  v11 = v10;
  [v8 _setShouldBeArchived_];
  sub_1890EB5A8();
  v12 = sub_18A4A7258();

  [v8 setIdentifier_];

  v13 = [v2 _frameLayoutItem];
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v15 = [v8 topAnchor];
  v16 = [v14 topAnchor];
  if (!v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v16;
  v18 = [v15 constraintEqualToAnchor_];

  v19 = [v8 leftAnchor];
  v20 = [v14 leftAnchor];
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v20;
  v51 = v2;
  v22 = [v19 constraintEqualToAnchor_];

  v23 = [v14 bottomAnchor];
  if (!v23)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v23;
  v25 = [v8 bottomAnchor];
  v49 = [v24 constraintEqualToAnchor_];

  v26 = [v14 rightAnchor];
  if (v26)
  {
    v27 = v26;
    v28 = [v8 rightAnchor];
    v45 = [v27 constraintEqualToAnchor_];

    sub_1890EB5A8();
    MEMORY[0x18CFE22D0](1886352429, 0xE400000000000000);
    v29 = sub_18A4A7258();

    [v18 setIdentifier_];

    sub_1890EB5A8();
    MEMORY[0x18CFE22D0](0x7466656C2DLL, 0xE500000000000000);
    v30 = sub_18A4A7258();

    [v22 setIdentifier_];

    sub_1890EB5A8();
    MEMORY[0x18CFE22D0](0x6D6F74746F622DLL, 0xE700000000000000);
    v31 = sub_18A4A7258();

    [v49 setIdentifier_];

    sub_1890EB5A8();
    MEMORY[0x18CFE22D0](0x74686769722DLL, 0xE600000000000000);
    v32 = sub_18A4A7258();

    [v45 setIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18A64B810;
    *(v33 + 32) = v18;
    *(v33 + 40) = v22;
    *(v33 + 48) = v49;
    *(v33 + 56) = v45;
    sub_1890ECC04();
    v48 = v18;
    v47 = v22;
    v50 = v49;
    v46 = v45;
    v34 = sub_18A4A7518();
    [v8 _setSystemConstraints_];

    v35 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_188EA0D54(v35, v52 | (v4 << 8), isUniquelyReferenced_nonNull_native);

    v37 = [(UIView *)v51 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB28);
    v38 = swift_allocObject();
    *(v38 + 16) = v6;
    v39 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(&v37->super.isa + v39);
    *(&v37->super.isa + v39) = 0x8000000000000000;
    sub_188A40430(v38, &_s24LayoutGuideDictionaryKeyVN, v40);
    *(&v37->super.isa + v39) = v53;
    swift_endAccess();

    [v51 _updateDynamicLayoutGuideConstraintsIfNeeded];
    v41 = objc_opt_self();
    v42 = sub_18A4A7518();

    [v41 activateConstraints_];

    swift_unknownObjectRelease();
LABEL_19:
    if (*(v6 + 16))
    {
      v43 = sub_188E8B6A8(v52 | (v4 << 8));
      if (v44)
      {
        *(*(v6 + 56) + 8 * v43);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
}

double UIView.edgeInsets(for:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = [(UIView *)v1 _typedStorage];
  v6 = sub_18901F3F8();

  if (!v6)
  {
    type metadata accessor for _UIViewDynamicLayoutGuideSupport();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    sub_18A4A2C38();

    v7 = [(UIView *)v2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB30);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v9 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(&v7->super.isa + v9);
    *(&v7->super.isa + v9) = 0x8000000000000000;
    sub_188A40430(v8, &type metadata for _UIViewDynamicLayoutGuideSupport.Key, isUniquelyReferenced_nonNull_native);
    *(&v7->super.isa + v9) = v16;
    swift_endAccess();
  }

  swift_getKeyPath();
  sub_1890ECC9C();
  sub_18A4A2C08();

  if (!v4)
  {
    [v2 safeAreaInsets];
LABEL_7:
    v12 = v11;
    if (v3 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v4 == 1)
  {
    [v2 layoutMargins];
    goto LABEL_7;
  }

  [v2 layoutMargins];
  v12 = v13;
  _UIViewReadableWidthForView(v2);
  [v2 bounds];
  CGRectGetWidth(v17);
  if (v3 != 2)
  {
LABEL_10:
    sub_1890EB990();
    v12 = v14;
  }

LABEL_11:

  return v12;
}

void UIView.directionalEdgeInsets(for:)(__int16 *a1)
{
  v2 = *a1;
  UIView.edgeInsets(for:)(&v2);
  [v1 _shouldReverseLayoutDirection];

  _UIEdgeInsetsFromDirectionalEdgeInsets();
}

uint64_t sub_1890EB0E0(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  v6 = a3 + 0.3;
  if (v6 <= -1.0)
  {
    a4.n128_u64[0] = 0x7FF0000000000000;
  }

  else
  {
    a4.n128_u64[0] = 1.0;
    if (v6 >= 0.0)
    {
      if (v6 != 0.0)
      {
        if (v6 > 1.0)
        {
          v6 = 1.0;
        }

        a4.n128_f64[0] = 1.0 - v6;
      }
    }

    else
    {
      a4.n128_f64[0] = 1.0 / (v6 + 1.0);
    }
  }

  v7 = MEMORY[0x18CFE1B90](0.5, a4, 0.0);
  static UIView.animate(bridgedAnimation:animations:completion:)(v7, a1, a2, signpost_c2_entryLock_start, 0);
}

uint64_t sub_1890EB240()
{
  swift_getKeyPath();
  sub_1890ECC9C();
  sub_18A4A2C08();

  return *(v0 + 16);
}

uint64_t sub_1890EB2B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1890ECC9C();
  sub_18A4A2C08();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1890EB328(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1890ECC9C();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890EB3FC()
{
  v1 = OBJC_IVAR____TtC5UIKitP33_AADD5A9A7AC459E3971D298134A7167432_UIViewDynamicLayoutGuideSupport___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1890EB498()
{
  v1 = *v0;
  if (v0[1])
  {
    if (v0[1] == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x18CFE37E0](v2);
  if (v1 == 2)
  {
    return sub_18A4A88A8();
  }

  sub_18A4A88A8();
  return MEMORY[0x18CFE37E0](v1 & 1);
}

uint64_t sub_1890EB50C()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

uint64_t sub_1890EB55C()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

unint64_t sub_1890EB5A8()
{
  v1 = *v0;
  if (v0[1])
  {
    v2 = 0xD000000000000033;
    v3 = 0xD000000000000018;
    v4 = 0xD000000000000031;
    if ((v1 & 1) == 0)
    {
      v4 = 0xD000000000000033;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if ((v1 & 1) == 0)
    {
      v2 = 0xD000000000000035;
    }

    if (v1 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = v2;
    }

    if (v0[1] == 1)
    {
      return v3;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (v1)
    {
      v7 = 0xD000000000000032;
    }

    else
    {
      v7 = 0xD000000000000034;
    }

    if (v1 == 2)
    {
      return 0xD000000000000019;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t UIView.LayoutRegion.AdaptivityAxis.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t static UIView.LayoutRegion.== infix(_:_:)(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return sub_1890ECB3C(&v5, &v4) & 1;
}

uint64_t UIView.LayoutRegion.hashValue.getter()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

uint64_t sub_1890EB7F4()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

uint64_t sub_1890EB874()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

uint64_t sub_1890EB8BC(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return sub_1890ECB3C(&v5, &v4) & 1;
}

unint64_t sub_1890EB8F8()
{
  result = sub_188E8D0B8(MEMORY[0x1E69E7CC0]);
  qword_1ED48FE28 = result;
  return result;
}

uint64_t sub_1890EB920@<X0>(void *a1@<X8>)
{
  if (qword_1ED48FE20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED48FE28;
}

void sub_1890EB990()
{
  [v0 _safeAreaCornerInsets];
  [v0 _containerConcentricRadiusForCorner_];
  if (v1 > 0.0)
  {
    UIRoundToViewScale(v0);
  }

  [v0 _containerConcentricRadiusForCorner_];
  if (v2 > 0.0)
  {
    UIRoundToViewScale(v0);
  }

  [v0 _containerConcentricRadiusForCorner_];
  if (v3 > 0.0)
  {
    UIRoundToViewScale(v0);
  }

  [v0 _containerConcentricRadiusForCorner_];
  if (v4 > 0.0)
  {
    UIRoundToViewScale(v0);
  }
}

void sub_1890EC6BC()
{
  v1 = [(UIView *)v0 _typedStorage];
  v2 = sub_18901F3F8();

  if (v2)
  {
    swift_getKeyPath();
    sub_1890ECC9C();
    sub_18A4A2C08();

    swift_getKeyPath();
    sub_18A4A2C28();

    ++*(v2 + 16);
    swift_getKeyPath();
    sub_18A4A2C18();
  }
}

void sub_1890EC80C()
{
  v1 = [(UIView *)v0 _typedStorage];
  v2 = sub_18902B878();

  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = &selRef__suffixFrame;
  while (v6)
  {
LABEL_11:
    v10 = __clz(__rbit64(v6)) | (v3 << 6);
    v11 = *(*(v2 + 48) + 2 * v10);
    v12 = *(*(v2 + 56) + 8 * v10);
    v33 = v11;
    v13 = v12;
    v14 = UIView.edgeInsets(for:)(&v33);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v13 v8[224]];
    if (v21)
    {
      v22 = v21;
      sub_1890ECC04();
      v23 = sub_18A4A7548();

      if (v23 >> 62)
      {
        if (sub_18A4A7F68() < 4)
        {
LABEL_4:

          goto LABEL_5;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
      {
        goto LABEL_4;
      }

      v24 = v23 & 0xC000000000000001;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v25 = sub_188E4A9EC(0, v23);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          return;
        }

        v25 = *(v23 + 32);
      }

      v26 = v25;
      [v25 setConstant_];

      if (v24)
      {
        v27 = sub_188E4A9EC(1uLL, v23);
      }

      else
      {
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_38;
        }

        v27 = *(v23 + 40);
      }

      v28 = v27;
      [v27 setConstant_];

      if (v24)
      {
        v29 = sub_188E4A9EC(2uLL, v23);
      }

      else
      {
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_39;
        }

        v29 = *(v23 + 48);
      }

      v30 = v29;
      [v29 setConstant_];

      if (v24)
      {
        v31 = sub_188E4A9EC(3uLL, v23);
      }

      else
      {
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
        {
          goto LABEL_40;
        }

        v31 = *(v23 + 56);
      }

      v32 = v31;

      [v32 setConstant_];

      v8 = &selRef__suffixFrame;
    }

LABEL_5:
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1890ECB3C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1])
  {
    if (a1[1] == 1)
    {
      if (v4 == 1)
      {
        if (v2 == 2)
        {
          if (v3 == 2)
          {
            return 1;
          }
        }

        else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
        {
          return 1;
        }
      }
    }

    else if (v4 == 2)
    {
      if (v2 == 2)
      {
        if (v3 == 2)
        {
          return 1;
        }
      }

      else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
      {
        return 1;
      }
    }
  }

  else if (!a2[1])
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1890ECC04()
{
  result = qword_1ED48CFF0;
  if (!qword_1ED48CFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48CFF0);
  }

  return result;
}

uint64_t type metadata accessor for _UIViewDynamicLayoutGuideSupport()
{
  result = qword_1EA92F168;
  if (!qword_1EA92F168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1890ECC9C()
{
  result = qword_1EA92F178;
  if (!qword_1EA92F178)
  {
    type metadata accessor for _UIViewDynamicLayoutGuideSupport();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F178);
  }

  return result;
}

unint64_t sub_1890ECCF8()
{
  result = qword_1EA93CB38;
  if (!qword_1EA93CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB38);
  }

  return result;
}

unint64_t sub_1890ECD50()
{
  result = qword_1EA93CB40;
  if (!qword_1EA93CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB40);
  }

  return result;
}

uint64_t sub_1890ECDAC()
{
  result = sub_18A4A2C48();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1890ECE6C(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t sub_1890ECF04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1890ECFF8()
{
  result = qword_1EA93CB48;
  if (!qword_1EA93CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB48);
  }

  return result;
}

void *UIBackgroundExtensionView.contentView.getter()
{
  v1 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void UIBackgroundExtensionView.contentView.setter(void *a1)
{
  v3 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1890ED1E4(v4);
}

void sub_1890ED1E4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (v5 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  [v1 endContentViewObservation];
  v6 = [a1 superview];
  if (v6)
  {
    v7 = v6;
    sub_188A34624(0, &qword_1ED48F680);
    v8 = v1;
    v9 = sub_18A4A7C88();

    if (v9)
    {
      [a1 removeFromSuperview];
    }
  }

  v10 = *&v2[v4];
  if (v10)
  {
    v11 = *&v2[OBJC_IVAR___UIBackgroundExtensionView_effectsView];
    if (v11)
    {
      [v2 insertSubview:v10 belowSubview:v11];
    }

    else
    {
      [v2 addSubview_];
    }

    [v2 observeContentViewIfNeeded];
  }
}

uint64_t UIBackgroundExtensionView.automaticallyPlacesContentView.getter()
{
  v1 = OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView;
  swift_beginAccess();
  return *(v0 + v1);
}

id UIBackgroundExtensionView.automaticallyPlacesContentView.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void __swiftcall UIBackgroundExtensionView.init(frame:)(UIBackgroundExtensionView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id UIBackgroundExtensionView.init(frame:)()
{
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_contentView) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView) = 1;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_effectsView) = 0;
  v5.super_class = UIBackgroundExtensionView;
  v1 = objc_msgSendSuper2(&v5, sel_initWithFrame_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for UITraitLayoutDirection;
  *(inited + 40) = &protocol witness table for UITraitLayoutDirection;
  v3 = v1;
  UIView.registerForTraitChanges(_:action:)(inited, sel_updateEffectsView);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  return v3;
}

void UIBackgroundExtensionView.init(coder:)()
{
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_contentView) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView) = 1;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_effectsView) = 0;
  sub_18A4A8398();
  __break(1u);
}

void sub_1890ED7B8()
{
  v1 = v0;
  v2 = sub_18A4A4CD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v73[-v10];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v73[-v14];
  v16 = [v1 contentView];
  if (!v16)
  {
    return;
  }

  v77 = v16;
  [v16 bounds];
  if (v18 == 0.0 && v17 == 0.0)
  {
    v19 = v77;

    return;
  }

  v75 = [v77 layer];
  v74 = v1[OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects];
  [v1 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [v77 frame];
  v32 = _UIEdgeInsetsFromOuterToInnerRect(v21, v23, v25, v27, v28, v29, v30, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v76 = v1;
  v39 = [v1 traitCollection];
  v40 = [v39 layoutDirection];

  v41 = v3[13];
  v42 = MEMORY[0x1E697E7D0];
  v43 = MEMORY[0x1E697E7D8];
  if (v40)
  {
    if (v40 != 1)
    {
      v41(v15, *MEMORY[0x1E697E7D0], v2);
      goto LABEL_12;
    }

    v42 = MEMORY[0x1E697E7D8];
  }

  v41(v8, *v42, v2);
  v44 = v3[4];
  v44(v11, v8, v2);
  v44(v15, v11, v2);
  v43 = MEMORY[0x1E697E7D8];
LABEL_12:
  v41(v5, *v43, v2);
  v45 = sub_18A4A4CC8();
  v46 = v3[1];
  v46(v5, v2);
  v46(v15, v2);
  if (v45)
  {
    v47 = v34;
  }

  else
  {
    v47 = v38;
  }

  if (v45)
  {
    v48 = v38;
  }

  else
  {
    v48 = v34;
  }

  v50 = v75;
  v49 = v76;
  *&v78 = v75;
  BYTE8(v78) = v74;
  *&v79 = v32;
  *(&v79 + 1) = v48;
  *&v80 = v36;
  *(&v80 + 1) = v47;
  v51 = OBJC_IVAR___UIBackgroundExtensionView_effectsView;
  v52 = *&v76[OBJC_IVAR___UIBackgroundExtensionView_effectsView];
  if (v52)
  {
    v53 = v52 + *((*MEMORY[0x1E69E7D40] & *v52) + 0x68);
    swift_beginAccess();
    v54 = *v53;
    v55 = v79;
    *v53 = v78;
    *(v53 + 1) = v55;
    *(v53 + 2) = v80;
    v56 = v52;
    v57 = v50;

    sub_18A4A5528();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF10);
    sub_1890EE2B4();
    sub_18A4A58B8();
  }

  else
  {
    v58 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF10));
    v59 = v50;
    v60 = sub_1890F8CE8(&v78);
    v61 = *&v49[v51];
    *&v49[v51] = v60;

    v62 = *&v49[v51];
    if (!v62)
    {
      goto LABEL_31;
    }

    v63 = *(v62 + *((*MEMORY[0x1E69E7D40] & *v62) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v65 = Strong;
      v66 = v62;
      v67 = v63;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v68 = v62;
      v69 = v63;
    }

    if (sub_18A4A46F8())
    {

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890EE2B4();
      v70 = v62;
      sub_18A4A4708();
    }

    v71 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
    swift_beginAccess();
    v72 = *&v63[v71];
    *&v63[v71] = 0;
    sub_188F2461C(v72);

    if (!*&v49[v51])
    {
LABEL_31:
      __break(1u);
      return;
    }

    [v49 addSubview_];
  }

  [v49 setNeedsLayout];
}

Swift::Void __swiftcall UIBackgroundExtensionView.layoutSubviews()()
{
  v31.super_class = UIBackgroundExtensionView;
  objc_msgSendSuper2(&v31, sel_layoutSubviews);
  if ([v0 automaticallyPlacesContentView])
  {
    v1 = [v0 contentView];
    if (v1)
    {
      v2 = v1;
      [v0 bounds];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      [v0 safeAreaInsets];
      [v2 setFrame_];
    }
  }

  v15 = [v0 contentView];
  v16 = *&v0[OBJC_IVAR___UIBackgroundExtensionView_effectsView];
  if (v15)
  {
    v17 = v15;
    if (v16)
    {
      v18 = v16;
      [v0 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v17 frame];
      v34.origin.x = v27;
      v34.origin.y = v28;
      v34.size.width = v29;
      v34.size.height = v30;
      v32.origin.x = v20;
      v32.origin.y = v22;
      v32.size.width = v24;
      v32.size.height = v26;
      v33 = CGRectUnion(v32, v34);
      [v18 setFrame_];
    }
  }

  else
  {
    if (!v16)
    {
      return;
    }

    v17 = v16;
    [v0 bounds];
    [v17 setFrame_];
  }
}

double _UIEdgeInsetsFromOuterToInnerRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v19 = MinY - CGRectGetMinY(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMinX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMaxY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetMaxY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMaxX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetMaxX(v27);
  return v19;
}

unint64_t sub_1890EE2B4()
{
  result = qword_1EA92F9E8;
  if (!qword_1EA92F9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93CF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F9E8);
  }

  return result;
}

uint64_t sub_1890EE318(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1890EE360(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1890EE3D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_18A4A3168();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = 0u;
  v15 = 0u;
  v16 = 1;
  v8 = v3;
  sub_18A4A3158();
  sub_18A4A5BC8();
  v9 = *(v1 + 16);
  v12 = *(v1 + 32);
  *&v11[8] = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB80);
  sub_18A4A57C8();
  return (*(v5 + 32))(a1, v7, v4);
}

unint64_t sub_1890EE51C()
{
  result = qword_1EA92F828;
  if (!qword_1EA92F828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93CB80);
    sub_1890EE5A8();
    sub_1890EE5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F828);
  }

  return result;
}

unint64_t sub_1890EE5A8()
{
  result = qword_1EA92FAB0;
  if (!qword_1EA92FAB0)
  {
    sub_18A4A3168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FAB0);
  }

  return result;
}

unint64_t sub_1890EE5F4()
{
  result = qword_1EA92F808;
  if (!qword_1EA92F808)
  {
    sub_18A4A57D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F808);
  }

  return result;
}

uint64_t sub_1890EE674(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + v9;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_30;
  }

  v13 = ((v11 + ((v11 + ((v9 + 8) & ~v9)) & ~v9) + 1) & ~v9) + v10;
  v14 = 8 * v13;
  if (v13 > 3)
  {
    goto LABEL_12;
  }

  v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
  if (HIWORD(v16))
  {
    v15 = *(a1 + v13);
    if (v15)
    {
      goto LABEL_19;
    }

LABEL_30:
    v18 = (a1 + v9 + 8) & ~v9;
    if (v7 >= 0xFE)
    {
      v19 = (*(v5 + 48))(v18);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }

    v21 = *(((v11 + v18) & ~v9) + v10);
    if (v21 >= 2)
    {
      return ((v21 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

  if (v16 > 0xFF)
  {
    v15 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (v16 < 2)
  {
    goto LABEL_30;
  }

LABEL_12:
  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_19:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v17) + 1;
}

void sub_1890EE858(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v12 + v11 + ((v12 + v11 + ((v11 + 8) & ~v11)) & ~v11) + 1) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = (&a1[v11 + 8] & ~v11);
  if (v9 < 0xFE)
  {
    *((&v21[v12 + v11] & ~v11) + v12) = a2 + 1;
  }

  else if (v9 >= a2)
  {
    v25 = *(v7 + 56);
    v26 = a2 + 1;
    v27 = &a1[v11 + 8] & ~v11;

    v25(v27, v26);
  }

  else
  {
    if (v12 <= 3)
    {
      v22 = ~(-1 << (8 * v12));
    }

    else
    {
      v22 = -1;
    }

    if (v12)
    {
      v23 = v22 & (~v9 + a2);
      if (v12 <= 3)
      {
        v24 = v12;
      }

      else
      {
        v24 = 4;
      }

      bzero(v21, v12);
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          *v21 = v23;
          v21[2] = BYTE2(v23);
        }

        else
        {
          *v21 = v23;
        }
      }

      else if (v24 == 1)
      {
        *v21 = v23;
      }

      else
      {
        *v21 = v23;
      }
    }
  }
}

uint64_t sub_1890EEB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, double a8@<D0>)
{
  v265 = a4;
  v263 = a2;
  v259 = a1;
  v261 = a7;
  v13 = *(a6 + 16);
  v12 = *(a6 + 24);
  v233 = _s14FrictionBounceVMa();
  v232 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v231 = &v209 - v14;
  v15 = type metadata accessor for RunningInProcessAnimation();
  v258 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v237 = &v209 - v16;
  v242 = _s15InstantlyStableVMa();
  v241 = *(v242 - 8);
  v17 = MEMORY[0x1EEE9AC00](v242);
  v230 = &v209 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v238 = &v209 - v20;
  v262 = a6;
  v224 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v222 = &v209 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = _s6SpringVMa();
  v239 = *(v240 - 8);
  v22 = MEMORY[0x1EEE9AC00](v240);
  v229 = &v209 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v235 = &v209 - v24;
  v260 = sub_18A4A7D38();
  v25 = *(v260 - 8);
  v26 = MEMORY[0x1EEE9AC00](v260);
  v246 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v227 = &v209 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v250 = &v209 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v226 = &v209 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v256 = &v209 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v209 - v37;
  v39 = *(v13 - 8);
  v40 = MEMORY[0x1EEE9AC00](v36);
  v236 = &v209 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v223 = &v209 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v225 = &v209 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v234 = &v209 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v251 = &v209 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v252 = &v209 - v50;
  v257 = v15;
  v51 = a5;
  v255 = sub_18A4A7D38();
  v254 = *(v255 - 8);
  v52 = MEMORY[0x1EEE9AC00](v255);
  v249 = &v209 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v245 = &v209 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v247 = &v209 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v209 - v58;
  v244 = _s7SwiftUIVMa();
  v243 = *(v244 - 8);
  v60 = MEMORY[0x1EEE9AC00](v244);
  v228 = &v209 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v209 - v62;
  v64 = *(a6 + 44);
  v248 = a3;
  v65 = v264;
  *(v264 + v64) = a3;
  v66 = v65;
  v67 = *(v12 + 40);
  v253 = v12;
  if ((v67(v51, v13, v12) & 1) == 0)
  {
    v76 = v262;
    v77 = *(v262 + 48);
    v78 = *(v25 + 8);
    v79 = v51;
    v80 = v260;
    v78(v66 + v77, v260);
    v81 = *(v39 + 56);
    v81(v66 + v77, 1, 1, v13);
    v82 = *(v76 + 36);
    v78(v66 + v82, v80);
    v81(v66 + v82, 1, 1, v13);
    *v66 = 0.0;
    v83 = *(v76 + 40);
    v78(v66 + v83, v80);
    v81(v66 + v83, 1, 1, v13);
    v84 = v256;
    v81(v256, 1, 1, v13);
    sub_1890F0E24(v263, v79, v84, v79, v76, v261);
    return (v78)(v84, v80);
  }

  v221 = v39;
  v68 = v262;
  v220 = v25;
  v69 = v263;
  sub_188AA72A8(v263, &v267);
  if (v269 == 2)
  {
    v70 = v267;
    v71 = BYTE8(v267);
    v72 = v254;
    (*(v254 + 16))(v59, v259, v255);
    v73 = v258;
    v74 = v257;
    if ((*(v258 + 48))(v59, 1, v257) == 1)
    {
      v75 = v255;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v88 = *(v243 + 32);
        v89 = v244;
        v88(v63, v59, v244);
        sub_188FBB134(v70, v51, v89);

        v88(v261, v63, v89);
        return swift_storeEnumTagMultiPayload();
      }

      v72 = v73;
      v75 = v74;
    }

    (*(v72 + 8))(v59, v75);
    v100 = *(v221 + 16);
    v101 = v252;
    v100(v252, v265, v13);
    v102 = v251;
    v100(v251, v51, v13);
    sub_188FBB008(v70, v101, v102, v71, v13, v261);
    return swift_storeEnumTagMultiPayload();
  }

  sub_188AA7808(&v267);
  sub_188AA72A8(v69, &v267);
  if (v269 == 1)
  {
    v272 = *&v268[16];
    v273 = *&v268[32];
    v274 = *&v268[48];
    v270 = v267;
    v271 = *v268;
    sub_188A8F66C(&v270, &v267);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558);
    v86 = v252;
    swift_dynamicCast();
    sub_188A8F66C((&v272 + 8), v266);
    v87 = v251;
    swift_dynamicCast();
    sub_188FB5D30(v86, v87, v13, v261);
    return swift_storeEnumTagMultiPayload();
  }

  v90 = v38;
  sub_188AA7808(&v267);
  v91 = v260;
  v92 = v220;
  v93 = v264;
  v94 = v68;
  v219 = v13;
  if (v248)
  {
    v95 = CACurrentMediaTime();
    v96 = *v93;
    if (a8 * 0.9 < v95 - *v93)
    {
      if (v96 == 0.0)
      {
        v97 = *(v92 + 8);
        v98 = v13;
        v99 = v221;
      }

      else
      {
        v103 = *(v92 + 16);
        v217 = *(v68 + 48);
        v213 = v103;
        v212 = v92 + 16;
        (v103)(v90, v93 + v217, v91, v96, a8 * 0.9);
        v104 = v221 + 48;
        v215 = *(v221 + 48);
        LODWORD(v214) = v215(v90, 1, v13);
        v105 = *(v92 + 8);
        v216 = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v218 = v105;
        v105(v90, v91);
        v106 = v256;
        if (v214 == 1)
        {
          v98 = v219;
          sub_18A4A8408();
          v99 = v221;
          (*(v221 + 56))(v106, 0, 1, v98);
          (*(v92 + 40))(v93 + v217, v106, v91);
          v94 = v262;
        }

        else
        {
          v107 = *(v221 + 16);
          v108 = v219;
          v211 = v221 + 16;
          v210 = v107;
          v107(v234, v51, v219);
          v109 = v226;
          v213(v226, v93 + *(v262 + 40), v91);
          v214 = v104;
          v110 = v215(v109, 1, v108);
          if (v110 == 1)
          {
            v218(v109, v91);
            v111 = *(*(v253 + 8) + 8);
            v92 = v220;
            v112 = v219;
          }

          else
          {
            v113 = v221;
            v114 = v225;
            v115 = v219;
            (*(v221 + 32))(v225, v109, v219);
            v111 = *(*(v253 + 8) + 8);
            sub_18A4A83F8();
            (*(v113 + 8))(v114, v115);
            v92 = v220;
            v112 = v115;
          }

          v226 = v111;
          sub_18A4A4E98();
          v93 = v264;
          v116 = v112;
          v117 = v217;
          v118 = v215;
          v94 = v68;
          v98 = v116;
          if (!v215(v264 + v217, 1, v116))
          {
            sub_18A4A4E98();
          }

          v119 = v118(v93 + v117, 1, v116);
          v91 = v260;
          if (v119)
          {
            v99 = v221;
            (*(v221 + 8))(v234, v98);
          }

          else
          {
            v120 = v252;
            v210(v252, v234, v116);
            sub_18A4A4E98();
            sub_18A4A83E8();
            v121 = *(v221 + 8);
            v122 = v120;
            v94 = v262;
            v121(v122, v98);
            v121(v234, v98);
            v99 = v221;
          }
        }

        v97 = v218;
      }

      v123 = *(v94 + 36);
      v97(v93 + v123, v91);
      (*(v99 + 16))(v93 + v123, v265, v98);
      (*(v99 + 56))(v93 + v123, 0, 1, v98);
      *v93 = v95;
    }
  }

  v124 = *(v94 + 40);
  (*(v92 + 32))(v250, v93 + v124, v91);
  v125 = *(v221 + 16);
  v234 = v51;
  v126 = v221;
  v218 = v125;
  (v125)(v93 + v124, v51, v13);
  v127 = *(v126 + 56);
  v226 = (v126 + 56);
  v225 = v127;
  (v127)(v93 + v124, 0, 1, v13);
  v128 = v254;
  v129 = *(v254 + 16);
  v130 = v247;
  v131 = v255;
  v129(v247, v259, v255);
  v132 = *(v258 + 48);
  v133 = v257;
  if (v132(v130, 1, v257) == 1)
  {
    (*(v128 + 8))(v130, v131);
    v134 = v249;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v134 = v249;
    if (EnumCaseMultiPayload)
    {
      (*(v258 + 8))(v130, v133);
    }

    else
    {
      v136 = v235;
      (*(v239 + 32))(v235, v130, v240);
      sub_188AA72A8(v263, &v267);
      if (v269 == 3 && v267 == 1)
      {
        v137 = vorrq_s8(vorrq_s8(*&v268[8], *&v268[40]), vorrq_s8(*&v268[24], *&v268[56]));
        if (!(*&vorr_s8(*v137.i8, *&vextq_s8(v137, v137, 8uLL)) | *v268 | *(&v267 + 1)))
        {
          sub_188AA7808(&v267);
          v138 = v240;
          (*(v221 + 24))(&v136[*(v240 + 44)], v234, v219);
          v139 = v239;
          (*(v239 + 16))(v261, v136, v138);
          swift_storeEnumTagMultiPayload();
          (*(v139 + 8))(v136, v138);
          return (*(v220 + 8))(v250, v260);
        }
      }

      sub_188AA7808(&v267);
      sub_188AA72A8(v263, &v267);
      v133 = v257;
      if (!v269)
      {
        v272 = *&v268[16];
        v273 = *&v268[32];
        v274 = *&v268[48];
        v275 = *&v268[64];
        v270 = v267;
        v271 = *v268;
        v182 = v260;
        v183 = v227;
        v184 = v221;
        if ((v248 & 1) == 0)
        {
          if ((*(&v272 + 1) & 0x8000000000000000) != 0 && *(&v274 + 1) > 0.0)
          {
            v185 = v224;
            v186 = v222;
            v187 = v262;
            (*(v224 + 16))(v222, v264, v262);
            sub_1890F0BA0(&v136[*(v240 + 56)], v187);
            (*(v185 + 8))(v186, v187);
          }

          v188 = *(v262 + 48);
          v189 = v264;
          (*(v220 + 8))(v264 + v188, v182);
          (v225)(v189 + v188, 1, 1, v219);
          *v189 = 0.0;
        }

        if ((*(&v272 + 1) & 0x8000000000000000) != 0 && v275 > 0.0)
        {
          v190 = *(v184 + 48);
          if (v190(v250, 1, v219) != 1)
          {
            v191 = v184;
            v192 = v220;
            (*(v220 + 16))(v183, v250, v182);
            v193 = v219;
            if (v190(v183, 1, v219) == 1)
            {
              (*(v192 + 8))(v183, v182);
              v184 = v191;
            }

            else
            {
              (*(v191 + 32))(v223, v183, v193);
              v265 = *(*(*(v253 + 8) + 8) + 8);
              v200 = v251;
              sub_18A4A83D8();
              v201 = v252;
              (v218)(v252, v200, v193);
              sub_18A4A4E98();
              v202 = v191;
              v203 = *(v191 + 8);
              v204 = v200;
              v184 = v202;
              v203(v204, v193);
              sub_18A4A83E8();
              v203(v201, v193);
              v203(v223, v193);
            }
          }
        }

        v205 = v184;
        v206 = v240;
        v207 = sub_188F41B18(&v270, v240);
        (*(v205 + 24))(&v136[*(v206 + 44)], v234, v219, v207);
        v208 = v239;
        (*(v239 + 16))(v261, v136, v206);
        swift_storeEnumTagMultiPayload();
        (*(v208 + 8))(v136, v206);
        return (*(v220 + 8))(v250, v182);
      }

      sub_188AA7808(&v267);
      (*(v239 + 8))(v136, v240);
      v131 = v255;
    }
  }

  v140 = v245;
  v129(v245, v259, v131);
  v141 = v132(v140, 1, v133);
  v142 = v246;
  if (v141 == 1)
  {
    (*(v254 + 8))(v140, v131);
    goto LABEL_53;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v258 + 8))(v140, v133);
    goto LABEL_53;
  }

  (*(v241 + 32))(v238, v140, v242);
  sub_188AA72A8(v263, &v267);
  if (v269 == 3 && (v143 = vorrq_s8(vorrq_s8(*&v268[8], *&v268[40]), vorrq_s8(*&v268[24], *&v268[56])), !(*&vorr_s8(*v143.i8, *&vextq_s8(v143, v143, 8uLL)) | *v268 | *(&v267 + 1) | v267)) || (sub_188AA7808(&v267), sub_188AA72A8(v263, &v267), v269 == 3) && v267 == 1 && (v144 = vorrq_s8(vorrq_s8(*&v268[8], *&v268[40]), vorrq_s8(*&v268[24], *&v268[56])), !(*&vorr_s8(*v144.i8, *&vextq_s8(v144, v144, 8uLL)) | *v268 | *(&v267 + 1))))
  {
    sub_188AA7808(&v267);
    v145 = v238;
    (*(v221 + 24))(v238, v234, v219);
    v146 = v241;
    v147 = v242;
    (*(v241 + 16))(v261, v145, v242);
    swift_storeEnumTagMultiPayload();
    (*(v146 + 8))(v145, v147);
    return (*(v220 + 8))(v250, v260);
  }

  sub_188AA7808(&v267);
  v148 = v263;
  sub_188AA72A8(v263, &v267);
  if (v269)
  {
    sub_188AA7808(&v267);
    (*(v241 + 8))(v238, v242);
    v142 = v246;
LABEL_53:
    v129(v134, v259, v131);
    v149 = 1;
    if (v132(v134, 1, v133) == 1)
    {
      v150 = v254;
      v133 = v131;
      v151 = v261;
      v152 = v260;
      v153 = v220;
      v154 = v263;
      v155 = v219;
LABEL_65:
      (*(v150 + 8))(v134, v133);
      (v225)(v142, v149, 1, v155);
      sub_1890F0E24(v154, v265, v142, v234, v262, v151);
      v181 = *(v153 + 8);
      v181(v142, v152);
      return (v181)(v250, v152);
    }

    v156 = v237;
    (*(v258 + 16))(v237, v134, v133);
    v157 = swift_getEnumCaseMultiPayload();
    v152 = v260;
    v153 = v220;
    if (v157 > 1)
    {
      if (v157 != 2)
      {
        v175 = v241;
        v176 = v230;
        v177 = v156;
        v178 = v242;
        (*(v241 + 32))(v230, v177, v242);
        v179 = v236;
        v155 = v219;
        (v218)(v236, &v176[*(v178 + 36)], v219);
        v180 = v178;
        v165 = v179;
        v134 = v249;
        (*(v175 + 8))(v176, v180);
        goto LABEL_63;
      }

      v166 = v243;
      v167 = v228;
      v168 = v244;
      (*(v243 + 32))(v228, v156, v244);
      v165 = v236;
      sub_188FBAC58(v168, v236);
      (*(v166 + 8))(v167, v168);
    }

    else
    {
      if (!v157)
      {
        v158 = v239;
        v159 = v229;
        v160 = v156;
        v161 = v240;
        (*(v239 + 32))(v229, v160, v240);
        v162 = v236;
        v155 = v219;
        (v218)(v236, &v159[*(v161 + 48)], v219);
        v163 = v159;
        v134 = v249;
        v164 = v161;
        v165 = v162;
        (*(v158 + 8))(v163, v164);
LABEL_63:
        v151 = v261;
        v154 = v263;
        goto LABEL_64;
      }

      v169 = v232;
      v170 = v231;
      v171 = v156;
      v172 = v233;
      (*(v232 + 32))(v231, v171, v233);
      v173 = v236;
      sub_188FB5CFC();
      v174 = v172;
      v165 = v173;
      (*(v169 + 8))(v170, v174);
    }

    v151 = v261;
    v154 = v263;
    v155 = v219;
LABEL_64:
    (*(v221 + 32))(v142, v165, v155);
    v149 = 0;
    v150 = v258;
    goto LABEL_65;
  }

  v194 = v242;
  v195 = v238;
  v196 = v256;
  v197 = v219;
  (v218)(v256, &v238[*(v242 + 36)], v219);
  (v225)(v196, 0, 1, v197);
  sub_1890F0E24(v148, v265, v196, v234, v262, v261);
  v198 = *(v220 + 8);
  v199 = v260;
  v198(v196, v260);
  (*(v241 + 8))(v195, v194);
  return (v198)(v250, v199);
}

uint64_t sub_1890F0BA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*(v6 + 16))(v9, v2 + *(a2 + 48), v5);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 32))(v15, v9, v4);
  (*(v10 + 16))(v13, v15, v4);
  sub_18A4A4E98();
  sub_18A4A83E8();
  v17 = *(v10 + 8);
  v17(v13, v4);
  return (v17)(v15, v4);
}

uint64_t sub_1890F0E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v59 = a4;
  v51 = a3;
  v54 = a2;
  v56 = a1;
  v57 = a6;
  v7 = *(a5 + 16);
  v55 = sub_18A4A7D38();
  v52 = *(v55 - 8);
  v8 = MEMORY[0x1EEE9AC00](v55);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - v11;
  v60 = *(a5 + 24);
  v13 = _s6SpringVMa();
  v50 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - v15;
  v58 = *(v7 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v48 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v48 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v48 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v53 = &v48 - v29;
  sub_188AA72A8(v56, v61);
  if (v63)
  {
    if (v63 == 2)
    {
      v30 = *&v61[0];
      v31 = *(v58 + 16);
      v32 = BYTE8(v61[0]);
      v33 = v53;
      v31(v53, v54, v7);
      v31(v28, v59, v7);
      sub_188FBB008(v30, v33, v28, v32, v7, v57);
      type metadata accessor for RunningInProcessAnimation();
    }

    else
    {
      sub_188AA7808(v61);
      v40 = v58;
      (*(v58 + 16))(v22, v59, v7);
      v41 = v52;
      (*(v52 + 16))(v10, v51, v55);
      v42 = *(v40 + 48);
      if (v42(v10, 1, v7) == 1)
      {
        sub_18A4A8408();
        if (v42(v10, 1, v7) != 1)
        {
          (*(v41 + 8))(v10, v55);
        }
      }

      else
      {
        (*(v40 + 32))(v19, v10, v7);
      }

      sub_188E6A004(v22, v19, v7, v57);
      type metadata accessor for RunningInProcessAnimation();
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v49 = a5;
    v56 = v13;
    v65 = v61[2];
    v66 = v61[3];
    v67 = v61[4];
    v68 = v62;
    v64[0] = v61[0];
    v64[1] = v61[1];
    v34 = v58;
    v35 = *(v58 + 16);
    v36 = v53;
    v35(v53, v54, v7);
    v48 = v35;
    v35(v28, v59, v7);
    sub_188F3D738(v64, v36, v28, v7, v16);
    v37 = v52;
    v38 = v55;
    (*(v52 + 16))(v12, v51, v55);
    if ((*(v34 + 48))(v12, 1, v7) == 1)
    {
      (*(v37 + 8))(v12, v38);
      v39 = v56;
    }

    else
    {
      (*(v34 + 32))(v25, v12, v7);
      v39 = v56;
      (*(v34 + 40))(&v16[*(v56 + 48)], v25, v7);
    }

    v43 = v50;
    if ((*(&v65 + 1) & 0x8000000000000000) != 0)
    {
      v44 = v68;
      if (*(&v67 + 1) > 0.0)
      {
        sub_1890F0BA0(&v16[*(v39 + 56)], v49);
      }

      if (v44 > 0.0)
      {
        sub_18A4A83D8();
        v45 = v53;
        v48(v53, v28, v7);
        sub_18A4A4E98();
        v46 = *(v58 + 8);
        v46(v28, v7);
        v39 = v56;
        sub_18A4A83E8();
        v46(v45, v7);
      }
    }

    (*(v43 + 16))(v57, v16, v39);
    type metadata accessor for RunningInProcessAnimation();
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 8))(v16, v39);
  }
}

id sub_1890F1664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_18A4A7258();
  v11[4] = a3;
  v11[5] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188DF2768;
  v11[3] = a4;
  v8 = _Block_copy(v11);
  v9 = [v6 initWithIdentifier:v7 lightSourceViewProvider:v8];

  _Block_release(v8);

  return v9;
}

id sub_1890F17EC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18A4A7258();
  v5[4] = sub_1890F18E0;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188DF2768;
  v5[3] = &block_descriptor_3_4;
  v2 = _Block_copy(v5);
  v3 = [v0 initWithIdentifier:v1 lightSourceViewProvider:v2];

  _Block_release(v2);

  return v3;
}

id sub_1890F1944()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18A4A7258();
  v5[4] = sub_1890F1A38;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188DF2768;
  v5[3] = &block_descriptor_112;
  v2 = _Block_copy(v5);
  v3 = [v0 initWithIdentifier:v1 lightSourceViewProvider:v2];

  _Block_release(v2);

  return v3;
}

char *sub_1890F1A9C(int *a1, double a2, double a3, double a4, double a5)
{
  v9 = *a1;
  v10 = objc_allocWithZone(type metadata accessor for _UIIntelligenceNoisyLightView());
  v11 = sub_18912B9B8(v9 & 1, a2, a3, a4, a5);
  [*&v11[OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_noiseView] _setVisibilityExternallyManaged_];
  [*&v11[OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_lightView] _setVisibilityExternallyManaged_];
  return v11;
}

char *sub_1890F1B48(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18A64B810;
  *(v8 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.58 blue:0.905 alpha:1.0];
  *(v8 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.69 green:0.415 blue:0.901 alpha:1.0];
  *(v8 + 48) = [objc_allocWithZone(UIColor) initWithRed:0.89 green:0.243 blue:0.352 alpha:1.0];
  *(v8 + 56) = [objc_allocWithZone(UIColor) initWithRed:0.929 green:0.588 blue:0.223 alpha:1.0];
  *&v19 = v8;
  *(&v19 + 1) = 60;
  v20 = xmmword_18A655620;
  v22 = 0;
  v23 = 0;
  v21 = 0x3FE0000000000000;
  LOBYTE(v24) = 0;
  v25 = 0x4040000000000000;
  LODWORD(v26) = 0;
  v9 = objc_allocWithZone(type metadata accessor for _UICloudChamber());

  v10 = _UICloudChamber.init(frame:configuration:)(&v19, a1, a2, a3, a4);
  v11 = v10;
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v18 = v10;
      v14 = sub_188E48DA0(0, v8);
    }

    else
    {
      v12 = *(v8 + 32);
      v13 = v10;
      v14 = v12;
    }

    v15 = v14;
  }

  else
  {
    v16 = v10;
    v15 = 0;
  }

  [v11 setBackgroundColor_];

  return v11;
}

unint64_t sub_1890F1D8C()
{
  result = qword_1EA93CB88;
  if (!qword_1EA93CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB88);
  }

  return result;
}

unint64_t sub_1890F1DE0()
{
  result = qword_1EA93CB90;
  if (!qword_1EA93CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB90);
  }

  return result;
}

unint64_t sub_1890F1E58()
{
  result = qword_1EA93CB98;
  if (!qword_1EA93CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB98);
  }

  return result;
}

unint64_t sub_1890F1EB0()
{
  result = qword_1EA93CBA0;
  if (!qword_1EA93CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CBA0);
  }

  return result;
}

unint64_t sub_1890F1F08()
{
  result = qword_1EA93CBA8;
  if (!qword_1EA93CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CBA8);
  }

  return result;
}

uint64_t sub_1890F1F8C(uint64_t a1)
{
  v2 = sub_18A4A2D48();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_18A4A4F48();
}

uint64_t sub_1890F2054@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18A4A4F78();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1890F20AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18A4A2D68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *MEMORY[0x1E6999C48];
  v8 = *(v3 + 104);
  v9 = v8(v20 - v6, v7, v2, v5);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v8(v20 - v6, v7, v2, v10);
  sub_18A4A31E8();
  v11 = type metadata accessor for DesignLibraryStepper();
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v3 + 16))(v20 - v6, v20[1] + v13, v2, v12);
  sub_18A4A3208();
  sub_18A4A31F8();
  sub_18A4A31D8();
  sub_18A4A31C8();
  LOBYTE(v2) = dyld_program_sdk_at_least() ^ 1;
  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CCF0) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9394D8);
  sub_1890534C0(v15 + *(v16 + 28));
  *v15 = KeyPath;
  v17 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CD00);
  v19 = a1 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = v2;
  return result;
}

void sub_1890F2668()
{
  v1 = v0;
  v2 = type metadata accessor for DesignLibraryStepper();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 _shouldReverseLayoutDirection];
  *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_isRTL) = v6;
  v7 = *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed);
  v8 = *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled);
  v9 = *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled);
  v10 = sub_18A4A2D68();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v7 & 1) != 0 || *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed) == 1)
  {
    v15 = MEMORY[0x1E6999C50];
  }

  else
  {
    v15 = MEMORY[0x1E6999C48];
  }

  (*(v11 + 104))(v14, *v15, v10, v12);
  *v5 = v7;
  v5[1] = v8;
  v5[2] = v9;
  (*(v11 + 32))(&v5[*(v2 + 28)], v14, v10);
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CD10));
  v17 = sub_1890F8FB4(v5);
  sub_1890F3FD8(v17);
}

id sub_1890F2860()
{
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl] = 0;
  v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isEnabled] = 1;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_value] = 0;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue] = 0;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue] = 0x4024000000000000;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue] = 0x3FF0000000000000;
  v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isContinuous] = 0;
  v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps] = 0;
  v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_autorepeat] = 1;
  v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isRTL] = 0;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView] = 0;
  v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed] = 0;
  v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed] = 0;
  v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled] = 1;
  v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled] = 1;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer] = 0;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_timerDelay] = 0x3FE0000000000000;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_fastTimerDelay] = 0x3FB999999999999ALL;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_superFastTimerDelay] = 0x3FA999999999999ALL;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_fastStartRepeatCount] = 5;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_superFastStartRepeatCount] = 20;
  *&v0[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount] = 0;
  v1 = xmmword_1EA93CBB0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UIStepperDesignLibraryVisualElement();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, v1);
  sub_1890F2668();

  return v2;
}

id sub_1890F2A34(void *a1)
{
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl] = 0;
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isEnabled] = 1;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_value] = 0;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue] = 0;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue] = 0x4024000000000000;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue] = 0x3FF0000000000000;
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isContinuous] = 0;
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps] = 0;
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_autorepeat] = 1;
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isRTL] = 0;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView] = 0;
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed] = 0;
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed] = 0;
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled] = 1;
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled] = 1;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer] = 0;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_timerDelay] = 0x3FE0000000000000;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_fastTimerDelay] = 0x3FB999999999999ALL;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_superFastTimerDelay] = 0x3FA999999999999ALL;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_fastStartRepeatCount] = 5;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_superFastStartRepeatCount] = 20;
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UIStepperDesignLibraryVisualElement();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_1890F2668();
  }

  return v4;
}

uint64_t sub_1890F2C00()
{
  v1 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled;
  v2 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
  v3 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue);
  if (*(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue) <= v2 - v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps);
  }

  v5 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled);
  v6 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled);
  *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled) = v4;
  if (v2 + v3 <= *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps);
  }

  *(v0 + v1) = v7;
  if (v5 != v4 || v6 != v7)
  {
    return sub_1890F2CA4();
  }

  return result;
}

uint64_t sub_1890F2CA4()
{
  v1 = v0;
  v2 = type metadata accessor for DesignLibraryStepper();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27[-v6];
  v30 = 0;
  sub_18A4A4468();
  v8 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed);
    v28 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled);
    v10 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled);
    v11 = sub_18A4A2D68();
    v29 = v27;
    v12 = *(v11 - 8);
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
    v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if ((v9 & 1) != 0 || *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed) == 1)
    {
      v16 = MEMORY[0x1E6999C50];
    }

    else
    {
      v16 = MEMORY[0x1E6999C48];
    }

    (*(v12 + 104))(v15, *v16, v11, v13);
    *v7 = v9;
    v7[1] = v28;
    v7[2] = v10;
    (*(v12 + 32))(&v7[*(v2 + 28)], v15, v11);
    sub_1890F3EB4(v7, v4);
    v18 = MEMORY[0x1E69E7D40];
    v19 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x68);
    swift_beginAccess();
    v20 = v8;
    sub_1890F3F18(v4, v8 + v19);
    swift_endAccess();
    v21 = *(v20 + *((*v18 & *v20) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = v21;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v25 = v21;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_188A34360(&unk_1EA93CF00, &qword_1EA93CD10);
      v26 = v20;
      sub_18A4A4708();
    }

    sub_18A4A4668();

    sub_1890F3F7C(v7);
  }

  else
  {
  }
}

void sub_1890F30BC()
{
  if (*(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_autorepeat) == 1)
  {
    v1 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_updateCount_ selector:0 userInfo:1 repeats:0.5];
    v2 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer);
    *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer) = v1;
  }

  *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount) = 0;
}

void sub_1890F313C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18A4A2968();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A55598(a1, v29);
  sub_1890F3E68();
  if (swift_dynamicCast())
  {
    v8 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer);
    if (v8)
    {
      v9 = v28;
      v10 = v8;
      LODWORD(v8) = sub_18A4A7C88();
    }

    else
    {
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled) == 1)
  {
    v11 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed);
  }

  else
  {
    v11 = 0;
  }

  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled) == 1)
  {
    v12 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed);
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v8)
    {
      if (!v11)
      {
        goto LABEL_36;
      }

      v12 = 0;
      v13 = (v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
      v14 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
      goto LABEL_19;
    }

    v12 = 0;
  }

  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount))
  {
    goto LABEL_31;
  }

LABEL_17:
  if (((v11 | v12) & 1) == 0)
  {
    goto LABEL_36;
  }

  v13 = (v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
  v14 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
  if (!v11)
  {
    v15 = -*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue);
    v12 = 1;
    goto LABEL_21;
  }

LABEL_19:
  v15 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue);
LABEL_21:
  v16 = v14 + v15;
  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps) == 1)
  {
    if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue) < v16)
    {
      v16 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue);
    }

    if (v16 < *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue))
    {
      v16 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue);
    }
  }

  *v13 = v16;
  sub_1890F2C00();
  v17 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl;
  v18 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl);
  if (v18)
  {
    [v18 visualElementDidSetValue_];
  }

  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_isContinuous) == 1)
  {
    v19 = *(v2 + v17);
    if (v19)
    {
      [v19 visualElementSendValueChangedEvent_];
    }
  }

LABEL_31:
  if (((v11 | v12) & 1) == 0)
  {
LABEL_36:
    v12 = 0;
    if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount) >= 1)
    {
      *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount) = 1;
    }

    if ((v8 & v11 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v20 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    return;
  }

  *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount) = v22;
  if (v8)
  {
    if ((v11 & 1) == 0)
    {
      v12 = 1;
    }

LABEL_39:
    v23 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer);
    if (v23)
    {
      v24 = v23;
      sub_18A4A2958();
      v25 = sub_18A4A2948();
      (*(v5 + 8))(v7, v4);
      [v24 setFireDate_];
    }

    goto LABEL_42;
  }

  v12 |= v11 ^ 1;
LABEL_42:
  if ((*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_isContinuous) | v8) & 1) == 0 && ((v11 | v12))
  {
    v26 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl);
    if (v26)
    {
      [v26 visualElementSendValueChangedEvent_];
    }
  }
}

uint64_t sub_1890F374C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed;
  v8 = v3[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed];
  v9 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed;
  v10 = v3[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed];
  [v3 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v3 _touchInsets];
  v23 = UIRectInset(v12, v14, v16, v18, v19, v22, v21, v20);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = _UIControlMostlyInsideEdgeInsets();
  v45.origin.x = UIRectInset(v23, v25, v27, v29, v30, v33, v32, v31);
  v42.x = a2;
  v42.y = a3;
  if (CGRectContainsPoint(v45, v42) || (result = [v3 pointInside:a1 withEvent:{a2, a3}], result))
  {
    sub_1890F398C(MEMORY[0x1EEE86B98], &qword_1EA93CD20, MEMORY[0x1EEE86B90], &v37);
    if (v38)
    {
      v35 = 0;
    }

    else
    {
      v43.x = a2;
      v43.y = a3;
      v35 = CGRectContainsPoint(v37, v43);
    }

    v3[v9] = v35;
    sub_1890F398C(MEMORY[0x1EEE86B78], &qword_1EA93CD18, MEMORY[0x1EEE86B80], &v39);
    if (v40)
    {
      result = 0;
      v36 = 0;
    }

    else
    {
      v44.x = a2;
      v44.y = a3;
      result = CGRectContainsPoint(v39, v44);
      v36 = result;
    }
  }

  else
  {
    v36 = 0;
    v3[v9] = 0;
  }

  v3[v7] = result;
  if (v8 != v36 || ((v10 ^ v3[v9]) & 1) != 0)
  {

    return sub_1890F2CA4();
  }

  return result;
}

void sub_1890F398C(void (*a1)(void)@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  a1(0);
  v8 = *(v4 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView);
  v9 = 0uLL;
  if (v8)
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
    v11 = *(v8 + v10);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = v8;
      v15 = v11;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v18 = v8;
      v19 = v11;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_188A34360(&unk_1EA93CF00, &qword_1EA93CD10);
      v20 = v8;
      sub_18A4A4708();
    }

    sub_1890F437C(a2, a3);
    sub_18A4A4718();

    if (v27)
    {
      v21 = *(v8 + v10);
      swift_beginAccess();
      v22 = swift_unknownObjectWeakLoadStrong();
      if (v22)
      {
        v23 = v22;
        v24 = v21;
      }

      else
      {
        swift_unknownObjectWeakAssign();
        v25 = v21;
      }

      if (sub_18A4A46F8())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_188A34360(&unk_1EA93CF00, &qword_1EA93CD10);
        v26 = v8;
        sub_18A4A4708();
      }

      type metadata accessor for CGRect(0);
      sub_18A4A46B8();

      v16 = 0;
      v9 = v27;
      v17 = v28;
    }

    else
    {

      v16 = 1;
      v17 = 0uLL;
      v9 = 0uLL;
    }
  }

  else
  {
    v16 = 1;
    v17 = 0uLL;
  }

  *a4 = v9;
  *(a4 + 16) = v17;
  *(a4 + 32) = v16;
}

id sub_1890F3CA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIStepperDesignLibraryVisualElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DesignLibraryStepper()
{
  result = qword_1EA93CCE0;
  if (!qword_1EA93CCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1890F3DC8()
{
  result = sub_18A4A2D68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1890F3E68()
{
  result = qword_1EA93CD28;
  if (!qword_1EA93CD28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93CD28);
  }

  return result;
}

uint64_t sub_1890F3EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibraryStepper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890F3F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibraryStepper();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890F3F7C(uint64_t a1)
{
  v2 = type metadata accessor for DesignLibraryStepper();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1890F3FD8(void *a1)
{
  v3 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView;
  v4 = *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView];
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView] = a1;
  v9 = v4;
  if (v4)
  {
    v5 = a1;
    [v9 removeFromSuperview];
    a1 = *&v1[v3];
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  if (a1)
  {
LABEL_3:
    v6 = a1;
    v7 = [v6 layer];
    [v1 _currentScreenScale];
    [v7 setContentsScale_];

    [v6 setUserInteractionEnabled_];
    [v1 addSubview_];
  }

LABEL_4:
  [v1 setNeedsLayout];
}

void sub_1890F40E4()
{
  v7[3] = type metadata accessor for UIStepperDesignLibraryVisualElement();
  v7[0] = v0;
  v1 = v0;
  sub_1890F313C(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  v2 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed;
  v3 = v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed];
  v4 = v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed];
  v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed] = 0;
  v1[v2] = 0;
  if ((v3 & 1) != 0 || v4)
  {
    sub_1890F2CA4();
  }

  v5 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer;
  [*&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer] invalidate];
  v6 = *&v1[v5];
  *&v1[v5] = 0;
}

void sub_1890F417C()
{
  v1 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed;
  v2 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed);
  v3 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed);
  *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed) = 0;
  *(v0 + v1) = 0;
  if ((v2 & 1) != 0 || v3)
  {
    sub_1890F2CA4();
  }

  v4 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer;
  [*(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer) invalidate];
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;
}

unint64_t sub_1890F41F4()
{
  result = qword_1EA93CD30;
  if (!qword_1EA93CD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93CD00);
    sub_1890F42AC();
    sub_188A34360(&unk_1EA92F7F0, &qword_1EA939510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CD30);
  }

  return result;
}

unint64_t sub_1890F42AC()
{
  result = qword_1EA93CD38;
  if (!qword_1EA93CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93CCF0);
    sub_1890F437C(&qword_1EA93CD40, MEMORY[0x1EEE86BA8]);
    sub_188A34360(&qword_1EA92F800, &qword_1EA9394D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CD38);
  }

  return result;
}

uint64_t sub_1890F437C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UIViewController._intelligenceCollectContent(in:collector:)()
{
  v0 = sub_18A4A3BA8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69DBBC0], v0, v2);
  sub_18A4A3418();
  return (*(v1 + 8))(v4, v0);
}

id sub_1890F4618()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIDebouncingAnimatableFloat();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1890F46F8()
{
  result = *(v0 + 8) * 2.8;
  if (*(v0 + 16) != 1)
  {
    return 0.0;
  }

  return result;
}

id sub_1890F4720()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for _UIShadowEdgeMask();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC5UIKit17_UIShadowEdgeMask_radius] = v1;
  *&v4[OBJC_IVAR____TtC5UIKit17_UIShadowEdgeMask_region] = v2;
  v6.receiver = v4;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id sub_1890F47A8()
{
  __swift_project_boxed_opaque_existential_0((v0 + 8), *(v0 + 32));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
  [v3 setMatchesPosition_];
  [v3 setMatchesTransform_];
  [v3 setForwardsClientHitTestingToSourceView_];

  return v3;
}

double sub_1890F4858()
{
  result = 0.0;
  if (*(v0 + 56) == 1)
  {
    return *(v0 + 48) * 2.8;
  }

  return result;
}

id sub_1890F4880()
{
  __swift_project_boxed_opaque_existential_0(v0 + 1, *(v0 + 4));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 7);
    v4 = v0[6];
    v5 = objc_allocWithZone(type metadata accessor for _UIBlurredEdgeMask());
    return sub_188ECACFC(v3, v2, v4);
  }

  return result;
}

uint64_t sub_1890F48FC(void *a1)
{
  type metadata accessor for _UISurfaceLightEffectEntry();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = v1 + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration;
    v5 = result + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration;
    if (*(v1 + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration + 88) == *(result + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration + 88))
    {
      sub_188A34624(0, &qword_1ED490230);
      v6 = a1;
      if (sub_18A4A7C88() & 1) != 0 && (sub_1890F4EE0(v4 + 8, v5 + 8))
      {
        v7 = sub_1890F4EE0(v4 + 48, v5 + 48);

        if (v7)
        {
          return 1;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

id sub_1890F4A74(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1890F4B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a1;
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A3F29C(a2, v18, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a3);
    (*(v9 + 32))(v12, v8, a3);
    v15 = sub_18A4A7248();
    (*(v9 + 8))(v12, a3);
  }

  else
  {
    v14(v8, 1, 1, a3);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1890F4D74()
{
  sub_18A4A8888();
  sub_188DF18A8();
  return sub_18A4A88E8();
}

uint64_t sub_1890F4DB8()
{
  sub_18A4A8888();
  sub_188DF18A8();
  return sub_18A4A88E8();
}

BOOL sub_1890F4DF4(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a1 + 88) == *(a2 + 88))
  {
    sub_188A34624(0, &qword_1ED490230);
    if (sub_18A4A7C88() & 1) != 0 && (sub_1890F4EE0(a1 + 8, a2 + 8) & 1) != 0 && (sub_1890F4EE0(a1 + 48, a2 + 48))
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1890F4E8C()
{
  result = qword_1EA93CD70;
  if (!qword_1EA93CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CD70);
  }

  return result;
}

uint64_t sub_1890F4EE0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24) && !*(a2 + 24))
  {
    v8 = 1;
    return v8 & 1;
  }

  sub_188A3F29C(a1, &v12, &qword_1EA93A978);
  if (!v13)
  {
    sub_188A3F5FC(&v12, &qword_1EA93A978);
LABEL_8:
    v8 = 0;
    return v8 & 1;
  }

  sub_188A5EBAC(&v12, v14);
  sub_188A3F29C(a2, &v10, &qword_1EA93A978);
  if (!v11)
  {
    sub_188A3F5FC(&v10, &qword_1EA93A978);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    goto LABEL_8;
  }

  sub_188A5EBAC(&v10, &v12);
  v3 = v15;
  v4 = __swift_project_boxed_opaque_existential_0(v14, v15);
  v5 = v13;
  v6 = __swift_project_boxed_opaque_existential_0(&v12, v13);
  v11 = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v6, v5);
  v8 = sub_1890F4B38(v4, &v10, v3);
  sub_188A3F5FC(&v10, &qword_1EA934050);
  __swift_destroy_boxed_opaque_existential_0Tm(&v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for _UILightEffectContainerEdgeSurface(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _UILightEffectContainerEdgeSurface(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1890F5120(uint64_t a1)
{
  sub_188C85D28(a1, &v6);
  if (v7)
  {
    sub_188A55538(&v6, &v8);
    *&v6 = 60;
    *(&v6 + 1) = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_0(&v8, v9);
    sub_18A4A86A8();
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRelease();
    class_getName(ObjCClassFromObject);
    v2 = sub_18A4A7398();
    MEMORY[0x18CFE22D0](v2);

    MEMORY[0x18CFE22D0](8250, 0xE200000000000000);
    __swift_project_boxed_opaque_existential_0(&v8, v9);
    sub_18A4A86A8();
    sub_188F9257C();
    swift_unknownObjectRetain();
    v3 = sub_18A4A7418();
    MEMORY[0x18CFE22D0](v3);
    swift_unknownObjectRelease_n();

    MEMORY[0x18CFE22D0](30768, 0xE200000000000000);

    MEMORY[0x18CFE22D0](62, 0xE100000000000000);
    v4 = v6;
    __swift_destroy_boxed_opaque_existential_0Tm(&v8);
  }

  else
  {
    sub_188A553EC(&v6);
    return 0x296C696E28;
  }

  return v4;
}

id _UIDebugTypeName()
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_18A4A86A8();
  ObjCClassFromObject = swift_getObjCClassFromObject();
  swift_unknownObjectRelease();
  class_getName(ObjCClassFromObject);
  sub_18A4A7398();
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  v1 = sub_18A4A7258();

  return v1;
}

id _UIBriefDescription(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_1890F5120(v3);
  sub_188A553EC(v3);
  v1 = sub_18A4A7258();

  return v1;
}

void sub_1890F53E0(char a1, void *a2)
{
  v3 = v2;
  v5 = a1 & 1;
  v19 = a1 & 1;
  swift_beginAccess();
  v6 = *(v2 + 48);
  if (*(v6 + 16) && (v7 = sub_188E906F4(v5), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = *(v3 + 16);

    if (v10)
    {
      sub_188A52E38(v10);
      v11 = v10(v3, &v19);
      sub_188A55B8C(v10);
    }

    else
    {
      v11 = 0;
    }

    swift_beginAccess();
    if (*(*(v9 + 16) + 16) && (v12 = [objc_opt_self() diffFromSettings:a2 toSettings:v11]) != 0)
    {
      v13 = v12;
      v14 = swift_allocObject();
      v14[2] = v9;
      v14[3] = a2;
      v14[4] = v11;
      v18[4] = sub_1890F6C88;
      v18[5] = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1890F56BC;
      v18[3] = &block_descriptor_52;
      v15 = _Block_copy(v18);

      v16 = a2;
      v17 = v11;

      [v13 inspectChangesWithBlock_];

      _Block_release(v15);
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1890F55EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  v10 = *(a3 + 16);
  if (*(v10 + 16))
  {
    result = sub_188C4585C(a1);
    if (v11)
    {
      sub_188A53994(*(v10 + 56) + 40 * result, v14);
      sub_188A8F66C(v14, v15);
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_0(v15, v16);
      (*(v13 + 16))(a4, a5, v12, v13);
      return __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }
  }

  return result;
}

uint64_t sub_1890F56BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1890F5720()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  [objc_opt_self() extensionForProtocol_];
  *(v0 + 32) = swift_getObjCClassMetadata();
  return v0;
}

uint64_t _sSo32_UISceneKeyValueStorageExtensionC5UIKitE14hostComponentsSayyXlXpGSgyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  *(v0 + 32) = type metadata accessor for _UISceneKeyValueStorageComponent();
  return v0;
}

id sub_1890F5818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  *(v0 + 32) = type metadata accessor for _UISceneKeyValueStorageComponent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9395B0);
  v1 = sub_18A4A7518();

  return v1;
}

_UISceneKeyValueStorageExtension __swiftcall _UISceneKeyValueStorageExtension.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_1890F5968()
{
  v1 = OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___controller;
  if (*(v0 + OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___controller))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___controller);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CD98);
    v2 = swift_allocObject();
    v5 = MEMORY[0x1E69E7CC8];
    v2[6] = MEMORY[0x1E69E7CC8];
    v2[7] = v5;
    v2[2] = sub_1890F6C70;
    v2[3] = v3;
    v2[4] = sub_1890F6C78;
    v2[5] = v4;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1890F5A6C(uint64_t a1, char *a2)
{
  v2 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = sub_1890F5C20(v2);

  return v5;
}

void sub_1890F5AD8(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1890F5D28(v4, a3);
  }
}

uint64_t sub_1890F5B68(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    sub_1890F5968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CDA0);
    v5 = swift_allocObject();
    swift_weakInit();
    *(v5 + 16) = a2;
    swift_weakAssign();

    *(v2 + v3) = v5;
  }

  return v5;
}

id sub_1890F5C20(char a1)
{
  result = [v1 scene];
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v4 = [result clientSettings];
    swift_unknownObjectRelease();
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v4 = [result settings];
    swift_unknownObjectRelease();
  }

  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 _uiTypedKeyStorage];
    swift_unknownObjectRelease_n();
    return v8;
  }

  else
  {

    return 0;
  }
}

id sub_1890F5D28(char a1, uint64_t isEscapingClosureAtFileLocation)
{
  if (a1)
  {
    result = [v2 clientScene];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v2 = swift_allocObject();
    v2[2] = isEscapingClosureAtFileLocation;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1890F6D08;
    *(v6 + 24) = v2;
    v21 = sub_188E36B9C;
    v22 = v6;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_188FDF218;
    v20 = &block_descriptor_24_3;
    v7 = _Block_copy(&v17);
    v8 = isEscapingClosureAtFileLocation;
    v9 = v5;

    [v9 updateClientSettingsWithBlock_];

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = [v2 hostScene];
  if (result)
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = isEscapingClosureAtFileLocation;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1890F6B54;
    *(v12 + 24) = v11;
    v21 = sub_188A86D18;
    v22 = v12;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_188FDF218;
    v20 = &block_descriptor_33_3;
    v13 = _Block_copy(&v17);
    v14 = v10;
    v15 = isEscapingClosureAtFileLocation;

    [v14 updateSettingsWithBlock_];

    _Block_release(v13);
    v16 = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1890F5FFC(void *a1, void *a2)
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 _uiTypedKeyStorage];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1890F6B70(a2);
    }

    else if ([a2 isEmpty])
    {
      v9 = 0;
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
      [a2 applyToSettings_];
      [v10 copy];
      sub_18A4A7DE8();

      swift_unknownObjectRelease();
      sub_188A34624(0, &qword_1EA930800);
      if (swift_dynamicCast())
      {
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }

    [v5 set:v9 uiTypedKeyStorage:?];
  }
}

void sub_1890F616C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_1890F6560(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___controller] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___hostInterface] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___clientInterface] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _UISceneKeyValueStorageComponent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithScene_, a1);
  swift_unknownObjectRelease();
  if (v3)
  {
  }

  return v3;
}

id sub_1890F6624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UISceneKeyValueStorageComponent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1890F66B4(uint64_t a1, uint64_t a2)
{
  sub_188A34624(0, &qword_1EA931250);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1890F6B24;
  *(v6 + 24) = v5;
  v10[4] = sub_1890F6B2C;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1890F697C;
  v10[3] = &block_descriptor_114;
  v7 = _Block_copy(v10);

  [v2 inspect_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1890F6820(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(id, id))
{
  if (a3)
  {
    v16 = a3;
    if ([v16 containsProperty_])
    {
      v8 = swift_dynamicCastObjCProtocolConditional();
      if (v8)
      {
        v9 = v8;
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (v10)
        {
          v11 = v10;
          v12 = a2;
          v13 = a1;
          v14 = [v9 _uiTypedKeyStorage];
          v15 = [v11 _uiTypedKeyStorage];
          a5(v14, v15);

          return;
        }
      }
    }
  }
}

void sub_1890F697C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v8(v12, v9, a4, a5);
}

void sub_1890F6A20(void *a1, uint64_t a2, const void *a3)
{
  sub_188A34624(0, &qword_1EA931250);
  v5 = _Block_copy(a3);
  v7[2] = v5;
  v6 = a1;
  sub_1890F66B4(sub_1890F6B0C, v7);
  _Block_release(v5);
}

unint64_t sub_1890F6AB8()
{
  result = qword_1EA92FEF8;
  if (!qword_1EA92FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FEF8);
  }

  return result;
}

void *sub_1890F6B70(void *a1)
{
  [v1 mutableCopy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA92FBF0);
  swift_dynamicCast();
  [a1 applyToSettings_];
  [v4 copy];
  sub_18A4A7DE8();

  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930800);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_1890F6C9C(void *a1, uint64_t a2, char a3)
{
  sub_1890F5968();
  sub_1890F53E0(a3, a1);
}

_UIViewInProcessAnimationManager __swiftcall _UIViewInProcessAnimationManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UIViewInProcessAnimationManager()
{
  result = qword_1EA93CDC0;
  if (!qword_1EA93CDC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93CDC0);
  }

  return result;
}

uint64_t sub_1890F6EC4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1890F6F20(void *a1)
{
  v2 = *__swift_project_boxed_opaque_existential_0(a1, a1[3]);

  return sub_1890F703C(v2, v1);
}

uint64_t sub_1890F703C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InProcessAnimationManager();
  v29[3] = v4;
  v29[4] = &off_1EFAF6BF8;
  v29[0] = a1;
  v5 = *(a2 + 16);
  sub_188A53994(v29, v27);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v7);
  v11 = *v9;
  v25 = v4;
  v26 = &off_1EFAF6BF8;
  v24[0] = v11;
  v12 = type metadata accessor for ManagerShim();
  v13 = objc_allocWithZone(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v17;
  v23[3] = v4;
  v23[4] = &off_1EFAF6BF8;
  v23[0] = v19;
  sub_188A53994(v23, v13 + OBJC_IVAR____TtC5UIKitP33_3F2359D4CD32AF8D101770CCFE86694711ManagerShim_implementation);
  v22.receiver = v13;
  v22.super_class = v12;

  v20 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  [v5 startAdvancingAnimationManager_];

  return __swift_destroy_boxed_opaque_existential_0Tm(v29);
}

uint64_t sub_1890F7280(char a1)
{
  LOBYTE(v1) = a1;
  byte_1EA93CDB0 = a1;
  if (qword_1ED48EFD0 != -1)
  {
LABEL_20:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EA9951B0;
  v3 = 1 << *(qword_1EA9951B0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(qword_1EA9951B0 + 64);
  v6 = (v3 + 63) >> 6;
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 256;
  }

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *(v10 + 16);

    os_unfair_lock_lock((v11 + 20));
    *(v11 + 16) = v7;
    os_unfair_lock_unlock((v11 + 20));
    v1 = *(v10 + 280);
    sub_18A4A7A78();
    if (v14)
    {
      v1 = *(v10 + 16);
      os_unfair_lock_lock((v1 + 20));
      v12 = *(v1 + 16);
      if (v12 != 2)
      {
        *(v1 + 18) = v12 & 1;
        *(v1 + 19) = HIBYTE(v12) & 1;
        *(v1 + 16) = 2;
      }

      os_unfair_lock_unlock((v1 + 20));
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_15;
    }
  }
}

uint64_t sub_1890F7AC0()
{
  if (qword_1ED48EFD0 != -1)
  {
LABEL_15:
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EA9951B0;
  v1 = 1 << *(qword_1EA9951B0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(qword_1EA9951B0 + 64);
  v4 = (v1 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v5 = 0;
  do
  {
    if (!v3)
    {
      while (1)
      {
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v6 >= v4)
        {
          v7 = 1;
          goto LABEL_13;
        }

        v3 = *(v0 + 64 + 8 * v6);
        ++v5;
        if (v3)
        {
          v5 = v6;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_10:
    v3 &= v3 - 1;

    sub_18A4A7A78();
  }

  while ((v9 & 1) != 0);
  v7 = 0;
LABEL_13:

  return v7;
}

uint64_t sub_1890F806C(char a1)
{
  if (qword_1ED48EFD0 != -1)
  {
LABEL_14:
    swift_once();
  }

  result = swift_beginAccess();
  v3 = 0;
  v4 = qword_1EA9951B0;
  v5 = 1 << *(qword_1EA9951B0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = qword_1EA9951B0 + 64;
  v8 = v6 & *(qword_1EA9951B0 + 64);
  v9 = (v5 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v3;
LABEL_10:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      *(*(*(v4 + 56) + ((v10 << 9) | (8 * v11))) + 24) = a1 & 1;
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v10 >= v9)
    {
      return result;
    }

    v8 = *(v7 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1890F8190()
{
  v1 = v0;
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    sub_1890FA7D8();
    sub_18A4A4678();
    v17[0] = 0;
    v17[1] = 0;
    v3 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

    v5 = UIHostingViewBase.init(viewGraph:configuration:)(v4, v17);
    v6 = MEMORY[0x1E69E7D40];
    *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60)) = v5;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344A8);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v6 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA93CF50, &qword_1EA9344A8);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890F8428(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    sub_1890FA784();
    sub_18A4A4678();
    v10 = MEMORY[0x1E69E7D40];
    v11 = v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68);
    *v11 = a1;
    v11[8] = a2;
    *(v11 + 2) = a3;
    *(v11 + 3) = a4;
    v24[0] = 0;
    v24[1] = 0;
    v12 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

    *(v4 + *((*v10 & *v4) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v13, v24);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF30);
    v25.receiver = v4;
    v25.super_class = v14;
    v15 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v16 = *(v15 + *((*v10 & *v15) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = v15;
      v20 = v16;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v21 = v15;
      v22 = v16;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA930310, &unk_1EA93CF30);
      v23 = v15;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890F86FC(uint64_t a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    type metadata accessor for DesignLibrarySwitch(0);
    sub_1890FA674(&qword_1EA92F9E0, type metadata accessor for DesignLibrarySwitch);
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    sub_1890FA6BC(a1, v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68), type metadata accessor for DesignLibrarySwitch);
    v17[0] = 0;
    v17[1] = 0;
    v5 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v6, v17);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9394F8);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v4 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&unk_1EA939500, &qword_1EA9394F8);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    sub_1890FA724(a1, type metadata accessor for DesignLibrarySwitch);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890F8A2C(uint64_t a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    sub_1890FA620();
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) = a1;
    v17[0] = 0;
    v17[1] = 0;
    v5 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v6, v17);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF20);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v4 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA93BB60, &unk_1EA93CF20);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890F8CE8(_OWORD *a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    sub_1890FA5CC();
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    v5 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
    v6 = a1[1];
    *v5 = *a1;
    v5[1] = v6;
    v5[2] = a1[2];
    v19[0] = 0;
    v19[1] = 0;
    v7 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v8, v19);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF10);
    v20.receiver = v1;
    v20.super_class = v9;
    v10 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v11 = *(v10 + *((*v4 & *v10) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = v10;
      v15 = v11;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v16 = v10;
      v17 = v11;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA92F9E8, &unk_1EA93CF10);
      v18 = v10;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890F8FB4(uint64_t a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    type metadata accessor for DesignLibraryStepper();
    sub_1890FA674(&unk_1EA93CEF0, type metadata accessor for DesignLibraryStepper);
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    sub_1890FA6BC(a1, v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68), type metadata accessor for DesignLibraryStepper);
    v17[0] = 0;
    v17[1] = 0;
    v5 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v6, v17);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CD10);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v4 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&unk_1EA93CF00, &qword_1EA93CD10);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    sub_1890FA724(a1, type metadata accessor for DesignLibraryStepper);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890F92E4(uint64_t a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    type metadata accessor for DesignLibraryTextFieldBackgroundView();
    sub_1890FA674(&qword_1EA93CEE8, type metadata accessor for DesignLibraryTextFieldBackgroundView);
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    sub_1890FA6BC(a1, v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68), type metadata accessor for DesignLibraryTextFieldBackgroundView);
    v17[0] = 0;
    v17[1] = 0;
    v5 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v6, v17);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CED8);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v4 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA93CED0, &unk_1EA93CED8);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    sub_1890FA724(a1, type metadata accessor for DesignLibraryTextFieldBackgroundView);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890F9614()
{
  v1 = sub_18A4A2D68();
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = MEMORY[0x1E6999C58];
  if (*v0)
  {
    v5 = MEMORY[0x1E6999C48];
  }

  (*(v3 + 104))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *v5, v4);
  return sub_18A4A3218();
}

uint64_t sub_1890F9838@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18A4A4438();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 textField];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isEnabled];
    v12 = [v10 borderStyle];
    v13 = [v10 controlSize];

    if (v13 > 2)
    {
      v14 = MEMORY[0x1E697DC28];
    }

    else
    {
      v14 = qword_1E70F2588[v13];
    }

    (*(v5 + 104))(v8, *v14, v4);
    *a1 = v11;
    *(a1 + 8) = v12;
    v18 = type metadata accessor for DesignLibraryTextFieldBackgroundView();
    (*(v5 + 32))(a1 + *(v18 + 24), v8, v4);
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    v15 = type metadata accessor for DesignLibraryTextFieldBackgroundView();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

void sub_1890F9B40(double a1, double a2, double a3, double a4)
{
  v9 = [v4 textField];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 borderStyle];

    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if (v11 <= 1)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          v15 = 0.0;
          v14 = 2.0;
          v12 = 2.0;
          v13 = 0.0;
        }

        goto LABEL_12;
      }

      v16 = 0.0;
LABEL_13:
      _UIEdgeInsetsInsetRectZeroClamped(a1, a2, a3, a4, v12, v13 + v16, v14, v15 + v16);
      return;
    }

    if (v11 == 2)
    {
      v12 = 3.0;
      v14 = 2.0;
      v15 = 2.0;
      v13 = 2.0;
    }

    else if (v11 == 3)
    {
      v16 = 2.0;
      v15 = 9.0;
      v14 = 1.0;
      v12 = 1.0;
      v13 = 9.0;
      goto LABEL_13;
    }

LABEL_12:
    v16 = 2.0;
    goto LABEL_13;
  }
}

double sub_1890F9D74()
{
  v1 = sub_18A4A4438();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DesignLibraryTextFieldBackgroundView();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 textField];
  if (!v9)
  {
    return -1.0;
  }

  v10 = v9;
  if ([v9 borderStyle] != 3)
  {

    return -1.0;
  }

  v11 = [v10 traitCollection];
  v12 = [(UITraitCollection *)v11 _semanticContext];

  if (v12 == 3)
  {
    sub_1890F9A5C();
  }

  v13 = *&v0[OBJC_IVAR____UITextFieldDesignLibraryBackgroundProvider_hostingView];
  v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x68);
  swift_beginAccess();
  sub_1890FA6BC(v13 + v14, v8, type metadata accessor for DesignLibraryTextFieldBackgroundView);
  (*(v2 + 32))(v4, &v8[*(v5 + 24)], v1);
  v15 = (*(v2 + 88))(v4, v1);
  result = 18.0;
  if (v15 != *MEMORY[0x1E697DC20])
  {
    result = 20.0;
    if (v15 != *MEMORY[0x1E697DC28])
    {
      result = 30.0;
      if (v15 != *MEMORY[0x1E697DC10])
      {
        (*(v2 + 8))(v4, v1, 30.0);
        return 20.0;
      }
    }
  }

  return result;
}

id sub_1890FA00C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UITextFieldDesignLibraryBackgroundProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DesignLibraryTextFieldBackgroundView()
{
  result = qword_1EA93CEB8;
  if (!qword_1EA93CEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1890FA0E8()
{
  type metadata accessor for BorderStyle(319);
  if (v0 <= 0x3F)
  {
    sub_18A4A4438();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1890FA198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CEC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1890FA200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibraryTextFieldBackgroundView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890FA264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibraryTextFieldBackgroundView();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890FA2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CEC8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22[-v2];
  v4 = type metadata accessor for DesignLibraryTextFieldBackgroundView();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  sub_1890F9838(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1890FA198(v3);
  }

  sub_1890FA200(v3, v10);
  v23 = 0;
  sub_18A4A4468();
  v12 = *(v0 + OBJC_IVAR____UITextFieldDesignLibraryBackgroundProvider_hostingView);
  sub_1890FA6BC(v10, v7, type metadata accessor for DesignLibraryTextFieldBackgroundView);
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x68);
  swift_beginAccess();
  v15 = v12;
  sub_1890FA264(v7, v12 + v14);
  swift_endAccess();
  v16 = *(v15 + *((*v13 & *v15) + 0x60));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = v16;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v20 = v16;
  }

  if (sub_18A4A46F8())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1890FA82C(&qword_1EA93CED0, &unk_1EA93CED8);
    v21 = v15;
    sub_18A4A4708();
  }

  sub_18A4A4668();

  sub_1890FA724(v10, type metadata accessor for DesignLibraryTextFieldBackgroundView);
}

unint64_t sub_1890FA5CC()
{
  result = qword_1EA92F9A8;
  if (!qword_1EA92F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F9A8);
  }

  return result;
}

unint64_t sub_1890FA620()
{
  result = qword_1ED48C928;
  if (!qword_1ED48C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C928);
  }

  return result;
}

uint64_t sub_1890FA674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1890FA6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1890FA724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1890FA784()
{
  result = qword_1EA930538[0];
  if (!qword_1EA930538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA930538);
  }

  return result;
}

unint64_t sub_1890FA7D8()
{
  result = qword_1EA93CF40;
  if (!qword_1EA93CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CF40);
  }

  return result;
}

uint64_t sub_1890FA82C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1890FA880()
{
  result = qword_1EA93CF58;
  if (!qword_1EA93CF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA93CF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CF58);
  }

  return result;
}

uint64_t sub_1890FA8E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1890FA954(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v14 - v7;
  v9 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v14 - v10;
  if (sub_18A4A7118() >= 6)
  {
    sub_1890FB194();
  }

  v12 = sub_18A4A86A8();
  swift_unknownObjectRelease();
  (*(v6 + 16))(v8, a1, AssociatedTypeWitness);
  (*(v4 + 32))(v8, v3, v4);
  (*(*(v3 - 8) + 56))(v11, 0, 1, v3);
  v14[1] = v12;
  sub_18A4A7158();
  return sub_18A4A7188();
}

uint64_t sub_1890FAB6C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E5FE0];
  swift_getTupleTypeMetadata2();
  v3 = sub_18A4A75C8();
  v4 = sub_188FD2A3C(v3, v2, a1, MEMORY[0x1E69E5FE8]);

  return v4;
}

uint64_t sub_1890FABE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  v4 = -v2;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  *a2 = a1;
  a2[1] = a1 + 64;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v6;
}

void sub_1890FAC24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v49 = a1;
  v53 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_18A4A7D38();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v46 - v7;
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = *(TupleTypeMetadata2 - 8);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v51 = v18;
  v52 = &v46 - v19;
  v20 = *v2;
  v21 = v2[1];
  v23 = v2[2];
  v22 = v2[3];
  v24 = v2[4];
  v59 = a2;
  v60 = v23;
  v50 = v25;
  if (v24)
  {
    v56 = v15;
    v26 = v22;
LABEL_11:
    v31 = __clz(__rbit64(v24)) | (v26 << 6);
    v32 = *(v20 + 56);
    v33 = *(*(v20 + 48) + 8 * v31);
    v55 = (v24 - 1) & v24;
    v34 = v57;
    v35 = v61;
    v36 = v20;
    (*(v8 + 16))(v57, v32 + *(v8 + 72) * v31, v61, v17);
    v37 = *(TupleTypeMetadata2 + 48);
    *v14 = v33;
    (*(v8 + 32))(&v14[v37], v34, v35);
    v15 = v56;
    (*(v56 + 56))(v14, 0, 1, TupleTypeMetadata2);
    v38 = v55;
    v30 = v26;
LABEL_12:
    *v2 = v36;
    v2[1] = v21;
    v2[2] = v60;
    v2[3] = v30;
    v2[4] = v38;
    if ((*(v15 + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      (*(v50 + 8))(v14, v51);
      (*(*(AssociatedTypeWitness - 8) + 56))(v59, 1, 1);
    }

    else
    {
      v39 = v52;
      (*(v15 + 32))(v52, v14, TupleTypeMetadata2);
      v40 = v54;
      (*(v53 + 24))(v61);
      v41 = v15;
      v42 = AssociatedTypeWitness;
      v43 = *(AssociatedTypeWitness - 8);
      v44 = (*(v43 + 48))(v40, 1, AssociatedTypeWitness);
      v45 = v59;
      if (v44 == 1)
      {
        (*(v47 + 8))(v40, v48);
        sub_1890FAC24(v49);
        (*(v41 + 8))(v39, TupleTypeMetadata2);
      }

      else
      {
        (*(v41 + 8))(v39, TupleTypeMetadata2);
        (*(v43 + 32))(v45, v40, v42);
        (*(v43 + 56))(v45, 0, 1, v42);
      }
    }
  }

  else
  {
    v27 = v8;
    v28 = (v23 + 64) >> 6;
    if (v28 <= v22 + 1)
    {
      v29 = v22 + 1;
    }

    else
    {
      v29 = (v23 + 64) >> 6;
    }

    v30 = v29 - 1;
    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v26 >= v28)
      {
        v36 = v20;
        (*(v15 + 56))(v14, 1, 1, TupleTypeMetadata2, v17);
        v38 = 0;
        goto LABEL_12;
      }

      v24 = *(v21 + 8 * v26);
      ++v22;
      if (v24)
      {
        v56 = v15;
        v8 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1890FB194()
{

  v1 = sub_18A4A7138();

  *v0 = v1;
  return result;
}

BOOL sub_1890FB238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(a4 + 24))(a3, a4, v9);
  v12 = (*(*(AssociatedTypeWitness - 8) + 48))(v11, 1, AssociatedTypeWitness) != 1;
  (*(v8 + 8))(v11, v7);
  return v12;
}

double sub_1890FB390@<D0>(uint64_t a1@<X8>)
{
  sub_1890FABE8(*v1, v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1890FB418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1890FB978(a1, *(a2 + 16), *(a2 + 24));

  *a3 = v4;
  return result;
}

uint64_t sub_1890FB460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, uint64_t, void))
{
  v42 = a5;
  AssociatedConformanceWitness = a1;
  v45 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v36 - v9;
  v48 = AssociatedTypeWitness;
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v36 - v11;
  v12 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v37 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v22 = MEMORY[0x1E69E5FE0];
  swift_getTupleTypeMetadata2();
  v23 = sub_18A4A75C8();
  v44 = a2;
  v24 = sub_188FD2A3C(v23, v22, a2, MEMORY[0x1E69E5FE8]);
  v25 = v21;

  v49 = v24;
  v26 = v19;
  (*(v15 + 16))(v18, AssociatedConformanceWitness, a3);
  v27 = v46;
  sub_18A4A7458();
  v28 = v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_18A4A7D78();
  v29 = v27[6];
  if (v29(v14, 1, v8) != 1)
  {
    v31 = v27[4];
    v32 = v39;
    v46 = (v39 + 6);
    ++v39;
    v40 = (v32 + 4);
    v38 = (v27 + 1);
    v41 = v31;
    v42 = (v27 + 6);
    v31(v28, v14, v8);
    while (1)
    {
      v33 = v48;
      if ((*v46)(v28, 1, v48) == 1)
      {
        (*v38)(v28, v8);
      }

      else
      {
        v34 = v43;
        (*v40)(v43, v28, v33);
        v35 = type metadata accessor for CompactableSet();
        sub_1890FA954(v34, v35);
        v31 = v41;
        (*v39)(v34, v33);
      }

      sub_18A4A7D78();
      if (v29(v14, 1, v8) == 1)
      {
        break;
      }

      v31(v28, v14, v8);
    }
  }

  (*(v37 + 8))(v25, v26);
  return v49;
}

uint64_t sub_1890FB978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  swift_getAssociatedTypeWitness();
  sub_18A4A7D38();
  v5 = sub_18A4A7648();
  WitnessTable = swift_getWitnessTable();
  return sub_1890FB460(&v8, a2, v5, a3, WitnessTable);
}

uint64_t sub_1890FBA60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1890FBAD0()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 6) == 1)
  {
    v1[6] = 0;
    if (v1[7] == 1)
    {
      v1[7] = 0;
      sub_1890FC8B4();
      sub_1890FBCCC();
    }

    sub_1890FC8B4();
  }

  if (v1[11] == 1)
  {
    v1[11] = 0;
    sub_1890FBCCC();
    sub_188E0F52C();
  }

  sub_1890FDB10();
  sub_1890FBCCC();
  sub_188E0F52C();
  sub_1890FBE4C();
  sub_1890FBFEC();
  if (v1[38] == 1)
  {
    v1[38] = 0;
    sub_1890FEBD0();
    sub_1890FCB68();
  }

  sub_1890FC0A4();
  sub_1890FC154();
  if (v1[34] == 1)
  {
    v1[34] = 0;
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
    if (v2)
    {

      v2(v3);
      sub_188A55B8C(v2);
    }
  }

  if (v1[35] == 1)
  {
    v1[35] = 0;
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
    if (v4)
    {

      v4(v5);
      sub_188A55B8C(v4);
    }
  }

  sub_1890FC3FC();
  sub_1890FC4C4();
  sub_1890FC58C();
  if (v1[50] == 1)
  {
    v1[50] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  sub_1890FC690();
  if (v1[63] == 1)
  {
    v1[63] = 0;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      [v7 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FBCCC()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 17) == 1)
  {
    v2 = v0;
    v1[17] = 0;
    sub_1890FC8B4();
    if (v1[13] == 1)
    {
      v1[13] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        sub_1890FE7C8();
      }

      sub_1890FDD9C();
      sub_188E0F618();
    }

    sub_188E0F618();
    sub_1890FCEE8();
    sub_1890FD530();
    sub_188E0F52C();
    if (v1[36] == 1)
    {
      v1[36] = 0;
      sub_1890FC154();
    }

    sub_1890FC154();
    sub_1890FCB68();
    sub_1890FC4C4();
    sub_1890FC690();
    sub_1890FC58C();
    if (v1[57] == 1)
    {
      v1[57] = 0;
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        [v5 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[63] == 1)
    {
      v1[63] = 0;
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        [v6 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[40] == 1)
    {
      v1[40] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();

      sub_1890FC690();
    }
  }
}

void sub_1890FBE4C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 27) == 1)
  {
    v1[27] = 0;
    sub_1890FEE30();
    if (v1[38] == 1)
    {
      v1[38] = 0;
      sub_1890FEBD0();
      sub_1890FCB68();
    }

    sub_1890FC154();
    if (v1[34] == 1)
    {
      v1[34] = 0;
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
      if (v2)
      {

        v2(v3);
        sub_188A55B8C(v2);
      }
    }

    if (v1[35] == 1)
    {
      v1[35] = 0;
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
      if (v4)
      {

        v4(v5);
        sub_188A55B8C(v4);
      }
    }

    sub_1890FC58C();
    if (v1[50] == 1)
    {
      v1[50] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    sub_1890FCB68();
    sub_1890FC4C4();
    if (v1[63] == 1)
    {
      v1[63] = 0;
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        [v7 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1890FBFEC()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 29) == 1)
  {
    v1[29] = 0;
    sub_1890FCCC4();
    sub_1890FC154();
    sub_1890FEBD0();
    if (v1[43] == 1)
    {
      v1[43] = 0;
      sub_1890FC690();
      if (v1[58] == 1)
      {
        v1[58] = 0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1890FC4C4();

    sub_1890FE94C();
  }
}

void sub_1890FC0A4()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 41) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 41) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1890FC0A4();
      v2 = v3;
      if (*(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42) == 1)
      {
        *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42) = 0;
        sub_1890FCB68();
        sub_1890FC4C4();
        v2 = v3;
      }
    }
  }
}

void sub_1890FC154()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 30) != 1)
  {
    return;
  }

  v1[30] = 0;
  sub_1890FC0A4();
  if (v1[31] != 1)
  {
    if (v1[32] != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v1[31] = 0;
  if (v1[32])
  {
LABEL_6:
    v1[32] = 0;
  }

LABEL_7:
  if (v1[33] == 1)
  {
    v1[33] = 0;
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated);
    if (v2)
    {

      v2(v3);
      sub_188A55B8C(v2);
    }
  }

  sub_1890FCCC4();
  if (v1[37] == 1)
  {
    v1[37] = 0;
    sub_1890FEBD0();
    if (v1[42] == 1)
    {
      v1[42] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    sub_1890FC4C4();
  }

  if (v1[43] == 1)
  {
    v1[43] = 0;
    sub_1890FC690();
    if (v1[58] == 1)
    {
      v1[58] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }
  }

  if (v1[34] == 1)
  {
    v1[34] = 0;
    v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
    if (v5)
    {

      v5(v6);
      sub_188A55B8C(v5);
    }
  }

  if (v1[35] == 1)
  {
    v1[35] = 0;
    v7 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
    if (v7)
    {

      v7(v8);
      sub_188A55B8C(v7);
    }
  }

  sub_1890FCB68();
  sub_1890FC4C4();
  sub_1890FE94C();
  if (v1[60] == 1)
  {
    v1[60] = 0;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      [v9 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v1[40] == 1)
  {
    v1[40] = 0;
    sub_1890FCB68();
    sub_1890FC4C4();
    sub_1890FC690();
  }

  sub_1890FEB18();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    [v10 _sheetLayoutInfoDidInvalidateDetentValues_];

    swift_unknownObjectRelease();
  }
}

void sub_1890FC3FC()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 48) == 1)
  {
    *(v1 + 48) = 0;
    if (*(v1 + 51) == 1)
    {
      *(v1 + 51) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FC4C4()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 49) == 1)
  {
    *(v1 + 49) = 0;
    if (*(v1 + 50) == 1)
    {
      *(v1 + 50) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FC58C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 55) == 1)
  {
    v1[55] = 0;
    if (v1[62] == 1)
    {
      v1[62] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[47] == 1)
    {
      v1[47] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FC690()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 52) == 1)
  {
    *(v1 + 52) = 0;
    if (*(v1 + 54) == 1)
    {
      *(v1 + 54) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      sub_1890FC690();
    }
  }
}

void sub_1890FC754()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) == 1)
  {
    v1[7] = 0;
    sub_1890FC8B4();
    sub_1890FBCCC();
  }

  sub_1890FC8B4();
  sub_1890FC154();
  if (v1[34] == 1)
  {
    v1[34] = 0;
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
    if (v2)
    {

      v2(v3);
      sub_188A55B8C(v2);
    }
  }

  if (v1[35] == 1)
  {
    v1[35] = 0;
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
    if (v4)
    {

      v4(v5);
      sub_188A55B8C(v4);
    }
  }

  if (v1[40] == 1)
  {
    v1[40] = 0;
    sub_1890FCB68();
    sub_1890FC4C4();
    sub_1890FC690();
  }

  if (v1[62] == 1)
  {
    v1[62] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FC8B4()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 8) == 1)
  {
    v1[8] = 0;
    sub_188E0F52C();
    if (v1[63] == 1)
    {
      v1[63] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    sub_1890FC58C();
    if (v1[50] == 1)
    {
      v1[50] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1890FC994()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) == 1)
  {
    v1[7] = 0;
    sub_1890FC8B4();
    sub_1890FBCCC();
  }

  sub_1890FC8B4();
  if (v1[9] == 1)
  {
    v1[9] = 0;
    sub_1890FDE98();
    sub_1890FDB10();
    sub_1890FDF88();
  }

  if (v1[11] == 1)
  {
    v1[11] = 0;
    sub_1890FBCCC();
    sub_188E0F52C();
  }

  sub_1890FDB10();
  sub_1890FBCCC();
  sub_1890FCA98();
  if (v1[36] == 1)
  {
    v1[36] = 0;
    sub_1890FC154();
  }

  sub_1890FC154();
  sub_188E0F52C();
  sub_1890FCB68();
  sub_1890FC4C4();
  sub_1890FCCC4();
  if (v1[60] == 1)
  {
    v1[60] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FCA98()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 21) == 1)
  {
    v1[21] = 0;
    if (v1[22] == 1)
    {
      v1[22] = 0;
      sub_1890FDE98();
      sub_1890FCCC4();
      sub_1890FBE4C();
      sub_1890FC154();
      if (v1[40] == 1)
      {
        v1[40] = 0;
        sub_1890FCB68();
        sub_1890FC4C4();
        sub_1890FC690();
      }

      sub_1890FDB10();
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v2)
      {
        v3 = v2;
        sub_1890FBE4C();
      }
    }

    sub_1890FD1DC();
  }
}

void sub_1890FCB68()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 46) == 1)
  {
    v1[46] = 0;
    sub_1890FC3FC();
    if (v1[51] == 1)
    {
      v1[51] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[53] == 1)
    {
      v1[53] = 0;
      sub_1890FC690();
    }

    sub_1890FC58C();
    if (v1[47] == 1)
    {
      v1[47] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[62] == 1)
    {
      v1[62] = 0;
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 _sheetLayoutInfoDidInvalidateUntransformedFrame_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FCCC4()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 12) == 1)
  {
    v2 = v0;
    v1[12] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1890FE7C8();
    }

    sub_188E0F618();
    sub_1890FC0A4();
    if (v1[42] == 1)
    {
      v1[42] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    sub_1890FDF88();
    if (v1[5] == 1)
    {
      v1[5] = 0;
      sub_1890FC690();
      sub_1890FDF88();
      if (v1[59] == 1)
      {
        v1[59] = 0;
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          [v5 _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1890FC690();
  }
}

void sub_1890FCDD4()
{
  v1 = v0;
  sub_1890FCEE8();
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25) == 1)
  {
    *(v2 + 25) = 0;
    sub_1890FCCC4();
    sub_1890FE48C();
    sub_1890FE854();
    sub_1890FBE4C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1890FE854();
    }

    v5 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v5)
    {
      v6 = v5;
      sub_1890FE48C();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        [v7 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FC58C();
  }

  if (*(v2 + 38) == 1)
  {
    *(v2 + 38) = 0;
    sub_1890FEBD0();

    sub_1890FCB68();
  }
}

void sub_1890FCEE8()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 18) == 1)
  {
    v1[18] = 0;
    if (v1[19] == 1)
    {
      v1[19] = 0;
      sub_1890FEBD0();
      sub_1890FC0A4();
      sub_1890FC154();
    }

    if (v1[38] == 1)
    {
      v1[38] = 0;
      sub_1890FEBD0();
      sub_1890FCB68();
    }

    if (v1[33] == 1)
    {
      v1[33] = 0;
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated);
      if (v2)
      {

        v2(v3);
        sub_188A55B8C(v2);
      }
    }

    if (v1[34] == 1)
    {
      v1[34] = 0;
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
      if (v4)
      {

        v4(v5);
        sub_188A55B8C(v4);
      }
    }

    if (v1[35] == 1)
    {
      v1[35] = 0;
      v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
      if (v6)
      {

        v6(v7);
        sub_188A55B8C(v6);
      }
    }

    sub_1890FCB68();
    sub_1890FC4C4();
    if (v1[60] == 1)
    {
      v1[60] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1890FD09C()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 24) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 24) = 0;
    sub_188E0F52C();
    sub_1890FC154();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FD09C();
    }
  }
}

void sub_1890FD128()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 22) == 1)
  {
    *(v1 + 22) = 0;
    sub_1890FDE98();
    sub_1890FCCC4();
    sub_1890FBE4C();
    sub_1890FC154();
    if (*(v1 + 40) == 1)
    {
      *(v1 + 40) = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
      sub_1890FC690();
    }

    sub_1890FDB10();
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v2)
    {
      v3 = v2;
      sub_1890FBE4C();
    }
  }
}

void sub_1890FD1DC()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 23) == 1)
  {
    v1[23] = 0;
    sub_1890FC690();
    if (v1[66] == 1)
    {
      v1[66] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[60] == 1)
    {
      v1[60] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[57] == 1)
    {
      v1[57] = 0;
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v5)
    {
      if (*(v5 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) == 1)
      {
        *(v5 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) = 0;
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          [v6 _sheetLayoutInfoDidInvalidateOutput_];

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_1890FD354()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 45) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 45) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FD354();
      if (v2[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 59] == 1)
      {
        v2[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 59] = 0;
        v3 = swift_unknownObjectWeakLoadStrong();
        if (v3)
        {
          [v3 _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FD45C()
{
  sub_1890FBCCC();
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 21) == 1)
  {
    v1[21] = 0;
    if (v1[22] == 1)
    {
      v1[22] = 0;
      sub_1890FDE98();
      sub_1890FCCC4();
      sub_1890FBE4C();
      sub_1890FC154();
      if (v1[40] == 1)
      {
        v1[40] = 0;
        sub_1890FCB68();
        sub_1890FC4C4();
        sub_1890FC690();
      }

      sub_1890FDB10();
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v2)
      {
        v3 = v2;
        sub_1890FBE4C();
      }
    }

    sub_1890FD1DC();
  }
}

void sub_1890FD530()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 20) == 1)
  {
    v2 = v0;
    v1[20] = 0;
    sub_1890FCCC4();
    sub_188E0F52C();
    sub_1890FBFEC();
    if (v1[38] == 1)
    {
      v1[38] = 0;
      sub_1890FEBD0();
      sub_1890FCB68();
    }

    sub_1890FC0A4();
    if (v1[42] == 1)
    {
      v1[42] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    sub_1890FC154();
    if (v1[34] == 1)
    {
      v1[34] = 0;
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
      if (v3)
      {

        v3(v4);
        sub_188A55B8C(v3);
      }
    }

    if (v1[35] == 1)
    {
      v1[35] = 0;
      v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
      if (v5)
      {

        v5(v6);
        sub_188A55B8C(v5);
      }
    }

    sub_1890FCB68();
    sub_1890FC4C4();
    sub_1890FC690();
    if (v1[61] == 1)
    {
      v1[61] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[63] == 1)
    {
      v1[63] = 0;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        [v8 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      sub_1890FC0A4();
      if (v10[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42] == 1)
      {
        v10[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42] = 0;
        sub_1890FCB68();
        sub_1890FC4C4();
      }
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      [v11 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FD770()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean) == 1)
  {
    *v1 = 0;
    sub_188E0F618();
    if (v1[38] == 1)
    {
      v1[38] = 0;
      sub_1890FEBD0();
      sub_1890FCB68();
    }

    sub_1890FEBD0();
    sub_1890FC0A4();
    if (v1[42] == 1)
    {
      v1[42] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    if (v1[33] == 1)
    {
      v1[33] = 0;
      v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated);
      if (v2)
      {

        v2(v3);
        sub_188A55B8C(v2);
      }
    }

    sub_1890FCB68();
    sub_1890FD354();
    if (v1[60] == 1)
    {
      v1[60] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    sub_1890FEB18();
    sub_1890FC58C();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_1890FE118();
    }
  }
}

void sub_1890FD8E8()
{
  sub_1890FD9A8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1890FD8E8();
    v1 = v3;
    if (*(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 59) == 1)
    {
      *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 59) = 0;
      v2 = swift_unknownObjectWeakLoadStrong();
      v1 = v3;
      if (v2)
      {
        [v2 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
        v1 = v3;
      }
    }
  }
}

void sub_1890FD9A8()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 1) == 1)
  {
    *(v1 + 1) = 0;
    if (*(v1 + 42) == 1)
    {
      *(v1 + 42) = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1890FD9A8();
    }
  }
}

void sub_1890FDA44()
{
  sub_1890FD770();
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 49) == 1)
  {
    *(v1 + 49) = 0;
    if (*(v1 + 50) == 1)
    {
      *(v1 + 50) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FDB10()
{
  sub_1890FDD9C();
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
  if (v1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57] == 1)
    {
      v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      v3 = v5;
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v4 = v1;
    }

    sub_1890FBE4C();
  }
}

void sub_1890FDBD8()
{
  sub_1890FDD9C();
  sub_1890FD09C();
  sub_1890FC154();
  sub_1890FC3FC();
  sub_1890FC4C4();
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 54) == 1)
  {
    v1[54] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  sub_1890FC58C();
  if (v1[66] == 1)
  {
    v1[66] = 0;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v1[60] == 1)
  {
    v1[60] = 0;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v1[57] == 1)
  {
    v1[57] = 0;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v1[58] == 1)
  {
    v1[58] = 0;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      [v6 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v1[62] == 1)
  {
    v1[62] = 0;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      [v7 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  sub_1890FDE98();
}

void sub_1890FDD9C()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 15) == 1)
  {
    v2 = v0;
    *(v1 + 15) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1890FDD9C();
    }

    if (*(v1 + 16) == 1)
    {
      *(v1 + 16) = 0;
      v5 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v5)
      {
        v6 = v5;
        sub_1890FE48C();
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          [v7 _sheetLayoutInfoDidInvalidateOutput_];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      sub_1890FD1DC();
      sub_1890FEE30();
      sub_1890FC690();

      sub_1890FC58C();
    }
  }
}

void sub_1890FDE98()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 10) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 10) = 0;
    sub_1890FDD9C();
    sub_1890FC690();
    sub_1890FC58C();
    sub_1890FBE4C();
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v1)
    {
      if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) == 1)
      {
        *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) = 0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FDF88()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 67) == 1)
  {
    v1[67] = 0;
    if (v1[58] == 1)
    {
      v1[58] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[57] == 1)
    {
      v1[57] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FE08C()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 2) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 2) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v1)
    {
      v2 = v1;
      sub_1890FE08C();
    }

    sub_1890FECEC();
  }
}

void sub_1890FE118()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 3) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 3) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FE118();
    }

    sub_1890FECEC();
  }
}

void sub_1890FE1A4()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 44) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 44) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FE1A4();
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FE25C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 29) == 1)
  {
    v1[29] = 0;
    sub_1890FCCC4();
    sub_1890FC154();
    sub_1890FEBD0();
    if (v1[43] == 1)
    {
      v1[43] = 0;
      sub_1890FC690();
      if (v1[58] == 1)
      {
        v1[58] = 0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1890FC4C4();
    sub_1890FE94C();
  }

  sub_1890FCB68();
}

void sub_1890FE30C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 16) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 16) = 0;
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v2)
    {
      v3 = v2;
      sub_1890FE48C();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FD1DC();
    sub_1890FEE30();
    sub_1890FC690();
    sub_1890FC58C();
  }

  sub_1890FE48C();
}

void sub_1890FE3C4()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 28) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 28) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v1)
    {
      v2 = v1;
      sub_1890FE3C4();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FC58C();
  }
}

void sub_1890FE48C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 16) == 1)
  {
    *(v2 + 16) = 0;
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v3)
    {
      v4 = v3;
      sub_1890FE48C();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FD1DC();
    sub_1890FEE30();
    sub_1890FC690();
    sub_1890FC58C();
  }

  if (*(v2 + 28) == 1)
  {
    *(v2 + 28) = 0;
    v6 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v6)
    {
      v7 = v6;
      sub_1890FE3C4();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        [v8 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FC58C();
  }
}

void sub_1890FE5CC()
{
  sub_188E0F618();
  sub_1890FE08C();
  sub_1890FE48C();
  sub_1890FE48C();
  sub_1890FE3C4();
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) == 1)
  {
    *(v1 + 57) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  sub_1890FBE4C();
  if (*(v1 + 68) == 1)
  {
    *(v1 + 68) = 0;

    sub_1890FDF88();
  }
}

void sub_1890FE684()
{
  sub_1890FD9A8();
  sub_1890FE118();
  sub_1890FE7C8();
  sub_1890FDD9C();
  sub_1890FD09C();
  sub_1890FE854();
  sub_1890FC0A4();
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42) == 1)
  {
    v1[42] = 0;
    sub_1890FCB68();
    sub_1890FC4C4();
  }

  sub_1890FE1A4();
  sub_1890FD354();
  sub_1890FC690();
  sub_1890FC58C();
  sub_1890FE94C();
  if (v1[57] == 1)
  {
    v1[57] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v1[66] == 1)
  {
    v1[66] = 0;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v1[59] == 1)
  {
    v1[59] = 0;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  sub_1890FEB18();

  sub_1890FDF88();
}

void sub_1890FE7C8()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 14) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 14) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FE7C8();
    }

    sub_1890FDD9C();
  }
}

void sub_1890FE854()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 26) == 1)
  {
    *(v1 + 26) = 0;
    sub_1890FDD9C();
    if (*(v1 + 57) == 1)
    {
      *(v1 + 57) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v3)
    {
      if (*(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) == 1)
      {
        *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) = 0;
        v4 = swift_unknownObjectWeakLoadStrong();
        if (v4)
        {
          [v4 _sheetLayoutInfoDidInvalidateOutput_];

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_1890FE94C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 56) == 1)
  {
    v1[56] = 0;
    if (v1[57] == 1)
    {
      v1[57] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      sub_1890FE94C();
      v5 = &v4[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean];
      if (v4[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57] == 1)
      {
        v5[57] = 0;
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          [v6 _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }

      if (v5[66] == 1)
      {
        v5[66] = 0;
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          [v7 _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    if (v1[58] == 1)
    {
      v1[58] = 0;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        [v8 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[65] == 1)
    {
      v1[65] = 0;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        [v9 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1890FEB18()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 64) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 64) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FEB18();
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1890FEBD0()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 39) == 1)
  {
    v1[39] = 0;
    sub_1890FC0A4();
    sub_1890FCCC4();
    if (v1[43] == 1)
    {
      v1[43] = 0;
      sub_1890FC690();
      if (v1[58] == 1)
      {
        v1[58] = 0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1890FCB68();
    sub_1890FE94C();
    if (v1[63] == 1)
    {
      v1[63] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[40] == 1)
    {
      v1[40] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();

      sub_1890FC690();
    }
  }
}

void sub_1890FECEC()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 4) == 1)
  {
    v2 = v0;
    v1[4] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1890FE7C8();
    }

    if (v1[13] == 1)
    {
      v1[13] = 0;
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        sub_1890FE7C8();
      }

      sub_1890FDD9C();
      sub_188E0F618();
    }

    sub_1890FC0A4();
    if (v1[42] == 1)
    {
      v1[42] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    sub_1890FE94C();
    sub_1890FEB18();
    sub_1890FC690();
    if (v1[5] == 1)
    {
      v1[5] = 0;
      sub_1890FC690();
      sub_1890FDF88();
      if (v1[59] == 1)
      {
        v1[59] = 0;
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          [v7 _sheetLayoutInfoDidInvalidateOutput_];

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_1890FEE30()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 28) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 28) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v1)
    {
      v2 = v1;
      sub_1890FE3C4();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FC58C();
  }
}

void sub_1890FEFF4(void *a1)
{
  v2 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView;
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView) = a1;
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight) == 1)
  {
    if (v3)
    {
      v4 = a1;
      [v3 _removeBoundingPathChangeObserver_];
      v5 = *(v1 + v2);
      if (!v5)
      {
LABEL_5:

        v7 = a1;
        goto LABEL_7;
      }
    }

    else
    {
      v8 = a1;
      v5 = a1;
      if (!a1)
      {
        goto LABEL_5;
      }
    }

    v6 = v5;
    [v6 _addBoundingPathChangeObserver_];

    goto LABEL_5;
  }

  v7 = v3;
LABEL_7:
}

void sub_1890FF248(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_screenSize);
  v4 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_screenSize);
  v5 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_screenSize + 8);
  *v3 = a1;
  v3[1] = a2;
  v6 = v4 == a1 && v5 == a2;
  if (!v6 && *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) == 1)
  {
    *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) = 0;
    sub_1890FBCCC();

    sub_188E0F52C();
  }
}

void sub_1890FF344(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v6 = *(v4 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v7 = *(v4 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 16);
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    sub_1890FC754();
  }
}

uint64_t sub_1890FF470()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 10) & 1) == 0)
  {
    if ((v1[9] & 1) == 0)
    {
      v2 = (_UISolariumEnabled() & 1) != 0 && [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) userInterfaceIdiom] != 6;
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled) = v2;
      v1[9] = 1;
    }

    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled) & 1) != 0 && (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) & 1) == 0)
    {
      if ((v1[22] & 1) == 0)
      {
        v4 = sub_189105CC0();
        v5 = 1;
        if ((v4 & 1) == 0)
        {
          v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
        }

        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v5;
        v1[22] = 1;
      }

      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) ^ 1;
    }

    else
    {
      v3 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveSolariumInsetsAndCornerRadiusEnabled) = v3 & 1;
    v1[10] = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveSolariumInsetsAndCornerRadiusEnabled);
}

uint64_t sub_1890FF578()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 22) & 1) == 0)
  {
    v2 = sub_189105CC0();
    v3 = 1;
    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v3;
    *(v1 + 22) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen);
}

void sub_1890FF5E4(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_additionalMinimumTopInset);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_additionalMinimumTopInset) = a1;
  if (v2 != a1 && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25) = 0;
    sub_1890FCCC4();
    sub_1890FE48C();
    sub_1890FE854();
    sub_1890FBE4C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1890FE854();
    }

    v5 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v5)
    {
      v6 = v5;
      sub_1890FE48C();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        [v7 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FC58C();
  }
}

void sub_1890FF7C4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_mode);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_mode) = a1;
  if (v2 != a1 && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) = 0;
    sub_1890FBCCC();

    sub_188E0F52C();
  }
}

void sub_1890FF9B8(void *a1, double a2)
{
  v3 = *(v2 + *a1);
  *(v2 + *a1) = a2;
  if (v3 != a2)
  {
    if (*(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7))
    {
      *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) = 0;
      sub_1890FC8B4();
      sub_1890FBCCC();
    }

    sub_1890FC8B4();
  }
}

id sub_1890FFA18(id result)
{
  v2 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight;
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight) = result;
  if (v3 != (result & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7))
    {
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) = 0;
      sub_1890FC8B4();
      sub_1890FBCCC();
    }

    sub_1890FC8B4();
    result = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
    if (result)
    {
      if (*(v1 + v2))
      {
        v4 = &selRef__addBoundingPathChangeObserver_;
      }

      else
      {
        v4 = &selRef__removeBoundingPathChangeObserver_;
      }

      v5 = *v4;

      return [result v5];
    }
  }

  return result;
}

void sub_1890FFB8C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsAsymmetricVerticalMargins);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsAsymmetricVerticalMargins) = a1;
  if (v2 != (a1 & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7))
    {
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) = 0;
      sub_1890FC8B4();
      sub_1890FBCCC();
    }

    sub_1890FC8B4();
  }
}

void sub_1890FFE7C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsEdgeAttachedInCompactHeight);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsEdgeAttachedInCompactHeight) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
    if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 21))
    {
      v3[21] = 0;
      if (v3[22] == 1)
      {
        v3[22] = 0;
        sub_1890FDE98();
        sub_1890FCCC4();
        sub_1890FBE4C();
        sub_1890FC154();
        if (v3[40] == 1)
        {
          v3[40] = 0;
          sub_1890FCB68();
          sub_1890FC4C4();
          sub_1890FC690();
        }

        sub_1890FDB10();
        v4 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
        if (v4)
        {
          v5 = v4;
          sub_1890FBE4C();
        }
      }

      sub_1890FD1DC();
    }
  }
}

void sub_1890FFFCC(_BYTE *a1, uint64_t a2, int a3, void *a4)
{
  v5 = a1[*a4];
  a1[*a4] = a3;
  if (v5 != a3)
  {
    v6 = a1;
    sub_1890FD45C();
  }
}