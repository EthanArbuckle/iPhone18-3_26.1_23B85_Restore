uint64_t sub_1C10FEEB8()
{
  OUTLINED_FUNCTION_0_45();
  sub_1C1109B5C(v0, v1);
  return sub_1C1261F20();
}

void PhotosSelection.selectedItemsSet.modify()
{
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_27_8();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_23_8(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_45();
  v7 = sub_1C1109B5C(v5, v6);
  OUTLINED_FUNCTION_11_19(v7);

  *v2 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_19();

  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_18_4();
}

uint64_t PhotosSelection.isSelectionBandActive.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v3 = sub_1C1109B5C(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 32);
}

uint64_t sub_1C10FF0CC@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosSelection.isSelectionBandActive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PhotosSelection.isSelectionBandActive.setter(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_28_8();
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    OUTLINED_FUNCTION_48_3();
  }

  return result;
}

uint64_t sub_1C10FF1C8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 32) = a2;
  return result;
}

void PhotosSelection.isSelectionBandActive.modify()
{
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_27_8();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_23_8(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_45();
  v7 = sub_1C1109B5C(v5, v6);
  OUTLINED_FUNCTION_11_19(v7);

  *v2 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_19();

  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_18_4();
}

uint64_t PhotosSelection.preselectedIdentifiers.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v3 = sub_1C1109B5C(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
}

uint64_t sub_1C10FF38C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosSelection.preselectedIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t PhotosSelection.preselectedIdentifiers.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_28_8();
  if (sub_1C10FEDF8(*(v1 + 40), a1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_48_3();
  }

  else
  {
    *(v1 + 40) = a1;
  }
}

void PhotosSelection.preselectedIdentifiers.modify()
{
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_27_8();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_23_8(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_45();
  v7 = sub_1C1109B5C(v5, v6);
  OUTLINED_FUNCTION_11_19(v7);

  *v2 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_19();

  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_18_4();
}

void sub_1C10FF580(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C1261F40();

  free(v1);
}

uint64_t PhotosSelection.delegate.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v3 = sub_1C1109B5C(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C10FF69C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosSelection.delegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PhotosSelection.delegate.setter()
{
  swift_getKeyPath();
  sub_1C10FEEB8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C10FF788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a3;
  return swift_unknownObjectWeakAssign();
}

void PhotosSelection.delegate.modify()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  v3[5] = v0;
  swift_getKeyPath();
  v3[6] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  *v3 = v0;
  OUTLINED_FUNCTION_0_45();
  v3[7] = sub_1C1109B5C(v4, v5);
  sub_1C1261F30();

  *v3 = v0;
  swift_getKeyPath();
  sub_1C1261F50();

  OUTLINED_FUNCTION_16_16();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v0 + 56);
  v3[3] = Strong;
  v3[4] = v7;
  OUTLINED_FUNCTION_18_4();
}

void sub_1C10FF908(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_7();
  sub_1C1261F40();

  free(v3);
}

uint64_t sub_1C10FF9C8()
{
  swift_getKeyPath();
  sub_1C1109B5C(&qword_1EDE7E7A8, type metadata accessor for PhotosSelection);
  sub_1C1261F30();

  swift_beginAccess();
}

uint64_t sub_1C10FFAAC(uint64_t a1)
{
  swift_beginAccess();
  if (sub_1C0FEACC4(*(v1 + 64), a1))
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C10FEEB8();
  }
}

uint64_t sub_1C10FFB84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t sub_1C10FFC18(uint64_t a1)
{
  OUTLINED_FUNCTION_28_8();
  if (sub_1C1109BE4(*(v1 + 72), a1))
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v5 - 16) = v1;
    *(v5 - 8) = a1;
    OUTLINED_FUNCTION_48_3();
  }
}

uint64_t sub_1C10FFCD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

uint64_t sub_1C10FFD40()
{
  swift_getKeyPath();
  sub_1C1109B5C(&qword_1EDE7E7A8, type metadata accessor for PhotosSelection);
  sub_1C1261F30();

  return *(v0 + 80);
}

uint64_t sub_1C10FFDE0(uint64_t result)
{
  if (*(v1 + 80) == (result & 1))
  {
    *(v1 + 80) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C10FEEB8();
  }

  return result;
}

uint64_t PhotosSelection.__allocating_init(with:allowDeselectionOfPreselectedItems:)(void *a1, char a2)
{
  v4 = swift_allocObject();
  PhotosSelection.init(with:allowDeselectionOfPreselectedItems:)(a1, a2);
  return v4;
}

uint64_t PhotosSelection.init(with:allowDeselectionOfPreselectedItems:)(void *a1, char a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = sub_1C1106C2C(MEMORY[0x1E69E7CC0]);
  *(v2 + 24) = v6;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 56) = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x1E69E7CD0];
  *(v2 + 64) = v5;
  *(v2 + 72) = v7;
  sub_1C1261F60();
  if (a1)
  {
    v8 = sub_1C10FE154(a1);
    a1 = sub_1C10FD53C(v8);
  }

  *(v2 + 40) = a1;
  *(v2 + 80) = a2 & 1;
  return v2;
}

uint64_t sub_1C10FFF78()
{
  swift_getKeyPath();
  sub_1C1109B5C(&qword_1EDE7E7A8, type metadata accessor for PhotosSelection);
  sub_1C1261F30();

  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  *(v0 + 64) = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1C1261F40();

  result = PhotosSelection.delegate.getter();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C11000E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      sub_1C1102FF4(&v5, v3);
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1C1100148(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_1C0FD1A08(v12))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_1C0FF4B88(*(v1 + 48) + 40 * (v9 | (v8 << 6)), v13);
    v10[0] = v13[0];
    v10[1] = v13[1];
    v11 = v14;
    sub_1C11034D4(v12, v10);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C110024C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_1C0FF4B88(v2, v4);
      sub_1C11034D4(v5, v4);
      sub_1C0FD1A08(v5);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
  }
}

uint64_t sub_1C11002E4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 32);
      do
      {
        v4 = *v3++;
        result = sub_1C1106100(v4);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void PhotosSelection.toggle(item:clearPreviousSelection:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1C0FDB0A8(v4, v28);
  PhotosSelection.isItemSelected(_:)();
  v7 = v6;
  sub_1C0FD1A5C(v28, &qword_1EBE91420);
  if (v7 & 1) == 0 || (sub_1C10FFD40())
  {
    sub_1C0FDB0A8(v5, v28);
    v8 = type metadata accessor for PhotosConcreteSelectableItem();
    v9 = objc_allocWithZone(v8);
    sub_1C0FDB0A8(v28, v9 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
    v27.receiver = v9;
    v27.super_class = v8;
    v10 = objc_msgSendSuper2(&v27, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    if (v7)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_0_45();
      sub_1C1109B5C(v11, v12);
      OUTLINED_FUNCTION_2_38();
      sub_1C1261F30();

      OUTLINED_FUNCTION_36_5();
      OUTLINED_FUNCTION_2_38();
      sub_1C1261F50();

      OUTLINED_FUNCTION_16_16();
      v13 = sub_1C1101FB4(v10);
      swift_endAccess();
    }

    else
    {
      if (v3)
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_25_6();
        OUTLINED_FUNCTION_0_45();
        sub_1C1109B5C(v14, v15);
        OUTLINED_FUNCTION_2_38();
        sub_1C1261F30();

        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_2_38();
        sub_1C1261F50();

        OUTLINED_FUNCTION_28_8();
        v16 = MEMORY[0x1E69E7CC0];
        *(v1 + 64) = MEMORY[0x1E69E7CC0];

        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_35_4();

        PhotosSelection.preselectedIdentifiers.modify();
        v19 = v18;
        if (*v17)
        {
          *v17 = v16;
        }

        v19(v28, 0);
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_0_45();
      sub_1C1109B5C(v20, v21);
      OUTLINED_FUNCTION_2_38();
      sub_1C1261F30();

      OUTLINED_FUNCTION_36_5();
      OUTLINED_FUNCTION_2_38();
      sub_1C1261F50();

      OUTLINED_FUNCTION_16_16();
      sub_1C1107720(v10);
      swift_endAccess();
    }

    OUTLINED_FUNCTION_36_5();
    OUTLINED_FUNCTION_35_4();

    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_3();
    MEMORY[0x1EEE9AC00](v22);
    sub_1C1266950();
    if (swift_dynamicCast())
    {
      v23 = v28[0];
      swift_getKeyPath();
      v28[0] = v1;
      OUTLINED_FUNCTION_0_45();
      sub_1C1109B5C(v24, v25);
      OUTLINED_FUNCTION_7_24();
      sub_1C1261F30();

      v28[0] = v1;
      swift_getKeyPath();
      OUTLINED_FUNCTION_7_24();
      sub_1C1261F50();

      OUTLINED_FUNCTION_16_16();
      if (v7)
      {
        sub_1C1106100(v23);
      }

      else
      {
        sub_1C1102FF4(&v26, v23);
      }

      swift_endAccess();
      v28[0] = v1;
      swift_getKeyPath();
      sub_1C1261F40();
    }

    sub_1C10FFF78();
  }

  OUTLINED_FUNCTION_22_0();
}

Swift::Bool __swiftcall PhotosSelection.isIdentifierSelected(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = PhotosSelection.orderedIdentifiers.getter();
  v6[0] = countAndFlagsBits;
  v6[1] = object;
  v5[2] = v6;
  LOBYTE(object) = sub_1C0FA25C8(sub_1C1109794, v5, v3);

  return object & 1;
}

Swift::Bool __swiftcall PhotosSelection.isPreselectedIdentifierSelected(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = PhotosSelection.preselectedIdentifiers.getter();
  if (v3)
  {
    v4 = v3;
    v8[0] = countAndFlagsBits;
    v8[1] = object;
    MEMORY[0x1EEE9AC00](v3);
    v7[2] = v8;
    v5 = sub_1C0FA25C8(sub_1C1109E90, v7, v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1C1100BD8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  if (v2 == (*(v5 + 16))(v4, v5) && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1266D50();
  }

  return v8 & 1;
}

uint64_t PhotosSelection.orderedIdentifiers.getter()
{
  v1 = v0;
  v2 = *(sub_1C10FF9C8() + 16);

  if (!v2)
  {
    PhotosSelection.selectedItemsSet.getter(&v19);
    v3 = *(v20 + 16);

    if (v3)
    {
      PhotosSelection.selectedItemsSet.getter(&v19);
      sub_1C10FD5CC(v19, v20);
      while (1)
      {
        sub_1C1266BD0();
        v4 = v19;
        if (!v19)
        {
          break;
        }

        __swift_project_boxed_opaque_existential_1(&v19[OBJC_IVAR___PXPhotosConcreteSelectableItem_item], *&v19[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24]);
        v5 = OUTLINED_FUNCTION_26_8();
        v7 = v6(v5);
        v9 = v8;
        swift_getKeyPath();
        v19 = v1;
        OUTLINED_FUNCTION_0_45();
        sub_1C1109B5C(&qword_1EDE7E7A8, v10);
        OUTLINED_FUNCTION_41_4();
        sub_1C1261F30();

        v19 = v1;
        swift_getKeyPath();
        OUTLINED_FUNCTION_41_4();
        sub_1C1261F50();

        OUTLINED_FUNCTION_16_16();
        v11 = *(v1 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 64) = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_8_12();
          sub_1C0FA26D0();
          v11 = v16;
          *(v1 + 64) = v16;
        }

        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v14 >= v13 >> 1)
        {
          OUTLINED_FUNCTION_18_20(v13);
          sub_1C0FA26D0();
          v11 = v17;
        }

        *(v11 + 16) = v14 + 1;
        v15 = v11 + 16 * v14;
        *(v15 + 32) = v7;
        *(v15 + 40) = v9;
        *(v1 + 64) = v11;
        swift_endAccess();
        v19 = v1;
        swift_getKeyPath();
        sub_1C1261F40();
      }
    }
  }

  return sub_1C10FF9C8();
}

void PhotosSelection.constrainToType(of:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  PhotosSelection.selectedItemsSet.getter(v25);
  v24[2] = v2;
  v3 = sub_1C1101318(sub_1C11097B4, v24, v25[0], v25[1]);
  swift_getKeyPath();
  v25[0] = v0;
  OUTLINED_FUNCTION_0_45();
  sub_1C1109B5C(v4, v5);
  sub_1C1261F30();

  v25[0] = v0;
  swift_getKeyPath();
  sub_1C1261F50();

  OUTLINED_FUNCTION_16_16();
  *(v0 + 16) = sub_1C1107FD0(v3, *(v0 + 16), *(v0 + 24));
  *(v0 + 24) = v6;
  swift_endAccess();
  v25[0] = v0;
  swift_getKeyPath();
  sub_1C1261F40();

  v7 = 0;
  v23 = sub_1C0FF7688(v3);
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v23 == v7)
    {

      swift_getKeyPath();
      v25[0] = v0;
      OUTLINED_FUNCTION_22_11();
      sub_1C1261F30();

      v25[0] = v0;
      swift_getKeyPath();
      OUTLINED_FUNCTION_22_11();
      sub_1C1261F50();

      OUTLINED_FUNCTION_16_16();
      sub_1C11002E4(v22);
      swift_endAccess();

      v25[0] = v0;
      swift_getKeyPath();
      OUTLINED_FUNCTION_22_11();
      sub_1C1261F40();

      sub_1C10FFF78();
      OUTLINED_FUNCTION_22_0();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F02D0](v7, v3);
    }

    else
    {
      if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR___PXPhotosConcreteSelectableItem_item], *&v8[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24]);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_3();
    MEMORY[0x1EEE9AC00](v11);
    sub_1C1266950();

    OUTLINED_FUNCTION_41_4();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v25[0] = 0;
    }

    v12 = v25[0];
    ++v7;
    if (v25[0])
    {
      v13 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = OUTLINED_FUNCTION_8_12();
        sub_1C0FE417C(v16, v17, v18, v22);
        v13 = v19;
      }

      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v15 >= v14 >> 1)
      {
        v20 = OUTLINED_FUNCTION_18_20(v14);
        sub_1C0FE417C(v20, v15 + 1, 1, v13);
        v13 = v21;
      }

      *(v13 + 16) = v15 + 1;
      v22 = v13;
      *(v13 + 8 * v15 + 32) = v12;
      v7 = v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

