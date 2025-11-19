_BYTE *_s11EnvironmentV8EndpointOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
        JUMPOUT(0x27535931CLL);
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s11EnvironmentV8EndpointO5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275359450);
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

uint64_t _s11EnvironmentV8EndpointO16PlaybackEndpointOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11EnvironmentV8EndpointO16PlaybackEndpointOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2753595ECLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_275359628(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_0();
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

_BYTE *sub_275359678(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x275359714);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_015_SonicKit_MusicB00C7ContentO11EnvironmentV7AccountV3BagVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27535976C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2753597AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27535980C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_27535984C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2753598B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2753B61F8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_27535990C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2753B61F8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_275359958()
{
  result = sub_2753B61F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s11EnvironmentV5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11EnvironmentV5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275359B18);
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

unint64_t sub_275359B60()
{
  result = qword_2809C27B0;
  if (!qword_2809C27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C27B0);
  }

  return result;
}

unint64_t sub_275359BB8()
{
  result = qword_2809C27B8;
  if (!qword_2809C27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C27B8);
  }

  return result;
}

void sub_275359C0C()
{
  if (!qword_2809C27C0)
  {
    v0 = sub_2753B74D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C27C0);
    }
  }
}

uint64_t sub_275359CC4(uint64_t a1)
{
  sub_275359D20();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_275359D20()
{
  if (!qword_2809C27C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C27C8);
    }
  }
}

void sub_275359D88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2753B72A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_275359DDC(uint64_t a1, uint64_t a2)
{
  sub_275359D88(0, &qword_2809C08E8, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275359E5C()
{
  v1 = OUTLINED_FUNCTION_24();
  v3 = v2(v1);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_275359EB0(uint64_t a1, uint64_t a2)
{
  sub_275359D88(0, &qword_2809C08E8, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_2_7(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x277D84560];

  sub_275358CF4(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_5_4()
{
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 25) = 16843009;
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

_SonicKit_MusicKit::MusicContentError_optional __swiftcall MusicContentError.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 301:
      v2 = 4;
      break;
    case 302:
      v2 = 5;
      break;
    case 303:
      v2 = 6;
      break;
    case 304:
      v2 = 7;
      break;
    case 305:
      v2 = 8;
      break;
    case 306:
      v2 = 9;
      break;
    case 307:
      v2 = 10;
      break;
    case 308:
      v2 = 11;
      break;
    case 309:
      v2 = 12;
      break;
    case 310:
      v2 = 13;
      break;
    case 311:
      v2 = 14;
      break;
    case 312:
      v2 = 15;
      break;
    case 313:
      v2 = 16;
      break;
    case 314:
      v2 = 17;
      break;
    case 315:
      v2 = 18;
      break;
    default:
      v3 = 0;
      v2 = 2;
      switch(rawValue)
      {
        case 0:
          goto LABEL_5;
        case 1:
          v3 = 1;
LABEL_5:
          v2 = v3;
          break;
        case 2:
          goto LABEL_24;
        case 3:
          v2 = 3;
          break;
        default:
          if (rawValue == 99999)
          {
            v2 = 19;
          }

          else
          {
            v2 = 20;
          }

          break;
      }

      break;
  }

LABEL_24:
  *v1 = v2;
  return rawValue;
}

unint64_t sub_27535A148()
{
  result = qword_2809C27D0;
  if (!qword_2809C27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C27D0);
  }

  return result;
}

uint64_t sub_27535A1BC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContentError.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_27535A1E8()
{
  result = qword_2809C27D8;
  if (!qword_2809C27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C27D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicContentError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
        JUMPOUT(0x27535A308);
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27535A340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;

  sub_27535FC44(&v17);
  v3 = *(v17 + 16);
  v4 = (v17 + 40);
  if (v3)
  {
    while (2)
    {
      v5 = *(v4 + 20) | (*(v4 + 42) << 16);
      switch(*(v4 + 42) >> 5)
      {
        case 1:
        case 3:
        case 4:
          v4 += 7;
          if (!--v3)
          {
            goto LABEL_4;
          }

          continue;
        case 5:
          v13 = v4[3];
          v14 = v4[4];
          v15 = *(v4 + 1);
          v16 = *(v4 - 1);

          *a2 = v16;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          break;
        default:
          v8 = *(v4 - 1);
          v7 = *v4;
          v10 = v4[1];
          v9 = v4[2];
          v11 = v4[3];
          v12 = v4[4];

          *a2 = v8;
          *(a2 + 8) = v7;
          *(a2 + 16) = v10;
          *(a2 + 24) = v9;
          *(a2 + 32) = v11;
          *(a2 + 40) = v12;
          break;
      }

      break;
    }

    *(a2 + 50) = BYTE2(v5);
    *(a2 + 48) = v5;
  }

  else
  {
LABEL_4:

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 50) = -2;
    *(a2 + 48) = 254;
  }

  return result;
}

uint64_t MusicContent.RawIdentifier.MediaAPI.qualify(unavailableStorefronts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 47) = 0;
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.qualify(cloudRevision:cloudStatus:isDeleted:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *a3;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  *a5 = *v5;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  *(a5 + 40) = a1;
  *(a5 + 48) = a2 & 1 | (v6 << 8);
  *(a5 + 50) = ((a4 & 1) != 0) | 0x40;
}

uint64_t MusicContent.RawIdentifier.Opaque.qualify(mediaAPILookupStorefronts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 50) = -96;
  *(a2 + 48) = 0;
}

uint64_t MusicContent.QualifiedIdentifier.raw.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = -96;
  v8 = 0;
  v9 = 0;
  switch(*(v1 + 50) >> 5)
  {
    case 1:
      v9 = v1[3];
      v7 = 32;
      goto LABEL_7;
    case 2:
      v7 = *(v1 + 32) | 0x40;
      v11 = v1[1];

      v8 = v5;
      v9 = v6;
      break;
    case 3:
      v9 = v1[3];
      v7 = 96;
      goto LABEL_7;
    case 4:
      v9 = v1[3];
      v7 = 0x80;
LABEL_7:
      v12 = v1[1];
      v8 = v1[2];
      break;
    case 5:
      break;
    default:
      v9 = 0;
      v7 = 0;
      v8 = v1[2];
      v10 = v1[1];
      break;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v7;
  return result;
}

uint64_t static MusicContent.RawIdentifier.mediaAPI(id:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t static MusicContent.RawIdentifier.cloudLibrary(personID:ulid:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6 | 0x40;
}

uint64_t static MusicContentQualifiedIdentifier.sourceType.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t MusicContent.MediaAPIContentType.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_3();
  sub_2753B74E8();
  result = OUTLINED_FUNCTION_72_3();
  v3 = 5;
  if (v1 < 5)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t MusicContent.MediaAPIContentType.rawValue.getter()
{
  result = 0x73676E6F73;
  switch(*v0)
  {
    case 1:
      result = 0x69762D636973756DLL;
      break;
    case 2:
      result = 0x736D75626C61;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 0x736E6F6974617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27535A93C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return MusicContent.MediaAPIContentType.init(rawValue:)();
}

uint64_t sub_27535A948@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.MediaAPIContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicContent.LibraryContentType.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_3();
  sub_2753B74E8();
  result = OUTLINED_FUNCTION_72_3();
  v3 = 4;
  if (v1 < 4)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t MusicContent.LibraryContentType.rawValue.getter()
{
  result = 1735290739;
  switch(*v0)
  {
    case 1:
      result = 0x646956636973756DLL;
      break;
    case 2:
      result = 0x6D75626C61;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27535AAE4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return MusicContent.LibraryContentType.init(rawValue:)();
}

uint64_t sub_27535AAF0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.LibraryContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicContent.CloudLibraryContentType.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_3();
  sub_2753B74E8();
  result = OUTLINED_FUNCTION_72_3();
  v3 = 4;
  if (v1 < 4)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

unint64_t MusicContent.CloudLibraryContentType.rawValue.getter()
{
  result = 0x2D7972617262696CLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27535AC24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2752E91DC();
}

uint64_t sub_27535AC48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return MusicContent.CloudLibraryContentType.init(rawValue:)();
}

unint64_t sub_27535AC54@<X0>(unint64_t *a1@<X8>)
{
  result = MusicContent.CloudLibraryContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicContent.PurchasableContentType.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_3();
  sub_2753B74E8();
  result = OUTLINED_FUNCTION_72_3();
  v3 = 3;
  if (v1 < 3)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t MusicContent.PurchasableContentType.rawValue.getter()
{
  v1 = 0x646956636973756DLL;
  if (*v0 != 1)
  {
    v1 = 0x6D75626C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1735290739;
  }
}

uint64_t sub_27535AD5C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return MusicContent.PurchasableContentType.init(rawValue:)();
}

uint64_t sub_27535AD68@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.PurchasableContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27535ADC0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.CloudStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27535AFF4()
{
  OUTLINED_FUNCTION_39_3();
  sub_27536446C();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t MusicContent.RawIdentifier.MediaAPI.id.setter()
{
  result = OUTLINED_FUNCTION_41_3();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static MusicContent.RawIdentifier.MediaAPI.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_4(a1);
  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v6 && (sub_2753B7718() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_27();

  return sub_2752E8E7C(v7, v8);
}

uint64_t MusicContent.RawIdentifier.MediaAPI.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  v1 = *(v0 + 16);
  sub_2753B6688();

  return sub_2752E97E0();
}

uint64_t MusicContent.RawIdentifier.MediaAPI.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_24_2();
  sub_2752E97E0();
  return sub_2753B77D8();
}

uint64_t sub_27535B248()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2753B7798();
  sub_2753B6688();
  sub_2752E97E0();
  return sub_2753B77D8();
}

uint64_t MusicContent.RawIdentifier.Library.qualify(entityRevision:cloudStatus:isDeleted:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = 256;
  if ((a3 & 1) == 0)
  {
    v9 = 0;
  }

  *a4 = *v4;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = a1;
  *(a4 + 40) = v9 | v5;
  *(a4 + 50) = 32;
  *(a4 + 48) = 0;
  return OUTLINED_FUNCTION_31_3();
}

uint64_t MusicContent.RawIdentifier.Library.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2753B6688();
  MEMORY[0x277C76AA0](v2);

  return sub_2752E987C(v0, v3);
}

uint64_t MusicContent.RawIdentifier.Library.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x277C76AA0](v3);
  sub_2752E987C(v6, v4);
  return sub_2753B77D8();
}

uint64_t sub_27535B424()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_2753B7798();
  sub_2753B6688();
  MEMORY[0x277C76AA0](v3);
  sub_2752E987C(v6, v4);
  return sub_2753B77D8();
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.personID.setter()
{
  result = OUTLINED_FUNCTION_41_3();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.ulid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_27();
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.ulid.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static MusicContent.RawIdentifier.CloudLibrary.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_4(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v10 && (sub_2753B7718() & 1) == 0)
  {
    return 0;
  }

  v11 = v4 == v7 && v5 == v8;
  if (!v11 && (OUTLINED_FUNCTION_59_3() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_27();

  return sub_2752E91DC();
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_2753B6688();
  OUTLINED_FUNCTION_129_0();
  sub_2753B6688();

  return sub_2752E99B4();
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_24_2();
  sub_2753B6688();
  sub_2752E99B4();
  return sub_2753B77D8();
}

uint64_t sub_27535B738()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2753B7798();
  sub_2753B6688();
  sub_2753B6688();
  sub_2752E99B4();
  return sub_2753B77D8();
}

uint64_t MusicContent.RawIdentifier.StorePurchase.personID.setter()
{
  result = OUTLINED_FUNCTION_41_3();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_27535B910@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = a1;
  *(a2 + 50) = BYTE2(a1);
  return OUTLINED_FUNCTION_31_3();
}

uint64_t sub_27535B950(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  OUTLINED_FUNCTION_44_3(v3);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_2753B7718() & 1) == 0 || v1 != v2)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_27();

  return v8(v7);
}

uint64_t sub_27535BA08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 24);
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  sub_2753B7798();
  a4(v9);
  return sub_2753B77D8();
}

uint64_t sub_27535BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v6;
  *(a6 + 32) = a5;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t MusicContent.RawIdentifier.Opaque.id.setter()
{
  result = OUTLINED_FUNCTION_41_3();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static MusicContent.RawIdentifier.Opaque.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_4(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2753B7718();
  }
}

uint64_t MusicContent.RawIdentifier.Opaque.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2753B6688();
}

uint64_t MusicContent.RawIdentifier.Opaque.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_100();
  sub_2753B6688();
  return sub_2753B77D8();
}

uint64_t sub_27535BB90()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2753B7798();
  sub_2753B6688();
  return sub_2753B77D8();
}

uint64_t static MusicContent.RawIdentifier.opaque(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = -96;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t static MusicContent.RawIdentifier.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  v146[0] = *a1;
  v146[1] = v2;
  v146[2] = v5;
  v146[3] = v4;
  v147 = v6;
  v148 = v8;
  v149 = v7;
  v150 = v10;
  v151 = v9;
  v152 = v11;
  switch(v6 >> 5)
  {
    case 1u:
      if ((v11 & 0xE0) != 0x20)
      {
        goto LABEL_50;
      }

      if (v3 != v8 || v2 != v7)
      {
        OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_37_3() & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      if (v5 != v10)
      {
        goto LABEL_50;
      }

      v89 = OUTLINED_FUNCTION_6_2();
      sub_275329198(v89, v90, v91, v92, v93);
      v94 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v94, v95, v96, v97, v98);
      v99 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v99, v100, v101, v102, v103);
      v104 = OUTLINED_FUNCTION_6_2();
      sub_275329198(v104, v105, v106, v107, v108);
      v87 = sub_2752E8FAC(v4, v9);
      goto LABEL_41;
    case 2u:
      if ((v11 & 0xE0) != 0x40)
      {
        goto LABEL_50;
      }

      if (v3 != v8 || v2 != v7)
      {
        OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_37_3() & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      v35 = v5 == v10 && v4 == v9;
      if (!v35 && (sub_2753B7718() & 1) == 0)
      {
        goto LABEL_50;
      }

      v36 = OUTLINED_FUNCTION_1_7();
      sub_275329198(v36, v37, v38, v39, v40);
      v41 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v41, v42, v43, v44, v45);
      v46 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v46, v47, v48, v49, v50);
      v51 = OUTLINED_FUNCTION_1_7();
      sub_275329198(v51, v52, v53, v54, v55);
      v33 = sub_2752E91DC();
      goto LABEL_23;
    case 3u:
      if ((v11 & 0xE0) == 0x60)
      {
        goto LABEL_26;
      }

      goto LABEL_50;
    case 4u:
      if ((v11 & 0xE0) != 0x80)
      {
        goto LABEL_50;
      }

LABEL_26:
      if (v3 != v8 || v2 != v7)
      {
        OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_37_3() & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      if (v5 != v10)
      {
        goto LABEL_50;
      }

      v67 = OUTLINED_FUNCTION_6_2();
      sub_275329198(v67, v68, v69, v70, v71);
      v72 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v72, v73, v74, v75, v76);
      v77 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v77, v78, v79, v80, v81);
      v82 = OUTLINED_FUNCTION_6_2();
      sub_275329198(v82, v83, v84, v85, v86);
      v87 = sub_2752E90F0(v4, v9);
LABEL_41:
      v109 = v87;
      sub_2753609A8(v146, &qword_2809C27E0);
      v110 = OUTLINED_FUNCTION_6_2();
      sub_2753147B0(v110, v111, v112, v113, v114);
      v115 = OUTLINED_FUNCTION_0_6();
      sub_2753147B0(v115, v116, v117, v118, v119);
      return (v109 & 1) != 0;
    case 5u:
      if ((v11 & 0xE0) != 0xA0)
      {
        goto LABEL_50;
      }

      if (v3 == v8 && v2 == v7)
      {
        sub_275329198(v3, v2, v5, v4, v6);
        v142 = OUTLINED_FUNCTION_147();
        sub_275329198(v142, v143, v10, v9, v11);
        sub_2753609A8(v146, &qword_2809C27E0);
      }

      else
      {
        v145 = OUTLINED_FUNCTION_37_3();
        v121 = OUTLINED_FUNCTION_0_6();
        sub_275329198(v121, v122, v123, v124, v125);
        v126 = OUTLINED_FUNCTION_1_7();
        sub_275329198(v126, v127, v128, v129, v130);
        sub_2753609A8(v146, &qword_2809C27E0);
        result = 0;
        if ((v145 & 1) == 0)
        {
          return result;
        }
      }

      return 1;
    default:
      if (v11 >= 0x20 || (v3 == v8 ? (v12 = v2 == v7) : (v12 = 0), !v12 && (OUTLINED_FUNCTION_147(), (OUTLINED_FUNCTION_37_3() & 1) == 0)))
      {
LABEL_50:
        v132 = OUTLINED_FUNCTION_0_6();
        sub_275329198(v132, v133, v134, v135, v136);
        v137 = OUTLINED_FUNCTION_1_7();
        sub_275329198(v137, v138, v139, v140, v141);
        sub_2753609A8(v146, &qword_2809C27E0);
        return 0;
      }

      v13 = OUTLINED_FUNCTION_1_7();
      sub_275329198(v13, v14, v15, v16, v17);
      v18 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v18, v19, v20, v21, v22);
      v23 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v23, v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_1_7();
      sub_275329198(v28, v29, v30, v31, v32);
      v33 = sub_2752E8E7C(v5, v10);
