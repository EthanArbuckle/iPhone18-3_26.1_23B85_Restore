Swift::Int protocol witness for Hashable.hashValue.getter in conformance knownTLSAlert()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1B26C9BD0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance knownTLSAlert()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1B26C9BD0[v1]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance knownTLSAlert@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized knownTLSAlert.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void Alert.hash(into:)(int a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int Alert.hashValue.getter(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Alert()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Alert()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Alert()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t Alert.description.getter(__int16 a1)
{
  v1 = HIBYTE(a1);
  if (a1 == 2)
  {
    result = 0x6F63657220646162;
    switch(v1)
    {
      case 10:
        result = 0xD000000000000012;
        break;
      case 20:
        return result;
      case 22:
        result = 0x6F2064726F636572;
        break;
      case 40:
        result = 0xD000000000000011;
        break;
      case 42:
        result = 0x7472656320646162;
        break;
      case 43:
      case 120:
        result = 0xD000000000000017;
        break;
      case 44:
      case 45:
      case 46:
        result = 0xD000000000000013;
        break;
      case 47:
        result = 0xD000000000000011;
        break;
      case 48:
        result = 0x206E776F6E6B6E75;
        break;
      case 49:
        result = 0x6420737365636361;
        break;
      case 50:
        result = 0x652065646F636564;
        break;
      case 51:
        result = 0x2074707972636564;
        break;
      case 70:
        result = 0xD000000000000010;
        break;
      case 71:
      case 110:
        result = 0xD000000000000015;
        break;
      case 80:
        result = 0x6C616E7265746E69;
        break;
      case 86:
        result = 0xD000000000000016;
        break;
      case 90:
        result = 0x6E61632072657375;
        break;
      case 109:
        result = 0xD000000000000011;
        break;
      case 112:
        result = 0xD000000000000011;
        break;
      case 113:
        result = 0xD00000000000001FLL;
        break;
      case 115:
      case 116:
        result = 0xD000000000000014;
        break;
      default:
        goto LABEL_4;
    }
  }

  else if (a1 == 1 && !HIBYTE(a1))
  {
    return 0x6F6E2065736F6C63;
  }

  else
  {
LABEL_4:
    _StringGuts.grow(_:)(22);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v2);

    MEMORY[0x1B274D610](41, 0xE100000000000000);
    return 0xD000000000000013;
  }

  return result;
}

uint64_t ByteBuffer.writeAlert(_:)(unsigned int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1 >> 8;
  v12 = a1;
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v15 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v13 = &v12;
  v14 = &v13;
  v4 = __swift_project_boxed_opaque_existential_0(&v13, MEMORY[0x1E69E6290]);
  v6 = *v4;
  v5 = v4[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v12 = v1;
  v15 = v2;
  v16 = v3;
  v13 = &v12;
  v14 = &v13;
  v7 = __swift_project_boxed_opaque_existential_0(&v13, v2);
  v9 = *v7;
  v8 = v7[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v10 = *MEMORY[0x1E69E9840];
  return 2;
}

uint64_t ByteBuffer.readAlert()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  v1 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  v2 = (v0 | v1) >> 8;
  if (((v0 | v1) & 0x100) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = (v0 | (v1 << 8));
  }

  return v3 & 0xFFFEFFFF | ((v2 & 1) << 16);
}

unint64_t lazy protocol witness table accessor for type knownTLSAlert and conformance knownTLSAlert()
{
  result = lazy protocol witness table cache variable for type knownTLSAlert and conformance knownTLSAlert;
  if (!lazy protocol witness table cache variable for type knownTLSAlert and conformance knownTLSAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type knownTLSAlert and conformance knownTLSAlert);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Alert and conformance Alert()
{
  result = lazy protocol witness table cache variable for type Alert and conformance Alert;
  if (!lazy protocol witness table cache variable for type Alert and conformance Alert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Alert and conformance Alert);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for knownTLSAlert(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for knownTLSAlert(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Alert(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for Alert(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  v11 = 0uLL;
  if ((result & 0x10000) != 0)
  {
    v20 = -2;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    goto LABEL_6;
  }

  v48 = a3;
  v12 = result;
  v14 = *v4;
  v13 = v4[1];
  v15 = v4[2];
  outlined copy of Data._Representation(*v4, v13);
  v16 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v16 & 0x10000) != 0 || (v17 = ByteBuffer.readSlice(length:)(v16), v18 >> 60 == 15))
  {
    result = outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v14;
    v4[1] = v13;
    v20 = -2;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v4[2] = v15;
    v11 = 0uLL;
LABEL_6:
    *a4 = v11;
    *(a4 + 16) = v21;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
    *(a4 + 64) = v24;
    *(a4 + 80) = v20;
    return result;
  }

  v45 = v17;
  v46 = v18;
  v47 = v19;
  _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v45, v12, a1, a2 & 1, v37, &v39);
  if (v5)
  {
    v26 = v37[0];
    v25 = v37[1];
    v27 = v38;
    v28 = v45;
    v29 = v46;
LABEL_20:
    outlined consume of Data._Representation(v28, v29);
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v14;
    v4[1] = v13;
    v4[2] = v15;
    *&v39 = v26;
    *(&v39 + 1) = v25;
    LOBYTE(v40) = v27;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v34 = v48;
    *v48 = v26;
    v34[1] = v25;
    *(v34 + 16) = v27;
    return result;
  }

  result = v45;
  v30 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v45 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v45 >> 32;
  }

  else
  {
    v31 = BYTE6(v46);
  }

  if (!__OFSUB__(v31, v47))
  {
    if (v31 == v47)
    {
      outlined consume of Data._Representation(v45, v46);
      result = outlined consume of Data._Representation(v14, v13);
      v11 = v39;
      v21 = v40;
      v22 = v41;
      v23 = v42;
      v24 = v43;
      v20 = v44;
      goto LABEL_6;
    }

    v27 = 2;
    v32 = v45;
    v33 = v46;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v35[2] = v41;
    v35[3] = v42;
    v35[4] = v43;
    v36 = v44;
    v35[0] = v39;
    v35[1] = v40;
    outlined destroy of Extension(v35);
    v29 = v33;
    v28 = v32;
    v25 = 0;
    v26 = 1;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t Extension.type.getter()
{
  result = 0;
  switch(*(v0 + 80) >> 4)
  {
    case 1:
      result = 10;
      break;
    case 2:
      result = 43;
      break;
    case 3:
      result = 16;
      break;
    case 4:
      result = 51;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 13;
      break;
    case 7:
      result = 20;
      break;
    case 8:
      result = 57;
      break;
    case 9:
      result = 45;
      break;
    case 0xA:
      result = 41;
      break;
    case 0xB:
      result = 58;
      break;
    case 0xC:
      result = 35387;
      break;
    case 0xD:
      result = *v0;
      break;
    default:
      return result;
  }

  return result;
}

void Extension.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  v12 = *(v1 + 80);
  switch(v12 >> 4)
  {
    case 1u:
      MEMORY[0x1B274DB20](1);
      v22 = *(v2 + 16);
      MEMORY[0x1B274DB20](v22);
      if (v22)
      {
        v23 = (v2 + 32);
        do
        {
          v24 = *v23++;
          Hasher._combine(_:)(v24);
          --v22;
        }

        while (v22);
      }

      return;
    case 2u:
      MEMORY[0x1B274DB20](2);
      if (v3)
      {
        v14 = v2 >> 8;
        v15 = 1;
        goto LABEL_20;
      }

      MEMORY[0x1B274DB20](0);
      v34 = *(v2 + 16);
      MEMORY[0x1B274DB20](v34);
      if (v34)
      {
        v35 = (v2 + 33);
        do
        {
          v36 = *(v35 - 1);
          v37 = *v35;
          v35 += 2;
          Hasher._combine(_:)(v36);
          Hasher._combine(_:)(v37);
          --v34;
        }

        while (v34);
      }

      return;
    case 3u:
      MEMORY[0x1B274DB20](3);
      if (v4)
      {
        MEMORY[0x1B274DB20](1);

        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1B274DB20](0);
        v38 = *(v2 + 16);
        MEMORY[0x1B274DB20](v38);
        if (v38)
        {
          v39 = (v2 + 40);
          do
          {
            v40 = *(v39 - 1);
            v41 = *v39;

            String.hash(into:)();

            v39 += 2;
            --v38;
          }

          while (v38);
        }
      }

      return;
    case 4u:
      MEMORY[0x1B274DB20](4);

      Extension.KeyShare.hash(into:)(a1, v2, v3, v4, v5);
      return;
    case 5u:
      MEMORY[0x1B274DB20](5);
      if (BYTE4(v2) == 1)
      {
        goto LABEL_116;
      }

      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v2);
      return;
    case 6u:
      MEMORY[0x1B274DB20](6);
      v27 = *(v2 + 16);
      MEMORY[0x1B274DB20](v27);
      if (v27)
      {
        v28 = (v2 + 32);
        do
        {
          v29 = *v28++;
          Hasher._combine(_:)(v29);
          --v27;
        }

        while (v27);
      }

      return;
    case 7u:
      MEMORY[0x1B274DB20](7);
      if (v3)
      {
        goto LABEL_26;
      }

      MEMORY[0x1B274DB20](0);
      v42 = *(v2 + 16);
      MEMORY[0x1B274DB20](v42);
      if (v42)
      {
        v43 = (v2 + 32);
        do
        {
          v44 = *v43++;
          Hasher._combine(_:)(v44);
          --v42;
        }

        while (v42);
      }

      return;
    case 8u:
      MEMORY[0x1B274DB20](8);
      v30 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        if (v30 == 2)
        {
          v31 = *(v2 + 24);
        }

        else
        {
          v31 = 0;
        }
      }

      else if (v30)
      {
        v31 = v2 >> 32;
      }

      else
      {
        v31 = BYTE6(v3);
      }

      if (v31 < v4)
      {
        goto LABEL_129;
      }

      goto LABEL_92;
    case 9u:
      MEMORY[0x1B274DB20](9);
      v18 = *(v2 + 16);
      MEMORY[0x1B274DB20](v18);
      if (v18)
      {
        v19 = (v2 + 32);
        do
        {
          v20 = *v19++;
          Hasher._combine(_:)(v20);
          --v18;
        }

        while (v18);
      }

      return;
    case 0xAu:
      MEMORY[0x1B274DB20](10);
      if (v4)
      {
        MEMORY[0x1B274DB20](1);
        Hasher._combine(_:)(v2);
      }

      else
      {
        MEMORY[0x1B274DB20](0);
        specialized Array<A>.hash(into:)(a1, v2);

        specialized Array<A>.hash(into:)(a1, v3);
      }

      return;
    case 0xBu:
      MEMORY[0x1B274DB20](11);
      if ((v2 & 0x10000) != 0)
      {
LABEL_26:
        MEMORY[0x1B274DB20](1);
        v21 = v2;
      }

      else
      {
        v14 = v2 >> 8;
        v15 = 0;
LABEL_20:
        MEMORY[0x1B274DB20](v15);
        Hasher._combine(_:)(v2);
        v21 = v14;
      }

      goto LABEL_117;
    case 0xCu:
      v68 = v9;
      v69 = v8;
      MEMORY[0x1B274DB20](12);
      if ((v12 & 1) == 0)
      {
        MEMORY[0x1B274DB20](0);
        v32 = v3 >> 62;
        if ((v3 >> 62) > 1)
        {
          v33 = 0;
          if (v32 == 2)
          {
            v33 = *(v2 + 24);
          }
        }

        else if (v32)
        {
          v33 = v2 >> 32;
        }

        else
        {
          v33 = BYTE6(v3);
        }

        if (v33 < v4)
        {
          goto LABEL_130;
        }

        v47 = Data._Representation.subscript.getter();
        v49 = v48;
        Data.hash(into:)();
        outlined consume of Data._Representation(v47, v49);
        v50 = v6 >> 62;
        if ((v6 >> 62) > 1)
        {
          if (v50 == 2)
          {
            v51 = *(v5 + 24);
          }

          else
          {
            v51 = 0;
          }
        }

        else if (v50)
        {
          v51 = v5 >> 32;
        }

        else
        {
          v51 = BYTE6(v6);
        }

        if (v51 < v7)
        {
          goto LABEL_132;
        }

        v60 = Data._Representation.subscript.getter();
        v62 = v61;
        Data.hash(into:)();
        outlined consume of Data._Representation(v60, v62);

        specialized Array<A>.hash(into:)(a1, v69);
        return;
      }

      MEMORY[0x1B274DB20](1);
      Hasher._combine(_:)(v2);
      v16 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v16 == 2)
        {
          v17 = *(v3 + 24);
        }

        else
        {
          v17 = 0;
        }
      }

      else if (v16)
      {
        v17 = v3 >> 32;
      }

      else
      {
        v17 = BYTE6(v4);
      }

      if (v17 < v5)
      {
        goto LABEL_131;
      }

      v55 = Data._Representation.subscript.getter();
      v57 = v56;
      Data.hash(into:)();
      outlined consume of Data._Representation(v55, v57);
      if (v7 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        v58 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          if (v58 == 2)
          {
            v59 = *(v6 + 24);
          }

          else
          {
            v59 = 0;
          }
        }

        else if (v58)
        {
          v59 = v6 >> 32;
        }

        else
        {
          v59 = BYTE6(v7);
        }

        if (v59 < v69)
        {
          goto LABEL_133;
        }

        v63 = Data._Representation.subscript.getter();
        v65 = v64;
        Data.hash(into:)();
        outlined consume of Data._Representation(v63, v65);
      }

      if (v11 >> 60 == 15)
      {
LABEL_116:
        v21 = 0;
LABEL_117:
        Hasher._combine(_:)(v21);
        return;
      }

      Hasher._combine(_:)(1u);
      v66 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v66 == 2)
        {
          v67 = *(v68 + 24);
        }

        else
        {
          v67 = 0;
        }
      }

      else if (v66)
      {
        v67 = v68 >> 32;
      }

      else
      {
        v67 = BYTE6(v11);
      }

      if (v67 < v10)
      {
        goto LABEL_134;
      }

      goto LABEL_92;
    case 0xDu:
      MEMORY[0x1B274DB20](13);
      Hasher._combine(_:)(v2);
      v25 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_87;
        }

        v26 = *(v3 + 24);
      }

      else if (v25)
      {
        v26 = v3 >> 32;
      }

      else
      {
        v26 = BYTE6(v4);
      }

      goto LABEL_88;
    default:
      MEMORY[0x1B274DB20](0);
      if (v3 >> 60 == 15)
      {
        MEMORY[0x1B274DB20](1);
      }

      else
      {
        MEMORY[0x1B274DB20](0);
        v45 = v3 >> 62;
        if ((v3 >> 62) > 1)
        {
          v46 = 0;
          if (v45 == 2)
          {
            v46 = *(v2 + 24);
          }
        }

        else if (v45)
        {
          v46 = v2 >> 32;
        }

        else
        {
          v46 = BYTE6(v3);
        }

        if (v46 >= v4)
        {
          goto LABEL_92;
        }

        __break(1u);
LABEL_87:
        v26 = 0;
LABEL_88:
        if (v26 < v5)
        {
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
        }

        else
        {
LABEL_92:
          v52 = Data._Representation.subscript.getter();
          v54 = v53;
          Data.hash(into:)();

          outlined consume of Data._Representation(v52, v54);
        }
      }

      return;
  }
}