BOOL sub_1C1101278(void *a1, void *a2)
{
  sub_1C0FDB0A8(*a1 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return DynamicType != swift_getDynamicType();
}

uint64_t sub_1C1101318(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94030);
  swift_initStackObject();
  v8 = sub_1C11090C0(a3, a4);
  v9 = v8[6];
  v10 = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94038);
  inited = swift_initStackObject();
  inited[2] = v9;
  inited[3] = v10;
  inited[4] = 0;

  while (1)
  {
    v12 = sub_1C1109178();
    if (!v12)
    {
      swift_setDeallocating();
      sub_1C11091C4();
      return v17;
    }

    v13 = v12;
    v16 = v12;
    v14 = a1(&v16);
    if (v4)
    {
      break;
    }

    if (v14)
    {
      sub_1C1266A10();
      sub_1C1266A60();
      sub_1C1266A70();
      sub_1C1266A30();
    }

    else
    {
    }
  }

  swift_setDeallocating();
  sub_1C11091C4();
}

void PhotosSelection.selectedItemsWithType<A>(of:)()
{
  OUTLINED_FUNCTION_19_4();
  v1 = v0;
  v3 = v2;
  v11[3] = v0;
  v11[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  v6 = *(*(v1 - 8) + 16);
  v6(boxed_opaque_existential_1, v3, v1);
  PhotosSelection.isItemSelected(_:)();
  v8 = v7;
  sub_1C0FD1A5C(v11, &qword_1EBE91420);
  if (v8)
  {
    v9 = PhotosSelection.selectedItemsSet.getter(v11);
    MEMORY[0x1EEE9AC00](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94040);
    sub_1C0FDB6D4(&qword_1EBE94048, &qword_1EBE94040);
    sub_1C1265F80();
  }

  else
  {
    sub_1C1102024(v1, v1);
    swift_allocObject();
    sub_1C12660D0();
    v6(v10, v3, v1);
    sub_1C12661A0();
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1101674@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C0FDB0A8(*a1 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t PhotosSelection.currentSelectionCount.getter()
{
  v0 = *(sub_1C10FF9C8() + 16);

  v1 = PhotosSelection.preselectedIdentifiers.getter();
  if (v1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  result = v0 + v2;
  if (__OFADD__(v0, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t PhotosSelection.deinit()
{

  sub_1C0FF4BE4(v0 + 48);

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosSelection.__deallocating_deinit()
{
  PhotosSelection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1101838()
{
  type metadata accessor for PhotosSelection();
  v0 = swift_allocObject();
  result = PhotosSelection.init(with:allowDeselectionOfPreselectedItems:)(0, 1);
  qword_1EDE82780 = v0;
  return result;
}

uint64_t sub_1C1101880@<X0>(void *a1@<X8>)
{
  if (qword_1EDE82778 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE82780;
}

double sub_1C11018EC()
{
  qword_1EDE792F8 = 0;
  result = 0.0;
  xmmword_1EDE792D8 = 0u;
  unk_1EDE792E8 = 0u;
  return result;
}

uint64_t sub_1C1101904@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7F710 != -1)
  {
    swift_once();
  }

  return sub_1C10D1A1C(&xmmword_1EDE792D8, a1, &qword_1EBE94050);
}

uint64_t EnvironmentValues.photosSelection.getter()
{
  sub_1C11097F0();
  sub_1C12637F0();
  return v1;
}

uint64_t EnvironmentValues.photosSelection.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C11097F0();
  sub_1C12637F0();
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1101A48(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_51_3();
  }

  OUTLINED_FUNCTION_51_3();
}

uint64_t (*EnvironmentValues.photosSelectionIgnored.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1109844();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C1101B74;
}

uint64_t sub_1C1101BA0(void (*a1)(void))
{
  a1();
  sub_1C12637F0();
  return v2;
}

uint64_t (*EnvironmentValues.photosSelectModeEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1109898();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C1101CB8;
}

uint64_t EnvironmentValues.photosSelectableLayoutItemStore.getter()
{
  sub_1C11098EC();

  return sub_1C12637F0();
}

uint64_t EnvironmentValues.photosSelectableLayoutItemStore.setter(uint64_t a1)
{
  sub_1C10D1A1C(a1, v3, &qword_1EBE94050);
  sub_1C11098EC();
  sub_1C1263800();
  return sub_1C0FD1A5C(a1, &qword_1EBE94050);
}

void (*EnvironmentValues.photosSelectableLayoutItemStore.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_1C11098EC();
  sub_1C12637F0();
  return sub_1C1101E70;
}

void sub_1C1101E70(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_45_5();
    sub_1C10D1A1C(v2 + 40, v2 + 80, &qword_1EBE94050);
    OUTLINED_FUNCTION_51_3();
    sub_1C0FD1A5C(v2 + 40, &qword_1EBE94050);
  }

  else
  {
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_51_3();
  }

  sub_1C0FD1A5C(v2, &qword_1EBE94050);

  free(v2);
}

uint64_t View.photosSelectionIgnored(ignored:)()
{
  swift_getKeyPath();
  sub_1C1264A30();
}

uint64_t sub_1C1101FB4(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v11 = a1;
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = &v11;
  v4 = sub_1C11078D4(sub_1C1109EAC, v10, v2);
  v6 = 0;
  if ((v7 & 1) == 0)
  {
    sub_1C1108898(v4, v5);
    return v8;
  }

  return v6;
}

uint64_t sub_1C1102024(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8]();
  }
}

uint64_t sub_1C1102090()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t type metadata accessor for PhotosSelection()
{
  result = qword_1EDE7E798;
  if (!qword_1EDE7E798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1C110213C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

char *sub_1C110215C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

char *sub_1C11021B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

char *sub_1C11021DC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

char *sub_1C1102200(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

void sub_1C110223C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_3(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_8_27();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_8_27();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1C110230C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C12A3E50;
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

char *sub_1C1102370(char *a1, int64_t a2, char a3)
{
  result = sub_1C11024B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C1102390(void *a1, int64_t a2, char a3)
{
  result = sub_1C11025B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C11023B0(char *a1, int64_t a2, char a3)
{
  result = sub_1C11026F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C11023D0(void *a1, int64_t a2, char a3)
{
  result = sub_1C11027F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C11023F0(char *a1, int64_t a2, char a3)
{
  result = sub_1C1102920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C1102410(void *a1, int64_t a2, char a3)
{
  result = sub_1C1102A38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1102430(char *a1, int64_t a2, char a3)
{
  result = sub_1C1102B70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1102450(char *a1, int64_t a2, char a3)
{
  result = sub_1C1102C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1102470(char *a1, int64_t a2, char a3)
{
  result = sub_1C1102D84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1102490(char *a1, int64_t a2, char a3)
{
  result = sub_1C1102E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C11024B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C11025B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93558);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C11026F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_1C11027F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93568);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1102920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C1102A38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1102B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1C1102C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1102D84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1C1102E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C1102F9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1C1266BB0();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

BOOL sub_1C1102FF4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1C1266E80();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      sub_1C11044E8(a2, v9, isUniquelyReferenced_nonNull_native);
      *v3 = v13;
      goto LABEL_7;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      break;
    }

    v7 = v9 + 1;
  }

  a2 = *(*(v6 + 48) + 8 * v9);
LABEL_7:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1C11030CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  sub_1C1266E90();
  sub_1C1265EF0();
  sub_1C1266EE0();
  OUTLINED_FUNCTION_12_14();
  while (1)
  {
    v11 = v10 & v4;
    v12 = (v5 << (v10 & v4)) & *(v9 + 56 + (((v10 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v9 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1C1266D50() & 1) != 0)
    {

      v15 = (*(v9 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v10 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1C11045EC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_1C110320C(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_1C1262DD0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8]);
  v27 = a2;
  v9 = sub_1C1265D20();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1C1104754(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_1C1109B5C(&qword_1EDE7BFD0, MEMORY[0x1E697BFB8]);
    v15 = sub_1C1265DE0();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_1C11034D4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  sub_1C12668B0();
  OUTLINED_FUNCTION_12_14();
  while (1)
  {
    v9 = v8 & v3;
    v10 = (v4 << (v8 & v3)) & *(v7 + 56 + (((v8 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1C0FF4B88(a2, v17);
      v16 = *v5;
      sub_1C11049E0(v17, v9, isUniquelyReferenced_nonNull_native);
      *v5 = v16;
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a1 + 32) = *(a2 + 32);
      return v10 == 0;
    }

    sub_1C0FF4B88(*(v7 + 48) + 40 * v9, v17);
    v11 = MEMORY[0x1C68F0200](v17, a2);
    sub_1C0FD1A08(v17);
    if (v11)
    {
      break;
    }

    v8 = v9 + 1;
  }

  sub_1C0FD1A08(a2);
  sub_1C0FF4B88(*(v7 + 48) + 40 * v9, a1);
  return v10 == 0;
}

BOOL sub_1C1103608(uint64_t a1, __int128 *a2)
{
  v5 = v2;
  v7 = a2[1];
  v40 = *a2;
  v41 = v7;
  v42 = *(a2 + 8);
  v8 = *v2;
  v36 = v40;
  v37 = v7;
  v38 = *(&v7 + 1);
  v39 = v42;
  sub_1C1266E90();
  PhotosPrefetchable.Image.hash(into:)();
  sub_1C1266EE0();
  OUTLINED_FUNCTION_12_14();
  while (1)
  {
    v10 = v9 & v3;
    v11 = (v4 << (v9 & v3)) & *(v8 + 56 + (((v9 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v40;
      v34 = v41;
      v35 = v42;
      v32 = *v5;
      sub_1C1109A9C(&v33, &v36);
      sub_1C1104B40(&v33, v10, isUniquelyReferenced_nonNull_native);
      *v5 = v32;
      v20 = v41;
      v21 = BYTE1(v41);
      v22 = WORD1(v41);
      v23 = *(&v41 + 1);
      v24 = v42;
      *a1 = v40;
      *(a1 + 16) = v20;
      *(a1 + 17) = v21;
      *(a1 + 18) = v22;
      *(a1 + 24) = v23;
      *(a1 + 32) = v24;
      return v11 == 0;
    }

    *&v33 = OUTLINED_FUNCTION_20_16(*(v8 + 48) + 40 * v10);
    *(&v33 + 1) = v12;
    LOBYTE(v34) = v13;
    BYTE1(v34) = v14;
    WORD1(v34) = v15;
    *(&v34 + 1) = v16;
    v35 = v17;
    sub_1C1109A94();
    v18 = static PhotosPrefetchable.Image.== infix(_:_:)(&v33, &v40);
    sub_1C100DC0C();
    if (v18)
    {
      break;
    }

    v9 = v10 + 1;
  }

  sub_1C100DC0C();
  *a1 = OUTLINED_FUNCTION_20_16(*(v8 + 48) + 40 * v10);
  *(a1 + 8) = v25;
  *(a1 + 16) = v26;
  *(a1 + 17) = v27;
  *(a1 + 18) = v28;
  *(a1 + 24) = v29;
  *(a1 + 32) = v30;
  sub_1C1109A94();
  return v11 == 0;
}

uint64_t sub_1C11037F8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94090);
  result = sub_1C1266900();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1C110230C(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1C1266E80();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C1103A1C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94080);
  result = sub_1C1266900();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1C110230C(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1C1266E90();
    sub_1C1265EF0();
    result = sub_1C1266EE0();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C1103C78()
{
  v1 = v0;
  v35 = sub_1C1262DD0();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94088);
  result = sub_1C1266900();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
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
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1C110230C(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8]);
    result = sub_1C1265D20();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C1103FD0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94060);
  result = sub_1C1266900();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_1C110230C(0, (v25 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 40 * (v12 | (v5 << 6));
    v26 = *v15;
    v27 = *(v15 + 16);
    v28 = *(v15 + 32);
    result = sub_1C12668B0();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v4 + 48) + 40 * v19;
    *v24 = v26;
    *(v24 + 16) = v27;
    *(v24 + 32) = v28;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C110422C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94070);
  result = sub_1C1266900();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      sub_1C110230C(0, (v28 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 40 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v32 = *(v15 + 18);
    v33 = *(v15 + 17);
    v31 = *(v15 + 24);
    v30 = *(v15 + 32);
    sub_1C1266E90();
    PhotosPrefetchable.Image.hash(into:)();
    result = sub_1C1266EE0();
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v4 + 48) + 40 * v22;
    *v27 = v16;
    *(v27 + 8) = v17;
    *(v27 + 16) = v18;
    *(v27 + 17) = v33;
    *(v27 + 18) = v32;
    *(v27 + 24) = v31;
    *(v27 + 32) = v30;
    ++*(v4 + 16);
    v2 = v29;
    if (!v9)
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
    v26 = *(v11 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C11044E8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C11037F8();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C1105504();
LABEL_10:
      v12 = *v3;
      result = sub_1C1266E80();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C1104D40();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1C11045EC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C1103A1C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C11056F0();
LABEL_10:
      v15 = *v4;
      sub_1C1266E90();
      sub_1C1265EF0();
      result = sub_1C1266EE0();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1C1266D50() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1C1104E80();
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
    result = sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1C1104754(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1C1262DD0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C1103C78();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C1105924();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8]);
      v14 = sub_1C1265D20();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C1109B5C(&qword_1EDE7BFD0, MEMORY[0x1E697BFB8]);
        v16 = sub_1C1265DE0();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1C1104FD8();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1C11049E0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C1103FD0();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1C1105C3C();
LABEL_10:
      v15 = *v3;
      result = sub_1C12668B0();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1C0FF4B88(*(v15 + 48) + 40 * a2, v18);
        v17 = MEMORY[0x1C68F0200](v18, v6);
        sub_1C0FD1A08(v18);
        if (v17)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C110520C();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *(v6 + 16);
  *v10 = *v6;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(v6 + 32);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }

  return result;
}

uint64_t sub_1C1104B40(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(result + 16);
  v39 = *result;
  v40 = v6;
  v41 = *(result + 32);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C110422C();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1C1105E64();
LABEL_10:
      v19 = *v3;
      v35 = v39;
      v36 = v40;
      v37 = *(&v40 + 1);
      v38 = v41;
      sub_1C1266E90();
      PhotosPrefetchable.Image.hash(into:)();
      result = sub_1C1266EE0();
      v20 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a2 = result & v20;
        if (((*(v19 + 56 + (((result & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v21 = *(v19 + 48) + 40 * a2;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v21 + 17);
        v26 = *(v21 + 18);
        v27 = *(v21 + 24);
        LODWORD(v21) = *(v21 + 32);
        v29[0] = v22;
        v29[1] = v23;
        v30 = v24;
        v31 = v25;
        v32 = v26;
        v33 = v27;
        v34 = v21;
        sub_1C1109A94();
        v28 = static PhotosPrefetchable.Image.== infix(_:_:)(v29, &v39);
        sub_1C100DC0C();
        if (v28)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C1105380();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = v40;
  v12 = BYTE1(v40);
  v13 = WORD1(v40);
  v14 = *(&v40 + 1);
  v15 = v41;
  *v10 = v39;
  *(v10 + 16) = v11;
  *(v10 + 17) = v12;
  *(v10 + 18) = v13;
  *(v10 + 24) = v14;
  *(v10 + 32) = v15;
  v16 = *(v9 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_15:
    result = sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v18;
  }

  return result;
}

void *sub_1C1104D40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94090);
  v2 = *v0;
  v3 = sub_1C12668F0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_1C1104E80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94080);
  v2 = *v0;
  v3 = sub_1C12668F0();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_1C1104FD8()
{
  v1 = v0;
  v2 = sub_1C1262DD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94088);
  v6 = *v0;
  v7 = sub_1C12668F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_1C110520C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94060);
  v2 = *v0;
  v3 = sub_1C12668F0();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 5 * v17;
        result = sub_1C0FF4B88(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_1C1105380()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94070);
  v2 = *v0;
  v3 = sub_1C12668F0();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        v23 = *(v18 + 18);
        v24 = *(v18 + 24);
        LODWORD(v18) = *(v18 + 32);
        v25 = *(v4 + 48) + 8 * v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 17) = v22;
        *(v25 + 18) = v23;
        *(v25 + 24) = v24;
        *(v25 + 32) = v18;
        result = sub_1C1109A94();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_1C1105504()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94090);
  result = sub_1C1266900();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1C1266E80();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C11056F0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94080);
  result = sub_1C1266900();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1C1266E90();

        sub_1C1265EF0();
        result = sub_1C1266EE0();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C1105924()
{
  v1 = v0;
  v32 = sub_1C1262DD0();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94088);
  v6 = sub_1C1266900();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8]);
        result = sub_1C1265D20();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C1105C3C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94060);
  result = sub_1C1266900();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        sub_1C0FF4B88(*(v2 + 48) + 40 * (v11 | (v5 << 6)), v25);
        result = sub_1C12668B0();
        v14 = -1 << *(v4 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v10 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v10 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v22 = *(v4 + 48) + 40 * v17;
        v23 = v25[0];
        v24 = v25[1];
        *(v22 + 32) = v26;
        *v22 = v23;
        *(v22 + 16) = v24;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v10 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C1105E64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94070);
  result = sub_1C1266900();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 40 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v31 = *(v15 + 18);
        v32 = *(v15 + 17);
        v30 = *(v15 + 24);
        v29 = *(v15 + 32);
        sub_1C1266E90();
        sub_1C1109A94();
        PhotosPrefetchable.Image.hash(into:)();
        result = sub_1C1266EE0();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v4 + 48) + 40 * v22;
        *v27 = v16;
        *(v27 + 8) = v17;
        *(v27 + 16) = v18;
        *(v27 + 17) = v32;
        *(v27 + 18) = v31;
        *(v27 + 24) = v30;
        *(v27 + 32) = v29;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C1106100(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1C1266E80();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C1104D40();
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_1C11062F8(v7);
  *v2 = v12;
  return v8;
}

uint64_t sub_1C11061D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C1266E90();
  OUTLINED_FUNCTION_15_7();
  sub_1C1265EF0();
  v6 = sub_1C1266EE0();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1C1266D50() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C1104E80();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1C1106470(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_1C11062F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C1266890();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1C1266E80() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C1106470(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C1266890();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C1266E90();

        sub_1C1265EF0();
        v10 = sub_1C1266EE0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1C1106628(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1C116B21C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (v5 != a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_1C1106718()
{
  OUTLINED_FUNCTION_19_4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_37_4();
  if (v5 != v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v3 - v0;
  if (__OFSUB__(0, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1C116B234(v4 - v8, 1);
  v10 = *v1;
  v11 = *v1 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_15:
    *v1 = v10;
    OUTLINED_FUNCTION_18_4();
    return;
  }

  v12 = *(v10 + 16);
  v13 = v12 - v0;
  if (__OFSUB__(v12, v0))
  {
    goto LABEL_21;
  }

  v14 = (v11 + 40 * v0);
  if (v7 != v0 || v14 + 40 * v13 <= v11 + 40 * v7)
  {
    memmove((v11 + 40 * v7), v14, 40 * v13);
    v12 = *(v10 + 16);
  }

  v6 = __OFADD__(v12, v9);
  v16 = v12 - v8;
  if (!v6)
  {
    *(v10 + 16) = v16;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

void sub_1C1106810(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_37_4();
  if (v5 != v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1C116B24C(v4 - v8, 1);
  v10 = *v2;
  if (!v9)
  {
LABEL_15:
    *v2 = v10;
    return;
  }

  v11 = *(v10 + 16);
  v12 = v11 - v1;
  if (__OFSUB__(v11, v1))
  {
    goto LABEL_21;
  }

  v13 = (v10 + 32 + 16 * v1);
  v14 = (v10 + 32 + 16 * v7);
  if (v7 != v1 || &v13[16 * v12] <= v14)
  {
    memmove(v14, v13, 16 * v12);
    v11 = *(v10 + 16);
  }

  v6 = __OFADD__(v11, v9);
  v16 = v11 + v9;
  if (!v6)
  {
    *(v10 + 16) = v16;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1C11068D4(uint64_t (*a1)(void *), uint64_t a2)
{
  v4 = a2;
  v6 = *v2;
  result = sub_1C10FD400(a1, a2, *v2);
  if (!v3)
  {
    v29 = result;
    if (v8)
    {
      return *(v6 + 16);
    }

    else
    {
      v27 = a1;
      v25 = v2;
      v9 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        for (i = 16 * v29; ; i += 16)
        {
          v11 = *(v6 + 16);
          if (v9 == v11)
          {
            return v29;
          }

          if (v9 >= v11)
          {
            break;
          }

          v12 = v6 + i;
          v13 = *(v6 + i + 56);
          v28[0] = *(v6 + i + 48);
          v28[1] = v13;

          v14 = v4;
          v15 = v27(v28);

          if ((v15 & 1) == 0)
          {
            v16 = v29;
            if (v9 != v29)
            {
              if ((v29 & 0x8000000000000000) != 0)
              {
                goto LABEL_22;
              }

              v17 = *(v6 + 16);
              if (v29 >= v17)
              {
                goto LABEL_23;
              }

              if (v9 >= v17)
              {
                goto LABEL_24;
              }

              v18 = (v6 + 32 + 16 * v29);
              v19 = v18[1];
              v26 = *v18;
              v20 = *(v12 + 48);
              v21 = *(v12 + 56);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C12604E4();
                v6 = v24;
              }

              v22 = v6 + 16 * v29;
              *(v22 + 32) = v20;
              *(v22 + 40) = v21;

              if (v9 >= *(v6 + 16))
              {
                goto LABEL_25;
              }

              v23 = v6 + i;
              *(v23 + 48) = v26;
              *(v23 + 56) = v19;

              *v25 = v6;
              v16 = v29;
            }

            v29 = v16 + 1;
          }

          v4 = v14;
          ++v9;
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C1106A94(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = *v2;
  result = sub_1C10FD4BC(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v4 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 40 * result + 72; ; i += 40)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_1C0FDB0A8(v6 + i, v17);
      v12 = a1(v17);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
      if ((v12 & 1) == 0)
      {
        if (v9 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(v6 + 16);
          if (v4 >= v13)
          {
            goto LABEL_22;
          }

          result = sub_1C0FDB0A8(v6 + 32 + 40 * v4, v17);
          if (v9 >= v13)
          {
            goto LABEL_23;
          }

          sub_1C0FDB0A8(v6 + i, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C126050C();
            v6 = v15;
          }

          v14 = v6 + 40 * v4;
          __swift_destroy_boxed_opaque_existential_0Tm(v14 + 32);
          result = sub_1C0F9DDE4(v16, v14 + 32);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_24;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v6 + i);
          result = sub_1C0F9DDE4(v17, v6 + i);
          *v2 = v6;
        }

        ++v4;
      }

      ++v9;
    }

    return v4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C1106C2C(unint64_t a1)
{
  v5 = sub_1C0FD233C();
  v6 = sub_1C1106F28(&v32, a1, 0, 1, v5);
  v7 = sub_1C0FF7688(a1);
  v8 = v32;
  if (v32 == v7)
  {
    sub_1C0FBA048(a1);
    return v6;
  }

  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = v7;
  sub_1C1102F9C(0, a1);
  sub_1C1102F9C(v8, a1);
  v3 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v8)
  {
    type metadata accessor for PhotosConcreteSelectableItem();

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      sub_1C1266970();
      v9 = v10;
    }

    while (v8 != v10);
  }

  else
  {
  }

  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_14:

    v12 = sub_1C1266BC0();
    v13 = v16;
    i = v17;
    v14 = v18;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  i = 0;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v13 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v14 = (2 * v8) | 1;
LABEL_15:
  v30 = v3;
  v31 = v2;
  sub_1C1266D70();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v14 >> 1, i))
  {
    goto LABEL_36;
  }

  if (v20 != (v14 >> 1) - i)
  {
    goto LABEL_37;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v3 = v30;
  if (i)
  {
    goto LABEL_22;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v15)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v33 = v6;
    v34 = i;
    if (v1 < v8)
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_1C1102F9C(v1, a1);
    if (!v3)
    {

      goto LABEL_29;
    }

    if (v8 < v1)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_unknownObjectRelease();
    v3 = v30;
    v2 = v31;
LABEL_12:
    sub_1C112F790(v12, v13, i, v14);
  }

  type metadata accessor for PhotosConcreteSelectableItem();

  v21 = v8;
  do
  {
    v22 = v21 + 1;
    sub_1C1266970();
    v21 = v22;
  }

  while (v1 != v22);
LABEL_29:

  if (v2)
  {
    v23 = sub_1C1266BC0();
    v24 = v26;
    v8 = v27;
    v25 = v28;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v1) | 1;
  }

  sub_1C1107094(v23, v24, v8, v25);
  swift_unknownObjectRelease();

  return v33;
}

uint64_t sub_1C1106F28(uint64_t *a1, int64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_1C0FF7688(a2);
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = MEMORY[0x1C68EBEE0](v10);
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  if (v14 > 4)
  {
    v16 = MEMORY[0x1C68EBEF0]();
    sub_1C1107D90(&v18, a2, (v16 + 16));
    *a1 = v18;
  }

  else
  {
    if (sub_1C0FF7688(a2) >= 2)
    {
      if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
      {
        v15 = sub_1C11093E0(a2, sub_1C1109D40);
      }

      else
      {
        v15 = sub_1C11075BC((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      }
    }

    else
    {
      v15 = sub_1C0FF7688(a2);
    }

    v16 = 0;
    *a1 = v15;
  }

  return v16;
}

uint64_t sub_1C1107034(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

void sub_1C1107094(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = a4 >> 1;
  v33 = a4 >> 1;
LABEL_2:
  while (a3 != v8)
  {
    if (a3 >= v8)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v9 = *(a2 + 8 * a3++);
    v11 = *v5;
    v10 = v5[1];
    v12 = (v10 + 32);
    v13 = *(v10 + 16);
    if (!*v5)
    {
      v17 = a2;
      v18 = v9;
      while (v13)
      {
        type metadata accessor for PhotosConcreteSelectableItem();
        v19 = *v12++;
        v20 = v19;
        v21 = sub_1C12666B0();

        --v13;
        if (v21)
        {

          a2 = v17;
          v8 = v33;
          goto LABEL_2;
        }
      }

      a2 = v17;
      v8 = v33;
      goto LABEL_13;
    }

    v14 = v9;

    sub_1C1107C74(v14, v12, v13, (v11 + 16));
    v16 = v15;

    if (v16)
    {
LABEL_13:
      v22 = v9;
      sub_1C1266A10();
      sub_1C1266A60();
      sub_1C1266A70();
      sub_1C1266A30();
      v23 = v5[1];
      v24 = *(v23 + 16);
      if (v11)
      {
        swift_beginAccess();
        if (MEMORY[0x1C68EBEB0](*(v11 + 16) & 0x3FLL) >= v24)
        {
          isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
          v31 = *v5;
          if ((isUniquelyReferenced_native & 1) == 0)
          {
            if (!v31)
            {
              goto LABEL_35;
            }

            v32 = sub_1C1262590();

            *v5 = v32;
            v31 = v32;
          }

          if (!v31)
          {
            goto LABEL_34;
          }

          sub_1C1262520();
          goto LABEL_32;
        }

        v25 = *(v11 + 24) & 0x3FLL;
        if (v24 <= 0xF && v25 == 0)
        {

          *v5 = 0;
        }

        else
        {
LABEL_23:
          v27 = MEMORY[0x1C68EBEE0](v24);
          if (v25 <= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v25;
          }

          v29 = sub_1C1107A2C(v23, v28, 0, v25);

          *v5 = v29;
        }
      }

      else
      {
        if (v24 > 0xF)
        {
          v25 = 0;
          goto LABEL_23;
        }

LABEL_32:
      }
    }

    else
    {
    }
  }
}

void sub_1C1107308(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C0FF7688(a1);
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1;
  v33 = v4;
  v34 = a1 + 32;
LABEL_2:
  while (v5 != v4)
  {
    if (v6)
    {
      v8 = MEMORY[0x1C68F02D0](v5, v32);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_38;
      }

      v8 = *(v34 + 8 * v5);
    }

    v9 = v8;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v12 = *v2;
    v11 = v2[1];
    v13 = (v11 + 32);
    v14 = *(v11 + 16);
    if (*v2)
    {

      sub_1C1107C74(v9, v13, v14, (v12 + 16));
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = v7;
      v18 = v6;
      while (v14)
      {
        type metadata accessor for PhotosConcreteSelectableItem();
        v19 = *v13++;
        v20 = v19;
        v21 = sub_1C12666B0();

        --v14;
        if (v21)
        {

          v6 = v18;
          v7 = v17;
          v4 = v33;
          goto LABEL_2;
        }
      }

      v6 = v18;
      v7 = v17;
      v4 = v33;
    }

    v9 = v9;
    sub_1C1266A10();
    sub_1C1266A60();
    sub_1C1266A70();
    sub_1C1266A30();
    v22 = v2[1];
    v23 = *(v22 + 16);
    if (v12)
    {
      swift_beginAccess();
      if (MEMORY[0x1C68EBEB0](*(v12 + 16) & 0x3FLL) >= v23)
      {
        isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
        v30 = *v2;
        if ((isUniquelyReferenced_native & 1) == 0)
        {
          if (!v30)
          {
            goto LABEL_40;
          }

          v31 = sub_1C1262590();

          *v2 = v31;
          v30 = v31;
        }

        if (!v30)
        {
          goto LABEL_39;
        }

        sub_1C1262520();
LABEL_34:
      }

      else
      {
        v24 = *(v12 + 24) & 0x3FLL;
        if (v23 > 0xF || v24 != 0)
        {
          goto LABEL_25;
        }

        *v2 = 0;
      }
    }

    else
    {
      if (v23 <= 0xF)
      {
        goto LABEL_34;
      }

      v24 = 0;
LABEL_25:
      v26 = MEMORY[0x1C68EBEE0](v23);
      if (v24 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v24;
      }

      v28 = sub_1C1107A2C(v22, v27, 0, v24);

      *v2 = v28;
    }
  }
}

uint64_t sub_1C11075BC(uint64_t a1, uint64_t a2)
{
  v7 = sub_1C0FBA048(MEMORY[0x1E69E7CC0]);
  result = sub_1C1266A50();
  v5 = 0;
  while (1)
  {
    if (a2 == v5)
    {
      goto LABEL_8;
    }

    if (a2 < 0)
    {
      break;
    }

    v6 = *(a1 + 8 * v5);
    if (sub_1C11076A4(v6, v7))
    {

      a2 = v5;
LABEL_8:

      return a2;
    }

    ++v5;
    sub_1C1266A10();
    sub_1C1266A60();
    sub_1C1266A70();
    result = sub_1C1266A30();
  }

  __break(1u);
  return result;
}

BOOL sub_1C11076A4(uint64_t a1, uint64_t a2)
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

    type metadata accessor for PhotosConcreteSelectableItem();
    v6 = *v3++;
    v7 = v6;
    v8 = sub_1C12666B0();
  }

  while ((v8 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1C1107720(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v9 = a1;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = &v9;
  sub_1C11078D4(sub_1C1109EAC, v8, v3);
  v6 = v5;
  if (v5)
  {
    sub_1C11077B4(a1);
  }

  return v6 & 1;
}

uint64_t sub_1C11077B4(void *a1)
{
  v2 = v1;
  v3 = a1;
  sub_1C1266A10();
  sub_1C1266A60();
  sub_1C1266A70();
  result = sub_1C1266A30();
  v5 = *v1;
  v6 = *(v1[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x1C68EBEB0](*(v5 + 16) & 0x3FLL) < v6)
    {
      v7 = *(v5 + 24) & 0x3FLL;
      if (v6 <= 0xF && v7 == 0)
      {

        *v2 = 0;
        return result;
      }

      goto LABEL_11;
    }

    result = sub_1C1107924();
    if (*v2)
    {
      return sub_1C110797C();
    }

    else
    {
      __break(1u);
    }
  }

  else if (v6 > 0xF)
  {
    v7 = 0;
LABEL_11:
    v9 = MEMORY[0x1C68EBEE0](v6);
    return sub_1C11079E4(v9, v7);
  }

  return result;
}

void *sub_1C11078D4(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1107924()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_1C1262590();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1C11079E4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_1C1107A2C(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t sub_1C1107A2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1C68EBEE0](v6);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x1C68EBEF0]();
    sub_1C1107AA4(a1, (v9 + 16));
  }

  return v9;
}

uint64_t sub_1C1107AE4(uint64_t result, uint64_t a2, void *a3)
{
  v8 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v8 + 8 * v5);
        result = sub_1C12666A0();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = sub_1C1262500();

        if (v7)
        {
          while (1)
          {
            sub_1C1262560();
          }
        }

        result = sub_1C1262550();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C1107BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    type metadata accessor for PhotosConcreteSelectableItem();
    v6 = *(a2 + 8 * i);
    v7 = sub_1C12666B0();

    if (v7)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C1107C74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_1C12666A0();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C1262530();
    v7 = v11;
    if ((v12 & 1) == 0)
    {
      do
      {
        type metadata accessor for PhotosConcreteSelectableItem();
        v8 = *(a2 + 8 * v7);
        v9 = sub_1C12666B0();

        if (v9)
        {
          break;
        }

        sub_1C1262560();
        v7 = sub_1C1262540();
      }

      while ((v10 & 1) == 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1C1107D90(void *a1, int64_t a2, void *a3)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v4 = sub_1C110944C(a2, sub_1C1109DA0);
  }

  else
  {
    v4 = sub_1C1107E34((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3);
  }

  *a1 = v5;
  return v4 & 1;
}

unint64_t sub_1C1107E10(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1107E34(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v4 = result;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v6 = *(v4 + 8 * v5);
    result = sub_1C12666A0();
    if (__OFSUB__(1 << *a3, 1))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v15 = v5 + 1;
    sub_1C1262500();

    while (1)
    {
      v7 = sub_1C1262540();
      if (v8)
      {
        break;
      }

      v9 = *(v4 + 8 * v7);
      v10 = *(v4 + 8 * v5);
      type metadata accessor for PhotosConcreteSelectableItem();
      v11 = v9;
      v12 = v10;
      v13 = sub_1C12666B0();

      if (v13)
      {
        return 0;
      }

      sub_1C1262560();
    }

    result = sub_1C1262550();
    ++v5;
    if (v15 != v14)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_1C1107FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = 0;
    v11 = 0;
    MEMORY[0x1EEE9AC00]((v3 + 63) >> 6);
    sub_1C12625C0();
    v4 = 0;
  }

  else
  {
    if (!(MEMORY[0x1E69E7CC0] >> 62) || (v6 = sub_1C1266BB0()) == 0 || (v7 = v6, v4 = sub_1C0FE5EE8(v6, 0), sub_1C116E150(v4 + 32, v7, MEMORY[0x1E69E7CC0]), v9 = v8, , v9 == v7))
    {

      return 0;
    }

    __break(1u);
  }

  __break(1u);

  result = sub_1C1109E48(v10, v11);
  __break(1u);
  return result;
}

unint64_t sub_1C1108184(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  sub_1C12625F0();
  v9 = sub_1C0FF7688(a4);
  v10 = 0;
  v30 = a4 & 0xC000000000000001;
  v24 = a4;
  v25 = a3;
  v28 = a4 + 32;
  v29 = a4 & 0xFFFFFFFFFFFFFF8;
  v11 = a3 + 32;
  v26 = v8;
  while (1)
  {
    if (v10 == v9)
    {
      v20 = *a1;
      v21 = a1[1];
      v22 = sub_1C0FD233C();

      return sub_1C11083DC(v20, v21, v26, 0, v22, a2, v25);
    }

    if (v30)
    {
      v12 = MEMORY[0x1C68F02D0](v10, v24);
    }

    else
    {
      if (v10 >= *(v29 + 16))
      {
        goto LABEL_21;
      }

      v12 = *(v28 + 8 * v10);
    }

    v4 = v12;
    if (__OFADD__(v10++, 1))
    {
      break;
    }

    if (a2)
    {

      v14 = sub_1C1107C74(v4, v11, v8, (a2 + 16));
      v16 = v15;

      if ((v16 & 1) == 0 && (v14 & 0x8000000000000000) == 0)
      {
LABEL_10:
        if (sub_1C12625D0())
        {
          if (v26 == 1)
          {
            goto LABEL_22;
          }

          --v26;
        }
      }
    }

    else
    {
      for (i = 0; v8 != i; ++i)
      {
        type metadata accessor for PhotosConcreteSelectableItem();
        v18 = *(v11 + 8 * i);
        v19 = sub_1C12666B0();

        if (v19)
        {
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1C0FBA048(MEMORY[0x1E69E7CC0]);

  return 0;
}

void *sub_1C1108380(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_1C1109E48(v6, v7);
  }

  return result;
}

unint64_t sub_1C11083DC(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a4 & 1) == 0)
  {
LABEL_7:
    if (a3)
    {
      if (a3 != *(a7 + 16))
      {
        v16 = a3 + a5;
        if (!__OFADD__(a3, a5))
        {
          v24 = sub_1C0FBA048(MEMORY[0x1E69E7CC0]);
          sub_1C110875C(v16, 0);
          v17 = 0;
LABEL_20:
          while (1)
          {
            for (i = v17; ; i = 0)
            {
              result = sub_1C12625E0();
              if (v18)
              {

                return i;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              if (result >= *(a7 + 16))
              {
                goto LABEL_48;
              }

              v19 = *(a7 + 32 + 8 * result);
              sub_1C1266A10();
              sub_1C1266A60();
              sub_1C1266A70();
              sub_1C1266A30();
              v20 = *(v24 + 16);
              if (i)
              {
                break;
              }

              if (v20 > 0xF)
              {
                v17 = 0;
LABEL_32:
                v21 = MEMORY[0x1C68EBEE0](v20);
                if (v17 <= v21)
                {
                  v22 = v21;
                }

                else
                {
                  v22 = v17;
                }

                v17 = sub_1C1107A2C(v24, v22, 0, v17);
LABEL_36:

                goto LABEL_20;
              }
            }

            swift_beginAccess();
            if (MEMORY[0x1C68EBEB0](*(i + 16) & 0x3FLL) < v20)
            {
              v17 = *(i + 24) & 0x3FLL;
              if (v20 > 0xF || v17)
              {
                goto LABEL_32;
              }

              goto LABEL_36;
            }

            result = swift_isUniquelyReferenced_native();
            if ((result & 1) == 0)
            {
              if (!v17)
              {
                goto LABEL_55;
              }

              v23 = sub_1C1262590();

              v17 = v23;
            }

            if (!v17)
            {
              goto LABEL_54;
            }

            result = sub_1C12666A0();
            if (__OFSUB__(1 << *(v17 + 16), 1))
            {
              goto LABEL_53;
            }

            if (sub_1C1262500())
            {
              while (1)
              {
                sub_1C1262560();
              }
            }

            sub_1C1262550();
          }
        }

        goto LABEL_50;
      }

      if (a6)
      {
        swift_beginAccess();
        result = MEMORY[0x1C68EBEB0](*(a6 + 16) & 0x3FLL);
      }

      else
      {
        result = 15;
      }

      if (__OFSUB__(result, a3))
      {
        goto LABEL_51;
      }

      if ((result - a3) >= a5)
      {
        return a6;
      }

      result = a3 + a5;
      if (__OFADD__(a3, a5))
      {
        goto LABEL_52;
      }

      sub_1C110875C(result, 0);
      return a6;
    }

LABEL_11:
    sub_1C0FBA048(MEMORY[0x1E69E7CC0]);
    sub_1C110875C(a5, 0);

    return 0;
  }

  if (!result || !a2)
  {
    goto LABEL_11;
  }

  a3 = 0;
  v11 = 8 * a2;
  v12 = result;
  while (1)
  {
    v13 = vcnt_s8(*v12);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = __OFADD__(a3, v13.u32[0]);
    a3 += v13.u32[0];
    if (v14)
    {
      break;
    }

    ++v12;
    v11 -= 8;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1C110875C(uint64_t result, char a2)
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v3 = v2;
  v5 = result;
  sub_1C1266A50();
  v6 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1C68EBEE0](v5);
  v9 = v8;
  if (a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v6 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  if (v7 < v9)
  {
    v11 = v9;
    return sub_1C11079E4(v11, v10);
  }

  if (v10 > v9)
  {
    v9 = v10;
  }

  v11 = MEMORY[0x1C68EBEE0](*(v3[1] + 16));
  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 < v7)
  {
    return sub_1C11079E4(v11, v10);
  }

  result = sub_1C1107924();
  v12 = *v3;
  if (!v12)
  {
    if (!v10)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v12 + 24) & 0x3FLL) != v10)
  {
    *(v12 + 24) = *(v12 + 24) & 0xFFFFFFFFFFFFFFC0 | v10 & 0x3F;
  }

  return result;
}

void sub_1C1108898(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_1C1108A3C(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x1C68EBEC0]())
  {
LABEL_12:
    sub_1C1108A3C(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*v5 + 16);
    if (v11 || v12 >= 0x10)
    {
      v13 = MEMORY[0x1C68EBEE0](v12);
      sub_1C11079E4(v13, v11);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_1C1107924();
  v9 = *v3;
  if (*v3)
  {

    sub_1C1108AC0(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_1C1108C98(a1, a1 + 1, v10, (v9 + 16));

      sub_1C1108A3C(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C1108A3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_1C116E8FC(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 40), 8 * v7);
    *(v3 + 16) = v6;
    sub_1C1266A30();
    return v9;
  }

  return result;
}

void sub_1C1108AC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = sub_1C1262500();
  sub_1C1262560();
  if (v19)
  {
    v7 = sub_1C1262510();
    v8 = a1;
    while (1)
    {
      v9 = sub_1C1262540();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = *(a4 + 8);
      if (v9 >= *(v11 + 16))
      {
        goto LABEL_24;
      }

      v12 = *(v11 + 8 * v9 + 32);
      v13 = sub_1C12666A0();

      v14 = 1 << *a2;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_25;
      }

      v15 = (v14 - 1) & v13;
      if (v8 >= v7)
      {
        if (v15 >= v7 && v8 >= v15)
        {
LABEL_18:
          sub_1C1262540();
          v8 = a1;
          sub_1C1262520();
        }
      }

      else if (v15 >= v7 || v8 >= v15)
      {
        goto LABEL_18;
      }

      sub_1C1262560();
    }
  }

  sub_1C1262520();
}

void sub_1C1108C98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v4 >= 1)
  {
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= a1)
    {
      v13 = a2;
      v14 = __OFSUB__(v8, a2);
      v15 = v8 - a2;
      if (v14)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v15 >= MEMORY[0x1C68EBEB0](*a4 & 0x3FLL) / 3)
      {
        sub_1C1262500();
        v27 = sub_1C1262540();
        if ((v28 & 1) == 0 && v27 >= v13)
        {
          if (__OFSUB__(v27, v4))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_1C1262550();
        }

        sub_1C1262560();
        return;
      }

      sub_1C1107034(v13, a3);
      v17 = v16;
      v19 = v18;
      v21 = v20 >> 1;
      while (v19 != v21)
      {
        if (v19 >= v21)
        {
          goto LABEL_51;
        }

        v22 = *(v17 + 8 * v19);
        sub_1C12666A0();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_1C1262500())
        {
          while (1)
          {
            v23 = sub_1C1262540();
            if ((v24 & 1) == 0 && v23 == v13)
            {
              break;
            }

            sub_1C1262560();
          }
        }

        if (__OFSUB__(v13, v4))
        {
          goto LABEL_53;
        }

        sub_1C1262550();

        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_54;
        }

        ++v19;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (MEMORY[0x1C68EBEB0](*a4 & 0x3FLL) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          v10 = *(a3 + 32 + 8 * i);
          sub_1C12666A0();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_1C1262500())
          {
            while (1)
            {
              v11 = sub_1C1262540();
              if ((v12 & 1) == 0 && v11 == i)
              {
                break;
              }

              sub_1C1262560();
            }
          }

          if (__OFADD__(i, v4))
          {
            goto LABEL_50;
          }

          sub_1C1262550();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_1C1262500();
      v25 = sub_1C1262540();
      if ((v26 & 1) == 0 && v25 < a1)
      {
        if (__OFADD__(v25, v4))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_1C1262550();
      }

      sub_1C1262560();
LABEL_40:
      v29 = a4[1];
      if (__OFSUB__(v29 >> 6, v4))
      {
        goto LABEL_59;
      }

      v30 = 1 << *a4;
      v14 = __OFSUB__(v30, 1);
      v31 = v30 - 1;
      if (v14)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v32 = (v31 & (((v29 >> 6) - v4) >> 63)) + (v29 >> 6) - v4;
      if (v32 < v31)
      {
        v31 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v32 - v31) << 6);
    }
  }
}

void *sub_1C11090C0(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE940A0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = sub_1C0FDB6D4(&qword_1EBE940A8, &qword_1EBE940A0);
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v7;
  v2[5] = v5;
  return v2;
}

unint64_t sub_1C1109178()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2 == *(v1 + 16))
  {
    return 0;
  }

  result = sub_1C1107E10(*(v0 + 32), v1);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v2 + 1;
  }

  return result;
}

uint64_t sub_1C11091C4()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C110920C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      type metadata accessor for PhotosConcreteSelectableItem();
      do
      {
        v3 += 8;
        v4 += 8;
        v5 = sub_1C12666B0();
        if ((v5 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C110929C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_8_28(a1, a2, a3);
  sub_1C0FF768C(v7);
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_8_27();
    v8 = MEMORY[0x1C68F02D0](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1109308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_8_28(a1, a2, a3);
  sub_1C0FF768C(v5);
  if (v4)
  {
    v6 = swift_unknownObjectRetain();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_8_27();
    v6 = MEMORY[0x1C68F02D0](v8);
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1109374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_8_28(a1, a2, a3);
  sub_1C0FF768C(v5);
  if (v4)
  {
  }

  else
  {
    v8 = OUTLINED_FUNCTION_8_27();
    v6 = MEMORY[0x1C68F02D0](v8);
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_17_3();
}

void *sub_1C11093E0(int64_t a1, void *(*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_1C11094C8(a1);
  v5 = v4[2];

  result = a2(&v7, v4 + 4, v5);
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1C110944C(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_1C11094C8(a1);
  v5 = v4[2];

  a2(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void *sub_1C11094C8(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1C112F86C(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1C11095C4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1C1109640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  if (a3)
  {

    v10 = sub_1C1107C74(v8, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_1C1107BE8(*a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

unint64_t sub_1C11097F0()
{
  result = qword_1EDE82768;
  if (!qword_1EDE82768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82768);
  }

  return result;
}

unint64_t sub_1C1109844()
{
  result = qword_1EDE811A0[0];
  if (!qword_1EDE811A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE811A0);
  }

  return result;
}

unint64_t sub_1C1109898()
{
  result = qword_1EDE80DB8[0];
  if (!qword_1EDE80DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE80DB8);
  }

  return result;
}

unint64_t sub_1C11098EC()
{
  result = qword_1EDE7F708;
  if (!qword_1EDE7F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F708);
  }

  return result;
}

uint64_t sub_1C1109948()
{
  result = sub_1C1261F70();
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

uint64_t sub_1C1109AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1109B5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1109BE4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    result = sub_1C1266E80();
    v13 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v14 = result & v13;
      if (((*(a2 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
      {
        return 0;
      }

      result = v14 + 1;
      if (*(*(a2 + 48) + 8 * v14) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1109D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C11075BC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C1109D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1C1107E34(a1, a2, a3);
  if (!v4)
  {
    *a4 = result & 1;
    *(a4 + 8) = v7;
  }

  return result;
}

unint64_t sub_1C1109DD8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X8>)
{
  result = sub_1C1108184(a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t sub_1C1109E48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1C1261F30();
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_1C1261F40();
}

uint64_t OUTLINED_FUNCTION_32_7()
{
  *(v1 - 160) = v0;

  return swift_getKeyPath();
}

id OUTLINED_FUNCTION_34_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.receiver = v11;
  a10.super_class = v10;

  return objc_msgSendSuper2(&a10, (v12 + 2936));
}

uint64_t OUTLINED_FUNCTION_36_5()
{
  *(v1 - 120) = v0;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return sub_1C1263800();
}

uint64_t DeterminateCircularProgressStyleView.init(strokeColor:lineWidth:minimumFractionDisplayed:isPaused:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  return result;
}

void *DeterminateCircularProgressStyleView.makeBody(configuration:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = COERCE_DOUBLE(sub_1C1264350());
  v7 = v4;
  if ((v8 & 1) == 0)
  {
    v7 = v4;
    if (v4 < v6)
    {
      v7 = v6;
    }
  }

  v9 = sub_1C12659A0();
  v11 = v10;
  sub_1C110A198(v3, v5, __src, v7);
  memcpy(__dst, __src, 0xC1uLL);
  memcpy(v20, __src, 0xC1uLL);
  sub_1C10D1A1C(__dst, &v18, &qword_1EBE940B0);
  sub_1C0FD1A5C(v20, &qword_1EBE940B0);
  memcpy(__src, __dst, 0xC1uLL);
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE940B8) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE940C0) + 28);
  v15 = *MEMORY[0x1E697E7D0];
  sub_1C1263150();
  OUTLINED_FUNCTION_3();
  (*(v16 + 104))(v13 + v14, v15);
  *v13 = KeyPath;
  *a1 = v9;
  a1[1] = v11;
  return memcpy(a1 + 2, __src, 0xC1uLL);
}

uint64_t sub_1C110A198@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>, double a4@<D2>)
{
  sub_1C1262B10();
  v7 = v57;
  v8 = HIDWORD(v57);
  v26 = DWORD2(v57);
  v9 = v58;
  v10 = v59;
  v25 = sub_1C1265150();
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v12 = [objc_opt_self() systemGray5Color];
    a1 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  }

  else
  {
  }

  sub_1C1262B10();
  v13 = sub_1C12659A0();
  v15 = v14;
  sub_1C1265B90();
  v17 = v16;
  v19 = v18;
  v20 = sub_1C1265A10();
  v21 = sub_1C1265A10();
  v38[0] = v57;
  v22 = a2 & 1;
  v38[1] = v58;
  *&v39 = v59;
  *(&v39 + 1) = KeyPath;
  v40 = v25;
  *&__src[0] = 0;
  *&v34[48] = v25;
  *v34 = v57;
  *&v34[16] = v58;
  *&v34[32] = v39;
  *(__src + 1) = a4;
  __src[1] = v35;
  __src[2] = v36;
  *&__src[3] = v37;
  *(&__src[3] + 1) = a1;
  LOWORD(__src[4]) = 256;
  *(&__src[4] + 1) = v13;
  *&__src[5] = v15;
  *(&__src[5] + 1) = 0x4012D97C7F3321D2;
  *&__src[6] = v17;
  *(&__src[6] + 1) = v19;
  *&__src[7] = v20;
  *(&__src[7] + 1) = a4;
  *&__src[8] = v21;
  BYTE8(__src[8]) = v22;
  memcpy(&v34[56], __src, 0x89uLL);
  memcpy(a3, v34, 0xC1uLL);
  v42[0] = 0;
  *&v42[1] = a4;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v46 = a1;
  v47 = 256;
  v48 = v13;
  v49 = v15;
  v50 = 0x4012D97C7F3321D2;
  v51 = v17;
  v52 = v19;
  v53 = v20;
  v54 = a4;
  v55 = v21;
  v56 = v22;
  sub_1C10D1A1C(v38, &v27, &qword_1EBE940E8);
  sub_1C10D1A1C(__src, &v27, &qword_1EBE940F0);
  sub_1C0FD1A5C(v42, &qword_1EBE940F0);
  v27 = v7;
  v28 = v26;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = KeyPath;
  v33 = v25;
  return sub_1C0FD1A5C(&v27, &qword_1EBE940E8);
}

uint64_t static ProgressViewStyle<>.determinateCircularProgressStyleView(strokeColor:lineWidth:minimumFractionDisplayed:isPaused:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
}

unint64_t sub_1C110A4B4()
{
  result = qword_1EBE940C8;
  if (!qword_1EBE940C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940B8);
    sub_1C0FDB6D4(&qword_1EBE940D0, &qword_1EBE940D8);
    sub_1C0FDB6D4(&qword_1EBE940E0, &qword_1EBE940C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE940C8);
  }

  return result;
}

__n128 PhotosOverlayPreviewControl.init(bottomInset:fractionFloating:viewportSize:safeAreaInsets:onTap:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690);
  sub_1C1265410();
  *(a9 + 144) = v27;
  *(a9 + 152) = v28;
  *(a9 + 160) = v29;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a11;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  v23 = *(a12 + 16);
  *(a9 + 80) = *a12;
  *(a9 + 96) = v23;
  result = *(a12 + 32);
  *(a9 + 112) = result;
  *(a9 + 128) = a13;
  *(a9 + 136) = a14;
  return result;
}

uint64_t PhotosOverlayPreviewControl.body.getter@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v30 = sub_1C1265170();
  sub_1C0FDB76C();
  v3 = sub_1C1265270();
  v4 = sub_1C12659A0();
  v6 = v5;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE940F8) + 36);
  sub_1C110A85C(__dst, v7);
  v8 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94100) + 36));
  *v8 = v4;
  v8[1] = v6;
  *a1 = v3;
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_0_46(v9, v10, v11, v12, v13, v14, v15, v16, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, __dst[0]);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94108) + 36));
  *v17 = sub_1C0FA84D0;
  v17[1] = 0;
  v17[2] = sub_1C110B404;
  v17[3] = v3;
  sub_1C110B40C(__dst, &v30);
  v18 = sub_1C12631E0();
  LOBYTE(v4) = sub_1C1264470();
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94110) + 36);
  *v19 = v18;
  v19[8] = v4;
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_0_46(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, __dst[0]);
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94118) + 36));
  *v28 = sub_1C110B444;
  v28[1] = 0;
  v28[2] = sub_1C110B504;
  v28[3] = v18;
  return sub_1C110B40C(__dst, &v30);
}

uint64_t sub_1C110A85C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1C1263CE0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C1262A60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94160);
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = &v21 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94168);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v21 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94170);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v21 - v13;
  *v14 = sub_1C12638E0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94178);
  sub_1C110ADA8(a1, &v14[*(v15 + 44)]);
  sub_1C1263F10();
  sub_1C1262A30();
  v16 = swift_allocObject();
  memcpy((v16 + 16), a1, 0xA8uLL);
  sub_1C110B40C(a1, v27);
  sub_1C110BB80(&qword_1EDE77670, MEMORY[0x1E697BEA8]);
  sub_1C110BB80(&qword_1EDE77678, MEMORY[0x1E697BE90]);
  sub_1C12656C0();

  (*(v5 + 8))(v7, v4);
  v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0xA8uLL);
  sub_1C110B40C(a1, v27);
  sub_1C0FDB6D4(&qword_1EDE76FD0, &qword_1EBE94160);
  v18 = v23;
  sub_1C12656B0();

  (*(v8 + 8))(v10, v18);
  sub_1C1262A90();
  sub_1C0FDB6D4(&qword_1EBE94180, &qword_1EBE94170);
  sub_1C0FDB6D4(&qword_1EDE774F8, &qword_1EBE94168);
  v19 = v24;
  sub_1C1264F30();
  (*(v25 + 8))(v12, v19);
  return sub_1C0F9E21C(v14, &qword_1EBE94170);
}

uint64_t sub_1C110ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94190);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94198);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v40 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941A0);
  MEMORY[0x1EEE9AC00](v48);
  v19 = (&v40 - v18);
  v20 = *(a1 + 128);
  if (v20)
  {
    v47 = v15;
    v21 = *(a1 + 136);
    v22 = objc_opt_self();
    v44 = v4;
    v23 = v22;

    v24 = [v23 blueColor];
    v25 = [v24 colorWithAlphaComponent_];
    v42 = v6;

    v49 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
    v26 = swift_allocObject();
    v43 = a2;
    *(v26 + 16) = v20;
    *(v26 + 24) = v21;

    v40 = v20;
    v41 = v19;
    v27 = v46;
    sub_1C1264AF0();

    v28 = [v23 blueColor];
    v29 = [v28 colorWithAlphaComponent_];

    v49 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
    v30 = swift_allocObject();
    *(v30 + 16) = v20;
    *(v30 + 24) = v21;

    v31 = v47;
    sub_1C1264AF0();

    v32 = *(v8 + 16);
    v32(v12, v27, v7);
    v33 = v45;
    v32(v45, v31, v7);
    v34 = v42;
    v32(v42, v12, v7);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941B0);
    v32((v34 + *(v35 + 48)), v33, v7);
    v36 = *(v8 + 8);
    v36(v33, v7);
    v36(v12, v7);
    sub_1C0FBA368(v34, v41);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE941A8, &qword_1EBE94190);
    sub_1C1263C20();
    sub_1C0FCF004(v40);
    sub_1C0F9E21C(v34, &qword_1EBE94190);
    v36(v47, v7);
    return (v36)(v27, v7);
  }

  else
  {
    v38 = [objc_opt_self() blueColor];
    v39 = [v38 colorWithAlphaComponent_];

    *v19 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE941A8, &qword_1EBE94190);
    return sub_1C1263C20();
  }
}