LABEL_23:
      v144 = v33;
      sub_2753609A8(v146, &qword_2809C27E0);
      v56 = OUTLINED_FUNCTION_1_7();
      sub_2753147B0(v56, v57, v58, v59, v60);
      v61 = OUTLINED_FUNCTION_0_6();
      sub_2753147B0(v61, v62, v63, v64, v65);
      return (v144 & 1) != 0;
  }
}

uint64_t MusicContent.RawIdentifier.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  switch(*(v0 + 32) >> 5)
  {
    case 1:
      MEMORY[0x277C76A80](1);
      OUTLINED_FUNCTION_20_2();
      sub_2753B6688();
      MEMORY[0x277C76AA0](v3);
      OUTLINED_FUNCTION_70_3();

      result = sub_2752E987C(v9, v10);
      break;
    case 2:
      MEMORY[0x277C76A80](2);
      OUTLINED_FUNCTION_20_2();
      sub_2753B6688();
      sub_2753B6688();
      OUTLINED_FUNCTION_70_3();

      result = sub_2752E99B4();
      break;
    case 3:
      v7 = 3;
      goto LABEL_10;
    case 4:
      v7 = 4;
LABEL_10:
      MEMORY[0x277C76A80](v7);
      OUTLINED_FUNCTION_20_2();
      sub_2753B6688();
      MEMORY[0x277C76AA0](v3);
      sub_2753B6688();
      OUTLINED_FUNCTION_70_3();

      break;
    case 5:
      MEMORY[0x277C76A80](5);
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_70_3();

      result = sub_2753B6688();
      break;
    default:
      MEMORY[0x277C76A80](0);
      OUTLINED_FUNCTION_20_2();
      sub_2753B6688();
      OUTLINED_FUNCTION_70_3();

      result = sub_2752E97E0();
      break;
  }

  return result;
}

uint64_t MusicContent.RawIdentifier.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_100();
  MusicContent.RawIdentifier.hash(into:)();
  return sub_2753B77D8();
}

uint64_t sub_27535C1D8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_2753B7798();
  MusicContent.RawIdentifier.hash(into:)();
  return sub_2753B77D8();
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.raw.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.raw.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.unavailableStorefronts.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t static MusicContent.QualifiedIdentifier.MediaAPI.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_4(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v8 && (sub_2753B7718() & 1) == 0 || (sub_2752E8E7C(v4, v6) & 1) == 0)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_27();

  return sub_27535C378(v9, v10);
}

uint64_t sub_27535C378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2753B7718() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_2753B6688();
  sub_2752E97E0();
  v3 = OUTLINED_FUNCTION_129_0();

  return sub_275360930(v3, v4);
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_24_2();
  sub_2752E97E0();
  sub_275360930(v6, v3);
  return sub_2753B77D8();
}

uint64_t sub_27535C4C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 16);
  sub_2753B7798();
  sub_2753B6688();
  sub_2752E97E0();
  sub_275360930(v6, v3);
  return sub_2753B77D8();
}

double MusicContent.QualifiedIdentifier.Library.raw.setter(__int128 *a1)
{
  v1 = OUTLINED_FUNCTION_55_3(a1);
  *&result = OUTLINED_FUNCTION_68_2(v1, v2, v3, v4, v5, v6, v7, v8, v9).n128_u64[0];
  return result;
}

uint64_t static MusicContent.QualifiedIdentifier.Library.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_4(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 41);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 41);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_2753B7718();
    result = 0;
    if ((v15 & 1) == 0 || v4 != v9)
    {
      return result;
    }
  }

  v17 = OUTLINED_FUNCTION_27();
  v19 = sub_2752E8FAC(v17, v18);
  v20 = v6 == v11 && v7 == v12;
  v21 = v8 ^ v13 ^ 1;
  if (!v20)
  {
    v21 = 0;
  }

  if (v19)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

void MusicContent.QualifiedIdentifier.Library.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  v6 = *(v1 + 24);
  sub_2753B6688();
  MEMORY[0x277C76AA0](v2);
  sub_2752E987C(v0, v6);
  MEMORY[0x277C76A80](v3);
  MEMORY[0x277C76A80](v4);
  sub_2753B77B8();
  OUTLINED_FUNCTION_70_3();
}

uint64_t MusicContent.QualifiedIdentifier.Library.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x277C76AA0](v3);
  sub_2752E987C(v9, v7);
  MEMORY[0x277C76A80](v4);
  MEMORY[0x277C76A80](v5);
  sub_2753B77B8();
  return sub_2753B77D8();
}

uint64_t sub_27535C810()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 4);
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  sub_2753B7798();
  MusicContent.QualifiedIdentifier.Library.hash(into:)();
  return sub_2753B77D8();
}

uint64_t MusicContent.QualifiedIdentifier.CloudLibrary.raw.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 MusicContent.QualifiedIdentifier.CloudLibrary.raw.setter(__n128 *a1)
{
  v8 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];
  v5 = v1->n128_u64[1];
  v6 = v1[1].n128_u64[1];

  result = v8;
  *v1 = v8;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  v1[2].n128_u8[0] = v4;
  return result;
}

uint64_t MusicContent.QualifiedIdentifier.CloudLibrary.cloudRevision.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t MusicContent.QualifiedIdentifier.CloudLibrary.cloudRevision.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t static MusicContent.QualifiedIdentifier.CloudLibrary.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_4(a1);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v23 = *(v3 + 40);
  v8 = *(v3 + 48);
  v24 = *(v3 + 49);
  v9 = *(v3 + 50);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = *(v2 + 49);
  v16 = v1 == *v2 && v4 == *(v2 + 8);
  v21 = *(v2 + 50);
  v22 = v9;
  if (!v16 && (sub_2753B7718() & 1) == 0)
  {
    return 0;
  }

  v17 = v5 == v10 && v6 == v11;
  if (!v17 && (OUTLINED_FUNCTION_59_3() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_27();
  if ((sub_2752E91DC() & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v23 == v13)
    {
      v18 = v14;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v24 != 10)
  {
    if (v15 == 10 || v24 != v15)
    {
      return 0;
    }

    return v22 ^ v21 ^ 1u;
  }

  if (v15 == 10)
  {
    return v22 ^ v21 ^ 1u;
  }

  return 0;
}

void MusicContent.QualifiedIdentifier.CloudLibrary.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = *(v0 + 48);
  v7 = *(v0 + 49);
  v8 = *(v0 + 50);
  v9 = *(v0 + 32);
  sub_2753B6688();
  sub_2753B6688();
  sub_2752E99B4();
  sub_2753B77B8();
  if (v6 != 1)
  {
    MEMORY[0x277C76A80](v5);
  }

  sub_2753B77B8();
  if (v7 != 10)
  {
    MEMORY[0x277C76A80](v7);
  }

  sub_2753B77B8();
  OUTLINED_FUNCTION_70_3();
}

uint64_t MusicContent.QualifiedIdentifier.CloudLibrary.hashValue.getter()
{
  OUTLINED_FUNCTION_100();
  MusicContent.QualifiedIdentifier.CloudLibrary.hash(into:)();
  return sub_2753B77D8();
}

uint64_t sub_27535CC20()
{
  sub_2753B7798();
  MusicContent.QualifiedIdentifier.CloudLibrary.hash(into:)();
  return sub_2753B77D8();
}

double sub_27535CCA8(__int128 *a1)
{
  v1 = OUTLINED_FUNCTION_55_3(a1);
  *&result = OUTLINED_FUNCTION_68_2(v1, v2, v3, v4, v5, v6, v7, v8, v9).n128_u64[0];
  return result;
}

BOOL sub_27535CD00(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  OUTLINED_FUNCTION_44_3(v3);
  v6 = v6 && v4 == v5;
  result = 0;
  if (v6 || (sub_2753B7718()) && v1 == v2)
  {
    v7 = OUTLINED_FUNCTION_27();
    if (sub_2752E90F0(v7, v8))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s015_SonicKit_MusicB00C7ContentO13RawIdentifierO13StorePurchaseV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_2753B6688();
  MEMORY[0x277C76AA0](v3);
  sub_2753B6688();
}

uint64_t _s015_SonicKit_MusicB00C7ContentO13RawIdentifierO13StorePurchaseV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x277C76AA0](v3);
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_27535CEEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v9 = *v4;
  v6 = *(v4 + 2);
  v7 = *(v4 + 24);
  sub_2753B7798();
  a4(v10);
  return sub_2753B77D8();
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.raw.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.raw.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.mediaAPILookupStorefronts.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static MusicContent.QualifiedIdentifier.Opaque.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_4(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (!v6 && (sub_2753B7718() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_27();

  return sub_27535C378(v7, v8);
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  v1 = *(v0 + 16);
  sub_2753B6688();
  v2 = OUTLINED_FUNCTION_27();

  return sub_275360930(v2, v3);
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_24_2();
  sub_275360930(v5, v3);
  return sub_2753B77D8();
}

uint64_t sub_27535D110()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2753B7798();
  sub_2753B6688();
  sub_275360930(v5, v3);
  return sub_2753B77D8();
}

uint64_t static MusicContent.QualifiedIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 50);
  v232 = *(a1 + 24);
  v10 = v232 | (v9 << 16);
  v12 = *a2;
  v11 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = *(a2 + 50);
  v18 = *(a2 + 24);
  v19 = v18 | (v17 << 16);
  v231[0] = v4;
  v231[1] = v3;
  v231[2] = v6;
  v231[3] = v5;
  v231[4] = v7;
  v231[5] = v8;
  v218 = v8;
  v233 = v9;
  v234 = v12;
  v235 = v11;
  v236 = v14;
  v237 = v13;
  v238 = v16;
  v239 = v15;
  v241 = v17;
  v240 = v18;
  switch(v9 >> 5)
  {
    case 1:
      if ((v19 & 0xE00000) != 0x200000)
      {
        goto LABEL_35;
      }

      v220 = v4;
      v221 = v3;
      v222 = v6;
      LOBYTE(v223) = v5;
      v224 = v7;
      LOWORD(v225) = v8 & 0x1FF;
      v209 = v7;
      v201 = v13;
      v205 = v5;
      v104 = OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_56_2(v104, v105, v106, v107, v108, v109);
      v110 = OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_25_3(v110, v111, v112);
      v113 = OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_25_3(v113, v114, v115);
      v116 = OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_52_3(v116, v117, v118, v119, v120, v121, v122, v123, v195, v196, v201, v205, v209, v15, v212, HIDWORD(v212), v16);
      v79 = static MusicContent.QualifiedIdentifier.Library.== infix(_:_:)(&v220);
      goto LABEL_26;
    case 2:
      v230 = v232 & 1;
      if ((v19 & 0xE00000) != 0x400000)
      {
        goto LABEL_35;
      }

      v229 = v18 & 1;
      v220 = v4;
      v221 = v3;
      v222 = v6;
      v223 = v5;
      LOBYTE(v224) = v7;
      v225 = v8;
      v226 = v230;
      v227 = HIBYTE(v232);
      v228 = BYTE2(v10) & 1;
      v208 = v7;
      v200 = v13;
      v204 = v5;
      v59 = OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_56_2(v59, v60, v61, v62, v63, v64);
      v65 = OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_25_3(v65, v66, v67);
      v68 = OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_25_3(v68, v69, v70);
      v71 = OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_52_3(v71, v72, v73, v74, v75, v76, v77, v78, v195, v196, v200, v204, v208, v15, v212, HIDWORD(v212), v16);
      v79 = static MusicContent.QualifiedIdentifier.CloudLibrary.== infix(_:_:)(&v220);
LABEL_26:
      v124 = v79;
      sub_2753609A8(v231, &qword_2809C27E8);
      v125 = OUTLINED_FUNCTION_5_5();
      sub_2752FBB6C(v125, v126, v127, v16, v216, v15, v213);
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_21_3();
      sub_2752FBB6C(v128, v129, v130, v131, v132, v133, v134);
      return v124 & 1;
    case 3:
      if ((v19 & 0xE00000) == 0x600000)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    case 4:
      if ((v19 & 0xE00000) != 0x800000)
      {
        goto LABEL_35;
      }

LABEL_15:
      OUTLINED_FUNCTION_49_2();
      v81 = v4 == v12 && v3 == v11;
      HIDWORD(v212) = v80;
      if (!v81)
      {
        OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_61_1() & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      if (v6 != v14)
      {
        goto LABEL_39;
      }

      v82 = OUTLINED_FUNCTION_50_3();
      v83 = v198;
      sub_275315CB8(v82, v84, v85, v198, v215, v210, HIDWORD(v212));
      v86 = OUTLINED_FUNCTION_2_8();
      v87 = v202;
      v88 = v206;
      OUTLINED_FUNCTION_69_3(v86, v89, v90, v202, v91, v92, v93, v94, v195, v196, v198, v202, v206, v210, v212, v215, v218);
      v95 = OUTLINED_FUNCTION_2_8();
      sub_275315CB8(v95, v96, v97, v87, v88, v2, v10);
      v98 = OUTLINED_FUNCTION_50_3();
      sub_275315CB8(v98, v99, v100, v83, v217, v211, v214);
      v197 = sub_2752E90F0(v87, v83);
      sub_2753609A8(v231, &qword_2809C27E8);
      v101 = OUTLINED_FUNCTION_50_3();
      sub_2752FBB6C(v101, v102, v103, v83, v217, v211, v214);
      v55 = OUTLINED_FUNCTION_2_8();
      v58 = v87;
      goto LABEL_22;
    case 5:
      if ((v19 & 0xE00000) != 0xA00000)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_49_2();
      HIDWORD(v212) = v135;
      if (v4 != v12 || v3 != v11)
      {
        OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_61_1() & 1) == 0)
        {
LABEL_39:
          OUTLINED_FUNCTION_2_8();
          OUTLINED_FUNCTION_21_3();
          sub_275315CB8(v167, v168, v169, v170, v171, v172, v173);
          OUTLINED_FUNCTION_5_5();
          OUTLINED_FUNCTION_28_3();
          v165 = HIDWORD(v212);
          goto LABEL_36;
        }
      }

      v137 = sub_27535C378(v6, v14);
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_21_3();
      sub_275315CB8(v138, v139, v140, v141, v142, v143, v144);
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_28_3();
      sub_275315CB8(v145, v146, v147, v148, v149, v150, HIDWORD(v212));
      sub_2753609A8(v231, &qword_2809C27E8);
      if ((v137 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    default:
      if ((v19 & 0xFFFFFFu) >= 0x200000)
      {
LABEL_35:
        v151 = v13;
        v152 = OUTLINED_FUNCTION_2_8();
        v154 = v153;
        sub_275315CB8(v152, v155, v156, v157, v158, v218, v10);
        v159 = OUTLINED_FUNCTION_5_5();
        v162 = v151;
        v163 = v16;
        v164 = v15;
        v165 = v154;
LABEL_36:
        sub_275315CB8(v159, v160, v161, v162, v163, v164, v165);
        sub_2753609A8(v231, &qword_2809C27E8);
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_49_2();
      v21 = v4 == v12 && v3 == v11;
      HIDWORD(v212) = v20;
      if (!v21)
      {
        OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_61_1() & 1) == 0)
        {
          OUTLINED_FUNCTION_5_5();
          OUTLINED_FUNCTION_28_3();
          sub_275315CB8(v188, v189, v190, v191, v192, v193, v194);
          OUTLINED_FUNCTION_2_8();
          OUTLINED_FUNCTION_21_3();
          goto LABEL_36;
        }
      }

      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_28_3();
      sub_275315CB8(v22, v23, v24, v25, v26, v27, v28);
      v29 = OUTLINED_FUNCTION_2_8();
      v30 = v202;
      v31 = v206;
      OUTLINED_FUNCTION_69_3(v29, v32, v33, v202, v34, v35, v36, v37, v195, v196, v198, v202, v206, v210, v212, v215, v218);
      v38 = OUTLINED_FUNCTION_2_8();
      sub_275315CB8(v38, v39, v40, v30, v31, v2, v10);
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_2();
      sub_275315CB8(v41, v42, v43, v44, v45, v46, v47);
      if (sub_2752E8E7C(v6, v14))
      {
        v197 = sub_27535C378(v203, v199);
        sub_2753609A8(v231, &qword_2809C27E8);
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_48_2();
        sub_2752FBB6C(v48, v49, v50, v51, v52, v53, v54);
        v55 = OUTLINED_FUNCTION_2_8();
        v58 = v203;
LABEL_22:
        sub_2752FBB6C(v55, v56, v57, v58, v207, v219, v10);
        if (v197)
        {
LABEL_34:
          v124 = 1;
          return v124 & 1;
        }
      }

      else
      {
        sub_2753609A8(v231, &qword_2809C27E8);
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_48_2();
        sub_2752FBB6C(v174, v175, v176, v177, v178, v179, v180);
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_21_3();
        sub_2752FBB6C(v181, v182, v183, v184, v185, v186, v187);
      }

LABEL_37:
      v124 = 0;
      return v124 & 1;
  }
}