Swift::Int Extension.hashValue.getter()
{
  Hasher.init(_seed:)();
  Extension.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension()
{
  Hasher.init(_seed:)();
  Extension.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static Extension.__derived_enum_equals(_:_:)(v7, v9) & 1;
}

uint64_t specialized static Extension.__derived_enum_equals(_:_:)(uint64_t a1, unsigned __int16 *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v9 = *(a1 + 64);
  v11 = *(a1 + 80);
  switch(v11 >> 4)
  {
    case 1u:
      if ((a2[40] & 0xF0) != 0x10)
      {
        return 0;
      }

      v41 = *a2;
      v42 = *(result + 16);
      if (v42 != *(*a2 + 16))
      {
        return 0;
      }

      if (!v42 || result == v41)
      {
        return 1;
      }

      v43 = (result + 32);
      v44 = (v41 + 32);
      do
      {
        if (!v42)
        {
          goto LABEL_132;
        }

        v46 = *v43++;
        v45 = v46;
        v47 = *v44++;
        result = v45 == v47;
      }

      while (v45 == v47 && v42-- != 1);
      return result;
    case 2u:
      if ((a2[40] & 0xF0) != 0x20)
      {
        return 0;
      }

      v36 = *a2;
      v37 = *(a2 + 2);
      if (v5)
      {
        if ((v37 & (result == v36)) != 0 && BYTE1(result) == BYTE1(v36))
        {
          return 1;
        }
      }

      else if (v37 & 1) == 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary15ProtocolVersionV_Tt1g5(result, *a2))
      {
        return 1;
      }

      return 0;
    case 3u:
      if ((a2[40] & 0xF0) != 0x30)
      {
        return 0;
      }

      v38 = *(a2 + 2);
      if (v4)
      {
        if (v38 & 1) != 0 && (result == *a2 && v5 == *(a2 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          return 1;
        }
      }

      else if (v38 & 1) == 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(result, *a2))
      {
        return 1;
      }

      return 0;
    case 4u:
      if ((a2[40] & 0xF0) != 0x40)
      {
        return 0;
      }

      v15 = *a2;
      v16 = *(a2 + 2);
      v17 = v16 & 0x3000000000000000;
      v18 = (v4 >> 60) & 3;
      if (v18)
      {
        if (v18 != 1)
        {
          if (v17 != 0x2000000000000000)
          {
            return 0;
          }

          return result == v15;
        }

        if (v17 == 0x1000000000000000 && result == v15 && (specialized static ByteBuffer.== infix(_:_:)(v5, v4 & 0xCFFFFFFFFFFFFFFFLL, v6, *(a2 + 1), v16 & 0xCFFFFFFFFFFFFFFFLL, *(a2 + 3)) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v17 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(result, *a2) & 1) != 0)
      {
        return 1;
      }

      return 0;
    case 5u:
      LODWORD(v73[0]) = result;
      BYTE4(v73[0]) = BYTE4(result);
      if ((a2[40] & 0xF0) != 0x50)
      {
        return 0;
      }

      v49 = *a2;
      if ((v73[0] & 0x100000000) != 0)
      {
        if ((v49 & 0x100000000) != 0)
        {
          return 1;
        }
      }

      else if ((v49 & 0x100000000) == 0 && LODWORD(v73[0]) == v49)
      {
        return 1;
      }

      return 0;
    case 6u:
      if ((a2[40] & 0xF0) != 0x60)
      {
        return 0;
      }

      v54 = *a2;
      v55 = *(result + 16);
      if (v55 != *(*a2 + 16))
      {
        return 0;
      }

      if (!v55 || result == v54)
      {
        return 1;
      }

      v56 = (result + 32);
      v57 = (v54 + 32);
      while (v55)
      {
        v59 = *v56++;
        v58 = v59;
        v60 = *v57++;
        result = v58 == v60;
        if (v58 != v60 || v55-- == 1)
        {
          return result;
        }
      }

      goto LABEL_133;
    case 7u:
      if ((a2[40] & 0xF0) != 0x70)
      {
        return 0;
      }

      v39 = *a2;
      v40 = *(a2 + 2);
      if (v5)
      {
        return (v40 & (result == v39)) != 0;
      }

      if (v40)
      {
        return 0;
      }

      v63 = *(result + 16);
      if (v63 != *(v39 + 16))
      {
        return 0;
      }

      if (!v63 || result == v39)
      {
        return 1;
      }

      v64 = (result + 32);
      v65 = (v39 + 32);
      result = 1;
      do
      {
        if (*v64 != *v65)
        {
          return 0;
        }

        ++v64;
        ++v65;
        --v63;
      }

      while (v63);
      return result;
    case 8u:
      if ((a2[40] & 0xF0) != 0x80)
      {
        return 0;
      }

      v51 = *(a2 + 1);
      v52 = *(a2 + 2);
      v50 = *a2;
      v53 = *(a1 + 8);
      goto LABEL_89;
    case 9u:
      if ((a2[40] & 0xF0) != 0x90)
      {
        return 0;
      }

      v28 = *a2;
      v29 = *(result + 16);
      if (v29 != *(*a2 + 16))
      {
        return 0;
      }

      if (!v29 || result == v28)
      {
        return 1;
      }

      v30 = (result + 32);
      v31 = (v28 + 32);
      while (v29)
      {
        v33 = *v30++;
        v32 = v33;
        v34 = *v31++;
        result = v32 == v34;
        if (v32 != v34 || v29-- == 1)
        {
          return result;
        }
      }

      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      __break(1u);
      return result;
    case 0xAu:
      if ((a2[40] & 0xF0) != 0xA0)
      {
        return 0;
      }

      v15 = *a2;
      v62 = *(a2 + 2);
      if ((v4 & 1) == 0)
      {
        if ((v62 & 1) == 0)
        {
          v66 = *(a2 + 1);
          v67 = v5;
          if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(result, *a2) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(v67, v66))
          {
            return 1;
          }
        }

        return 0;
      }

      if ((v62 & 1) == 0)
      {
        return 0;
      }

      return result == v15;
    case 0xBu:
      if ((a2[40] & 0xF0) != 0xB0)
      {
        return 0;
      }

      v13 = *a2;
      v14 = *a2;
      if ((result & 0x10000) != 0)
      {
        if ((v13 & 0x10000) != 0 && result == v14)
        {
          return 1;
        }
      }

      else if ((v13 & 0x10000) == 0 && result == v14 && BYTE1(result) == BYTE1(v13))
      {
        return 1;
      }

      return 0;
    case 0xCu:
      v19 = *(a2 + 80);
      if ((v19 & 0xF0) != 0xC0)
      {
        return 0;
      }

      v20 = *a2;
      v21 = *(a2 + 1);
      v22 = *(a2 + 2);
      v23 = *(a2 + 3);
      v25 = *(a2 + 4);
      v24 = *(a2 + 5);
      v26 = *(a2 + 3);
      if (v11)
      {
        v27 = *(a2 + 4);
        v73[0] = result;
        v73[1] = v5;
        v73[2] = v4;
        v73[3] = v6;
        v73[4] = v7;
        v73[5] = v8;
        v74 = v10;
        v75 = v9;
        if (v19)
        {
          v70[0] = v20;
          v70[1] = v21;
          v70[2] = v22;
          v70[3] = v23;
          v70[4] = v25;
          v70[5] = v24;
          v71 = v26;
          v72 = v27;
          if (specialized static Extension.PAKE.PAKEServerHello.__derived_struct_equals(_:_:)(v73, v70))
          {
            return 1;
          }
        }
      }

      else
      {
        v69 = v10;
        if ((a2[40] & 1) == 0)
        {
          v68 = *(a2 + 3);
          if (specialized static ByteBuffer.== infix(_:_:)(result, v5, v4, v20, v21, v22) & 1) != 0 && (specialized static ByteBuffer.== infix(_:_:)(v6, v7, v8, v23, v25, v24) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(v69, v68))
          {
            return 1;
          }
        }
      }

      return 0;
    case 0xDu:
      if ((a2[40] & 0xF0) != 0xD0 || *a2 != result)
      {
        return 0;
      }

      v50 = *(a2 + 1);
      v51 = *(a2 + 2);
      v52 = *(a2 + 3);
      result = *(a1 + 8);
      v53 = *(a1 + 16);
      v4 = *(a1 + 24);
LABEL_89:

      return specialized static ByteBuffer.== infix(_:_:)(result, v53, v4, v50, v51, v52);
    default:
      if (*(a2 + 80) > 0xFu)
      {
        return 0;
      }

      v12 = *(a2 + 1);
      if (v5 >> 60 != 15)
      {
        return v12 >> 60 != 15 && (specialized static ByteBuffer.== infix(_:_:)(result, v5, v4, *a2, v12, *(a2 + 2)) & 1) != 0;
      }

      return v12 >> 60 == 15;
  }
}

unint64_t lazy protocol witness table accessor for type Extension and conformance Extension()
{
  result = lazy protocol witness table cache variable for type Extension and conformance Extension;
  if (!lazy protocol witness table cache variable for type Extension and conformance Extension)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension and conformance Extension);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Extension(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x73 && *(a1 + 81))
  {
    return (*a1 + 115);
  }

  v3 = ((*(a1 + 80) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 80) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x72)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Extension(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 115;
    if (a3 >= 0x73)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

void FinishedMessage.write(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a2 + 16);
      v7 = *(a2 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v6)
    {
      v7 = a2 >> 32;
    }

    else
    {
      v7 = BYTE6(a3);
    }

    if (v6)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a4 || v7 < v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = Data._Representation.subscript.getter();
  v11 = v10;
  Data.append(_:)();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v13)
    {
LABEL_15:
      outlined consume of Data._Representation(v9, v11);
      return;
    }

LABEL_20:
    outlined consume of Data._Representation(v9, v12);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_15;
  }

  v15 = *(v9 + 16);
  v14 = *(v9 + 24);
  outlined consume of Data._Representation(v9, v12);
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t _s15SwiftTLSLibrary15FinishedMessageVAA09HandshakeD8ProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s15SwiftTLSLibrary15FinishedMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
  if (v3)
  {
    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary15FinishedMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  v7 = __OFSUB__(v6, result);
  v8 = v6 - result;
  if (v7)
  {
    __break(1u);
    goto LABEL_25;
  }

  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    if (*(v2 + 24) >= v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5)
    {
      v10 = v2 >> 32;
    }

    else
    {
      v10 = BYTE6(v3);
    }

    if (v10 >= v9)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_19:
  if (v9 > 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_20:
  if (v9 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = Data._Representation.subscript.getter();
  a1[2] = v9;
  if (v11 >> 62 == 2)
  {
    v12 = *(result + 16);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FinishedMessage and conformance FinishedMessage()
{
  result = lazy protocol witness table cache variable for type FinishedMessage and conformance FinishedMessage;
  if (!lazy protocol witness table cache variable for type FinishedMessage and conformance FinishedMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishedMessage and conformance FinishedMessage);
  }

  return result;
}

Swift::Int SwiftTLSFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwiftTLSFeatureFlags()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B274DB20](0);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for SwiftTLSFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SwiftTLSFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t ByteBuffer.writeLengthPrefixedBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v6 = dispatch thunk of Collection.count.getter();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v12 = bswap64(v6);
  v13[3] = MEMORY[0x1E69E6290];
  v13[4] = MEMORY[0x1E6969DF8];
  v13[0] = &v12;
  v13[1] = v13;
  v7 = __swift_project_boxed_opaque_existential_0(v13, MEMORY[0x1E69E6290]);
  v9 = *v7;
  v8 = v7[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v13);
  result = ByteBuffer.writeBytes<A>(_:)(a1, a2, a3);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _s15SwiftTLSLibrary10ByteBufferV18readLengthPrefixedyxSgAeCzq_YKXEq_YKs5ErrorR_r0_lF@<X0>(void (*a1)(uint64_t *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v31 = a1;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v25 = *(v14 - 8);
  v15 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v19)
  {
    return (*(*(a3 - 8) + 56))(a6, 1, 1, a3);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = ByteBuffer.readSlice(length:)(result);
    if (v21 >> 60 == 15)
    {
      v23 = *(a3 - 8);
      return (*(v23 + 56))(a6, 1, 1, a3);
    }

    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31(&v28, v13);
    outlined consume of Data._Representation(v28, v29);
    if (v6)
    {
      return (*(v10 + 32))(v26, v13, a4);
    }

    else
    {
      v24 = *(a3 - 8);
      if ((*(v24 + 48))(v17, 1, a3) == 1)
      {
        (*(v25 + 8))(v17, v14);
        v23 = v24;
        return (*(v23 + 56))(a6, 1, 1, a3);
      }

      (*(v24 + 32))(a6, v17, a3);
      return (*(v24 + 56))(a6, 0, 1, a3);
    }
  }

  return result;
}

uint64_t SessionTicket.issued.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionTicket.issued.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SessionTicket.lifetime.setter(int a1)
{
  result = type metadata accessor for SessionTicket();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t SessionTicket.ticketAgeAdd.setter(int a1)
{
  result = type metadata accessor for SessionTicket();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SessionTicket.nonce.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionTicket() + 28));
  v2 = *v1;
  v3 = v1[2];
  outlined copy of Data._Representation(*v1, v1[1]);
  return v2;
}

uint64_t SessionTicket.nonce.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for SessionTicket() + 28));
  result = outlined consume of Data._Representation(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t SessionTicket.ticket.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionTicket() + 32));
  v2 = *v1;
  v3 = v1[2];
  outlined copy of Data._Representation(*v1, v1[1]);
  return v2;
}

uint64_t SessionTicket.ticket.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for SessionTicket() + 32));
  result = outlined consume of Data._Representation(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t SessionTicket.psk.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionTicket() + 36);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SessionTicket.psk.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionTicket() + 36);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SessionTicket.maxEarlyDataSize.setter(int a1)
{
  result = type metadata accessor for SessionTicket();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SessionTicket.cipherSuite.setter(__int16 a1)
{
  result = type metadata accessor for SessionTicket();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t SessionTicket.group.setter(__int16 a1)
{
  result = type metadata accessor for SessionTicket();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SessionTicket.alpn.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionTicket() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SessionTicket.alpn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionTicket() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionTicket.certificateBundle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SessionTicket() + 56);

  return outlined init with copy of PeerCertificateBundle(v3, a1);
}

uint64_t SessionTicket.certificateBundle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SessionTicket() + 56);

  return outlined assign with take of PeerCertificateBundle(a1, v3);
}

double _s15SwiftTLSLibrary13SessionTicketV7message3psk11cipherSuite5group4alpn17certificateBundle11currentTimeAcA03NewcD0V_9CryptoKit12SymmetricKeyVAA06CipherH0VAA10NamedGroupVSSSgAA015PeerCertificateL0V10Foundation4DateVtAA8TLSErrorOYKcfC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, __int16 a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v106 = a5;
  v14 = type metadata accessor for Date();
  v81 = *(v14 - 8);
  v84 = a8;
  v82 = v14;
  (*(v81 + 16))(a9, a8);
  if (*a1 >= 0x93A80u)
  {
    v15 = 604800;
  }

  else
  {
    v15 = *a1;
  }

  v16 = type metadata accessor for SessionTicket();
  v17 = v16[13];
  *(a9 + v16[5]) = v15;
  v18 = (a9 + v17);
  *(a9 + v16[6]) = *(a1 + 4);
  v105 = *(a1 + 48);
  v19 = v105;
  v104 = *(a1 + 32);
  v20 = a9 + v16[8];
  *v20 = v104;
  v79 = v20;
  *(v20 + 16) = v19;
  v21 = *(a1 + 8);
  v103 = *(a1 + 24);
  v102 = v21;
  v22 = a9 + v16[7];
  *v22 = *(a1 + 8);
  v77 = v22;
  *(v22 + 16) = *(a1 + 24);
  v23 = v16[9];
  v24 = type metadata accessor for SymmetricKey();
  v25 = *(v24 - 8);
  v78 = v23;
  v83 = a2;
  (*(v25 + 16))(a9 + v23, a2, v24);
  *(a9 + v16[11]) = a3;
  *(a9 + v16[12]) = a4;
  *v18 = v106;
  v18[1] = a6;
  v26 = a1;
  v88 = v16;
  v27 = v16[14];
  v28 = a7;
  v76 = v27;
  outlined init with copy of PeerCertificateBundle(a7, a9 + v27);
  v29 = *(a1 + 56);
  v100 = MEMORY[0x1E69E7CD0];
  v101 = v29;
  v30 = *(v29 + 16);
  if (v30)
  {
    v74 = v26;
    v75 = a9;
    v86 = v24;
    outlined init with copy of ByteBuffer(&v104, &v94);
    outlined init with copy of ByteBuffer(&v102, &v94);
    outlined init with copy of [Extension](&v101, &v94);
    if (*(v29 + 16))
    {
      v31 = v25;
      a9 = 0;
      v26 = 0;
      v24 = v29 + 32;
      v28 = v30 - 1;
      LODWORD(v106) = 1;
      do
      {
        v32 = *(v24 + 16);
        v94 = *v24;
        v95 = v32;
        v33 = *(v24 + 32);
        v34 = *(v24 + 48);
        v35 = *(v24 + 64);
        v99 = *(v24 + 80);
        v97 = v34;
        v98 = v35;
        v96 = v33;
        v25 = v26 + 1;
        v36 = 42;
        switch(v99 >> 4)
        {
          case 1:

            v36 = 10;
            break;
          case 2:
            sub_1B260EDD8(v94, BYTE8(v94) & 1);
            v36 = 43;
            break;
          case 3:
            outlined copy of Extension.ApplicationLayerProtocolNegotiation();
            v36 = 16;
            break;
          case 4:
            outlined copy of Extension.KeyShare(v94, *(&v94 + 1), v95);
            v36 = 51;
            break;
          case 5:
            break;
          case 6:

            v36 = 13;
            break;
          case 7:
            sub_1B260EDD8(v94, BYTE8(v94) & 1);
            v36 = 20;
            break;
          case 8:
            outlined copy of Data._Representation(v94, *(&v94 + 1));
            v36 = 57;
            break;
          case 9:

            v36 = 45;
            break;
          case 0xA:
            outlined copy of Extension.PreSharedKey(v94, *(&v94 + 1), v95 & 1);
            v36 = 41;
            break;
          case 0xB:
            v36 = 58;
            break;
          case 0xC:
            outlined copy of Extension.PAKE(v94, *(&v94 + 1), v95, *(&v95 + 1), v96, *(&v96 + 1), v97, *(&v97 + 1), v98, *(&v98 + 1), v99 & 1);
            v36 = 35387;
            break;
          case 0xD:
            v37 = v94;
            outlined copy of Data._Representation(*(&v94 + 1), v95);
            v36 = v37;
            break;
          default:
            outlined copy of Data?(v94, *(&v94 + 1));
            v36 = 0;
            break;
        }

        if ((specialized Set._Variant.insert(_:)(&v92, v36) & 1) == 0)
        {

          outlined destroy of P256.Signing.PrivateKey?(&v101, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, logger);
          outlined init with copy of Extension(&v94, &v92);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();
          outlined destroy of Extension(&v94);
          v46 = v75;
          v47 = v82;
          v48 = v86;
          if (os_log_type_enabled(v44, v45))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *&v92 = v50;
            *v49 = 136315138;
            v51 = 0;
            v106 = v31;
            switch(v99 >> 4)
            {
              case 1:
                v51 = 10;
                break;
              case 2:
                v51 = 43;
                break;
              case 3:
                v51 = 16;
                break;
              case 4:
                v51 = 51;
                break;
              case 5:
                v51 = 42;
                break;
              case 6:
                v51 = 13;
                break;
              case 7:
                v51 = 20;
                break;
              case 8:
                v51 = 57;
                break;
              case 9:
                v51 = 45;
                break;
              case 0xA:
                v51 = 41;
                break;
              case 0xB:
                v51 = 58;
                break;
              case 0xC:
                v51 = -30149;
                break;
              case 0xD:
                v51 = v94;
                break;
              default:
                break;
            }

            v71 = ExtensionType.description.getter(v51);
            v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v92);

            *(v49 + 4) = v73;
            _os_log_impl(&dword_1B25F5000, v44, v45, "server offered duplicate extension of type %s on new session ticket", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x1B274ECF0](v50, -1, -1);
            MEMORY[0x1B274ECF0](v49, -1, -1);

            v52 = a7;
            v53 = v84;
            v48 = v86;
            v31 = v106;
          }

          else
          {

            v52 = a7;
            v53 = v84;
          }

          v92 = xmmword_1B26C6410;
          v93 = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined destroy of NewSessionTicket(v74);
          outlined destroy of Extension(&v94);
          v68 = *(v81 + 8);
          v68(v53, v82);
          outlined destroy of PeerCertificateBundle(v52);
          v69 = *(v31 + 8);
          v69(v83, v48);
          v70 = v79;
          goto LABEL_67;
        }

        if ((v99 & 0xF0) == 0x50)
        {
          v38 = v28;
          v39 = v31;
          v40 = BYTE4(v94);
          if (v106 & 1) == 0 || (BYTE4(v94))
          {

            outlined destroy of P256.Signing.PrivateKey?(&v101, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v54 = type metadata accessor for Logger();
            __swift_project_value_buffer(v54, logger);
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.error.getter();
            v46 = v75;
            v48 = v86;
            if (os_log_type_enabled(v55, v56))
            {
              v89 = v56;
              v57 = v106;
              v58 = v106 | v40;
              v59 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              *&v92 = v80;
              *v59 = 136315394;
              if (v57)
              {
                v60 = 0xE300000000000000;
                v61 = 7104878;
              }

              else
              {
                lazy protocol witness table accessor for type UInt32 and conformance UInt32();
                v61 = BinaryInteger.description.getter();
                v60 = v62;
              }

              v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, &v92);

              *(v59 + 4) = v63;
              *(v59 + 12) = 2080;
              if (v58)
              {
                v64 = 0xE300000000000000;
                v48 = v86;
                v65 = 7104878;
              }

              else
              {
                lazy protocol witness table accessor for type UInt32 and conformance UInt32();
                v65 = BinaryInteger.description.getter();
                v64 = v66;
                v48 = v86;
              }

              v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, &v92);

              *(v59 + 14) = v67;
              _os_log_impl(&dword_1B25F5000, v55, v89, "invalid early data extension: old value %s new value %s", v59, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1B274ECF0](v80, -1, -1);
              MEMORY[0x1B274ECF0](v59, -1, -1);
            }

            v92 = xmmword_1B26C6410;
            v93 = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined destroy of NewSessionTicket(v74);
            v68 = *(v81 + 8);
            v47 = v82;
            v68(v84, v82);
            outlined destroy of PeerCertificateBundle(a7);
            v69 = *(v39 + 8);
            v69(v83, v48);
            v70 = v79;
LABEL_67:
            v68(v46, v47);
            outlined consume of Data._Representation(*v77, *(v77 + 8));
            outlined consume of Data._Representation(*v70, *(v70 + 8));
            v69(v46 + v78, v48);

            outlined destroy of PeerCertificateBundle(v46 + v76);
            *&result = 5;
            *a10 = xmmword_1B26C6410;
            *(a10 + 16) = 2;
            return result;
          }

          LODWORD(v106) = 0;
          a9 = v94;
          v28 = v38;
          if (v38 == v26)
          {
            goto LABEL_36;
          }
        }

        else
        {
          outlined destroy of Extension(&v94);
          if (v28 == v26)
          {
LABEL_36:
            outlined destroy of NewSessionTicket(v74);
            outlined destroy of P256.Signing.PrivateKey?(&v101, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
            (*(v81 + 8))(v84, v82);
            outlined destroy of PeerCertificateBundle(a7);
            (*(v31 + 8))(v83, v86);

            if (v106)
            {
              v42 = 0;
            }

            else
            {
              v42 = a9;
            }

            a9 = v75;
            goto LABEL_40;
          }
        }

        v24 += 88;
        ++v26;
      }

      while (v25 < *(v29 + 16));
    }

    __break(1u);
  }

  outlined init with copy of ByteBuffer(&v104, &v94);
  outlined init with copy of ByteBuffer(&v102, &v94);
  outlined destroy of NewSessionTicket(v26);
  (*(v81 + 8))(v84, v82);
  outlined destroy of PeerCertificateBundle(v28);
  (*(v25 + 8))(v83, v24);

  v42 = 0;