uint64_t sub_1C110B374(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94158);
    sub_1C12655F0();
  }

  return result;
}

uint64_t sub_1C110B444@<X0>(void *a1@<X8>)
{
  result = sub_1C1262D20();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1C110B474(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94150);
    sub_1C12655F0();
  }

  return result;
}

uint64_t sub_1C110B528(uint64_t a1, uint64_t a2)
{
  v19 = *(a2 + 144);
  v20 = *(a2 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0);
  sub_1C1265420();
  if (LOBYTE(v18) == 1)
  {
    v19 = *a2;
    v20 = *(a2 + 16);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94188);
    MEMORY[0x1C68EEF20](&v17, v3);
    v19 = *(a2 + 144);
    v20 = *(a2 + 160);
    LOBYTE(v18) = 0;
    sub_1C1265430();
  }

  v19 = *(a2 + 144);
  v20 = *(a2 + 160);
  result = sub_1C1265420();
  if (LOBYTE(v18))
  {
    __break(1u);
  }

  else
  {
    v5 = v17;
    sub_1C1262A40();
    v19 = *a2;
    v20 = *(a2 + 16);
    v17 = v5 - v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94188);
    result = sub_1C12655F0();
    v8 = *(a2 + 56);
    if (v8)
    {
      v10 = *(a2 + 64);
      v9 = *(a2 + 72);
      v11 = *(a2 + 48);
      v19 = *a2;
      v20 = *(a2 + 16);

      MEMORY[0x1C68EEF20](&v17, v7);
      v12 = v17;
      *&v19 = v11;
      *(&v19 + 1) = v8;
      v20 = v10;
      v21 = v9;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94158);
      MEMORY[0x1C68EEF20](&v17, v13);
      v17 = v12 / v18;
      v19 = xmmword_1C12A2E30;
      sub_1C0FDAF38();
      sub_1C1265D80();
      v14 = *(a2 + 32);
      v15 = *(a2 + 40);
      v17 = *(a2 + 24);
      *&v19 = v17;
      *(&v19 + 1) = v14;
      v20 = v15;
      v16[1] = v22;
      sub_1C110BC68(&v17, v16);

      sub_1C12655F0();

      sub_1C110BCC4(&v17);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI14HorizontalEdgeOIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C110B80C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1C110B84C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C110B8C4()
{
  result = qword_1EBE94120;
  if (!qword_1EBE94120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94118);
    sub_1C110B97C();
    sub_1C0FDB6D4(&qword_1EDE76DB8, &qword_1EBE94148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94120);
  }

  return result;
}