void MusicContent.QualifiedIdentifier.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + 24) | (*(v1 + 50) << 16);
  switch(*(v1 + 50) >> 5)
  {
    case 1:
      MEMORY[0x277C76A80](1);
      OUTLINED_FUNCTION_13_5();
      sub_2753B6688();
      MEMORY[0x277C76AA0](v5);
      sub_2752E987C(a1, v4);
      MEMORY[0x277C76A80](v6);
      MEMORY[0x277C76A80](v7);
      sub_2753B77B8();
      goto LABEL_8;
    case 2:
      v15 = v1[6] & 1;
      MEMORY[0x277C76A80](2);
      MusicContent.QualifiedIdentifier.CloudLibrary.hash(into:)();
LABEL_8:
      OUTLINED_FUNCTION_53_3();
      return;
    case 3:
      v10 = 3;
      goto LABEL_6;
    case 4:
      v10 = 4;
LABEL_6:
      MEMORY[0x277C76A80](v10);
      OUTLINED_FUNCTION_13_5();
      sub_2753B6688();
      MEMORY[0x277C76AA0](v5);
      sub_2753B6688();
      OUTLINED_FUNCTION_53_3();

      return;
    case 5:
      MEMORY[0x277C76A80](5);
      OUTLINED_FUNCTION_13_5();
      sub_2753B6688();
      goto LABEL_10;
    default:
      MEMORY[0x277C76A80](0);
      OUTLINED_FUNCTION_13_5();
      sub_2753B6688();
      sub_2752E97E0();
      OUTLINED_FUNCTION_129_0();
LABEL_10:
      OUTLINED_FUNCTION_53_3();

      sub_275360930(v11, v12);
      return;
  }
}

uint64_t MusicContent.QualifiedIdentifier.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 50);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v0[2];
  v10 = v2;
  v9 = v1;
  OUTLINED_FUNCTION_100();
  MusicContent.QualifiedIdentifier.hash(into:)(v5);
  return sub_2753B77D8();
}

uint64_t sub_27535D984()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 50);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v0[2];
  v10 = v2;
  v9 = v1;
  sub_2753B7798();
  MusicContent.QualifiedIdentifier.hash(into:)(v5);
  return sub_2753B77D8();
}

uint64_t MusicContent.RawIdentifier.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  switch(*(v0 + 32) >> 5)
  {
    case 1:
      OUTLINED_FUNCTION_26_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_65_2();
      MEMORY[0x277C76100](0xD000000000000015, 0x80000002753B98B0);
      OUTLINED_FUNCTION_34_3();
      MEMORY[0x277C76100](0x203A646970202CLL, 0xE700000000000000);
      v6 = sub_2753B76B8();
      MEMORY[0x277C76100](v6);

      OUTLINED_FUNCTION_11_4();
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_26_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_65_2();
      MEMORY[0x277C76100](0xD000000000000018, 0x80000002753B9890);
      OUTLINED_FUNCTION_34_3();
      MEMORY[0x277C76100](0x203A64696C75202CLL, 0xE800000000000000);
      MEMORY[0x277C76100](v4, v3);
      OUTLINED_FUNCTION_11_4();
      goto LABEL_6;
    case 3:
    case 4:
      OUTLINED_FUNCTION_26_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_65_2();
      MEMORY[0x277C76100](0xD00000000000001BLL, 0x80000002753B9870);
      OUTLINED_FUNCTION_34_3();
      MEMORY[0x277C76100](0x203A6469202CLL, 0xE600000000000000);
      v5 = sub_2753B76B8();
      MEMORY[0x277C76100](v5);

      OUTLINED_FUNCTION_11_4();
      goto LABEL_6;
    case 5:
      strcpy(v8, ".opaque(id: ");
      BYTE5(v8[1]) = 0;
      HIWORD(v8[1]) = -5120;
      OUTLINED_FUNCTION_34_3();
      goto LABEL_7;
    default:
      OUTLINED_FUNCTION_26_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_65_2();
      MEMORY[0x277C76100](0x5041616964656D2ELL, 0xEE00203A64692849);
      OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_11_4();
LABEL_6:
      sub_2753B7468();
LABEL_7:
      MEMORY[0x277C76100](41, 0xE100000000000000);
      return v8[0];
  }
}

void sub_27535DCC4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  switch(*(v1 + 32) >> 5)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      break;
    default:
      v3 = *(v1 + 16);
      break;
  }

  OUTLINED_FUNCTION_118(a1);
}

void MusicContent.QualifiedIdentifier.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v0 + 24) | (*(v0 + 50) << 16);
  switch(*(v0 + 50) >> 5)
  {
    case 1:
      OUTLINED_FUNCTION_66_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_35_2();

      sub_2753B6DC8();
      OUTLINED_FUNCTION_42_2();
      MEMORY[0x277C76100]();

      OUTLINED_FUNCTION_46_1();
      MEMORY[0x277C76100](v10 + 1, v11 | 0x8000000000000000);
      sub_2753B76B8();
      OUTLINED_FUNCTION_42_2();
      MEMORY[0x277C76100]();

      OUTLINED_FUNCTION_32_2();
      sub_2753B7468();
      OUTLINED_FUNCTION_33_1();
      v9 = (v3 & 0x100) == 0;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_66_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_35_2();

      sub_2753B6DC8();
      OUTLINED_FUNCTION_42_2();
      MEMORY[0x277C76100]();

      MEMORY[0x277C76100](0xD000000000000011, 0x80000002753B98F0);
      sub_2753B76B8();
      OUTLINED_FUNCTION_42_2();
      MEMORY[0x277C76100]();

      OUTLINED_FUNCTION_32_2();
      sub_2753B7468();
      OUTLINED_FUNCTION_33_1();
      v9 = (v5 & 0x10000) == 0;
LABEL_7:
      if (v9)
      {
        v12 = 0x65736C6166;
      }

      else
      {
        v12 = 1702195828;
      }

      if (v9)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0xE400000000000000;
      }

      v14 = v13;
      goto LABEL_18;
    case 3:
    case 4:
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_36_2();
      goto LABEL_17;
    case 5:
      if (*(v0[2] + 16))
      {
        OUTLINED_FUNCTION_66_3();

        sub_2753B7398();

        v15 = sub_2753B6DC8();
        MEMORY[0x277C76100](v15);

        OUTLINED_FUNCTION_46_1();
        MEMORY[0x277C76100](v16 | 0xC, v17 | 0x8000000000000000);
        sub_275361684(0, &qword_2809C1BB0);
        sub_275329E9C();
        v18 = sub_2753B6D48();
        v20 = v19;

        MEMORY[0x277C76100](v18, v20);
      }

      else
      {

        v21 = sub_2753B6DC8();
        MEMORY[0x277C76100](v21);
      }

      goto LABEL_19;
    default:
      if (*(v0[3] + 16))
      {
        OUTLINED_FUNCTION_66_3();

        sub_2753B7398();

        OUTLINED_FUNCTION_4_6();

        sub_2753B6DC8();
        OUTLINED_FUNCTION_42_2();
        MEMORY[0x277C76100]();

        OUTLINED_FUNCTION_46_1();
        MEMORY[0x277C76100](v6 + 9, v7 | 0x8000000000000000);
        sub_275361684(0, &qword_2809C1BB0);
        sub_275329E9C();
        sub_2753B6D48();

        v8 = OUTLINED_FUNCTION_129_0();
        MEMORY[0x277C76100](v8);
      }

      else
      {
        OUTLINED_FUNCTION_4_6();

LABEL_17:
        sub_2753B6DC8();
        OUTLINED_FUNCTION_42_2();
LABEL_18:
        MEMORY[0x277C76100](v12, v14);
      }

LABEL_19:

      MEMORY[0x277C76100](41, 0xE100000000000000);
      OUTLINED_FUNCTION_53_3();
      return;
  }
}

uint64_t sub_27535E3B4()
{
  OUTLINED_FUNCTION_39_3();
  sub_275360B3C();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t sub_27535E5D4()
{
  OUTLINED_FUNCTION_39_3();
  sub_275360DF0();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t sub_27535E7F4()
{
  OUTLINED_FUNCTION_39_3();
  sub_275360F7C();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t sub_27535EA14()
{
  OUTLINED_FUNCTION_39_3();
  sub_275361184();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t static MusicContent.RawIdentifier.MediaAPI.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v4, &qword_2809C27F0, &qword_2809C27F8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2753C28B0;
  OUTLINED_FUNCTION_43_3();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C2800);
  *(v5 + 56) = v7;
  v8 = sub_275360A58();
  OUTLINED_FUNCTION_64_3(v8);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_275360AC0();
  *(v5 + 96) = v9;
  v10 = sub_275360BE4(&qword_2809C2828, sub_275360AC0);
  OUTLINED_FUNCTION_75_3(v10);
  sub_275360B3C();
  sub_275360B90();
  OUTLINED_FUNCTION_9_4();
  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_27535EBD0(uint64_t a1)
{
  v2 = sub_2753642C8();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t static MusicContent.RawIdentifier.Library.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v4, &qword_2809C2830, &qword_2809C2838);
  v5 = OUTLINED_FUNCTION_73_3();
  *(v5 + 16) = xmmword_2753C96C0;
  sub_2753B64C8();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C2840);
  *(v5 + 56) = v7;
  v8 = sub_275360C90();
  OUTLINED_FUNCTION_64_3(v8);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  sub_2753B64C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_275360CF8();
  *(v5 + 96) = v9;
  v10 = sub_275360BE4(&qword_2809C2858, sub_275360CF8);
  OUTLINED_FUNCTION_75_3(v10);
  OUTLINED_FUNCTION_129_0();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_275360D74();
  *(v5 + 136) = v11;
  v12 = sub_275360BE4(&qword_2809C2878, sub_275360D74);
  OUTLINED_FUNCTION_71_3(v12);
  sub_275360DF0();
  sub_275360E44();
  OUTLINED_FUNCTION_9_4();
  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_27535EE64(uint64_t a1)
{
  v2 = sub_275364274();

  return MEMORY[0x2821CC260](a1, v2);
}

void static MusicContent.RawIdentifier.CloudLibrary.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v4, &qword_2809C2880, &qword_2809C2888);
  v5 = OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_17_4(v5, xmmword_2753C96C0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C2890);
  v8 = v7;
  v5[3].n128_u64[1] = v7;
  v9 = sub_275360E98();
  OUTLINED_FUNCTION_64_3(v9);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  sub_2753B64C8();
  swift_getKeyPath();
  v5[6].n128_u64[0] = v8;
  v5[6].n128_u64[1] = v9;
  __swift_allocate_boxed_opaque_existential_1(&v5[4].n128_i64[1]);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_275360F00();
  v5[8].n128_u64[1] = v10;
  v11 = sub_275360BE4(&qword_2809C28B8, sub_275360F00);
  OUTLINED_FUNCTION_71_3(v11);
  sub_275360F7C();
  sub_275360FD0();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_70_3();
}

uint64_t sub_27535F0C4(uint64_t a1)
{
  v2 = sub_275364220();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t static MusicContent.RawIdentifier.PurchaseHistory.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v4, &qword_2809C28C0, &qword_2809C28C8);
  v5 = OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_17_4(v5, xmmword_2753C96C0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C28D0);
  v5[3].n128_u64[1] = v7;
  v8 = sub_275361024();
  OUTLINED_FUNCTION_64_3(v8);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  OUTLINED_FUNCTION_43_3();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_27536108C();
  v5[6].n128_u64[0] = v9;
  v10 = sub_275360BE4(&qword_2809C28E8, sub_27536108C);
  OUTLINED_FUNCTION_75_3(v10);
  OUTLINED_FUNCTION_129_0();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_275361108();
  v5[8].n128_u64[1] = v11;
  v12 = sub_275360BE4(&qword_2809C2908, sub_275361108);
  OUTLINED_FUNCTION_71_3(v12);
  sub_275361184();
  sub_2753611D8();
  OUTLINED_FUNCTION_9_4();
  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_27535F328(uint64_t a1)
{
  v2 = sub_2753641CC();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t static MusicContent.RawIdentifier.StorePurchase.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v4, &qword_2809C2910, &qword_2809C2918);
  v5 = OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_17_4(v5, xmmword_2753C96C0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C2920);
  v5[3].n128_u64[1] = v7;
  v8 = sub_27536122C();
  OUTLINED_FUNCTION_64_3(v8);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  OUTLINED_FUNCTION_43_3();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_275361294();
  v5[6].n128_u64[0] = v9;
  v10 = sub_275360BE4(&qword_2809C2938, sub_275361294);
  OUTLINED_FUNCTION_75_3(v10);
  OUTLINED_FUNCTION_129_0();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_275361310();
  v5[8].n128_u64[1] = v11;
  v12 = sub_275360BE4(&qword_2809C2948, sub_275361310);
  OUTLINED_FUNCTION_71_3(v12);
  sub_275361184();
  sub_2753611D8();
  OUTLINED_FUNCTION_9_4();
  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_27535F58C(uint64_t a1)
{
  v2 = sub_275364178();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t static MusicContent.RawIdentifier.Opaque.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  sub_275360C38(0, &qword_2809C2950, &qword_2809C2958);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2753BE420;
  OUTLINED_FUNCTION_43_3();
  swift_getKeyPath();
  sub_2753613E8(0, &qword_2809C2960);
  *(v4 + 56) = v5;
  *(v4 + 64) = sub_27536145C();
  __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  return v4;
}

uint64_t sub_27535F760(uint64_t a1)
{
  v2 = sub_275364124();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t sub_27535F86C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = *a1;
  a4();
  return sub_2753B6F28();
}

uint64_t sub_27535F97C()
{
  OUTLINED_FUNCTION_54_2();
  v1();
  v0();
  return sub_2753B6EF8();
}

uint64_t sub_27535FA24()
{
  OUTLINED_FUNCTION_45_3();
  v1();
  v0();
  return sub_2753B6EE8();
}

uint64_t sub_27535FAE0()
{
  OUTLINED_FUNCTION_45_3();
  v1();
  v0();
  return sub_2753B6ED8();
}

uint64_t sub_27535FB4C()
{
  OUTLINED_FUNCTION_39_3();
  sub_27536407C();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t sub_27535FBD4()
{
  OUTLINED_FUNCTION_54_2();
  v1();
  v0();
  return sub_2753B6F08();
}

uint64_t sub_27535FC44(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2753B35FC(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_27535FCB0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_27535FCB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2753B76A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_27535FECC(v7, v8, a1, v4);
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
    return sub_27535FDA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27535FDA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
    do
    {
      result = v6;
      v7 = v5;
      while (2)
      {
        v8 = *(v7 + 104) | (*(v7 + 106) << 16);
        v9 = (v8 >> 21) & 7;
        switch(*(v7 + 50) >> 5)
        {
          case 1:
            break;
          case 2:
            if ((3u >> v9))
            {
              goto LABEL_14;
            }

            break;
          case 3:
            if ((7u >> v9))
            {
              goto LABEL_14;
            }

            break;
          case 4:
            if ((0xFu >> v9))
            {
              goto LABEL_14;
            }

            break;
          case 5:
            if ((0x1Fu >> v9))
            {
              goto LABEL_14;
            }

            break;
          default:
            if ((2u >> v9))
            {
LABEL_14:
              if (!v4)
              {
                __break(1u);
                JUMPOUT(0x27535FEB4);
              }

              v10 = *(v7 + 56);
              v11 = *(v7 + 72);
              v12 = *(v7 + 16);
              *(v7 + 56) = *v7;
              v13 = *(v7 + 88);
              *(v7 + 72) = v12;
              *(v7 + 88) = *(v7 + 32);
              *(v7 + 104) = *(v7 + 48);
              *v7 = v10;
              *(v7 + 16) = v11;
              *(v7 + 32) = v13;
              *(v7 + 50) = BYTE2(v8);
              *(v7 + 48) = v8;
              v7 -= 56;
              if (!__CFADD__(result++, 1))
              {
                continue;
              }
            }

            break;
        }

        break;
      }

      ++a3;
      v5 += 56;
      --v6;
    }

    while (a3 != a2);
  }

  return result;
}

uint64_t sub_27535FECC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_117:
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_119;
  }

  v5 = a4;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
