void specialized static FileLogger.saveDebugTextSource(_:name:extension:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v15 = String.data(using:allowLossyConversion:)();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  if (v17 >> 60 == 15)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = static os_log_type_t.error.getter();

    v20 = Logger.logObject.getter();

    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v24);
      *(v21 + 12) = 2080;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v24);
      _os_log_impl(&dword_265D7D000, v20, v19, "Unable to convert string to data %s.%s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v22, -1, -1);
      MEMORY[0x266773120](v21, -1, -1);
    }
  }

  else
  {
    specialized static FileLogger.saveDebugFile(_:name:extension:)(v15, v17, a3, a4, a5, a6);
    outlined consume of Data?(v15, v17);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

Swift::String __swiftcall OrderedDictionary._debugDescription(typeName:)(Swift::String typeName)
{
  *&v55 = v6;
  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  object = typeName._object;
  countAndFlagsBits = typeName._countAndFlagsBits;
  v14 = *(v5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](typeName._countAndFlagsBits);
  v57 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v17 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x28223BE20](v19);
  v56 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = type metadata accessor for Optional();
  v51 = *(v54 - 8);
  v22 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v43 - v25;
  v58 = countAndFlagsBits;
  v59 = object;

  MEMORY[0x266771550](40, 0xE100000000000000);
  v62 = v58;
  v63 = v59;
  v58 = v9;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v27 = 6109787;
    v28 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x266771550](91, 0xE100000000000000);
    v58 = v11;
    v59 = v10;
    v60 = v9;
    v61 = 0;
    v29 = type metadata accessor for OrderedDictionary.Iterator();
    v51 += 32;
    v52 = v29;
    v50 = TupleTypeMetadata2 - 8;
    v48 = (v14 + 32);
    v49 = (v44 + 32);
    v46 = (v14 + 16);
    v47 = (v44 + 16);
    v45 = (v14 + 8);
    v30 = (v44 + 8);
    v44 = v11;

    v43[2] = v10;

    v43[1] = v9;

    v31 = 1;
    v55 = xmmword_265F1F670;
    while (1)
    {
      v38 = v53;
      OrderedDictionary.Iterator.next()(v52, v53);
      (*v51)(v26, v38, v54);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v26, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v39 = *(TupleTypeMetadata2 + 48);
      (*v49)(v56, v26, v8);
      (*v48)(v57, &v26[v39], v7);
      if ((v31 & 1) == 0)
      {
        MEMORY[0x266771550](8236, 0xE200000000000000);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = v55;
      *(v32 + 56) = v8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v32 + 32));
      v34 = v56;
      (*v47)(boxed_opaque_existential_0, v56, v8);
      debugPrint<A>(_:separator:terminator:to:)();

      MEMORY[0x266771550](8250, 0xE200000000000000);
      v35 = swift_allocObject();
      *(v35 + 16) = v55;
      *(v35 + 56) = v7;
      v36 = __swift_allocate_boxed_opaque_existential_0((v35 + 32));
      v37 = v57;
      (*v46)(v36, v57, v7);
      debugPrint<A>(_:separator:terminator:to:)();

      (*v45)(v37, v7);
      (*v30)(v34, v8);
      v31 = 0;
    }

    v27 = 93;
    v28 = 0xE100000000000000;
  }

  MEMORY[0x266771550](v27, v28);
  MEMORY[0x266771550](41, 0xE100000000000000);
  v40 = v62;
  v41 = v63;
  result._object = v41;
  result._countAndFlagsBits = v40;
  return result;
}

uint64_t OrderedDictionary.debugDescription.getter()
{
  v0._countAndFlagsBits = specialized OrderedDictionary._debugTypeName()();
  countAndFlagsBits = OrderedDictionary._debugDescription(typeName:)(v0)._countAndFlagsBits;

  return countAndFlagsBits;
}

Swift::String __swiftcall OrderedDictionary._debugTypeName()()
{
  v0 = specialized OrderedDictionary._debugTypeName()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OrderedDictionary<A, B>(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  return OrderedDictionary.debugDescription.getter();
}

unint64_t specialized OrderedDictionary._debugTypeName()()
{
  _StringGuts.grow(_:)(25);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](8236, 0xE200000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](62, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs15FlattenSequenceVySaySay11ShaderGraph7NodeDefV12AvailabilityVGGG_AL8PlatformO_ALts5NeverOTg504_s11f6Graph7hi3V12j54V24MaterialXAttributeParserV9reconcileySayAEGxKSTRzAE7b9RtzlFZAE8K12O_AEtAEXEfU_Tf1cn_n(uint64_t a1)
{
  v53 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v3 = 0;
  v4 = v53;
LABEL_3:
  v6 = *(a1 + 16);
  if (v3 == v6)
  {
LABEL_15:

    return v4;
  }

  else
  {
    if (v3 >= v6)
    {
LABEL_16:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v7 = *(a1 + 32 + 8 * v3);

        if (v7)
        {
          v5 = *(v7 + 16);
          if (v5)
          {
            break;
          }
        }

        ++v3;
        v8 = *(a1 + 16);
        if (v3 == v8)
        {
          goto LABEL_15;
        }

        if (v3 >= v8)
        {
          goto LABEL_16;
        }
      }

      v9 = 0;
      ++v3;
      while (v9 < v5)
      {
        v10 = (v7 + 160 * v9);
        v11 = v10[2];
        v34 = v10[3];
        v33 = v11;
        v12 = v10[4];
        v13 = v10[5];
        v14 = v10[6];
        v38 = v10[7];
        v37 = v14;
        v36 = v13;
        v35 = v12;
        v15 = v10[8];
        v16 = v10[9];
        v17 = v10[11];
        v41 = v10[10];
        v42 = v17;
        v39 = v15;
        v40 = v16;
        v54 = v33;
        *&v32[71] = v14;
        *&v32[87] = v38;
        *&v32[39] = v35;
        *&v32[55] = v36;
        *&v32[135] = v41;
        *&v32[151] = v17;
        *&v32[103] = v15;
        *&v32[119] = v16;
        *&v32[7] = v33;
        *&v32[23] = v34;
        v50 = *&v32[112];
        v51 = *&v32[128];
        *v52 = *&v32[144];
        *&v52[15] = *(&v17 + 1);
        v47 = *&v32[64];
        v48 = *&v32[80];
        v49 = *&v32[96];
        v43 = *v32;
        v44 = *&v32[16];
        v45 = *&v32[32];
        v46 = *&v32[48];
        v18 = v9;
        result = outlined init with copy of NodeDef.Availability(&v33, &v31);
        v53 = v4;
        v20 = *(v4 + 16);
        v19 = *(v4 + 24);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v21 = v20 + 1;
          v4 = v53;
        }

        v9 = v18 + 1;
        *(v4 + 16) = v21;
        v22 = v4 + 168 * v20;
        *(v22 + 32) = v54;
        v23 = v43;
        v24 = v44;
        *(v22 + 65) = v45;
        *(v22 + 49) = v24;
        *(v22 + 33) = v23;
        v25 = v46;
        v26 = v47;
        v27 = v48;
        *(v22 + 129) = v49;
        *(v22 + 113) = v27;
        *(v22 + 97) = v26;
        *(v22 + 81) = v25;
        v28 = v50;
        v29 = v51;
        v30 = *v52;
        *(v22 + 192) = *&v52[15];
        *(v22 + 177) = v30;
        *(v22 + 161) = v29;
        *(v22 + 145) = v28;
        v5 = *(v7 + 16);
        if (v9 == v5)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v16;
  v53 = a5;
  v51 = *(a5 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v18);
  v63 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v64 = &v49 - v21;
  v22 = type metadata accessor for Optional();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - v26;
  v28 = *(*(a4 - 1) + 64);
  MEMORY[0x28223BE20](v29);
  v56 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v62 = *(a3 - 1);
  v32 = *(v62 + 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = dispatch thunk of Sequence.underestimatedCount.getter();
  v70 = ContiguousArray.init()();
  v65 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v39);
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v41)(v27, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v27, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v27, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v27, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  dispatch thunk of IteratorProtocol.next()();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t _ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufC10Foundation09CharacterA0V_SS17UnicodeScalarViewVTt1g5(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CharacterSet();
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
  dispatch thunk of SetAlgebra.init()();
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v12[0] = a1;
          v12[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v9 = v12 + v5;
        }

        else
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = _StringObject.sharedUTF8.getter();
          }

          v9 = (v8 + v5);
        }

        v6 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v10 = (__clz(v6 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v6 = ((v6 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
            v7 = 3;
          }

          else
          {
            v6 = ((v6 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
            v7 = 4;
          }

          goto LABEL_7;
        }

        if (v10 == 1)
        {
LABEL_15:
          v7 = 1;
        }

        else
        {
          v6 = v9[1] & 0x3F | ((v6 & 0x1F) << 6);
          v7 = 2;
        }
      }

LABEL_7:
      v5 += v7;
      v13 = v6;
      dispatch thunk of SetAlgebra.insert(_:)();
      if (v5 >= v4)
      {
      }
    }
  }
}

__n128 static NodeDef.Availability.currentPlatform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v2 operatingSystemVersion];
  v3 = v7;
  v5 = v6;

  *a1 = 0;
  result = v5;
  *(a1 + 8) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  return result;
}

uint64_t NodeDef.Availability.PlatformVersion.minor.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t NodeDef.Availability.PlatformVersion.patch.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t one-time initialization function for platformVersionRegex()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);
  __swift_allocate_value_buffer(v0, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  __swift_project_value_buffer(v0, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_S2sSgA4AtMd, &_sSs_S2sSgA4AtMR);
  return Regex.init(_regexString:version:)();
}

