uint64_t sub_26202C798()
{
  swift_beginAccess();
  if (*(v0 + 88))
  {
    v1 = *(v0 + 16);
    return sub_262039EFC();
  }

  else
  {
    result = sub_26203A91C();
    __break(1u);
  }

  return result;
}

uint64_t BonjourBrowser.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_262039F7C();

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 40));
  v3 = *(v1 + 96);
  sub_261F665E4(*(v1 + 88));
  v4 = *(v1 + 104);

  return v1;
}

uint64_t BonjourBrowser.__deallocating_deinit()
{
  BonjourBrowser.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

unint64_t sub_26202C8E4()
{
  result = qword_27FEFA9E8;
  if (!qword_27FEFA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9E8);
  }

  return result;
}

unint64_t sub_26202C93C()
{
  result = qword_27FEFA9F0;
  if (!qword_27FEFA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9F0);
  }

  return result;
}

void sub_26202CACC()
{
  type metadata accessor for DiscoveredBonjourAdvert();
  if (v0 <= 0x3F)
  {
    sub_26202CB60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26202CB60()
{
  if (!qword_27FEFAA08)
  {
    sub_261F9B6D0(255, &qword_27FEFAA10, 0x277D028D8);
    v0 = sub_26203A6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEFAA08);
    }
  }
}

_BYTE *sub_26202CBC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26202CCA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_261FA3914(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E8, &qword_26203F6D0);
  sub_26203A8EC();
  v9 = (*(v13 + 56) + 16 * v6);
  v10 = *v9;
  v11 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF99C0, &qword_26203F7F8);
  sub_26203A90C();
  *v2 = v13;
  return v10;
}

double sub_26202CD88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_261FA3868(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98A8, &unk_2620447A0);
    v11 = OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_32_6(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23);
    v19 = (*(v6 + 56) + 48 * v9);
    v20 = v19[1];
    *a3 = *v19;
    a3[1] = v20;
    a3[2] = v19[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    sub_26202D208();
    OUTLINED_FUNCTION_29_10();
    sub_26203A90C();
    *v4 = v6;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_26202CE60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_261FA3868(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF98C0, &qword_26203F6A0);
    v11 = OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_32_6(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
    sub_261F797BC((*(v6 + 56) + 40 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
    sub_26202D208();
    OUTLINED_FUNCTION_29_10();
    sub_26203A90C();
    *v4 = v6;
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

uint64_t sub_26202CF44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_261FA3958();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9888, &qword_26203F678);
    sub_26203A8EC();
    v10 = *(v18 + 48);
    v11 = sub_262039A7C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v18 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
    sub_261FA52A8(v12 + *(*(v13 - 8) + 72) * v7, a1);
    sub_26202D1C0(&qword_27FEF9898, MEMORY[0x277CD8B10]);
    sub_26203A90C();
    *v2 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
    v14 = a1;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t sub_26202D0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26202D168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26202D1C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26202D208()
{
  result = qword_28108CBA0[0];
  if (!qword_28108CBA0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF98B0, &unk_26203F690);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108CBA0);
  }

  return result;
}

void OUTLINED_FUNCTION_30_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 168);

  _os_log_impl(a1, v8, v4, a4, v5, 0x16u);
}

uint64_t sub_26202D2F4()
{
  v0 = sub_26203A53C();
  v1 = OUTLINED_FUNCTION_6_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_74();
  v4 = sub_262039FEC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_74();
  v6 = sub_26203A56C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v14 = v13 - v12;
  sub_261F6935C();
  (*(v9 + 104))(v14, *MEMORY[0x277D85268], v6);
  sub_262039FCC();
  sub_262030710(&qword_28108CFB8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA0A0, &unk_262040360);
  sub_261FCB93C();
  sub_26203A75C();
  result = sub_26203A58C();
  qword_27FEFAA30 = result;
  return result;
}

id defaultPairingOperationQ.getter()
{
  if (qword_27FEF8718 != -1)
  {
    swift_once();
  }

  v1 = qword_27FEFAA30;

  return v1;
}

uint64_t AttemptPairingPinCommand.pinAttempt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26202D584(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D657474416E6970 && a2 == 0xEA00000000007470)
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

uint64_t sub_26202D624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202D584(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26202D650(uint64_t a1)
{
  v2 = sub_26202D7D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202D68C(uint64_t a1)
{
  v2 = sub_26202D7D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void AttemptPairingPinCommand.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA38, &qword_26204AEA0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  OUTLINED_FUNCTION_42_0(v3, v3[3]);
  sub_26202D7D8();
  sub_26203AE5C();
  sub_26203AAFC();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_26202D7D8()
{
  result = qword_27FEFAA40;
  if (!qword_27FEFAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAA40);
  }

  return result;
}

void AttemptPairingPinCommand.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA48, &qword_26204AEA8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v9 = v2[4];
  OUTLINED_FUNCTION_42_0(v2, v2[3]);
  sub_26202D7D8();
  OUTLINED_FUNCTION_31();
  if (!v0)
  {
    OUTLINED_FUNCTION_52_0();
    v10 = sub_26203A9EC();
    v12 = v11;
    v13 = OUTLINED_FUNCTION_20_0();
    v14(v13);
    *v4 = v10;
    v4[1] = v12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

uint64_t PairingChallengeEvent.throttleSeconds.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

RemotePairingDevice::PairingChallengeEvent __swiftcall PairingChallengeEvent.init(lastAttemptIncorrect:throttleSeconds:)(Swift::Bool lastAttemptIncorrect, Swift::Int_optional throttleSeconds)
{
  *v2 = lastAttemptIncorrect;
  *(v2 + 8) = throttleSeconds.value;
  *(v2 + 16) = throttleSeconds.is_nil;
  result.throttleSeconds = throttleSeconds;
  result.lastAttemptIncorrect = lastAttemptIncorrect;
  return result;
}

uint64_t sub_26202D9A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000026204C5F0 == a2;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C74746F726874 && a2 == 0xEF73646E6F636553)
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

uint64_t sub_26202DA78(char a1)
{
  if (a1)
  {
    return 0x656C74746F726874;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_26202DAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202D9A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26202DAF0(uint64_t a1)
{
  v2 = sub_26202DCC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202DB2C(uint64_t a1)
{
  v2 = sub_26202DCC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void PairingChallengeEvent.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA50, &qword_26204AEB0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v12 = *v0;
  v14[1] = *(v0 + 1);
  v15 = v0[16];
  v13 = v3[4];
  OUTLINED_FUNCTION_42_0(v3, v3[3]);
  sub_26202DCC4();
  sub_26203AE5C();
  sub_26203AB0C();
  if (!v1)
  {
    sub_26203AACC();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_26202DCC4()
{
  result = qword_27FEFAA58;
  if (!qword_27FEFAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAA58);
  }

  return result;
}

void PairingChallengeEvent.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA60, &qword_26204AEB8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v9 = v2[4];
  OUTLINED_FUNCTION_42_0(v2, v2[3]);
  sub_26202DCC4();
  OUTLINED_FUNCTION_31();
  if (!v0)
  {
    OUTLINED_FUNCTION_52_0();
    v10 = sub_26203A9FC();
    OUTLINED_FUNCTION_52_0();
    v11 = sub_26203A9BC();
    v13 = v12;
    v14 = OUTLINED_FUNCTION_20_0();
    v15(v14);
    *v4 = v10 & 1;
    *(v4 + 8) = v11;
    *(v4 + 16) = v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_26202DE9C(uint64_t a1)
{
  v2 = sub_26202E014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202DED8(uint64_t a1)
{
  v2 = sub_26202E014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CancelPairingCommand.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA68, &qword_26204AEC0);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  OUTLINED_FUNCTION_42_0(a1, a1[3]);
  sub_26202E014();
  sub_26203AE5C();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_26202E014()
{
  result = qword_27FEFAA70;
  if (!qword_27FEFAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAA70);
  }

  return result;
}

uint64_t sub_26202E0C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2003789939 && a2 == 0xE400000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26203AC0C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26202E21C(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 2003789939;
      break;
    case 2:
      result = 0x73736563637573;
      break;
    case 3:
      result = 0x6572756C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26202E294(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_26202E31C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235952 && a2 == 0xE300000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44676E69646E6573 && a2 == 0xED00006563697665)
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

uint64_t sub_26202E3EC(char a1)
{
  if (a1)
  {
    return 0x44676E69646E6573;
  }

  else
  {
    return 7235952;
  }
}

uint64_t sub_26202E430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202E0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26202E458(uint64_t a1)
{
  v2 = sub_26202ED18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E494(uint64_t a1)
{
  v2 = sub_26202ED18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26202E4D0(uint64_t a1)
{
  v2 = sub_26202EECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E50C(uint64_t a1)
{
  v2 = sub_26202EECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26202E54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202E294(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26202E578(uint64_t a1)
{
  v2 = sub_26202EDD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E5B4(uint64_t a1)
{
  v2 = sub_26202EDD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26202E5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202E31C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26202E620(uint64_t a1)
{
  v2 = sub_26202EE78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E65C(uint64_t a1)
{
  v2 = sub_26202EE78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26202E698(uint64_t a1)
{
  v2 = sub_26202EE24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E6D4(uint64_t a1)
{
  v2 = sub_26202EE24();

  return MEMORY[0x2821FE720](a1, v2);
}

void CodableDeviceInitiatedPairingBeaconingSessionEvent.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v88 = v1;
  v86 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA78, &qword_26204AEC8);
  v5 = OUTLINED_FUNCTION_0(v4);
  v84 = v6;
  v85 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v81 = v10;
  v11 = sub_2620397FC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v82 = v13;
  v83 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74();
  v80 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA80, &qword_26204AED0);
  v19 = OUTLINED_FUNCTION_0(v18);
  v75 = v20;
  v76 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_44();
  v74 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA88, &qword_26204AED8);
  v26 = OUTLINED_FUNCTION_0(v25);
  v78 = v27;
  v79 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_44();
  v77 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA90, &qword_26204AEE0);
  OUTLINED_FUNCTION_0(v32);
  v73 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v36);
  v38 = &v73 - v37;
  v39 = type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent();
  v40 = OUTLINED_FUNCTION_6_1(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  v45 = (v44 - v43);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA98, &qword_26204AEE8);
  OUTLINED_FUNCTION_0(v46);
  v87 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v50);
  v51 = v3[4];
  OUTLINED_FUNCTION_42_0(v3, v3[3]);
  sub_26202ED18();
  sub_26203AE5C();
  sub_26202ED6C(v86, v45);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v67 = v82;
      v66 = v83;
      v68 = v80;
      (*(v82 + 32))(v80, v45, v83);
      sub_26202EDD0();
      v69 = v81;
      sub_26203AA9C();
      OUTLINED_FUNCTION_3_22();
      sub_262030710(v70, v71);
      v72 = v85;
      sub_26203AB3C();
      (*(v84 + 8))(v69, v72);
      (*(v67 + 8))(v68, v66);
      v60 = OUTLINED_FUNCTION_12_16();
      v62 = v46;
      goto LABEL_9;
    case 2u:
      sub_26202EECC();
      OUTLINED_FUNCTION_15_10();
      (*(v73 + 8))(v38, v32);
      goto LABEL_7;
    case 3u:
      sub_26202EE24();
      v63 = v74;
      OUTLINED_FUNCTION_15_10();
      (*(v75 + 8))(v63, v76);
LABEL_7:
      v64 = OUTLINED_FUNCTION_12_16();
      v65(v64, v46);
      break;
    default:
      v52 = *v45;
      v53 = v45[1];
      v55 = v45[2];
      v54 = v45[3];
      sub_26202EE78();
      v56 = v77;
      v57 = v46;
      OUTLINED_FUNCTION_15_10();
      v58 = v79;
      v59 = v88;
      sub_26203AAFC();

      if (!v59)
      {
        sub_26203AAAC();
      }

      (*(v78 + 8))(v56, v58);
      v60 = OUTLINED_FUNCTION_12_16();
      v62 = v57;
LABEL_9:
      v61(v60, v62);
      break;
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent()
{
  result = qword_27FEFAB00;
  if (!qword_27FEFAB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26202ED18()
{
  result = qword_27FEFAAA0;
  if (!qword_27FEFAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAA0);
  }

  return result;
}

uint64_t sub_26202ED6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26202EDD0()
{
  result = qword_27FEFAAA8;
  if (!qword_27FEFAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAA8);
  }

  return result;
}

unint64_t sub_26202EE24()
{
  result = qword_27FEFAAB8;
  if (!qword_27FEFAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAB8);
  }

  return result;
}

unint64_t sub_26202EE78()
{
  result = qword_27FEFAAC0;
  if (!qword_27FEFAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAC0);
  }

  return result;
}

unint64_t sub_26202EECC()
{
  result = qword_27FEFAAC8;
  if (!qword_27FEFAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAC8);
  }

  return result;
}

void CodableDeviceInitiatedPairingBeaconingSessionEvent.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v120 = v0;
  v2 = v1;
  v114 = v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAD0, &qword_26204AEF0);
  OUTLINED_FUNCTION_0(v113);
  v116 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v115 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAD8, &qword_26204AEF8);
  v10 = OUTLINED_FUNCTION_0(v9);
  v107 = v11;
  v108 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_44();
  v112 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAE0, &qword_26204AF00);
  v17 = OUTLINED_FUNCTION_0(v16);
  v109 = v18;
  v110 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_44();
  v118 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAE8, &qword_26204AF08);
  v24 = OUTLINED_FUNCTION_0(v23);
  v105 = v25;
  v106 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_44();
  v111 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAF0, &unk_26204AF10);
  OUTLINED_FUNCTION_0(v30);
  v117 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v34);
  v36 = v99 - v35;
  v37 = type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent();
  v38 = OUTLINED_FUNCTION_6_1(v37);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = v99 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = (v99 - v45);
  MEMORY[0x28223BE20](v44);
  v48 = v99 - v47;
  v50 = v2[3];
  v49 = v2[4];
  v119 = v2;
  OUTLINED_FUNCTION_42_0(v2, v50);
  sub_26202ED18();
  v51 = v120;
  sub_26203AE3C();
  if (v51)
  {
    goto LABEL_9;
  }

  v103 = v43;
  v101 = v46;
  v52 = v118;
  v120 = v48;
  v53 = sub_26203AA7C();
  sub_261F99084(v53, 0);
  if (v55 == v56 >> 1)
  {
LABEL_8:
    v71 = sub_26203A81C();
    swift_allocError();
    v73 = v72;
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0) + 48);
    *v73 = v37;
    sub_26203A98C();
    sub_26203A80C();
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D84160], v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v117 + 8))(v36, v30);
LABEL_9:
    v75 = v119;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    OUTLINED_FUNCTION_38_0();
    return;
  }

  v104 = v36;
  v102 = v30;
  v100 = 0;
  if (v55 < (v56 >> 1))
  {
    v57 = *(v54 + v55);
    sub_261F99070(v55 + 1);
    v59 = v58;
    v61 = v60;
    swift_unknownObjectRelease();
    v62 = v115;
    v63 = v116;
    if (v59 == v61 >> 1)
    {
      v64 = v102;
      v99[1] = v37;
      v66 = v113;
      v65 = v114;
      switch(v57)
      {
        case 1:
          sub_26202EE78();
          v85 = v52;
          OUTLINED_FUNCTION_4_17();
          v86 = v110;
          v87 = sub_26203A9EC();
          v89 = v88;
          v90 = sub_26203A99C();
          v91 = v86;
          v92 = (v109 + 8);
          v93 = (v117 + 8);
          v100 = 0;
          v94 = v90;
          v96 = v95;
          swift_unknownObjectRelease();
          (*v92)(v85, v91);
          (*v93)(v104, v102);
          v97 = v101;
          *v101 = v87;
          v97[1] = v89;
          v97[2] = v94;
          v97[3] = v96;
          OUTLINED_FUNCTION_8_15();
          swift_storeEnumTagMultiPayload();
          v98 = v97;
          v70 = v120;
          sub_26202F7F8(v98, v120);
          v79 = v119;
          v65 = v114;
          goto LABEL_14;
        case 2:
          sub_26202EE24();
          v76 = v112;
          OUTLINED_FUNCTION_4_17();
          swift_unknownObjectRelease();
          (*(v107 + 8))(v76, v108);
          v77 = OUTLINED_FUNCTION_5_14();
          v78(v77);
          v70 = v120;
          OUTLINED_FUNCTION_8_15();
          goto LABEL_12;
        case 3:
          sub_26202EDD0();
          OUTLINED_FUNCTION_4_17();
          sub_2620397FC();
          v80 = v62;
          OUTLINED_FUNCTION_3_22();
          sub_262030710(v81, v82);
          v83 = v103;
          sub_26203AA2C();
          v84 = v117;
          swift_unknownObjectRelease();
          (*(v63 + 8))(v80, v66);
          (*(v84 + 8))(v104, v64);
          swift_storeEnumTagMultiPayload();
          v70 = v120;
          sub_26202F7F8(v83, v120);
          goto LABEL_13;
        default:
          sub_26202EECC();
          v67 = v111;
          OUTLINED_FUNCTION_4_17();
          swift_unknownObjectRelease();
          (*(v105 + 8))(v67, v106);
          v68 = OUTLINED_FUNCTION_5_14();
          v69(v68);
          v70 = v120;
          OUTLINED_FUNCTION_8_15();
LABEL_12:
          swift_storeEnumTagMultiPayload();
LABEL_13:
          v79 = v119;
LABEL_14:
          sub_26202F7F8(v70, v65);
          v75 = v79;
          break;
      }

      goto LABEL_10;
    }

    v30 = v102;
    v36 = v104;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_26202F7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26202F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice0B7OutcomeO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }
}