LABEL_3:
  v8 = v6;
  v9 = v6 + 1;
  if (v6 + 1 >= v4)
  {
    ++v6;
    goto LABEL_38;
  }

  LOBYTE(v10) = 0;
  v11 = ((*(*a3 + 56 * v9 + 48) | (*(*a3 + 56 * v9 + 50) << 16)) >> 21) & 7;
  switch(*(*a3 + 56 * v6 + 50) >> 5)
  {
    case 1:
      break;
    case 2:
      v10 = 3u >> v11;
      break;
    case 3:
      v10 = 7u >> v11;
      break;
    case 4:
      v10 = 0xFu >> v11;
      break;
    case 5:
      v10 = 0x1Fu >> v11;
      break;
    default:
      v10 = 2u >> v11;
      break;
  }

  v12 = v6 + 2;
  if (v4 <= v6 + 2)
  {
    v6 += 2;
  }

  else
  {
    v6 = v4;
  }

  v13 = 56 * v8;
  v14 = (*a3 + 56 * v8 + 160);
  while (2)
  {
    if (v12 >= v4)
    {
LABEL_29:
      if (v10)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }

    ++v9;
    v15 = ((*v14 | (*(v14 + 2) << 16)) >> 21) & 7;
    switch(*(v14 - 54) >> 5)
    {
      case 1:
        if ((v10 & 1) == 0)
        {
          goto LABEL_27;
        }

        v6 = v12;
        goto LABEL_30;
      case 2:
        v16 = 60;
        goto LABEL_25;
      case 3:
        v17 = 0x38u >> v15;
        goto LABEL_26;
      case 4:
        v16 = 48;
        goto LABEL_25;
      case 5:
        v16 = 32;
LABEL_25:
        v17 = v16 >> v15;
LABEL_26:
        if ((v10 & 1) != (v17 & 1))
        {
          goto LABEL_27;
        }

        v6 = v9;
        goto LABEL_29;
      default:
        if ((v10 & 1) != ((0x3Du >> v15) & 1))
        {
LABEL_27:
          ++v12;
          v14 += 28;
          continue;
        }

        v6 = v12;
        if ((v10 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_30:
        if (v6 < v8)
        {
          goto LABEL_149;
        }

        if (v8 < v6)
        {
          v18 = 56 * v6;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_156;
              }

              v22 = (v21 + v13);
              v23 = *(v21 + v13 + 48);
              v24 = v21 + v18;
              v25 = *(v22 + 50);
              v26 = *v22;
              v27 = v22[1];
              v28 = v22[2];
              v29 = *(v24 - 40);
              v30 = *(v24 - 24);
              v31 = *(v24 - 56);
              *(v22 + 6) = *(v24 - 8);
              v22[1] = v29;
              v22[2] = v30;
              *v22 = v31;
              *(v24 - 56) = v26;
              *(v24 - 40) = v27;
              *(v24 - 24) = v28;
              *(v24 - 6) = v25;
              *(v24 - 8) = v23;
            }

            ++v20;
            v18 -= 56;
            v13 += 56;
          }

          while (v20 < v19);
          v4 = a3[1];
        }

LABEL_38:
        if (v6 >= v4)
        {
          goto LABEL_63;
        }

        if (__OFSUB__(v6, v8))
        {
          goto LABEL_148;
        }

        if (v6 - v8 >= v5)
        {
LABEL_63:
          if (v6 < v8)
          {
            goto LABEL_147;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = *(v7 + 16);
            sub_275384E68();
            v7 = v86;
          }

          v44 = *(v7 + 16);
          v45 = v44 + 1;
          if (v44 >= *(v7 + 24) >> 1)
          {
            sub_275384E68();
            v7 = v87;
          }

          *(v7 + 16) = v45;
          v46 = v7 + 32;
          v47 = (v7 + 32 + 16 * v44);
          *v47 = v8;
          v47[1] = v6;
          __dst = *a1;
          if (!*a1)
          {
            goto LABEL_157;
          }

          if (v44)
          {
            while (1)
            {
              v48 = v45 - 1;
              v49 = (v46 + 16 * (v45 - 1));
              v50 = (v7 + 16 * v45);
              if (v45 >= 4)
              {
                break;
              }

              if (v45 == 3)
              {
                v51 = *(v7 + 32);
                v52 = *(v7 + 40);
                v61 = __OFSUB__(v52, v51);
                v53 = v52 - v51;
                v54 = v61;
LABEL_83:
                if (v54)
                {
                  goto LABEL_134;
                }

                v66 = *v50;
                v65 = v50[1];
                v67 = __OFSUB__(v65, v66);
                v68 = v65 - v66;
                v69 = v67;
                if (v67)
                {
                  goto LABEL_137;
                }

                v70 = v49[1];
                v71 = v70 - *v49;
                if (__OFSUB__(v70, *v49))
                {
                  goto LABEL_140;
                }

                if (__OFADD__(v68, v71))
                {
                  goto LABEL_142;
                }

                if (v68 + v71 >= v53)
                {
                  if (v53 < v71)
                  {
                    v48 = v45 - 2;
                  }

                  goto LABEL_105;
                }

                goto LABEL_98;
              }

              if (v45 < 2)
              {
                goto LABEL_136;
              }

              v73 = *v50;
              v72 = v50[1];
              v61 = __OFSUB__(v72, v73);
              v68 = v72 - v73;
              v69 = v61;
LABEL_98:
              if (v69)
              {
                goto LABEL_139;
              }

              v75 = *v49;
              v74 = v49[1];
              v61 = __OFSUB__(v74, v75);
              v76 = v74 - v75;
              if (v61)
              {
                goto LABEL_141;
              }

              if (v76 < v68)
              {
                goto LABEL_112;
              }

LABEL_105:
              if (v48 - 1 >= v45)
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
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
                goto LABEL_151;
              }

              if (!*a3)
              {
                goto LABEL_154;
              }

              v80 = v7;
              v81 = (v46 + 16 * (v48 - 1));
              v82 = *v81;
              v83 = v46 + 16 * v48;
              v7 = *(v83 + 8);
              sub_275360660((*a3 + 56 * *v81), (*a3 + 56 * *v83), *a3 + 56 * v7, __dst);
              if (v100)
              {
              }

              if (v7 < v82)
              {
                goto LABEL_129;
              }

              v84 = *(v80 + 16);
              if (v48 > v84)
              {
                goto LABEL_130;
              }

              *v81 = v82;
              v81[1] = v7;
              if (v48 >= v84)
              {
                goto LABEL_131;
              }

              v100 = 0;
              v45 = v84 - 1;
              sub_2753B219C((v83 + 16), v84 - 1 - v48, (v46 + 16 * v48));
              v7 = v80;
              *(v80 + 16) = v84 - 1;
              if (v84 <= 2)
              {
                goto LABEL_112;
              }
            }

            v55 = v46 + 16 * v45;
            v56 = *(v55 - 64);
            v57 = *(v55 - 56);
            v61 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            if (v61)
            {
              goto LABEL_132;
            }

            v60 = *(v55 - 48);
            v59 = *(v55 - 40);
            v61 = __OFSUB__(v59, v60);
            v53 = v59 - v60;
            v54 = v61;
            if (v61)
            {
              goto LABEL_133;
            }

            v62 = v50[1];
            v63 = v62 - *v50;
            if (__OFSUB__(v62, *v50))
            {
              goto LABEL_135;
            }

            v61 = __OFADD__(v53, v63);
            v64 = v53 + v63;
            if (v61)
            {
              goto LABEL_138;
            }

            if (v64 >= v58)
            {
              v78 = *v49;
              v77 = v49[1];
              v61 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v61)
              {
                goto LABEL_146;
              }

              if (v53 < v79)
              {
                v48 = v45 - 2;
              }

              goto LABEL_105;
            }

            goto LABEL_83;
          }

LABEL_112:
          v4 = a3[1];
          v5 = a4;
          if (v6 >= v4)
          {
            goto LABEL_117;
          }

          goto LABEL_3;
        }

        if (__OFADD__(v8, v5))
        {
          goto LABEL_150;
        }

        if (v8 + v5 < v4)
        {
          v4 = v8 + v5;
        }

        if (v4 >= v8)
        {
          if (v6 != v4)
          {
            v32 = *a3;
            v33 = *a3 + 56 * v6 - 56;
            v34 = v8 - v6;
LABEL_47:
            v35 = v34;
            v36 = v33;
            while (2)
            {
              v37 = *(v36 + 104) | (*(v36 + 106) << 16);
              v38 = (v37 >> 21) & 7;
              switch(*(v36 + 50) >> 5)
              {
                case 1:
                  goto LABEL_61;
                case 2:
                  if (((3u >> v38) & 1) == 0)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_58;
                case 3:
                  if (((7u >> v38) & 1) == 0)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_58;
                case 4:
                  if (((0xFu >> v38) & 1) == 0)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_58;
                case 5:
                  if ((0x1Fu >> v38))
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_61;
                default:
                  if (((2u >> v38) & 1) == 0)
                  {
                    goto LABEL_61;
                  }

LABEL_58:
                  if (!v32)
                  {
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    __break(1u);
                    JUMPOUT(0x275360618);
                  }

                  v39 = *(v36 + 56);
                  v40 = *(v36 + 72);
                  v41 = *(v36 + 16);
                  *(v36 + 56) = *v36;
                  v42 = *(v36 + 88);
                  *(v36 + 72) = v41;
                  *(v36 + 88) = *(v36 + 32);
                  *(v36 + 104) = *(v36 + 48);
                  *v36 = v39;
                  *(v36 + 16) = v40;
                  *(v36 + 32) = v42;
                  *(v36 + 50) = BYTE2(v37);
                  *(v36 + 48) = v37;
                  v36 -= 56;
                  if (!__CFADD__(v35++, 1))
                  {
                    continue;
                  }

LABEL_61:
                  ++v6;
                  v33 += 56;
                  --v34;
                  if (v6 != v4)
                  {
                    goto LABEL_47;
                  }

                  v6 = v4;
                  break;
              }

              break;
            }
          }

          goto LABEL_63;
        }

LABEL_151:
        __break(1u);
LABEL_152:
        v7 = sub_2753B20A8(v7);
LABEL_119:
        v88 = (v7 + 16);
        v89 = *(v7 + 16);
        while (v89 >= 2)
        {
          if (!*a3)
          {
            goto LABEL_155;
          }

          v90 = v7;
          v91 = (v7 + 16 * v89);
          v92 = *v91;
          v93 = &v88[2 * v89];
          v7 = v93[1];
          sub_275360660((*a3 + 56 * *v91), (*a3 + 56 * *v93), *a3 + 56 * v7, __dst);
          if (v100)
          {
            break;
          }

          if (v7 < v92)
          {
            goto LABEL_143;
          }

          if (v89 - 2 >= *v88)
          {
            goto LABEL_144;
          }

          *v91 = v92;
          v91[1] = v7;
          v94 = *v88 - v89;
          if (*v88 < v89)
          {
            goto LABEL_145;
          }

          v100 = 0;
          v89 = *v88 - 1;
          memmove(v93, v93 + 2, 16 * v94);
          *v88 = v89;
          v7 = v90;
        }
    }
  }
}

uint64_t sub_275360660(unsigned __int8 *__src, unsigned __int8 *a2, unint64_t a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 >= v9)
  {
    sub_275385858(a2, (a3 - a2) / 56, __dst);
    v10 = &v4[56 * v9];
    while (1)
    {
      v18 = v6;
      v5 -= 56;
LABEL_24:
      if (v10 <= v4 || v6 <= v7)
      {
        break;
      }

      v20 = ((*(v10 - 4) | (*(v10 - 6) << 16)) >> 21) & 7;
      switch(*(v6 - 6) >> 5)
      {
        case 1:
          goto LABEL_39;
        case 2:
          if ((3u >> v20))
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        case 3:
          if ((7u >> v20))
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        case 4:
          if ((0xFu >> v20))
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        case 5:
          if (((0x1Fu >> v20) & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        default:
          if (((2u >> v20) & 1) == 0)
          {
LABEL_39:
            if (v10 != (v5 + 56))
            {
              v21 = *(v10 - 56);
              v22 = *(v10 - 40);
              v23 = *(v10 - 24);
              *(v5 + 48) = *(v10 - 1);
              *(v5 + 16) = v22;
              *(v5 + 32) = v23;
              *v5 = v21;
            }

            v5 -= 56;
            v10 -= 56;
            goto LABEL_24;
          }

LABEL_42:
          v6 -= 56;
          if ((v5 + 56) != v18)
          {
            v24 = *v6;
            v25 = *(v18 - 40);
            v26 = *(v18 - 24);
            *(v5 + 48) = *(v18 - 1);
            *(v5 + 16) = v25;
            *(v5 + 32) = v26;
            *v5 = v24;
          }

          break;
      }
    }
  }

  else
  {
    sub_275385858(__src, (a2 - __src) / 56, __dst);
    v10 = &v4[56 * v8];
    while (v4 < v10 && v6 < v5)
    {
      v12 = ((*(v6 + 24) | (v6[50] << 16)) >> 21) & 7;
      switch(v4[50] >> 5)
      {
        case 1:
          goto LABEL_15;
        case 2:
          if (((3u >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_11;
        case 3:
          if (((7u >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_11;
        case 4:
          if ((0xFu >> v12))
          {
            goto LABEL_11;
          }

          goto LABEL_15;
        case 5:
          if (((0x1Fu >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_11;
        default:
          if ((2u >> v12))
          {
LABEL_11:
            v13 = v6;
            v14 = v7 == v6;
            v6 += 56;
            if (v14)
            {
              goto LABEL_17;
            }
          }

          else
          {
LABEL_15:
            v13 = v4;
            v14 = v7 == v4;
            v4 += 56;
            if (v14)
            {
              goto LABEL_17;
            }
          }

          v15 = *v13;
          v16 = *(v13 + 1);
          v17 = *(v13 + 2);
          *(v7 + 6) = *(v13 + 6);
          *(v7 + 1) = v16;
          *(v7 + 2) = v17;
          *v7 = v15;
LABEL_17:
          v7 += 56;
          break;
      }
    }

    v18 = v7;
  }

  v27 = 56 * ((v10 - v4) / 56);
  if (v18 != v4 || v18 >= &v4[v27])
  {
    memmove(v18, v4, v27);
  }

  return 1;
}

uint64_t sub_275360930(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x277C76A80](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_2753B6688();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2753609A8(uint64_t a1, unint64_t *a2)
{
  sub_275360A04(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_275360A04(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_275360A58()
{
  result = qword_2809C2808;
  if (!qword_2809C2808)
  {
    sub_2753613E8(255, &qword_2809C2800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2808);
  }

  return result;
}

void sub_275360AC0()
{
  if (!qword_2809C2810)
  {
    sub_275360B3C();
    sub_275360B90();
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2810);
    }
  }
}

unint64_t sub_275360B3C()
{
  result = qword_2809C2818;
  if (!qword_2809C2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2818);
  }

  return result;
}

unint64_t sub_275360B90()
{
  result = qword_2809C2820;
  if (!qword_2809C2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2820);
  }

  return result;
}

uint64_t sub_275360BE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_275360C38(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_27536138C(255, a3);
    v4 = sub_2753B76C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_275360C90()
{
  result = qword_2809C2848;
  if (!qword_2809C2848)
  {
    sub_2753613E8(255, &qword_2809C2840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2848);
  }

  return result;
}

void sub_275360CF8()
{
  if (!qword_2809C2850)
  {
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2850);
    }
  }
}

void sub_275360D74()
{
  if (!qword_2809C2860)
  {
    sub_275360DF0();
    sub_275360E44();
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2860);
    }
  }
}

unint64_t sub_275360DF0()
{
  result = qword_2809C2868;
  if (!qword_2809C2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2868);
  }

  return result;
}

unint64_t sub_275360E44()
{
  result = qword_2809C2870;
  if (!qword_2809C2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2870);
  }

  return result;
}

unint64_t sub_275360E98()
{
  result = qword_2809C2898;
  if (!qword_2809C2898)
  {
    sub_2753613E8(255, &qword_2809C2890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2898);
  }

  return result;
}

void sub_275360F00()
{
  if (!qword_2809C28A0)
  {
    sub_275360F7C();
    sub_275360FD0();
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C28A0);
    }
  }
}

unint64_t sub_275360F7C()
{
  result = qword_2809C28A8;
  if (!qword_2809C28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C28A8);
  }

  return result;
}

unint64_t sub_275360FD0()
{
  result = qword_2809C28B0;
  if (!qword_2809C28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C28B0);
  }

  return result;
}

unint64_t sub_275361024()
{
  result = qword_2809C28D8;
  if (!qword_2809C28D8)
  {
    sub_2753613E8(255, &qword_2809C28D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C28D8);
  }

  return result;
}

void sub_27536108C()
{
  if (!qword_2809C28E0)
  {
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C28E0);
    }
  }
}