uint64_t NodeDef.Availability.PlatformVersion.platformVersionRegex.unsafeMutableAddressor()
{
  if (one-time initialization token for platformVersionRegex != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);

  return __swift_project_value_buffer(v0, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
}

uint64_t static NodeDef.Availability.PlatformVersion.platformVersionRegex.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for platformVersionRegex != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);
  v3 = __swift_project_value_buffer(v2, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double NodeDef.Availability.PlatformVersion.init(versionString:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized NodeDef.Availability.PlatformVersion.init(versionString:)(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

double NodeDef.Availability.PlatformVersion.init(stringLiteral:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized NodeDef.Availability.PlatformVersion.init(versionString:)(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t NodeDef.Availability.PlatformVersion.init(major:minor:patch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

void NodeDef.Availability.PlatformVersion.hash(into:)()
{
  MEMORY[0x266772770](*v0);
  if (*(v0 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
  }

  if (*(v0 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v2);
  }
}

Swift::Int NodeDef.Availability.PlatformVersion.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](*v0);
  if (*(v0 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
  }

  if (*(v0 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NodeDef.Availability.PlatformVersion()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x266772770](*v0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
    if (!v4)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v3);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Availability.PlatformVersion()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v2);
  if (v3 != 1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static NodeDef.Availability.PlatformVersion.== infix(_:_:)(v5, v7);
}

double protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance NodeDef.Availability.PlatformVersion@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized NodeDef.Availability.PlatformVersion.init(versionString:)(*a1, a1[1], v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t NodeDef.Availability.Platform.rawValue.getter(unsigned __int8 a1)
{
  v1 = 5459817;
  v2 = 1397716596;
  v3 = 0x534F6E6F69736976;
  if (a1 != 4)
  {
    v3 = 0x4B7974696C616572;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x534F63616DLL;
  if (a1 != 1)
  {
    v4 = 0x534F6863746177;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.Availability.Platform(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = *a2;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE800000000000000;
  v8 = 0x534F6E6F69736976;
  if (v2 != 4)
  {
    v8 = 0x4B7974696C616572;
    v7 = 0xEA00000000007469;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x534F63616DLL;
  if (v2 != 1)
  {
    v10 = 0x534F6863746177;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v3 = v9;
  }

  else
  {
    v10 = 5459817;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (*a2 > 2u)
  {
    if (v4 == 3)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1397716596)
      {
        goto LABEL_34;
      }
    }

    else if (v4 == 4)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x534F6E6F69736976)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xEA00000000007469;
      if (v11 != 0x4B7974696C616572)
      {
LABEL_34:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (*a2)
  {
    if (v4 == 1)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x534F63616DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x534F6863746177)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 5459817)
    {
      goto LABEL_34;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Availability.Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NodeDef.Availability.Platform()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Availability.Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NodeDef.Availability.Platform@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NodeDef.Availability.Platform.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NodeDef.Availability.Platform(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE800000000000000;
  v8 = 0x534F6E6F69736976;
  if (v2 != 4)
  {
    v8 = 0x4B7974696C616572;
    v7 = 0xEA00000000007469;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x534F63616DLL;
  if (v2 != 1)
  {
    v10 = 0x534F6863746177;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void NodeDef.Availability.AvailabilityKind.hash(into:)()
{
  if (*(v0 + 114))
  {
    v1 = 1;
LABEL_3:
    MEMORY[0x266772770](v1);
    return;
  }

  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  v7 = v0[5];
  v8 = v0[7];
  v11 = v0[6];
  v12 = v0[8];
  v15 = *(v0 + 72);
  v16 = v0[10];
  v17 = v0[12];
  v13 = v0[11];
  v14 = v0[13];
  v18 = *(v0 + 112);
  v19 = *(v0 + 113);
  v9 = *(v0 + 73);
  v10 = *(v0 + 33);
  MEMORY[0x266772770](0);
  if (v10)
  {
    goto LABEL_10;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v3);
  if (v4)
  {
    Hasher._combine(_:)(0);
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v2);
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_7:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v5);
  if (v9)
  {
LABEL_16:
    Hasher._combine(_:)(0);
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v7);
  if (v8)
  {
    Hasher._combine(_:)(0);
    if (v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v11);
    if (v15)
    {
      goto LABEL_16;
    }
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v12);
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_17:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v16);
  if (v17)
  {
    Hasher._combine(_:)(0);
    if ((v18 & 1) == 0)
    {
LABEL_19:
      Hasher._combine(_:)(1u);
      v1 = v14;
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v13);
    if ((v18 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  Hasher._combine(_:)(0);
}

Swift::Int NodeDef.Availability.AvailabilityKind.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.AvailabilityKind.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Availability.AvailabilityKind()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.AvailabilityKind.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Availability.AvailabilityKind()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.AvailabilityKind.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.Availability.AvailabilityKind(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v13[0] = *(a1 + 96);
  *(v13 + 15) = *(a1 + 111);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[15] = *(a2 + 111);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return specialized static NodeDef.Availability.AvailabilityKind.== infix(_:_:)(v12, v14) & 1;
}

__n128 NodeDef.Availability.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 111) = *(v1 + 119);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v3;
  result = *(v1 + 40);
  v5 = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

uint64_t NodeDef.Availability.renamed.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t NodeDef.Availability.message.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

void NodeDef.Availability.hash(into:)()
{
  *v0;
  *v0;
  String.hash(into:)();

  if (*(v0 + 122))
  {
    v1 = 1;
    goto LABEL_3;
  }

  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 72);
  v17 = *(v0 + 80);
  v14 = *(v0 + 96);
  v18 = *(v0 + 88);
  v19 = *(v0 + 104);
  v15 = *(v0 + 112);
  v16 = *(v0 + 64);
  v20 = *(v0 + 120);
  v21 = *(v0 + 121);
  v10 = *(v0 + 81);
  v11 = *(v0 + 41);
  MEMORY[0x266772770](0);
  if (v11)
  {
    goto LABEL_14;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v4);
  if (v6)
  {
    Hasher._combine(_:)(0);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_15:
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v9);
    if (v16)
    {
      Hasher._combine(_:)(0);
      if (v17)
      {
        goto LABEL_20;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v12);
      if (v17)
      {
        goto LABEL_20;
      }
    }

    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v13);
    if (v21)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v5);
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v7);
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  Hasher._combine(_:)(0);
  if (v21)
  {
    goto LABEL_25;
  }

LABEL_21:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v18);
  if (v19)
  {
    Hasher._combine(_:)(0);
    if ((v20 & 1) == 0)
    {
LABEL_23:
      Hasher._combine(_:)(1u);
      v1 = v15;
LABEL_3:
      MEMORY[0x266772770](v1);
      if (*(v0 + 136))
      {
        goto LABEL_4;
      }

LABEL_26:
      Hasher._combine(_:)(0);
      if (*(v0 + 152))
      {
        goto LABEL_5;
      }

LABEL_27:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v14);
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  Hasher._combine(_:)(0);
  if (!*(v0 + 136))
  {
    goto LABEL_26;
  }

LABEL_4:
  v2 = *(v0 + 128);
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v0 + 152))
  {
    goto LABEL_27;
  }

LABEL_5:
  v3 = *(v0 + 144);
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int NodeDef.Availability.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.hash(into:)();
  return Hasher._finalize()();
}

__n128 NodeDef.Availability.init(platform:kind:renamed:message:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v8[7] = *a2;
  *&v8[55] = *(a2 + 48);
  *&v8[39] = *(a2 + 32);
  *&v8[23] = *(a2 + 16);
  *&v8[118] = *(a2 + 111);
  *&v8[103] = *(a2 + 96);
  *&v8[87] = *(a2 + 80);
  *&v8[71] = *(a2 + 64);
  *(a7 + 1) = *v8;
  *(a7 + 49) = *&v8[48];
  *(a7 + 33) = *&v8[32];
  *(a7 + 107) = *&v8[106];
  result = *&v8[80];
  *(a7 + 97) = *&v8[96];
  *(a7 + 81) = *&v8[80];
  *(a7 + 65) = *&v8[64];
  *a7 = a1;
  *(a7 + 17) = *&v8[16];
  *(a7 + 128) = a3;
  *(a7 + 136) = a4;
  *(a7 + 144) = a5;
  *(a7 + 152) = a6;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Availability()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Availability()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.Availability(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return specialized static NodeDef.Availability.== infix(_:_:)(v13, v14) & 1;
}

uint64_t NodeDef.isAvailable(for:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2[18];
  if (v3)
  {
    v6 = v2[18];

    v7 = specialized static NodeDef.available(for:in:)(a1, a2, v3);
  }

  else
  {
    v7 = v2[14];
    outlined copy of MaterialXAvailability(v7, v2[15]);
  }

  return v7;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(v5, v7) & 1;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return (specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(v5, v7) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return (specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(v5, v7) & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(v5, v7) & 1;
}

uint64_t _s11ShaderGraph7NodeDefV12AvailabilityV24MaterialXAttributeParserV9reconcileySayAEGxKSTRzAE7ElementRtzlFZs15FlattenSequenceVySayAIGG_Tt0g5(uint64_t a1)
{
  v3 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs15FlattenSequenceVySaySay11ShaderGraph7NodeDefV12AvailabilityVGGG_AL8PlatformO_ALts5NeverOTg504_s11f6Graph7hi3V12j54V24MaterialXAttributeParserV9reconcileySayAEGxKSTRzAE7b9RtzlFZAE8K12O_AEtAEXEfU_Tf1cn_n(a1);
  if (*(v3 + 16))
  {
    v4 = v3;
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();
    v3 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v10 = v5;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, 1, &v10);
  if (!v2)
  {
    v6 = *(v10 + 16);
    if (v6)
    {
      v7 = v10;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(*(v10 + 16), 0);
      v8 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v1 + 32), v6, v7);
      outlined consume of [String : GeomPropDef].Iterator._Variant();
      if (v8 == v6)
      {
        return v1;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t static NodeDef.Availability.MaterialXAttributeParser.reconcile<A>(_:)(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtMd, &_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtMR);
  v8 = a3;
  v9 = a1;
  v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in static NodeDef.Availability.MaterialXAttributeParser.reconcile<A>(_:), 0, a2, v7, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v10);
  if (*(v11 + 16))
  {
    v12 = v11;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMR);
    v13 = static _DictionaryStorage.allocate(capacity:)();
    v11 = v12;
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  v18 = v13;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v11, 1, &v18);
  if (!v3)
  {
    v14 = *(v18 + 16);
    if (v14)
    {
      v15 = v18;
      v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(*(v18 + 16), 0);
      v16 = specialized Sequence._copySequenceContents(initializing:)(&v18, (v9 + 32), v14, v15);
      outlined consume of [String : GeomPropDef].Iterator._Variant();
      if (v16 == v14)
      {
        return v9;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t closure #1 in static NodeDef.Availability.MaterialXAttributeParser.reconcile<A>(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[7];
  v3 = a1[5];
  v22 = a1[6];
  v23 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v24 = a1[8];
  v6 = v24;
  v25 = v5;
  v7 = a1[3];
  v9 = a1[1];
  v18 = a1[2];
  v8 = v18;
  v19 = v7;
  v10 = a1[3];
  v11 = a1[5];
  v20 = a1[4];
  v12 = v20;
  v21 = v11;
  v13 = a1[1];
  v17[0] = *a1;
  v14 = v17[0];
  v17[1] = v13;
  *(a2 + 104) = v22;
  *(a2 + 120) = v4;
  *(a2 + 136) = v6;
  *(a2 + 152) = a1[9];
  *(a2 + 40) = v8;
  *(a2 + 56) = v10;
  *(a2 + 72) = v12;
  *(a2 + 88) = v3;
  *(a2 + 8) = v14;
  *a2 = v17[0];
  *(a2 + 24) = v9;
  return outlined init with copy of NodeDef.Availability(v17, &v16);
}

double static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)(a1, a2, &v11);
  v4 = v12;
  v5 = v13;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  result = *&v11;
  v10 = v14;
  *a3 = v11;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v10;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
  return result;
}

double static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  specialized static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:)(a1, a2, a3, a4, &v14);
  if (!v5)
  {
    result = *&v14;
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    *a5 = v14;
    *(a5 + 16) = v8;
    *(a5 + 24) = v9;
    *(a5 + 32) = v10;
    *(a5 + 48) = v11;
    *(a5 + 56) = v12;
    *(a5 + 64) = v13;
  }

  return result;
}

uint64_t NodeDef.Availability.description.getter()
{
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  LOBYTE(v48) = *v0;
  _print_unlocked<A, B>(_:_:)();
  v1 = MEMORY[0x277D84F90];
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0;
  *(v5 + 5) = 0xE000000000000000;
  v6 = &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMR;
  if (*(v0 + 122))
  {
    v7 = &outlined read-only object #1 of NodeDef.Availability.description.getter;
LABEL_11:
    specialized Array.append<A>(contentsOf:)(v7);
    goto LABEL_12;
  }

  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 40);
  v35 = *(v0 + 8);
  v36 = *(v0 + 48);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v37 = *(v0 + 80);
  v38 = *(v0 + 88);
  v39 = *(v0 + 104);
  v41 = *(v0 + 112);
  v40 = *(v0 + 120);
  v42 = *(v0 + 121);
  v13 = *(v0 + 81);
  v14 = *(v0 + 41);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of NodeDef.Availability.description.getter);
  v43 = v1;
  if (v14)
  {
    v6 = &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMR;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v52 = v35;
    v53 = v9 & 1;
    v54 = v8;
    v55 = v10 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    strcpy(&v48, "introduced: ");
    BYTE13(v48) = 0;
    HIWORD(v48) = -5120;
    v30 = NodeDef.Availability.PlatformVersion.description.getter();
    MEMORY[0x266771550](v30);

    v31 = *(&v48 + 1);
    *(inited + 32) = v48;
    *(inited + 40) = v31;
    specialized Array.append<A>(contentsOf:)(inited);
    v6 = &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMR;
    if (v13)
    {
LABEL_7:
      if (v42)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v48 = v36;
  v49 = v11 & 1;
  v50 = v12;
  v51 = v37 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_265F1F670;
  strcpy(&v44, "deprecated: ");
  BYTE13(v44) = 0;
  HIWORD(v44) = -5120;
  v33 = NodeDef.Availability.PlatformVersion.description.getter();
  MEMORY[0x266771550](v33);

  v34 = *(&v44 + 1);
  *(v32 + 32) = v44;
  *(v32 + 40) = v34;
  specialized Array.append<A>(contentsOf:)(v32);
  if ((v42 & 1) == 0)
  {
LABEL_8:
    v44 = v38;
    v45 = v39 & 1;
    v46 = v41;
    v47 = v40 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_265F1F670;
    v16 = NodeDef.Availability.PlatformVersion.description.getter();
    MEMORY[0x266771550](v16);

    *(v15 + 32) = 0x6574656C6F73626FLL;
    *(v15 + 40) = 0xEB00000000203A64;
    specialized Array.append<A>(contentsOf:)(v15);
  }

LABEL_9:
  if (*(v43 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_265F1F670;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    MEMORY[0x266771550](v18, v20);

    MEMORY[0x266771550](41, 0xE100000000000000);
    *(v17 + 32) = 40;
    *(v17 + 40) = 0xE100000000000000;
    v7 = v17;
    goto LABEL_11;
  }

LABEL_12:
  v21 = *(v0 + 152);
  if (v21)
  {
    v22 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v23 = swift_initStackObject();
    *(v23 + 16) = *(v6 + 103);
    MEMORY[0x266771550](v22, v21);
    MEMORY[0x266771550](39, 0xE100000000000000);
    *(v23 + 32) = 0x206567617373656DLL;
    *(v23 + 40) = 0xE900000000000027;
    specialized Array.append<A>(contentsOf:)(v23);
  }

  v24 = *(v0 + 136);
  if (v24)
  {
    v25 = *(v0 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v26 = swift_initStackObject();
    *(v26 + 16) = *(v6 + 103);
    MEMORY[0x266771550](v25, v24);
    MEMORY[0x266771550](39, 0xE100000000000000);
    *(v26 + 32) = 0x2064656D616E6572;
    *(v26 + 40) = 0xE900000000000027;
    specialized Array.append<A>(contentsOf:)(v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v27 = BidirectionalCollection<>.joined(separator:)();

  return v27;
}

uint64_t NodeDef.Availability.PlatformVersion.description.getter()
{
  v6 = *v0;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](46, 0xE100000000000000);
  v1 = v0[1];
  *(v0 + 16);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v2);

  MEMORY[0x266771550](46, 0xE100000000000000);
  v3 = v0[3];
  *(v0 + 32);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v4);

  return v7;
}

uint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v38 = a3;
  if (result < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a6 > 1), v6, 1, result);
LABEL_31:
    *(result + 16) = v6;
    v24 = (result + 32 * v9);
    v24[4] = v8;
    v24[5] = v8 + 32;
    v24[6] = 0;
    v24[7] = (2 * v10) | 1;
    return result;
  }

  v8 = a5;
  v10 = *(a5 + 16);
  if (!result || !v10)
  {
    if (!v10 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(result + 16);
    a6 = *(result + 24);
    v6 = (v9 + 1);
    if (v9 < a6 >> 1)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  v6 = a4;
  v11 = 0;
  v31 = a5 + 32;
  v12 = -v10;
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {
      v11 = v10;
      goto LABEL_33;
    }

    v30 = result;
    v35 = v10;
    v36 = v13;
    v14 = 2 * v11;
    v32 = v12;
LABEL_7:
    v9 = 0;
    v10 = v12 + v11;
    v34 = v14;
    while (1)
    {
      a6 = v11 + v9;
      if (v11 + v9 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v15 = v8 + 8 * v14;
      v16 = *(v15 + 40);
      v37[0] = *(v15 + 32);
      v37[1] = v16;

      v17 = v38(v37);
      if (v7)
      {
      }

      v18 = v17;

      if (v18)
      {
        break;
      }

      ++v9;
      v14 += 2;
      if (!(v10 + v9))
      {
        v10 = v35;
        v13 = v36;
        goto LABEL_33;
      }
    }

    if (!v9 && (a2 & 1) != 0)
    {
      break;
    }

    if ((v11 + v9) < v11)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

    if (v11 < 0)
    {
      goto LABEL_53;
    }

    v19 = *(v8 + 16);
    if (v19 < v11 || v19 < v11 + v9)
    {
      goto LABEL_54;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    }

    v21 = v36[2];
    v20 = v36[3];
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v36);
    }

    v13 = v36;
    v36[2] = v22;
    v23 = &v36[4 * v21];
    result = v30;
    v23[4] = v8;
    v23[5] = v31;
    v23[6] = v11;
    v23[7] = v14 + 1;
    v11 += v9 + 1;
    v10 = v35;
    v12 = v32;
    if (v22 == v30)
    {
      goto LABEL_33;
    }
  }

  ++v11;
  v10 = v35;
  v14 = v34 + 2;
  v12 = v32;
  if (v11 != v35)
  {
    goto LABEL_7;
  }

  v11 = v35;
  v13 = v36;
LABEL_33:
  if (v11 == v10 && (a2 & 1) != 0)
  {
    v25 = v13;

    return v25;
  }

  if (v10 < v11)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v11 < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v26 = *(v8 + 16);
  if (v26 < v11 || v26 < v10)
  {
    goto LABEL_50;
  }

  v6 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_51:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  result = v6;
  v28 = v6[2];
  v27 = v6[3];
  if (v28 >= v27 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v6);
  }

  *(result + 16) = v28 + 1;
  v29 = (result + 32 * v28);
  v29[4] = v8;
  v29[5] = v31;
  v29[6] = v11;
  v29[7] = (2 * v10) | 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, uint64_t a3)
{
  v3 = a3;
  v5 = 0;
  v6 = *(a1 + 16);
  v83 = a1 + 32;
  v99 = v6;
  while (1)
  {
    if (v5 == v6)
    {
      _s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtSgWOi0_(__dst);
      v122[8] = __dst[8];
      v122[9] = __dst[9];
      *&v122[10] = *&__dst[10];
      v122[4] = __dst[4];
      v122[5] = __dst[5];
      v122[6] = __dst[6];
      v122[7] = __dst[7];
      v122[0] = __dst[0];
      v122[1] = __dst[1];
      v16 = v6;
      v122[2] = __dst[2];
      v122[3] = __dst[3];
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      if (v5 >= *(a1 + 16))
      {
        goto LABEL_55;
      }

      v17 = (v83 + 168 * v5);
      v18 = v17[7];
      v19 = v17[9];
      __dst[8] = v17[8];
      __dst[9] = v19;
      v20 = v17[3];
      v21 = v17[5];
      __dst[4] = v17[4];
      __dst[5] = v21;
      v22 = v17[5];
      v23 = v17[7];
      __dst[6] = v17[6];
      __dst[7] = v23;
      v24 = v17[1];
      __dst[0] = *v17;
      __dst[1] = v24;
      v25 = v17[3];
      v27 = *v17;
      v26 = v17[1];
      __dst[2] = v17[2];
      __dst[3] = v25;
      v28 = v17[9];
      v122[8] = __dst[8];
      v122[9] = v28;
      v122[4] = __dst[4];
      v122[5] = v22;
      v122[6] = __dst[6];
      v122[7] = v18;
      v122[0] = v27;
      v122[1] = v26;
      *&__dst[10] = *(v17 + 20);
      *&v122[10] = *(v17 + 20);
      v16 = v5 + 1;
      v122[2] = __dst[2];
      v122[3] = v20;
      destructiveProjectEnumData for NodePersonality.ShaderType(v122);
      outlined init with copy of (NodeDef.Availability.Platform, NodeDef.Availability)(__dst, __src);
    }

    v120[8] = v122[8];
    v120[9] = v122[9];
    v121 = *&v122[10];
    v120[4] = v122[4];
    v120[5] = v122[5];
    v120[6] = v122[6];
    v120[7] = v122[7];
    v120[0] = v122[0];
    v120[1] = v122[1];
    v120[2] = v122[2];
    v120[3] = v122[3];
    if (_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtSgWOg(v120) == 1)
    {

      return;
    }

    v123 = v16;
    v29 = v122[0];
    v113 = v122[0];
    *&v117[16] = *(&v122[6] + 8);
    *&v117[32] = *(&v122[7] + 8);
    v118 = *(&v122[8] + 8);
    v119 = *(&v122[9] + 8);
    *&v114[32] = *(&v122[2] + 8);
    v115 = *(&v122[3] + 8);
    v116 = *(&v122[4] + 8);
    *v117 = *(&v122[5] + 8);
    *v114 = *(v122 + 8);
    *&v114[16] = *(&v122[1] + 8);
    v30 = *v3;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v122[0]);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_58;
    }

    v36 = v31;
    if (v30[3] < v35)
    {
      break;
    }

    if (a2)
    {
      if (v31)
      {
        goto LABEL_17;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v36)
      {
        goto LABEL_17;
      }
    }

LABEL_48:
    v67 = *v3;
    *(*v3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    *(v67[6] + v32) = v29;
    v68 = v67[7] + 160 * v32;
    v69 = *&v114[16];
    *v68 = *v114;
    *(v68 + 16) = v69;
    v70 = *&v114[32];
    v71 = v115;
    v72 = *v117;
    *(v68 + 64) = v116;
    *(v68 + 80) = v72;
    *(v68 + 32) = v70;
    *(v68 + 48) = v71;
    v73 = *&v117[16];
    v74 = *&v117[32];
    v75 = v119;
    *(v68 + 128) = v118;
    *(v68 + 144) = v75;
    *(v68 + 96) = v73;
    *(v68 + 112) = v74;
    v76 = v67[2];
    v77 = __OFADD__(v76, 1);
    v78 = v76 + 1;
    if (v77)
    {
      goto LABEL_56;
    }

    v67[2] = v78;
LABEL_3:
    a2 = 1;
    v6 = v99;
    v5 = v123;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, a2 & 1);
  v37 = *v3;
  v38 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
  if ((v36 & 1) != (v39 & 1))
  {
    goto LABEL_57;
  }

  v32 = v38;
  if ((v36 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_17:
  v40 = *v3;
  v41 = *(*v3 + 56) + 160 * v32;
  v42 = *(v41 + 16);
  *v107 = *v41;
  *&v107[16] = v42;
  v43 = *(v41 + 80);
  v45 = *(v41 + 32);
  v44 = *(v41 + 48);
  v109 = *(v41 + 64);
  *v110 = v43;
  *&v107[32] = v45;
  v108 = v44;
  v46 = *(v41 + 144);
  v48 = *(v41 + 96);
  v47 = *(v41 + 112);
  v111 = *(v41 + 128);
  v112 = v46;
  *&v110[16] = v48;
  *&v110[32] = v47;
  if (BYTE10(v47))
  {
    v49 = v117[42];
    if ((v117[42] & 1) == 0)
    {
      goto LABEL_50;
    }

    v97 = *&v114[8];
    v98 = *&v114[24];
    v50 = v114[40];
    v51 = v114[41];
    v105 = *&v114[42];
    v106 = *&v114[46];
    v95 = v115;
    v96 = v116;
    v52 = v117[0];
    v53 = v117[1];
    v103 = *&v117[2];
    v104 = *&v117[6];
    v93 = *&v117[8];
    v94 = *&v117[24];
    v54 = v117[40];
    v55 = v117[41];
LABEL_39:
    v63 = *(&v112 + 1);
    v64 = *(&v119 + 1);
    if (*(&v112 + 1) && *(&v119 + 1))
    {
      goto LABEL_50;
    }

    v65 = *(&v118 + 1);
    v91 = v50;
    v92 = v49;
    v89 = v54;
    v90 = v52;
    v87 = v53;
    v88 = v51;
    v86 = v55;
    v100 = v112;
    if (*(&v111 + 1))
    {
      if (*(&v118 + 1))
      {
        goto LABEL_50;
      }

      v65 = *(&v111 + 1);
      v85 = v111;
      v66 = *(&v112 + 1);
      if (!*(&v112 + 1))
      {
LABEL_46:
        v100 = v119;

        v66 = v64;
      }
    }

    else
    {
      v85 = v118;

      v66 = v63;
      if (!v63)
      {
        goto LABEL_46;
      }
    }

    v7 = v107[0];

    outlined destroy of NodeDef.Availability(v114);
    v8 = v40[7] + 160 * v32;
    v10 = *(v8 + 128);
    v9 = *(v8 + 144);
    v11 = *(v8 + 112);
    __dst[6] = *(v8 + 96);
    __dst[7] = v11;
    __dst[8] = v10;
    __dst[9] = v9;
    v13 = *(v8 + 64);
    v12 = *(v8 + 80);
    v14 = *(v8 + 32);
    __dst[3] = *(v8 + 48);
    __dst[4] = v13;
    __dst[5] = v12;
    v15 = *(v8 + 16);
    __dst[0] = *v8;
    __dst[1] = v15;
    __dst[2] = v14;
    *v8 = v7;
    *(v8 + 8) = v97;
    *(v8 + 24) = v98;
    *(v8 + 40) = v91;
    *(v8 + 41) = v88;
    *(v8 + 46) = v106;
    *(v8 + 42) = v105;
    *(v8 + 48) = v95;
    *(v8 + 64) = v96;
    *(v8 + 80) = v90;
    *(v8 + 81) = v87;
    *(v8 + 86) = v104;
    *(v8 + 82) = v103;
    *(v8 + 88) = v93;
    *(v8 + 104) = v94;
    *(v8 + 120) = v89;
    *(v8 + 121) = v86;
    *(v8 + 122) = v92;
    *(v8 + 128) = v85;
    *(v8 + 136) = v65;
    *(v8 + 144) = v100;
    *(v8 + 152) = v66;
    outlined destroy of NodeDef.Availability(__dst);
    v3 = a3;
    goto LABEL_3;
  }

  if (v117[42] & 1) == 0 && ((v107[41] | v114[41]) & 1) != 0 && ((v110[1] | v117[1]) & 1) != 0 && ((v110[41] | v117[41]))
  {
    v49 = 0;
    v52 = v110[0];
    v50 = v114[40];
    if ((v107[41] & 1) == 0)
    {
      v50 = v107[40];
    }

    v56 = v107[41] & v114[41];
    if (v107[41])
    {
      v57 = -1;
    }

    else
    {
      v57 = 0;
    }

    v58 = vdupq_n_s64(v57);
    v98 = vbslq_s8(v58, *&v114[24], *&v107[24]);
    v97 = vbslq_s8(v58, *&v114[8], *&v107[8]);
    if (v110[1])
    {
      v52 = v117[0];
      v59 = -1;
    }

    else
    {
      v59 = 0;
    }

    v60 = vdupq_n_s64(v59);
    v95 = vbslq_s8(v60, v115, v108);
    v96 = vbslq_s8(v60, v116, v109);
    if (v110[41])
    {
      v54 = v117[40];
    }

    else
    {
      v54 = v110[40];
    }

    if (v110[41])
    {
      v61 = -1;
    }

    else
    {
      v61 = 0;
    }

    v62 = vdupq_n_s64(v61);
    v93 = vbslq_s8(v62, *&v117[8], *&v110[8]);
    v94 = vbslq_s8(v62, *&v117[24], *&v110[24]);
    v51 = v56 & 1;
    LOBYTE(__src[0]) = v56 & 1;
    v53 = v110[1] & v117[1] & 1;
    v55 = v110[41] & v117[41] & 1;
    LOBYTE(__dst[0]) = 0;
    goto LABEL_39;
  }

LABEL_50:
  __src[6] = *&v110[16];
  __src[7] = *&v110[32];
  __src[8] = v111;
  __src[9] = v112;
  __src[2] = *&v107[32];
  __src[3] = v108;
  __src[4] = v109;
  __src[5] = *v110;
  __src[0] = *v107;
  __src[1] = *&v107[16];
  __src[16] = *&v117[16];
  __src[17] = *&v117[32];
  __src[18] = v118;
  __src[19] = v119;
  __src[12] = *&v114[32];
  __src[13] = v115;
  __src[14] = v116;
  __src[15] = *v117;
  __src[10] = *v114;
  __src[11] = *&v114[16];
  memcpy(__dst, __src, sizeof(__dst));
  _s11ShaderGraph14MaterialXErrorOWOi2_(__dst);
  lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
  v79 = swift_allocError();
  memcpy(v80, __dst, 0x140uLL);
  swift_willThrow();
  outlined init with copy of NodeDef.Availability(v107, __dst);
  outlined init with copy of NodeDef.Availability(v114, __dst);

  *&__src[0] = v79;
  v81 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined destroy of NodeDef.Availability(v114);

    return;
  }

LABEL_58:
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x266771590](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t specialized static NodeDef.Availability.AvailabilityKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 114))
  {
    return *(a2 + 114) & 1;
  }

  if (*(a2 + 114))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v11 = *(a1 + 96);
  v10 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 113);
  v14 = *(a1 + 73);
  v15 = *(a2 + 56);
  v16 = *(a2 + 96);
  v17 = *(a2 + 33);
  if (*(a1 + 33))
  {
    goto LABEL_6;
  }

  if ((*(a2 + 33) & 1) != 0 || *a1 != *a2)
  {
    goto LABEL_45;
  }

  v20 = *(a1 + 24);
  v19 = *(a2 + 16);
  v17 = *(a2 + 32);
  if (*(a1 + 16))
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v19 & 1 | (*(a1 + 8) != *(a2 + 8)))
  {
    goto LABEL_45;
  }

  if (*(a1 + 32))
  {
LABEL_6:
    if ((v17 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v18 = 0;
    if ((*(a2 + 32) & 1) != 0 || v20 != *(a2 + 24))
    {
      return v18 & 1;
    }
  }

  if (v14)
  {
    if ((*(a2 + 73) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if ((*(a2 + 73) & 1) != 0 || v4 != *(a2 + 40))
    {
      goto LABEL_45;
    }

    if (v6)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v15 & 1 | (v3 != *(a2 + 48)))
    {
      goto LABEL_45;
    }

    if (v7)
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v18 = 0;
      if ((*(a2 + 72) & 1) != 0 || v5 != *(a2 + 64))
      {
        return v18 & 1;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    if ((*(a2 + 113) & 1) != 0 || v9 != *(a2 + 80))
    {
      goto LABEL_45;
    }

    if (v11)
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v16 & 1 | (v8 != *(a2 + 88)))
    {
      goto LABEL_45;
    }

    if (v12)
    {
      if (*(a2 + 112))
      {
        goto LABEL_11;
      }
    }

    else if ((*(a2 + 112) & 1) == 0 && v10 == *(a2 + 104))
    {
      goto LABEL_11;
    }

LABEL_45:
    v18 = 0;
    return v18 & 1;
  }

  if ((*(a2 + 113) & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_11:
  v18 = 1;
  return v18 & 1;
}

BOOL specialized static NodeDef.Availability.PlatformVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

uint64_t specialized static NodeDef.Availability.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = 5459817;
  v5 = *a1;
  if (v5 > 2)
  {
    v10 = 0xE800000000000000;
    v11 = 0x534F6E6F69736976;
    if (v5 != 4)
    {
      v11 = 0x4B7974696C616572;
      v10 = 0xEA00000000007469;
    }

    if (v5 == 3)
    {
      v8 = 1397716596;
    }

    else
    {
      v8 = v11;
    }

    if (v5 == 3)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v7 = 0x534F63616DLL;
    if (v5 != 1)
    {
      v7 = 0x534F6863746177;
      v6 = 0xE700000000000000;
    }

    if (*a1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 5459817;
    }

    if (v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE300000000000000;
    }
  }

  v12 = 0xE300000000000000;
  v13 = 0xE400000000000000;
  v14 = *a2;
  v15 = 1397716596;
  v16 = 0xE800000000000000;
  v17 = 0x534F6E6F69736976;
  if (v14 != 4)
  {
    v17 = 0x4B7974696C616572;
    v16 = 0xEA00000000007469;
  }

  if (v14 != 3)
  {
    v15 = v17;
    v13 = v16;
  }

  v18 = 0xE500000000000000;
  v19 = 0x534F63616DLL;
  if (v14 != 1)
  {
    v19 = 0x534F6863746177;
    v18 = 0xE700000000000000;
  }

  if (*a2)
  {
    v4 = v19;
    v12 = v18;
  }

  if (*a2 <= 2u)
  {
    v20 = v4;
  }

  else
  {
    v20 = v15;
  }

  if (*a2 <= 2u)
  {
    v21 = v12;
  }

  else
  {
    v21 = v13;
  }

  if (v8 == v20 && v9 == v21)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 88);
  v39[4] = *(a1 + 72);
  v39[5] = v23;
  v40[0] = *(a1 + 104);
  *(v40 + 15) = *(a1 + 119);
  v24 = *(a1 + 24);
  v39[0] = *(a1 + 8);
  v39[1] = v24;
  v25 = *(a1 + 56);
  v39[2] = *(a1 + 40);
  v39[3] = v25;
  v26 = *(a2 + 8);
  v27 = *(a2 + 24);
  v28 = *(a2 + 56);
  v37[2] = *(a2 + 40);
  v37[3] = v28;
  v37[0] = v26;
  v37[1] = v27;
  v29 = *(a2 + 72);
  v30 = *(a2 + 88);
  v31 = *(a2 + 104);
  *&v38[15] = *(a2 + 119);
  v37[5] = v30;
  *v38 = v31;
  v37[4] = v29;
  if (specialized static NodeDef.Availability.AvailabilityKind.== infix(_:_:)(v39, v37))
  {
    v32 = *(a1 + 17);
    v33 = *(a2 + 17);
    if (v32)
    {
      if (!v33 || (*(a1 + 16) != *(a2 + 16) || v32 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v33)
    {
      return 0;
    }

    v34 = *(a1 + 19);
    v35 = *(a2 + 19);
    if (v34)
    {
      if (v35 && (*(a1 + 18) == *(a2 + 18) && v34 == v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v35)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1 < *a2;
  if (*a1 != *a2)
  {
    goto LABEL_9;
  }

  v3 = *(a2 + 16);
  if (*(a1 + 16))
  {
    return (v3 ^ 1) & 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v2 = v5 < v6;
  if (v5 == v6)
  {
    v3 = *(a2 + 32);
    if (*(a1 + 32))
    {
      return (v3 ^ 1) & 1;
    }

    return (*(a1 + 24) < *(a2 + 24)) & ~v3;
  }

  else
  {
LABEL_9:
    v7 = v2;
    return v7 & 1;
  }
}

unint64_t specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a3;
  v4 = a2 >> 14;
  if (a1 >> 14 >= a2 >> 14)
  {
    v23 = 1;
    v10 = a1 >> 14;
LABEL_9:
    result = Substring.subscript.getter();
    if (v4 >= v10)
    {
      v14 = v11;
      v15 = v12;
      v16 = result;
      v17 = v13;
      result = Substring.subscript.getter();
      *v3 = v16;
      *(v3 + 8) = v14;
      *(v3 + 16) = v15;
      *(v3 + 24) = v17;
      *(v3 + 32) = result;
      *(v3 + 40) = v18;
      *(v3 + 48) = v19;
      *(v3 + 56) = v20;
      *(v3 + 64) = v23 & 1;
      return result;
    }

LABEL_12:
    __break(1u);
  }

  else
  {
    v22 = a1 >> 14;
    v5 = a1 >> 14;
    while (1)
    {
      v6 = Substring.subscript.getter();
      result = specialized Collection.first.getter(v6, v7);
      if ((result & 0x100000000) != 0)
      {
        break;
      }

      result = CharacterSet.contains(_:)();
      v9 = result;
      if ((result & 1) == 0)
      {
        result = Substring.index(after:)();
        v5 = result >> 14;
        if (result >> 14 < v4)
        {
          continue;
        }
      }

      if (v5 >= v22)
      {
        v23 = v9 ^ 1;
        v10 = v5;
        v3 = a3;
        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a5;
  v10 = type metadata accessor for CharacterSet();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v20 = &v66 - v19;
  v21 = a2 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    v75 = MEMORY[0x266771D20](0, 0xE000000000000000);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v29 = a3;
    v30 = 1;
LABEL_3:
    v31 = v78;
LABEL_28:
    *v31 = v75;
    *(v31 + 8) = v23;
    *(v31 + 16) = v25;
    *(v31 + 24) = v27;
    *(v31 + 32) = a1;
    *(v31 + 40) = a2;
    *(v31 + 48) = v29;
    *(v31 + 56) = a4;
    *(v31 + 64) = v30;
    return result;
  }

  v69 = (a1 >> 14);
  v70 = v5;
  v71 = v18;
  v72 = v16;
  v74 = a1;
  v75 = v17;
  v76 = a3;
  v73 = a4;
  v33 = Substring.subscript.getter();
  v34 = v32;
  v35 = a2;
  if (v33 == 34 && v32 == 0xE100000000000000 || ((v45 = _stringCompareWithSmolCheck(_:_:expecting:)(), v33 == 39) ? (v46 = v34 == 0xE100000000000000) : (v46 = 0), (v35 = a2, !v46) ? (v47 = 0) : (v47 = 1), (v45 & 1) != 0 || (v47 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v36 = v73;
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v37)
    {
      result = v35;
    }

    if (v21 < result >> 14)
    {
      __break(1u);
    }

    else
    {
      v38 = Substring.subscript.getter();
      v40 = v39;
      v71 = v35;
      _ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufC10Foundation09CharacterA0V_SS17UnicodeScalarViewVTt1g5(v33, v34);
      specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)(v38, v40, v77);
      v41 = v77[5];
      v68 = v77[6];
      v42 = v77[8];

      (*(v75 + 8))(v20, v72);

      if (v42)
      {

        v77[0] = MEMORY[0x2667714E0](v74, v71, v76, v36);
        v77[1] = v43;
        _s11ShaderGraph14MaterialXErrorOWOi0_(v77);
        lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
        swift_allocError();
        memcpy(v44, v77, 0x140uLL);
        return swift_willThrow();
      }

      result = Substring.index(after:)();
      if (v69 <= result >> 14)
      {
        v75 = Substring.subscript.getter();
        v76 = v48;
        v71 = v49;
        v74 = v50;
        result = Substring.index(_:offsetBy:limitedBy:)();
        if (v51)
        {
          result = v41;
        }

        if (v41 >> 14 >= result >> 14)
        {
          a1 = Substring.subscript.getter();
          a2 = v52;
          v29 = v53;
          a4 = v54;

          v30 = 0;
          v25 = v71;
          v31 = v78;
          v23 = v76;
          v27 = v74;
          goto LABEL_28;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v33 == 59 && v34 == 0xE100000000000000)
  {
  }

  else
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v55 & 1) == 0)
    {
      static CharacterSet.whitespacesAndNewlines.getter();
      v77[0] = &outlined read-only object #0 of static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays7UnicodeO6ScalarVGMd, &_sSays7UnicodeO6ScalarVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Unicode.Scalar] and conformance [A], &_sSays7UnicodeO6ScalarVGMd, &_sSays7UnicodeO6ScalarVGMR);
      v63 = v71;
      v64 = v72;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v67 = v20;
      CharacterSet.union(_:)();
      v65 = *(v75 + 8);
      v69 = v65;
      v65(v63, v64);
      v65(v15, v64);
      specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)(v74, a2, v77);
      v23 = v77[1];
      v75 = v77[0];
      v27 = v77[3];
      v71 = v77[2];
      a1 = v77[4];
      a2 = v77[5];
      v29 = v77[6];
      a4 = v77[7];
      v30 = v77[8];
      result = v69(v67, v72);
      v25 = v71;
      goto LABEL_3;
    }
  }

  v75 = MEMORY[0x266771D20](59, 0xE100000000000000);
  v23 = v56;
  v71 = v57;
  v27 = v58;
  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v59)
  {
    result = a2;
  }

  if (v21 >= result >> 14)
  {
    result = Substring.subscript.getter();
    a1 = result;
    a2 = v60;
    v29 = v61;
    a4 = v62;
    v30 = 0;
    v25 = v71;
    v31 = v78;
    goto LABEL_28;
  }

LABEL_38:
  __break(1u);
  return result;
}

char *specialized static NodeDef.Availability.MaterialXAttributeParser.tokenize(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = type metadata accessor for CharacterSet();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v37 - v10;

  v11 = MEMORY[0x266771D20](a1, a2);
  v13 = v12;
  v53 = v14;
  v38 = (v6 + 8);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    v44 = v15;
    v45 = v3;
    v16 = v39;
    static CharacterSet.whitespacesAndNewlines.getter();
    v17 = v40;
    CharacterSet.inverted.getter();
    v18 = *v38;
    v19 = v41;
    (*v38)(v16, v41);
    specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)(v11, v13, v46);
    v20 = v48;
    v43 = v47;
    v21 = v49;
    v22 = v50;
    v23 = v51;
    v42 = v52;

    v18(v17, v19);

    if (v42)
    {
      v53 = v23;
      v15 = v44;
LABEL_11:

      return v15;
    }

    v24 = v45;
    specialized static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:)(v20, v21, v22, v23, v46);
    v3 = v24;
    v15 = v44;
    if (v24)
    {
      break;
    }

    v25 = v46[0];
    v26 = v46[1];
    v27 = v46[2];
    v28 = v47;
    v45 = v48;
    v43 = v49;
    v53 = v51;
    v29 = v52;

    v30 = MEMORY[0x2667714E0](v25, v26, v27, v28);
    v32 = v31;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v34 = *(v15 + 2);
    v33 = *(v15 + 3);
    if (v34 >= v33 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v15);
    }

    *(v15 + 2) = v34 + 1;
    v35 = &v15[16 * v34];
    *(v35 + 4) = v30;
    *(v35 + 5) = v32;
    v11 = v45;
    v13 = v43;
    if (v29)
    {
      goto LABEL_11;
    }
  }

  return v15;
}

unint64_t specialized NodeDef.Availability.Platform.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeDef.Availability.Platform.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
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

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t specialized NodeDef.Availability.PlatformVersion.init(versionString:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v14;
  if (one-time initialization token for platformVersionRegex != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);
  __swift_project_value_buffer(v15, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  Regex.firstMatch(in:)();
  if (v3)
  {
  }

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Regex<(Substring, Substring, Substring?, Substring?, Substring?, Substring?, Substring?)>.Match?(v10);
    v57[0] = a1;
    v57[1] = a2;
    _s11ShaderGraph14MaterialXErrorOWOi_(v57);
    lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
    swift_allocError();
    memcpy(v17, v57, 0x140uLL);
    return swift_willThrow();
  }

  v50 = a3;
  v52 = v12;
  (*(v12 + 32))(v58, v10, v11);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v19 = v53;
  v18 = v54;
  v20 = v56;
  if (!((v54 ^ v53) >> 14))
  {

    goto LABEL_12;
  }

  v51 = v11;
  v21 = v55;
  v22 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v53, v54, v55, v56, 10);
  if ((v23 & 0x100) == 0)
  {
    v24 = v23;
    v49 = v22;

    v11 = v51;
    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v57[0] = a1;
    v57[1] = a2;
    _s11ShaderGraph14MaterialXErrorOWOi_(v57);
    lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
    swift_allocError();
    memcpy(v27, v57, 0x140uLL);
    swift_willThrow();
    return (*(v52 + 8))(v58, v11);
  }

  v49 = specialized _parseInteger<A, B>(ascii:radix:)(v19, v18, v21, v20, 10);
  v26 = v25;

  v11 = v51;
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_13:
  v28 = v58;

  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v29 = v57[3];
  if (v57[3])
  {
    v30 = v57[0];
    v31 = v57[1];
    if ((v57[1] ^ v57[0]) >> 14)
    {
      v32 = v57[2];
      v33 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v57[0], v57[1], v57[2], v57[3], 10);
      LODWORD(v51) = v34;
      if ((v34 & 0x100) != 0)
      {

        v35 = specialized _parseInteger<A, B>(ascii:radix:)(v30, v31, v32, v29, 10);
        LODWORD(v30) = v37;
        swift_bridgeObjectRelease_n();
        v28 = v58;
      }

      else
      {
        v35 = v33;

        v28 = v58;
        LODWORD(v30) = v51;
      }

      if (v30)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35;
      }
    }

    else
    {

      v36 = 0;
      LODWORD(v30) = 1;
      v28 = v58;
    }
  }

  else
  {
    v36 = 0;
    LODWORD(v30) = 1;
  }

  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v38 = v57[3];
  if (v57[3])
  {
    v48 = v36;
    LODWORD(v51) = v30;
    v39 = v57[0];
    v30 = v57[1];
    if ((v57[1] ^ v57[0]) >> 14)
    {
      v40 = v57[2];
      v41 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v57[0], v57[1], v57[2], v57[3], 10);
      if ((v42 & 0x100) != 0)
      {

        v45 = specialized _parseInteger<A, B>(ascii:radix:)(v39, v30, v40, v38, 10);
        v43 = v47;

        v44 = v50;
        LOBYTE(v30) = v51;
        v36 = v48;
      }

      else
      {
        v43 = v42;
        v44 = v50;
        LOBYTE(v30) = v51;
        v36 = v48;
        v45 = v41;
      }

      (*(v52 + 8))(v58, v11);

      if (v43)
      {
        v46 = 0;
      }

      else
      {
        v46 = v45;
      }
    }

    else
    {
      (*(v52 + 8))(v58, v11);

      v46 = 0;
      v43 = 1;
      v44 = v50;
      LOBYTE(v30) = v51;
      v36 = v48;
    }
  }

  else
  {
    result = (*(v52 + 8))(v28, v11);
    v46 = 0;
    v43 = 1;
    v44 = v50;
  }

  *v44 = v49;
  *(v44 + 8) = v36;
  *(v44 + 16) = v30 & 1;
  *(v44 + 24) = v46;
  *(v44 + 32) = v43 & 1;
  return result;
}

uint64_t specialized static NodeDef.Availability.MaterialXAttributeParser.createAvailabilities(platformAttributeTokens:)(uint64_t a1, uint64_t a2, int64_t a3, void *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v93 - v11);
  v142 = a1;
  v143 = a2;
  v144 = a3;
  v145 = a4;
  v13 = specialized Collection<>.popFirst()();
  if (!v14)
  {
    _s11ShaderGraph14MaterialXErrorOWOi3_(v141);
    lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
    v24 = swift_allocError();
    memcpy(v25, v141, 0x140uLL);
    swift_willThrow();
    swift_unknownObjectRetain();
    goto LABEL_99;
  }

  v15 = v13;
  v16 = v14;
  if (v13 == 42 && v14 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_unknownObjectRetain();
    v17 = &outlined read-only object #0 of one-time initialization function for all;
  }

  else
  {
    swift_unknownObjectRetain();

    v163._countAndFlagsBits = v15;
    v163._object = v16;
    v31 = specialized NodeDef.Availability.Platform.init(rawValue:)(v163);
    if (v31 == 6)
    {
      v141[0] = v15;
      v141[1] = v16;
      _s11ShaderGraph14MaterialXErrorOWOi1_(v141);
      lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
      v24 = swift_allocError();
      memcpy(v32, v141, 0x140uLL);
      swift_willThrow();
      goto LABEL_99;
    }

    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_265F1F670;
    *(v34 + 32) = v33;
    v17 = v34;
  }

  v18 = v144;
  v132 = v145;
  v19 = v145 >> 1;
  v115 = v17;
  if (v144 == v145 >> 1)
  {
    swift_beginAccess();
    v113 = 0;
    v114 = 0;
    v20 = 0;
    v21 = 0;
    v112 = 0;
    v101 = 0;
    v102 = 0;
    v99 = 0;
    v100 = 0;
    v98 = 0;
    v105 = 0;
    v106 = 0;
    v103 = 0;
    v104 = 0;
    v110 = 0;
    v111 = 0;
    v108 = 0;
    v109 = 0;
    v22 = 0;
    v23 = 1;
    v96 = 0;
    v97 = 1;
    v134 = 1;
LABEL_87:

LABEL_88:
    v73 = v17[2];
    if (v73)
    {
      v140 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
      v95 = v22;
      v162 = v73 - 1;
      v24 = v140;
      v74 = 32;
      v93 = v23 & 1;
      v94 = v134 & 1;
      v75 = v21;
      v116 = v20;
      v76 = v20;
      if (v112)
      {
        goto LABEL_91;
      }

LABEL_90:
      LODWORD(v134) = 0;
      LOBYTE(v135) = v94;
      v139 = v93;
      v119 = v94 << 8;
      v120 = v93 << 8;
      v132 = v110;
      v133 = v111;
      v131 = v109;
      v129 = v108;
      v127 = v105;
      *&v128 = v106;
      LODWORD(v130) = v97 & 1;
      v138 = v97 & 1;
      v125 = v103;
      v126 = v104;
      LOBYTE(v137[0]) = 0;
      v123 = v101;
      v124 = v102;
      v121 = v99;
      v122 = v100;
      v118 = v98;
      v77 = v95;
      v117 = v96;
      while (1)
      {
        v78 = v74;
        v79 = *(v17 + v74);
        v140 = v24;
        v81 = *(v24 + 16);
        v80 = *(v24 + 24);

        if (v81 >= v80 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1);
          v24 = v140;
        }

        *(v24 + 16) = v81 + 1;
        v82 = v24 + 160 * v81;
        *(v82 + 32) = v79;
        v83 = v119 | v77;
        v84 = v120 | v117;
        v85 = *(v137 + 3);
        v86 = v118 | (v130 << 8);
        *(v82 + 33) = v137[0];
        *(v82 + 36) = v85;
        v87 = v132;
        *(v82 + 40) = v133;
        *(v82 + 48) = v87;
        v88 = v129;
        *(v82 + 56) = v131;
        *(v82 + 64) = v88;
        *(v82 + 72) = v83;
        *(v82 + 80) = v128;
        *(v82 + 88) = v127;
        *(v82 + 96) = v126;
        *(v82 + 104) = v125;
        *(v82 + 112) = v84;
        v89 = v123;
        *(v82 + 120) = v124;
        *(v82 + 128) = v89;
        v90 = v121;
        *(v82 + 136) = v122;
        *(v82 + 144) = v90;
        *(v82 + 152) = v86;
        *(v82 + 154) = v134;
        LODWORD(v90) = v135;
        *(v82 + 159) = v136;
        *(v82 + 155) = v90;
        v91 = v113;
        *(v82 + 160) = v114;
        *(v82 + 168) = v75;
        *(v82 + 176) = v91;
        *(v82 + 184) = v76;
        if (!v162)
        {
          break;
        }

        --v162;
        v74 = v78 + 1;
        v17 = v115;
        if ((v112 & 1) == 0)
        {
          goto LABEL_90;
        }

LABEL_91:
        v132 = 0;
        v133 = 0;
        v131 = 0;
        v129 = 0;
        v127 = 0;
        *&v128 = 0;
        v125 = 0;
        v126 = 0;
        v123 = 0;
        v124 = 0;
        v121 = 0;
        v122 = 0;
        v118 = 0;
        LODWORD(v130) = 0;
        v117 = 0;
        v119 = 0;
        v120 = 0;
        v77 = 0;
        LODWORD(v134) = 1;
      }
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

LABEL_99:
    swift_unknownObjectRelease();
    return v24;
  }

  if (v144 >= (v145 >> 1))
  {
    goto LABEL_105;
  }

  if (__OFSUB__(v19, v144))
  {
    goto LABEL_106;
  }

  v133 = v143;
  v134 = v145 >> 1;
  v129 = v16;
  if (v19 - v144 != 1)
  {
    goto LABEL_21;
  }

  v16 = v17;
  v26 = (v143 + 16 * v144);
  v4 = *v26;
  v17 = v26[1];
  v27 = one-time initialization token for platformVersionRegex;

  if (v27 != -1)
  {
    goto LABEL_107;
  }

LABEL_13:
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);
  __swift_project_value_buffer(v28, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  v29 = v107;
  Regex.wholeMatch(in:)();
  if (v29)
  {

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMR);
    (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    v107 = 0;
  }

  else
  {
    v107 = 0;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GMR);
    if ((*(*(v35 - 8) + 48))(v12, 1, v35) != 1)
    {

      outlined destroy of Regex<(Substring, Substring, Substring?, Substring?, Substring?, Substring?, Substring?)>.Match?(v12);
      v72 = v107;
      specialized NodeDef.Availability.PlatformVersion.init(versionString:)(v4, v17, v146);
      v107 = v72;
      if (v72)
      {
        goto LABEL_110;
      }

      v112 = 0;
      v113 = 0;
      v114 = 0;
      v20 = 0;
      v21 = 0;
      v101 = 0;
      v102 = 0;
      v99 = 0;
      v100 = 0;
      v98 = 0;
      v105 = 0;
      v106 = 0;
      v103 = 0;
      v104 = 0;
      v134 = 0;
      v110 = v146[1];
      v111 = v146[0];
      v108 = v148;
      v109 = v147;
      v22 = v149;
      v96 = 0;
      v97 = 1;
      v23 = 1;
      v17 = v16;
      goto LABEL_88;
    }
  }

  outlined destroy of Regex<(Substring, Substring, Substring?, Substring?, Substring?, Substring?, Substring?)>.Match?(v12);
LABEL_21:
  v17 = v132;
  v36 = 1;
  swift_beginAccess();
  v12 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v130 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v112 = 0;
  v4 = 0;
  v113 = 0;
  v114 = 0;
  v116 = 0;
  *&v37 = 136315138;
  v128 = v37;
  LODWORD(v131) = 1;
  v97 = 1;
  v39 = v133;
  v38 = v134;
  while (1)
  {
    if (v18 >= v38)
    {
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
      swift_once();
      goto LABEL_13;
    }

    v162 = v4;
    v40 = (v39 + 16 * v18);
    v41 = *v40;
    v4 = v40[1];
    v24 = v142;
    v16 = v18 + 1;
    v143 = v39;
    v144 = v18 + 1;
    v145 = v17;
    if (v41 != 0x6375646F72746E69 || v4 != 0xEA00000000006465)
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v39 = v133;
      v38 = v134;
      if ((v43 & 1) == 0)
      {
        break;
      }
    }

    if (v16 == v38)
    {
      LOBYTE(v12) = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v36 = 1;
      goto LABEL_85;
    }

    if (v16 >= v38)
    {
      goto LABEL_103;
    }

    v44 = (v39 + 16 * v16);
    v46 = *v44;
    v45 = v44[1];
    v16 = v18 + 2;
    v142 = v24;
    v143 = v39;
    v144 = v18 + 2;
    v145 = v17;
    swift_bridgeObjectRetain_n();
    v47 = v107;
    specialized NodeDef.Availability.PlatformVersion.init(versionString:)(v46, v45, v150);
    if (v47)
    {
      goto LABEL_80;
    }

    v110 = v150[1];
    v111 = v150[0];
    v109 = v151;
    v107 = 0;
    v108 = v152;
    v12 = v153;

    v36 = 0;
LABEL_32:
    v4 = v162;
LABEL_33:
    v39 = v133;
    v38 = v134;
LABEL_34:
    v18 = v16;
    if (v16 == v38)
    {
      goto LABEL_86;
    }
  }

  v48 = v41 == 0x7461636572706564 && v4 == 0xEA00000000006465;
  if (v48 || (v49 = _stringCompareWithSmolCheck(_:_:expecting:)(), v39 = v133, v38 = v134, (v49 & 1) != 0))
  {
    if (v16 != v38)
    {
      if (v16 >= v38)
      {
        goto LABEL_104;
      }

      v50 = (v39 + 16 * v16);
      v52 = *v50;
      v51 = v50[1];
      v16 = v18 + 2;
      v142 = v24;
      v143 = v39;
      v144 = v18 + 2;
      v145 = v17;
      swift_bridgeObjectRetain_n();
      v53 = v107;
      specialized NodeDef.Availability.PlatformVersion.init(versionString:)(v52, v51, v154);
      if (v53)
      {
LABEL_80:
        swift_unknownObjectRelease();

        return v24;
      }

      v106 = v154[0];
      v107 = 0;
      v104 = v155;
      v105 = v154[1];
      v103 = v156;
      v130 = v157;

      LODWORD(v131) = 0;
      v4 = v162;
      v17 = v132;
      goto LABEL_33;
    }

    v130 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    LODWORD(v131) = 1;
LABEL_85:
    v4 = v162;
LABEL_86:
    v134 = v36;
    v22 = v12;
    v21 = v4;
    v96 = v130;
    v17 = v115;
    v20 = v116;
    v23 = v131;
    goto LABEL_87;
  }

  if (v41 != 0x6574656C6F73626FLL || v4 != 0xE900000000000064)
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v39 = v133;
    v38 = v134;
    if ((v54 & 1) == 0)
    {
      if (v41 == 0x64656D616E6572 && v4 == 0xE700000000000000 || (v59 = _stringCompareWithSmolCheck(_:_:expecting:)(), v39 = v133, v38 = v134, (v59 & 1) != 0))
      {
        if (v16 == v38)
        {
          v114 = 0;
          v4 = 0;
          v16 = v38;
        }

        else
        {
          if (v16 >= v38)
          {
            goto LABEL_108;
          }

          v60 = (v39 + 16 * v16);
          v4 = v60[1];
          v114 = *v60;
          v16 = v18 + 2;
          v142 = v24;
          v143 = v39;
          v144 = v18 + 2;
          v145 = v17;
        }

        goto LABEL_33;
      }

      if (v41 == 0x6567617373656DLL && v4 == 0xE700000000000000 || (v61 = _stringCompareWithSmolCheck(_:_:expecting:)(), v39 = v133, v38 = v134, (v61 & 1) != 0))
      {
        if (v16 == v38)
        {
          v113 = 0;
          v62 = 0;
          v16 = v38;
        }

        else
        {
          if (v16 >= v38)
          {
            goto LABEL_109;
          }

          v63 = (v39 + 16 * v16);
          v62 = v63[1];
          v113 = *v63;
          v16 = v18 + 2;
          v142 = v24;
          v143 = v39;
          v144 = v18 + 2;
          v145 = v17;
        }

        v116 = v62;
      }

      else
      {
        if (v41 == 0x616C696176616E75 && v4 == 0xEB00000000656C62)
        {
          v112 = 1;
          v4 = v162;
          goto LABEL_34;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v112 = 1;
        }

        else
        {
          v64 = one-time initialization token for logger;

          if (v64 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, logger);

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            LODWORD(v126) = v67;
            v69 = v68;
            v127 = swift_slowAlloc();
            v140 = v127;
            *v69 = v128;
            v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v4, &v140);

            *(v69 + 4) = v70;
            _os_log_impl(&dword_265D7D000, v66, v126, "Could not parse platform availability attribute '%s'.", v69, 0xCu);
            v71 = v127;
            __swift_destroy_boxed_opaque_existential_1Tm(v127);
            MEMORY[0x266773120](v71, -1, -1);
            MEMORY[0x266773120](v69, -1, -1);
          }

          else
          {
          }
        }
      }

      goto LABEL_32;
    }
  }

  if (v16 == v38)
  {
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v97 = 1;
    goto LABEL_85;
  }

  v127 = v12;
  if (v16 < v38)
  {
    v55 = (v39 + 16 * v16);
    v57 = *v55;
    v56 = v55[1];
    v16 = v18 + 2;
    v142 = v24;
    v143 = v39;
    v144 = v18 + 2;
    v145 = v17;
    swift_bridgeObjectRetain_n();
    v58 = v107;
    specialized NodeDef.Availability.PlatformVersion.init(versionString:)(v57, v56, v158);
    if (v58)
    {
      goto LABEL_80;
    }

    v107 = 0;
    v101 = v158[1];
    v102 = v158[0];
    v100 = v159;
    v99 = v160;
    v98 = v161;

    v97 = 0;
    v4 = v162;
    v12 = v127;
    goto LABEL_33;
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized static NodeDef.Availability.MaterialXAttributeParser.tokenize(_:)(a1, a2);
  if (v2)
  {
    return v3;
  }

  v21[0] = 59;
  v21[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v4);
  v20[2] = v21;
  v6 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), v20, v5, v21);
  v7 = *(v6 + 16);
  if (!v7)
  {

    v10 = MEMORY[0x277D84F90];
LABEL_11:
    v3 = _s11ShaderGraph7NodeDefV12AvailabilityV24MaterialXAttributeParserV9reconcileySayAEGxKSTRzAE7ElementRtzlFZs15FlattenSequenceVySayAIGG_Tt0g5(v10);

    return v3;
  }

  v21[0] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v9 = 0;
  v10 = v21[0];
  v11 = (v6 + 56);
  while (v9 < *(v6 + 16))
  {
    v13 = *(v11 - 3);
    v12 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    v16 = swift_unknownObjectRetain();
    v17 = specialized static NodeDef.Availability.MaterialXAttributeParser.createAvailabilities(platformAttributeTokens:)(v16, v12, v14, v15);
    result = swift_unknownObjectRelease();
    v21[0] = v10;
    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v10 = v21[0];
    }

    ++v9;
    *(v10 + 16) = v19 + 1;
    *(v10 + 8 * v19 + 32) = v17;
    v11 += 4;
    if (v7 == v9)
    {

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static NodeDef.available(for:in:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = (a3 + 32); ; i += 10)
  {
    v5 = i[7];
    *&v50[16] = i[6];
    v51 = v5;
    v6 = i[9];
    v52 = i[8];
    v53 = v6;
    v7 = i[3];
    v47 = i[2];
    v48 = v7;
    v8 = i[5];
    v49 = i[4];
    *v50 = v8;
    v9 = i[1];
    v45 = *i;
    v46 = v9;
    if (v45 > 2u)
    {
      if (v45 == 3)
      {
        v13 = 0xE400000000000000;
        v12 = 1397716596;
      }

      else
      {
        if (v45 == 4)
        {
          v12 = 0x534F6E6F69736976;
        }

        else
        {
          v12 = 0x4B7974696C616572;
        }

        if (v45 == 4)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0xEA00000000007469;
        }
      }
    }

    else
    {
      if (v45 == 1)
      {
        v10 = 0x534F63616DLL;
      }

      else
      {
        v10 = 0x534F6863746177;
      }

      if (v45 == 1)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v45)
      {
        v12 = v10;
      }

      else
      {
        v12 = 5459817;
      }

      if (v45)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE300000000000000;
      }
    }

    v14 = 0x534F6E6F69736976;
    if (a1 != 4)
    {
      v14 = 0x4B7974696C616572;
    }

    v15 = 0xEA00000000007469;
    if (a1 == 4)
    {
      v15 = 0xE800000000000000;
    }

    if (a1 == 3)
    {
      v14 = 1397716596;
      v15 = 0xE400000000000000;
    }

    if (a1 == 1)
    {
      v16 = 0x534F63616DLL;
    }

    else
    {
      v16 = 0x534F6863746177;
    }

    if (a1 == 1)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    if (!a1)
    {
      v16 = 5459817;
      v17 = 0xE300000000000000;
    }

    v18 = a1 <= 2u ? v16 : v14;
    v19 = a1 <= 2u ? v17 : v15;
    v35 = v53;
    v36 = v52;
    v37 = *(&v53 + 1);
    v38 = *(&v52 + 1);
    if (v12 == v18 && v13 == v19)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined init with copy of NodeDef.Availability(&v45, &v41);

    if (v20)
    {
      goto LABEL_50;
    }

    outlined destroy of NodeDef.Availability(&v45);
    if (!--v3)
    {
      return 0;
    }
  }

  outlined init with copy of NodeDef.Availability(&v45, &v41);