LABEL_40:
  *(a9 + v88[10]) = v42;
  return result;
}

uint64_t ByteBuffer.writeOptional<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t, _BYTE *), uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26[-v12];
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v9 + 8))(v13, v8);
    v27 = 0;
    v30 = MEMORY[0x1E69E6290];
    v31 = MEMORY[0x1E6969DF8];
    v28 = &v27;
    v29 = &v28;
    v18 = __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
    v20 = *v18;
    v19 = v18[1];
    Data._Representation.append(contentsOf:)();
    result = __swift_destroy_boxed_opaque_existential_0(&v28);
  }

  else
  {
    (*(v14 + 32))(v17, v13, a4);
    v27 = -1;
    v30 = MEMORY[0x1E69E6290];
    v31 = MEMORY[0x1E6969DF8];
    v28 = &v27;
    v29 = &v28;
    v22 = __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
    v24 = *v22;
    v23 = v22[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v28);
    a2(v4, v17);
    result = (*(v14 + 8))(v17, a4);
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s15SwiftTLSLibrary13SessionTicketV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a3;
  v83 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v70 - v8;
  v10 = type metadata accessor for PeerCertificateBundle(0);
  v84 = *(v10 - 8);
  v11 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  v85 = v14;
  v86 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v70 - v23;
  v25 = 0;
  v26 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v25 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v26)
  {
    v25 = a1;
LABEL_6:
    outlined copy of Data._Representation(a1, a2);
  }

  v92 = a1;
  v93 = a2;
  v94 = v25;
  v82 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v27)
  {
    goto LABEL_38;
  }

  v81 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
  if ((v81 & 0x100000000) != 0)
  {
    goto LABEL_38;
  }

  v80 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
  if ((v80 & 0x100000000) != 0)
  {
    goto LABEL_38;
  }

  v28 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v29)
  {
    goto LABEL_38;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_50:
    v61 = type metadata accessor for SessionTicket();
    v62 = v83;
    v95 = (v83 + v61[13]);
    outlined init with take of PeerCertificateBundle(v9, v13);
    Date.init(timeIntervalSinceReferenceDate:)();
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(v92, v93);
    v63 = v80;
    *(v62 + v61[5]) = v81;
    *(v62 + v61[6]) = v63;
    v64 = (v62 + v61[7]);
    v65 = v78;
    *v64 = v77;
    v64[1] = v65;
    v64[2] = v79;
    v66 = (v62 + v61[8]);
    v67 = v75;
    *v66 = v74;
    v66[1] = v67;
    v66[2] = v76;
    v73(v62 + v61[9], v24, v85);
    *(v62 + v61[10]) = v19;
    *(v62 + v61[11]) = v22;
    *(v62 + v61[12]) = v71;
    v68 = v95;
    object = v70.value._object;
    *v95 = v70.value._countAndFlagsBits;
    v68[1] = object;
    return outlined init with take of PeerCertificateBundle(v13, v62 + v61[14]);
  }

  v30 = ByteBuffer.readSlice(length:)(v28);
  if (v31 >> 60 == 15)
  {
LABEL_38:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, logger);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1B25F5000, v55, v56, "Unable to parse decrypted session ticket", v57, 2u);
      MEMORY[0x1B274ECF0](v57, -1, -1);
    }

    v87 = xmmword_1B26C6440;
    v90 = xmmword_1B26C6440;
    v58 = 2;
    v91 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a1, a2);
    goto LABEL_43;
  }

  v77 = v30;
  v78 = v31;
  v79 = v32;
  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v34)
  {
    goto LABEL_16;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v35 = ByteBuffer.readSlice(length:)(result);
  if (v36 >> 60 == 15)
  {
LABEL_16:
    v38 = v77;
    v39 = v78;
LABEL_37:
    outlined consume of ByteBuffer?(v38, v39);
    goto LABEL_38;
  }

  v74 = v35;
  v75 = v36;
  v76 = v37;
  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v40)
  {
LABEL_36:
    outlined consume of ByteBuffer?(v77, v78);
    v38 = v74;
    v39 = v75;
    goto LABEL_37;
  }

  if (result < 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (v41 >> 60 == 15)
  {
    goto LABEL_36;
  }

  v43 = v41 >> 62;
  if ((v41 >> 62) > 1)
  {
    if (v43 == 2)
    {
      v44 = *(result + 24);
    }

    else
    {
      v44 = 0;
    }
  }

  else if (v43)
  {
    v44 = result >> 32;
  }

  else
  {
    v44 = BYTE6(v41);
  }

  if (v44 >= v42)
  {
    v45 = result;
    v73 = v42;
    v72 = v41;
    *&v90 = Data._Representation.subscript.getter();
    *(&v90 + 1) = v46;
    SymmetricKey.init<A>(data:)();
    outlined consume of ByteBuffer?(v45, v72);
    v47 = v86 + 32;
    v73 = *(v86 + 32);
    v48 = v19;
    v49 = v85;
    v73(v22, v48, v85);
    v72 = v47;
    v73(v24, v22, v49);
    v50 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
    if ((v50 & 0x100000000) != 0)
    {
      (*(v86 + 8))(v24, v49);
      goto LABEL_36;
    }

    LODWORD(v19) = v50;
    v51 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v51 & 0x10000) != 0)
    {
      goto LABEL_34;
    }

    LOWORD(v22) = v51;
    v52 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v52 & 0x10000) != 0)
    {
      goto LABEL_34;
    }

    v71 = v52;
    v53 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
    if ((v53 & 0x100) != 0)
    {
      goto LABEL_34;
    }

    if (v53)
    {
      v70 = ByteBuffer.readApplicationLayerProtocol()();
      if (!v70.value._object)
      {
LABEL_34:
        (*(v86 + 8))(v24, v85);
        goto LABEL_36;
      }
    }

    else
    {
      v70 = 0;
    }

    v60 = v87;
    _s15SwiftTLSLibrary10ByteBufferV25readPeerCertificateBundleAA0fgH0VSgyAA8TLSErrorOYKF(&v88, v9);
    *&v87 = v60;
    if (v60)
    {
      v87 = v88;
      v58 = v89;
      outlined consume of ByteBuffer?(v77, v78);
      outlined consume of ByteBuffer?(v74, v75);
      outlined consume of String??(v70.value._countAndFlagsBits, v70.value._object);
      outlined consume of Data._Representation(a1, a2);
      (*(v86 + 8))(v24, v85);
LABEL_43:
      result = outlined consume of Data._Representation(v92, v93);
      v59 = v95;
      *v95 = v87;
      *(v59 + 16) = v58;
      return result;
    }

    if ((*(v84 + 48))(v9, 1, v10) == 1)
    {
      (*(v86 + 8))(v24, v85);
      outlined consume of ByteBuffer?(v77, v78);
      outlined consume of ByteBuffer?(v74, v75);
      outlined consume of String??(v70.value._countAndFlagsBits, v70.value._object);
      outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
      goto LABEL_38;
    }

    goto LABEL_50;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t ByteBuffer.readOptional<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v7 = type metadata accessor for Optional();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v16 & 0x100) != 0)
  {
    v18 = *(v23 + 56);
    v19 = a3;
    v20 = 1;
  }

  else
  {
    if (v16)
    {
      a1(v3);
      if ((*(v12 + 48))(v11, 1, a2) == 1)
      {
        (*(v23 + 8))(v11, v7);
        return (*(v23 + 56))(a3, 1, 1, v7);
      }

      else
      {
        v21 = *(v12 + 32);
        v21(v15, v11, a2);
        v21(a3, v15, a2);
        (*(v12 + 56))(a3, 0, 1, a2);
        return (*(v23 + 56))(a3, 0, 1, v7);
      }
    }

    (*(v12 + 56))(a3, 1, 1, a2);
    v18 = *(v23 + 56);
    v19 = a3;
    v20 = 0;
  }

  return v18(v19, v20, 1, v7);
}

uint64_t SessionTicket.isCompatibleWith(_:configuration:currentTime:)(uint64_t a1, Swift::OpaquePointer *a2, uint64_t a3)
{
  v38 = a2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SessionTicket();
  v12 = *(a1 + 80);
  if (*(v12 + 16))
  {
    v13 = v11;
    if (*(v3 + *(v11 + 44)) == *(v12 + 32))
    {
      v35[0] = v10;
      v35[1] = a3;
      v36 = v7;
      v37 = v6;
      v14 = *(a1 + 96);
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = v14 + 56;
        while (1)
        {
          v17 = *(v16 + 56);
          if ((v17 & 0xF0) == 0x30)
          {
            v18 = *(v16 - 8);
            if ((v18 & 1) == 0)
            {
              v19 = (v3 + v13[13]);
              v20 = v19[1];
              if (v20)
              {
                v46 = v35;
                v21 = *(v16 - 24);
                v22 = *(v16 - 16);
                v23 = *v16;
                v44 = *(v16 + 8);
                v45 = v23;
                v24 = *(v16 + 16);
                v42 = *(v16 + 24);
                v43 = v24;
                v25 = *(v16 + 32);
                v40 = *(v16 + 40);
                v41 = v25;
                v39 = *(v16 + 48);
                v47 = *v19;
                v48 = v20;
                MEMORY[0x1EEE9AC00](v11);
                outlined copy of Extension.ApplicationLayerProtocolNegotiation();
                v26 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v34, v21);
                v11 = outlined consume of Extension(v21, v22, v18, v45, v44, v43, v42, v41, v40, v39, v17);
                if ((v26 & 1) == 0)
                {
                  break;
                }
              }
            }
          }

          v16 += 88;
          if (!--v15)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v27 = v3;
        v28 = v3 + v13[14];
        if (PeerCertificateBundle.wouldBeTrusted(forKeys:)(v38[2]))
        {
          v29 = *(v27 + v13[5]);
          v30 = v35[0];
          Date.addingTimeInterval(_:)();
          if (static Date.< infix(_:_:)())
          {
            lazy protocol witness table accessor for type Date and conformance Date();
            v31 = v37;
            v32 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v36 + 8))(v30, v31);
            if ((v32 & 1) == 0)
            {
              return 1;
            }
          }

          else
          {
            (*(v36 + 8))(v30, v37);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t SessionTicket.obfuscatedTicketAge(currentTime:)()
{
  result = Date.timeIntervalSince(_:)();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 4294967300.0)
  {
    return *(v0 + *(type metadata accessor for SessionTicket() + 24)) + v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::Void __swiftcall ByteBuffer.writeLengthPrefixedString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v9[5] = *MEMORY[0x1E69E9840];
  if ((a1._object & 0x1000000000000000) != 0)
  {
    v3 = String.UTF8View._foreignCount()();
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }

  else if ((a1._object & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a1._object) & 0xF;
  }

  else
  {
    v3 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v8 = bswap64(v3);
  v9[3] = MEMORY[0x1E69E6290];
  v9[4] = MEMORY[0x1E6969DF8];
  v9[0] = &v8;
  v9[1] = v9;
  v4 = __swift_project_boxed_opaque_existential_0(v9, MEMORY[0x1E69E6290]);
  v6 = *v4;
  v5 = v4[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v9);
  specialized Data.append<A>(contentsOf:)(countAndFlagsBits, object);
  if ((object & 0x1000000000000000) != 0)
  {
    String.UTF8View._foreignCount()();
  }

  v7 = *MEMORY[0x1E69E9840];
}

Swift::String_optional __swiftcall ByteBuffer.readLengthPrefixedString()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v1)
  {
    goto LABEL_4;
  }

  if (v0 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v0 = ByteBuffer.readSlice(length:)(v0);
  if (v2 >> 60 != 15)
  {
    v4 = v0;
    v5 = v2;
    v6 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v6 == 2)
      {
        v1 = *(v0 + 24);
      }

      else
      {
        v1 = 0;
      }
    }

    else if (v6)
    {
      v1 = v0 >> 32;
    }

    else
    {
      v1 = BYTE6(v2);
    }

    if (v1 >= v3)
    {
      v7 = Data._Representation.subscript.getter();
      v9 = v8;
      v10 = specialized Data.withContiguousStorageIfAvailable<A>(_:)(v7, v8);
      if (v11)
      {
        v12 = v10;
        v13 = v4;
        v14 = v11;
      }

      else
      {
        v20 = v7;
        v21 = v9;
        outlined copy of Data._Representation(v7, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, &_ss19_HasContiguousBytes_pMR);
        if (swift_dynamicCast())
        {
          outlined init with take of ContiguousBytes(v18, v22);
          __swift_project_boxed_opaque_existential_0(v22, v23);
          if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
          {
            outlined consume of Data._Representation(v7, v9);
            __swift_project_boxed_opaque_existential_0(v22, v23);
            dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
            outlined consume of ByteBuffer?(v4, v5);
            v15 = v18[0];
            __swift_destroy_boxed_opaque_existential_0(v22);
            v1 = *(&v15 + 1);
            v0 = v15;
            goto LABEL_24;
          }

          __swift_destroy_boxed_opaque_existential_0(v22);
        }

        else
        {
          v19 = 0;
          memset(v18, 0, sizeof(v18));
          outlined destroy of P256.Signing.PrivateKey?(v18, &_ss19_HasContiguousBytes_pSgMd, &_ss19_HasContiguousBytes_pSgMR);
        }

        v12 = _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(v7, v9);
        v14 = v16;
        v13 = v4;
      }

      outlined consume of ByteBuffer?(v13, v5);
      outlined consume of Data._Representation(v7, v9);
      v1 = v14;
      v0 = v12;
      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_4:
  v0 = 0;
  v1 = 0;
LABEL_24:
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t outlined init with copy of PeerCertificateBundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PeerCertificateBundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of [Extension](uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PeerCertificateBundle(uint64_t a1)
{
  v2 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t outlined copy of Extension.PAKE(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
    outlined copy of Data._Representation(a2, a3);
    outlined copy of Data?(a5, a6);

    return outlined copy of Data?(a8, a9);
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    outlined copy of Data._Representation(a4, a5);
  }
}

uint64_t outlined copy of Extension.PreSharedKey(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined init with take of PeerCertificateBundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t outlined consume of Extension(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 4;
  if (v11 <= 6)
  {
    if (a11 >> 4 > 2u)
    {
      if (v11 == 3)
      {
        return outlined consume of Extension.ApplicationLayerProtocolNegotiation();
      }

      if (v11 == 4)
      {
        return outlined consume of Extension.KeyShare(result, a2, a3);
      }

      if (v11 != 6)
      {
        return result;
      }
    }

    else
    {
      if (!v11)
      {
        return outlined consume of ByteBuffer?(result, a2);
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
          return result;
        }

        return sub_1B262A924(result, a2 & 1);
      }
    }
  }

  if (a11 >> 4 > 9u)
  {
    if (v11 == 10)
    {
      return outlined consume of Extension.PreSharedKey(result, a2, a3 & 1);
    }

    if (v11 == 12)
    {
      return outlined consume of Extension.PAKE(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1);
    }

    if (v11 != 13)
    {
      return result;
    }

    result = a2;
    a2 = a3;
    return outlined consume of Data._Representation(result, a2);
  }

  switch(v11)
  {
    case 7u:
      return sub_1B262A924(result, a2 & 1);
    case 8u:
      return outlined consume of Data._Representation(result, a2);
    case 9u:
  }

  return result;
}

uint64_t outlined consume of Extension.KeyShare(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (v3 == 1)
  {
    return outlined consume of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
  }

  if (!v3)
  {
  }

  return result;
}

uint64_t outlined consume of Extension.PreSharedKey(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined consume of Extension.PAKE(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
    outlined consume of Data._Representation(a2, a3);
    outlined consume of ByteBuffer?(a5, a6);

    return outlined consume of ByteBuffer?(a8, a9);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(a4, a5);
  }
}

uint64_t specialized static SessionTicket.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SessionTicket();
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4;
  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  if ((specialized static ByteBuffer.== infix(_:_:)(*(a1 + v6), *(a1 + v6 + 8), *(a1 + v6 + 16), *(a2 + v6), *(a2 + v6 + 8), *(a2 + v6 + 16)) & 1) == 0)
  {
    return 0;
  }

  v7 = v5[8];
  if ((specialized static ByteBuffer.== infix(_:_:)(*(a1 + v7), *(a1 + v7 + 8), *(a1 + v7 + 16), *(a2 + v7), *(a2 + v7 + 8), *(a2 + v7 + 16)) & 1) == 0 || (MEMORY[0x1B274D200](a1 + v5[9], a2 + v5[9]) & 1) == 0 || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]) || *(a1 + v5[12]) != *(a2 + v5[12]))
  {
    return 0;
  }

  v8 = v5[13];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (v12 && (*v9 == *v11 && v10 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v12)
  {
    return 0;
  }

LABEL_15:
  v13 = v5[14];

  return specialized static PeerCertificateBundle.__derived_struct_equals(_:_:)(a1 + v13, a2 + v13);
}

uint64_t _s15SwiftTLSLibrary23ServerSessionKeyManagerV15postClientHello06clientI5Bytes11currentTime13negotiatedPSK11binderValue18bindersArrayLength11useRawEPSKsyAA10ByteBufferV_10Foundation4DateVAA11GeneralEPSKVSgALSgSiSgSbtAA8TLSErrorOYKF(int64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12)
{
  v18 = *(a12 + 16);
  v19 = *(a12 + 24);
  v20 = type metadata accessor for SessionKeyManager();
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postClientHelloyyAA10ByteBufferV_10Foundation4DateVAA11GeneralEPSKVSgAGSgSiSgSbtAA8TLSErrorOYKF(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10 & 1, a11, v20);
  if (!v24)
  {
    return 1;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary23ServerSessionKeyManagerV07sendingC5Hello06serverH011ecdheSecret9pskFailedAA10ByteBufferVAA0cH0V_9CryptoKit09SymmetricE0VSbtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for SessionKeyManager();
  return _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingServerHello__9pskFailedAA10ByteBufferVAA0nO0V_9CryptoKit09SymmetricD0VSbtAA8TLSErrorOYKF(a1, a2, a3, v9);
}

uint64_t _s15SwiftTLSLibrary23ClientSessionKeyManagerV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKFTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for SessionKeyManager();
  return _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKF(v3);
}

uint64_t _s15SwiftTLSLibrary23ServerSessionKeyManagerV07sendingC8Finished06serverH7MessageAA10ByteBufferVAA0hJ0V_tAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for SessionKeyManager();
  return _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21sendingServerFinishedyAA10ByteBufferVAA0O7MessageVAA8TLSErrorOYKF(a1, a2, a3, v9);
}

uint64_t ClientSessionKeyManager.init()()
{
  type metadata accessor for SessionKeyManager.State();

  return swift_storeEnumTagMultiPayload();
}

uint64_t SessionKeyManager.clientEarlyTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SessionKeyManager.State.EarlySecret();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SessionKeyManager.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  (*(v13 + 16))(&v23 - v15, v3, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v11, v16, v7);
      v18 = *(v7 + 44);
      v19 = type metadata accessor for SymmetricKey();
      v20 = *(v19 - 8);
      (*(v20 + 16))(a2, &v11[v18], v19);
      (*(v8 + 8))(v11, v7);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }

  else
  {
    (*(v13 + 8))(v16, v12);
  }

  v22 = type metadata accessor for SymmetricKey();
  return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
}

