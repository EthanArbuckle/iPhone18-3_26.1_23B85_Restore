uint64_t AuxiliaryMetadataProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return v0;
}

uint64_t AuxiliaryMetadataProvider.__deallocating_deinit()
{
  AuxiliaryMetadataProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_261FCA720(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9C80, &qword_2620406E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261FCA7A4()
{
  result = qword_28108C4D0;
  if (!qword_28108C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4D0);
  }

  return result;
}

uint64_t sub_261FCA7F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9C90, &qword_2620406E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261FCA870()
{
  result = qword_28108CF50;
  if (!qword_28108CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CF50);
  }

  return result;
}

unint64_t sub_261FCA8C4()
{
  result = qword_28108CFF0;
  if (!qword_28108CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFF0);
  }

  return result;
}

void sub_261FCA918()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_261FC9774();
}

unint64_t sub_261FCA944(uint64_t a1)
{
  *(a1 + 8) = sub_261FCA974();
  result = sub_261FCA9C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_261FCA974()
{
  result = qword_28108C1A0;
  if (!qword_28108C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C1A0);
  }

  return result;
}

unint64_t sub_261FCA9C8()
{
  result = qword_28108C1A8[0];
  if (!qword_28108C1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108C1A8);
  }

  return result;
}

uint64_t sub_261FCAA28(uint64_t a1, unsigned int a2)
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

uint64_t sub_261FCAA7C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_261FCAB00(uint64_t a1, int a2)
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

uint64_t sub_261FCAB40(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AuxiliaryMetadataUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AuxiliaryMetadataItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AuxiliaryMetadataItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_261FCAEA0(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_261FCAF50()
{
  result = qword_27FEF9D18;
  if (!qword_27FEF9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D18);
  }

  return result;
}

unint64_t sub_261FCAFA8()
{
  result = qword_27FEF9D20;
  if (!qword_27FEF9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D20);
  }

  return result;
}

unint64_t sub_261FCB000()
{
  result = qword_27FEF9D28;
  if (!qword_27FEF9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D28);
  }

  return result;
}

unint64_t sub_261FCB058()
{
  result = qword_27FEF9D30;
  if (!qword_27FEF9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D30);
  }

  return result;
}

unint64_t sub_261FCB0B0()
{
  result = qword_27FEF9D38;
  if (!qword_27FEF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D38);
  }

  return result;
}

unint64_t sub_261FCB108()
{
  result = qword_27FEF9D40;
  if (!qword_27FEF9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D40);
  }

  return result;
}

unint64_t sub_261FCB160()
{
  result = qword_27FEF9D48;
  if (!qword_27FEF9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D48);
  }

  return result;
}

unint64_t sub_261FCB1B8()
{
  result = qword_27FEF9D50;
  if (!qword_27FEF9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D50);
  }

  return result;
}

unint64_t sub_261FCB210()
{
  result = qword_27FEF9D58;
  if (!qword_27FEF9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D58);
  }

  return result;
}

unint64_t sub_261FCB268()
{
  result = qword_28108CFE0;
  if (!qword_28108CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFE0);
  }

  return result;
}

unint64_t sub_261FCB2C0()
{
  result = qword_28108CFE8;
  if (!qword_28108CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFE8);
  }

  return result;
}

unint64_t sub_261FCB318()
{
  result = qword_28108D008;
  if (!qword_28108D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D008);
  }

  return result;
}

unint64_t sub_261FCB370()
{
  result = qword_28108D010;
  if (!qword_28108D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D010);
  }

  return result;
}

unint64_t sub_261FCB3C8()
{
  result = qword_28108D060;
  if (!qword_28108D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D060);
  }

  return result;
}

unint64_t sub_261FCB420()
{
  result = qword_28108D068;
  if (!qword_28108D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D068);
  }

  return result;
}

unint64_t sub_261FCB478()
{
  result = qword_28108D030;
  if (!qword_28108D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D030);
  }

  return result;
}

unint64_t sub_261FCB4D0()
{
  result = qword_28108D038;
  if (!qword_28108D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D038);
  }

  return result;
}

unint64_t sub_261FCB528()
{
  result = qword_28108D028;
  if (!qword_28108D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D028);
  }

  return result;
}

unint64_t sub_261FCB580()
{
  result = qword_28108D020;
  if (!qword_28108D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D020);
  }

  return result;
}

unint64_t sub_261FCB5D8()
{
  result = qword_28108D050;
  if (!qword_28108D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D050);
  }

  return result;
}

unint64_t sub_261FCB630()
{
  result = qword_28108D058;
  if (!qword_28108D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D058);
  }

  return result;
}

unint64_t sub_261FCB688()
{
  result = qword_28108D040;
  if (!qword_28108D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D040);
  }

  return result;
}

unint64_t sub_261FCB6E0()
{
  result = qword_28108D048;
  if (!qword_28108D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D048);
  }

  return result;
}

unint64_t sub_261FCB738()
{
  result = qword_28108CFF8;
  if (!qword_28108CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFF8);
  }

  return result;
}

unint64_t sub_261FCB790()
{
  result = qword_28108D000;
  if (!qword_28108D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D000);
  }

  return result;
}

unint64_t sub_261FCB7E8()
{
  result = qword_28108D070;
  if (!qword_28108D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D070);
  }

  return result;
}

unint64_t sub_261FCB840()
{
  result = qword_28108D078;
  if (!qword_28108D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D078);
  }

  return result;
}

uint64_t sub_261FCB894(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_261FCB8F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261FCB93C()
{
  result = qword_28108CFC0;
  if (!qword_28108CFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEFA0A0, &unk_262040360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CFC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  v2 = *(v0 - 272);

  return sub_26203A97C();
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  v2 = *(v0 - 112);

  return sub_26203AB3C();
}

uint64_t ControlChannelConnectionError.init(_:message:failureReason:recoverySuggestion:underlyingError:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  *a8 = *a1;
  v18 = v15;
  v16 = ControlChannelConnectionError.Message.format(code:)(&v18);
  result = sub_261F65C08(a2);
  *(a8 + 8) = v16;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

unint64_t ControlChannelConnectionError.Code.defaultMessage.getter()
{
  result = 0x206E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000021;
      break;
    default:
      result = 0x726F70736E617254;
      break;
  }

  return result;
}

RemotePairingDevice::ControlChannelConnectionError::Code_optional __swiftcall ControlChannelConnectionError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_261FCBBE8@<X0>(uint64_t *a1@<X8>)
{
  result = ControlChannelConnectionError.Code.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t ControlChannelConnectionError.message.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_47();
}

uint64_t ControlChannelConnectionError.failureReason.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_47();
}

uint64_t ControlChannelConnectionError.recoverySuggestion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_47();
}

void *ControlChannelConnectionError.underlyingError.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t sub_261FCBCCC(uint64_t a1)
{
  v2 = sub_261FCD6E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261FCBD08(uint64_t a1)
{
  v2 = sub_261FCD6E0();

  return MEMORY[0x28211F4A8](a1, v2);
}

void *ControlChannelConnectionError.errorUserInfo.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[6];
  v66 = v0[5];
  v6 = v0[7];

  v7 = MEMORY[0x277D837D0];
  sub_26203A0FC();
  v8 = *MEMORY[0x277CCA450];
  v9 = sub_26203A1BC();
  *(&v82 + 1) = v7;
  *&v81 = v2;
  *(&v81 + 1) = v1;
  OUTLINED_FUNCTION_9_4(v9, v10, v11, v12, v13, v14, v15, v16, v66, v68, v70, v72, v74, v76, v79, v80, *(&v80 + 1), v81);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_13();
  sub_261FA4260();

  v17 = v77;
  v18 = *MEMORY[0x277CCA470];
  v19 = sub_26203A1BC();
  if (v3)
  {
    *(&v82 + 1) = v7;
    *&v81 = v4;
    *(&v81 + 1) = v3;
    OUTLINED_FUNCTION_9_4(v19, v20, v21, v22, v23, v24, v25, v26, v67, v69, v71, v73, v75, v77, v79, v80, *(&v80 + 1), v81);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_13();
    sub_261FA4260();

    v17 = v77;
  }

  else
  {
    v27 = sub_261FA3868(v19, v20);
    if (v28)
    {
      v29 = v27;
      swift_isUniquelyReferenced_nonNull_native();
      *&v79 = v77;
      v30 = v77[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
      sub_26203A8EC();
      v31 = *(v77[6] + 16 * v29 + 8);

      sub_261F8D184((v77[7] + 32 * v29), &v81);
      sub_26203A90C();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    sub_261F693A0(&v81);
  }

  v32 = *MEMORY[0x277CCA498];
  v33 = sub_26203A1BC();
  v41 = v33;
  v42 = v34;
  if (v5)
  {
    *(&v82 + 1) = v7;
    *&v81 = v67;
    *(&v81 + 1) = v5;
    OUTLINED_FUNCTION_9_4(v33, v34, v35, v36, v37, v38, v39, v40, v67, v69, v71, v73, v75, v77, v79, v80, *(&v80 + 1), v81);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_13();
    sub_261FA4260();

    v17 = v77;
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    sub_261F693A0(&v81);
    v43 = sub_261FA3868(v41, v42);
    if (v44)
    {
      v45 = v43;
      swift_isUniquelyReferenced_nonNull_native();
      v77 = v17;
      v46 = v17[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
      sub_26203A8EC();
      v47 = *(v17[6] + 16 * v45 + 8);

      sub_261F8D184((v17[7] + 32 * v45), &v79);
      sub_26203A90C();
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    sub_261F693A0(&v79);
  }

  v48 = *MEMORY[0x277CCA7E8];
  v49 = sub_26203A1BC();
  if (v6)
  {
    swift_getErrorValue();
    *(&v82 + 1) = v71;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v81);
    v52 = (*(*(v71 - 8) + 16))(boxed_opaque_existential_0, v69, v71);
    OUTLINED_FUNCTION_9_4(v52, v53, v54, v55, v56, v57, v58, v59, v67, v69, v71, v73, v75, v77, v79, v80, *(&v80 + 1), v81);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_13();
    sub_261FA4260();

    return v78;
  }

  else
  {
    v60 = sub_261FA3868(v49, v50);
    if (v61)
    {
      v62 = v60;
      swift_isUniquelyReferenced_nonNull_native();
      *&v79 = v17;
      v63 = v17[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
      sub_26203A8EC();
      v17 = v79;
      v64 = *(*(v79 + 48) + 16 * v62 + 8);

      sub_261F8D184((v17[7] + 32 * v62), &v81);
      OUTLINED_FUNCTION_47();
      sub_26203A90C();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    sub_261F693A0(&v81);
  }

  return v17;
}

uint64_t sub_261FCC1A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000262050190 == a2;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000002620501B0 == a2;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x69796C7265646E75 && a2 == 0xEF726F727245676ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_26203AC0C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_261FCC3B4(char a1)
{
  result = 1701080931;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x526572756C696166;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x69796C7265646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FCC484()
{
  v0 = sub_26203A96C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FCC4D8(char a1)
{
  if (a1)
  {
    return 0x726F727265736ELL;
  }

  else
  {
    return 0x656C6261646F63;
  }
}

uint64_t sub_261FCC538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FCC1A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FCC560@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261FCC3AC();
  *a1 = result;
  return result;
}

uint64_t sub_261FCC588(uint64_t a1)
{
  v2 = sub_261FCD03C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FCC5C4(uint64_t a1)
{
  v2 = sub_261FCD03C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FCC624@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261FCC484();
  *a2 = result;
  return result;
}

uint64_t sub_261FCC654@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261FCC4D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char ControlChannelConnectionError.init(from:)@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D88, &unk_262041420);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCD03C();
  sub_26203AE3C();
  if (!v2)
  {
    OUTLINED_FUNCTION_2_10();
    v10 = sub_26203AA1C();
    ControlChannelConnectionError.Code.init(rawValue:)(v10);
    OUTLINED_FUNCTION_2_10();
    v11 = sub_26203A9EC();
    v14 = v13;
    v28 = v11;
    OUTLINED_FUNCTION_2_10();
    v26 = sub_26203A99C();
    v27 = v15;
    OUTLINED_FUNCTION_2_10();
    v24 = sub_26203A99C();
    v25 = v16;
    LOBYTE(v29) = 4;
    sub_261FCD090();
    OUTLINED_FUNCTION_7_4();
    sub_26203A9CC();
    if (v33 == 2)
    {
      v23 = 0;
    }

    else
    {
      v32 = 5;
      if (v33)
      {
        sub_261FCA870();
        OUTLINED_FUNCTION_7_4();
        sub_26203AA2C();
        sub_261F9B6D0(0, &qword_27FEF9DA0, 0x277CCAAC8);
        sub_261F9B6D0(0, &qword_28108B280, 0x277CCA9B8);
        v21 = sub_26203A52C();
        sub_261F6BFFC(v29, v30);
        v23 = v21;
        v22 = v21;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        sub_261F67F70(&qword_27FEF9DA8, &qword_27FEF9D88, &unk_262041420);
        sub_261F96884();
        sub_26203AC6C();
        v23 = v29;
        v20 = v29;
      }
    }

    v29 = v28;
    v30 = v14;
    v31 = 0;
    v32 = 0;
    v17 = ControlChannelConnectionError.Message.format(code:)(&v32);

    sub_261F65C08(&v29);
    v18 = OUTLINED_FUNCTION_20_0();
    v19(v18);
    *a2 = 0;
    *(a2 + 8) = v17;
    *(a2 + 24) = v26;
    *(a2 + 32) = v27;
    *(a2 + 40) = v24;
    *(a2 + 48) = v25;
    *(a2 + 56) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void ControlChannelConnectionError.encode(to:)(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9DB0, &qword_262041430);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v21 - v9;
  v11 = *v1;
  v12 = v1[1];
  v26 = v1[2];
  v27 = v12;
  v13 = v1[3];
  v24 = v1[4];
  v25 = v13;
  v14 = v1[5];
  v22 = v1[6];
  v23 = v14;
  v15 = v1[7];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCD03C();
  sub_26203AE5C();
  LOBYTE(v30) = 0;
  v17 = v28;
  sub_26203AB2C();
  if (v17)
  {
    goto LABEL_3;
  }

  v18 = v24;
  v28 = v15;
  LOBYTE(v30) = 1;
  OUTLINED_FUNCTION_6_8();
  if (v18)
  {
    LOBYTE(v30) = 2;
    OUTLINED_FUNCTION_6_8();
  }

  if (v22)
  {
    LOBYTE(v30) = 3;
    OUTLINED_FUNCTION_6_8();
  }

  if (!v28)
  {
LABEL_3:
    (*(v6 + 8))(v10, v3);
  }

  else
  {
    v30 = v28;
    v29 = 5;
    v20 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
    sub_261F67F70(&qword_27FEF9DB8, &qword_27FEF9DB0, &qword_262041430);
    sub_261F96884();
    sub_26203AC7C();
    LOBYTE(v30) = 0;
    v29 = 4;
    sub_261FCD0E4();
    sub_26203AB3C();
    (*(v6 + 8))(v10, v3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

unint64_t sub_261FCD03C()
{
  result = qword_27FEF9D90;
  if (!qword_27FEF9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D90);
  }

  return result;
}

unint64_t sub_261FCD090()
{
  result = qword_27FEF9D98;
  if (!qword_27FEF9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9D98);
  }

  return result;
}

unint64_t sub_261FCD0E4()
{
  result = qword_27FEF9DC0;
  if (!qword_27FEF9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DC0);
  }

  return result;
}

unint64_t sub_261FCD13C()
{
  result = qword_27FEF9DC8;
  if (!qword_27FEF9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DC8);
  }

  return result;
}

uint64_t sub_261FCD190(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_261FCD1D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_261FCD230(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FCD26C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
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

uint64_t sub_261FCD2B8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ControlChannelConnectionError.UnderlyingErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ControlChannelMessage.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_261FCD450(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_261FCD530()
{
  result = qword_27FEF9DD0;
  if (!qword_27FEF9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DD0);
  }

  return result;
}

unint64_t sub_261FCD588()
{
  result = qword_27FEF9DD8;
  if (!qword_27FEF9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DD8);
  }

  return result;
}

unint64_t sub_261FCD5E0()
{
  result = qword_27FEF9DE0;
  if (!qword_27FEF9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DE0);
  }

  return result;
}

unint64_t sub_261FCD638()
{
  result = qword_27FEF9DE8;
  if (!qword_27FEF9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DE8);
  }

  return result;
}

unint64_t sub_261FCD68C()
{
  result = qword_27FEF9DF0;
  if (!qword_27FEF9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9DF0);
  }

  return result;
}

unint64_t sub_261FCD6E0()
{
  result = qword_28108B7A8[0];
  if (!qword_28108B7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108B7A8);
  }

  return result;
}

uint64_t sub_261FCD7C8(char a1)
{
  sub_26203ADDC();
  sub_261FCE4DC(a1);
  sub_26203A23C();

  return sub_26203AE0C();
}

uint64_t sub_261FCD850(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_26203ADDC();
  a2(v5, a1);
  return sub_26203AE0C();
}

uint64_t sub_261FCD8A0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_16_5();
  }

  sub_26203A23C();
}