LABEL_50:
  if (BYTE10(v51))
  {
    goto LABEL_51;
  }

  v22 = *(&v45 + 1);
  v24 = v46;
  v23 = v47;
  v25 = BYTE8(v47);
  v26 = BYTE9(v47);
  v27 = v48;
  v28 = v49;
  v29 = v50[0];
  v30 = v50[1];
  if ((BYTE9(v51) & 1) == 0)
  {
    v33 = v48;
    v41 = *&v50[8];
    v42 = v50[24] & 1;
    v43 = v51;
    v44 = BYTE8(v51) & 1;
    v31 = specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(&v41, a2);
    v27 = v33;
    if (v31)
    {
LABEL_51:
      outlined destroy of NodeDef.Availability(&v45);
      return 0;
    }
  }

  if ((v30 & 1) != 0 || (v54 = v27, v55 = v28 & 1, v56 = *(&v28 + 1), v57 = v29 & 1, (specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(&v54, a2) & 1) == 0))
  {
    outlined destroy of NodeDef.Availability(&v45);
    if ((v26 & 1) == 0)
    {
      v58 = v22;
      v59 = v24;
      v60 = BYTE8(v24) & 1;
      v61 = v23;
      v62 = v25 & 1;
      specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(a2, &v58);
      return 0;
    }

    return 0;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  MEMORY[0x266771550](0xD000000000000011, 0x8000000265F32810);
  LOBYTE(v40[0]) = a1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](32, 0xE100000000000000);
  v32 = NodeDef.Availability.PlatformVersion.description.getter();
  MEMORY[0x266771550](v32);

  if (v37)
  {

    MEMORY[0x266771550](v35, v37);

    MEMORY[0x266771550](8250, 0xE200000000000000);
  }

  if (v38)
  {
    strcpy(v40, ": Renamed to ");
    HIWORD(v40[1]) = -4864;

    MEMORY[0x266771550](v36, v38);

    MEMORY[0x266771550](v40[0], v40[1]);
    outlined destroy of NodeDef.Availability(&v45);
  }

  else
  {
    outlined destroy of NodeDef.Availability(&v45);
  }

  return v58;
}