unint64_t sub_1C110B97C()
{
  result = qword_1EBE94128;
  if (!qword_1EBE94128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94110);
    sub_1C110BA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94128);
  }

  return result;
}

unint64_t sub_1C110BA08()
{
  result = qword_1EBE94130;
  if (!qword_1EBE94130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94108);
    sub_1C110BAC0();
    sub_1C0FDB6D4(&qword_1EDE7BA88, &qword_1EBE93AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94130);
  }

  return result;
}

unint64_t sub_1C110BAC0()
{
  result = qword_1EBE94138;
  if (!qword_1EBE94138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940F8);
    sub_1C0FDB6D4(&qword_1EBE94140, &qword_1EBE94100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94138);
  }

  return result;
}

uint64_t sub_1C110BB80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_8()
{

  if (v0[9])
  {
  }

  if (v0[13])
  {
  }

  if (v0[18])
  {
  }

  return swift_deallocObject();
}

uint64_t PhotosObservableSearchResult.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableSearchResult.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableSearchResult.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_2_15();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 104));
  return v1;
}

uint64_t sub_1C110BE38(uint64_t a1)
{
  OUTLINED_FUNCTION_2_15();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_2();
  sub_1C110BF9C();
  v8 = *(v6 + 8);
  v8(v1, v4);
  swift_getKeyPath();
  sub_1C110D12C();

  return (v8)(a1, v4);
}

