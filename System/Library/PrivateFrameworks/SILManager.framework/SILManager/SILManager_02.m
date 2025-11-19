CGPoint __swiftcall SILAssetDesc.framePosOffset(frameNumber:)(Swift::UInt16 frameNumber)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount];
  if (v9 <= frameNumber)
  {
    v13 = SILLogger.unsafeMutableAddressor();
    (*(v4 + 16))(v8, v13, v3);
    v14 = v1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 33555202;
      *(v17 + 4) = frameNumber;
      *(v17 + 6) = 1024;
      *(v17 + 8) = v9;

      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v14[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name], *&v14[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8], &v21);
      _os_log_impl(&dword_262A43000, v15, v16, "framePosOffset = false as frame %hu >= max frames %u for indicator %s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266730D70](v18, -1, -1);
      MEMORY[0x266730D70](v17, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v8, v3);
    v11 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer] + 28 * frameNumber;
    v5.i16[0] = *(v10 + 12);
    v11 = vmovl_s16(v5).i32[0];
    v6.i16[0] = *(v10 + 14);
    v12 = vmovl_s16(v6).i32[0];
  }

  result.y = v12;
  result.x = v11;
  return result;
}

BOOL SILAssetDesc.decompress(_:into:withSize:)(_BOOL8 result, uint8_t *a2, int64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_Bpr);
  v5 = *(v3 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
  if ((v4 * v5) >> 64 == (v4 * v5) >> 63)
  {
    if (v4 * v5 <= a3 && *(v3 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount) > result)
    {
      v8 = *(v3 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_frames) + 28 * result;
      v9 = *(v8 + 16);
      v10 = *(v8 + 20);
      (*((*MEMORY[0x277D85000] & *v3) + 0xC0))(v18);
      if (v18[3])
      {
        outlined init with copy of SILFileHandle(v18, v15);
        outlined destroy of SILFileHandle?(v18);
        v11 = v16;
        v12 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v13 = (*(v12 + 8))(v9, v10, v11, v12);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        v14 = compression_decode_buffer(a2, a3, (v13 + 32), v10, 0, COMPRESSION_LZFSE);

        return v14 > 0;
      }

      outlined destroy of SILFileHandle?(v18);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance SILAssetDesc@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 216))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SILCursorDesc.overlayFormat.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_overlayFormat);

  return v1;
}

uint64_t SILCursorDesc.outlineFormat.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_outlineFormat);

  return v1;
}

uint64_t SILCursorDesc.fillFormat.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_fillFormat);

  return v1;
}

uint64_t SILCursorDesc.cursorType.getter()
{
  v1 = OBJC_IVAR____TtC10SILManager13SILCursorDesc_cursorType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SILCursorDesc.cursorType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SILManager13SILCursorDesc_cursorType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SILCursorDesc.axCursorName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_axCursorName);

  return v1;
}

uint64_t SILCursorDesc.overlaySize.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___overlaySize;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*SILCursorDesc.overlaySize.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = SILCursorDesc.overlaySize.getter();
  return SILCursorDesc.overlaySize.modify;
}

void *SILCursorDesc.overlaySize.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___overlaySize;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t SILCursorDesc.outlineSize.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___outlineSize;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*SILCursorDesc.outlineSize.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = SILCursorDesc.outlineSize.getter();
  return SILCursorDesc.outlineSize.modify;
}

void *SILCursorDesc.outlineSize.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___outlineSize;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t SILCursorDesc.overlaySize.getter(uint64_t result, void *a2)
{
  v3 = v2 + *result;
  if (v3[8] != 1)
  {
    return *v3;
  }

  v4 = *(v2 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
  v5 = v4 * v4;
  if ((v4 * v4) >> 64 == (v4 * v4) >> 63)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x1F8))(*(v2 + *a2), *(v2 + *a2 + 8));
    result = v5 * v6;
    if ((v5 * v6) >> 64 == (v5 * v6) >> 63)
    {
      *v3 = result;
      v3[8] = 0;
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

uint64_t SILCursorDesc.fillSize.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___fillSize;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*SILCursorDesc.fillSize.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = SILCursorDesc.fillSize.getter();
  return SILCursorDesc.fillSize.modify;
}

