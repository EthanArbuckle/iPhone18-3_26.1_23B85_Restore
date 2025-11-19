uint64_t sub_1A45C1798()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A45C1A8C;
  }

  else
  {
    (*(v2 + 288))();
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A45C18C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45C18C0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1A3CB4E58(v3, &qword_1EB128B68, MEMORY[0x1E6982B80]);
    v4 = v0[31];
    v5 = v0[32];

    return MEMORY[0x1EEE6DFA0](sub_1A45C1DCC, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
    v6 = sub_1A524E654();
    v0[38] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[39] = v8;
    *v8 = v0;
    v8[1] = sub_1A45C1AA4;
    v9 = v0[18];

    return (v11)(v0 + 40, v9);
  }
}

uint64_t sub_1A45C1AA4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);

  (*(v3 + 8))(v2, v4);
  *(v1 + 321) = *(v1 + 320);
  v5 = *(v1 + 280);
  v6 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1A45C1C50, v6, v5);
}

uint64_t sub_1A45C1C50()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1A45C1CB4, v1, v2);
}

uint64_t sub_1A45C1CB4()
{
  if (*(v0 + 321))
  {
    sub_1A48FC6C0(*(v0 + 88), *(v0 + 104), *(v0 + 112));
  }

  else
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 104);
    *(v0 + 40) = v2;
    v3 = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v1, v3);
    sub_1A48FD084((v0 + 16), 0, 0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  v5 = sub_1A524CC44();
  *(v0 + 264) = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = sub_1A524CBC4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v0 + 272) = v6;
  *(v0 + 280) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A3CB849C, v6, v8);
}

uint64_t sub_1A45C1DCC()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A45C1EA4()
{
  swift_beginAccess();
  v0 = qword_1EB1EB7D8;
  if (!qword_1EB1EB7D8)
  {
    goto LABEL_7;
  }

  v1 = sub_1A5247414();
  if (!*(v0 + 16))
  {
    swift_endAccess();

    goto LABEL_9;
  }

  sub_1A3C5DCA4(v1, v2);
  v4 = v3;

  if ((v4 & 1) == 0)
  {
LABEL_7:
    swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();

  sub_1A524CD94();
  swift_beginAccess();
  if (qword_1EB1EB7D8)
  {
    v5 = sub_1A5247414();
    sub_1A45C16A0(0, v5, v6);
  }

  swift_endAccess();

LABEL_9:
  swift_beginAccess();
  if (qword_1EB1EB798)
  {
    v7 = sub_1A5247414();
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1A3CB4FB4(v10, v7, v8);
  }

  return swift_endAccess();
}

id PXTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXTipsHelper.init()()
{
  v1 = &v0[OBJC_IVAR___PXTipsHelper_Swift_presentedTipID];
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PXTipsHelper();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PXTipsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXTipsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A45C2244@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A45C262C();
      v10 = v12;
    }

    sub_1A3C34460((*(v10 + 56) + 40 * v8), a3);
    sub_1A45C22F0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1A45C22F0(unint64_t result, uint64_t a2)
{
  if ((*(a2 + 64 + ((((result + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((result + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  v2 = *(a2 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v4;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1A45C24AC()
{
  v1 = v0;
  sub_1A3C926A0(0, &qword_1EB12B128, sub_1A3CB59B4);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

void *sub_1A45C262C()
{
  v1 = v0;
  sub_1A3C926A0(0, &qword_1EB126448, sub_1A3CB4F50);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 16 * v16;
        v18 = (*(v2 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v21 = 40 * v16;
        sub_1A3C341C8(*(v2 + 56) + 40 * v16, v23);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        sub_1A3C34460(v23, *(v4 + 56) + v21);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

void *sub_1A45C27E4()
{
  v1 = v0;
  sub_1A3C926A0(0, &unk_1EB12B130, sub_1A3C92704);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A45C297C(void *a1, char a2)
{
  v4 = swift_allocObject();
  sub_1A45C29CC(a1, a2);
  return v4;
}

uint64_t sub_1A45C29CC(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_cellSpecs;
  v6 = sub_1A5244084();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_zoomLevel;
  *(v2 + v7) = *sub_1A44DAFD8();
  v8 = (v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = (v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___horizontalSizeClass) = 2;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___verticalSizeClass) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation) = 1;
  sub_1A5241604();
  *(v2 + 16) = a1;
  v10 = 17.0;
  if (a2)
  {
    v10 = 0.0;
  }

  *(v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_verticalMargin) = v10;
  if (a1)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v19[4] = sub_1A45C3234;
    v19[5] = v11;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1A3C2E0D0;
    v19[3] = &block_descriptor_219;
    v12 = _Block_copy(v19);
    v13 = a1;

    [v13 setContainerSizeDidChange_];
    _Block_release(v12);
    [v13 containerSize];
    v15 = v14;
    v17 = v16;
    type metadata accessor for LemonadeSearchSpec();
    sub_1A45C42D4(&qword_1EB13E510, type metadata accessor for LemonadeSearchSpec);
    v20.top = 0.0;
    v20.left = 0.0;
    v20.bottom = 0.0;
    v20.right = 0.0;
    LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v17, v15), v20);
  }

  return v2;
}

float64_t sub_1A45C2C2C(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets);
  swift_beginAccess();
  v6.f64[0] = a1;
  v6.f64[1] = a2;
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(v5[1], v7)))))
  {
    v5->f64[0] = a1;
    v5->f64[1] = a2;
    result = a4;
    v5[1].f64[0] = a3;
    v5[1].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 424))();
  }

  return result;
}

uint64_t sub_1A45C2D74(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize);
  result = swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 424))(v9);
  }

  return result;
}

uint64_t sub_1A45C2E8C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___horizontalSizeClass;
  swift_beginAccess();
  sub_1A3F17D14();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 424))(v6);
  }

  return result;
}

uint64_t sub_1A45C2FC4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___verticalSizeClass;
  swift_beginAccess();
  sub_1A4188350();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 424))(v6);
  }

  return result;
}

uint64_t sub_1A45C30FC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation;
  swift_beginAccess();
  sub_1A41883A8();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 424))(v6);
  }

  return result;
}

uint64_t sub_1A45C3234()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = type metadata accessor for LemonadeSearchSpec();
      v3 = sub_1A45C42D4(&qword_1EB13E510, type metadata accessor for LemonadeSearchSpec);
      v4 = v1;
      LemonadeMutableContainerSizeSpecsProviderModel.containerSize.getter(v2, v3);
      v6 = v5;
      v8 = v7;
      [v4 containerSize];
      if (v6 != v10 || v8 != v9)
      {
        [v4 containerSize];
        v13 = v12;
        v15 = v14;
        LemonadeMutableContainerSizeSpecsProviderModel.containerSafeAreaInsets.getter(v2, v3);
        v17 = v16;
        v19 = v18;
        v22.top = v20;
        v22.left = v21;
        v22.bottom = v17;
        v22.right = v19;
        LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v15, v13), v22);
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for LemonadeSearchSpec()
{
  result = qword_1EB189BC0;
  if (!qword_1EB189BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1A45C3424()
{
  swift_getKeyPath();
  (*(*v0 + 416))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets;
  swift_beginAccess();
  return *v1;
}

void sub_1A45C34B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 192))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

__n128 sub_1A45C3550()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

void (*sub_1A45C35B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec);
  sub_1A52415F4();

  v4[7] = sub_1A45C33C4();
  return sub_1A45C3704;
}

double sub_1A45C3770()
{
  swift_getKeyPath();
  (*(*v0 + 416))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A45C3890()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize);
  result = swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  return result;
}

void (*sub_1A45C38F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec);
  sub_1A52415F4();

  v4[7] = sub_1A45C3710();
  return sub_1A45C3A40;
}

uint64_t sub_1A45C3AAC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 416))();

  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___horizontalSizeClass;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_1A45C3B44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A45C3BA8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 296))(&v4);
}

void (*sub_1A45C3C28(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec);
  sub_1A52415F4();

  v4[7] = sub_1A45C3A4C();
  return sub_1A45C3D78;
}

uint64_t sub_1A45C3DE4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 416))();

  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___verticalSizeClass;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_1A45C3E7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A45C3EE0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 344))(&v4);
}

void (*sub_1A45C3F60(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec);
  sub_1A52415F4();

  v4[7] = sub_1A45C3D84();
  return sub_1A45C40B0;
}

uint64_t sub_1A45C411C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 416))();

  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_1A45C41B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A45C4218(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 392))(&v4);
}

uint64_t sub_1A45C4278()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A45C42D4(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_1A45C431C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec);
  sub_1A52415F4();

  v4[7] = sub_1A45C40BC();
  return sub_1A45C446C;
}

uint64_t sub_1A45C45B8()
{
  sub_1A45C9BF4(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_cellSpecs, sub_1A3C39450);
  v1 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void (*sub_1A45C46C8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 256))();
  return sub_1A3E62A10;
}

void (*sub_1A45C47A8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 208))();
  return sub_1A3E658B0;
}

void (*sub_1A45C48B8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 304))();
  return sub_1A3E658B0;
}

void (*sub_1A45C49D0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 352))();
  return sub_1A3E658B0;
}

void (*sub_1A45C4AE8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 400))();
  return sub_1A3E658B0;
}

uint64_t sub_1A45C4D98@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_1A45C4DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A45C4E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for LemonadeSearchCollectionResultShelfView();
  v15 = a7 + v14[13];
  sub_1A5247BA4();
  sub_1A524B694();
  *v15 = v19;
  *(v15 + 16) = v20;
  *(v15 + 32) = v21;
  v16 = v14[14];
  *(a7 + v16) = swift_getKeyPath();
  sub_1A45C4DC8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v17 = *(a6 - 8);
  (*(v17 + 16))(a7, a1, a6);
  *(a7 + v14[9]) = a2;
  *(a7 + v14[10]) = a4;
  *(a7 + v14[11]) = a3;
  *(swift_allocObject() + 16) = a5;
  type metadata accessor for LemonadeSearchSpec();
  sub_1A5247C74();
  return (*(v17 + 8))(a1, a6);
}

uint64_t sub_1A45C5010@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LemonadeSearchSpec();
  v4 = swift_allocObject();
  v5 = v3;
  result = sub_1A45C29CC(v3, 0);
  *a1 = v4;
  return result;
}

uint64_t sub_1A45C506C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v94 = a2;
  v93 = sub_1A5242D14();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v69 - v5;
  v6 = *(a1 - 8);
  v88 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeSearchSpec();
  v10 = *(a1 + 24);
  v70 = *(a1 + 16);
  v69 = v10;
  v11 = type metadata accessor for LemonadeShelf();
  WitnessTable = swift_getWitnessTable();
  *&v107 = v9;
  *(&v107 + 1) = v11;
  *&v108 = &off_1F1718340;
  *(&v108 + 1) = WitnessTable;
  type metadata accessor for LemonadeSpecsProviderView();
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A44DA2F0(255);
  sub_1A5248804();
  sub_1A3E7D334(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  v13 = swift_getWitnessTable();
  v14 = sub_1A4010C90();
  v118 = v13;
  v119 = v14;
  v15 = MEMORY[0x1E697E858];
  v16 = swift_getWitnessTable();
  v17 = MEMORY[0x1E6980A18];
  v18 = sub_1A45C42D4(&qword_1EB122198, sub_1A44DA2F0);
  v116 = v16;
  v117 = v18;
  v95 = v15;
  v19 = swift_getWitnessTable();
  v89 = v17;
  v20 = sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334);
  v114 = v19;
  v115 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24);
  v112 = v21;
  v113 = v22;
  swift_getWitnessTable();
  sub_1A524B894();
  v23 = sub_1A5248804();
  v73 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  sub_1A45C5CC4();
  v26 = sub_1A5248804();
  v79 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v69 - v27;
  v75 = type metadata accessor for LemonadeSearchCollectionResultShelfView.AdjustedClipShape();
  v76 = swift_getWitnessTable();
  v78 = sub_1A5247FC4();
  v77 = sub_1A5248804();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v69 - v28;
  sub_1A45C5D8C(255);
  v82 = sub_1A5248804();
  v86 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v74 = &v69 - v29;
  v85 = sub_1A5248804();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v83 = &v69 - v32;
  v33 = a1;
  v34 = a1;
  v35 = v96;
  sub_1A45C5DF4(v34, v25);
  v36 = v87;
  (*(v6 + 16))(v87, v35, v33);
  v37 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v38 = swift_allocObject();
  v39 = v69;
  *(v38 + 16) = v70;
  *(v38 + 24) = v39;
  (*(v6 + 32))(v38 + v37, v36, v33);
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x1E697EBE0];
  v40 = swift_getWitnessTable();
  sub_1A45C5D20();
  v41 = MEMORY[0x1E697DA60];
  v42 = v71;
  sub_1A524ABE4();

  (*(v73 + 8))(v25, v23);
  v43 = v96;
  v44 = (v96 + *(v33 + 52));
  v45 = *(v44 + 4);
  v46 = v44[1];
  v107 = *v44;
  v108 = v46;
  v109 = v45;
  sub_1A45CBA60(0, &qword_1EB13E540, v41, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v107 = v105;
  v108 = v106;
  v47 = sub_1A45C42D4(&qword_1EB13E548, sub_1A45C5CC4);
  v103 = v40;
  v104 = v47;
  v48 = swift_getWitnessTable();
  v49 = v72;
  sub_1A524B194();
  (*(v79 + 8))(v42, v26);
  swift_getKeyPath();
  *&v107 = *(v43 + *(v33 + 40));

  v50 = swift_getWitnessTable();
  v101 = v48;
  v102 = v50;
  v51 = v77;
  v52 = swift_getWitnessTable();
  v53 = v74;
  sub_1A524A964();

  (*(v80 + 8))(v49, v51);
  sub_1A524A074();
  v54 = v90;
  sub_1A45C99DC(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v90);
  v55 = v92;
  v56 = v91;
  v57 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x1E69C21F8], v93);
  sub_1A5242D04();
  v58 = *(v55 + 8);
  v58(v56, v57);
  v58(v54, v57);
  v59 = sub_1A45C42D4(&qword_1EB13E550, sub_1A45C5D8C);
  v99 = v52;
  v100 = v59;
  v60 = v82;
  v61 = swift_getWitnessTable();
  v62 = v81;
  sub_1A524B0D4();
  (*(v86 + 8))(v53, v60);
  v97 = v61;
  v98 = MEMORY[0x1E697E5D8];
  v63 = v85;
  swift_getWitnessTable();
  v64 = v84;
  v65 = *(v84 + 16);
  v66 = v83;
  v65(v83, v62, v63);
  v67 = *(v64 + 8);
  v67(v62, v63);
  v65(v94, v66, v63);
  return (v67)(v66, v63);
}

void sub_1A45C5CC4()
{
  if (!qword_1EB13E520)
  {
    sub_1A45C5D20();
    v0 = sub_1A5249BB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E520);
    }
  }
}

unint64_t sub_1A45C5D20()
{
  result = qword_1EB128AF0;
  if (!qword_1EB128AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128AF0);
  }

  return result;
}

uint64_t sub_1A45C5DF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for LemonadeSearchSpec();
  v4 = *(a1 + 24);
  v21 = *(a1 + 16);
  v20 = v4;
  v37 = v3;
  v38 = type metadata accessor for LemonadeShelf();
  v39 = &off_1F1718340;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for LemonadeSpecsProviderView();
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A44DA2F0(255);
  sub_1A5248804();
  sub_1A3E7D334(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  v35 = swift_getWitnessTable();
  v36 = sub_1A4010C90();
  v33 = swift_getWitnessTable();
  v34 = sub_1A45C42D4(&qword_1EB122198, sub_1A44DA2F0);
  v31 = swift_getWitnessTable();
  v32 = sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334);
  v29 = swift_getWitnessTable();
  v30 = sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24);
  swift_getWitnessTable();
  v5 = sub_1A524B894();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = sub_1A5248804();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v24 = v21;
  v25 = v20;
  v26 = v22;
  sub_1A5249574();
  sub_1A524B884();
  v16 = swift_getWitnessTable();
  sub_1A524B1A4();
  (*(v6 + 8))(v8, v5);
  v27 = v16;
  v28 = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v17 = *(v10 + 16);
  v17(v15, v12, v9);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v17(v23, v15, v9);
  return (v18)(v15, v9);
}

