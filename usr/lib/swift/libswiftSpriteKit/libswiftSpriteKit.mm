uint64_t copyImageData(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (([a1 respondsToSelector_] & 1) == 0 || (v4 = objc_msgSend(a1, sel__copyImageData)) == 0)
  {
    v6 = 0;
    v8 = 0xF000000000000000;
LABEL_6:
    v11 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    goto LABEL_7;
  }

  v5 = v4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);
  outlined copy of Data._Representation(v6, v8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithData_];

  outlined consume of Data._Representation(v6, v8);
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(a2 + 24) = type metadata accessor for UIImage();
  result = outlined consume of Data?(v6, v8);
  *a2 = v11;
  *(a2 + 32) = 16;
  return result;
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id __SpriteKitMethodProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __SpriteKitMethodProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

SKWarpGeometryGrid __swiftcall SKWarpGeometryGrid.init(columns:rows:sourcePositions:destinationPositions:)(SKWarpGeometryGrid columns, Swift::Int rows, Swift::OpaquePointer sourcePositions, Swift::OpaquePointer destinationPositions)
{
  v4 = columns.super.super.isa + 1;
  if (__OFADD__(columns.super.super.isa, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = rows + 1;
  if (__OFADD__(rows, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v4 * v6;
  if ((v4 * v6) >> 64 != (v4 * v6) >> 63)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return columns;
  }

  isa = columns.super.super.isa;
  v11 = *(destinationPositions._rawValue + 2);
  v12 = *(sourcePositions._rawValue + 2);
  if (v11)
  {
    if (!v12)
    {

      if (v11 == v7)
      {
        v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithColumns:isa rows:rows sourcePositions:0 destPositions:destinationPositions._rawValue + 32];
        goto LABEL_14;
      }

      goto LABEL_23;
    }

    if (v11 == v7 && v12 == v7)
    {
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithColumns:columns.super.super.isa rows:rows sourcePositions:sourcePositions._rawValue + 32 destPositions:destinationPositions._rawValue + 32];

LABEL_14:

      return v13;
    }

    goto LABEL_21;
  }

  if (v12)
  {

    if (v12 == v7)
    {
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithColumns:isa rows:rows sourcePositions:sourcePositions._rawValue + 32 destPositions:0];
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v14 initWithColumns:isa rows:rows sourcePositions:0 destPositions:0];
}

SKWarpGeometryGrid __swiftcall SKWarpGeometryGrid.replacingBySourcePositions(positions:)(Swift::OpaquePointer positions)
{
  v2 = [v1 gridByReplacingSourcePositions_];

  return v2;
}

SKWarpGeometryGrid __swiftcall SKWarpGeometryGrid.replacingByDestinationPositions(positions:)(Swift::OpaquePointer positions)
{
  v2 = [v1 gridByReplacingDestPositions_];

  return v2;
}