uint64_t SessionKeyManager.clientHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for SessionKeyManager.State.MasterSecret();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for SessionKeyManager.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  (*(v17 + 16))(&v34 - v19, v3, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      (*(v17 + 8))(v20, v16);
LABEL_7:
      v22 = type metadata accessor for SymmetricKey();
      return (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
    }

    (*(v12 + 32))(v15, v20, v11);
    v29 = *(v11 + 40);
    v30 = type metadata accessor for SymmetricKey();
    v31 = *(v30 - 8);
    v32 = &v15[v29];
    v33 = v35;
    (*(v31 + 16))(v35, v32, v30);
    (*(v12 + 8))(v15, v11);
    return (*(v31 + 56))(v33, 0, 1, v30);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    (*(v7 + 32))(v10, v20, v6);
    v24 = *(v6 + 40);
    v25 = type metadata accessor for SymmetricKey();
    v26 = *(v25 - 8);
    v27 = &v10[v24];
    v28 = v35;
    (*(v26 + 16))(v35, v27, v25);
    (*(v7 + 8))(v10, v6);
    return (*(v26 + 56))(v28, 0, 1, v25);
  }
}

uint64_t SessionKeyManager.serverHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for SessionKeyManager.State.MasterSecret();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for SessionKeyManager.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  (*(v17 + 16))(&v34 - v19, v3, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      (*(v17 + 8))(v20, v16);
LABEL_7:
      v22 = type metadata accessor for SymmetricKey();
      return (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
    }

    (*(v12 + 32))(v15, v20, v11);
    v29 = *(v11 + 44);
    v30 = type metadata accessor for SymmetricKey();
    v31 = *(v30 - 8);
    v32 = &v15[v29];
    v33 = v35;
    (*(v31 + 16))(v35, v32, v30);
    (*(v12 + 8))(v15, v11);
    return (*(v31 + 56))(v33, 0, 1, v30);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    (*(v7 + 32))(v10, v20, v6);
    v24 = *(v6 + 44);
    v25 = type metadata accessor for SymmetricKey();
    v26 = *(v25 - 8);
    v27 = &v10[v24];
    v28 = v35;
    (*(v26 + 16))(v35, v27, v25);
    (*(v7 + 8))(v10, v6);
    return (*(v26 + 56))(v28, 0, 1, v25);
  }
}

uint64_t SessionKeyManager.clientApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for SessionKeyManager.State.AllSecrets();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for SessionKeyManager.State.MasterSecret();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = type metadata accessor for SessionKeyManager.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  (*(v17 + 16))(&v32 - v19, v3, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v7 + 32))(v10, v20, v6);
      v22 = type metadata accessor for SymmetricKey();
      v23 = *(v22 - 8);
      v24 = v33;
      (*(v23 + 16))(v33, v10, v22);
      (*(v7 + 8))(v10, v6);
      return (*(v23 + 56))(v24, 0, 1, v22);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    (*(v17 + 8))(v20, v16);
LABEL_6:
    v26 = type metadata accessor for SymmetricKey();
    return (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  }

  (*(v12 + 32))(v15, v20, v11);
  v27 = *(v11 + 48);
  v28 = type metadata accessor for SymmetricKey();
  v29 = *(v28 - 8);
  v30 = &v15[v27];
  v31 = v33;
  (*(v29 + 16))(v33, v30, v28);
  (*(v12 + 8))(v15, v11);
  return (*(v29 + 56))(v31, 0, 1, v28);
}

uint64_t SessionKeyManager.serverApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for SessionKeyManager.State.AllSecrets();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for SessionKeyManager.State.MasterSecret();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for SessionKeyManager.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  (*(v17 + 16))(&v34 - v19, v3, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v7 + 32))(v10, v20, v6);
      v22 = *(v6 + 36);
      v23 = type metadata accessor for SymmetricKey();
      v24 = *(v23 - 8);
      v25 = &v10[v22];
      v26 = v35;
      (*(v24 + 16))(v35, v25, v23);
      (*(v7 + 8))(v10, v6);
      return (*(v24 + 56))(v26, 0, 1, v23);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    (*(v17 + 8))(v20, v16);
LABEL_6:
    v28 = type metadata accessor for SymmetricKey();
    return (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
  }

  (*(v12 + 32))(v15, v20, v11);
  v29 = *(v11 + 52);
  v30 = type metadata accessor for SymmetricKey();
  v31 = *(v30 - 8);
  v32 = &v15[v29];
  v33 = v35;
  (*(v31 + 16))(v35, v32, v30);
  (*(v12 + 8))(v15, v11);
  return (*(v31 + 56))(v33, 0, 1, v30);
}

uint64_t SessionKeyManager.exporterMasterSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for SessionKeyManager.State.AllSecrets();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for SessionKeyManager.State.MasterSecret();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for SessionKeyManager.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  (*(v17 + 16))(&v34 - v19, v3, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v7 + 32))(v10, v20, v6);
      v22 = *(v6 + 40);
      v23 = type metadata accessor for SymmetricKey();
      v24 = *(v23 - 8);
      v25 = &v10[v22];
      v26 = v35;
      (*(v24 + 16))(v35, v25, v23);
      (*(v7 + 8))(v10, v6);
      return (*(v24 + 56))(v26, 0, 1, v23);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    (*(v17 + 8))(v20, v16);
LABEL_6:
    v28 = type metadata accessor for SymmetricKey();
    return (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
  }

  (*(v12 + 32))(v15, v20, v11);
  v29 = *(v11 + 56);
  v30 = type metadata accessor for SymmetricKey();
  v31 = *(v30 - 8);
  v32 = &v15[v29];
  v33 = v35;
  (*(v31 + 16))(v35, v32, v30);
  (*(v12 + 8))(v15, v11);
  return (*(v31 + 56))(v33, 0, 1, v30);
}

uint64_t SessionKeyManager.resumptionMasterSecret.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SessionKeyManager.State.AllSecrets();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SessionKeyManager.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  (*(v13 + 16))(&v23 - v15, v3, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v8 + 32))(v11, v16, v7);
      v18 = *(v7 + 44);
      v19 = type metadata accessor for SymmetricKey();
      v20 = *(v19 - 8);
      (*(v20 + 16))(a2, &v11[v18], v19);
      (*(v8 + 8))(v11, v7);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }

  else
  {
    (*(v13 + 8))(v16, v12);
  }

  v22 = type metadata accessor for SymmetricKey();
  return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for SessionKeyManager.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  (*(v15 + 16))(&v25 - v17, v4, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v24 = *(v10 + 32);
      v24(v13, v18, v9);
      SessionKeyManager.State.HandshakeSecret.addMessageToTranscriptHash(_:)(a1, a2, v26, v9);
      (*(v15 + 8))(v4, v14);
      v24(v4, v13, v9);
      swift_storeEnumTagMultiPayload();
      return 2;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v15 + 8))(v18, v14);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  v21 = SessionKeyManager.State.logDescription.getter(v14);
  Logger.logInvalidStateTransition(stateName:event:)(v21, v22, 0xD000000000000012, 0x80000001B26CDE50);

  v27 = xmmword_1B26C6450;
  v28 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKF(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SessionKeyManager.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  (*(v10 + 16))(&v20 - v12, v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v8, v13, v4);
      v18 = SessionKeyManager.State.HandshakeSecret.dataToSignInServerCertificateVerify.getter(v4);
      (*(v5 + 8))(v8, v4);
      return v18;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v10 + 8))(v13, v9);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = SessionKeyManager.State.logDescription.getter(v9);
  Logger.logInvalidStateTransition(stateName:event:)(v16, v17, 0xD00000000000001DLL, 0x80000001B26CD7E0);

  v20 = xmmword_1B26C6450;
  v18 = 2;
  v21 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v18;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  v13 = type metadata accessor for SessionKeyManager.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v23 - v16;
  (*(v14 + 16))(v23 - v16, v3, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v9 + 32))(v12, v17, v8);
      SessionKeyManager.State.HandshakeSecret.serverFinishedPayload.getter(v8, a3);
      return (*(v9 + 8))(v12, v8);
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v14 + 8))(v17, v13);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);
  v20 = SessionKeyManager.State.logDescription.getter(v13);
  Logger.logInvalidStateTransition(stateName:event:)(v20, v21, 0xD000000000000015, 0x80000001B26CDE30);

  v23[0] = xmmword_1B26C6450;
  v23[1] = xmmword_1B26C6450;
  v24 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  result = swift_willThrowTypedImpl();
  *a2 = v23[0];
  *(a2 + 16) = 2;
  return result;
}

double _s15SwiftTLSLibrary23ServerSessionKeyManagerV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for SessionKeyManager();
  a3(v8, &v11);
  if (v3)
  {
    v10 = v12;
    result = *&v11;
    *a2 = v11;
    *(a2 + 16) = v10;
  }

  return result;
}

double _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for SessionKeyManager.State.MasterSecret();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  v13 = type metadata accessor for SessionKeyManager.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v23 - v16;
  (*(v14 + 16))(v23 - v16, v3, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      (*(v9 + 32))(v12, v17, v8);
      SessionKeyManager.State.MasterSecret.clientFinishedPayload.getter(v8, a3);
      (*(v9 + 8))(v12, v8);
      return result;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_5:
    (*(v14 + 8))(v17, v13);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  v21 = SessionKeyManager.State.logDescription.getter(v13);
  Logger.logInvalidStateTransition(stateName:event:)(v21, v22, 0xD000000000000015, 0x80000001B26CDE10);

  v23[0] = xmmword_1B26C6450;
  v23[1] = xmmword_1B26C6450;
  v24 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  result = *v23;
  *a2 = v23[0];
  *(a2 + 16) = 2;
  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v5 = v4;
  v36 = a2;
  v33 = a1;
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v35 = type metadata accessor for SessionKeyManager.State.MasterSecret();
  v32 = *(v35 - 8);
  v8 = *(v32 + 64);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for SessionKeyManager.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v20;
  v22 = *(v15 + 16);
  v39 = v5;
  v22(&v32 - v20, v5, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      v24 = v32;
      v25 = v21;
      v26 = v35;
      (*(v32 + 32))(v13, v25, v35);
      (*(v24 + 16))(v11, v13, v26);
      v27 = v33;
      outlined copy of Data._Representation(v33, v36);
      SessionKeyManager.State.AllSecrets.init(masterSecret:clientFinishedBytes:)(v11, v27, v36, v34, v6, v7, v19);
      (*(v24 + 8))(v13, v35);
      swift_storeEnumTagMultiPayload();
      (*(v15 + 40))(v39, v19, v14);
      return 2;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_5:
    (*(v15 + 8))(v21, v14);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, logger);
  v29 = SessionKeyManager.State.logDescription.getter(v14);
  Logger.logInvalidStateTransition(stateName:event:)(v29, v30, 0xD000000000000013, 0x80000001B26CDDF0);

  v37 = xmmword_1B26C6450;
  v38 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

uint64_t _s15SwiftTLSLibrary23ClientSessionKeyManagerV07sendingC5Hello06clientH015sessionToResume5epsks11useRawEPSKs11currentTimeAA10ByteBufferVAA0cH0Vz_AA0D6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 16);
  v12 = *(a6 + 24);
  v13 = type metadata accessor for SessionKeyManager();
  return _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingClientHelloyAA10ByteBufferVAA0nO0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtAA8TLSErrorOYKF(a1, a2, a3, a4, a5, v13);
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingClientHelloyAA10ByteBufferVAA0nO0Vz_AA0C6TicketVSgSayAA11GeneralEPSKVGSb10Foundation4DateVtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a5;
  v22 = a4;
  v23 = a2;
  v8 = *(a6 + 16);
  v9 = *(a6 + 24);
  v26 = type metadata accessor for SessionKeyManager.State.EarlySecret();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v21[-v12];
  v14 = type metadata accessor for SessionKeyManager.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21[-v17];
  (*(v15 + 16))(&v21[-v17], v6, v14);
  if (swift_getEnumCaseMultiPayload() >= 4)
  {
    v19 = static SessionKeyManager.State.EarlySecret.create(clientHello:sessionToResume:epsks:useRawEPSKs:currentTime:)(v13, a1, v23, v24, v22 & 1, v25, v8, v9);
    (*(v15 + 8))(v6, v14);
    (*(v10 + 32))(v6, v13, v26);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    v27 = xmmword_1B26C6450;
    v19 = 2;
    v28 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return v19;
}

uint64_t _s15SwiftTLSLibrary23ClientSessionKeyManagerV15postServerHello11ecdheSecret06serverI5Bytes9pskFailedy9CryptoKit09SymmetricE0V_AA10ByteBufferVSbtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  v13 = *(a6 + 24);
  v14 = type metadata accessor for SessionKeyManager();
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postServerHello__9pskFailedy9CryptoKit09SymmetricD0V_AA10ByteBufferVSbtAA8TLSErrorOYKF(a1, a2, a3, a4, a5, v14);
  if (!v6)
  {
    return 1;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postServerHello__9pskFailedy9CryptoKit09SymmetricD0V_AA10ByteBufferVSbtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v53 = a4;
  v7 = v6;
  v51 = a5;
  v52 = a3;
  v50 = a2;
  v48 = a1;
  v49 = type metadata accessor for SymmetricKey();
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a6 + 16);
  v12 = *(a6 + 24);
  v56 = type metadata accessor for SessionKeyManager.State.EarlySecret();
  v54 = *(v56 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x1EEE9AC00](v56);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v19 = type metadata accessor for SessionKeyManager.State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v42 - v25;
  v27 = *(v20 + 16);
  v59 = v7;
  v27(&v42 - v25, v7, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    v44 = v24;
    v45 = v16;
    v43 = v11;
    v46 = v12;
    v29 = v54;
    v30 = v55;
    v31 = v56;
    if (!EnumCaseMultiPayload)
    {
      v32 = v18;
      (*(v54 + 32))(v18, v26, v56);
      v33 = v45;
      (*(v29 + 16))(v45, v32, v31);
      v34 = v30;
      (*(v47 + 16))(v30, v48, v49);
      v35 = v50;
      v36 = v52;
      outlined copy of Data._Representation(v50, v52);
      v37 = v44;
      SessionKeyManager.State.HandshakeSecret.init(earlySecret:ecdheSecret:serverHelloBytes:pskFailed:)(v33, v34, v35, v36, v53, v51 & 1, v43, v46, v44);
      (*(v29 + 8))(v32, v56);
      swift_storeEnumTagMultiPayload();
      (*(v20 + 40))(v59, v37, v19);
      return 2;
    }
  }

  else
  {
    (*(v20 + 8))(v26, v19);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, logger);
  v39 = SessionKeyManager.State.logDescription.getter(v19);
  Logger.logInvalidStateTransition(stateName:event:)(v39, v40, 0x7672655374736F70, 0xEF6F6C6C65487265);

  v57 = xmmword_1B26C6450;
  v58 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postServerFinishedyyAA10ByteBufferVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v5 = v4;
  v39 = a1;
  v40 = a2;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v36 - v13;
  v15 = type metadata accessor for SessionKeyManager.State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v36 - v21;
  v23 = *(v16 + 16);
  v46 = v5;
  v23(v36 - v21, v5, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36[1] = v6;
    v37 = v20;
    v38 = v12;
    v26 = v42;
    v25 = v43;
    if (EnumCaseMultiPayload)
    {
      v31 = v14;
      (*(v42 + 32))(v14, v22, v43);
      v32 = v38;
      (*(v26 + 16))(v38, v14, v25);
      v33 = v39;
      v34 = v40;
      outlined copy of Data._Representation(v39, v40);
      v35 = v37;
      SessionKeyManager.State.MasterSecret.init(handshakeSecret:serverFinishedBytes:)(v32, v33, v34, v41, v7, v37);
      (*(v26 + 8))(v31, v43);
      swift_storeEnumTagMultiPayload();
      (*(v16 + 40))(v46, v35, v15);
      return 2;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v16 + 8))(v22, v15);