void sub_275361108()
{
  if (!qword_2809C28F0)
  {
    sub_275361184();
    sub_2753611D8();
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C28F0);
    }
  }
}

unint64_t sub_275361184()
{
  result = qword_2809C28F8;
  if (!qword_2809C28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C28F8);
  }

  return result;
}

unint64_t sub_2753611D8()
{
  result = qword_2809C2900;
  if (!qword_2809C2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2900);
  }

  return result;
}

unint64_t sub_27536122C()
{
  result = qword_2809C2928;
  if (!qword_2809C2928)
  {
    sub_2753613E8(255, &qword_2809C2920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2928);
  }

  return result;
}

void sub_275361294()
{
  if (!qword_2809C2930)
  {
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2930);
    }
  }
}

void sub_275361310()
{
  if (!qword_2809C2940)
  {
    sub_275361184();
    sub_2753611D8();
    v0 = sub_2753B6378();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2940);
    }
  }
}

uint64_t sub_27536138C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2753613E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2753B6378();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_27536145C()
{
  result = qword_2809C2968;
  if (!qword_2809C2968)
  {
    sub_2753613E8(255, &qword_2809C2960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2968);
  }

  return result;
}

unint64_t sub_2753614CC()
{
  result = qword_2809C2970;
  if (!qword_2809C2970)
  {
    sub_275361684(255, &qword_2809C2978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2970);
  }

  return result;
}

unint64_t sub_27536153C()
{
  result = qword_2809C2980;
  if (!qword_2809C2980)
  {
    sub_275361684(255, &qword_2809C2988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2980);
  }

  return result;
}

unint64_t sub_2753615AC()
{
  result = qword_2809C2990;
  if (!qword_2809C2990)
  {
    sub_275361684(255, &qword_2809C2998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2990);
  }

  return result;
}

unint64_t sub_27536161C()
{
  result = qword_2809C29A0;
  if (!qword_2809C29A0)
  {
    sub_275361684(255, &qword_2809C29A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29A0);
  }

  return result;
}

void sub_275361684(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2753B70B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2753616D4()
{
  result = qword_2809C29B0;
  if (!qword_2809C29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29B0);
  }

  return result;
}

unint64_t sub_27536172C()
{
  result = qword_2809C29B8;
  if (!qword_2809C29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29B8);
  }

  return result;
}

unint64_t sub_275361784()
{
  result = qword_2809C29C0;
  if (!qword_2809C29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29C0);
  }

  return result;
}

unint64_t sub_2753617DC()
{
  result = qword_2809C29C8;
  if (!qword_2809C29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29C8);
  }

  return result;
}

unint64_t sub_275361834()
{
  result = qword_2809C29D0;
  if (!qword_2809C29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29D0);
  }

  return result;
}

unint64_t sub_275361898()
{
  result = qword_2809C29D8;
  if (!qword_2809C29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29D8);
  }

  return result;
}

unint64_t sub_2753618F0()
{
  result = qword_2809C29E0;
  if (!qword_2809C29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29E0);
  }

  return result;
}

unint64_t sub_275361944(uint64_t a1)
{
  result = sub_27536196C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27536196C()
{
  result = qword_2809C29E8;
  if (!qword_2809C29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29E8);
  }

  return result;
}

unint64_t sub_2753619C4()
{
  result = qword_2809C29F0;
  if (!qword_2809C29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29F0);
  }

  return result;
}

unint64_t sub_275361A18(uint64_t a1)
{
  result = sub_275361A40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361A40()
{
  result = qword_2809C29F8;
  if (!qword_2809C29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C29F8);
  }

  return result;
}

unint64_t sub_275361A98()
{
  result = qword_2809C2A00;
  if (!qword_2809C2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A00);
  }

  return result;
}

unint64_t sub_275361AEC(uint64_t a1)
{
  result = sub_275361B14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361B14()
{
  result = qword_2809C2A08;
  if (!qword_2809C2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A08);
  }

  return result;
}

unint64_t sub_275361B6C()
{
  result = qword_2809C2A10;
  if (!qword_2809C2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A10);
  }

  return result;
}

unint64_t sub_275361BC0(uint64_t a1)
{
  result = sub_275361BE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361BE8()
{
  result = qword_2809C2A18;
  if (!qword_2809C2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A18);
  }

  return result;
}

unint64_t sub_275361C40()
{
  result = qword_2809C2A20;
  if (!qword_2809C2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A20);
  }

  return result;
}

unint64_t sub_275361C94(uint64_t a1)
{
  result = sub_275361CBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361CBC()
{
  result = qword_2809C2A28;
  if (!qword_2809C2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A28);
  }

  return result;
}

unint64_t sub_275361D14()
{
  result = qword_2809C2A30;
  if (!qword_2809C2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A30);
  }

  return result;
}

unint64_t sub_275361D68(uint64_t a1)
{
  result = sub_275361D90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361D90()
{
  result = qword_2809C2A38;
  if (!qword_2809C2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A38);
  }

  return result;
}

unint64_t sub_275361DE8()
{
  result = qword_2809C2A40;
  if (!qword_2809C2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A40);
  }

  return result;
}

unint64_t sub_275361E40()
{
  result = qword_2809C2A48;
  if (!qword_2809C2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A48);
  }

  return result;
}

unint64_t sub_275361ED0()
{
  result = qword_2809C2A50;
  if (!qword_2809C2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A50);
  }

  return result;
}

unint64_t sub_275361F28()
{
  result = qword_2809C2A58;
  if (!qword_2809C2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A58);
  }

  return result;
}

unint64_t sub_275361F7C(uint64_t a1)
{
  result = sub_275361FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275361FA4()
{
  result = qword_2809C2A60;
  if (!qword_2809C2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A60);
  }

  return result;
}

unint64_t sub_275361FFC()
{
  result = qword_2809C2A68;
  if (!qword_2809C2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A68);
  }

  return result;
}

unint64_t sub_275362054()
{
  result = qword_2809C2A70;
  if (!qword_2809C2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A70);
  }

  return result;
}

unint64_t sub_2753620A8(uint64_t a1)
{
  result = sub_2753620D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2753620D0()
{
  result = qword_2809C2A78;
  if (!qword_2809C2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A78);
  }

  return result;
}

unint64_t sub_275362128()
{
  result = qword_2809C2A80;
  if (!qword_2809C2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A80);
  }

  return result;
}

unint64_t sub_275362180()
{
  result = qword_2809C2A88;
  if (!qword_2809C2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A88);
  }

  return result;
}

unint64_t sub_2753621D4(uint64_t a1)
{
  result = sub_2753621FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2753621FC()
{
  result = qword_2809C2A90;
  if (!qword_2809C2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A90);
  }

  return result;
}

unint64_t sub_275362254()
{
  result = qword_2809C2A98;
  if (!qword_2809C2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2A98);
  }

  return result;
}

unint64_t sub_2753622AC()
{
  result = qword_2809C2AA0;
  if (!qword_2809C2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AA0);
  }

  return result;
}

unint64_t sub_275362300(uint64_t a1)
{
  result = sub_275362328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275362328()
{
  result = qword_2809C2AA8;
  if (!qword_2809C2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AA8);
  }

  return result;
}

unint64_t sub_275362380()
{
  result = qword_2809C2AB0;
  if (!qword_2809C2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AB0);
  }

  return result;
}

unint64_t sub_2753623D8()
{
  result = qword_2809C2AB8;
  if (!qword_2809C2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AB8);
  }

  return result;
}

unint64_t sub_27536242C(uint64_t a1)
{
  result = sub_275362454();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275362454()
{
  result = qword_2809C2AC0;
  if (!qword_2809C2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AC0);
  }

  return result;
}

unint64_t sub_2753624AC()
{
  result = qword_2809C2AC8;
  if (!qword_2809C2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AC8);
  }

  return result;
}

unint64_t sub_275362504()
{
  result = qword_2809C2AD0;
  if (!qword_2809C2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AD0);
  }

  return result;
}

unint64_t sub_275362558(uint64_t a1)
{
  result = sub_275362580();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_275362580()
{
  result = qword_2809C2AD8;
  if (!qword_2809C2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AD8);
  }

  return result;
}

unint64_t sub_2753625D8()
{
  result = qword_2809C2AE0;
  if (!qword_2809C2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AE0);
  }

  return result;
}

unint64_t sub_275362630()
{
  result = qword_2809C2AE8;
  if (!qword_2809C2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AE8);
  }

  return result;
}

unint64_t sub_275362688()
{
  result = qword_2809C2AF0;
  if (!qword_2809C2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AF0);
  }

  return result;
}

unint64_t sub_2753626E0()
{
  result = qword_2809C2AF8;
  if (!qword_2809C2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2AF8);
  }

  return result;
}

unint64_t sub_275362738()
{
  result = qword_2809C2B00;
  if (!qword_2809C2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B00);
  }

  return result;
}

unint64_t sub_275362790()
{
  result = qword_2809C2B08;
  if (!qword_2809C2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B08);
  }

  return result;
}

unint64_t sub_2753627E8()
{
  result = qword_2809C2B10;
  if (!qword_2809C2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B10);
  }

  return result;
}

unint64_t sub_275362840()
{
  result = qword_2809C2B18;
  if (!qword_2809C2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B18);
  }

  return result;
}

unint64_t sub_275362898()
{
  result = qword_2809C2B20;
  if (!qword_2809C2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B20);
  }

  return result;
}

unint64_t sub_2753628F0()
{
  result = qword_2809C2B28;
  if (!qword_2809C2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B28);
  }

  return result;
}

unint64_t sub_275362948()
{
  result = qword_2809C2B30;
  if (!qword_2809C2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B30);
  }

  return result;
}

unint64_t sub_2753629A0()
{
  result = qword_2809C2B38;
  if (!qword_2809C2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B38);
  }

  return result;
}

unint64_t sub_2753629F8()
{
  result = qword_2809C2B40;
  if (!qword_2809C2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B40);
  }

  return result;
}

unint64_t sub_275362A50()
{
  result = qword_2809C2B48;
  if (!qword_2809C2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B48);
  }

  return result;
}

unint64_t sub_275362AA8()
{
  result = qword_2809C2B50;
  if (!qword_2809C2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B50);
  }

  return result;
}

unint64_t sub_275362B00()
{
  result = qword_2809C2B58;
  if (!qword_2809C2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B58);
  }

  return result;
}

unint64_t sub_275362B58()
{
  result = qword_2809C2B60;
  if (!qword_2809C2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B60);
  }

  return result;
}

unint64_t sub_275362BB0()
{
  result = qword_2809C2B68;
  if (!qword_2809C2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B68);
  }

  return result;
}

unint64_t sub_275362C08()
{
  result = qword_2809C2B70;
  if (!qword_2809C2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B70);
  }

  return result;
}

unint64_t sub_275362C60()
{
  result = qword_2809C2B78;
  if (!qword_2809C2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B78);
  }

  return result;
}

unint64_t sub_275362CB8()
{
  result = qword_2809C2B80;
  if (!qword_2809C2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B80);
  }

  return result;
}

unint64_t sub_275362D10()
{
  result = qword_2809C2B88;
  if (!qword_2809C2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B88);
  }

  return result;
}

unint64_t sub_275362D68()
{
  result = qword_2809C2B90;
  if (!qword_2809C2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B90);
  }

  return result;
}

unint64_t sub_275362DC0()
{
  result = qword_2809C2B98;
  if (!qword_2809C2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2B98);
  }

  return result;
}

unint64_t sub_275362E18()
{
  result = qword_2809C2BA0;
  if (!qword_2809C2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BA0);
  }

  return result;
}

unint64_t sub_275362E70()
{
  result = qword_2809C2BA8;
  if (!qword_2809C2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BA8);
  }

  return result;
}

unint64_t sub_275362EC8()
{
  result = qword_2809C2BB0;
  if (!qword_2809C2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BB0);
  }

  return result;
}

unint64_t sub_275362F20()
{
  result = qword_2809C2BB8;
  if (!qword_2809C2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BB8);
  }

  return result;
}

unint64_t sub_275362F78()
{
  result = qword_2809C2BC0;
  if (!qword_2809C2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BC0);
  }

  return result;
}

unint64_t sub_275362FD0()
{
  result = qword_2809C2BC8;
  if (!qword_2809C2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BC8);
  }

  return result;
}

unint64_t sub_275363028()
{
  result = qword_2809C2BD0;
  if (!qword_2809C2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BD0);
  }

  return result;
}

unint64_t sub_275363080()
{
  result = qword_2809C2BD8;
  if (!qword_2809C2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BD8);
  }

  return result;
}

unint64_t sub_2753630D8()
{
  result = qword_2809C2BE0;
  if (!qword_2809C2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BE0);
  }

  return result;
}

unint64_t sub_275363130()
{
  result = qword_2809C2BE8;
  if (!qword_2809C2BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BE8);
  }

  return result;
}

unint64_t sub_275363188()
{
  result = qword_2809C2BF0;
  if (!qword_2809C2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BF0);
  }

  return result;
}

unint64_t sub_2753631E0()
{
  result = qword_2809C2BF8;
  if (!qword_2809C2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2BF8);
  }

  return result;
}

unint64_t sub_275363238()
{
  result = qword_2809C2C00;
  if (!qword_2809C2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C00);
  }

  return result;
}

unint64_t sub_275363290()
{
  result = qword_2809C2C08;
  if (!qword_2809C2C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C08);
  }

  return result;
}

unint64_t sub_2753632E8()
{
  result = qword_2809C2C10;
  if (!qword_2809C2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C10);
  }

  return result;
}

unint64_t sub_275363340()
{
  result = qword_2809C2C18;
  if (!qword_2809C2C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C18);
  }

  return result;
}

unint64_t sub_275363398()
{
  result = qword_2809C2C20;
  if (!qword_2809C2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C20);
  }

  return result;
}

_BYTE *_s19MediaAPIContentTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2753634F4);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_275363544(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x275363610);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t _s11CloudStatusOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11CloudStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x2753637B4);
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
          *result = a2 + 9;
        }

        break;
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

uint64_t sub_27536380C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3B && *(a1 + 33))
    {
      v2 = *a1 + 58;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 32) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3A)
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

uint64_t sub_275363858(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 59;
    *(result + 8) = 0;
    if (a3 >= 0x3B)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2753638FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_27536393C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27536399C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2753639DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275363A58(uint64_t a1, int a2)
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

uint64_t sub_275363A98(uint64_t result, int a2, int a3)
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

uint64_t sub_275363AF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFB && *(a1 + 51))
    {
      v2 = *a1 + 16378;
    }

    else
    {
      v2 = ((*(a1 + 50) >> 5) | (8 * ((*(a1 + 50) << 6) & 0x780 | (*(a1 + 48) >> 1)))) ^ 0x3FFF;
      if (v2 >= 0x3FFA)
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

uint64_t sub_275363B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 16379;
    if (a3 >= 0x3FFB)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFB)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * ((-a2 >> 3) & 0x7F);
      *(result + 50) = ((((-a2 >> 3) & 0x7FF) - (a2 << 11)) >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_275363BE0(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

uint64_t sub_275363BFC(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  result = a1 + 48;
  v4 = (v3 | (*(result + 2) << 16)) & 0xFF01FF01 | (a2 << 21);
  *result = v3 & 0xFF01;
  *(result + 2) = BYTE2(v4);
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_275363C54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_275363C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275363CF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_275363D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275363DA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_275363DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275363E38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_275363E78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_275363EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275363F94);
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

unint64_t sub_275363FD0()
{
  result = qword_2809C2C28;
  if (!qword_2809C2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C28);
  }

  return result;
}

unint64_t sub_275364028()
{
  result = qword_2809C2C30;
  if (!qword_2809C2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C30);
  }

  return result;
}