uint64_t sub_1A45C6294()
{
  type metadata accessor for LemonadeSearchCollectionResultShelfView();
  sub_1A45CBA60(0, &qword_1EB13E540, MEMORY[0x1E697DA60], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A45C6358@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248D54();
  *a1 = result;
  return result;
}

void sub_1A45C63B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeSearchSpec();
  v35 = v9;
  v10 = type metadata accessor for LemonadeShelf();
  WitnessTable = swift_getWitnessTable();
  v57[0] = v9;
  v57[1] = v10;
  v57[2] = &off_1F1718340;
  v57[3] = WitnessTable;
  v11 = type metadata accessor for LemonadeSpecsProviderView();
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v31 - v12);
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  v14 = sub_1A5248804();
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v31 - v15;
  sub_1A44DA2F0(255);
  v38 = sub_1A5248804();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v33 = &v31 - v16;
  sub_1A3E7D334(255);
  v42 = sub_1A5248804();
  v46 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v37 = &v31 - v17;
  sub_1A3D63A24(255);
  v45 = sub_1A5248804();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v31 - v20;
  v21 = type metadata accessor for LemonadeSearchCollectionResultShelfView();
  sub_1A45C4DC8(0, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v56 = 4;
  v49 = a2;
  v50 = a3;
  v51 = a1;
  LemonadeSpecsProviderView.init(model:presentationContext:content:)(v57, &v56, sub_1A45CBC60, v35, v13);
  swift_getKeyPath();
  v57[0] = 0x4024000000000000;
  v22 = swift_getWitnessTable();
  v23 = v32;
  sub_1A524A964();

  (*(v36 + 8))(v13, v11);
  swift_getKeyPath();
  v57[0] = *(a1 + *(v21 + 44));
  v24 = sub_1A4010C90();
  v54 = v22;
  v55 = v24;

  v36 = MEMORY[0x1E697E858];
  v25 = swift_getWitnessTable();
  v26 = v33;
  sub_1A524A964();

  (*(v39 + 8))(v23, v14);
  swift_getKeyPath();
  v27 = *(*(*(a1 + *(v21 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v57[0] = v27;
  v28 = sub_1A45C42D4(&qword_1EB122198, sub_1A44DA2F0);
  v52 = v25;
  v53 = v28;
  v29 = v27;
  v30 = v38;
  swift_getWitnessTable();
  sub_1A524A964();

  (*(v41 + 8))(v26, v30);
  swift_getKeyPath();
  sub_1A3EECF3C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  sub_1A4654ADC();
  sub_1A3EED838();
  sub_1A52459A4();
}

uint64_t sub_1A45C6C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeShelf();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  (*(v8 + 16))(v10, a1, a2, v16);
  v19 = *(a1 + *(type metadata accessor for LemonadeSearchCollectionResultShelfView() + 36));

  LODWORD(v8) = sub_1A3C5A374();
  v20 = sub_1A3C5A374();
  sub_1A3EFC060(v10, v19, v8, v20 & 1, 1, a2, a3, v14);
  swift_getWitnessTable();
  v21 = *(v12 + 16);
  v21(v18, v14, v11);
  v22 = *(v12 + 8);
  v22(v14, v11);
  v21(a4, v18, v11);
  return (v22)(v18, v11);
}

double sub_1A45C6EC4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1A524A314();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  sub_1A524A304();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_1A45C6FB0@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1A45C6EC4(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1A45C7028(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A5247AC4();
  return sub_1A3E658B0;
}

uint64_t sub_1A45C70B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A45C7130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A45C71AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t sub_1A45C7214(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for LemonadeSearchSpec();

  return sub_1A5247C74();
}

uint64_t sub_1A45C7298()
{
  type metadata accessor for LemonadeSearchSpec();
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_cellSpecs;
  v2 = sub_1A5244084();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_zoomLevel;
  *(v0 + v3) = *sub_1A44DAFD8();
  v4 = (v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___horizontalSizeClass) = 2;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___verticalSizeClass) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation) = 1;
  sub_1A5241604();
  *(v0 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_verticalMargin) = 0;
  return v0;
}

void sub_1A45C73A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v111 = a1;
  v2 = (a1 - 8);
  v107 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v114 = v3;
  v112 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v108 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1A5247E04();
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v90 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = v69 - v8;
  v9 = type metadata accessor for LemonadeSearchSpec();
  v82 = v9;
  v10 = v2[4];
  v116 = v2[3];
  v113 = v10;
  v115 = v2[5];
  v11 = type metadata accessor for LemonadeSectionedFeedView();
  v81 = v11;
  WitnessTable = swift_getWitnessTable();
  v138 = v9;
  v139 = v11;
  v140 = &off_1F1718340;
  v141 = WitnessTable;
  v12 = type metadata accessor for LemonadeSpecsProviderView();
  v95 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v69 - v13);
  sub_1A3DA3064();
  v15 = sub_1A5248804();
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v89 = v69 - v16;
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  v17 = sub_1A5248804();
  v96 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v92 = v69 - v18;
  sub_1A3E7D334(255);
  v19 = sub_1A5248804();
  v102 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v101 = v69 - v20;
  sub_1A3D63A24(255);
  v21 = sub_1A5248804();
  v105 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v103 = v69 - v22;
  sub_1A45C9968(255);
  sub_1A5248804();
  sub_1A45C999C(255);
  v23 = sub_1A5248804();
  v99 = v12;
  v24 = swift_getWitnessTable();
  v25 = sub_1A45C42D4(&qword_1EB127B20, sub_1A3DA3064);
  v69[2] = v24;
  v136 = v24;
  v137 = v25;
  v98 = v15;
  v26 = swift_getWitnessTable();
  v27 = sub_1A4010C90();
  v69[3] = v26;
  v134 = v26;
  v135 = v27;
  v100 = v17;
  v28 = swift_getWitnessTable();
  v29 = sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334);
  v69[5] = v28;
  v132 = v28;
  v133 = v29;
  v104 = v19;
  v30 = v14;
  v31 = swift_getWitnessTable();
  v32 = sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24);
  v72 = v31;
  v130 = v31;
  v131 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_1A45C42D4(&qword_1EB13E568, sub_1A45C9968);
  v128 = v33;
  v129 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_1A45C42D4(&qword_1EB13E570, sub_1A45C999C);
  v126 = v35;
  v127 = v36;
  v37 = swift_getWitnessTable();
  v138 = v21;
  v139 = v23;
  v140 = v33;
  v141 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v76 = v69 - v39;
  sub_1A45C5CC4();
  v79 = OpaqueTypeMetadata2;
  v40 = sub_1A5248804();
  v83 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v110 = v69 - v41;
  sub_1A410AB24();
  v42 = sub_1A5248804();
  v86 = *(v42 - 1);
  MEMORY[0x1EEE9AC00](v42);
  v84 = v69 - v43;
  v138 = v21;
  v139 = v23;
  v91 = v23;
  v77 = v33;
  v140 = v33;
  v141 = v37;
  v69[10] = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_1A45C42D4(&qword_1EB13E548, sub_1A45C5CC4);
  v69[1] = OpaqueTypeConformance2;
  v124 = OpaqueTypeConformance2;
  v125 = v45;
  v85 = v40;
  v46 = swift_getWitnessTable();
  v47 = sub_1A45C42D4(&unk_1EB127B30, sub_1A410AB24);
  v69[8] = v46;
  v122 = v46;
  v123 = v47;
  v48 = swift_getWitnessTable();
  v138 = v42;
  v139 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v74 = *(v49 - 1);
  MEMORY[0x1EEE9AC00](v49);
  v71 = v69 - v50;
  v87 = v42;
  v138 = v42;
  v139 = v48;
  v73 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v75 = v49;
  v138 = v49;
  v139 = v51;
  v69[7] = v51;
  v70 = swift_getOpaqueTypeMetadata2();
  v69[9] = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69[4] = v69 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v69[6] = v69 - v54;
  sub_1A45C4DC8(0, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
  v55 = v109;
  sub_1A5247C84();
  v121 = 4;
  v117 = v116;
  v118 = v113;
  v119 = v115;
  v120 = v55;
  LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v138, &v121, sub_1A45C99D0, v82, v30);
  v56 = v55;
  v57 = v88;
  sub_1A45C99DC(&qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBD0], v88);
  v58 = v93;
  v59 = v90;
  v60 = v97;
  (*(v93 + 104))(v90, *MEMORY[0x1E697DBA8], v97);
  LOBYTE(v24) = sub_1A5247DF4();
  v61 = *(v58 + 8);
  v61(v59, v60);
  v61(v57, v60);
  if (v24)
  {
    v62 = sub_1A524B404();
  }

  else
  {
    v62 = sub_1A524B414();
  }

  v138 = v62;
  sub_1A524A064();
  v63 = v89;
  v64 = v99;
  sub_1A524A8D4();

  (*(v95 + 8))(v30, v64);
  swift_getKeyPath();
  v138 = 0x4024000000000000;
  v65 = v92;
  v66 = v98;
  sub_1A524A964();

  (*(v94 + 8))(v63, v66);
  swift_getKeyPath();
  v138 = *(*(*(v56 + *(v111 + 44)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v67 = v138;
  v68 = v100;
  sub_1A524A964();

  (*(v96 + 8))(v65, v68);
  swift_getKeyPath();
  sub_1A3EECF3C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  sub_1A4654ADC();
  sub_1A3EED838();
  sub_1A52459A4();
}

uint64_t sub_1A45C88A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v25 = a5;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeSectionedFeedView();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  (*(v9 + 16))(v11, a1, a2, v17);
  v20 = *(a1 + *(type metadata accessor for LemonadeSearchCollectionResultFeedView() + 44));

  sub_1A3F75F48(v11, v20, a2, a3, a4, v15);
  swift_getWitnessTable();
  v21 = *(v13 + 16);
  v21(v19, v15, v12);
  v22 = *(v13 + 8);
  v22(v15, v12);
  v21(v25, v19, v12);
  return (v22)(v19, v12);
}

uint64_t sub_1A45C8AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a5;
  v73 = a4;
  v72 = a3;
  v79 = a2;
  v80 = a1;
  v87 = a6;
  v68 = sub_1A5249A94();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC();
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v63 - v14;
  v78 = sub_1A5242D14();
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v63 - v17;
  v18 = sub_1A52440D4();
  v85 = *(v18 - 8);
  v86 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1A5243A24();
  v20 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LemonadeSearchSpec();
  v24 = type metadata accessor for LemonadeSectionedFeedView();
  WitnessTable = swift_getWitnessTable();
  v98 = v23;
  v99 = v24;
  v100 = &off_1F1718340;
  v101 = WitnessTable;
  type metadata accessor for LemonadeSpecsProviderView();
  sub_1A3DA3064();
  sub_1A5248804();
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3E7D334(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  sub_1A45C9968(255);
  v26 = sub_1A5248804();
  v82 = *(v26 - 8);
  v83 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v63 - v27;
  swift_getKeyPath();
  v29 = v71;
  (*(v20 + 104))(v22, *MEMORY[0x1E69C2780], v71);
  v30 = swift_getWitnessTable();
  v31 = sub_1A45C42D4(&qword_1EB127B20, sub_1A3DA3064);
  v96 = v30;
  v97 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_1A4010C90();
  v94 = v32;
  v95 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334);
  v92 = v34;
  v93 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24);
  v90 = v36;
  v91 = v37;
  v38 = swift_getWitnessTable();
  v81 = v28;
  sub_1A524A964();

  (*(v20 + 8))(v22, v29);
  swift_getKeyPath();
  type metadata accessor for LemonadeSearchCollectionResultFeedView();
  v39 = v76;
  sub_1A45C99DC(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v76);
  v40 = v75;
  v41 = v77;
  v42 = v78;
  (*(v75 + 104))(v77, *MEMORY[0x1E69C21F8], v78);
  LOBYTE(v24) = sub_1A5242D04();
  v43 = *(v40 + 8);
  v43(v41, v42);
  v43(v39, v42);
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

  v44 = v70;
  sub_1A3DC7F98(v70);
  v45 = v67;
  v46 = v69;
  v47 = v68;
  (*(v67 + 104))(v69, *MEMORY[0x1E697FF38], v68);
  (*(v45 + 56))(v46, 0, 1, v47);
  v48 = *(v65 + 48);
  v49 = v66;
  sub_1A3F188F8(v44, v66);
  sub_1A3F188F8(v46, v49 + v48);
  v50 = *(v45 + 48);
  if (v50(v49, 1, v47) == 1)
  {
    sub_1A45C9BF4(v46, sub_1A3DC7D88);
    sub_1A45C9BF4(v44, sub_1A3DC7D88);
    if (v50(v49 + v48, 1, v47) == 1)
    {
      sub_1A45C9BF4(v49, sub_1A3DC7D88);
LABEL_10:
      v52 = MEMORY[0x1E69C2978];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v51 = v64;
  sub_1A3F188F8(v49, v64);
  if (v50(v49 + v48, 1, v47) == 1)
  {
    sub_1A45C9BF4(v69, sub_1A3DC7D88);
    sub_1A45C9BF4(v70, sub_1A3DC7D88);
    (*(v45 + 8))(v51, v47);
LABEL_7:
    sub_1A45C9BF4(v49, sub_1A3DD0DCC);
    goto LABEL_8;
  }

  v53 = v63;
  (*(v45 + 32))(v63, v49 + v48, v47);
  sub_1A45C42D4(&qword_1EB127B70, MEMORY[0x1E697FF50]);
  v54 = sub_1A524C594();
  v55 = *(v45 + 8);
  v55(v53, v47);
  sub_1A45C9BF4(v69, sub_1A3DC7D88);
  sub_1A45C9BF4(v70, sub_1A3DC7D88);
  v55(v51, v47);
  sub_1A45C9BF4(v49, sub_1A3DC7D88);
  if (v54)
  {
    goto LABEL_10;
  }

LABEL_8:
  v52 = MEMORY[0x1E69C2988];
LABEL_11:
  v57 = v84;
  v56 = v85;
  v58 = v86;
  (*(v85 + 104))(v84, *v52, v86);
  v59 = sub_1A45C42D4(&qword_1EB13E568, sub_1A45C9968);
  v88 = v38;
  v89 = v59;
  v60 = v83;
  swift_getWitnessTable();
  v61 = v81;
  sub_1A524A964();

  (*(v56 + 8))(v57, v58);
  return (*(v82 + 8))(v61, v60);
}

uint64_t sub_1A45C9698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1A45C9768@<X0>(void *a1@<X8>)
{
  result = sub_1A52482A4();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1A45C9798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for LemonadeSearchCollectionResultFeedView();
  *(a6 + v10[11]) = a2;
  v11 = (a6 + v10[12]);
  *v11 = a3;
  v11[1] = a4;
  v12 = v10[13];
  *(a6 + v12) = swift_getKeyPath();
  v13 = MEMORY[0x1E697DCB8];
  sub_1A45C4DC8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v14 = v10[14];
  *(a6 + v14) = swift_getKeyPath();
  sub_1A45C4DC8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v13);
  swift_storeEnumTagMultiPayload();
  v15 = v10[15];
  *(a6 + v15) = swift_getKeyPath();
  sub_1A45C4DC8(0, &unk_1EB128A40, sub_1A3DC7D88, v13);
  swift_storeEnumTagMultiPayload();
  return sub_1A45C7214(sub_1A45C7298, 0);
}