unint64_t lazy protocol witness table accessor for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion()
{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.PlatformVersion and conformance NodeDef.Availability.PlatformVersion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef.Availability.Platform and conformance NodeDef.Availability.Platform()
{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.Platform and conformance NodeDef.Availability.Platform;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.Platform and conformance NodeDef.Availability.Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.Platform and conformance NodeDef.Availability.Platform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef.Availability.AvailabilityKind and conformance NodeDef.Availability.AvailabilityKind()
{
  result = lazy protocol witness table cache variable for type NodeDef.Availability.AvailabilityKind and conformance NodeDef.Availability.AvailabilityKind;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability.AvailabilityKind and conformance NodeDef.Availability.AvailabilityKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability.AvailabilityKind and conformance NodeDef.Availability.AvailabilityKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef.Availability and conformance NodeDef.Availability()
{
  result = lazy protocol witness table cache variable for type NodeDef.Availability and conformance NodeDef.Availability;
  if (!lazy protocol witness table cache variable for type NodeDef.Availability and conformance NodeDef.Availability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.Availability and conformance NodeDef.Availability);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDef.Availability(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NodeDef.Availability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDef.Availability.PlatformVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NodeDef.Availability.PlatformVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NodeDef.Availability.AvailabilityKind(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDef.Availability.AvailabilityKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 115))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NodeDef.Availability.AvailabilityKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 111) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 1;
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

  *(result + 115) = v3;
  return result;
}

uint64_t getEnumTag for NodeDef.Availability.AvailabilityKind(uint64_t a1)
{
  if (*(a1 + 114))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for NodeDef.Availability.AvailabilityKind(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = (a2 - 1);
    *(result + 114) = 1;
  }

  else
  {
    *(result + 114) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet()
{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    type metadata accessor for CharacterSet();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

void *_s11ShaderGraph14MaterialXErrorOWOi0_(void *result)
{
  v1 = result[20] & 7;
  v2 = result[35] & 0x1FFFFLL | 0x2000000000000000;
  result[15] &= 0x1FFFFuLL;
  result[20] = v1;
  result[35] = v2;
  return result;
}

uint64_t outlined init with copy of (NodeDef.Availability.Platform, NodeDef.Availability)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtMd, &_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *_s11ShaderGraph14MaterialXErrorOWOi2_(void *result)
{
  v1 = result[20] & 7;
  v2 = result[35] & 0x1FFFFLL | 0x6000000000000000;
  result[15] &= 0x1FFFFuLL;
  result[20] = v1;
  result[35] = v2;
  return result;
}

double _s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 1;
  return result;
}

uint64_t outlined destroy of Regex<(Substring, Substring, Substring?, Substring?, Substring?, Substring?, Substring?)>.Match?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgA4Ft_GSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_s11ShaderGraph14MaterialXErrorOWOi_(void *result)
{
  v1 = result[20] & 7;
  v2 = result[35] & 0x1FFFFLL;
  result[15] &= 0x1FFFFuLL;
  result[20] = v1;
  result[35] = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

double _s11ShaderGraph14MaterialXErrorOWOi3_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x8000000000000000;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  return result;
}

void *_s11ShaderGraph14MaterialXErrorOWOi1_(void *result)
{
  v1 = result[20] & 7;
  v2 = result[35] & 0x1FFFFLL | 0x4000000000000000;
  result[15] &= 0x1FFFFuLL;
  result[20] = v1;
  result[35] = v2;
  return result;
}

uint64_t OrderedSet.UnorderedView._base.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedSet.UnorderedView._base.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  v6 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t key path setter for OrderedSet.unordered : <A>OrderedSet<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  v10 = a2[1];

  v11 = OrderedSet.init()(v5);
  v13 = v12;

  *a2 = v11;
  a2[1] = v13;
  v15[0] = v7;
  v15[1] = v8;
  $defer #1 <A>() in OrderedSet.__unstable.modify(a2, v15);
}

void (*OrderedSet.unordered.modify(void *a1, uint64_t a2))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[2] = v2;
  v7 = v2[1];
  *v5 = *v2;
  v5[1] = v7;
  v8 = *(a2 + 16);
  v6[3] = v8;
  v6[4] = *(a2 + 24);
  *v2 = OrderedSet.init()(v8);
  v2[1] = v9;
  return OrderedSet.__unstable.modify;
}

uint64_t OrderedSet.unordered.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = *(a3 + 24);
  v9 = OrderedSet.init()(*(a3 + 16));
  v11 = v10;

  *v3 = v9;
  v3[1] = v11;
  v13[0] = a1;
  v13[1] = a2;
  $defer #1 <A>() in OrderedSet.__unstable.modify(v3, v13);
}

uint64_t OrderedSet.UnorderedView.debugDescription.getter()
{
  _StringGuts.grow(_:)(16);
  v0 = specialized OrderedSet._debugTypeName()();
  v2 = v1;

  MEMORY[0x266771550](0x726564726F6E552ELL, 0xEE00776569566465);
  v3._countAndFlagsBits = v0;
  v3._object = v2;
  countAndFlagsBits = OrderedSet._debugDescription(typeName:)(v3)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OrderedSet<A>.UnorderedView(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  return OrderedSet.UnorderedView.debugDescription.getter();
}

uint64_t OrderedSet.UnorderedView.customMirror.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v16 - v10;
  v16[2] = a1;
  v16[3] = a2;
  v16[1] = a2;
  v12 = *MEMORY[0x277D84BF0];
  v13 = type metadata accessor for Mirror.DisplayStyle();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  type metadata accessor for OrderedSet.UnorderedView();
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  default argument 3 of Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)(v7);

  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance OrderedSet<A>.UnorderedView(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return OrderedSet.UnorderedView.customMirror.getter(*v1, v1[1]);
}

uint64_t static OrderedSet.UnorderedView.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 && a3 && v12 == a3)
  {
    return 1;
  }

  v16 = ContiguousArray.count.getter();
  if (v16 != ContiguousArray.count.getter())
  {
    return 0;
  }

  v17 = 0;
  v18 = *(a2 + 16);
  v19 = (v10 + 8);
  do
  {
    v15 = v18 == v17;
    if (v18 == v17)
    {
      break;
    }

    ContiguousArray.subscript.getter();
    ++v17;
    v20 = OrderedSet.contains(_:)(v14, a3, a4, a5, v23);
    (*v19)(v14, a5);
  }

  while (v20);
  return v15;
}