uint64_t sub_26202F918(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >> 1 >= 0xFFF && *(a1 + 17))
    {
      v2 = *a1 + 8189;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) | (4 * ((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3 | (((*(a1 + 16) >> 1) & 0x1F) << 6)))) ^ 0x1FFF;
      if (v2 >= 0x1FFD)
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

uint64_t sub_26202F984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 8190;
    *(result + 8) = 0;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x7FF | ((-a2 & 0x1FFF) << 11);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = (v3 >> 5) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_26202FA08(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
    *result &= 0xFFFFFFFFFFFFFF9uLL;
    *(result + 16) = v2;
  }

  else
  {
    *result = (a2 - 2) & 1 | (8 * ((a2 - 2) >> 1));
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingChallengeEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for PairingChallengeEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice0c9InitiatedB21BeaconingSessionEventO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_26202FB3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26202FB7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
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

uint64_t sub_26202FBC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_26202FBF0()
{
  sub_26202FC64();
  if (v0 <= 0x3F)
  {
    sub_26202FCDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26202FC64()
{
  if (!qword_27FEFAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9A60, &unk_26203E650);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FEFAB10);
    }
  }
}

void sub_26202FCDC()
{
  if (!qword_27FEFAB18)
  {
    v0 = sub_2620397FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEFAB18);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CodableDeviceInitiatedPairingBeaconingSessionEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26202FE50(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26202FF2C(_BYTE *result, int a2, int a3)
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

unint64_t sub_26202FFDC()
{
  result = qword_27FEFAB20;
  if (!qword_27FEFAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB20);
  }

  return result;
}

unint64_t sub_262030034()
{
  result = qword_27FEFAB28;
  if (!qword_27FEFAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB28);
  }

  return result;
}

unint64_t sub_26203008C()
{
  result = qword_27FEFAB30;
  if (!qword_27FEFAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB30);
  }

  return result;
}

unint64_t sub_2620300E4()
{
  result = qword_27FEFAB38;
  if (!qword_27FEFAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB38);
  }

  return result;
}

unint64_t sub_26203013C()
{
  result = qword_27FEFAB40;
  if (!qword_27FEFAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB40);
  }

  return result;
}

unint64_t sub_262030194()
{
  result = qword_27FEFAB48;
  if (!qword_27FEFAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB48);
  }

  return result;
}

unint64_t sub_2620301EC()
{
  result = qword_27FEFAB50;
  if (!qword_27FEFAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB50);
  }

  return result;
}

unint64_t sub_262030244()
{
  result = qword_27FEFAB58;
  if (!qword_27FEFAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB58);
  }

  return result;
}

unint64_t sub_26203029C()
{
  result = qword_27FEFAB60;
  if (!qword_27FEFAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB60);
  }

  return result;
}

unint64_t sub_2620302F4()
{
  result = qword_27FEFAB68;
  if (!qword_27FEFAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB68);
  }

  return result;
}

unint64_t sub_26203034C()
{
  result = qword_27FEFAB70;
  if (!qword_27FEFAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB70);
  }

  return result;
}

unint64_t sub_2620303A4()
{
  result = qword_27FEFAB78;
  if (!qword_27FEFAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB78);
  }

  return result;
}

unint64_t sub_2620303FC()
{
  result = qword_27FEFAB80;
  if (!qword_27FEFAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB80);
  }

  return result;
}

unint64_t sub_262030454()
{
  result = qword_27FEFAB88;
  if (!qword_27FEFAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB88);
  }

  return result;
}

unint64_t sub_2620304AC()
{
  result = qword_27FEFAB90;
  if (!qword_27FEFAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB90);
  }

  return result;
}

unint64_t sub_262030504()
{
  result = qword_27FEFAB98;
  if (!qword_27FEFAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB98);
  }

  return result;
}

unint64_t sub_26203055C()
{
  result = qword_27FEFABA0;
  if (!qword_27FEFABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABA0);
  }

  return result;
}

unint64_t sub_2620305B4()
{
  result = qword_27FEFABA8;
  if (!qword_27FEFABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABA8);
  }

  return result;
}

unint64_t sub_26203060C()
{
  result = qword_27FEFABB0;
  if (!qword_27FEFABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABB0);
  }

  return result;
}

unint64_t sub_262030664()
{
  result = qword_27FEFABB8;
  if (!qword_27FEFABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABB8);
  }

  return result;
}

unint64_t sub_2620306BC()
{
  result = qword_27FEFABC0;
  if (!qword_27FEFABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABC0);
  }

  return result;
}

uint64_t sub_262030710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_17()
{
  v2 = *(v0 - 224);

  return sub_26203A97C();
}

uint64_t JSONDataBasedControlChannelTransport.startReceivingMessages(usingEventHandler:)()
{
  OUTLINED_FUNCTION_35_5();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_14_1();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v0;
  v5[4] = v4;
  v5[5] = v3;
  v5[6] = v2;

  sub_2620310EC();
}