uint64_t sub_1A45C99DC@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45C4DC8(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A45CBBD4(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1A45C9BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45C9C78(CGFloat *a1)
{
  type metadata accessor for LemonadeSearchCollectionResultFeedView();
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1A45C4DC8(0, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A5247C84();
  v6 = type metadata accessor for LemonadeSearchSpec();
  v7 = sub_1A45C42D4(&qword_1EB13E510, type metadata accessor for LemonadeSearchSpec);
  LemonadeMutableContainerSizeSpecsProviderModel.containerSize.getter(v6, v7);
  v9 = v8;
  v11 = v10;

  v13.top = v2;
  v13.left = v3;
  v13.bottom = v4;
  v13.right = v5;
  LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v11, v9), v13);
}

uint64_t sub_1A45C9E08(unint64_t *a1)
{
  type metadata accessor for LemonadeSearchCollectionResultFeedView();
  v2 = *a1;
  v3 = a1[1];
  sub_1A45C4DC8(0, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A5247C84();
  v4 = type metadata accessor for LemonadeSearchSpec();
  v5 = sub_1A45C42D4(&qword_1EB13E510, type metadata accessor for LemonadeSearchSpec);
  LemonadeMutableContainerSizeSpecsProviderModel.containerSafeAreaInsets.getter(v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v15.top = v7;
  v15.left = v9;
  v15.bottom = v11;
  v15.right = v13;
  LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v3, v2), v15);
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeSearchCollectionResultFeedView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 40) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  if (*(v3 + v2[12]))
  {
  }

  v4 = v2[13];
  sub_1A45C4DC8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5247E04();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v2[14];
  sub_1A45C4DC8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5242D14();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v2[15];
  sub_1A45C4DC8(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5249A94();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v3 + v2[16];
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A45C4DC8(0, &qword_1EB127278, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A45CA368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSearchCollectionResultFeedView();
  v5 = *(*(v4 - 8) + 80);
  result = sub_1A5247EA4();
  if ((result & 1) == 0)
  {
    v7 = (v2 + *(v4 + 48) + ((v5 + 40) & ~v5));
    if (*v7)
    {
      return (*v7)(a2);
    }
  }

  return result;
}

uint64_t sub_1A45CA414(uint64_t a1)
{
  result = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec);
  *(a1 + 8) = result;
  return result;
}

void sub_1A45CA504()
{
  sub_1A3C39450();
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A45CA620()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      sub_1A52429E4();
      if (v2 <= 0x3F)
      {
        sub_1A5244244();
        if (v3 <= 0x3F)
        {
          sub_1A45C4DC8(319, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
          if (v4 <= 0x3F)
          {
            sub_1A45CBA60(319, &qword_1EB13E540, MEMORY[0x1E697DA60], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1A45C4DC8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A45CA7A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v5 = *(v32 - 8);
  v6 = *(v5 + 84);
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  v31 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_1A5242D14();
  v13 = 8;
  v14 = *(v5 + 64);
  if (*(*(v12 - 8) + 64) > 8uLL)
  {
    v13 = *(*(v12 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v8 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 15;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v18 = *(*(v12 - 8) + 80) & 0xF8 | 7;
  v19 = v13 + ((((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v18 + ((v17 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v16) + 48) & ~v18) + 1;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_12;
  }

  v23 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v23))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_31;
      }

LABEL_12:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_31;
      }

LABEL_20:
      v24 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v24 = 0;
      }

      if (v19)
      {
        if (v19 > 3)
        {
          LODWORD(v19) = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v19) = *a1;
          }
        }

        else if (v19 == 1)
        {
          LODWORD(v19) = *a1;
        }

        else
        {
          LODWORD(v19) = *a1;
        }
      }

      return v11 + (v19 | v24) + 1;
    }

    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_20;
    }
  }

LABEL_31:
  if (v6 == v11)
  {
    v25 = v32;
    v26 = *(v5 + 48);
    v27 = a1;
    v28 = v6;
LABEL_38:

    return v26(v27, v28, v25);
  }

  v29 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 0x80000000) != 0)
  {
    v26 = *(v8 + 48);
    v27 = (v17 + ((((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v16;
    v28 = v9;
    v25 = v31;
    goto LABEL_38;
  }

  v30 = *v29;
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  return (v30 + 1);
}

void sub_1A45CAB04(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v39 = *(a4 + 16);
  v5 = *(v39 - 8);
  v38 = v5;
  v6 = *(v5 + 84);
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  v37 = v7;
  v8 = *(v7 - 8);
  v40 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(sub_1A5242D14() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v5 + 64);
  v16 = *(v8 + 80) & 0xF8;
  v17 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 + 15;
  v19 = (*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v13 + 80) & 0xF8 | 7;
  v21 = v14 + ((v19 + v20 + ((v18 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v17) + 48) & ~v20) + 1;
  if (a3 <= v12)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v12 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v12 < a2)
  {
    v24 = ~v12 + a2;
    if (v21 >= 4)
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_20;
      }

      goto LABEL_58;
    }

    v25 = (v24 >> (8 * v21)) + 1;
    if (v21)
    {
      v28 = v24 & ~(-1 << (8 * v21));
      bzero(v22, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *v22 = v28;
          if (v23 > 1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          *v22 = v24;
          if (v23 > 1)
          {
LABEL_20:
            if (v23 == 2)
            {
              *&v22[v21] = v25;
            }

            else
            {
              *&v22[v21] = v25;
            }

            return;
          }
        }

LABEL_58:
        if (v23)
        {
          v22[v21] = v25;
        }

        return;
      }

      *v22 = v28;
      v22[2] = BYTE2(v28);
    }

    if (v23 > 1)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *&v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *&v22[v21] = 0;
  }

  else if (v23)
  {
    v22[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v6 == v12)
  {
    v29 = v39;
    v30 = *(v38 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v6;
LABEL_43:

    v30(v31, v32, v33, v29);
    return;
  }

  v34 = (&v22[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v35 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v35 = a2 - 1;
    }

    *v34 = v35;
    return;
  }

  v31 = ((v18 + ((((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v17);
  if (v10 >= a2)
  {
    v30 = *(v40 + 56);
    v32 = a2;
    v33 = v9;
    v29 = v37;
    goto LABEL_43;
  }

  if (v19 != -8)
  {
    v36 = ((v18 + ((((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v17);
    bzero(v31, (v19 + 8));
    *v36 = ~v10 + a2;
  }
}

void sub_1A45CAF2C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      sub_1A45C4DC8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A45C4DC8(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A45C4DC8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A45C4DC8(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A45C4DC8(319, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A45CB11C(int *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1A5247E04() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v42 = v7;
  v8 = *(sub_1A5242D14() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v41 = v9;
  v10 = *(sub_1A5249A94() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  v14 = *(v13 - 8);
  v15 = *(v4 + 64);
  if (*(v14 + 84) <= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = v12;
  }

  else
  {
    v18 = v12 + 1;
  }

  if (v18 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 80) & 0xF8 | 7;
  v21 = *(v8 + 80) & 0xF8 | 7;
  v22 = v42 + v21 + 1;
  v23 = *(v10 + 80) & 0xF8 | 7;
  v24 = v41 + v23 + 1;
  v25 = *(v14 + 80) & 0xF8 | 7;
  v26 = v19 + v25 + 1;
  if (v17 >= a2)
  {
    goto LABEL_40;
  }

  v27 = ((*(*(v13 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v26 + ((v24 + ((v22 + ((v20 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20)) & ~v21)) & ~v23)) & ~v25) + 8;
  v28 = v27 & 0xFFFFFFF8;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v17 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v32 = *(a1 + v27);
      if (!v32)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v32 = *(a1 + v27);
      if (!v32)
      {
        goto LABEL_40;
      }
    }

LABEL_37:
    v34 = v32 - 1;
    if (v28)
    {
      v34 = 0;
      v35 = *a1;
    }

    else
    {
      v35 = 0;
    }

    return v17 + (v35 | v34) + 1;
  }

  if (v31)
  {
    v32 = *(a1 + v27);
    if (v32)
    {
      goto LABEL_37;
    }
  }

LABEL_40:
  if (v5 == v17)
  {
    v36 = *(v4 + 48);

    return v36(a1, v5, v40);
  }

  else
  {
    v37 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v16 & 0x80000000) != 0)
    {
      v39 = *(v14 + 48);

      return v39((v26 + ((v24 + ((v22 + ((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 16) & ~v20)) & ~v21)) & ~v23)) & ~v25);
    }

    else
    {
      v38 = *v37;
      if (v38 >= 0xFFFFFFFF)
      {
        LODWORD(v38) = -1;
      }

      return (v38 + 1);
    }
  }
}

void sub_1A45CB568(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v45 = *(a4 + 16);
  v4 = *(v45 - 8);
  v44 = v4;
  v5 = *(v4 + 84);
  v6 = *(sub_1A5247E04() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(sub_1A5242D14() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_1A5249A94() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = *(v4 + 64);
  v18 = *(v14 + 64);
  if (*(v14 + 84) <= 0x7FFFFFFEu)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (v5 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v5;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v6 + 80) & 0xF8 | 7;
  v23 = *(v8 + 80) & 0xF8 | 7;
  v24 = v7 + v23 + 1;
  v25 = *(v10 + 80) & 0xF8 | 7;
  v26 = v9 + v25 + 1;
  if (v11)
  {
    v27 = v12;
  }

  else
  {
    v27 = v12 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v28 = v16 & 0xF8 | 7;
  v29 = v27 + v28 + 1;
  v30 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = ((v29 + ((v26 + ((v24 + ((v22 + ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22)) & ~v23)) & ~v25)) & ~v28) + v30;
  if (v21 >= a3)
  {
    v34 = 0;
  }

  else
  {
    if (v31)
    {
      v32 = 2;
    }

    else
    {
      v32 = a3 - v21 + 1;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  if (a2 > v21)
  {
    if (v31)
    {
      v35 = 1;
    }

    else
    {
      v35 = a2 - v21;
    }

    if (v31)
    {
      v36 = ~v21 + a2;
      bzero(a1, v31);
      *a1 = v36;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        *(a1 + v31) = v35;
      }

      else
      {
        *(a1 + v31) = v35;
      }
    }

    else if (v34)
    {
      *(a1 + v31) = v35;
    }

    return;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    *(a1 + v31) = 0;
LABEL_51:
    if (!a2)
    {
      return;
    }

    goto LABEL_52;
  }

  if (!v34)
  {
    goto LABEL_51;
  }

  *(a1 + v31) = 0;
  if (!a2)
  {
    return;
  }

LABEL_52:
  if (v5 == v21)
  {
    v37 = *(v44 + 56);

    v37(a1, a2, v5, v45);
  }

  else
  {
    v38 = ((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v20 & 0x80000000) != 0)
    {
      v40 = ((v29 + ((v26 + ((v24 + ((((v38 + 15) & 0xFFFFFFFFFFFFFFF8) + v22 + 16) & ~v22)) & ~v23)) & ~v25)) & ~v28);
      if (v19 >= a2)
      {
        v43 = *(v15 + 56);

        v43(v40, a2);
      }

      else if (v30)
      {
        v41 = ~v19 + a2;
        v42 = v40;
        bzero(v40, v30);
        *v42 = v41;
      }
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v39 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v39 = a2 - 1;
      }

      *v38 = v39;
    }
  }
}

uint64_t sub_1A45CBA24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A45CBA60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A45CBB08(uint64_t a1, uint64_t a2)
{
  sub_1A3DC7D88(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45CBB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45CBBD4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A45C4DC8(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A45CBC9C()
{
  v1 = [v0 actionType];
  v2 = sub_1A524C674();
  v4 = v3;

  v5 = sub_1A45CC334(v2, v4);

  if ((v5 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = [v0 actionType];
    v7 = sub_1A524C674();
    v9 = v8;
    if (sub_1A524C674() == v7 && v10 == v9)
    {
      goto LABEL_10;
    }

    v12 = sub_1A524EAB4();

    if (v12)
    {
LABEL_7:

LABEL_11:

      v14 = 0x100000000;
LABEL_12:
      v15 = [v0 collectionList];
      v16 = [objc_allocWithZone(PXSortCollectionAction) initWithCollection:v15 sortType:v14 | v5];

      v17 = [v0 undoManager];
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1A45CC480;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_220;
      v19 = _Block_copy(aBlock);

      [v16 executeWithUndoManager:v17 completionHandler:v19];
      _Block_release(v19);

      return;
    }

    if (sub_1A524C674() == v7 && v13 == v9)
    {
LABEL_10:

      goto LABEL_11;
    }

    v20 = sub_1A524EAB4();

    if (v20)
    {
      goto LABEL_7;
    }

    if (sub_1A524C674() == v7 && v21 == v9)
    {

LABEL_19:
      v14 = 0;
      goto LABEL_12;
    }

    v22 = sub_1A524EAB4();

    if (v22)
    {

      goto LABEL_19;
    }
  }

  sub_1A524E6E4();
  __break(1u);
}

BOOL sub_1A45CC0B4(id a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = [a1 customSortKey];
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1A45CC334(a2, a3);
  if ((v7 & 0x100000000) != 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = sub_1A524C634();
    v13.receiver = ObjCClassFromMetadata;
    v13.super_class = &OBJC_METACLASS____TtC12PhotosUICore43PXPhotoKitCollectionListSortActionPerformer;
    v12 = objc_msgSendSuper2(&v13, sel_menuActionStateForCollectionList_actionType_, a1, v11);

    return v12;
  }

  else
  {
    return a1 && v6 == v7;
  }
}

id sub_1A45CC300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotoKitCollectionListSortActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A45CC334(uint64_t a1, uint64_t a2)
{
  if (sub_1A524C674() == a1 && v4 == a2)
  {

    goto LABEL_19;
  }

  v6 = sub_1A524EAB4();

  if (v6)
  {
LABEL_19:
    v13 = 0;
    v14 = 5;
    return v14 | ((v13 & 1) << 32);
  }

  if (sub_1A524C674() == a1 && v7 == a2)
  {

    goto LABEL_22;
  }

  v9 = sub_1A524EAB4();

  if (v9)
  {
LABEL_22:
    v14 = 0;
    v13 = 0;
    return v14 | ((v13 & 1) << 32);
  }

  if (sub_1A524C674() == a1 && v10 == a2)
  {

    v13 = 0;
    v14 = 2;
  }

  else
  {
    v12 = sub_1A524EAB4();

    v13 = v12 ^ 1;
    v14 = 2;
    if ((v12 & 1) == 0)
    {
      v14 = 0;
    }
  }

  return v14 | ((v13 & 1) << 32);
}

uint64_t sub_1A45CC480(char a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1 & 1;
    *(v6 + 32) = a2;
    aBlock[4] = sub_1A45CC744;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_7_1;
    _Block_copy(aBlock);
    v7 = v5;
    v8 = a2;

    px_dispatch_on_main_queue();
  }

  return result;
}

uint64_t sub_1A45CC590(uint64_t a1, uint64_t a2)
{
  if (sub_1A524C674() == a1 && v4 == a2)
  {
    goto LABEL_7;
  }

  v6 = sub_1A524EAB4();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1A524C674() == a1 && v11 == a2)
  {
    goto LABEL_7;
  }

  v13 = sub_1A524EAB4();

  if (v13)
  {
    goto LABEL_8;
  }

  if (sub_1A524C674() == a1 && v14 == a2)
  {
LABEL_7:
  }

  else
  {
    v15 = sub_1A524EAB4();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_8:
  v7 = sub_1A524C634();
  v8 = PXLocalizedString(v7);

  v9 = sub_1A524C674();
  return v9;
}

void sub_1A45CC744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v3 = sub_1A5240B74();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v1 completeBackgroundTaskWithSuccess:v2 error:?];
}

void *sub_1A45CC7C4()
{
  if (*(v0 + 48))
  {
    v1 = [objc_allocWithZone(PXPlacesMapFetchResultViewController) initWithInitialCoordinateRegion:*(v0 + 65) enableNearbyAssetsAffordance:0 wantsMapOptionsView:*(v0 + 72) photoLibrary:*(v0 + 80) mapFetchResultController:{*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24)}];
  }

  else
  {
    v1 = [objc_allocWithZone(PXPlacesMapFetchResultViewController) initWithInitialCenterCoordinate:*(v0 + 65) enableNearbyAssetsAffordance:0 wantsMapOptionsView:*(v0 + 72) photoLibrary:*(v0 + 80) mapFetchResultController:{*(v0 + 32), *(v0 + 40)}];
  }

  v2 = v1;
  [v1 setPhotosViewConfigurationPresentationDelegate_];
  if ((*(v0 + 64) & 1) == 0)
  {
    v3 = [objc_opt_self() systemWhiteColor];
    [v2 setNavigationBarTintColor_];
  }

  return v2;
}

uint64_t sub_1A45CC8E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = result;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3 & 1;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 65) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a14;
  return result;
}

unint64_t sub_1A45CC924()
{
  result = qword_1EB1257F0;
  if (!qword_1EB1257F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257F0);
  }

  return result;
}

uint64_t sub_1A45CC97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45CCB1C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A45CC9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45CCB1C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A45CCA44()
{
  sub_1A45CCB1C();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A45CCA6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A45CCAB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A45CCB1C()
{
  result = qword_1EB1257E8;
  if (!qword_1EB1257E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257E8);
  }

  return result;
}

id GenerativeStoryCreationView.photoLibrary.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativeStoryCreationView() + 40));

  return v1;
}

uint64_t type metadata accessor for GenerativeStoryCreationView()
{
  result = qword_1EB1813A0;
  if (!qword_1EB1813A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A45CCBF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697BF90];
  sub_1A45D5148(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for GenerativeStoryCreationView();
  sub_1A45D50C8(v1 + *(v11 + 44), v10, &unk_1EB128A60, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5248284();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A45CCE1C()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for GenerativeStoryCreationView() + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1A45CCF70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2218];
  sub_1A45D5148(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for GenerativeStoryCreationView();
  sub_1A45D50C8(v1 + *(v11 + 52), v10, &qword_1EB128AA0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t GenerativeStoryCreationView.init(configuration:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = type metadata accessor for GenerativeStoryCreationView();
  v8 = a2 + v7[6];
  LOBYTE(v39) = 1;
  sub_1A524B694();
  v9 = v42;
  *v8 = v41;
  *(v8 + 8) = v9;
  v10 = a2 + v7[7];
  v39 = 0;
  v40 = 1;
  sub_1A45D4F78(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  sub_1A524B694();
  v11 = v42;
  v12 = v43;
  *v10 = v41;
  *(v10 + 8) = v11;
  *(v10 + 16) = v12;
  v13 = a2 + v7[8];
  v39 = 0;
  v40 = 1;
  sub_1A524B694();
  v14 = v42;
  v15 = v43;
  *v13 = v41;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15;
  v16 = a2 + v7[9];
  LOBYTE(v39) = 1;
  sub_1A524B694();
  v17 = v42;
  *v16 = v41;
  *(v16 + 8) = v17;
  v18 = v7[11];
  *(a2 + v18) = swift_getKeyPath();
  v19 = MEMORY[0x1E697DCB8];
  sub_1A45D5148(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v20 = a2 + v7[12];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v7[13];
  *(a2 + v21) = swift_getKeyPath();
  sub_1A45D5148(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v19);
  swift_storeEnumTagMultiPayload();
  v22 = a2 + v7[14];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v7[15];
  *(a2 + v23) = swift_getKeyPath();
  sub_1A45D5148(0, &qword_1EB128A90, MEMORY[0x1E69C2948], v19);
  swift_storeEnumTagMultiPayload();
  v24 = v7[16];
  *(a2 + v24) = swift_getKeyPath();
  sub_1A45D5148(0, &qword_1EB128A80, sub_1A3D63A58, v19);
  swift_storeEnumTagMultiPayload();
  v25 = a2 + v7[17];
  sub_1A4222EDC();
  sub_1A5247C44();
  v26 = v42;
  v27 = v43;
  *v25 = v41;
  *(v25 + 8) = v26;
  *(v25 + 16) = v27;
  v28 = a2 + v7[18];
  LOBYTE(v39) = 0;
  sub_1A524B694();
  v29 = v42;
  *v28 = v41;
  *(v28 + 8) = v29;
  v30 = v7[19];
  v31 = sub_1A3C4A780();
  v32 = sub_1A5246F24();
  (*(*(v32 - 8) + 16))(a2 + v30, v31, v32);
  v33 = *a1;
  *(a2 + v7[10]) = *a1;
  sub_1A45D5888(a1, a2 + v7[5], type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  sub_1A45D5888(a1, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  v34 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v35 = swift_allocObject();
  sub_1A45D3A40(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  type metadata accessor for GenerativeStoryCreationViewModel(0);
  v36 = v33;
  sub_1A5247C74();
  return sub_1A45D56A4(a1, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
}

void sub_1A45CD668(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeStoryCreationViewModel(0);
  sub_1A45D5888(a1, v4, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  sub_1A450A7BC(v4);
}

void sub_1A45CD718()
{
  v1 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A45CD668(v2);
}

void GenerativeStoryCreationView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v72 = sub_1A52497B4();
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5247E44();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CE240();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for GenerativeStoryCreationView();
  v8 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v86 = v9;
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CE318(0);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CF75C();
  v76 = v13;
  v75 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5242D14();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  sub_1A45CCF70(&v66 - v20);
  (*(v16 + 104))(v18, *MEMORY[0x1E69C2210], v15);
  v22 = sub_1A5242D04();
  v23 = *(v16 + 8);
  v23(v18, v15);
  v23(v21, v15);
  if (v22)
  {
    v24 = sub_1A524B414();
  }

  else
  {
    v24 = sub_1A524B404();
  }

  v25 = v24;
  v26 = sub_1A524BC74();
  v27 = v85;
  *v85 = v26;
  v27[1] = v28;
  sub_1A45D51AC(0, &qword_1EB13E6C0, sub_1A45CE630);
  v30 = v27 + *(v29 + 44);
  v70 = v25;
  sub_1A45CFD48(v25, v2, v30);
  v31 = sub_1A524BD24();
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v83 = v32;
  v33 = sub_1A5247C84();
  v34 = (*(*v90 + 384))(v33);

  sub_1A45CE4FC();
  v36 = v27 + *(v35 + 36);
  *v36 = v31;
  v36[8] = v34;
  v68 = type metadata accessor for GenerativeStoryCreationView;
  sub_1A45D5888(v2, v10, type metadata accessor for GenerativeStoryCreationView);
  v37 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v84 = *(v8 + 80);
  v38 = swift_allocObject();
  v67 = type metadata accessor for GenerativeStoryCreationView;
  sub_1A45D3A40(v10, v38 + v37, type metadata accessor for GenerativeStoryCreationView);
  sub_1A45CE4C0(0);
  v40 = (v27 + *(v39 + 36));
  *v40 = sub_1A45D3AA8;
  v40[1] = v38;
  v40[2] = 0;
  v40[3] = 0;
  sub_1A45D5888(v2, v10, type metadata accessor for GenerativeStoryCreationView);
  v41 = swift_allocObject();
  sub_1A45D3A40(v10, v41 + v37, type metadata accessor for GenerativeStoryCreationView);
  sub_1A45CE484(0);
  v43 = (v27 + *(v42 + 36));
  *v43 = 0;
  v43[1] = 0;
  v43[2] = sub_1A45D4034;
  v43[3] = v41;
  sub_1A5247C84();
  v44 = v90;
  v45 = v69;

  PXDisplayCollectionDetailedCountsMake(v44);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_1A45CE3DC(0);
  v55 = v27 + *(v54 + 36);
  *v55 = v47;
  v55[8] = v49;
  *(v55 + 2) = v51;
  v55[24] = v53;
  sub_1A5247C84();
  v56 = v90;
  sub_1A45CF6B4(0, &qword_1EB13E590, sub_1A45CE3DC, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
  sub_1A4A53AA0(v56, v27 + *(v57 + 36));
  sub_1A5247C84();
  v66 = v90;
  v58 = v2 + *(v45 + 36);
  v59 = *v58;
  v60 = *(v58 + 8);
  LOBYTE(v88) = v59;
  v89 = v60;
  sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v61 = v90;
  LOBYTE(v51) = v91;
  v69 = v2;
  sub_1A45D5888(v2, v10, v68);
  v62 = swift_allocObject();
  sub_1A45D3A40(v10, v62 + v37, v67);
  sub_1A42B1F08(v66, v61, *(&v61 + 1), v51, sub_1A45D41CC, v62, &v90);
  sub_1A45CE34C();
  v64 = v27 + *(v63 + 36);
  v65 = v91;
  *v64 = v90;
  *(v64 + 1) = v65;
  *(v64 + 2) = v92;
  *(v64 + 6) = v93;
  sub_1A47E510C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45CE240()
{
  if (!qword_1EB122F78)
  {
    sub_1A5247E44();
    sub_1A45D5704(&qword_1EB1248A8, MEMORY[0x1E697BEA8]);
    sub_1A45D5704(&unk_1EB1248B0, MEMORY[0x1E697BE90]);
    v0 = sub_1A5248904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122F78);
    }
  }
}

void sub_1A45CE34C()
{
  if (!qword_1EB13E588)
  {
    sub_1A45CF6B4(255, &qword_1EB13E590, sub_1A45CE3DC, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E588);
    }
  }
}

void sub_1A45CE418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A45CE4FC()
{
  if (!qword_1EB13E5B0)
  {
    sub_1A45CE59C();
    sub_1A45D4B40(255, &qword_1EB122E30, sub_1A3DB95B8, &type metadata for GenerativeStoryCreationViewModel.ViewState, MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E5B0);
    }
  }
}

void sub_1A45CE59C()
{
  if (!qword_1EB13E5B8)
  {
    sub_1A45CE630(255);
    sub_1A45D5704(&qword_1EB13E660, sub_1A45CE630);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E5B8);
    }
  }
}

void sub_1A45CE664()
{
  if (!qword_1EB13E5C8)
  {
    sub_1A45CE740(255);
    sub_1A45CE9DC(255);
    sub_1A45CEA4C(255);
    sub_1A45D5148(255, &qword_1EB1215E0, sub_1A45CED50, MEMORY[0x1E69E6720]);
    sub_1A45CF044();
    sub_1A45CF728(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13E5C8);
    }
  }
}

void sub_1A45CE77C()
{
  if (!qword_1EB13E5D8)
  {
    sub_1A45CE810();
    sub_1A45CEEB4(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E5D8);
    }
  }
}

void sub_1A45CE810()
{
  if (!qword_1EB123D88)
  {
    sub_1A45CE870();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123D88);
    }
  }
}

void sub_1A45CE870()
{
  if (!qword_1EB122F58)
  {
    sub_1A45D5148(255, &qword_1EB125580, type metadata accessor for GenerativeStoryBackgroundView, MEMORY[0x1E69E6720]);
    sub_1A45CE904();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122F58);
    }
  }
}

unint64_t sub_1A45CE904()
{
  result = qword_1EB125578;
  if (!qword_1EB125578)
  {
    sub_1A45D5148(255, &qword_1EB125580, type metadata accessor for GenerativeStoryBackgroundView, MEMORY[0x1E69E6720]);
    sub_1A45D5704(&qword_1EB125588, type metadata accessor for GenerativeStoryBackgroundView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125578);
  }

  return result;
}

void sub_1A45CEB80()
{
  if (!qword_1EB121D40)
  {
    sub_1A45CEC50();
    sub_1A45CFB34(&qword_1EB124188, sub_1A45CEC50, sub_1A45CECD4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D40);
    }
  }
}

void sub_1A45CEC50()
{
  if (!qword_1EB124180)
  {
    sub_1A45D4F78(255, &qword_1EB122230, MEMORY[0x1E69815C0], MEMORY[0x1E697FEC0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124180);
    }
  }
}

unint64_t sub_1A45CECD4()
{
  result = qword_1EB122238;
  if (!qword_1EB122238)
  {
    sub_1A45D4F78(255, &qword_1EB122230, MEMORY[0x1E69815C0], MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122238);
  }

  return result;
}

void sub_1A45CED50()
{
  if (!qword_1EB1215E8)
  {
    sub_1A45CEDEC(255);
    sub_1A45CFB34(&qword_1EB123460, sub_1A45CEDEC, sub_1A45CEF08);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1215E8);
    }
  }
}

void sub_1A45CEE28()
{
  if (!qword_1EB1238C8)
  {
    sub_1A45CEEB4(255, &qword_1EB124198, &type metadata for GenerativeStoryPromptInputViewKeyboardLightEffectsGradient, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1238C8);
    }
  }
}

void sub_1A45CEEB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A45CEF44()
{
  result = qword_1EB1241A0;
  if (!qword_1EB1241A0)
  {
    sub_1A45CEEB4(255, &qword_1EB124198, &type metadata for GenerativeStoryPromptInputViewKeyboardLightEffectsGradient, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A45CEFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1241A0);
  }

  return result;
}

unint64_t sub_1A45CEFF0()
{
  result = qword_1EB125018;
  if (!qword_1EB125018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125018);
  }

  return result;
}

void sub_1A45CF044()
{
  if (!qword_1EB13E5F0)
  {
    sub_1A45CF2BC(255, &qword_1EB13E5F8, sub_1A45CF0DC, &qword_1EB13E650, sub_1A45CF0DC);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E5F0);
    }
  }
}

void sub_1A45CF110()
{
  if (!qword_1EB13E608)
  {
    sub_1A45CF198(255);
    sub_1A45CF408(255);
    sub_1A45CF43C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13E608);
    }
  }
}

void sub_1A45CF1B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A45D4F78(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    v7 = v6;
    sub_1A45CF24C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A45CF2BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A45D5704(a4, a5);
    v8 = sub_1A524B894();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A45CF3A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A45CF43C()
{
  if (!qword_1EB13E648)
  {
    sub_1A45CF4DC();
    sub_1A45D4B40(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E648);
    }
  }
}

void sub_1A45CF4DC()
{
  if (!qword_1EB123070)
  {
    sub_1A45CF570(255);
    sub_1A45CEEB4(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123070);
    }
  }
}

void sub_1A45CF624()
{
  if (!qword_1EB1238E8)
  {
    sub_1A45CF6B4(255, &unk_1EB1241E0, type metadata accessor for GenerativeStoryPromptInputView, type metadata accessor for AppleMusicPrivacyTipModifier);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1238E8);
    }
  }
}

void sub_1A45CF6B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A45CF75C()
{
  if (!qword_1EB13E668)
  {
    sub_1A45CE318(255);
    sub_1A45CE240();
    sub_1A45CF830();
    sub_1A45D5704(&qword_1EB122F80, sub_1A45CE240);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E668);
    }
  }
}

unint64_t sub_1A45CF830()
{
  result = qword_1EB13E670;
  if (!qword_1EB13E670)
  {
    sub_1A45CE318(255);
    sub_1A45CF8E0();
    sub_1A45D5704(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E670);
  }

  return result;
}

unint64_t sub_1A45CF8E0()
{
  result = qword_1EB13E678;
  if (!qword_1EB13E678)
  {
    sub_1A45CE34C();
    sub_1A45CF960();
    sub_1A42B0F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E678);
  }

  return result;
}

unint64_t sub_1A45CF960()
{
  result = qword_1EB13E680;
  if (!qword_1EB13E680)
  {
    sub_1A45CF6B4(255, &qword_1EB13E590, sub_1A45CE3DC, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
    sub_1A45CFA40();
    sub_1A45D5704(&qword_1EB13E6B8, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E680);
  }

  return result;
}

unint64_t sub_1A45CFA40()
{
  result = qword_1EB13E688;
  if (!qword_1EB13E688)
  {
    sub_1A45CE3DC(255);
    sub_1A45CFB34(&qword_1EB13E690, sub_1A45CE484, sub_1A45CFAF8);
    sub_1A45CFCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E688);
  }

  return result;
}

uint64_t sub_1A45CFB34(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45CFBB4()
{
  result = qword_1EB13E6A0;
  if (!qword_1EB13E6A0)
  {
    sub_1A45CE4FC();
    sub_1A45D5704(&qword_1EB13E6A8, sub_1A45CE59C);
    sub_1A45CFC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E6A0);
  }

  return result;
}

unint64_t sub_1A45CFC64()
{
  result = qword_1EB122E38;
  if (!qword_1EB122E38)
  {
    sub_1A45D4B40(255, &qword_1EB122E30, sub_1A3DB95B8, &type metadata for GenerativeStoryCreationViewModel.ViewState, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122E38);
  }

  return result;
}

unint64_t sub_1A45CFCF4()
{
  result = qword_1EB13E6B0;
  if (!qword_1EB13E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E6B0);
  }

  return result;
}