uint64_t sub_1C110BF9C()
{
  OUTLINED_FUNCTION_6_24();
  v3 = *(v2 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v4 + 80) - 8) + 16))(v0, v1 + v3);
}

uint64_t sub_1C110C02C(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  (*(*(*(v5 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1C110C0CC())()
{
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C110C158(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C110BE38(v3);
}

uint64_t sub_1C110C218()
{
  OUTLINED_FUNCTION_2_15();
  swift_getKeyPath();
  sub_1C110D090();

  return sub_1C110BF9C();
}

uint64_t sub_1C110C2B0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C110C02C(v3);
}

void (*sub_1C110C37C(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_2_15();
  swift_getKeyPath();
  sub_1C110D090();

  OUTLINED_FUNCTION_10_2();
  *v3 = v1;
  swift_getKeyPath();
  type metadata accessor for PhotosObservableSearchResult();
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[5] = sub_1C110C0CC();
  return sub_1C110C4D8;
}

void sub_1C110C4D8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  sub_1C110C52C();

  free(v1);
}

uint64_t sub_1C110C52C()
{
  swift_getKeyPath();
  type metadata accessor for PhotosObservableSearchResult();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C110C628()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_7_2();
  sub_1C110C218();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14_16();
  sub_1C12622A0();
  v1 = OUTLINED_FUNCTION_16_17();
  return v2(v1);
}

uint64_t sub_1C110C6E8()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110C7B0()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110C878()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return v3;
}

uint64_t sub_1C110C950()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_7_2();
  sub_1C110C218();
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_14_16();
  v2(v1);
  v3 = OUTLINED_FUNCTION_16_17();
  return v4(v3);
}

uint64_t sub_1C110CA20()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_7_2();
  sub_1C110C218();
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_14_16();
  v2(v1);
  v3 = OUTLINED_FUNCTION_16_17();
  return v4(v3);
}

uint64_t sub_1C110CAF0()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return v3;
}