LABEL_6:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, logger);
  v28 = SessionKeyManager.State.logDescription.getter(v15);
  Logger.logInvalidStateTransition(stateName:event:)(v28, v29, 0xD000000000000012, 0x80000001B26CE130);

  v44 = xmmword_1B26C6450;
  v45 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

double _s15SwiftTLSLibrary23ClientSessionKeyManagerV08generateD9TicketPSK11ticketNonce9CryptoKit09SymmetricE0VAA10ByteBufferV_tAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  v14 = type metadata accessor for SessionKeyManager();
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV08generateC9TicketPSKy9CryptoKit09SymmetricD0VAA10ByteBufferVAA8TLSErrorOYKF(a1, a2, a3, v14, &v17, a6);
  if (v6)
  {
    v16 = v18;
    result = *&v17;
    *a5 = v17;
    *(a5 + 16) = v16;
  }

  return result;
}

double _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV08generateC9TicketPSKy9CryptoKit09SymmetricD0VAA10ByteBufferVAA8TLSErrorOYKF@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, unint64_t a6@<X8>)
{
  v34 = a5;
  v30 = a3;
  v7 = v6;
  *&v31 = a2;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  v12 = type metadata accessor for SessionKeyManager.State.AllSecrets();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = type metadata accessor for SessionKeyManager.State();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  (*(v18 + 16))(&v30 - v20, v7, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    v23 = a1;
    v24 = v31;
    if (EnumCaseMultiPayload == 3)
    {
      (*(v13 + 32))(v16, v21, v12);
      SessionKeyManager.State.AllSecrets.generateSessionTicketPSK(ticketNonce:)(v23, v24, v30, v12, a6);
      (*(v13 + 8))(v16, v12);
      return result;
    }
  }

  else
  {
    (*(v18 + 8))(v21, v17);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);
  v27 = SessionKeyManager.State.logDescription.getter(v17);
  Logger.logInvalidStateTransition(stateName:event:)(v27, v28, 0xD000000000000018, 0x80000001B26CE110);

  v31 = xmmword_1B26C6450;
  v32 = xmmword_1B26C6450;
  v33 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  v29 = v34;
  result = *&v31;
  *v34 = v31;
  *(v29 + 16) = 2;
  return result;
}

uint64_t ClientSessionKeyManager.generateTLSExporterKey(label:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for SessionKeyManager();

  return SessionKeyManager.generateTLSExporterKey(_:)(a1, a2, v9, a4);
}

uint64_t SessionKeyManager.generateTLSExporterKey(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v26 = a1;
  v27 = a2;
  v28 = a4;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &AssociatedTypeWitness - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &AssociatedTypeWitness - v13;
  v15 = type metadata accessor for SymmetricKey();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &AssociatedTypeWitness - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionKeyManager.exporterMasterSecret.getter(a3, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v14, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v20 = 1;
    v21 = v28;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    static HashFunction.zeroHash.getter(v6);
    v22 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
    v23 = v28;
    static HKDF.tlsExporter<A>(secret:label:context:)(v19, v26, v27, v10, v6, v15, v22, v28);
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    (*(v16 + 8))(v19, v15);
    v20 = 0;
    v21 = v23;
  }

  return (*(v16 + 56))(v21, v20, 1, v15);
}

uint64_t ClientSessionKeyManager.generateHMACForAuthenticator(transcript:key:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  v5 = *(a5 + 24);
  return specialized SessionKeyManager.generateHMACForAuthenticator(_:_:)(a1, a2, a3);
}

uint64_t _s15SwiftTLSLibrary23ServerSessionKeyManagerV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKFTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  v12 = type metadata accessor for SessionKeyManager();
  result = a5(a1, a2, a3, v12);
  if (!v5)
  {
    return 1;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV42addPreClientFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for SessionKeyManager.State.MasterSecret();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for SessionKeyManager.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  (*(v15 + 16))(&v25 - v17, v4, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      v25 = a3;
      v20 = *(v10 + 32);
      v20(v13, v18, v9);
      SessionKeyManager.State.HandshakeSecret.addMessageToTranscriptHash(_:)(v26, a2, v25, v9);
      (*(v15 + 8))(v4, v14);
      v20(v4, v13, v9);
      swift_storeEnumTagMultiPayload();
      return 2;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_5:
    (*(v15 + 8))(v18, v14);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = SessionKeyManager.State.logDescription.getter(v14);
  Logger.logInvalidStateTransition(stateName:event:)(v22, v23, 0xD000000000000012, 0x80000001B26CDE50);

  v27 = xmmword_1B26C6450;
  v28 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 2;
}

uint64_t ServerSessionKeyManager.clientEarlyTrafficSecret.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for SessionKeyManager();

  return a2(v4);
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV15postClientHelloyyAA10ByteBufferV_10Foundation4DateVAA11GeneralEPSKVSgAGSgSiSgSbtAA8TLSErrorOYKF(int64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12)
{
  v34 = a8;
  v32 = a6;
  v33 = a7;
  v30 = a3;
  v31 = a5;
  v29 = a2;
  v14 = *(a12 + 16);
  v15 = *(a12 + 24);
  v16 = type metadata accessor for SessionKeyManager.State.EarlySecret();
  v28 = *(v16 - 8);
  v17 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = type metadata accessor for SessionKeyManager.State();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  (*(v21 + 16))(&v27 - v23, v12, v20);
  if (swift_getEnumCaseMultiPayload() >= 4)
  {
    v25 = v35;
    _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV12serverCreate16clientHelloBytes13negotiatedPSK11useRawEPSKs11binderValue18bindersArrayLengthAHyx__GAA10ByteBufferV_AA11GeneralEPSKVSgSbAQSgSiSgtAA8TLSErrorOYKFZ(a1, v29, v30, v31, a11 & 1, v32, v33, v34, v19, a9, a10 & 1, v14, v15, &v36);
    if (v25)
    {
      return v36;
    }

    else
    {
      (*(v21 + 8))(v12, v20);
      (*(v28 + 32))(v12, v19, v16);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    (*(v21 + 8))(v24, v20);
    v37 = xmmword_1B26C6450;
    v16 = 2;
    v38 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return v16;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingServerHello__9pskFailedAA10ByteBufferVAA0nO0V_9CryptoKit09SymmetricD0VSbtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v52 = a3;
  v49 = a2;
  v46 = a1;
  v7 = type metadata accessor for SymmetricKey();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  v12 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v38 - v14;
  v15 = type metadata accessor for SessionKeyManager.State.EarlySecret();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  v22 = type metadata accessor for SessionKeyManager.State();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v38 - v25;
  (*(v23 + 16))(&v38 - v25, v5, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    (*(v23 + 8))(v26, v22);
LABEL_5:
    v53 = xmmword_1B26C6450;
    v36 = 2;
    LOBYTE(v54) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v36;
  }

  v41 = v19;
  v42 = v11;
  v40 = v10;
  v43 = v5;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  v28 = v55;
  v29 = *(v55 + 32);
  v30 = v21;
  v39 = v21;
  v29(v21, v26, v15);
  v53 = xmmword_1B26C6130;
  v54 = 0;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  v31 = v41;
  (*(v28 + 16))(v41, v30, v15);
  v32 = v44;
  (*(v47 + 16))(v44, v49, v48);
  v33 = v53;
  v49 = v54;
  outlined copy of Data._Representation(v53, *(&v53 + 1));
  v34 = v45;
  SessionKeyManager.State.HandshakeSecret.init(earlySecret:ecdheSecret:serverHelloBytes:pskFailed:)(v31, v32, v33, *(&v33 + 1), v49, v52 & 1, v40, v42, v45);
  (*(v28 + 8))(v39, v15);
  v35 = v43;
  (*(v23 + 8))(v43, v22);
  (*(v50 + 32))(v35, v34, v51);
  swift_storeEnumTagMultiPayload();
  return v53;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21sendingServerFinishedyAA10ByteBufferVAA0O7MessageVAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v42 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
  v39 = *(v42 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x1EEE9AC00](v42);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v32 - v12;
  v14 = type metadata accessor for SessionKeyManager.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - v20;
  v22 = *(v15 + 16);
  v38 = v5;
  v22(v32 - v20, v5, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v32[1] = v7;
    v33 = v19;
    v32[0] = v6;
    v34 = v11;
    v24 = v39;
    v25 = v42;
    if (EnumCaseMultiPayload)
    {
      v28 = v13;
      (*(v39 + 32))(v13, v21, v42);
      v40 = xmmword_1B26C6130;
      v41 = 0;
      specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v35, v36, v37);
      v29 = v34;
      (*(v24 + 16))(v34, v13, v25);
      v30 = v40;
      v37 = v41;
      outlined copy of Data._Representation(v40, *(&v40 + 1));
      v31 = v33;
      SessionKeyManager.State.MasterSecret.init(handshakeSecret:serverFinishedBytes:)(v29, v30, *(&v30 + 1), v37, v32[0], v33);
      (*(v24 + 8))(v28, v25);
      swift_storeEnumTagMultiPayload();
      (*(v15 + 40))(v38, v31, v14);
      return v40;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  (*(v15 + 8))(v21, v14);
LABEL_6:
  v40 = xmmword_1B26C6450;
  v26 = 2;
  LOBYTE(v41) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v26;
}

uint64_t static SessionKeyManager.State.EarlySecret.create(clientHello:sessionToResume:epsks:useRawEPSKs:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = a6;
  v104 = a5;
  v119 = a4;
  v130 = a3;
  v117 = a2;
  v11 = *(*(a7 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for SessionTicket();
  v132 = *(v118 - 1);
  v14 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v106 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v131 = *(AssociatedTypeWitness - 8);
  v17 = *(v131 + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v114 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v99 - v20;
  v126 = type metadata accessor for HashedAuthenticationCode();
  v113 = *(v126 - 8);
  v21 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v99 - v22;
  v101 = type metadata accessor for RawEPSK(0);
  v23 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for ImportedPSK(0);
  v25 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for PSK(0);
  v27 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v29 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for GeneralEPSK(0);
  v107 = *(v30 - 8);
  v31 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v99 - v39;
  v121 = type metadata accessor for SymmetricKey();
  v120 = *(v121 - 8);
  v41 = *(v120 + 64);
  v42 = MEMORY[0x1EEE9AC00](v121);
  v112 = &v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v111 = &v99 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v123 = &v99 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v99 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v128 = &v99 - v51;
  v116 = a8;
  v115 = a7;
  swift_getAssociatedConformanceWitness();
  v127 = AssociatedTypeWitness;
  result = dispatch thunk of static Digest.byteCount.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v109 = a1;
  v122 = v13;
  v129 = v50;
  if (result)
  {
    v53 = result;
    v54 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v54 + 16) = v53;
    bzero((v54 + 32), v53);
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  v55 = v128;
  v56 = *(v119 + 16);
  v57 = v132 + 48;
  v58 = *(v132 + 48);
  v59 = v118;
  v60 = v58(v130, 1, v118);
  v105 = v56;
  v132 = v57;
  v110 = v58;
  if (v56)
  {
    if (v60 == 1)
    {
      outlined init with copy of GeneralEPSK(v119 + ((*(v107 + 80) + 32) & ~*(v107 + 80)), v33, type metadata accessor for GeneralEPSK);
      outlined init with take of PSK(v33, v29, type metadata accessor for PSK);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v62 = (v120 + 16);
      if (EnumCaseMultiPayload == 1)
      {
        v63 = v102;
        outlined init with take of PSK(v29, v102, type metadata accessor for RawEPSK);
        (*v62)(v55, v63 + *(v101 + 20), v121);
        v64 = type metadata accessor for RawEPSK;
      }

      else
      {
        v63 = v100;
        outlined init with take of PSK(v29, v100, type metadata accessor for ImportedPSK);
        (*v62)(v55, v63 + *(v99 + 20), v121);
        v64 = type metadata accessor for ImportedPSK;
      }

      _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v63, v64);
      if (v104)
      {
        v65 = 0x646E696220747865;
      }

      else
      {
        v65 = 0x646E696220706D69;
      }

      v67 = v116;
      v66 = v118;
LABEL_18:
      *&v137 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
      v68 = v125;
      v69 = v115;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();
      v70 = v124;
      static HashFunction.zeroHash.getter(v69);
      v71 = v126;
      swift_getWitnessTable();
      v72 = v129;
      v73 = v65;
      v74 = v69;
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v68, v73, 0xEA00000000007265, v70, v71, v129);
      v75 = *(v131 + 8);
      v131 += 8;
      v118 = v75;
      (v75)(v70, v127);
      outlined init with copy of Any?(v130, v38, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
      if (v110(v38, 1, v66) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v38, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);

        if (v105)
        {
          v76 = static SessionKeyManager.State.EarlySecret.useEPSK(epsk:binderSecret:clientHello:currentTime:)(v119 + ((*(v107 + 80) + 32) & ~*(v107 + 80)), v129, v117, v108, v69, v67);
          v78 = v77;
          v80 = v79;
          *&v135 = v76;
          *(&v135 + 1) = v77;
          v136 = v79;
        }

        else
        {
          v135 = xmmword_1B26C6130;
          v136 = 0;
          v84 = v117[5];
          v141 = v117[4];
          v142 = v84;
          v143 = *(v117 + 12);
          v85 = v117[1];
          v137 = *v117;
          v138 = v85;
          v86 = v117[3];
          v139 = v117[2];
          v140 = v86;
          specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
          v80 = 0;
          v78 = *(&v135 + 1);
          v76 = v135;
        }
      }

      else
      {

        v81 = v106;
        outlined init with take of PSK(v38, v106, type metadata accessor for SessionTicket);
        v76 = static SessionKeyManager.State.EarlySecret.tryToResume(session:binderSecret:clientHello:currentTime:)(v81, v72, v117, v108, v69, v67);
        v78 = v82;
        v80 = v83;
        _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v81, type metadata accessor for SessionTicket);
        *&v135 = v76;
        *(&v135 + 1) = v78;
        v136 = v80;
      }

      result = dispatch thunk of HashFunction.init()();
      v87 = v78 >> 62;
      if ((v78 >> 62) > 1)
      {
        if (v87 == 2)
        {
          v88 = *(v76 + 24);
        }

        else
        {
          v88 = 0;
        }
      }

      else if (v87)
      {
        v88 = v76 >> 32;
      }

      else
      {
        v88 = BYTE6(v78);
      }

      if (v88 >= v80)
      {
        v133 = Data._Representation.subscript.getter();
        v134 = v89;
        lazy protocol witness table accessor for type Data and conformance Data();
        HashFunction.update<A>(data:)();
        outlined consume of Data._Representation(v133, v134);
        v90 = v124;
        dispatch thunk of HashFunction.finalize()();
        v91 = v125;
        v92 = v126;
        static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v125, 0x6661727420652063uLL, 0xEB00000000636966, v90, v126, v123);
        v93 = v111;
        static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v91, 0x616D207078652065uLL, 0xEC00000072657473, v90, v92, v111);
        v94 = v114;
        static HashFunction.zeroHash.getter(v69);
        v95 = v112;
        static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v91, 0x64657669726564uLL, 0xE700000000000000, v94, v92, v112);
        v96 = v127;
        v97 = v118;
        (v118)(v94, v127);
        v97(v90, v96);
        (*(v113 + 8))(v91, v92);
        (*(v120 + 8))(v128, v121);
        SessionKeyManager.State.EarlySecret.init(transcriptHasher:derivedSecret:binderKey:clientEarlyTrafficSecret:earlyExporterMasterSecret:)(v122, v95, v129, v123, v93, v74, v109);
        v98 = v135;
        outlined copy of Data._Representation(v135, *(&v135 + 1));
        outlined consume of Data._Representation(v98, *(&v98 + 1));
        return v98;
      }

      goto LABEL_33;
    }
  }

  else if (v60 == 1)
  {
    v65 = 0x646E696220736572;
    *&v137 = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v66 = v59;
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
    SymmetricKey.init<A>(data:)();
    v67 = v116;
    goto LABEL_18;
  }

  outlined init with copy of Any?(v130, v40, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  result = (v58)(v40, 1, v59);
  if (result != 1)
  {
    v65 = 0x646E696220736572;
    (*(v120 + 16))(v55, &v40[*(v59 + 9)], v121);
    _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v40, type metadata accessor for SessionTicket);
    v67 = v116;
    v66 = v59;
    goto LABEL_18;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV12serverCreate16clientHelloBytes13negotiatedPSK11useRawEPSKs11binderValue18bindersArrayLengthAHyx__GAA10ByteBufferV_AA11GeneralEPSKVSgSbAQSgSiSgtAA8TLSErrorOYKFZ@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, int64_t a12, uint64_t a13, uint64_t a14)
{
  v147 = a8;
  v158 = a7;
  v153 = a6;
  LODWORD(v163) = a5;
  v178 = a4;
  v168 = a3;
  v169 = a2;
  v175 = a1;
  v157 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v185 = *(AssociatedTypeWitness - 8);
  v15 = *(v185 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v156 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v150 = &v140 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v173 = &v140 - v20;
  v21 = type metadata accessor for HashedAuthenticationCode();
  v164 = *(v21 - 8);
  v22 = *(v164 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v151 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v140 - v25;
  v145 = type metadata accessor for RawEPSK(0);
  v27 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for ImportedPSK(0);
  v29 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for PSK(0);
  v31 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v162 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v140 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v140 - v39;
  v41 = type metadata accessor for SymmetricKey();
  v181 = *(v41 - 8);
  v42 = *(v181 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v155 = &v140 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v167 = &v140 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v166 = &v140 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v165 = &v140 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v149 = &v140 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v179 = &v140 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v177 = &v140 - v56;
  v161 = *(a12 - 8);
  v57 = *(v161 + 64);
  v58 = MEMORY[0x1EEE9AC00](v55);
  v154 = &v140 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v182 = &v140 - v60;
  v180 = a13;
  dispatch thunk of HashFunction.init()();
  v61 = v169 >> 62;
  if ((v169 >> 62) > 1)
  {
    v62 = 0;
    v63 = a12;
    if (v61 == 2)
    {
      v62 = *(v175 + 24);
    }
  }

  else
  {
    if (v61)
    {
      v62 = v175 >> 32;
    }

    else
    {
      v62 = BYTE6(v169);
    }

    v63 = a12;
  }

  if (v62 < v168)
  {
    __break(1u);
    goto LABEL_65;
  }

  v142 = v169 >> 62;
  *&v183 = Data._Representation.subscript.getter();
  *(&v183 + 1) = v64;
  v148 = lazy protocol witness table accessor for type Data and conformance Data();
  HashFunction.update<A>(data:)();
  outlined consume of Data._Representation(v183, *(&v183 + 1));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = dispatch thunk of static Digest.byteCount.getter();
  if (v66 < 0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
    goto LABEL_27;
  }

  v172 = v21;
  v67 = MEMORY[0x1E69E7CC0];
  v170 = AssociatedTypeWitness;
  v171 = v26;
  v176 = v41;
  v174 = v63;
  if (v66)
  {
    v68 = v66;
    v67 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v67 + 16) = v68;
    v69 = v68;
    v41 = v176;
    bzero((v67 + 32), v69);
  }

  v70 = v162;
  outlined init with copy of Any?(v178, v36, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v71 = type metadata accessor for GeneralEPSK(0);
  v72 = *(v71 - 8);
  v73 = *(v72 + 48);
  v162 = v71;
  v160 = v73;
  v159 = v72 + 48;
  v74 = v73(v36, 1);
  v141 = AssociatedConformanceWitness;
  if (v74 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v36, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    v75 = v181;
    (*(v181 + 56))(v40, 1, 1, v41);
    *&v183 = v67;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
    SymmetricKey.init<A>(data:)();
    if ((*(v75 + 48))(v40, 1, v41) != 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v40, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    }
  }

  else
  {
    outlined init with copy of GeneralEPSK(v36, v70, type metadata accessor for PSK);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = (v181 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v78 = v70;
      v79 = v146;
      outlined init with take of PSK(v78, v146, type metadata accessor for RawEPSK);
      (*v77)(v40, v79 + *(v145 + 20), v41);
      v80 = type metadata accessor for RawEPSK;
    }

    else
    {
      v81 = v70;
      v79 = v144;
      outlined init with take of PSK(v81, v144, type metadata accessor for ImportedPSK);
      (*v77)(v40, v79 + *(v143 + 20), v41);
      v80 = type metadata accessor for ImportedPSK;
    }

    _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v79, v80);
    _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(v36, type metadata accessor for GeneralEPSK);
    v82 = v181;
    (*(v181 + 56))(v40, 0, 1, v41);
    (*(v82 + 32))(v177, v40, v41);
  }

  *&v183 = v67;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  v84 = v171;
  v85 = v174;
  v152 = v83;
  static HKDF.extract<A>(inputKeyMaterial:salt:)();

  if (v163)
  {
    v86 = 0x646E696220747865;
  }

  else
  {
    v86 = 0x646E696220706D69;
  }

  v63 = v173;
  static HashFunction.zeroHash.getter(v85);
  v87 = v172;
  WitnessTable = swift_getWitnessTable();
  static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v84, v86, 0xEA00000000007265, v63, v87, v179);

  v89 = v185 + 8;
  v90 = *(v185 + 8);
  v91 = v170;
  v90(v63, v170);
  if (v160(v178, 1, v162) == 1)
  {
    goto LABEL_23;
  }

  v163 = WitnessTable;
  v178 = v90;
  if (v158 >> 60 == 15 || (a11 & 1) != 0)
  {
    v104 = 0x80000001B26CDE70;
    v105 = 0xD00000000000002CLL;
    *&v183 = 0xD00000000000002CLL;
    *(&v183 + 1) = 0x80000001B26CDE70;
    v106 = 1;
    v184 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v107 = *(v181 + 8);
    v108 = v176;
    v107(v179, v176);
    (*(v164 + 8))(v171, v172);
    v107(v177, v108);
    result = (*(v161 + 8))(v182, v174);
LABEL_63:
    *a14 = v105;
    *(a14 + 8) = v104;
    *(a14 + 16) = v106;
    return result;
  }

  v185 = v89;
  outlined copy of Data._Representation(v153, v158);
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_66;
  }

LABEL_27:
  v98 = type metadata accessor for Logger();
  v99 = __swift_project_value_buffer(v98, logger);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134217984;
    *(v102 + 4) = a10;
    _os_log_impl(&dword_1B25F5000, v100, v101, "bindersArrayLength: %ld", v102, 0xCu);
    MEMORY[0x1B274ECF0](v102, -1, -1);
  }

  if (v142 > 1)
  {
    if (v142 == 2)
    {
      v103 = *(v175 + 24);
    }

    else
    {
      v103 = 0;
    }
  }

  else if (v142)
  {
    v103 = v175 >> 32;
  }

  else
  {
    v103 = BYTE6(v169);
  }

  result = v168;
  if (v103 < v168)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v168 = v99;
  v109 = Data._Representation.subscript.getter();
  specialized BidirectionalCollection.dropLast(_:)(a10 + 3, v109, v110, &v183);
  v175 = *(&v183 + 1);
  v169 = v183;
  static HashFunction.hash<A>(data:)();
  *&v183 = MEMORY[0x1E69E7CC0];
  v111 = v141;
  v112 = dispatch thunk of static Digest.byteCount.getter();
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v179, 0x64656873696E6966uLL, 0xE800000000000000, &v183, v112, v176, v152, v149);
  v113 = *(v111 + 8);
  result = static HMAC.authenticationCode<A>(bytes:using:)();
  v114 = v158;
  v115 = v158 >> 62;
  if ((v158 >> 62) > 1)
  {
    v116 = v172;
    v117 = v147;
    v118 = v178;
    v119 = v153;
    if (v115 == 2)
    {
      v120 = *(v153 + 24);
    }

    else
    {
      v120 = 0;
    }
  }

  else
  {
    v116 = v172;
    v117 = v147;
    v118 = v178;
    v119 = v153;
    if (v115)
    {
      v120 = v153 >> 32;
    }

    else
    {
      v120 = BYTE6(v158);
    }
  }

  if (v120 < v117)
  {
    goto LABEL_68;
  }

  *&v183 = Data._Representation.subscript.getter();
  *(&v183 + 1) = v121;
  swift_getWitnessTable();
  v122 = v151;
  v123 = static MessageAuthenticationCode.== infix<A>(_:_:)();
  outlined consume of Data._Representation(v183, *(&v183 + 1));
  if (v123)
  {
    outlined consume of Data._Representation(v169, v175);
    outlined consume of ByteBuffer?(v119, v114);
    (*(v164 + 8))(v122, v116);
    (*(v181 + 8))(v149, v176);
    v91 = v170;
    v89 = v185;
    v118(v150, v170);
    v87 = v116;
    v84 = v171;
    v90 = v118;
    v85 = v174;
LABEL_23:
    v185 = v89;
    dispatch thunk of HashFunction.finalize()();
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v84, 0x6661727420652063uLL, 0xEB00000000636966, v63, v87, v165);
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v84, 0x616D207078652065uLL, 0xEC00000072657473, v63, v87, v166);
    v92 = v156;
    static HashFunction.zeroHash.getter(v85);
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v84, 0x64657669726564uLL, 0xE700000000000000, v92, v87, v167);
    v90(v92, v91);
    v90(v173, v91);
    (*(v164 + 8))(v84, v87);
    v93 = v181;
    v94 = v176;
    (*(v181 + 8))(v177, v176);
    v95 = v154;
    (*(v161 + 32))(v154, v182, v85);
    v96 = v155;
    (*(v93 + 32))(v155, v179, v94);
    return SessionKeyManager.State.EarlySecret.init(transcriptHasher:derivedSecret:binderKey:clientEarlyTrafficSecret:earlyExporterMasterSecret:)(v95, v167, v96, v165, v166, v85, v157);
  }

  result = HashedAuthenticationCode.byteCount.getter();
  if (v115 > 1)
  {
    v124 = v153;
    v125 = v179;
    if (v115 == 2)
    {
      v126 = *(v153 + 24);
    }

    else
    {
      v126 = 0;
    }
  }

  else
  {
    v124 = v153;
    v125 = v179;
    if (v115)
    {
      v126 = v153 >> 32;
    }

    else
    {
      v126 = BYTE6(v158);
    }
  }

  v127 = __OFSUB__(v126, v117);
  v128 = v126 - v117;
  if (!v127)
  {
    if (result != v128)
    {
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = v116;
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_1B25F5000, v129, v130, "psk binder value not of expected length. likely epsk hash algorithm mismatch.", v132, 2u);
        v133 = v132;
        v116 = v131;
        MEMORY[0x1B274ECF0](v133, -1, -1);
      }
    }

    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&dword_1B25F5000, v134, v135, "client binder value incorrect. aborting handshake.", v136, 2u);
      MEMORY[0x1B274ECF0](v136, -1, -1);
    }

    v183 = xmmword_1B26C9520;
    v106 = 2;
    v184 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v169, v175);
    outlined consume of ByteBuffer?(v124, v158);
    v137 = *(v164 + 8);
    v137(v122, v116);
    v138 = *(v181 + 8);
    v139 = v176;
    v138(v149, v176);
    v118(v150, v170);
    v138(v125, v139);
    v137(v171, v116);
    v138(v177, v139);
    result = (*(v161 + 8))(v182, v174);
    v104 = 0;
    v105 = 31;
    goto LABEL_63;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t SessionKeyManager.State.HandshakeSecret.init(earlySecret:ecdheSecret:serverHelloBytes:pskFailed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  LODWORD(v76) = a6;
  v75 = a5;
  v86 = a2;
  v87 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  v14 = *(v80 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v69 - v17;
  v81 = type metadata accessor for HashedAuthenticationCode();
  v79 = *(v81 - 8);
  v19 = *(v79 + 64);
  v20 = MEMORY[0x1EEE9AC00](v81);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v69 - v23;
  v24 = type metadata accessor for SymmetricKey();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v71 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v70 = &v69 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v69 - v31;
  v73 = type metadata accessor for SessionKeyManager.State.EarlySecret();
  v33 = *(v73 + 36);
  v77 = v25;
  v78 = v24;
  v34 = *(v25 + 16);
  v85 = a1;
  v34(v32, a1 + v33, v24);
  v82 = v18;
  v83 = a3;
  if ((v76 & 1) == 0)
  {
    goto LABEL_10;
  }

  v76 = v22;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, logger);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = a9;
      v39 = a8;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1B25F5000, v36, v37, "authenticating with a psk failed (resumption or external psk)", v40, 2u);
      v41 = v40;
      a8 = v39;
      a9 = v38;
      MEMORY[0x1B274ECF0](v41, -1, -1);
    }

    swift_getAssociatedConformanceWitness();
    result = dispatch thunk of static Digest.byteCount.getter();
    if (result < 0)
    {
      break;
    }

    v69 = a9;
    v43 = a8;
    if (result)
    {
      v44 = result;
      v45 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v45 + 16) = v44;
      bzero((v45 + 32), v44);
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
    }

    v88 = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
    v46 = v70;
    SymmetricKey.init<A>(data:)();
    v88 = v45;
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
    v47 = v72;
    static HKDF.extract<A>(inputKeyMaterial:salt:)();

    v18 = v82;
    static HashFunction.zeroHash.getter(a7);
    v48 = v81;
    swift_getWitnessTable();
    v49 = v71;
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v47, 0x64657669726564uLL, 0xE700000000000000, v18, v48, v71);
    (*(v80 + 8))(v18, AssociatedTypeWitness);
    (*(v79 + 8))(v47, v48);
    v51 = v77;
    v50 = v78;
    v52 = *(v77 + 8);
    v52(v46, v78);
    v52(v32, v50);
    a8 = v43;
    (*(v51 + 32))(v32, v49, v50);
    a3 = v83;
    a9 = v69;
    v22 = v76;