uint64_t JSONDataBasedControlChannelTransport.send(message:invokingCompletionHandlerOn:completion:)(const void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_26203933C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_26203932C();
  memcpy(__dst, a1, 0x92uLL);
  sub_261FECEFC();
  sub_26203931C();

  v16 = OUTLINED_FUNCTION_122();
  if (MEMORY[0x266721A20](v16) >= 0x10000)
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_26203A7CC();

    __dst[0] = 0xD000000000000026;
    __dst[1] = 0x8000000262052C20;
    v17 = OUTLINED_FUNCTION_122();
    v36 = MEMORY[0x266721A20](v17);
    v18 = sub_26203ABAC();
    MEMORY[0x266722710](v18);

    MEMORY[0x266722710](0x736574796220, 0xE600000000000000);
    __dst[3] = MEMORY[0x277D837D0];
    LOBYTE(__dst[4]) = 1;
    sub_261F65C5C();
    v19 = swift_allocError();
    v21 = v20;
    *v20 = 3;
    LOBYTE(v36) = 3;
    v22 = ControlChannelConnectionError.Message.format(code:)(&v36);
    sub_261F65C08(__dst);
    *(v21 + 8) = v22;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 7) = 0;
    a3(v19);

    v23 = OUTLINED_FUNCTION_122();
    return sub_261F6BFFC(v23, v24);
  }

  if (qword_28108B5A0 != -1)
  {
    OUTLINED_FUNCTION_1_24();
  }

  __dst[0] = qword_2810955A0;
  __dst[1] = *algn_2810955A8;
  sub_261F6B73C(qword_2810955A0, *algn_2810955A8);
  v25 = OUTLINED_FUNCTION_122();
  v26 = MEMORY[0x266721A20](v25);
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v26 >> 16))
  {
    sub_26200BB44(bswap32(v26) >> 16);
    result = MEMORY[0x266721A20](__dst[0], __dst[1]);
    v15 = result;
    if (qword_28108B5A8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  result = OUTLINED_FUNCTION_0_34();
LABEL_8:
  v35 = a5;
  if (v15 == qword_2810955B0)
  {
    OUTLINED_FUNCTION_122();
    sub_26203958C();
    v28 = __dst[0];
    v29 = __dst[1];
    v30 = swift_allocObject();
    v30[2] = a2;
    v30[3] = a3;
    v30[4] = a4;
    v31 = *(a6 + 24);
    v32 = a2;

    v31(v28, v29, sub_2620319EC, v30, v35, a6);

    v33 = OUTLINED_FUNCTION_122();
    sub_261F6BFFC(v33, v34);
    v23 = v28;
    v24 = v29;
    return sub_261F6BFFC(v23, v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_262030C44()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_28108B648 = result;
  return result;
}

uint64_t sub_262030CAC()
{
  if (qword_28108B5A0 != -1)
  {
    result = OUTLINED_FUNCTION_1_24();
  }

  v0 = 0;
  switch(*algn_2810955A8 >> 62)
  {
    case 1:
      LODWORD(v0) = HIDWORD(qword_2810955A0) - qword_2810955A0;
      if (__OFSUB__(HIDWORD(qword_2810955A0), qword_2810955A0))
      {
        goto LABEL_11;
      }

      v0 = v0;
      goto LABEL_8;
    case 2:
      v2 = *(qword_2810955A0 + 16);
      v1 = *(qword_2810955A0 + 24);
      v3 = __OFSUB__(v1, v2);
      v0 = v1 - v2;
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    case 3:
      goto LABEL_8;
    default:
      v0 = algn_2810955A8[6];
LABEL_8:
      v3 = __OFADD__(v0, 2);
      v4 = v0 + 2;
      if (v3)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
      }

      else
      {
        qword_2810955B0 = v4;
      }

      return result;
  }
}

uint64_t sub_262030D58()
{
  v0 = sub_26203A1FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26203A1EC();
  v5 = sub_26203A1CC();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_2810955A0 = v5;
    *algn_2810955A8 = v7;
  }

  return result;
}

uint64_t sub_262030E68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  aBlock[3] = &block_descriptor_14;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  sub_262039FCC();
  v21[1] = MEMORY[0x277D84F90];
  sub_261F9B65C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_2620310EC()
{
  OUTLINED_FUNCTION_35_5();
  if (qword_28108B5A8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v5 = qword_2810955B0;
  OUTLINED_FUNCTION_14_1();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v1;
  v7 = *(v0 + 16);

  swift_unknownObjectRetain();
  v7(v5, v5, sub_262031A90, v6, v2, v0);
}

uint64_t sub_2620311CC(id a1, unint64_t a2, char a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  if (a3)
  {
    v11 = a1;
LABEL_36:
    swift_willThrow();
    __src[0] = v10;
    sub_261FEDD8C(__src);
    memcpy(v35, __src, 0x93uLL);
    v34 = v10;
    a4(v35);

    memcpy(__dst, v35, 0x93uLL);
    return sub_262031A20(__dst);
  }

  if (qword_28108B5A0 != -1)
  {
    swift_once();
  }

  sub_26200F7A8();
  if ((v15 & 1) == 0)
  {
    v20 = 0x8000000262050E90;
    __dst[3] = MEMORY[0x277D837D0];
    v21 = 0xD00000000000001ALL;
LABEL_35:
    __dst[0] = v21;
    __dst[1] = v20;
    LOBYTE(__dst[4]) = 1;
    sub_261F65C5C();
    v10 = swift_allocError();
    v32 = v31;
    *v31 = 2;
    LOBYTE(__src[0]) = 2;
    v33 = ControlChannelConnectionError.Message.format(code:)(__src);
    sub_261F65C08(__dst);
    *(v32 + 8) = v33;
    *(v32 + 24) = 0u;
    *(v32 + 40) = 0u;
    *(v32 + 7) = 0;
    goto LABEL_36;
  }

  result = MEMORY[0x266721A20](qword_2810955A0, *algn_2810955A8);
  v17 = a2 >> 62;
  v18 = 0;
  v19 = v10;
  switch(a2 >> 62)
  {
    case 1uLL:
      v18 = v10;
      break;
    case 2uLL:
      v18 = *(v10 + 16);
      break;
    default:
      break;
  }

  v22 = __OFADD__(v18, result);
  v23 = v18 + result;
  if (v22)
  {
    __break(1u);
    goto LABEL_38;
  }

  v24 = v23 + 2;
  if (__OFADD__(v23, 2))
  {
LABEL_38:
    __break(1u);
    return result;
  }

  switch(v17)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v19 = *(v10 + 16);
LABEL_16:
      if (v23 < v19)
      {
        goto LABEL_34;
      }

      if (v17 == 2)
      {
        v25 = *(v10 + 24);
      }

      else
      {
        v25 = v10 >> 32;
      }

      break;
    case 3:
      if (v23 < 0)
      {
        goto LABEL_34;
      }

      if (v24 > 0 || __OFSUB__(v23, v24))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    default:
      if (v23 < 0)
      {
        goto LABEL_34;
      }

      v25 = BYTE6(a2);
      break;
  }

  if (v23 >= v24 || v25 < v24)
  {
LABEL_34:
    v20 = 0x8000000262050EB0;
    __dst[3] = MEMORY[0x277D837D0];
    v21 = 0xD00000000000001CLL;
    goto LABEL_35;
  }

LABEL_25:
  v27 = sub_261F6BE04(v10, a2, result);
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v29 = *(a8 + 16);

  v29(v27, v27, sub_261FEDD98, v28, a7, a8);
}

uint64_t sub_262031514(void *__src, uint64_t a2, char a3, void (*a4)(uint64_t *))
{
  if (a3)
  {
    *__dst = __src;
    v6 = sub_261FEDD8C(__dst);
    OUTLINED_FUNCTION_3_23(v6, v7, v8, v9, v10, v11, v12, v13, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16], v28[17], v28[18], __dst[0]);
    v14 = __src;
    a4(v28);
  }

  else
  {
    v15 = sub_26203930C();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_2620392FC();
    sub_261FECEA8();
    sub_2620392EC();
    memcpy(v27, __srca, 0x92uLL);
    memcpy(__dst, __srca, 0x92uLL);
    v18 = sub_262031A88(__dst);
    OUTLINED_FUNCTION_3_23(v18, v19, v20, v21, v22, v23, v24, v25, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16], v28[17], v28[18], __dst[0]);
    sub_261FBCBCC(v27, v30);
    a4(v28);

    sub_261FBCC40(v27);
  }

  memcpy(v30, v28, 0x93uLL);
  return sub_262031A20(v30);
}