uint64_t sub_1C110CBC0()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return v3 & 1;
}

uint64_t sub_1C110CC90()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return v3 & 1;
}

uint64_t sub_1C110CD64()
{
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_7_2();
  sub_1C110C218();
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_14_16();
  v2(v1);
  v3 = OUTLINED_FUNCTION_16_17();
  return v4(v3);
}

uint64_t sub_1C110CE34()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110CEFC()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110CFC4()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_10_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_2_39();
  v4(v3);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C110D090()
{
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C110D12C()
{
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableSearchResult.deinit()
{
  OUTLINED_FUNCTION_2_15();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 104));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 112);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableSearchResult.__deallocating_deinit()
{
  PhotosObservableSearchResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C110D350(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C110C37C(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C110D3AC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C110D57C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C110D620(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C110D65C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpImportToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C110DAE0()
{
  result = qword_1EBE941B8;
  if (!qword_1EBE941B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE941B8);
  }

  return result;
}

double PhotosPersonHomeCellAspectRatio.rawValue.getter()
{
  result = 1.0;
  if (*v0)
  {
    return 0.75;
  }

  return result;
}

void PhotosPersonHomeCellAspectRatio.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 1.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 0.0)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t PhotosPersonHomeCell.init(_:aspectRatio:showHearts:canToggleFavorite:showShadows:removeAction:supplementaryGlyphName:isElectedForMagicSlot:placeholderGlyphName:isPlaceholderContent:content:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = a1;
  v26 = a16;
  v27 = a14;
  v28 = a12;
  v29 = *a2;
  if (a3)
  {
    v31 = v29;
    v33 = a5;
    result = (*(*(a20 + 16) + 32))(a17);
    v29 = v31;
    v26 = a16;
    v24 = a1;
    v27 = a14;
    a5 = v33;
    v28 = a12;
  }

  else
  {
    result = 0;
  }

  *a9 = v24;
  *(a9 + 8) = v29;
  *(a9 + 9) = result & 1;
  *(a9 + 10) = a4 & 1;
  *(a9 + 11) = a5 & 1;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = v28;
  *(a9 + 40) = a13;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11 & 1;
  *(a9 + 65) = v27 & 1;
  *(a9 + 72) = a15;
  *(a9 + 80) = v26;
  return result;
}

uint64_t PhotosPersonHomeCell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = a1[2];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v59 = a1[3];
  v60 = v3;
  v74 = v3;
  v75 = v59;
  v58 = v4;
  v76[0] = v4;
  v76[1] = v5;
  v57 = v5;
  v56 = v6;
  v76[2] = v6;
  v76[3] = v7;
  v55 = v7;
  v8 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell();
  OUTLINED_FUNCTION_0();
  v61 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  *(&v44 + 1) = &v44 - v13;
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v49 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v44 - v19;
  sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v63 = v21;
  v64 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v44 - v22;
  v23 = *(v2 + 8);
  HIDWORD(v53) = *(v2 + 9);
  LODWORD(v53) = *(v2 + 10);
  HIDWORD(v52) = *(v2 + 11);
  v24 = *(v2 + 16);
  v54 = *(v2 + 32);
  v51 = *(v2 + 48);
  LODWORD(v52) = *(v2 + 64);
  v50 = *(v2 + 72);
  swift_unknownObjectRetain();

  sub_1C0FCF1B4(v24);
  OUTLINED_FUNCTION_2_40();
  if (v23 == 2)
  {
    OUTLINED_FUNCTION_5_25(v77, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    OUTLINED_FUNCTION_1_36();
    WitnessTable = swift_getWitnessTable();
    v26 = v47;
    v27 = OUTLINED_FUNCTION_11_20();
    sub_1C0FDBA4C(v27, v28, WitnessTable);
    v29 = *(v61 + 8);
    v30 = OUTLINED_FUNCTION_11_20();
    v29(v30);
    sub_1C0FDBA4C(v26, v8, WitnessTable);
    v72 = WitnessTable;
    v31 = MEMORY[0x1E697F568];
    v73 = MEMORY[0x1E697F568];
    OUTLINED_FUNCTION_4_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_23();
    sub_1C1112E18();
    v32 = OUTLINED_FUNCTION_11_20();
    v29(v32);
    (v29)(v26, v8);
  }

  else
  {
    OUTLINED_FUNCTION_5_25(v76, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    v33 = swift_getWitnessTable();
    v24 = v44;
    sub_1C12649E0();
    v34 = OUTLINED_FUNCTION_11_20();
    v35(v34);
    v66 = v33;
    v31 = MEMORY[0x1E697F568];
    v67 = MEMORY[0x1E697F568];
    OUTLINED_FUNCTION_4_0();
    v36 = swift_getWitnessTable();
    v37 = v45;
    sub_1C0FDBA4C(v24, v14, v36);
    v38 = *(v49 + 8);
    v38(v24, v14);
    v39 = v46;
    sub_1C0FDBA4C(v37, v14, v36);
    OUTLINED_FUNCTION_9_23();
    sub_1C1112D68();
    v38(v39, v14);
    v38(v37, v14);
  }

  OUTLINED_FUNCTION_1_36();
  v40 = swift_getWitnessTable();
  v70 = v40;
  v71 = v31;
  OUTLINED_FUNCTION_4_0();
  v68 = swift_getWitnessTable();
  v69 = v40;
  OUTLINED_FUNCTION_19_0();
  v41 = v64;
  v42 = swift_getWitnessTable();
  sub_1C0FDBA4C(v24, v41, v42);
  return (*(v63 + 8))(v24, v41);
}

uint64_t sub_1C110E270@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __src[0] = a15;
  __src[1] = a16;
  __src[2] = a17;
  __src[3] = a18;
  __src[4] = a19;
  __src[5] = a20;
  v22 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell();
  v23 = a9 + v22[26];
  *v23 = sub_1C1012790() & 1;
  *(v23 + 8) = v24;
  v25 = v22[27];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941E0);
  swift_storeEnumTagMultiPayload();
  v26 = v22[28];
  *(a9 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  swift_storeEnumTagMultiPayload();
  v27 = v22[29];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + v27), __src, 0xD1uLL);
  v28 = a9 + v22[30];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 10) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + v22[24]) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 56) = a11;
  swift_unknownObjectRetain();
  v29 = sub_1C0FCF1B4(a5);
  a12(v29);
  sub_1C0FCF004(a5);
  result = swift_unknownObjectRelease();
  *(a9 + v22[25]) = a14;
  return result;
}