LABEL_10:
    static HKDF.extract(inputKeyMaterial:salt:)();
    (*(*(a7 - 8) + 16))(a9, v85, a7);
    v53 = v87 >> 62;
    v54 = v22;
    if ((v87 >> 62) > 1)
    {
      v55 = v75;
      if (v53 == 2)
      {
        v56 = *(a3 + 24);
      }

      else
      {
        v56 = 0;
      }
    }

    else
    {
      v55 = v75;
      if (v53)
      {
        v56 = a3 >> 32;
      }

      else
      {
        v56 = BYTE6(v87);
      }
    }

    if (v56 >= v55)
    {
      v88 = Data._Representation.subscript.getter();
      v89 = v57;
      lazy protocol witness table accessor for type Data and conformance Data();
      HashFunction.update<A>(data:)();
      outlined consume of Data._Representation(v88, v89);
      dispatch thunk of HashFunction.finalize()();
      v58 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
      v76 = v32;
      v59 = v58;
      v60 = *(v58 + 40);
      v61 = a7;
      v63 = v80;
      v62 = v81;
      swift_getWitnessTable();
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v54, 0x6172742073682063uLL, 0xEC00000063696666, v18, v62, a9 + v60);
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v54, 0x6172742073682073uLL, 0xEC00000063696666, v18, v62, a9 + *(v59 + 44));
      v64 = v74;
      static HashFunction.zeroHash.getter(v61);
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v54, 0x64657669726564uLL, 0xE700000000000000, v64, v62, a9 + *(v59 + 36));
      outlined consume of Data._Representation(v83, v87);
      v65 = v78;
      v66 = *(v77 + 8);
      v66(v86, v78);
      (*(*(v73 - 8) + 8))(v85);
      v67 = *(v63 + 8);
      v68 = AssociatedTypeWitness;
      v67(v64, AssociatedTypeWitness);
      v67(v82, v68);
      (*(v79 + 8))(v54, v62);
      return (v66)(v76, v65);
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t SessionKeyManager.State.logDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v7 = 0x6B616873646E6168;
    }

    else
    {
      v7 = 0x636553796C726165;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v7 = 0x655372657473616DLL;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      return 1701602409;
    }

    v7 = 0x65726365536C6C61;
  }

  (*(v2 + 8))(v5, a1);
  return v7;
}

void Logger.logInvalidStateTransition(stateName:event:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v12);
    _os_log_impl(&dword_1B25F5000, oslog, v8, "invalid state transition for session key manager: state %s event: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v10, -1, -1);
    MEMORY[0x1B274ECF0](v9, -1, -1);
  }
}

uint64_t SessionKeyManager.State.MasterSecret.init(handshakeSecret:serverFinishedBytes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a4;
  v47 = a3;
  v48 = a2;
  v46 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v37 - v11;
  v13 = type metadata accessor for HashedAuthenticationCode();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v42 = type metadata accessor for SymmetricKey();
  v44 = *(v42 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Digest.byteCount.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v40 = v9;
    v41 = AssociatedTypeWitness;
    v39 = v12;
    if (result)
    {
      v18 = result;
      v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v19 + 16) = v18;
      bzero((v19 + 32), v18);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v49 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
    SymmetricKey.init<A>(data:)();
    v20 = type metadata accessor for SessionKeyManager.State.HandshakeSecret();
    v21 = a1 + v20[9];
    static HKDF.extract(inputKeyMaterial:salt:)();
    v22 = type metadata accessor for SessionKeyManager.State.MasterSecret();
    v23 = v22[9];
    swift_getWitnessTable();
    v24 = v46;
    SymmetricKey.init<A>(data:)();
    (*(*(a5 - 8) + 16))(v24, a1, a5);
    v25 = v47 >> 62;
    if ((v47 >> 62) > 1)
    {
      v26 = 0;
      result = v43;
      if (v25 == 2)
      {
        v26 = *(v48 + 24);
      }
    }

    else
    {
      result = v43;
      if (v25)
      {
        v26 = v48 >> 32;
      }

      else
      {
        v26 = BYTE6(v47);
      }
    }

    if (v26 >= result)
    {
      v49 = Data._Representation.subscript.getter();
      v50 = v27;
      lazy protocol witness table accessor for type Data and conformance Data();
      v28 = v46;
      HashFunction.update<A>(data:)();
      outlined consume of Data._Representation(v49, v50);
      v38 = v23;
      v29 = v39;
      dispatch thunk of HashFunction.finalize()();
      v30 = *(v44 + 16);
      v31 = v28 + v22[10];
      v32 = a1 + v20[10];
      v37 = v20;
      v33 = v42;
      v30(v31, v32, v42);
      v30(v28 + v22[11], a1 + v20[11], v33);
      v43 = a1;
      v34 = v22[12];
      lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
      v35 = v28 + v34;
      v36 = v38;
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v28 + v38, 0x6172742070612063uLL, 0xEC00000063696666, v29, v33, v35);
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v28 + v36, 0x6172742070612073uLL, 0xEC00000063696666, v29, v33, v28 + v22[13]);
      static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v28 + v36, 0x7473616D20707865uLL, 0xEA00000000007265, v29, v33, v28 + v22[14]);
      outlined consume of Data._Representation(v48, v47);
      (*(*(v37 - 1) + 8))(v43);
      (*(v40 + 8))(v29, v41);
      return (*(v44 + 8))(v45, v33);
    }
  }

  __break(1u);
  return result;
}