unint64_t sub_27536407C()
{
  result = qword_2809C2C38;
  if (!qword_2809C2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C38);
  }

  return result;
}

unint64_t sub_2753640D0()
{
  result = qword_2809C2C40;
  if (!qword_2809C2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C40);
  }

  return result;
}

unint64_t sub_275364124()
{
  result = qword_2809C2C48;
  if (!qword_2809C2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C48);
  }

  return result;
}

unint64_t sub_275364178()
{
  result = qword_2809C2C50;
  if (!qword_2809C2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C50);
  }

  return result;
}

unint64_t sub_2753641CC()
{
  result = qword_2809C2C58;
  if (!qword_2809C2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C58);
  }

  return result;
}

unint64_t sub_275364220()
{
  result = qword_2809C2C60;
  if (!qword_2809C2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C60);
  }

  return result;
}

unint64_t sub_275364274()
{
  result = qword_2809C2C68;
  if (!qword_2809C2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C68);
  }

  return result;
}

unint64_t sub_2753642C8()
{
  result = qword_2809C2C70;
  if (!qword_2809C2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C70);
  }

  return result;
}

unint64_t sub_27536431C()
{
  result = qword_2809C2C78;
  if (!qword_2809C2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C78);
  }

  return result;
}

unint64_t sub_275364370()
{
  result = qword_2809C2C80;
  if (!qword_2809C2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C80);
  }

  return result;
}

unint64_t sub_2753643C4()
{
  result = qword_2809C2C88;
  if (!qword_2809C2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C88);
  }

  return result;
}

unint64_t sub_275364418()
{
  result = qword_2809C2C90;
  if (!qword_2809C2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C90);
  }

  return result;
}

unint64_t sub_27536446C()
{
  result = qword_2809C2C98;
  if (!qword_2809C2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2C98);
  }

  return result;
}

unint64_t sub_2753644C0()
{
  result = qword_2809C2CA0;
  if (!qword_2809C2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2CA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_2753B6368();
}

void OUTLINED_FUNCTION_11_4()
{

  JUMPOUT(0x277C76100);
}

uint64_t OUTLINED_FUNCTION_17_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_2753B64C8();
}

uint64_t OUTLINED_FUNCTION_19_4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_2753B64C8();
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_2753B6688();
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_275315CB8(a1, a2, a3, v3, v5, v6, v4);
}

void OUTLINED_FUNCTION_32_2()
{

  JUMPOUT(0x277C76100);
}

void OUTLINED_FUNCTION_33_1()
{

  JUMPOUT(0x277C76100);
}

void OUTLINED_FUNCTION_34_3()
{

  JUMPOUT(0x277C76100);
}

void OUTLINED_FUNCTION_35_2()
{

  JUMPOUT(0x277C76100);
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return sub_275315CB8(v5, v3, v0, v2, v6, v1, v4);
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return sub_2753B7718();
}

uint64_t OUTLINED_FUNCTION_41_3()
{
  v2 = *(v0 + 8);
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_2753B64C8();
}

void OUTLINED_FUNCTION_44_3(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17)
{

  return sub_275315CB8(a1, a2, a3, a11, a17, a14, a16);
}

uint64_t OUTLINED_FUNCTION_55_3(__int128 *a1)
{
  v7 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v5 = *(v1 + 8);
}

uint64_t OUTLINED_FUNCTION_56_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, unsigned int a5@<W6>, uint64_t a6@<X8>)
{

  return sub_275315CB8(a1, a2, a3, v6, a6, a4, a5);
}

uint64_t OUTLINED_FUNCTION_59_3()
{

  return sub_2753B7718();
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return sub_2753B7718();
}

void OUTLINED_FUNCTION_62_2(uint64_t a1, unint64_t *a2, unint64_t *a3)
{

  sub_275360C38(0, a2, a3);
}

void OUTLINED_FUNCTION_63_2(uint64_t a1, unint64_t *a2)
{

  sub_2753613E8(0, a2);
}

uint64_t *OUTLINED_FUNCTION_64_3(uint64_t a1)
{
  *(v1 + 64) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 32));
}

__n128 OUTLINED_FUNCTION_68_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *v10 = a9;
  v10[1].n128_u64[0] = v9;
  v10[1].n128_u8[8] = v11;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_275315CB8(a1, a2, a3, a4, v18, a17, v17);
}

uint64_t *OUTLINED_FUNCTION_71_3(uint64_t a1)
{
  *(v1 + 144) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 112));
}

uint64_t OUTLINED_FUNCTION_72_3()
{
}

uint64_t OUTLINED_FUNCTION_73_3()
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_75_3(uint64_t a1)
{
  *(v1 + 104) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 72));
}

uint64_t MusicContent.SourceIdentifierType.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

unint64_t sub_275364C94()
{
  result = qword_2809C2CA8;
  if (!qword_2809C2CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2CA8);
  }

  return result;
}

unint64_t sub_275364D14()
{
  result = qword_2809C2CB0;
  if (!qword_2809C2CB0)
  {
    sub_275364D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2CB0);
  }

  return result;
}

void sub_275364D6C()
{
  if (!qword_2809C2CB8)
  {
    v0 = sub_2753B70B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C2CB8);
    }
  }
}

_BYTE *_s7SourcesOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x275364E68);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s20SourceIdentifierTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x275364F6CLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_275364FAC(uint64_t a1, char a2)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](qword_2753CBE48[a2]);
  return sub_2753B77D8();
}

uint64_t sub_275364FFC()
{
  OUTLINED_FUNCTION_271_0();
  if (v0)
  {
    v1 = 24;
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

uint64_t sub_275365040()
{
  OUTLINED_FUNCTION_271_0();
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_275365134()
{
  OUTLINED_FUNCTION_271_0();
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_2753651BC()
{
  OUTLINED_FUNCTION_271_0();
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_275365238(uint64_t a1, unsigned __int8 a2)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](a2);
  return sub_2753B77D8();
}

uint64_t sub_27536527C()
{
  OUTLINED_FUNCTION_271_0();
  MediaAPI.MediaAPIType.rawValue.getter();
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_2753652D8(uint64_t a1, char a2)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](a2 & 1);
  return sub_2753B77D8();
}

uint64_t sub_27536531C()
{
  OUTLINED_FUNCTION_271_0();
  MEMORY[0x277C76A80]((v0 & 1u) + 1);
  return sub_2753B77D8();
}

uint64_t sub_275365374(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_2753B7798();
  a3(v6, a2);
  return sub_2753B77D8();
}

uint64_t sub_275365400(uint64_t a1)
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

  result = sub_2753863DC(result, 1, sub_275384F68);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_275365504(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2753863DC(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t MusicContentStorage.Operations.registration(for:followRedirect:)()
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 240) = v2;
  *(v1 + 128) = v3;
  *(v1 + 136) = v0;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  OUTLINED_FUNCTION_21_4();
  v6 = MEMORY[0x277D65188];
  sub_2753868E4(0, &qword_2809C1310, v7, v8, MEMORY[0x277D65188]);
  *(v1 + 144) = v9;
  OUTLINED_FUNCTION_17_1(v9);
  *(v1 + 152) = v10;
  v12 = *(v11 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_138_0();
  sub_27538685C(0, &qword_2809C2CC8, &qword_2809C1310, v6);
  OUTLINED_FUNCTION_75(v13);
  v15 = *(v14 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_187_1();
  *(v1 + 176) = swift_task_alloc();
  sub_2753B6288();
  *(v1 + 184) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v16, 255, v17);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  *(v1 + 192) = v18;
  *(v1 + 200) = v19;
  v20 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_27536577C()
{
  OUTLINED_FUNCTION_66_0();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 208) = *(*(v0 + 136) + 40);

  v5 = sub_2753B6558();
  *(v0 + 80) = v4;
  *(v0 + 88) = v3;
  v6 = OUTLINED_FUNCTION_6_3();
  sub_27538672C(v6, v7, v8);
  *(v0 + 216) = v9;
  sub_2753B64A8();

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    v30 = *(v0 + 176);
    v29 = *(v0 + 184);
    v31 = *(v0 + 144);
    v32 = *(v0 + 152);
    v33 = *(v0 + 112);

    v34 = *(v32 + 32);
    v35 = OUTLINED_FUNCTION_78_2();
    v36(v35);
    v5(v0 + 16, 0);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = *(v0 + 160);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_179();

    __asm { BRAA            X1, X16 }
  }

  v10 = *(v0 + 176);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v11, v12, v13, v14, sub_27538685C);
  v5(v0 + 16, 0);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 224) = v15;
  *v15 = v16;
  v15[1] = sub_27536596C;
  v17 = *(v0 + 160);
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 240);
  v21 = *(v0 + 120);
  OUTLINED_FUNCTION_179();

  return sub_2753792C4(v22, v23, v24, v25, v26);
}

uint64_t sub_27536596C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 224);
  *v4 = *v2;
  *(v3 + 232) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 200);
  v8 = *(v1 + 192);
  if (v0)
  {
    v9 = sub_275365BC0;
  }

  else
  {
    v9 = sub_275365A94;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275365A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = v14[26];
  v16 = v14[23];
  v18 = v14[20];
  v17 = v14[21];
  v19 = v14[18];
  v20 = v14[19];
  v21 = v14[15];
  v22 = v14[16];
  v39 = v14[27];
  v40 = v14[14];

  v23 = *(v20 + 16);
  v24 = OUTLINED_FUNCTION_97_0();
  v25(v24);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  v14[12] = v21;
  v14[13] = v22;

  v26 = sub_2753B6558();
  sub_2753B64B8();
  v26(v14 + 6, 0);
  (*(v20 + 32))(v40, v18, v19);
  v28 = v14[21];
  v27 = v14[22];
  v29 = v14[20];

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_173();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, a12, a13, a14);
}

uint64_t sub_275365BC0()
{
  OUTLINED_FUNCTION_3();
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];

  OUTLINED_FUNCTION_19_0();
  v6 = v0[29];

  return v5();
}

uint64_t MusicContentStorage.Operations.mediaAPIAttributes(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = sub_2753B6608();
  v1[18] = v4;
  OUTLINED_FUNCTION_17_1(v4);
  v1[19] = v5;
  v7 = *(v6 + 64);
  v1[20] = OUTLINED_FUNCTION_187_1();
  v1[21] = swift_task_alloc();
  v8 = sub_2753B65D8();
  v1[22] = v8;
  OUTLINED_FUNCTION_17_1(v8);
  v1[23] = v9;
  v11 = *(v10 + 64);
  v1[24] = OUTLINED_FUNCTION_187_1();
  v1[25] = swift_task_alloc();
  sub_2753B6288();
  v1[26] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v12, 255, v13);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[27] = v14;
  v1[28] = v15;
  v16 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_275365D98()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 200);
  sub_27537D100(*(v0 + 136), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 232) = v2;
  *(v0 + 248) = OUTLINED_FUNCTION_227_1(*&v2);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 256) = v3;
  *v3 = v4;
  v3[1] = sub_275365E74;
  v5 = *(v0 + 168);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);

  return sub_27537542C(v5, v8, v6);
}

uint64_t sub_275365E74()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 256);
  *v4 = *v2;
  *(v3 + 264) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 224);
  v8 = *(v1 + 216);
  if (v0)
  {
    v9 = sub_2753662FC;
  }

  else
  {
    v9 = sub_275365F9C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275365F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  v13 = v12[24];
  v14 = v12[25];
  v15 = v12[22];
  v16 = v12[23];
  v18 = v12[20];
  v17 = v12[21];
  v19 = v12[18];
  v20 = v12[19];
  sub_2753B6598();
  OUTLINED_FUNCTION_165_1();
  v12[34] = v21;
  v12[35] = v22;
  v23 = OUTLINED_FUNCTION_302_0();
  v24(v23);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v25 = OUTLINED_FUNCTION_47_3();
  v26(v25);
  OUTLINED_FUNCTION_273_0();
  v27 = *(MEMORY[0x277D64F98] + 4);
  v28 = swift_task_alloc();
  v12[36] = v28;
  v29 = MEMORY[0x277D837D0];
  v12[7] = MEMORY[0x277D837D0];
  v12[8] = &type metadata for MusicContent.MediaAPIContentType;
  v12[9] = v29;
  v30 = MEMORY[0x277D65008];
  v12[10] = MEMORY[0x277D65008];
  v12[11] = sub_2753627E8();
  v12[12] = v30;
  *v28 = v12;
  v28[1] = sub_2753660EC;
  v31 = v12[31];
  v32 = v12[29];
  v33 = v12[20];
  v44 = v12[30];
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_2753660EC()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[36];
  v6 = v1[35];
  v7 = v1[34];
  v8 = v1[20];
  v9 = v1[18];
  *v4 = *v2;
  *(v3 + 296) = v0;

  v10 = OUTLINED_FUNCTION_97_0();
  v7(v10);
  OUTLINED_FUNCTION_145_0();
  v12 = *(v11 + 224);
  v13 = v1[27];
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_27536626C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];

  v6 = v0[13];
  v7 = v0[14];
  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_285_0();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_217();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2753662FC()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[22];
  v4 = v0[23];

  v5 = OUTLINED_FUNCTION_36_3();
  v6(v5);
  v7 = v0[33];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[20];
  v10 = v0[21];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_275366398()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[26];

  v2 = v0[37];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[20];
  v5 = v0[21];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t MusicContentStorage.Operations.relatedContent(to:as:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v5 = sub_2753B65D8();
  v1[28] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v1[29] = v6;
  v8 = *(v7 + 64);
  v1[30] = OUTLINED_FUNCTION_187_1();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v9 = sub_2753B6608();
  v1[33] = v9;
  OUTLINED_FUNCTION_17_1(v9);
  v1[34] = v10;
  v12 = *(v11 + 64);
  v1[35] = OUTLINED_FUNCTION_187_1();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_2753B6288();
  v1[38] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v13, 255, v14);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[39] = v15;
  v1[40] = v16;
  v17 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_275366590()
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v4 = *(v0 + 296);
  v5 = *(v0 + 208);
  OUTLINED_FUNCTION_67();
  sub_2753B65E8();
  sub_2753B69E8();
  if (v6)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_85_0();
    sub_2753B65B8();
    v7 = MEMORY[0x277D837D0];
    *(v0 + 136) = v2;
    v8 = MEMORY[0x277D65000];
    *(v0 + 160) = v7;
    *(v0 + 168) = v8;
    *(v0 + 144) = v1;
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    sub_2753B65F8();
    v9 = *(v3 + 8);
    v10 = OUTLINED_FUNCTION_53();
    v11(v10);
    v12 = *(v3 + 32);
    v13 = OUTLINED_FUNCTION_129_0();
    v14(v13);
  }

  v15 = *(v0 + 248);
  sub_27537D100(*(v0 + 216), v0 + 16);
  *(v0 + 344) = OUTLINED_FUNCTION_150_2((v0 + 328));
  sub_2753B65C8();
  sub_2753B65B8();
  v16 = swift_task_alloc();
  *(v0 + 352) = v16;
  *v16 = v0;
  v16[1] = sub_275366720;
  v17 = *(v0 + 216);
  v18 = *(v0 + 200);
  OUTLINED_FUNCTION_86_1(*(v0 + 192));
  OUTLINED_FUNCTION_100_0();

  return sub_27537633C();
}

uint64_t sub_275366720()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v7 = *(v6 + 352);
  v8 = *v2;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  v4[45] = v0;

  if (v0)
  {
    v10 = v4[39];
    v11 = v4[40];
    v12 = sub_275366C24;
  }

  else
  {
    v4[46] = v1;
    v10 = v4[39];
    v11 = v4[40];
    v12 = sub_27536682C;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_27536682C()
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_255(v3);
  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_2753B65B8();
  v4 = sub_2753B6A18();
  v0[15] = v4;
  OUTLINED_FUNCTION_141_1();
  v0[16] = sub_2753870A8(v5, 255, v6);
  __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_18(v4);
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_182_0();
  v9();
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_2753B65B8();
  sub_2753B6598();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v10 = *(v2 + 32);
  v11 = OUTLINED_FUNCTION_76();
  v12(v11);
  sub_2753B65F8();
  v13 = *(MEMORY[0x277D64F78] + 4);
  v14 = swift_task_alloc();
  v0[22] = MEMORY[0x277D64FD0];
  v15 = MEMORY[0x277D64FC0];
  v0[47] = v14;
  v0[23] = v15;
  *v14 = v0;
  v14[1] = sub_275366A0C;
  v16 = v0[42];
  v17 = v0[43];
  v18 = v0[41];
  OUTLINED_FUNCTION_86_1(v0[35]);
  OUTLINED_FUNCTION_179();

  return MEMORY[0x2821CC208]();
}

