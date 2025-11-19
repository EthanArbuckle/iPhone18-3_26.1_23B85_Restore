uint64_t Collection.distance<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a5 + 152))(a1, a2, a3, a5);
  v8 = *(a6 + 88);
  v11 = lazy protocol witness table accessor for type Int and conformance Int(v13, v9, v10);
  return v8(&v13, &type metadata for Int, v11, a4, a6);
}

Swift::UnsafeMutableRawPointer __swiftcall UnsafeMutablePointer.deinitialize()()
{
  v2._rawValue = v0;
  (*(*(v1 - 8) + 8))();
  return v2;
}

uint64_t UnsafeMutablePointer.initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v27 = a2;
  v30 = a3;
  v8 = type metadata accessor for Optional(0, a3, a3, a4);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v15, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = (*(a5 + 112))(a4, a5);
  if (v21 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = v21;
  (*(v12 + 16))(v14, a1, a4);
  v23 = (*(v15 + 64))(v20, v27, v22, a4, v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v15, a4, v17, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  (*(AssociatedConformanceWitness + 16))(v17, AssociatedConformanceWitness);
  v25 = (*(*(v30 - 8) + 48))(v11, 1);
  (*(v28 + 8))(v11, v29);
  if (v25 != 1 || v23 != v22)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v18 + 8))(v20, v17);
}

uint64_t UnsafeRawPointer.summary.getter(Swift::UInt64 a1)
{
  v1 = 0xD000000000000013;
  if (!a1)
  {
    return 0xD000000000000015;
  }

  v3 = _StringGuts.init(_initialCapacity:)(22);
  v13 = v4;
  v53 = v3;
  v54 = v4;
  v14 = 0x8000000180671B20;
  v15 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v15 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 || (v3 & ~v4 & 0x2000000000000000) != 0)
  {
    if (("UnsafeMutableRawPointer(nil)" & 0x2000000000000000 & v4) != 0 && (v16 = specialized _SmallString.init(_:appending:)(v3, v4, 0xD000000000000013, 0x8000000180671B20), (v18 & 1) == 0))
    {
      v1 = v16;
      v21 = v17;
      v13;
      v53 = v1;
      v54 = v21;
      v14 = v21;
    }

    else
    {
      if (("UnsafeMutableRawPointer(nil)" & 0x2000000000000000) != 0)
      {
        v19 = ("UnsafeMutableRawPointer(nil)" >> 56) & 0xF;
      }

      else
      {
        v19 = 19;
      }

      _StringGuts.append(_:)(0xD000000000000013, 0x8000000180671B20, 0, v19, v5, v6, v7, v8, v9, v10, v11, v12);
      v1 = v53;
      v14 = v54;
    }
  }

  else
  {
    v4;
    v53 = 0xD000000000000013;
    v54 = 0x8000000180671B20;
  }

  v31 = _uint64ToString(_:radix:uppercase:)(a1, 16, 1);
  countAndFlagsBits = v31._countAndFlagsBits;
  object = v31._object;
  v33 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v33 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33 && (v1 & ~v14 & 0x2000000000000000) == 0)
  {
    v14;
    v43 = v31._countAndFlagsBits;
    v53 = v31._countAndFlagsBits;
    goto LABEL_25;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    if ((v31._object & 0x2000000000000000) != 0)
    {
      v47 = specialized _SmallString.init(_:appending:)(v1, v14, v31._countAndFlagsBits, v31._object);
      if ((v49 & 1) == 0)
      {
        v51 = v48;
        v52 = v47;
        v14;
        v31._object;
        v53 = v52;
        object = v51;
        v43 = v52;
        goto LABEL_25;
      }

      v34 = (v31._object >> 56) & 0xF;
      countAndFlagsBits = v31._countAndFlagsBits;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v31._object & 0x2000000000000000) == 0)
  {
LABEL_23:
    v34 = v31._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v34 = (v31._object >> 56) & 0xF;
LABEL_24:
  _StringGuts.append(_:)(countAndFlagsBits, v31._object, 0, v34, v23, v24, v25, v26, v27, v28, v29, v30);
  v31._object;
  v43 = v53;
  object = v54;
LABEL_25:
  v44 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v44 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v44 || (v43 & ~object & 0x2000000000000000) != 0)
  {
    if ((object & 0x2000000000000000) != 0 && (v45 = specialized _SmallString.init(_:appending:)(v43, object, 0x29uLL, 0xE100000000000000), (v46 & 1) == 0))
    {
      v50 = v45;
      object;
      return v50;
    }

    else
    {
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v35, v36, v37, v38, v39, v40, v41, v42);
      return v53;
    }
  }

  else
  {
    object;
    return 41;
  }
}

uint64_t UnsafeRawPointer.customPlaygroundQuickLook.getter@<X0>(Swift::UInt64 a1@<X0>, uint64_t a2@<X8>)
{
  result = UnsafeRawPointer.summary.getter(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 32) = 0;
  return result;
}

uint64_t protocol witness for _CustomPlaygroundQuickLookable.customPlaygroundQuickLook.getter in conformance UnsafeRawPointer@<X0>(uint64_t a1@<X8>)
{
  result = UnsafeRawPointer.summary.getter(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  return result;
}

uint64_t UnsafeMutableRawPointer.summary.getter(Swift::UInt64 a1)
{
  v1 = 0xD00000000000001ALL;
  if (!a1)
  {
    return 0xD00000000000001CLL;
  }

  v3 = _StringGuts.init(_initialCapacity:)(29);
  v13 = v4;
  v53 = v3;
  v54 = v4;
  v14 = 0x8000000180671AE0;
  v15 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v15 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 || (v3 & ~v4 & 0x2000000000000000) != 0)
  {
    if (("UnsafePointer(nil)" & 0x2000000000000000 & v4) != 0 && (v16 = specialized _SmallString.init(_:appending:)(v3, v4, 0xD00000000000001ALL, 0x8000000180671AE0), (v18 & 1) == 0))
    {
      v1 = v16;
      v21 = v17;
      v13;
      v53 = v1;
      v54 = v21;
      v14 = v21;
    }

    else
    {
      if (("UnsafePointer(nil)" & 0x2000000000000000) != 0)
      {
        v19 = ("UnsafePointer(nil)" >> 56) & 0xF;
      }

      else
      {
        v19 = 26;
      }

      _StringGuts.append(_:)(0xD00000000000001ALL, 0x8000000180671AE0, 0, v19, v5, v6, v7, v8, v9, v10, v11, v12);
      v1 = v53;
      v14 = v54;
    }
  }

  else
  {
    v4;
    v53 = 0xD00000000000001ALL;
    v54 = 0x8000000180671AE0;
  }

  v31 = _uint64ToString(_:radix:uppercase:)(a1, 16, 1);
  countAndFlagsBits = v31._countAndFlagsBits;
  object = v31._object;
  v33 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v33 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33 && (v1 & ~v14 & 0x2000000000000000) == 0)
  {
    v14;
    v43 = v31._countAndFlagsBits;
    v53 = v31._countAndFlagsBits;
    goto LABEL_25;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    if ((v31._object & 0x2000000000000000) != 0)
    {
      v47 = specialized _SmallString.init(_:appending:)(v1, v14, v31._countAndFlagsBits, v31._object);
      if ((v49 & 1) == 0)
      {
        v51 = v48;
        v52 = v47;
        v14;
        v31._object;
        v53 = v52;
        object = v51;
        v43 = v52;
        goto LABEL_25;
      }

      v34 = (v31._object >> 56) & 0xF;
      countAndFlagsBits = v31._countAndFlagsBits;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v31._object & 0x2000000000000000) == 0)
  {
LABEL_23:
    v34 = v31._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v34 = (v31._object >> 56) & 0xF;
LABEL_24:
  _StringGuts.append(_:)(countAndFlagsBits, v31._object, 0, v34, v23, v24, v25, v26, v27, v28, v29, v30);
  v31._object;
  v43 = v53;
  object = v54;
LABEL_25:
  v44 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v44 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v44 || (v43 & ~object & 0x2000000000000000) != 0)
  {
    if ((object & 0x2000000000000000) != 0 && (v45 = specialized _SmallString.init(_:appending:)(v43, object, 0x29uLL, 0xE100000000000000), (v46 & 1) == 0))
    {
      v50 = v45;
      object;
      return v50;
    }

    else
    {
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v35, v36, v37, v38, v39, v40, v41, v42);
      return v53;
    }
  }

  else
  {
    object;
    return 41;
  }
}

uint64_t UnsafeMutableRawPointer.customPlaygroundQuickLook.getter@<X0>(Swift::UInt64 a1@<X0>, uint64_t a2@<X8>)
{
  result = UnsafeMutableRawPointer.summary.getter(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 32) = 0;
  return result;
}

uint64_t protocol witness for _CustomPlaygroundQuickLookable.customPlaygroundQuickLook.getter in conformance UnsafeMutableRawPointer@<X0>(uint64_t a1@<X8>)
{
  result = UnsafeMutableRawPointer.summary.getter(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  return result;
}

void UnsafePointer.customPlaygroundQuickLook.getter(Swift::UInt64 a1@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = 0xD000000000000010;
  if (!a1)
  {
    v22 = 0x8000000180671AC0;
    v23 = 0xD000000000000012;
    goto LABEL_37;
  }

  v5 = _StringGuts.init(_initialCapacity:)(19);
  v15 = v6;
  v56._countAndFlagsBits = v5;
  v56._object = v6;
  object = 0x8000000180671AA0;
  v17 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v17 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 || (v5 & ~v6 & 0x2000000000000000) != 0)
  {
    if (("UnsafeMutablePointer(nil)" & 0x2000000000000000 & v6) != 0 && (v18 = specialized _SmallString.init(_:appending:)(v5, v6, 0xD000000000000010, 0x8000000180671AA0), (v20 & 1) == 0))
    {
      countAndFlagsBits = v18;
      v24 = v19;
      v15;
      v56._countAndFlagsBits = countAndFlagsBits;
      v56._object = v24;
      object = v24;
    }

    else
    {
      if (("UnsafeMutablePointer(nil)" & 0x2000000000000000) != 0)
      {
        v21 = ("UnsafeMutablePointer(nil)" >> 56) & 0xF;
      }

      else
      {
        v21 = 16;
      }

      _StringGuts.append(_:)(0xD000000000000010, 0x8000000180671AA0, 0, v21, v7, v8, v9, v10, v11, v12, v13, v14);
      object = v56._object;
      countAndFlagsBits = v56._countAndFlagsBits;
    }
  }

  else
  {
    v6;
    v56._countAndFlagsBits = 0xD000000000000010;
    v56._object = 0x8000000180671AA0;
  }

  v34 = _uint64ToString(_:radix:uppercase:)(a1, 16, 1);
  v25 = v34._countAndFlagsBits;
  v35 = v34._object;
  v36 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v36 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v36 && (countAndFlagsBits & ~object & 0x2000000000000000) == 0)
  {
    object;
    v46 = v34._countAndFlagsBits;
    v56 = v34;
    goto LABEL_25;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    if ((v34._object & 0x2000000000000000) != 0)
    {
      v51 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, object, v34._countAndFlagsBits, v34._object);
      if ((v53 & 1) == 0)
      {
        v54 = v52;
        v55 = v51;
        v34._object;
        object;
        v56._countAndFlagsBits = v55;
        v56._object = v54;
        v35 = v54;
        v46 = v55;
        goto LABEL_25;
      }

      v37 = (v34._object >> 56) & 0xF;
      v25 = v34._countAndFlagsBits;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v34._object & 0x2000000000000000) == 0)
  {
LABEL_23:
    v37 = v34._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v37 = (v34._object >> 56) & 0xF;
LABEL_24:
  _StringGuts.append(_:)(v25, v34._object, 0, v37, v26, v27, v28, v29, v30, v31, v32, v33);
  v34._object;
  v35 = v56._object;
  v46 = v56._countAndFlagsBits;
LABEL_25:
  v47 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v47 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v47 || (v46 & ~v35 & 0x2000000000000000) != 0)
  {
    if ((v35 & 0x2000000000000000) != 0 && (v48 = specialized _SmallString.init(_:appending:)(v46, v35, 0x29uLL, 0xE100000000000000), (v50 & 1) == 0))
    {
      v23 = v48;
      v22 = v49;
      v35;
    }

    else
    {
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v38, v39, v40, v41, v42, v43, v44, v45);
      v22 = v56._object;
      v23 = v56._countAndFlagsBits;
    }
  }

  else
  {
    v35;
    v22 = 0xE100000000000000;
    v23 = 41;
  }

LABEL_37:
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 32) = 0;
}

void UnsafeMutablePointer.customPlaygroundQuickLook.getter(Swift::UInt64 a1@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = 0xD000000000000017;
  if (!a1)
  {
    v22 = 0x8000000180671A80;
    v23 = 0xD000000000000019;
    goto LABEL_37;
  }

  v5 = _StringGuts.init(_initialCapacity:)(26);
  v15 = v6;
  v56._countAndFlagsBits = v5;
  v56._object = v6;
  object = 0x8000000180671A60;
  v17 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v17 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 || (v5 & ~v6 & 0x2000000000000000) != 0)
  {
    if (("Swift/Diffing.swift" & 0x2000000000000000 & v6) != 0 && (v18 = specialized _SmallString.init(_:appending:)(v5, v6, 0xD000000000000017, 0x8000000180671A60), (v20 & 1) == 0))
    {
      countAndFlagsBits = v18;
      v24 = v19;
      v15;
      v56._countAndFlagsBits = countAndFlagsBits;
      v56._object = v24;
      object = v24;
    }

    else
    {
      if (("Swift/Diffing.swift" & 0x2000000000000000) != 0)
      {
        v21 = ("Swift/Diffing.swift" >> 56) & 0xF;
      }

      else
      {
        v21 = 23;
      }

      _StringGuts.append(_:)(0xD000000000000017, 0x8000000180671A60, 0, v21, v7, v8, v9, v10, v11, v12, v13, v14);
      object = v56._object;
      countAndFlagsBits = v56._countAndFlagsBits;
    }
  }

  else
  {
    v6;
    v56._countAndFlagsBits = 0xD000000000000017;
    v56._object = 0x8000000180671A60;
  }

  v34 = _uint64ToString(_:radix:uppercase:)(a1, 16, 1);
  v25 = v34._countAndFlagsBits;
  v35 = v34._object;
  v36 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v36 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v36 && (countAndFlagsBits & ~object & 0x2000000000000000) == 0)
  {
    object;
    v46 = v34._countAndFlagsBits;
    v56 = v34;
    goto LABEL_25;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    if ((v34._object & 0x2000000000000000) != 0)
    {
      v51 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, object, v34._countAndFlagsBits, v34._object);
      if ((v53 & 1) == 0)
      {
        v54 = v52;
        v55 = v51;
        v34._object;
        object;
        v56._countAndFlagsBits = v55;
        v56._object = v54;
        v35 = v54;
        v46 = v55;
        goto LABEL_25;
      }

      v37 = (v34._object >> 56) & 0xF;
      v25 = v34._countAndFlagsBits;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v34._object & 0x2000000000000000) == 0)
  {
LABEL_23:
    v37 = v34._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v37 = (v34._object >> 56) & 0xF;
LABEL_24:
  _StringGuts.append(_:)(v25, v34._object, 0, v37, v26, v27, v28, v29, v30, v31, v32, v33);
  v34._object;
  v35 = v56._object;
  v46 = v56._countAndFlagsBits;
LABEL_25:
  v47 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v47 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v47 || (v46 & ~v35 & 0x2000000000000000) != 0)
  {
    if ((v35 & 0x2000000000000000) != 0 && (v48 = specialized _SmallString.init(_:appending:)(v46, v35, 0x29uLL, 0xE100000000000000), (v50 & 1) == 0))
    {
      v23 = v48;
      v22 = v49;
      v35;
    }

    else
    {
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v38, v39, v40, v41, v42, v43, v44, v45);
      v22 = v56._object;
      v23 = v56._countAndFlagsBits;
    }
  }

  else
  {
    v35;
    v22 = 0xE100000000000000;
    v23 = 41;
  }

LABEL_37:
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 32) = 0;
}

void *static UnsafeMutableRawPointer.allocate(bytes:alignedTo:)(swift *a1, uint64_t a2)
{
  if (a2 <= 16)
  {
    v2 = -1;
  }

  else
  {
    v2 = a2 - 1;
  }

  return swift_slowAlloc(a1, v2);
}

uint64_t UnsafeMutableRawPointer.initializeMemory<A>(as:at:count:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 72);
  if ((a2 * v6) >> 64 == (a2 * v6) >> 63)
  {
    return UnsafeMutableRawPointer.initializeMemory<A>(as:repeating:count:)(result, a4, a3, a5 + a2 * v6, a6);
  }

  __break(1u);
  return result;
}