uint64_t SessionKeyManager.State.AllSecrets.init(masterSecret:clientFinishedBytes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a3;
  v51 = a4;
  v52 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  v12 = *(v48 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v42 - v14;
  v53 = *(a5 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SessionKeyManager.State.MasterSecret();
  v19 = v18[12];
  v20 = type metadata accessor for SymmetricKey();
  v21 = *(*(v20 - 8) + 16);
  v21(a7, a1 + v19, v20);
  v22 = v18[13];
  v44 = a6;
  v23 = type metadata accessor for SessionKeyManager.State.AllSecrets();
  v24 = a1 + v22;
  v25 = v23;
  v21(a7 + *(v23 + 36), v24, v20);
  v42 = v18;
  v43 = v20;
  v26 = v18[14];
  v27 = *(v25 + 40);
  v45 = a7;
  v21(a7 + v27, a1 + v26, v20);
  v28 = v50;
  v29 = *(v53 + 16);
  v30 = v17;
  v46 = a1;
  v29(v17, a1, a5);
  v31 = v28;
  v32 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    v33 = 0;
    result = v51;
    v35 = v52;
    if (v32 == 2)
    {
      v33 = *(v52 + 24);
    }
  }

  else if (v32)
  {
    result = v51;
    v35 = v52;
    v33 = v52 >> 32;
  }

  else
  {
    v33 = BYTE6(v28);
    result = v51;
    v35 = v52;
  }

  if (v33 < result)
  {
    __break(1u);
  }

  else
  {
    v54 = Data._Representation.subscript.getter();
    v55 = v36;
    lazy protocol witness table accessor for type Data and conformance Data();
    HashFunction.update<A>(data:)();
    outlined consume of Data._Representation(v54, v55);
    v37 = v47;
    dispatch thunk of HashFunction.finalize()();
    v38 = v42;
    v39 = v42[9];
    v40 = *(v25 + 44);
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
    v41 = v46;
    static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(v46 + v39, 0x7473616D20736572uLL, 0xEA00000000007265, v37, v43, v45 + v40);
    outlined consume of Data._Representation(v35, v31);
    (*(*(v38 - 1) + 8))(v41, v38);
    (*(v48 + 8))(v37, v49);
    return (*(v53 + 8))(v30, a5);
  }

  return result;
}

uint64_t SessionKeyManager.State.HandshakeSecret.dataToSignInServerCertificateVerify.getter(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v16[-v6];
  v19 = xmmword_1B26C6130;
  v20 = 0;
  specialized Data.append<A>(contentsOf:)(64);
  specialized Data.append<A>(contentsOf:)(0xD000000000000021, 0x80000001B26CD800);
  if (("dataToSignInCertificateVerify" & 0x1000000000000000) != 0)
  {
    String.UTF8View._foreignCount()();
  }

  v17 = 0;
  v18[3] = MEMORY[0x1E69E6290];
  v18[4] = MEMORY[0x1E6969DF8];
  v18[0] = &v17;
  v18[1] = v18;
  v8 = __swift_project_boxed_opaque_existential_0(v18, MEMORY[0x1E69E6290]);
  v10 = *v8;
  v9 = v8[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v11 = dispatch thunk of HashFunction.finalize()();
  MEMORY[0x1EEE9AC00](v11);
  *&v16[-16] = &v19;
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  v13 = v19;
  outlined copy of Data._Representation(v19, *(&v19 + 1));
  outlined consume of Data._Representation(v13, *(&v13 + 1));
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t SessionKeyManager.State.HandshakeSecret.serverFinishedPayload.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(v9 - 8);
  v22 = v9;
  v23 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 44);
  v27 = MEMORY[0x1E69E7CC0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = dispatch thunk of static Digest.byteCount.getter();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  v17 = v22;
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v24 + v21, 0x64656873696E6966uLL, 0xE800000000000000, &v27, v15, v22, v16, v13);
  dispatch thunk of HashFunction.finalize()();
  v18 = *(AssociatedConformanceWitness + 8);
  static HMAC.authenticationCode<A>(bytes:using:)();
  (*(v25 + 8))(v8, AssociatedTypeWitness);
  return (*(v23 + 8))(v13, v17);
}

uint64_t SessionKeyManager.State.HandshakeSecret.addMessageToTranscriptHash(_:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(result + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = result >> 32;
  }

  else
  {
    v6 = BYTE6(a2);
  }

  if (v6 < a3)
  {
    __break(1u);
  }

  else
  {
    v10 = Data._Representation.subscript.getter();
    v11 = v7;
    v9 = *(a4 + 16);
    v8 = *(a4 + 24);
    lazy protocol witness table accessor for type Data and conformance Data();
    HashFunction.update<A>(data:)();
    return outlined consume of Data._Representation(v10, v11);
  }

  return result;
}

uint64_t SessionKeyManager.State.MasterSecret.clientFinishedPayload.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(v9 - 8);
  v22 = v9;
  v23 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 40);
  v27 = MEMORY[0x1E69E7CC0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = dispatch thunk of static Digest.byteCount.getter();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  v17 = v22;
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v24 + v21, 0x64656873696E6966uLL, 0xE800000000000000, &v27, v15, v22, v16, v13);
  dispatch thunk of HashFunction.finalize()();
  v18 = *(AssociatedConformanceWitness + 8);
  static HMAC.authenticationCode<A>(bytes:using:)();
  (*(v25 + 8))(v8, AssociatedTypeWitness);
  return (*(v23 + 8))(v13, v17);
}

uint64_t SessionKeyManager.State.AllSecrets.generateSessionTicketPSK(ticketNonce:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v6 = v5;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(result + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = result >> 32;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  if (v10 < a3)
  {
    __break(1u);
  }

  else
  {
    v11 = *(a4 + 44);
    v17 = Data._Representation.subscript.getter();
    v18 = v12;
    v14 = *(a4 + 16);
    v13 = *(a4 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v15 = dispatch thunk of static Digest.byteCount.getter();
    v16 = type metadata accessor for SymmetricKey();
    lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
    static HKDF.expandLabel<A, B>(secret:label:context:length:)(v6 + v11, 0x6974706D75736572uLL, 0xEA00000000006E6FLL, &v17, v15, v16, MEMORY[0x1E6969080], a5);
    return outlined consume of Data._Representation(v17, v18);
  }

  return result;
}

uint64_t SessionKeyManager.State.EarlySecret.init(transcriptHasher:derivedSecret:binderKey:clientEarlyTrafficSecret:earlyExporterMasterSecret:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v12 = type metadata accessor for SessionKeyManager.State.EarlySecret();
  v13 = v12[9];
  v14 = type metadata accessor for SymmetricKey();
  v17 = *(*(v14 - 8) + 32);
  (v17)((v14 - 8), a7 + v13, a2, v14);
  v17(a7 + v12[10], a3, v14);
  v17(a7 + v12[11], a4, v14);
  v15 = a7 + v12[12];

  return (v17)(v15, a5, v14);
}

uint64_t static SessionKeyManager.State.EarlySecret.tryToResume(session:binderSecret:clientHello:currentTime:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = Date.timeIntervalSince(_:)();
  v13 = v12 * 1000.0;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 4294967300.0)
  {
    v14 = v13;
    v15 = type metadata accessor for SessionTicket();
    v16 = *(a1 + *(v15 + 24));
    v17 = (a1 + *(v15 + 32));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    outlined copy of Data._Representation(*v17, v19);
    v21 = specialized static SessionKeyManager.State.EarlySecret.calculateFinalClientHello(binderSecret:clientHello:obfuscatedTicketAge:identity:)(a2, a3, v18, v19, v20, v16 + v14, a5, a6);
    outlined consume of Data._Representation(v18, v19);
    return v21;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static SessionKeyManager.State.EarlySecret.useEPSK(epsk:binderSecret:clientHello:currentTime:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = GeneralEPSK.identity.getter();
  v12 = v11;
  v14 = specialized static SessionKeyManager.State.EarlySecret.calculateFinalClientHello(binderSecret:clientHello:obfuscatedTicketAge:identity:)(a2, a3, v10, v11, v13, 0, a5, a6);
  outlined consume of Data._Representation(v10, v12);
  return v14;
}

uint64_t specialized static SessionKeyManager.State.EarlySecret.calculateFinalClientHello(binderSecret:clientHello:obfuscatedTicketAge:identity:)(int64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v104 = a2;
  v93 = a1;
  v13 = 0;
  v95 = type metadata accessor for HashedAuthenticationCode();
  v14 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v79 - v15;
  v99 = type metadata accessor for SymmetricKey();
  v90 = *(v99 - 8);
  v16 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  v19 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v97 = &v79 - v20;
  v91 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v102 = AssociatedTypeWitness;
  v96 = AssociatedConformanceWitness;
  v22 = dispatch thunk of static Digest.byteCount.getter();
  *&v111[0] = specialized Data.init(count:)(v22);
  *(&v111[0] + 1) = v23;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v111, 0);
  v101 = *(&v111[0] + 1);
  v24 = *&v111[0];
  v25 = *(&v111[0] + 1) >> 62;
  if ((*(&v111[0] + 1) >> 62) > 1)
  {
    if (v25 == 2)
    {
      v13 = *(*&v111[0] + 16);
    }
  }

  else if (v25)
  {
    v13 = SLODWORD(v111[0]);
  }

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMR);
  v26 = swift_allocObject();
  v103 = xmmword_1B26C6030;
  *(v26 + 16) = xmmword_1B26C6030;
  *(v26 + 32) = a3;
  *(v26 + 40) = a4;
  v87 = a5;
  *(v26 + 48) = a5;
  *(v26 + 56) = a6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = v103;
  v28 = v101;
  *(v27 + 32) = v24;
  *(v27 + 40) = v28;
  *(v27 + 48) = v13;
  v110 = 0;
  v29 = v24;
  v30 = *(v104 + 96);
  outlined copy of Data._Representation(a3, a4);
  v92 = v29;
  outlined copy of Data._Representation(v29, v28);

  v100 = v27;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = a6;
  v86 = a4;
  v83 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  v34 = &v30[88 * v33];
  v35 = v100;
  *(v34 + 4) = v26;
  *(v34 + 5) = v35;
  v34[48] = v110;
  v34[112] = -96;
  v36 = v104;
  *(v104 + 96) = v30;
  v108 = xmmword_1B26C6130;
  v109 = 0;
  v37 = v36[5];
  v111[4] = v36[4];
  v111[5] = v37;
  v112 = v30;
  v38 = v36[1];
  v111[0] = *v36;
  v111[1] = v38;
  v39 = v36[3];
  v111[2] = v36[2];
  v111[3] = v39;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, logger);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = dispatch thunk of static Digest.byteCount.getter() + 3;
    _os_log_impl(&dword_1B25F5000, v41, v42, "bindersarray length should be %ld", v43, 0xCu);
    MEMORY[0x1B274ECF0](v43, -1, -1);
  }

  v44 = *(&v108 + 1) >> 62;
  if ((*(&v108 + 1) >> 62) > 1)
  {
    if (v44 != 2)
    {
      goto LABEL_22;
    }

    v45 = *(v108 + 24);
  }

  else
  {
    if (!v44)
    {
      goto LABEL_22;
    }

    v45 = v108 >> 32;
  }

  if (v45 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v82 = v26;
  v46 = Data._Representation.subscript.getter();
  v48 = v47;
  v49 = v96;
  v50 = dispatch thunk of static Digest.byteCount.getter();
  specialized BidirectionalCollection.dropLast(_:)(v50 + 3, v46, v48, v106);
  v80 = *(&v106[0] + 1);
  v81 = *&v106[0];
  lazy protocol witness table accessor for type Data and conformance Data();
  static HashFunction.hash<A>(data:)();
  *&v106[0] = MEMORY[0x1E69E7CC0];
  v51 = dispatch thunk of static Digest.byteCount.getter();
  LOBYTE(v46) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v52 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  v53 = v98;
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v93, 0x64656873696E6966uLL, 0xE800000000000000, v106, v51, v99, v46, v98);
  v54 = *(v49 + 8);
  v55 = v94;
  static HMAC.authenticationCode<A>(bytes:using:)();
  v56 = v95;
  WitnessTable = swift_getWitnessTable();
  v58 = ByteBuffer.init<A>(bytes:)(v55, v56, WitnessTable);
  v60 = v59;
  v62 = v61;
  outlined consume of Data._Representation(v92, v101);
  v63 = *(&v108 + 1) >> 62;
  if ((*(&v108 + 1) >> 62) > 1)
  {
    v64 = 0;
    if (v63 == 2)
    {
      v64 = *(v108 + 24);
    }
  }

  else if (v63)
  {
    v64 = v108 >> 32;
  }

  else
  {
    v64 = BYTE14(v108);
  }

  v65 = v60 >> 62;
  if ((v60 >> 62) > 1)
  {
    if (v65 == 2)
    {
      v66 = *(v58 + 24);
    }

    else
    {
      v66 = 0;
    }
  }

  else if (v65)
  {
    v66 = v58 >> 32;
  }

  else
  {
    v66 = BYTE6(v60);
  }

  v67 = __OFSUB__(v66, v62);
  v68 = v66 - v62;
  if (v67)
  {
    __break(1u);
  }

  else
  {
    v52 = v112;
    ByteBuffer.setImmutableBuffer(_:at:)(v58, v60, v62, v64 - v68);
    v53 = *(v52 + 16);
    v56 = swift_allocObject();
    *(v56 + 16) = v103;
    v69 = v83;
    v71 = v86;
    v70 = v87;
    *(v56 + 32) = v83;
    *(v56 + 40) = v71;
    *(v56 + 48) = v70;
    *(v56 + 56) = v88;
    v55 = swift_allocObject();
    *(v55 + 16) = v103;
    *(v55 + 32) = v58;
    *(v55 + 40) = v60;
    *(v55 + 48) = v62;
    outlined copy of Data._Representation(v69, v71);
    outlined copy of Data._Representation(v58, v60);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_37;
    }
  }

  v52 = specialized _ArrayBuffer._consumeAndCreateNew()(v52);
LABEL_37:
  outlined consume of Data._Representation(v81, v80);

  v105 = 0;

  (*(v90 + 8))(v98, v99);
  result = (*(v89 + 8))(v97, v102);
  if (v53)
  {
    if (v53 <= *(v52 + 16))
    {
      v73 = v52 + 88 * v53;
      v74 = *(v73 - 40);
      v106[0] = *(v73 - 56);
      v106[1] = v74;
      v75 = *(v73 - 24);
      v76 = *(v73 - 8);
      v77 = *(v73 + 8);
      v107 = *(v73 + 24);
      v106[3] = v76;
      v106[4] = v77;
      v106[2] = v75;
      *(v73 - 56) = v56;
      *(v73 - 48) = v55;
      *(v73 - 40) = v105;
      *(v73 + 24) = -96;
      outlined destroy of Extension(v106);
      *(v104 + 96) = v52;
      v78 = v108;
      outlined copy of Data._Representation(v108, *(&v108 + 1));
      outlined consume of Data._Representation(v78, *(&v78 + 1));
      outlined consume of Data._Representation(v58, v60);
      return v78;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized SessionKeyManager.generateHashForAuthenticator(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24[0] = *(AssociatedTypeWitness - 8);
  v9 = *(v24[0] + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v24 - v11;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = xmmword_1B26C6130;
  v28 = 0;
  result = dispatch thunk of HashFunction.init()();
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v19 = 0;
    if (v18 == 2)
    {
      v19 = *(a1 + 24);
    }
  }

  else if (v18)
  {
    v19 = a1 >> 32;
  }

  else
  {
    v19 = BYTE6(a2);
  }

  if (v19 < a3)
  {
    __break(1u);
  }

  else
  {
    v25 = Data._Representation.subscript.getter();
    v26 = v20;
    lazy protocol witness table accessor for type Data and conformance Data();
    HashFunction.update<A>(data:)();
    outlined consume of Data._Representation(v25, v26);
    v21 = dispatch thunk of HashFunction.finalize()();
    MEMORY[0x1EEE9AC00](v21);
    v24[-2] = &v27;
    v22 = *(swift_getAssociatedConformanceWitness() + 8);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v24[0] + 8))(v12, AssociatedTypeWitness);
    (*(v13 + 8))(v16, a4);
    v23 = v27;
    outlined copy of Data._Representation(v27, *(&v27 + 1));
    outlined consume of Data._Representation(v23, *(&v23 + 1));
    return v23;
  }

  return result;
}

uint64_t specialized SessionKeyManager.generateHMACForAuthenticator(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HashedAuthenticationCode();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 == 2)
    {
      v12 = *(a1 + 24);
    }
  }

  else if (v11)
  {
    v12 = a1 >> 32;
  }

  else
  {
    v12 = BYTE6(a2);
  }

  if (v12 < a3)
  {
    __break(1u);
  }

  else
  {
    v15 = Data._Representation.subscript.getter();
    v16 = v13;
    static HMAC.authenticationCode<A>(bytes:using:)();
    outlined consume of Data._Representation(v15, v16);
    WitnessTable = swift_getWitnessTable();
    return ByteBuffer.init<A>(bytes:)(v10, v6, WitnessTable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionKeyManager.State.EarlySecret(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for SessionKeyManager.State.EarlySecret(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for SymmetricKey() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t getEnumTagSinglePayload for SessionKeyManager.State.MasterSecret(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v11;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v12 = *(*(v8 - 8) + 64);
  v15 = ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + (v14 & ~v11)) & ~v11)) & ~v11)) & ~v11)) & ~v11)) & ~v11) + v12;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v24 = *(v6 + 48);

          return v24(a1, v7, v5);
        }

        else
        {
          v22 = *(v9 + 48);

          return v22((a1 + v14) & ~v11);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for SessionKeyManager.State.MasterSecret(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for SymmetricKey() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = *(v10 + 64);
  v16 = ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + (v14 & ~v13)) & ~v13)) & ~v13)) & ~v13)) & ~v13)) & ~v13) + v15;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v25 + 56);

    v24(a1, a2, v9, v7);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v14] & ~v13, a2);
  }
}