uint64_t sub_261FCD910()
{
  sub_26203A23C();
}

uint64_t sub_261FCD968()
{
  sub_26203A23C();
}

uint64_t sub_261FCD9C8()
{
  sub_26203A23C();
}

uint64_t sub_261FCDA40()
{
  sub_26203A23C();
}

uint64_t sub_261FCDABC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_11_4();
      break;
  }

  sub_26203A23C();
}

uint64_t sub_261FCDB9C()
{
  sub_26203A23C();
}

uint64_t sub_261FCDCA4()
{
  sub_26203A23C();
}

uint64_t sub_261FCDD50(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      break;
  }

  sub_26203A23C();
}

uint64_t sub_261FCDE08(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      break;
  }

  sub_26203A23C();
}

uint64_t sub_261FCDEC0()
{
  sub_26203A23C();
}

uint64_t sub_261FCDFBC(uint64_t a1, char a2)
{
  sub_26203ADDC();
  sub_261FCE4DC(a2);
  sub_26203A23C();

  return sub_26203AE0C();
}

uint64_t sub_261FCE034(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_26203ADDC();
  a3(v6, a2);
  return sub_26203AE0C();
}

uint64_t sub_261FCE080()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_19_3();

  return sub_26203AE0C();
}

uint64_t sub_261FCE100()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_19_3();

  return sub_26203AE0C();
}

uint64_t sub_261FCE17C()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_19_3();

  return sub_26203AE0C();
}

uint64_t sub_261FCE1E0()
{
  OUTLINED_FUNCTION_13_4();
  sub_26203A23C();

  return sub_26203AE0C();
}

uint64_t sub_261FCE24C(uint64_t a1, unsigned __int8 a2)
{
  sub_26203ADDC();
  MEMORY[0x266723290](a2);
  return sub_26203AE0C();
}

uint64_t sub_261FCE290()
{
  OUTLINED_FUNCTION_13_4();
  if (v0)
  {
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_16_5();
  }

  OUTLINED_FUNCTION_19_3();

  return sub_26203AE0C();
}

uint64_t sub_261FCE488()
{
  v0 = sub_26203A96C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_261FCE4DC(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 7697517;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6441726576726573;
      break;
    case 4:
      result = 0x5352726576726573;
      break;
    case 5:
      result = 0x797469726F697270;
      break;
    case 6:
      result = 0x7367616C66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FCE5B0()
{
  v0 = sub_26203A96C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_261FCE5FC(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FCE678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TunnelFlags.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261FCE6B8@<X0>(uint64_t *a1@<X8>)
{
  result = TunnelFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261FCE708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261FCE488();
  *a2 = result;
  return result;
}

unint64_t sub_261FCE738@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261FCE4DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_261FCE780@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261FCE4D4();
  *a1 = result;
  return result;
}

uint64_t sub_261FCE7A8(uint64_t a1)
{
  v2 = sub_261FCF0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FCE7E4(uint64_t a1)
{
  v2 = sub_261FCF0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FCE894@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261FCE5B0();
  *a2 = result;
  return result;
}

unint64_t sub_261FCE8C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261FCE5FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TunnelMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910) - 8) + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v4);
  v76 = &v74 - v5;
  OUTLINED_FUNCTION_9_5();
  v78 = sub_262039ACC();
  v6 = OUTLINED_FUNCTION_0(v78);
  v80 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v77 = v11 - v10;
  OUTLINED_FUNCTION_9_5();
  v12 = type metadata accessor for TunnelInterfaceParameters();
  v13 = OUTLINED_FUNCTION_6_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9DF8, &qword_262041918);
  OUTLINED_FUNCTION_0(v19);
  v81 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  v26 = type metadata accessor for TunnelMessage();
  v27 = OUTLINED_FUNCTION_6_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_74();
  v32 = (v31 - v30);
  v34 = a1[3];
  v33 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v34);
  sub_261FCF0A8();
  v35 = v82;
  sub_26203AE3C();
  if (!v35)
  {
    v75 = v18;
    v36 = v80;
    v82 = v32;
    v86 = 0;
    sub_261FCF0FC();
    OUTLINED_FUNCTION_15_5();
    sub_26203AA2C();
    v37 = v19;
    v38 = v25;
    v39 = v79;
    switch(v84)
    {
      case 1:
        v51 = v36;
        LOBYTE(v84) = 2;
        OUTLINED_FUNCTION_5_7();
        sub_261FCFAFC(v52, v53);
        v54 = v38;
        sub_26203AA2C();
        LOBYTE(v84) = 3;
        OUTLINED_FUNCTION_0_16();
        sub_261FCFAFC(v56, v57);
        v58 = v77;
        sub_26203AA2C();
        v59 = v81;
        LOBYTE(v84) = 4;
        v61 = sub_26203AA5C();
        OUTLINED_FUNCTION_17_4();
        sub_261FCF270();
        OUTLINED_FUNCTION_7_5();
        sub_26203A9CC();
        v66 = v84;
        if (v85)
        {
          v66 = 0;
        }

        v76 = v66;
        (*(v59 + 8))(v54, v37);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
        v68 = v67[12];
        v69 = v67[16];
        v70 = v67[20];
        OUTLINED_FUNCTION_6_9();
        v71 = v58;
        v72 = v51;
        v50 = v82;
        sub_261FCF2C4(v75, v82, v73);
        (*(v72 + 32))(&v50[v68], v71, v78);
        *&v50[v69] = v61;
        v39 = v79;
        *&v50[v70] = v76;
        break;
      case 2:
        OUTLINED_FUNCTION_18_4();
        sub_261FCF150();
        OUTLINED_FUNCTION_7_5();
        sub_26203A9CC();
        v44 = v84;
        v45 = v37;
        v46 = v85;
        LOBYTE(v84) = 3;
        OUTLINED_FUNCTION_0_16();
        sub_261FCFAFC(v47, v48);
        v49 = v76;
        sub_26203A9CC();
        if (v46)
        {
          v44 = 0;
        }

        (*(v81 + 8))(v25, v45);
        v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
        v50 = v82;
        *v82 = v44;
        sub_261FCF1A4(v49, &v50[v60]);
        v39 = v79;
        break;
      case 3:
        (*(v81 + 8))(v25, v37);
        v50 = v82;
        break;
      default:
        LOBYTE(v84) = 1;
        v40 = sub_26203AA5C();
        OUTLINED_FUNCTION_18_4();
        sub_261FCF150();
        OUTLINED_FUNCTION_7_5();
        sub_26203A9CC();
        v41 = v37;
        v42 = v84;
        v43 = v85;
        OUTLINED_FUNCTION_17_4();
        sub_261FCF270();
        OUTLINED_FUNCTION_15_5();
        sub_26203A9CC();
        if (v43)
        {
          v62 = 0;
        }

        else
        {
          v62 = v42;
        }

        if (v85)
        {
          v63 = 0;
        }

        else
        {
          v63 = v84;
        }

        v64 = OUTLINED_FUNCTION_8_4();
        v65(v64, v41);
        v50 = v82;
        *v82 = v40;
        *(v50 + 1) = v62;
        *(v50 + 2) = v63;
        v39 = v79;
        break;
    }

    swift_storeEnumTagMultiPayload();
    sub_261FCF2C4(v50, v39, type metadata accessor for TunnelMessage);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v83);
}

unint64_t sub_261FCF0A8()
{
  result = qword_28108CA40;
  if (!qword_28108CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA40);
  }

  return result;
}

unint64_t sub_261FCF0FC()
{
  result = qword_28108CA48;
  if (!qword_28108CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA48);
  }

  return result;
}

unint64_t sub_261FCF150()
{
  result = qword_28108BA68;
  if (!qword_28108BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108BA68);
  }

  return result;
}

uint64_t sub_261FCF1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FCF214(uint64_t a1)
{
  v2 = type metadata accessor for TunnelInterfaceParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_261FCF270()
{
  result = qword_28108CB78;
  if (!qword_28108CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CB78);
  }

  return result;
}

uint64_t sub_261FCF2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t TunnelMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_6_1(v57);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  v59 = &v57 - v8;
  OUTLINED_FUNCTION_9_5();
  v9 = sub_262039ACC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v61 = v11;
  v62 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v63 = v15 - v14;
  OUTLINED_FUNCTION_9_5();
  v58 = type metadata accessor for TunnelInterfaceParameters();
  v16 = OUTLINED_FUNCTION_6_1(v58);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74();
  v60 = v20 - v19;
  OUTLINED_FUNCTION_9_5();
  v21 = type metadata accessor for TunnelMessage();
  v22 = OUTLINED_FUNCTION_6_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_74();
  v27 = (v26 - v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E18, &qword_262041930);
  OUTLINED_FUNCTION_0(v28);
  v64 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v32);
  v34 = &v57 - v33;
  v35 = a1[4];
  v36 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCF0A8();
  sub_26203AE5C();
  sub_261FCF8D4(v3, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
      v36 = v44[12];
      LODWORD(v59) = *(v27 + v44[16]);
      v45 = *(v27 + v44[20]);
      OUTLINED_FUNCTION_6_9();
      v46 = v60;
      sub_261FCF2C4(v27, v60, v47);
      v48 = v61;
      v49 = v36 + v27;
      v50 = v62;
      v51 = v63;
      (*(v61 + 32))(v63, v49, v62);
      LOBYTE(v65) = 1;
      v66 = 0;
      sub_261FCF938();
      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_20_5();
      if (v2)
      {
        (*(v48 + 8))(v51, v50);
      }

      else
      {
        LOBYTE(v65) = 2;
        OUTLINED_FUNCTION_5_7();
        sub_261FCFAFC(v52, v53);
        sub_26203AB3C();
        LOBYTE(v65) = 3;
        OUTLINED_FUNCTION_0_16();
        sub_261FCFAFC(v54, v55);
        v56 = v63;
        sub_26203AB3C();
        OUTLINED_FUNCTION_12_3(4);
        v65 = v45;
        OUTLINED_FUNCTION_17_4();
        sub_261FCFB44();
        OUTLINED_FUNCTION_1_14();
        sub_26203AB3C();
        (*(v48 + 8))(v56, v50);
      }

      sub_261FCF214(v46);
      return (*(v64 + 8))(v36, v28);
    case 2u:
      v40 = *v27;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920);
      v42 = v59;
      sub_261FCF1A4(v27 + *(v41 + 48), v59);
      LOBYTE(v65) = 2;
      v66 = 0;
      sub_261FCF938();
      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_20_5();
      if (!v2)
      {
        v65 = v40;
        OUTLINED_FUNCTION_18_4();
        sub_261FCF9F4();
        OUTLINED_FUNCTION_1_14();
        sub_26203AB3C();
        LOBYTE(v65) = 3;
        sub_261FCFA48();
        sub_26203AB3C();
      }

      sub_261FCF98C(v42);
      return (*(v64 + 8))(v36, v28);
    case 3u:
      LOBYTE(v65) = 3;
      v66 = 0;
      sub_261FCF938();
      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_20_5();
      return (*(v64 + 8))(v34, v28);
    default:
      v37 = *v27;
      v39 = v27[1];
      v38 = v27[2];
      LOBYTE(v65) = 0;
      v66 = 0;
      sub_261FCF938();
      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_20_5();
      if (!v2)
      {
        OUTLINED_FUNCTION_12_3(1);
        v65 = v39;
        OUTLINED_FUNCTION_18_4();
        sub_261FCF9F4();
        OUTLINED_FUNCTION_1_14();
        sub_26203AB3C();
        v65 = v38;
        OUTLINED_FUNCTION_17_4();
        sub_261FCFB44();
        OUTLINED_FUNCTION_1_14();
        sub_26203AB3C();
      }

      return (*(v64 + 8))(v36, v28);
  }
}

uint64_t sub_261FCF8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TunnelMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261FCF938()
{
  result = qword_28108CA58;
  if (!qword_28108CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA58);
  }

  return result;
}

uint64_t sub_261FCF98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_261FCF9F4()
{
  result = qword_27FEF9E20;
  if (!qword_27FEF9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E20);
  }

  return result;
}

unint64_t sub_261FCFA48()
{
  result = qword_27FEF9E28;
  if (!qword_27FEF9E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEFA270, &qword_262041910);
    sub_261FCFAFC(&qword_28108B398, MEMORY[0x277CD8C88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E28);
  }

  return result;
}

uint64_t sub_261FCFAFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261FCFB44()
{
  result = qword_28108CB88;
  if (!qword_28108CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CB88);
  }

  return result;
}

unint64_t sub_261FCFB9C()
{
  result = qword_28108CB80;
  if (!qword_28108CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CB80);
  }

  return result;
}

unint64_t sub_261FCFBF4()
{
  result = qword_27FEF9E30;
  if (!qword_27FEF9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E30);
  }

  return result;
}

unint64_t sub_261FCFC4C()
{
  result = qword_27FEF9E38;
  if (!qword_27FEF9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E38);
  }

  return result;
}

unint64_t sub_261FCFCA4()
{
  result = qword_27FEF9E40;
  if (!qword_27FEF9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E40);
  }

  return result;
}

void sub_261FCFD38()
{
  sub_261FCFDC0();
  if (v0 <= 0x3F)
  {
    sub_261FCFE2C();
    if (v1 <= 0x3F)
    {
      sub_261FCFF40();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_261FCFDC0()
{
  if (!qword_28108B248)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28108B248);
    }
  }
}

void sub_261FCFE2C()
{
  if (!qword_28108B930)
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for TunnelInterfaceParameters();
    sub_262039ACC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28108B930);
    }
  }
}

void sub_261FCFF40()
{
  if (!qword_28108BA78[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEFA270, &qword_262041910);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_28108BA78);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TunnelMessage.MessageType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TunnelMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_261FD0174()
{
  result = qword_27FEF9E48;
  if (!qword_27FEF9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E48);
  }

  return result;
}

unint64_t sub_261FD01CC()
{
  result = qword_27FEF9E50;
  if (!qword_27FEF9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E50);
  }

  return result;
}

unint64_t sub_261FD0224()
{
  result = qword_28108CA30;
  if (!qword_28108CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA30);
  }

  return result;
}

unint64_t sub_261FD027C()
{
  result = qword_28108CA38;
  if (!qword_28108CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA38);
  }

  return result;
}

unint64_t sub_261FD02D0()
{
  result = qword_28108CA50;
  if (!qword_28108CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA50);
  }

  return result;
}

unint64_t sub_261FD0404()
{
  result = qword_27FEF9E58;
  if (!qword_27FEF9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E58);
  }

  return result;
}

unint64_t sub_261FD045C()
{
  result = qword_27FEF9E60;
  if (!qword_27FEF9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9E60);
  }

  return result;
}

unint64_t sub_261FD04BC()
{
  result = qword_28108C658;
  if (!qword_28108C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C658);
  }

  return result;
}

unint64_t sub_261FD0514()
{
  result = qword_28108C650;
  if (!qword_28108C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C650);
  }

  return result;
}

uint64_t sub_261FD056C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = BonjourAdvertFlags.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261FD05AC@<X0>(uint64_t *a1@<X8>)
{
  result = BonjourAdvertFlags.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkPairingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_261FD0690(void (*a1)(_BYTE *))
{
  v4 = _s5StateVMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[2];
  os_unfair_lock_lock(v8);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_261FD36BC(v1 + v9, v7, _s5StateVMa);
  a1(v7);
  if (v2)
  {
    sub_261FD3774(v7, _s5StateVMa);
  }

  else
  {
    swift_beginAccess();
    sub_261FC3EF0(v7, v1 + v9);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v8);
}

uint64_t sub_261FD07E0()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEF9E68 = result;
  return result;
}

uint64_t RPPairableHost.name.getter()
{
  v4 = type metadata accessor for PairableHostInfo(0);
  v5 = OUTLINED_FUNCTION_10_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_11();
  v8 = _s5StateVMa();
  v9 = OUTLINED_FUNCTION_7_6(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___RPPairableHost__state);
  v12 = *(v2 + 28);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_13_5(v13, v14);
  OUTLINED_FUNCTION_1_15();
  sub_261FD3774(v3, v15);
  v16 = (v1 + *(v0 + 28));
  v17 = *v16;
  v18 = v16[1];

  OUTLINED_FUNCTION_0_17();
  sub_261FD3774(v1, v19);
  return OUTLINED_FUNCTION_47();
}