void *SILCursorDesc.fillSize.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___fillSize;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t SILCursorDesc.maxBpr.getter()
{
  v1 = v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___maxBpr;
  if (*(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___maxBpr + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x1F8);
  v4 = v3(*(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_overlayFormat), *(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_overlayFormat + 8));
  v5 = v3(*(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_outlineFormat), *(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_outlineFormat + 8));
  v6 = v3(*(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_fillFormat), *(v0 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_fillFormat + 8));
  if (v5 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v6 > v7)
  {
    v7 = v6;
  }

  result = v2 * v7;
  if ((v2 * v7) >> 64 == (v2 * v7) >> 63)
  {
    *v1 = result;
    v1[8] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SILCursorDesc.maxBpr.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___maxBpr;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*SILCursorDesc.maxBpr.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = SILCursorDesc.maxBpr.getter();
  return SILCursorDesc.maxBpr.modify;
}

void *SILCursorDesc.maxBpr.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___maxBpr;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SILCursorDesc.CursorCodingKeys()
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SILCursorDesc.CursorCodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SILCursorDesc.CursorCodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SILCursorDesc.CursorCodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C616373;
  v5 = 0xEA00000000006570;
  v6 = 0x7954726F73727563;
  if (v2 != 5)
  {
    v6 = 0xD000000000000017;
    v5 = 0x8000000262A9E260;
  }

  v7 = 0x74616D726F66;
  if (v2 != 3)
  {
    v7 = 0x74657366666FLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 2020896616;
  if (v2 != 1)
  {
    v8 = 2037673832;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SILCursorDesc.CursorCodingKeys()
{
  v1 = *v0;
  v2 = 0x656C616373;
  v3 = 0x7954726F73727563;
  if (v1 != 5)
  {
    v3 = 0xD000000000000017;
  }

  v4 = 0x74616D726F66;
  if (v1 != 3)
  {
    v4 = 0x74657366666FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 2020896616;
  if (v1 != 1)
  {
    v5 = 2037673832;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SILCursorDesc.CursorCodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SILCursorDesc.CursorCodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SILCursorDesc.CursorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SILCursorDesc.CursorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v4, v2, *(a1 + 36), 0, a1);
  }
}

unint64_t SILCursorDesc.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager13SILCursorDescC16CursorCodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40[-1] - v7;
  v9 = v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___overlaySize;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___outlineSize;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___fillSize;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc____lazy_storage___maxBpr;
  *v12 = 0;
  *(v12 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SILCursorDesc.CursorCodingKeys and conformance SILCursorDesc.CursorCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
LABEL_4:
    type metadata accessor for SILCursorDesc();
    swift_deallocPartialClassInstance();
    return v3;
  }

  LOBYTE(v40[0]) = 0;
  *(v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_scale) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40[0]) = 1;
  *(v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_hotx) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40[0]) = 2;
  *(v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_hoty) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40[0]) = 5;
  *(v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_cursorType) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40[0]) = 6;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = (v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_axCursorName);
  *v14 = v13;
  v14[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd);
  v41 = 3;
  lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], &_sSDyS2SGMd);
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = 0;
  v17 = v40[0];
  if (!*(v40[0] + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(0x79616C7265766FLL, 0xE700000000000000);
  if ((v18 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = (*(v17 + 56) + 16 * result);
  v20 = *v19;
  result = v19[1];
  v21 = (v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_overlayFormat);
  *v21 = v20;
  v21[1] = result;
  if (!*(v17 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(0x656E696C74756FLL, 0xE700000000000000);
  if ((v22 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = (*(v17 + 56) + 16 * result);
  v24 = *v23;
  result = v23[1];
  v25 = (v1 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_outlineFormat);
  *v25 = v24;
  v25[1] = result;
  if (!*(v17 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(1819044198, 0xE400000000000000);
  if ((v26 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = (*(v17 + 56) + 16 * result);
  v28 = *v27;
  v29 = v27[1];
  v30 = (v3 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_fillFormat);
  *v30 = v28;
  v30[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd);
  v41 = 4;
  lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Int] and conformance <> [A : B], &_sSDySSSiGMd);

  v31 = v39;
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v31)
  {
    (*(v6 + 8))(v8, v5);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    goto LABEL_4;
  }

  v39 = 0;
  v32 = v40[0];
  if (!*(v40[0] + 16))
  {
    goto LABEL_27;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(0x79616C7265766FLL, 0xE700000000000000);
  if ((v33 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v3 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_overlayOffset) = *(*(v32 + 56) + 8 * result);
  if (!*(v32 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(0x656E696C74756FLL, 0xE700000000000000);
  if ((v34 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v3 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_outlineOffset) = *(*(v32 + 56) + 8 * result);
  if (!*(v32 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v35 = specialized __RawDictionaryStorage.find<A>(_:)(1819044198, 0xE400000000000000);
  v37 = v36;

  if (v37)
  {
    v38 = *(*(v32 + 56) + 8 * v35);

    *(v3 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_fillOffset) = v38;
    outlined init with copy of SILFileHandle(a1, v40);
    v3 = SILAssetDesc.init(from:)(v40);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t SILCursorDesc.__ivar_destroyer()
{
}

uint64_t SILIndicatorDesc.constraintsFile.getter()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
  if (result)
  {
    v3 = *(result + 24);

    v5 = (*((*v1 & *v3) + 0xA0))(v4);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SILIndicatorDesc.boundingBoxes.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
  if (result)
  {
    v2 = *(result + 24);

    v3 = *&v2[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

    v4 = *(v3 + 16);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SILIndicatorDesc.dynamicBoundingBoxes.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
  if (result)
  {
    v2 = *(result + 24);

    v3 = *&v2[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

    v4 = *(v3 + 24);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SILIndicatorDesc.validator.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_validator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *SILIndicatorDesc.constraints.getter()
{
  v1 = OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_constraints;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SILIndicatorDesc.constraints.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_constraints;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SILIndicatorDesc.IndicatorCodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69617274736E6F63;
  }

  else
  {
    v3 = 0x6143726F736E6573;
  }

  if (v2)
  {
    v4 = 0xEE0079726F676574;
  }

  else
  {
    v4 = 0xEB0000000073746ELL;
  }

  if (*a2)
  {
    v5 = 0x69617274736E6F63;
  }

  else
  {
    v5 = 0x6143726F736E6573;
  }

  if (*a2)
  {
    v6 = 0xEB0000000073746ELL;
  }

  else
  {
    v6 = 0xEE0079726F676574;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SILIndicatorDesc.IndicatorCodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SILIndicatorDesc.IndicatorCodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SILIndicatorDesc.IndicatorCodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SILIndicatorDesc.IndicatorCodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x6143726F736E6573;
  if (*v1)
  {
    v2 = 0x69617274736E6F63;
  }

  v3 = 0xEE0079726F676574;
  if (*v1)
  {
    v3 = 0xEB0000000073746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SILIndicatorDesc.IndicatorCodingKeys()
{
  if (*v0)
  {
    return 0x69617274736E6F63;
  }

  else
  {
    return 0x6143726F736E6573;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SILIndicatorDesc.IndicatorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SILIndicatorDesc.IndicatorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id @objc static SILCursorDesc.createFromData(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v5 = a3;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = a4(v6, v8);
  outlined consume of Data._Representation(v6, v8);

  return v9;
}

uint64_t SILIndicatorDesc.init(from:)(void *a1)
{
  v3 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager16SILIndicatorDescC19IndicatorCodingKeysOGMd);
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v15[-1] - v6;
  v17 = OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_validator;
  *(v1 + OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_validator) = 0;
  v8 = OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_constraints;
  *(v1 + OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_constraints) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SILIndicatorDesc.IndicatorCodingKeys and conformance SILIndicatorDesc.IndicatorCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    type metadata accessor for SILIndicatorDesc();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v9 = v14;
    *(v1 + OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_sensorCategory) = KeyedDecodingContainer.decode(_:forKey:)();
    type metadata accessor for SILConstraints();
    v16 = 1;
    lazy protocol witness table accessor for type FrameDesc and conformance FrameDesc(&lazy protocol witness table cache variable for type SILConstraints and conformance SILConstraints, type metadata accessor for SILConstraints);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v15[0];
    swift_beginAccess();
    v12 = *(v3 + v8);
    *(v3 + v8) = v11;

    v13 = v17;
    swift_beginAccess();
    *(v3 + v13) = 0;

    outlined init with copy of SILFileHandle(a1, v15);
    v3 = SILAssetDesc.init(from:)(v15);
    (*(v5 + 8))(v7, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t static SILIndicatorDesc.isFaceIDIndicator(_:)()
{
  if (one-time initialization token for manifest != -1)
  {
    swift_once();
  }

  if (!static SILManifest.manifest)
  {
    return 0;
  }

  v0 = (*((*MEMORY[0x277D85000] & *static SILManifest.manifest) + 0xA8))();
  v2 = *(v0 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook);
  v3 = v0;
  v4 = v2;

  if (!v2)
  {
    return 0;
  }

  return 1;
}

uint64_t *SILManifest.manifest.unsafeMutableAddressor()
{
  if (one-time initialization token for manifest != -1)
  {
    swift_once();
  }

  return &static SILManifest.manifest;
}

void SILIndicatorDesc.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_constraints);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance IndicatorsPlist.CodingKeys()
{
  if (*v0)
  {
    return 0x35646D626F6C62;
  }

  else
  {
    return 0x6F74616369646E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IndicatorsPlist.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F74616369646E69 && a2 == 0xEA00000000007372;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x35646D626F6C62 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IndicatorsPlist.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IndicatorsPlist.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IndicatorsPlist.__deallocating_deinit()
{

  outlined consume of Data._Representation(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t IndicatorsPlist.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  IndicatorsPlist.init(from:)(a1);
  return v2;
}

uint64_t IndicatorsPlist.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager15IndicatorsPlistC10CodingKeys33_1A38F4C2AD7451B3FA5C586DAE7EC27DLLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IndicatorsPlist.CodingKeys and conformance IndicatorsPlist.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for IndicatorsPlist();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SILManager16SILIndicatorDescCGMd);
    v10 = 0;
    lazy protocol witness table accessor for type [SILIndicatorDesc] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 16) = v9;
    v10 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance IndicatorsPlist@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t IndicatorsPlist.indicators.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CursorsPlist.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266730370](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CursorsPlist.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266730370](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CursorsPlist.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726F73727563 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CursorsPlist.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CursorsPlist.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CursorsPlist.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t CursorsPlist.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CursorsPlist.init(from:)(a1);
  return v2;
}

uint64_t CursorsPlist.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager12CursorsPlistC10CodingKeys33_1A38F4C2AD7451B3FA5C586DAE7EC27DLLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CursorsPlist.CodingKeys and conformance CursorsPlist.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CursorsPlist();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SILManager13SILCursorDescCGMd);
    lazy protocol witness table accessor for type [SILCursorDesc] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance CursorsPlist@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5, &_sSS3key_10SILManager13SILCursorDescC5valuetMd, &_sSS3key_10SILManager13SILCursorDescC5valuetMR, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5, &_s10SILManager13SILFileHandle_pMd, &_s10SILManager13SILFileHandle_pMR, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  *a1 = v2;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  v11[1] = v9;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, a2, a3, a4);
  *a1 = v8;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SILFlipBookTransitionPoint.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7365676E6172;
  }

  else
  {
    v3 = 0x6172467472617473;
  }

  if (v2)
  {
    v4 = 0xEA0000000000656DLL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7365676E6172;
  }

  else
  {
    v5 = 0x6172467472617473;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA0000000000656DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SILFlipBookTransitionPoint.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SILFlipBookTransitionPoint.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SILFlipBookTransitionPoint.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SILIndicatorDesc.IndicatorCodingKeys@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SILFlipBookTransitionPoint.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x6172467472617473;
  if (*v1)
  {
    v2 = 0x7365676E6172;
  }

  v3 = 0xEA0000000000656DLL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SILFlipBookTransitionPoint.CodingKeys()
{
  if (*v0)
  {
    return 0x7365676E6172;
  }

  else
  {
    return 0x6172467472617473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SILIndicatorDesc.IndicatorCodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SILFlipBookTransitionPoint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SILFlipBookTransitionPoint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILFlipBookTransitionPoint.CodingKeys and conformance SILFlipBookTransitionPoint.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void SILFlipBookTransitionPoint.init(_:_:_:)(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (v13 >= 2 && (*(a3 + 16) & 1) == 0)
  {
    if (v13 > 0x1FFFFFFFFFFFFFFELL)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    else
    {
      v43 = a2;
      v44 = v5;
      v41 = v4;
      v42 = v13 >> 1;
      v20 = swift_slowAlloc();
      v21 = 0;
      v22 = a3 + 32;
      v45 = a1 + 32;
      v46 = a1 & 0xFFFFFFFFFFFFFF8;
      v23 = 0.0;
      do
      {
        if (__OFADD__(v21, 2))
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v21 + 2;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v29 = *(a3 + 16);
        if (v21 >= v29)
        {
          goto LABEL_30;
        }

        v30 = *(v22 + 8 * v21);
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v30 >> 16)
        {
          goto LABEL_32;
        }

        v31 = a3;
        v32 = v21 + 1;
        if (v21 + 1 >= v29)
        {
          goto LABEL_33;
        }

        v33 = *(v22 + 8 * v32);
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v33 >> 16)
        {
          goto LABEL_35;
        }

        v34 = v20 + 8 * (v21 / 2);
        *v34 = v30;
        *(v34 + 2) = v33;
        *(v34 + 4) = v23;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v24 = *(MEMORY[0x266730000]() + OBJC_IVAR____TtC10SILManager9FrameDesc_time);
          swift_unknownObjectRelease();
          v25 = MEMORY[0x266730000](*(v22 + 8 * v32), a1);
          v26 = OBJC_IVAR____TtC10SILManager9FrameDesc_time;
        }

        else
        {
          v35 = *(v46 + 16);
          if (v30 >= v35)
          {
            goto LABEL_36;
          }

          if (v33 >= v35)
          {
            goto LABEL_37;
          }

          v26 = OBJC_IVAR____TtC10SILManager9FrameDesc_time;
          v24 = *(*(v45 + 8 * v30) + OBJC_IVAR____TtC10SILManager9FrameDesc_time);
          v25 = *(v45 + 8 * v33);
        }

        v27 = *&v25[v26];

        v23 = v23 + ((v27 + 0.008) - v24);
        v21 = v28;
        a3 = v31;
      }

      while (v28 < v13);

      v36 = v44;
      *&v44[OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame] = v43;
      v37 = &v36[OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_rangesBuffer];
      v38 = v42;
      *v37 = v20;
      v37[1] = v38;
      if (v13 > 0x1FFFFFFFELL)
      {
        goto LABEL_39;
      }

      *&v36[OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_rangesCount] = v38;
      *&v36[OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_ranges] = v20;
      v39 = type metadata accessor for SILFlipBookTransitionPoint();
      v47.receiver = v36;
      v47.super_class = v39;
      objc_msgSendSuper2(&v47, sel_init);
    }
  }

  else
  {

    v15 = SILLogger.unsafeMutableAddressor();
    (*(v10 + 16))(v12, v15, v9);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      v19 = *(a3 + 16);

      *(v18 + 4) = v19;

      _os_log_impl(&dword_262A43000, v16, v17, "Invalid ranges count %ld", v18, 0xCu);
      MEMORY[0x266730D70](v18, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v10 + 8))(v12, v9);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v40 = 12;
    swift_willThrow();
    type metadata accessor for SILFlipBookTransitionPoint();
    swift_deallocPartialClassInstance();
  }
}

id SILAssetDesc.__deallocating_deinit(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = MEMORY[0x266730D70](*&v2[*a1], -1, -1);
  v6.receiver = v2;
  v6.super_class = a2(v4);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id @objc SILAssetDesc.__deallocating_deinit(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v5 = *&a1[*a3];
  v6 = a1;
  v7 = MEMORY[0x266730D70](v5, -1, -1);
  v9.receiver = v6;
  v9.super_class = a4(v7);
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

id @objc SILAssetDesc.name.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x26672FC40](v4, v5);

  return v6;
}

uint64_t SILFlipBookState.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager16SILFlipBookState_name);

  return v1;
}

id SILFlipBookState.init(_:name:transitions:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v152 = a2;
  v153 = a3;
  v150 = a1;
  v6 = type metadata accessor for Logger();
  v146 = *(v6 - 8);
  v147 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v144 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v142 = &v139 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v145 = &v139 - v12;
  MEMORY[0x28223BE20](v11);
  v143 = &v139 - v13;
  v14 = 0;
  v15 = 0;
  v151 = a4;
  v18 = *(a4 + 64);
  v17 = a4 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v149 = MEMORY[0x277D84F98];
  while (v21)
  {
    v154 = v14;
LABEL_10:
    v24 = __clz(__rbit64(v21)) | (v15 << 6);
    v25 = (*(v151 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v151 + 56) + 8 * v24);

    v29 = specialized static SILFlipBookTransitionPoint.parseTransitionPoints(_:_:)(v150, v28);
    if (v4)
    {

LABEL_91:
      type metadata accessor for SILFlipBookState();
      return swift_deallocPartialClassInstance();
    }

    v30 = v29;
    v21 &= v21 - 1;
    v31 = v26 == v152 && v27 == v153;
    if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (v30 >> 62)
      {
        if (v30 < 0)
        {
          v47 = v30;
        }

        else
        {
          v47 = v30 & 0xFFFFFFFFFFFFFF8;
        }

        if (MEMORY[0x2667300B0](v47) != 1)
        {
LABEL_51:

          v74 = SILLogger.unsafeMutableAddressor();
          v75 = v146;
          v76 = v147;
          v77 = v143;
          (*(v146 + 16))(v143, v74, v147);
          v78 = v153;

          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v156 = v82;
            *v81 = 136315138;
            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v78, &v156);

            *(v81 + 4) = v83;
            _os_log_impl(&dword_262A43000, v79, v80, "Self transition for %s has multiple transition points", v81, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v82);
            MEMORY[0x266730D70](v82, -1, -1);
            MEMORY[0x266730D70](v81, -1, -1);
          }

          else
          {
          }

          (*(v75 + 8))(v77, v76);
          v109 = v154;
          lazy protocol witness table accessor for type SILError and conformance SILError();
          swift_allocError();
          *v110 = 12;
          swift_willThrow();

          goto LABEL_91;
        }
      }

      else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_51;
      }

      if ((v30 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x266730000](0, v30);
      }

      else
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v32 = *(v30 + 32);
      }

      v33 = v32;

      v14 = v33;
    }

    else
    {

      v34 = v149;
      LODWORD(v141) = swift_isUniquelyReferenced_nonNull_native();
      v156 = v34;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
      v37 = *(v34 + 16);
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_97;
      }

      if (*(v34 + 24) >= v39)
      {
        if ((v141 & 1) == 0)
        {
          v141 = v36;
          LODWORD(v149) = v35;
          specialized _NativeDictionary.copy()();
          LOBYTE(v35) = v149;
          v36 = v141;
        }
      }

      else
      {
        LODWORD(v149) = v35;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, v141);
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
        v41 = v35 & 1;
        LOBYTE(v35) = v149;
        if ((v149 & 1) != v41)
        {
          goto LABEL_99;
        }

        v36 = v40;
      }

      v42 = v156;
      v149 = v156;
      if (v35)
      {
        *(v156[7] + 8 * v36) = v30;

        v14 = v154;
      }

      else
      {
        v156[(v36 >> 6) + 8] |= 1 << v36;
        v43 = (v42[6] + 16 * v36);
        *v43 = v26;
        v43[1] = v27;
        *(v42[7] + 8 * v36) = v30;
        v44 = v42[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_98;
        }

        v42[2] = v46;
        v14 = v154;
      }
    }
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_93;
    }

    if (v23 >= v22)
    {
      break;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v154 = v14;
      v15 = v23;
      goto LABEL_10;
    }
  }

  if (!v14)
  {

    v62 = SILLogger.unsafeMutableAddressor();
    v63 = v146;
    v64 = v147;
    v65 = v144;
    (*(v146 + 16))(v144, v62, v147);
    v66 = v153;

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v156 = v70;
      *v69 = 136315138;
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v66, &v156);

      *(v69 + 4) = v71;
      _os_log_impl(&dword_262A43000, v67, v68, "Missing self transition for %s!", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x266730D70](v70, -1, -1);
      MEMORY[0x266730D70](v69, -1, -1);
    }

    else
    {
    }

    (*(v63 + 8))(v65, v64);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v73 = 12;
    swift_willThrow();
    goto LABEL_91;
  }

  v48 = v146;
  v49 = v147;
  v50 = v153;
  if (*&v14[OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_rangesCount] != 1 || (v51 = *&v14[OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame], v52 = *&v14[OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_rangesBuffer], v51 < *v52) || v52[1] < v51)
  {

    v53 = SILLogger.unsafeMutableAddressor();
    v54 = v145;
    (*(v48 + 16))(v145, v53, v49);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v154 = v14;
      v58 = v57;
      v59 = swift_slowAlloc();
      v156 = v59;
      *v58 = 136315138;
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v50, &v156);

      *(v58 + 4) = v60;
      _os_log_impl(&dword_262A43000, v55, v56, "Invalid self transition for %s!", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266730D70](v59, -1, -1);
      v61 = v58;
      v14 = v154;
      MEMORY[0x266730D70](v61, -1, -1);
    }

    else
    {
    }

    (*(v48 + 8))(v54, v49);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v72 = 12;
    swift_willThrow();

    goto LABEL_91;
  }

  v84 = *&v14[OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_ranges];
  LODWORD(v154) = *v84;
  LODWORD(v151) = v84[1];
  v85 = v149;
  v86 = (v149 + 64);
  v87 = 1 << *(v149 + 32);
  v88 = -1;
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  v89 = v88 & *(v149 + 64);
  v90 = (v87 + 63) >> 6;
  v144 = v14;

  v91 = 0;
  v141 = v90;
  v143 = v86;
  while (v89)
  {
LABEL_62:
    v93 = __clz(__rbit64(v89)) | (v91 << 6);
    v94 = (*(v85 + 48) + 16 * v93);
    v96 = *v94;
    v95 = v94[1];
    v97 = *(*(v85 + 56) + 8 * v93);
    if (v97 >> 62)
    {
      v107 = v94[1];
      if (v97 < 0)
      {
        v108 = *(*(v85 + 56) + 8 * v93);
      }

      else
      {
        v108 = v97 & 0xFFFFFFFFFFFFFF8;
      }

      v98 = MEMORY[0x2667300B0](v108);
      v95 = v107;
    }

    else
    {
      v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v145 = v95;

    if (v98)
    {
      v140 = v96;
      v99 = 0;
      v150 = v97 & 0xC000000000000001;
      v100 = v97 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v150)
        {
          v101 = v97;
          v102 = MEMORY[0x266730000](v99, v97);
          v103 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (v99 >= *(v100 + 16))
          {
            goto LABEL_95;
          }

          v101 = v97;
          v102 = *(v97 + 8 * v99 + 32);
          v103 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_94;
          }
        }

        v104 = OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame;
        v105 = *&v102[OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame];
        if (v105 < v154 || v151 < v105)
        {
          break;
        }

        ++v99;
        v31 = v103 == v98;
        v97 = v101;
        if (v31)
        {
          goto LABEL_56;
        }
      }

      v111 = v102;

      v112 = SILLogger.unsafeMutableAddressor();
      v113 = v146;
      v114 = v147;
      v115 = v142;
      (*(v146 + 16))(v142, v112, v147);
      v116 = v153;

      v117 = v145;

      v150 = v111;
      v118 = v111;
      v119 = v117;
      v120 = v118;
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v121, v122))
      {
        v124 = v113;
        v125 = v116;
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v143 = v120;
        v128 = v127;
        v156 = v127;
        *v126 = 136316162;
        v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v125, &v156);

        *(v126 + 4) = v129;
        *(v126 + 12) = 2080;
        v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v119, &v156);

        *(v126 + 14) = v130;
        *(v126 + 22) = 512;
        *(v126 + 24) = *(v150 + v104);

        *(v126 + 26) = 512;
        *(v126 + 28) = v154;
        *(v126 + 30) = 512;
        *(v126 + 32) = v151;
        _os_log_impl(&dword_262A43000, v121, v122, "Transition %s -> %s at frame %hu is not contained in looping range [%hu-%hu]", v126, 0x22u);
        swift_arrayDestroy();
        v131 = v128;
        v120 = v143;
        MEMORY[0x266730D70](v131, -1, -1);
        MEMORY[0x266730D70](v126, -1, -1);

        (*(v124 + 8))(v142, v147);
      }

      else
      {

        (*(v113 + 8))(v115, v114);
      }

      lazy protocol witness table accessor for type SILError and conformance SILError();
      swift_allocError();
      *v138 = 12;
      swift_willThrow();

      goto LABEL_91;
    }

LABEL_56:
    v89 &= v89 - 1;

    v85 = v149;
    v86 = v143;
    v90 = v141;
  }

  while (1)
  {
    v92 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v92 >= v90)
    {

      v132 = v144;

      v133 = v148;
      v134 = &v148[OBJC_IVAR____TtC10SILManager16SILFlipBookState_name];
      v135 = v153;
      *v134 = v152;
      *(v134 + 1) = v135;
      *&v133[OBJC_IVAR____TtC10SILManager16SILFlipBookState_transitions] = v85;
      *&v133[OBJC_IVAR____TtC10SILManager16SILFlipBookState_selfTransition] = v132;
      v136 = type metadata accessor for SILFlipBookState();
      v155.receiver = v133;
      v155.super_class = v136;
      return objc_msgSendSuper2(&v155, sel_init);
    }

    v89 = *&v86[8 * v92];
    ++v91;
    if (v89)
    {
      v91 = v92;
      goto LABEL_62;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t SILFlipBookState.__ivar_destroyer()
{
}

Class @objc SILConstraints.devices.getter()
{

  v0.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

id SILFlipBookDesc.init(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v28 = MEMORY[0x277D84F98];
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v2 = v3;
    v12 = (v3[6] + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v3[7] + 8 * v11);
    objc_allocWithZone(type metadata accessor for SILFlipBookState());
    swift_bridgeObjectRetain_n();

    v17 = SILFlipBookState.init(_:name:transitions:)(v16, v13, v14, v15);
    if (v29)
    {

      type metadata accessor for SILFlipBookDesc();
      return swift_deallocPartialClassInstance();
    }

    v18 = v17;
    v7 &= v7 - 1;
    if (v17)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v28;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v13, v14, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySS10SILManager16SILFlipBookStateCGMd);

      v3 = v2;
    }

    else
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      v21 = v20;

      v3 = v2;
      if (v21)
      {
        v2 = v28;
        v31 = v28;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS10SILManager16SILFlipBookStateCGMd);
          v2 = v31;
        }

        v28 = v2;
        specialized _NativeDictionary._delete(at:)(v19, v2);
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  v32 = v28;

  v23 = v3[2];
  if (!v23)
  {
    goto LABEL_19;
  }

  v24 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v3[2], 0);
  v25 = specialized Sequence._copySequenceContents(initializing:)(&v31, v24 + 4, v23, v3);
  outlined consume of [String : [String : [String : [Int]]]].Iterator._Variant();
  if (v25 != v23)
  {
    __break(1u);
LABEL_19:

    v24 = MEMORY[0x277D84F90];
  }

  v31 = v24;

  specialized MutableCollection<>.sort(by:)(&v31, &v32);
  v2 = v29;
  if (!v29)
  {

    *&v27[OBJC_IVAR____TtC10SILManager15SILFlipBookDesc_states] = v31;
    *&v27[OBJC_IVAR____TtC10SILManager15SILFlipBookDesc_statesInfo] = v32;
    v30.receiver = v27;
    v30.super_class = type metadata accessor for SILFlipBookDesc();
    return objc_msgSendSuper2(&v30, sel_init);
  }

LABEL_24:

  __break(1u);
  return result;
}

Swift::Bool __swiftcall SILFlipBookDesc.transitionSupported(fromState:toState:)(Swift::String fromState, Swift::String toState)
{
  v3 = *(v2 + OBJC_IVAR____TtC10SILManager15SILFlipBookDesc_statesInfo);
  if (*(v3 + 16) && (object = toState._object, countAndFlagsBits = toState._countAndFlagsBits, v6 = specialized __RawDictionaryStorage.find<A>(_:)(fromState._countAndFlagsBits, fromState._object), (v7 & 1) != 0) && (v8 = *(*(v3 + 56) + 8 * v6), *(*&v8[OBJC_IVAR____TtC10SILManager16SILFlipBookState_transitions] + 16)))
  {
    v9 = v8;
    specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t SILFlipBookDesc.__ivar_destroyer()
{
}

Class @objc SILManifest.sortedCursorsByResolution.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t SILManifest.init(indicators:cursors:)(uint64_t a1, unint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10SILManager11SILManifest____lazy_storage___maxCursorExtent;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC10SILManager11SILManifest_indicators) = a1;
  v5 = MEMORY[0x277D84F90];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SDySS10SILManager13SILCursorDescCGTt0g5Tf4g_nTm(MEMORY[0x277D84F90], &_ss18_DictionaryStorageCySiSDySS10SILManager13SILCursorDescCGGMd);
  v130 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SDySS10SILManager13SILCursorDescCGTt0g5Tf4g_nTm(v5, &_ss18_DictionaryStorageCySiSDySi10SILManager13SILCursorDescCGGMd);
  v112 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_53;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v128 = a2;
  while (v7)
  {
    v125 = a2 & 0xC000000000000001;
    v120 = a2 & 0xFFFFFFFFFFFFFF8;

    v8 = 0;
    v122 = v7;
    while (1)
    {
      if (v125)
      {
        v11 = MEMORY[0x266730000](v8, a2);
      }

      else
      {
        if (v8 >= *(v120 + 16))
        {
          goto LABEL_52;
        }

        v11 = *(a2 + 8 * v8 + 32);
      }

      v12 = v11;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      a2 = OBJC_IVAR____TtC10SILManager13SILCursorDesc_scale;
      v13 = *&v11[OBJC_IVAR____TtC10SILManager13SILCursorDesc_scale];
      v129 = v8 + 1;
      if (!*(v6 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v13), (v14 & 1) == 0))
      {
        v15 = MEMORY[0x277D84F90];
        v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10SILManager13SILCursorDescCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = v6;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v13, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySiSDySS10SILManager13SILCursorDescCGGMd);
        v18 = *&v12[a2];
        v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10SILManager13SILCursorDescCTt0g5Tf4g_n(v15);
        v20 = swift_isUniquelyReferenced_nonNull_native();
        v132 = v130;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v18, v20, &_ss18_DictionaryStorageCySiSDySi10SILManager13SILCursorDescCGGMd);
      }

      v21 = *&v12[a2];
      v23 = *&v12[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name];
      v22 = *&v12[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8];

      v24 = v6;
      v6 = swift_isUniquelyReferenced_nonNull_native();
      v132 = v24;
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      v27 = v24[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_46;
      }

      v30 = v25;
      if (v24[3] >= v29)
      {
        if (v6)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySiSDySS10SILManager13SILCursorDescCGGMd);
          if ((v30 & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v6, &_ss18_DictionaryStorageCySiSDySS10SILManager13SILCursorDescCGGMd);
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_131;
        }

        v26 = v31;
        if ((v30 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v6 = v132;
      v33 = *(v132[7] + 8 * v26);
      v34 = v12;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v33;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v23, v22, v35, &_ss18_DictionaryStorageCySS10SILManager13SILCursorDescCGMd);

      if (v33)
      {
        *(v132[7] + 8 * v26) = v133;
      }

      else
      {
        v36 = specialized _NativeDictionary._delete(at:)(v26, v132);
      }

      v37 = *&v12[a2];
      v38 = (*((*MEMORY[0x277D85000] & *v34) + 0x180))(v36);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v132 = v130;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
      v41 = v130[2];
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        goto LABEL_48;
      }

      v44 = v39;
      if (v130[3] >= v43)
      {
        a2 = v128;
        v7 = v122;
        if (v21)
        {
          if ((v39 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySiSDySi10SILManager13SILCursorDescCGGMd);
          if ((v44 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, v21, &_ss18_DictionaryStorageCySiSDySi10SILManager13SILCursorDescCGGMd);
        v45 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
        a2 = v128;
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_131;
        }

        v40 = v45;
        v7 = v122;
        if ((v44 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      v130 = v132;
      v47 = *(v132[7] + 8 * v40);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v47;
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      v50 = v47[2];
      v51 = (v49 & 1) == 0;
      v52 = __OFADD__(v50, v51);
      v53 = v50 + v51;
      if (v52)
      {
        goto LABEL_50;
      }

      v54 = v49;
      if (v47[3] < v53)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v53, v21);
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
        if ((v54 & 1) != (v55 & 1))
        {
          goto LABEL_131;
        }

LABEL_36:
        v56 = v133;
        if (v54)
        {
          goto LABEL_4;
        }

        goto LABEL_37;
      }

      if (v21)
      {
        goto LABEL_36;
      }

      v59 = v48;
      specialized _NativeDictionary.copy()();
      v48 = v59;
      v56 = v133;
      if (v54)
      {
LABEL_4:
        v9 = v56[7];
        v10 = *(v9 + 8 * v48);
        *(v9 + 8 * v48) = v34;

        goto LABEL_5;
      }

LABEL_37:
      v56[(v48 >> 6) + 8] |= 1 << v48;
      *(v56[6] + 8 * v48) = v38;
      *(v56[7] + 8 * v48) = v34;
      v57 = v56[2];
      v52 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v52)
      {
        goto LABEL_51;
      }

      v56[2] = v58;
LABEL_5:
      *(v130[7] + 8 * v40) = v56;

      ++v8;
      if (v129 == v7)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    if ((a2 & 0x8000000000000000) != 0)
    {
      v60 = a2;
    }

    else
    {
      v60 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = MEMORY[0x2667300B0](v60);
    v128 = a2;
  }

LABEL_58:
  v121 = OBJC_IVAR____TtC10SILManager11SILManifest_cursorsByResolutionByName;
  *&v116[OBJC_IVAR____TtC10SILManager11SILManifest_cursorsByResolutionByName] = v6;
  *&v116[OBJC_IVAR____TtC10SILManager11SILManifest_cursorsByResolutionByType] = v130;
  v61 = MEMORY[0x277D84F90];
  v132 = MEMORY[0x277D84F90];

  if (v7)
  {
    v61 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x266730000](v61, a2);
      }

      else
      {
        if (v61 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v62 = *(a2 + 8 * v61 + 32);
      }

      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (*&v62[OBJC_IVAR____TtC10SILManager13SILCursorDesc_scale] == 2)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v61;
      if (v63 == v7)
      {
        v61 = v132;
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
  }

  else
  {
LABEL_70:
    if ((v61 & 0x8000000000000000) == 0 && (v61 & 0x4000000000000000) == 0)
    {
      v64 = *(v61 + 16);
      if (!v64)
      {
        goto LABEL_86;
      }

LABEL_73:
      v132 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64 & ~(v64 >> 63), 0);
      if (v64 < 0)
      {
        __break(1u);
LABEL_126:
        if (v61 >= 0)
        {
          v111 = v65;
        }

        else
        {
          v111 = v61;
        }

        v104 = MEMORY[0x2667300B0](v111);
        goto LABEL_113;
      }

      v66 = 0;
      v67 = v132;
      v123 = v61 & 0xC000000000000001;
      v126 = v61;
      v68 = v64;
      do
      {
        if (v123)
        {
          v69 = MEMORY[0x266730000](v66, v61);
        }

        else
        {
          v69 = *(v61 + 8 * v66 + 32);
        }

        v70 = v69;
        v72 = *&v69[OBJC_IVAR____TtC10SILManager13SILCursorDesc_axCursorName];
        v71 = *&v69[OBJC_IVAR____TtC10SILManager13SILCursorDesc_axCursorName + 8];
        v73 = *&v69[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name];
        v74 = *&v69[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8];

        v132 = v67;
        v76 = v67[2];
        v75 = v67[3];
        if (v76 >= v75 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
          v67 = v132;
        }

        ++v66;
        v67[2] = v76 + 1;
        v77 = &v67[4 * v76];
        v77[4] = v72;
        v77[5] = v71;
        v77[6] = v73;
        v77[7] = v74;
        v61 = v126;
      }

      while (v68 != v66);

      a2 = v128;
      if (!v67[2])
      {
        goto LABEL_87;
      }

LABEL_82:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
      v78 = static _DictionaryStorage.allocate(capacity:)();
      goto LABEL_88;
    }
  }

  v64 = MEMORY[0x2667300B0](v61);
  if (v64)
  {
    goto LABEL_73;
  }

LABEL_86:

  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_82;
  }

LABEL_87:
  v78 = MEMORY[0x277D84F98];
LABEL_88:
  v132 = v78;

  v21 = 0;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v79, 1, &v132);

  *&v116[OBJC_IVAR____TtC10SILManager11SILManifest_cursorNameByAxCursorName] = v132;
  v80 = *&v116[v121];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay10SILManager13SILCursorDescCGGMd);
  v81 = static _DictionaryStorage.copy(original:)();
  v82 = v81;
  v114 = v80 + 64;
  v83 = 1 << *(v80 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v80 + 64);
  v113 = (v83 + 63) >> 6;
  v117 = v81 + 64;
  v119 = v80;

  v86 = 0;
  v115 = v82;
  if (v85)
  {
    while (1)
    {
      v87 = __clz(__rbit64(v85));
      v88 = (v85 - 1) & v85;
LABEL_97:
      a2 = v87 | (v86 << 6);
      v124 = *(*(v119 + 48) + 8 * a2);
      v127 = v88;
      v91 = *(*(v119 + 56) + 8 * a2);
      v92 = *(v91 + 16);
      if (v92)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_10SILManager13SILCursorDescC5valuetGMd);
        v93 = swift_allocObject();
        v94 = _swift_stdlib_malloc_size(v93);
        v93[2] = v92;
        v93[3] = 2 * ((v94 - 32) / 24);
        v118 = specialized Sequence._copySequenceContents(initializing:)(&v132, v93 + 4, v92, v91);
        swift_bridgeObjectRetain_n();
        outlined consume of [String : [String : [String : [Int]]]].Iterator._Variant();
        if (v118 != v92)
        {
          goto LABEL_123;
        }

        v82 = v115;
      }

      else
      {

        v93 = MEMORY[0x277D84F90];
      }

      v132 = v93;
      specialized MutableCollection<>.sort(by:)(&v132);
      v95 = v132;
      v96 = v132[2];
      if (v96)
      {
        v132 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v97 = 6;
        do
        {
          v98 = v95[v97];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v97 += 3;
          --v96;
        }

        while (v96);

        v99 = v132;
      }

      else
      {

        v99 = MEMORY[0x277D84F90];
      }

      *(v117 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
      v85 = v127;
      *(v82[6] + 8 * a2) = v124;
      *(v82[7] + 8 * a2) = v99;
      v100 = v82[2];
      v52 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v52)
      {
        break;
      }

      v82[2] = v101;
      a2 = v128;
      if (!v127)
      {
        goto LABEL_92;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

LABEL_92:
  v89 = v86;
  while (1)
  {
    v86 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      __break(1u);
      goto LABEL_122;
    }

    if (v86 >= v113)
    {
      break;
    }

    v90 = *(v114 + 8 * v86);
    ++v89;
    if (v90)
    {
      v87 = __clz(__rbit64(v90));
      v88 = (v90 - 1) & v90;
      goto LABEL_97;
    }
  }

  *&v116[OBJC_IVAR____TtC10SILManager11SILManifest_sortedCursorsByResolution] = v82;
  if (!v82[2])
  {

    v104 = 0;
    goto LABEL_115;
  }

  specialized Collection.first.getter(v102);
  v61 = v103;

  if (v61)
  {

    v65 = v61 & 0xFFFFFFFFFFFFFF8;
    if (v61 >> 62)
    {
      goto LABEL_126;
    }

    v104 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_113:

LABEL_115:
    *&v116[OBJC_IVAR____TtC10SILManager11SILManifest_numCursorTypes] = v104;
    v131.receiver = v116;
    v131.super_class = type metadata accessor for SILManifest();
    v21 = objc_msgSendSuper2(&v131, sel_init);
    v105 = *(v21 + OBJC_IVAR____TtC10SILManager11SILManifest_indicators);
    if (!(v105 >> 62))
    {
      swift_bridgeObjectRetain_n();
      v106 = v21;
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SILAssetDesc();
      v107 = v105;
LABEL_117:

      specialized SILManifest.findBlob(from:)(v107);

      if (v112)
      {
        type metadata accessor for SILAssetDesc();

        v108 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for SILAssetDesc();
        v108 = a2;
      }

      specialized SILManifest.findBlob(from:)(v108);

      return v21;
    }

LABEL_124:
    type metadata accessor for SILAssetDesc();
    v110 = v21;

    v107 = _bridgeCocoaArray<A>(_:)();
    goto LABEL_117;
  }

  __break(1u);