uint64_t sub_1A45CFD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v187 = a1;
  v185 = a3;
  v183 = type metadata accessor for GenerativeStoryInternalMenuView();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v170 = (&v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CF728(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v186 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v157 - v8;
  sub_1A45CF2BC(0, &qword_1EB13E5F8, sub_1A45CF0DC, &qword_1EB13E650, sub_1A45CF0DC);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v179 = (&v157 - v10);
  sub_1A45CF044();
  v178 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v184 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v180 = &v157 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v192 = &v157 - v16;
  sub_1A45CEA80(0);
  *&v177 = v17;
  v176 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v169 = (&v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CEB08(0);
  v166 = v19;
  v165 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v159 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CEAD4(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v168 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v167 = &v157 - v24;
  sub_1A45CEA4C(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v181 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v157 - v28;
  sub_1A45CE418(0, &qword_1EB13E6D8, type metadata accessor for GenerativeStoryProgressAnimationView, MEMORY[0x1E6981148], MEMORY[0x1E697F948]);
  v161 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v164 = (&v157 - v30);
  v163 = type metadata accessor for GenerativeStoryProgressAnimationView();
  MEMORY[0x1EEE9AC00](v163);
  v160 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CEA10(0);
  v175 = v32;
  v174 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v162 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CE9DC(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v189 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v193 = &v157 - v37;
  v158 = sub_1A5242D14();
  v38 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v40 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v157 - v42;
  sub_1A45CE810();
  v45 = v44 - 8;
  MEMORY[0x1EEE9AC00](v44);
  v47 = (&v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CE77C();
  v172 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v157 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CE740(0);
  v173 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v188 = &v157 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v157 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v191 = &v157 - v57;
  v58 = sub_1A524BC74();
  v60 = v59;
  v61 = v47 + *(v45 + 44);
  sub_1A45D13CC(v61);
  sub_1A45CE870();
  v63 = (v61 + *(v62 + 36));
  *v63 = v58;
  v63[1] = v60;
  *v47 = v187;

  v171 = sub_1A524BD24();
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  *&v187 = v64;
  v65 = a2;
  v66 = sub_1A5247C84();
  v67 = (*(*v205 + 384))(v66);

  if (v67 <= 1u)
  {
    if (v67)
    {
      v68 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v67 == 2)
  {
LABEL_5:
    v68 = 1;
    goto LABEL_7;
  }

  sub_1A45CCF70(v43);
  v69 = v158;
  (*(v38 + 104))(v40, *MEMORY[0x1E69C2210], v158);
  v68 = sub_1A5242D04();
  v70 = *(v38 + 8);
  v70(v40, v69);
  v70(v43, v69);
LABEL_7:
  sub_1A45D3A40(v47, v50, sub_1A45CE810);
  v71 = &v50[*(v172 + 36)];
  *v71 = v171;
  v71[8] = v68 & 1;
  v72 = sub_1A5248874();
  v73 = sub_1A524A064();
  sub_1A45D3A40(v50, v55, sub_1A45CE77C);
  v74 = &v55[*(v173 + 36)];
  *v74 = v72;
  v74[8] = v73;
  sub_1A45D3A40(v55, v191, sub_1A45CE740);
  v75 = sub_1A5247C84();
  LOBYTE(v72) = (*(*v205 + 384))(v75);

  v76 = 1;
  v77 = sub_1A40B1BE4(v72, 1);
  v78 = v190;
  if (v77)
  {
    sub_1A3C52C70(0, &qword_1EB126860);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v80 = [ObjCClassFromMetadata sharedInstance];
    v81 = [v80 isMemoryCreationTextAnimationEnabled];

    if ((v81 & 1) != 0 || (v82 = [ObjCClassFromMetadata sharedInstance], v83 = objc_msgSend(v82, sel_isMemoryCreationImageAnimationEnabled), v82, v83))
    {
      sub_1A5247C84();
      v84 = v160;
      sub_1A405D878(v205, v160);
      sub_1A45D5888(v84, v164, type metadata accessor for GenerativeStoryProgressAnimationView);
      swift_storeEnumTagMultiPayload();
      sub_1A45D5704(&qword_1EB125248, type metadata accessor for GenerativeStoryProgressAnimationView);
      v85 = v162;
      sub_1A5249744();
      sub_1A45D56A4(v84, type metadata accessor for GenerativeStoryProgressAnimationView);
    }

    else
    {
      *&v205 = sub_1A524B434();
      v86 = sub_1A524A374();
      v88 = v87;
      v90 = v89;
      v92 = v91;

      v93 = v164;
      *v164 = v86;
      v93[1] = v88;
      *(v93 + 16) = v90 & 1;
      v93[3] = v92;
      swift_storeEnumTagMultiPayload();
      sub_1A45D5704(&qword_1EB125248, type metadata accessor for GenerativeStoryProgressAnimationView);
      v85 = v162;
      sub_1A5249744();
    }

    sub_1A45D3A40(v85, v193, sub_1A45CEA10);
    v76 = 0;
  }

  v94 = 1;
  (*(v174 + 56))(v193, v76, 1, v175);
  v95 = sub_1A5247C84();
  v96 = (*(*v205 + 384))(v95);

  v97 = 1;
  if ((v96 - 1) <= 1u)
  {
    sub_1A5247C84();
    v98 = v205;
    v99 = v65 + *(type metadata accessor for GenerativeStoryCreationView() + 32);
    v100 = *v99;
    v101 = *(v99 + 8);
    v102 = *(v99 + 16);
    v200 = v100;
    LOBYTE(v201) = v101;
    v202 = v102;
    sub_1A45D4EFC();
    sub_1A524B6C4();
    sub_1A3DB960C(v98, v205, *(&v205 + 1), v206, SBYTE8(v206), &v200);
    if (sub_1A45D1948())
    {
      *&v205 = sub_1A524B404();
      v103 = sub_1A524BD24();
      MEMORY[0x1EEE9AC00](v103);
      sub_1A45CEC50();
      sub_1A45CFB34(&qword_1EB124188, sub_1A45CEC50, sub_1A45CECD4);
      v104 = v159;
      sub_1A524B184();

      v105 = sub_1A5248874();
      v106 = sub_1A524A064();
      sub_1A45CEB44(0);
      v108 = v104 + *(v107 + 36);
      *v108 = v105;
      *(v108 + 8) = v106;
      v109 = v166;
      *(v104 + *(v166 + 36)) = 0;
      v110 = v167;
      sub_1A45D54C8(v104, v167, sub_1A45CEB08);
      v111 = 0;
    }

    else
    {
      v111 = 1;
      v110 = v167;
      v109 = v166;
    }

    (*(v165 + 56))(v110, v111, 1, v109);
    v112 = v110;
    v113 = v200;
    v114 = v201;
    v115 = v202;
    v116 = v203;
    v117 = v204;
    v118 = v168;
    sub_1A45D52B4(v112, v168, sub_1A45CEAD4);
    v119 = v169;
    *v169 = v113;
    *(v119 + 8) = v114;
    *(v119 + 16) = v115;
    *(v119 + 24) = v116;
    *(v119 + 32) = v117 & 1;
    sub_1A45CEAB4(0);
    sub_1A45D52B4(v118, v119 + *(v120 + 48), sub_1A45CEAD4);

    sub_1A45D531C(v112, sub_1A45CEAD4);
    sub_1A45D531C(v118, sub_1A45CEAD4);

    sub_1A45D54C8(v119, v194, sub_1A45CEA80);
    v97 = 0;
    v78 = v190;
    v94 = 1;
  }

  (*(v176 + 56))(v194, v97, 1, v177);
  sub_1A45D1B98(&v205);
  v187 = v206;
  v177 = v205;
  v175 = *(&v207 + 1);
  v176 = v207;
  v121 = sub_1A5249574();
  v122 = v179;
  *v179 = v121;
  v122[1] = 0;
  *(v122 + 16) = 0;
  sub_1A45D51AC(0, &qword_1EB13E6E0, sub_1A45CF0DC);
  sub_1A45D1F94(v65, v122 + *(v123 + 44));
  sub_1A524BC74();
  sub_1A5248AD4();
  v124 = v122;
  v125 = v180;
  sub_1A45D5218(v124, v180);
  v126 = (v125 + *(v178 + 36));
  v127 = v208;
  v128 = v210;
  v129 = v211;
  v126[4] = v209;
  v126[5] = v128;
  v126[6] = v129;
  v130 = v206;
  *v126 = v205;
  v126[1] = v130;
  v126[2] = v207;
  v126[3] = v127;
  sub_1A45D3A40(v125, v192, sub_1A45CF044);
  sub_1A3C52C70(0, &qword_1EB126BB0);
  v131 = [swift_getObjCClassFromMetadata() sharedInstance];
  v132 = [v131 canShowInternalUI];

  if (v132)
  {
    v133 = type metadata accessor for GenerativeStoryCreationView();
    v134 = *(v65 + *(v133 + 40));
    sub_1A5247C84();
    v135 = v195;
    v136 = v65 + *(v133 + 24);
    v137 = *v136;
    v138 = *(v136 + 8);
    v198 = v137;
    v199 = v138;
    sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    v139 = v195;
    v140 = v196;
    v141 = v197;
    sub_1A3C5A374();
    v142 = v170;
    sub_1A462F050(v134, v135, v139, v140, v141, v170);
    sub_1A45D3A40(v142, v78, type metadata accessor for GenerativeStoryInternalMenuView);
    v94 = 0;
  }

  (*(v182 + 56))(v78, v94, 1, v183);
  v143 = v188;
  sub_1A45D5888(v191, v188, sub_1A45CE740);
  v144 = v189;
  sub_1A45D5888(v193, v189, sub_1A45CE9DC);
  v145 = v181;
  sub_1A45D52B4(v194, v181, sub_1A45CEA4C);
  v146 = v184;
  sub_1A45D5888(v192, v184, sub_1A45CF044);
  v147 = v78;
  v148 = v186;
  sub_1A45D5888(v147, v186, sub_1A45CF728);
  v149 = v143;
  v150 = v185;
  sub_1A45D5888(v149, v185, sub_1A45CE740);
  sub_1A45CE664();
  v152 = v151;
  sub_1A45D5888(v144, v150 + v151[12], sub_1A45CE9DC);
  sub_1A45D52B4(v145, v150 + v152[16], sub_1A45CEA4C);
  v153 = v150 + v152[20];
  v154 = v187;
  *v153 = v177;
  *(v153 + 16) = v154;
  v155 = v175;
  *(v153 + 32) = v176;
  *(v153 + 40) = v155;
  sub_1A45D5888(v146, v150 + v152[24], sub_1A45CF044);
  sub_1A45D5888(v148, v150 + v152[28], sub_1A45CF728);

  sub_1A45D56A4(v190, sub_1A45CF728);
  sub_1A45D56A4(v192, sub_1A45CF044);
  sub_1A45D531C(v194, sub_1A45CEA4C);
  sub_1A45D56A4(v193, sub_1A45CE9DC);
  sub_1A45D56A4(v191, sub_1A45CE740);
  sub_1A45D56A4(v148, sub_1A45CF728);
  sub_1A45D56A4(v146, sub_1A45CF044);

  sub_1A45D531C(v145, sub_1A45CEA4C);
  sub_1A45D56A4(v189, sub_1A45CE9DC);
  return sub_1A45D56A4(v188, sub_1A45CE740);
}

uint64_t sub_1A45D13CC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = type metadata accessor for GenerativeStoryBackgroundView();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v11 = sub_1A5247C84();
  v12 = (*(*v24 + 384))(v11);

  v13 = v12;
  if (v12 > 1u)
  {
    v14 = v23;
    if (v13 != 2)
    {
      sub_1A45CCF70(v10);
      (*(v5 + 104))(v7, *MEMORY[0x1E69C2210], v4);
      v15 = sub_1A5242D04();
      v16 = *(v5 + 8);
      v16(v7, v4);
      v16(v10, v4);
      v14 = v23;
      if ((v15 & 1) == 0)
      {
        v13 = 1;
        return (*(v1 + 56))(v14, v13, 1, v22);
      }
    }
  }

  else
  {
    v14 = v23;
    if (v13)
    {
      return (*(v1 + 56))(v14, v13, 1, v22);
    }
  }

  v17 = sub_1A5247C84();
  v18 = (*(*v24 + 1624))(v17);

  if (v18)
  {
    v20 = sub_1A45D171C();
    sub_1A44B5B14(v18, 1, 1, v20, v3);
    sub_1A45D3A40(v3, v14, type metadata accessor for GenerativeStoryBackgroundView);
    v13 = 0;
    return (*(v1 + 56))(v14, v13, 1, v22);
  }

  __break(1u);
  return result;
}

BOOL sub_1A45D171C()
{
  v0 = sub_1A5242D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  sub_1A45CCF70(v12 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2210], v0);
  sub_1A45D5704(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v7 = sub_1A524C594();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v9 = sub_1A5247C84();
  v10 = (*(*v12[1] + 384))(v9);

  return ((v10 - 1) & 0xFD) == 0;
}

BOOL sub_1A45D1948()
{
  v0 = sub_1A5242D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  sub_1A45CCF70(v14 - v5);
  v7 = *(v1 + 104);
  v7(v3, *MEMORY[0x1E69C2210], v0);
  v8 = sub_1A5242D04();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  if (v8)
  {
    return 0;
  }

  sub_1A45CCF70(v6);
  v7(v3, *MEMORY[0x1E69C21F0], v0);
  v11 = sub_1A5242D04();
  v9(v3, v0);
  v9(v6, v0);
  if ((v11 & 1) == 0)
  {
    return 1;
  }

  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v12 = sub_1A5247C84();
  v13 = (*(*v14[1] + 384))(v12);

  return v13 == 1;
}

uint64_t sub_1A45D1B98@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5242D14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  sub_1A45CCF70(&v33 - v12);
  (*(v8 + 104))(v10, *MEMORY[0x1E69C2200], v7);
  v14 = sub_1A5242D04();
  v15 = *(v8 + 8);
  v15(v10, v7);
  result = (v15)(v13, v7);
  if (v14 & 1) != 0 && ((v17 = v2 + *(type metadata accessor for GenerativeStoryCreationView() + 56), v18 = *v17, *(v17 + 8) != 1) ? (, sub_1A524D254(), v19 = sub_1A524A014(), sub_1A5246DF4(), v19, sub_1A5249224(), swift_getAtKeyPath(), sub_1A3C53AEC(v18, 0), (*(v34 + 8))(v6, v4), LOBYTE(v18) = v35) : (LOBYTE(v35) = v18 & 1), v37 = v18 & 1, v36 = 0, result = static LemonadeRootViewOrientation.== infix(_:_:)(&v37, &v36), (result))
  {
    v20 = sub_1A524BC64();
    v22 = v21;
    sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    PXDisplayCollectionDetailedCountsMake(v35);
    v24 = v23;
    v25 = sub_1A5248874();
    v26 = sub_1A524A064();
    v27 = sub_1A5247C84();
    v28 = (*(*v35 + 584))(v27);

    if (v28 & 1) != 0 && (v29 = sub_1A5247C84(), v30 = (*(*v35 + 456))(v29), result = , (v30))
    {
      v31 = 0x3FF0000000000000;
    }

    else
    {
      v31 = 0;
    }

    v32 = v26;
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v32 = 0;
    v31 = 0;
  }

  *a1 = v20;
  a1[1] = v22;
  a1[2] = v24;
  a1[3] = v25;
  a1[4] = v32;
  a1[5] = v31;
  return result;
}

uint64_t sub_1A45D1F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_1A45CF43C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v55 - v6;
  v7 = type metadata accessor for GenerativeStoryPromptSuggestionView(0);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CF408(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - v12;
  sub_1A45CF24C(0);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF1B8(0, &qword_1EB13E6E8, MEMORY[0x1E697F948]);
  v57 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = sub_1A5242D14();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  sub_1A45CF198(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v59 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v55 - v29;
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v58 = v31;
  v32 = sub_1A5247C84();
  v33 = (*(*v68 + 384))(v32);

  if ((v33 - 1) > 1u)
  {
    *v15 = sub_1A5249574();
    *(v15 + 1) = 0;
    v15[16] = 1;
    sub_1A45D51AC(0, &qword_1EB13E6F0, sub_1A45CF350);
    sub_1A45D28AC(a1, &v15[*(v40 + 44)]);
    *&v15[*(v56 + 36)] = 0x3FF0000000000000;
    sub_1A45D5888(v15, v18, sub_1A45CF24C);
    swift_storeEnumTagMultiPayload();
    sub_1A45D4F78(0, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A45D5530();
    sub_1A45D55C4();
    sub_1A5249744();
    sub_1A45D56A4(v15, sub_1A45CF24C);
    v41 = v62;
    v42 = v30;
  }

  else
  {
    sub_1A45CCF70(v25);
    (*(v20 + 104))(v22, *MEMORY[0x1E69C2210], v19);
    sub_1A45D5704(&qword_1EB129148, MEMORY[0x1E69C2218]);
    v34 = sub_1A524C594();
    v35 = *(v20 + 8);
    v35(v22, v19);
    v35(v25, v19);
    v36 = 1;
    if (v34)
    {
      v37 = sub_1A5247C84();
      v38 = (*(*v68 + 384))(v37);

      LOBYTE(v68) = v38;
      v67 = 3;
      sub_1A3DB95B8();
      v39 = sub_1A524C594();
      v36 = (v39 & 1) == 0;
    }

    else
    {
      v39 = 0;
    }

    v41 = v62;
    *v18 = 0;
    v18[8] = v36;
    v18[9] = v39 & 1;
    swift_storeEnumTagMultiPayload();
    sub_1A45D4F78(0, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A45D5530();
    sub_1A45D55C4();
    v42 = v30;
    sub_1A5249744();
  }

  if ((sub_1A45D2B9C() & 1) != 0 && (v43 = sub_1A5247C84(), v44 = (*(*v68 + 384))(v43), , (v44 - 1) <= 1u))
  {
    sub_1A5247C84();
    v45 = v55;
    sub_1A486F920(v68, v55);
    sub_1A45D3A40(v45, v41, type metadata accessor for GenerativeStoryPromptSuggestionView);
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  (*(v60 + 56))(v41, v46, 1, v61);
  v47 = v64;
  sub_1A45D2CD8(v64);
  v48 = v59;
  sub_1A45D5888(v42, v59, sub_1A45CF198);
  v49 = v63;
  sub_1A45D5888(v41, v63, sub_1A45CF408);
  v50 = v66;
  sub_1A45D5888(v47, v66, sub_1A45CF43C);
  v51 = v65;
  sub_1A45D5888(v48, v65, sub_1A45CF198);
  sub_1A45CF110();
  v53 = v52;
  sub_1A45D5888(v49, v51 + *(v52 + 48), sub_1A45CF408);
  sub_1A45D5888(v50, v51 + *(v53 + 64), sub_1A45CF43C);
  sub_1A45D56A4(v47, sub_1A45CF43C);
  sub_1A45D56A4(v41, sub_1A45CF408);
  sub_1A45D56A4(v42, sub_1A45CF198);
  sub_1A45D56A4(v50, sub_1A45CF43C);
  sub_1A45D56A4(v49, sub_1A45CF408);
  return sub_1A45D56A4(v48, sub_1A45CF198);
}

uint64_t sub_1A45D28AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryPromptSuggestionView(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CF408(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v14 = v30;
  v15 = a1 + *(type metadata accessor for GenerativeStoryCreationView() + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v27 = v16;
  v28 = v17;
  v29 = v18;
  sub_1A45D4EFC();
  sub_1A524B6C4();
  sub_1A3DB960C(v14, v30, v31, v32, v33, &v30);
  if (sub_1A45D2B9C())
  {
    sub_1A5247C84();
    sub_1A486F920(v27, v7);
    sub_1A45D3A40(v7, v13, type metadata accessor for GenerativeStoryPromptSuggestionView);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v5 + 56))(v13, v19, 1, v4);
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  sub_1A45D5888(v13, v10, sub_1A45CF408);
  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24 & 1;
  sub_1A45CF384(0);
  sub_1A45D5888(v10, a2 + *(v25 + 48), sub_1A45CF408);

  sub_1A45D56A4(v13, sub_1A45CF408);
  sub_1A45D56A4(v10, sub_1A45CF408);
}

uint64_t sub_1A45D2B9C()
{
  sub_1A3C52C70(0, &qword_1EB126860);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 autocompleteSuggestionsMode];

  if (v1 == 2)
  {
    sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
    v2 = sub_1A5247C84();
    (*(*v5 + 384))(v2);

    sub_1A3DB95B8();
    v3 = sub_1A524C594() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1A45D2CD8(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = type metadata accessor for GenerativeStoryCreationView();
  v4 = v3 - 8;
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v96 = v5;
  v97 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1A5242D14();
  v99 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v94 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v82 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82 - v10;
  sub_1A45CF6B4(0, &unk_1EB1241E0, type metadata accessor for GenerativeStoryPromptInputView, type metadata accessor for AppleMusicPrivacyTipModifier);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v82 - v14;
  sub_1A45CF624();
  v84 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF5E8(0);
  v85 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF5AC(0);
  v86 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF570(0);
  v89 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF4DC();
  v90 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v27 = v1 + *(v4 + 76);
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  v30 = *v27;

  sub_1A43791A0(v30, v28, v29, v15);
  sub_1A5247C84();
  sub_1A4150EA8(v101, &v15[*(v13 + 44)]);
  sub_1A45CCF70(v11);
  sub_1A4496374(v11);
  v31 = *(v99 + 8);
  v32 = v11;
  v33 = v83;
  v31(v32, v83);
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A45D574C(v15, v18);
  v34 = &v18[*(v84 + 36)];
  v35 = v106;
  *(v34 + 4) = v105;
  *(v34 + 5) = v35;
  *(v34 + 6) = v107;
  v36 = v102;
  *v34 = v101;
  *(v34 + 1) = v36;
  v37 = v104;
  *(v34 + 2) = v103;
  *(v34 + 3) = v37;
  LOBYTE(v13) = sub_1A524A084();
  sub_1A45D4654();
  sub_1A5247BC4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v87;
  sub_1A45D3A40(v18, v87, sub_1A45CF624);
  v47 = v46 + *(v85 + 36);
  *v47 = v13;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  LOBYTE(v13) = sub_1A524A054();
  sub_1A4491F00();
  sub_1A5247BC4();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v88;
  sub_1A45D3A40(v46, v88, sub_1A45CF5E8);
  v57 = v56 + *(v86 + 36);
  *v57 = v13;
  *(v57 + 8) = v49;
  *(v57 + 16) = v51;
  *(v57 + 24) = v53;
  *(v57 + 32) = v55;
  *(v57 + 40) = 0;
  v58 = sub_1A5247C84();
  v59 = v100;
  v60 = (*(*v100 + 1304))(v58);
  if (v60 == 3)
  {
    v61 = (*(*v59 + 800))();

    if (v61)
    {
      v62 = 0.0;
    }

    else
    {
      v62 = 1.0;
    }
  }

  else
  {
    sub_1A3DB9B78(v60);

    v62 = 1.0;
  }

  v63 = v94;
  v64 = v91;
  sub_1A45D3A40(v56, v91, sub_1A45CF5AC);
  *(v64 + *(v89 + 36)) = v62;
  sub_1A524BD24();
  v65 = v92;
  sub_1A45CCF70(v92);
  v66 = v99;
  (*(v99 + 32))(v63, v65, v33);
  if ((*(v66 + 88))(v63, v33) != *MEMORY[0x1E69C2210])
  {
    (v31)(v63, v33, 0.0);
  }

  v67 = sub_1A524BCD4();

  v68 = sub_1A5247C84();
  v69 = v100;
  v70 = (*(*v100 + 1304))(v68);
  if (v70 == 3)
  {
    v71 = (*(*v69 + 800))();

    v72 = v71 ^ 1;
  }

  else
  {
    v73 = v70;

    sub_1A3DB9B78(v73);
    v72 = 1;
  }

  v74 = v93;
  sub_1A45D3A40(v64, v93, sub_1A45CF570);
  v75 = v74 + *(v90 + 36);
  *v75 = v67;
  *(v75 + 8) = v72 & 1;
  v76 = v97;
  sub_1A45D5888(v2, v97, type metadata accessor for GenerativeStoryCreationView);
  v77 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v78 = swift_allocObject();
  sub_1A45D3A40(v76, v78 + v77, type metadata accessor for GenerativeStoryCreationView);
  v79 = v98;
  sub_1A45D3A40(v74, v98, sub_1A45CF4DC);
  sub_1A45CF43C();
  v81 = (v79 + *(v80 + 36));
  *v81 = sub_1A428A098;
  v81[1] = 0;
  v81[2] = sub_1A45D57E0;
  v81[3] = v78;
}

uint64_t sub_1A45D36AC(uint64_t a1)
{
  sub_1A43C7D38(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerativeStoryCreationView();
  v6 = (a1 + *(v5 + 24));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v27) = *v6;
  v28 = v8;
  sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v26 == 1)
  {
    LOBYTE(v27) = v7;
    v28 = v8;
    v26 = 0;
    sub_1A524B6B4();
    v10 = a1 + *(v5 + 20);
    v11 = *(v10 + 16);
    if (v11)
    {
      sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
      v12 = v11;
      sub_1A5247C84();
      (*(*v27 + 2136))(v12);

      if (*(v10 + 24) == 1)
      {
        v13 = [v12 string];
        v14 = sub_1A524C674();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          sub_1A5247C84();
          v18 = v27;
          v19 = [v12 string];
          v20 = sub_1A524C674();
          v22 = v21;

          v23 = sub_1A5244854();
          (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
          (*(*v18 + 1896))(v20, v22, v4);

          sub_1A45D56A4(v4, sub_1A43C7D38);
          v24 = 0;
LABEL_10:
          sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
          sub_1A5247C84();
          (*(*v27 + 592))(v24);
        }
      }
    }

    v24 = 1;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1A45D3A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45D3AA8()
{
  v1 = *(type metadata accessor for GenerativeStoryCreationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A45D36AC(v2);
}

uint64_t objectdestroy_15Tm_1()
{
  v1 = type metadata accessor for GenerativeStoryCreationView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A45D5148(0, &qword_1EB121408, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981E90]);
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_1A45D5148(0, &qword_1EB127208, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981E98]);

  v4 = (v2 + v1[5]);

  v5 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration() + 36);
  v6 = sub_1A5244854();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  v7 = v1[11];
  sub_1A45D5148(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5248284();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  j__swift_release(*(v2 + v1[12]), *(v2 + v1[12] + 8));
  v9 = v1[13];
  sub_1A45D5148(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5242D14();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[14]), *(v2 + v1[14] + 8));
  v11 = v1[15];
  sub_1A45D5148(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5244084();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v1[16];
  sub_1A45D5148(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v15 = v14;
    v16 = *(v14 - 8);
    if (!(*(v16 + 48))(v2 + v13, 1, v14))
    {
      (*(v16 + 8))(v2 + v13, v15);
    }
  }

  else
  {
  }

  v17 = v1[19];
  v18 = sub_1A5246F24();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_1A45D4034()
{
  type metadata accessor for GenerativeStoryCreationView();
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v0 = sub_1A5247C84();
  v1 = (*(*v4 + 1624))(v0);

  if (v1)
  {
    (*(*v1 + 376))(0);

    v3 = sub_1A5247C84();
    (*(*v4 + 1968))(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A45D4228()
{
  v1 = sub_1A5248284();
  v13 = *(v1 - 8);
  v14 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5244854();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + *(type metadata accessor for GenerativeStoryCreationView() + 72));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v17) = *v8;
  v18 = v10;
  sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v15 & 1) == 0)
  {
    LOBYTE(v17) = v9;
    v18 = v10;
    LOBYTE(v15) = 1;
    sub_1A524B6B4();
    type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
    (*(v5 + 104))(v7, *MEMORY[0x1E69C1028], v4);
    sub_1A45D5704(&qword_1EB124C90, MEMORY[0x1E69C1030]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v17 == v15 && v18 == v16)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v11 = sub_1A524EAB4();
      (*(v5 + 8))(v7, v4);

      if ((v11 & 1) == 0)
      {
LABEL_9:
        sub_1A45CCBF0(v3);
        sub_1A5248274();
        (*(v13 + 8))(v3, v14);
        return;
      }
    }

    if (sub_1A45CCE1C())
    {
      v12 = sub_1A4654ADC();

      if (v12)
      {
        [v12 dismissViewControllerAnimated:1 completion:0];

        return;
      }
    }

    goto LABEL_9;
  }
}

void sub_1A45D4574()
{
  type metadata accessor for GenerativeStoryCreationView();
  sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v1 & 1) == 0)
  {
    sub_1A5247E34();
    if (v0 > 30.0)
    {
      sub_1A45D4228();
    }
  }
}

double sub_1A45D4654()
{
  v1 = sub_1A5242D14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerativeStoryCreationView();
  v13 = (v0 + *(v12 + 28));
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = v13[2];
  v31 = v14;
  v32 = v15;
  v33 = v16;
  sub_1A45D4EFC();
  sub_1A524B6A4();
  if (v30 != 1)
  {
    return v29;
  }

  v17 = v0 + *(v12 + 56);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    LOBYTE(v31) = v18 & 1;
  }

  else
  {

    sub_1A524D254();
    v20 = sub_1A524A014();
    v28 = v4;
    v21 = v2;
    v22 = v20;
    sub_1A5246DF4();

    v2 = v21;
    v4 = v28;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v18, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(v18) = v31;
  }

  LOBYTE(v29) = v18 & 1;
  sub_1A45CCF70(v7);
  v19 = sub_1A4497F9C(&v29, v7);
  v23 = *(v2 + 8);
  v23(v7, v1);
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v24 = sub_1A5247C84();
  v25 = (*(*v31 + 384))(v24);

  if (v25 == 2)
  {
    sub_1A45CCF70(v7);
    (*(v2 + 104))(v4, *MEMORY[0x1E69C2210], v1);
    v26 = sub_1A5242D04();
    v23(v4, v1);
    v23(v7, v1);
    if (v26)
    {
      return 90.0;
    }
  }

  return v19;
}

uint64_t sub_1A45D4A14()
{
  v1 = (*(*v0 + 1304))();
  if (v1 == 3)
  {
    v2 = (*(*v0 + 800))() ^ 1;
  }

  else
  {
    sub_1A3DB9B78(v1);
    v2 = 1;
  }

  return v2 & 1;
}

void sub_1A45D4AA0()
{
  if (!qword_1EB13E6C8)
  {
    sub_1A45CF75C();
    sub_1A45D4B40(255, &unk_1EB1221A8, sub_1A4135204, &type metadata for LemonadeDismissButtonPreferenceKey, MEMORY[0x1E6980750]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E6C8);
    }
  }
}

void sub_1A45D4B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A45D4BEC()
{
  sub_1A45D5148(319, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
    if (v1 <= 0x3F)
    {
      sub_1A45D4F78(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A45D4EFC();
        if (v3 <= 0x3F)
        {
          sub_1A3C52C70(319, &qword_1EB126BF0);
          if (v4 <= 0x3F)
          {
            sub_1A45D5148(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A45D5148(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A45D5148(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A45D4F78(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A45D5148(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A45D5148(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        sub_1A4222DB0();
                        if (v11 <= 0x3F)
                        {
                          sub_1A5246F24();
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A45D4EFC()
{
  if (!qword_1EB121C88)
  {
    sub_1A45D4F78(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v0 = sub_1A524B6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121C88);
    }
  }
}

void sub_1A45D4F78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A45D4FC8()
{
  result = qword_1EB13E6D0;
  if (!qword_1EB13E6D0)
  {
    sub_1A45D4AA0();
    sub_1A45CE318(255);
    sub_1A45CE240();
    sub_1A45CF830();
    sub_1A45D5704(&qword_1EB122F80, sub_1A45CE240);
    swift_getOpaqueTypeConformance2();
    sub_1A4135438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E6D0);
  }

  return result;
}

uint64_t sub_1A45D50C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A45D5148(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A45D5148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A45D51AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A45D5218(uint64_t a1, uint64_t a2)
{
  sub_1A45CF2BC(0, &qword_1EB13E5F8, sub_1A45CF0DC, &qword_1EB13E650, sub_1A45CF0DC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45D52B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45D531C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A45D537C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v4 = sub_1A5247C84();
  v5 = (*(*v9 + 584))(v4);

  if (v5)
  {
    v6 = 0.4;
  }

  else
  {
    v6 = 0.0;
  }

  sub_1A45D4F78(0, &qword_1EB122230, MEMORY[0x1E69815C0], MEMORY[0x1E697FEC0]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  sub_1A45CEC50();
  *(a2 + *(v8 + 36)) = v6;
}

uint64_t sub_1A45D54C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A45D5530()
{
  result = qword_1EB141F90;
  if (!qword_1EB141F90)
  {
    sub_1A45D4F78(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141F90);
  }

  return result;
}

unint64_t sub_1A45D55C4()
{
  result = qword_1EB13E6F8;
  if (!qword_1EB13E6F8)
  {
    sub_1A45CF24C(255);
    sub_1A45D5704(&qword_1EB13E700, sub_1A45CF280);
    sub_1A45D5704(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E6F8);
  }

  return result;
}

uint64_t sub_1A45D56A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45D5704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A45D574C(uint64_t a1, uint64_t a2)
{
  sub_1A45CF6B4(0, &unk_1EB1241E0, type metadata accessor for GenerativeStoryPromptInputView, type metadata accessor for AppleMusicPrivacyTipModifier);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45D57E0()
{
  type metadata accessor for GenerativeStoryCreationView();
  sub_1A45D4EFC();
  return sub_1A524B6B4();
}

uint64_t sub_1A45D5888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45D58F0()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1C9238);
  __swift_project_value_buffer(v6, qword_1EB1C9238);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static RenameAlbumIntent.title.modify())()
{
  if (qword_1EB1C9230 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1C9238);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A45D5C50()
{
  sub_1A45D6CA0(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A5240BA4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A5240BB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A5240094();
  __swift_allocate_value_buffer(v10, qword_1EB1C9258);
  __swift_project_value_buffer(v10, qword_1EB1C9258);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A5240BC4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A52400A4();
}

uint64_t (*static RenameAlbumIntent.description.modify())()
{
  if (qword_1EB1C9250 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240094();
  __swift_project_value_buffer(v0, qword_1EB1C9258);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static RenameAlbumIntent.parameterSummary.getter()
{
  sub_1A45D8220(0, &qword_1EB13E708, sub_1A45D6344, &type metadata for RenameAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A45D8220(0, &qword_1EB13E718, sub_1A45D6344, &type metadata for RenameAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A45D6344();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A45D63E0(0, &qword_1EB13E720, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A45D63E0(0, &qword_1EB13E728, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158]);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A45D6344()
{
  result = qword_1EB13E710;
  if (!qword_1EB13E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E710);
  }

  return result;
}

void sub_1A45D63E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A45D8220(255, a3, a4, a5, MEMORY[0x1E695A1A0]);
    v6 = sub_1A524ED44();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t RenameAlbumIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v55 = a1;
  sub_1A45D6CA0(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v51 = v36 - v2;
  v54 = sub_1A5240334();
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45D6CA0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = v36 - v7;
  sub_1A45D6CA0(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = v36 - v9;
  v10 = sub_1A5240BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A5240BB4();
  v46 = v16;
  v56 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v36[1] = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1E695A1A0];
  sub_1A45D8220(0, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
  v41 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v11 + 104);
  v38 = v10;
  v20(v13, v19, v10);
  v37 = v20;
  v39 = v11 + 104;
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v13, v19, v10);
  v21 = v52;
  sub_1A5240BC4();
  v22 = *(v56 + 56);
  v56 += 56;
  v47 = v22;
  v22(v21, 0, 1, v16);
  v23 = sub_1A523FDB4();
  v40 = v23;
  v58 = 0u;
  v59 = 0u;
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v44 = v25;
  v45 = v24 + 56;
  v25(v53, 1, 1, v23);
  v26 = (v25)(v49, 1, 1, v23);
  v27 = PXDisplayCollectionDetailedCountsMake(v26);
  v42 = *MEMORY[0x1E695A500];
  v28 = *(v57 + 104);
  v57 += 104;
  v43 = v28;
  v29 = v50;
  v28(v50, v27);
  sub_1A45D6CF4();
  sub_1A3DB3554();
  *v55 = sub_1A523FFA4();
  sub_1A45D8220(0, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158], v48);
  v49 = v30;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = v38;
  v32 = v37;
  v37(v13, v19, v38);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v32(v13, v19, v31);
  v33 = v52;
  sub_1A5240BC4();
  v47(v33, 0, 1, v46);
  v34 = sub_1A524C5A4();
  v58 = 0uLL;
  (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
  v44(v53, 1, 1, v40);
  v43(v29, v42, v54);
  result = sub_1A5240004();
  v55[1] = result;
  return result;
}

void sub_1A45D6CA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A45D6CF4()
{
  result = qword_1EB13E730;
  if (!qword_1EB13E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E730);
  }

  return result;
}

uint64_t RenameAlbumIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = *v1;
  sub_1A524CC54();
  *(v2 + 120) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 128) = v4;
  *(v2 + 136) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A45D6DE8, v4, v3);
}

uint64_t sub_1A45D6DE8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  sub_1A523FF44();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  AlbumEntity.albumType.getter((v0 + 176));

  *(v0 + 177) = *(v0 + 176);
  v7 = AlbumEntity.CollectionType.rawValue.getter();
  v9 = v8;
  *(v0 + 144) = v8;
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *(v10 + 16) = v1;
  *(v10 + 24) = v2;
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  sub_1A45D6344();
  *v11 = v0;
  v11[1] = sub_1A45D6F6C;
  v12 = *(v0 + 96);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v12, 0, 0, v7, v9, 0, 1, &unk_1A534E880);
}

uint64_t sub_1A45D6F6C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1A45D70F4;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1A45D7090;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45D7090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45D70F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45D7190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  sub_1A524CC54();
  v3[17] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A45D722C, v5, v4);
}

uint64_t sub_1A45D722C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  sub_1A523FF44();
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 160) = v4;
  sub_1A523FF44();
  v5 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v5;
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  sub_1A45D6344();
  v6 = AppIntent.px_intentName.getter();
  v8 = v7;
  *(v0 + 168) = v7;
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_1A45D7354;

  return (sub_1A45D7AC8)(v3, v4, v0 + 48, v6, v8);
}

uint64_t sub_1A45D7354()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1A3F58C88;
  }

  else
  {
    v5 = sub_1A45D7518;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45D7518()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45D7588(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A45D7190(a1, v5, v4);
}

uint64_t sub_1A45D7668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3CA8098;

  return sub_1A45D7AC8(a1, a2, a3, a4, a5);
}

void (*RenameAlbumIntent.album.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A45D77EC@<X0>(void *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void (*RenameAlbumIntent.title.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

uint64_t sub_1A45D792C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1C9230 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1C9238);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A45D79F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return RenameAlbumIntent.perform()(a1);
}

uint64_t sub_1A45D7A8C(uint64_t a1)
{
  v2 = sub_1A45D6344();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A45D7AC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v7 = sub_1A5246F24();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a3;
  v5[8] = v8;
  v5[9] = v9;
  sub_1A524CC54();
  v5[10] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v5[11] = v11;
  v5[12] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A45D7BC8, v11, v10);
}

void sub_1A45D7BC8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_1A3C4D548(0, &qword_1EB126180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F9790;
  *(v5 + 32) = v2;
  v6 = v2;
  PXAppIntentsDebugDescription(for:)(v5);

  v7 = sub_1A3CB648C();
  (*(v4 + 16))(v1, v7, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45D7EAC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A45D8038;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A45D7FC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45D7FC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45D8038()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A45D80B8()
{
  result = qword_1EB13E738;
  if (!qword_1EB13E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E738);
  }

  return result;
}

unint64_t sub_1A45D8110()
{
  result = qword_1EB13E740;
  if (!qword_1EB13E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E740);
  }

  return result;
}

unint64_t sub_1A45D8190()
{
  result = qword_1EB13E748;
  if (!qword_1EB13E748)
  {
    sub_1A45D8220(255, &unk_1EB13E750, sub_1A45D6344, &type metadata for RenameAlbumIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E748);
  }

  return result;
}

void sub_1A45D8220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A45D8294()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  v4 = v3;

  qword_1EB1EBE98 = v2;
  unk_1EB1EBEA0 = v4;
}

uint64_t *sub_1A45D830C()
{
  if (qword_1EB1C9400 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EBE98;
}

void sub_1A45D835C()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  v4 = v3;

  qword_1EB1EBEA8 = v2;
  unk_1EB1EBEB0 = v4;
}

uint64_t *sub_1A45D83D0()
{
  if (qword_1EB1C9408 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EBEA8;
}

uint64_t sub_1A45D8420(void *a1)
{
  v1 = [a1 localizedTitle];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();
    v5 = v4;

    v6 = sub_1A524C634();
    v7 = PXLocalizedString(v6);

    sub_1A524C674();
    sub_1A3E072BC();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1A3D710E8();
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v9 = sub_1A524C6C4();
  }

  else
  {
    v11 = sub_1A524C634();
    v12 = PXLocalizedString(v11);

    v9 = sub_1A524C674();
  }

  return v9;
}

uint64_t sub_1A45D857C(void *a1)
{
  v1 = [a1 localizedTitle];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();
    v5 = v4;

    v6 = sub_1A524C634();
    v7 = PXLocalizedString(v6);

    sub_1A524C674();
    sub_1A3E072BC();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1A3D710E8();
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v9 = sub_1A524C6C4();
  }

  else
  {
    v11 = sub_1A524C634();
    v12 = PXLocalizedString(v11);

    v9 = sub_1A524C674();
  }

  return v9;
}

uint64_t sub_1A45D86D8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EBEB8);
  __swift_project_value_buffer(v0, qword_1EB1EBEB8);
  sub_1A524C814();
  return sub_1A5246F14();
}

uint64_t sub_1A45D8754()
{
  if (qword_1EB1C9410 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EBEB8);
}

id sub_1A45D88BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeFeatureAvailabilityProcessingViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A45D8968(void *a1)
{
  v2 = type metadata accessor for LemonadeFeatureAvailabilityProcessingView();
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [a1 featureAvailabilityMonitor];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  v14[12] = 1;
  sub_1A4092D8C(v7, 0x100000000, 2, 0, 0, 0, 0, v8 & 1, v5, v9 & 1, 0, 0);
  sub_1A45D8B08();
  v11 = objc_allocWithZone(v10);
  v12 = sub_1A52485F4();

  return v12;
}

unint64_t sub_1A45D8AA4()
{
  result = qword_1EB17E410[0];
  if (!qword_1EB17E410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17E410);
  }

  return result;
}

void sub_1A45D8B08()
{
  if (!qword_1EB124380)
  {
    type metadata accessor for LemonadeFeatureAvailabilityProcessingView();
    sub_1A4234A1C();
    v0 = sub_1A5248614();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124380);
    }
  }
}

void sub_1A45D8B6C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1C9428);
  __swift_project_value_buffer(v0, qword_1EB1C9428);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45D8C14()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5243994();
  sub_1A45DBE5C(&qword_1EB124D30, MEMORY[0x1E69C2718]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A45D8CC0()
{
  sub_1A524DC04();
  sub_1A5243994();
  sub_1A45DBE5C(&qword_1EB124D30, MEMORY[0x1E69C2718]);
  return sub_1A524C4B4();
}

uint64_t sub_1A45D8D50()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5243994();
  sub_1A45DBE5C(&qword_1EB124D30, MEMORY[0x1E69C2718]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A45D8DF8()
{
  sub_1A3C52C70(0, &qword_1EB12B160);
  if (sub_1A524DBF4())
  {
    sub_1A5243994();
    sub_1A45DBE5C(&qword_1EB12D1B0, MEMORY[0x1E69C2718]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v4 == v2 && v5 == v3)
    {
      v0 = 1;
    }

    else
    {
      v0 = sub_1A524EAB4();
    }
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1A45D8F24()
{
  v1 = sub_1A5243994();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 20), v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == *MEMORY[0x1E69C2700] || v6 == *MEMORY[0x1E69C26F8] || v6 == *MEMORY[0x1E69C26E8] || v6 == *MEMORY[0x1E69C2710] || v6 == *MEMORY[0x1E69C26E0] || v6 == *MEMORY[0x1E69C26F0] || v6 == *MEMORY[0x1E69C26D0] || v6 == *MEMORY[0x1E69C2708])
  {
    return sub_1A3C38BD4();
  }

  if (v6 == *MEMORY[0x1E69C26D8])
  {
    return 0;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A45D91B0(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2210])
  {
    return 3;
  }

  (*(v3 + 8))(v6, v2);
  return 22;
}

uint64_t sub_1A45D92CC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v2 - 4) < 3 || v4 == 1)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  v7 = *v1;
  v8 = *(type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0) + 20);
  if (v6 < (*((*MEMORY[0x1E69E7D40] & *v7) + 0x290))(&v1[v8]))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A45D93B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A5243994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34[-v12];
  if (*(a1 + 24))
  {
    v14 = *(a1 + 16);
    if (*(a1 + 24) == 1)
    {

      SearchResultItem.value.getter(&v39);
      v15 = v39;
      if (v39)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_1A4267C40();

          v16 = sub_1A3C5A374();
          sub_1A4270314(v14, a2, v16 & 1, 0, a3);
        }
      }

      if (qword_1EB1C9420 != -1)
      {
        swift_once();
      }

      v20 = sub_1A5246F24();
      __swift_project_value_buffer(v20, qword_1EB1C9428);
      v21 = v15;
      v22 = sub_1A5246F04();
      v23 = sub_1A524D244();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v24 = 136315138;
        sub_1A3C2EF94();
      }

      v25 = v14[2];
      v26 = v25;
      sub_1A3D8E6B0(v25, 0, &v39);

      sub_1A4267BB4(v14, 1);
      v27 = v40;
      *a3 = v39;
      *(a3 + 8) = v27;
      type metadata accessor for LemonadeNavigationDestination();
      return swift_storeEnumTagMultiPayload();
    }

    v36 = *(a1 + 16);
    v37 = a3;

    SearchResultItem.collectionItemType.getter(v13);
    (*(v8 + 104))(v10, *MEMORY[0x1E69C26F8], v7);
    sub_1A45DBE5C(&qword_1EB12D1B0, MEMORY[0x1E69C2718]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v39 == v38[0] && v40 == v38[1])
    {
      v18 = *(v8 + 8);
      v18(v10, v7);
      v18(v13, v7);

      v19 = v36;
    }

    else
    {
      v35 = sub_1A524EAB4();
      v28 = *(v8 + 8);
      v28(v10, v7);
      v28(v13, v7);

      v19 = v36;
      if ((v35 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v29 = *(v19 + 16);
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v31 = v30;
      LOBYTE(v38[0]) = 3;
      v39 = 0;
      v32 = v29;
      LemonadePhotosPagingMemoryGridConfiguration.init(memory:initialPositionDetent:disallowedBehaviors:navigationSourceInfo:)(v31);
      v33._countAndFlagsBits = sub_1A524C674();
      v38[0] = 0;
      v42.value.sourceIdentifiers._rawValue = v38;
      PhotosNavigationSourceInfo.init(sourceIdentifier:previousSourceInfo:)(v33, v42);
      v38[0] = v39;
      sub_1A4A04DA4();
    }

LABEL_20:

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(singleItem:photoLibraryContext:defaultSectionBodyStyle:disallowedBehaviors:searchMatchInfo:badgesModifier:)(v37);
  }

  type metadata accessor for LemonadeNavigationDestination();

  return swift_storeEnumTagMultiPayload();
}

id sub_1A45D99A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0) + 24));
  if (v3 && (v4 = [v3 title]) != 0)
  {
    v5 = v4;
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v9 = sub_1A524C634();
    v10 = PXLocalizedString(v9);

    v6 = sub_1A524C674();
    v8 = v11;

    if (!v3)
    {
LABEL_6:
      v13 = sub_1A524C634();
      v12 = PXLocalizedString(v13);

      goto LABEL_7;
    }
  }

  v12 = [v3 message];
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:
  v14 = sub_1A524C674();
  v16 = v15;

  result = sub_1A45D9AF4();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = result;
  a1[5] = v18;
  a1[6] = v19;
  a1[7] = v20;
  return result;
}