char *UnsafeMutableRawPointer.initializeMemory<A>(as:from:)(uint64_t a1, uint64_t a2, char *a3, const char *a4, uint64_t a5)
{
  v33 = a3;
  v38 = a2;
  v6 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v31 - v10;
  v13 = type metadata accessor for Optional(0, v8, v11, v12);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31 - v15;
  v17 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v21 = v20;
  v32 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - v22;
  (*(v17 + 16))(v19, v38, a4);
  (*(v6 + 32))(a4, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a4, v21, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v25 = *(AssociatedConformanceWitness + 16);
  v37 = v23;
  v38 = v21;
  v34 = AssociatedConformanceWitness;
  v25(v21);
  v36 = v9;
  v26 = *(v9 + 48);
  if (v26(v16, 1, v8) != 1)
  {
    v27 = *(v36 + 32);
    v28 = v33;
    do
    {
      v29 = v35;
      v27(v35, v16, v8);
      v27(v28, v29, v8);
      v28 += *(v36 + 72);
      (v25)(v38, v34);
    }

    while (v26(v16, 1, v8) != 1);
  }

  (*(v32 + 8))(v37, v38);
  return v33;
}

void *static UnsafeMutableRawBufferPointer.allocate(count:)(swift *a1)
{
  result = swift_slowAlloc(a1, 0xFFFFFFFFFFFFFFFFLL);
  if ((a1 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void *static UnsafeMutableRawBufferPointer.allocate(byteCount:alignment:)(swift *a1, uint64_t a2)
{
  if (a2 <= 16)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2 - 1;
  }

  result = swift_slowAlloc(a1, v3);
  if ((a1 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall UnsafeMutableRawBufferPointer.copyMemory(from:)(Swift::UnsafeRawBufferPointer from)
{
  if (from._position.value._rawValue)
  {
    v4 = from._end.value._rawValue - from._position.value._rawValue;
  }

  else
  {
    v4 = 0;
  }

  if (!v1)
  {
    if (v4 < 1)
    {
      return;
    }

LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v2 - v1 < v4)
  {
    goto LABEL_12;
  }

  if (from._position.value._rawValue)
  {

    memmove(v1, from._position.value._rawValue, from._end.value._rawValue - from._position.value._rawValue);
  }
}

__objc2_class **Collection.flatMap(_:)(uint64_t (*a1)(char *), uint64_t a2, unint64_t a3, uint64_t a4)
{
  v51 = a1;
  v52 = a2;
  v53 = *(a4 + 8);
  v5 = v53;
  swift_getAssociatedTypeWitness(0, v53, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = v43 - v10;
  v13 = type metadata accessor for Optional(0, v8, v11, v12);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v43 - v15;
  v17 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v5;
  v21 = a3;
  swift_getAssociatedTypeWitness(0, v20, v22, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v24 = v23;
  v43[0] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (v43 - v25);
  (*(v17 + 16))(v19, v54, v21);
  v27 = v53;
  (v53[4])(v21);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v27, v21, v24, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v29 = *(AssociatedConformanceWitness + 16);
  v53 = v26;
  v54 = v24;
  v49 = AssociatedConformanceWitness + 16;
  v50 = AssociatedConformanceWitness;
  v48 = v29;
  (v29)(v24);
  v46 = *(v9 + 48);
  v47 = v9 + 48;
  if (v46(v16, 1, v8) == 1)
  {
    v30 = &_swiftEmptyArrayStorage;
LABEL_3:
    (*(v43[0] + 8))(v53, v54);
  }

  else
  {
    v32 = *(v9 + 32);
    v31 = v9 + 32;
    v45 = v32;
    v33 = (v31 - 24);
    v30 = &_swiftEmptyArrayStorage;
    v43[1] = v31;
    v34 = v44;
    v32(v44, v16, v8);
    while (1)
    {
      v36 = v51(v34);
      if (v4)
      {
        break;
      }

      v38 = v36;
      v39 = v37;
      (*v33)(v34, v8);
      if (v39)
      {
        if (!swift_isUniquelyReferenced_nonNull_native(v30))
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v30[2]->isa + 1, 1, v30);
        }

        v41 = v30[2];
        v40 = v30[3];
        if (v41 >= v40 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v30);
        }

        v30[2] = (v41 + 1);
        v35 = &v30[2 * v41];
        v35[4] = v38;
        v35[5] = v39;
        v34 = v44;
      }

      v48(v54, v50);
      if (v46(v16, 1, v8) == 1)
      {
        goto LABEL_3;
      }

      v45(v34, v16, v8);
    }

    (*v33)(v34, v8);
    (*(v43[0] + 8))(v53, v54);
    v30;
  }

  return v30;
}

uint64_t _PlaygroundQuickLook.init(reflecting:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, v42);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss30_CustomPlaygroundQuickLookable_pMd, _ss30_CustomPlaygroundQuickLookable_pMR);
  if (swift_dynamicCast(&v39, v42, byte_1EEEAC6F8, v4, 6uLL) & 1) != 0 || (v41 = 0, v39 = 0u, v40 = 0u, outlined destroy of _HasContiguousBytes?(&v39, &_ss30_CustomPlaygroundQuickLookable_pSgMd, _ss30_CustomPlaygroundQuickLookable_pSgMR), outlined init with copy of Any(a1, v42), v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss38__DefaultCustomPlaygroundQuickLookable_pMd, _ss38__DefaultCustomPlaygroundQuickLookable_pMR), (swift_dynamicCast(&v39, v42, byte_1EEEAC6F8, v5, 6uLL)))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    _ss9CodingKey_pWOb_0(&v39, &v43);
    v6 = *(&v44 + 1);
    v7 = v45;
    __swift_project_boxed_opaque_existential_0Tm(&v43, *(&v44 + 1));
    (*(v7 + 8))(v6, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  outlined destroy of _HasContiguousBytes?(&v39, &_ss38__DefaultCustomPlaygroundQuickLookable_pSgMd, _ss38__DefaultCustomPlaygroundQuickLookable_pSgMR);
  v9 = swift_reflectionMirror_quickLookObject(a1, byte_1EEEAC6F8);
  if (!v9)
  {
    v43 = 0u;
    v44 = 0u;
    LOBYTE(v45) = -1;
    goto LABEL_12;
  }

  v10 = v9;
  swift_unknownObjectRetain_n(v9, 2);
  v11 = specialized String.withCString<A>(_:)(0x7265626D754E534EuLL, 0xE800000000000000, v10);
  0xE800000000000000;
  swift_unknownObjectRelease(v10);
  if (v11)
  {
    v12 = *[swift_unknownObjectRetain(v10) objCType];
    if ((v12 & 0x80) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    switch(v12)
    {
      case 'Q':
        v29 = [v10 unsignedLongLongValue];
        swift_unknownObjectRelease(v10);
        *&v43 = v29;
        v15 = 2;
        break;
      case 'f':
        [v10 floatValue];
        v28 = v27;
        swift_unknownObjectRelease(v10);
        LODWORD(v43) = v28;
        v15 = 3;
        break;
      case 'd':
        [v10 doubleValue];
        v14 = v13;
        swift_unknownObjectRelease(v10);
        *&v43 = v14;
        v15 = 4;
        break;
      default:
        v30 = [v10 longLongValue];
        swift_unknownObjectRelease(v10);
        *&v43 = v30;
        v15 = 1;
        break;
    }

    LOBYTE(v45) = v15;
LABEL_27:
    swift_unknownObjectRelease(v10);
    goto LABEL_28;
  }

  swift_unknownObjectRetain(v10);
  v17 = specialized String.withCString<A>(_:)(0xD000000000000012, 0x800000018066E750 | 0x8000000000000000, v10);
  0x800000018066E750 | 0x8000000000000000;
  swift_unknownObjectRelease(v10);
  if ((v17 & 1) == 0)
  {
    swift_unknownObjectRetain(v10);
    v19 = specialized String.withCString<A>(_:)(0x6567616D49534EuLL, 0xE700000000000000, v10);
    0xE700000000000000;
    swift_unknownObjectRelease(v10);
    if (v19 & 1) != 0 || (swift_unknownObjectRetain(v10), v20 = specialized String.withCString<A>(_:)(0x6567616D494955uLL, 0xE700000000000000, v10), 0xE700000000000000, swift_unknownObjectRelease(v10), (v20) || (v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NSImageView", 0xBuLL, 1), swift_unknownObjectRetain(v10), v22 = specialized String.withCString<A>(_:)(v21._countAndFlagsBits, v21._object, v10), v21._object, swift_unknownObjectRelease(v10), (v22) || (v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UIImageView", 0xBuLL, 1), swift_unknownObjectRetain(v10), v24 = specialized String.withCString<A>(_:)(v23._countAndFlagsBits, v23._object, v10), v23._object, swift_unknownObjectRelease(v10), (v24) || (swift_unknownObjectRetain(v10), v25 = specialized String.withCString<A>(_:)(0x6567616D494943uLL, 0xE700000000000000, v10), 0xE700000000000000, swift_unknownObjectRelease(v10), (v25) || (swift_unknownObjectRetain(v10), v26 = specialized String.withCString<A>(_:)(0xD000000000000010, 0x800000018066E780 | 0x8000000000000000, v10), 0x800000018066E780 | 0x8000000000000000, swift_unknownObjectRelease(v10), (v26))
    {
      *(&v44 + 1) = swift_getObjectType(v10);
      *&v43 = v10;
      v18 = 5;
      goto LABEL_22;
    }

    swift_unknownObjectRetain(v10);
    v32 = specialized String.withCString<A>(_:)(0x726F6C6F43534EuLL, 0xE700000000000000, v10);
    0xE700000000000000;
    swift_unknownObjectRelease(v10);
    if (v32 & 1) != 0 || (swift_unknownObjectRetain(v10), v33 = specialized String.withCString<A>(_:)(0x726F6C6F434955uLL, 0xE700000000000000, v10), 0xE700000000000000, swift_unknownObjectRelease(v10), (v33))
    {
      *(&v44 + 1) = swift_getObjectType(v10);
      *&v43 = v10;
      v18 = 7;
      goto LABEL_22;
    }

    v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NSBezierPath", 0xCuLL, 1);
    swift_unknownObjectRetain(v10);
    v35 = specialized String.withCString<A>(_:)(v34._countAndFlagsBits, v34._object, v10);
    v34._object;
    swift_unknownObjectRelease(v10);
    if (v35 & 1) != 0 || (v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UIBezierPath", 0xCuLL, 1), swift_unknownObjectRetain(v10), v37 = specialized String.withCString<A>(_:)(v36._countAndFlagsBits, v36._object, v10), v36._object, swift_unknownObjectRelease(v10), (v37))
    {
      *(&v44 + 1) = swift_getObjectType(v10);
      *&v43 = v10;
      v18 = 8;
      goto LABEL_22;
    }

    swift_unknownObjectRetain(v10);
    v38 = specialized String.withCString<A>(_:)(0x676E69727453534EuLL, 0xE800000000000000, v10);
    0xE800000000000000;
    swift_unknownObjectRelease(v10);
    if (v38)
    {
      v39 = 0uLL;
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v10, &type metadata for String, &v39);
      if (!*(&v39 + 1))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v43 = v39;
      LOBYTE(v45) = 0;
      goto LABEL_27;
    }

    v43 = 0u;
    v44 = 0u;
    LOBYTE(v45) = -1;
    swift_unknownObjectRelease_n(v10, 2);
LABEL_12:
    outlined destroy of _PlaygroundQuickLook?(&v43);
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(a1, &v43, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v16 = *(&v43 + 1);
    *a2 = v43;
    *(a2 + 8) = v16;
    *(a2 + 32) = 0;
    return result;
  }

  *(&v44 + 1) = swift_getObjectType(v10);
  *&v43 = v10;
  v18 = 9;
LABEL_22:
  LOBYTE(v45) = v18;
LABEL_28:
  swift_unknownObjectRelease(v10);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v31 = v44;
  *a2 = v43;
  *(a2 + 16) = v31;
  *(a2 + 32) = v45;
  return result;
}

uint64_t _SwiftStdlibVersion.description.getter(unsigned int a1)
{
  v3 = _StringGuts.init(_initialCapacity:)(8);
  v5 = v3;
  v6 = v4;
  v269._countAndFlagsBits = v3;
  v269._object = v4;
  v7 = HIBYTE(v4) & 0xF;
  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v267 = a1;
  if (!v9 && (v3 & ~v4 & 0x2000000000000000) == 0)
  {
    v269._countAndFlagsBits = 0;
    v269._object = 0xE000000000000000;
    object = v4;
LABEL_57:
    object;
    goto LABEL_58;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    v4;
    0xE000000000000000;
    v17 = 0xA000000000000000;
    if (!(v6 & 0x80808080808080 | v5 & 0x8080808080808080))
    {
      v17 = 0xE000000000000000;
    }

    v269._countAndFlagsBits = v5;
    v269._object = (v17 & 0xFF00000000000000 | (v7 << 56) | v6 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_58;
  }

  0xE000000000000000;
  v11 = v8;
  if ((v6 & 0x1000000000000000) != 0)
  {
    v11 = String.UTF8View._foreignCount()();
    if ((v5 & 0x2000000000000000) == 0)
    {
LABEL_19:
      if (v11 > 15)
      {
        v19 = (_StringGuts.nativeUnusedCapacity.getter(v5, v6) & 0x8000000000000000) != 0;
        v16 = v20 | v19;
        if ((v5 & 0x2000000000000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_21;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    goto LABEL_19;
  }

  if (!swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  v12 = _StringGuts.nativeUnusedCapacity.getter(v5, v6);
  if (v13)
  {
    goto LABEL_321;
  }

  if (v11 <= 15 && (v12 & 0x8000000000000000) != 0)
  {
LABEL_24:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v22 = _StringGuts._foreignConvertedToSmall()(v5, v6);
      v23 = v238;
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v21 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v21 = _StringObject.sharedUTF8.getter(v5, v6);
        v8 = v241;
      }

      closure #1 in _StringGuts._convertedToSmall()(v21, v8, &v268, v10);
      v23 = *(&v268 + 1);
      v22 = v268;
    }

    v24 = 0xE000000000000000;
    0xE000000000000000;
    v25._rawBits = 1;
    v26._rawBits = 1;
    v27._rawBits = _StringGuts.validateScalarRange(_:)(v25, v26, 0, 0xE000000000000000)._rawBits;
    if (v27._rawBits < 0x10000)
    {
      v27._rawBits |= 3;
    }

    if (v27._rawBits >> 16 || v28._rawBits >= 0x10000)
    {
      v30 = specialized static String._copying(_:)(v27._rawBits, v28._rawBits, 0, 0xE000000000000000);
      v24 = v35;
      0xE000000000000000;
    }

    else
    {
      v30 = 0;
    }

    if ((v24 & 0x2000000000000000) != 0)
    {
      v24;
    }

    else if ((v24 & 0x1000000000000000) != 0)
    {
      v30 = _StringGuts._foreignConvertedToSmall()(v30, v24);
      v261 = v260;
      v24;
      v24 = v261;
    }

    else
    {
      if ((v30 & 0x1000000000000000) != 0)
      {
        v239 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v240 = v30 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v239 = _StringObject.sharedUTF8.getter(v30, v24);
      }

      closure #1 in _StringGuts._convertedToSmall()(v239, v240, &v268, v29);
      v24;
      v24 = *(&v268 + 1);
      v30 = v268;
    }

    v36 = HIBYTE(v23) & 0xF;
    v37 = HIBYTE(v24) & 0xF;
    v38 = v37 + v36;
    if (v37 + v36 > 0xF)
    {
      goto LABEL_321;
    }

    v1 = 0xE000000000000000;
    0xE000000000000000;
    if (v37)
    {
      v39 = 0;
      v40 = 0;
      v41 = 8 * v36;
      do
      {
        v42 = v24 >> (v39 & 0x38);
        if (v40 < 8)
        {
          v42 = v30 >> v39;
        }

        v43 = (v42 << (v41 & 0x38)) | ((-255 << (v41 & 0x38)) - 1) & v23;
        v44 = (v42 << v41) | ((-255 << v41) - 1) & v22;
        if (v36 <= 7)
        {
          v22 = v44;
        }

        else
        {
          v23 = v43;
        }

        ++v36;
        v41 += 8;
        v39 += 8;
        ++v40;
      }

      while (8 * v37 != v39);
    }

    0xE000000000000000;
    v45 = 0xA000000000000000;
    if (!(v22 & 0x8080808080808080 | v23 & 0x80808080808080))
    {
      v45 = 0xE000000000000000;
    }

    object = v269._object;
    v269._countAndFlagsBits = v22;
    v269._object = (v45 & 0xFF00000000000000 | (v38 << 56) | v23 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_57;
  }

  v14 = (_StringGuts.nativeUnusedCapacity.getter(v5, v6) & 0x8000000000000000) != 0;
  v16 = v15 | v14;
LABEL_21:
  if (swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (v16)
  {
LABEL_34:
    v31 = _StringGuts.nativeCapacity.getter(v5, v6);
    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = v31;
    }

    if (v33 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_321;
    }

    v34 = 2 * v33;
    if (v34 > v11)
    {
      v11 = v34;
    }
  }

  _StringGuts.grow(_:)(v11);
LABEL_41:
  v268 = 0uLL;
  closure #1 in _StringGuts.append(_:)(&v268, 0, &v269, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
LABEL_58:
  v46 = _uint64ToString(_:radix:uppercase:)(HIWORD(a1), 10, 0);
  countAndFlagsBits = v46._countAndFlagsBits;
  v48 = v46._object;
  v49 = v269._countAndFlagsBits;
  v50 = v269._object;
  v51 = (v269._object >> 56) & 0xF;
  v52 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v269._object & 0x2000000000000000) != 0)
  {
    v52 = (v269._object >> 56) & 0xF;
  }

  if (!v52 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
  {
    v269 = v46;
    v50;
    goto LABEL_122;
  }

  v53 = (v46._object & 0x2000000000000000) == 0;
  v54 = (v46._object >> 56) & 0xF;
  if ((v269._object & 0x2000000000000000) == 0)
  {
    v55 = v46._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v1 = (v46._object >> 56) & 0xF;
    if ((v46._object & 0x2000000000000000) != 0)
    {
LABEL_68:
      if ((v46._object & 0x1000000000000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_97;
    }

LABEL_67:
    v1 = v55;
    goto LABEL_68;
  }

  if ((v46._object & 0x2000000000000000) == 0)
  {
    v55 = v46._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v53 = 1;
    goto LABEL_67;
  }

  v73 = v51 + v54;
  if (v51 + v54 >= 0x10)
  {
    v53 = 0;
    v55 = v46._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v1 = (v46._object >> 56) & 0xF;
    if ((v46._object & 0x1000000000000000) == 0)
    {
LABEL_69:
      v46._object;
      v57 = v1;
      if ((v50 & 0x1000000000000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_100;
    }

LABEL_97:
    swift_bridgeObjectRetain_n(v46._object, 2);
    v74._rawBits = 1;
    v75._rawBits = (v1 << 16) | 1;
    v76._rawBits = _StringGuts.validateScalarRange(_:)(v74, v75, v46._countAndFlagsBits, v46._object)._rawBits;
    if (v76._rawBits < 0x10000)
    {
      v76._rawBits |= 3;
    }

    v57 = String.UTF8View.distance(from:to:)(v76, v77);
    v46._object;
    v49 = v269._countAndFlagsBits;
    v50 = v269._object;
    if ((v269._object & 0x1000000000000000) == 0)
    {
LABEL_70:
      if ((v50 & 0x2000000000000000) != 0)
      {
        goto LABEL_74;
      }

      v58 = (v49 & 0xFFFFFFFFFFFFLL) + v57;
      if (!__OFADD__(v49 & 0xFFFFFFFFFFFFLL, v57))
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    }

LABEL_100:
    v78 = String.UTF8View._foreignCount()();
    v58 = v78 + v57;
    if (!__OFADD__(v78, v57))
    {
LABEL_75:
      if ((v49 & ~v50 & 0x2000000000000000) == 0 || (isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v50 & 0xFFFFFFFFFFFFFFFLL), v49 = v269._countAndFlagsBits, v50 = v269._object, !isUniquelyReferenced_nonNull_native))
      {
        if (v58 > 15)
        {
          goto LABEL_81;
        }

        goto LABEL_87;
      }

      v61 = _StringGuts.nativeUnusedCapacity.getter(v269._countAndFlagsBits, v269._object);
      if ((v62 & 1) == 0)
      {
        if (v58 > 15 || (v50 & 0x2000000000000000) == 0 && v61 >= v57)
        {
LABEL_81:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v58, v57);
          if ((v46._object & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v46._countAndFlagsBits, v46._object, 0, v1);
            swift_bridgeObjectRelease_n(v46._object, 2);
            LOWORD(a1) = v267;
            goto LABEL_122;
          }

          LOWORD(a1) = v267;
          if (v53)
          {
            if ((v46._countAndFlagsBits & 0x1000000000000000) != 0)
            {
              v63 = (v46._object & 0xFFFFFFFFFFFFFFFLL) + 32;
              v64 = v55;
            }

            else
            {
              v250 = _StringObject.sharedUTF8.getter(v46._countAndFlagsBits, v46._object);
              if (v251 < v55)
              {
LABEL_319:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v63 = v250;
              v64 = v251;
              LOWORD(a1) = v267;
            }

            v65 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v55, v63, v64);
            v67 = v46._countAndFlagsBits >> 63;
          }

          else
          {
            v67 = (v46._object >> 62) & 1;
            *&v268 = v46._countAndFlagsBits;
            *(&v268 + 1) = v46._object & 0xFFFFFFFFFFFFFFLL;
            v65 = &v268;
            v66 = (v46._object >> 56) & 0xF;
          }

          closure #1 in _StringGuts.append(_:)(v65, v66, &v269, v67);
          swift_bridgeObjectRelease_n(v46._object, 2);
          goto LABEL_122;
        }

LABEL_87:
        if ((v50 & 0x2000000000000000) != 0)
        {
          LOWORD(a1) = v267;
          goto LABEL_89;
        }

        goto LABEL_276;
      }

LABEL_321:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    do
    {
LABEL_73:
      __break(1u);
LABEL_74:
      v59 = HIBYTE(v50) & 0xF;
      v58 = v59 + v57;
    }

    while (__OFADD__(v59, v57));
    goto LABEL_75;
  }

  if (v54)
  {
    v86 = 0;
    v87 = 0;
    v88 = 8 * v51;
    do
    {
      v89 = v46._object >> (v86 & 0x38);
      if (v87 < 8)
      {
        v89 = v46._countAndFlagsBits >> v86;
      }

      v90 = (v89 << (v88 & 0x38)) | ((-255 << (v88 & 0x38)) - 1) & v50;
      v91 = (v89 << v88) | ((-255 << v88) - 1) & v49;
      if (v51 <= 7)
      {
        v49 = v91;
      }

      else
      {
        v50 = v90;
      }

      ++v51;
      v88 += 8;
      v86 += 8;
      ++v87;
    }

    while (8 * v54 != v86);
  }

  v46._object;
  v92 = 0xA000000000000000;
  if (!(v49 & 0x8080808080808080 | v50 & 0x80808080808080))
  {
    v92 = 0xE000000000000000;
  }

  v93 = (v92 & 0xFF00000000000000 | (v73 << 56) | v50 & 0xFFFFFFFFFFFFFFLL);
  v269._object;
  v269._countAndFlagsBits = v49;
  v269._object = v93;
  while (1)
  {
LABEL_122:
    v48 = v269._countAndFlagsBits;
    v49 = v269._object;
    v94 = (v269._object >> 56) & 0xF;
    if ((v269._object & 0x2000000000000000) != 0)
    {
      v95 = (v269._object >> 56) & 0xF;
    }

    else
    {
      v95 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v95 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
    {
      v269._countAndFlagsBits = 46;
      v269._object = 0xE100000000000000;
      v122 = v49;
LABEL_153:
      v122;
      goto LABEL_154;
    }

    if ((v269._object & 0x2000000000000000) == 0 || v94 == 15)
    {
      0xE100000000000000;
      if ((v49 & 0x1000000000000000) == 0)
      {
        v104 = __OFADD__(v95, 1);
        v105 = v95 + 1;
        if (v104)
        {
          goto LABEL_272;
        }

        goto LABEL_137;
      }

      v228 = String.UTF8View._foreignCount()();
      v105 = v228 + 1;
      if (!__OFADD__(v228, 1))
      {
LABEL_137:
        if ((v48 & ~v49 & 0x2000000000000000) != 0 && (v106 = swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL), v48 = v269._countAndFlagsBits, v49 = v269._object, v106))
        {
          v107 = _StringGuts.nativeUnusedCapacity.getter(v269._countAndFlagsBits, v269._object);
          if (v108)
          {
            goto LABEL_321;
          }

          if (v105 > 15 || (v49 & 0x2000000000000000) == 0 && v107 > 0)
          {
LABEL_143:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v105, 1);
            v268 = xmmword_18071DF60;
            closure #1 in _StringGuts.append(_:)(&v268, 1uLL, &v269, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            goto LABEL_154;
          }
        }

        else if (v105 > 15)
        {
          goto LABEL_143;
        }

        if ((v49 & 0x2000000000000000) == 0)
        {
          if ((v49 & 0x1000000000000000) != 0)
          {
            v48 = _StringGuts._foreignConvertedToSmall()(v48, v49);
            v49 = v262;
          }

          else
          {
            if ((v48 & 0x1000000000000000) != 0)
            {
              v242 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v243 = v48 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v242 = _StringObject.sharedUTF8.getter(v48, v49);
            }

            closure #1 in _StringGuts._convertedToSmall()(v242, v243, &v268, v103);
            v49 = *(&v268 + 1);
            v48 = v268;
          }

          LOWORD(a1) = v267;
        }

        0xE100000000000000;
        v109._rawBits = 1;
        v110._rawBits = 65537;
        v111._rawBits = _StringGuts.validateScalarRange(_:)(v109, v110, 0x2EuLL, 0xE100000000000000)._rawBits;
        if (v111._rawBits < 0x10000)
        {
          v111._rawBits |= 3;
        }

        v113 = Substring.description.getter(v111._rawBits, v112._rawBits, 0x2EuLL, 0xE100000000000000);
        v115 = v114;
        0xE100000000000000;
        if ((v115 & 0x2000000000000000) != 0)
        {
          v115;
        }

        else if ((v115 & 0x1000000000000000) != 0)
        {
          v113 = _StringGuts._foreignConvertedToSmall()(v113, v115);
          v1 = v263;
          v115;
          v115 = v1;
          LOWORD(a1) = v267;
        }

        else
        {
          if ((v113 & 0x1000000000000000) != 0)
          {
            v244 = ((v115 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v245 = v113 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v244 = _StringObject.sharedUTF8.getter(v113, v115);
          }

          closure #1 in _StringGuts._convertedToSmall()(v244, v245, &v268, v116);
          v115;
          v115 = *(&v268 + 1);
          v113 = v268;
          LOWORD(a1) = v267;
        }

        v117 = specialized _SmallString.init(_:appending:)(v48, v49, v113, v115);
        if (v119)
        {
          goto LABEL_321;
        }

        v120 = v117;
        v121 = v118;
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        v122 = v269._object;
        v269._countAndFlagsBits = v120;
        v269._object = v121;
        goto LABEL_153;
      }

LABEL_272:
      __break(1u);
LABEL_273:
      v229 = String.UTF8View._foreignCount()();
      countAndFlagsBits = v229 + 1;
      if (__OFADD__(v229, 1))
      {
        goto LABEL_275;
      }

LABEL_229:
      if ((v48 & ~v49 & 0x2000000000000000) != 0 && (v178 = swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL), v48 = v269._countAndFlagsBits, v49 = v269._object, v178))
      {
        v179 = _StringGuts.nativeUnusedCapacity.getter(v269._countAndFlagsBits, v269._object);
        if (v180)
        {
          goto LABEL_321;
        }

        if (countAndFlagsBits > 15 || (v49 & 0x2000000000000000) == 0 && v179 > 0)
        {
LABEL_235:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(countAndFlagsBits, 1);
          v268 = xmmword_18071DF60;
          closure #1 in _StringGuts.append(_:)(&v268, 1uLL, &v269, 1);
          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
          goto LABEL_246;
        }
      }

      else if (countAndFlagsBits > 15)
      {
        goto LABEL_235;
      }

      if ((v49 & 0x2000000000000000) == 0)
      {
        if ((v49 & 0x1000000000000000) != 0)
        {
          v48 = _StringGuts._foreignConvertedToSmall()(v48, v49);
          v49 = v264;
        }

        else
        {
          if ((v48 & 0x1000000000000000) != 0)
          {
            v246 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v247 = v48 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v246 = _StringObject.sharedUTF8.getter(v48, v49);
          }

          closure #1 in _StringGuts._convertedToSmall()(v246, v247, &v268, v56);
          v49 = *(&v268 + 1);
          v48 = v268;
        }

        LOBYTE(a1) = v267;
      }

      0xE100000000000000;
      v181._rawBits = 1;
      v182._rawBits = 65537;
      v183._rawBits = _StringGuts.validateScalarRange(_:)(v181, v182, 0x2EuLL, 0xE100000000000000)._rawBits;
      if (v183._rawBits < 0x10000)
      {
        v183._rawBits |= 3;
      }

      v185 = Substring.description.getter(v183._rawBits, v184._rawBits, 0x2EuLL, 0xE100000000000000);
      v187 = v186;
      0xE100000000000000;
      if ((v187 & 0x2000000000000000) != 0)
      {
        v187;
      }

      else if ((v187 & 0x1000000000000000) != 0)
      {
        v185 = _StringGuts._foreignConvertedToSmall()(v185, v187);
        v266 = v265;
        v187;
        v187 = v266;
        LOBYTE(a1) = v267;
      }

      else
      {
        if ((v185 & 0x1000000000000000) != 0)
        {
          v248 = ((v187 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v249 = v185 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v248 = _StringObject.sharedUTF8.getter(v185, v187);
        }

        closure #1 in _StringGuts._convertedToSmall()(v248, v249, &v268, v188);
        v187;
        v187 = *(&v268 + 1);
        v185 = v268;
        LOBYTE(a1) = v267;
      }

      v189 = specialized _SmallString.init(_:appending:)(v48, v49, v185, v187);
      if ((v191 & 1) == 0)
      {
        v192 = v189;
        v193 = v190;
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        v194 = v269._object;
        v269._countAndFlagsBits = v192;
        v269._object = v193;
        goto LABEL_245;
      }

      goto LABEL_321;
    }

    v96 = 8 * ((v269._object >> 56) & 7);
    v97 = (-255 << v96) - 1;
    v98 = 46 << v96;
    v99 = v97 & v269._object | v98;
    v100 = v97 & v269._countAndFlagsBits | v98;
    if (v94 < 8)
    {
      v48 = v100;
    }

    else
    {
      v49 = v99;
    }

    0xE100000000000000;
    v101 = 0xA000000000000000;
    if (!(v48 & 0x8080808080808080 | v49 & 0x80808080808080))
    {
      v101 = 0xE000000000000000;
    }

    v102 = ((v101 & 0xFF00000000000000 | (v94 << 56) | v49 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000);
    v269._object;
    v269._countAndFlagsBits = v48;
    v269._object = v102;
LABEL_154:
    v123 = _uint64ToString(_:radix:uppercase:)(BYTE1(a1), 10, 0);
    v124 = v269._countAndFlagsBits;
    v50 = v269._object;
    v125 = (v269._object >> 56) & 0xF;
    v126 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v269._object & 0x2000000000000000) != 0)
    {
      v126 = (v269._object >> 56) & 0xF;
    }

    if (!v126 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
    {
      v269 = v123;
      v50;
      goto LABEL_214;
    }

    v127 = (v123._object & 0x2000000000000000) == 0;
    v128 = (v123._object >> 56) & 0xF;
    if ((v269._object & 0x2000000000000000) == 0)
    {
      v129 = v123._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v1 = (v123._object >> 56) & 0xF;
      if ((v123._object & 0x2000000000000000) != 0)
      {
LABEL_164:
        if ((v123._object & 0x1000000000000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_194;
      }

LABEL_163:
      v1 = v129;
      goto LABEL_164;
    }

    if ((v123._object & 0x2000000000000000) == 0)
    {
      v129 = v123._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v127 = 1;
      goto LABEL_163;
    }

    v155 = v125 + v128;
    if (v125 + v128 < 0x10)
    {
      if (v128)
      {
        v161 = 0;
        v162 = 0;
        v163 = 8 * v125;
        do
        {
          v164 = v123._object >> (v161 & 0x38);
          if (v162 < 8)
          {
            v164 = v123._countAndFlagsBits >> v161;
          }

          v165 = (v164 << (v163 & 0x38)) | ((-255 << (v163 & 0x38)) - 1) & v50;
          v166 = (v164 << v163) | ((-255 << v163) - 1) & v124;
          if (v125 <= 7)
          {
            v124 = v166;
          }

          else
          {
            v50 = v165;
          }

          ++v125;
          v163 += 8;
          v161 += 8;
          ++v162;
        }

        while (8 * v128 != v161);
      }

      v123._object;
      v167 = 0xA000000000000000;
      if (!(v124 & 0x8080808080808080 | v50 & 0x80808080808080))
      {
        v167 = 0xE000000000000000;
      }

      v168 = (v167 & 0xFF00000000000000 | (v155 << 56) | v50 & 0xFFFFFFFFFFFFFFLL);
      v269._object;
      v269._countAndFlagsBits = v124;
      v269._object = v168;
      goto LABEL_214;
    }

    v127 = 0;
    v129 = v123._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v1 = (v123._object >> 56) & 0xF;
    if ((v123._object & 0x1000000000000000) == 0)
    {
LABEL_165:
      v123._object;
      v131 = v1;
      if ((v50 & 0x1000000000000000) != 0)
      {
        goto LABEL_197;
      }

      goto LABEL_166;
    }

LABEL_194:
    swift_bridgeObjectRetain_n(v123._object, 2);
    v156._rawBits = 1;
    v157._rawBits = (v1 << 16) | 1;
    v158._rawBits = _StringGuts.validateScalarRange(_:)(v156, v157, v123._countAndFlagsBits, v123._object)._rawBits;
    if (v158._rawBits < 0x10000)
    {
      v158._rawBits |= 3;
    }

    v131 = String.UTF8View.distance(from:to:)(v158, v159);
    v123._object;
    v124 = v269._countAndFlagsBits;
    v50 = v269._object;
    if ((v269._object & 0x1000000000000000) != 0)
    {
LABEL_197:
      v160 = String.UTF8View._foreignCount()();
      v132 = v160 + v131;
      if (!__OFADD__(v160, v131))
      {
        goto LABEL_171;
      }

      goto LABEL_169;
    }

LABEL_166:
    if ((v50 & 0x2000000000000000) == 0)
    {
      v132 = (v124 & 0xFFFFFFFFFFFFLL) + v131;
      if (!__OFADD__(v124 & 0xFFFFFFFFFFFFLL, v131))
      {
        goto LABEL_171;
      }

      goto LABEL_169;
    }

    while (1)
    {
      v133 = HIBYTE(v50) & 0xF;
      v132 = v133 + v131;
      if (!__OFADD__(v133, v131))
      {
        break;
      }

LABEL_169:
      __break(1u);
    }

LABEL_171:
    if ((v124 & ~v50 & 0x2000000000000000) != 0 && (v134 = swift_isUniquelyReferenced_nonNull_native(v50 & 0xFFFFFFFFFFFFFFFLL), v124 = v269._countAndFlagsBits, v50 = v269._object, v134))
    {
      v135 = _StringGuts.nativeUnusedCapacity.getter(v269._countAndFlagsBits, v269._object);
      if (v136)
      {
        goto LABEL_321;
      }

      if (v132 > 15 || (v50 & 0x2000000000000000) == 0 && v135 >= v131)
      {
LABEL_177:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v132, v131);
        if ((v123._object & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(v123._countAndFlagsBits, v123._object, 0, v1);
          swift_bridgeObjectRelease_n(v123._object, 2);
          LOBYTE(a1) = v267;
        }

        else
        {
          LOBYTE(a1) = v267;
          if (v127)
          {
            if ((v123._countAndFlagsBits & 0x1000000000000000) != 0)
            {
              v137 = (v123._object & 0xFFFFFFFFFFFFFFFLL) + 32;
              v138 = v129;
            }

            else
            {
              v252 = _StringObject.sharedUTF8.getter(v123._countAndFlagsBits, v123._object);
              if (v253 < v129)
              {
                goto LABEL_319;
              }

              v137 = v252;
              v138 = v253;
              LOBYTE(a1) = v267;
            }

            v139 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v129, v137, v138);
            v141 = v123._countAndFlagsBits >> 63;
          }

          else
          {
            v141 = (v123._object >> 62) & 1;
            *&v268 = v123._countAndFlagsBits;
            *(&v268 + 1) = v123._object & 0xFFFFFFFFFFFFFFLL;
            v139 = &v268;
            v140 = (v123._object >> 56) & 0xF;
          }

          closure #1 in _StringGuts.append(_:)(v139, v140, &v269, v141);
          swift_bridgeObjectRelease_n(v123._object, 2);
        }

        goto LABEL_214;
      }
    }

    else if (v132 > 15)
    {
      goto LABEL_177;
    }

    if ((v50 & 0x2000000000000000) != 0)
    {
      LOBYTE(a1) = v267;
    }

    else
    {
      LOBYTE(a1) = v267;
      if ((v50 & 0x1000000000000000) != 0)
      {
        v124 = _StringGuts._foreignConvertedToSmall()(v124, v50);
        v50 = v257;
      }

      else
      {
        if ((v124 & 0x1000000000000000) != 0)
        {
          v234 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v235 = v124 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v234 = _StringObject.sharedUTF8.getter(v124, v50);
        }

        closure #1 in _StringGuts._convertedToSmall()(v234, v235, &v268, v130);
        v50 = *(&v268 + 1);
        v124 = v268;
      }
    }

    v123._object;
    v142._rawBits = 1;
    v143._rawBits = (v1 << 16) | 1;
    v144._rawBits = _StringGuts.validateScalarRange(_:)(v142, v143, v123._countAndFlagsBits, v123._object)._rawBits;
    if (v144._rawBits < 0x10000)
    {
      v144._rawBits |= 3;
    }

    v1 = Substring.description.getter(v144._rawBits, v145._rawBits, v123._countAndFlagsBits, v123._object);
    v147 = v146;
    v123._object;
    if ((v147 & 0x2000000000000000) != 0)
    {
      v147;
    }

    else if ((v147 & 0x1000000000000000) != 0)
    {
      v1 = _StringGuts._foreignConvertedToSmall()(v1, v147);
      v259 = v258;
      v147;
      v147 = v259;
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v236 = ((v147 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v237 = v1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v236 = _StringObject.sharedUTF8.getter(v1, v147);
      }

      closure #1 in _StringGuts._convertedToSmall()(v236, v237, &v268, v148);
      v147;
      v147 = *(&v268 + 1);
      v1 = v268;
    }

    v149 = specialized _SmallString.init(_:appending:)(v124, v50, v1, v147);
    if (v151)
    {
      goto LABEL_321;
    }

    v152 = v149;
    v153 = v150;
    swift_bridgeObjectRelease_n(v123._object, 2);
    v154 = v269._object;
    v269._countAndFlagsBits = v152;
    v269._object = v153;
    v154;
LABEL_214:
    v48 = v269._countAndFlagsBits;
    v49 = v269._object;
    v169 = (v269._object >> 56) & 0xF;
    v170 = (v269._object & 0x2000000000000000) != 0 ? (v269._object >> 56) & 0xF : v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if (!v170 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
    {
      break;
    }

    if ((v269._object & 0x2000000000000000) != 0 && v169 != 15)
    {
      v171 = 8 * ((v269._object >> 56) & 7);
      v172 = (-255 << v171) - 1;
      v173 = 46 << v171;
      v174 = v172 & v269._object | v173;
      v175 = v172 & v269._countAndFlagsBits | v173;
      if (v169 < 8)
      {
        v48 = v175;
      }

      else
      {
        v49 = v174;
      }

      0xE100000000000000;
      v176 = 0xA000000000000000;
      if (!(v48 & 0x8080808080808080 | v49 & 0x80808080808080))
      {
        v176 = 0xE000000000000000;
      }

      v177 = ((v176 & 0xFF00000000000000 | (v169 << 56) | v49 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000);
      v269._object;
      v269._countAndFlagsBits = v48;
      v269._object = v177;
      goto LABEL_246;
    }

    0xE100000000000000;
    if ((v49 & 0x1000000000000000) != 0)
    {
      goto LABEL_273;
    }

    v104 = __OFADD__(v170, 1);
    countAndFlagsBits = v170 + 1;
    if (!v104)
    {
      goto LABEL_229;
    }

LABEL_275:
    __break(1u);
LABEL_276:
    LOWORD(a1) = v267;
    if ((v50 & 0x1000000000000000) != 0)
    {
      v49 = _StringGuts._foreignConvertedToSmall()(v49, v50);
      v50 = v254;
    }

    else
    {
      if ((v49 & 0x1000000000000000) != 0)
      {
        v230 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v231 = v49 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v230 = _StringObject.sharedUTF8.getter(v49, v50);
      }

      closure #1 in _StringGuts._convertedToSmall()(v230, v231, &v268, v56);
      v50 = *(&v268 + 1);
      v49 = v268;
    }

LABEL_89:
    v48;
    v68._rawBits = 1;
    v69._rawBits = (v1 << 16) | 1;
    v70._rawBits = _StringGuts.validateScalarRange(_:)(v68, v69, countAndFlagsBits, v48)._rawBits;
    if (v70._rawBits < 0x10000)
    {
      v70._rawBits |= 3;
    }

    if (v70._rawBits >> 16 || v71._rawBits >> 16 != v1)
    {
      countAndFlagsBits = specialized static String._copying(_:)(v70._rawBits, v71._rawBits, countAndFlagsBits, v48);
      v1 = v79;
      v48;
    }

    else
    {
      v1 = v48;
    }

    if ((v1 & 0x2000000000000000) != 0)
    {
      v1;
    }

    else if ((v1 & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v1);
      v256 = v255;
      v1;
      v1 = v256;
    }

    else
    {
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v232 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v233 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v232 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v1);
      }

      closure #1 in _StringGuts._convertedToSmall()(v232, v233, &v268, v72);
      v1;
      v1 = *(&v268 + 1);
      countAndFlagsBits = v268;
    }

    v80 = specialized _SmallString.init(_:appending:)(v49, v50, countAndFlagsBits, v1);
    if (v82)
    {
      goto LABEL_321;
    }

    v83 = v80;
    v84 = v81;
    swift_bridgeObjectRelease_n(v48, 2);
    v85 = v269._object;
    v269._countAndFlagsBits = v83;
    v269._object = v84;
    v85;
  }

  v269._countAndFlagsBits = 46;
  v269._object = 0xE100000000000000;
  v194 = v49;
LABEL_245:
  v194;
LABEL_246:
  v195 = _uint64ToString(_:radix:uppercase:)(a1, 10, 0);
  v196 = v269._object;
  v197 = (v269._object >> 56) & 0xF;
  if ((v269._object & 0x2000000000000000) == 0)
  {
    v197 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v197 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
  {
    v269 = v195;
    v196;
    goto LABEL_258;
  }

  if ((v269._object & 0x2000000000000000) != 0)
  {
    if ((v195._object & 0x2000000000000000) != 0)
    {
      v199 = specialized _SmallString.init(_:appending:)(v269._countAndFlagsBits, v269._object, v195._countAndFlagsBits, v195._object);
      if (v201)
      {
        goto LABEL_256;
      }

      v226 = v199;
      v227 = v200;
      v195._object;
      v269._object;
      v269._countAndFlagsBits = v226;
      v269._object = v227;
      goto LABEL_258;
    }

LABEL_254:
    v198 = v195._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_257;
  }

  if ((v195._object & 0x2000000000000000) == 0)
  {
    goto LABEL_254;
  }

LABEL_256:
  v198 = (v195._object >> 56) & 0xF;
LABEL_257:
  v195._object;
  _StringGuts.append(_:)(v195._countAndFlagsBits, v195._object, 0, v198, v202, v203, v204, v205, v206, v207, v208, v209);
  swift_bridgeObjectRelease_n(v195._object, 2);
LABEL_258:
  v210 = v269._object;
  v211 = (v269._object >> 56) & 0xF;
  if ((v269._object & 0x2000000000000000) == 0)
  {
    v211 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v211 || (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) != 0)
  {
    if ((v269._object & 0x2000000000000000) != 0 && (v212 = specialized _SmallString.init(_:appending:)(v269._countAndFlagsBits, v269._object, 0, 0xE000000000000000), (v214 & 1) == 0))
    {
      v223 = v212;
      v224 = v213;
      0xE000000000000000;
      v269._object;
      v269._countAndFlagsBits = v223;
      v269._object = v224;
    }

    else
    {
      0xE000000000000000;
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v215, v216, v217, v218, v219, v220, v221, v222);
      swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    }
  }

  else
  {
    v269._countAndFlagsBits = 0;
    v269._object = 0xE000000000000000;
    v210;
  }

  return v269._countAndFlagsBits;
}

void CollectionDifference.init<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (static CollectionDifference._validateChanges<A>(_:)(a1, a2, a3, a4))
  {
    CollectionDifference.init<A>(_validatedChanges:)(a1, a2, a3, a4, &v11);
    v10 = v11;
  }

  else
  {
    (*(*(a3 - 1) + 8))(a1, a3);
    v10 = 0uLL;
  }

  *a5 = v10;
}

uint64_t static CollectionDifference._validateChanges<A>(_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v116 = a2;
  v7 = type metadata accessor for CollectionDifference.Change(0, a2, a3, a4);
  v114 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v108 = (&v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v109 = &v92 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = (&v92 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v110 = (&v92 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v92 - v16;
  v19 = type metadata accessor for Optional(0, v7, v17, v18);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v92 - v21;
  v23 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v26, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v28 = v27;
  v105 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v92 - v29;
  if ((*(a4 + 104))(a3, a4))
  {
    v31 = 1;
    return v31 & 1;
  }

  v119 = &_swiftEmptySetSingleton;
  v120 = &_swiftEmptySetSingleton;
  (*(v23 + 16))(v25, a1, a3);
  (*(v26 + 32))(a3, v26);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v26, a3, v28, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v33 = *(AssociatedConformanceWitness + 16);
  v102 = AssociatedConformanceWitness + 16;
  v103 = AssociatedConformanceWitness;
  v101 = v33;
  (v33)(v28);
  v34 = v114;
  v35 = *(v114 + 48);
  v36 = v7;
  v100 = v114 + 48;
  v99 = v35;
  v37 = v35(v22, 1, v7);
  v38 = v34;
  v39 = v28;
  v40 = v30;
  if (v37 == 1)
  {
    v107 = &_swiftEmptyDictionarySingleton;
    v104 = &_swiftEmptyDictionarySingleton;
LABEL_5:
    (*(v105 + 8))(v40, v39);
    v119;
    v120;
    v41 = v104;
    v42 = v107;
    v31 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSi_SiTt1g5(v104, v107);
    v42;
    v41;
    return v31 & 1;
  }

  v44 = *(v38 + 32);
  v43 = v38 + 32;
  v106 = v44;
  v96 = (v43 - 16);
  v95 = v116 - 8;
  v93 = (v43 - 24);
  v104 = &_swiftEmptyDictionarySingleton;
  v107 = &_swiftEmptyDictionarySingleton;
  v114 = v43;
  v98 = v28;
  v97 = v30;
  v94 = v22;
  while (1)
  {
    v45 = v111;
    v106(v111, v22, v36);
    v46 = *v96;
    v47 = v110;
    (*v96)(v110, v45, v36);
    v117 = *v47;
    v48 = v116;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v116, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v50 = *(v48 - 8);
    v51 = *(v50 + 8);
    v52 = v47 + *(v49 + 48);
    v112 = v50 + 8;
    v113 = v51;
    v51(v52, v48);
    if (v117 < 0)
    {
LABEL_39:
      (*v93)(v45, v36);
      (*(v105 + 8))(v97, v98);
      v119;
      v91 = v120;
      v107;
      v104;
      v89 = v91;
      goto LABEL_37;
    }

    v53 = v115;
    v46(v115, v45, v36);
    LODWORD(v53) = swift_getEnumCaseMultiPayload(v53, v36);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v48, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v55 = *(v54 + 48);
    if (v53 == 1)
    {
      v56 = v119;
      v57 = v116;
      v58 = v117;
      if (v119[2])
      {
        v59 = specialized static Hasher._hash(seed:_:)(v119[5], v117);
        v60 = -1 << *(v56 + 32);
        v61 = v59 & ~v60;
        if ((*(v56 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
        {
          v62 = ~v60;
          while (*(*(v56 + 48) + 8 * v61) != v58)
          {
            v61 = (v61 + 1) & v62;
            if (((*(v56 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          (*v93)(v45, v36);
          (*(v105 + 8))(v97, v98);
          v56;
          v87 = v120;
          goto LABEL_35;
        }
      }

LABEL_16:
      v63 = v46;
    }

    else
    {
      v64 = v120;
      v57 = v116;
      v58 = v117;
      if (v120[2])
      {
        v65 = specialized static Hasher._hash(seed:_:)(v120[5], v117);
        v66 = -1 << *(v64 + 32);
        v67 = v65 & ~v66;
        if ((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
        {
          v68 = ~v66;
          while (*(*(v64 + 48) + 8 * v67) != v58)
          {
            v67 = (v67 + 1) & v68;
            if (((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          (*v93)(v45, v36);
          (*(v105 + 8))(v97, v98);
          v86 = v119;
          v64;
          v87 = v86;
LABEL_35:
          v87;
          v113(v115 + v55, v57);
          v88 = v107;
LABEL_36:
          v88;
          v89 = v104;
          goto LABEL_37;
        }
      }

LABEL_22:
      v63 = v46;
    }

    specialized Set._Variant.insert(_:)(&v118, v58);
    v69 = v113;
    v113(v115 + v55, v57);
    v70 = v109;
    v63(v109, v45, v36);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v57, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v72 = &v70[*(v71 + 64)];
    v73 = *v72;
    v74 = v72[8];
    v69(&v70[*(v71 + 48)], v57);
    if (v74 != 1)
    {
      break;
    }

    (*v93)(v45, v36);
LABEL_8:
    v22 = v94;
    v40 = v97;
    v39 = v98;
    v101(v98, v103);
    if (v99(v22, 1, v36) == 1)
    {
      goto LABEL_5;
    }
  }

  if (v73 < 0)
  {
    goto LABEL_39;
  }

  v75 = v108;
  v106(v108, v45, v36);
  LODWORD(v75) = swift_getEnumCaseMultiPayload(v75, v36);
  swift_getTupleTypeMetadata3(0, &type metadata for Int, v57, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
  v77 = *(v76 + 48);
  if (v75 != 1)
  {
    v82 = v107;
    v83 = v117;
    if (v107[2])
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v73);
      v82 = v107;
      if (v84)
      {
        (*(v105 + 8))(v97, v98);
        v119;
        v120;
        v113(v108 + v77, v57);
        v88 = v82;
        goto LABEL_36;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v82);
    v118 = v82;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v83, v73, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), canonical specialized generic type metadata accessor for _DictionaryStorage<Int, Int>, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), &type metadata for Int);
    v107 = v118;
    goto LABEL_32;
  }

  v78 = v104;
  v79 = v117;
  if (!v104[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v117), v78 = v104, (v80 & 1) == 0))
  {
    v81 = swift_isUniquelyReferenced_nonNull_native(v78);
    v118 = v78;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, v79, v81, specialized __RawDictionaryStorage.find<A>(_:), canonical specialized generic type metadata accessor for _DictionaryStorage<Int, Int>, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), &type metadata for Int);
    v104 = v118;
LABEL_32:
    v113(v108 + v77, v57);
    goto LABEL_8;
  }

  (*(v105 + 8))(v97, v98);
  v119;
  v120;
  v113(v108 + v77, v57);
  v107;
  v89 = v78;
LABEL_37:
  v89;
  v31 = 0;
  return v31 & 1;
}

void CollectionDifference.init<A>(_validatedChanges:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __objc2_class ***a5@<X8>)
{
  v10 = type metadata accessor for CollectionDifference.Change(0, a2, a3, a4);
  v11 = *(v10 - 1);
  v74 = *(v11 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v72 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v81 = a2;
  v82 = a3;
  v83 = a4;
  v75 = v16;
  v76 = a1;
  (*(v16 + 16))(&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v84 = (*(*(a4 + 8) + 56))(a3);
  v19 = type metadata accessor for ContiguousArray(0, v10, v17, v18);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v19, v20);
  v23 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v19, v22);
  MutableCollection<>.sort(by:)(partial apply for closure #1 in CollectionDifference.init<A>(_validatedChanges:), v80, v19, WitnessTable, v23);
  v24 = v84;
  v77 = a3;
  if (Array._getCount()())
  {
    v25 = Array._getCount()();
    if (v25 < 0)
    {
LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v26 = v25;
    if (v25)
    {
      v73 = a5;
      v27 = 0;
      v78 = (v11 + 16);
      v79 = v24 & 0xC000000000000001;
      do
      {
        if (__OFADD__(v27, v26))
        {
          __break(1u);
          goto LABEL_38;
        }

        v29 = v79 == 0;
        v30 = v27 + v26;
        v31 = (v27 + v26) / 2;
        v32 = v29 | ~_swift_isClassOrObjCExistentialType(v10, v10);
        Array._checkSubscript(_:wasNativeTypeChecked:)(v31, v32 & 1);
        if (v32)
        {
          (*(v11 + 16))(v14, v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v31, v10);
        }

        else
        {
          v33 = _ArrayBuffer._getElementSlowPath(_:)(v30 / 2, v24, v10);
          if (v74 != 8)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v84 = v33;
          v34 = v33;
          (*v78)(v14, &v84, v10);
          swift_unknownObjectRelease(v34);
        }

        if (swift_getEnumCaseMultiPayload(v14, v10) == 1)
        {
          if (v26 <= v31)
          {
            goto LABEL_36;
          }

          v27 = v31 + 1;
        }

        else
        {
          v26 = v30 / 2;
          if (v31 < v27)
          {
            goto LABEL_36;
          }
        }

        swift_getTupleTypeMetadata3(0, &type metadata for Int, a2, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
        (*(*(a2 - 8) + 8))(v14 + *(v28 + 48), a2);
      }

      while (v27 != v26);
      a5 = v73;
      if (v26 < 0)
      {
LABEL_38:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  else
  {
    v26 = 0;
  }

  Array._checkIndex(_:)(0);
  Array._checkIndex(_:)(v26);
  v38 = _ArrayBuffer.subscript.getter(0, v26, v24, v10);
  v39 = v36;
  v40 = v37;
  if ((v37 & 1) == 0)
  {
    goto LABEL_19;
  }

  v45 = a5;
  v46 = v35;
  v47 = type metadata accessor for __ContiguousArrayStorageBase();
  v48 = swift_unknownObjectRetain_n(v38, 2);
  v49 = swift_dynamicCastClass(v48, v47);
  if (!v49)
  {
    swift_unknownObjectRelease(v38);
    v49 = &_swiftEmptyArrayStorage;
  }

  v50 = v49[2];
  v51 = v49;
  if (__OFSUB__(v40 >> 1, v39))
  {
    __break(1u);
    goto LABEL_40;
  }

  v51 = v38;
  if (v50 != ((v40 >> 1) - v39))
  {
LABEL_40:
    swift_unknownObjectRelease(v51);
    v35 = v46;
    a5 = v45;
LABEL_19:
    v84 = v38;
    v85 = v35;
    v86 = v39;
    v87 = v40;
    v41 = type metadata accessor for ArraySlice(0, v10, v36, v37);
    v43 = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v41, v42);
    v44 = _copyCollectionToContiguousArray<A>(_:)(&v84, v41, v43);
    swift_unknownObjectRelease(v38);
    goto LABEL_26;
  }

  v44 = swift_dynamicCastClass(v38, v47);
  swift_unknownObjectRelease(v38);
  a5 = v45;
  if (!v44)
  {
    swift_unknownObjectRelease(v38);
    v44 = &_swiftEmptyArrayStorage;
  }

LABEL_26:
  v52 = Array._getCount()();
  if (v52 < v26)
  {
    goto LABEL_38;
  }

  v53 = v52;
  (*(v75 + 8))(v76, v77);
  Array._checkIndex(_:)(v53);
  v54 = _ArrayBuffer.subscript.getter(v26, v53, v24, v10);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v24;
  if ((v60 & 1) == 0)
  {
    goto LABEL_28;
  }

  v67 = type metadata accessor for __ContiguousArrayStorageBase();
  v68 = swift_unknownObjectRetain_n(v54, 3);
  v69 = swift_dynamicCastClass(v68, v67);
  if (!v69)
  {
    swift_unknownObjectRelease(v54);
    v69 = &_swiftEmptyArrayStorage;
  }

  v70 = v69[2];
  v71 = v69;
  if (__OFSUB__(v60 >> 1, v58))
  {
    __break(1u);
    goto LABEL_42;
  }

  v71 = v54;
  if (v70 != ((v60 >> 1) - v58))
  {
LABEL_42:
    swift_unknownObjectRelease_n(v71, 2);
LABEL_28:
    v84 = v54;
    v85 = v56;
    v86 = v58;
    v87 = v60;
    v63 = type metadata accessor for ArraySlice(0, v10, v61, v62);
    v65 = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v63, v64);
    v66 = _copyCollectionToContiguousArray<A>(_:)(&v84, v63, v65);
    swift_unknownObjectRelease(v54);
    goto LABEL_35;
  }

  v66 = swift_dynamicCastClass(v54, v67);
  swift_unknownObjectRelease_n(v54, 2);
  if (!v66)
  {
    swift_unknownObjectRelease(v54);
    v66 = &_swiftEmptyArrayStorage;
  }

LABEL_35:
  *a5 = v66;
  a5[1] = v44;
}

BOOL closure #1 in CollectionDifference.init<A>(_validatedChanges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v6 = type metadata accessor for CollectionDifference.Change(0, a3, a3, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v42 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  swift_getTupleTypeMetadata2(0, v6, v6, 0, 0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v42 - v20);
  v43 = v19;
  v44 = a1;
  v22 = (&v42 + *(v19 + 48) - v20);
  v45 = v7;
  v23 = *(v7 + 16);
  v24 = a1;
  v25 = v47;
  v23(&v42 - v20, v24, v6);
  v23(v22, v25, v6);
  if (swift_getEnumCaseMultiPayload(v21, v6) != 1)
  {
    v23(v14, v21, v6);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v32 = *(v31 + 48);
    v28 = &v14[v32];
    if (swift_getEnumCaseMultiPayload(v22, v6) == 1)
    {
      v33 = *(*(a3 - 8) + 8);
      v33(v22 + v32, a3);
      v33(v28, a3);
      v30 = 0;
      v18 = v45;
      goto LABEL_7;
    }

LABEL_6:
    v34 = *(*(a3 - 8) + 8);
    v34(v28, a3);
    v35 = v42;
    v23(v42, v44, v6);
    v36 = *v35;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v34(&v35[*(v37 + 48)], a3);
    v38 = v46;
    v23(v46, v47, v6);
    v39 = *v38;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v34(&v38[*(v40 + 48)], a3);
    v30 = v36 < v39;
    v6 = v43;
    goto LABEL_7;
  }

  v23(v16, v21, v6);
  swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
  v27 = *(v26 + 48);
  v28 = &v16[v27];
  if (swift_getEnumCaseMultiPayload(v22, v6) == 1)
  {
    goto LABEL_6;
  }

  v29 = *(*(a3 - 8) + 8);
  v29(v22 + v27, a3);
  v29(v28, a3);
  v30 = 1;
  v18 = v45;
LABEL_7:
  (*(v18 + 8))(v21, v6);
  return v30;
}

void CollectionDifference.inverse()(uint64_t a1@<X0>, __objc2_class ***a2@<X8>)
{
  v5 = *(a1 + 16);
  v82 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v81 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CollectionDifference.Change(0, v5, v7, v8);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v80 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v62 - v14;
  v67 = v16;
  MEMORY[0x1EEE9AC00](v13);
  v79 = (&v62 - v17);
  v18 = *v2;
  v19 = v2[1];
  v85[0] = *v2;
  v85[1] = v19;
  v20 = Array._getCount()();
  v21 = Array._getCount()();
  v24 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v24)
  {
    v84 = &_swiftEmptyArrayStorage;
    v78 = type metadata accessor for ContiguousArray(0, v9, v22, v23);
    ContiguousArray.reserveCapacity(_:)(v24);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v77 = v15;
      v64 = a1;
      v63 = a2;
      v25 = 0;
      v65 = v18 & 0xC000000000000001;
      v26 = (v10 + 16);
      v66 = v19 & 0xC000000000000001;
      v76 = (v10 + 32);
      v82 += 4;
      v27 = -1;
      while (1)
      {
        if (v24 == v25)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v72 = v24;
        v28 = Array._getCount()();
        v29 = v25 - v28;
        v74 = v18;
        v75 = v10;
        v73 = v19;
        v70 = v27;
        v71 = v26;
        if (v25 >= v28)
        {
          v32 = v77;
          if (__OFSUB__(v25, v28))
          {
            __break(1u);
            goto LABEL_27;
          }

          v34 = v65 == 0;
          v35 = v34 | ~_swift_isClassOrObjCExistentialType(v9, v9);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v29, v35 & 1);
          if ((v35 & 1) == 0)
          {
            v51 = v29;
            v52 = v18;
            goto LABEL_17;
          }

          v33 = v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        }

        else
        {
          v29 = v28 + v27;
          v30 = v66 == 0;
          v31 = v30 | ~_swift_isClassOrObjCExistentialType(v9, v9);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v29, v31 & 1);
          v32 = v77;
          if ((v31 & 1) == 0)
          {
            v51 = v29;
            v52 = v19;
LABEL_17:
            v53 = _ArrayBuffer._getElementSlowPath(_:)(v51, v52, v9);
            if (v67 != 8)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v83 = v53;
            v54 = v53;
            (*v26)(v32, &v83, v9);
            swift_unknownObjectRelease(v54);
            goto LABEL_13;
          }

          v33 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        }

        (*(v10 + 16))(v32, v33 + *(v10 + 72) * v29, v9);
LABEL_13:
        ++v25;
        v36 = v80;
        (*v76)(v80, v32, v9);
        v69 = swift_getEnumCaseMultiPayload(v36, v9) != 1;
        v68 = *v36;
        swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
        v38 = v37;
        v39 = v36 + *(v37 + 64);
        v40 = *v39;
        v41 = v39[8];
        v42 = *v82;
        v43 = v36 + *(v37 + 48);
        v44 = v81;
        (*v82)(v81, v43, v5);
        v45 = *(v38 + 48);
        v46 = v79;
        v47 = v79 + *(v38 + 64);
        *v79 = v68;
        v42(&v46[v45], v44, v5);
        *v47 = v40;
        v47[8] = v41;
        swift_storeEnumTagMultiPayload(v46, v9, v69);
        ContiguousArray.append(_:)(v46, v78);
        v26 = v71;
        v27 = v70 - 1;
        v24 = v72;
        v19 = v73;
        v18 = v74;
        v10 = v75;
        if (v72 == v25)
        {
          v59 = CollectionDifference.endIndex.getter(v64, v48, v49, v50);
          if (v24 == v59)
          {
            v55 = v84;
            a2 = v63;
            goto LABEL_21;
          }

LABEL_27:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }
    }

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _swift_isClassOrObjCExistentialType(v9, v9);
  v55 = &_swiftEmptyArrayStorage;
LABEL_21:
  v85[0] = v55;
  v56 = type metadata accessor for Array(0, v9, v60, v61);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v56, v57);
  CollectionDifference.init<A>(_validatedChanges:)(v85, v5, v56, WitnessTable, a2);
}

Swift::Int CollectionDifference.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CollectionDifference.Change(0, *(a1 + 16), a3, a4);
  v4 = Array._getCount()();
  v5 = Array._getCount()();
  v6 = __OFADD__(v4, v5);
  result = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  return result;
}

void CollectionDifference.subscript.getter(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *v5;
  v9 = v5[1];
  v10 = type metadata accessor for CollectionDifference.Change(0, *(a2 + 16), a3, a4);
  v11 = Array._getCount()();
  if (v11 > a1)
  {
    v8 = v11 - (a1 + 1);
    if (!__OFSUB__(v11, a1 + 1))
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v10, v10);
      v13 = ((v9 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
      Array._checkSubscript(_:wasNativeTypeChecked:)(v8, (v9 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
      if (v13)
      {
        v14 = *(v10 - 1);
        v15 = *(v14 + 16);
        v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v8;
LABEL_8:

        v15(a5, v16, v10);
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    v20 = v8;
    v21 = v9;
    goto LABEL_15;
  }

  v9 = a1 - v11;
  if (__OFSUB__(a1, v11))
  {
    goto LABEL_12;
  }

  v17 = _swift_isClassOrObjCExistentialType(v10, v10);
  v18 = ((v8 & 0xC000000000000001) == 0) | ~v17;
  Array._checkSubscript(_:wasNativeTypeChecked:)(v9, (v8 & 0xC000000000000001) == 0 || (v17 & 1) == 0);
  if (v18)
  {
    v19 = *(v10 - 1);
    v15 = *(v19 + 16);
    v16 = v8 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v9;
    goto LABEL_8;
  }

  v20 = v9;
  v21 = v8;
LABEL_15:
  v22 = _ArrayBuffer._getElementSlowPath(_:)(v20, v21, v10);
  v23 = *(v10 - 1);
  if (*(v23 + 64) != 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = v22;
  v24 = v22;
  (*(v23 + 16))(a5, &v25, v10);
  swift_unknownObjectRelease(v24);
}

uint64_t CollectionDifference.index(before:)(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *CollectionDifference.formIndex(_:offsetBy:)(void *result, uint64_t a2)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance CollectionDifference<A>@<X0>(uint64_t *a1@<X8>)
{
  result = protocol witness for Error._getEmbeddedNSError() in conformance EncodingError();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Collection.endIndex.getter in conformance CollectionDifference<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, Swift::Int *a5@<X8>)
{
  result = CollectionDifference.endIndex.getter(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionDifference<A>(uint64_t **a1, Swift::Int *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xB5BAuLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CollectionDifference.subscript.read(v6, *a2, a3, v7);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*CollectionDifference.subscript.read(uint64_t *a1, Swift::Int a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for CollectionDifference.Change(0, *(a3 + 16), a3, a4);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  v9 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc(v9, 0x577FuLL);
  }

  else
  {
    v10 = malloc(v9);
  }

  a1[2] = v10;
  CollectionDifference.subscript.getter(a2, a3, v11, v12, v10);
  return _ArrayBuffer.subscript.read;
}

Swift::Int protocol witness for Collection.index(after:) in conformance CollectionDifference<A>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = Int.Words.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Collection.formIndex(after:) in conformance CollectionDifference<A>(Swift::Int *a1)
{
  result = Int.Words.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CollectionDifference<A>@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = protocol witness for Error._getEmbeddedNSError() in conformance EncodingError();
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionDifference<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionDifference<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CollectionDifference<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionDifference<A>, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  v7 = *v3;
  v3[1];
  v7;
  return v6;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CollectionDifference<A>.Index(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v3);
  CollectionDifference.Index.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t static CollectionDifference.Change<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v6 = *(a3 - 8);
  v70 = a2;
  v71 = v6;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v66 = &v60 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v60 - v13;
  v16 = type metadata accessor for CollectionDifference.Change(0, v14, v14, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v60 - v21);
  swift_getTupleTypeMetadata2(0, v16, v16, 0, 0);
  v24 = v23;
  v68 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = (&v60 - v26);
  v28 = (&v60 + *(v25 + 48) - v26);
  v69 = v17;
  v29 = *(v17 + 2);
  v29(&v60 - v26, a1, v16);
  v29(v28, v70, v16);
  if (swift_getEnumCaseMultiPayload(v27, v16) == 1)
  {
    v29(v20, v27, v16);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v31 = *(v30 + 48);
    v32 = v20 + v31;
    v33 = *(v30 + 64);
    v34 = *(v20 + v33);
    LODWORD(v70) = *(v20 + v33 + 8);
    if (swift_getEnumCaseMultiPayload(v28, v16) == 1)
    {
      v68 = *v20;
      v64 = *v28;
      v61 = *(v28 + v33);
      v62 = v34;
      LODWORD(v63) = *(v28 + v33 + 8);
      v35 = v71;
      v36 = *(v71 + 32);
      v37 = v66;
      v36(v66, v32, a3);
      v38 = v28 + v31;
      v39 = v65;
      v36(v65, v38, a3);
      if (v68 == v64)
      {
        v40 = (*(v67 + 8))(v37, v39, a3);
        v41 = *(v35 + 8);
        v41(v39, a3);
        v41(v37, a3);
        v42 = v69;
        if (v40)
        {
          if (v70)
          {
            if (v63)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v58 = v63;
            if (v62 != v61)
            {
              v58 = 1;
            }

            if ((v58 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

LABEL_14:
        v47 = 0;
        goto LABEL_18;
      }

      v55 = *(v35 + 8);
      v55(v39, a3);
      v56 = v37;
      goto LABEL_17;
    }
  }

  else
  {
    v29(v22, v27, v16);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v44 = *(v43 + 48);
    v32 = v22 + v44;
    v45 = *(v43 + 64);
    v46 = *(v22 + v45);
    LODWORD(v70) = *(v22 + v45 + 8);
    if (swift_getEnumCaseMultiPayload(v28, v16) != 1)
    {
      v68 = *v22;
      v66 = *v28;
      v61 = *(v28 + v45);
      v62 = v46;
      LODWORD(v65) = *(v28 + v45 + 8);
      v48 = v71;
      v49 = *(v71 + 32);
      v50 = v64;
      v49(v64, v32, a3);
      v51 = v28 + v44;
      v52 = v63;
      v49(v63, v51, a3);
      if (v68 == v66)
      {
        v53 = (*(v67 + 8))(v50, v52, a3);
        v54 = *(v48 + 8);
        v54(v52, a3);
        v54(v50, a3);
        v42 = v69;
        if (v53)
        {
          if (v70)
          {
            if (v65)
            {
LABEL_26:
              v47 = 1;
              goto LABEL_18;
            }
          }

          else
          {
            v59 = v65;
            if (v62 != v61)
            {
              v59 = 1;
            }

            if ((v59 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        goto LABEL_14;
      }

      v55 = *(v48 + 8);
      v55(v52, a3);
      v56 = v50;
LABEL_17:
      v55(v56, a3);
      v47 = 0;
      v42 = v69;
      goto LABEL_18;
    }
  }

  (*(v71 + 8))(v32, a3);
  v47 = 0;
  v42 = v68;
  v16 = v24;
LABEL_18:
  (*(v42 + 1))(v27, v16);
  return v47;
}

uint64_t static CollectionDifference<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = type metadata accessor for CollectionDifference.Change(0, a3, a3, a4);
  v73 = *(v8 - 1);
  v9 = *(v73 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v61 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  v19 = *a1;
  v18 = a1[1];
  v20 = *a2;
  v72 = a2[1];
  v21 = Array._getCount()();
  if (v21 != Array._getCount()())
  {
    goto LABEL_36;
  }

  v69 = v18;
  if (v21)
  {
    v22 = _ArrayBuffer.identity.getter(v19, v8);
    if (v22 != _ArrayBuffer.identity.getter(v20, v8))
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        v23 = 0;
        v24 = v19 & 0xC000000000000001;
        v68 = (v73 + 16);
        v65 = (v73 + 8);
        v66 = v20 & 0xC000000000000001;
        while (v21 != v23)
        {
          v67 = v5;
          v63 = v24;
          v25 = (v24 == 0) | ~_swift_isClassOrObjCExistentialType(v8, v8);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v23, v25 & 1);
          if (v25)
          {
            v26 = v19 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v23;
            v64 = *(v73 + 16);
            v64(v17, v26, v8);
          }

          else
          {
            v31 = _ArrayBuffer._getElementSlowPath(_:)(v23, v19, v8);
            if (v9 != 8)
            {
              goto LABEL_41;
            }

            v74 = v31;
            v32 = v31;
            v64 = *v68;
            v64(v17, &v74, v8);
            swift_unknownObjectRelease(v32);
          }

          v27 = v66 == 0;
          v28 = v27 | ~_swift_isClassOrObjCExistentialType(v8, v8);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v23, v28 & 1);
          v61 = v20;
          v62 = v19;
          if (v28)
          {
            v64(v15, (v20 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v23), v8);
          }

          else
          {
            v33 = _ArrayBuffer._getElementSlowPath(_:)(v23, v20, v8);
            if (v9 != 8)
            {
LABEL_41:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v74 = v33;
            v34 = v33;
            v64(v15, &v74, v8);
            swift_unknownObjectRelease(v34);
          }

          v29 = v4;
          LODWORD(v64) = static CollectionDifference.Change<A>.== infix(_:_:)(v17, v15, v67, v4);
          v30 = *v65;
          (*v65)();
          (v30)(v17, v8);
          if ((v64 & 1) == 0)
          {
            goto LABEL_36;
          }

          ++v23;
          v4 = v29;
          v5 = v67;
          v19 = v62;
          v24 = v63;
          v20 = v61;
          if (v21 == v23)
          {
            goto LABEL_18;
          }
        }

LABEL_38:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_40;
    }
  }

LABEL_18:
  v35 = v69;
  v36 = Array._getCount()();
  v37 = v72;
  if (v36 == Array._getCount()())
  {
    if (v36)
    {
      v38 = _ArrayBuffer.identity.getter(v35, v8);
      if (v38 != _ArrayBuffer.identity.getter(v37, v8))
      {
        if ((v36 & 0x8000000000000000) == 0)
        {
          v39 = 0;
          v40 = v35 & 0xC000000000000001;
          v67 = v37 & 0xC000000000000001;
          v68 = (v73 + 16);
          v41 = (v73 + 8);
          while (v36)
          {
            v42 = v5;
            v43 = v4;
            v66 = v40;
            v44 = (v40 == 0) | ~_swift_isClassOrObjCExistentialType(v8, v8);
            v45 = v69;
            Array._checkSubscript(_:wasNativeTypeChecked:)(v39, v44 & 1);
            if (v44)
            {
              v46 = v45 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v39;
              v47 = *(v73 + 16);
              v47(v71, v46, v8);
            }

            else
            {
              v56 = _ArrayBuffer._getElementSlowPath(_:)(v39, v45, v8);
              if (v9 != 8)
              {
                goto LABEL_41;
              }

              v57 = v56;
              v74 = v56;
              v47 = *v68;
              (*v68)(v71, &v74, v8);
              swift_unknownObjectRelease(v57);
              v37 = v72;
            }

            v48 = v67 == 0;
            v49 = v48 | ~_swift_isClassOrObjCExistentialType(v8, v8);
            Array._checkSubscript(_:wasNativeTypeChecked:)(v39, v49 & 1);
            if (v49)
            {
              v50 = v70;
              v47(v70, (v37 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v39), v8);
            }

            else
            {
              v58 = _ArrayBuffer._getElementSlowPath(_:)(v39, v37, v8);
              if (v9 != 8)
              {
                goto LABEL_41;
              }

              v59 = v58;
              v74 = v58;
              v50 = v70;
              v47(v70, &v74, v8);
              swift_unknownObjectRelease(v59);
            }

            v51 = v71;
            v52 = static CollectionDifference.Change<A>.== infix(_:_:)(v71, v50, v42, v43);
            v53 = v50;
            v54 = *v41;
            (*v41)(v53, v8);
            v54(v51, v8);
            if (v52)
            {
              ++v39;
              v55 = v36-- == 1;
              v4 = v43;
              v5 = v42;
              v37 = v72;
              v40 = v66;
              if (!v55)
              {
                continue;
              }
            }

            return v52 & 1;
          }

          goto LABEL_38;
        }

LABEL_40:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v52 = 1;
  }

  else
  {
LABEL_36:
    v52 = 0;
  }

  return v52 & 1;
}

void CollectionDifference.Change<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v17, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, a2);
  v27 = *v15;
  swift_getTupleTypeMetadata3(0, &type metadata for Int, v6, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
  v20 = *(v19 + 48);
  v21 = v15 + *(v19 + 64);
  v26 = *v21;
  v28 = v21[8];
  v22 = *(v7 + 32);
  v23 = (v7 + 8);
  v24 = v15 + v20;
  if (EnumCaseMultiPayload == 1)
  {
    v22(v10, v24, v6);
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v27);
    (*(a3 + 24))(a1, v6, a3);
    (*v23)(v10, v6);
  }

  else
  {
    v22(v13, v24, v6);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v27);
    (*(a3 + 24))(a1, v6, a3);
    (*v23)(v13, v6);
  }

  if (v28)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v26);
  }
}

Swift::Int DiscontiguousSlice<>.hashValue.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v7 = 0u;
  v8 = 0u;
  v4 = 0;
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  a3(&v4, a1, a2);
  return Hasher._finalize()();
}

void CollectionDifference<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v5 = *(a2 + 16);
  v62 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v65 = &v60 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v68 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v60 - v12;
  v15 = type metadata accessor for CollectionDifference.Change(0, v5, v13, v14);
  v16 = *(v15 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v77 = &v60 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = (&v60 - v23);
  v61 = v25;
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v60 - v26;
  v28 = *v3;
  v78 = v3[1];
  v29 = Array._getCount()();
  Hasher._combine(_:)(v29);
  v75 = v28;
  v30 = Array._getCount()();
  v80 = v19;
  v76 = v30;
  if (v30)
  {
    if (v76 < 1)
    {
      __break(1u);
      goto LABEL_36;
    }

    v31 = 0;
    v63 = v16;
    v64 = v75 & 0xC000000000000001;
    v72 = (v16 + 32);
    v73 = (v16 + 16);
    v70 = v81 + 24;
    v71 = (v62 + 32);
    v69 = (v62 + 8);
    v74 = v27;
    do
    {
      if (_swift_isClassOrObjCExistentialType(v15, v15) && v64)
      {
        v42 = _ArrayBuffer._getElementSlowPath(_:)(v31, v75, v15);
        if (v61 != 8)
        {
          goto LABEL_37;
        }

        v82[0] = v42;
        v43 = v42;
        (*v73)(v27, v82, v15);
        swift_unknownObjectRelease(v43);
      }

      else
      {
        (*(v16 + 16))(v27, v75 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v31, v15);
      }

      (*v72)(v24, v27, v15);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v24, v15);
      v33 = *v24;
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
      v35 = *(v34 + 48);
      v36 = v24 + *(v34 + 64);
      v79 = *v36;
      v37 = v36[8];
      v38 = *v71;
      v39 = v24 + v35;
      if (EnumCaseMultiPayload == 1)
      {
        v40 = v68;
        v38(v68, v39, v5);
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v33);
        (*(v81 + 24))(a1, v5);
        (*v69)(v40, v5);
        if (v37)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v79);
        }

        v19 = v80;
        v16 = v63;
      }

      else
      {
        v41 = v67;
        v38(v67, v39, v5);
        Hasher._combine(_:)(0);
        Hasher._combine(_:)(v33);
        (*(v81 + 24))(a1, v5);
        (*v69)(v41, v5);
        if (v37)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v79);
        }

        v19 = v80;
      }

      ++v31;
      v27 = v74;
    }

    while (v76 != v31);
  }

  v44 = Array._getCount()();
  Hasher._combine(_:)(v44);
  v45 = Array._getCount()();
  v46 = v77;
  v79 = v45;
  if (!v45)
  {
    return;
  }

  if (v79 < 1)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v47 = 0;
  v75 = v16 + 32;
  v76 = v16 + 16;
  v73 = (v81 + 24);
  v74 = (v62 + 32);
  v71 = (v78 & 0xC000000000000001);
  v72 = (v62 + 8);
  do
  {
    if (_swift_isClassOrObjCExistentialType(v15, v15) && v71)
    {
      v58 = _ArrayBuffer._getElementSlowPath(_:)(v47, v78, v15);
      if (v61 != 8)
      {
        goto LABEL_37;
      }

      v82[0] = v58;
      v59 = v58;
      (*v76)(v46, v82, v15);
      swift_unknownObjectRelease(v59);
    }

    else
    {
      (*(v16 + 16))(v46, v78 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v47, v15);
    }

    (*v75)(v19, v46, v15);
    v48 = swift_getEnumCaseMultiPayload(v19, v15);
    v49 = *v19;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v51 = v19 + *(v50 + 64);
    v52 = *v51;
    v53 = v51[8];
    v54 = *v74;
    v55 = v19 + *(v50 + 48);
    if (v48 == 1)
    {
      v56 = v66;
      v54(v66, v55, v5);
      v57 = 1;
    }

    else
    {
      v56 = v65;
      v54(v65, v55, v5);
      v57 = 0;
    }

    Hasher._combine(_:)(v57);
    Hasher._combine(_:)(v49);
    (*(v81 + 24))(a1, v5);
    (*v72)(v56, v5);
    if (v53)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v52);
    }

    v19 = v80;
    v46 = v77;
    ++v47;
  }

  while (v79 != v47);
}

Swift::Int CollectionDifference<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v9 = *v2;
  v7 = 0u;
  v8 = 0u;
  v4 = 0;
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  CollectionDifference<A>.hash(into:)(&v4, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> CollectionDifference<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  specialized Hasher.init(_seed:)(a1, v6);
  CollectionDifference<A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

void CollectionDifference<A>.inferringMoves()(uint64_t a1@<X0>, __objc2_class **a2@<X1>, __objc2_class ***a3@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v108 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v88 - v11;
  v14 = type metadata accessor for CollectionDifference.Change(0, v7, v12, v13);
  v113 = *(v14 - 1);
  v15 = *(v113 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v106 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v16);
  v112 = &v88 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v105 = &v88 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v110 = (&v88 - v21);
  v22 = *v3;
  v23 = v3[1];
  v111 = closure #1 in CollectionDifference<A>.inferringMoves()(*v3, v23, v7, a2);
  v104 = a2;
  v24 = closure #2 in CollectionDifference<A>.inferringMoves()(v22, v23, v7, a2);
  v117[0] = v22;
  v117[1] = v23;
  v25 = Array._getCount()();
  v26 = Array._getCount()();
  if (__OFADD__(v25, v26))
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v25 + v26)
  {
    v116 = &_swiftEmptyArrayStorage;
    v114 = v25 + v26;
    v102 = type metadata accessor for ContiguousArray(0, v14, v27, v28);
    ContiguousArray.reserveCapacity(_:)(v114);
    v29 = v114;
    if ((v114 & 0x8000000000000000) == 0)
    {
      v97 = v24;
      v90 = a1;
      v89 = a3;
      v30 = 0;
      v95 = v22 & 0xC000000000000001;
      v96 = v23 & 0xC000000000000001;
      v109 = (v113 + 32);
      v103 = (v8 + 32);
      v94 = (v113 + 8);
      v99 = (v8 + 8);
      v100 = (v113 + 16);
      v31 = -1;
      v101 = (v113 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      while (1)
      {
        if (v29 == v30)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v32 = Array._getCount()();
        v33 = v30 - v32;
        if (v30 >= v32)
        {
          if (__OFSUB__(v30, v32))
          {
            __break(1u);
            goto LABEL_44;
          }

          v38 = v95 == 0;
          v39 = v38 | ~_swift_isClassOrObjCExistentialType(v14, v14);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v33, v39 & 1);
          if (v39)
          {
            v36 = v113;
            v37 = v22 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
            goto LABEL_12;
          }

          v75 = v33;
          v76 = v22;
        }

        else
        {
          v34 = v96 == 0;
          v33 = v32 + v31;
          v35 = v34 | ~_swift_isClassOrObjCExistentialType(v14, v14);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v33, v35 & 1);
          if (v35)
          {
            v36 = v113;
            v37 = v23 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
LABEL_12:
            v40 = v37 + *(v36 + 72) * v33;
            v41 = *(v36 + 16);
            v42 = v105;
            v41(v105, v40, v14);
            goto LABEL_13;
          }

          v75 = v33;
          v76 = v23;
        }

        v77 = _ArrayBuffer._getElementSlowPath(_:)(v75, v76, v14);
        if (v15 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v115 = v77;
        v41 = *v100;
        v78 = v77;
        v79 = v105;
        (*v100)(v105, &v115, v14);
        v80 = v78;
        v42 = v79;
        swift_unknownObjectRelease(v80);
LABEL_13:
        v43 = v112;
        v98 = *v109;
        v98(v112, v42, v14);
        v44 = v106;
        v41(v106, v43, v14);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v44, v14);
        v93 = *v44;
        swift_getTupleTypeMetadata3(0, &type metadata for Int, v7, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
        v91 = v46;
        v47 = *(v46 + 48);
        v48 = *v103;
        v92 = *v103;
        v49 = v44 + v47;
        if (EnumCaseMultiPayload == 1)
        {
          v50 = v107;
          v48(v107, v49, v7);
          v51 = v111;
          if (!*(v111 + 16) || (__RawDictionaryStorage.find<A>(_:)(v50, v7, v104), v50 = v107, (v52 & 1) == 0))
          {
            (*v99)(v50, v7);
            goto LABEL_27;
          }

          v53 = v107;
          v54 = v110;
          if (!*(v97 + 16))
          {
            goto LABEL_28;
          }

          v55 = __RawDictionaryStorage.find<A>(_:)(v107, v7, v104);
          v53 = v107;
          if ((v56 & 1) == 0)
          {
            goto LABEL_28;
          }

          (*v94)(v112, v14);
          v57 = *(v97 + 56) + 16 * v55;
          v98 = *v57;
          v58 = *(v57 + 8);
          v59 = *(v91 + 48);
          v60 = v110 + *(v91 + 64);
          *v110 = v93;
          v92(v110 + v59, v107, v7);
          *v60 = v98;
          v60[8] = v58;
          v54 = v110;
          v61 = v110;
          v62 = v14;
          v63 = 1;
        }

        else
        {
          v64 = v108;
          v48(v108, v49, v7);
          v51 = v111;
          if (!*(v97 + 16) || (__RawDictionaryStorage.find<A>(_:)(v64, v7, v104), v64 = v108, (v65 & 1) == 0))
          {
            (*v99)(v64, v7);
LABEL_27:
            v54 = v110;
LABEL_29:
            v98(v54, v112, v14);
            goto LABEL_30;
          }

          v53 = v108;
          v54 = v110;
          if (!*(v51 + 16) || (v66 = __RawDictionaryStorage.find<A>(_:)(v108, v7, v104), v53 = v108, (v67 & 1) == 0))
          {
LABEL_28:
            (*v99)(v53, v7);
            goto LABEL_29;
          }

          (*v94)(v112, v14);
          v68 = *(v51 + 56) + 16 * v66;
          v98 = *v68;
          v69 = *(v68 + 8);
          v70 = *(v91 + 48);
          v71 = v110 + *(v91 + 64);
          *v110 = v93;
          v92(v110 + v70, v108, v7);
          *v71 = v98;
          v71[8] = v69;
          v54 = v110;
          v61 = v110;
          v62 = v14;
          v63 = 0;
        }

        swift_storeEnumTagMultiPayload(v61, v62, v63);
LABEL_30:
        ++v30;
        ContiguousArray.append(_:)(v54, v102);
        --v31;
        v29 = v114;
        if (v114 == v30)
        {
          v87 = v114;
          if (v87 == CollectionDifference.endIndex.getter(v90, v72, v73, v74))
          {
            v97;
            v51;
            v83 = v116;
            a3 = v89;
            goto LABEL_38;
          }

LABEL_44:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v24;
  v111;
  _swift_isClassOrObjCExistentialType(v14, v14);
  v83 = &_swiftEmptyArrayStorage;
LABEL_38:
  v117[0] = v83;
  v84 = type metadata accessor for Array(0, v14, v81, v82);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v84, v85);
  CollectionDifference.init<A>(_validatedChanges:)(v117, v7, v84, WitnessTable, a3);
}

uint64_t closure #1 in CollectionDifference<A>.inferringMoves()(uint64_t a1, uint64_t a2, __objc2_class **a3, __objc2_class **a4)
{
  v5 = a3;
  v98 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v116 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CollectionDifference.Change(0, v8, v8, v9);
  v107 = *(v10 - 1);
  v11 = *(v107 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v115 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v96 - v17;
  v19 = Array._getCount()();
  v20 = Array._getCount()();
  if (v20 >= v19)
  {
    v20 = v19;
  }

  if (v20)
  {
    v21 = specialized static _DictionaryStorage.allocate(capacity:)(v20, v5, a4);
  }

  else
  {
    v21 = &_swiftEmptyDictionarySingleton;
  }

  v22 = Array._getCount()();
  v105 = v22;
  if (v22)
  {
    v96 = v11;
    v23 = 0;
    v104 = a2 & 0xC000000000000001;
    v114 = (v107 + 16);
    v111 = (v98 + 32);
    v112 = (v107 + 32);
    v97 = (v107 + 8);
    v108 = v5;
    v109 = (v98 + 8);
    v102 = v18;
    v103 = a4;
    v100 = a2;
    while (1)
    {
      v26 = v104 == 0;
      v27 = v26 | ~_swift_isClassOrObjCExistentialType(v10, v10);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v23, v27 & 1);
      if (v27)
      {
        v28 = *(v107 + 16);
        v28(v18, (a2 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v23), v10);
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v80 = _ArrayBuffer._getElementSlowPath(_:)(v23, a2, v10);
        if (v96 != 8)
        {
          LODWORD(v94) = 0;
          v93 = 96;
          LOBYTE(v92) = 2;
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v117 = v80;
        v28 = *v114;
        v81 = v80;
        (*v114)(v18, &v117, v10);
        swift_unknownObjectRelease(v81);
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v108);
        }
      }

      v113 = v29;
      v30 = *v112;
      v31 = a4;
      v32 = v115;
      (*v112)(v115, v18, v10);
      v33 = v106;
      v34 = v32;
      v35 = v31;
      v28(v106, v34, v10);
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
      v37 = &v33[*(v36 + 48)];
      v110 = *v111;
      v110(v116, v37, v5);
      if (!v21[2])
      {
        break;
      }

      __RawDictionaryStorage.find<A>(_:)(v116, v5, v31);
      if ((v38 & 1) == 0)
      {
        break;
      }

      (*v97)(v115, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v21);
      v117 = v21;
      v40 = __RawDictionaryStorage.find<A>(_:)(v116, v5, v31);
      v42 = v21[2];
      v43 = (v41 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_45;
      }

      v45 = v41;
      if (v21[3] >= v44)
      {
        v52 = v40;
        if (isUniquelyReferenced_nonNull_native)
        {
          a4 = v103;
          if (v41)
          {
            goto LABEL_31;
          }
        }

        else
        {
          a4 = v103;
          v83 = type metadata accessor for _NativeDictionary(0, v5, &unk_1EEEBE0E0, v103);
          specialized _NativeDictionary.copy()(v83);
          if (v45)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v46 = v5;
        v47 = v103;
        v48 = type metadata accessor for _NativeDictionary(0, v46, &unk_1EEEBE0E0, v103);
        v49 = v44;
        a4 = v47;
        v5 = v108;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native, v48);
        v50 = __RawDictionaryStorage.find<A>(_:)(v116, v5, a4);
        if ((v45 & 1) != (v51 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v5);
        }

        v52 = v50;
        if (v45)
        {
LABEL_31:
          v22 = (*v109)(v116, v5);
          v21 = v117;
          v79 = v117[7] + 16 * v52;
          *v79 = 0;
          *(v79 + 8) = 1;
          goto LABEL_10;
        }
      }

      v21 = v117;
      v117[(v52 >> 6) + 8] = (v117[(v52 >> 6) + 8] | (1 << v52));
      v22 = (v110)(v21[6] + *(v98 + 72) * v52, v116, v5);
      v84 = v21[7] + 16 * v52;
      *v84 = 0;
      *(v84 + 8) = 1;
      v85 = v21[2];
      v77 = __OFADD__(v85, 1);
      v86 = (&v85->isa + 1);
      if (v77)
      {
        goto LABEL_46;
      }

      v21[2] = v86;
LABEL_10:
      v18 = v102;
      ++v23;
      if (v113 == v105)
      {
        goto LABEL_41;
      }
    }

    v53 = v101;
    v30(v101, v115, v10);
    v54 = *v53;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v56 = v5;
    v57 = *v109;
    (*v109)(v53 + *(v55 + 48), v56);
    v58 = swift_isUniquelyReferenced_nonNull_native(v21);
    v117 = v21;
    v59 = __RawDictionaryStorage.find<A>(_:)(v116, v56, v35);
    v61 = v21[2];
    v62 = (v60 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_43;
    }

    v64 = v60;
    if (v21[3] < v63)
    {
      v99 = v23;
      v65 = v54;
      v66 = v10;
      v67 = v116;
      v68 = v108;
      v69 = v103;
      v70 = type metadata accessor for _NativeDictionary(0, v108, &unk_1EEEBE0E0, v103);
      v71 = v63;
      a4 = v69;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v71, v58, v70);
      v72 = __RawDictionaryStorage.find<A>(_:)(v67, v68, v69);
      if ((v64 & 1) != (v73 & 1))
      {
        goto LABEL_47;
      }

      v74 = v72;
      v10 = v66;
      v54 = v65;
      v23 = v99;
      if ((v64 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_8:
      v24 = v108;
      v22 = v57(v116, v108);
      v5 = v24;
      v21 = v117;
      v25 = v117[7] + 16 * v74;
      *v25 = v54;
      *(v25 + 8) = 0;
LABEL_9:
      a2 = v100;
      goto LABEL_10;
    }

    v74 = v59;
    if (v58)
    {
      a4 = v103;
      if (v60)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a4 = v103;
      v82 = type metadata accessor for _NativeDictionary(0, v108, &unk_1EEEBE0E0, v103);
      specialized _NativeDictionary.copy()(v82);
      if (v64)
      {
        goto LABEL_8;
      }
    }

LABEL_27:
    v21 = v117;
    v117[(v74 >> 6) + 8] = (v117[(v74 >> 6) + 8] | (1 << v74));
    v5 = v108;
    v22 = (v110)(v21[6] + *(v98 + 72) * v74, v116, v108);
    v75 = v21[7] + 16 * v74;
    *v75 = v54;
    *(v75 + 8) = 0;
    v76 = v21[2];
    v77 = __OFADD__(v76, 1);
    v78 = (&v76->isa + 1);
    if (v77)
    {
      goto LABEL_44;
    }

    v21[2] = v78;
    goto LABEL_9;
  }

LABEL_41:
  v87 = MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v87);
  v92 = v5;
  v93 = a4;
  v94 = partial apply for closure #1 in closure #1 in CollectionDifference<A>.inferringMoves();
  v95 = v88;
  v21;
  _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxSiSgIsgnndzo_AByxAHGAIsAG_pSHRzAHRs_r0_lIetMggozo_Tp5(thunk for @callee_guaranteed (@in_guaranteed A, @unowned Int?) -> (@unowned Bool)partial apply, &v96 - 6, v21, v5, a4);
  v90 = v89;
  swift_bridgeObjectRelease_n(v21, 2);
  return v90;
}

uint64_t closure #2 in CollectionDifference<A>.inferringMoves()(uint64_t a1, uint64_t a2, __objc2_class **a3, __objc2_class **a4)
{
  v5 = a3;
  v6 = a1;
  v98 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v116 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CollectionDifference.Change(0, v8, v8, v9);
  v107 = *(v10 - 1);
  v11 = *(v107 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v115 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v96 - v17;
  v19 = Array._getCount()();
  v20 = Array._getCount()();
  if (v20 >= v19)
  {
    v20 = v19;
  }

  if (v20)
  {
    v21 = specialized static _DictionaryStorage.allocate(capacity:)(v20, v5, a4);
  }

  else
  {
    v21 = &_swiftEmptyDictionarySingleton;
  }

  v22 = Array._getCount()();
  v105 = v22;
  if (v22)
  {
    v96 = v11;
    v23 = 0;
    v104 = v6 & 0xC000000000000001;
    v114 = (v107 + 16);
    v111 = (v98 + 32);
    v112 = (v107 + 32);
    v97 = (v107 + 8);
    v108 = v5;
    v109 = (v98 + 8);
    v102 = v18;
    v103 = a4;
    v100 = v6;
    while (1)
    {
      v26 = v104 == 0;
      v27 = v26 | ~_swift_isClassOrObjCExistentialType(v10, v10);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v23, v27 & 1);
      if (v27)
      {
        v28 = *(v107 + 16);
        v28(v18, (v6 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v23), v10);
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v80 = _ArrayBuffer._getElementSlowPath(_:)(v23, v6, v10);
        if (v96 != 8)
        {
          LODWORD(v94) = 0;
          v93 = 96;
          LOBYTE(v92) = 2;
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v117 = v80;
        v28 = *v114;
        v81 = v80;
        (*v114)(v18, &v117, v10);
        swift_unknownObjectRelease(v81);
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v108);
        }
      }

      v113 = v29;
      v30 = *v112;
      v31 = a4;
      v32 = v115;
      (*v112)(v115, v18, v10);
      v33 = v106;
      v34 = v32;
      v35 = v31;
      v28(v106, v34, v10);
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
      v37 = &v33[*(v36 + 48)];
      v110 = *v111;
      v110(v116, v37, v5);
      if (!v21[2])
      {
        break;
      }

      __RawDictionaryStorage.find<A>(_:)(v116, v5, v31);
      if ((v38 & 1) == 0)
      {
        break;
      }

      (*v97)(v115, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v21);
      v117 = v21;
      v40 = __RawDictionaryStorage.find<A>(_:)(v116, v5, v31);
      v42 = v21[2];
      v43 = (v41 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_45;
      }

      v45 = v41;
      if (v21[3] >= v44)
      {
        v52 = v40;
        if (isUniquelyReferenced_nonNull_native)
        {
          a4 = v103;
          if (v41)
          {
            goto LABEL_31;
          }
        }

        else
        {
          a4 = v103;
          v83 = type metadata accessor for _NativeDictionary(0, v5, &unk_1EEEBE0E0, v103);
          specialized _NativeDictionary.copy()(v83);
          if (v45)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v46 = v5;
        v47 = v103;
        v48 = type metadata accessor for _NativeDictionary(0, v46, &unk_1EEEBE0E0, v103);
        v49 = v44;
        a4 = v47;
        v5 = v108;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native, v48);
        v50 = __RawDictionaryStorage.find<A>(_:)(v116, v5, a4);
        if ((v45 & 1) != (v51 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v5);
        }

        v52 = v50;
        if (v45)
        {
LABEL_31:
          v22 = (*v109)(v116, v5);
          v21 = v117;
          v79 = v117[7] + 16 * v52;
          *v79 = 0;
          *(v79 + 8) = 1;
          goto LABEL_10;
        }
      }

      v21 = v117;
      v117[(v52 >> 6) + 8] = (v117[(v52 >> 6) + 8] | (1 << v52));
      v22 = (v110)(v21[6] + *(v98 + 72) * v52, v116, v5);
      v84 = v21[7] + 16 * v52;
      *v84 = 0;
      *(v84 + 8) = 1;
      v85 = v21[2];
      v77 = __OFADD__(v85, 1);
      v86 = (&v85->isa + 1);
      if (v77)
      {
        goto LABEL_46;
      }

      v21[2] = v86;
LABEL_10:
      v18 = v102;
      ++v23;
      if (v113 == v105)
      {
        goto LABEL_41;
      }
    }

    v53 = v101;
    v30(v101, v115, v10);
    v54 = *v53;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v56 = v5;
    v57 = *v109;
    (*v109)(v53 + *(v55 + 48), v56);
    v58 = swift_isUniquelyReferenced_nonNull_native(v21);
    v117 = v21;
    v59 = __RawDictionaryStorage.find<A>(_:)(v116, v56, v35);
    v61 = v21[2];
    v62 = (v60 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_43;
    }

    v64 = v60;
    if (v21[3] < v63)
    {
      v99 = v23;
      v65 = v54;
      v66 = v10;
      v67 = v116;
      v68 = v108;
      v69 = v103;
      v70 = type metadata accessor for _NativeDictionary(0, v108, &unk_1EEEBE0E0, v103);
      v71 = v63;
      a4 = v69;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v71, v58, v70);
      v72 = __RawDictionaryStorage.find<A>(_:)(v67, v68, v69);
      if ((v64 & 1) != (v73 & 1))
      {
        goto LABEL_47;
      }

      v74 = v72;
      v10 = v66;
      v54 = v65;
      v23 = v99;
      if ((v64 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_8:
      v24 = v108;
      v22 = v57(v116, v108);
      v5 = v24;
      v21 = v117;
      v25 = v117[7] + 16 * v74;
      *v25 = v54;
      *(v25 + 8) = 0;
LABEL_9:
      v6 = v100;
      goto LABEL_10;
    }

    v74 = v59;
    if (v58)
    {
      a4 = v103;
      if (v60)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a4 = v103;
      v82 = type metadata accessor for _NativeDictionary(0, v108, &unk_1EEEBE0E0, v103);
      specialized _NativeDictionary.copy()(v82);
      if (v64)
      {
        goto LABEL_8;
      }
    }

LABEL_27:
    v21 = v117;
    v117[(v74 >> 6) + 8] = (v117[(v74 >> 6) + 8] | (1 << v74));
    v5 = v108;
    v22 = (v110)(v21[6] + *(v98 + 72) * v74, v116, v108);
    v75 = v21[7] + 16 * v74;
    *v75 = v54;
    *(v75 + 8) = 0;
    v76 = v21[2];
    v77 = __OFADD__(v76, 1);
    v78 = (&v76->isa + 1);
    if (v77)
    {
      goto LABEL_44;
    }

    v21[2] = v78;
    goto LABEL_9;
  }

LABEL_41:
  v87 = MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v87);
  v92 = v5;
  v93 = a4;
  v94 = partial apply for closure #1 in closure #2 in CollectionDifference<A>.inferringMoves();
  v95 = v88;
  v21;
  _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxSiSgIsgnndzo_AByxAHGAIsAG_pSHRzAHRs_r0_lIetMggozo_Tp5(partial apply for thunk for @callee_guaranteed (@in_guaranteed A, @unowned Int?) -> (@unowned Bool), &v96 - 6, v21, v5, a4);
  v90 = v89;
  swift_bridgeObjectRelease_n(v21, 2);
  return v90;
}

unint64_t CollectionDifference.Change<A>._CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CollectionDifference.Change<A>._CodingKeys.init(rawValue:), v2);
  object;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t CollectionDifference.Change<A>._CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x74657366666FLL;
  v2 = 0xD000000000000010;
  if (a1 != 2)
  {
    v2 = 0x65766F6D65527369;
  }

  if (a1)
  {
    v1 = 0x746E656D656C65;
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

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CollectionDifference<A>.Change<A>._CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CollectionDifference.Change<A>._CodingKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CollectionDifference<A>.Change<A>._CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = CollectionDifference.Change<A>._CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CollectionDifference<A>.Change<A>._CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = CollectionDifference.Change<A>._CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t CollectionDifference.Change<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v42 = *(a2 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CollectionDifference.Change(0, v12, v13, v14);
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v37 - v16);
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v18);
  v20 = type metadata accessor for CollectionDifference.Change<A>._CodingKeys(0, a2, a3, a4);
  v21 = v43;
  (*(v19 + 24))(&v45, v20, v20, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys, v18, v19);
  if (!v21)
  {
    v38 = v15;
    v39 = v17;
    v43 = v11;
    v22 = v42;
    v23 = v45;
    LOBYTE(v45) = 0;
    v37 = (*(*v23 + 152))(&v45, v20, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    LOBYTE(v45) = 1;
    v24 = *(*v23 + 248);
    v25 = a2;
    v24(a2, &v45, a2, v20, a3, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v47 = 2;
    v26 = lazy protocol witness table accessor for type Int? and conformance <A> A?();
    (v24)(&v45, &unk_1EEEBE0E0, &v47, &unk_1EEEBE0E0, v20, v26, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v27 = v45;
    v28 = v46;
    LOBYTE(v45) = 3;
    v30 = (*(*v23 + 120))(&v45, v20, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v23;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v25, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v32 = *(v31 + 48);
    v33 = v28;
    v34 = v39;
    v35 = v39 + *(v31 + 64);
    *v39 = v37;
    (*(v22 + 32))(v34 + v32, v43, v25);
    *v35 = v27;
    v35[8] = v33;
    v36 = v38;
    swift_storeEnumTagMultiPayload(v34, v38, v30 & 1);
    (*(v40 + 32))(v41, v34, v36);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

uint64_t CollectionDifference.Change<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v7 = *(a2 + 16);
  v61 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v52 = &v50 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v55 = &v50 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v50 - v19);
  v21 = v18[3];
  v22 = v18[4];
  __swift_project_boxed_opaque_existential_0Tm(v18, v21);
  v54 = a4;
  v23 = type metadata accessor for CollectionDifference.Change<A>._CodingKeys(0, v7, v59, a4);
  (*(v22 + 24))(&v65, v23, v23, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys, v21, v22);
  v24 = *(v11 + 16);
  v56 = v4;
  v58 = v24;
  v59 = v11 + 16;
  (v24)(v20, v4, a2);
  v25 = a2;
  v26 = v7;
  v27 = v61;
  v28 = swift_getEnumCaseMultiPayload(v20, v25) == 1;
  swift_getTupleTypeMetadata3(0, &type metadata for Int, v7, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
  v30 = v20 + *(v29 + 48);
  v57 = *(v27 + 8);
  v57(v30, v7);
  LOBYTE(v62) = 3;
  v31 = v65;
  v32 = v28;
  v33 = v23;
  v34 = v60;
  (*(*v65 + 104))(v32, &v62, v23, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
  if (!v34)
  {
    v35 = v55;
    v36 = v56;
    v58(v55);
    v37 = *v35;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v26, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v57(v35 + *(v38 + 48), v26);
    LOBYTE(v62) = 0;
    (*(*v31 + 136))(v37, &v62, v33, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v39 = v52;
    (v58)(v52, v36, v25);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v26, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v41 = &v39[*(v40 + 48)];
    v42 = v53;
    (*(v61 + 32))(v53, v41, v26);
    LOBYTE(v62) = 1;
    v61 = *(*v31 + 232);
    (v61)(v42, &v62, v26, v33, v54, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v57(v42, v26);
    v43 = v51;
    (v58)(v51, v36, v25);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v26, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v45 = &v43[*(v44 + 64)];
    v46 = *v45;
    v47 = v45[8];
    v57(&v43[*(v44 + 48)], v26);
    v64 = 2;
    v62 = v46;
    v63 = v47;
    v48 = lazy protocol witness table accessor for type Int? and conformance <A> A?();
    (v61)(&v62, &v64, &unk_1EEEBE0E0, v33, v48, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
  }

  return v65;
}

uint64_t CollectionDifference<A>._CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CollectionDifference<A>._CodingKeys.init(rawValue:), v2);
  object;
  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CollectionDifference<A>._CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x736C61766F6D6572;
  }

  else
  {
    return 0x6F69747265736E69;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CollectionDifference<A><A>._CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CollectionDifference<A>._CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CollectionDifference<A><A>._CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionDifference<A>._CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CollectionDifference<A><A>._CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = CollectionDifference<A>._CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t CollectionDifference<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v103 = a5;
  v107 = type metadata accessor for CollectionDifference.Change(0, a2, a3, a4);
  v104 = *(v107 - 8);
  v9 = MEMORY[0x1EEE9AC00](v107);
  v102 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v94 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v94 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v108 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v20);
  v105 = a3;
  v106 = a4;
  v21 = type metadata accessor for CollectionDifference<A>._CodingKeys(0, a2, a3, a4);
  v22 = v109;
  (*(v19 + 24))(&v110, v21, v21, &protocol witness table for CollectionDifference<A><A>._CodingKeys, v20, v19);
  if (v22)
  {
    goto LABEL_3;
  }

  v100 = v18;
  v101 = v16;
  v99 = v13;
  v109 = a2;
  v25 = v110;
  LOBYTE(v110) = 1;
  v26 = v107;
  v27 = type metadata accessor for Array(0, v107, v23, v24);
  v28 = *(*v25 + 248);
  v115[0] = v105;
  v115[1] = v106;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> CollectionDifference<A>.Change, v26, v115);
  v29 = swift_getWitnessTable(protocol conformance descriptor for <A> [A], v27, &WitnessTable);
  v28(&v116, v27, &v110, v27, v21, v29, &protocol witness table for CollectionDifference<A><A>._CodingKeys);
  v106 = Array._getCount()();
  LOBYTE(v113) = 0;
  v28(&v110, v27, &v113, v27, v21, v29, &protocol witness table for CollectionDifference<A><A>._CodingKeys);
  v25;
  v113 = v110;
  v33 = swift_getWitnessTable(protocol conformance descriptor for [A], v27, v30);
  Array.append<A>(contentsOf:)(&v113, v27, v27, v33);
  v35 = swift_getWitnessTable(protocol conformance descriptor for [A], v27, v34);
  v36 = v106;
  v105 = v27;
  specialized MutableCollection.subscript.getter(v106, v27, v35);
  v37 = v110;
  v38 = v111;
  v39 = v112 >> 1;
  v40 = v101;
  if (v111 != v112 >> 1)
  {
    v50 = v104 + 16;
    v98 = v104 + 32;
    v51 = *(&v110 + 1);
    v52 = v109 - 8;
    if (v111 <= v39)
    {
      v53 = v112 >> 1;
    }

    else
    {
      v53 = v111;
    }

    while (1)
    {
      if (v53 == v38)
      {
LABEL_23:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v94 = v53;
      v97 = v52;
      v96 = v35;
      v106 = v37;
      v54 = v36;
      v55 = v104;
      v56 = *(v104 + 72);
      v95 = v51;
      v57 = v40;
      v58 = v100;
      v59 = v50;
      (*(v104 + 16))(v100, v51 + v56 * v38, v26);
      v60 = v58;
      v40 = v57;
      (*(v55 + 32))(v57, v60, v26);
      if (swift_getEnumCaseMultiPayload(v57, v26) != 1)
      {
        break;
      }

      ++v38;
      v61 = v26;
      v62 = v109;
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v109, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
      v52 = v97;
      v64 = *(*(v62 - 8) + 8);
      v65 = v62;
      v26 = v61;
      v64(v40 + *(v63 + 48), v65);
      v36 = v54;
      v37 = v106;
      v35 = v96;
      v50 = v59;
      v51 = v95;
      v53 = v94;
      if (v39 == v38)
      {
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease(v106);
    v85 = v109;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v109, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    (*(*(v85 - 8) + 8))(v57 + *(v86 + 48), v85);
    goto LABEL_26;
  }

LABEL_6:
  swift_unknownObjectRelease(v37);
  v41 = v105;
  specialized MutableCollection.subscript.getter(v36, v105, v35);
  v42 = v110;
  v43 = v111;
  v44 = v112 >> 1;
  v45 = v103;
  if (v111 != v112 >> 1)
  {
    v66 = v104 + 16;
    v67 = v104 + 32;
    v68 = *(&v110 + 1);
    v69 = (v109 - 8);
    if (v111 <= v44)
    {
      v70 = v112 >> 1;
    }

    else
    {
      v70 = v111;
    }

    while (1)
    {
      if (v70 == v43)
      {
        goto LABEL_23;
      }

      v98 = v70;
      v106 = v42;
      v100 = v68;
      v101 = v69;
      v71 = v104;
      v72 = &v68[*(v104 + 72) * v43];
      v73 = *(v104 + 16);
      v74 = v67;
      v75 = v99;
      v76 = v107;
      v97 = v66;
      v73(v99, v72, v107);
      v77 = *(v71 + 32);
      v78 = v102;
      v79 = v75;
      v67 = v74;
      v77(v102, v79, v76);
      if (swift_getEnumCaseMultiPayload(v78, v76) == 1)
      {
        break;
      }

      ++v43;
      v80 = v78;
      v81 = v109;
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v109, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
      v69 = v101;
      v83 = *(*(v81 - 8) + 8);
      v84 = v81;
      v45 = v103;
      v83(v80 + *(v82 + 48), v84);
      v41 = v105;
      v42 = v106;
      v66 = v97;
      v68 = v100;
      v70 = v98;
      if (v44 == v43)
      {
        goto LABEL_7;
      }
    }

    swift_unknownObjectRelease(v106);
    v87 = v109;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v109, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    (*(*(v87 - 8) + 8))(v78 + *(v88 + 48), v87);
    goto LABEL_26;
  }

LABEL_7:
  swift_unknownObjectRelease(v42);
  v46 = v116;
  *&v110 = v116;
  v48 = swift_getWitnessTable(protocol conformance descriptor for [A], v41, v47);
  v49 = v109;
  if ((static CollectionDifference._validateChanges<A>(_:)(&v110, v109, v41, v48) & 1) == 0)
  {
LABEL_26:
    v116;
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v90 = v89;
    v91 = v108;
    v92 = v108[3];
    v93 = v108[4];
    __swift_project_boxed_opaque_existential_0Tm(v108, v92);
    *v90 = (*(v93 + 8))(v92, v93);
    *(v90 + 8) = 0xD00000000000002ELL;
    *(v90 + 16) = 0x800000018066E7D0;
    *(v90 + 24) = 0;
    *(v90 + 72) = 3;
    swift_willThrow();
    v31 = v91;
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  v113 = v46;
  CollectionDifference.init<A>(_validatedChanges:)(&v113, v49, v41, v48, &v110);
  *v45 = v110;
LABEL_3:
  v31 = v108;
  return __swift_destroy_boxed_opaque_existential_1Tm(v31);
}

uint64_t CollectionDifference<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v24 = v4[1];
  v10 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  v11 = *(a2 + 16);
  v12 = type metadata accessor for CollectionDifference<A>._CodingKeys(0, v11, a3, a4);
  v13 = *(v9 + 24);
  v8;
  v13(&v31, v12, v12, &protocol witness table for CollectionDifference<A><A>._CodingKeys, v10, v9);
  v30 = v8;
  v14 = v8;
  v29 = 0;
  v15 = *(*v31 + 232);
  v18 = type metadata accessor for CollectionDifference.Change(255, v11, v16, v17);
  v21 = type metadata accessor for Array(0, v18, v19, v20);
  v28[0] = a3;
  v28[1] = a4;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> CollectionDifference<A>.Change, v18, v28);
  v22 = swift_getWitnessTable(protocol conformance descriptor for <A> [A], v21, &WitnessTable);
  v15(&v30, &v29, v21, v12, v22, &protocol witness table for CollectionDifference<A><A>._CodingKeys);
  v14;
  if (!v26)
  {
    v30 = v24;
    v29 = 1;
    v24;
    v15(&v30, &v29, v21, v12, v22, &protocol witness table for CollectionDifference<A><A>._CodingKeys);
    v24;
  }

  return v31;
}

uint64_t CollectionOfOne.Iterator._elements.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for Optional(0, *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t CollectionOfOne.Iterator._elements.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t CollectionOfOne.Iterator.init(_elements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v8 = type metadata accessor for Optional(0, a2, v6, v7);
  v9 = *(*(v8 - 8) + 40);

  return v9(a3, a1, v8);
}

uint64_t CollectionOfOne.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional(0, v6, a2, a3);
  (*(*(v7 - 8) + 32))(a4, v4, v7);
  v8 = *(*(v6 - 8) + 56);

  return v8(v4, 1, 1, v6);
}

Swift::Int __swiftcall CollectionOfOne.index(after:)(Swift::Int after)
{
  if (after)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 1;
}

Swift::Int __swiftcall CollectionOfOne.index(before:)(Swift::Int before)
{
  if (before != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t CollectionOfOne.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional(0, v6, a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *(v6 - 8);
  (*(v11 + 32))(&v14 - v9, v4, v6);
  v12 = *(v11 + 56);
  v12(v10, 0, 1, v6);
  v12(a4, 1, 1, v6);
  return (*(v8 + 40))(a4, v10, v7);
}

uint64_t CollectionOfOne.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(*(*(a2 + 16) - 8) + 16);

  return v4(a3, v3);
}

uint64_t key path getter for CollectionOfOne.subscript(_:) : <A>CollectionOfOne<A>A@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = CollectionOfOne.subscript.read(v7, *a1);
  (*(*(v4 - 8) + 16))(a3);
  return (v5)(v7, 0);
}

uint64_t (*CollectionOfOne.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t key path setter for CollectionOfOne.subscript(_:) : <A>CollectionOfOne<A>A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = CollectionOfOne.subscript.modify(v9, *a3);
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(v9, 0);
}

{
  v6 = type metadata accessor for CollectionOfOne(255, *(a3 + a4 - 8), a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v6, v7);
  v10 = type metadata accessor for Slice(0, v6, WitnessTable, v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v14 = *a3;
  v13 = a3[1];
  (*(v15 + 16))(&v17 - v11, a1);
  return CollectionOfOne.subscript.setter(v12, v14, v13, v6);
}

uint64_t (*CollectionOfOne.subscript.modify(uint64_t a1, uint64_t a2))()
{
  if (a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t CollectionOfOne.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(*(*(a3 + 16) - 8) + 40);

  return v4(v3, a1);
}

uint64_t CollectionOfOne.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  if (a1 < 0 || a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a3, a3);
  v11 = type metadata accessor for Slice(0, a3, WitnessTable, v10);
  result = (*(*(a3 - 8) + 16))(&a4[*(v11 + 40)], v4, a3);
  *a4 = a1;
  *(a4 + 1) = a2;
  return result;
}

uint64_t key path getter for CollectionOfOne.subscript(_:) : <A>CollectionOfOne<A>A@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for CollectionOfOne(0, *(a1 + a2 - 8), a2, a3);
  return CollectionOfOne.subscript.getter(v5, v6, v7, a4);
}

uint64_t CollectionOfOne.subscript.setter(char *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = v4;
  v21[0] = a2;
  v21[1] = a3;
  v20 = xmmword_180672710;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a4, a3);
  specialized Collection._failEarlyRangeCheck(_:bounds:)(v21, &v20, a4, WitnessTable);
  v11 = *(a1 + 1);
  v21[0] = *a1;
  *&v20 = v11;
  v13 = type metadata accessor for Slice(0, a4, WitnessTable, v12);
  v14 = *(v13 + 40);
  v16 = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a4, v15);
  v17 = RandomAccessCollection<>.distance(from:to:)(v21, &v20, a4, v16, &protocol witness table for Int);
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 - a2 != v17)
  {
    goto LABEL_8;
  }

  if (v17 != 1)
  {
    return (*(*(v13 - 8) + 8))(a1, v13);
  }

  v18 = *(a4 - 1);
  (*(v18 + 8))(v5, a4);
  return (*(v18 + 32))(v5, &a1[v14], a4);
}

void (*CollectionOfOne.subscript.modify(void *a1, uint64_t a2, uint64_t a3, unint64_t a4))(uint64_t *a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x40, 0x1991uLL);
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v11 = v9;
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a4, v10);
  v14 = type metadata accessor for Slice(0, a4, WitnessTable, v13);
  v11[4] = v14;
  v15 = *(v14 - 8);
  v11[5] = v15;
  v16 = *(v15 + 64);
  if (swift_coroFrameAlloc)
  {
    v11[6] = swift_coroFrameAlloc(v16, 0x1991uLL);
    v17 = swift_coroFrameAlloc(v16, 0x1991uLL);
    v11[7] = v17;
    if (a2 < 0)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v11[6] = malloc(v16);
    v17 = malloc(v16);
    v11[7] = v17;
    if (a2 < 0)
    {
      goto LABEL_10;
    }
  }

  if (a3 >= 2)
  {
    goto LABEL_10;
  }

  v18 = v17;
  (*(*(a4 - 8) + 16))(v17 + *(v14 + 40), v4, a4);
  *v18 = a2;
  v18[1] = a3;
  return CollectionOfOne.subscript.modify;
}

void CollectionOfOne.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);
    v9 = *v2;
    v8 = *(v2 + 8);
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    CollectionOfOne.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CollectionOfOne.subscript.setter(*(*a1 + 56), *v2, *(v2 + 8), *(v2 + 16));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance CollectionOfOne<A>(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(*(*(a3 + 16) - 8) + 40);

  return v4(v3, a1);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance CollectionOfOne<A>(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0xE285uLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = CollectionOfOne.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance [A](void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance CollectionOfOne<A>(void *a1, uint64_t *a2, unint64_t a3))(uint64_t *a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xC49uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v9 = v7;
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a3, v8);
  v12 = type metadata accessor for Slice(0, a3, WitnessTable, v11);
  v9[2] = v12;
  v13 = *(v12 - 8);
  v9[3] = v13;
  v14 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[4] = swift_coroFrameAlloc(v14, 0xC49uLL);
    v15 = swift_coroFrameAlloc(v14, 0xC49uLL);
  }

  else
  {
    v9[4] = malloc(v14);
    v15 = malloc(v14);
  }

  v16 = *a2;
  v17 = a2[1];
  v9[5] = v15;
  v9[6] = v16;
  v9[7] = v17;
  if (v16 < 0 || v17 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = v15;
  (*(*(a3 - 8) + 16))(v15 + *(v12 + 40), v3, a3);
  *v18 = v16;
  v18[1] = v17;
  return protocol witness for MutableCollection.subscript.modify in conformance CollectionOfOne<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance CollectionOfOne<A>(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = *(v2 + 8);
    (*(v8 + 16))(*(*a1 + 32), v6, v7);
    CollectionOfOne.subscript.setter(v5, v3, v4, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    CollectionOfOne.subscript.setter(*(*a1 + 40), v3, v4, *(v2 + 8));
  }

  free(v6);
  free(v5);

  free(v2);
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance CollectionOfOne<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = 0;
  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance CollectionOfOne<A>(void *result)
{
  if (*result != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = 0;
  return result;
}

uint64_t _ss15CollectionOfOneVyxGSlsSl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss15CollectionOfOneVyxGSlsSl5index_8offsetBy07limitedF05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t _ss15CollectionOfOneVyxGSlsSl8distance4from2toSi5IndexQz_AHtFTW_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionOfOne<A>(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0x8E5DuLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = CollectionOfOne.subscript.read(v4, *a2);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t protocol witness for Collection.indices.getter in conformance CollectionOfOne<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

void *protocol witness for Collection.index(after:) in conformance CollectionOfOne<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = 1;
  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance CollectionOfOne<A>(void *result)
{
  if (*result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = 1;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionOfOne<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance DefaultIndices<A>(unint64_t a1, uint64_t a2, int *a3)
{
  WitnessTable = swift_getWitnessTable(a3, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v6;
}

uint64_t CollectionOfOne.debugDescription.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _StringGuts.init(_initialCapacity:)(19);
  v8 = v6;
  v9 = v7;
  v164 = v6;
  v165 = v7;
  v10 = 0x800000018066E850 | 0x8000000000000000;
  v11 = HIBYTE(v7) & 0xF;
  v12 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v13 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 && (v6 & ~v7 & 0x2000000000000000) == 0)
  {
    v7;
    v164 = 0xD000000000000010;
    v165 = 0x800000018066E850 | 0x8000000000000000;
    goto LABEL_87;
  }

  v160 = v5;
  v161 = v1;
  v162 = v3;
  v14 = 0x800000018066E850 & 0x2000000000000000;
  v15 = (0x800000018066E850 >> 56) & 0xF;
  if ((0x800000018066E850 & 0x2000000000000000 & v7) != 0)
  {
    v16 = v11 + v15;
    if (v11 + v15 <= 0xF)
    {
      if (v15)
      {
        v38 = 0;
        v39 = 0;
        v40 = 8 * v11;
        v41 = 8 * v15;
        v42 = v7;
        v3 = v162;
        do
        {
          v43 = v10 >> (v38 & 0x38);
          if (v39 < 8)
          {
            v43 = 0xD000000000000010 >> v38;
          }

          v44 = (v43 << (v40 & 0x38)) | ((-255 << (v40 & 0x38)) - 1) & v42;
          v45 = (v43 << v40) | ((-255 << v40) - 1) & v8;
          if (v11 <= 7)
          {
            v8 = v45;
          }

          else
          {
            v42 = v44;
          }

          ++v11;
          v40 += 8;
          v38 += 8;
          ++v39;
        }

        while (v41 != v38);
      }

      else
      {
        v42 = v7;
        v3 = v162;
      }

      v7;
      0x800000018066E850 | 0x8000000000000000;
      v65 = 0xA000000000000000;
      if (!(v8 & 0x8080808080808080 | v42 & 0x80808080808080))
      {
        v65 = 0xE000000000000000;
      }

      v164 = v8;
      v165 = v65 & 0xFF00000000000000 | (v16 << 56) | v42 & 0xFFFFFFFFFFFFFFLL;
      goto LABEL_86;
    }
  }

  if (v14)
  {
    v17 = (0x800000018066E850 >> 56) & 0xF;
  }

  else
  {
    v17 = 16;
  }

  if ((0x800000018066E850 & 0x1000000000000000) == 0)
  {
    0x800000018066E850 | 0x8000000000000000;
    v19 = v17;
    if ((v9 & 0x1000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_222:
    v140 = String.UTF8View._foreignCount()();
    v21 = v140 + v19;
    if (!__OFADD__(v140, v19))
    {
      goto LABEL_14;
    }

LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  swift_bridgeObjectRetain_n(0x800000018066E850 | 0x8000000000000000, 2);
  v136._rawBits = 1;
  v137._rawBits = (v17 << 16) | 1;
  v138._rawBits = _StringGuts.validateScalarRange(_:)(v136, v137, 0xD000000000000010, 0x800000018066E850 | 0x8000000000000000)._rawBits;
  if (v138._rawBits < 0x10000)
  {
    v138._rawBits |= 3;
  }

  v19 = String.UTF8View.distance(from:to:)(v138, v139);
  0x800000018066E850 | 0x8000000000000000;
  if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_222;
  }

LABEL_13:
  v20 = __OFADD__(v13, v19);
  v21 = v13 + v19;
  if (v20)
  {
    goto LABEL_224;
  }

LABEL_14:
  v159 = v2;
  v22 = v8 & ~v9;
  if ((v22 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
  {
    v23 = _StringGuts.nativeUnusedCapacity.getter(v8, v9);
    if (v24)
    {
      goto LABEL_247;
    }

    if (v21 > 15)
    {
      goto LABEL_25;
    }

    if ((v9 & 0x2000000000000000) == 0)
    {
      if (v23 < v19)
      {
        goto LABEL_20;
      }

LABEL_25:
      v27 = v22 & 0x2000000000000000;
      v28 = _StringGuts.nativeUnusedCapacity.getter(v8, v9);
      if ((v29 & 1) != 0 || v28 < v19)
      {
        if (v27)
        {
          swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL);
        }

        v30 = _StringGuts.nativeCapacity.getter(v8, v9);
        if (v32)
        {
          v33 = 0;
        }

        else
        {
          v33 = v30;
        }

        if (v33 + 0x4000000000000000 < 0)
        {
          __break(1u);
          goto LABEL_238;
        }

        v34 = 2 * v33;
        if (v34 > v21)
        {
          v21 = v34;
        }
      }

      else if (v27)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL);
        v2 = v159;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v2 = v159;
LABEL_36:
      _StringGuts.grow(_:)(v21);
LABEL_37:
      if ((0x800000018066E850 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(0xD000000000000010, 0x800000018066E850 | 0x8000000000000000, 0, v17);
      }

      else
      {
        if (v14)
        {
          v35 = (0x800000018066E850 >> 62) & 1;
          *&v163 = 0xD000000000000010;
          *(&v163 + 1) = 0x800000018066E850 & 0xFFFFFFFFFFFFF0;
          v36 = &v163;
          v37 = (0x800000018066E850 >> 56) & 0xF;
        }

        else
        {
          v36 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 16, (0x800000018066E850 & 0xFFFFFFFFFFFFFF0) + 32, 16);
          LOBYTE(v35) = 1;
        }

        closure #1 in _StringGuts.append(_:)(v36, v37, &v164, v35);
      }

      swift_bridgeObjectRelease_n(0x800000018066E850 | 0x8000000000000000, 2);
      goto LABEL_85;
    }
  }

  else
  {
    if (v21 > 15)
    {
      goto LABEL_25;
    }

    if ((v9 & 0x2000000000000000) == 0)
    {
LABEL_20:
      if ((v9 & 0x1000000000000000) != 0)
      {
        v8 = _StringGuts._foreignConvertedToSmall()(v8, v9);
        v26 = v134;
      }

      else
      {
        if ((v8 & 0x1000000000000000) != 0)
        {
          v25 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v25 = _StringObject.sharedUTF8.getter(v8, v9);
          v12 = v151;
        }

        closure #1 in _StringGuts._convertedToSmall()(v25, v12, &v163, v18);
        v26 = *(&v163 + 1);
        v8 = v163;
      }

      goto LABEL_51;
    }
  }

  v26 = v9;
LABEL_51:
  v46 = 0xD000000000000010;
  0x800000018066E850 | 0x8000000000000000;
  v47._rawBits = 1;
  v48._rawBits = (v17 << 16) | 1;
  v49._rawBits = _StringGuts.validateScalarRange(_:)(v47, v48, 0xD000000000000010, 0x800000018066E850 | 0x8000000000000000)._rawBits;
  if (v49._rawBits < 0x10000)
  {
    v49._rawBits |= 3;
  }

  if (v49._rawBits >> 16 || v50._rawBits >> 16 != v17)
  {
    v46 = specialized static String._copying(_:)(v49._rawBits, v50._rawBits, 0xD000000000000010, 0x800000018066E850 | 0x8000000000000000);
    v52 = v53;
    0x800000018066E850 | 0x8000000000000000;
  }

  else
  {
    v52 = 0x800000018066E850 | 0x8000000000000000;
  }

  if ((v52 & 0x2000000000000000) == 0)
  {
    goto LABEL_233;
  }

  v52;
  while (1)
  {
    v54 = HIBYTE(v26) & 0xF;
    v55 = HIBYTE(v52) & 0xF;
    v56 = v55 + v54;
    if (v55 + v54 > 0xF)
    {
      goto LABEL_247;
    }

    v10;
    if (v55)
    {
      v57 = 0;
      v58 = 0;
      v59 = 8 * v54;
      v60 = 8 * v55;
      v2 = v159;
      do
      {
        v61 = v52 >> (v57 & 0x38);
        if (v58 < 8)
        {
          v61 = v46 >> v57;
        }

        v62 = (v61 << (v59 & 0x38)) | ((-255 << (v59 & 0x38)) - 1) & v26;
        v63 = (v61 << v59) | ((-255 << v59) - 1) & v8;
        if (v54 <= 7)
        {
          v8 = v63;
        }

        else
        {
          v26 = v62;
        }

        ++v54;
        v59 += 8;
        v57 += 8;
        ++v58;
      }

      while (v60 != v57);
    }

    else
    {
      v2 = v159;
    }

    v9;
    v10;
    v64 = 0xA000000000000000;
    if (!(v8 & 0x8080808080808080 | v26 & 0x80808080808080))
    {
      v64 = 0xE000000000000000;
    }

    v164 = v8;
    v165 = v64 & 0xFF00000000000000 | (v56 << 56) | v26 & 0xFFFFFFFFFFFFFFLL;
LABEL_85:
    v3 = v162;
LABEL_86:
    v5 = v160;
    v1 = v161;
LABEL_87:
    (*(v3 + 16))(v5, v1, v2);
    *&v163 = 0;
    *(&v163 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(v5, &v163, v2, &type metadata for String, &protocol witness table for String);
    (*(v3 + 8))(v5, v2);
    v14 = *(&v163 + 1);
    v9 = v163;
    v67 = v164;
    v17 = v165;
    v68 = HIBYTE(v165) & 0xF;
    v26 = v164 & 0xFFFFFFFFFFFFLL;
    if ((v165 & 0x2000000000000000) != 0)
    {
      v69 = HIBYTE(v165) & 0xF;
    }

    else
    {
      v69 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (!v69 && (v164 & ~v165 & 0x2000000000000000) == 0)
    {
      v165;
      v164 = v9;
      v165 = v14;
      goto LABEL_180;
    }

    v8 = HIBYTE(*(&v163 + 1)) & 0xFLL;
    if ((v165 & 0x2000000000000000) == 0)
    {
      LODWORD(v162) = (*(&v163 + 1) & 0x2000000000000000) == 0;
      v70 = v163 & 0xFFFFFFFFFFFFLL;
      v10 = HIBYTE(*(&v163 + 1)) & 0xFLL;
      if ((*(&v163 + 1) & 0x2000000000000000) != 0)
      {
LABEL_98:
        v161 = v70;
        if ((*(&v163 + 1) & 0x1000000000000000) == 0)
        {
          goto LABEL_99;
        }

        goto LABEL_137;
      }

LABEL_97:
      v10 = v70;
      goto LABEL_98;
    }

    if ((*(&v163 + 1) & 0x2000000000000000) == 0)
    {
      v70 = v163 & 0xFFFFFFFFFFFFLL;
      LODWORD(v162) = 1;
      goto LABEL_97;
    }

    v94 = v68 + v8;
    if (v68 + v8 < 0x10)
    {
      if (v8)
      {
        v112 = 0;
        v113 = 0;
        v114 = 8 * v68;
        v115 = 8 * v8;
        v8 = v165;
        do
        {
          v116 = *(&v163 + 1) >> (v112 & 0x38);
          if (v113 < 8)
          {
            v116 = v163 >> v112;
          }

          v117 = (v116 << (v114 & 0x38)) | ((-255 << (v114 & 0x38)) - 1) & v8;
          v118 = (v116 << v114) | ((-255 << v114) - 1) & v67;
          if (v68 <= 7)
          {
            v67 = v118;
          }

          else
          {
            v8 = v117;
          }

          ++v68;
          v114 += 8;
          v112 += 8;
          ++v113;
        }

        while (v115 != v112);
      }

      else
      {
        v8 = v165;
      }

      v165;
      v14;
      v119 = 0xA000000000000000;
      if (!(v67 & 0x8080808080808080 | v8 & 0x80808080808080))
      {
        v119 = 0xE000000000000000;
      }

      v111 = v119 | (v94 << 56);
      goto LABEL_179;
    }

    LODWORD(v162) = 0;
    v10 = HIBYTE(*(&v163 + 1)) & 0xFLL;
    v161 = v163 & 0xFFFFFFFFFFFFLL;
    if ((*(&v163 + 1) & 0x1000000000000000) == 0)
    {
LABEL_99:
      *(&v163 + 1);
      v72 = v10;
      if ((v17 & 0x1000000000000000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_140;
    }

LABEL_137:
    swift_bridgeObjectRetain_n(*(&v163 + 1), 2);
    v95._rawBits = 1;
    v96._rawBits = (v10 << 16) | 1;
    v97._rawBits = _StringGuts.validateScalarRange(_:)(v95, v96, v9, v14)._rawBits;
    if (v97._rawBits < 0x10000)
    {
      v97._rawBits |= 3;
    }

    v72 = String.UTF8View.distance(from:to:)(v97, v98);
    v14;
    if ((v17 & 0x1000000000000000) == 0)
    {
LABEL_100:
      v20 = __OFADD__(v69, v72);
      v46 = v69 + v72;
      if (v20)
      {
        goto LABEL_142;
      }

      goto LABEL_101;
    }

LABEL_140:
    v99 = String.UTF8View._foreignCount()();
    v46 = v99 + v72;
    if (__OFADD__(v99, v72))
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

LABEL_101:
    v73 = v67 & ~v17;
    if ((v73 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v17 & 0xFFFFFFFFFFFFFFFLL))
    {
      break;
    }

    v74 = _StringGuts.nativeUnusedCapacity.getter(v67, v17);
    if (v75)
    {
      goto LABEL_247;
    }

    if (v46 <= 15)
    {
      if ((v17 & 0x2000000000000000) != 0)
      {
        goto LABEL_129;
      }

      if (v74 < v72)
      {
        goto LABEL_107;
      }
    }

LABEL_112:
    v52 = v73 & 0x2000000000000000;
    v77 = _StringGuts.nativeUnusedCapacity.getter(v67, v17);
    if ((v78 & 1) == 0 && v77 >= v72)
    {
      if (!v52 || !swift_isUniquelyReferenced_nonNull_native(v17 & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_122;
      }

      goto LABEL_123;
    }

    if (v52)
    {
      swift_isUniquelyReferenced_nonNull_native(v17 & 0xFFFFFFFFFFFFFFFLL);
    }

    v79 = _StringGuts.nativeCapacity.getter(v67, v17);
    if (v80)
    {
      v81 = 0;
    }

    else
    {
      v81 = v79;
    }

    if (v81 + 0x4000000000000000 >= 0)
    {
      v82 = 2 * v81;
      if (v82 > v46)
      {
        v46 = v82;
      }

LABEL_122:
      _StringGuts.grow(_:)(v46);
LABEL_123:
      if ((v14 & 0x1000000000000000) == 0)
      {
        if (v162)
        {
          if ((v9 & 0x1000000000000000) != 0)
          {
            v83 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v84 = v161;
            v85 = v161;
          }

          else
          {
            v148 = _StringObject.sharedUTF8.getter(v9, v14);
            if (v149 < v161)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v83 = v148;
            v85 = v149;
            v84 = v161;
          }

          v86 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v84, v83, v85);
          v88 = v9 >> 63;
        }

        else
        {
          v88 = (v14 >> 62) & 1;
          *&v163 = v9;
          *(&v163 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
          v86 = &v163;
          v87 = HIBYTE(v14) & 0xF;
        }

        closure #1 in _StringGuts.append(_:)(v86, v87, &v164, v88);
        goto LABEL_174;
      }

LABEL_143:
      _StringGuts._foreignAppendInPlace(_:)(v9, v14, 0, v10);
LABEL_174:
      swift_bridgeObjectRelease_n(v14, 2);
      goto LABEL_180;
    }

    __break(1u);
LABEL_233:
    if ((v52 & 0x1000000000000000) != 0)
    {
      v46 = _StringGuts._foreignConvertedToSmall()(v46, v52);
      v156 = v155;
      v52;
      v52 = v156;
    }

    else
    {
      if ((v46 & 0x1000000000000000) != 0)
      {
        v144 = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v145 = v46 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v144 = _StringObject.sharedUTF8.getter(v46, v52);
      }

      closure #1 in _StringGuts._convertedToSmall()(v144, v145, &v163, v51);
      v52;
      v52 = *(&v163 + 1);
      v46 = v163;
    }
  }

  if (v46 > 15)
  {
    goto LABEL_112;
  }

  if ((v17 & 0x2000000000000000) != 0)
  {
LABEL_129:
    v8 = v17;
  }

  else
  {
LABEL_107:
    if ((v17 & 0x1000000000000000) != 0)
    {
      v67 = _StringGuts._foreignConvertedToSmall()(v67, v17);
      v8 = v133;
    }

    else
    {
      if ((v67 & 0x1000000000000000) != 0)
      {
        v76 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v76 = _StringObject.sharedUTF8.getter(v67, v17);
        v26 = v150;
      }

      closure #1 in _StringGuts._convertedToSmall()(v76, v26, &v163, v71);
      v8 = *(&v163 + 1);
      v67 = v163;
    }
  }

  v14;
  v89._rawBits = 1;
  v90._rawBits = (v10 << 16) | 1;
  v91._rawBits = _StringGuts.validateScalarRange(_:)(v89, v90, v9, v14)._rawBits;
  if (v91._rawBits < 0x10000)
  {
    v91._rawBits |= 3;
  }

  if (v91._rawBits >> 16 || v92._rawBits >> 16 != v10)
  {
    v9 = specialized static String._copying(_:)(v91._rawBits, v92._rawBits, v9, v14);
    v10 = v100;
    v14;
  }

  else
  {
    v10 = v14;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    goto LABEL_228;
  }

  v10;
  while (1)
  {
    v101 = HIBYTE(v8) & 0xF;
    v102 = HIBYTE(v10) & 0xF;
    v103 = v102 + v101;
    if (v102 + v101 > 0xF)
    {
      goto LABEL_247;
    }

    v14;
    if (v102)
    {
      v104 = 0;
      v105 = 0;
      v106 = 8 * v101;
      do
      {
        v107 = v10 >> (v104 & 0x38);
        if (v105 < 8)
        {
          v107 = v9 >> v104;
        }

        v108 = (v107 << (v106 & 0x38)) | ((-255 << (v106 & 0x38)) - 1) & v8;
        v109 = (v107 << v106) | ((-255 << v106) - 1) & v67;
        if (v101 <= 7)
        {
          v67 = v109;
        }

        else
        {
          v8 = v108;
        }

        ++v101;
        v106 += 8;
        v104 += 8;
        ++v105;
      }

      while (8 * v102 != v104);
    }

    v17;
    v14;
    v110 = 0xA000000000000000;
    if (!(v67 & 0x8080808080808080 | v8 & 0x80808080808080))
    {
      v110 = 0xE000000000000000;
    }

    v111 = v110 | (v103 << 56);
LABEL_179:
    v164 = v67;
    v165 = v111 & 0xFF00000000000000 | v8 & 0xFFFFFFFFFFFFFFLL;
LABEL_180:
    v17 = v164;
    v14 = v165;
    v10 = HIBYTE(v165) & 0xF;
    v9 = v164 & 0xFFFFFFFFFFFFLL;
    if ((v165 & 0x2000000000000000) != 0)
    {
      v120 = HIBYTE(v165) & 0xF;
    }

    else
    {
      v120 = v164 & 0xFFFFFFFFFFFFLL;
    }

    if (!v120 && (v164 & ~v165 & 0x2000000000000000) == 0)
    {
      v165;
      return 41;
    }

    if ((v165 & 0x2000000000000000) != 0 && v10 != 15)
    {
      break;
    }

    0xE100000000000000;
    if ((v14 & 0x1000000000000000) != 0)
    {
LABEL_225:
      v141 = String.UTF8View._foreignCount()();
      v67 = v141 + 1;
      if (!__OFADD__(v141, 1))
      {
LABEL_192:
        if ((v17 & ~v14 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v14 & 0xFFFFFFFFFFFFFFFLL))
        {
          v122 = _StringGuts.nativeUnusedCapacity.getter(v17, v14);
          if (v123)
          {
            goto LABEL_247;
          }

          if (v67 > 15)
          {
            goto LABEL_203;
          }

          if ((v14 & 0x2000000000000000) == 0)
          {
            if (v122 < 1)
            {
LABEL_198:
              if ((v14 & 0x1000000000000000) != 0)
              {
                v17 = _StringGuts._foreignConvertedToSmall()(v17, v14);
                v9 = v135;
              }

              else
              {
                if ((v17 & 0x1000000000000000) != 0)
                {
                  v124 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v124 = _StringObject.sharedUTF8.getter(v17, v14);
                  v9 = v152;
                }

                closure #1 in _StringGuts._convertedToSmall()(v124, v9, &v163, v93);
                v9 = *(&v163 + 1);
                v17 = v163;
              }

LABEL_206:
              v27 = 0xE100000000000000;
              0xE100000000000000;
              v10 = 41;
              v125._rawBits = 1;
              v126._rawBits = 65537;
              v127._rawBits = _StringGuts.validateScalarRange(_:)(v125, v126, 0x29uLL, 0xE100000000000000)._rawBits;
              if (v127._rawBits < 0x10000)
              {
                v127._rawBits |= 3;
              }

              if (v127._rawBits >> 16 || (v128._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
              {
                v10 = specialized static String._copying(_:)(v127._rawBits, v128._rawBits, 0x29uLL, 0xE100000000000000);
                v27 = v129;
                0xE100000000000000;
              }

              if ((v27 & 0x2000000000000000) != 0)
              {
                v27;
LABEL_213:
                v130 = specialized _SmallString.init(_:appending:)(v17, v9, v10, v27);
                if ((v131 & 1) == 0)
                {
                  v132 = v130;
                  v14;
                  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
                  return v132;
                }

LABEL_247:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_238:
              if ((v27 & 0x1000000000000000) != 0)
              {
                v10 = _StringGuts._foreignConvertedToSmall()(v10, v27);
                v158 = v157;
                v27;
                v27 = v158;
              }

              else
              {
                if ((v10 & 0x1000000000000000) != 0)
                {
                  v146 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v147 = v10 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v146 = _StringObject.sharedUTF8.getter(v10, v27);
                }

                closure #1 in _StringGuts._convertedToSmall()(v146, v147, &v163, v31);
                v27;
                v27 = *(&v163 + 1);
                v10 = v163;
              }

              goto LABEL_213;
            }

LABEL_203:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v67, 1);
            v163 = xmmword_18071DC90;
            closure #1 in _StringGuts.append(_:)(&v163, 1uLL, &v164, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v164;
          }
        }

        else
        {
          if (v67 > 15)
          {
            goto LABEL_203;
          }

          if ((v14 & 0x2000000000000000) == 0)
          {
            goto LABEL_198;
          }
        }

        v9 = v14;
        goto LABEL_206;
      }
    }

    else
    {
      v20 = __OFADD__(v120, 1);
      v67 = v120 + 1;
      if (!v20)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
LABEL_228:
    if ((v10 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts._foreignConvertedToSmall()(v9, v10);
      v154 = v153;
      v10;
      v10 = v154;
    }

    else
    {
      if ((v9 & 0x1000000000000000) != 0)
      {
        v142 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v143 = v9 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v142 = _StringObject.sharedUTF8.getter(v9, v10);
      }

      closure #1 in _StringGuts._convertedToSmall()(v142, v143, &v163, v93);
      v10;
      v10 = *(&v163 + 1);
      v9 = v163;
    }
  }

  if (v10 < 8)
  {
    v17 = ((-255 << (8 * (HIBYTE(v165) & 7u))) - 1) & v164 | (41 << (8 * (HIBYTE(v165) & 7u)));
  }

  v165;
  0xE100000000000000;
  return v17;
}

uint64_t CollectionOfOne.customMirror.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v28 = (&v29[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29[-1] - v9;
  (*(v6 + 16))(&v29[-1] - v9, v3, a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject(v11, 0x50, 7uLL);
  *(v12 + 1) = xmmword_18071DB30;
  v12[4] = 0x746E656D656C65;
  v12[5] = 0xE700000000000000;
  v13 = a1[2];
  v12[9] = v13;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v12 + 6);
  (*(*(v13 - 1) + 16))(boxed_opaque_existential_0Tm, v3, v13);
  v29[0] = 0;
  v29[1] = 0;
  v15 = static Mirror._superclassIterator<A>(_:_:)(v10, v29, a1);
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v19 = swift_allocObject(v18, 0x48, 7uLL);
  v19[6] = v12;
  v19[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v19[8] = 0;
  v20 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v21 = swift_allocObject(v20, 0x18, 7uLL);
  v21[2] = 0;
  v22 = v12[2];
  v23 = swift_allocObject(v20, 0x18, 7uLL);
  v23[2] = v22;
  v19[2] = v21;
  v19[3] = &protocol witness table for _IndexBox<A>;
  v19[4] = v23;
  v19[5] = &protocol witness table for _IndexBox<A>;
  v24 = v28;
  (*(v6 + 32))(v28, v10, a1);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v29, v24, a1, v25, 6uLL);
  v27 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  *a2 = a1;
  *(a2 + 8) = v19;
  *(a2 + 16) = 9;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v27;
  return result;
}

Swift::Int CollectionDifference._fastEnumeratedApply(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v92 = *(a2 + 16);
  v8 = type metadata accessor for CollectionDifference.Change(0, v92, a3, a4);
  v9 = *(v8 - 1);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v76 = &v70 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v70 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v78 = &v70 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v77 = &v70 - v20;
  v71 = v21;
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v70 - v22;
  v24 = *v6;
  v23 = v6[1];
  v87 = Array._getCount()();
  result = Array._getCount()();
  v86 = result;
  v26 = 0;
  v27 = 0;
  v84 = v24 & 0xC000000000000001;
  v81 = v23 & 0xC000000000000001;
  v82 = v23;
  v90 = (v9 + 32);
  v91 = (v9 + 16);
  v88 = v92 - 8;
  v89 = v24;
  v73 = v12;
  v74 = a1;
  v72 = v9;
  while (1)
  {
    if (v27 >= v87)
    {
      if (v26 >= v86)
      {
        return result;
      }

      v33 = v24;
      v56 = v84 == 0;
      v57 = v56 | ~_swift_isClassOrObjCExistentialType(v8, v8);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v26, v57 & 1);
      if (v57)
      {
        v58 = v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26;
LABEL_20:
        v59 = v85;
        (*(v9 + 16))(v85, v58, v8);
        goto LABEL_24;
      }

      v61 = v26;
      goto LABEL_33;
    }

    v31 = v81 == 0;
    v32 = !_swift_isClassOrObjCExistentialType(v8, v8) || v31;
    v33 = v82;
    Array._checkSubscript(_:wasNativeTypeChecked:)(v27, v32);
    if (v26 >= v86)
    {
      if (v32)
      {
        v58 = v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27;
        goto LABEL_20;
      }

      v61 = v27;
LABEL_33:
      v64 = _ArrayBuffer._getElementSlowPath(_:)(v61, v33, v8);
      if (v71 != 8)
      {
        goto LABEL_48;
      }

      v93 = v64;
      v59 = v85;
      v65 = v64;
      (*v91)(v85, &v93, v8);
      goto LABEL_41;
    }

    if (v32)
    {
      v34 = v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27;
      v35 = v77;
      v83 = *(v9 + 16);
      v83(v77, v34, v8);
    }

    else
    {
      v62 = _ArrayBuffer._getElementSlowPath(_:)(v27, v33, v8);
      if (v71 != 8)
      {
        goto LABEL_48;
      }

      v93 = v62;
      v35 = v77;
      v63 = v62;
      v83 = *v91;
      v83(v77, &v93, v8);
      swift_unknownObjectRelease(v63);
    }

    v36 = v84 == 0;
    v37 = v78;
    v79 = *v90;
    v79(v78, v35, v8);
    v80 = *v37;
    v38 = v92;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v92, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v40 = (*(v38 - 8) + 8);
    v41 = v37 + *(v39 + 48);
    v42 = *v40;
    (*v40)(v41, v38);
    v43 = v36 | ~_swift_isClassOrObjCExistentialType(v8, v8);
    v44 = v89;
    Array._checkSubscript(_:wasNativeTypeChecked:)(v26, v43 & 1);
    if (v43)
    {
      v45 = v75;
      v83(v75, (v44 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26), v8);
    }

    else
    {
      v66 = _ArrayBuffer._getElementSlowPath(_:)(v26, v44, v8);
      if (v71 != 8)
      {
        goto LABEL_48;
      }

      v93 = v66;
      v45 = v75;
      v67 = v66;
      v83(v75, &v93, v8);
      swift_unknownObjectRelease(v67);
    }

    v46 = v76;
    v79(v76, v45, v8);
    v47 = *v46;
    v48 = v92;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v92, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    v42(&v46[*(v49 + 48)], v48);
    v50 = v80 - v27;
    if (__OFSUB__(v80, v27))
    {
      goto LABEL_46;
    }

    v28 = __OFSUB__(v47, v26);
    v51 = v47 - v26;
    if (v28)
    {
      goto LABEL_47;
    }

    v52 = !_swift_isClassOrObjCExistentialType(v8, v8);
    if (v51 >= v50)
    {
      v54 = v82;
      v60 = v52 || v81 == 0;
      Array._checkSubscript(_:wasNativeTypeChecked:)(v27, v52 || v81 == 0);
      v12 = v73;
      v9 = v72;
      if (v60)
      {
        v55 = v54 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v27;
        goto LABEL_23;
      }

      v68 = v27;
    }

    else
    {
      v53 = v52 || v84 == 0;
      v54 = v89;
      Array._checkSubscript(_:wasNativeTypeChecked:)(v26, v52 || v84 == 0);
      v12 = v73;
      v9 = v72;
      if (v53)
      {
        v55 = v54 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v26;
LABEL_23:
        v59 = v85;
        v83(v85, v55, v8);
        goto LABEL_24;
      }

      v68 = v26;
    }

    v69 = _ArrayBuffer._getElementSlowPath(_:)(v68, v54, v8);
    if (v71 != 8)
    {
      goto LABEL_48;
    }

    v93 = v69;
    v59 = v85;
    v65 = v69;
    v83(v85, &v93, v8);
LABEL_41:
    swift_unknownObjectRelease(v65);
LABEL_24:
    partial apply for closure #1 in RangeReplaceableCollection.applying(_:)(v59);
    if (v5)
    {
      return (*(v9 + 8))(v59, v8);
    }

    (*v90)(v12, v59, v8);
    if (swift_getEnumCaseMultiPayload(v12, v8) == 1)
    {
      v28 = __OFADD__(v27++, 1);
      v24 = v89;
      if (v28)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v28 = __OFADD__(v26++, 1);
      v24 = v89;
      if (v28)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v29 = v92;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v92, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
    result = (*(*(v29 - 8) + 8))(v12 + *(v30 + 48), v29);
  }
}

uint64_t RangeReplaceableCollection.applying(_:)@<X0>(_OWORD *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v98 = a4;
  v99 = a1;
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v8, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  swift_getTupleTypeMetadata2(0, v10, v10, "lower upper ", 0);
  v90 = v11;
  v88 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v89 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v75 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a2, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v87 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v16);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v75 - v17;
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v84 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v75 - v19;
  v96 = AssociatedConformanceWitness;
  v95 = type metadata accessor for PartialRangeFrom(0, v10, AssociatedConformanceWitness, v20);
  v94 = *(v95 - 8);
  v21 = MEMORY[0x1EEE9AC00](v95);
  v93 = &v75 - v22;
  v100 = *(v10 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v92 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v91 = &v75 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v75 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v75 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v75 - v34;
  v97 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(a2, a3);
  v112 = 0;
  v113 = 0;
  v111 = 0;
  (*(v8 + 64))(a2, v8);
  v110 = *v99;
  v102 = a2;
  v103 = a3;
  v104 = &v111;
  v105 = v37;
  v99 = v37;
  v106 = v5;
  v107 = v35;
  v108 = &v113;
  v109 = &v112;
  swift_getAssociatedTypeWitness(255, *(v8 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v41 = type metadata accessor for CollectionDifference(0, v38, v39, v40);
  CollectionDifference._fastEnumeratedApply(_:)(v101, v41, v42, v43);
  v78 = a3;
  v44 = *(v8 + 72);
  v80 = v5;
  v81 = v8;
  v79 = v44;
  v44(a2, v8);
  LOBYTE(AssociatedConformanceWitness) = (*(v96 + 16))(v35, v32, v10);
  v45 = v100 + 1;
  v46 = v100[1];
  v46(v32, v10);
  v47 = v35;
  if (AssociatedConformanceWitness)
  {
    v76 = v46;
    v75 = v45;
    v48 = v100[2];
    v77 = v47;
    v48(v29);
    if (((*(*(v96 + 8) + 8))(v29, v29, v10) & 1) == 0 || (v49 = v100[4], v50 = v93, v100 += 4, v49(v93, v29, v10), v51 = v91, (v48)(v91, v50, v10), v52 = v92, v79(a2, v81), ((*(v96 + 24))(v51, v52, v10) & 1) == 0))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v94 + 8))(v50, v95);
    v53 = v85;
    v49(v85, v51, v10);
    v54 = v90;
    v49(&v53[*(v90 + 48)], v52, v10);
    v55 = v88;
    v56 = v89;
    (*(v88 + 16))(v89, v53, v54);
    v57 = *(v54 + 48);
    v58 = v83;
    v49(v83, v56, v10);
    v59 = &v56[v57];
    v60 = v76;
    v76(v59, v10);
    (*(v55 + 32))(v56, v53, v54);
    v61 = *(v54 + 48);
    v62 = v87;
    v49(&v58[*(v87 + 36)], &v56[v61], v10);
    v60(v56, v10);
    v63 = v60;
    v64 = v81;
    v65 = v82;
    (*(v81 + 11))(v58, a2, v81);
    (*(v86 + 8))(v58, v62);
    v66 = v78;
    v67 = *(v78 + 72);
    v68 = v84;
    v69 = swift_getAssociatedConformanceWitness(v64, a2, v84, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    v70 = v66;
    v46 = v63;
    v67(v65, v68, *(v69 + 8), a2, v70);
    v47 = v77;
  }

  v46(v47, v10);
  v72 = v97;
  v71 = v98;
  v73 = v99;
  (*(v97 + 16))(v98, v99, a2);
  (*(v72 + 56))(v71, 0, 1, a2);
  return (*(v72 + 8))(v73, a2);
}

uint64_t append #1 <A>(into:contentsOf:from:count:) in RangeReplaceableCollection.applying(_:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6)
{
  v69 = a6;
  v77 = a4;
  v76 = a3;
  v68 = a1;
  v8 = *(a6 + 8);
  swift_getAssociatedTypeWitness(0, v8, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v57 - v10;
  swift_getAssociatedTypeWitness(255, v8, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v12 = v11;
  swift_getTupleTypeMetadata2(0, v12, v12, "lower upper ", 0);
  v63 = v13;
  v61 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v57 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a5, v12, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v18 = type metadata accessor for Range(0, v12, AssociatedConformanceWitness, v17);
  v59 = *(v18 - 8);
  v60 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v57 - v19;
  v22 = type metadata accessor for Optional(0, v12, v20, v21);
  v71 = *(v22 - 8);
  v72 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v57 - v24;
  v26 = *(v12 - 8);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v73 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v57 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = *(v26 + 16);
  v75 = &v57 - v33;
  v34 = v76;
  v70 = v32;
  v32();
  (*(v8 + 72))(a5, v8);
  v35 = *(v8 + 144);
  v36 = v77;
  v64 = a2;
  v77 = a5;
  v67 = v8;
  v35(v34, v36, v31, a5, v8);
  v37 = v34;
  v38 = *(v26 + 8);
  v38(v37, v12);
  if ((*(v26 + 48))(v25, 1, v12) == 1)
  {
    (*(v71 + 8))(v25, v72);
    (*(v26 + 32))(v37, v31, v12);
    v38(v75, v12);
    swift_allocError(&unk_1EEEBEBC8, &protocol witness table for _ApplicationError, 0, 0);
    return swift_willThrow();
  }

  else
  {
    v38(v31, v12);
    v40 = *(v26 + 32);
    v40(v37, v25, v12);
    v41 = v73;
    (v70)(v73, v37, v12);
    v42 = v75;
    if (((*(AssociatedConformanceWitness + 24))(v75, v41, v12) & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v43 = v58;
    v40(v58, v42, v12);
    v44 = v63;
    v40(&v43[*(v63 + 48)], v41, v12);
    v46 = v61;
    v45 = v62;
    (*(v61 + 16))(v62, v43, v44);
    v47 = *(v44 + 48);
    v75 = (v26 + 8);
    v76 = v47;
    v72 = v40;
    v48 = v57;
    v40(v57, v45, v12);
    v38(&v45[v76], v12);
    (*(v46 + 32))(v45, v43, v44);
    v49 = v60;
    v72(&v48[*(v60 + 36)], &v45[*(v44 + 48)], v12);
    v38(v45, v12);
    v50 = v67;
    v51 = v65;
    v52 = v77;
    (*(v67 + 11))(v48, v77, v67);
    (*(v59 + 8))(v48, v49);
    v53 = v69;
    v54 = *(v69 + 72);
    v55 = v66;
    v56 = swift_getAssociatedConformanceWitness(v50, v52, v66, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    return v54(v51, v55, *(v56 + 8), v52, v53);
  }
}

void closure #1 in RangeReplaceableCollection.applying(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(swift *, char *, uint64_t), void *a7, const char *a8, uint64_t a9)
{
  v68 = a7;
  v67 = a6;
  v74 = a5;
  v70 = a3;
  v71 = a9;
  v72 = a4;
  v12 = *(a9 + 8);
  swift_getAssociatedTypeWitness(0, v12[1], a8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v62 = (v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v19 = v61 - v18;
  v73 = a8;
  swift_getAssociatedTypeWitness(0, v12, a8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v21 = v20;
  v65 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v63 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v64 = v61 - v24;
  v27 = type metadata accessor for CollectionDifference.Change(0, v14, v25, v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v61 - v28);
  (*(v30 + 16))(v61 - v28, a1, v27);
  LODWORD(a1) = swift_getEnumCaseMultiPayload(v29, v27);
  v31 = *v29;
  swift_getTupleTypeMetadata3(0, &type metadata for Int, v14, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
  v33 = v29 + *(v32 + 48);
  if (a1 != 1)
  {
    v66 = a2;
    v46 = *(v15 + 32);
    v46(v19, v33, v14);
    v47 = v31 + *v67;
    if (!__OFADD__(v31, *v67))
    {
      v48 = __OFSUB__(v47, *v68);
      v49 = v47 - *v68;
      if (!v48)
      {
        v50 = *v66;
        v51 = v49 - *v66;
        if (!__OFSUB__(v49, *v66))
        {
          v67 = v46;
          v52 = v71;
          v53 = v73;
          v54 = v69;
          append #1 <A>(into:contentsOf:from:count:) in RangeReplaceableCollection.applying(_:)(v70, v72, v74, (v49 - v50), v73, v71);
          if (v54)
          {
            v45 = v19;
            goto LABEL_12;
          }

          v55 = v62;
          v67(v62, v19, v14);
          (*(v52 + 64))(v55, v53, v52);
          if (!__OFADD__(*v66, v51))
          {
            *v66 += v51;
            if (!__OFADD__(*v68, 1))
            {
              ++*v68;
              return;
            }

            goto LABEL_26;
          }

LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = (v31 - *a2);
  if (__OFSUB__(v31, *a2))
  {
    __break(1u);
    goto LABEL_22;
  }

  v68 = (v29 + *(v32 + 48));
  v62 = v12;
  v35 = v73;
  v36 = v74;
  v37 = v69;
  append #1 <A>(into:contentsOf:from:count:) in RangeReplaceableCollection.applying(_:)(v70, v72, v74, v34, v73, v71);
  if (v37)
  {
LABEL_6:
    v45 = v68;
LABEL_12:
    (*(v15 + 8))(v45, v14);
    return;
  }

  v70 = v34;
  v71 = v14;
  v61[1] = 0;
  v66 = a2;
  v38 = v64;
  v39 = v65;
  v69 = *(v65 + 16);
  v69(v64, v36, v21);
  v40 = v62;
  v41 = v63;
  (*(v62 + 9))(v35, v62);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v40, v35, v21, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v43 = (*(*(AssociatedConformanceWitness + 8) + 8))(v38, v41, v21);
  v44 = *(v39 + 8);
  v44(v41, v21);
  v44(v38, v21);
  if (v43)
  {
    swift_allocError(&unk_1EEEBEBC8, &protocol witness table for _ApplicationError, 0, 0);
    swift_willThrow();
    v14 = v71;
    goto LABEL_6;
  }

  v56 = v70 + 1;
  if (__OFADD__(v70, 1))
  {
    goto LABEL_27;
  }

  v48 = __OFADD__(*v66, v56);
  v57 = *v66 + v56;
  v58 = v74;
  if (v48)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *v66 = v57;
  v59 = v63;
  v69(v63, v58, v21);
  v60 = v64;
  (*(v62 + 23))(v59, v73);
  v44(v59, v21);
  (*(v65 + 40))(v58, v60, v21);
  if (__OFADD__(*v67, 1))
  {
LABEL_29:
    __break(1u);
    return;
  }

  ++*v67;
  (*(v15 + 8))(v68, v71);
}

uint64_t BidirectionalCollection.difference<A>(from:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17[2] = a5;
  v17[3] = a4;
  v17[4] = a7;
  v17[5] = a6;
  v17[7] = a2;
  v17[8] = a3;
  swift_getAssociatedTypeWitness(255, *(*(a6 + 8) + 8), a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = type metadata accessor for CollectionDifference(0, v12, v13, v14);
  return _withContiguousStorage #1 <A, B><A1, B1>(for:_:) in _myers<A, B>(from:to:using:)(a1, partial apply for closure #1 in _myers<A, B>(from:to:using:), v17, a5, v15, *(a7 + 8), a8);
}

uint64_t BidirectionalCollection<>.difference<A>(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(*(a4 + 8) + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = v15;
  v20[2] = a3;
  v20[3] = a2;
  v20[4] = a5;
  v20[5] = a4;
  v21 = v7;
  v22 = partial apply for implicit closure #1 in BidirectionalCollection<>.difference<A>(from:);
  v23 = &v24;
  v18 = type metadata accessor for CollectionDifference(0, v15, v16, v17);
  return _withContiguousStorage #1 <A, B><A1, B1>(for:_:) in _myers<A, B>(from:to:using:)(a1, closure #1 in _myers<A, B>(from:to:using:)partial apply, v20, a3, v18, *(a5 + 8), a7);
}

__objc2_class **_descent #1 <A, B>(from:to:) in _myers<A, B>(from:to:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, unint64_t a7, uint64_t a8)
{
  v60 = a5;
  v61 = a6;
  v59 = a3;
  v63 = a1;
  swift_getAssociatedTypeWitness(0, *(*(a8 + 8) + 8), a7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v64 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - v16;
  v66 = a2;
  v48 = a2 + v15;
  if (__OFADD__(a2, v15))
  {
    goto LABEL_67;
  }

  v65 = v15;
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(2);
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[2] = 2;
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[4] = 0;
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[5] = 0;
  if (!swift_isUniquelyReferenced_nonNull_native(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5))
  {
    goto LABEL_68;
  }

  if (!BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[2])
  {
LABEL_69:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_4:
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[4] = 0;
  if (v48 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v67 = 0;
  v18 = 0;
  v19 = 0;
  v62 = v64 + 16;
  v50 = &_swiftEmptyArrayStorage;
  v20 = (v64 + 8);
  v47 = xmmword_18071DF70;
  while (1)
  {
    v53 = v19;
    v57 = BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5;
    swift_bridgeObjectRetain_n(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5, 2);
    if (!swift_isUniquelyReferenced_nonNull_native(v50))
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v50[2]->isa + 1, 1, v50, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<_V>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
    }

    v22 = v50[2];
    v21 = v50[3];
    if (v22 >= v21 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v50, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<_V>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
    }

    v23 = v50;
    v50[2] = (v22 + 1);
    v23[v22 + 4] = v57;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_65;
    }

    v49 = v53 + 1;
    v24 = v53;
    BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, v53 + 1);
    v68 = -v24;
    v69 = v24;
    v70 = v47;
    v71 = 0;
    v55 = -v24;
    v72 = -v24;
    v73 = 0;
    if (!swift_isUniquelyReferenced_nonNull_native(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5))
    {
      BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = specialized _ArrayBuffer._consumeAndCreateNew()(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5);
    }

    v25 = specialized StrideThroughIterator.next()();
    if ((v26 & 1) == 0)
    {
      break;
    }

LABEL_14:
    swift_bridgeObjectRelease_n(v57, 2);
    if (v18 < v66 || v67 < v65)
    {
      v19 = v49;
      if (v53 != v48)
      {
        continue;
      }
    }

    BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5;
    return v50;
  }

  v27 = v25;
  v56 = v57 + 32;
  v28 = v53 - 1;
  v29 = __OFSUB__(0, 1 - v53);
  v52 = v55 > 0x7FFFFFFFFFFFFFFELL && v29;
  if (v55 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v28 = v55;
  }

  v51 = v28;
  while (1)
  {
    v58 = BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5;
    if (v27 == v55)
    {
      if (v52)
      {
        goto LABEL_63;
      }

      v30 = v51;
      sub_1802E86D0(v51, 1, v57);
      v31 = *(v56 + 8 * v30);
    }

    else
    {
      if (v27 - 1 < 1)
      {
        v32 = 1 - v27;
        if (__OFSUB__(0, v27 - 1))
        {
          goto LABEL_64;
        }
      }

      else
      {
        v32 = v27 - 2;
      }

      v33 = v27;
      sub_1802E86D0(v32, 1, v57);
      v34 = *(v56 + 8 * v32);
      if (v33 == v53)
      {
        v31 = (v34 + 1);
        v27 = v33;
      }

      else
      {
        v35 = v33;
        if (v33 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = -(v33 + 1);
          if (__OFSUB__(0, v33 + 1))
          {
            goto LABEL_66;
          }
        }

        sub_1802E86D0(v35, 1, v57);
        if (v34 >= *(v56 + 8 * v35))
        {
          v31 = (v34 + 1);
        }

        else
        {
          v31 = *(v56 + 8 * v35);
        }

        v27 = v33;
      }
    }

    v36 = v31 - v27 < v65;
    v37 = v31 < v66;
    v67 = v31 - v27;
    if (v31 < v66 && v31 - v27 < v65)
    {
      v54 = v27;
      v39 = -v27;
      v18 = v31;
      while (1)
      {
        if ((v31 & 0x8000000000000000) != 0 || (v40 = *(v64 + 72), v41 = *(v64 + 16), v41(v17, v63 + v40 * v18, v11), v67 < 0))
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v41(v14, v59 + v40 * (v39 + v18), v11);
        v42 = v60(v17, v14);
        v43 = *v20;
        (*v20)(v14, v11);
        v43(v17, v11);
        if ((v42 & 1) == 0)
        {
          break;
        }

        v36 = ++v18 + v39 < v65;
        v37 = v18 < v66;
        if (v18 >= v66 || v18 + v39 >= v65)
        {
          v27 = v54;
          v67 = v18 - v54;
          goto LABEL_51;
        }
      }

      v27 = v54;
      v67 = v18 - v54;
      v37 = 1;
      v36 = 1;
    }

    else
    {
      v18 = v31;
    }

LABEL_51:
    v44 = v27 - 1;
    BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = v58;
    if (v27 < 1)
    {
      v44 = -v27;
      if (__OFSUB__(0, v27))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = specialized _ArrayBuffer._consumeAndCreateNew()(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5);
        if (!BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[2])
        {
          goto LABEL_69;
        }

        goto LABEL_4;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_native(v58))
    {
      BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = specialized _ArrayBuffer._consumeAndCreateNew()(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5);
    }

    ContiguousArray._checkSubscript_mutating(_:)(v44);
    BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[v44 + 4] = v18;
    if (!v37 && !v36)
    {
      break;
    }

    v27 = specialized StrideThroughIterator.next()();
    if (v45)
    {
      goto LABEL_14;
    }
  }

  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5;
  swift_bridgeObjectRelease_n(v57, 2);
  return v50;
}

void _formChanges #1 <A, B>(from:to:using:) in _myers<A, B>(from:to:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v48 = a2;
  v49 = a4;
  v46 = a1;
  v47 = a3;
  swift_getAssociatedTypeWitness(255, *(*(a7 + 8) + 8), a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = v8;
  v12 = type metadata accessor for CollectionDifference.Change(0, v8, v10, v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v51 = v18;
  v52 = &_swiftEmptyArrayStorage;
  v19 = *(a5 + 16);
  v22 = type metadata accessor for Array(0, v18, v20, v21);
  Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v19, 0);
  if (v19 < 2)
  {
    return;
  }

  v50 = v9 - 8;
  v23 = v19 + 1;
  v24 = 1 - v19;
  v25 = (a5 + 8 * v19 + 24);
  v27 = v48;
  v26 = v49;
  while (1)
  {
    v31 = *v25;
    v32 = v27 - v26;
    if (v24 == v27 - v26)
    {
      goto LABEL_6;
    }

    v33 = v32 - 1;
    if (v23 - 2 != v32)
    {
      if (v33 < 1)
      {
        v34 = 1 - v32;
        if (__OFSUB__(0, v33))
        {
          goto LABEL_43;
        }

        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v34 = v32 - 2;
      }

      v35 = *(v31 + 16);
      if (v34 >= v35)
      {
        goto LABEL_39;
      }

      v36 = *(v31 + 32 + 8 * v34);
      if (v32 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 = -(v32 + 1);
        if (__OFSUB__(0, v32 + 1))
        {
          goto LABEL_42;
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
LABEL_39:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v37 = v27 - v26;
      }

      if (v37 >= v35)
      {
        goto LABEL_39;
      }

      if (v36 < *(v31 + 32 + 8 * v37))
      {
LABEL_6:
        v33 = v32 + 1;
      }
    }

    v38 = v33 - 1;
    if (v33 < 1)
    {
      break;
    }

LABEL_22:
    if (v38 >= *(v31 + 16))
    {
      goto LABEL_39;
    }

    v39 = *(v31 + 8 * v38 + 32);
    v40 = v39 - v33;
    v41 = v26 - 1 + v33 - v39;
    if (v41 >= v27 + ~v39)
    {
      v41 = v27 + ~v39;
    }

    if (v39 < v27 && v40 < v26)
    {
      v26 = v26 - 1 - v41;
    }

    if (v26 == v40)
    {
      *v15 = v39;
      if (v39 < 0 || v39 >= v48)
      {
        goto LABEL_40;
      }

      swift_getTupleTypeMetadata3(0, &type metadata for Int, v9, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
      v44 = &v15[*(v43 + 64)];
      (*(*(v9 - 8) + 16))(&v15[*(v43 + 48)], v46 + *(*(v9 - 8) + 72) * v39, v9);
      *v44 = 0;
      v44[8] = 1;
      swift_storeEnumTagMultiPayload(v15, v51, 1u);
      v30 = v15;
    }

    else
    {
      *v17 = v40;
      if (v40 < 0 || v40 >= v49)
      {
LABEL_40:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_getTupleTypeMetadata3(0, &type metadata for Int, v9, &unk_1EEEBE0E0, "offset element associatedWith ", 0);
      v29 = &v17[*(v28 + 64)];
      (*(*(v9 - 8) + 16))(&v17[*(v28 + 48)], v47 + *(*(v9 - 8) + 72) * v40, v9);
      *v29 = 0;
      v29[8] = 1;
      swift_storeEnumTagMultiPayload(v17, v51, 0);
      v30 = v17;
    }

    Array.append(_:)(v30, v22);
    --v23;
    ++v24;
    --v25;
    v26 = v40;
    v27 = v39;
    if (v23 <= 2)
    {
      return;
    }
  }

  v38 = -v33;
  if (!__OFSUB__(0, v33))
  {
    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t _withContiguousStorage #1 <A, B><A1, B1>(for:_:) in _myers<A, B>(from:to:using:)@<X0>(uint64_t a1@<X0>, void (*a2)(unint64_t, void)@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a7;
  v40 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Optional(0, v16, v14, v15);
  v41 = *(v39 - 8);
  v17 = MEMORY[0x1EEE9AC00](v39);
  v19 = &v35 - v18;
  v42 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a6 + 8);
  v23 = a2;
  v24 = v45;
  result = (*(v22 + 72))(a2, a3, a5, a4, v22);
  if (!v24)
  {
    v36 = a4;
    v37 = a3;
    v26 = a1;
    v28 = v43;
    v27 = v44;
    v38 = v23;
    v45 = 0;
    v29 = v41;
    v30 = v42;
    if ((*(v42 + 48))(v19, 1, a5) == 1)
    {
      (*(v29 + 8))(v19, v39);
      v31 = v36;
      (*(v40 + 16))(v28, v26, v36);
      v32 = (*(v22 + 56))(v31, v22);
      swift_getAssociatedTypeWitness(0, v22, v31, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
      v38(v32 + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)), *(v32 + 16));
      return v32;
    }

    else
    {
      v34 = *(v30 + 32);
      v34(v21, v19, a5);
      return (v34)(v27, v21, a5);
    }
  }

  return result;
}

void closure #1 in _myers<A, B>(from:to:using:)(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, _OWORD *a6@<X8>)
{
  v48 = a6;
  v31 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v39 = v14;
  v40 = v15;
  v41 = v16;
  v32 = v10;
  v33 = v17;
  v42 = v10;
  v43 = v17;
  v34 = v18;
  v35 = v19;
  v44 = v18;
  v45 = v19;
  v20 = *(*(v16 + 8) + 8);
  v21 = *(v20 + 72);
  swift_getAssociatedTypeWitness(255, *(*(v15 + 8) + 8), v13, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v23 = v22;
  v26 = type metadata accessor for CollectionDifference(0, v22, v24, v25);
  v27 = v36;
  v21(&v46, partial apply for closure #1 in closure #1 in _myers<A, B>(from:to:using:), v37, v26, a4, v20);
  if (v27)
  {
    v27;
    __break(1u);
  }

  else
  {
    v28 = v47;
    if (v46)
    {
      v29 = v48;
      *v48 = v46;
      *(v29 + 1) = v28;
    }

    else
    {
      outlined consume of CollectionDifference<A.Element>?<A, B>(0, v47);
      (*(v31 + 16))(v12, a2, a4);
      v30 = (*(v20 + 56))(a4, v20);
      closure #1 in closure #1 in _myers<A, B>(from:to:using:)(v30 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)), *(v30 + 16), v32, v33, v34, v35, a3, a5, v48);
      v30;
    }
  }
}

double closure #1 in closure #1 in _myers<A, B>(from:to:using:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v16 = _descent #1 <A, B>(from:to:) in _myers<A, B>(from:to:using:)(a3, a4, a1, a2, a5, a6, a7, a8);
  _formChanges #1 <A, B>(from:to:using:) in _myers<A, B>(from:to:using:)(a3, a4, a1, a2, v16, a7, a8);
  v18 = v17;
  v16;
  v31 = v18;
  swift_getAssociatedTypeWitness(0, *(*(a8 + 8) + 8), a7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v20 = v19;
  v23 = type metadata accessor for CollectionDifference.Change(255, v19, v21, v22);
  v26 = type metadata accessor for Array(0, v23, v24, v25);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v26, v27);
  if ((static CollectionDifference._validateChanges<A>(_:)(&v31, v20, v26, WitnessTable) & 1) == 0)
  {
    v18;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  CollectionDifference.init<A>(_validatedChanges:)(&v31, v20, v26, WitnessTable, &v30);
  result = *&v30;
  *a9 = v30;
  return result;
}

Swift::Duration __swiftcall Duration.init(secondsComponent:attosecondsComponent:)(Swift::Int64 secondsComponent, Swift::Int64 attosecondsComponent)
{
  v2 = specialized static _Int128.+ infix(_:_:)(1000000000000000000 * secondsComponent, ((secondsComponent >> 63) & 0xF21F494C589C0000) + ((secondsComponent * 0xDE0B6B3A7640000uLL) >> 64), attosecondsComponent, attosecondsComponent >> 63);
  result._high = v3;
  result._low = v2;
  return result;
}

uint64_t static Duration.seconds<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v46, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v44[-v9];
  v49 = *(a2 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v44[-v14];
  v50 = 64;
  v16 = *(a3 + 240);
  v19 = lazy protocol witness table accessor for type Int and conformance Int(v13, v17, v18);
  v48 = a1;
  v16(a1, &v50, &type metadata for Int, v19, a2, a3);
  v20 = *(a3 + 64);
  v21 = v20(a2, a3);
  v22 = *(a3 + 128);
  if ((v21 & 1) != 0 && v22(a2, a3) >= 65)
  {
    if (v20(a2, a3))
    {
      v23 = v22(a2, a3);
      if (v23 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v45 = v20(a2, a3);
      v23 = v22(a2, a3);
      if ((v45 & 1) == 0)
      {
        if (v23 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v23 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v46, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
        v31 = v47;
        (v46[3])(v10, a2);
        v32 = (*(*(*(a3 + 32) + 8) + 16))(v15, v31, a2);
        v29 = *(v49 + 8);
        v29(v47, a2);
        if (v32)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v50 = 0x8000000000000000;
    v46 = *(a3 + 96);
    v26 = lazy protocol witness table accessor for type Int64 and conformance Int64(v23, v24, v25);
    v27 = v47;
    (v46)(&v50, &type metadata for Int64, v26, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v15, v27, a2);
    v29 = *(v49 + 8);
    v29(v47, a2);
    if (v28)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v22(a2, a3) > 64 || v22(a2, a3) == 64 && (v20(a2, a3) & 1) == 0)
  {
    v33 = v20(a2, a3);
    v34 = v22(a2, a3);
    if (v33)
    {
      if (v34 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v34 >= 64)
    {
LABEL_17:
      v50 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = *(a3 + 96);
      v38 = lazy protocol witness table accessor for type Int64 and conformance Int64(v34, v35, v36);
      v39 = v47;
      v37(&v50, &type metadata for Int64, v38, a2, a3);
      v40 = (*(*(*(a3 + 32) + 8) + 16))(v39, v15, a2);
      v29 = *(v49 + 8);
      v29(v39, a2);
      if ((v40 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      v29(v15, a2);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/Duration.swift", 0x14uLL, 2, 0x8FuLL);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v41 = *(a3 + 120);
  v42 = v41(a2, a3);
  (*(v49 + 8))(v15, a2);
  result = v41(a2, a3);
  if ((v42 * 1000000000000000000) >> 64 == (1000000000000000000 * v42) >> 63)
  {
    if (!__OFADD__(1000000000000000000 * v42, (result * 0xDE0B6B3A7640000uLL) >> 64))
    {
      result *= 1000000000000000000;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::UInt64 Duration.components.getter()
{
  v5 = _Int128.dividedBy1e18()();
  v0 = (v5.quotient.low & 0x8000000000000000) == 0;
  if (v5.quotient.high != -1)
  {
    v0 = v5.quotient.high < -1;
  }

  if (v0)
  {
    goto LABEL_13;
  }

  v1 = (v5.quotient.low & 0x8000000000000000) != 0;
  if (v5.quotient.high)
  {
    v1 = v5.quotient.high > 0;
  }

  if (v1)
  {
    goto LABEL_13;
  }

  v2 = (v5.remainder.low & 0x8000000000000000) == 0;
  if (v5.remainder.high != -1)
  {
    v2 = v5.remainder.high < -1;
  }

  if (v2)
  {
    goto LABEL_13;
  }

  v3 = (v5.remainder.low & 0x8000000000000000) != 0;
  if (v5.remainder.high)
  {
    v3 = v5.remainder.high > 0;
  }

  if (v3)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5.quotient.low;
}

Swift::tuple_quotient__Int128_remainder__Int128 __swiftcall _Int128.dividedBy1e18()()
{
  v2 = v1;
  v3 = v0;
  v4.low = 0x73AFF322E62439FDLL;
  v4.high = 0x9392EE8E921D5D0;
  *(&v5 - 1) = _Int128.multipliedFullWidth(by:)(v4);
  v7 = __PAIR128__(v5, v6) >> 55;
  v8 = v7 + (v2 >> 63);
  if (__CFADD__(v7, v2 >> 63))
  {
    v9 = (v5 >> 55) + 1;
  }

  else
  {
    v9 = v5 >> 55;
  }

  v10.low = v7 + (v2 >> 63);
  v10.high = v9;
  v13 = __PAIR128__(v2, v3) - _Int128.multipliedReportingOverflow(by:)(v10);
  v12 = *(&v13 + 1);
  v11 = v13;
  v14 = v8;
  v15 = v9;
  result.remainder.high = v12;
  result.remainder.low = v11;
  result.quotient.high = v15;
  result.quotient.low = v14;
  return result;
}

double Double.init<A>(_:)(uint64_t a1, const char *a2, uint64_t (**a3)(void, void))
{
  if ((a3)[16](a2, a3) <= 64)
  {
    v7 = (a3)[8](a2, a3);
    v8 = (a3)[15](a2, a3);
    (*(*(a2 - 1) + 8))(a1, a2);
    if (v7)
    {
      return v8;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v9, a1, a2, a3);
    (*(*(a2 - 1) + 8))(a1, a2);
    return v9;
  }
}

uint64_t static Duration.milliseconds<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v46, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v44[-v9];
  v49 = *(a2 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v44[-v14];
  v50 = 64;
  v16 = *(a3 + 240);
  v19 = lazy protocol witness table accessor for type Int and conformance Int(v13, v17, v18);
  v48 = a1;
  v16(a1, &v50, &type metadata for Int, v19, a2, a3);
  v20 = *(a3 + 64);
  v21 = v20(a2, a3);
  v22 = *(a3 + 128);
  if ((v21 & 1) != 0 && v22(a2, a3) >= 65)
  {
    if (v20(a2, a3))
    {
      v23 = v22(a2, a3);
      if (v23 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v45 = v20(a2, a3);
      v23 = v22(a2, a3);
      if ((v45 & 1) == 0)
      {
        if (v23 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v23 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v46, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
        v31 = v47;
        (v46[3])(v10, a2);
        v32 = (*(*(*(a3 + 32) + 8) + 16))(v15, v31, a2);
        v29 = *(v49 + 8);
        v29(v47, a2);
        if (v32)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v50 = 0x8000000000000000;
    v46 = *(a3 + 96);
    v26 = lazy protocol witness table accessor for type Int64 and conformance Int64(v23, v24, v25);
    v27 = v47;
    (v46)(&v50, &type metadata for Int64, v26, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v15, v27, a2);
    v29 = *(v49 + 8);
    v29(v47, a2);
    if (v28)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v22(a2, a3) > 64 || v22(a2, a3) == 64 && (v20(a2, a3) & 1) == 0)
  {
    v33 = v20(a2, a3);
    v34 = v22(a2, a3);
    if (v33)
    {
      if (v34 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v34 >= 64)
    {
LABEL_17:
      v50 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = *(a3 + 96);
      v38 = lazy protocol witness table accessor for type Int64 and conformance Int64(v34, v35, v36);
      v39 = v47;
      v37(&v50, &type metadata for Int64, v38, a2, a3);
      v40 = (*(*(*(a3 + 32) + 8) + 16))(v39, v15, a2);
      v29 = *(v49 + 8);
      v29(v39, a2);
      if ((v40 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      v29(v15, a2);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/Duration.swift", 0x14uLL, 2, 0xBDuLL);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v41 = *(a3 + 120);
  v42 = v41(a2, a3);
  (*(v49 + 8))(v15, a2);
  result = v41(a2, a3);
  if ((v42 * 1000000000000000) >> 64 == (1000000000000000 * v42) >> 63)
  {
    if (!__OFADD__(1000000000000000 * v42, (result * 0x38D7EA4C68000uLL) >> 64))
    {
      result *= 1000000000000000;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Duration.microseconds<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v46, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v44[-v9];
  v49 = *(a2 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v44[-v14];
  v50 = 64;
  v16 = *(a3 + 240);
  v19 = lazy protocol witness table accessor for type Int and conformance Int(v13, v17, v18);
  v48 = a1;
  v16(a1, &v50, &type metadata for Int, v19, a2, a3);
  v20 = *(a3 + 64);
  v21 = v20(a2, a3);
  v22 = *(a3 + 128);
  if ((v21 & 1) != 0 && v22(a2, a3) >= 65)
  {
    if (v20(a2, a3))
    {
      v23 = v22(a2, a3);
      if (v23 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v45 = v20(a2, a3);
      v23 = v22(a2, a3);
      if ((v45 & 1) == 0)
      {
        if (v23 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v23 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v46, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
        v31 = v47;
        (v46[3])(v10, a2);
        v32 = (*(*(*(a3 + 32) + 8) + 16))(v15, v31, a2);
        v29 = *(v49 + 8);
        v29(v47, a2);
        if (v32)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v50 = 0x8000000000000000;
    v46 = *(a3 + 96);
    v26 = lazy protocol witness table accessor for type Int64 and conformance Int64(v23, v24, v25);
    v27 = v47;
    (v46)(&v50, &type metadata for Int64, v26, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v15, v27, a2);
    v29 = *(v49 + 8);
    v29(v47, a2);
    if (v28)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v22(a2, a3) > 64 || v22(a2, a3) == 64 && (v20(a2, a3) & 1) == 0)
  {
    v33 = v20(a2, a3);
    v34 = v22(a2, a3);
    if (v33)
    {
      if (v34 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v34 >= 64)
    {
LABEL_17:
      v50 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = *(a3 + 96);
      v38 = lazy protocol witness table accessor for type Int64 and conformance Int64(v34, v35, v36);
      v39 = v47;
      v37(&v50, &type metadata for Int64, v38, a2, a3);
      v40 = (*(*(*(a3 + 32) + 8) + 16))(v39, v15, a2);
      v29 = *(v49 + 8);
      v29(v39, a2);
      if ((v40 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      v29(v15, a2);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/Duration.swift", 0x14uLL, 2, 0xDAuLL);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v41 = *(a3 + 120);
  v42 = v41(a2, a3);
  (*(v49 + 8))(v15, a2);
  result = v41(a2, a3);
  if ((v42 * 1000000000000) >> 64 == (1000000000000 * v42) >> 63)
  {
    if (!__OFADD__(1000000000000 * v42, (result * 0xE8D4A51000uLL) >> 64))
    {
      result *= 1000000000000;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Duration.nanoseconds<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v46, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v44[-v9];
  v49 = *(a2 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v44[-v14];
  v50 = 64;
  v16 = *(a3 + 240);
  v19 = lazy protocol witness table accessor for type Int and conformance Int(v13, v17, v18);
  v48 = a1;
  v16(a1, &v50, &type metadata for Int, v19, a2, a3);
  v20 = *(a3 + 64);
  v21 = v20(a2, a3);
  v22 = *(a3 + 128);
  if ((v21 & 1) != 0 && v22(a2, a3) >= 65)
  {
    if (v20(a2, a3))
    {
      v23 = v22(a2, a3);
      if (v23 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v45 = v20(a2, a3);
      v23 = v22(a2, a3);
      if ((v45 & 1) == 0)
      {
        if (v23 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v23 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v46, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
        v31 = v47;
        (v46[3])(v10, a2);
        v32 = (*(*(*(a3 + 32) + 8) + 16))(v15, v31, a2);
        v29 = *(v49 + 8);
        v29(v47, a2);
        if (v32)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v50 = 0x8000000000000000;
    v46 = *(a3 + 96);
    v26 = lazy protocol witness table accessor for type Int64 and conformance Int64(v23, v24, v25);
    v27 = v47;
    (v46)(&v50, &type metadata for Int64, v26, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v15, v27, a2);
    v29 = *(v49 + 8);
    v29(v47, a2);
    if (v28)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v22(a2, a3) > 64 || v22(a2, a3) == 64 && (v20(a2, a3) & 1) == 0)
  {
    v33 = v20(a2, a3);
    v34 = v22(a2, a3);
    if (v33)
    {
      if (v34 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v34 >= 64)
    {
LABEL_17:
      v50 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = *(a3 + 96);
      v38 = lazy protocol witness table accessor for type Int64 and conformance Int64(v34, v35, v36);
      v39 = v47;
      v37(&v50, &type metadata for Int64, v38, a2, a3);
      v40 = (*(*(*(a3 + 32) + 8) + 16))(v39, v15, a2);
      v29 = *(v49 + 8);
      v29(v39, a2);
      if ((v40 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      v29(v15, a2);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/Duration.swift", 0x14uLL, 2, 0xF7uLL);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v41 = *(a3 + 120);
  v42 = v41(a2, a3);
  (*(v49 + 8))(v15, a2);
  result = v41(a2, a3);
  if ((v42 * 1000000000) >> 64 == (1000000000 * v42) >> 63)
  {
    if (!__OFADD__(1000000000 * v42, (result * 0x3B9ACA00uLL) >> 64))
    {
      result *= 1000000000;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Duration.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 32))(v13, v6, v7);
  v8 = v14;
  v9 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  (*(v9 + 96))(a3, v8, v9);
  if (!v3)
  {
    v10 = v14;
    v11 = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    (*(v11 + 144))(a2, v10, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Duration(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 32))(v12, v5, v6);
  v7 = v13;
  v8 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v8 + 96))(v4, v7, v8);
  if (!v2)
  {
    v9 = v13;
    v10 = v14;
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    (*(v10 + 144))(v3, v9, v10);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Duration@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized Duration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int Duration.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Duration()
{
  v1 = *v0;
  v2 = v0[1];
  specialized Hasher.init(_seed:)(0, v4);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Duration()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Duration(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Hasher.init(_seed:)(a1, v5);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL static Duration.< infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 == a4)
  {
    return a1 < a3;
  }

  else
  {
    return a2 < a4;
  }
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance Duration(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance Duration(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *a2 >= *a1;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance Duration(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *a1 >= *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance Duration(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *a2 < *a1;
  }

  else
  {
    return v5;
  }
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Duration@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void)@<X4>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *a2, a2[1]);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t static Duration./= infix(_:_:)(uint64_t a1, double a2)
{
  result = specialized static Duration./ infix(_:_:)(*a1, *(a1 + 8), a2);
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

unint64_t _ss8DurationV1doiyA2B_xtSzRzlFZSi_Tt1g5(uint64_t a1, uint64_t a2, Swift::_Int128 dividingBy)
{
  if ((dividingBy.low & 0x8000000000000000) != 0)
  {
    if (dividingBy.low == -1 && a2 == 0x8000000000000000 && !a1)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (!dividingBy.low)
  {
    goto LABEL_10;
  }

  low = dividingBy.low;

  v4 = dividingBy.low >> 63;
  return _Int128.quotientAndRemainder(dividingBy:)(*&low);
}

double static Duration./ infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(&v8, a1, a2);
  v6 = v8;
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(&v8, a3, a4);
  return v6 / v8;
}

uint64_t static Duration.* infix(_:_:)(unint64_t a1, uint64_t a2, double a3)
{
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(&v94, a1, a2);
  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs7_Int128V_SdTt1g5(&v94, v94 * a3);
  if (v96)
  {
    *&v5 = COERCE_DOUBLE(_StringGuts.init(_initialCapacity:)(80));
    v7 = v6;
    v94 = *&v5;
    v95 = v6;
    TypeName = swift_getTypeName(&type metadata for Double, 0);
    if (v9 < 0)
    {
      goto LABEL_64;
    }

    v10 = TypeName;
    v11 = v9;
    v12 = validateUTF8(_:)(TypeName, v9);
    if (v12 < 0)
    {
      v16 = repairUTF8(_:firstKnownBrokenRange:)(v10, v11, v13, v14);
    }

    else
    {
      v16 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v10, v11, v12 & 1, v15);
    }

    v26 = v16;
    v27 = v17;
    v28 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v28 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28 && (v5 & ~v7 & 0x2000000000000000) == 0)
    {
      v7;
      v94 = *&v26;
      v95 = v27;
      goto LABEL_20;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v17 & 0x2000000000000000) != 0)
      {
        v38 = specialized _SmallString.init(_:appending:)(v5, v7, v16, v17);
        if ((v40 & 1) == 0)
        {
          v90 = *&v38;
          v91 = v39;
          v7;
          v27;
          v94 = v90;
          v95 = v91;
          v27 = v91;
          *&v26 = v90;
LABEL_20:
          v41 = HIBYTE(v27) & 0xF;
          if ((v27 & 0x2000000000000000) == 0)
          {
            v41 = v26 & 0xFFFFFFFFFFFFLL;
          }

          if (v41 || (v26 & ~v27 & 0x2000000000000000) != 0)
          {
            if ((0x800000018066D440 & 0x2000000000000000 & v27) != 0 && (v42 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000), (v44 & 1) == 0))
            {
              v46 = *&v42;
              v47 = v43;
              v27;
              0x800000018066D440 | 0x8000000000000000;
              v94 = v46;
              v95 = v47;
            }

            else
            {
              if ((0x800000018066D440 & 0x2000000000000000) != 0)
              {
                v45 = (0x800000018066D440 >> 56) & 0xF;
              }

              else
              {
                v45 = 30;
              }

              _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000, 0, v45, v29, v30, v31, v32, v33, v34, v35, v36);
              0x800000018066D440 | 0x8000000000000000;
            }
          }

          else
          {
            v27;
            v94 = -2.31584178e77;
            v95 = 0x800000018066D440 | 0x8000000000000000;
          }

          v48 = swift_getTypeName(&type metadata for _Int128, 0);
          if ((v49 & 0x8000000000000000) == 0)
          {
            v50 = v48;
            v51 = v49;
            v52 = validateUTF8(_:)(v48, v49);
            if (v52 < 0)
            {
              v56 = repairUTF8(_:firstKnownBrokenRange:)(v50, v51, v53, v54);
            }

            else
            {
              v56 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v50, v51, v52 & 1, v55);
            }

            v66 = v56;
            v67 = v57;
            v68 = v95;
            v69 = HIBYTE(v95) & 0xF;
            if ((v95 & 0x2000000000000000) == 0)
            {
              v69 = *&v94 & 0xFFFFFFFFFFFFLL;
            }

            if (!v69 && (*&v94 & ~v95 & 0x2000000000000000) == 0)
            {
              v95;
              v94 = *&v66;
              v95 = v67;
              goto LABEL_49;
            }

            if ((v95 & 0x2000000000000000) != 0)
            {
              if ((v57 & 0x2000000000000000) != 0)
              {
                v79 = specialized _SmallString.init(_:appending:)(*&v94, v95, v56, v57);
                if ((v81 & 1) == 0)
                {
                  v92 = *&v79;
                  v93 = v80;
                  v68;
                  v67;
                  v94 = v92;
                  v95 = v93;
                  v67 = v93;
                  *&v66 = v92;
LABEL_49:
                  v82 = 0x800000018066D460 | 0x8000000000000000;
                  v83 = HIBYTE(v67) & 0xF;
                  if ((v67 & 0x2000000000000000) == 0)
                  {
                    v83 = v66 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v83 || (v66 & ~v67 & 0x2000000000000000) != 0)
                  {
                    if ((0x800000018066D460 & 0x2000000000000000 & v67) != 0 && (v85 = specialized _SmallString.init(_:appending:)(v66, v67, 0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000), (v87 & 1) == 0))
                    {
                      v84 = v85;
                      v89 = v86;
                      v67;
                      0x800000018066D460 | 0x8000000000000000;
                      v82 = v89;
                    }

                    else
                    {
                      if ((0x800000018066D460 & 0x2000000000000000) != 0)
                      {
                        v88 = (0x800000018066D460 >> 56) & 0xF;
                      }

                      else
                      {
                        v88 = 46;
                      }

                      _StringGuts.append(_:)(0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000, 0, v88, v70, v71, v72, v73, v74, v75, v76, v77);
                      0x800000018066D460 | 0x8000000000000000;
                      v84 = *&v94;
                      v82 = v95;
                    }
                  }

                  else
                  {
                    v67;
                    v84 = 0xD00000000000002ELL;
                  }

                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v84, v82, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL);
                }

                goto LABEL_47;
              }
            }

            else if ((v57 & 0x2000000000000000) != 0)
            {
LABEL_47:
              v78 = HIBYTE(v67) & 0xF;
              goto LABEL_48;
            }

            v78 = v56 & 0xFFFFFFFFFFFFLL;
LABEL_48:
            _StringGuts.append(_:)(v66, v67, 0, v78, v58, v59, v60, v61, v62, v63, v64, v65);
            v67;
            *&v66 = v94;
            v67 = v95;
            goto LABEL_49;
          }

LABEL_64:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_18;
      }
    }

    else if ((v17 & 0x2000000000000000) != 0)
    {
LABEL_18:
      v37 = HIBYTE(v27) & 0xF;
      goto LABEL_19;
    }

    v37 = v16 & 0xFFFFFFFFFFFFLL;
LABEL_19:
    _StringGuts.append(_:)(v26, v27, 0, v37, v18, v19, v20, v21, v22, v23, v24, v25);
    v27;
    *&v26 = v94;
    v27 = v95;
    goto LABEL_20;
  }

  return *&v94;
}

uint64_t static Duration./ infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t, char *, uint64_t))
{
  v11 = *(a4 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = *(v11 + 16);
  v17(&v26 - v15, v18, v19);
  v17(v14, v16, a4);
  v20 = _Int128.init<A>(exactly:)(v14, a4, a5);
  if (v22)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x278uLL);
  }

  v23 = v20;
  v24 = v21;
  (*(v11 + 8))(v16, a4);
  return a6(a1, a2, v23, v24);
}

uint64_t static Duration./= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, const char *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, char *, uint64_t))
{
  v26 = a5;
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v25 - v13;
  v15 = *v12;
  v16 = v12[1];
  v17 = *(v8 + 16);
  v17(&v25 - v13);
  (v17)(v11, v14, a3);
  v18 = _Int128.init<A>(exactly:)(v11, a3, a4);
  if (v20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x278uLL);
  }

  v21 = v18;
  v22 = v19;
  (*(v8 + 8))(v14, a3);
  result = v26(v15, v16, v21, v22);
  *a1 = result;
  a1[1] = v24;
  return result;
}

unint64_t Duration.description.getter(unint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(v18, a1, a2);
  if ((~COERCE__INT64(*v18 / 1.0e18) & 0x7FF0000000000000) != 0 || (COERCE_UNSIGNED_INT64(*v18 / 1.0e18) & 0xFFFFFFFFFFFFFLL) == 0)
  {
    _float64ToString(_:debug:)(0, v18);
    __src[0] = v18[0];
    __src[1] = v18[1];
    v3 = v19;
    if ((v19 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v19)
    {
      if (v19 <= 0xF)
      {
        v8 = v19 - 8;
        v9 = 8;
        if (v19 < 8)
        {
          v9 = v19;
        }

        v10 = v9 - 1;
        if (v19 < v9 - 1)
        {
          v10 = v19;
        }

        if (v9 == v10)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v7 = LOBYTE(__src[0]);
        if (v19 != 1)
        {
          v7 = LOBYTE(__src[0]) | (BYTE1(__src[0]) << 8);
          if (v19 != 2)
          {
            v7 |= BYTE2(__src[0]) << 16;
            if (v19 != 3)
            {
              v7 |= BYTE3(__src[0]) << 24;
              if (v19 != 4)
              {
                v7 |= BYTE4(__src[0]) << 32;
                if (v19 != 5)
                {
                  v7 |= BYTE5(__src[0]) << 40;
                  if (v19 != 6)
                  {
                    v7 |= BYTE6(__src[0]) << 48;
                    if (v19 != 7)
                    {
                      v7 |= BYTE7(__src[0]) << 56;
                    }
                  }
                }
              }
            }
          }
        }

        if (v19 < 9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v12 = 0;
          v13 = __src + 8;
          do
          {
            v14 = *v13++;
            v11 |= v14 << v12;
            v12 += 8;
            --v8;
          }

          while (v8);
        }

        v15 = 0xA000000000000000;
        if (((v11 | v7) & 0x8080808080808080) == 0)
        {
          v15 = 0xE000000000000000;
        }

        v6 = v15 | (v19 << 56) | v11;
      }

      else
      {
        v4 = v19 | 0xF000000000000000;
        v6 = _allocateStringStorage(codeUnitCapacity:)(v19);
        *(v6 + 16) = v5;
        *(v6 + 24) = v4;
        if (v5 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v4 = *(v6 + 24);
        }

        *(v6 + 32 + (v4 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(__src, v3, (v6 + 32));
        v7 = *(v6 + 24);
      }
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v7 = 7233902;
  }

  v16 = specialized static String.+ infix(_:_:)(v7, v6, 0x73646E6F63657320uLL, 0xE800000000000000);
  v6;
  0xE800000000000000;
  return v16;
}