uint64_t getEnumTagSinglePayload for SessionKeyManager.State.HandshakeSecret(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for SessionKeyManager.State.HandshakeSecret(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for SymmetricKey() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t getEnumTagSinglePayload for ClientSessionKeyManager(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(type metadata accessor for SymmetricKey() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v8 + v7;
  v10 = ((v8 + v7 + ((v8 + v7 + ((v5 + v7) & ~v7)) & ~v7)) & ~v7) + v8;
  v11 = ((v10 + v7) & ~v7) + v8;
  if (v10 <= v11)
  {
    v10 = ((v10 + v7) & ~v7) + v8;
  }

  v12 = ((v9 + ((v11 + v7) & ~v7)) & ~v7) + v8;
  if (v12 > v10)
  {
    v10 = v12;
  }

  v13 = ((v9 + ((v9 + (v9 & ~v7)) & ~v7)) & ~v7) + v8;
  if (v13 > v10)
  {
    v10 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_29;
  }

  v14 = v10 + 1;
  v15 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v18 = ((a2 + ~(-1 << v15) - 251) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_29:
      v20 = *(a1 + v10);
      if (v20 >= 5)
      {
        return (v20 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return (v14 | v19) + 252;
}

void storeEnumTagSinglePayload for ClientSessionKeyManager(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(type metadata accessor for SymmetricKey() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = v10 + v9;
  v12 = ((v10 + v9 + ((v10 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v10;
  v13 = ((v12 + v9) & ~v9) + v10;
  if (v12 <= v13)
  {
    v12 = ((v12 + v9) & ~v9) + v10;
  }

  v14 = ((v11 + ((v13 + v9) & ~v9)) & ~v9) + v10;
  if (v14 > v12)
  {
    v12 = v14;
  }

  v15 = ((v11 + ((v11 + (v11 & ~v9)) & ~v9)) & ~v9) + v10;
  if (v15 <= v12)
  {
    v15 = v12;
  }

  v16 = v15 + 1;
  if (a3 < 0xFC)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 + ~(-1 << (8 * v16)) - 251) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (a2 > 0xFB)
  {
    v18 = a2 - 252;
    if (v16 >= 4)
    {
      bzero(a1, v15 + 1);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v15 != -1)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
LABEL_43:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v15] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v17 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_28;
  }

  *&a1[v16] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of PSK(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of GeneralEPSK(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary7RawEPSKVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ByteBuffer.writeQUICTransportParameters(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *(result + 16);
      v4 = *(result + 24);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    if (v3)
    {
      v4 = result >> 32;
    }

    else
    {
      v4 = BYTE6(a2);
    }

    if (v3)
    {
      v5 = result;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4 < a3 || v4 < v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v6 = Data._Representation.subscript.getter();
  v8 = v7;
  Data.append(_:)();
  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      outlined consume of Data._Representation(v6, v8);
      return BYTE6(v8);
    }

LABEL_20:
    result = outlined consume of Data._Representation(v6, v9);
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      return HIDWORD(v6) - v6;
    }

    goto LABEL_24;
  }

  if (v10 != 2)
  {
    outlined consume of Data._Representation(v6, v8);
    return 0;
  }

  v12 = *(v6 + 16);
  v11 = *(v6 + 24);
  outlined consume of Data._Representation(v6, v9);
  result = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.QUICTransportParameters and conformance Extension.QUICTransportParameters()
{
  result = lazy protocol witness table cache variable for type Extension.QUICTransportParameters and conformance Extension.QUICTransportParameters;
  if (!lazy protocol witness table cache variable for type Extension.QUICTransportParameters and conformance Extension.QUICTransportParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.QUICTransportParameters and conformance Extension.QUICTransportParameters);
  }

  return result;
}

uint64_t static Extension.EarlyData.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((a2 & 0x100000000) == 0 && a1 == a2)
  {
    return 1;
  }

  return 0;
}

uint64_t ByteBuffer.writeEarlyDataExtension(_:)(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x100000000) != 0)
  {
    result = 0;
  }

  else
  {
    v6 = bswap32(a1);
    v7[3] = MEMORY[0x1E69E6290];
    v7[4] = MEMORY[0x1E6969DF8];
    v7[0] = &v6;
    v7[1] = v7;
    v1 = __swift_project_boxed_opaque_existential_0(v7, MEMORY[0x1E69E6290]);
    v3 = *v1;
    v2 = v1[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(v7);
    result = 4;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _s15SwiftTLSLibrary10ByteBufferV22readEarlyDataExtension11messageTypeAA0H0O0fG0VAA09HandshakeJ0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 == 1 || a1 == 8)
  {
    LODWORD(v2) = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  if (a1 == 4)
  {
    v2 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
    if ((v2 & 0x100000000) == 0)
    {
      v3 = 0;
      return v2 | (v3 << 32);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  else
  {
    v5 = a1 | 0x330000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v5;
  }
}

uint64_t Extension.EarlyData.maxEarlyDataSize.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

void Extension.EarlyData.hash(into:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = a2;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }
}

Swift::Int Extension.EarlyData.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.EarlyData()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.EarlyData()
{
  if (*(v0 + 4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.EarlyData()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.EarlyData(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type Extension.EarlyData and conformance Extension.EarlyData()
{
  result = lazy protocol witness table cache variable for type Extension.EarlyData and conformance Extension.EarlyData;
  if (!lazy protocol witness table cache variable for type Extension.EarlyData and conformance Extension.EarlyData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.EarlyData and conformance Extension.EarlyData);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TLSInnerPlaintext.length.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16) + 1;
  result = v3 + a3;
  if (__OFADD__(v3, a3))
  {
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary13TLSCiphertextV8writeKey5nonce14innerPlaintext14additionalDataAC9CryptoKit09SymmetricE0V_AA5NonceVAA08TLSInnerH0V10Foundation0J0VtAA8TLSErrorOYKcfC(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, int a5, size_t a6, uint64_t a7, unint64_t a8)
{
  v12 = _s15SwiftTLSLibrary17TLSInnerPlaintextV7protect8writeKey5nonce14additionalDataSays5UInt8VGSg9CryptoKit09SymmetricG0V_AA5NonceV10Foundation0J0VtAA8TLSErrorOYKF(a1, a2, a3, a7, a8, a4, a5, a6);
  if (v8)
  {
    v13 = type metadata accessor for SymmetricKey();
    (*(*(v13 - 8) + 8))(a1, v13);
    outlined consume of Data._Representation(a7, a8);
  }

  else
  {

    if (v12)
    {
      v14 = type metadata accessor for SymmetricKey();
      (*(*(v14 - 8) + 8))(a1, v14);
      outlined consume of Data._Representation(a7, a8);
    }

    else
    {
      v12 = 0xD000000000000018;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(a7, a8);
      v16 = type metadata accessor for SymmetricKey();
      (*(*(v16 - 8) + 8))(a1, v16);
    }
  }

  return v12;
}

unint64_t _s15SwiftTLSLibrary13TLSCiphertextV9deprotect12peerWriteKey5nonce19aeadExpansionLengthAA17DeprotectedRecordV9CryptoKit09SymmetricG0V_AA5NonceVSitAA8TLSErrorOYKF(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v83 = a4;
  v84 = a5;
  v80 = a1;
  v92 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for AES.GCM.SealedBox();
  v81 = *(v8 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AES.GCM.Nonce();
  v82 = *(v12 - 8);
  v13 = *(v82 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - v17;
  Nonce.array.getter(a2, a3);
  *&v89 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  AES.GCM.Nonce.init<A>(data:)();
  if (v5)
  {

    v89 = xmmword_1B26C6420;
    LOBYTE(v90) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = 32;
    goto LABEL_9;
  }

  v21 = v16;
  v22 = v82;
  v78 = v11;
  v79 = v18;
  v76 = v8;
  v23 = v84;
  v24 = *(v84 + 16);
  v25 = v24 - v83;
  if (v24 <= v83)
  {
    v89 = xmmword_1B26C88D0;
    LOBYTE(v90) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    (*(v22 + 8))(v79, v12);
    result = 34;
    goto LABEL_9;
  }

  if (__OFSUB__(v24, v83))
  {
    __break(1u);
    goto LABEL_89;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v77 = v12;
  if (v24 < v25)
  {
    goto LABEL_90;
  }

  (*(v82 + 16))(v21, v79, v77);
  *&v89 = v23;
  *(&v89 + 1) = v23 + 32;
  v90 = 0;
  v91 = (2 * v25) | 1;
  v85 = v23;
  v86 = v23 + 32;
  v87 = v25;
  v88 = (2 * v24) | 1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance <A> ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR);
  AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
  v11 = v22;
  v27 = additionalData(ciphertextLength:)(v24);
  v29 = v28;
  *&v89 = v27;
  *(&v89 + 1) = v28;
  lazy protocol witness table accessor for type Data and conformance Data();
  result = static AES.GCM.open<A>(_:using:authenticating:)();
  v22 = result;
  v24 = v30;
  v25 = v30 >> 62;
  v31 = v76;
  v32 = v81;
  if ((v30 >> 62) <= 1)
  {
    if (!v25)
    {
      v62 = v27;
      v63 = v29;
      v33 = BYTE6(v30);
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v25 != 2)
  {
    v62 = v27;
    v63 = v29;
    v33 = 0;
    goto LABEL_25;
  }

  v35 = *(result + 16);
  v34 = *(result + 24);
  v36 = __OFSUB__(v34, v35);
  v37 = v34 - v35;
  if (v36)
  {
    __break(1u);
LABEL_17:
    LODWORD(v37) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
    }

    v37 = v37;
  }

  if (v37 > 16385)
  {
    v89 = xmmword_1B26C88E0;
    LOBYTE(v90) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    swift_bridgeObjectRelease_n();
    outlined consume of Data._Representation(v27, v29);
    outlined consume of Data._Representation(v22, v24);
    (*(v32 + 8))(v78, v31);
    v11[1](v79, v77);
    result = 28;
    goto LABEL_9;
  }

  v63 = v29;
  v62 = v27;
  if (v25 == 2)
  {
    v33 = *(result + 24);
  }

  else
  {
    v33 = result >> 32;
  }

LABEL_25:
  v8 = v33 - 1;
  if (__OFSUB__(v33, 1))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v61 = 0;
  if (v8 < 1)
  {
    goto LABEL_49;
  }

  if (v25 == 3)
  {
    goto LABEL_106;
  }

  v83 = result;
  v80 = BYTE6(v30);
  v74 = result >> 8;
  v75 = result >> 32;
  v73 = result >> 16;
  v72 = result >> 24;
  v71 = HIDWORD(result);
  v70 = result >> 40;
  v69 = HIWORD(result);
  v68 = HIBYTE(result);
  v67 = v30 >> 8;
  v66 = v30 >> 16;
  v65 = v30 >> 24;
  v64 = HIDWORD(v30);
  v38 = v30 >> 40;
  while (1)
  {
    if (v25 == 1)
    {
      if (v8 < v83 || v8 >= v75)
      {
        goto LABEL_93;
      }

      result = __DataStorage._bytes.getter();
      if (result)
      {
        v40 = result;
        v41 = __DataStorage._offset.getter();
        v42 = v8 - v41;
        if (__OFSUB__(v8, v41))
        {
          goto LABEL_95;
        }

LABEL_29:
        if (*(v40 + v42))
        {
          goto LABEL_49;
        }

        goto LABEL_30;
      }

      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      return result;
    }

    if (v25)
    {
      break;
    }

    if (v8 >= v80)
    {
      goto LABEL_92;
    }

    LOBYTE(v89) = v22;
    BYTE1(v89) = v74;
    BYTE2(v89) = v73;
    BYTE3(v89) = v72;
    BYTE4(v89) = v71;
    BYTE5(v89) = v70;
    BYTE6(v89) = v69;
    BYTE7(v89) = v68;
    BYTE8(v89) = v24;
    BYTE9(v89) = v67;
    BYTE10(v89) = v66;
    BYTE11(v89) = v65;
    BYTE12(v89) = v64;
    BYTE13(v89) = v38;
    if (*(&v89 + v8))
    {
      goto LABEL_49;
    }

LABEL_30:
    if (v8-- <= 1)
    {
      goto LABEL_48;
    }
  }

  if (v8 < *(v22 + 16))
  {
    goto LABEL_91;
  }

  if (v8 >= *(v22 + 24))
  {
    goto LABEL_94;
  }

  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_105;
  }

  v40 = result;
  v43 = __DataStorage._offset.getter();
  v42 = v8 - v43;
  if (!__OFSUB__(v8, v43))
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_48:
  v8 = 0;
LABEL_49:
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v44 = *(v22 + 24);
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = BYTE6(v24);
    if (v25)
    {
      v44 = v22 >> 32;
    }
  }

  v36 = __OFSUB__(v44, 1);
  v45 = v44 - 1;
  if (v36)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v8 == v45)
  {
    goto LABEL_80;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_99;
  }

  while (2)
  {
    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, logger);
    outlined copy of Data._Representation(v22, v24);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = v49;
      *v49 = 134218496;
      *(v49 + 4) = v8;
      *(v49 + 12) = 2048;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v51 = *(v22 + 24);
        }

        else
        {
          v51 = 0;
        }
      }

      else if (v25)
      {
        v51 = v22 >> 32;
      }

      else
      {
        v51 = BYTE6(v24);
      }

      v36 = __OFSUB__(v51, 1);
      v52 = v51 - 1;
      if (v36)
      {
        goto LABEL_101;
      }

      *(v49 + 14) = v52;
      *(v49 + 22) = 2048;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v53 = *(v22 + 24);
        }

        else
        {
          v53 = 0;
        }
      }

      else if (v25)
      {
        v53 = v22 >> 32;
      }

      else
      {
        v53 = BYTE6(v24);
      }

      v36 = __OFSUB__(v53, 1);
      v54 = v53 - 1;
      if (v36)
      {
        goto LABEL_102;
      }

      v36 = __OFSUB__(v54, v8);
      v55 = v54 - v8;
      if (v36)
      {
        goto LABEL_103;
      }

      *(v49 + 24) = v55;
      outlined consume of Data._Representation(v22, v24);
      _os_log_impl(&dword_1B25F5000, v47, v48, "contentTypeIndex is: %ld. Last index is: %ld. Padding length = %ld", v50, 0x20u);
      MEMORY[0x1B274ECF0](v50, -1, -1);
    }

    else
    {
      outlined consume of Data._Representation(v22, v24);
    }

LABEL_80:
    v56 = 0;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v56 = *(v22 + 16);
LABEL_85:
        outlined copy of Data._Representation(v22, v24);
      }
    }

    else if (v25)
    {
      v56 = v22;
      goto LABEL_85;
    }

    if (v8 < v56)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      swift_once();
      continue;
    }

    break;
  }

  v57 = Data._Representation.subscript.getter();
  v59 = v58;
  outlined consume of Data._Representation(v22, v24);
  outlined copy of Data._Representation(v57, v59);
  v60 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v57, v59);
  Data._Representation.subscript.getter();
  swift_bridgeObjectRelease_n();
  outlined consume of Data._Representation(v62, v63);
  outlined consume of Data._Representation(v22, v24);
  outlined consume of Data._Representation(v57, v59);
  (*(v81 + 8))(v78, v76);
  v11[1](v79, v77);
  result = v60;
LABEL_9:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v11, 0);
      v15 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t dataToString(data:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v1);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in dataToString(data:), 0, v1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], *(*(*(v2 + 8) + 8) + 8), MEMORY[0x1E69E7410], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v4 = BidirectionalCollection<>.joined(separator:)();

  return v4;
}

uint64_t closure #1 in dataToString(data:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7508];
  *(v4 + 16) = xmmword_1B26C6030;
  v6 = MEMORY[0x1E69E7558];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = String.init(format:_:)();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t _s15SwiftTLSLibrary17TLSInnerPlaintextV7protect8writeKey5nonce14additionalDataSays5UInt8VGSg9CryptoKit09SymmetricG0V_AA5NonceV10Foundation0J0VtAA8TLSErrorOYKF(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, size_t a8)
{
  v56 = a8;
  v51 = a7;
  v52 = a6;
  *&v53 = a4;
  *(&v53 + 1) = a5;
  v54 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for AES.GCM.SealedBox();
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AES.GCM.Nonce();
  v55 = *(v19 - 8);
  v20 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Nonce.array.getter(a2, a3);
  *&v57 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  result = AES.GCM.Nonce.init<A>(data:)();
  if (v8)
  {

    v57 = xmmword_1B26C6420;
    v58 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 32;
  }

  else
  {
    v48 = v18;
    v49 = v19;
    v25 = v56;
    if ((v56 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v47 = v15;
      if (v56)
      {
        v26 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v26 + 16) = v25;
        bzero((v26 + 32), v25);
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      v27 = v52;
      v28 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B26C6030;
      *(inited + 32) = v28;
      v63 = v27;

      specialized Array.append<A>(contentsOf:)(inited);
      specialized Array.append<A>(contentsOf:)(v26);
      v61 = v63;
      v30 = v55;
      v31 = v22;
      v32 = v14;
      v33 = v49;
      (*(v55 + 16))(v14, v31, v49);
      (*(v30 + 56))(v14, 0, 1, v33);
      v57 = v53;
      lazy protocol witness table accessor for type Data and conformance Data();
      v34 = v48;
      v35 = MEMORY[0x1E6969080];
      static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)();
      v56 = 0;
      outlined destroy of AES.GCM.Nonce?(v32);

      v36 = AES.GCM.SealedBox.ciphertext.getter();
      v38 = v37;
      v39 = AES.GCM.SealedBox.tag.getter();
      v41 = v40;
      v61 = v36;
      v62 = v38;
      v59 = v35;
      v60 = MEMORY[0x1E6969078];
      *&v57 = v39;
      *(&v57 + 1) = v40;
      v42 = __swift_project_boxed_opaque_existential_0(&v57, v35);
      v43 = *v42;
      v44 = v42[1];
      outlined copy of Data._Representation(v36, v38);
      outlined copy of Data._Representation(v39, v41);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v43, v44);
      outlined consume of Data._Representation(v39, v41);
      outlined consume of Data._Representation(v36, v38);
      __swift_destroy_boxed_opaque_existential_0(&v57);
      v45 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v61, v62);
      (*(v50 + 8))(v34, v47);
      (*(v30 + 8))(v31, v49);
      return v45;
    }
  }

  return result;
}

void DeprotectedRecord.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt8 a3)
{
  v5 = *(a2 + 16);
  MEMORY[0x1B274DB20](v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }

  Hasher._combine(_:)(a3);
}

Swift::Int DeprotectedRecord.hashValue.getter(uint64_t a1, Swift::UInt8 a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  MEMORY[0x1B274DB20](v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DeprotectedRecord()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = *(*v0 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DeprotectedRecord()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = *(v1 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t TLSInnerPlaintext.serialize()(uint64_t result, char a2, size_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a3)
    {
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = a3;
      bzero((v6 + 32), a3);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B26C6030;
    *(inited + 32) = a2;

    specialized Array.append<A>(contentsOf:)(inited);
    specialized Array.append<A>(contentsOf:)(v6);
    return v4;
  }

  return result;
}

uint64_t TLSInnerPlaintext.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt8 a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  MEMORY[0x1B274DB20](v7);
  if (v7)
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(a3);
  return MEMORY[0x1B274DB20](a4);
}

Swift::Int TLSInnerPlaintext.hashValue.getter(uint64_t a1, Swift::UInt8 a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  v6 = *(a1 + 16);
  MEMORY[0x1B274DB20](v6);
  if (v6)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8);
      --v6;
    }

    while (v6);
  }

  Hasher._combine(_:)(a2);
  MEMORY[0x1B274DB20](a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TLSInnerPlaintext()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  TLSInnerPlaintext.hash(into:)(v5, v1, v3, v2);
  return Hasher._finalize()();
}

uint64_t outlined destroy of AES.GCM.Nonce?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized static DeprotectedRecord.__derived_struct_equals(_:_:)(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return a2 == a4;
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return a2 == a4;
    }
  }

  __break(1u);
  return result;
}

BOOL specialized static TLSInnerPlaintext.__derived_struct_equals(_:_:)(_BOOL8 result, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return a2 == a5 && a3 == a6;
  }

  v8 = (result + 32);
  v9 = (a4 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      return a2 == a5 && a3 == a6;
    }
  }

  __break(1u);
  return result;
}