uint64_t sub_26203168C(void *__src, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    memcpy(v32, __src, 0x93uLL);
    if (sub_261F65308(v32) == 1)
    {
      v13 = *nullsub_1(v32);
      v14 = sub_26203A48C();
      if (qword_28108B640 != -1)
      {
        swift_once();
      }

      v15 = qword_28108B648;
      if (os_log_type_enabled(qword_28108B648, v14))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v31[0] = v17;
        *v16 = 136446466;
        v30[0] = v12;
        v18 = (*(*(a6 + 8) + 8))(a5);
        v20 = sub_261F67FE4(v18, v19, v31);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        __srca[0] = v13;
        memcpy(v30, __dst, 0x93uLL);
        v21 = *nullsub_1(v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v22 = sub_26203A20C();
        v24 = sub_261F67FE4(v22, v23, v31);

        *(v16 + 14) = v24;
        _os_log_impl(&dword_261F5B000, v15, v14, "%{public}s: received error reading message: %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v17, -1, -1);
        MEMORY[0x266724180](v16, -1, -1);
      }

      __srca[0] = v13;
      sub_261F65314(__srca);
      memcpy(v28, __srca, 0x92uLL);
      memcpy(v30, __dst, 0x93uLL);
      v25 = *nullsub_1(v30);
      a3(v28);
      swift_unknownObjectRelease();
      memcpy(v31, v28, 0x92uLL);
      return sub_261F6A760(v31);
    }

    else
    {
      v26 = nullsub_1(v32);
      memcpy(__srca, v26, 0x92uLL);
      sub_261FEDDA4(__srca);
      memcpy(v28, __srca, 0x92uLL);
      memcpy(v30, __src, 0x93uLL);
      v27 = nullsub_1(v30);
      sub_261FBCBCC(v27, v31);
      a3(v28);
      memcpy(v31, v28, 0x92uLL);
      sub_261F6A760(v31);
      JSONDataBasedControlChannelTransport.startReceivingMessages(usingEventHandler:)(a3, a4, a5, a6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_262031A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA170, &qword_262043EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262031AA4(uint64_t a1)
{
  sub_261F9EF94(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  if (swift_dynamicCast())
  {
    return v2[4];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_262031B08(uint64_t a1)
{
  sub_261F9EF94(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  if (swift_dynamicCast())
  {
    return v2[39];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_262031B84(uint64_t a1)
{
  sub_261F9EF94(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  v1 = swift_dynamicCast();
  v2 = v4[4];
  if (!v1)
  {
    return 0;
  }

  return v2;
}

double sub_262031BF4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_261F9EF94(a1, &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a2 = xmmword_26203F730;
  }

  return result;
}

uint64_t sub_262031C8C(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v22 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v22;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v22 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_26203A82C();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v20 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_261FE415C(result, a2, 10);
  v20 = v21;
LABEL_65:

  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t DiscoveredBonjourAdvert.debugDescription.getter()
{
  v1 = v0;
  sub_26203A7CC();
  MEMORY[0x266722710](1029990716, 0xE400000000000000);
  v2 = type metadata accessor for DiscoveredBonjourAdvert();
  v3 = v2[6];
  sub_26203965C();
  sub_262034470();
  v4 = sub_26203ABAC();
  MEMORY[0x266722710](v4);

  MEMORY[0x266722710](0x636976726573202CLL, 0xEA00000000003D65);
  v10 = *(v1 + v2[5]);
  OUTLINED_FUNCTION_17_13();
  MEMORY[0x266722710](0x3D7367616C66202CLL, 0xE800000000000000);
  v11 = *(v1 + v2[12]);
  OUTLINED_FUNCTION_17_13();
  MEMORY[0x266722710](0xD000000000000012, 0x8000000262052C50);
  v5 = *(v1 + v2[13]);
  v6 = sub_262039B3C();
  v7 = MEMORY[0x266722880](v5, v6);
  MEMORY[0x266722710](v7);

  MEMORY[0x266722710](0xD000000000000015, 0x8000000262052C70);
  v8 = MEMORY[0x266722880](*(v1 + v2[15]), v6);
  MEMORY[0x266722710](v8);

  MEMORY[0x266722710](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_26203215C()
{
  v1 = v0;
  v2 = sub_262039B3C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v74 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v68 = v66 - v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = v66 - v12;
  v14 = sub_262039F0C();
  v15 = *(v14 + 16);
  if (!v15)
  {

    v58 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v67 = v0;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v76 = v17;
  v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
  v66[1] = v14;
  v73 = v18;
  v19 = v14 + v18;
  v71 = (v16 + 16);
  v72 = (v16 - 8);
  v20 = *(v16 + 56);
  v69 = MEMORY[0x277D84F90];
  v70 = v20;
  v75 = MEMORY[0x277D84F90];
  do
  {
    v76(v13, v19, v2);
    if (qword_27FEF8528 != -1)
    {
      OUTLINED_FUNCTION_6_16();
      swift_once();
    }

    swift_beginAccess();
    v21 = byte_27FEF8F41;
    if (byte_27FEF8F40)
    {
      v22 = qword_27FEF85D0;

      v23 = &qword_27FEF9130;
      if (v22 != -1)
      {
        OUTLINED_FUNCTION_7_13();
        swift_once();
        v23 = &qword_27FEF9130;
      }
    }

    else
    {
      v24 = qword_28108CE68;

      v23 = &qword_28108CE70;
      if (v24 != -1)
      {
        OUTLINED_FUNCTION_5_15();
        swift_once();
        v23 = &qword_28108CE70;
      }
    }

    v25 = *v23;
    OUTLINED_FUNCTION_47();
    v26 = sub_26203A18C();
    v27 = [v25 valueForKey_];

    if (v27)
    {
      sub_26203A73C();
      swift_unknownObjectRelease();
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
    }

    v77 = v80;
    v78 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
    if (swift_dynamicCast())
    {
      v28 = v79;
    }

    else
    {
      v28 = 2;
      v79 = 2;
    }

    if (v28 == 2)
    {
      if (v21)
      {
        goto LABEL_25;
      }
    }

    else if (v28)
    {
      goto LABEL_25;
    }

    v29 = sub_262039B2C();
    if (!InterfaceIndexCorrespondsToAppleNCMInterface(v29))
    {
LABEL_25:
      OUTLINED_FUNCTION_16_14();
      v36();
      v31 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v31 + 16);
        v41 = OUTLINED_FUNCTION_8_16();
        sub_261FB9DC0(v41, v42, v43, v31);
        v31 = v44;
      }

      v33 = *(v31 + 16);
      v37 = *(v31 + 24);
      v34 = v33 + 1;
      if (v33 >= v37 >> 1)
      {
        v45 = OUTLINED_FUNCTION_4_18(v37);
        sub_261FB9DC0(v45, v46, v47, v31);
        v31 = v48;
        v35 = v74;
        v75 = v48;
      }

      else
      {
        v75 = v31;
        v35 = v74;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_16_14();
    v30();
    v31 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = *(v31 + 16);
      v50 = OUTLINED_FUNCTION_8_16();
      sub_261FB9DC0(v50, v51, v52, v31);
      v31 = v53;
    }

    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v54 = OUTLINED_FUNCTION_4_18(v32);
      sub_261FB9DC0(v54, v55, v56, v31);
      v31 = v57;
      v35 = v68;
      v69 = v57;
    }

    else
    {
      v69 = v31;
      v35 = v68;
    }

LABEL_29:
    (*v72)(v13, v2);
    *(v31 + 16) = v34;
    v38 = v31 + v73;
    v39 = v70;
    (*v71)(v38 + v33 * v70, v35, v2);
    v19 += v39;
    --v15;
  }

  while (v15);

  v1 = v67;
  v58 = v75;
  v59 = v69;
LABEL_34:
  v60 = type metadata accessor for DiscoveredBonjourAdvert();
  v61 = *(v60 + 52);
  v62 = *(v1 + v61);

  *(v1 + v61) = v58;
  v63 = *(v60 + 60);
  v64 = *(v1 + v63);

  *(v1 + v63) = v59;
  return result;
}

uint64_t sub_262032640@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v192 = a3;
  v195 = a4;
  v6 = sub_262039B3C();
  v196 = OUTLINED_FUNCTION_0(v6);
  v197 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_6_0();
  v199 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v191 = v174 - v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v200 = v174 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF99D0, &qword_26203F800);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v174 - v17;
  v19 = sub_26203965C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v198 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_74();
  v185 = v25 - v24;
  v26 = sub_262039F3C();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_74();
  v34 = v33 - v32;
  v35 = sub_262039B5C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v43 = v42 - v41;
  v193 = type metadata accessor for DiscoveredBonjourAdvert();
  v44 = OUTLINED_FUNCTION_6_1(v193);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_74();
  v184 = v48 - v47;
  v183 = *a2;
  v194 = a1;
  sub_262039F5C();
  v49 = v29[11];
  v50 = OUTLINED_FUNCTION_122();
  if (v51(v50) != *MEMORY[0x277CD9160])
  {
    v56 = v29[1];
    v57 = OUTLINED_FUNCTION_122();
    v58(v57);
    sub_26203A48C();
    if (qword_27FEF8728 != -1)
    {
      OUTLINED_FUNCTION_0_35();
    }

    sub_26203969C();
    OUTLINED_FUNCTION_20_10();
    v59 = sub_262039F6C();
    OUTLINED_FUNCTION_6_1(v59);
    (*(v60 + 8))(v194);
    goto LABEL_22;
  }

  v52 = v29[12];
  v53 = OUTLINED_FUNCTION_122();
  v54(v53);
  (*(v38 + 32))(v43, v34, v35);
  sub_262039B6C();
  v186 = v43;
  if (!v55)
  {
    v61 = sub_262039B4C();
    sub_261FA1C38(0x696669746E656469, 0xEA00000000007265, v61);
    v63 = v62;

    v64 = v195;
    if (!v63)
    {
LABEL_29:
      sub_26203A48C();
      if (qword_27FEF8728 != -1)
      {
        OUTLINED_FUNCTION_0_35();
      }

      sub_26203969C();
      OUTLINED_FUNCTION_20_10();
      v103 = sub_262039F6C();
      OUTLINED_FUNCTION_6_1(v103);
      (*(v104 + 8))(v194);
      (*(v38 + 8))(v186, v35);
      v87 = v193;
      goto LABEL_24;
    }
  }

  v65 = v35;
  v66 = v19;
  sub_262039B6C();
  if (v67)
  {
    goto LABEL_11;
  }

  v180 = v38;
  v181 = v35;
  v68 = sub_262039B4C();
  sub_261FA1C38(0x67615468747561, 0xE700000000000000, v68);
  v70 = v69;

  if (!v70)
  {

    v64 = v195;
    v35 = v181;
    v38 = v180;
    goto LABEL_29;
  }

  v65 = v181;
  v38 = v180;
LABEL_11:
  OUTLINED_FUNCTION_122();
  sub_2620395FC();
  v71 = v66;
  if (__swift_getEnumTagSinglePayload(v18, 1, v66) == 1)
  {

    sub_2620346EC(v18);
    v72 = sub_26203A48C();
    if (qword_27FEF8728 != -1)
    {
      OUTLINED_FUNCTION_0_35();
    }

    v73 = qword_27FEFABC8;
    if (os_log_type_enabled(qword_27FEFABC8, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v204 = v75;
      *v74 = 136446210;
      v76 = OUTLINED_FUNCTION_122();
      v79 = sub_261F67FE4(v76, v77, v78);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_261F5B000, v73, v72, "Unable to turn identifier %{public}s into UUID object", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_20_10();
    v91 = sub_262039F6C();
    OUTLINED_FUNCTION_6_1(v91);
    (*(v92 + 8))(v194);
    (*(v38 + 8))(v186, v65);
LABEL_22:
    v87 = v193;
LABEL_23:
    v64 = v195;
LABEL_24:
    v93 = v64;
    v94 = 1;
    v95 = v87;
    return __swift_storeEnumTagSinglePayload(v93, v94, 1, v95);
  }

  v80 = v198;
  v81 = v198 + 32;
  v82 = *(v198 + 32);
  v83 = v185;
  v179 = v71;
  v82(v185, v18, v71);
  v84 = sub_26203949C();
  v86 = v85;

  if (v86 >> 60 == 15)
  {
    sub_26203A48C();
    v87 = v193;
    v88 = v186;
    if (qword_27FEF8728 != -1)
    {
      OUTLINED_FUNCTION_0_35();
    }

    sub_26203969C();
    OUTLINED_FUNCTION_20_10();
    v89 = sub_262039F6C();
    OUTLINED_FUNCTION_6_1(v89);
    (*(v90 + 8))(v194);
    (*(v80 + 8))(v83, v179);
    (*(v38 + 8))(v88, v65);
    goto LABEL_23;
  }

  v175 = v86;
  v176 = v84;
  v177 = v82;
  v178 = v81;
  v181 = v65;
  v97 = v186;
  sub_262039B6C();
  v98 = v193;
  if (v99)
  {
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v100 = OUTLINED_FUNCTION_47();
    v102 = ControlChannelConnectionWireProtocolVersion.__allocating_init(_:)(v100, v101);
  }

  else
  {
    v102 = 0;
  }

  v105 = v197;
  v106 = v184;
  v107 = v195;
  *(v184 + v98[8]) = v102;
  sub_262039B6C();
  if (v108)
  {
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v109 = OUTLINED_FUNCTION_47();
    v111 = ControlChannelConnectionWireProtocolVersion.__allocating_init(_:)(v109, v110);
  }

  else
  {
    v111 = 0;
  }

  *(v106 + v98[9]) = v111;
  v112 = sub_262039B6C();
  v180 = v38;
  if (v113)
  {
    v114 = sub_262031C8C(v112, v113);
    if (v115)
    {
      v116 = 0;
    }

    else
    {
      v116 = v114;
    }
  }

  else
  {
    v116 = 0;
  }

  *(v106 + v98[12]) = v116;
  v117 = sub_262039B6C();
  v118 = (v106 + v98[11]);
  *v118 = v117;
  v118[1] = v119;
  v120 = sub_262039B6C();
  v121 = (v106 + v98[10]);
  *v121 = v120;
  v121[1] = v122;
  v123 = sub_262039F0C();
  v124 = *(v123 + 16);
  if (v124)
  {
    v126 = *(v105 + 16);
    v125 = v105 + 16;
    v198 = v126;
    v127 = (*(v125 + 64) + 32) & ~*(v125 + 64);
    v174[1] = v123;
    v190 = v127;
    v128 = v123 + v127;
    v189 = (v125 - 8);
    v188 = (v125 + 16);
    v129 = MEMORY[0x277D84F90];
    v187 = *(v125 + 56);
    v182 = MEMORY[0x277D84F90];
    v197 = v125;
    v130 = v196;
    v131 = v200;
    while (1)
    {
      (v198)(v131, v128, v130);
      if (qword_27FEF8528 != -1)
      {
        OUTLINED_FUNCTION_6_16();
        swift_once();
      }

      swift_beginAccess();
      v132 = byte_27FEF8F41;
      if (byte_27FEF8F40)
      {
        v133 = qword_27FEF85D0;

        v134 = &qword_27FEF9130;
        if (v133 != -1)
        {
          OUTLINED_FUNCTION_7_13();
          swift_once();
          v134 = &qword_27FEF9130;
        }
      }

      else
      {
        v135 = qword_28108CE68;

        v134 = &qword_28108CE70;
        if (v135 != -1)
        {
          OUTLINED_FUNCTION_5_15();
          swift_once();
          v134 = &qword_28108CE70;
        }
      }

      v136 = *v134;
      v137 = sub_26203A18C();
      v138 = [v136 valueForKey_];

      if (v138)
      {
        sub_26203A73C();
        swift_unknownObjectRelease();
      }

      else
      {
        v204 = 0u;
        v205 = 0u;
      }

      v139 = v200;
      v201 = v204;
      v202 = v205;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
      if (swift_dynamicCast())
      {
        v140 = v203;
      }

      else
      {
        v140 = 2;
        v203 = 2;
      }

      if (v140 == 2)
      {
        if (v132)
        {
          goto LABEL_65;
        }
      }

      else if (v140)
      {
        goto LABEL_65;
      }

      v141 = sub_262039B2C();
      if (InterfaceIndexCorrespondsToAppleNCMInterface(v141))
      {
        (v198)(v191, v139, v130);
        v142 = v182;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v158 = *(v142 + 16);
          v159 = OUTLINED_FUNCTION_8_16();
          sub_261FB9DC0(v159, v160, v161, v142);
          v142 = v162;
        }

        v144 = *(v142 + 16);
        v143 = *(v142 + 24);
        v145 = v144 + 1;
        if (v144 >= v143 >> 1)
        {
          v163 = OUTLINED_FUNCTION_4_18(v143);
          sub_261FB9DC0(v163, v164, v165, v142);
          v142 = v166;
          v146 = v191;
          v182 = v166;
        }

        else
        {
          v182 = v142;
          v146 = v191;
        }

        goto LABEL_69;
      }

LABEL_65:
      (v198)(v199, v139, v130);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = *(v129 + 16);
        v150 = OUTLINED_FUNCTION_8_16();
        sub_261FB9DC0(v150, v151, v152, v129);
        v129 = v153;
      }

      v144 = *(v129 + 16);
      v147 = *(v129 + 24);
      v145 = v144 + 1;
      if (v144 >= v147 >> 1)
      {
        v154 = OUTLINED_FUNCTION_4_18(v147);
        sub_261FB9DC0(v154, v155, v156, v129);
        v142 = v157;
        v146 = v199;
        v129 = v157;
      }

      else
      {
        v142 = v129;
        v146 = v199;
      }

LABEL_69:
      v131 = v200;
      v130 = v196;
      (*v189)(v200, v196);
      *(v142 + 16) = v145;
      v148 = v187;
      (*v188)(v142 + v190 + v144 * v187, v146, v130);
      v128 += v148;
      if (!--v124)
      {

        v107 = v195;
        v98 = v193;
        v97 = v186;
        v83 = v185;
        v167 = v182;
        goto LABEL_74;
      }
    }
  }

  v129 = MEMORY[0x277D84F90];
  v167 = MEMORY[0x277D84F90];
LABEL_74:
  v168 = v184;
  v169 = v194;
  sub_262039F4C();
  v170 = sub_262039F6C();
  OUTLINED_FUNCTION_6_1(v170);
  (*(v171 + 8))(v169);
  (*(v180 + 8))(v97, v181);
  *(v168 + v98[5]) = v183;
  v177(v168 + v98[6], v83, v179);
  v172 = (v168 + v98[7]);
  v173 = v175;
  *v172 = v176;
  v172[1] = v173;
  *(v168 + v98[13]) = v129;
  *(v168 + v98[15]) = v167;
  *(v168 + v98[14]) = v192;
  sub_261FECF8C(v168, v107);
  v93 = v107;
  v94 = 0;
  v95 = v98;
  return __swift_storeEnumTagSinglePayload(v93, v94, 1, v95);
}

uint64_t sub_2620334F4()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFABC8 = result;
  return result;
}

uint64_t DiscoveredBonjourAdvert.endpoint.getter()
{
  OUTLINED_FUNCTION_14_14();
  v0 = sub_262039A7C();
  OUTLINED_FUNCTION_6_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_47();

  return v4(v3);
}

uint64_t DiscoveredBonjourAdvert.service.getter()
{
  OUTLINED_FUNCTION_14_14();
  result = type metadata accessor for DiscoveredBonjourAdvert();
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t DiscoveredBonjourAdvert.identifier.getter()
{
  OUTLINED_FUNCTION_14_14();
  v2 = *(type metadata accessor for DiscoveredBonjourAdvert() + 24);
  v3 = sub_26203965C();
  v4 = OUTLINED_FUNCTION_6_1(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t DiscoveredBonjourAdvert.authTag.getter()
{
  v1 = (v0 + *(type metadata accessor for DiscoveredBonjourAdvert() + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_47();
  sub_261F6B73C(v4, v5);
  return OUTLINED_FUNCTION_47();
}

void *DiscoveredBonjourAdvert.wireProtocolVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for DiscoveredBonjourAdvert() + 32));
  v2 = v1;
  return v1;
}

void *DiscoveredBonjourAdvert.minimumSupportedWireProtocolVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for DiscoveredBonjourAdvert() + 36));
  v2 = v1;
  return v1;
}

uint64_t DiscoveredBonjourAdvert.userAssignedName.getter()
{
  v1 = (v0 + *(type metadata accessor for DiscoveredBonjourAdvert() + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_47();
}

uint64_t DiscoveredBonjourAdvert.model.getter()
{
  v1 = (v0 + *(type metadata accessor for DiscoveredBonjourAdvert() + 44));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_47();
}

uint64_t DiscoveredBonjourAdvert.flags.getter()
{
  OUTLINED_FUNCTION_14_14();
  result = type metadata accessor for DiscoveredBonjourAdvert();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t DiscoveredBonjourAdvert.validInterfaces.getter()
{
  v1 = *(v0 + *(type metadata accessor for DiscoveredBonjourAdvert() + 52));
}

uint64_t DiscoveredBonjourAdvert.validInterfaces.setter()
{
  v2 = *(OUTLINED_FUNCTION_19_11() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

id DiscoveredBonjourAdvert.netLinkManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for DiscoveredBonjourAdvert() + 56));

  return v1;
}

uint64_t DiscoveredBonjourAdvert.prohibitedInterfaces.getter()
{
  v1 = *(v0 + *(type metadata accessor for DiscoveredBonjourAdvert() + 60));
}

uint64_t DiscoveredBonjourAdvert.prohibitedInterfaces.setter()
{
  v2 = *(OUTLINED_FUNCTION_19_11() + 60);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void static DiscoveredBonjourAdvert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x266721EE0]() & 1) == 0)
  {
    return;
  }

  v4 = type metadata accessor for DiscoveredBonjourAdvert();
  if ((sub_261FA6014(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return;
  }

  v5 = v4[6];
  if ((sub_26203962C() & 1) == 0 || (MEMORY[0x2667219E0](*(a1 + v4[7]), *(a1 + v4[7] + 8), *(a2 + v4[7]), *(a2 + v4[7] + 8)) & 1) == 0)
  {
    return;
  }

  v6 = v4[8];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    if (!v8)
    {
      return;
    }

    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v9 = v8;
    v10 = v7;
    v11 = sub_26203A69C();

    if ((v11 & 1) == 0)
    {
      return;
    }
  }

  else if (v8)
  {
    return;
  }

  v12 = v4[9];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13)
  {
    if (!v14)
    {
      return;
    }

    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v15 = v14;
    v16 = v13;
    v17 = sub_26203A69C();

    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  else if (v14)
  {
    return;
  }

  v18 = v4[10];
  OUTLINED_FUNCTION_11_12();
  if (v19)
  {
    if (!v20)
    {
      return;
    }

    v23 = *v21 == *v22 && v19 == v20;
    if (!v23 && (sub_26203AC0C() & 1) == 0)
    {
      return;
    }
  }

  else if (v20)
  {
    return;
  }

  v24 = v4[11];
  OUTLINED_FUNCTION_11_12();
  if (v25)
  {
    if (!v26)
    {
      return;
    }

    v29 = *v27 == *v28 && v25 == v26;
    if (!v29 && (sub_26203AC0C() & 1) == 0)
    {
      return;
    }
  }

  else if (v26)
  {
    return;
  }

  if (*(a1 + v4[12]) == *(a2 + v4[12]))
  {
    v30 = v4[13];
    v31 = *(a1 + v30);
    v32 = *(a2 + v30);
    sub_261FC62C4();
    if (v33)
    {
      sub_261F9B6D0(0, &unk_27FEF9878, 0x277D82BB8);
      v34 = v4[14];
      v35 = *(a1 + v34);
      v36 = *(a2 + v34);
      if (sub_26203A69C())
      {
        v37 = v4[15];
        v38 = *(a1 + v37);
        v39 = *(a2 + v37);

        sub_261FC62C4();
      }
    }
  }
}

void DiscoveredBonjourAdvert.createTransport(withTargetQueue:)(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = 0xD000000000000015;
  v5 = type metadata accessor for DiscoveredBonjourAdvert();
  v6 = OUTLINED_FUNCTION_6_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA118, &qword_26204AE60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v72 - v14;
  v79 = sub_262039A7C();
  v15 = OUTLINED_FUNCTION_0(v79);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_74();
  v78 = v21 - v20;
  v22 = sub_262039B3C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_74();
  v30 = v29 - v28;
  v31 = sub_262039D8C();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_262039D7C();
  v81 = v5;
  v35 = *(v2 + v5[5]);
  v76 = v11;
  v77 = a1;
  v74 = v17;
  if (!v35 || v35 == 4)
  {
    goto LABEL_6;
  }

  if (v35 != 1)
  {
    v84[1] = 0;
    v84[2] = 0xE000000000000000;
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000015, 0x8000000262052CD0);
    v83 = v35;
    sub_26203A8CC();
    sub_26203A91C();
    __break(1u);
    return;
  }

  if (*(v2 + v81[12]))
  {
LABEL_6:
    sub_262039D2C();
    sub_262039D3C();
    sub_262039D4C();
    sub_262039D5C();
    v80 = 0;
  }

  else
  {
    v80 = *(v2 + v81[14]);
    v36 = v80;
  }

  sub_262039D6C();
  sub_262039D1C();

  v75 = v34;
  v37 = MEMORY[0x2667221A0](0, v34);
  v38 = v81;
  v39 = *(v2 + v81[15]);

  sub_262039CDC();
  v82 = v37;
  sub_262039D0C();
  v40 = 0;
  v41 = v38[13];
  v73 = v2;
  v42 = *(v2 + v41);
  v43 = *(v42 + 16);
  v44 = v25 + 16;
  v45 = (v25 + 8);
  while (v43 != v40)
  {
    if (v40 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    (*(v25 + 16))(v30, v42 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v40, v22);
    if (sub_262039B0C() == 0x306C647761 && v46 == 0xE500000000000000)
    {

      (*v45)(v30, v22);
LABEL_17:
      sub_262039CBC();
      break;
    }

    ++v40;
    v4 = sub_26203AC0C();

    (*v45)(v30, v22);
    if (v4)
    {
      goto LABEL_17;
    }
  }

  v42 = v73;
  v40 = *(v74 + 16);
  (v40)(v78, v73, v79);
  v48 = sub_262039CAC();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();

  v44 = sub_262039C0C();
  v51 = v72;
  sub_261FEDDC4(v42, v72);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v81);
  v25 = type metadata accessor for NWConnectionControlChannelTransport();
  v52 = *(v25 + 48);
  v53 = *(v25 + 52);
  swift_allocObject();

  v4 = NWConnectionControlChannelTransport.init(connection:bonjourEndpoint:netLinkManager:)(v54, v51, v80);
  v55 = (v4 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate);
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  *v55 = sub_262034264;
  v55[1] = 0;
  sub_261F665E4(v56);
  LODWORD(v81) = sub_26203A4AC();
  if (qword_27FEF8728 == -1)
  {
    goto LABEL_19;
  }

LABEL_24:
  OUTLINED_FUNCTION_0_35();
LABEL_19:
  v58 = qword_27FEFABC8;
  v59 = v42;
  v60 = v76;
  sub_261FEDDC4(v59, v76);
  if (os_log_type_enabled(v58, v81))
  {
    v61 = swift_slowAlloc();
    v74 = v44;
    v62 = v61;
    v63 = swift_slowAlloc();
    v73 = v40;
    v84[0] = v63;
    *v62 = 136446466;
    swift_beginAccess();
    v65 = *(v4 + 16);
    v64 = *(v4 + 24);

    v66 = sub_261F67FE4(v65, v64, v84);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2080;
    v73(v78, v60, v79);
    v67 = sub_26203A20C();
    v69 = v68;
    sub_261FEDE28(v60);
    v70 = sub_261F67FE4(v67, v69, v84);

    *(v62 + 14) = v70;
    _os_log_impl(&dword_261F5B000, v58, v81, "Created control channel transport %{public}s from bonjour advert: %s", v62, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  else
  {
    sub_261FEDE28(v60);
  }

  v71 = v77;
  v77[3] = v25;
  v71[4] = &protocol witness table for NWConnectionControlChannelTransport;

  *v71 = v4;
}

BOOL sub_262034264()
{
  if (qword_27FEF8528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FEF8F30;
  v1 = *algn_27FEF8F38;
  v2 = byte_27FEF8F40;
  if (byte_27FEF8F41)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_261F83BA8(v0, v1, v3 | v2);

  result = 0;
  if ((v4 & 1) == 0)
  {
    v6 = sub_262039B2C();
    return InterfaceIndexCorrespondsToAppleNCMInterface(v6);
  }

  return result;
}

uint64_t DiscoveredBonjourAdvert.endpointIdentifier.getter()
{
  BYTE8(v5) = 0;
  v1 = type metadata accessor for DiscoveredBonjourAdvert();
  *&v5 = *(v0 + *(v1 + 20));
  sub_26203A8CC();
  MEMORY[0x266722710](45, 0xE100000000000000);
  v2 = *(v1 + 24);
  sub_26203965C();
  sub_262034470();
  v3 = sub_26203ABAC();
  MEMORY[0x266722710](v3);

  return *(&v5 + 1);
}

uint64_t type metadata accessor for DiscoveredBonjourAdvert()
{
  result = qword_27FEFABD0;
  if (!qword_27FEFABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_262034470()
{
  result = qword_28108CF40;
  if (!qword_28108CF40)
  {
    sub_26203965C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CF40);
  }

  return result;
}

uint64_t sub_2620344F0()
{
  v0 = sub_262039A7C();
  if (v1 <= 0x3F)
  {
    v0 = sub_26203965C();
    if (v2 <= 0x3F)
    {
      sub_262034688(319, &qword_27FEFABE0, type metadata accessor for ControlChannelConnectionWireProtocolVersion, MEMORY[0x277D83D88]);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        sub_261F971AC();
        v0 = v5;
        if (v6 <= 0x3F)
        {
          sub_262034688(319, &qword_27FEFABE8, MEMORY[0x277CD8CF0], MEMORY[0x277D83940]);
          v0 = v7;
          if (v8 <= 0x3F)
          {
            v9 = sub_261F9B6D0(319, &unk_27FEFABF0, 0x277D028C0);
            if (v10 > 0x3F)
            {
              return v9;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_262034688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2620346EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF99D0, &qword_26203F800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262034790()
{
  sub_262039FAC();
  sub_261F9B65C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  return sub_26203A75C();
}

uint64_t sub_262034818()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEFAC00 = result;
  return result;
}

id sub_262034878()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  qword_27FEFAC18 = result;
  return result;
}

uint64_t sub_2620348AC()
{
  if (qword_27FEF8738 != -1)
  {
    swift_once();
  }

  v0 = qword_27FEFAC18;
  [qword_27FEFAC18 lock];
  v1 = qword_27FEFAC08;
  if (qword_27FEFAC08)
  {
    v2 = qword_27FEFAC10;
    v3 = swift_slowAlloc();
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    [v0 unlock];
    return v3;
  }

  else
  {
    result = sub_26203A91C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2620349B4()
{
  if (qword_27FEF8738 != -1)
  {
    swift_once();
  }

  v0 = qword_27FEFAC18;
  [qword_27FEFAC18 lock];
  v1 = qword_27FEFAC08;
  if (!qword_27FEFAC08)
  {
    v1 = swift_slowAlloc();
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
    v2 = swift_slowAlloc();
    bzero(v2, 0x110uLL);
    sub_262034AF0(0xD000000000000016, 0x8000000262052FD0, v1);
    *(v1 + 32) = 0x100000002;
    v2[8] = sub_262034B9C;
    v2[9] = sub_262034E98;
    qword_27FEFAC08 = v1;
    qword_27FEFAC10 = v2;
    nw_protocol_register();
  }

  [v0 unlock];
  return v1;
}

uint64_t sub_262034AF0(uint64_t a1, uint64_t a2, char *__dst)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__source = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = __source;
      return strlcpy(__dst, v4, 0x20uLL);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return strlcpy(__dst, v4, 0x20uLL);
    }
  }

  result = sub_26203A7BC();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_262034BA0(uint64_t a1)
{
  v2 = sub_262039FAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262039FEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = *(a1 + 40);
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = v13[2];
  v15 = *(a1 + 40);

  if (v14)
  {
    v20 = v3;
    v21 = v7;
    v16 = v13[3];
    v19 = v13[14];
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    aBlock[4] = sub_261FBD060;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261F78F64;
    aBlock[3] = &block_descriptor_65;
    v18 = _Block_copy(aBlock);
    sub_261F9904C(v14);

    sub_262039FCC();
    v22 = MEMORY[0x277D84F90];
    sub_261F9B65C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F98F68();
    sub_26203A75C();
    MEMORY[0x266722A20](0, v12, v6, v18);
    _Block_release(v18);
    sub_261F99050(v14);
    (*(v20 + 8))(v6, v2);
    (*(v8 + 8))(v12, v21);
  }

  else
  {
  }
}

uint64_t sub_262034E9C(uint64_t a1)
{
  v2 = sub_262039FAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262039FEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = *(a1 + 40);
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = v13[4];
  v15 = *(a1 + 40);

  if (v14)
  {
    v20 = v3;
    v21 = v7;
    v16 = v13[5];
    v19 = v13[14];
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    aBlock[4] = sub_261FBD554;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261F78F64;
    aBlock[3] = &block_descriptor_59;
    v18 = _Block_copy(aBlock);
    sub_261F9904C(v14);

    sub_262039FCC();
    v22 = MEMORY[0x277D84F90];
    sub_261F9B65C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F98F68();
    sub_26203A75C();
    MEMORY[0x266722A20](0, v12, v6, v18);
    _Block_release(v18);
    sub_261F99050(v14);
    (*(v20 + 8))(v6, v2);
    (*(v8 + 8))(v12, v21);
  }

  else
  {
  }
}

uint64_t sub_262035198()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 30;
  result = MEMORY[0x266721A00](&v3, 4);
  qword_27FF07DF8 = result;
  unk_27FF07E00 = v1;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_262035200()
{
  if (qword_27FEF8740 != -1)
  {
    result = swift_once();
  }

  v0 = 0;
  switch(unk_27FF07E00 >> 62)
  {
    case 1:
      LODWORD(v0) = HIDWORD(qword_27FF07DF8) - qword_27FF07DF8;
      if (!__OFSUB__(HIDWORD(qword_27FF07DF8), qword_27FF07DF8))
      {
        v0 = v0;
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_10;
    case 2:
      v2 = *(qword_27FF07DF8 + 16);
      v1 = *(qword_27FF07DF8 + 24);
      v3 = __OFSUB__(v1, v2);
      v0 = v1 - v2;
      if (!v3)
      {
        goto LABEL_8;
      }

LABEL_10:
      __break(1u);
      break;
    case 3:
      goto LABEL_8;
    default:
      v0 = unk_27FF07E06;
LABEL_8:
      qword_27FF07E08 = v0;
      break;
  }

  return result;
}

uint64_t sub_2620352B0()
{
  if (qword_27FEF8748 != -1)
  {
    result = swift_once();
  }

  if (qword_27FF07E08 < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(qword_27FF07E08))
  {
    dword_27FF07E10 = qword_27FF07E08;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26203531C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 104) = a4;
  *(v6 + 112) = a2;
  *(v6 + 96) = a3;
  v11 = OBJC_IVAR____TtC19RemotePairingDevice38SkywalkVirtualInterfaceNetworkProtocol_deferredCleanupTimeoutInterval;
  v12 = sub_262039F9C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6 + v11, a6, v12);
  *(v6 + 56) = a1;
  v14 = a2;

  swift_unknownObjectRetain();
  sub_2620349B4();
  result = nw_protocol_create();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v6 + 48) = result;
  *(v6 + 88) = a5;
  *(result + 40) = v6;
  swift_unknownObjectRetain();

  result = nw_channel_get_protocol_handler();
  if (!result)
  {
    (*(v13 + 8))(a6, v12);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return v6;
  }

  v16 = result;
  v17 = *(result + 24);
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = *v17;
  if (*v17)
  {

    v18(v16, *(v6 + 48));

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v13 + 8))(a6, v12);
    return v6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2620354D8@<X0>(uint64_t *a1@<X8>)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  OUTLINED_FUNCTION_46();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  nw_frame_array_init();
  v10 = *(v1[6] + 32);
  if (!v10)
  {
    goto LABEL_14;
  }

  v9 = *(v10 + 24);
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v9 + 80);
  if (!v9)
  {
LABEL_16:
    __break(1u);
    if (!(v7 ^ v8 | v6))
    {
      __break(1u);
    }

    *(v2 + 16) = v9;

    __break(1u);
    return result;
  }

  v11 = (v9)();
  v12 = v11;
  v18 = 0;
  if (v11)
  {
    v2 = sub_26203A3FC();
    *(v2 + 16) = v12;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v17 = 0;
  v19[0] = v2 + 32;
  v19[1] = v12;
  sub_2620356AC(v19, &v17, v5 + 16, &v18, v4);
  v9 = v17;
  v8 = __OFSUB__(v17, v12);
  v6 = v17 == v12;
  v7 = v17 - v12 < 0;
  if (v17 > v12)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 16) = v17;
  OUTLINED_FUNCTION_46();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v5;
  v14 = v1[8];
  v8 = __OFADD__(v14, 1);
  v9 = v14 + 1;
  v6 = v9 == 0;
  v7 = v9 < 0;
  if (v8)
  {
    goto LABEL_13;
  }

  v1[8] = v9;
  *a1 = v2;
  a1[1] = sub_262036CE0;
  a1[2] = v13;
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t *sub_2620356AC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result)
  {
    v12 = *result;
    v8 = swift_allocObject();
    v8[2] = a4;
    v8[3] = &v12;
    v8[4] = a2;
    v8[5] = a5;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_262036CF0;
    *(v9 + 24) = v8;
    aBlock[4] = sub_262036D70;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2620359C4;
    aBlock[3] = &block_descriptor_53;
    v10 = _Block_copy(aBlock);

    nw_frame_array_foreach();
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2620357E0(uint64_t a1, unsigned int *a2, uint64_t **a3, void *a4)
{
  v7 = sub_26203946C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = nw_frame_unclaimed_bytes();
  v13 = result;
  v14 = *a2;
  if (qword_27FEF8750 != -1)
  {
    result = swift_once();
  }

  if (v14 < dword_27FF07E10)
  {
    return 1;
  }

  v15 = *a2;
  v16 = *a2 - dword_27FF07E10;
  if (v15 < dword_27FF07E10)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  if (qword_27FEF8748 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v17 = qword_27FF07E08;
  (*(v8 + 104))(v11, *MEMORY[0x277CC92A8], v7);
  result = MEMORY[0x266721930](v13 + v17, v16, v11);
  v18 = *a3;
  *v18 = result;
  v18[1] = v19;
  *a3 += 2;
  if (!__OFADD__(*a4, 1))
  {
    ++*a4;
    return 1;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2620359C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v3) = v4(a2);
  swift_unknownObjectRelease();
  return v3 & 1;
}

void sub_262035A14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_262036CE8;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_261F78F64;
  v7[3] = &block_descriptor_40;
  v6 = _Block_copy(v7);

  nw_queue_context_async_if_needed();
  _Block_release(v6);
}

uint64_t sub_262035B00(uint64_t a1, os_log_type_t a2)
{
  v14[4] = sub_2620359A4;
  v14[5] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2620359C4;
  v14[3] = &block_descriptor_43;
  v4 = _Block_copy(v14);

  swift_beginAccess();
  nw_frame_array_foreach();
  swift_endAccess();
  _Block_release(v4);
  v5 = *(a1 + 64);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(a1 + 64) = v7;
  if (*(a1 + 72) != 1 || v7)
  {
    goto LABEL_10;
  }

  a2 = sub_26203A4AC();
  if (qword_27FEF8730 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v8 = qword_27FEFAC00;
    if (os_log_type_enabled(qword_27FEFAC00, a2))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_261F67FE4(*(a1 + 96), *(a1 + 104), v14);
      _os_log_impl(&dword_261F5B000, v8, a2, "Executing deferred destroyProtocol for interface %{public}s as last outstanding frames are cleaned up", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x266724180](v10, -1, -1);
      MEMORY[0x266724180](v9, -1, -1);
    }

    *(a1 + 72) = 0;
    if (*(a1 + 80))
    {
      v11 = *(a1 + 80);

      sub_26203A05C();

      v12 = *(a1 + 80);
    }

    *(a1 + 80) = 0;

    a2 = a1;
    sub_262036230(0);
LABEL_10:
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  return result;
}

uint64_t sub_262035D44(uint64_t a1)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v4 = *v1;
  v19[1] = 0;
  v19[2] = 0;
  nw_frame_array_init();
  v5 = v1[6];
  result = *(v5 + 32);
  if (result)
  {
    v7 = *(result + 24);
    if (v7)
    {
      v8 = *(v7 + 88);
      if (v8)
      {
        if (HIDWORD(v2))
        {
          __break(1u);
        }

        v9 = v1[6];
        v8();
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  v19[0] = 0;
  v18 = 0;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v19;
  v10[4] = &v18;
  v10[5] = v1;
  v10[6] = v4;
  OUTLINED_FUNCTION_46();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_262036CA4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_262036CB4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2620359C4;
  aBlock[3] = &block_descriptor_28_0;
  v12 = _Block_copy(aBlock);

  nw_frame_array_foreach();
  _Block_release(v12);
  if (nw_frame_array_is_empty())
  {
LABEL_12:
    v15 = v19[0];

LABEL_14:
    v16 = *MEMORY[0x277D85DE8];
    return v15;
  }

  result = *(v5 + 32);
  if (!result)
  {
    goto LABEL_18;
  }

  v13 = *(result + 24);
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = *(v13 + 96);
  if (v14)
  {
    v14();
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_262035F6C(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, uint64_t a5)
{
  v12 = *a3;
  if (*a3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(a2 + 16);
  if (v12 >= v11)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  v9 = a5;
  v10 = a4;
  v5 = a3;
  v13 = a2 + 16 * v12;
  v7 = *(v13 + 32);
  v8 = *(v13 + 40);
  sub_261F6B73C(v7, v8);
  if (!nw_frame_unclaimed_bytes())
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x266721A20](v7, v8);
  if (qword_27FEF8748 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v14 = __OFADD__(v6, qword_27FF07E08);
  v15 = v6 + qword_27FF07E08;
  if (v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v15 <= *v10)
  {
    if (qword_27FEF8740 == -1)
    {
LABEL_8:
      sub_2620395BC();
      MEMORY[0x266721A20](v7, v8);
      sub_2620395BC();
      if (v15 < 0)
      {
        __break(1u);
      }

      else
      {
        v16 = *(v9 + 48);
        nw_frame_claim();
        nw_frame_collapse();
        nw_frame_unclaim();
        sub_261F6BFFC(v7, v8);
        v17 = *v5 + 1;
        if (!__OFADD__(*v5, 1))
        {
          *v5 = v17;
          return v17 < v11;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_15:
    swift_once();
    goto LABEL_8;
  }

LABEL_19:
  sub_26203A7CC();
  MEMORY[0x266722710](0xD000000000000033, 0x8000000262052F70);
  v21 = *v10;
  v19 = sub_26203ABAC();
  MEMORY[0x266722710](v19);

  MEMORY[0x266722710](0xD000000000000017, 0x8000000262052FB0);
  v20 = sub_26203ABAC();
  MEMORY[0x266722710](v20);

  result = sub_26203A91C();
  __break(1u);
  return result;
}

uint64_t sub_262036230(char a1)
{
  v2 = v1;
  v4 = sub_26203A03C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  v12 = sub_262039FAC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  if ((a1 & 1) != 0 || !*(v1 + 64))
  {
    v27 = sub_26203A4AC();
    if (qword_27FEF8730 != -1)
    {
      OUTLINED_FUNCTION_0_36();
    }

    v28 = qword_27FEFAC00;
    if (os_log_type_enabled(qword_27FEFAC00, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_261F67FE4(v2[12], v2[13], aBlock);
      _os_log_impl(&dword_261F5B000, v28, v27, "destroyProtocol invoked for interface %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    v31 = v2[6];
    v32 = *(v31 + 32);
    if (v32)
    {
      v33 = *(v32 + 24);
      if (v33)
      {
        v34 = *(v33 + 8);
        if (v34)
        {
          v35 = v2[6];
          v34();
          v36 = v2[7];
          nw_channel_close();
          if (*(v31 + 40))
          {

            OUTLINED_FUNCTION_26();

LABEL_23:
            JUMPOUT(0x266724180);
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v14 = sub_26203A4AC();
  if (qword_27FEF8730 != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  v15 = qword_27FEFAC00;
  if (os_log_type_enabled(qword_27FEFAC00, v14))
  {

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37[0] = v5;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_261F67FE4(*(v1 + 96), *(v1 + 104), aBlock);
    *(v16 + 12) = 2048;
    *(v16 + 14) = *(v1 + 64);

    _os_log_impl(&dword_261F5B000, v15, v14, "Deferring destroyProtocol for interface %{public}s until %ld packet groups are cleaned up", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v5 = v37[0];
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  *(v1 + 72) = 1;
  aBlock[4] = sub_262036C94;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_15;
  _Block_copy(aBlock);
  v37[1] = MEMORY[0x277D84F90];
  sub_261F9B65C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  v19 = sub_26203A06C();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_26203A04C();

  v23 = *(v1 + 80);
  v2[10] = v22;

  v24 = v2[14];
  sub_26203A02C();
  MEMORY[0x266722530](v9, v2 + OBJC_IVAR____TtC19RemotePairingDevice38SkywalkVirtualInterfaceNetworkProtocol_deferredCleanupTimeoutInterval);
  v25 = *(v5 + 8);
  v25(v9, v4);
  sub_26203A55C();

  return (v25)(v11, v4);
}

void sub_26203670C(uint64_t a1)
{
  v1 = *(a1 + 88);
  v3[4] = sub_262036C9C;
  v3[5] = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_261F78F64;
  v3[3] = &block_descriptor_22_0;
  v2 = _Block_copy(v3);

  nw_queue_context_async_if_needed();
  _Block_release(v2);
}

uint64_t sub_2620367CC(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    v8[7] = v1;
    v8[8] = v2;
    v3 = result;
    v4 = sub_26203A49C();
    if (qword_27FEF8730 != -1)
    {
      swift_once();
    }

    v5 = qword_27FEFAC00;
    if (os_log_type_enabled(qword_27FEFAC00, v4))
    {

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_261F67FE4(v3[12], v3[13], v8);
      *(v6 + 12) = 2048;
      *(v6 + 14) = v3[8];

      _os_log_impl(&dword_261F5B000, v5, v4, "Forcibly executing destroyProtocol for interface %{public}s since %ld packet groups were not cleaned up by timeout", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x266724180](v7, -1, -1);
      MEMORY[0x266724180](v6, -1, -1);
    }

    return sub_262036230(1);
  }

  return result;
}

uint64_t *sub_262036918()
{
  v1 = *v0;
  v2 = sub_26203A4AC();
  if (qword_27FEF8730 != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  v3 = qword_27FEFAC00;
  if (os_log_type_enabled(qword_27FEFAC00, v2))
  {
    v4 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = sub_26203AE8C();
    v7 = sub_261F67FE4(v5, v6, &v17);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_261F67FE4(v0[12], v0[13], &v17);
    _os_log_impl(&dword_261F5B000, v3, v2, "%s.deinit invoked for interface %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v8 = v0[3];
  sub_261F99050(v0[2]);
  v9 = v0[5];
  sub_261F99050(v0[4]);
  v10 = v0[7];
  swift_unknownObjectRelease();
  v11 = v0[10];

  v12 = v0[11];
  swift_unknownObjectRelease();
  v13 = v0[13];

  v14 = OBJC_IVAR____TtC19RemotePairingDevice38SkywalkVirtualInterfaceNetworkProtocol_deferredCleanupTimeoutInterval;
  v15 = sub_262039F9C();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  return v0;
}

uint64_t sub_262036AFC()
{
  sub_262036918();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SkywalkVirtualInterfaceNetworkProtocol()
{
  result = qword_27FEFAC28;
  if (!qword_27FEFAC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262036BA8()
{
  result = sub_262039F9C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_262036CB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

size_t sub_262036CFC@<X0>(char *__source@<X0>, size_t *a2@<X8>)
{
  result = strlcpy(*(v2 + 16), __source, 0x20uLL);
  *a2 = result;
  return result;
}

uint64_t RemoteUnlockDeviceKeyForTunnelRequest.tunnelDeviceName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_262036DA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002620530B0 == a2)
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

uint64_t sub_262036E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262036DA4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_262036E70(uint64_t a1)
{
  v2 = sub_262036FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262036EAC(uint64_t a1)
{
  v2 = sub_262036FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RemoteUnlockDeviceKeyForTunnelRequest.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFACA0, &qword_26204BCD0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_0Tm(v3, v3[3]);
  sub_262036FFC();
  sub_26203AE5C();
  sub_26203AAFC();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_262036FFC()
{
  result = qword_27FEFACA8;
  if (!qword_27FEFACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACA8);
  }

  return result;
}

void RemoteUnlockDeviceKeyForTunnelRequest.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFACB0, &qword_26204BCD8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_262036FFC();
  OUTLINED_FUNCTION_31();
  if (!v0)
  {
    v10 = sub_26203A9EC();
    v12 = v11;
    v13 = OUTLINED_FUNCTION_20_0();
    v14(v13);
    *v4 = v10;
    v4[1] = v12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

uint64_t RemoteUnlockDeviceKeyForTunnelResponse.deviceKey.getter()
{
  v1 = *v0;
  sub_261F6B73C(*v0, *(v0 + 8));
  return v1;
}

uint64_t RemoteUnlockDeviceKeyForTunnelResponse.init(deviceKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2620371E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x654B656369766564 && a2 == 0xE900000000000079)
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

uint64_t sub_262037284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2620371E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2620372B0(uint64_t a1)
{
  v2 = sub_26203746C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2620372EC(uint64_t a1)
{
  v2 = sub_26203746C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RemoteUnlockDeviceKeyForTunnelResponse.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFACB8, &qword_26204BCE0);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_261F6B73C(v11, v12);
  sub_26203746C();
  sub_26203AE5C();
  v14 = v11;
  v15 = v12;
  sub_261FC7838();
  sub_26203AB3C();
  sub_261F6BFFC(v14, v15);
  (*(v5 + 8))(v10, v3);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_26203746C()
{
  result = qword_27FEFACC0;
  if (!qword_27FEFACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACC0);
  }

  return result;
}

void RemoteUnlockDeviceKeyForTunnelResponse.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFACC8, &qword_26204BCE8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_26203746C();
  OUTLINED_FUNCTION_31();
  if (!v0)
  {
    sub_261FCA870();
    sub_26203AA2C();
    v10 = OUTLINED_FUNCTION_20_0();
    v11(v10);
    *v4 = v12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

id RemotePairingDeviceTunnelServiceConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemotePairingDeviceTunnelServiceConnection.init()()
{
  ObjectType = swift_getObjectType();
  sub_2620398EC();
  sub_2620398CC();
  sub_26203990C();
  *&v0[OBJC_IVAR____TtC19RemotePairingDevice42RemotePairingDeviceTunnelServiceConnection_connection] = swift_dynamicCastClassUnconditional();

  sub_26203975C();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t RemotePairingDeviceTunnelServiceConnection.copyRemoteUnlockDeviceKeyForTunnel(tunnelName:)()
{
  v2 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice42RemotePairingDeviceTunnelServiceConnection_connection);
  sub_262037818();
  sub_26203786C();
  sub_2620378C0();
  sub_262037914();
  sub_261F96884();

  sub_26203976C();

  if (!v1)
  {
    return v4;
  }

  return result;
}

unint64_t sub_262037818()
{
  result = qword_27FEFACD8;
  if (!qword_27FEFACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACD8);
  }

  return result;
}

unint64_t sub_26203786C()
{
  result = qword_27FEFACE0;
  if (!qword_27FEFACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACE0);
  }

  return result;
}

unint64_t sub_2620378C0()
{
  result = qword_27FEFACE8;
  if (!qword_27FEFACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACE8);
  }

  return result;
}

unint64_t sub_262037914()
{
  result = qword_27FEFACF0;
  if (!qword_27FEFACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACF0);
  }

  return result;
}

id RemotePairingDeviceTunnelServiceConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_262037AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

_BYTE *sub_262037B70(_BYTE *result, int a2, int a3)
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

unint64_t sub_262037C20()
{
  result = qword_27FEFACF8;
  if (!qword_27FEFACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACF8);
  }

  return result;
}

unint64_t sub_262037C78()
{
  result = qword_27FEFAD00;
  if (!qword_27FEFAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAD00);
  }

  return result;
}

unint64_t sub_262037CD0()
{
  result = qword_27FEFAD08;
  if (!qword_27FEFAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAD08);
  }

  return result;
}

unint64_t sub_262037D28()
{
  result = qword_27FEFAD10;
  if (!qword_27FEFAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAD10);
  }

  return result;
}

unint64_t sub_262037D80()
{
  result = qword_27FEFAD18;
  if (!qword_27FEFAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAD18);
  }

  return result;
}

unint64_t sub_262037DD8()
{
  result = qword_27FEFAD20[0];
  if (!qword_27FEFAD20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEFAD20);
  }

  return result;
}

uint64_t sub_262037E30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OS_dispatch_io.write(content:completingOn:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v9 = sub_26203A01C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      v14 = a1;
      goto LABEL_8;
    case 2uLL:
      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
LABEL_8:
      sub_262038D2C(v14, v15);
      goto LABEL_9;
    case 3uLL:
      memset(v19, 0, 14);
      goto LABEL_5;
    default:
      v19[0] = a1;
      LOWORD(v19[1]) = a2;
      BYTE2(v19[1]) = BYTE2(a2);
      BYTE3(v19[1]) = BYTE3(a2);
      BYTE4(v19[1]) = BYTE4(a2);
      BYTE5(v19[1]) = BYTE5(a2);
LABEL_5:
      sub_262039FFC();
LABEL_9:
      v16 = swift_allocObject();
      *(v16 + 16) = a4;
      *(v16 + 24) = a5;

      sub_26203A51C();

      result = (*(v10 + 8))(v13, v9);
      v18 = *MEMORY[0x277D85DE8];
      return result;
  }
}

uint64_t OS_dispatch_io.read(minLength:maxLength:competingOn:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = sub_26203A01C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = a4;
  v11[4] = a5;

  sub_26203A4DC();
}

uint64_t sub_2620381C8()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEFADA8 = result;
  return result;
}

void sub_26203822C(int a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v66 = a6;
  v67 = a3;
  v64 = a1;
  v69 = sub_2620392DC();
  v65 = *(v69 - 8);
  v8 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v69);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v61 - v12;
  MEMORY[0x28223BE20](v11);
  v71 = &v61 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  v14 = *(*(v63 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v63);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v61 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  v26 = sub_26203A01C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_projectBox();
  sub_262038DD4(a2, v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v26);
  v70 = a5;
  if (EnumTagSinglePayload == 1)
  {
    sub_262038E44(v25);
LABEL_5:
    v35 = v68;
    v36 = v69;
    goto LABEL_9;
  }

  v33 = *(v27 + 32);
  v33(v30, v25, v26);
  swift_beginAccess();
  sub_262038DD4(v31, v23);
  v34 = __swift_getEnumTagSinglePayload(v23, 1, v26);
  sub_262038E44(v23);
  if (v34 == 1)
  {
    v33(v20, v30, v26);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v26);
    swift_beginAccess();
    sub_262038EF0(v20, v31);
    a5 = v70;
    goto LABEL_5;
  }

  swift_beginAccess();
  v37 = __swift_getEnumTagSinglePayload(v31, 1, v26);
  v35 = v68;
  v36 = v69;
  if (!v37)
  {
    sub_26203A00C();
  }

  swift_endAccess();
  (*(v27 + 8))(v30, v26);
  a5 = v70;
LABEL_9:
  v38 = v71;
  v39 = v67;
  if (v67)
  {
    v40 = sub_2620396AC();
    if ((v40 & 0x100000000) != 0)
    {
      v41 = 5;
    }

    else
    {
      v41 = v40;
    }

    LODWORD(v75) = v41;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_262038EAC(&qword_27FEF9920);
    sub_2620393DC();
    v42 = sub_26203A48C();
    if (qword_27FEF8758 != -1)
    {
      swift_once();
    }

    v43 = qword_27FEFADA8;
    v44 = v65;
    (*(v65 + 16))(v35, v38, v36);
    if (os_log_type_enabled(v43, v42))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v75 = v46;
      *v45 = 67109378;
      *(v45 + 4) = v39;
      *(v45 + 8) = 2082;
      sub_262038EAC(&unk_27FEF9B80);
      v47 = sub_26203ACCC();
      v48 = v35;
      v50 = v49;
      v51 = *(v44 + 8);
      v51(v48, v36);
      v52 = sub_261F67FE4(v47, v50, &v75);

      *(v45 + 10) = v52;
      _os_log_impl(&dword_261F5B000, v43, v42, "Read error: %d, %{public}s", v45, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x266724180](v46, -1, -1);
      v53 = v45;
      v38 = v71;
      MEMORY[0x266724180](v53, -1, -1);
    }

    else
    {
      v51 = *(v44 + 8);
      v51(v35, v36);
    }

    v57 = sub_2620392CC();
    v70(v57, 0, 1);

    v51(v38, v36);
  }

  else if (v64)
  {
    swift_beginAccess();
    sub_262038DD4(v31, v17);
    v54 = sub_26203A6CC();
    sub_262038E44(v17);
    v74 = v54;
    if (swift_dynamicCast())
    {
      v55 = v72;
      v56 = v73;
      if (MEMORY[0x266721A20](v72, v73) >= 1)
      {
        sub_261F6B73C(v55, v56);
        a5(v55, v56, 0);
        sub_261F6BFFC(v55, v56);
        sub_261F6BFFC(v55, v56);
        return;
      }

      sub_261F6BFFC(v55, v56);
    }

    sub_26203A48C();
    if (qword_27FEF8758 != -1)
    {
      swift_once();
    }

    v58 = MEMORY[0x277D84F90];
    sub_26203969C();
    LODWORD(v72) = 32;
    sub_261F9D4D8(v58);
    sub_262038EAC(&qword_27FEF9920);
    v59 = v62;
    sub_2620393DC();
    v60 = sub_2620392CC();
    (*(v65 + 8))(v59, v36);
    a5(v60, 0, 1);
  }
}

uint64_t sub_2620389F0(char a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5)
{
  v9 = sub_2620392DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v12);
  v17 = &v32[-v16];
  if (a3)
  {
    v36 = a5;
    v18 = sub_2620396AC();
    if ((v18 & 0x100000000) != 0)
    {
      v19 = 5;
    }

    else
    {
      v19 = v18;
    }

    v38 = v19;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_262038EAC(&qword_27FEF9920);
    sub_2620393DC();
    v20 = sub_26203A48C();
    if (qword_27FEF8758 != -1)
    {
      swift_once();
    }

    v21 = qword_27FEFADA8;
    (*(v10 + 16))(v14, v17, v9);
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v35 = a4;
      v23 = v22;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v23 = 67109378;
      *(v23 + 4) = a3;
      *(v23 + 8) = 2082;
      sub_262038EAC(&unk_27FEF9B80);
      v33 = v20;
      v24 = sub_26203ACCC();
      v26 = v25;
      v27 = *(v10 + 8);
      v27(v14, v9);
      v28 = sub_261F67FE4(v24, v26, &v37);

      *(v23 + 10) = v28;
      _os_log_impl(&dword_261F5B000, v21, v33, "Write error: %d, %{public}s", v23, 0x12u);
      v29 = v34;
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x266724180](v29, -1, -1);
      v30 = v23;
      a4 = v35;
      MEMORY[0x266724180](v30, -1, -1);
    }

    else
    {
      v27 = *(v10 + 8);
      v27(v14, v9);
    }

    v31 = sub_2620392CC();
    a4();

    return (v27)(v17, v9);
  }

  else if (a1)
  {
    return (a4)(0);
  }

  return result;
}

uint64_t sub_262038D2C(uint64_t a1, uint64_t a2)
{
  result = sub_26203937C();
  if (!result || (result = sub_2620393AC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26203939C();
      return sub_262039FFC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_262038DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262038E44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262038EAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2620392DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262038EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_261F5B000, v0, OS_LOG_TYPE_DEBUG, "%s Trying to determine whether interface index %ld comes from NCM.", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_3();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_261F5B000, v1, OS_LOG_TYPE_ERROR, "%s IOServiceGetMatchingServices failed for inteface name %s. Result: %d", v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ServiceHasAppleNCMParent";
  OUTLINED_FUNCTION_1_3(&dword_261F5B000, a2, a3, "%s Figuring out if service has NCM as parent.", a1);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ServiceHasAppleNCMParent";
  OUTLINED_FUNCTION_1_3(&dword_261F5B000, a2, a3, "%s interface parent does have valid USB vendor ID property", a1);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_5(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ServiceHasAppleNCMParent";
  OUTLINED_FUNCTION_1_3(&dword_261F5B000, a2, a3, "%s interface parent does not conform to AppleUSBNCMData", a1);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_6()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_261F5B000, v0, v1, "%s IOBSDNameMatching returned nil for inteface name %s.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_7()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_261F5B000, v0, v1, "%s Unable to look up name for interface index %ld.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_8()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_261F5B000, v0, v1, "%s Invalid interface index %ld.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}