id sub_1A45D9AF4()
{
  v1 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  *&v4 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  result = *(v0 + *(v5 + 32));
  if (result)
  {
    result = [result numberOfAssetResults];
    if (result)
    {
      v7 = result;
      v8 = [result integerValue];

      if (v8 < 1)
      {
        return 0;
      }

      else
      {
        v9 = sub_1A524C634();
        v10 = PXLocalizedString(v9);

        v11 = sub_1A524C674();
        sub_1A45DBCD8(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
        v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
        v13 = swift_allocObject();
        sub_1A45DBC70(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
        return v11;
      }
    }
  }

  return result;
}

uint64_t sub_1A45D9CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  v8 = *(v7 + 20);
  v9 = sub_1A5243994();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t sub_1A45D9D50()
{
  MEMORY[0x1A5907B60](0x2D686372616573, 0xE700000000000000);
  sub_1A5243994();
  sub_1A524E624();
  return 0;
}

uint64_t sub_1A45D9E68@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A43A1980(24.0);
  v7 = v6;
  v8 = sub_1A43A1980(24.0);
  v10 = v9;
  v11 = sub_1A3C52D68();
  v13 = v12;
  v15 = v14;
  v16 = sub_1A3C4ED50();
  v20[8] = 1;
  *v4 = sub_1A45D91B0;
  *(v4 + 1) = 0;
  v4[16] = 2;
  *(v4 + 3) = 1;
  v4[32] = 1;
  *(v4 + 5) = v5;
  *(v4 + 6) = v7;
  *(v4 + 7) = v8;
  *(v4 + 8) = v10;
  *(v4 + 9) = v11;
  *(v4 + 10) = v13;
  v4[88] = v15;
  v4[89] = v16;
  swift_storeEnumTagMultiPayload();
  v17 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v4, 6, v17, v18 & 1, a1);
}