LABEL_131:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v20 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x2667300B0](v14))
  {
    v8 = 0;
    v17 = v4 & 0xFFFFFFFFFFFFFF8;
    v18 = v4 & 0xC000000000000001;
    v16 = v4;
    while (1)
    {
      if (v18)
      {
        v9 = MEMORY[0x266730000](v8, v4);
      }

      else
      {
        if (v8 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v19 = v9;
      v12 = a2;
      v13 = a1(&v19);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v16;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    if (v4 < 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = v4 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_23:

  return v12;
}

Swift::UInt32 __swiftcall SILManifest.cursorTypeFrom(name:)(Swift::String name)
{
  v2 = v1;
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v5._object = 0x8000000262A9E390;
  v5._countAndFlagsBits = 0xD000000000000017;
  if (String.hasPrefix(_:)(v5))
  {
    v6 = *(v1 + OBJC_IVAR____TtC10SILManager11SILManifest_cursorNameByAxCursorName);
    if (!*(v6 + 16))
    {
      goto LABEL_14;
    }

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    v9 = (*(v6 + 56) + 16 * v7);
    countAndFlagsBits = *v9;
    object = v9[1];
  }

  specialized Collection.first.getter(*(v2 + OBJC_IVAR____TtC10SILManager11SILManifest_cursorsByResolutionByName));
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  if (!*(v10 + 16))
  {

    goto LABEL_13;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_13:

LABEL_14:
    LODWORD(v17) = -1;
    return v17;
  }

  v15 = *(*(v11 + 56) + 8 * v12);

  v17 = (*((*MEMORY[0x277D85000] & *v15) + 0x180))(v16);

  if ((v17 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v17))
    {
      return v17;
    }

    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

BOOL closure #1 in SILManifest.findBlob(from:)()
{
  v0._countAndFlagsBits = 1852400174;
  v0._object = 0xE400000000000000;
  return String.hasSuffix(_:)(v0);
}

NSObject *SILManifest.indicatorFrom(type:)(uint64_t a1)
{
  v4 = type metadata accessor for Logger();
  v5 = MEMORY[0x28223BE20](v4);
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v35 - v7;
  v37 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC10SILManager11SILManifest_indicators);
  v39 = v6;
  v38 = v10;
  v35 = v2;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_24:
    v27 = SILLogger.unsafeMutableAddressor();
    v29 = v37;
    v28 = v38;
    v30 = v39;
    (*(v38 + 16))(v37, v27, v39);
    v15 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = a1;
      _os_log_impl(&dword_262A43000, v15, v31, "indicator %ld not found", v32, 0xCu);
      MEMORY[0x266730D70](v32, -1, -1);
    }

    (*(v28 + 8))(v29, v30);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    return v15;
  }

LABEL_20:
  if (v9 < 0)
  {
    v26 = v9;
  }

  else
  {
    v26 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  v11 = MEMORY[0x2667300B0](v26);
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_3:
  v12 = 0;
  v13 = MEMORY[0x277D85000];
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x266730000](v12, v9);
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v14 = *(v9 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ((*((*v13 & v14->isa) + 0xA8))() == a1)
    {
      break;
    }

    ++v12;
    if (v16 == v11)
    {
      goto LABEL_24;
    }
  }

  v17 = *(&v15->isa + OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_sensorCategory);
  if (v17 >= 4)
  {
    v18 = SILLogger.unsafeMutableAddressor();
    v19 = v38;
    v20 = v36;
    v21 = v39;
    (*(v38 + 16))(v36, v18, v39);
    v22 = v15;
    v15 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v17;

      _os_log_impl(&dword_262A43000, v15, v23, "Invalid indicator with sensorCategory %ld", v24, 0xCu);
      MEMORY[0x266730D70](v24, -1, -1);
    }

    else
    {

      v15 = v22;
    }

    (*(v19 + 8))(v20, v21);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
  }

  return v15;
}

NSObject *SILManifest.indicatorFrom(name:)(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for Logger();
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](v7);
  v40 = &v38 - v9;
  v41 = v10;
  v11 = *(v2 + OBJC_IVAR____TtC10SILManager11SILManifest_indicators);
  v42 = v12;
  v43 = v8;
  v39 = v3;
  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_28:
    v29 = SILLogger.unsafeMutableAddressor();
    v31 = v41;
    v30 = v42;
    v32 = v43;
    (*(v42 + 16))(v41, v29, v43);

    v33 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v16))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v44);
      _os_log_impl(&dword_262A43000, v33, v16, "indicator '%s' not found", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266730D70](v35, -1, -1);
      MEMORY[0x266730D70](v34, -1, -1);
    }

    (*(v30 + 8))(v31, v32);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v36 = 2;
    swift_willThrow();
    return v16;
  }