unint64_t sub_1C110E4AC()
{
  result = qword_1EBE941C8;
  if (!qword_1EBE941C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE941C8);
  }

  return result;
}

BOOL sub_1C110E518(uint64_t a1)
{
  (*(*(*(a1 + 40) + 16) + 24))(*(a1 + 16));
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

BOOL sub_1C110E580(uint64_t a1)
{
  v1 = (*(*(*(a1 + 40) + 16) + 24))(*(a1 + 16));
  if (v2)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3;
  }

  return v5 == 0;
}

BOOL sub_1C110E600(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  return v3 && sub_1C110E580(a1);
}

uint64_t sub_1C110E624(uint64_t a1)
{
  result = (*(*(*(a1 + 40) + 16) + 24))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

double sub_1C110E684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 116);
  memcpy(v33, (v2 + v9), 0xD1uLL);
  memcpy(v34, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v34) == 1)
  {
    nullsub_1(v34);
    memcpy(v30, v33, 0xD1uLL);
    v10 = nullsub_1(v30);
    memcpy(v32, v10, sizeof(v32));
    memcpy(v31, v33, sizeof(v31));
    v11 = nullsub_1(v31);
    sub_1C100D690(v11, &v29);
  }

  else
  {
    nullsub_1(v34);
    memcpy(v30, v33, 0xD1uLL);
    nullsub_1(v30);
    memcpy(v31, v33, sizeof(v31));
    nullsub_1(v31);

    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v33, &qword_1EBE91C80);
    (*(v6 + 8))(v8, v5);
  }

  memcpy(&v31[8], &v32[8], 0xC8uLL);
  *v31 = 0x402E000000000000;
  if (*(v2 + 10) == 1)
  {
    v13 = *&v31[176];
    v14 = *&v31[184];
    v15 = *&v31[200];
    v16 = *&v31[128];
    v17 = *&v31[144];
    v18 = *&v31[8];
    v19 = *&v31[16];
    v20 = *&v31[32];
  }

  else
  {
    v26 = *&v31[144];
    v27 = *&v31[128];
    v13 = *&v31[176];
    v28 = *&v31[184];
    v15 = *&v31[200];
    sub_1C100D690(v31, v30);
    if (qword_1EDE82B78 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDE82B80;
    v25 = *&qword_1EDE82B88;
    v20 = qword_1EDE82B98;

    sub_1C100C7D0(v31);
    v19 = v25;
    v17 = v26;
    v16 = v27;
    v14 = v28;
  }

  result = *&v31[168];
  v22 = v31[161];
  v23 = v31[160];
  v24 = *&v31[120];
  *a2 = 0x402E000000000000;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = *&v31[40];
  *(a2 + 56) = *&v31[56];
  *(a2 + 72) = *&v31[72];
  *(a2 + 88) = *&v31[88];
  *(a2 + 104) = *&v31[104];
  *(a2 + 120) = v24;
  *(a2 + 128) = v16;
  *(a2 + 144) = v17;
  *(a2 + 160) = v23;
  *(a2 + 161) = v22;
  *(a2 + 168) = result;
  *(a2 + 176) = v13;
  *(a2 + 184) = v14;
  *(a2 + 200) = v15;
  return result;
}

uint64_t sub_1C110E9F0(uint64_t a1)
{
  v2 = sub_1C1263A80();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1263530();
}

uint64_t sub_1C110EAB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v78 = *(a1 - 1);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v77 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D0);
  v81 = a1;
  v5 = a1[2];
  v6 = a1[5];
  v84 = a1[4];
  v85 = v6;
  v76 = v5;
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1263190();
  type metadata accessor for PhotosFavoriteBadge();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v73 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263190();
  sub_1C1263190();
  v75 = MEMORY[0x1E6981880];
  v102[13] = swift_getWitnessTable();
  v102[14] = MEMORY[0x1E697E5D8];
  v7 = MEMORY[0x1E697E858];
  v102[11] = swift_getWitnessTable();
  v102[12] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C12633A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v102[9] = WitnessTable;
  v102[10] = v9;
  v10 = swift_getWitnessTable();
  v11 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v102[7] = v10;
  v102[8] = v11;
  v74 = v7;
  v12 = swift_getWitnessTable();
  v13 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v102[5] = v12;
  v102[6] = v13;
  swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D8);
  swift_getTupleTypeMetadata2();
  v63 = sub_1C1265B00();
  v62 = swift_getWitnessTable();
  v14 = sub_1C12655C0();
  v65 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30);
  v17 = sub_1C1263190();
  v66 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v59 = sub_1C1263190();
  v68 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v58 - v20;
  v69 = sub_1C1263190();
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v58 - v21;
  v70 = sub_1C1263190();
  v73 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v58 - v24;
  v25 = v81;
  v26 = v83;
  sub_1C110E684(v81, v103);
  sub_1C1265980();
  v27 = v76;
  v86 = v76;
  v87 = v82;
  v88 = v84;
  v89 = v85;
  v28 = *(v25 + 48);
  v60 = *(v25 + 56);
  v90 = v28;
  v91 = v60;
  v29 = v28;
  v58 = v28;
  v92 = v26;
  v93 = v103;
  sub_1C12655B0();
  LOBYTE(v102[0]) = 1;
  v30 = swift_getWitnessTable();
  sub_1C1061D74();
  sub_1C12649C0();
  (*(v65 + 8))(v16, v14);
  v31 = *v26;
  v102[3] = v27;
  v102[4] = v29;
  v102[0] = v31;
  v32 = sub_1C0FDB6D4(&qword_1EDE7B9E0, &unk_1EBE91C30);
  v100 = v30;
  v101 = v32;
  swift_unknownObjectRetain();
  v33 = swift_getWitnessTable();
  v34 = v61;
  View.selectionStyle(for:)(v102, v17, v33);
  (*(v66 + 8))(v19, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v102);
  v35 = sub_1C100D614();
  v98 = v33;
  v99 = v35;
  v36 = v59;
  v37 = swift_getWitnessTable();
  v38 = v64;
  View.dropTargetStyle()(v36, v37);
  (*(v68 + 8))(v34, v36);
  v40 = v77;
  v39 = v78;
  v41 = v81;
  (*(v78 + 16))(v77, v83, v81);
  v42 = v39;
  v43 = (*(v39 + 80) + 64) & ~*(v39 + 80);
  v44 = swift_allocObject();
  v45 = v82;
  *(v44 + 2) = v27;
  *(v44 + 3) = v45;
  v46 = v85;
  *(v44 + 4) = v84;
  *(v44 + 5) = v46;
  v47 = v60;
  *(v44 + 6) = v58;
  *(v44 + 7) = v47;
  (*(v42 + 32))(&v44[v43], v40, v41);
  v48 = sub_1C10A04F0();
  v96 = v37;
  v97 = v48;
  v49 = v69;
  v50 = swift_getWitnessTable();
  v51 = v67;
  sub_1C1264F40();
  sub_1C100C7D0(v103);

  (*(v72 + 8))(v38, v49);
  v52 = sub_1C10136B0();
  v94 = v50;
  v95 = v52;
  v53 = v70;
  v54 = swift_getWitnessTable();
  v55 = v71;
  sub_1C0FDBA4C(v51, v53, v54);
  v56 = *(v73 + 8);
  v56(v51, v53);
  sub_1C0FDBA4C(v55, v53, v54);
  return (v56)(v55, v53);
}