uint64_t sub_1A45D9F9C@<X0>(void *a1@<X8>)
{
  MEMORY[0x1A5907B60](0x2D686372616573, 0xE700000000000000);
  sub_1A5243994();
  result = sub_1A524E624();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

id sub_1A45DA02C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = *v2;
  v4 = *(a1 + 20);
  v5 = *(type metadata accessor for LemonadeSearchFeedOptions(0) + 20);
  v6 = sub_1A5243994();
  (*(*(v6 - 8) + 16))(&a2[v5], v2 + v4, v6);
  *a2 = v8;

  return v8;
}

void sub_1A45DA0C8(void **a1, uint64_t a2)
{
  sub_1A45DB77C(0, &qword_1EB129048, MEMORY[0x1E69C2718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  type metadata accessor for SearchResultItemListManager();
  v7 = *a1;
  v8 = *(type metadata accessor for LemonadeSearchFeedOptions(0) + 20);
  v9 = sub_1A5243994();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, a1 + v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);

  SearchResultItemListManager.__allocating_init(photoLibraryContext:collectionSectionProvider:limitTo:)(a2, v7, v6);
}

uint64_t sub_1A45DA228@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5243CE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5243C84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5243C94();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v13, *MEMORY[0x1E69C2898], v11);
  (*(v7 + 104))(v9, *MEMORY[0x1E69C2880], v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C28B8], v2);

  return sub_1A48F05F4(v15, v13, v9, v5, a1);
}