uint64_t _s5StateVMa()
{
  result = qword_27FEF9E88;
  if (!qword_27FEF9E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RPPairableHost.model.getter()
{
  v4 = type metadata accessor for PairableHostInfo(0);
  v5 = OUTLINED_FUNCTION_10_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_11();
  v8 = _s5StateVMa();
  v9 = OUTLINED_FUNCTION_7_6(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___RPPairableHost__state);
  v12 = *(v2 + 28);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_13_5(v13, v14);
  OUTLINED_FUNCTION_1_15();
  sub_261FD3774(v3, v15);
  v16 = (v1 + *(v0 + 32));
  v17 = *v16;
  v18 = v16[1];

  OUTLINED_FUNCTION_0_17();
  sub_261FD3774(v1, v19);
  return OUTLINED_FUNCTION_47();
}

uint64_t RPPairableHost.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = type metadata accessor for PairableHostInfo(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_3_11();
  v7 = _s5StateVMa();
  v8 = OUTLINED_FUNCTION_7_6(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___RPPairableHost__state);
  v11 = *(v2 + 28);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_13_5(v12, v13);
  OUTLINED_FUNCTION_1_15();
  sub_261FD3774(v3, v14);
  v15 = sub_26203965C();
  OUTLINED_FUNCTION_6_1(v15);
  (*(v16 + 16))(a1, v1);
  OUTLINED_FUNCTION_0_17();
  return sub_261FD3774(v1, v17);
}

uint64_t RPPairableHost.available.getter()
{
  v2 = type metadata accessor for PairableHostInfo(0);
  v3 = OUTLINED_FUNCTION_6_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_11();
  v6 = _s5StateVMa();
  v7 = OUTLINED_FUNCTION_6_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v12 = v11 - v10;
  v13 = *(v0 + OBJC_IVAR___RPPairableHost__state);
  sub_261FA0588(v11 - v10);
  if (*(v12 + *(v6 + 24)) == 1)
  {
    OUTLINED_FUNCTION_1_15();
    sub_261FD3774(v12, v14);
    return 0;
  }

  else
  {
    v16 = *(v6 + 20);
    OUTLINED_FUNCTION_2_11();
    sub_261FD36BC(v12 + v17, v1, v18);
    OUTLINED_FUNCTION_1_15();
    sub_261FD3774(v12, v19);
    v15 = *(v1 + *(v2 + 28));
    OUTLINED_FUNCTION_0_17();
    sub_261FD3774(v1, v20);
  }

  return v15;
}

uint64_t RPPairableHost.paired.getter()
{
  v4 = type metadata accessor for PairableHostInfo(0);
  v5 = OUTLINED_FUNCTION_10_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_11();
  v8 = _s5StateVMa();
  v9 = OUTLINED_FUNCTION_7_6(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___RPPairableHost__state);
  v12 = *(v2 + 28);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_13_5(v13, v14);
  OUTLINED_FUNCTION_1_15();
  sub_261FD3774(v3, v15);
  v16 = *(v1 + *(v0 + 40));
  OUTLINED_FUNCTION_0_17();
  sub_261FD3774(v1, v17);
  return v16;
}

char *sub_261FD0F7C(uint64_t a1)
{
  v3 = v1;
  v5 = _s5StateVMa();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_11();
  v8 = v6[7];
  OUTLINED_FUNCTION_2_11();
  v24 = a1;
  sub_261FD36BC(a1, v2 + v9, v10);
  *v2 = 0;
  v2[1] = 0;
  *(v2 + v6[8]) = 0;
  *(v2 + v6[9]) = MEMORY[0x277D84F90];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EA8, &qword_262042068);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v3[OBJC_IVAR___RPPairableHost__state] = sub_261FA0984(v2);
  v14 = a1 + *(type metadata accessor for PairableHostInfo(0) + 40);
  WirelessB14SessionRequestV8endpointSo13OS_xpc_object_pvg_0 = _s19RemotePairingDevice014CreateWirelessB14SessionRequestV8endpointSo13OS_xpc_object_pvg_0();
  xpc_connection_create_from_endpoint(WirelessB14SessionRequestV8endpointSo13OS_xpc_object_pvg_0);
  swift_unknownObjectRelease();
  sub_26203990C();
  sub_2620398BC();
  *&v3[OBJC_IVAR___RPPairableHost__serviceConnection] = swift_dynamicCastClassUnconditional();
  v25.receiver = v3;
  v25.super_class = RPPairableHost;
  v16 = objc_msgSendSuper2(&v25, sel_init);
  v17 = OBJC_IVAR___RPPairableHost__serviceConnection;
  v18 = *&v16[OBJC_IVAR___RPPairableHost__serviceConnection];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DeviceServiceEvent(0);
  sub_261FD38E0(&qword_27FEF9EB0, type metadata accessor for DeviceServiceEvent);
  sub_261FD38E0(&qword_27FEF9EB8, type metadata accessor for DeviceServiceEvent);
  v19 = v16;

  sub_26203984C();

  v20 = *&v16[v17];

  sub_26203975C();

  v21 = *&v16[v17];

  sub_261F93C68();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_17();
  sub_261FD3774(v24, v22);
  return v19;
}

void sub_261FD1244(uint64_t a1)
{
  v2 = sub_26203965C();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PairableHostInfo(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceServiceEvent(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EC0, &unk_262042070);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v41 - v19);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    sub_261F7B428(a1, v20, &qword_27FEF9EC0, &unk_262042070);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v20;
      v24 = sub_26203A48C();
      if (qword_27FEF8630 != -1)
      {
        swift_once();
      }

      v25 = qword_27FEF9E68;
      if (os_log_type_enabled(qword_27FEF9E68, v24))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v43[0] = v27;
        *v26 = 136446466;
        v28 = [v22 identifier];
        sub_26203963C();

        sub_261FD38E0(&qword_28108CF40, MEMORY[0x277CC95F0]);
        v29 = sub_26203ABAC();
        v31 = v30;
        (*(v42 + 8))(v5, v2);
        v32 = sub_261F67FE4(v29, v31, v43);

        *(v26 + 4) = v32;
        *(v26 + 12) = 2082;
        v45 = v23;
        v33 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v34 = sub_26203A20C();
        v36 = sub_261F67FE4(v34, v35, v43);

        *(v26 + 14) = v36;
        _os_log_impl(&dword_261F5B000, v25, v24, "Received XPC error for host %{public}s: %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v27, -1, -1);
        MEMORY[0x266724180](v26, -1, -1);
      }

      v37 = *&v22[OBJC_IVAR___RPPairableHost__state];

      sub_261FC3288(v38);
    }

    else
    {
      sub_261FD3718(v20, v16, type metadata accessor for DeviceServiceEvent);
      sub_261FD36BC(v16, v14, type metadata accessor for DeviceServiceEvent);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = *(v14 + 1);
        v40 = v14[16];
        LOBYTE(v43[0]) = *v14;
        v43[1] = v39;
        v44 = v40;
        sub_261FD1758(v43);
      }

      else
      {
        sub_261FD3718(v14, v9, type metadata accessor for PairableHostInfo);
        sub_261FD1A64();

        sub_261FD3774(v9, type metadata accessor for PairableHostInfo);
      }

      sub_261FD3774(v16, type metadata accessor for DeviceServiceEvent);
    }
  }
}

uint64_t sub_261FD1758(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_26203965C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = _s5StateVMa();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *a1;
  v26 = *(a1 + 1);
  v25 = a1[16];
  v15 = *&v2[OBJC_IVAR___RPPairableHost__state];
  sub_261FA0588(v14);
  v16 = *v14;
  v17 = v14[1];
  sub_261F7D45C(*v14);
  result = sub_261FD3774(v14, _s5StateVMa);
  if (v16)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = [v2 identifier];
    sub_26203963C();

    (*(v5 + 16))(v8, v10, v4);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = swift_allocObject();
    (*(v5 + 32))(v22 + v21, v8, v4);
    *(v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
    type metadata accessor for PairingChallenge();
    swift_allocObject();

    v23 = PairingChallenge.init(lastAttemptIncorrect:throttledBy:handlingPINWith:handlingCancellationWith:)(v27, v26, v25, sub_261FD37CC, v24, sub_261FD37D4, v22);
    (*(v5 + 8))(v10, v4);

    v16(v23);

    return sub_261F665E4(v16);
  }

  return result;
}

uint64_t RPPairableHost.registerChangeHandler(on:handler:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    if (qword_27FEF8718 != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = qword_27FEFAA30;
  }

  OUTLINED_FUNCTION_107();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v9 = *(v3 + OBJC_IVAR___RPPairableHost__state);

  v10 = a1;

  v11 = v7;
  sub_261FC33C4(v9, sub_261FD3470, v8);
  sub_261FD1BC8(v11, a2, a3);
}

uint64_t sub_261FD1BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_262039FAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_262039FEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_261FBD060;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_51;
  v16 = _Block_copy(aBlock);

  sub_262039FCC();
  v18[1] = MEMORY[0x277D84F90];
  sub_261FD38E0(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v14, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void RPPairableHost.pair(invokingHandlersOn:handlingPairingChallengesUsing:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = _s5StateVMa();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_74();
  v15 = (v14 - v13);
  if (a1)
  {
    v16 = a1;
  }

  else
  {
    if (qword_27FEF8718 != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v16 = qword_27FEFAA30;
  }

  OUTLINED_FUNCTION_107();
  v17 = swift_allocObject();
  *(v17 + 2) = v16;
  *(v17 + 3) = a2;
  *(v17 + 4) = a3;
  OUTLINED_FUNCTION_107();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a4;
  v18[4] = a5;
  v31 = v5;
  v19 = *&v5[OBJC_IVAR___RPPairableHost__state];
  v20 = v19[2];
  v21 = v16;
  swift_retain_n();
  v22 = v21;

  v23 = a1;
  v24 = v22;
  os_unfair_lock_lock(v20);
  v25 = *(*v19 + 96);
  swift_beginAccess();
  sub_261FD36BC(v19 + v25, v15, _s5StateVMa);
  if (*v15)
  {
    sub_261F9D610();
    v26 = swift_allocError();
    sub_261F9BCE0();
    sub_26203AD3C();
    sub_261FD2504(v26, v24, a4, a5);
  }

  else
  {
    *v15 = sub_261FD347C;
    v15[1] = v17;
  }

  swift_beginAccess();
  sub_261FC3EF0(v15, v19 + v25);
  swift_endAccess();
  os_unfair_lock_unlock(v20);

  v27 = *&v31[OBJC_IVAR___RPPairableHost__serviceConnection];
  OUTLINED_FUNCTION_107();
  v28 = swift_allocObject();
  v28[2] = v31;
  v28[3] = sub_261FD3488;
  v28[4] = v18;
  v29 = v24;

  v30 = v31;
  sub_261F93D60();
}

uint64_t sub_261FD2250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_262039FEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  aBlock[4] = sub_261FD3974;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_45;
  v18 = _Block_copy(aBlock);

  sub_262039FCC();
  v20[1] = MEMORY[0x277D84F90];
  sub_261FD38E0(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_261FD2504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_262039FEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  aBlock[4] = sub_261F9B62C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  sub_262039FCC();
  v21[1] = MEMORY[0x277D84F90];
  sub_261FD38E0(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void sub_261FD27B8(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v24 = a4;
  v25 = a3;
  v6 = type metadata accessor for PairableHostInfo(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EC8, &qword_262042080);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = _s5StateVMa();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a2 + OBJC_IVAR___RPPairableHost__state);
  v19 = v18[2];
  os_unfair_lock_lock(v19);
  v20 = *(*v18 + 96);
  swift_beginAccess();
  sub_261FD36BC(v18 + v20, v17, _s5StateVMa);
  v21 = v17[1];
  sub_261F665E4(*v17);
  *v17 = 0;
  v17[1] = 0;
  swift_beginAccess();
  sub_261FC3EF0(v17, v18 + v20);
  swift_endAccess();
  os_unfair_lock_unlock(v19);
  sub_261F7B428(a1, v13, &qword_27FEF9EC8, &qword_262042080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v13;
    v23 = *v13;
    v25(v22);
  }

  else
  {
    sub_261FD3718(v13, v9, type metadata accessor for PairableHostInfo);
    sub_261FD1A64();
    v25(0);
    sub_261FD3774(v9, type metadata accessor for PairableHostInfo);
  }
}

uint64_t RPPairableHost.pair(invokingHandlersOn:handlingPairingChallengesUsing:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;

  RPPairableHost.pair(invokingHandlersOn:handlingPairingChallengesUsing:completionHandler:)(a1, sub_261FD34DC, v10, sub_261FD34E4, v11);
}

void sub_261FD2B18(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = objc_allocWithZone(RPPairingChallenge);
  *&v4[OBJC_IVAR___RPPairingChallenge__underlyingValue] = a1;
  v7.receiver = v4;
  v7.super_class = RPPairingChallenge;

  v5 = objc_msgSendSuper2(&v7, sel_init);
  a2(v5, v6);
}

void sub_261FD2CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26203965C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = sub_26203A47C();
  if (qword_27FEF8630 != -1)
  {
    swift_once();
  }

  v13 = qword_27FEF9E68;
  v14 = v5[2];
  v14(v11, a1, v4);
  v15 = os_log_type_enabled(v13, v12);
  v16 = v12;
  v17 = &off_26203C000;
  v47 = v5;
  if (v15)
  {
    v44 = v16;
    v18 = swift_slowAlloc();
    v46 = v9;
    v19 = v18;
    v43 = swift_slowAlloc();
    v49 = v43;
    *v19 = 136315138;
    sub_261FD38E0(&qword_28108CF40, MEMORY[0x277CC95F0]);
    v20 = v14;
    v21 = a1;
    v22 = sub_26203ABAC();
    v45 = a2;
    v23 = v13;
    v25 = v24;
    v26 = v5[1];
    v26(v11, v4);
    v27 = v22;
    a1 = v21;
    v14 = v20;
    v28 = sub_261F67FE4(v27, v25, &v49);
    v13 = v23;
    v17 = &off_26203C000;

    *(v19 + 4) = v28;
    _os_log_impl(&dword_261F5B000, v23, v44, "Handling pairing challenge request for pairable host %s", v19, 0xCu);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x266724180](v29, -1, -1);
    v30 = v19;
    v9 = v46;
    MEMORY[0x266724180](v30, -1, -1);
  }

  else
  {
    v26 = v5[1];
    v26(v11, v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v33 = *(Strong + OBJC_IVAR___RPPairableHost__serviceConnection);
    sub_261F93FF4();
  }

  else
  {
    v34 = sub_26203A47C();
    v14(v9, a1, v4);
    if (os_log_type_enabled(v13, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = *(v17 + 112);
      sub_261FD38E0(&qword_28108CF40, MEMORY[0x277CC95F0]);
      v37 = sub_26203ABAC();
      v38 = v13;
      v40 = v39;
      v26(v9, v4);
      v41 = sub_261F67FE4(v37, v40, &v48);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_261F5B000, v38, v34, "Ignoring pairing challenge cancellation request for pairable host %s because associated host object has been deallocated", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x266724180](v36, -1, -1);
      MEMORY[0x266724180](v35, -1, -1);
    }

    else
    {
      v26(v9, v4);
    }
  }
}

void sub_261FD3154(uint64_t a1, const char *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    v4 = *a1;
    v5 = sub_26203A48C();
    if (qword_27FEF8630 != -1)
    {
      swift_once();
    }

    v6 = qword_27FEF9E68;
    if (os_log_type_enabled(qword_27FEF9E68, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v10 = sub_26203A20C();
      v12 = sub_261F67FE4(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_261F5B000, v6, v5, a2, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x266724180](v8, -1, -1);
      MEMORY[0x266724180](v7, -1, -1);
      sub_261F98F1C(v3, 1);
    }

    else
    {

      sub_261F98F1C(v3, 1);
    }
  }
}

uint64_t sub_261FD32F8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa();
  v5 = a1 + *(v4 + 20);
  result = type metadata accessor for PairableHostInfo(0);
  if (*(v5 + *(result + 36)) < *(a2 + *(result + 36)))
  {
    result = sub_261FD387C(a2, v5);
    v7 = *(a1 + *(v4 + 28));
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = (v7 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;

        v11(v12);

        v9 += 2;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void __swiftcall RPPairableHost.init()(RPPairableHost *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261FD34E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_261FD3548()
{
  sub_261FD3624(319, &qword_27FEF9E98, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PairableHostInfo(319);
    if (v1 <= 0x3F)
    {
      sub_261FD3624(319, &qword_27FEF9EA0, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_261FD3624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9648, &qword_26203E620);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_261FD36BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_47();
  v8(v7);
  return a2;
}

uint64_t sub_261FD3718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_47();
  v8(v7);
  return a2;
}

uint64_t sub_261FD3774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_261FD37D4()
{
  v1 = *(sub_26203965C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_261FD2CDC(v0 + v2, v3);
}

uint64_t sub_261FD387C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairableHostInfo(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FD38E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_38Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t Identifier.description.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = (*(*(a1 + 24) + 16))(*(a1 + 16));
  MEMORY[0x266722710](95, 0xE100000000000000);
  MEMORY[0x266722710](v2, v3);
  return v5;
}

uint64_t Identifier.init()@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = (*(a1 + 8))();
  v6 = v4 < 1;
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = v4;
    v2 = sub_26203A3FC();
    *(v2 + 16) = v7;
    v10[1] = v7;
    v11 = 0;
    v10[0] = v2 + 32;
    sub_261FD3B40(v10, &v11, v7);
    v5 = v11;
    v6 = v7 < v11;
    if (v7 >= v11)
    {
      *(v2 + 16) = v11;
      v10[0] = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AB0, &qword_262040300);
      sub_261FD3D58();
      result = sub_26203A2EC();
      *a2 = result;
      a2[1] = v9;
      return result;
    }
  }

  __break(1u);
  if (v6)
  {
    __break(1u);
  }

  *(v2 + 16) = v5;

  __break(1u);
  return result;
}

uint64_t sub_261FD3B40(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 < a3)
  {
    if (("Only host should send handshake" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v6 = result;
      while (1)
      {
        v7 = sub_26203A24C();
        if (v7 < 0)
        {
          break;
        }

        v8 = v7;
        if (!v7)
        {
          goto LABEL_13;
        }

        v15 = 0;
        MEMORY[0x2667241A0](&v15, 8);
        if (v8 > v15 * v8)
        {
          v9 = -v8 % v8;
          while (v9 > v15 * v8)
          {
            v15 = 0;
            MEMORY[0x2667241A0](&v15, 8);
          }
        }

        sub_26203A25C();
        v10 = sub_26203A2DC();
        v12 = v11;

        v13 = (*v6 + 16 * v3);
        *v13 = v10;
        v13[1] = v12;
        if (++v3 >= a3)
        {
          *a2 = a3;
          return result;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    v15 = 0;
    v16 = 0xE000000000000000;
    sub_26203A7CC();

    v15 = 0x206E6920677542;
    v16 = 0xE700000000000000;
    type metadata accessor for Identifier();
    v14 = sub_26203AE8C();
    MEMORY[0x266722710](v14);

    MEMORY[0x266722710](0xD000000000000013, 0x80000002620502E0);
    result = sub_26203A91C();
    __break(1u);
  }

  return result;
}

unint64_t sub_261FD3D58()
{
  result = qword_28108B328;
  if (!qword_28108B328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEF9AB0, &qword_262040300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B328);
  }

  return result;
}

uint64_t Identifier.init(value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static Identifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26203AC0C();
  }
}

uint64_t sub_261FD3DF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261FD3E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_261F8E774();
}

uint64_t sub_261FD3E84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_261F90624();
}

uint64_t sub_261FD3E90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_261F81D98();
}

uint64_t sub_261FD3E9C(uint64_t a1, uint64_t a2)
{
  sub_26203ADDC();
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_261F81D98();
  return sub_26203AE0C();
}

uint64_t sub_261FD3EE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_261FD3E68();
}

uint64_t sub_261FD3EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_261FD3DF4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_261FD3F20(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_261F8DBA8();
}

uint64_t sub_261FD3F44@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_261F8E774();
  *a2 = result & 1;
  return result;
}