LABEL_24:
  if (v11 < 0)
  {
    v28 = v11;
  }

  else
  {
    v28 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = MEMORY[0x2667300B0](v28);
  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_3:
  v14 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x266730000](v14, v11);
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v15 = *(v11 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v18 = *(&v15->isa + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name) == a1 && *(&v15[1].isa + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name) == a2;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v14;
    if (v17 == v13)
    {
      goto LABEL_28;
    }
  }

  v19 = *(&v16->isa + OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_sensorCategory);
  if (v19 >= 4)
  {
    v20 = SILLogger.unsafeMutableAddressor();
    v22 = v42;
    v21 = v43;
    v23 = v40;
    (*(v42 + 16))(v40, v20, v43);
    v24 = v16;
    v16 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v19;

      _os_log_impl(&dword_262A43000, v16, v25, "Invalid indicator with sensorCategory %ld", v26, 0xCu);
      MEMORY[0x266730D70](v26, -1, -1);
    }

    else
    {

      v16 = v24;
    }

    (*(v22 + 8))(v23, v21);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
  }

  return v16;
}

Swift::Int __swiftcall SILManifest.maxAssetBpr()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10SILManager11SILManifest_indicators);
  if (v2 >> 62)
  {
LABEL_65:
    if (v2 < 0)
    {
      v57 = v2;
    }

    else
    {
      v57 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = MEMORY[0x2667300B0](v57);
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v59 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
LABEL_70:
      if (v2 < 0)
      {
        v58 = v2;
      }

      else
      {
        v58 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v30 = MEMORY[0x2667300B0](v58);
      if (v30)
      {
        goto LABEL_36;
      }

LABEL_74:

      v32 = MEMORY[0x277D84F90];
      v38 = *(MEMORY[0x277D84F90] + 16);
      if (v38)
      {
        goto LABEL_45;
      }

      goto LABEL_75;
    }

    v5 = v59;
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        v7 = *(MEMORY[0x266730000](i, v2) + OBJC_IVAR____TtC10SILManager12SILAssetDesc_Bpr);
        swift_unknownObjectRelease();
        v9 = *(v59 + 16);
        v8 = *(v59 + 24);
        if (v9 >= v8 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        }

        *(v59 + 16) = v9 + 1;
        *(v59 + 8 * v9 + 32) = v7;
      }
    }

    else
    {
      v43 = (v2 + 32);
      v44 = *(v59 + 16);
      do
      {
        v45 = *(*v43 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_Bpr);
        v46 = *(v59 + 24);
        if (v44 >= v46 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v44 + 1, 1);
        }

        *(v59 + 16) = v44 + 1;
        *(v59 + 8 * v44 + 32) = v45;
        ++v43;
        ++v44;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v10 = *(v5 + 16);
  if (!v10)
  {
LABEL_77:

    __break(1u);
    return result;
  }

  v3 = *(v5 + 32);
  v11 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 >= 5)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v13 = vdupq_n_s64(v3);
      v14 = (v5 + 56);
      v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = v13;
      do
      {
        v13 = vbslq_s8(vcgtq_s64(v13, v14[-1]), v13, v14[-1]);
        v16 = vbslq_s8(vcgtq_s64(v16, *v14), v16, *v14);
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      v17 = vbslq_s8(vcgtq_s64(v13, v16), v13, v16);
      v18 = vextq_s8(v17, v17, 8uLL).u64[0];
      v3 = vbsl_s8(vcgtd_s64(v17.i64[0], v18), *v17.i8, v18);
      if (v11 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = 1;
    }

    v19 = v10 - v12;
    v20 = (v5 + 8 * v12 + 32);
    do
    {
      v22 = *v20++;
      v21 = v22;
      if (v3 <= v22)
      {
        v3 = v21;
      }

      --v19;
    }

    while (v19);
  }