uint64_t sub_275366A0C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = v4[47];
  *v6 = *v1;
  v5[48] = v0;

  v8 = v4[35];
  v9 = v4[34];
  v10 = v4[33];
  if (v0)
  {
    OUTLINED_FUNCTION_157_2(v9);
    v5[52] = v11;
    v5[53] = v12;
  }

  else
  {
    v5[49] = v3;
    OUTLINED_FUNCTION_157_2(v9);
    v5[50] = v11;
    v5[51] = v15;
  }

  v11();
  v13 = v5[39];
  v14 = v5[40];
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_275366B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v14 = v12[50];
  v13 = v12[51];
  OUTLINED_FUNCTION_323_0();
  v15 = OUTLINED_FUNCTION_306();
  v14(v15);
  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_105_3();
  v16 = v12[49];
  OUTLINED_FUNCTION_100_0();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_275366C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_322_0();
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_90_0();
  v15(v14);
  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_96_0();
  v18(v17);
  v19 = *(v10 + 360);
  OUTLINED_FUNCTION_91_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_111_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_275366CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v12 = v10[52];
  v11 = v10[53];
  v14 = v10[37];
  v13 = v10[38];
  v15 = v10[33];

  v16 = OUTLINED_FUNCTION_96_0();
  v12(v16);
  v17 = v10[48];
  OUTLINED_FUNCTION_91_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_111_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t MusicContentStorage.Operations.mediaAPITransitionInfo(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2753B6608();
  v1[19] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v1[20] = v6;
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_187_1();
  v1[22] = swift_task_alloc();
  v9 = sub_2753B65D8();
  v1[23] = v9;
  OUTLINED_FUNCTION_17_1(v9);
  v1[24] = v10;
  v12 = *(v11 + 64);
  v1[25] = OUTLINED_FUNCTION_187_1();
  v1[26] = swift_task_alloc();
  sub_2753B6288();
  v1[27] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v13, 255, v14);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[28] = v15;
  v1[29] = v16;
  v17 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_275366ED0()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 208);
  sub_27537D100(*(v0 + 144), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 240) = v2;
  *(v0 + 256) = OUTLINED_FUNCTION_227_1(*&v2);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 264) = v3;
  *v3 = v4;
  v3[1] = sub_275366FAC;
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);

  return sub_27537542C(v5, v8, v6);
}

uint64_t sub_275366FAC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 264);
  *v4 = *v2;
  *(v3 + 272) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 232);
  v8 = *(v1 + 224);
  if (v0)
  {
    v9 = sub_275367420;
  }

  else
  {
    v9 = sub_2753670D4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2753670D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  v13 = v12[25];
  v14 = v12[26];
  v15 = v12[23];
  v16 = v12[24];
  v18 = v12[21];
  v17 = v12[22];
  v19 = v12[19];
  v20 = v12[20];
  sub_2753B6598();
  OUTLINED_FUNCTION_165_1();
  v12[35] = v21;
  v12[36] = v22;
  v23 = OUTLINED_FUNCTION_302_0();
  v24(v23);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v25 = OUTLINED_FUNCTION_47_3();
  v26(v25);
  OUTLINED_FUNCTION_273_0();
  v27 = *(MEMORY[0x277D64F98] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v28 = MEMORY[0x277CC9318];
  v12[37] = v29;
  v12[7] = v28;
  v12[8] = v28;
  v12[9] = v28;
  v12[10] = v28;
  v30 = MEMORY[0x277D64EE8];
  v12[11] = MEMORY[0x277D64EE8];
  v12[12] = v30;
  v12[13] = v30;
  v12[14] = v30;
  *v29 = v31;
  v29[1] = sub_27536721C;
  v32 = v12[32];
  v33 = v12[30];
  v34 = v12[21];
  v35 = v12[15];
  v46 = v12[31];
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_27536721C()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[37];
  v6 = v1[36];
  v7 = v1[35];
  v8 = v1[21];
  v9 = v1[19];
  *v4 = *v2;
  *(v3 + 304) = v0;

  v10 = OUTLINED_FUNCTION_97_0();
  v7(v10);
  OUTLINED_FUNCTION_145_0();
  v12 = *(v11 + 232);
  v13 = v1[28];
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_27536739C()
{
  OUTLINED_FUNCTION_3();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];

  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_35_0();

  return v6();
}

uint64_t sub_275367420()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[23];
  v4 = v0[24];

  v5 = OUTLINED_FUNCTION_36_3();
  v6(v5);
  v7 = v0[34];
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[21];
  v10 = v0[22];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2753674BC()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[27];

  v2 = v0[38];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t MusicContentStorage.Operations.hasMediaAPIAttributes(containing:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v1[15] = v4;
  v1[16] = v0;
  v1[14] = v5;
  v6 = sub_2753B6608();
  v1[17] = v6;
  OUTLINED_FUNCTION_17_1(v6);
  v1[18] = v7;
  v9 = *(v8 + 64);
  v1[19] = OUTLINED_FUNCTION_187_1();
  v1[20] = swift_task_alloc();
  v10 = sub_2753B65D8();
  v1[21] = v10;
  OUTLINED_FUNCTION_17_1(v10);
  v1[22] = v11;
  v13 = *(v12 + 64);
  v1[23] = OUTLINED_FUNCTION_187_1();
  v14 = swift_task_alloc();
  v15 = *v3;
  v1[24] = v14;
  v1[25] = v15;
  sub_2753B6288();
  v1[26] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v16, 255, v17);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[27] = v18;
  v1[28] = v19;
  v20 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2753676A4()
{
  OUTLINED_FUNCTION_14_0();
  if (*(v0 + 200))
  {
    v1 = *(v0 + 192);
    sub_27537D100(*(v0 + 128), v0 + 16);
    v2 = *(v0 + 40);
    *(v0 + 232) = v2;
    *(v0 + 248) = OUTLINED_FUNCTION_227_1(*&v2);
    sub_2753B65C8();
    OUTLINED_FUNCTION_85_0();
    sub_2753B65B8();
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v0 + 256) = v3;
    *v3 = v4;
    v3[1] = sub_2753677F4;
    v5 = *(v0 + 160);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);

    return sub_27537542C(v5, v8, v6);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_275367CD8;
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    OUTLINED_FUNCTION_86_1(*(v0 + 112));

    return MusicContentStorage.Operations.hasMediaAPIAttributes(for:)();
  }
}

uint64_t sub_2753677F4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 256);
  *v4 = *v2;
  *(v3 + 264) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 224);
  v8 = *(v1 + 216);
  if (v0)
  {
    v9 = sub_275367EF4;
  }

  else
  {
    v9 = sub_27536791C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27536791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144_0();
  v13 = v12[24];
  v14 = v12[25];
  v16 = v12[22];
  v15 = v12[23];
  v18 = v12[20];
  v17 = v12[21];
  v20 = v12[18];
  v19 = v12[19];
  v21 = v12[17];
  sub_2753B6598();
  v12[34] = *(v20 + 8);
  v12[35] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22 = OUTLINED_FUNCTION_107_0();
  v23(v22);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v24 = MEMORY[0x277D65050];
  v12[10] = MEMORY[0x277D83B88];
  v12[11] = v24;
  v12[7] = v14;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v12 + 7);
  sub_2753B65B8();
  v25 = *(v16 + 32);
  v26 = OUTLINED_FUNCTION_27();
  v27(v26);
  sub_2753B65F8();
  v28 = *(MEMORY[0x277D64F98] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v12[12] = MEMORY[0x277D839B0];
  v29 = MEMORY[0x277D65048];
  v12[36] = v30;
  v12[13] = v29;
  *v30 = v31;
  v30[1] = sub_275367AC0;
  v32 = v12[31];
  v33 = v12[29];
  v34 = v12[19];
  v45 = v12[30];
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_100_0();

  return MEMORY[0x2821CC228](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_275367AC0()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[36];
  v6 = v1[35];
  v7 = v1[34];
  v8 = v1[19];
  v9 = v1[17];
  *v4 = *v2;
  *(v3 + 296) = v0;

  v10 = OUTLINED_FUNCTION_97_0();
  v7(v10);
  OUTLINED_FUNCTION_145_0();
  v12 = *(v11 + 224);
  v13 = v1[27];
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_275367C40()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 208);

  v2 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);

  OUTLINED_FUNCTION_105_3();

  return v7(v2 & 1);
}

uint64_t sub_275367CD8()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 304);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 312) = v0;

  if (v0)
  {
    v11 = *(v5 + 216);
    v12 = *(v5 + 224);
    v13 = sub_275367E74;
  }

  else
  {
    *(v5 + 321) = v3 & 1;
    v11 = *(v5 + 216);
    v12 = *(v5 + 224);
    v13 = sub_275367DEC;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_275367DEC()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 208);

  v2 = *(v0 + 321);
  OUTLINED_FUNCTION_331_0();

  OUTLINED_FUNCTION_105_3();

  return v3(v2);
}

uint64_t sub_275367E74()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 208);

  v2 = *(v0 + 312);
  OUTLINED_FUNCTION_331_0();

  v3 = OUTLINED_FUNCTION_66_4();

  return v4(v3);
}

uint64_t sub_275367EF4()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];

  v5 = OUTLINED_FUNCTION_36_3();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = v0[33];
  OUTLINED_FUNCTION_331_0();

  v8 = OUTLINED_FUNCTION_66_4();

  return v9(v8);
}

uint64_t sub_275367F94()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[26];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[37];
  OUTLINED_FUNCTION_331_0();

  v3 = OUTLINED_FUNCTION_66_4();

  return v4(v3);
}

uint64_t MusicContentStorage.Operations.registerContent(_:in:)()
{
  OUTLINED_FUNCTION_3();
  v2[175] = v1;
  v2[174] = v4;
  v2[173] = v5;
  v2[172] = v6;
  OUTLINED_FUNCTION_10_6();
  sub_2753868E4(0, v7, v8, v9, MEMORY[0x277D64F00]);
  v2[176] = v10;
  OUTLINED_FUNCTION_75(v10);
  v12 = *(v11 + 64);
  v2[177] = OUTLINED_FUNCTION_138_0();
  v13 = sub_2753B6608();
  v2[178] = v13;
  OUTLINED_FUNCTION_17_1(v13);
  v2[179] = v14;
  v16 = *(v15 + 64);
  v2[180] = OUTLINED_FUNCTION_187_1();
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v17 = sub_2753B65D8();
  v2[189] = v17;
  OUTLINED_FUNCTION_17_1(v17);
  v2[190] = v18;
  v20 = *(v19 + 64);
  v2[191] = OUTLINED_FUNCTION_187_1();
  v2[192] = swift_task_alloc();
  v2[193] = swift_task_alloc();
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  v2[196] = swift_task_alloc();
  v2[197] = swift_task_alloc();
  v2[198] = swift_task_alloc();
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v2[201] = swift_task_alloc();
  v2[202] = swift_task_alloc();
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  sub_27537D164();
  v2[209] = v21;
  OUTLINED_FUNCTION_75(v21);
  v23 = *(v22 + 64);
  v2[210] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_146_2();
  sub_2753868E4(0, v24, v0, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v2[211] = v25;
  OUTLINED_FUNCTION_17_1(v25);
  v2[212] = v26;
  v28 = *(v27 + 64);
  v2[213] = OUTLINED_FUNCTION_330_0();
  v2[214] = swift_task_alloc();
  v2[215] = swift_task_alloc();
  v2[216] = swift_task_alloc();
  OUTLINED_FUNCTION_144_2();
  sub_2753868E4(0, &qword_2809C1310, v0, &type metadata for MusicContent, v29);
  v2[217] = v30;
  OUTLINED_FUNCTION_17_1(v30);
  v2[218] = v31;
  v33 = *(v32 + 64);
  v2[219] = OUTLINED_FUNCTION_138_0();
  sub_27538685C(0, &qword_2809C2CC8, &qword_2809C1310, v3);
  OUTLINED_FUNCTION_75(v34);
  v36 = *(v35 + 64);
  v2[220] = OUTLINED_FUNCTION_187_1();
  v2[221] = swift_task_alloc();
  v2[222] = swift_task_alloc();
  sub_2753B6288();
  v2[223] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v37, 255, v38);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v2[224] = v39;
  v2[225] = v40;
  v41 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_27536845C()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[217];
  v2 = v0[172];
  sub_2753B6A88();
  v3 = v0[169];
  v0[226] = v0[170];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[227] = v4;
  *v4 = v5;
  v4[1] = sub_27536851C;
  v6 = v0[222];
  v7 = v0[175];

  return MusicContentStorage.Operations.registration(for:followRedirect:)();
}

uint64_t sub_27536851C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1816);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 1808);

    OUTLINED_FUNCTION_152_2();
    v12 = sub_27536DB70;
  }

  else
  {
    v13 = *(v3 + 1808);

    OUTLINED_FUNCTION_152_2();
    v12 = sub_27536863C;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_27536863C()
{
  OUTLINED_FUNCTION_294_0();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2[217]);
  v4 = OUTLINED_FUNCTION_96_0();
  sub_27537D200(v4, v5);
  OUTLINED_FUNCTION_332_0(v0);
  if (!v6)
  {
    v34 = OUTLINED_FUNCTION_190_1();
    v35(v34);
    sub_2753B6A88();
    v36 = v2[159];
    v2[228] = v2[160];
    v37 = swift_task_alloc();
    v2[229] = v37;
    *v37 = v2;
    v37[1] = sub_275368BAC;
    v38 = v2[175];
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_148_0();

    return sub_27537633C();
  }

  OUTLINED_FUNCTION_219_1();
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v7, v8, v9, v10, sub_27538685C);
  sub_2753B6A58();
  v11 = *(v3 + 88);
  v12 = OUTLINED_FUNCTION_129_0();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x277D65178])
  {
    OUTLINED_FUNCTION_81_1();
    v16 = OUTLINED_FUNCTION_126_0(v15);
    v17(v16);
    v18 = *v1;
    v2[281] = *v1;
    v19 = MEMORY[0x277D84F90];
    if (*(v18 + 16))
    {
      OUTLINED_FUNCTION_234_1();
      v19 = v126;
      v20 = v18 + 40;
      do
      {
        OUTLINED_FUNCTION_218_1();
        v20 += 56;
        switch(v22)
        {
          case 1:
          case 3:
          case 4:
          case 5:
            break;
          case 2:
            v23 = *(v21 + 24) | 0x40u;

            break;
          default:
            OUTLINED_FUNCTION_291();
            break;
        }

        v25 = *(v126 + 16);
        v24 = *(v126 + 24);

        if (v25 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_262_0();
        }

        OUTLINED_FUNCTION_183(v26, v27, v28, v29, v30, v31, v32, v33, v111, v115, v120, v121, v122, v123, v124, v125);
      }

      while (!v6);
      v2 = v124;
    }

    v2[282] = v19;
    v65 = swift_task_alloc();
    v2[283] = v65;
    *v65 = v2;
    OUTLINED_FUNCTION_116_3(v65);
    OUTLINED_FUNCTION_148_0();

    return MusicContentStorage.Operations.firstContentID(matching:in:)();
  }

  if (v14 == *MEMORY[0x277D65170])
  {
    v41 = v2[217];
    OUTLINED_FUNCTION_81_1();
    v42 = v2[194];
    v43 = v2[193];
    OUTLINED_FUNCTION_163_0();
    v44 = v2[181];
    v46 = OUTLINED_FUNCTION_46_3(v45);
    v47(v46);
    v49 = *v1;
    v48 = v1[1];
    v116 = v1[2];
    OUTLINED_FUNCTION_108_3();
    sub_2753B65C8();
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_274_0();
    v50 = MEMORY[0x277D64FD0];
    v51 = MEMORY[0x277D64FB8];
    v2[48] = MEMORY[0x277D64FD0];
    v2[49] = v51;
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v2 + 45);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_327_0();
    v2[53] = v50;
    v2[54] = v51;
    v2[50] = v49;
    v2[51] = v48;
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v2 + 50);
    OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_315_0(MEMORY[0x277D83B88], v111, v116);
    v52 = OUTLINED_FUNCTION_60_1(v2 + 55);
    v60 = OUTLINED_FUNCTION_93_3(v52, v53, v54, v55, v56, v57, v58, v59, v112, v117, v120);
    v61(v60);
    OUTLINED_FUNCTION_326_0();
    v62 = *(MEMORY[0x277D64F88] + 4);
    v63 = swift_task_alloc();
    v2[318] = v63;
    *v63 = v2;
    OUTLINED_FUNCTION_130_1(v63);