uint64_t sub_261FD3F78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_261FD3FCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Identifier.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for Identifier.CodingKeys();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v6 = sub_26203AB8C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v17 - v12;
  v14 = v2[1];
  v17[1] = *v2;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26203AE5C();
  sub_26203AAFC();
  return (*(v9 + 8))(v13, v6);
}

uint64_t Identifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26203A23C();
}

uint64_t Identifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26203ADDC();
  sub_26203A23C();
  return sub_26203AE0C();
}

uint64_t Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  type metadata accessor for Identifier.CodingKeys();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v4 = sub_26203AA8C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26203AE3C();
  if (!v2)
  {
    v13 = v19;
    v14 = sub_26203A9EC();
    v16 = v15;
    (*(v7 + 8))(v11, v4);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_261FD436C()
{
  sub_26203ADDC();
  Identifier.hash(into:)();
  return sub_26203AE0C();
}

uint64_t sub_261FD43CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return Identifier.init(from:)(a1, a3);
}

uint64_t sub_261FD442C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_261FD4488(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_261FD4578(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 >= a1)
      {
        v4 = a1;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
LABEL_6:
      result = sub_261FD4E14(v4);
      break;
    case 3uLL:
      return result;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t sub_261FD460C(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = 1;
  v6 = 0;
  switch(v3)
  {
    case 1uLL:
      v7 = a1;
      v8 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
LABEL_6:
      if (v7 != v8)
      {
        goto LABEL_8;
      }

      v6 = 0;
      v4 = 1;
      break;
    case 3uLL:
      return v6 | (v4 << 8);
    default:
      if ((a2 & 0xFF000000000000) != 0)
      {
LABEL_8:
        v6 = sub_26203950C();
        v4 = 0;
      }

      else
      {
        v6 = 0;
      }

      break;
  }

  return v6 | (v4 << 8);
}

uint64_t sub_261FD46AC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v4 = type metadata accessor for TunnelMessage();
  v5 = v4;
  if (v3)
  {
    sub_261FCF8D4(v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v1);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v6, 1, v5);
}

uint64_t sub_261FD475C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_19(a1);
  v6 = v5(v4);
  v7 = v6;
  if (v3)
  {
    OUTLINED_FUNCTION_71(v6);
    (*(v8 + 16))(v1, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v9, 1, v7);
}

double sub_261FD47F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_261FA5688(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t IPv6Address.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  OUTLINED_FUNCTION_2_12();
  sub_26203AE2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0Tm(v19, v19[3]);
    OUTLINED_FUNCTION_2_12();
    v10 = sub_26203AC1C();
    v12 = v11;

    sub_262039AEC();
    v13 = sub_262039ACC();
    if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
    {
      sub_261F8C2C8(v8, &qword_27FEFA270, &qword_262041910);
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_26203A7CC();

      v17 = 0xD000000000000016;
      v18 = 0x8000000262050300;
      MEMORY[0x266722710](v10, v12);

      sub_26203A81C();
      swift_allocError();
      sub_26203A7FC();

      swift_willThrow();
    }

    else
    {

      OUTLINED_FUNCTION_71(v13);
      (*(v14 + 32))(a2, v8, v13);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t IPv6Address.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_262039ACC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_26203AE4C();
  (*(v5 + 16))(v8, v2, v4);
  sub_26203A20C();
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_26203AC3C();

  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

void __swiftcall IPv6Address.copy_sockaddr_in6()(sockaddr_in6 *__return_ptr retstr)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = sub_262039AAC();
  v7 = v6;
  sub_261FD4578(v5, v6);
  sub_261F6BFFC(v5, v7);
  sub_262039ABC();
  v8 = sub_262039B3C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_261F8C2C8(v4, &unk_27FEF9B60, &unk_262040530);
    return;
  }

  v9 = sub_262039B2C();
  OUTLINED_FUNCTION_71(v8);
  (*(v10 + 8))(v4, v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v9))
  {
LABEL_7:
    __break(1u);
  }
}

BOOL IPv6Address.isUniqueLocalAddress.getter()
{
  v0 = sub_262039AAC();
  v2 = v0;
  v3 = v1;
  switch(v1 >> 62)
  {
    case 1uLL:
      v0 = v0;
      v4 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v0 = *(v0 + 16);
      v4 = *(v2 + 24);
LABEL_6:
      if (v0 == v4)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_7;
    default:
      if ((v1 & 0xFF000000000000) != 0)
      {
LABEL_8:
        v6 = sub_26203950C();
        sub_261F6BFFC(v2, v3);
        return v6 == 253;
      }

      else
      {
LABEL_7:
        sub_261F6BFFC(v2, v1);
        return 0;
      }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_261FD4E14(uint64_t a1)
{
  v2 = sub_26203937C();
  if (v2)
  {
    v3 = v2;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  result = sub_26203939C();
  if (v5)
  {
    result = *v5;
    v6 = v5[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t IPv4Header.sourceAddress.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_47();
  sub_261F6B73C(v3, v4);
  return OUTLINED_FUNCTION_47();
}

uint64_t IPv4Header.sourceAddress.setter(uint64_t a1, uint64_t a2)
{
  result = sub_261F6BFFC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t IPv4Header.destinationAddress.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = OUTLINED_FUNCTION_47();
  sub_261F6B73C(v3, v4);
  return OUTLINED_FUNCTION_47();
}

uint64_t IPv4Header.destinationAddress.setter(uint64_t a1, uint64_t a2)
{
  result = sub_261F6BFFC(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void IPv4Header.init(_:)()
{
  OUTLINED_FUNCTION_13_6();
  if (v3 < 20)
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_4_8();

    v4 = OUTLINED_FUNCTION_1_1();
    MEMORY[0x266721A20](v4);
    v5 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x266722710](v5);

    OUTLINED_FUNCTION_2_13();
    v6 = OUTLINED_FUNCTION_3_12();
    MEMORY[0x266722710](v6);

    OUTLINED_FUNCTION_5_8();
    sub_261F9D610();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_0_0();
LABEL_6:
    sub_26203AD4C();
    swift_willThrow();
    v8 = OUTLINED_FUNCTION_1_1();
    sub_261F6BFFC(v8, v9);
    return;
  }

  v7 = sub_26203950C();
  if ((v7 & 0xF0) != 0x40 || 4 * (v7 & 0x3Fu) < 0x14)
  {
LABEL_5:
    sub_261F9BCE0();
    sub_26203ACEC();
    sub_261F9D610();
    OUTLINED_FUNCTION_6();
    goto LABEL_6;
  }

  v10 = 4 * (v7 & 0x3F);
  OUTLINED_FUNCTION_11_5();
  switch(v14)
  {
    case 1:
      v12 = v13;
      break;
    case 2:
      v12 = *(v2 + 16);
      break;
    default:
      break;
  }

  v15 = __OFADD__(v12, 2);
  v16 = v12 + 2;
  if (v15)
  {
    __break(1u);
    goto LABEL_33;
  }

  v17 = v16 + 2;
  if (__OFADD__(v16, 2))
  {
LABEL_33:
    __break(1u);
    return;
  }

  switch(v11)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v13 = *(v2 + 16);
LABEL_16:
      if (v16 < v13)
      {
        goto LABEL_5;
      }

      if (v11 == 2)
      {
        v18 = *(v2 + 24);
      }

      else
      {
        v18 = v2 >> 32;
      }

LABEL_26:
      if (v16 >= v17 || v18 < v17)
      {
        goto LABEL_5;
      }

LABEL_30:
      v21 = OUTLINED_FUNCTION_1_1();
      v23 = sub_261F6BE04(v21, v22, 2);
      if (v23 < v10)
      {
        goto LABEL_5;
      }

      v33 = v23 - v10;
      v32 = sub_26203950C();
      v24 = OUTLINED_FUNCTION_16_6();
      v26 = v25;
      v27 = OUTLINED_FUNCTION_16_6();
      v29 = v28;
      v30 = OUTLINED_FUNCTION_1_1();
      sub_261F6BFFC(v30, v31);
      *v1 = v10;
      *(v1 + 8) = v33;
      *(v1 + 16) = v32;
      *(v1 + 24) = v24;
      *(v1 + 32) = v26;
      *(v1 + 40) = v27;
      *(v1 + 48) = v29;
      break;
    case 3:
      if (v16 < 0)
      {
        goto LABEL_5;
      }

      if (v17 > 0 || __OFSUB__(v16, v17))
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    default:
      if (v16 < 0)
      {
        goto LABEL_5;
      }

      v18 = BYTE6(v0);
      goto LABEL_26;
  }
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

uint64_t sub_261FD54F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 56))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 32) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 32) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_261FD5540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_26203A7CC();
}

void OUTLINED_FUNCTION_5_8()
{

  JUMPOUT(0x266722710);
}

uint64_t static Data.randomBytes(ofLength:)(size_t a1)
{
  v4[0] = MEMORY[0x266721A10]();
  v4[1] = v2;
  if (!sub_261FD6238(v4, a1))
  {
    return v4[0];
  }

  result = sub_26203A91C();
  __break(1u);
  return result;
}

uint64_t Data.parseBE<A>(_:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4 >> 62;
  v9 = 0;
  v10 = a3;
  switch(a4 >> 62)
  {
    case 1uLL:
      v9 = a3;
      break;
    case 2uLL:
      v9 = *(a3 + 16);
      break;
    default:
      break;
  }

  v11 = __OFADD__(v9, a2);
  v12 = v9 + a2;
  if (v11)
  {
    __break(1u);
    goto LABEL_30;
  }

  v13 = *(*(a5 - 8) + 64);
  v11 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v11)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  switch(v7)
  {
    case 1:
      goto LABEL_10;
    case 2:
      v10 = *(a3 + 16);
LABEL_10:
      if (v12 < v10)
      {
        goto LABEL_26;
      }

      if (v7 == 2)
      {
        v15 = *(a3 + 24);
      }

      else
      {
        v15 = a3 >> 32;
      }

      break;
    case 3:
      if (v12 < 0)
      {
        goto LABEL_26;
      }

      if (v14 > 0 || v12 >= v14)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    default:
      if (v12 < 0)
      {
        goto LABEL_26;
      }

      v15 = BYTE6(a4);
      break;
  }

  if (v12 >= v14 || v15 < v14)
  {
LABEL_26:

    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a5);
  }

  else
  {
LABEL_19:
    MEMORY[0x28223BE20](result);
    sub_26203951C();
    return __swift_storeEnumTagSinglePayload(a6, 0, 1, a5);
  }
}

uint64_t sub_261FD5884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  sub_261FD593C(v7, v8, a4, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26203A8DC();
}

uint64_t sub_261FD593C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a2)
  {
    return sub_261FD5F40(result, a2, a3, a4);
  }

  __break(1u);
  return result;
}

double sub_261FD5950()
{
  *&result = 32;
  xmmword_27FEF9ED0 = xmmword_262042510;
  byte_27FEF9EE0 = 0;
  return result;
}

uint64_t Data.HexStringEncodingOptions.init(separator:uppercase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static Data.HexStringEncodingOptions.authTag.getter()
{
  if (qword_27FEF8638 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_20(&xmmword_27FEF9ED0);
}

double sub_261FD59E4()
{
  *&result = 58;
  xmmword_27FEF9EE8 = xmmword_262042520;
  byte_27FEF9EF8 = 1;
  return result;
}

uint64_t static Data.HexStringEncodingOptions.bluetoothAddress.getter()
{
  if (qword_27FEF8640 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_20(&xmmword_27FEF9EE8);
}

double sub_261FD5A70()
{
  *&result = 58;
  xmmword_27FEF9F00 = xmmword_262042520;
  byte_27FEF9F10 = 0;
  return result;
}

uint64_t static Data.HexStringEncodingOptions.macAddress.getter()
{
  if (qword_27FEF8648 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_20(&xmmword_27FEF9F00);
}

uint64_t Data.HexStringEncodingOptions.separator.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Data.hexEncodedString(options:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  *(a1 + 16);
  v5 = a3 >> 62;
  v7 = HIDWORD(a2);
  v8 = BYTE6(a3);
  switch(a3 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_45;
      }

      v9 = HIDWORD(a2) - a2;
LABEL_6:
      if (v9)
      {
        v42 = MEMORY[0x277D84F90];
        sub_261F959CC(0, v9 & ~(v9 >> 63), 0);
        v12 = a2;
        if (v5)
        {
          if (v5 == 2)
          {
            v13 = *(a2 + 16);
          }

          else
          {
            v13 = a2;
          }
        }

        else
        {
          v13 = 0;
        }

        if (v9 < 0)
        {
          goto LABEL_44;
        }

        v34 = v8;
        v14 = v42;
        v33 = v7;
        while (1)
        {
          if (v5 == 1)
          {
            if (v13 < a2 || v13 >= a2 >> 32)
            {
              goto LABEL_40;
            }

            v17 = sub_26203937C();
            if (!v17)
            {
              goto LABEL_47;
            }

            v18 = v17;
            v19 = sub_2620393AC();
            v20 = v13 - v19;
            if (__OFSUB__(v13, v19))
            {
              goto LABEL_42;
            }
          }

          else
          {
            if (!v5)
            {
              if (v13 >= v34)
              {
                goto LABEL_39;
              }

              LOBYTE(v36) = v12;
              *(&v36 + 1) = *(&a2 + 1);
              BYTE3(v36) = BYTE3(a2);
              BYTE4(v36) = v33;
              *(&v36 + 5) = *(&a2 + 5);
              HIBYTE(v36) = HIBYTE(a2);
              v37 = a3;
              v38 = BYTE2(a3);
              v39 = BYTE3(a3);
              v40 = BYTE4(a3);
              v41 = BYTE5(a3);
              v15 = *(&v36 + v13);
              goto LABEL_33;
            }

            if (v13 < *(v12 + 16))
            {
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
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
              __break(1u);
LABEL_48:
              __break(1u);
            }

            if (v13 >= *(v12 + 24))
            {
              goto LABEL_41;
            }

            v21 = sub_26203937C();
            if (!v21)
            {
              goto LABEL_48;
            }

            v18 = v21;
            v22 = sub_2620393AC();
            v20 = v13 - v22;
            if (__OFSUB__(v13, v22))
            {
              goto LABEL_43;
            }
          }

          v15 = *(v18 + v20);
          v12 = a2;
LABEL_33:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_26203E9E0;
          *(v23 + 56) = MEMORY[0x277D84B78];
          *(v23 + 64) = MEMORY[0x277D84BC0];
          *(v23 + 32) = v15;
          v24 = sub_26203A1DC();
          v26 = v25;
          v42 = v14;
          v28 = *(v14 + 16);
          v27 = *(v14 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_261F959CC(v27 > 1, v28 + 1, 1);
            v12 = a2;
            v14 = v42;
          }

          *(v14 + 16) = v28 + 1;
          v29 = v14 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
          ++v13;
          if (!--v9)
          {

            goto LABEL_37;
          }
        }
      }

LABEL_10:

      v14 = MEMORY[0x277D84F90];
LABEL_37:
      v36 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9990, &qword_26203F7D0);
      sub_261FD661C();
      v30 = sub_26203A13C();

      v31 = *MEMORY[0x277D85DE8];
      return v30;
    case 2uLL:
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    case 3uLL:
      goto LABEL_10;
    default:
      v9 = BYTE6(a3);
      goto LABEL_6;
  }
}

uint64_t sub_261FD5F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  isStackAllocationSafe = MEMORY[0x28223BE20](v10);
  v15 = &v21[-v14];
  v16 = *(v8 + 80);
  if (((v16 + 1) & v16) != 0)
  {
    __break(1u);
LABEL_9:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
LABEL_3:
      v17 = swift_slowAlloc();
      sub_261FD6184(v17, a2, a1, a3, a4);

      JUMPOUT(0x266724180);
    }

    goto LABEL_7;
  }

  if (v16 > 0xF)
  {
    goto LABEL_3;
  }

  if (*(v8 + 72) >= 1025)
  {
    goto LABEL_9;
  }

LABEL_7:
  MEMORY[0x28223BE20](isStackAllocationSafe);
  sub_261FD6184(&v21[-v18], a2, a1, a3, v12);
  v19 = *(v8 + 32);
  v19(v15, v12, a3);
  return v19(a4, v15, a3);
}