uint64_t OrderedSet.UnorderedView.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[3];
  v23 = v10[2];
  v24 = v11;
  v25 = *(v10 + 8);
  v13 = *v10;
  v12 = v10[1];
  v20[1] = v10;
  v21 = v13;
  v22 = v12;
  Hasher.finalize()();
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = (v6 + 8);
    do
    {
      ContiguousArray.subscript.getter();
      ++v16;
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v17)(v9, a4);
      v15 ^= v18;
    }

    while (v14 != v16);
  }

  else
  {
    v15 = 0;
  }

  return MEMORY[0x266772770](v15);
}

Swift::Int OrderedSet.UnorderedView.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  OrderedSet.UnorderedView.hash(into:)(v7, v5, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OrderedSet<A>.UnorderedView(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 24);
  OrderedSet.UnorderedView.hash(into:)(v7, v5, *(v2 + 8), *(a2 + 16));
  return Hasher._finalize()();
}

uint64_t OrderedSet.UnorderedView.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return OrderedSet.init<A>(_:)(&v8, a2, v5, a3, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a1;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Array();
  v7 = *(a2 + 24);
  WitnessTable = swift_getWitnessTable();
  result = OrderedSet.init<A>(_:)(&v11, v5, v6, v7, WitnessTable);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = OrderedSet.init()(*(a1 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = specialized OrderedSet.UnorderedView.union(_:)(*a1, a1[1], *v3, v3[1], *(a2 + 16), *(a2 + 24));
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t OrderedSet.UnorderedView.union(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized OrderedSet.UnorderedView.union(_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = specialized OrderedSet.UnorderedView.intersection(_:)(*a1, a1[1], *v3, v3[1], *(a2 + 16), *(a2 + 24));
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t OrderedSet.UnorderedView.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized OrderedSet.UnorderedView.intersection(_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t OrderedSet.UnorderedView.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = type metadata accessor for OrderedSet();
  v8 = OrderedSet._append(_:)(a2, v7);
  v9 = *(v3 + 8);
  ContiguousArray.subscript.getter();
  (*(*(v6 - 8) + 8))(a2, v6);
  return v8 & 1;
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for OrderedSet();

  return OrderedSet.remove(_:)(a1, v7, a3);
}

uint64_t OrderedSet.UnorderedView.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for OrderedSet();

  return OrderedSet.remove(_:)(a1, v7, a3);
}

uint64_t OrderedSet.UnorderedView.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = type metadata accessor for OrderedSet();
  if (OrderedSet._append(_:)(a1, v8))
  {
    v17 = *(v7 - 8);
    (*(v17 + 8))(a1, v7);
    v10 = 1;
  }

  else
  {
    v11 = v9;
    v12 = *(v3 + 8);
    ContiguousArray.subscript.getter();
    v13 = type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v14 = *(v3 + 8);
    ContiguousArray._checkSubscript_mutating(_:)(v11);
    v17 = *(v7 - 8);
    (*(v17 + 40))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v11, a1, v7);
    destructiveProjectEnumData for NodePersonality.ShaderType(v13);
    v10 = 0;
  }

  v15 = *(v17 + 56);

  return v15(a3, v10, 1, v7);
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance OrderedSet<A>.UnorderedView(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = type metadata accessor for OrderedSet();
  specialized OrderedSet.formUnion(_:)(v2, v3, v6);
}

uint64_t OrderedSet.UnorderedView.formUnion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for OrderedSet();
  specialized OrderedSet.formUnion(_:)(a1, a2, v7);
}

uint64_t OrderedSet.UnorderedView.formIntersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for OrderedSet();

  return a4(a1, a2, v8);
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, void, void, void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *v4, v4[1], *(a2 + 16), *(a2 + 24));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t OrderedSet.UnorderedView.subtracting(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  type metadata accessor for OrderedSet();
  swift_getWitnessTable();
  return OrderedSet._subtracting<A>(_:)(v9, a3, a4, a5);
}

uint64_t protocol witness for SetAlgebra.init<A>(_:) in conformance OrderedSet<A>.UnorderedView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, a2, v10);
  v13 = OrderedSet.init<A>(_:)(v12, *(a3 + 16), a2, *(a3 + 24));
  v15 = v14;
  result = (*(v8 + 8))(a1, a2);
  *a4 = v13;
  a4[1] = v15;
  return result;
}

uint64_t OrderedSet.UnorderedView.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, v10);
  v13 = OrderedSet.init<A>(_:)(v12, a2, a3, a4);
  (*(v8 + 8))(a1, a3);
  return v13;
}

uint64_t OrderedSet.UnorderedView.subtract(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v10[0] = a1;
  v10[1] = a2;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  type metadata accessor for OrderedSet();
  swift_getWitnessTable();
  result = OrderedSet._subtracting<A>(_:)(v10, v4, v5, v6);
  *v3 = result;
  v3[1] = v9;
  return result;
}

uint64_t OrderedSet.UnorderedView.init<A>(_:)()
{
  v0 = specialized OrderedSet.init<A>(_:)();

  return v0;
}

uint64_t OrderedSet.UnorderedView.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = type metadata accessor for OrderedSet();

  return OrderedSet.formIntersection<A>(_:)(a1, v9, a3, a4);
}

uint64_t OrderedSet.UnorderedView.union<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v10 = a8();
  (*(*(a5 - 8) + 8))(a1, a5);
  return v10;
}

uint64_t OrderedSet.UnorderedView.formUnion<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = type metadata accessor for OrderedSet();
  a5(a1, v11, a3, a4);
  v12 = *(*(a3 - 8) + 8);

  return v12(a1, a3);
}

uint64_t OrderedSet.UnorderedView.subtract<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  result = OrderedSet._subtracting<A>(_:)(a1, *v2, v2[1], *(a2 + 16));
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t specialized OrderedSet.UnorderedView.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return OrderedSet.intersection(_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_265E92A34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

__n128 sub_265E92A84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata instantiation function for OrderedSet.UnorderedView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OrderedSet.init()(uint64_t a1)
{
  v2 = static Array._allocateUninitialized(_:)();
  MEMORY[0x266772110](v2, a1);
  return 0;
}

uint64_t OrderedSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = OrderedSet._find(_:)(a1, *v3, v3[1], *(a2 + 16), *(a2 + 24));
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    OrderedSet._removeExistingMember(at:in:)(v7, v8, a2);
    v10 = 0;
  }

  v11 = *(*(v6 - 8) + 56);

  return v11(a3, v10, 1, v6);
}

BOOL OrderedSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMd, &_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMR);
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedSet._find_inlined(_:), v10, a3, a4, v7, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v8);
  return (v11 & 1) == 0;
}

uint64_t partial apply for closure #1 in OrderedSet._find_inlined(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[5];
  return closure #1 in OrderedSet._find_inlined(_:)(a1, a2, v3[4], v3[6], v3[3], a3);
}

uint64_t ShaderGraphNode.materialXNodeDefName.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  return v1;
}

uint64_t ShaderGraphNode.constantStringValue.getter()
{
  v1 = *v0;
  if (*v0 >> 61 || *(v1 + 80) != 6)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  return v3;
}

uint64_t ShaderGraphNode.constant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1 >> 61)
  {
    v11 = 0uLL;
    v7 = -1;
    v12 = 0uLL;
    v10 = 0uLL;
    v9 = 0uLL;
  }

  else
  {
    v4 = *(v3 + 48);
    v19 = *(v3 + 32);
    v5 = *(v3 + 16);
    v6 = *(v3 + 64);
    v20 = v4;
    v21 = v6;
    v18 = v5;
    v7 = *(v3 + 80);
    v22 = v7;
    v15 = v5;
    v16 = v19;
    v13 = v4;
    v14 = v6;
    result = outlined init with copy of SGDataTypeStorage(&v18, v17);
    v10 = v13;
    v9 = v14;
    v11 = v15;
    v12 = v16;
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v10;
  *(a1 + 48) = v9;
  *(a1 + 64) = v7;
  return result;
}

uint64_t RESurfaceShaderFunctionNode.functionName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RESurfaceShaderFunctionNode.paramsInput.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];

  return v1;
}

uint64_t RESurfaceShaderFunctionNode.uniformsInput.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  outlined copy of (name: String, type: MetalDataType)?(v1, v2);
  return v1;
}

void *RESurfaceShaderFunctionNode.__allocating_init(id:named:paramsInput:uniformsInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  if (one-time initialization token for void != -1)
  {
    v22 = v17;
    swift_once();
    v17 = v22;
  }

  v18 = static MetalDataType.void;
  v19 = MEMORY[0x277D84F90];
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a8;
  v17[9] = a9;
  v17[12] = v19;
  v17[13] = a2;
  v17[14] = a3;
  v17[10] = v18;
  v17[11] = a1;
  v20 = v17;

  return v20;
}

void *RESurfaceShaderFunctionNode.init(id:named:paramsInput:uniformsInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (one-time initialization token for void != -1)
  {
    v14 = a1;
    v15 = a2;
    v16 = a8;
    v17 = a7;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    swift_once();
    a4 = v20;
    a5 = v19;
    a6 = v18;
    a2 = v15;
    a7 = v17;
    a1 = v14;
    a8 = v16;
  }

  v11 = static MetalDataType.void;
  v12 = MEMORY[0x277D84F90];
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v9[6] = a6;
  v9[7] = a7;
  v9[8] = a8;
  v9[9] = a9;
  v9[12] = v12;
  v9[13] = a2;
  v9[14] = a3;
  v9[10] = v11;
  v9[11] = a1;

  return v9;
}

uint64_t RESurfaceShaderFunctionNode.id.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t RESurfaceShaderFunctionNode.inputs.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t RESurfaceShaderFunctionNode.inputs.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t RESurfaceShaderFunctionNode.debugLabel.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t RESurfaceShaderFunctionNode.generateMetalSource(in:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v52 = (*(*a1 + 112))(a1);
  v5 = (*(*v52 + 376))(v55);
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
      *v7 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = 0xD000000000000016;
    *(v12 + 5) = 0x8000000265F32830;
    (v5)(v55, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_265F1F670;
    v14 = v4[6];
    v15 = *(v14 + 32);
    *&v55[0] = *(v14 + 24);
    *(&v55[0] + 1) = v15;

    MEMORY[0x266771550](32, 0xE100000000000000);
    MEMORY[0x266771550](v4[4], v4[5]);
    v16 = *(&v55[0] + 1);
    *(v13 + 32) = *&v55[0];
    *(v13 + 40) = v16;
    v17 = v4[8];
    if (v17)
    {
      v54 = v3;
      v18 = v4[9];
      v19 = v4[7];
      v20 = *(v18 + 32);
      *&v55[0] = *(v18 + 24);
      *(&v55[0] + 1) = v20;
      outlined copy of (name: String, type: MetalDataType)?(v19, v17);

      MEMORY[0x266771550](32, 0xE100000000000000);
      MEMORY[0x266771550](v19, v17);
      v21 = v55[0];
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v13);
      }

      *(v13 + 16) = v23 + 1;
      *(v13 + 16 * v23 + 32) = v21;
      v3 = v54;
    }

    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x266771550](0xD000000000000024, 0x8000000265F32850);
    MEMORY[0x266771550](v4[2], v4[3]);
    MEMORY[0x266771550](0x202020200A28, 0xE600000000000000);
    v56 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v24 = BidirectionalCollection<>.joined(separator:)();
    v26 = v25;

    MEMORY[0x266771550](v24, v26);

    MEMORY[0x266771550](0x200A29202020200ALL, 0xEC0000007B202020);
    v27 = v55[0];
    v50 = *(*v52 + 400);
    v28 = v50(v55);
    v30 = v29;
    v7 = *v29;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v7;
    if ((v31 & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      *v30 = v7;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    if (v33 >= v32 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v7);
      *v30 = v7;
    }

    *(v7 + 16) = v33 + 1;
    *(v7 + 16 * v33 + 32) = v27;
    v28(v55, 0);
    v34 = swift_beginAccess();
    v8 = v4[12];
    v35 = *(v8 + 2);
    if (!v35)
    {
      break;
    }

    v57 = MEMORY[0x277D84F90];

    v5 = &v57;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v36 = 0;
    v4 = v57;
    v37 = a1[2];
    v53 = *(*v37 + 272);
    v38 = v3;
    while (v36 < *(v8 + 2))
    {
      v5 = v37;
      v53(v55, *&v8[8 * v36 + 32]);
      if (v38)
      {
      }

      v57 = v4;
      v7 = v4[2];
      v39 = v4[3];
      v3 = (v7 + 1);
      if (v7 >= v39 >> 1)
      {
        v5 = &v57;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v7 + 1, 1);
        v4 = v57;
      }

      ++v36;
      v4[2] = v3;
      outlined init with take of MetalFunctionNode(v55, &v4[5 * v7 + 4]);
      v38 = 0;
      if (v35 == v36)
      {
        v3 = 0;

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *v7 = v8;
  }

LABEL_21:
  v41 = MEMORY[0x28223BE20](v34);
  (*(*a1 + 152))(partial apply for closure #2 in RESurfaceShaderFunctionNode.generateMetalSource(in:), v41);
  if (v3)
  {
  }

  else
  {

    v42 = v50(v55);
    v44 = v43;
    v45 = *v43;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *v44 = v45;
    if ((v46 & 1) == 0)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
      *v44 = v45;
    }

    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    if (v48 >= v47 >> 1)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
      *v44 = v45;
    }

    *(v45 + 2) = v48 + 1;
    v49 = &v45[16 * v48];
    *(v49 + 4) = 125;
    *(v49 + 5) = 0xE100000000000000;
    v42(v55, 0);
  }
}

uint64_t closure #1 in closure #2 in RESurfaceShaderFunctionNode.generateMetalSource(in:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of MetalFunctionNode(a1, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
  swift_dynamicCast();
  v6 = v29;
  v7 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v8 = (*(v7 + 8))(a2, v6, v7);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v15 = (*a3 + 400);
  v16 = *v15;
  v17 = (*v15)(&v31);
  specialized Array.append<A>(contentsOf:)(v14);
  v17(&v31, 0);
  v31 = v12;
  v32 = v13;
  MEMORY[0x266771550](59, 0xE100000000000000);
  v18 = v31;
  v19 = v32;
  v20 = v16(&v31);
  v22 = v21;
  v23 = *v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    *v22 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    *v22 = v23;
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v18;
  *(v27 + 5) = v19;
  return v20(&v31, 0);
}