LABEL_24:
    OUTLINED_FUNCTION_86_1(v64);
    OUTLINED_FUNCTION_148_0();

    return MEMORY[0x2821CC218](v101, v102, v103, v104, v105, v106, v107, v108);
  }

  if (v14 == *MEMORY[0x277D65168])
  {
    v67 = v2[217];
    OUTLINED_FUNCTION_81_1();
    v68 = v2[192];
    v69 = v2[191];
    OUTLINED_FUNCTION_163_0();
    v70 = v2[180];
    v72 = OUTLINED_FUNCTION_46_3(v71);
    v73(v72);
    v74 = *v1;
    v75 = v1[1];
    v113 = v1[3];
    v118 = v1[2];
    OUTLINED_FUNCTION_108_3();
    sub_2753B65C8();
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_274_0();
    v2[123] = MEMORY[0x277D64FD0];
    v2[124] = MEMORY[0x277D64FB8];
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v2 + 120);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_327_0();
    OUTLINED_FUNCTION_260_0();
    __swift_destroy_boxed_opaque_existential_1(v2 + 100);
    OUTLINED_FUNCTION_73_4();
    v76 = OUTLINED_FUNCTION_7_4();
    sub_275388174(v76, v77, v78, v79);
    v2[83] = v80;
    v81 = sub_27537D288();
    OUTLINED_FUNCTION_259_0(v81, v82, v83, v84, v85, v86, v87, v88, v113, v118);
    v89 = OUTLINED_FUNCTION_60_1(v2 + 80);
    v97 = OUTLINED_FUNCTION_93_3(v89, v90, v91, v92, v93, v94, v95, v96, v114, v119, v120);
    v98(v97);
    OUTLINED_FUNCTION_326_0();
    v99 = *(MEMORY[0x277D64F88] + 4);
    v100 = swift_task_alloc();
    v2[320] = v100;
    *v100 = v2;
    OUTLINED_FUNCTION_136_3(v100);
    v64 = v2[180];
    goto LABEL_24;
  }

  v109 = v2[211];
  OUTLINED_FUNCTION_148_0();

  return sub_2753B7708();
}

uint64_t sub_275368BAC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1832);
  *v4 = *v1;
  v3[230] = v7;
  v3[231] = v0;

  v8 = v3[228];

  OUTLINED_FUNCTION_106_3();
  if (v0)
  {
    v11 = sub_27536E0E0;
  }

  else
  {
    v11 = sub_275368CC4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275368CC4()
{
  v254 = v0;
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1728);
  v4 = *(v0 + 1720);
  v5 = *(v0 + 1696);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1672);
  v9 = *(v0 + 1376);
  sub_2753B6A58();
  sub_2753B6A58();
  v10 = (v7 + *(v8 + 48));
  v11 = *(v5 + 32);
  v11(v7, v3, v6);
  v12 = OUTLINED_FUNCTION_53();
  (v11)(v12);
  v15 = *(v5 + 88);
  v14 = v5 + 88;
  v13 = v15;
  v16 = OUTLINED_FUNCTION_71();
  v17 = v15(v16);
  v18 = v17;
  v19 = *MEMORY[0x277D65178];
  if (v17 != v19)
  {
    if (v17 == *MEMORY[0x277D65170])
    {
      v46 = v13(v10, *(v0 + 1688));
      if (v46 == v19)
      {
        v47 = OUTLINED_FUNCTION_50_4();
        v48(v47);
        v49 = *v10;
        *(v0 + 2016) = v49;
        v50 = *(v49 + 16) + 1;
        v51 = v49;
        while (2)
        {
          if (--v50)
          {
            v52 = v51 + 56;
            v53 = *(v51 + 82) >> 5;
            v51 = v52;
            v54 = *(v52 - 24);
            v55 = *(v52 - 16);
            v57 = *(v52 - 8);
            v56 = *v52;
            switch(v53)
            {
              case 0:
                v58 = 0;
                v59 = 0;
                v57 = *(v52 - 8);
                goto LABEL_39;
              case 1:
                v58 = *v52;
                v59 = 32;
                goto LABEL_39;
              case 2:
                v59 = *(v52 + 8) | 0x40;

                v58 = v56;
                goto LABEL_40;
              case 3:
                v58 = *v52;
                v59 = 96;
                goto LABEL_39;
              case 4:
                v58 = *v52;
                v59 = 0x80;
LABEL_39:
                v144 = *(v52 - 16);
LABEL_40:

                v246 = v54;
                v247 = v55;
                v248 = v57;
                v249 = v58;
                LOBYTE(v250) = v59;
                sub_27535DCC4(&v245);

                v145 = OUTLINED_FUNCTION_90_0();
                sub_2753147B0(v145, v146, v57, v58, v59);
                v84 = v245;
                if (v245 == 6)
                {
                  goto LABEL_47;
                }

                break;
              default:
                continue;
            }
          }

          else
          {
            v84 = 6;
          }

          break;
        }

        v147 = *(v0 + 1840);
        v148 = *(v0 + 1632);
        v149 = *(v0 + 1624);
        v150 = *(v0 + 1520);
        v151 = *(v0 + 1512);
        v152 = *(v0 + 1488);
        v153 = *(v0 + 1400);
        v244 = v153[4];
        __swift_project_boxed_opaque_existential_1(v153, v153[3]);
        sub_2753B65C8();
        OUTLINED_FUNCTION_233_1();
        v154 = OUTLINED_FUNCTION_7_4();
        sub_275388174(v154, v155, v156, v157);
        *(v0 + 344) = v158;
        OUTLINED_FUNCTION_143_2();
        *(v0 + 352) = sub_275386964(v159, v160);
        *(v0 + 320) = v84;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v0 + 320));
        sub_2753B65B8();
        v161 = MEMORY[0x277D65050];
        *(v0 + 264) = MEMORY[0x277D83B88];
        *(v0 + 272) = v161;
        *(v0 + 240) = v147;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v0 + 240));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v162 = *(v150 + 32);
        v163 = OUTLINED_FUNCTION_78_2();
        v164(v163);
        OUTLINED_FUNCTION_199_1();
        sub_2753B65F8();
        v165 = *(MEMORY[0x277D64F88] + 4);
        v166 = swift_task_alloc();
        *(v0 + 2024) = v166;
        *v166 = v0;
        v166[1] = sub_27536AAC4;
        v83 = *(v0 + 1488);
LABEL_43:
        OUTLINED_FUNCTION_86_1(v83);
        OUTLINED_FUNCTION_153_2();

        return MEMORY[0x2821CC218](v167, v168, v169, v170, v171, v172, v173, v174);
      }

      if (v46 == v18)
      {
        v65 = OUTLINED_FUNCTION_50_4();
        v66(v65);
        v67 = *v10;
        *(v0 + 1960) = v10[1];
        *(v0 + 1968) = v10[2];
        v63 = swift_task_alloc();
        *(v0 + 1976) = v63;
        *v63 = v0;
        v64 = sub_27536A680;
      }

      else
      {
        if (v46 != *MEMORY[0x277D65168])
        {
          goto LABEL_30;
        }

        v85 = OUTLINED_FUNCTION_50_4();
        v86(v85);
        v87 = *v10;
        *(v0 + 2120) = v10[1];
        *(v0 + 2128) = v10[2];
        *(v0 + 2136) = v10[3];
        v63 = swift_task_alloc();
        *(v0 + 2144) = v63;
        *v63 = v0;
        v64 = sub_27536B358;
      }
    }

    else
    {
      if (v17 != *MEMORY[0x277D65168] || v13(v10, *(v0 + 1688)) != v17)
      {
        goto LABEL_30;
      }

      v60 = OUTLINED_FUNCTION_50_4();
      v61(v60);
      v62 = *v10;
      *(v0 + 2184) = v10[1];
      *(v0 + 2192) = v10[2];
      *(v0 + 2200) = v10[3];
      v63 = swift_task_alloc();
      *(v0 + 2208) = v63;
      *v63 = v0;
      v64 = sub_27536B7BC;
    }

    v63[1] = v64;
    v88 = *(v0 + 1400);
    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_153_2();

    return sub_27537633C();
  }

  if (v13(v10, *(v0 + 1688)) != v17)
  {
LABEL_30:
    v90 = *(v0 + 1784);
    v224 = *(v0 + 1752);
    v232 = *(v0 + 1744);
    v235 = *(v0 + 1776);
    v91 = *(v0 + 1736);
    v92 = *(v0 + 1712);
    v93 = *(v0 + 1696);
    v94 = *(v0 + 1688);
    v95 = *(v0 + 1416);
    v96 = *(v0 + 1408);
    v238 = *(v0 + 1680);
    v242 = *(v0 + 1376);

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v0 + 67) = 3;
    sub_2753B6298();
    sub_2753B62C8();
    sub_2753B6A58();
    v97 = sub_2753B6A48();
    v99 = v98;
    v227 = v10;
    v100 = *(v93 + 8);
    v101 = OUTLINED_FUNCTION_112();
    v100(v101);
    *(v0 + 1304) = v97;
    *(v0 + 1312) = v99;
    sub_2753B62B8();

    sub_2753B62C8();
    sub_2753B6A58();
    v102 = sub_2753B6A48();
    v104 = v103;
    v105 = OUTLINED_FUNCTION_112();
    v100(v105);
    *(v0 + 1288) = v102;
    *(v0 + 1296) = v104;
    sub_2753B62B8();

    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_10_6();
    sub_2753868E4(0, v106, v107, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_245();
    OUTLINED_FUNCTION_122();
    sub_2753B62E8();
    swift_willThrow();
    (*(v232 + 8))(v224, v91);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v235, v108, v109, v110, sub_27538685C);
    (v100)(v227, v94);
    (v100)(v238, v94);
    v111 = *(v0 + 1776);
    v112 = *(v0 + 1768);
    v113 = *(v0 + 1760);
    v114 = *(v0 + 1752);
    v115 = *(v0 + 1728);
    v116 = *(v0 + 1720);
    v117 = *(v0 + 1712);
    v118 = *(v0 + 1704);
    v119 = *(v0 + 1680);
    v120 = *(v0 + 1664);
    v182 = *(v0 + 1656);
    v184 = *(v0 + 1648);
    v186 = *(v0 + 1640);
    v188 = *(v0 + 1632);
    v190 = *(v0 + 1624);
    v192 = *(v0 + 1616);
    v194 = *(v0 + 1608);
    v196 = *(v0 + 1600);
    v198 = *(v0 + 1592);
    v200 = *(v0 + 1584);
    v202 = *(v0 + 1576);
    v204 = *(v0 + 1568);
    v206 = *(v0 + 1560);
    v208 = *(v0 + 1552);
    v210 = *(v0 + 1544);
    v212 = *(v0 + 1536);
    v214 = *(v0 + 1528);
    v216 = *(v0 + 1504);
    v218 = *(v0 + 1496);
    v220 = *(v0 + 1488);
    v222 = *(v0 + 1480);
    v225 = *(v0 + 1472);
    v228 = *(v0 + 1464);
    v230 = *(v0 + 1456);
    v233 = *(v0 + 1448);
    v236 = *(v0 + 1440);
    v239 = *(v0 + 1416);

    OUTLINED_FUNCTION_19_0();
    goto LABEL_31;
  }

  v20 = OUTLINED_FUNCTION_50_4();
  v21(v20);
  v22 = *v10;
  *(v0 + 1856) = *v10;
  v23 = *(v22 + 16);
  *(v0 + 1864) = v23;
  *(v0 + 1872) = 0;
  v24 = *(v22 + 16);
  if (!v23)
  {
    v68 = v24 + 1;
    v69 = v22;
    while (v68 != 1)
    {
      OUTLINED_FUNCTION_178_1(v69);
      if (v70 < 5)
      {
        v246 = OUTLINED_FUNCTION_251(v69);
        v247 = v71;
        v248 = v72;
        v249 = v73;
        v250 = v74;
        v251 = v75;
        v253 = BYTE2(v76);
        v252 = v76;
        sub_275315CB8(v246, v71, v72, v73, v74, v75, v76);
        sub_275374B74(&v246, &v245);
        sub_2752FBB6C(v246, v247, v248, v249, v250, v251, v252 | (v253 << 16));
        v77 = v245;
        if (v245 != 6)
        {
          OUTLINED_FUNCTION_205_1();
          v241 = *(v19 + 32);
          __swift_project_boxed_opaque_existential_1(v19, *(v19 + 24));
          sub_2753B65C8();
          OUTLINED_FUNCTION_233_1();
          *(v0 + 1224) = &type metadata for MusicContent.ContentType;
          *(v0 + 1232) = sub_275356020();
          *(v0 + 1200) = v77;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1((v0 + 1200));
          sub_2753B65B8();
          *(v0 + 864) = MEMORY[0x277D83B88];
          *(v0 + 872) = MEMORY[0x277D65050];
          *(v0 + 840) = v8;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1((v0 + 840));
          OUTLINED_FUNCTION_67();
          sub_2753B65B8();
          v78 = *(v14 + 32);
          v79 = OUTLINED_FUNCTION_78_2();
          v80(v79);
          OUTLINED_FUNCTION_199_1();
          sub_2753B65F8();
          v81 = *(MEMORY[0x277D64F88] + 4);
          v82 = swift_task_alloc();
          *(v0 + 1944) = v82;
          *v82 = v0;
          OUTLINED_FUNCTION_131_3(v82);
          goto LABEL_43;
        }

LABEL_48:
        __break(1u);
        JUMPOUT(0x275369C30);
      }
    }

    v123 = *(v0 + 1784);
    OUTLINED_FUNCTION_230_1();

    v124 = *(v19 + 8);
    v125 = OUTLINED_FUNCTION_129_0();
    v126(v125);

    v127 = OUTLINED_FUNCTION_39_4();
    v128(v127);
    v129 = *(v0 + 1776);
    v130 = *(v0 + 1760);
    v175 = *(v0 + 1768);
    v176 = *(v0 + 1752);
    v131 = *(v0 + 1744);
    v132 = *(v0 + 1736);
    v177 = *(v0 + 1728);
    v178 = *(v0 + 1720);
    v179 = *(v0 + 1712);
    v180 = *(v0 + 1704);
    v181 = *(v0 + 1680);
    v183 = *(v0 + 1664);
    v185 = *(v0 + 1656);
    v187 = *(v0 + 1648);
    v189 = *(v0 + 1640);
    v191 = *(v0 + 1632);
    v193 = *(v0 + 1624);
    v195 = *(v0 + 1616);
    v197 = *(v0 + 1608);
    v199 = *(v0 + 1600);
    v201 = *(v0 + 1592);
    v203 = *(v0 + 1584);
    v205 = *(v0 + 1576);
    v207 = *(v0 + 1568);
    v209 = *(v0 + 1560);
    v211 = *(v0 + 1552);
    v215 = *(v0 + 1544);
    v219 = *(v0 + 1536);
    v223 = *(v0 + 1528);
    v229 = *(v0 + 1504);
    v133 = *(*(v0 + 1400) + 40);
    v213 = *(v0 + 1496);
    v217 = *(v0 + 1488);
    v221 = *(v0 + 1480);
    v226 = *(v0 + 1472);
    v231 = *(v0 + 1464);
    v234 = *(v0 + 1456);
    v237 = *(v0 + 1448);
    v240 = *(v0 + 1440);
    v243 = *(v0 + 1416);
    v134 = *(v0 + 1376);
    sub_2753B6A88();
    v135 = OUTLINED_FUNCTION_38_3();
    v136(v135);
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_145_2();
    v137 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v137, v138, v139);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v140 = OUTLINED_FUNCTION_214_1();
    v133(v140);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v129, v141, v142, v143, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
LABEL_31:
    OUTLINED_FUNCTION_153_2();

    __asm { BRAA            X1, X16 }
  }

  if (!v24)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 1880) = *(v22 + 32);
  *(v0 + 1888) = *(v22 + 40);
  *(v0 + 1896) = *(v22 + 48);
  *(v0 + 1904) = *(v22 + 56);
  *(v0 + 1912) = *(v22 + 64);
  *(v0 + 1920) = *(v22 + 72);
  v25 = *(v22 + 82);
  v26 = *(v22 + 80);
  *(v0 + 68) = v26;
  *(v0 + 64) = v26;
  *(v0 + 70) = v25;
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_276_0(v33, v34, v27, v28, v29, v30, v31, v32);
  *(v0 + 66) = v35;
  sub_275315CB8(v42, v36, v37, v38, v39, v40, v41);
  v43 = swift_task_alloc();
  *(v0 + 1928) = v43;
  *v43 = v0;
  OUTLINED_FUNCTION_196_1(v43);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_153_2();

  return MusicContentStorage.Operations._upsert(identifier:for:)();
}