LABEL_23:

  v1 = *(v1 + OBJC_IVAR____TtC10SILManager11SILManifest_cursorsByResolutionByName);
  if (!*(v1 + 16))
  {
    return v3;
  }

  v2 = v1 + 64;
  v23 = 1 << *(v1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v1 + 64);
  v26 = (v23 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v27 = 0;
  if (v25)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v2 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      do
      {
LABEL_32:
        v25 &= v25 - 1;

        specialized Array.append<A>(contentsOf:)(v29);
      }

      while (v25);
      continue;
    }
  }

  v2 = v4;
  if (v4 >> 62)
  {
    goto LABEL_70;
  }

  v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_74;
  }

LABEL_36:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v31 = 0;
  v32 = v4;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x266730000](v31, v2);
    }

    else
    {
      v33 = *(v2 + 8 * v31 + 32);
    }

    v34 = v33;
    v35 = (*((*MEMORY[0x277D85000] & *v33) + 0x1E0))();

    v37 = v32[2];
    v36 = v32[3];
    if (v37 >= v36 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
    }

    ++v31;
    v32[2] = v37 + 1;
    v32[v37 + 4] = v35;
  }

  while (v30 != v31);

  v38 = v32[2];
  if (!v38)
  {
LABEL_75:

    __break(1u);
    goto LABEL_76;
  }

LABEL_45:
  v39 = v32[4];
  v40 = v38 - 1;
  if (v38 != 1)
  {
    if (v38 < 5)
    {
      v41 = 1;
      goto LABEL_57;
    }

    v41 = v40 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v47 = vdupq_n_s64(*&v39);
    v48 = (v32 + 7);
    v49 = v40 & 0xFFFFFFFFFFFFFFFCLL;
    v50 = v47;
    do
    {
      v47 = vbslq_s8(vcgtq_s64(v47, v48[-1]), v47, v48[-1]);
      v50 = vbslq_s8(vcgtq_s64(v50, *v48), v50, *v48);
      v48 += 2;
      v49 -= 4;
    }

    while (v49);
    v51 = vbslq_s8(vcgtq_s64(v47, v50), v47, v50);
    v52 = vextq_s8(v51, v51, 8uLL).u64[0];
    v39 = vbsl_s8(vcgtd_s64(v51.i64[0], v52), *v51.i8, v52);
    if (v40 != (v40 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_57:
      v53 = v38 - v41;
      v54 = &v32[v41 + 4];
      do
      {
        v56 = *v54++;
        v55 = v56;
        if (*&v39 <= *&v56)
        {
          v39 = v55;
        }

        --v53;
      }

      while (v53);
    }
  }

  if (*&v39 <= v3)
  {
    return v3;
  }

  else
  {
    return v39;
  }
}

uint64_t SILManifest.maxCursorExtent.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10SILManager11SILManifest____lazy_storage___maxCursorExtent);
  if (*(v0 + OBJC_IVAR____TtC10SILManager11SILManifest____lazy_storage___maxCursorExtent + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10SILManager11SILManifest_cursorsByResolutionByName);
  if (*(v2 + 16))
  {
    v3 = MEMORY[0x277D84F90];
    v36 = MEMORY[0x277D84F90];
    v4 = v2 + 64;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v2 + 64);
    v8 = (v5 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v9 = 0;
    if (v7)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        do
        {
LABEL_11:
          v7 &= v7 - 1;

          specialized Array.append<A>(contentsOf:)(v11);
        }

        while (v7);
        continue;
      }
    }

    v4 = v36;
    if (!(v36 >> 62))
    {
      v13 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_16;
      }

LABEL_43:

      v15 = MEMORY[0x277D84F90];
      v19 = *(MEMORY[0x277D84F90] + 16);
      if (!v19)
      {
LABEL_44:

        __break(1u);
        goto LABEL_45;
      }

LABEL_25:
      v20 = *(v15 + 32);
      v21 = v19 - 1;
      if (v19 != 1)
      {
        if (v19 >= 5)
        {
          v22 = v21 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v23 = vdupq_n_s64(v20);
          v24 = (v15 + 56);
          v25 = v21 & 0xFFFFFFFFFFFFFFFCLL;
          v26 = v23;
          do
          {
            v23 = vbslq_s8(vcgtq_s64(v23, v24[-1]), v23, v24[-1]);
            v26 = vbslq_s8(vcgtq_s64(v26, *v24), v26, *v24);
            v24 += 2;
            v25 -= 4;
          }

          while (v25);
          v27 = vbslq_s8(vcgtq_s64(v23, v26), v23, v26);
          v28 = vextq_s8(v27, v27, 8uLL).u64[0];
          v20 = vbsl_s8(vcgtd_s64(v27.i64[0], v28), *v27.i8, v28);
          if (v21 != (v21 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_32;
          }
        }

        else
        {
          v22 = 1;
LABEL_32:
          v29 = v19 - v22;
          v30 = (v15 + 8 * v22 + 32);
          do
          {
            v32 = *v30++;
            v31 = v32;
            if (v20 <= v32)
            {
              v20 = v31;
            }

            --v29;
          }

          while (v29);
        }
      }

      v33 = v20;

      result = v33;
      goto LABEL_37;
    }

LABEL_39:
    if (v4 < 0)
    {
      v34 = v4;
    }

    else
    {
      v34 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = MEMORY[0x2667300B0](v34);
    if (!v13)
    {
      goto LABEL_43;
    }

LABEL_16:
    v35 = v1;
    v37 = v3;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v15 = v37;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = *(MEMORY[0x266730000](v14, v4) + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = *(*(v4 + 8 * v14 + 32) + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
        }

        v18 = *(v37 + 16);
        v17 = *(v37 + 24);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        }

        ++v14;
        *(v37 + 16) = v18 + 1;
        *(v37 + 8 * v18 + 32) = v16;
      }

      while (v13 != v14);

      v1 = v35;
      v19 = *(v37 + 16);
      if (!v19)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

LABEL_45:
    __break(1u);
  }

  else
  {
    result = 0;
LABEL_37:
    *v1 = result;
    v1[8] = 0;
  }

  return result;
}

uint64_t SILManifest.maxCursorExtent.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC10SILManager11SILManifest____lazy_storage___maxCursorExtent;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*SILManifest.maxCursorExtent.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = SILManifest.maxCursorExtent.getter();
  return SILManifest.maxCursorExtent.modify;
}