uint64_t sub_1A45DA484()
{
  sub_1A45DBE5C(&qword_1EB129378, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);

  return sub_1A3C47918();
}

void sub_1A45DA4F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  sub_1A41C369C();
  v12[3] = *(v3 - 8);
  v12[4] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v12[0] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1A45DB77C(0, &qword_1EB13E7D0, sub_1A41C369C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12[6] = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12[16] = v12 - v9;
  v12[13] = MEMORY[0x1E6980E30];
  sub_1A45DB77C(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], v5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = a1[1];
  v12[33] = *a1;
  v12[34] = v11;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45DAD58(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1A45DB8DC();
  sub_1A45DA4F0(v1, a1 + *(v3 + 44));
}

void sub_1A45DADBC()
{
  v0 = sub_1A5243994();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultItem.collectionItemType.getter(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E69C2700])
  {
    v5 = 3;
  }

  else if (v4 == *MEMORY[0x1E69C26F8])
  {
    v5 = 5;
  }

  else if (v4 == *MEMORY[0x1E69C26E8])
  {
    v5 = 4;
  }

  else if (v4 == *MEMORY[0x1E69C2710])
  {
    v5 = 2;
  }

  else if (v4 == *MEMORY[0x1E69C26E0] || v4 == *MEMORY[0x1E69C26F0])
  {
    v5 = 6;
  }

  else
  {
    if (v4 != *MEMORY[0x1E69C26D0] && v4 != *MEMORY[0x1E69C2708] && v4 != *MEMORY[0x1E69C26D8])
    {
      sub_1A524E6E4();
      __break(1u);
      return;
    }

    v5 = 0;
  }

  v9 = [objc_opt_self() sharedSession];
  SearchResultItem.parsecIdentifier.getter();
  v10 = sub_1A524C634();

  [v9 reportSearchCollectionResultSelected:v10 type:v5];
}

void sub_1A45DAFF4()
{
  sub_1A45DADBC();
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E6991CB0];
  sub_1A45DB77C(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v3;
  v4 = v1;
  *(inited + 48) = sub_1A524C634();
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A45DBDEC(inited + 32, sub_1A3F24E98);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v5 = sub_1A524C3D4();

  [v0 sendEvent:v4 withPayload:v5];
}

uint64_t sub_1A45DB1B4(uint64_t a1)
{
  *(a1 + 8) = sub_1A45DBE5C(&qword_1EB129378, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
  result = sub_1A45DBE5C(&unk_1EB1293A0, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A45DB324(uint64_t a1)
{
  result = sub_1A45DBE5C(&unk_1EB129390, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A45DB4B4()
{
  result = type metadata accessor for PhotosSearchCollectionSectionProvider();
  if (v1 <= 0x3F)
  {
    result = sub_1A5243994();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_6(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A5243994();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_6(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5243994();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A45DB6B0()
{
  type metadata accessor for PhotosSearchCollectionSectionProvider();
  if (v0 <= 0x3F)
  {
    sub_1A5243994();
    if (v1 <= 0x3F)
    {
      sub_1A45DB77C(319, &qword_1EB13E790, sub_1A45DB7E0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A45DB77C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A45DB7E0()
{
  result = qword_1EB13E798;
  if (!qword_1EB13E798)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13E798);
  }

  return result;
}

unint64_t sub_1A45DB844()
{
  result = qword_1EB1C9540;
  if (!qword_1EB1C9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C9540);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore37LemonadeSearchCollectionNoResultsView33_507024BB14EA46003FCF6AB3E187678CLLV11ActionModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1A45DB8DC()
{
  if (!qword_1EB13E7A8)
  {
    sub_1A45DB77C(255, &qword_1EB13E7B0, sub_1A45DB974, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E7A8);
    }
  }
}

void sub_1A45DB974()
{
  if (!qword_1EB13E7B8)
  {
    sub_1A45DBA1C();
    sub_1A45DB77C(255, &qword_1EB13E7D0, sub_1A41C369C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13E7B8);
    }
  }
}

void sub_1A45DBA1C()
{
  if (!qword_1EB13E7C0)
  {
    sub_1A45DBA7C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E7C0);
    }
  }
}

void sub_1A45DBA7C()
{
  if (!qword_1EB13E7C8)
  {
    sub_1A453B8B4();
    sub_1A45DBB10(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E7C8);
    }
  }
}

void sub_1A45DBB10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A45DBB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A45DBBD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A45DB77C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A45DBC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45DBCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A45DBD40()
{
  v1 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 24));
  if (v2)
  {
    v3 = [v2 actionHandler];
    if (v3)
    {
      v4 = v3;
      (*(v3 + 2))();

      _Block_release(v4);
    }
  }
}

uint64_t sub_1A45DBDEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45DBE5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A45DBEA4()
{
  if (!qword_1EB13E7E8)
  {
    sub_1A45DB77C(255, &qword_1EB13E7B0, sub_1A45DB974, MEMORY[0x1E6981F40]);
    sub_1A45DBF38();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E7E8);
    }
  }
}

unint64_t sub_1A45DBF38()
{
  result = qword_1EB13E7F0;
  if (!qword_1EB13E7F0)
  {
    sub_1A45DB77C(255, &qword_1EB13E7B0, sub_1A45DB974, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E7F0);
  }

  return result;
}

uint64_t sub_1A45DC07C(void **a1)
{
  sub_1A45DC950();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45DEBF8(0, &qword_1EB122BB8, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v13 = *(a1 + *(type metadata accessor for GenerativeStoryFeedbackButtonsView(0) + 28));
  sub_1A45DE59C(0, &qword_1EB121C80, sub_1A45DBFF4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v8 = v12;
  if (v12)
  {
    *v4 = sub_1A5249314();
    *(v4 + 1) = 0x4031000000000000;
    v4[16] = 0;
    sub_1A45DEC68();
    sub_1A45DC328(v8, a1, &v4[*(v9 + 44)]);
    sub_1A45DE284(v4, v7, sub_1A45DC950);
    swift_storeEnumTagMultiPayload();
    sub_1A45DCA9C();
    sub_1A45DD088(&qword_1EB1219C0, sub_1A45DC950);
    sub_1A45DD0D0();
    sub_1A5249744();

    return sub_1A45DE6C8(v4, sub_1A45DC950);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A45DCA9C();
    sub_1A45DD088(&qword_1EB1219C0, sub_1A45DC950);
    sub_1A45DD0D0();
    return sub_1A5249744();
  }
}

uint64_t sub_1A45DC328@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for FeedbackButton(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v42 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - v14);
  sub_1A52488D4();
  v16 = *a2;
  v17 = a2 + *(type metadata accessor for GenerativeStoryFeedbackButtonsView(0) + 32);
  v19 = v17[8];
  v20 = *(v17 + 2);
  v48 = *v17;
  v18 = v48;
  v49 = v19;
  v50 = v20;
  sub_1A45DE59C(0, &qword_1EB121BA8, sub_1A45DC028, MEMORY[0x1E6981790]);
  v21 = v16;
  sub_1A524B6C4();
  v22 = v45;
  v23 = v46;
  *v15 = 1;
  *(v15 + v6[8]) = a1;
  v24 = v47;
  *(v15 + v6[9]) = v21;
  v25 = v15 + v6[10];
  *v25 = v22;
  *(v25 + 2) = v23;
  v25[24] = v24;
  v26 = v15 + v6[11];
  LOBYTE(v48) = 0;
  v27 = v21;
  v28 = a1;
  sub_1A524B694();
  v29 = *(&v45 + 1);
  *v26 = v45;
  *(v26 + 1) = v29;
  sub_1A52488C4();
  v48 = v18;
  v49 = v19;
  v50 = v20;
  sub_1A524B6C4();
  v30 = v45;
  v31 = v46;
  *v12 = 2;
  *(v12 + v6[8]) = v28;
  v32 = v47;
  *(v12 + v6[9]) = v27;
  v33 = v12 + v6[10];
  *v33 = v30;
  *(v33 + 2) = v31;
  v33[24] = v32;
  v34 = v12 + v6[11];
  LOBYTE(v48) = 0;
  v35 = v28;
  sub_1A524B694();
  v36 = *(&v45 + 1);
  *v34 = v45;
  *(v34 + 1) = v36;
  v37 = v42;
  sub_1A45DE284(v15, v42, type metadata accessor for FeedbackButton);
  v38 = v43;
  sub_1A45DE284(v12, v43, type metadata accessor for FeedbackButton);
  v39 = v44;
  sub_1A45DE284(v37, v44, type metadata accessor for FeedbackButton);
  sub_1A45DCA18();
  sub_1A45DE284(v38, v39 + *(v40 + 48), type metadata accessor for FeedbackButton);
  sub_1A45DE6C8(v12, type metadata accessor for FeedbackButton);
  sub_1A45DE6C8(v15, type metadata accessor for FeedbackButton);
  sub_1A45DE6C8(v38, type metadata accessor for FeedbackButton);
  return sub_1A45DE6C8(v37, type metadata accessor for FeedbackButton);
}

void sub_1A45DC670(uint64_t a1)
{
  v2 = sub_1A5249FB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(type metadata accessor for GenerativeStoryFeedbackButtonsView(0) + 28));
  sub_1A45DE59C(0, &qword_1EB121C80, sub_1A45DBFF4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v10)
  {
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126860);
    v6 = [swift_getObjCClassFromMetadata() sharedInstance];
    v7 = [v6 centralizedFeedbackUI];

    if (!v7)
    {
      v8 = sub_1A45DDEBC(v5);
      MEMORY[0x1EEE9AC00](v8);
      *(&v9 - 2) = a1;
      sub_1A5249FA4();
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_1A45DC87C()
{
  if (!qword_1EB123D40)
  {
    sub_1A45DC8DC();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123D40);
    }
  }
}

void sub_1A45DC8DC()
{
  if (!qword_1EB121D00)
  {
    sub_1A45DEBF8(255, &qword_1EB122628, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121D00);
    }
  }
}

void sub_1A45DC950()
{
  if (!qword_1EB1219B8)
  {
    sub_1A45DC9E4(255);
    sub_1A45DD088(&qword_1EB121318, sub_1A45DC9E4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1219B8);
    }
  }
}

void sub_1A45DCA18()
{
  if (!qword_1EB125BD0)
  {
    type metadata accessor for FeedbackButton(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB125BD0);
    }
  }
}

void sub_1A45DCA9C()
{
  if (!qword_1EB1239A0)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1239A0);
    }
  }
}

uint64_t sub_1A45DCAF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
  v4 = v3[5];
  v5 = sub_1A3C4A780();
  v6 = sub_1A5246F24();
  (*(*(v6 - 8) + 16))(&a2[v4], v5, v6);
  v7 = v3[6];
  *&a2[v7] = swift_getKeyPath();
  sub_1A45DBFC0(0);
  swift_storeEnumTagMultiPayload();
  v8 = v3[7];
  sub_1A45DBFF4(0);
  sub_1A524B694();
  *&a2[v8] = v11;
  v9 = &a2[v3[8]];
  sub_1A45DC028(0);
  result = sub_1A524B694();
  *v9 = v11;
  v9[8] = BYTE8(v11);
  *(v9 + 2) = v12;
  return result;
}

void sub_1A45DCC30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A45DC07C(v2);
  sub_1A45DE284(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryFeedbackButtonsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1A45DE2EC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for GenerativeStoryFeedbackButtonsView);
  sub_1A45DC87C();
  v9 = (a2 + *(v8 + 36));
  *v9 = sub_1A45DEE34;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
}