void *RESurfaceShaderFunctionNode.deinit()
{
  v1 = v0[3];

  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[9];
  outlined consume of (name: String, type: MetalDataType)?(v0[7], v0[8]);
  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  return v0;
}

uint64_t RESurfaceShaderFunctionNode.__deallocating_deinit()
{
  v1 = v0[3];

  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[9];
  outlined consume of (name: String, type: MetalDataType)?(v0[7], v0[8]);
  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MetalFunctionNode.id.getter in conformance RESurfaceShaderFunctionNode()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 88);
}

uint64_t protocol witness for MetalFunctionNode.id.setter in conformance RESurfaceShaderFunctionNode(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 88) = a1;
  return result;
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance RESurfaceShaderFunctionNode())()
{
  v1 = *v0;
  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t protocol witness for MetalFunctionNode.inputs.getter in conformance RESurfaceShaderFunctionNode()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
}

uint64_t protocol witness for MetalFunctionNode.inputs.setter in conformance RESurfaceShaderFunctionNode(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *(v3 + 96) = a1;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance RESurfaceShaderFunctionNode())()
{
  v1 = *v0;
  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t protocol witness for HasDebugLabel.debugLabel.getter in conformance RESurfaceShaderFunctionNode()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 112);

  return v1;
}

uint64_t partial apply for closure #2 in RESurfaceShaderFunctionNode.generateMetalSource(in:)(void *a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4 + 32;
  v7 = *(v4 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = result + 40;
    closure #1 in closure #2 in RESurfaceShaderFunctionNode.generateMetalSource(in:)(result, v5, a1);
    result = v8;
  }

  while (!v2);
  return result;
}

uint64_t outlined consume of (name: String, type: MetalDataType)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t OrderedSet.init(minimumCapacity:persistent:)(Swift::Int a1, Swift::Bool a2, uint64_t a3)
{
  v6 = OrderedSet.init()(a3);
  type metadata accessor for OrderedSet();
  OrderedSet._reserveCapacity(_:persistent:)(a1, a2);
  return v6;
}

Swift::Void __swiftcall OrderedSet._reserveCapacity(_:persistent:)(Swift::Int _, Swift::Bool persistent)
{
  if (_ < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  v5 = v2;
  v8 = *(v2 + 16);
  type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(_);
  v10 = *v3;
  v9 = v3[1];
  v11 = *(v5 + 24);
  v12 = OrderedSet._scale.getter(*v3);
  v13 = specialized static _HashTable.scale(forCapacity:)(_);
  v14 = v13;
  if (!persistent)
  {
    v14 = OrderedSet._reservedScale.getter(v10);
  }

  if (v12 >= v13)
  {
    v16 = ContiguousArray.count.getter();
    v15 = specialized static _HashTable.scale(forCapacity:)(v16);
    if (v14 <= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v14;
    }

    if (v15 <= v17)
    {
      v15 = v17;
    }

    if (v15 < v12)
    {
      goto LABEL_12;
    }

    OrderedSet._ensureUnique()();
    v19 = *v4;
    v18 = v4[1];
    if (OrderedSet._reservedScale.getter(*v4) == v14)
    {
      return;
    }

    if (v19)
    {
      swift_beginAccess();
      *(v19 + 24) = *(v19 + 24) & 0xFFFFFFFFFFFFFFC0 | v14 & 0x3F;
      return;
    }

LABEL_20:
    __break(1u);
    return;
  }

  v15 = v13;
LABEL_12:

  OrderedSet._regenerateHashTable(scale:reservedScale:)(v15, v14);
}

uint64_t *MetalDataType.re.surface_parameters_private.unsafeMutableAddressor()
{
  if (one-time initialization token for surface_parameters_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface_parameters_private;
}

uint64_t *MetalDataType.re.geometry_parameters_private.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry_parameters_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_parameters_private;
}

uint64_t *MetalDataType.re.HoverData.unsafeMutableAddressor()
{
  if (one-time initialization token for HoverData != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.HoverData;
}

uint64_t *MetalDataType.re.EnvironmentRadianceResult.unsafeMutableAddressor()
{
  if (one-time initialization token for EnvironmentRadianceResult != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.EnvironmentRadianceResult;
}

uint64_t one-time initialization function for surface_parameters()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F26B20;
  if (one-time initialization token for uniforms != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0x736D726F66696E75;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  if (one-time initialization token for geometry != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, v2);

  *(v0 + 80) = 0x797274656D6F6567;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = v5;
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 120) = 1;
  if (one-time initialization token for surface_properties != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v2);

  *(v0 + 128) = 0x65636166727573;
  *(v0 + 136) = 0xE700000000000000;
  *(v0 + 144) = v7;
  *(v0 + 152) = v2;
  *(v0 + 160) = 1;
  *(v0 + 168) = 2;
  if (one-time initialization token for textures != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v2);

  *(v0 + 176) = 0x7365727574786574;
  *(v0 + 184) = 0xE800000000000000;
  *(v0 + 192) = v9;
  *(v0 + 200) = v2;
  *(v0 + 208) = 1;
  *(v0 + 216) = 3;
  if (one-time initialization token for material_parameters != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v2);

  *(v0 + 224) = 0xD000000000000012;
  *(v0 + 232) = 0x8000000265F32AD0;
  *(v0 + 240) = v11;
  *(v0 + 248) = v2;
  *(v0 + 256) = 1;
  *(v0 + 264) = 4;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0xD000000000000022, 0x8000000265F32C70, 0xD00000000000001ELL, 0x8000000265F32CA0, v0);
  static MetalDataType.re.surface_parameters = result;
  return result;
}

uint64_t *MetalDataType.re.surface.uniforms.unsafeMutableAddressor()
{
  if (one-time initialization token for uniforms != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface.uniforms;
}

uint64_t *MetalDataType.re.surface.geometry.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface.geometry;
}

uint64_t *MetalDataType.re.surface.surface_properties.unsafeMutableAddressor()
{
  if (one-time initialization token for surface_properties != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface.surface_properties;
}

uint64_t *MetalDataType.re.texture.textures.unsafeMutableAddressor()
{
  if (one-time initialization token for textures != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.texture.textures;
}

uint64_t *MetalDataType.re.material.material_parameters.unsafeMutableAddressor()
{
  if (one-time initialization token for material_parameters != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.material.material_parameters;
}

uint64_t *MetalDataType.re.surface_parameters.unsafeMutableAddressor()
{
  if (one-time initialization token for surface_parameters != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface_parameters;
}

uint64_t one-time initialization function for geometry_parameters()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F21D70;
  if (one-time initialization token for uniforms != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0x736D726F66696E75;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  if (one-time initialization token for geometry != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, v2);

  *(v0 + 80) = 0x797274656D6F6567;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = v5;
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 120) = 1;
  if (one-time initialization token for textures != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v2);

  *(v0 + 128) = 0x7365727574786574;
  *(v0 + 136) = 0xE800000000000000;
  *(v0 + 144) = v7;
  *(v0 + 152) = v2;
  *(v0 + 160) = 1;
  *(v0 + 168) = 2;
  if (one-time initialization token for material_parameters != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v2);

  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = 0x8000000265F32AD0;
  *(v0 + 192) = v9;
  *(v0 + 200) = v2;
  *(v0 + 208) = 1;
  *(v0 + 216) = 3;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0xD000000000000023, 0x8000000265F32A80, 0xD00000000000001FLL, 0x8000000265F32AB0, v0);
  static MetalDataType.re.geometry_parameters = result;
  return result;
}

uint64_t *MetalDataType.re.geometry_modifier.uniforms.unsafeMutableAddressor()
{
  if (one-time initialization token for uniforms != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_modifier.uniforms;
}

uint64_t *MetalDataType.re.geometry_modifier.geometry.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_modifier.geometry;
}

uint64_t *MetalDataType.re.geometry_parameters.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry_parameters != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_parameters;
}

uint64_t one-time initialization function for uniforms()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 1701669236;
  *(v0 + 40) = 0xE400000000000000;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD00000000000001DLL, 0x8000000265F32E80, v0);
  static MetalDataType.re.surface.uniforms = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B50;
  *(inited + 32) = 1701669236;
  *(inited + 40) = 0xE400000000000000;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  strcpy((inited + 56), "model_to_world");
  *(inited + 71) = -18;
  if (one-time initialization token for float4x4 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  strcpy((inited + 80), "world_to_model");
  *(inited + 95) = -18;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0x745F6C616D726F6ELL;
  *(inited + 112) = 0xEF646C726F775F6FLL;
  if (one-time initialization token for float3x3 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9 = MEMORY[0x277D84F90];
  v10 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, MEMORY[0x277D84F90]);

  *(inited + 120) = v10;
  strcpy((inited + 128), "model_to_view");
  *(inited + 142) = -4864;
  swift_allocObject();

  v12 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v11, v9);

  *(inited + 144) = v12;
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x8000000265F32C10;
  swift_allocObject();

  v14 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v13, v9);

  *(inited + 168) = v14;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x8000000265F32C30;
  swift_allocObject();

  v16 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v15, v9);

  *(inited + 192) = v16;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x8000000265F32C50;
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v18 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v17, MEMORY[0x277D84F90]);

  *(inited + 216) = v18;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD000000000000027, 0x8000000265F32BE0, inited);
  static MetalDataType.re.geometry_modifier.uniforms = result;
  return result;
}

uint64_t one-time initialization function for geometry()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B30;
  *(inited + 32) = 0x705F6E6565726373;
  *(inited + 40) = 0xEF6E6F697469736FLL;
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  strcpy((inited + 56), "world_position");
  *(inited + 71) = -18;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  *(inited + 80) = 0x726F6C6F63;
  *(inited + 88) = 0xE500000000000000;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0x6C616D726F6ELL;
  *(inited + 112) = 0xE600000000000000;
  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v4);

  *(inited + 120) = v9;
  *(inited + 128) = 0x746E65676E6174;
  *(inited + 136) = 0xE700000000000000;
  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v4);

  *(inited + 144) = v11;
  *(inited + 152) = 0x6E65676E61746962;
  *(inited + 160) = 0xE900000000000074;
  swift_allocObject();

  v13 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v12, v4);

  *(inited + 168) = v13;
  *(inited + 176) = 3176053;
  *(inited + 184) = 0xE300000000000000;
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v15 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v14, v4);

  *(inited + 192) = v15;
  *(inited + 200) = 3241589;
  *(inited + 208) = 0xE300000000000000;
  swift_allocObject();

  v17 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v16, v4);

  *(inited + 216) = v17;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x8000000265F32B60;
  swift_allocObject();

  v19 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v18, v4);

  *(inited + 240) = v19;
  strcpy((inited + 248), "view_direction");
  *(inited + 263) = -18;
  swift_allocObject();

  v21 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v20, v4);

  *(inited + 264) = v21;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD00000000000001DLL, 0x8000000265F32E60, inited);
  static MetalDataType.re.surface.geometry = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B60;
  *(inited + 32) = 0x695F786574726576;
  *(inited + 40) = 0xE900000000000064;
  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  strcpy((inited + 56), "model_position");
  *(inited + 71) = -18;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  strcpy((inited + 80), "world_position");
  *(inited + 95) = -18;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x8000000265F32B20;
  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v4);

  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000265F32B40;
  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v4);

  *(inited + 144) = v11;
  *(inited + 152) = 0x726F6C6F63;
  *(inited + 160) = 0xE500000000000000;
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v13 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v12, v4);

  *(inited + 168) = v13;
  *(inited + 176) = 0x6C616D726F6ELL;
  *(inited + 184) = 0xE600000000000000;
  swift_allocObject();

  v15 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v14, v4);

  *(inited + 192) = v15;
  *(inited + 200) = 0x6E65676E61746962;
  *(inited + 208) = 0xE900000000000074;
  swift_allocObject();

  v17 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v16, v4);

  *(inited + 216) = v17;
  *(inited + 224) = 3176053;
  *(inited + 232) = 0xE300000000000000;
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v19 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v18, v4);

  *(inited + 240) = v19;
  *(inited + 248) = 3241589;
  *(inited + 256) = 0xE300000000000000;
  swift_allocObject();

  v21 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v20, v4);

  *(inited + 264) = v21;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000265F32B60;
  swift_allocObject();

  v23 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v22, v4);

  *(inited + 288) = v23;
  *(inited + 296) = 0xD000000000000019;
  *(inited + 304) = 0x8000000265F32B80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_265F20CD0;
  *(v24 + 32) = static MetalDataType.float3;
  v25 = one-time initialization token for void;

  if (v25 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v27 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v26, v24);

  *(inited + 312) = v27;
  *(inited + 320) = 0xD000000000000019;
  *(inited + 328) = 0x8000000265F32BA0;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_265F20CD0;
  *(v28 + 32) = static MetalDataType.float3;
  swift_allocObject();

  v30 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v29, v28);

  *(inited + 336) = v30;
  *(inited + 344) = 0x6F6C6F635F746573;
  *(inited + 352) = 0xE900000000000072;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_265F20CD0;
  *(v31 + 32) = static MetalDataType.float4;
  swift_allocObject();

  v33 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v32, v31);

  *(inited + 360) = v33;
  *(inited + 368) = 0x6D726F6E5F746573;
  *(inited + 376) = 0xEA00000000006C61;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_265F20CD0;
  *(v34 + 32) = static MetalDataType.float3;
  swift_allocObject();

  v36 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v35, v34);

  *(inited + 384) = v36;
  strcpy((inited + 392), "set_bitangent");
  *(inited + 406) = -4864;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_265F20CD0;
  *(v37 + 32) = static MetalDataType.float3;
  swift_allocObject();

  v39 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v38, v37);

  *(inited + 408) = v39;
  *(inited + 416) = 0x3076755F746573;
  *(inited + 424) = 0xE700000000000000;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_265F20CD0;
  *(v40 + 32) = static MetalDataType.float2;
  swift_allocObject();

  v42 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v41, v40);

  *(inited + 432) = v42;
  *(inited + 440) = 0x3176755F746573;
  *(inited + 448) = 0xE700000000000000;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_265F20CD0;
  *(v43 + 32) = static MetalDataType.float2;
  swift_allocObject();

  v45 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v44, v43);

  *(inited + 456) = v45;
  *(inited + 464) = 0xD000000000000014;
  *(inited + 472) = 0x8000000265F32BC0;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_265F20CD0;
  *(v46 + 32) = static MetalDataType.float4;
  swift_allocObject();

  v48 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v47, v46);

  *(inited + 480) = v48;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD000000000000027, 0x8000000265F32AF0, inited);
  static MetalDataType.re.geometry_modifier.geometry = result;
  return result;
}

uint64_t one-time initialization function for surface_properties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B40;
  *(inited + 32) = 0x6C6F635F65736162;
  *(inited + 40) = 0xEA0000000000726FLL;
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  *(inited + 56) = 0x6C616D726F6ELL;
  *(inited + 64) = 0xE600000000000000;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  strcpy((inited + 80), "emissive_color");
  *(inited + 95) = -18;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0x73656E6867756F72;
  *(inited + 112) = 0xE900000000000073;
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9 = MEMORY[0x277D84F90];
  v10 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, MEMORY[0x277D84F90]);

  *(inited + 120) = v10;
  *(inited + 128) = 0x63696C6C6174656DLL;
  *(inited + 136) = 0xE800000000000000;
  swift_allocObject();

  v12 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v11, v9);

  *(inited + 144) = v12;
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x8000000265F32D50;
  swift_allocObject();

  v14 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v13, v9);

  *(inited + 168) = v14;
  *(inited + 176) = 0x72616C7563657073;
  *(inited + 184) = 0xE800000000000000;
  swift_allocObject();

  v16 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v15, v9);

  *(inited + 192) = v16;
  *(inited + 200) = 0x7974696361706FLL;
  *(inited + 208) = 0xE700000000000000;
  swift_allocObject();

  v18 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v17, v9);

  *(inited + 216) = v18;
  *(inited + 224) = 0x616F637261656C63;
  *(inited + 232) = 0xE900000000000074;
  swift_allocObject();

  v20 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v19, v9);

  *(inited + 240) = v20;
  *(inited + 248) = 0xD000000000000013;
  *(inited + 256) = 0x8000000265F32D70;
  swift_allocObject();

  v22 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v21, v9);

  *(inited + 264) = v22;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000265F32D90;
  swift_allocObject();

  v24 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v23, v9);

  *(inited + 288) = v24;
  strcpy((inited + 296), "set_base_color");
  *(inited + 311) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_265F20CD0;
  *(v25 + 32) = static MetalDataType.half3;
  v26 = one-time initialization token for void;

  if (v26 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v28 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v27, v25);

  *(inited + 312) = v28;
  *(inited + 320) = 0x6D726F6E5F746573;
  *(inited + 328) = 0xEA00000000006C61;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_265F20CD0;
  *(v29 + 32) = static MetalDataType.float3;
  swift_allocObject();

  v31 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v30, v29);

  *(inited + 336) = v31;
  *(inited + 344) = 0xD000000000000012;
  *(inited + 352) = 0x8000000265F32DE0;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_265F20CD0;
  *(v32 + 32) = static MetalDataType.half3;
  swift_allocObject();

  v34 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v33, v32);

  *(inited + 360) = v34;
  strcpy((inited + 368), "set_roughness");
  *(inited + 382) = -4864;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_265F20CD0;
  *(v35 + 32) = static MetalDataType.half;
  swift_allocObject();

  v37 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v36, v35);

  *(inited + 384) = v37;
  strcpy((inited + 392), "set_metallic");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_265F20CD0;
  *(v38 + 32) = static MetalDataType.half;
  swift_allocObject();

  v40 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v39, v38);

  *(inited + 408) = v40;
  *(inited + 416) = 0xD000000000000015;
  *(inited + 424) = 0x8000000265F32E00;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_265F20CD0;
  *(v41 + 32) = static MetalDataType.half;
  swift_allocObject();

  v43 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v42, v41);

  *(inited + 432) = v43;
  strcpy((inited + 440), "set_specular");
  *(inited + 453) = 0;
  *(inited + 454) = -5120;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_265F20CD0;
  *(v44 + 32) = static MetalDataType.half;
  swift_allocObject();

  v46 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v45, v44);

  *(inited + 456) = v46;
  *(inited + 464) = 0x6361706F5F746573;
  *(inited + 472) = 0xEB00000000797469;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_265F20CD0;
  *(v47 + 32) = static MetalDataType.half;
  swift_allocObject();

  v49 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v48, v47);

  *(inited + 480) = v49;
  strcpy((inited + 488), "set_clearcoat");
  *(inited + 502) = -4864;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_265F20CD0;
  *(v50 + 32) = static MetalDataType.half;
  swift_allocObject();

  v52 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v51, v50);

  *(inited + 504) = v52;
  *(inited + 512) = 0xD000000000000017;
  *(inited + 520) = 0x8000000265F32E20;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_265F20CD0;
  *(v53 + 32) = static MetalDataType.half;
  swift_allocObject();

  v55 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v54, v53);

  *(inited + 528) = v55;
  *(inited + 536) = 0xD000000000000014;
  *(inited + 544) = 0x8000000265F32E40;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_265F20CD0;
  *(v56 + 32) = static MetalDataType.half3;
  swift_allocObject();

  v58 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v57, v56);

  *(inited + 552) = v58;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD000000000000027, 0x8000000265F32DB0, inited);
  static MetalDataType.re.surface.surface_properties = result;
  return result;
}