void *sub_261FD6184@<X0>(void *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    memcpy(result, (a2 + a3), v7);
    return (*(v6 + 16))(a5, v9, a4);
  }

  return result;
}

uint64_t sub_261FD6238(uint64_t *a1, size_t count)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v4, v3);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v13 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      if (v13 < v4)
      {
        goto LABEL_16;
      }

      if (sub_26203937C() && __OFSUB__(v4, sub_2620393AC()))
      {
        goto LABEL_17;
      }

      v14 = sub_2620393BC();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_26203935C();

      v12 = v17;
LABEL_12:
      if (v13 < v4)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      p_bytes = sub_261FD65A0(v4, v4 >> 32, v12, count);

      *a1 = v4;
      a1[1] = v12 | 0x4000000000000000;
LABEL_14:
      v18 = *MEMORY[0x277D85DE8];
      return p_bytes;
    case 2uLL:
      v9 = *a1;

      sub_261F6BFFC(v4, v3);
      *&bytes = v4;
      *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      p_bytes = &bytes;
      sub_26203944C();
      v10 = bytes;
      v11 = sub_261FD65A0(*(bytes + 16), *(bytes + 24), *(&bytes + 1), count);
      *a1 = v10;
      a1[1] = *(&v10 + 1) | 0x8000000000000000;
      if (!v2)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    case 3uLL:
      *(&bytes + 7) = 0;
      *&bytes = 0;
      v11 = SecRandomCopyBytes(*MEMORY[0x277CDC540], count, &bytes);
LABEL_6:
      p_bytes = v11;
      goto LABEL_14;
    default:
      sub_261F6BFFC(v4, v3);
      *&bytes = v4;
      WORD4(bytes) = v3;
      BYTE10(bytes) = BYTE2(v3);
      BYTE11(bytes) = BYTE3(v3);
      BYTE12(bytes) = BYTE4(v3);
      BYTE13(bytes) = BYTE5(v3);
      BYTE14(bytes) = BYTE6(v3);
      p_bytes = SecRandomCopyBytes(*MEMORY[0x277CDC540], count, &bytes);
      v8 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v8;
      goto LABEL_14;
  }
}