void *SILManifest.maxCursorExtent.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10SILManager11SILManifest____lazy_storage___maxCursorExtent;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Int __swiftcall SILManifest.maxAssetExtent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager11SILManifest_indicators);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v4 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_31:

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v9 = *(v0 + OBJC_IVAR____TtC10SILManager11SILManifest_indicators);
  }

  else
  {
    v9 = v1 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = MEMORY[0x2667300B0](v9);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v3 = 0;
  v0 = v25;
  v4 = v26;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = *(MEMORY[0x266730000](v3, v1) + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = *(*(v1 + 8 * v3 + 32) + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
    }

    v7 = *(v26 + 16);
    v6 = *(v26 + 24);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      v0 = v25;
    }

    ++v3;
    *(v26 + 16) = v8;
    *(v26 + 8 * v7 + 32) = v5;
  }

  while (v2 != v3);
LABEL_17:
  v10 = *(v4 + 32);
  v11 = v8 - 1;
  if (v8 != 1)
  {
    if (v8 < 5)
    {
      v12 = 1;
      goto LABEL_23;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v13 = vdupq_n_s64(v10);
    v14 = (v4 + 56);
    v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = v13;
    do
    {
      v13 = vbslq_s8(vcgtq_s64(v13, v14[-1]), v13, v14[-1]);
      v16 = vbslq_s8(vcgtq_s64(v16, *v14), v16, *v14);
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    v17 = vbslq_s8(vcgtq_s64(v13, v16), v13, v16);
    v18 = vextq_s8(v17, v17, 8uLL).u64[0];
    v10 = vbsl_s8(vcgtd_s64(v17.i64[0], v18), *v17.i8, v18);
    if (v11 != (v11 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_23:
      v19 = v8 - v12;
      v20 = (v4 + 8 * v12 + 32);
      do
      {
        v22 = *v20++;
        v21 = v22;
        if (v10 <= v22)
        {
          v10 = v21;
        }

        --v19;
      }

      while (v19);
    }
  }

  result = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))(v23);
  if (result <= v10)
  {
    return v10;
  }

  return result;
}

uint64_t one-time initialization function for manifest()
{
  result = closure #1 in variable initialization expression of static SILManifest.manifest();
  static SILManifest.manifest = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static SILManifest.manifest()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Manifest = getManifestDirectory()();
  v5 = getFilesMatching(directoryName:predicate:)(Manifest._countAndFlagsBits);
  if (*(v5 + 16))
  {
    v6 = v5;

    v7 = specialized static SILManifest.manifestFromPlists(plists:)(v6);

    return v7;
  }

  else
  {

    v9 = SILLogger.unsafeMutableAddressor();
    (*(v1 + 16))(v3, v9, v0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Manifest._countAndFlagsBits, Manifest._object, &v16);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_262A43000, v10, v11, "No manifest files found in %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x266730D70](v13, -1, -1);
      MEMORY[0x266730D70](v12, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

BOOL closure #1 in closure #1 in variable initialization expression of static SILManifest.manifest()
{
  v0._countAndFlagsBits = 0x7473696C702ELL;
  v0._object = 0xE600000000000000;
  return String.hasSuffix(_:)(v0);
}

uint64_t static SILManifest.manifest.getter()
{
  if (one-time initialization token for manifest != -1)
  {
    swift_once();
  }

  v0 = static SILManifest.manifest;
  v1 = static SILManifest.manifest;
  return v0;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = MEMORY[0x2667300B0](a1);
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x2667300B0](v14);
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *v1;
  if (!(*v1 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 < 0)
  {
    v17 = *v1;
  }

  else
  {
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = MEMORY[0x2667300B0](v17);
  v8 = __OFADD__(v18, v5);
  result = v18 + v5;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v3 + 0x10);
  v11 = (*(v3 + 0x18) >> 1) - v10;
  result = specialized Sequence._copySequenceContents(initializing:)(&v36, (v3 + 8 * v10 + 32), v11, v4);
  if (result < v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = result;
  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v8 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v8)
    {
      __break(1u);
LABEL_19:
      v21 = (v13 + 64) >> 6;
      while (1)
      {
        v22 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_41;
        }

        if (v22 >= v21)
        {
          goto LABEL_8;
        }

        v23 = *(v12 + 8 * v22);
        ++v3;
        if (v23)
        {
          v19 = (v23 - 1) & v23;
          v20 = __clz(__rbit64(v23)) | (v22 << 6);
          v3 = v22;
          goto LABEL_24;
        }
      }
    }

    *(v3 + 16) = v16;
  }

  result = v36;
  if (v14 != v11)
  {
LABEL_8:
    result = outlined consume of [String : [String : [String : [Int]]]].Iterator._Variant();
    *v1 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v12 = v37;
  v13 = v38;
  v3 = v39;
  v35 = v37;
  if (!v40)
  {
    goto LABEL_19;
  }

  v19 = (v40 - 1) & v40;
  v20 = __clz(__rbit64(v40)) | (v39 << 6);
  v21 = (v38 + 64) >> 6;
LABEL_24:
  v24 = result;
  v25 = *(*(result + 56) + 8 * v20);
  v26 = v25;
  v27 = v25;
  v28 = v35;
  while (1)
  {
LABEL_26:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = v27;
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v34;
      v28 = v35;
    }

    v2 = *v1;
    v29 = *v1 & 0xFFFFFFFFFFFFFF8;
    v30 = *(v29 + 0x18) >> 1;
    if (v4 < v30)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v29 + 32 + 8 * v4++) = v27;
    if (!v19)
    {
      break;
    }

    result = v24;
LABEL_36:
    v33 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = *(*(result + 56) + ((v3 << 9) | (8 * v33)));
    v28 = v35;
    if (v4 == v30)
    {
      v4 = v30;
      *(v29 + 16) = v30;
      goto LABEL_26;
    }
  }

  v31 = v3;
  result = v24;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v21)
    {
      *(v29 + 16) = v4;
      goto LABEL_8;
    }

    v19 = *(v28 + 8 * v32);
    ++v31;
    if (v19)
    {
      v3 = v32;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t closure #4 in static SILManifest.manifestFromPlists(plists:)(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*a2 + 16))
  {
    return 1;
  }

  v10 = *a1;
  v11 = &v10[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name];
  specialized __RawDictionaryStorage.find<A>(_:)(*&v10[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name], *&v10[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8]);
  if ((v12 & 1) == 0)
  {
    return 1;
  }

  v13 = SILLogger.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v13, v6);
  outlined init with copy of SILFileHandle(a3, v30);
  v14 = v10;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315394;
    v19 = *v11;
    v20 = v11[1];

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v29);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v31;
    v23 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v24 = (*(v23 + 24))(v22, v23);
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v29);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_262A43000, v15, v16, "Duplicate indicator %s from %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266730D70](v18, -1, -1);
    MEMORY[0x266730D70](v17, -1, -1);

    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return 0;
}

void one-time initialization function for usesSoftBoundary()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_productType_obj();

    if (v2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.lowercased()();
      lazy protocol witness table accessor for type String and conformance String();
      v3 = StringProtocol.contains<A>(_:)();

      if ((v3 & 1) == 0)
      {
        String.lowercased()();

        v4 = StringProtocol.contains<A>(_:)();

        goto LABEL_7;
      }
    }

    v4 = 1;
LABEL_7:
    static SILManifest.usesSoftBoundary = v4 & 1;
    return;
  }

  __break(1u);
}

uint64_t SILManifest.__ivar_destroyer()
{
}