uint64_t one-time initialization function for textures()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F26B70;
  *(inited + 32) = 0x6C6F635F65736162;
  *(inited + 40) = 0xEA0000000000726FLL;
  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v3;
  *(inited + 56) = 0x7974696361706FLL;
  *(inited + 64) = 0xE700000000000000;
  swift_allocObject();

  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, v2);

  *(inited + 72) = v5;
  *(inited + 80) = 0x6C616D726F6ELL;
  *(inited + 88) = 0xE600000000000000;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v2);

  *(inited + 96) = v7;
  strcpy((inited + 104), "emissive_color");
  *(inited + 119) = -18;
  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v2);

  *(inited + 120) = v9;
  *(inited + 128) = 0x73656E6867756F72;
  *(inited + 136) = 0xE900000000000073;
  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v2);

  *(inited + 144) = v11;
  *(inited + 152) = 0x63696C6C6174656DLL;
  *(inited + 160) = 0xE800000000000000;
  swift_allocObject();

  v13 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v12, v2);

  *(inited + 168) = v13;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x8000000265F32D50;
  swift_allocObject();

  v15 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v14, v2);

  *(inited + 192) = v15;
  *(inited + 200) = 0x72616C7563657073;
  *(inited + 208) = 0xE800000000000000;
  swift_allocObject();

  v17 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v16, v2);

  *(inited + 216) = v17;
  *(inited + 224) = 0x616F637261656C63;
  *(inited + 232) = 0xE900000000000074;
  swift_allocObject();

  v19 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v18, v2);

  *(inited + 240) = v19;
  *(inited + 248) = 0xD000000000000013;
  *(inited + 256) = 0x8000000265F32D70;
  swift_allocObject();

  v21 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v20, v2);

  *(inited + 264) = v21;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000265F32D90;
  swift_allocObject();

  v23 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v22, v2);

  *(inited + 288) = v23;
  *(inited + 296) = 0x6D6F74737563;
  *(inited + 304) = 0xE600000000000000;
  swift_allocObject();

  v25 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v24, v2);

  *(inited + 312) = v25;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD00000000000001DLL, 0x8000000265F32D30, inited);
  static MetalDataType.re.texture.textures = result;
  return result;
}

uint64_t one-time initialization function for material_parameters()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss23_ContiguousArrayStorageCySS5label_11ShaderGraph13MetalDataTypeC4typetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F24120;
  *(inited + 32) = 0x6C6F635F65736162;
  *(inited + 40) = 0xEF746E69745F726FLL;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(inited + 48) = v2;
  strcpy((inited + 56), "opacity_scale");
  *(inited + 70) = -4864;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  v5 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v3, MEMORY[0x277D84F90]);

  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000265F32CF0;
  swift_allocObject();

  v7 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v6, v4);

  *(inited + 96) = v7;
  *(inited + 104) = 0x73656E6867756F72;
  *(inited + 112) = 0xEF656C6163735F73;
  swift_allocObject();

  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v4);

  *(inited + 120) = v9;
  strcpy((inited + 128), "metallic_scale");
  *(inited + 143) = -18;
  swift_allocObject();

  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v4);

  *(inited + 144) = v11;
  strcpy((inited + 152), "specular_scale");
  *(inited + 167) = -18;
  swift_allocObject();

  v13 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v12, v4);

  *(inited + 168) = v13;
  strcpy((inited + 176), "emissive_color");
  *(inited + 191) = -18;
  swift_allocObject();

  v15 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v14, v4);

  *(inited + 192) = v15;
  *(inited + 200) = 0x616F637261656C63;
  *(inited + 208) = 0xEF656C6163735F74;
  swift_allocObject();

  v17 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v16, v4);

  *(inited + 216) = v17;
  *(inited + 224) = 0xD000000000000019;
  *(inited + 232) = 0x8000000265F32D10;
  swift_allocObject();

  v19 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v18, v4);

  *(inited + 240) = v19;
  result = specialized MetalDataType.Struct.__allocating_init(note:typeName:fieldSpecs:)(0, 0, 0xD000000000000029, 0x8000000265F32CC0, inited);
  static MetalDataType.re.material.material_parameters = result;
  return result;
}

uint64_t one-time initialization function for CameraView()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_11ShaderGraph13MetalDataTypeC_ypSgtSgtGMd, &_ss23_ContiguousArrayStorageCySS_11ShaderGraph13MetalDataTypeC_ypSgtSgtGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6F6E6F4D6BLL;
  *(inited + 16) = xmmword_265F21D80;
  *(inited + 40) = 0xE500000000000000;
  if (one-time initialization token for uint32 != -1)
  {
    v6 = inited;
    swift_once();
    inited = v6;
  }

  v1 = static MetalDataType.uint32;
  v2 = MEMORY[0x277D83B88];
  *(inited + 48) = static MetalDataType.uint32;
  *(inited + 56) = 0;
  *(inited + 80) = v2;
  *(inited + 88) = 0x7466654C6BLL;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = 1;
  *(inited + 136) = v2;
  *(inited + 144) = 0x74686769526BLL;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 160) = v1;
  *(inited + 192) = v2;
  *(inited + 168) = 2;
  v3 = inited;
  swift_retain_n();
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeC_ypSgtSgTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph13MetalDataTypeC_ypSgtSgtMd, &_sSS_11ShaderGraph13MetalDataTypeC_ypSgtSgtMR);
  swift_arrayDestroy();
  type metadata accessor for MetalDataType.Enum();
  swift_allocObject();
  result = MetalDataType.Enum.init(note:typeName:types:)(0, 0, 0xD000000000000016, 0x8000000265F32A60, v4);
  static MetalDataType.re.CameraView = result;
  return result;
}

uint64_t *MetalDataType.re.CameraView.unsafeMutableAddressor()
{
  if (one-time initialization token for CameraView != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.CameraView;
}

uint64_t one-time initialization function for EnvironmentRadianceResult()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F21D90;
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  v1 = static MetalDataType.half3;
  *(v0 + 32) = 0x5265737566666964;
  *(v0 + 40) = 0xEF65636E61696461;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = xmmword_265F235D0;
  *(v0 + 88) = 0x8000000265F311E0;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 120) = 1;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  swift_retain_n();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000019, 0x8000000265F32EA0, v0);
  static MetalDataType.re.EnvironmentRadianceResult = result;
  return result;
}

uint64_t one-time initialization function for HoverData()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F21D70;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v1 = static MetalDataType.float;
  *(v0 + 32) = 0x6E695F7265766F68;
  *(v0 + 40) = 0xEF797469736E6574;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  v3 = one-time initialization token for float3;

  if (v3 != -1)
  {
    swift_once();
    v1 = static MetalDataType.float;
  }

  v4 = static MetalDataType.float3;
  strcpy((v0 + 80), "hover_position");
  *(v0 + 95) = -18;
  *(v0 + 96) = v4;
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 120) = xmmword_265F26B80;
  *(v0 + 136) = 0x8000000265F32EF0;
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  *(v0 + 160) = 1;
  *(v0 + 168) = 2;
  v5 = one-time initialization token for BOOL;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = static MetalDataType.BOOL;
  *(v0 + 176) = 0x76697463615F7369;
  *(v0 + 184) = 0xE900000000000065;
  *(v0 + 192) = v6;
  *(v0 + 200) = v2;
  *(v0 + 208) = 1;
  *(v0 + 216) = 4;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();

  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000020, 0x8000000265F32EC0, v0);
  static MetalDataType.re.HoverData = result;
  return result;
}

uint64_t one-time initialization function for surface_parameters_private()
{
  if (one-time initialization token for surface_parameters != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.re.surface_parameters;
  swift_beginAccess();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D80;
  v3 = one-time initialization token for uniforms_private;

  if (v3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v5 = MEMORY[0x277D84F90];
  v6 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, MEMORY[0x277D84F90]);

  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000265F32F40;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 64) = 1;
  *(inited + 72) = 0;
  if (one-time initialization token for uniforms_private != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v8 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v7, v5);

  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000265F32F60;
  *(inited + 96) = v8;
  *(inited + 104) = v5;
  *(inited + 112) = 1;
  *(inited + 120) = 0;
  if (one-time initialization token for void != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Pointer();
  swift_allocObject();

  v10 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(v9, 0, 0);

  swift_allocObject();
  v11 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v10, v5);

  strcpy((inited + 128), "user_constants");
  *(inited + 143) = -18;
  *(inited + 144) = v11;
  *(inited + 152) = v5;
  *(inited + 160) = 1;
  *(inited + 168) = 0;
  specialized Array.append<A>(contentsOf:)(inited);
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000026, 0x8000000265F32F10, v1);
  static MetalDataType.re.surface_parameters_private = result;
  return result;
}

uint64_t *MetalDataType.re.surface_private.uniforms_private.unsafeMutableAddressor()
{
  if (one-time initialization token for uniforms_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface_private.uniforms_private;
}

uint64_t *MetalDataType.re.geometry_modifier_private.uniforms_private.unsafeMutableAddressor()
{
  if (one-time initialization token for uniforms_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_modifier_private.uniforms_private;
}

uint64_t one-time initialization function for uniforms_private()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0xD000000000000017;
  *(v0 + 40) = 0x8000000265F32A40;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD00000000000002DLL, 0x8000000265F32A10, v0);
  static MetalDataType.re.surface_private.uniforms_private = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for float4x4 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x8000000265F329F0;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000037, 0x8000000265F329B0, v0);
  static MetalDataType.re.geometry_modifier_private.uniforms_private = result;
  return result;
}

uint64_t one-time initialization function for geometry_private()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  strcpy((v0 + 32), "crws_position");
  *(v0 + 46) = -4864;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD00000000000002DLL, 0x8000000265F32980, v0);
  static MetalDataType.re.surface_private.geometry_private = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F1F670;
  if (one-time initialization token for CameraView != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v2 = MEMORY[0x277D84F90];
  v3 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v1, MEMORY[0x277D84F90]);

  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x8000000265F32960;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000037, 0x8000000265F32920, v0);
  static MetalDataType.re.geometry_modifier_private.geometry_private = result;
  return result;
}

uint64_t *MetalDataType.re.surface_private.geometry_private.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.surface_private.geometry_private;
}

uint64_t one-time initialization function for geometry_parameters_private()
{
  if (one-time initialization token for geometry_parameters != -1)
  {
    swift_once();
  }

  v0 = static MetalDataType.re.geometry_parameters;
  swift_beginAccess();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph16DataTypePropertyVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D90;
  v3 = one-time initialization token for uniforms_private;

  if (v3 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Function();
  swift_allocObject();

  v5 = MEMORY[0x277D84F90];
  v6 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v4, MEMORY[0x277D84F90]);

  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000265F32F40;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 64) = 1;
  *(inited + 72) = 0;
  if (one-time initialization token for void != -1)
  {
    swift_once();
  }

  type metadata accessor for MetalDataType.Pointer();
  swift_allocObject();

  v8 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(v7, 0, 0);

  swift_allocObject();
  v9 = specialized MetalDataType.Function.init(resultType:argumentTypes:)(v8, v5);

  strcpy((inited + 80), "user_constants");
  *(inited + 95) = -18;
  *(inited + 96) = v9;
  *(inited + 104) = v5;
  *(inited + 112) = 1;
  *(inited + 120) = 0;
  specialized Array.append<A>(contentsOf:)(inited);
  type metadata accessor for MetalDataType.Struct();
  swift_allocObject();
  result = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, 0xD000000000000027, 0x8000000265F32F80, v1);
  static MetalDataType.re.geometry_parameters_private = result;
  return result;
}

uint64_t *MetalDataType.re.geometry_modifier_private.geometry_private.unsafeMutableAddressor()
{
  if (one-time initialization token for geometry_private != -1)
  {
    swift_once();
  }

  return &static MetalDataType.re.geometry_modifier_private.geometry_private;
}

uint64_t one-time initialization function for BlendFactor()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x614620646E656C42, 0xEC000000726F7463, 0x636146646E656C42, 0xEB00000000726F74, &outlined read-only object #0 of one-time initialization function for BlendFactor);
  static MetalDataType.BlendFactor = result;
  return result;
}

uint64_t *MetalDataType.BlendFactor.unsafeMutableAddressor()
{
  if (one-time initialization token for BlendFactor != -1)
  {
    swift_once();
  }

  return &static MetalDataType.BlendFactor;
}

uint64_t one-time initialization function for BlendOperation()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0x704F20646E656C42, 0xEF6E6F6974617265, 0x65704F646E656C42, 0xEE006E6F69746172, &outlined read-only object #0 of one-time initialization function for BlendOperation);
  static MetalDataType.BlendOperation = result;
  return result;
}

uint64_t *MetalDataType.BlendOperation.unsafeMutableAddressor()
{
  if (one-time initialization token for BlendOperation != -1)
  {
    swift_once();
  }

  return &static MetalDataType.BlendOperation;
}

uint64_t one-time initialization function for CompareFunction()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0xD000000000000010, 0x8000000265F32900, 0x46657261706D6F43, 0xEF6E6F6974636E75, &outlined read-only object #0 of one-time initialization function for CompareFunction);
  static MetalDataType.CompareFunction = result;
  return result;
}