void sub_1A45DCD8C()
{
  sub_1A3C52C70(319, &qword_1EB1265E0);
  if (v0 <= 0x3F)
  {
    sub_1A5246F24();
    if (v1 <= 0x3F)
    {
      sub_1A45DE59C(319, &unk_1EB1246F0, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A45DE59C(319, &qword_1EB121C80, sub_1A45DBFF4, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A45DE59C(319, &qword_1EB121BA8, sub_1A45DC028, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A45DCEF8()
{
  result = qword_1EB123D48;
  if (!qword_1EB123D48)
  {
    sub_1A45DC87C();
    sub_1A45DE214(&qword_1EB121D08, sub_1A45DC8DC, sub_1A45DCFBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123D48);
  }

  return result;
}

unint64_t sub_1A45DCFBC()
{
  result = qword_1EB122630;
  if (!qword_1EB122630)
  {
    sub_1A45DEBF8(255, &qword_1EB122628, MEMORY[0x1E697F960]);
    sub_1A45DD088(&qword_1EB1219C0, sub_1A45DC950);
    sub_1A45DD0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122630);
  }

  return result;
}

uint64_t sub_1A45DD088(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A45DD0D0()
{
  result = qword_1EB1239A8;
  if (!qword_1EB1239A8)
  {
    sub_1A45DCA9C();
    sub_1A3E43880();
    sub_1A3E43C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1239A8);
  }

  return result;
}

void sub_1A45DD178()
{
  type metadata accessor for PXPhotosFeedbackType();
  if (v0 <= 0x3F)
  {
    sub_1A52488E4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PhotosFeedbackActionPerformer();
      if (v2 <= 0x3F)
      {
        sub_1A3C52C70(319, &qword_1EB1265E0);
        if (v3 <= 0x3F)
        {
          sub_1A45DE59C(319, &qword_1EB1214C8, sub_1A45DC028, MEMORY[0x1E6981948]);
          if (v4 <= 0x3F)
          {
            sub_1A45DE54C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A45DD2C0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedbackButton(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A45DE0CC();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A45DE284(v2, &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FeedbackButton);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_1A45DE2EC(&v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for FeedbackButton);
  v23 = v2;
  sub_1A45DE174(0);
  sub_1A45DE214(&qword_1EB123CD8, sub_1A45DE174, sub_1A3E7440C);
  sub_1A524B704();
  v15 = v2 + *(v5 + 44);
  v16 = *v15;
  v17 = *(v15 + 8);
  v25 = v16;
  v26 = v17;
  sub_1A45DE54C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v25 = v24;
  sub_1A45DD088(&qword_1EB121B48, sub_1A45DE0CC);
  sub_1A524ABC4();
  (*(v10 + 8))(v12, v9);
  sub_1A524A0F4();
  sub_1A524A1A4();
  v18 = sub_1A524A1F4();

  KeyPath = swift_getKeyPath();
  sub_1A45DE404();
  v21 = (a1 + *(v20 + 36));
  *v21 = KeyPath;
  v21[1] = v18;
}

uint64_t sub_1A45DD60C(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackButton(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1 + *(v3 + 44);
  v12 = *(v10 + 8);
  v21 = *v10;
  v11 = v21;
  v22 = v12;
  sub_1A45DE54C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  v19[8] = v11;
  v20 = v12;
  v19[7] = (v23 & 1) == 0;
  sub_1A524B6B4();

  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_1A45DE284(a1, v6, type metadata accessor for FeedbackButton);
  sub_1A524CC54();
  v14 = sub_1A524CC44();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_1A45DE2EC(v6, v16 + v15, type metadata accessor for FeedbackButton);
  sub_1A3D4D930(0, 0, v9, &unk_1A534EF20, v16);
}

uint64_t sub_1A45DD88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FeedbackButton(0);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v4[8] = v8;
  v4[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A45DD988, v8, v7);
}

uint64_t sub_1A45DD988()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *v3;
  v5 = *(v3 + *(v0[3] + 28));
  sub_1A45DE284(v3, v1, type metadata accessor for FeedbackButton);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  sub_1A45DE2EC(v1, v7 + v6, type metadata accessor for FeedbackButton);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1A45DDAC8;

  return PhotosFeedbackActionPerformer.reportMemoryFeedback(type:memory:completionHandler:)(v4, v5, sub_1A45DE850, v7);
}

uint64_t sub_1A45DDAC8()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A45DDC0C, v3, v2);
}

uint64_t sub_1A45DDC0C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1A45DDC74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1A3EE4C14(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedbackButton(0);
  v8 = *(a1 + *(v7 + 24));
  v9 = *a1;
  v10 = a1 + *(v7 + 32);
  v11 = *v10;
  v12 = *(v10 + 2);
  LOBYTE(v10) = v10[24];
  v22 = v11;
  v23 = v12;
  v24 = v10;
  sub_1A45DE59C(0, &qword_1EB1214C8, sub_1A45DC028, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v20);
  result = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x70))(v9, (v9 == v20) & ~v21);
  if (result)
  {
    v14 = result;
    sub_1A524B524();
    v15 = *MEMORY[0x1E6981698];
    v16 = sub_1A524B594();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v6, v15, v16);
    (*(v17 + 56))(v6, 0, 1, v16);
    v18 = sub_1A524B564();

    sub_1A45DE6C8(v6, sub_1A3EE4C14);
    v19 = sub_1A524B434();

    result = swift_getKeyPath();
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  *a2 = v18;
  a2[1] = result;
  a2[2] = v19;
  return result;
}

uint64_t sub_1A45DDEBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45DBFC0(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45DE284(v2, v10, sub_1A45DBFC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5249FB4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A45DE0CC()
{
  if (!qword_1EB121B40)
  {
    sub_1A45DE174(255);
    sub_1A45DE214(&qword_1EB123CD8, sub_1A45DE174, sub_1A3E7440C);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121B40);
    }
  }
}

void sub_1A45DE1A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A45DE54C(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A45DE214(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A45DE284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45DE2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45DE380(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_1A45DE404()
{
  if (!qword_1EB123E98)
  {
    sub_1A45DE484();
    sub_1A45DE1A8(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123E98);
    }
  }
}

void sub_1A45DE484()
{
  if (!qword_1EB121E28)
  {
    sub_1A45DE0CC();
    sub_1A45DD088(&qword_1EB121B48, sub_1A45DE0CC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E28);
    }
  }
}

void sub_1A45DE54C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A45DE59C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A45DE600()
{
  v2 = *(type metadata accessor for FeedbackButton(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A45DD88C(v4, v5, v6, v0 + v3);
}

uint64_t sub_1A45DE6C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for FeedbackButton(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v1 + 20);
  v5 = sub_1A52488E4();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A45DE850(char a1)
{
  result = type metadata accessor for FeedbackButton(0);
  if (a1)
  {
    sub_1A45DE59C(0, &qword_1EB1214C8, sub_1A45DC028, MEMORY[0x1E6981948]);
    return sub_1A524B904();
  }

  return result;
}

uint64_t objectdestroyTm_65()
{
  v1 = type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[5];
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[6];
  sub_1A45DBFC0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249FB4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A45DEAAC(void *a1)
{
  if (a1)
  {
    type metadata accessor for PhotosFeedbackActionPerformer();
    PhotosFeedbackActionPerformer.__allocating_init(parentViewController:)(a1);
    type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
    sub_1A45DE59C(0, &qword_1EB121C80, sub_1A45DBFF4, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
  }

  else
  {
    type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
    oslog = sub_1A5246F04();
    v2 = sub_1A524D244();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1A3C1C000, oslog, v2, "No view controller to present feedback", v3, 2u);
      MEMORY[0x1A590EEC0](v3, -1, -1);
    }
  }
}

void sub_1A45DEBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A45DC950();
    v7 = v6;
    sub_1A45DCA9C();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A45DEC68()
{
  if (!qword_1EB124548)
  {
    sub_1A45DC9E4(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124548);
    }
  }
}

unint64_t sub_1A45DECD0()
{
  result = qword_1EB123EA0;
  if (!qword_1EB123EA0)
  {
    sub_1A45DE404();
    sub_1A45DE0CC();
    sub_1A45DD088(&qword_1EB121B48, sub_1A45DE0CC);
    swift_getOpaqueTypeConformance2();
    sub_1A45DEDE4(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EA0);
  }

  return result;
}

uint64_t sub_1A45DEDE4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A45DE1A8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIImage_optional __swiftcall UIImage.init(pixelBuffer:)(CVBufferRef pixelBuffer)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(pixelBuffer, 0, v5);
  if (v5[0])
  {
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGImage_];
  }

  else
  {

    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

unint64_t sub_1A45DEF50()
{
  result = qword_1EB18DB30[0];
  if (!qword_1EB18DB30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB18DB30);
  }

  return result;
}

void sub_1A45DEFA4()
{
  if (!qword_1EB128A08)
  {
    sub_1A45DEF50();
    v0 = sub_1A5247FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128A08);
    }
  }
}

uint64_t sub_1A45DF058(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A45DF0A0()
{
  if (!qword_1EB13E808)
  {
    sub_1A45DEF50();
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E808);
    }
  }
}

double sub_1A45DF11C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = [objc_opt_self() bezierPathWithRoundedRect:*(v5 + 1) byRoundingCorners:a2 cornerRadii:{a3, a4, a5, *v5, *v5}];
  v8 = [v7 CGPath];
  sub_1A524A324();

  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

void (*sub_1A45DF1E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A5247AC4();
  return sub_1A3D3D728;
}

uint64_t sub_1A45DF270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45DEF50();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1A45DF2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45DEF50();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1A45DF338(uint64_t a1)
{
  v2 = sub_1A45DEF50();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1A45DF388()
{
  result = qword_1EB18DB50[0];
  if (!qword_1EB18DB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB18DB50);
  }

  return result;
}

unint64_t sub_1A45DF3E0()
{
  result = qword_1EB18DB48;
  if (!qword_1EB18DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18DB48);
  }

  return result;
}

void type metadata accessor for UIRectCorner()
{
  if (!qword_1EB126C58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB126C58);
    }
  }
}

void sub_1A45DF484(void *a1)
{
  v2 = sub_1A3F96FA8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A45DF5DC(a1);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 88))(v3, v4);
  sub_1A5245FB4();
}

uint64_t sub_1A45DF5DC(void *a1)
{
  v2 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 56))(v9, v10);
  if (!v12)
  {
    v13 = sub_1A3C38A40();
    (*(v6 + 16))(v8, v13, v5);
    v14 = sub_1A524D224();
    sub_1A3C341C8(a1, v22);
    v15 = sub_1A5246F04();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v16 = 136315138;
      v19[1] = v14;
      v18 = v23;
      v17 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v17 + 48))(v18, v17);
      sub_1A45DF8BC();
      sub_1A524EA44();
      sub_1A3CA2CF8(v4);
      __swift_destroy_boxed_opaque_existential_0(v22);
      sub_1A3C2EF94();
    }

    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(v22);
    return 0;
  }

  return result;
}

unint64_t sub_1A45DF8BC()
{
  result = qword_1EB13E810;
  if (!qword_1EB13E810)
  {
    type metadata accessor for LemonadeBookmark(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosCollectionStaticColorGradeModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t storeEnumTagSinglePayload for PhotosCollectionStaticColorGradeModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of OneUpSharePlayActivity.prepareForActivation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of OneUpSharePlayActivity.prepareForActivation(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 160) + **(a4 + 160));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OneUpSharePlayActivity.activate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 168) + **(a2 + 168));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D43A98;

  return v7(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore26OneUpSharePlaySessionStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t dispatch thunk of OneUpSharePlayMessenger.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A3CA8098;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of OneUpSharePlayMessenger.send<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 48) + **(a7 + 48));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1A3CA8098;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of OneUpSharePlayJournal.add<A, B>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 64) + **(a10 + 64));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1A3D60150;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of OneUpSharePlayJournal.remove(attachment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3CA8098;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of OneUpSharePlayJournalAttachment.load<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A3CA8098;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of OneUpSharePlayJournalAttachment.loadMetadata<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 24) + **(a7 + 24));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1A3CA8098;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t PhotosItemListSelectionSnapshot.selectedIndexes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v4 = sub_1A52414C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PhotosItemListSelectionSnapshot.__allocating_init(itemList:selectedIndexes:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v6 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v7 = sub_1A52414C4();
  (*(*(v7 - 8) + 32))(v4 + v6, a2, v7);
  return v4;
}

uint64_t PhotosItemListSelectionSnapshot.init(itemList:selectedIndexes:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  v5 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v6 = sub_1A52414C4();
  (*(*(v6 - 8) + 32))(v2 + v5, a2, v6);
  return v2;
}

uint64_t PhotosItemListSelectionSnapshot.isSelected(item:)(void *a1)
{
  v2 = v1;
  sub_1A42DCE20(v2 + 16, v6);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5[3] = swift_getAssociatedTypeWitness();
    v5[4] = swift_getAssociatedConformanceWitness();
    v5[5] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1A5246224();
  }

  sub_1A42DCF40(v6);
  return 0;
}

uint64_t PhotosItemListSelectionSnapshot.index(for:)(void *a1)
{
  sub_1A42DCE20(v1 + 16, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4[3] = swift_getAssociatedTypeWitness();
    v4[4] = swift_getAssociatedConformanceWitness();
    v4[5] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_1A5246224();
  }

  sub_1A42DCF40(v5);
  return 0;
}

uint64_t PhotosItemListSelectionSnapshot.deinit()
{
  sub_1A42DCF40(v0 + 16);
  v1 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v2 = sub_1A52414C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosItemListSelectionSnapshot.__deallocating_deinit()
{
  sub_1A42DCF40(v0 + 16);
  v1 = OBJC_IVAR____TtC12PhotosUICore31PhotosItemListSelectionSnapshot_selectedIndexes;
  v2 = sub_1A52414C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t PhotosItemListSelectionSnapshot.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](v0);
  return sub_1A524ECE4();
}

uint64_t type metadata accessor for PhotosItemListSelectionSnapshot()
{
  result = qword_1EB1C9800;
  if (!qword_1EB1C9800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A45E0EBC()
{
  result = sub_1A52414C4();
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

uint64_t sub_1A45E0FA4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return sub_1A524EAB4();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A45E1030()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A45E1098()
{
  swift_getKeyPath();
  (*(*v0 + 144))();

  v1 = v0[2];
  sub_1A45E1510(v1, v0[3]);
  return v1;
}

uint64_t sub_1A45E1108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A45E1154(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1A45E1510(*a1, v2);
  return sub_1A45E1198(v1, v2);
}

uint64_t sub_1A45E1198(uint64_t a1, unint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        if (a2 == 3)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

LABEL_10:
      if (a2 >= 4)
      {
        if (v5 == a1 && v6 == a2)
        {
          goto LABEL_18;
        }

        v7 = v2[2];
        v8 = v2[3];
        v9 = sub_1A524EAB4();
        v6 = v8;
        v10 = v9;
        v5 = v7;
        if (v10)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_16;
    }

    if (a2 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (a2 == 1)
        {
          goto LABEL_18;
        }

LABEL_16:
        KeyPath = swift_getKeyPath();
        v12 = MEMORY[0x1EEE9AC00](KeyPath);
        v14 = v2;
        v15 = a1;
        v16 = a2;
        (*(*v2 + 152))(v12);
        sub_1A440B338(a1, a2);
      }

      goto LABEL_10;
    }

    if (a2)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v2[2] = a1;
  v2[3] = a2;

  return sub_1A440B338(v5, v6);
}

uint64_t sub_1A45E146C()
{
  sub_1A440B338(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtCC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel7Content___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A45E1510(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A45E155C()
{
  v0[3] = OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_loadingState;
  v0[4] = sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45E1600, v2, v1);
}

uint64_t sub_1A45E1600()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = *(v1 + v2);
  v0[6] = v3;
  v4 = *(v1 + v2 + 8);
  v0[7] = v4;
  sub_1A45E1510(v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A45E1684, 0, 0);
}

uint64_t sub_1A45E1684()
{
  v1 = v0[7];
  if (!v1)
  {
LABEL_4:
    v0[8] = sub_1A524CC44();
    v3 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A45E1760, v3, v2);
  }

  if (v1 != 1)
  {
    if (v1 == 2)
    {
      goto LABEL_4;
    }

    sub_1A440B338(v0[6], v1);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A45E1760()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = *(v1 + v2);
  v4 = *(v1 + v2 + 8);
  *(v1 + v2) = xmmword_1A5301350;
  sub_1A440B338(v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content);
  v0[9] = v5;
  if (v5[3] == 1)
  {
    v5[2] = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = xmmword_1A5301350;
    (*(*v5 + 152))(KeyPath, sub_1A45E4738, v7, MEMORY[0x1E69E7CA8] + 8);
  }

  v0[10] = 0;
  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E18B4, 0, 0);
}

uint64_t sub_1A45E18B4()
{
  v47 = v0;
  sub_1A3C52C70(0, &qword_1EB1268C8);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[11] = v1;
  if ([v1 showAssetRichDescription])
  {
    sub_1A440B338(v0[6], v0[7]);
    v0[12] = sub_1A524CC44();
    v2 = sub_1A524CBC4();
    v4 = v3;
    v5 = sub_1A45E1EDC;
    goto LABEL_22;
  }

  v6 = sub_1A446720C();
  v7 = [v6 photoLibrary];

  if (!v7)
  {
    __break(1u);
    goto LABEL_29;
  }

  v11 = [v7 librarySpecificFetchOptions];
  v0[14] = v11;

  [v11 setFetchLimit_];
  sub_1A3C4D548(0, &qword_1EB12B260);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F8E10;
  v13 = sub_1A446720C();
  v14 = [v13 uuid];

  if (!v14)
  {
LABEL_29:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  sub_1A440B338(v0[6], v0[7]);
  v15 = objc_opt_self();
  v16 = sub_1A524C674();
  v18 = v17;

  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  v19 = sub_1A524CA14();

  v20 = [v15 fetchAssetsWithUUIDs:v19 options:v11];

  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = [v20 firstObject];

  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = objc_opt_self();
  sub_1A3C4D548(0, &qword_1EB126180);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A52F9790;
  *(v23 + 32) = v21;
  sub_1A3C52C70(0, &qword_1EB126660);
  v24 = v21;
  v25 = sub_1A524CA14();

  v45 = v22;
  v26 = [v22 fetchGeneratedAssetDescriptionsGroupedByAssetLocalIdentifierWithType:1 forAssets:v25];

  sub_1A3C52C70(0, &qword_1EB13E820);
  v27 = sub_1A524C3E4();

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_1A42414C4(*(v27 + 16), 0);
    v30 = sub_1A3E2CBF8(&v46, v29 + 4, v28, v27);
    sub_1A3C42540();
    if (v30 == v28)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v31 = sub_1A45E24C0(v29);

  v32 = v24;
  if (v31)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1A52F9790;
    *(v33 + 32) = v24;
    v34 = v24;
    v35 = sub_1A524CA14();

    v36 = [v45 fetchGeneratedAssetDescriptionsGroupedByAssetLocalIdentifierWithType:2 forAssets:v35];

    v37 = sub_1A524C3E4();
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = sub_1A42414C4(*(v37 + 16), 0);
      v40 = sub_1A3E2CBF8(&v46, v39 + 4, v38, v37);
      sub_1A3C42540();
      if (v40 == v38)
      {
LABEL_16:
        v41 = sub_1A45E24C0(v39);

        if (v41)
        {
          if (*(v41 + 16))
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          if (*(v31 + 16))
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v0[19] = v0[10];
          v0[20] = sub_1A524CC44();
          v2 = sub_1A524CBC4();
          v4 = v43;
          v5 = sub_1A45E2378;
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

LABEL_20:

LABEL_21:
  v0[15] = sub_1A524CC44();
  v2 = sub_1A524CBC4();
  v4 = v42;
  v5 = sub_1A45E20BC;
LABEL_22:
  v8 = v5;
  v9 = v2;
  v10 = v4;

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1A45E1EDC()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];

  v4 = *(v3 + v2);
  v5 = *(v3 + v2 + 8);
  *(v3 + v2) = xmmword_1A5344DD0;
  sub_1A440B338(v4, v5);
  if (*(v1 + 24) == 2)
  {
    *(v0[9] + 16) = 0;
    v6 = v0[10];
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    KeyPath = swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = xmmword_1A5344DD0;
    (*(*v7 + 152))(KeyPath, sub_1A45E4738, v9, MEMORY[0x1E69E7CA8] + 8);
  }

  v0[13] = v6;
  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2028, 0, 0);
}

uint64_t sub_1A45E2028()
{
  v0[19] = v0[13];
  v0[20] = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2378, v2, v1);
}

uint64_t sub_1A45E20BC()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];

  v4 = *(v3 + v2);
  v5 = *(v3 + v2 + 8);
  *(v3 + v2) = xmmword_1A5344DD0;
  sub_1A440B338(v4, v5);
  if (*(v1 + 24) == 2)
  {
    *(v0[9] + 16) = 0;
  }

  else
  {
    v6 = v0[9];
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5344DD0;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E2200, 0, 0);
}

uint64_t sub_1A45E2200()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A45E2268()
{
  v1 = v0[17];
  v2 = v0[16];
  v3 = v0[2];
  v4 = v0[3];

  v5 = (v3 + v4);
  v6 = *(v3 + v4);
  v7 = *(v3 + v4 + 8);
  *v5 = v2;
  v5[1] = v1;
  sub_1A440B338(v6, v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45E2318()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45E2378()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];

  v4 = *(v3 + v2);
  v5 = *(v3 + v2 + 8);
  *(v3 + v2) = xmmword_1A5344DD0;
  sub_1A440B338(v4, v5);
  if (*(v1 + 24) == 2)
  {
    *(v0[9] + 16) = 0;
  }

  else
  {
    v6 = v0[9];
    KeyPath = swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = xmmword_1A5344DD0;
    (*(*v6 + 152))(KeyPath, sub_1A45E4738, v8, MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1A4468130();

  return MEMORY[0x1EEE6DFA0](sub_1A45E4750, 0, 0);
}