id SILMgrCommonBase.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlistCodingKeys()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlistCodingKeys@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PlistCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlistCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlistCodingKeys and conformance PlistCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlistCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlistCodingKeys and conformance PlistCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _ss22KeyedDecodingContainerV10SILManagerE6decodeySDySSypGAEmKFAC15PlistCodingKeysV_Ttg5()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager15PlistCodingKeysVGMd);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v44[2] = v44 - v6;
  v47 = v0;
  v48 = v5;
  v7 = KeyedDecodingContainer.allKeys.getter();
  v46 = *(v7 + 16);
  if (!v46)
  {
    v10 = MEMORY[0x277D84F98];
LABEL_31:

    return v10;
  }

  v8 = 0;
  v44[1] = v4 + 8;
  v9 = (v7 + 56);
  v10 = MEMORY[0x277D84F98];
  v45 = v7;
  while (v8 < *(v7 + 16))
  {
    v50 = v8;
    v15 = *(v9 - 3);
    v16 = *(v9 - 2);
    v17 = *(v9 - 1);
    v18 = *v9;
    v54 = v15;
    v55 = v16;
    v56 = v17;
    v57 = v18;

    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    if (!v2)
    {
      v53 = MEMORY[0x277D839B0];
      LOBYTE(v52) = v19 & 1;
      outlined init with take of Any(&v52, &v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v10;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
      v23 = v10[2];
      v24 = (v22 & 1) == 0;
      v13 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v13)
      {
        goto LABEL_33;
      }

      v26 = v22;
      if (v10[3] < v25)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_37;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v10 = v58;
        if (v26)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v41 = v31;
        specialized _NativeDictionary.copy()();
        v31 = v41;
        v10 = v58;
        if (v26)
        {
          goto LABEL_25;
        }
      }

      v10[(v31 >> 6) + 8] |= 1 << v31;
      v11 = (v10[6] + 16 * v31);
      *v11 = v15;
      v11[1] = v16;
      outlined init with take of Any(&v51, (v10[7] + 32 * v31));
      v12 = v10[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_35;
      }

      goto LABEL_4;
    }

    v49 = v15;

    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v2 = 0;
    v53 = MEMORY[0x277D837D0];
    *&v52 = v20;
    *(&v52 + 1) = v28;
    outlined init with take of Any(&v52, &v51);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v10;
    v30 = v49;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v16);
    v33 = v10[2];
    v34 = (v32 & 1) == 0;
    v13 = __OFADD__(v33, v34);
    v35 = v33 + v34;
    if (v13)
    {
      goto LABEL_34;
    }

    v36 = v32;
    if (v10[3] >= v35)
    {
      if ((v29 & 1) == 0)
      {
        v42 = v31;
        specialized _NativeDictionary.copy()();
        v31 = v42;
        v10 = v58;
        if (v36)
        {
LABEL_25:
          v40 = (v10[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          outlined init with take of Any(&v51, v40);

          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v29);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v16);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_37;
      }
    }

    v10 = v58;
    if (v36)
    {
      goto LABEL_25;
    }

LABEL_22:
    v10[(v31 >> 6) + 8] |= 1 << v31;
    v38 = (v10[6] + 16 * v31);
    *v38 = v30;
    v38[1] = v16;
    outlined init with take of Any(&v51, (v10[7] + 32 * v31));
    v39 = v10[2];
    v13 = __OFADD__(v39, 1);
    v14 = v39 + 1;
    if (v13)
    {
      goto LABEL_36;
    }

LABEL_4:
    v10[2] = v14;
LABEL_5:
    v7 = v45;
    v8 = v50 + 1;
    v9 += 32;
    if (v46 == v50 + 1)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  __break(1u);
LABEL_36:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *UnkeyedDecodingContainer.decode(_:)()
{
  v1 = v0;
  v2 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
  v3 = MEMORY[0x277D84F90];
  if ((v2 & 1) == 0)
  {
    v5 = MEMORY[0x277D839B0];
    do
    {
      v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      if (v1)
      {

        dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v1 = 0;
        v11 = MEMORY[0x277D839F8];
        *&v10 = v7;
      }

      else
      {
        v11 = v5;
        LOBYTE(v10) = v6 & 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      outlined init with take of Any(&v10, &v3[32 * v9 + 32]);
    }

    while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0);
  }

  return v3;
}

uint64_t UnkeyedDecodingContainer.decode(_:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager15PlistCodingKeysVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  lazy protocol witness table accessor for type PlistCodingKeys and conformance PlistCodingKeys();
  v6 = dispatch thunk of UnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)();
  if (!v1)
  {
    v0 = _ss22KeyedDecodingContainerV10SILManagerE6decodeySDySSypGAEmKFAC15PlistCodingKeysV_Ttg5(v6);
    (*(v3 + 8))(v5, v2);
  }

  return v0;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x266730350](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectV_SbtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2();
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v9);
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      if (v9 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v12 + 16) = v9 / 2;
      }

      v14[0] = v12 + 32;
      v14[1] = v9 / 2;
      v13 = v12;
      a4(v14, v15, a1, v11);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame) >= *(*v9 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = (v9 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
      result = *v12;
      v13 = v12[1];
      v14 = (*v11 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
      v15 = result == *v14 && v13 == v14[1];
      if (v15 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v16 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v16;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v28 = a3;
    v20 = v6;
    v21 = v5;
    while (1)
    {
      outlined init with copy of SILFileHandle(v5, &v25);
      outlined init with copy of SILFileHandle(v5 - 40, v22);
      v7 = v26;
      v8 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, v26);
      v9 = (*(v8 + 24))(v7, v8);
      v11 = v10;
      v13 = v23;
      v12 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      if (v9 == (*(v12 + 24))(v13, v12) && v11 == v14)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
LABEL_5:
        a3 = v28 + 1;
        v5 = v21 + 40;
        v6 = v20 - 1;
        if (v28 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      outlined init with take of SILFileHandle(v5, &v25);
      v17 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v17;
      *(v5 + 32) = *(v5 - 8);
      result = outlined init with take of SILFileHandle(&v25, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
LABEL_5:
    v23 = v6;
    v24 = a3;
    v8 = *(v25 + 16 * a3 + 8);
    v22 = v7;
    v9 = v7;
    while (1)
    {
      v10 = *a5;
      if (!*(*a5 + 16))
      {
        break;
      }

      v11 = *(v6 - 1);
      v27 = *(v6 - 2);
      v12 = *v6;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v8);
      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }

      v14 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_16;
      }

      v26 = v9;
      v15 = a5;
      v16 = *(*(*(*(v10 + 56) + 8 * result) + OBJC_IVAR____TtC10SILManager16SILFlipBookState_selfTransition) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v27, v11);
      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }

      v18 = *(*(*(*(v14 + 56) + 8 * result) + OBJC_IVAR____TtC10SILManager16SILFlipBookState_selfTransition) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);

      v19 = v16 >= v18;
      a5 = v15;
      if (!v19)
      {
        if (!v25)
        {
          goto LABEL_18;
        }

        v20 = *v6;
        v8 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v8;
        *(v6 - 2) = v20;
        v6 -= 2;
        v9 = v26 + 1;
        if (v26 != -1)
        {
          continue;
        }
      }

      a3 = v24 + 1;
      v6 = v23 + 2;
      v7 = v22 - 1;
      if (v24 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = MEMORY[0x277D85000];
LABEL_5:
    v20 = a3;
    v8 = *(v4 + 8 * a3);
    v18 = v6;
    v19 = v5;
    while (1)
    {
      v9 = *v5;
      v10 = *((*v7 & *v8) + 0xA8);
      v11 = v8;
      v12 = v9;
      v13 = v10();
      v14 = (*((*v7 & *v12) + 0xA8))();

      if (v13 >= v14)
      {
LABEL_4:
        a3 = v20 + 1;
        v5 = v19 + 8;
        v6 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v15 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v15;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = specialized Array.remove(at:)(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*a3 + 8 * v7) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);
      v11 = *(*(*a3 + 8 * v9) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);
      v12 = v9 + 2;
      v13 = v10;
      while (v5 != v12)
      {
        v14 = *(*(*a3 + 8 * v12) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = specialized Array.remove(at:)(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(v25 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame) >= *(*v27 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v116 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = a5;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v120 = v9;
      v121 = v10;
      if (v9 + 1 >= v7)
      {
        v26 = (v9 + 1);
      }

      else
      {
        v122 = v7;
        v11 = *a3;
        v12 = (*a3 + 16 * (v9 + 1));
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 16 * v9);
        v16 = *v15;
        v17 = v15[1];
        v8 = *v8;
        v18 = v8[2];

        if (!v18)
        {
          goto LABEL_140;
        }

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
        if ((v20 & 1) == 0)
        {
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
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v21 = *a5;
        if (!*(*a5 + 16))
        {
          goto LABEL_142;
        }

        v22 = *(*(v8[7] + 8 * v19) + OBJC_IVAR____TtC10SILManager16SILFlipBookState_selfTransition);
        v8 = &SILTelemetry::timer;
        v128 = *(v22 + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v24 & 1) == 0)
        {
          goto LABEL_143;
        }

        if (v6)
        {
        }

        v125 = *(*(*(*(v21 + 56) + 8 * v23) + OBJC_IVAR____TtC10SILManager16SILFlipBookState_selfTransition) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);

        v6 = (v120 + 2);
        v25 = (v11 + 16 * v120 + 40);
        while (1)
        {
          v26 = v122;
          v8 = a5;
          if (v122 == v6)
          {
            break;
          }

          v27 = *a5;
          if (!*(*a5 + 16))
          {
            goto LABEL_119;
          }

          v28 = *(v25 - 3);
          v29 = *(v25 - 2);
          v30 = *(v25 - 1);
          v31 = *v25;

          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
          if ((v33 & 1) == 0)
          {
            goto LABEL_120;
          }

          v8 = *a5;
          if (!*(*a5 + 16))
          {
            goto LABEL_121;
          }

          v10 = *(*(*(*(v27 + 56) + 8 * v32) + OBJC_IVAR____TtC10SILManager16SILFlipBookState_selfTransition) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
          if ((v35 & 1) == 0)
          {
            goto LABEL_122;
          }

          v36 = *(*(*(v8[7] + 8 * v34) + OBJC_IVAR____TtC10SILManager16SILFlipBookState_selfTransition) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);

          v37 = v10 >= v36;
          v6 = (v6 + 1);
          v25 += 2;
          v10 = v121;
          if ((((v128 < v125) ^ v37) & 1) == 0)
          {
            v26 = (v6 - 1);
            v8 = a5;
            break;
          }
        }

        v6 = 0;
        v38 = 16 * v120;
        if (v128 < v125)
        {
          v39 = v120;
          if (v26 < v120)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
            return result;
          }

          if (v120 < v26)
          {
            v40 = 0;
            v41 = 16 * v26;
            do
            {
              if (v39 != (v26 + v40 - 1))
              {
                v42 = *a3;
                if (!*a3)
                {
                  goto LABEL_152;
                }

                v43 = (v42 + v38);
                v44 = v42 + v41;
                v45 = *v43;
                v46 = v43[1];
                *v43 = *(v44 - 16);
                *(v44 - 16) = v45;
                *(v44 - 8) = v46;
              }

              v39 = (v39 + 1);
              --v40;
              v41 -= 16;
              v38 += 16;
            }

            while (v39 < (v26 + v40));
          }
        }
      }

      v47 = a3[1];
      if (v26 >= v47)
      {
        goto LABEL_38;
      }

      if (__OFSUB__(v26, v120))
      {
        goto LABEL_144;
      }

      if (v26 - v120 >= a4)
      {
LABEL_38:
        v49 = v26;
        if (v26 < v120)
        {
          goto LABEL_139;
        }

        goto LABEL_39;
      }

      if (__OFADD__(v120, a4))
      {
        goto LABEL_145;
      }

      if (v120 + a4 >= v47)
      {
        v48 = a3[1];
      }

      else
      {
        v48 = (v120 + a4);
      }

      if (v48 < v120)
      {
        goto LABEL_146;
      }

      if (v26 == v48)
      {
        v49 = v26;
        if (v26 < v120)
        {
          goto LABEL_139;
        }

        goto LABEL_39;
      }

      v115 = v6;
      v126 = *a3;
      v10 = *a3 + 16 * v26;
      v97 = v120 - v26;
      v117 = v48;
      while (2)
      {
        v123 = v26;
        v6 = *(v126 + 16 * v26 + 8);
        v118 = v97;
        v119 = v10;
        v98 = v97;
        while (1)
        {
          v99 = *v8;
          if (!*(*v8 + 16))
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
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          v100 = *(v10 - 16);
          v101 = *(v10 - 8);
          v102 = *v10;

          v103 = specialized __RawDictionaryStorage.find<A>(_:)(v102, v6);
          if ((v104 & 1) == 0)
          {
            goto LABEL_116;
          }

          v8 = *v8;
          if (!v8[2])
          {
            goto LABEL_117;
          }

          v129 = v98;
          v6 = &SILTelemetry::timer;
          v105 = *(*(*(*(v99 + 56) + 8 * v103) + OBJC_IVAR____TtC10SILManager16SILFlipBookState_selfTransition) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);
          v106 = specialized __RawDictionaryStorage.find<A>(_:)(v100, v101);
          if ((v107 & 1) == 0)
          {
            goto LABEL_118;
          }

          v108 = *(*(*(v8[7] + 8 * v106) + OBJC_IVAR____TtC10SILManager16SILFlipBookState_selfTransition) + OBJC_IVAR____TtC10SILManager26SILFlipBookTransitionPoint_startFrame);

          if (v105 >= v108)
          {
            break;
          }

          v8 = a5;
          if (!v126)
          {
            goto LABEL_149;
          }

          v109 = *v10;
          v6 = *(v10 + 8);
          *v10 = *(v10 - 16);
          *(v10 - 8) = v6;
          *(v10 - 16) = v109;
          v10 -= 16;
          v98 = v129 + 1;
          if (v129 == -1)
          {
            goto LABEL_90;
          }
        }

        v8 = a5;
LABEL_90:
        v26 = (v123 + 1);
        v10 = v119 + 16;
        v97 = v118 - 1;
        v49 = v117;
        if ((v123 + 1) != v117)
        {
          continue;
        }

        break;
      }

      v6 = v115;
      v10 = v121;
      if (v117 < v120)
      {
        goto LABEL_139;
      }

LABEL_39:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v51 = *(v10 + 16);
      v50 = *(v10 + 24);
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v52;
      v53 = v10 + 16 * v51;
      *(v53 + 32) = v120;
      *(v53 + 40) = v49;
      v54 = *v116;
      if (!*v116)
      {
        goto LABEL_153;
      }

      v9 = v49;
      if (v51)
      {
        while (1)
        {
          v55 = v52 - 1;
          if (v52 >= 4)
          {
            break;
          }

          if (v52 == 3)
          {
            v56 = *(v10 + 32);
            v57 = *(v10 + 40);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_58:
            if (v59)
            {
              goto LABEL_128;
            }

            v72 = (v10 + 16 * v52);
            v74 = *v72;
            v73 = v72[1];
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_131;
            }

            v78 = (v10 + 32 + 16 * v55);
            v80 = *v78;
            v79 = v78[1];
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_135;
            }

            if (v76 + v81 >= v58)
            {
              if (v58 < v81)
              {
                v55 = v52 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          v82 = (v10 + 16 * v52);
          v84 = *v82;
          v83 = v82[1];
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_72:
          if (v77)
          {
            goto LABEL_130;
          }

          v85 = v10 + 16 * v55;
          v87 = *(v85 + 32);
          v86 = *(v85 + 40);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_133;
          }

          if (v88 < v76)
          {
            goto LABEL_3;
          }

LABEL_79:
          v93 = v55 - 1;
          if (v55 - 1 >= v52)
          {
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_150;
          }

          v94 = *(v10 + 32 + 16 * v93);
          v95 = *(v10 + 32 + 16 * v55 + 8);
          specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 16 * v94, (*a3 + 16 * *(v10 + 32 + 16 * v55)), (*a3 + 16 * v95), v54, v8);
          if (v6)
          {
          }

          if (v95 < v94)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v93 >= *(v10 + 16))
          {
            goto LABEL_125;
          }

          v96 = v10 + 16 * v93;
          *(v96 + 32) = v94;
          *(v96 + 40) = v95;
          result = specialized Array.remove(at:)(v55);
          v52 = *(v10 + 16);
          if (v52 <= 1)
          {
            goto LABEL_3;
          }
        }

        v60 = v10 + 32 + 16 * v52;
        v61 = *(v60 - 64);
        v62 = *(v60 - 56);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_126;
        }

        v65 = *(v60 - 48);
        v64 = *(v60 - 40);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_127;
        }

        v67 = (v10 + 16 * v52);
        v69 = *v67;
        v68 = v67[1];
        v66 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v66)
        {
          goto LABEL_129;
        }

        v66 = __OFADD__(v58, v70);
        v71 = v58 + v70;
        if (v66)
        {
          goto LABEL_132;
        }

        if (v71 >= v63)
        {
          v89 = (v10 + 32 + 16 * v55);
          v91 = *v89;
          v90 = v89[1];
          v66 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v66)
          {
            goto LABEL_138;
          }

          if (v58 < v92)
          {
            v55 = v52 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_58;
      }

LABEL_3:
      v7 = a3[1];
      if (v9 >= v7)
      {
        goto LABEL_103;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_103:
  v8 = *v116;
  if (!*v116)
  {
    goto LABEL_154;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_147:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
  }

  v110 = *(v10 + 16);
  if (v110 >= 2)
  {
    while (*a3)
    {
      v111 = *(v10 + 16 * v110);
      v112 = *(v10 + 16 * (v110 - 1) + 40);
      specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 16 * v111, (*a3 + 16 * *(v10 + 16 * (v110 - 1) + 32)), (*a3 + 16 * v112), v8, a5);
      if (v6)
      {
      }

      if (v112 < v111)
      {
        goto LABEL_136;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      }

      if (v110 - 2 >= *(v10 + 16))
      {
        goto LABEL_137;
      }

      v113 = (v10 + 16 * v110);
      *v113 = v111;
      v113[1] = v112;
      result = specialized Array.remove(at:)(v110 - 1);
      v110 = *(v10 + 16);
      if (v110 <= 1)
      {
      }
    }

    goto LABEL_151;
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = specialized Array.remove(at:)(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v112 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = *v112;
    if (!*v112)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v105 = v5;
      v129 = v8;
      v106 = *(v8 + 2);
      if (v106 >= 2)
      {
        while (*a3)
        {
          v107 = *&v8[16 * v106];
          v5 = *&v8[16 * v106 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * v107), (*a3 + 40 * *&v8[16 * v106 + 16]), *a3 + 40 * v5, v6);
          if (v105)
          {
          }

          if (v5 < v107)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v106 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v108 = &v8[16 * v106];
          *v108 = v107;
          *(v108 + 1) = v5;
          v129 = v8;
          result = specialized Array.remove(at:)(v106 - 1);
          v8 = v129;
          v106 = *(v129 + 2);
          if (v106 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    v121 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      outlined init with copy of SILFileHandle(*a3 + 40 * v7, &v126);
      v113 = v9;
      outlined init with copy of SILFileHandle(v10 + 40 * v9, v123);
      v11 = v127;
      v12 = v128;
      __swift_project_boxed_opaque_existential_1(&v126, v127);
      v13 = (*(v12 + 24))(v11, v12);
      v15 = v14;
      v16 = v124;
      v17 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v19 = v13 == (*(v17 + 24))(v16, v17) && v15 == v18;
      v110 = v5;
      if (v19)
      {
        v119 = 0;
      }

      else
      {
        v119 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v126);
      v20 = v113 + 2;
      v21 = v10 + 40 * v113 + 80;
      v117 = v6;
      v22 = 40 * v113 + 40;
      v8 = v121;
      do
      {
        v24 = v20;
        v25 = v7;
        v5 = v22;
        if (v20 >= v6)
        {
          break;
        }

        outlined init with copy of SILFileHandle(v21, &v126);
        outlined init with copy of SILFileHandle(v21 - 40, v123);
        v26 = v127;
        v27 = v128;
        __swift_project_boxed_opaque_existential_1(&v126, v127);
        v28 = (*(v27 + 24))(v26, v27);
        v30 = v29;
        v32 = v124;
        v31 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        v34 = v28 == (*(v31 + 24))(v32, v31) && v30 == v33;
        v23 = v34 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        __swift_destroy_boxed_opaque_existential_1Tm(v123);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v126);
        v20 = v24 + 1;
        v21 += 40;
        v7 = v25 + 1;
        v22 = v5 + 40;
        v8 = v121;
        v6 = v117;
      }

      while (((v119 ^ v23) & 1) == 0);
      if (v119)
      {
        v9 = v113;
        if (v24 < v113)
        {
          goto LABEL_134;
        }

        if (v113 < v24)
        {
          v6 = v113;
          v35 = 40 * v113;
          do
          {
            if (v6 != v25)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v38 = v37 + v35;
              v39 = v37 + v5;
              outlined init with take of SILFileHandle((v37 + v35), &v126);
              v40 = *(v39 + 32);
              v41 = *(v39 + 16);
              *v38 = *v39;
              *(v38 + 16) = v41;
              *(v38 + 32) = v40;
              result = outlined init with take of SILFileHandle(&v126, v39);
            }

            ++v6;
            v5 -= 40;
            v35 += 40;
          }

          while (v6 < v25--);
        }

        v7 = v24;
        v5 = v110;
      }

      else
      {
        v7 = v24;
        v5 = v110;
        v9 = v113;
      }
    }

    v42 = a3[1];
    if (v7 < v42)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v59 = *(v8 + 2);
    v58 = *(v8 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v60;
    v61 = &v8[16 * v59];
    *(v61 + 4) = v9;
    *(v61 + 5) = v7;
    v62 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v8 + 4);
          v65 = *(v8 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_73:
          if (v67)
          {
            goto LABEL_121;
          }

          v80 = &v8[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_124;
          }

          v86 = &v8[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_128;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v90 = &v8[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_87:
        if (v85)
        {
          goto LABEL_123;
        }

        v93 = &v8[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_126;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_94:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v7;
        v102 = *&v8[16 * v101 + 32];
        v103 = *&v8[16 * v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * v102), (*a3 + 40 * *&v8[16 * v63 + 32]), *a3 + 40 * v103, v62);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v101 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v104 = &v8[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        v129 = v8;
        result = specialized Array.remove(at:)(v63);
        v8 = v129;
        v60 = *(v129 + 2);
        v7 = v6;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v8[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_119;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_120;
      }

      v75 = &v8[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_122;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_125;
      }

      if (v79 >= v71)
      {
        v97 = &v8[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_129;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v43 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v43)
  {
    goto LABEL_53;
  }

  v111 = v5;
  v44 = *a3;
  v45 = *a3 + 40 * v7;
  v114 = v9;
  v115 = v43;
  v46 = v9 - v7;
LABEL_42:
  v118 = v45;
  v120 = v7;
  v116 = v46;
  while (1)
  {
    outlined init with copy of SILFileHandle(v45, &v126);
    outlined init with copy of SILFileHandle(v45 - 40, v123);
    v47 = v127;
    v48 = v128;
    __swift_project_boxed_opaque_existential_1(&v126, v127);
    v49 = (*(v48 + 24))(v47, v48);
    v51 = v50;
    v52 = v124;
    v6 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    if (v49 == (*(v6 + 24))(v52, v6) && v51 == v53)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      __swift_destroy_boxed_opaque_existential_1Tm(&v126);
LABEL_41:
      v7 = v120 + 1;
      v45 = v118 + 40;
      v46 = v116 - 1;
      if (v120 + 1 == v115)
      {
        v7 = v115;
        v5 = v111;
        v8 = v121;
        v9 = v114;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v126);
    if ((v55 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v44)
    {
      break;
    }

    outlined init with take of SILFileHandle(v45, &v126);
    v56 = *(v45 - 24);
    *v45 = *(v45 - 40);
    *(v45 + 16) = v56;
    *(v45 + 32) = *(v45 - 8);
    outlined init with take of SILFileHandle(&v126, v45 - 40);
    v45 -= 40;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_87:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (*v5)
      {
        v94 = v8;
        v8 = (v93 - 1);
        v95 = *&v94[16 * v93];
        v96 = *&v94[16 * v93 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 8 * v95), (*v5 + 8 * *&v94[16 * v93 + 16]), (*v5 + 8 * v96), v7);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v96 < v95)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew()(v94);
        }

        if (v93 - 2 >= *(v94 + 2))
        {
          goto LABEL_113;
        }

        v97 = &v94[16 * v93];
        *v97 = v95;
        *(v97 + 1) = v96;
        specialized Array.remove(at:)(v93 - 1);
        v8 = v94;
        v93 = *(v94 + 2);
        if (v93 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v102 = v8;
      v10 = *(*v5 + 8 * v7);
      v105 = 8 * v9;
      v11 = (*v5 + 8 * v9);
      v13 = *v11;
      v12 = v11 + 2;
      v7 = MEMORY[0x277D85000];
      v14 = v9;
      v15 = *((*MEMORY[0x277D85000] & *v10) + 0xA8);
      v16 = v10;
      v17 = v13;
      v109 = v15();
      v107 = (*((*v7 & *v17) + 0xA8))();

      v100 = v14;
      v18 = v14 + 2;
      while (v6 != v18)
      {
        v19 = *(v12 - 1);
        v20 = MEMORY[0x277D85000];
        v21 = *((*MEMORY[0x277D85000] & **v12) + 0xA8);
        v22 = *v12;
        v23 = v19;
        v7 = v21();
        v24 = (*((*v20 & *v23) + 0xA8))();

        ++v18;
        ++v12;
        if (v109 < v107 == v7 >= v24)
        {
          v6 = v18 - 1;
          break;
        }
      }

      v8 = v102;
      v5 = a3;
      v9 = v100;
      v25 = v105;
      if (v109 < v107)
      {
        if (v6 < v100)
        {
          goto LABEL_116;
        }

        if (v100 < v6)
        {
          v26 = 8 * v6 - 8;
          v27 = v6;
          v28 = v100;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_122;
              }

              v29 = *(v30 + v25);
              *(v30 + v25) = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            ++v28;
            v26 -= 8;
            v25 += 8;
          }

          while (v28 < v27);
        }
      }

      v7 = v6;
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_115;
      }

      if (v7 - v9 < a4)
      {
        v32 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_117;
        }

        if (v32 >= v31)
        {
          v32 = v5[1];
        }

        if (v32 < v9)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v7 < v9)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v47 = *(v8 + 2);
    v46 = *(v8 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v8);
    }

    *(v8 + 2) = v48;
    v49 = &v8[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v7;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_56:
          if (v55)
          {
            goto LABEL_103;
          }

          v68 = &v8[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_106;
          }

          v74 = &v8[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_110;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v78 = &v8[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_70:
        if (v73)
        {
          goto LABEL_105;
        }

        v81 = &v8[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_108;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_77:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_118;
        }

        if (!*v5)
        {
          goto LABEL_121;
        }

        v90 = *&v8[16 * v89 + 32];
        v91 = *&v8[16 * v51 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 8 * v90), (*v5 + 8 * *&v8[16 * v51 + 32]), (*v5 + 8 * v91), v50);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v91 < v90)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v89 >= *(v8 + 2))
        {
          goto LABEL_100;
        }

        v92 = &v8[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        specialized Array.remove(at:)(v51);
        v48 = *(v8 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v8[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_101;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_102;
      }

      v63 = &v8[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_104;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_107;
      }

      if (v67 >= v59)
      {
        v85 = &v8[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_111;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_87;
    }
  }

  v103 = v8;
  v33 = *v5;
  v34 = *v5 + 8 * v7 - 8;
  v101 = v9;
  v35 = v9 - v7;
  v106 = v32;
LABEL_29:
  v110 = v34;
  v111 = v7;
  v36 = *(v33 + 8 * v7);
  v108 = v35;
  while (1)
  {
    v37 = *v34;
    v38 = MEMORY[0x277D85000];
    v39 = *((*MEMORY[0x277D85000] & *v36) + 0xA8);
    v40 = v36;
    v41 = v37;
    v42 = v39();
    v43 = (*((*v38 & *v41) + 0xA8))();

    if (v42 >= v43)
    {
LABEL_28:
      v7 = v111 + 1;
      v34 = v110 + 8;
      v35 = v108 - 1;
      if ((v111 + 1) != v106)
      {
        goto LABEL_29;
      }

      v7 = v106;
      v8 = v103;
      v5 = a3;
      v9 = v101;
      goto LABEL_36;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v34;
    v36 = *(v34 + 8);
    *v34 = v36;
    *(v34 + 8) = v44;
    v34 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_28;
    }
  }

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
}