uint64_t *MetalDataType.CompareFunction.unsafeMutableAddressor()
{
  if (one-time initialization token for CompareFunction != -1)
  {
    swift_once();
  }

  return &static MetalDataType.CompareFunction;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = result;
  if (a3 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v5 = MEMORY[0x277D84F90];
      while (a4 != v7)
      {
        v20 = v7;
        result = v14(&v16, &v20);
        if (v4)
        {

          return v5;
        }

        v9 = v18;
        if (v18)
        {
          v15 = v16;
          v10 = v17;
          v11 = v19;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
            v5 = result;
          }

          v13 = v5[2];
          v12 = v5[3];
          if (v13 >= v12 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
            v5 = result;
          }

          v5[2] = v13 + 1;
          v8 = &v5[5 * v13];
          *(v8 + 2) = v15;
          v8[6] = v10;
          v8[7] = v9;
          v8[8] = v11;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

{
  v16 = result;
  if (a3 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v6 = a4;
    v7 = a3;
    if (a4 >= a3)
    {
      v5 = MEMORY[0x277D84F90];
      while (v6 != v7)
      {
        v23 = v7;
        result = v16(&v18, &v23);
        if (v4)
        {

          return v5;
        }

        v9 = v20;
        if (v20)
        {
          v17 = v18;
          v10 = v19;
          v11 = v21;
          v12 = v22;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
            v5 = result;
          }

          v14 = v5[2];
          v13 = v5[3];
          if (v14 >= v13 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
            v5 = result;
          }

          v5[2] = v14 + 1;
          v8 = &v5[6 * v14];
          *(v8 + 2) = v17;
          v8[6] = v10;
          v8[7] = v9;
          v8[8] = v11;
          *(v8 + 72) = v12 & 1;
          v6 = a4;
        }

        if (v6 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t specialized Graph.edge(to:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(a2 + 16);
  if (v3 >= v4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  v7 = *(result + 8);
  v8 = a2 + 32;
  v9 = (a2 + 32 + 88 * v3);
  v10 = v9[8];
  v11 = v9[9];
  v12 = v9[10];
  v13 = v11 + 32;
  v14 = *(v11 + 16);
  if (v10)
  {
    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*(result + 8), v13, v14, v10 + 16, v10 + 32);
    if (v15)
    {
      v16 = 0;
      v3 = 0;
      v7 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0uLL;
LABEL_16:
      v21 = 0uLL;
      v22 = 0uLL;
LABEL_17:
      *a3 = v19;
      *(a3 + 16) = v16;
      *(a3 + 24) = v21;
      *(a3 + 40) = v3;
      *(a3 + 48) = v7;
      *(a3 + 56) = v17;
      *(a3 + 64) = v22;
      *(a3 + 80) = v18;
      return result;
    }

    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = 0uLL;
  if (!v14)
  {
LABEL_14:
    v16 = 0;
    v3 = 0;
    v7 = 0;
    v17 = 0;
LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  result = 0;
  while (*(v13 + 8 * result) != v7)
  {
    if (v14 == ++result)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  if (result >= *(v12 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v12 + 24 * result;
  v19 = 0uLL;
  if (*(v20 + 48))
  {
    goto LABEL_14;
  }

  v23 = *(v20 + 32);
  if (v23 < v4)
  {
    v24 = (v8 + 88 * v23);
    v17 = v24[4];
    if (v17)
    {
      v26 = v24[2];
      v25 = v24[3];
      v28 = *v24;
      v27 = v24[1];
      specialized Graph.Node.subscript.getter(*(v20 + 40), *v24, v26, &v32);
      v16 = v33;
      v30 = v32;
      v31 = v34;

      result = outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v28, v27, v26, v25, v17);
      if (v31)
      {
        v17 = *(v5 + 16);
        v29 = *(v5 + 24);
        v18 = *(v5 + 40);

        v22 = v29;
        v19 = v30;
        v21 = v31;
      }

      else
      {
        v16 = 0;
        v3 = 0;
        v7 = 0;
        v17 = 0;
        v18 = 0;
        v21 = 0uLL;
        v22 = 0uLL;
        v19 = 0uLL;
      }

      goto LABEL_17;
    }

    v16 = 0;
    v3 = 0;
    v7 = 0;
    goto LABEL_15;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, char **a5@<X8>)
{
  v224 = a4;
  v189 = a5;
  v6 = a3[1];
  v234 = *a3;
  v8 = a3[2];
  v7 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  v11 = a3[6];
  v12 = a3[7];
  v13 = a3[8];
  v14 = a3[9];
  v15 = a3[10];
  v231 = v12;
  v232 = v10;
  v207 = v6;
  v233 = v9;
  if (v9)
  {
    v16 = v14;
    v17 = v13;
    v18 = v11;
    specialized Graph.Node<>.input(named:)(a1, a2, v234, v8, v295);
    v211 = v295[1];
    v212 = v295[0];
    v19 = v295[3];
    v209 = v295[4];
    v210 = v295[2];
    v208 = v296;
    v20 = a3[8];
    v214 = a3[10];
    v215 = v20;
    v223 = *(a3 + 72);
    v21 = a3[6];
    v216 = a3[7];
    v217 = v21;
    v22 = *a3;
    v221 = a3[1];
    v222 = v22;
    v23 = a3[2];
    v219 = a3[3];
    v220 = v23;
    v10 = a3[5];
    v218 = a3[4];
  }

  else
  {
    v211 = 0;
    v212 = 0;
    v209 = 0;
    v210 = 0;
    v19 = 0;
    v208 = 0;
    v218 = 0;
    v219 = v7;
    v220 = v8;
    v221 = v6;
    v222 = v234;
    v216 = v12;
    v217 = v11;
    v18 = v11;
    v16 = v14;
    v223 = v14;
    v17 = v13;
    v214 = v15;
    v215 = v13;
  }

  outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(a3, v294);
  v188 = a3;
  outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(a3, v294);
  v186 = 0;
  v202 = MEMORY[0x277D84F90];
  v187 = v10;
  v213 = v10;
  v24 = v231;
  v25 = v232;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v207;
  v30 = v19;
  v31 = v233;
  while (1)
  {
    *&v288 = v222;
    *(&v288 + 1) = v221;
    *&v289 = v220;
    *(&v289 + 1) = v219;
    *&v290 = v218;
    *(&v290 + 1) = v213;
    *&v291 = v217;
    *(&v291 + 1) = v216;
    *&v292 = v215;
    BYTE8(v292) = v223 & 1;
    v293 = v214;
    v294[0] = v234;
    v294[1] = v29;
    v294[2] = v8;
    v294[3] = v7;
    v294[4] = v31;
    v294[5] = v25;
    v32 = v26;
    v294[6] = v26;
    v230 = v27;
    v231 = v24;
    v294[7] = v24;
    v294[8] = v27;
    v229 = v28;
    v294[9] = v28;
    v33 = v15;
    v294[10] = v15;
    v232 = v25;
    v233 = v31;
    if (!v31)
    {

      goto LABEL_81;
    }

    if (!v30)
    {
      goto LABEL_81;
    }

    v34 = v8;
    v35 = v29;
    v306[0] = v212;
    v306[1] = v211;
    v306[2] = v210;
    v306[3] = v30;
    v306[4] = v209;
    v307 = v208 & 1;
    v36 = v224[1];
    if (!*(v36 + 16))
    {
      break;
    }

    v37 = v30;
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
    if ((v39 & 1) == 0)
    {
      break;
    }

    v226 = v7;
    v227 = v34;
    v40 = v35;
    v228 = v33;
    v225 = v37;
    v41 = (*(v36 + 56) + 48 * v38);
    v42 = *v41;
    v44 = v41[2];
    v43 = v41[3];
    v46 = v41[4];
    v45 = v41[5];

    outlined init with copy of [Input](v294, &v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    specialized Graph.edge(to:)(v306, v45, &v271);
    v249 = v271;
    v250 = v272;
    v251 = v273;
    v252 = v274;
    v253 = v275;
    v254 = v276;
    v255 = v273;
    v256 = v274;
    v257 = v275;
    v258 = v276;
    if (!*(&v272 + 1))
    {
      goto LABEL_6;
    }

    if ((v271 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v271 >= *(v45 + 16))
    {
      goto LABEL_85;
    }

    v47 = (v45 + 88 * v271);
    v48 = v47[8];
    if (!v48)
    {
      outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
LABEL_6:

      outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v277 = v234;
      v278 = v35;
      v279 = v227;
      v280 = v226;
      v281 = v233;
      v282 = v232;
      v283 = v32;
      v284 = v231;
      v285 = v230;
      v286 = v229;
      v287 = v228;
      goto LABEL_7;
    }

    v201 = *(&v272 + 1);
    v49 = v224[2];
    if (!*(v49 + 16))
    {
      goto LABEL_28;
    }

    v51 = v47[4];
    v50 = v47[5];
    v53 = v47[6];
    v52 = v47[7];
    v205 = v53;
    v206 = v49;
    v196 = v52;
    *&v197 = v50;
    v207 = v48;
    v193 = v272;
    v190 = v271;
    v54 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v51);
    if (v55)
    {
      v56 = *(*(v206 + 56) + 8 * v54);
      if ((v56 & 0x8000000000000000) != 0)
      {
        goto LABEL_86;
      }

      v57 = *v224;
      if (v56 >= *(*v224 + 16))
      {
        goto LABEL_87;
      }

      v185 = *(*v224 + 16);
      v184 = v57 + 32;
      v58 = v57 + 32 + 88 * v56;
      v59 = *(v58 + 16);
      v265 = *v58;
      v266 = v59;
      v60 = *(v58 + 80);
      v62 = *(v58 + 48);
      v61 = *(v58 + 64);
      v267 = *(v58 + 32);
      v268 = v62;
      v269 = v61;
      v270 = v60;
      v191 = *(&v265 + 1);
      v192 = v265;
      v203 = v266;
      v204 = v60;
      *(&v197 + 1) = *(&v267 + 1);
      v63 = v267;
      v195 = *(&v62 + 1);
      v198 = v62;
      v199 = v61;
      v200 = *(&v266 + 1);
      v194 = *(&v61 + 1);
      *&v271 = v234;
      *(&v271 + 1) = v40;
      *&v272 = v227;
      *(&v272 + 1) = v226;
      *&v273 = v233;
      *(&v273 + 1) = v232;
      *&v274 = v32;
      *(&v274 + 1) = v231;
      *&v275 = v230;
      *(&v275 + 1) = v229;
      v276 = v228;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v51, v197, v205, v196, v207);
      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v265, &v259);
      outlined destroy of [Input](&v271, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v277 = v192;
      v278 = v191;
      v279 = v203;
      v280 = v200;
      v281 = v63;
      v282 = *(&v197 + 1);
      v283 = v198;
      v284 = v195;
      v285 = v199;
      v286 = v194;
      v287 = v204;
      v248 = v194;
      *&v197 = v63;
      if (v63)
      {
        v234 = v44;
        outlined init with copy of [Input](&v277, &v259, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        v246[2] = v251;
        v246[3] = v252;
        v246[4] = v253;
        v247 = v254;
        v246[0] = v249;
        v246[1] = v250;
        outlined init with copy of [Input](v246, &v259, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
        v64 = v202;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
        }

        v66 = *(v64 + 2);
        v65 = *(v64 + 3);
        if (v66 >= v65 >> 1)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v64);
        }

        outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v288);
        v245 = v258;
        v243 = v256;
        v244 = v257;
        v242 = v255;
        *(v64 + 2) = v66 + 1;
        v202 = v64;
        v67 = &v64[104 * v66];
        v68 = v193;
        *(v67 + 2) = v190;
        *(v67 + 3) = v68;
        v69 = v242;
        v70 = v243;
        v71 = v244;
        v67[112] = v245;
        *(v67 + 5) = v70;
        *(v67 + 6) = v71;
        *(v67 + 4) = v69;
        v72 = v203;
        v73 = v228;
        *(v67 + 15) = v204;
        *(v67 + 16) = v73;
        if (v72 >> 62 == 1)
        {
          v74 = v72 & 0x3FFFFFFFFFFFFFFFLL;

          v75 = *((v72 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v76 = *((v72 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v77 = *((v72 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v78 = *((v72 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          v79 = *(v74 + 56);
          v80 = *(v74 + 32);

          specialized SGDataTypeGraph.resultNode.getter(v79, v297);
          v81 = v298;
          if (v298)
          {
            v82 = v297[3];
            specialized Graph.Node<>.input(named:)(v193, v201, v297[0], v297[2], v300);
            v211 = v300[1];
            v212 = v300[0];
            v225 = v300[3];
            v209 = v300[4];
            v210 = v300[2];
            v208 = v301;
            outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

            v305[0] = v82;
            v305[1] = v81;
            outlined destroy of String(v305);
          }

          else
          {
            outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            v211 = 0;
            v212 = 0;
            v209 = 0;
            v210 = 0;
            v225 = 0;
            v208 = 0;
          }

          specialized SGDataTypeGraph.resultNode.getter(v79, v302);
          if (v302[4])
          {
            v98 = v302[0];

            v99 = v206;
            if (*(v206 + 16))
            {
              v100 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v98);
              v101 = v198;
              v102 = v199;
              v103 = v195;
              v104 = v192;
              v105 = v197;
              if (v106)
              {
                v107 = *(*(v99 + 56) + 8 * v100);
                v108 = v203;
                if (v107 >= v185)
                {
                  goto LABEL_88;
                }

                v109 = (v184 + 88 * v107);
                v110 = v109[1];
                v259 = *v109;
                v260 = v110;
                v111 = v109[2];
                v112 = v109[3];
                v113 = v109[4];
                v264 = *(v109 + 10);
                v262 = v112;
                v263 = v113;
                v261 = v111;
                outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v259, &v236);
                outlined destroy of [Input](v302, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

                outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v226 = *(&v260 + 1);
                v227 = v260;
                v233 = v261;
                v234 = v259;
                v206 = v262;
                v207 = *(&v259 + 1);
                v231 = *(&v262 + 1);
                v232 = *(&v261 + 1);
                v229 = *(&v263 + 1);
                v230 = v263;
                v228 = v264;
                v114 = v204;
                v115 = v102;
                v116 = v101;
              }

              else
              {
                outlined destroy of [Input](v302, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

                outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
                v116 = v101;
                v233 = 0;
                v234 = 0;
                v206 = 0;
                v207 = 0;
                v226 = 0;
                v227 = 0;
                v231 = 0;
                v232 = 0;
                v229 = 0;
                v230 = 0;
                v228 = 0;
                v108 = v203;
                v114 = v204;
                v115 = v102;
              }

              goto LABEL_65;
            }

            outlined destroy of [Input](v302, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
          }

          else
          {
          }

          outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v233 = 0;
          v234 = 0;
          v206 = 0;
          v207 = 0;
          v226 = 0;
          v227 = 0;
          v231 = 0;
          v232 = 0;
          v229 = 0;
          v230 = 0;
          v228 = 0;
          v108 = v203;
          v114 = v204;
          v116 = v198;
          v115 = v199;
          v103 = v195;
          v104 = v192;
          v105 = v197;
LABEL_65:
          *&v259 = v104;
          v130 = v104;
          v131 = v191;
          *(&v259 + 1) = v191;
          *&v260 = v108;
          v132 = v200;
          *(&v260 + 1) = v200;
          *&v261 = v105;
          v133 = v105;
          v134 = v108;
          v135 = *(&v197 + 1);
          *(&v261 + 1) = *(&v197 + 1);
          *&v262 = v116;
          *(&v262 + 1) = v103;
          *&v263 = v115;
          *(&v263 + 1) = v194;
          v264 = v114;
          v136 = v114;
          v137 = v116;
          outlined destroy of [Input](&v259, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v221 = v131;
          v222 = v130;
          v223 = v248;
          v219 = v132;
          v220 = v134;
          v217 = v137;
          v218 = v133;
          v213 = v135;
          v214 = v136;
          v215 = v199;
          v216 = v103;
          v30 = v225;
          v15 = v228;
          v29 = v207;
          goto LABEL_66;
        }

        v231 = v72 >> 62;
        outlined init with copy of [Input](&v277, &v259, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
        v233 = v72 & 0x3FFFFFFFFFFFFFFFLL;

        v84 = v197;

        specialized SGDataTypeGraph.argumentsNode.getter(v45, v299);
        v232 = v299[0];
        v85 = v299[1];
        v86 = v299[2];
        v87 = v299[3];
        v88 = v299[4];

        if (v88)
        {
          v89 = v85;
          v91 = v191;
          v90 = v192;
          v92 = v200;
          v93 = v84;
          if (v192 != v232 || v191 != v89 || (specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(v203, v86) & 1) == 0 || (v92 != v87 || v84 != v88) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

            v95 = outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            v94 = v186;
            goto LABEL_40;
          }

          v94 = v186;
          if (v248)
          {
            v95 = outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
LABEL_40:
            v96 = v203;
            v97 = v92;
            goto LABEL_48;
          }

          outlined destroy of [Input](&v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v145 = v199;
          v146 = v203;
          if (v199 >= v185)
          {
            goto LABEL_89;
          }

          v147 = (v184 + 88 * v199);
          v148 = v147[1];
          v236 = *v147;
          v237 = v148;
          v149 = *(v147 + 10);
          v151 = v147[3];
          v150 = v147[4];
          v238 = v147[2];
          v239 = v151;
          v240 = v150;
          v241 = v149;
          v152 = *(&v236 + 1);
          v234 = v236;
          v226 = *(&v237 + 1);
          v153 = v237;
          v154 = v238;
          v231 = *(&v151 + 1);
          v206 = v151;
          v232 = *(&v238 + 1);
          v230 = v150;
          v228 = v149;
          v229 = *(&v150 + 1);
          *&v259 = v90;
          *(&v259 + 1) = v91;
          *&v260 = v203;
          *(&v260 + 1) = v200;
          v261 = v197;
          *&v262 = v198;
          v155 = v195;
          *(&v262 + 1) = v195;
          *&v263 = v199;
          *(&v263 + 1) = v194;
          v156 = v204;
          v264 = v204;
          outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v236, &v235);
          outlined destroy of [Input](&v259, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          v233 = v154;
          v227 = v153;
          if (v154)
          {
            specialized Graph.Node<>.input(named:)(v193, v201, v234, v153, v303);
            v211 = v303[1];
            v212 = v303[0];
            v157 = v303[3];
            v209 = v303[4];
            v210 = v303[2];
            v208 = v304;

            outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

            outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
          }

          else
          {

            outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v211 = 0;
            v212 = 0;
            v209 = 0;
            v210 = 0;
            v157 = 0;
            v208 = 0;
          }

          v223 = 0;
          v221 = v191;
          v222 = v192;
          v219 = v200;
          v220 = v146;
          v213 = *(&v197 + 1);
          v214 = v156;
          v217 = v198;
          v218 = v197;
          v215 = v145;
          v216 = v155;
          v30 = v157;
          v15 = v228;
          v29 = v152;
LABEL_66:
          v7 = v226;
          v8 = v227;
          v25 = v232;
          v31 = v233;
          v26 = v206;
          v27 = v230;
          v24 = v231;
          v28 = v229;
        }

        else
        {
          outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
          v91 = v191;
          v117 = v192;
          v97 = v200;
          outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v192, v191, v72, v200, v84);
          v95 = outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v232, v85, v86, v87, 0);
          v94 = v186;
          v96 = v72;
          v90 = v117;
          v93 = v84;
LABEL_48:
          *&v259 = v90;
          *(&v259 + 1) = v91;
          *&v260 = v96;
          *(&v260 + 1) = v97;
          *&v261 = v93;
          v118 = v231;
          if (!v231)
          {
            v119 = v96 + 32;
            goto LABEL_53;
          }

          if (v231 == 1)
          {
            v119 = v233 + 40;
LABEL_53:
            v120 = *(*v119 + 16);
          }

          MEMORY[0x28223BE20](v95);
          v182 = &v259;
          v122 = *(specialized Sequence.compactMap<A>(_:)(closure #1 in Graph.Node.inputs.getterspecialized partial apply, v181, 0, v121) + 16);

          if (v122 == 1)
          {
            *&v259 = v90;
            *(&v259 + 1) = v91;
            *&v260 = v96;
            *(&v260 + 1) = v97;
            *&v261 = v93;
            if (!v118)
            {
              v125 = v96;
              v127 = v96 + 32;
              v128 = v204;
              v129 = v199;
              v126 = v194;
              goto LABEL_68;
            }

            v125 = v96;
            v126 = v194;
            if (v118 == 1)
            {
              v127 = v233 + 40;
              v128 = v204;
              v129 = v199;
LABEL_68:
              v138 = *(*v127 + 16);
              goto LABEL_70;
            }

            v128 = v204;
            v129 = v199;
LABEL_70:
            MEMORY[0x28223BE20](v123);
            v182 = &v259;
            v140 = specialized Sequence.compactMap<A>(_:)(closure #1 in Graph.Node.inputs.getterspecialized partial apply, v181, 0, v139);
            v141 = *(v140 + 16);
            v186 = v94;
            if (v141)
            {
              v142 = *(v140 + 32);
              v211 = *(v140 + 40);
              v212 = v142;
              v143 = *(v140 + 48);
              v144 = *(v140 + 56);
              v209 = *(v140 + 64);
              v210 = v143;
              v208 = *(v140 + 72);

              outlined destroy of [Input](&v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

              outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v30 = v144;
            }

            else
            {

              outlined destroy of [Input](&v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

              outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v211 = 0;
              v212 = 0;
              v209 = 0;
              v210 = 0;
              v30 = 0;
              v208 = 0;
            }

            v234 = v192;
            v29 = v191;
            v223 = v248;
            v8 = v125;
            v7 = v200;
            v26 = v198;
            v24 = v195;
            v27 = v129;
            v28 = v126;
            v221 = v191;
            v222 = v192;
            v219 = v200;
            v220 = v125;
            v15 = v128;
            v217 = v198;
            v213 = *(&v197 + 1);
            v218 = v197;
            v214 = v128;
            v215 = v129;
            v216 = v195;
            v25 = *(&v197 + 1);
            v31 = v197;
          }

          else
          {
            v8 = v96;
            v186 = v94;

            if (v122)
            {
              outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v124 = &v277;
            }

            else
            {
              outlined destroy of [Input](&v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
              v124 = v294;
            }

            outlined destroy of [Input](v124, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
            v211 = 0;
            v212 = 0;
            v209 = 0;
            v210 = 0;
            v30 = 0;
            v208 = 0;
            v223 = v248;
            v234 = v90;
            v29 = v91;
            v7 = v200;
            v26 = v198;
            v28 = v194;
            v24 = v195;
            v27 = v199;
            v221 = v91;
            v222 = v90;
            v31 = v93;
            v219 = v200;
            v220 = v96;
            v15 = v204;
            v217 = v198;
            v218 = v93;
            v25 = *(&v197 + 1);
            v213 = *(&v197 + 1);
            v214 = v204;
            v215 = v199;
            v216 = v195;
          }
        }
      }

      else
      {
        v83 = v192;
        v29 = v191;

        outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);

        outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
        v31 = 0;
        v234 = v83;
        v8 = v203;
        v15 = v204;
        v27 = v199;
        v7 = v200;
        v25 = *(&v197 + 1);
        v26 = v198;
        v28 = v194;
        v24 = v195;
        v30 = v225;
      }
    }

    else
    {
LABEL_28:

      outlined destroy of [Input](v294, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      outlined destroy of [Input](&v249, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
      v277 = v234;
      v278 = v40;
      v279 = v227;
      v280 = v226;
      v281 = v233;
      v282 = v232;
      v283 = v32;
      v284 = v231;
      v285 = v230;
      v286 = v229;
      v287 = v228;
LABEL_7:
      outlined destroy of [Input](&v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v234 = 0;
      v29 = 0;
      v8 = 0;
      v7 = 0;
      v31 = 0;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v27 = 0;
      v28 = 0;
      v15 = 0;
      v30 = v225;
    }
  }

  v29 = v35;
  v8 = v34;
LABEL_81:
  v158 = v29;
  v159 = v224[1];
  if (*(v159 + 16))
  {
    v160 = specialized __RawDictionaryStorage.find<A>(_:)(v187);
    if (v161)
    {
      v162 = (*(v159 + 56) + 48 * v160);
      v163 = v162[1];
      v227 = *v162;
      v228 = v163;
      v165 = v162[2];
      v164 = v162[3];
      v166 = v162[4];
      v226 = v162[5];
      v167 = *(v188 + 3);
      v273 = *(v188 + 2);
      v274 = v167;
      v275 = *(v188 + 4);
      v276 = v188[10];
      v168 = *(v188 + 1);
      v271 = *v188;
      v272 = v168;
      v265 = v288;
      v266 = v289;
      v270 = v293;
      v268 = v291;
      v269 = v292;
      v267 = v290;
      v277 = v234;
      v278 = v158;
      v279 = v8;
      v280 = v7;
      v281 = v233;
      v282 = v232;
      v283 = v32;
      v284 = v231;
      v285 = v230;
      v286 = v229;
      v287 = v33;
      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(v188, &v259);

      v169 = v166;

      v170 = v226;

      result = outlined destroy of [Input](&v277, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
      v172 = v189;
      *v189 = v202;
      v173 = v274;
      *(v172 + 5) = v273;
      *(v172 + 7) = v173;
      *(v172 + 9) = v275;
      v172[11] = v276;
      v174 = v272;
      *(v172 + 1) = v271;
      *(v172 + 3) = v174;
      v175 = v266;
      *(v172 + 6) = v265;
      *(v172 + 7) = v175;
      v176 = v267;
      v177 = v269;
      v178 = v270;
      *(v172 + 9) = v268;
      *(v172 + 10) = v177;
      *(v172 + 8) = v176;
      v180 = v227;
      v179 = v228;
      v172[22] = v178;
      v172[23] = v180;
      v172[24] = v179;
      v172[25] = v165;
      v172[26] = v164;
      v172[27] = v169;
      v172[28] = v170;
      return result;
    }
  }

LABEL_90:
  v183 = 0;
  v182 = 191;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}