uint64_t sub_261FD65A0(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  result = sub_26203937C();
  if (result)
  {
    v7 = result;
    result = sub_2620393AC();
    v8 = __OFSUB__(a1, result);
    v9 = a1 - result;
    if (!v8)
    {
      sub_26203939C();
      return SecRandomCopyBytes(*MEMORY[0x277CDC540], a4, (v7 + v9));
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_261FD661C()
{
  result = qword_28108B318;
  if (!qword_28108B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEF9990, &qword_26203F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B318);
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

uint64_t sub_261FD6694(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_261FD66E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t PairableHostInfo.identifier.getter()
{
  v0 = sub_26203965C();
  OUTLINED_FUNCTION_6_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_47();

  return v4(v3);
}

uint64_t PairableHostInfo.identifier.setter()
{
  OUTLINED_FUNCTION_11_6();
  v2 = sub_26203965C();
  v3 = OUTLINED_FUNCTION_6_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t PairableHostInfo.name.getter()
{
  v1 = (v0 + *(type metadata accessor for PairableHostInfo(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_47();
}

uint64_t PairableHostInfo.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PairableHostInfo(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PairableHostInfo.name.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  v1 = *(type metadata accessor for PairableHostInfo(v0) + 20);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t PairableHostInfo.model.getter()
{
  v1 = (v0 + *(type metadata accessor for PairableHostInfo(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_47();
}

uint64_t PairableHostInfo.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PairableHostInfo(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PairableHostInfo.model.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  v1 = *(type metadata accessor for PairableHostInfo(v0) + 24);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t PairableHostInfo.available.setter(char a1)
{
  result = type metadata accessor for PairableHostInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PairableHostInfo.available.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  v1 = *(type metadata accessor for PairableHostInfo(v0) + 28);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t PairableHostInfo.paired.setter(char a1)
{
  result = type metadata accessor for PairableHostInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PairableHostInfo.paired.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  v1 = *(type metadata accessor for PairableHostInfo(v0) + 32);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t PairableHostInfo.monotonicIdentifier.setter()
{
  v2 = OUTLINED_FUNCTION_11_6();
  result = type metadata accessor for PairableHostInfo(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t PairableHostInfo.monotonicIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_11_6();
  v1 = *(type metadata accessor for PairableHostInfo(v0) + 36);
  return OUTLINED_FUNCTION_14_8();
}

uint64_t sub_261FD6BB8(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain();
  return PairableHostInfo.endpoint.setter();
}

uint64_t PairableHostInfo.endpoint.setter()
{
  v1 = OUTLINED_FUNCTION_11_6();
  v2 = v0 + *(type metadata accessor for PairableHostInfo(v1) + 40);
  return _s19RemotePairingDevice014CreateWirelessB14SessionRequestV8endpointSo13OS_xpc_object_pvs_0();
}

void (*PairableHostInfo.endpoint.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = v1 + *(type metadata accessor for PairableHostInfo(0) + 40);
  v3[4] = sub_26203986C();
  return sub_261F9115C;
}

uint64_t PairableHostInfo.init(identifier:name:model:available:paired:monotonicIdentifier:endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for PairableHostInfo(0);
  v17 = (a9 + v16[6]);
  v18 = sub_26203965C();
  v23 = *(v18 - 8);
  (*(v23 + 16))(a9, a1, v18);
  v19 = (a9 + v16[5]);
  *v19 = a2;
  v19[1] = a3;
  *v17 = a4;
  v17[1] = a5;
  *(a9 + v16[7]) = a6;
  *(a9 + v16[8]) = a7;
  *(a9 + v16[9]) = a8;
  v20 = a9 + v16[10];
  sub_26203985C();
  v21 = *(v23 + 8);

  return v21(a1, v18);
}

uint64_t sub_261FD6DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646572696170 && a2 == 0xE600000000000000;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000002620503D0 == a2;
            if (v10 || (sub_26203AC0C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_26203AC0C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_261FD7008(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6C65646F6DLL;
      break;
    case 3:
      result = 0x6C62616C69617661;
      break;
    case 4:
      result = 0x646572696170;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x746E696F70646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FD70D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FD6DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FD7100(uint64_t a1)
{
  v2 = sub_261FD7414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD713C(uint64_t a1)
{
  v2 = sub_261FD7414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PairableHostInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F18, &qword_2620425A0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  v12 = &v30[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FD7414();
  sub_26203AE5C();
  v30[15] = 0;
  sub_26203965C();
  OUTLINED_FUNCTION_7_8();
  sub_261FD7468(v14, v15);
  OUTLINED_FUNCTION_12_6();
  sub_26203AB3C();
  if (!v2)
  {
    v16 = type metadata accessor for PairableHostInfo(0);
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    v30[14] = 1;
    OUTLINED_FUNCTION_12_6();
    sub_26203AAFC();
    v20 = (v3 + v16[6]);
    v21 = *v20;
    v22 = v20[1];
    v30[13] = 2;
    OUTLINED_FUNCTION_12_6();
    sub_26203AAAC();
    v23 = *(v3 + v16[7]);
    v30[12] = 3;
    OUTLINED_FUNCTION_12_6();
    sub_26203AB0C();
    v24 = *(v3 + v16[8]);
    v30[11] = 4;
    OUTLINED_FUNCTION_12_6();
    sub_26203AB0C();
    v25 = *(v3 + v16[9]);
    v30[10] = 5;
    OUTLINED_FUNCTION_12_6();
    sub_26203AB7C();
    v26 = v16[10];
    v30[9] = 6;
    sub_26203989C();
    OUTLINED_FUNCTION_8_6();
    sub_261FD7468(v27, v28);
    OUTLINED_FUNCTION_12_6();
    sub_26203AB3C();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_261FD7414()
{
  result = qword_27FEF9F20;
  if (!qword_27FEF9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F20);
  }

  return result;
}

uint64_t sub_261FD7468(unint64_t *a1, void (*a2)(uint64_t))
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

void PairableHostInfo.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v59 = v0;
  v2 = v1;
  v54 = v3;
  v4 = sub_26203989C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v53 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  v11 = v10 - v9;
  v12 = sub_26203965C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v57 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F28, &qword_2620425A8);
  v21 = OUTLINED_FUNCTION_0(v20);
  v55 = v22;
  v56 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - v26;
  v60 = type metadata accessor for PairableHostInfo(0);
  v28 = OUTLINED_FUNCTION_6_1(v60);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_74();
  v33 = v32 - v31;
  v35 = v2[3];
  v34 = v2[4];
  v61 = v2;
  __swift_project_boxed_opaque_existential_0Tm(v2, v35);
  sub_261FD7414();
  v58 = v27;
  v36 = v59;
  sub_26203AE3C();
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
  }

  else
  {
    v59 = v11;
    OUTLINED_FUNCTION_7_8();
    sub_261FD7468(v37, v38);
    sub_26203AA2C();
    v39 = v33;
    (*(v57 + 32))(v33, v19, v12);
    OUTLINED_FUNCTION_5_9();
    v40 = sub_26203A9EC();
    v41 = v60;
    v42 = (v39 + v60[5]);
    *v42 = v40;
    v42[1] = v43;
    OUTLINED_FUNCTION_5_9();
    v44 = sub_26203A99C();
    v45 = (v39 + v41[6]);
    *v45 = v44;
    v45[1] = v46;
    OUTLINED_FUNCTION_5_9();
    *(v39 + v41[7]) = sub_26203A9FC() & 1;
    OUTLINED_FUNCTION_5_9();
    v47 = sub_26203A9FC();
    v48 = v55;
    *(v39 + v41[8]) = v47 & 1;
    OUTLINED_FUNCTION_5_9();
    *(v39 + v41[9]) = sub_26203AA6C();
    OUTLINED_FUNCTION_8_6();
    sub_261FD7468(v49, v50);
    v51 = v59;
    sub_26203AA2C();
    (*(v48 + 8))(v58, v56);
    (*(v53 + 32))(v39 + v41[10], v51, v4);
    sub_261FD8148(v39, v54);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    sub_261FD79D4(v39);
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_261FD79D4(uint64_t a1)
{
  v2 = type metadata accessor for PairableHostInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261FD7A30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002620503F0 == a2;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000262050410 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_261FD7B08(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_261FD7B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FD7A30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FD7B9C(uint64_t a1)
{
  v2 = sub_261FD80F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD7BD8(uint64_t a1)
{
  v2 = sub_261FD80F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FD7C14(uint64_t a1)
{
  v2 = sub_261FD8248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD7C50(uint64_t a1)
{
  v2 = sub_261FD8248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FD7C8C(uint64_t a1)
{
  v2 = sub_261FD81A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD7CC8(uint64_t a1)
{
  v2 = sub_261FD81A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void DeviceServiceEvent.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v54 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F30, &qword_2620425B0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v52 = v5;
  v53 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v50 = v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F38, &qword_2620425B8);
  OUTLINED_FUNCTION_0(v51);
  v49 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_44();
  v48 = v14;
  v47 = type metadata accessor for PairableHostInfo(0);
  v15 = OUTLINED_FUNCTION_6_1(v47);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_74();
  v20 = v19 - v18;
  v21 = type metadata accessor for DeviceServiceEvent(0);
  v22 = OUTLINED_FUNCTION_6_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_74();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F40, &qword_2620425C0);
  OUTLINED_FUNCTION_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  v35 = &v46 - v34;
  v36 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_261FD80F4();
  sub_26203AE5C();
  OUTLINED_FUNCTION_1_16();
  sub_261FD8148(v54, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v27;
    v38 = *(v27 + 8);
    v39 = *(v27 + 16);
    v55 = 1;
    sub_261FD81A0();
    v40 = v50;
    sub_26203AA9C();
    v55 = v37;
    v56 = v38;
    v57 = v39;
    sub_261FD81F4();
    v41 = v53;
    sub_26203AB3C();
    (*(v52 + 8))(v40, v41);
  }

  else
  {
    sub_261FD8CD8(v27, v20);
    v55 = 0;
    sub_261FD8248();
    v42 = v48;
    sub_26203AA9C();
    OUTLINED_FUNCTION_9_7();
    sub_261FD7468(v43, v44);
    v45 = v51;
    sub_26203AB3C();
    (*(v49 + 8))(v42, v45);
    sub_261FD79D4(v20);
  }

  (*(v30 + 8))(v35, v28);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FD80F4()
{
  result = qword_27FEF9F48;
  if (!qword_27FEF9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F48);
  }

  return result;
}

uint64_t sub_261FD8148(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_47();
  v9(v8);
  return a2;
}

unint64_t sub_261FD81A0()
{
  result = qword_27FEF9F50;
  if (!qword_27FEF9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F50);
  }

  return result;
}

unint64_t sub_261FD81F4()
{
  result = qword_27FEF9F58;
  if (!qword_27FEF9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F58);
  }

  return result;
}

unint64_t sub_261FD8248()
{
  result = qword_27FEF9F60;
  if (!qword_27FEF9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F60);
  }

  return result;
}

void DeviceServiceEvent.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v78 = v3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F68, &qword_2620425C8);
  OUTLINED_FUNCTION_0(v79);
  v84 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v83 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F70, &qword_2620425D0);
  v10 = OUTLINED_FUNCTION_0(v9);
  v80 = v11;
  v81 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_44();
  v82 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9F78, &unk_2620425D8);
  v17 = OUTLINED_FUNCTION_0(v16);
  v85 = v18;
  v86 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v21);
  v23 = &v72[-v22];
  v24 = type metadata accessor for DeviceServiceEvent(0);
  v25 = OUTLINED_FUNCTION_6_1(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v72[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v72[-v32];
  MEMORY[0x28223BE20](v31);
  v35 = &v72[-v34];
  v36 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_261FD80F4();
  sub_26203AE3C();
  if (v0)
  {
    goto LABEL_8;
  }

  v75 = v33;
  v76 = v30;
  v74 = v35;
  v77 = v24;
  v37 = v86;
  v38 = sub_26203AA7C();
  sub_261F99084(v38, 0);
  v42 = v23;
  if (v40 == v41 >> 1)
  {
LABEL_7:
    v52 = v77;
    v53 = sub_26203A81C();
    swift_allocError();
    v55 = v54;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0) + 48);
    *v55 = v52;
    sub_26203A98C();
    sub_26203A80C();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v57 = OUTLINED_FUNCTION_4_9();
    v58(v57, v37);
LABEL_8:
    v59 = v2;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    OUTLINED_FUNCTION_38_0();
    return;
  }

  if (v40 < (v41 >> 1))
  {
    v73 = *(v39 + v40);
    sub_261F99070(v40 + 1);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = v84;
    v48 = v76;
    if (v44 == v46 >> 1)
    {
      v49 = v37;
      if (v73)
      {
        v87 = 1;
        sub_261FD81A0();
        v50 = v83;
        OUTLINED_FUNCTION_16_7();
        sub_261FD8C84();
        v51 = v79;
        sub_26203AA2C();
        swift_unknownObjectRelease();
        (*(v47 + 8))(v50, v51);
        v64 = OUTLINED_FUNCTION_4_9();
        v65(v64, v49);
        v66 = v88;
        v67 = v89;
        *v48 = v87;
        *(v48 + 8) = v66;
        *(v48 + 16) = v67;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_16();
        v68 = v48;
      }

      else
      {
        v87 = 0;
        sub_261FD8248();
        OUTLINED_FUNCTION_16_7();
        type metadata accessor for PairableHostInfo(0);
        OUTLINED_FUNCTION_9_7();
        sub_261FD7468(v60, v61);
        v62 = v75;
        sub_26203AA2C();
        v63 = v85;
        swift_unknownObjectRelease();
        v69 = OUTLINED_FUNCTION_17_5();
        v70(v69);
        (*(v63 + 8))(v42, v37);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_16();
        v68 = v62;
      }

      v71 = v74;
      sub_261FD8CD8(v68, v74);
      OUTLINED_FUNCTION_1_16();
      sub_261FD8CD8(v71, v78);
      v59 = v2;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_261FD88E0(uint64_t a1)
{
  v2 = sub_261FD8D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD891C(uint64_t a1)
{
  v2 = sub_261FD8D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FD89B4(uint64_t a1)
{
  v2 = sub_261FD8D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD89F0(uint64_t a1)
{
  v2 = sub_261FD8D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FD8AB0(uint64_t a1)
{
  v2 = sub_261FD8DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FD8AEC(uint64_t a1)
{
  v2 = sub_261FD8DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_261FD8B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = v25[4];
  __swift_project_boxed_opaque_existential_0Tm(v25, v25[3]);
  v23();
  sub_26203AE5C();
  (*(v30 + 8))(v35, v28);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FD8C84()
{
  result = qword_27FEF9F80;
  if (!qword_27FEF9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F80);
  }

  return result;
}

uint64_t sub_261FD8CD8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_47();
  v9(v8);
  return a2;
}

unint64_t sub_261FD8D30()
{
  result = qword_27FEF9F90;
  if (!qword_27FEF9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9F90);
  }

  return result;
}

unint64_t sub_261FD8D84()
{
  result = qword_27FEF9FA0;
  if (!qword_27FEF9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FA0);
  }

  return result;
}

unint64_t sub_261FD8DD8()
{
  result = qword_27FEF9FB0;
  if (!qword_27FEF9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FB0);
  }

  return result;
}

uint64_t sub_261FD8E2C(uint64_t a1)
{
  *(a1 + 8) = sub_261FD7468(&qword_27FEF9670, type metadata accessor for PairableHostInfo);
  result = sub_261FD7468(&unk_27FEF9678, type metadata accessor for PairableHostInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_261FD8F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

void sub_261FD8F98()
{
  sub_26203965C();
  if (v0 <= 0x3F)
  {
    sub_261F971AC();
    if (v1 <= 0x3F)
    {
      sub_26203989C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_261FD9050()
{
  result = type metadata accessor for PairableHostInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceServiceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_261FD9204(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PairableHostInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_261FD9390()
{
  result = qword_27FEF9FD8;
  if (!qword_27FEF9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FD8);
  }

  return result;
}

unint64_t sub_261FD93E8()
{
  result = qword_27FEF9FE0;
  if (!qword_27FEF9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FE0);
  }

  return result;
}

unint64_t sub_261FD9440()
{
  result = qword_27FEF9FE8;
  if (!qword_27FEF9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FE8);
  }

  return result;
}

unint64_t sub_261FD9498()
{
  result = qword_27FEF9FF0;
  if (!qword_27FEF9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FF0);
  }

  return result;
}

unint64_t sub_261FD94F0()
{
  result = qword_27FEF9FF8;
  if (!qword_27FEF9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9FF8);
  }

  return result;
}

unint64_t sub_261FD9548()
{
  result = qword_27FEFA000;
  if (!qword_27FEFA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA000);
  }

  return result;
}

unint64_t sub_261FD95A0()
{
  result = qword_27FEFA008;
  if (!qword_27FEFA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA008);
  }

  return result;
}

unint64_t sub_261FD95F8()
{
  result = qword_27FEFA010;
  if (!qword_27FEFA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA010);
  }

  return result;
}

unint64_t sub_261FD9650()
{
  result = qword_27FEFA018;
  if (!qword_27FEFA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA018);
  }

  return result;
}

unint64_t sub_261FD96A8()
{
  result = qword_27FEFA020;
  if (!qword_27FEFA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA020);
  }

  return result;
}

unint64_t sub_261FD9700()
{
  result = qword_27FEFA028;
  if (!qword_27FEFA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA028);
  }

  return result;
}

unint64_t sub_261FD9758()
{
  result = qword_27FEFA030;
  if (!qword_27FEFA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA030);
  }

  return result;
}

unint64_t sub_261FD97B0()
{
  result = qword_27FEFA038;
  if (!qword_27FEFA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA038);
  }

  return result;
}

unint64_t sub_261FD9808()
{
  result = qword_27FEFA040;
  if (!qword_27FEFA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA040);
  }

  return result;
}

unint64_t sub_261FD9860()
{
  result = qword_27FEFA048;
  if (!qword_27FEFA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA048);
  }

  return result;
}

unint64_t sub_261FD98B8()
{
  result = qword_27FEFA050;
  if (!qword_27FEFA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA050);
  }

  return result;
}

unint64_t sub_261FD9910()
{
  result = qword_27FEFA058;
  if (!qword_27FEFA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA058);
  }

  return result;
}

unint64_t sub_261FD9968()
{
  result = qword_27FEFA060;
  if (!qword_27FEFA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA060);
  }

  return result;
}

id sub_261FD9A28()
{
  result = [v0 error];
  if (!result)
  {
    result = sub_261FDBBB8(v0);
    if (v2 >> 60 == 15)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_261FD9A84()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEFA068 = result;
  return result;
}

uint64_t sub_261FD9AF0()
{
  type metadata accessor for AtomicCounter();
  swift_allocObject();
  result = AtomicCounter.init()();
  qword_27FEFA070 = result;
  return result;
}

uint64_t sub_261FD9B30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_261FD9BBC(v2, v3);
}

uint64_t sub_261FD9B70()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_261FD9BBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

double sub_261FD9C60@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t BluetoothLEConnectionControlChannelTransport.__allocating_init(connection:)(void *a1)
{
  v2 = swift_allocObject();
  BluetoothLEConnectionControlChannelTransport.init(connection:)(a1);
  return v2;
}

uint64_t BluetoothLEConnectionControlChannelTransport.init(connection:)(void *a1)
{
  v2 = v1;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  v3 = qword_27FEF8658;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v5 = sub_26203ABAC();
  MEMORY[0x266722710](v5);

  *(v2 + 24) = 0x746F6F7465756C62;
  *(v2 + 32) = 0xEA00000000002D68;
  return v2;
}

void sub_261FD9D88()
{
  OUTLINED_FUNCTION_4_10();
  v5 = [objc_allocWithZone(MEMORY[0x277CBE080]) init];
  [v5 setMinLength_];
  [v5 setMaxLength_];
  OUTLINED_FUNCTION_107();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v0;
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_17();
  v10[2] = v7;
  v10[3] = &block_descriptor_7;
  v8 = _Block_copy(v10);
  v9 = v5;

  [v9 setCompletion_];
  _Block_release(v8);
  [*(v1 + 16) readWithCBReadRequest_];
}

void sub_261FD9EA0(uint64_t a1, void (*a2)(void))
{
  v3 = sub_261FD9A28();
  if (v5 == -1)
  {
    sub_26203A91C();
    __break(1u);
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    a2();

    sub_261FDBBA0(v6, v7, v8);
  }
}

void sub_261FD9F74()
{
  OUTLINED_FUNCTION_4_10();
  v5 = [objc_allocWithZone(MEMORY[0x277CBE0C8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF95F8, &unk_26203E610);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26203E9E0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  sub_261F6B73C(v4, v3);
  sub_261FDB70C(v6, v5);
  OUTLINED_FUNCTION_107();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v0;
  v7[4] = v5;
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_17();
  v11[2] = v8;
  v11[3] = &block_descriptor_6_0;
  v9 = _Block_copy(v11);

  v10 = v5;

  [v10 setCompletion_];
  _Block_release(v9);
  [*(v1 + 16) writeWithCBWriteRequest_];
}

void sub_261FDA0BC(void (*a1)(void), int a2, id a3)
{
  v4 = [a3 error];
  a1();
}

void sub_261FDA130(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = v5[2];
  [v9 setDispatchQueue_];
  v10 = OUTLINED_FUNCTION_3_14();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a4;
  v26 = sub_261FDB784;
  v27 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_261F78F64;
  v25 = &block_descriptor_15_0;
  v12 = _Block_copy(&aBlock);

  [v9 setInvalidationHandler_];
  _Block_release(v12);
  v13 = OUTLINED_FUNCTION_3_14();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v26 = sub_261FDB790;
  v27 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_261F78F64;
  v25 = &block_descriptor_22;
  v15 = _Block_copy(&aBlock);

  [v9 setInterruptionHandler_];
  _Block_release(v15);
  v16 = OUTLINED_FUNCTION_3_14();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a2;
  *(v17 + 48) = a1;
  *(v17 + 56) = v20;
  v26 = sub_261FDB79C;
  v27 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_261FB8024;
  v25 = &block_descriptor_29;
  v18 = _Block_copy(&aBlock);

  v19 = a1;

  [v9 activateWithCompletion_];
  _Block_release(v18);
}

uint64_t sub_261FDA410(uint64_t a1, void (*a2)(_BYTE *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_26203A48C();
    if (qword_27FEF8650 != -1)
    {
      swift_once();
    }

    v6 = qword_27FEFA068;
    if (os_log_type_enabled(qword_27FEFA068, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136446210;
      swift_beginAccess();
      v9 = *(v4 + 24);
      v10 = *(v4 + 32);

      v11 = sub_261F67FE4(v9, v10, v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_261F5B000, v6, v5, "%{public}s: CBConnection invalidated", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x266724180](v8, -1, -1);
      MEMORY[0x266724180](v7, -1, -1);
    }

    sub_261F9BCE0();
    sub_26203AD3C();
    __src[1] = v15[1];
    sub_261F9D610();
    v12 = swift_allocError();
    sub_26203AD4C();
    __src[0] = v12;
    sub_261F65314(__src);
    memcpy(__dst, __src, 0x92uLL);
    a2(__dst);

    memcpy(v15, __dst, 0x92uLL);
    return sub_261F6A760(v15);
  }

  return result;
}

uint64_t sub_261FDA66C(uint64_t a1, void (*a2)(_BYTE *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_26203A48C();
    if (qword_27FEF8650 != -1)
    {
      swift_once();
    }

    v6 = qword_27FEFA068;
    if (os_log_type_enabled(qword_27FEFA068, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136446210;
      swift_beginAccess();
      v9 = *(v4 + 24);
      v10 = *(v4 + 32);

      v11 = sub_261F67FE4(v9, v10, v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_261F5B000, v6, v5, "%{public}s: CBConnection interrupted", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x266724180](v8, -1, -1);
      MEMORY[0x266724180](v7, -1, -1);
    }

    sub_261F9BCE0();
    sub_26203AD3C();
    __src[1] = v15[1];
    sub_261F9D610();
    v12 = swift_allocError();
    sub_26203AD4C();
    __src[0] = v12;
    sub_261F65314(__src);
    memcpy(__dst, __src, 0x92uLL);
    a2(__dst);

    memcpy(v15, __dst, 0x92uLL);
    return sub_261F6A760(v15);
  }

  return result;
}

uint64_t sub_261FDA8C8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v72 = a7;
  LODWORD(v71) = a5;
  v77 = sub_262039F9C();
  v75 = *(v77 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_26203A03C();
  v76 = *(v78 - 8);
  v14 = *(v76 + 64);
  v15 = MEMORY[0x28223BE20](v78);
  v73 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v74 = &v66[-v17];
  v18 = sub_262039FAC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    if (a1)
    {
      v22 = a1;
      v23 = sub_26203A48C();
      if (qword_27FEF8650 != -1)
      {
        swift_once();
      }

      v24 = qword_27FEFA068;
      if (os_log_type_enabled(qword_27FEFA068, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v70 = a3;
        v27 = v26;
        v82[0] = v26;
        *v25 = 136446466;
        swift_beginAccess();
        v28 = v21[3];
        v29 = v21[4];

        v30 = sub_261F67FE4(v28, v29, v82);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2080;
        v81[0] = a1;
        v31 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v32 = sub_26203A20C();
        v34 = sub_261F67FE4(v32, v33, v82);

        *(v25 + 14) = v34;
        _os_log_impl(&dword_261F5B000, v24, v23, "%{public}s: CBConnection failed to activate: %s", v25, 0x16u);
        swift_arrayDestroy();
        v35 = v27;
        a3 = v70;
        MEMORY[0x266724180](v35, -1, -1);
        MEMORY[0x266724180](v25, -1, -1);
      }

      v81[0] = a1;
      sub_261F65314(v81);
      memcpy(v79, v81, 0x92uLL);
      v36 = a1;
      (a3)(v79);

      memcpy(v82, v79, 0x92uLL);
      return sub_261F6A760(v82);
    }

    else
    {
      v37 = sub_26203A48C();
      if (qword_27FEF8650 != -1)
      {
        swift_once();
      }

      v69 = qword_27FEFA068;
      v38 = os_log_type_enabled(qword_27FEFA068, v37);
      v68 = a6;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v82[0] = v40;
        *v39 = 136446210;
        swift_beginAccess();
        v67 = v37;
        v70 = a3;
        v41 = a4;
        v42 = v21[3];
        v43 = v21[4];

        v44 = sub_261F67FE4(v42, v43, v82);
        a4 = v41;
        a3 = v70;

        *(v39 + 4) = v44;
        _os_log_impl(&dword_261F5B000, v69, v67, "%{public}s: CBConnection activated", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        MEMORY[0x266724180](v40, -1, -1);
        MEMORY[0x266724180](v39, -1, -1);
      }

      sub_261FDBAD0(v82);
      memcpy(v81, v82, 0x92uLL);
      (a3)(v81);
      if (v71)
      {
        sub_261FE6DE0();
      }

      else
      {
        v45 = sub_26203A4AC();
        if (os_log_type_enabled(v69, v45))
        {
          v46 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v81[0] = v70;
          *v46 = 136446210;
          swift_beginAccess();
          v71 = a4;
          v48 = v21[3];
          v47 = v21[4];

          v49 = sub_261F67FE4(v48, v47, v81);

          *(v46 + 4) = v49;
          a4 = v71;
          _os_log_impl(&dword_261F5B000, v69, v45, "%{public}s: Not processing incoming messages due to configuration", v46, 0xCu);
          v50 = v70;
          __swift_destroy_boxed_opaque_existential_0Tm(v70);
          MEMORY[0x266724180](v50, -1, -1);
          MEMORY[0x266724180](v46, -1, -1);
        }
      }

      v51 = swift_allocObject();
      swift_weakInit();
      v52 = swift_allocObject();
      v52[2] = v51;
      v52[3] = a3;
      v53 = v72;
      v52[4] = a4;
      v52[5] = v53;
      v81[4] = sub_261FDBB4C;
      v81[5] = v52;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 1107296256;
      v81[2] = sub_261F78F64;
      v81[3] = &block_descriptor_41;
      _Block_copy(v81);
      v80 = MEMORY[0x277D84F90];
      sub_261FDBB58(&qword_28108B370, 255, MEMORY[0x277D85198]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
      sub_261F98F68();
      sub_26203A75C();
      v54 = sub_26203A06C();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      swift_allocObject();
      v57 = sub_26203A04C();

      v58 = v21[5];
      v21[5] = v57;

      v59 = v73;
      sub_26203A02C();
      *v13 = 5;
      v60 = v75;
      v61 = v77;
      (*(v75 + 104))(v13, *MEMORY[0x277D85188], v77);
      v62 = v74;
      MEMORY[0x266722530](v59, v13);
      (*(v60 + 8))(v13, v61);
      v63 = *(v76 + 8);
      v64 = v59;
      v65 = v78;
      v63(v64, v78);
      sub_26203A55C();

      return (v63)(v62, v65);
    }
  }

  return result;
}

uint64_t sub_261FDB138(uint64_t a1, void (*a2)(void *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_26203A48C();
    if (qword_27FEF8650 != -1)
    {
      swift_once();
    }

    v6 = qword_27FEFA068;
    if (os_log_type_enabled(qword_27FEFA068, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19[0] = v8;
      *v7 = 136446466;
      swift_beginAccess();
      v9 = *(v4 + 24);
      v10 = *(v4 + 32);

      v11 = sub_261F67FE4(v9, v10, v19);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      *(v7 + 14) = 5;
      _os_log_impl(&dword_261F5B000, v6, v5, "%{public}s: Connection exceeded maximum permitted duration of %ld seconds. Invalidating connection", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x266724180](v8, -1, -1);
      MEMORY[0x266724180](v7, -1, -1);
    }

    sub_261F9BCE0();
    sub_26203AD3C();
    v12 = MEMORY[0x277D84F90];
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_261F9D4D8(v12);
    sub_26203AD2C();
    v13 = v19[0];
    v14 = v19[1];
    sub_261F9D610();
    v15 = swift_allocError();
    *v16 = v13;
    v16[1] = v14;
    __src[0] = v15;
    sub_261F65314(__src);
    memcpy(__dst, __src, 0x92uLL);
    a2(__dst);
    memcpy(v19, __dst, 0x92uLL);
    sub_261F6A760(v19);
    sub_261FDB3B8();
  }

  return result;
}

id sub_261FDB3B8()
{
  if (*(v0 + 40))
  {

    sub_26203A05C();

    v1 = *(v0 + 40);
  }

  *(v0 + 40) = 0;

  v2 = *(v0 + 16);

  return [v2 invalidate];
}

uint64_t sub_261FDB424()
{
  sub_261F9BCE0();
  sub_26203ACFC();
  sub_261F9D610();
  swift_allocError();
  sub_26203AD4C();
  return swift_willThrow();
}

uint64_t BluetoothLEConnectionControlChannelTransport.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t BluetoothLEConnectionControlChannelTransport.__deallocating_deinit()
{
  BluetoothLEConnectionControlChannelTransport.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_261FDB5D4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return HashableByObjectIdentity.hash(into:)();
}

uint64_t sub_261FDB62C()
{
  sub_26203ADDC();
  v1 = *v0;
  swift_getWitnessTable();
  HashableByObjectIdentity.hash(into:)();
  return sub_26203AE0C();
}

BOOL sub_261FDB694(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static HashableByObjectIdentity.== infix(_:_:)(v2, v3);
}

void sub_261FDB70C(uint64_t a1, void *a2)
{
  v3 = sub_26203A3AC();

  [a2 setDataArray_];
}

uint64_t sub_261FDB7B0(uint64_t a1, uint64_t a2)
{
  result = sub_261FDBB58(&qword_27FEFA078, a2, type metadata accessor for BluetoothLEConnectionControlChannelTransport);
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_11Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_261FDBB4C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_261FDB138(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_261FDBB58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_261FDBBA0(void *a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_261FC07A8(a1, a2, a3 & 1);
  }
}

uint64_t sub_261FDBBB8(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26203954C();

  return v3;
}

uint64_t sub_261FDBC54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v14 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      v15 = a1;

      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v15;
      v11 = v14;
      goto LABEL_8;
    case 2uLL:
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);

      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v7;
      v11 = v8;
LABEL_8:
      v13 = sub_261FE1AC4(v10, v11, v9, a3, a4);

      goto LABEL_9;
    case 3uLL:
      memset(v18, 0, 14);
      goto LABEL_5;
    default:
      v18[0] = a1;
      LOWORD(v18[1]) = a2;
      BYTE2(v18[1]) = BYTE2(a2);
      BYTE3(v18[1]) = BYTE3(a2);
      BYTE4(v18[1]) = BYTE4(a2);
      BYTE5(v18[1]) = BYTE5(a2);
LABEL_5:
      v12 = *(a3 + 80);
      v13 = (*(a3 + 72))(v18, a4);

LABEL_9:
      v16 = *MEMORY[0x277D85DE8];
      return v13;
  }
}

void sub_261FDBDF0()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v48 = *MEMORY[0x277D85DE8];
  *&v45 = v2;
  *(&v45 + 1) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B8, &qword_262043258);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v43, &v46);
    __swift_project_boxed_opaque_existential_0Tm(&v46, v47);
    sub_2620393CC();
    v43[0] = v45;
    __swift_destroy_boxed_opaque_existential_0Tm(&v46);
    goto LABEL_59;
  }

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  sub_261FCB894(v43, &qword_27FEFA0C0, &unk_262043260);
  if ((v1 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    *&v43[0] = v3;
    *(&v43[0] + 1) = v1 & 0xFFFFFFFFFFFFFFLL;
    v4 = v43;
    v5 = HIBYTE(v1) & 0xF;
  }

  else if ((v3 & 0x1000000000000000) != 0)
  {
    v4 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26203A82C();
  }

  sub_261FE2418(v4, v5, &v46);
  v6 = *(&v46 + 1);
  v7 = v46;
  if (*(&v46 + 1) >> 60 != 15)
  {
    v43[0] = v46;
    goto LABEL_59;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v43[0] = MEMORY[0x266721980](v8);
  *(&v43[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v43[0]);
  v10 = sub_261FE1B60(sub_261FE2870);
  v12 = *(&v43[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v43[0]);
  switch(*(&v43[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v43[0]) - LODWORD(v43[0]);
      if (__OFSUB__(DWORD1(v43[0]), v43[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v43[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v43[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v43[0] + 16);
      v20 = *(*&v43[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        OUTLINED_FUNCTION_7_2();
        sub_2620394CC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v42 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v45 + 7) = 0;
      *&v45 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v43[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = OUTLINED_FUNCTION_21_4();
      v27 = sub_261FE4A5C(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_26203A27C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_26203A2AC();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v46 = v13;
      *(&v46 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v46 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        OUTLINED_FUNCTION_35_3();
        v29 = sub_26203A82C();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = OUTLINED_FUNCTION_21_4();
      v17 = sub_261FE4A5C(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_21_4();
    v17 = sub_26203A28C();
LABEL_46:
    *(&v45 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      OUTLINED_FUNCTION_36_2();
      sub_2620394EC();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    OUTLINED_FUNCTION_36_2();
    sub_2620394EC();
    sub_261F6ADEC(v42, v6);
    goto LABEL_58;
  }

  sub_261F6ADEC(v42, v6);
LABEL_59:
  v37 = OUTLINED_FUNCTION_22_1();
  sub_261F6B73C(v37, v38);

  v39 = OUTLINED_FUNCTION_22_1();
  sub_261F6BFFC(v39, v40);
  v41 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FDC2A4(uint64_t a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v13[3] = MEMORY[0x277CC9318];
  v13[4] = MEMORY[0x277CC9300];
  v13[0] = a1;
  v13[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0Tm(v13, MEMORY[0x277CC9318]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_261FE1A30(v6, v7, &v12);
      goto LABEL_9;
    case 3uLL:
      memset(v11, 0, 14);
      v5 = v11;
      goto LABEL_5;
    default:
      v11[0] = *v2;
      LOWORD(v11[1]) = v4;
      BYTE2(v11[1]) = BYTE2(v4);
      BYTE3(v11[1]) = BYTE3(v4);
      BYTE4(v11[1]) = BYTE4(v4);
      BYTE5(v11[1]) = BYTE5(v4);
      v5 = v11 + BYTE6(v4);
LABEL_5:
      sub_261F6DE04(v11, v5, &v12);
LABEL_9:
      v8 = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      v9 = *MEMORY[0x277D85DE8];
      return v8;
  }
}

uint64_t sub_261FDC428(uint64_t a1, uint64_t a2)
{
  v7[3] = MEMORY[0x277D838B0];
  v7[4] = MEMORY[0x277CC9C18];
  v7[0] = a1;
  v7[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0Tm(v7, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = v4 - v3;
    if (v4 != v3)
    {
      if (v5 <= 14)
      {
        sub_26203943C();
      }

      else if (v5 >= 0x7FFFFFFF)
      {
        MEMORY[0x266721900]();
      }

      else
      {
        MEMORY[0x266721920]();
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_261FDC4E0()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA090 = result;
  return result;
}

uint64_t sub_261FDC558()
{
  type metadata accessor for AtomicCounter();
  swift_allocObject();
  result = AtomicCounter.init()();
  qword_27FEFA098 = result;
  return result;
}

uint64_t sub_261FDC598(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_261FDC5D8(v2, v3);
}

uint64_t sub_261FDC5D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SecureSocketDataTransport.__allocating_init(physicallyConnected:underlyingConnectionSocket:bufferedReceiveSizeHandler:syncReceiveHandler:syncSendHandler:cleanupConnectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  SecureSocketDataTransport.init(physicallyConnected:underlyingConnectionSocket:bufferedReceiveSizeHandler:syncReceiveHandler:syncSendHandler:cleanupConnectionHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v19, a8, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return v17;
}

void SecureSocketDataTransport.init(physicallyConnected:underlyingConnectionSocket:bufferedReceiveSizeHandler:syncReceiveHandler:syncSendHandler:cleanupConnectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_96();
  v23 = v22;
  v52 = v24;
  v53 = v25;
  v58 = v26;
  v59 = v27;
  v55 = v28;
  v56 = v29;
  v54 = v30;
  v57 = v31;
  v32 = sub_26203A53C();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_74();
  v34 = sub_26203A56C();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v42 = v41 - v40;
  v43 = sub_262039FEC();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_74();
  sub_261F9B6D0(0, &qword_28108CFB0, 0x277D85C78);
  *(v22 + 88) = 0;
  *(v22 + 96) = 0;
  *(v22 + 112) = 0;
  *(v22 + 120) = 0;
  sub_262039FDC();
  (*(v37 + 104))(v42, *MEMORY[0x277D85268], v34);
  sub_261FC02FC(&qword_28108CFB8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA0A0, &unk_262040360);
  sub_261F7AA80(&qword_28108CFC0, &unk_27FEFA0A0, &unk_262040360);
  OUTLINED_FUNCTION_17_6();
  sub_26203A75C();
  *(v22 + 128) = sub_26203A58C();
  *(v22 + 136) = 0;
  *(v22 + 144) = 0;
  v45 = MEMORY[0x277D84F90];
  *(v22 + 152) = MEMORY[0x277D84F90];
  *(v22 + 160) = xmmword_262040350;
  *(v22 + 176) = v45;
  *(v22 + 185) = 2;
  *(v22 + 192) = 0u;
  *(v22 + 208) = 0u;
  *(v22 + 217) = 0u;
  *(v22 + 184) = v55;
  *(v22 + 32) = v56;
  *(v22 + 40) = v57;
  *(v22 + 48) = v54;
  *(v22 + 56) = v58;
  *(v22 + 64) = v52;
  *(v22 + 72) = v59;
  *(v22 + 80) = v53;
  v46 = *(v22 + 88);
  v47 = v23[12];
  v23[11] = a21;
  v23[12] = a22;

  v48 = OUTLINED_FUNCTION_22_1();
  sub_261F665E4(v48);
  if (qword_27FEF8668 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v49 = sub_26203ABAC();
  MEMORY[0x266722710](v49);

  v23[2] = 0x2D74656B636F73;
  v23[3] = 0xE700000000000000;
  v50 = v23[16];
  v23[13] = v50;
  v51 = v50;
  OUTLINED_FUNCTION_31_0();
}

void sub_261FDCABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_96();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = sub_262039FAC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_74();
  v30 = v29 - v28;
  v31 = sub_262039FEC();
  v32 = OUTLINED_FUNCTION_0(v31);
  v168 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_74();
  v167 = v37 - v36;
  v38 = sub_2620392DC();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_74();
  v46 = v45 - v44;
  v47 = *(v20 + 128);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!*(v23 + 136))
  {
    goto LABEL_56;
  }

  v48 = *(v23 + 112);
  if (!v48)
  {
    goto LABEL_56;
  }

  v162 = v41;
  v49 = v24;
  v164 = v30;
  v50 = *(v23 + 120);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v166 = v48;
  v165 = v50;
  sub_261F7D45C(v48);
  if (!sub_26203A60C())
  {
    OUTLINED_FUNCTION_29_6();
    sub_261F9BCE0();
    sub_26203AD3C();
    v169 = v174;
    v170 = v175;
    sub_26203AD4C();
    v52 = v176;
    ObjectType = v177;
    v59 = sub_26203A48C();
    if (qword_27FEF8660 == -1)
    {
LABEL_41:
      v87 = qword_27FEFA090;
      if (os_log_type_enabled(qword_27FEFA090, v59))
      {
        v88 = OUTLINED_FUNCTION_40_2();
        v169 = OUTLINED_FUNCTION_39_0();
        *v88 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v89 = *(v23 + 16);
        v90 = *(v23 + 24);

        v91 = OUTLINED_FUNCTION_47();
        v94 = sub_261F67FE4(v91, v92, v93);

        *(v88 + 4) = v94;
        *(v88 + 12) = 2080;
        v176 = v52;
        v177 = ObjectType;
        sub_261F9D610();
        v95 = sub_26203ACCC();
        v97 = sub_261F67FE4(v95, v96, &v169);

        *(v88 + 14) = v97;
        _os_log_impl(&dword_261F5B000, v87, v59, "%{public}s: %s", v88, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      v98 = *(v23 + 104);
      OUTLINED_FUNCTION_106();
      v99 = swift_allocObject();
      v99[2] = v166;
      v99[3] = v165;
      v99[4] = v52;
      v99[5] = ObjectType;
      OUTLINED_FUNCTION_2_14(v99);
      v177 = 1107296256;
      OUTLINED_FUNCTION_1();
      v178 = v100;
      v179 = &block_descriptor_94;
      v101 = _Block_copy(&v176);
      v102 = OUTLINED_FUNCTION_28_4();
      sub_261F7D45C(v102);
      v103 = v98;
      sub_262039FCC();
      v169 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_0_22();
      sub_261FC02FC(v104, v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
      sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
      sub_26203A75C();
      MEMORY[0x266722A20](0, v167, v164, v101);
      _Block_release(v101);
      OUTLINED_FUNCTION_27_3();

      v106 = OUTLINED_FUNCTION_28_4();
      sub_261F665E4(v106);
      OUTLINED_FUNCTION_20_6(&a12);
      v107(v164, v49);
      v108 = OUTLINED_FUNCTION_24_4();
      v109(v108);
LABEL_55:

      goto LABEL_56;
    }

LABEL_65:
    OUTLINED_FUNCTION_6_11();
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (!*(*(v23 + 152) + 16))
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_27_3();
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_16_8();
  v52 = sub_261FF03FC();
  v160 = v53;
  v161 = v54;
  v159 = v55;
  swift_endAccess();
  v56 = sub_2620393BC();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = OS_LOG_TYPE_DEFAULT;
  v172 = 0x200000000000;
  v173 = sub_26203938C() | 0x4000000000000000;
  while (2)
  {

    v60 = sub_261FE1F24(&v172, v23, 0x2000);
    if (v60 <= 0)
    {
      if (v60 < 0)
      {
        sub_2620392BC();
        v140 = sub_2620392CC();
        (*(v162 + 8))(v46, v38);
        v163 = v140;
      }

      else
      {
        sub_261F9BCE0();
        OUTLINED_FUNCTION_17_6();
        sub_26203AD3C();
        v169 = v176;
        v170 = v177;
        sub_261F9D610();
        v110 = OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_17_6();
        sub_26203AD4C();
        v163 = v110;
        v111 = v110;
      }

      v141 = sub_26203A48C();
      if (qword_27FEF8660 != -1)
      {
        OUTLINED_FUNCTION_6_11();
      }

      v142 = qword_27FEFA090;
      if (os_log_type_enabled(qword_27FEFA090, v141))
      {
        v143 = OUTLINED_FUNCTION_40_2();
        v176 = OUTLINED_FUNCTION_39_0();
        *v143 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v144 = *(v23 + 16);
        v145 = *(v23 + 24);

        v146 = sub_261F67FE4(v144, v145, &v176);

        *(v143 + 4) = v146;
        *(v143 + 12) = 2080;
        OUTLINED_FUNCTION_31_4();
        swift_getErrorValue();
        v147 = sub_26203ACCC();
        v149 = sub_261F67FE4(v147, v148, &v176);

        *(v143 + 14) = v149;
        _os_log_impl(&dword_261F5B000, v142, v141, "%{public}s: Connection receive error: %s", v143, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      v150 = *(v23 + 104);
      OUTLINED_FUNCTION_14_1();
      v151 = swift_allocObject();
      v151[2] = v52;
      v151[3] = v160;
      v151[4] = v161;
      v151[5] = v159;
      v151[6] = v163;
      OUTLINED_FUNCTION_2_14(v151);
      v177 = 1107296256;
      OUTLINED_FUNCTION_1();
      v178 = v152;
      v179 = &block_descriptor_100;
      v153 = _Block_copy(&v176);
      v154 = v150;

      sub_262039FCC();
      v171 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_0_22();
      sub_261FC02FC(v155, v156);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
      sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
      sub_26203A75C();
      MEMORY[0x266722A20](0, v167, v164, v153);
      _Block_release(v153);

      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_20_6(&a12);
      v157(v164, v49);
      (*(v168 + 8))(v167);
      sub_261F6BFFC(v172, v173);
      goto LABEL_55;
    }

    v61 = v173 >> 62;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    switch(v173 >> 62)
    {
      case 1uLL:
        v62 = v172 >> 32;
        v63 = v172;
        goto LABEL_11;
      case 2uLL:
        v63 = *(v172 + 16);
        v62 = *(v172 + 24);
LABEL_11:
        if (v62 < v63)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v61 == 2)
        {
          v65 = *(v172 + 16);
          v64 = *(v172 + 24);
        }

        else
        {
          v64 = v172 >> 32;
          v65 = v172;
        }

LABEL_15:
        if (v64 < v62 || v62 < v65)
        {
          goto LABEL_60;
        }

        v67 = __OFSUB__(v62, v63);
        v68 = v62 - v63;
        if (v67)
        {
          goto LABEL_61;
        }

        if (v68 < v60)
        {
          switch(v61)
          {
            case 1:
              v69 = v172 >> 32;
              goto LABEL_34;
            case 2:
              v69 = *(v172 + 24);
              goto LABEL_35;
            default:
              goto LABEL_37;
          }
        }

        v69 = v63 + v60;
        if (__OFADD__(v63, v60))
        {
          goto LABEL_63;
        }

        v70 = 0;
        v71 = 0;
        switch(v61)
        {
          case 1:
            v70 = v172 >> 32;
            v71 = v172;
            break;
          case 2:
            v71 = *(v172 + 16);
            v70 = *(v172 + 24);
            break;
          case 3:
            break;
          default:
            v71 = 0;
            v70 = BYTE6(v173);
            break;
        }

        if (v70 < v69 || v69 < v71)
        {
          goto LABEL_64;
        }

        v73 = 0;
        switch(v61)
        {
          case 1:
LABEL_34:
            v73 = v172;
            break;
          case 2:
LABEL_35:
            v73 = *(v172 + 16);
            break;
          default:
            break;
        }

        if (v69 < v73)
        {
          goto LABEL_62;
        }

LABEL_37:
        v74 = sub_2620394FC();
        v76 = v75;
        OUTLINED_FUNCTION_16_8();
        sub_26203958C();
        swift_endAccess();
        v77 = sub_261F6BFFC(v74, v76);
        v78 = *(v23 + 48);
        if ((*(v23 + 40))(v77) > 0)
        {
          continue;
        }

        v79 = *(v23 + 160);
        v80 = *(v23 + 168);
        v81 = OUTLINED_FUNCTION_47();
        sub_261F6B73C(v81, v82);
        v83 = OUTLINED_FUNCTION_47();
        v84 = MEMORY[0x266721A20](v83);
        v85 = OUTLINED_FUNCTION_47();
        sub_261F6BFFC(v85, v86);
        if (v84 < v52)
        {
          OUTLINED_FUNCTION_16_8();

          sub_261FFB590(0, 0, v52, v160, v161, v159);
          swift_endAccess();
          OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_9_8();
          goto LABEL_58;
        }

        v112 = *(v23 + 160);
        v113 = *(v23 + 168);
        v114 = OUTLINED_FUNCTION_47();
        sub_261F6B73C(v114, v115);
        sub_261FDDA5C(v160, v112, v113, &v176);
        v117 = v176;
        v116 = v177;
        v118 = *(v23 + 160);
        v119 = *(v23 + 168);
        v120 = OUTLINED_FUNCTION_47();
        sub_261F6B73C(v120, v121);
        v122 = MEMORY[0x266721A20](v117, v116);
        sub_261FDDBE0(v122, v118, v119, &v176);
        v123 = sub_261FDC2A4(v176, v177);
        v124 = *(v23 + 160);
        v125 = *(v23 + 168);
        *(v23 + 160) = v123;
        *(v23 + 168) = v126;
        sub_261F6BFFC(v124, v125);
        v127 = *(v23 + 104);
        v128 = swift_allocObject();
        v128[2] = v52;
        v128[3] = v160;
        v128[4] = v161;
        v128[5] = v159;
        v128[6] = v117;
        v128[7] = v116;
        v180 = sub_261FE283C;
        v181 = v128;
        v176 = MEMORY[0x277D85DD0];
        v177 = 1107296256;
        v178 = sub_261F78F64;
        v179 = &block_descriptor_106;
        v129 = _Block_copy(&v176);

        v130 = v127;
        sub_261F6B73C(v117, v116);
        sub_262039FCC();
        v169 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_0_22();
        sub_261FC02FC(v131, v132);
        v133 = OUTLINED_FUNCTION_22_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v133, v134);
        sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
        sub_26203A75C();
        MEMORY[0x266722A20](0, v167, v164, v129);
        _Block_release(v129);

        OUTLINED_FUNCTION_20_6(&a12);
        v135 = OUTLINED_FUNCTION_72();
        v136(v135);
        v137 = OUTLINED_FUNCTION_24_4();
        v138(v137);

        if (*(*(v23 + 152) + 16))
        {
          sub_261F6BFFC(v172, v173);
          OUTLINED_FUNCTION_9_8();
          v139 = OUTLINED_FUNCTION_31_4();
          sub_261F6BFFC(v139, v116);
          OUTLINED_FUNCTION_27_3();
          goto LABEL_55;
        }

        sub_26203A63C();
        swift_unknownObjectRelease();
        v158 = OUTLINED_FUNCTION_31_4();
        sub_261F6BFFC(v158, v116);
        OUTLINED_FUNCTION_9_8();
LABEL_58:

        sub_261F6BFFC(v172, v173);
LABEL_56:
        OUTLINED_FUNCTION_31_0();
        return;
      case 3uLL:
        goto LABEL_15;
      default:
        v63 = 0;
        v65 = 0;
        v62 = BYTE6(v173);
        v64 = BYTE6(v173);
        goto LABEL_15;
    }
  }
}

void sub_261FDD938(uint64_t a1, uint64_t a2, void (*a3)(void *, void, uint64_t))
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_26203AD4C();
  sub_261F9D610();
  v4 = swift_allocError();
  sub_2620399DC();

  a3(v4, 0, 1);
}

uint64_t sub_261FDDA5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v9 = a2 >> 32;
        v10 = a2;
        break;
      case 2uLL:
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v10 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v11 = sub_261FE2704(v10, v9, a2, a3);
    if (v7 && v11 < v7)
    {
      switch(v5)
      {
        case 1:
          v12 = a2 >> 32;
          goto LABEL_11;
        case 2:
          v12 = *(a2 + 24);
          goto LABEL_13;
        default:
          goto LABEL_15;
      }
    }

    v12 = sub_261FE269C(v10, v7, a2, a3);
    result = 0;
    switch(v5)
    {
      case 1:
LABEL_11:
        result = a2;
        break;
      case 2:
LABEL_13:
        result = *(a2 + 16);
        break;
      default:
        break;
    }

    if (v12 >= result)
    {
LABEL_15:
      v13 = sub_2620394FC();
      v15 = v14;
      result = sub_261F6BFFC(a2, a3);
      *a4 = v13;
      a4[1] = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261FDDBE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = BYTE6(a3);
    v11 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v11 = a2;
        v9 = a2 >> 32;
        break;
      case 2uLL:
        v11 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v11 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v12 = sub_261FE2704(v11, v9, a2, a3);
    if (v7 && v12 < v7)
    {
      switch(v5)
      {
        case 2:
          goto LABEL_15;
        default:
          break;
      }
    }

    else
    {
      v13 = sub_261FE269C(v11, v7, a2, a3);
      v14 = 0;
      switch(v5)
      {
        case 1:
          v14 = a2 >> 32;
          break;
        case 2:
          v14 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v14 = v10;
          break;
      }

      if (v14 < v13)
      {
        __break(1u);
LABEL_15:
        v15 = *(a2 + 24);
      }
    }

    v16 = sub_2620394FC();
    v18 = v17;
    result = sub_261F6BFFC(a2, a3);
    *a4 = v16;
    a4[1] = v18;
  }

  return result;
}

void sub_261FDDD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_96();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = sub_262039FAC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_74();
  v145 = v29 - v28;
  v30 = sub_262039FEC();
  v31 = OUTLINED_FUNCTION_0(v30);
  v146 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_74();
  v144 = v36 - v35;
  v37 = sub_2620392DC();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_74();
  v45 = v44 - v43;
  v46 = v20[16];
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!v23[18])
  {
    goto LABEL_19;
  }

  v47 = v23[14];
  if (!v47)
  {
    goto LABEL_19;
  }

  v141 = v30;
  v48 = v23[15];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v143 = v47;
  v142 = v48;
  sub_261F7D45C(v47);
  v49 = sub_26203A60C();
  if ((v49 & 0x8000000000000000) != 0)
  {
    v50 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  v50 = v49;
  if (!v49)
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_17_6();
    sub_26203AD3C();
    v147 = v150;
    v148 = v151;
    OUTLINED_FUNCTION_17_6();
    sub_26203AD4C();
    v78 = v152;
    v79 = v153;
    v80 = sub_26203A48C();
    if (qword_27FEF8660 != -1)
    {
      OUTLINED_FUNCTION_6_11();
    }

    v81 = qword_27FEFA090;
    if (os_log_type_enabled(qword_27FEFA090, v80))
    {
      v82 = OUTLINED_FUNCTION_40_2();
      v147 = OUTLINED_FUNCTION_39_0();
      *v82 = 136446466;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v83 = v23[2];
      v84 = v23[3];

      v85 = sub_261F67FE4(v83, v84, &v147);

      *(v82 + 4) = v85;
      *(v82 + 12) = 2080;
      v152 = v78;
      v153 = v79;
      sub_261F9D610();
      v86 = sub_26203ACCC();
      v88 = sub_261F67FE4(v86, v87, &v147);

      *(v82 + 14) = v88;
      _os_log_impl(&dword_261F5B000, v81, v80, "%{public}s: %s", v82, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    v89 = v23[13];
    OUTLINED_FUNCTION_106();
    v90 = swift_allocObject();
    v90[2] = v143;
    v90[3] = v142;
    v90[4] = v78;
    v90[5] = v79;
    OUTLINED_FUNCTION_2_14(v90);
    v153 = 1107296256;
    OUTLINED_FUNCTION_1();
    v154 = v91;
    v155 = &block_descriptor_76;
    v92 = _Block_copy(&v152);
    v93 = OUTLINED_FUNCTION_28_4();
    sub_261F7D45C(v93);
    v94 = v89;
    sub_262039FCC();
    v147 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_0_22();
    sub_261FC02FC(v95, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v144, v145, v92);
    _Block_release(v92);
    OUTLINED_FUNCTION_19_4();
    swift_unknownObjectRelease();

    v97 = OUTLINED_FUNCTION_28_4();
    sub_261F665E4(v97);
    OUTLINED_FUNCTION_20_6(&a15);
    v98(v145, v24);
    (*(v146 + 8))(v144, v141);
    goto LABEL_18;
  }

  if (v49 >= 0x401)
  {
LABEL_6:
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v51 = v23[22];
    if (!v51[2])
    {
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_19_4();
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_16_8();
    v52 = v51[4];
    v53 = v51[5];
    v54 = v51[6];
    v55 = v51[7];
    v137 = v54;
    v56 = OUTLINED_FUNCTION_32_2();
    sub_261F6B73C(v56, v57);
    v140 = v55;

    sub_261FFB7AC();
    swift_endAccess();
    v58 = OUTLINED_FUNCTION_32_2();
    v59 = MEMORY[0x266721A20](v58);
    if (v50 - 1024 >= v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = v50 - 1024;
    }

    v61 = OUTLINED_FUNCTION_32_2();
    v63 = sub_261FDBC54(v61, v62, v23, v60);
    v64 = v63;
    if (v63 <= 0)
    {
      v136 = v52;
      if (v63 < 0)
      {
        sub_2620392BC();
        v114 = sub_2620392CC();
        (*(v40 + 8))(v45, v37);
        v101 = v114;
      }

      else
      {
        sub_261F9BCE0();
        OUTLINED_FUNCTION_17_6();
        sub_26203AD3C();
        v147 = v152;
        v148 = v153;
        sub_261F9D610();
        v100 = OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_17_6();
        sub_26203AD4C();
        v101 = v100;
        v102 = v100;
      }

      v115 = sub_26203A48C();
      if (qword_27FEF8660 != -1)
      {
        OUTLINED_FUNCTION_6_11();
      }

      v116 = qword_27FEFA090;
      if (os_log_type_enabled(qword_27FEFA090, v115))
      {
        v117 = OUTLINED_FUNCTION_40_2();
        v152 = OUTLINED_FUNCTION_39_0();
        *v117 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v118 = v23[2];
        v119 = v23[3];

        v120 = OUTLINED_FUNCTION_22_1();
        v123 = sub_261F67FE4(v120, v121, v122);

        *(v117 + 4) = v123;
        *(v117 + 12) = 2080;
        swift_getErrorValue();
        v124 = sub_26203ACCC();
        v126 = sub_261F67FE4(v124, v125, &v152);

        *(v117 + 14) = v126;
        _os_log_impl(&dword_261F5B000, v116, v115, "%{public}s: Connection send error: %s", v117, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      v127 = v23[13];
      OUTLINED_FUNCTION_14_1();
      v128 = swift_allocObject();
      v128[2] = v136;
      v128[3] = v53;
      v128[4] = v137;
      v128[5] = v140;
      v128[6] = v101;
      OUTLINED_FUNCTION_2_14(v128);
      v153 = 1107296256;
      OUTLINED_FUNCTION_1();
      v154 = v129;
      v155 = &block_descriptor_82;
      v139 = _Block_copy(&v152);
      sub_261F6B73C(v136, v53);

      v130 = v127;
      sub_262039FCC();
      v149 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_0_22();
      sub_261FC02FC(v131, v132);
      v133 = OUTLINED_FUNCTION_28();
      __swift_instantiateConcreteTypeFromMangledNameV2(v133, v134);
      sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
      sub_26203A75C();
      MEMORY[0x266722A20](0, v144, v145, v139);
      _Block_release(v139);

      OUTLINED_FUNCTION_19_4();
      swift_unknownObjectRelease();
      sub_261F6BFFC(v136, v53);

      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_20_6(&a15);
      v135(v145, v24);
      (*(v146 + 8))(v144, v141);
    }

    else
    {
      v65 = OUTLINED_FUNCTION_32_2();
      v66 = v53;
      if (v64 >= MEMORY[0x266721A20](v65))
      {
        v103 = v23[13];
        OUTLINED_FUNCTION_106();
        v104 = swift_allocObject();
        v104[2] = v52;
        v104[3] = v53;
        v104[4] = v137;
        v104[5] = v140;
        OUTLINED_FUNCTION_2_14(v104);
        v153 = 1107296256;
        OUTLINED_FUNCTION_1();
        v154 = v105;
        v155 = &block_descriptor_88;
        v106 = _Block_copy(&v152);
        v107 = OUTLINED_FUNCTION_35_3();
        sub_261F6B73C(v107, v108);

        v138 = v103;
        sub_262039FCC();
        v147 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_0_22();
        sub_261FC02FC(v109, v110);
        v111 = OUTLINED_FUNCTION_22_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v111, v112);
        sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
        sub_26203A75C();
        MEMORY[0x266722A20](0, v144, v145, v106);
        _Block_release(v106);

        OUTLINED_FUNCTION_20_6(&a15);
        v113(v145, v24);
        (*(v146 + 8))(v144, v30);

        if (*(v23[22] + 16))
        {
          OUTLINED_FUNCTION_8_7();
          sub_261F6BFFC(v52, v66);
          OUTLINED_FUNCTION_19_4();
        }

        else
        {
          sub_26203A63C();
          OUTLINED_FUNCTION_8_7();
          sub_261F6BFFC(v52, v66);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v67 = OUTLINED_FUNCTION_35_3();
        sub_261F6B73C(v67, v68);
        v69 = OUTLINED_FUNCTION_28();
        sub_261FDDBE0(v69, v70, v53, v71);
        OUTLINED_FUNCTION_16_8();

        v72 = OUTLINED_FUNCTION_72();
        sub_261F6B73C(v72, v73);

        sub_261FFB6AC(0, 0, v152, v153, v137, v140);
        swift_endAccess();
        v74 = OUTLINED_FUNCTION_72();
        sub_261F6BFFC(v74, v75);

        OUTLINED_FUNCTION_8_7();
        v76 = OUTLINED_FUNCTION_35_3();
        sub_261F6BFFC(v76, v77);
        OUTLINED_FUNCTION_19_4();
        swift_unknownObjectRelease();
      }
    }

LABEL_18:

LABEL_19:
    OUTLINED_FUNCTION_31_0();
    return;
  }

  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_31_0();

  swift_unknownObjectRelease();
}

uint64_t sub_261FDE9B4(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_261F9D610();
  v7 = swift_allocError();
  *v8 = a3;
  v8[1] = a4;
  __src[0] = v7;
  sub_261F65314(__src);
  memcpy(__dst, __src, 0x92uLL);

  a1(__dst);
  memcpy(v12, __dst, 0x92uLL);
  return sub_261F6A760(v12);
}