uint64_t sub_1C110F550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v64 = a7;
  *&v65 = a8;
  v62 = a5;
  v63 = a6;
  v57 = a4;
  v69 = a1;
  v66 = a9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE941D0);
  v61 = a3;
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1263190();
  type metadata accessor for PhotosFavoriteBadge();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263190();
  sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v95 = MEMORY[0x1E697E5D8];
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C12633A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  v55[2] = swift_getWitnessTable();
  v11 = sub_1C12655C0();
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v55 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v14 = sub_1C1263190();
  v59 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = v55 - v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v56 = v16;
  v90 = v16;
  v91 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v88 = v18;
  v89 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v86 = v20;
  v87 = v21;
  v55[1] = swift_getWitnessTable();
  v22 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v67 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v68 = v55 - v26;
  v70 = v61;
  v71 = v57;
  v72 = v62;
  v73 = v63;
  v74 = v64;
  v75 = v65;
  v76 = v69;
  v77 = a2;
  sub_1C1009330();
  sub_1C12655B0();
  memcpy(v85, (a2 + 40), sizeof(v85));
  sub_1C100D690(a2, v98);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDE82B08;
  v28 = qword_1EDE82B10;
  v65 = xmmword_1EDE82B18;
  v29 = qword_1EDE82B28;

  *&v84[0] = v27;
  *(&v84[0] + 1) = v28;
  v84[1] = v65;
  *&v84[2] = v29;
  memcpy(&v84[2] + 8, v85, 0xA8uLL);
  v30 = v58;
  View.cellStyle(for:)(v84, v56, v58);
  memcpy(v98, v84, 0xD0uLL);
  sub_1C100C7D0(v98);
  (*(v60 + 8))(v13, v11);
  v81[0] = 2;
  LOBYTE(v82[0]) = 0;
  v31 = *(a2 + 16);
  v96[0] = *a2;
  v96[1] = v31;
  v97 = *(a2 + 32);
  v32 = *(a2 + 16);
  v84[0] = *a2;
  v84[1] = v32;
  *&v84[2] = *(a2 + 32);
  sub_1C11128F4(v96, v83);
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(v81, 0, 0, v14, v24);

  (*(v59 + 8))(v30, v14);
  v33 = swift_getWitnessTable();
  v34 = v68;
  *&v65 = v33;
  sub_1C0FDBA4C(v24, v22, v33);
  v35 = v67;
  v36 = *(v67 + 8);
  v36(v24, v22);
  v37 = *(v69 + 16);
  v38 = v24;
  if (v37)
  {
    v39 = *(v69 + 24);

    v40 = sub_1C1263AB0();
    v64 = v24;
    v41 = v40;
    LOBYTE(v84[0]) = 1;
    v42 = sub_1C12638E0();
    LOBYTE(v83[0]) = 1;
    v69 = v22;

    v81[0] = 1;
    v43 = v83[0];
    v44 = sub_1C1264470();
    v63 = v36;
    v45 = v44;
    sub_1C12628A0();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_1C0FCF004(v37);
    v83[0] = v41;
    v83[1] = 0;
    LOBYTE(v83[2]) = v84[0];
    v83[3] = v42;
    v83[4] = 0;
    LOBYTE(v83[5]) = v43;
    v83[6] = 0xD000000000000011;
    v83[7] = 0x80000001C126BF80;
    v34 = v68;
    v22 = v69;
    v83[8] = v37;
    v83[9] = v39;
    v83[10] = 0;
    LOBYTE(v83[11]) = 1;
    v35 = v67;
    LOBYTE(v83[12]) = v45;
    v36 = v63;
    v38 = v64;
    v83[13] = v47;
    v83[14] = v49;
    v83[15] = v51;
    v83[16] = v53;
    LOBYTE(v83[17]) = 0;
    nullsub_1(v83);
    memcpy(v84, v83, 0x89uLL);
  }

  else
  {
    sub_1C1112950(v84);
  }

  (*(v35 + 16))(v38, v34, v22);
  v82[0] = v38;
  memcpy(v81, v84, 0x89uLL);
  v82[1] = v81;
  sub_1C0FDB800(v84, v83, &qword_1EBE941D8);
  v80[0] = v22;
  v80[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941D8);
  v78 = v65;
  v79 = sub_1C1112958();
  sub_1C119EE80(v82, 2, v80);
  sub_1C0FD1A5C(v84, &qword_1EBE941D8);
  v36(v34, v22);
  memcpy(v83, v81, 0x89uLL);
  sub_1C0FD1A5C(v83, &qword_1EBE941D8);
  return (v36)(v38, v22);
}

uint64_t sub_1C110FED4@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v94 = a8;
  v76 = a7;
  v90 = a2;
  v93 = a1;
  v91 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941D0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  type metadata accessor for PhotosInteractiveFavoriteBadge();
  sub_1C1263190();
  type metadata accessor for PhotosFavoriteBadge();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263190();
  v16 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v112 = MEMORY[0x1E697E5D8];
  v109 = swift_getWitnessTable();
  v110 = MEMORY[0x1E697E5C0];
  v17 = swift_getWitnessTable();
  v80 = v16;
  v18 = v93;
  v77 = v17;
  v19 = sub_1C12633A0();
  v89 = v13;
  v78 = v19;
  v85 = sub_1C1263190();
  v82 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v74 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC8);
  MEMORY[0x1EEE9AC00](v96);
  v81 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v74 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v97 = &v74 - v31;
  v79 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v98 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v74 - v35;
  v86 = a3;
  v103 = a3;
  v104 = a4;
  v87 = a5;
  v105 = a5;
  v106 = a6;
  v88 = a6;
  v37 = v76;
  v107 = v76;
  v38 = v94;
  v108 = v94;
  v39 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell();
  v40 = v18 + *(v39 + 92);
  v95 = v36;
  v41 = a4;
  v42 = a4;
  v43 = v38;
  sub_1C0FDBA4C(v40, v42, v38);
  if (qword_1EBE8FCA8 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v23, qword_1EBE93F58);
  sub_1C0FDB800(v44, v25, &qword_1EBE91CC0);
  if (!sub_1C110E518(v39) || (v45 = 1.0, *(v18 + *(v39 + 100)) == 1))
  {
    v45 = 0.0;
  }

  sub_1C0FDB71C(v25, v29, &qword_1EBE91CC0);
  *&v29[*(v96 + 36)] = v45;
  sub_1C0FDB71C(v29, v97, &qword_1EBE91CC8);
  *v15 = sub_1C1263AB0();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v46 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE941F0) + 44)];
  v47 = v86;
  v92 = v41;
  v48 = v41;
  v49 = v87;
  sub_1C1110844(v18, v86, v48, v87, v88, v37, v43, v46);
  v50 = v15;
  v51 = v90;
  v75 = *(v90 + 40);
  v74 = *(v90 + 56);
  v52 = sub_1C1264470();
  v53 = v50 + *(v89 + 36);
  *v53 = v52;
  *(v53 + 24) = v74;
  *(v53 + 8) = v75;
  *(v53 + 40) = 0;
  v54 = sub_1C1265950();
  *&v75 = &v74;
  MEMORY[0x1EEE9AC00](v54);
  *(&v74 - 8) = v47;
  v55 = v92;
  *(&v74 - 7) = v92;
  *(&v74 - 6) = v49;
  *(&v74 - 5) = v56;
  *(&v74 - 4) = v37;
  v57 = v93;
  *(&v74 - 3) = v43;
  *(&v74 - 2) = v57;
  *(&v74 - 1) = v51;
  v58 = sub_1C1112A1C();
  v59 = v84;
  sub_1C1264F60();
  sub_1C0FD1A5C(v50, &qword_1EBE941D0);
  v60 = swift_getWitnessTable();
  v102[3] = v58;
  v102[4] = v60;
  v61 = v85;
  v62 = swift_getWitnessTable();
  v63 = v83;
  sub_1C0FDBA4C(v59, v61, v62);
  v64 = v82;
  v93 = *(v82 + 8);
  v93(v59, v61);
  v65 = v79;
  v66 = v98;
  v67 = v55;
  (*(v79 + 16))(v98, v95, v55);
  v103 = v66;
  v68 = v97;
  v69 = v81;
  sub_1C0FDB800(v97, v81, &qword_1EBE91CC8);
  v104 = v69;
  (*(v64 + 16))(v59, v63, v61);
  v105 = v59;
  v102[0] = v67;
  v102[1] = v96;
  v102[2] = v61;
  v99 = v94;
  v100 = sub_1C1112AD4();
  v101 = v62;
  sub_1C119EE80(&v103, 3, v102);
  v70 = v93;
  v93(v63, v61);
  sub_1C0FD1A5C(v68, &qword_1EBE91CC8);
  v71 = *(v65 + 8);
  v72 = v92;
  v71(v95, v92);
  v70(v59, v61);
  sub_1C0FD1A5C(v69, &qword_1EBE91CC8);
  return (v71)(v98, v72);
}

uint64_t sub_1C1110844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v41 = a7;
  v43 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94218);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v40 - v15);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94220);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  *v16 = sub_1C12659A0();
  v16[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94228);
  v26 = a3;
  v27 = a3;
  v28 = a4;
  v29 = a4;
  v30 = a5;
  v31 = a5;
  v32 = a6;
  v33 = a6;
  v34 = v41;
  sub_1C1110B1C(a1, a2, v27, v29, v31, v33, v41, v16 + *(v25 + 44));
  v44 = a2;
  v45 = v26;
  v46 = v28;
  v47 = v30;
  v48 = v32;
  v49 = v34;
  if (*(a1 + *(type metadata accessor for PhotosPersonHomeCell.PersonHomeCell() + 100)) == 1)
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v35 = qword_1EDE7B870;
  }

  else
  {
    v35 = sub_1C1265190();
  }

  sub_1C0FDB71C(v16, v20, &qword_1EBE94218);
  *&v20[*(v42 + 36)] = v35;
  sub_1C0FDB71C(v20, v23, &qword_1EBE94220);
  v36 = v40;
  sub_1C0FDB800(v23, v40, &qword_1EBE94220);
  v37 = v43;
  *v43 = 0;
  *(v37 + 8) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94230);
  sub_1C0FDB800(v36, v37 + *(v38 + 48), &qword_1EBE94220);
  sub_1C0FD1A5C(v23, &qword_1EBE94220);
  return sub_1C0FD1A5C(v36, &qword_1EBE94220);
}

uint64_t sub_1C1110B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94238);
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94240);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v45 = &v38 - v23;
  v55 = a2;
  v56 = a3;
  v38 = a3;
  v39 = a4;
  v57 = a4;
  v58 = a5;
  v40 = a5;
  v41 = a6;
  v59 = a6;
  v60 = a7;
  v61 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v24 = a7;
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94250);
  sub_1C1112B9C();
  sub_1C1112CD8();
  v25 = v17;
  sub_1C1265380();
  v63 = a2;
  v64 = v38;
  v65 = v39;
  v66[0] = v40;
  v66[1] = v41;
  v66[2] = v24;
  v26 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell();
  if (sub_1C110E600(v26) || (v27 = 1.0, !sub_1C110E518(v26)))
  {
    v27 = 0.0;
  }

  (*(v43 + 32))(v21, v25, v44);
  *&v21[*(v42 + 36)] = v27;
  v28 = v45;
  sub_1C0FDB71C(v21, v45, &qword_1EBE94240);
  v29 = *(a1 + 40);
  v63 = *(a1 + 32);
  v64 = v29;
  LOBYTE(v65) = 0;
  v62[0] = 394248;
  LODWORD(v62[1]) = 17367552;

  PhotosPrefetchableImage(_:font:)(&v63, v62, v68);
  sub_1C100DC0C();
  v30 = v68[0];
  v31 = v68[1];
  v32 = v68[2];
  sub_1C12659B0();
  sub_1C1263390();
  if (sub_1C110E600(v26))
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.0;
  }

  v34 = v46;
  sub_1C0FDB800(v28, v46, &qword_1EBE94240);
  v35 = v47;
  sub_1C0FDB800(v34, v47, &qword_1EBE94240);
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94260) + 48);
  v62[0] = v30;
  v62[1] = v31;
  v62[2] = v32;
  memcpy(&v62[3], __src, 0x70uLL);
  *&v62[17] = v33;
  memcpy((v35 + v36), v62, 0x90uLL);
  sub_1C0FDB800(v62, &v63, &qword_1EBE94268);
  sub_1C0FD1A5C(v28, &qword_1EBE94240);
  v63 = v30;
  v64 = v31;
  v65 = v32;
  memcpy(v66, __src, 0x70uLL);
  *&v66[14] = v33;
  sub_1C0FD1A5C(&v63, &qword_1EBE94268);
  return sub_1C0FD1A5C(v34, &qword_1EBE94240);
}

void *sub_1C1110F90@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  __src[2] = a1;
  __src[3] = a2;
  __src[4] = a3;
  __src[5] = a4;
  v6 = type metadata accessor for PhotosPersonHomeCell.PersonHomeCell();
  __src[0] = sub_1C110E624(v6);
  __src[1] = v7;
  sub_1C0FDB9AC();
  v8 = sub_1C12648F0();
  v10 = v9;
  v12 = v11;
  sub_1C11D2C40();
  v13 = sub_1C1264870();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1C0FDB8E8(v8, v10, v12 & 1);

  sub_1C1265960();
  sub_1C1263390();
  KeyPath = swift_getKeyPath();
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v17 & 1;
  *(a5 + 24) = v19;
  result = memcpy((a5 + 32), __src, 0x70uLL);
  *(a5 + 144) = KeyPath;
  *(a5 + 152) = 2;
  *(a5 + 160) = 0;
  return result;
}

uint64_t sub_1C11110F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D28);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  v7 = *(a1 + 56);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v13 = *(a1 + 48);
    v14 = v7;
    v15 = 0;
    v12 = 0;
    v10[1] = 394248;
    v11 = 17367552;

    PhotosPrefetchableImage(_:imageScale:font:)();
    sub_1C100DC0C();
    sub_1C0FDB71C(v6, a2, &qword_1EBE90D28);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}