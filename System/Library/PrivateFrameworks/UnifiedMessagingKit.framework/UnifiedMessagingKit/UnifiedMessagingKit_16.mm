uint64_t sub_2705078D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270507644(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2705078FC(uint64_t a1)
{
  v2 = sub_270507BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270507938(uint64_t a1)
{
  v2 = sub_270507BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptNotificationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5A38);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *(v1 + 8);
  v26 = *(v1 + 16);
  v27 = v9;
  v33 = *(v1 + 24);
  v10 = *(v1 + 32);
  v24 = *(v1 + 40);
  v25 = v10;
  v11 = *(v1 + 48);
  v22 = *(v1 + 56);
  v12 = *(v1 + 72);
  v23 = *(v1 + 64);
  v19 = v12;
  v20 = *(v1 + 80);
  v21 = v11;
  v13 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270507BC8();
  sub_2705D84C4();
  LOBYTE(v29) = 0;
  v14 = v28;
  sub_2705D8074();
  if (!v14)
  {
    v16 = v24;
    v15 = v25;
    LODWORD(v28) = v13;
    v17 = v23;
    LOBYTE(v29) = 1;
    sub_2705D8034();
    LOBYTE(v29) = 2;
    sub_2705D8044();
    v29 = v15;
    v30 = v16;
    v31 = v21;
    v32 = v22;
    v34 = 3;
    sub_2703B4AA0(v15, v16, v21, v22);
    sub_2703C38C8();
    OUTLINED_FUNCTION_2_60();
    OUTLINED_FUNCTION_11_4();
    v29 = v17;
    v30 = v19;
    v31 = v20;
    v32 = v28;
    v34 = 4;
    sub_2703B4AA0(v17, v19, v20, v28);
    OUTLINED_FUNCTION_2_60();
    OUTLINED_FUNCTION_11_4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_270507BC8()
{
  result = qword_2807D5A40;
  if (!qword_2807D5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A40);
  }

  return result;
}

void PromptNotificationModel.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5A48);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270507BC8();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_0_60();
    v6 = sub_2705D7F94();
    OUTLINED_FUNCTION_0_60();
    v7 = sub_2705D7F54();
    v9 = v8;
    v23 = v7;
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_0_60();
    v20 = sub_2705D7F64();
    LOBYTE(__src[0]) = 3;
    sub_2703C3EB0();
    sub_2705D7F44();
    v19 = v25;
    v17 = v26;
    v18 = v27;
    v41 = v28;
    v42 = 4;
    sub_2705D7F44();
    v10 = v20 & 1;
    v22 = v20 & 1;
    v11 = OUTLINED_FUNCTION_0_3();
    v12(v11);
    v21 = v38;
    v16 = v39;
    v15 = v40;
    __src[0] = v6;
    __src[1] = v23;
    __src[2] = v9;
    LOBYTE(__src[3]) = v10;
    __src[4] = v19;
    __src[5] = v17;
    __src[6] = v18;
    v13 = v41;
    LOBYTE(__src[7]) = v41;
    __src[8] = v37;
    __src[9] = v38;
    v14 = v37;
    __src[10] = v39;
    LOBYTE(__src[11]) = v40;
    memcpy(a2, __src, 0x59uLL);
    sub_2703AE7F0(__src, &v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25 = v6;
    v26 = v23;
    v27 = v9;
    v28 = v22;
    v29 = v19;
    v30 = v17;
    v31 = v18;
    v32 = v13;
    v33 = v14;
    v34 = v21;
    v35 = v16;
    v36 = v15;
    sub_270508004(&v25);
  }
}

uint64_t sub_270508064(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_2705080A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptNotificationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2705081D8);
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

unint64_t sub_270508214()
{
  result = qword_2807D5A50;
  if (!qword_2807D5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A50);
  }

  return result;
}

unint64_t sub_27050826C()
{
  result = qword_2807D5A58;
  if (!qword_2807D5A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A58);
  }

  return result;
}

unint64_t sub_2705082C4()
{
  result = qword_2807D5A60;
  if (!qword_2807D5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_60()
{

  return sub_2705D8024();
}

unint64_t sub_270508368()
{
  result = qword_2807CECA8;
  if (!qword_2807CECA8)
  {
    type metadata accessor for PromptNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CECA8);
  }

  return result;
}

uint64_t sub_2705083C0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5A68);
  v2 = sub_2705D7104();
  sub_270508700();

  v3 = sub_27050854C();
  v4 = *a1;
  v10 = sub_270508744;
  v11 = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_27050860C;
  v9 = &block_descriptor_4;
  v5 = _Block_copy(v8);

  [v3 requestAuthorizationWithOptions:v4 completionHandler:v5];
  _Block_release(v5);
  v9 = sub_2705D6A74();
  v10 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1Tm(v8);
  sub_2705D6A64();
  sub_2705D6784();
  v6 = sub_2705D7074();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

id sub_27050854C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2705D7534();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t sub_2705085C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_2705D70D4();
  }

  else
  {
    return sub_2705D70E4();
  }
}

void sub_27050860C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_270508684@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_2705D6784();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

unint64_t sub_270508700()
{
  result = qword_2807D5A70;
  if (!qword_2807D5A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D5A70);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MessageItemServiceConfiguration.bag.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2705D49C4();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MessageItemServiceConfiguration.bag.setter()
{
  OUTLINED_FUNCTION_4_41();
  sub_2705D49C4();
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t MessageItemServiceConfiguration.clientInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageItemServiceConfiguration() + 20);
  sub_2705D49D4();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MessageItemServiceConfiguration()
{
  result = qword_2807D5A78;
  if (!qword_2807D5A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageItemServiceConfiguration.clientInfo.setter()
{
  OUTLINED_FUNCTION_4_41();
  v2 = *(type metadata accessor for MessageItemServiceConfiguration() + 20);
  sub_2705D49D4();
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t (*MessageItemServiceConfiguration.clientInfo.modify())(void, void)
{
  OUTLINED_FUNCTION_4_41();
  type metadata accessor for MessageItemServiceConfiguration();
  return CGSizeMake;
}

uint64_t MessageItemServiceConfiguration.languageOverride.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageItemServiceConfiguration() + 24));

  return v1;
}

uint64_t MessageItemServiceConfiguration.languageOverride.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageItemServiceConfiguration() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*MessageItemServiceConfiguration.languageOverride.modify())(void, void)
{
  OUTLINED_FUNCTION_4_41();
  type metadata accessor for MessageItemServiceConfiguration();
  return CGSizeMake;
}

uint64_t MessageItemServiceConfiguration.init(bag:clientInfo:languageOverride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = type metadata accessor for MessageItemServiceConfiguration();
  v7 = (a3 + *(v6 + 24));
  sub_2705D49C4();
  OUTLINED_FUNCTION_14();
  (*(v8 + 32))(a3, a1);
  v9 = *(v6 + 20);
  sub_2705D49D4();
  OUTLINED_FUNCTION_14();
  result = (*(v10 + 32))(a3 + v9, a2);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_270508B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2705D49C4();
  OUTLINED_FUNCTION_46_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_2705D49D4();
  OUTLINED_FUNCTION_46_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_270508C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2705D49C4();
  OUTLINED_FUNCTION_46_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2705D49D4();
    OUTLINED_FUNCTION_46_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_270508D54()
{
  sub_2705D49C4();
  if (v0 <= 0x3F)
  {
    sub_2705D49D4();
    if (v1 <= 0x3F)
    {
      sub_2703C1CC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_270508DF0(uint64_t a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = sub_2705D4074();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-1] - v11;
  v19[0] = a1;
  v19[1] = a2;
  sub_2705D4054();
  sub_2705D4064();
  v13 = *(v6 + 8);
  v13(v12, v4);
  sub_2703C2F54();
  sub_2705D7C54();
  v13(v10, v4);
  v19[0] = 0;
  sub_27050CF8C();

  v14 = sub_2703C9564();
  [v14 scanHexLongLong_];

  v15 = sub_2705D7644();

  if (v15 == 8)
  {
    v16 = v19[0] >> 24;
  }

  else if (v15 == 6)
  {
    v16 = v19[0] >> 16;
  }

  else
  {
    v16 = 0;
  }

  return v16 / 255.0;
}

uint64_t sub_270509020(char a1)
{
  switch(a1)
  {
    case 1:

      return sub_2705D5D14();
    case 2:

      return sub_2705D5D34();
    case 3:

      return MEMORY[0x282133478]();
    case 4:

      return MEMORY[0x282133428]();
    case 5:

      return MEMORY[0x282133438]();
    case 6:

      return MEMORY[0x282133408]();
    case 7:

      return sub_2705D5C54();
    case 8:

      return MEMORY[0x282133490]();
    case 9:

      return MEMORY[0x2821334A8]();
    case 10:

      return MEMORY[0x282133430]();
    case 11:

      return MEMORY[0x282133458]();
    case 12:

      return sub_2705D5CF4();
    case 13:

      return sub_2705D5C74();
    case 14:

      return sub_2705D5CB4();
    case 15:

      return sub_2705D5CD4();
    case 16:

      return sub_2705D5D54();
    case 17:

      return sub_2705D5D84();
    case 18:
      if (qword_2807CE798 != -1)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    case 19:
      if (qword_2807CE7A0 == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    case 20:

      return MEMORY[0x2821333A0]();
    case 21:
      if (qword_2807CE790 == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    case 22:
      if (qword_2807CE7A8 == -1)
      {
        goto LABEL_66;
      }

LABEL_67:
      swift_once();
LABEL_66:

      break;
    default:

      result = sub_2705D5C44();
      break;
  }

  return result;
}

uint64_t sub_27050936C()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D82B4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2705093B4(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x65676E61726FLL;
      break;
    case 2:
      result = 0x776F6C6C6579;
      break;
    case 3:
      v3 = 1701147239;
      goto LABEL_12;
    case 4:
      result = 1953393005;
      break;
    case 5:
      result = 1818322292;
      break;
    case 6:
      result = 1851881827;
      break;
    case 7:
      result = 1702194274;
      break;
    case 8:
      result = 0x6F6769646E69;
      break;
    case 9:
      result = 0x656C70727570;
      break;
    case 10:
      result = 1802398064;
      break;
    case 11:
      v3 = 2003792482;
LABEL_12:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
      break;
    case 12:
      result = 0x6574696877;
      break;
    case 13:
      result = 2036429415;
      break;
    case 14:
      result = 0x6B63616C62;
      break;
    case 15:
      result = 0x7261656C63;
      break;
    case 16:
      result = 0x7972616D697270;
      break;
    case 17:
    case 19:
      result = 0x7261646E6F636573;
      break;
    case 18:
      result = 0x547972616D697270;
      break;
    case 20:
      result = 0x746E65636361;
      break;
    case 21:
      result = 0x746E6954707061;
      break;
    case 22:
      result = 0x7972616974726574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27050962C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27050936C();
  *a1 = result;
  return result;
}

unint64_t sub_27050965C()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2705093B4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_270509734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2705D5C34();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v12 = v11 - v10;
  v13 = OUTLINED_FUNCTION_17_22();
  sub_270508DF0(v13, v14);
  OUTLINED_FUNCTION_13_4();
  v15 = *MEMORY[0x277CE0EE0];
  v16 = *(v8 + 104);
  v16(v12, v15, v6);
  OUTLINED_FUNCTION_23_18();
  if (a4)
  {
    sub_270508DF0(a3, a4);
    OUTLINED_FUNCTION_13_4();
    v16(v12, v15, v6);
    OUTLINED_FUNCTION_23_18();
  }

  else
  {
  }

  return sub_2703DC2EC();
}

uint64_t sub_270509878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369746E616D6573 && a2 == 0xED0000726F6C6F43;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F43786568 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_270509948(char a1)
{
  if (a1)
  {
    return 0x726F6C6F43786568;
  }

  else
  {
    return 0x6369746E616D6573;
  }
}

uint64_t sub_270509994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270509878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2705099BC(uint64_t a1)
{
  v2 = sub_27050CE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2705099F8(uint64_t a1)
{
  v2 = sub_27050CE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270509A34(uint64_t a1)
{
  v2 = sub_27050CE90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270509A70(uint64_t a1)
{
  v2 = sub_27050CE90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270509AAC(uint64_t a1)
{
  v2 = sub_27050CEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270509AE8(uint64_t a1)
{
  v2 = sub_27050CEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270509B24(uint64_t a1, void *a2)
{
  v2 = sub_2705D4D84();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v9 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  sub_2705D5244();
  v16 = *(v4 + 104);
  v16(v8, *MEMORY[0x277CDF3D0], v2);
  sub_2705D5154();
  sub_2705D5D64();
  OUTLINED_FUNCTION_24_23();
  v17 = *(v11 + 8);
  v18.n128_f64[0] = v17(v15, v9);
  OUTLINED_FUNCTION_28_14(v18, v19, v20, v21);
  sub_2705D5244();
  v16(v8, *MEMORY[0x277CDF3C0], v2);
  sub_2705D5154();
  sub_2705D5D64();
  OUTLINED_FUNCTION_24_23();
  v22.n128_f64[0] = v17(v15, v9);
  OUTLINED_FUNCTION_28_14(v22, v23, v24, v25);
  sub_270509D50(a2);
}

uint64_t sub_270509D50(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5B08);
  OUTLINED_FUNCTION_0();
  v28 = v5;
  v29 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5B10);
  OUTLINED_FUNCTION_0();
  v27 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5B18);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27050CE3C();
  sub_2705D84C4();
  v19 = *v2;
  if (v2[4])
  {
    v36 = 1;
    sub_27050CE90();
    sub_2705D7FE4();
    v35 = 0;
    v21 = v29;
    v20 = v30;
    sub_2705D8034();
    if (!v20)
    {
      v34 = 1;
      sub_2705D7FF4();
    }

    (*(v28 + 8))(v8, v21);
    return (*(v15 + 8))(v18, v31);
  }

  else
  {
    v33 = 0;
    sub_27050CEE4();
    OUTLINED_FUNCTION_21_22();
    sub_2705D7FE4();
    v32 = v19;
    sub_27050CF38();
    sub_2705D8084();
    (*(v27 + 8))(v13, v9);
    v23 = OUTLINED_FUNCTION_17_22();
    return v25(v23, v24);
  }
}

uint64_t sub_27050A068()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
    return sub_270509734(v1, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  }

  else
  {
    return sub_270509020(v1);
  }
}

uint64_t sub_27050A084@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5B48);
  OUTLINED_FUNCTION_0();
  v62 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5B50);
  OUTLINED_FUNCTION_0();
  v61 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5B58);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v18 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_27050CE3C();
  v19 = v66;
  sub_2705D8484();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v66 = v11;
  v60 = v7;
  v20 = v6;
  v21 = v17;
  v22 = sub_2705D7FB4();
  result = sub_27042C9F0(v22, 0);
  v27 = v12;
  if (v25 == v26 >> 1)
  {
    v28 = v14;
LABEL_10:
    v37 = sub_2705D7D84();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v39 = &unk_28805B1D0;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v28 + 8))(v21, v27);
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v58 = 0;
  v59 = v12;
  if (v25 < (v26 >> 1))
  {
    v28 = v14;
    v29 = *(v24 + v25);
    sub_27042C9E4(v25 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 != v33 >> 1)
    {
      v27 = v59;
      goto LABEL_10;
    }

    v34 = v29;
    if (v29)
    {
      LODWORD(v66) = v29;
      v71 = 1;
      sub_27050CE90();
      OUTLINED_FUNCTION_21_22();
      v35 = v58;
      sub_2705D7ED4();
      if (!v35)
      {
        v70 = 0;
        v36 = v20;
        v43 = sub_2705D7F54();
        v45 = v44;
        v69 = 1;
        v46 = sub_2705D7F04();
        v47 = (v62 + 8);
        v62 = v46;
        v53 = v52;
        swift_unknownObjectRelease();
        (*v47)(v36, v64);
        (*(v14 + 8))(v21, v59);
        v54 = v43;
        v55 = v62;
        v56 = v63;
        v34 = v66;
LABEL_15:
        result = __swift_destroy_boxed_opaque_existential_1(v65);
        *v56 = v54;
        *(v56 + 8) = v45;
        *(v56 + 16) = v55;
        *(v56 + 24) = v53;
        *(v56 + 32) = v34;
        return result;
      }
    }

    else
    {
      v68 = 0;
      sub_27050CEE4();
      OUTLINED_FUNCTION_21_22();
      v40 = v58;
      sub_2705D7ED4();
      v56 = v63;
      if (!v40)
      {
        sub_27050D080();
        sub_2705D7FA4();
        swift_unknownObjectRelease();
        v48 = OUTLINED_FUNCTION_25_19();
        v49(v48);
        v50 = OUTLINED_FUNCTION_17_22();
        v51(v50);
        v45 = 0;
        v55 = 0;
        v53 = 0;
        v54 = v67;
        goto LABEL_15;
      }
    }

    v41 = OUTLINED_FUNCTION_17_22();
    v42(v41);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  __break(1u);
  return result;
}

uint64_t sub_27050A660()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27050A6A0(char a1)
{
  result = 0x67694C6172746C75;
  switch(a1)
  {
    case 1:
      result = 1852401780;
      break;
    case 2:
      result = 0x746867696CLL;
      break;
    case 3:
      result = 0x72616C75676572;
      break;
    case 4:
      result = 0x6D756964656DLL;
      break;
    case 5:
      result = 0x646C6F62696D6573;
      break;
    case 6:
      result = 1684828002;
      break;
    case 7:
      result = 0x7976616568;
      break;
    case 8:
      result = 0x6B63616C62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27050A7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27050A068();
  *a1 = result;
  return result;
}

double sub_27050A7E8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_27050A084(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_27050A86C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27050A660();
  *a1 = result;
  return result;
}

uint64_t sub_27050A89C()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_27050A6A0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_27050A8C4()
{
  result = sub_27050A928();
  if (!v0)
  {
    sub_27050CCD8();
    sub_27050D0D4();
    return OUTLINED_FUNCTION_4_53();
  }

  return result;
}

uint64_t sub_27050A928()
{
  sub_2705D57A4();
  if (sub_2705D57B4())
  {
    return 0;
  }

  sub_2705D57D4();
  if (sub_2705D57B4())
  {
    return 1;
  }

  sub_2705D5804();
  if (sub_2705D57B4())
  {
    return 2;
  }

  sub_2705D5824();
  if (sub_2705D57B4())
  {
    return 3;
  }

  sub_2705D5814();
  if (sub_2705D57B4())
  {
    return 4;
  }

  sub_2705D5834();
  if (sub_2705D57B4())
  {
    return 5;
  }

  sub_2705D57C4();
  if (sub_2705D57B4())
  {
    return 6;
  }

  sub_2705D57F4();
  if (sub_2705D57B4())
  {
    return 7;
  }

  sub_2705D57E4();
  if (sub_2705D57B4())
  {
    return 7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705DC030;
  *(inited + 32) = 0x746867696577;
  *(inited + 40) = 0xE600000000000000;
  v2 = sub_2705D75D4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v4 = sub_2705D7494();
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_27050CFD0(0xD000000000000016, 0x8000000270615440, 0, v4);
  return swift_willThrow();
}

uint64_t sub_27050AB00(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_2705D57D4();
      break;
    case 2:
      result = sub_2705D5804();
      break;
    case 3:
      result = sub_2705D5824();
      break;
    case 4:
      result = sub_2705D5814();
      break;
    case 5:
      result = sub_2705D5834();
      break;
    case 6:
      result = sub_2705D57C4();
      break;
    case 7:
    case 8:
      result = sub_2705D57F4();
      break;
    default:
      result = sub_2705D57A4();
      break;
  }

  return result;
}

uint64_t sub_27050AB68()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27050ABA8(char a1)
{
  result = 0x30656C746974;
  switch(a1)
  {
    case 1:
      result = 0x746954656772616CLL;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x31656C746974;
      break;
    case 4:
      result = 0x32656C746974;
      break;
    case 5:
      result = 0x33656C746974;
      break;
    case 6:
      result = 0x656E696C64616568;
      break;
    case 7:
      result = 0x6C64616568627573;
      break;
    case 8:
      result = 2036625250;
      break;
    case 9:
      result = 0x74756F6C6C6163;
      break;
    case 10:
      result = 0x65746F6E746F6F66;
      break;
    case 11:
      result = 0x6E6F6974706163;
      break;
    case 12:
      result = 0x316E6F6974706163;
      break;
    case 13:
      result = 0x326E6F6974706163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27050AD38@<X0>(void *a1@<X8>)
{
  result = sub_27050AB00(*v1);
  *a1 = v4;
  return result;
}

uint64_t sub_27050AE58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27050AB68();
  *a1 = result;
  return result;
}

uint64_t sub_27050AE88()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_27050ABA8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_27050AEB0()
{

  result = sub_27050AF18();
  if (!v0)
  {
    sub_27050CC04();
    sub_27050D128();
    return OUTLINED_FUNCTION_4_53();
  }

  return result;
}

uint64_t sub_27050AF18()
{

  v1 = sub_2705D5744();
  OUTLINED_FUNCTION_18_20(v1);
  OUTLINED_FUNCTION_19_20();

  if (v0)
  {

    return 1;
  }

  else
  {

    v3 = sub_2705D5784();
    OUTLINED_FUNCTION_18_20(v3);
    OUTLINED_FUNCTION_19_20();

    v4 = sub_2705D5864();
    OUTLINED_FUNCTION_18_20(v4);
    OUTLINED_FUNCTION_19_20();

    v5 = sub_2705D5874();
    OUTLINED_FUNCTION_18_20(v5);
    OUTLINED_FUNCTION_19_20();

    v6 = sub_2705D58C4();
    OUTLINED_FUNCTION_18_20(v6);
    OUTLINED_FUNCTION_19_20();

    v7 = sub_2705D5754();
    OUTLINED_FUNCTION_18_20(v7);
    OUTLINED_FUNCTION_19_20();

    v8 = sub_2705D5774();
    OUTLINED_FUNCTION_18_20(v8);
    OUTLINED_FUNCTION_19_20();

    v9 = sub_2705D5884();
    OUTLINED_FUNCTION_18_20(v9);
    OUTLINED_FUNCTION_19_20();

    v10 = sub_2705D58B4();
    OUTLINED_FUNCTION_18_20(v10);
    OUTLINED_FUNCTION_19_20();

    v11 = sub_2705D5894();
    OUTLINED_FUNCTION_18_20(v11);
    OUTLINED_FUNCTION_19_20();

    v12 = sub_2705D58A4();
    OUTLINED_FUNCTION_18_20(v12);
    OUTLINED_FUNCTION_19_20();

    v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_27050CFD0(0x2064696C61766E49, 0xEC000000746E6F46, 0, 0);
    swift_willThrow();
  }
}

uint64_t sub_27050B1A0(char a1)
{
  switch(a1)
  {
    case 2:
    case 3:
      result = sub_2705D5784();
      break;
    case 4:
      result = sub_2705D5864();
      break;
    case 5:
      result = sub_2705D5874();
      break;
    case 6:
      result = sub_2705D58C4();
      break;
    case 7:
      result = sub_2705D5754();
      break;
    case 8:
      result = sub_2705D5774();
      break;
    case 9:
      result = sub_2705D5884();
      break;
    case 10:
      result = sub_2705D58B4();
      break;
    case 11:
    case 12:
      result = sub_2705D5894();
      break;
    case 13:
      result = sub_2705D58A4();
      break;
    default:
      result = sub_2705D5744();
      break;
  }

  return result;
}

uint64_t sub_27050B228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27050B1A0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_27050B320(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_2705D60B4();
      break;
    case 2:
      result = sub_2705D60C4();
      break;
    case 3:
      result = sub_2705D6084();
      break;
    case 4:
      result = sub_2705D6094();
      break;
    case 5:
      result = sub_2705D6034();
      break;
    case 6:
      result = sub_2705D6044();
      break;
    case 7:
      result = sub_2705D6054();
      break;
    case 8:
      result = sub_2705D6064();
      break;
    default:
      result = sub_2705D60A4();
      break;
  }

  return result;
}

uint64_t sub_27050B38C()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27050B3CC()
{
  result = OUTLINED_FUNCTION_27_12();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_5_54();
      break;
    case 2:
      result = OUTLINED_FUNCTION_6_52();
      break;
    case 3:
      result = OUTLINED_FUNCTION_15_32();
      break;
    case 4:
      result = OUTLINED_FUNCTION_22_9();
      break;
    case 5:
      result = 0x696461654C706F74;
      break;
    case 6:
      result = 0x6C69617254706F74;
      break;
    case 7:
      result = 0x654C6D6F74746F62;
      break;
    case 8:
      result = 0x72546D6F74746F62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27050B4DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27050B38C();
  *a1 = result;
  return result;
}

uint64_t sub_27050B50C()
{
  OUTLINED_FUNCTION_16_11();
  result = sub_27050B3CC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_27050B534()
{
  sub_27050B58C();
  sub_27050CB30();
  sub_27050D17C();
  return OUTLINED_FUNCTION_4_53();
}

uint64_t sub_27050B58C()
{
  v0 = sub_2705D60A4();
  if (OUTLINED_FUNCTION_20_18(v0, v1))
  {
    return 0;
  }

  v3 = sub_2705D60B4();
  if (OUTLINED_FUNCTION_20_18(v3, v4))
  {
    return 1;
  }

  v5 = sub_2705D60C4();
  if (OUTLINED_FUNCTION_20_18(v5, v6))
  {
    return 2;
  }

  v7 = sub_2705D6084();
  if (OUTLINED_FUNCTION_20_18(v7, v8))
  {
    return 3;
  }

  v9 = sub_2705D6094();
  if (OUTLINED_FUNCTION_20_18(v9, v10))
  {
    return 4;
  }

  v11 = sub_2705D6034();
  if (OUTLINED_FUNCTION_20_18(v11, v12))
  {
    return 5;
  }

  v13 = sub_2705D6044();
  if (OUTLINED_FUNCTION_20_18(v13, v14))
  {
    return 6;
  }

  v15 = sub_2705D6054();
  if (OUTLINED_FUNCTION_20_18(v15, v16))
  {
    return 7;
  }

  v17 = sub_2705D6064();
  if (OUTLINED_FUNCTION_20_18(v17, v18))
  {
    return 8;
  }

  result = OUTLINED_FUNCTION_3_56();
  __break(1u);
  return result;
}

uint64_t sub_27050B68C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27050B320(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27050B78C(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_2705D52B4();
      break;
    case 2:
      result = sub_2705D52C4();
      break;
    case 3:
      result = sub_2705D5294();
      break;
    case 4:
      result = sub_2705D5284();
      break;
    default:
      result = sub_2705D52D4();
      break;
  }

  return result;
}

uint64_t sub_27050B7D8()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27050B818()
{
  result = OUTLINED_FUNCTION_27_12();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_15_32();
      break;
    case 2:
      result = OUTLINED_FUNCTION_22_9();
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27050B8C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27050B7D8();
  *a1 = result;
  return result;
}

uint64_t sub_27050B8F8()
{
  OUTLINED_FUNCTION_16_11();
  result = sub_27050B818();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_27050B920()
{
  sub_2705D52D4();
  if (sub_2705D52A4())
  {
    return 0;
  }

  sub_2705D52B4();
  if (sub_2705D52A4())
  {
    return 1;
  }

  sub_2705D52C4();
  if (sub_2705D52A4())
  {
    return 2;
  }

  sub_2705D5294();
  if (sub_2705D52A4())
  {
    return 3;
  }

  sub_2705D5284();
  if (sub_2705D52A4())
  {
    return 4;
  }

  result = OUTLINED_FUNCTION_3_56();
  __break(1u);
  return result;
}

uint64_t sub_27050B9E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27050B78C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_27050BB1C(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_2705D53D4();
      break;
    case 2:
      result = sub_2705D53E4();
      break;
    case 3:
      result = sub_2705D5394();
      break;
    case 4:
      result = sub_2705D53A4();
      break;
    default:
      result = sub_2705D53C4();
      break;
  }

  return result;
}

uint64_t sub_27050BB68()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27050BBA8()
{
  result = OUTLINED_FUNCTION_27_12();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_5_54();
      break;
    case 2:
      result = OUTLINED_FUNCTION_6_52();
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27050BC58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27050BB68();
  *a1 = result;
  return result;
}

uint64_t sub_27050BC88()
{
  OUTLINED_FUNCTION_16_11();
  result = sub_27050BBA8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_27050BCB0(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(void))
{
  a3();
  a4();
  a5();
  return sub_2705D7754();
}

uint64_t sub_27050BD2C()
{
  sub_2705D53C4();
  if (sub_2705D52A4())
  {
    return 0;
  }

  sub_2705D53D4();
  if (sub_2705D52A4())
  {
    return 1;
  }

  sub_2705D53E4();
  if (sub_2705D52A4())
  {
    return 2;
  }

  sub_2705D5394();
  if (sub_2705D52A4())
  {
    return 3;
  }

  sub_2705D53A4();
  if (sub_2705D52A4())
  {
    return 4;
  }

  result = OUTLINED_FUNCTION_3_56();
  __break(1u);
  return result;
}

uint64_t sub_27050BDEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27050BB1C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_27050BF28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D5E14();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279E04880 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_27050BFA4()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27050BFE4(char a1)
{
  if (!a1)
  {
    return 0x6C6C616D73;
  }

  if (a1 == 1)
  {
    return 0x6D756964656DLL;
  }

  return 0x656772616CLL;
}

uint64_t sub_27050C054@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27050BFA4();
  *a1 = result;
  return result;
}

uint64_t sub_27050C084()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_27050BFE4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_27050C15C(uint64_t a1)
{
  sub_2705D5E14();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4, a1);
  result = sub_27050C25C(v6);
  if (!v1)
  {
    sub_27050C8B4();
    sub_27050D278();
    return sub_2705D7754();
  }

  return result;
}

uint64_t sub_27050C25C(uint64_t a1)
{
  v2 = sub_2705D5E14();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_17_22();
  v10(v9);
  v11 = (*(v4 + 88))(v8, v2);
  if (v11 == *MEMORY[0x277CE1050])
  {
    v12 = 0;
  }

  else if (v11 == *MEMORY[0x277CE1058])
  {
    v12 = 1;
  }

  else
  {
    if (v11 != *MEMORY[0x277CE1048])
    {
      v14 = sub_2705D7D84();
      swift_allocError();
      v16 = v15;
      sub_2705D7D04();
      MEMORY[0x2743A3A90](0xD000000000000014, 0x8000000270615490);
      sub_2705D7DF4();
      sub_2705D7D44();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
      swift_willThrow();
      v12 = *(v4 + 8);
      (v12)(a1, v2);
      (v12)(v8, v2);
      return v12;
    }

    v12 = 2;
  }

  (*(v4 + 8))(a1, v2);
  return v12;
}

uint64_t sub_27050C4F0()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27050C530(char a1)
{
  if (!a1)
  {
    return 0x7265746E6563;
  }

  if (a1 == 1)
  {
    return 0x676E696461656CLL;
  }

  return 0x676E696C69617274;
}

uint64_t sub_27050C5A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27050C4F0();
  *a1 = result;
  return result;
}

uint64_t sub_27050C5D8()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_27050C530(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_27050C600()
{
  sub_27050C7E0();
  sub_27050D2CC();
  return OUTLINED_FUNCTION_4_53();
}

uint64_t sub_27050C668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27050C4D8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_27050C78C()
{
  result = qword_2807D5A88;
  if (!qword_2807D5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A88);
  }

  return result;
}

unint64_t sub_27050C7E0()
{
  result = qword_2807D5A90;
  if (!qword_2807D5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A90);
  }

  return result;
}

unint64_t sub_27050C860()
{
  result = qword_2807D5A98;
  if (!qword_2807D5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A98);
  }

  return result;
}

unint64_t sub_27050C8B4()
{
  result = qword_2807D5AA0;
  if (!qword_2807D5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AA0);
  }

  return result;
}

unint64_t sub_27050C934()
{
  result = qword_2807D5AA8;
  if (!qword_2807D5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AA8);
  }

  return result;
}

unint64_t sub_27050C988()
{
  result = qword_2807D5AB0;
  if (!qword_2807D5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AB0);
  }

  return result;
}

unint64_t sub_27050CA08()
{
  result = qword_2807D5AB8;
  if (!qword_2807D5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AB8);
  }

  return result;
}

unint64_t sub_27050CA5C()
{
  result = qword_2807D5AC0;
  if (!qword_2807D5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AC0);
  }

  return result;
}

unint64_t sub_27050CADC()
{
  result = qword_2807D5AC8;
  if (!qword_2807D5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AC8);
  }

  return result;
}

unint64_t sub_27050CB30()
{
  result = qword_2807D5AD0;
  if (!qword_2807D5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AD0);
  }

  return result;
}

unint64_t sub_27050CBB0()
{
  result = qword_2807D5AD8;
  if (!qword_2807D5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AD8);
  }

  return result;
}

unint64_t sub_27050CC04()
{
  result = qword_2807D5AE0;
  if (!qword_2807D5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AE0);
  }

  return result;
}

unint64_t sub_27050CC84()
{
  result = qword_2807D5AE8;
  if (!qword_2807D5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AE8);
  }

  return result;
}

unint64_t sub_27050CCD8()
{
  result = qword_2807D5AF0;
  if (!qword_2807D5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AF0);
  }

  return result;
}

uint64_t sub_27050CD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_27050CD94()
{
  result = qword_2807D5AF8;
  if (!qword_2807D5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5AF8);
  }

  return result;
}

unint64_t sub_27050CDE8()
{
  result = qword_2807D5B00;
  if (!qword_2807D5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B00);
  }

  return result;
}

unint64_t sub_27050CE3C()
{
  result = qword_2807D5B20;
  if (!qword_2807D5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B20);
  }

  return result;
}

unint64_t sub_27050CE90()
{
  result = qword_2807D5B28;
  if (!qword_2807D5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B28);
  }

  return result;
}

unint64_t sub_27050CEE4()
{
  result = qword_2807D5B30;
  if (!qword_2807D5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B30);
  }

  return result;
}

unint64_t sub_27050CF38()
{
  result = qword_2807D5B38;
  if (!qword_2807D5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B38);
  }

  return result;
}

unint64_t sub_27050CF8C()
{
  result = qword_2807D5B40;
  if (!qword_2807D5B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D5B40);
  }

  return result;
}

id sub_27050CFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2705D7534();

  if (a4)
  {
    v8 = sub_2705D7454();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t sub_27050D080()
{
  result = qword_2807D5B60;
  if (!qword_2807D5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B60);
  }

  return result;
}

unint64_t sub_27050D0D4()
{
  result = qword_2807D5B68;
  if (!qword_2807D5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B68);
  }

  return result;
}

unint64_t sub_27050D128()
{
  result = qword_2807D5B70;
  if (!qword_2807D5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B70);
  }

  return result;
}

unint64_t sub_27050D17C()
{
  result = qword_2807D5B78;
  if (!qword_2807D5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B78);
  }

  return result;
}

unint64_t sub_27050D1D0()
{
  result = qword_2807D5B80;
  if (!qword_2807D5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B80);
  }

  return result;
}

unint64_t sub_27050D224()
{
  result = qword_2807D5B88;
  if (!qword_2807D5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B88);
  }

  return result;
}

unint64_t sub_27050D278()
{
  result = qword_2807D5B90;
  if (!qword_2807D5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B90);
  }

  return result;
}

unint64_t sub_27050D2CC()
{
  result = qword_2807D5B98;
  if (!qword_2807D5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5B98);
  }

  return result;
}

_BYTE *sub_27050D320(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
        JUMPOUT(0x27050D3ECLL);
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableDynamicColor.SemanticColorCodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x27050D4CCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_27050D508(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_35_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_33_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27050D5C4);
      case 4:
        result = OUTLINED_FUNCTION_34_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemGlyphLabelComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_27050D6B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
        JUMPOUT(0x27050D77CLL);
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27050D7B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_28_2(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_28_2(v8);
}

_BYTE *sub_27050D834(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_35_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_33_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27050D8F0);
      case 4:
        result = OUTLINED_FUNCTION_34_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27050D938(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_28_2(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_28_2((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_28_2(v8);
}

_BYTE *sub_27050D9BC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_35_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_33_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27050DA78);
      case 4:
        result = OUTLINED_FUNCTION_34_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_27050DABC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_35_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_33_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27050DB78);
      case 4:
        result = OUTLINED_FUNCTION_34_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27050DBB0()
{
  result = qword_2807D5BA0;
  if (!qword_2807D5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BA0);
  }

  return result;
}

unint64_t sub_27050DC08()
{
  result = qword_2807D5BA8;
  if (!qword_2807D5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BA8);
  }

  return result;
}

unint64_t sub_27050DC60()
{
  result = qword_2807D5BB0;
  if (!qword_2807D5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BB0);
  }

  return result;
}

unint64_t sub_27050DCB8()
{
  result = qword_2807D5BB8;
  if (!qword_2807D5BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BB8);
  }

  return result;
}

unint64_t sub_27050DD10()
{
  result = qword_2807D5BC0;
  if (!qword_2807D5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BC0);
  }

  return result;
}

unint64_t sub_27050DD68()
{
  result = qword_2807D5BC8;
  if (!qword_2807D5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BC8);
  }

  return result;
}

unint64_t sub_27050DDC0()
{
  result = qword_2807D5BD0;
  if (!qword_2807D5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BD0);
  }

  return result;
}

unint64_t sub_27050DE18()
{
  result = qword_2807D5BD8;
  if (!qword_2807D5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BD8);
  }

  return result;
}

unint64_t sub_27050DE70()
{
  result = qword_2807D5BE0;
  if (!qword_2807D5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BE0);
  }

  return result;
}

unint64_t sub_27050DEC8()
{
  result = qword_2807D5BE8;
  if (!qword_2807D5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BE8);
  }

  return result;
}

unint64_t sub_27050DF20()
{
  result = qword_2807D5BF0;
  if (!qword_2807D5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BF0);
  }

  return result;
}

unint64_t sub_27050DF78()
{
  result = qword_2807D5BF8;
  if (!qword_2807D5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5BF8);
  }

  return result;
}

unint64_t sub_27050DFD0()
{
  result = qword_2807D5C00;
  if (!qword_2807D5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C00);
  }

  return result;
}

unint64_t sub_27050E028()
{
  result = qword_2807D5C08;
  if (!qword_2807D5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C08);
  }

  return result;
}

unint64_t sub_27050E080()
{
  result = qword_2807D5C10;
  if (!qword_2807D5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C10);
  }

  return result;
}

unint64_t sub_27050E0D8()
{
  result = qword_2807D5C18;
  if (!qword_2807D5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C18);
  }

  return result;
}

unint64_t sub_27050E130()
{
  result = qword_2807D5C20;
  if (!qword_2807D5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C20);
  }

  return result;
}

unint64_t sub_27050E184()
{
  result = qword_2807D5C28;
  if (!qword_2807D5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_56()
{

  return sub_2705D7E54();
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return sub_2705D7754();
}

uint64_t OUTLINED_FUNCTION_18_20(uint64_t a1)
{

  return MEMORY[0x2821325C0](a1, v1);
}

uint64_t OUTLINED_FUNCTION_19_20()
{
}

uint64_t OUTLINED_FUNCTION_20_18(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x282133D08](a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_23_18()
{

  return sub_2705D5D94();
}

uint64_t OUTLINED_FUNCTION_28_14(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u32[0] = v5;
  a2.n128_u32[0] = v6;
  a3.n128_u32[0] = v7;
  a4.n128_u32[0] = v8;

  return MEMORY[0x2821334F0](a1, a2, a3, a4);
}

uint64_t sub_27050E36C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v53 = a3;
  sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v56 = v5;
  v57 = v4;
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v50 - v8;
  v9 = sub_2705D6654();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RecordMessageEventAction();
  OUTLINED_FUNCTION_4_4();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 6) = 0;
  *(v19 + 7) = 0;
  v19[64] = -1;
  v54 = *(v17 + 24);
  sub_2705D6764();
  v20 = *(v11 + 16);
  v58 = a2;
  v20(v14, a2, v9);
  MEMORY[0x2743A38C0](v14);
  sub_2704A1058();
  v21 = v55;
  sub_2705D6414();
  if (v21)
  {
    (*(v56 + 8))(v63, v57);

    (*(v11 + 8))(v58, v9);
    sub_2703AE980(*(v19 + 6), *(v19 + 7), v19[64]);
    sub_2705D6774();
    OUTLINED_FUNCTION_4_4();
    return (*(v22 + 8))(&v19[v54]);
  }

  v54 = v11;
  v55 = v15;

  v24 = v62;
  *v19 = *v61;
  *(v19 + 8) = *&v61[8];
  *(v19 + 24) = *&v61[24];
  v19[40] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5C38);
  v20(v14, v58, v9);
  MEMORY[0x2743A38C0](v14);
  sub_27050EAA8();
  v25 = v63;
  sub_2705D6414();
  v26 = v25;

  v27 = *v61;
  v28 = v61[16];
  sub_2703AE980(*(v19 + 6), *(v19 + 7), v19[64]);
  *(v19 + 3) = v27;
  v19[64] = v28;
  v29 = v51;
  sub_2705D6494();
  v30 = sub_2705D6444();
  v50 = v9;
  v31 = v55;
  if ((v30 & 1) == 0)
  {
    sub_2705D67A4();
    if (v60)
    {
      v32 = *(v56 + 8);
      v32(v29, v57);
      sub_2703B291C(&v59, v61);
      goto LABEL_8;
    }

    sub_27041FC70(&v59);
  }

  sub_2705D7184();
  OUTLINED_FUNCTION_0_61();
  sub_27050EE20(v33, v34);
  v35 = OUTLINED_FUNCTION_9_4();
  strcpy(v36, "failureAction");
  *(v36 + 7) = -4864;
  *(v36 + 2) = v31;
  OUTLINED_FUNCTION_4_4();
  (*(v37 + 104))();
  swift_willThrow();
  v32 = *(v56 + 8);
  v32(v29, v57);
  v38 = v35;
  v26 = v25;

  memset(v61, 0, sizeof(v61));
LABEL_8:
  OUTLINED_FUNCTION_1_63(*(v31 + 28));
  v39 = v52;
  sub_2705D6494();
  if (sub_2705D6444())
  {
LABEL_12:
    sub_2705D7184();
    OUTLINED_FUNCTION_0_61();
    sub_27050EE20(v41, v42);
    v43 = v39;
    v44 = v26;
    v45 = OUTLINED_FUNCTION_9_4();
    strcpy(v46, "successAction");
    *(v46 + 7) = -4864;
    *(v46 + 2) = v55;
    OUTLINED_FUNCTION_4_4();
    (*(v47 + 104))();
    swift_willThrow();
    v48 = v57;
    v32(v44, v57);
    v49 = v43;
    v31 = v55;
    v32(v49, v48);

    memset(v61, 0, sizeof(v61));
    goto LABEL_13;
  }

  sub_2705D67A4();
  if (!v60)
  {
    sub_27041FC70(&v59);
    goto LABEL_12;
  }

  v40 = v57;
  v32(v26, v57);
  v32(v39, v40);
  sub_2703B291C(&v59, v61);
LABEL_13:
  OUTLINED_FUNCTION_1_63(*(v31 + 32));
  sub_27050EB2C(v19, v53);
  (*(v54 + 8))(v58, v50);
  return sub_27050EB90(v19);
}

uint64_t sub_27050EA04(uint64_t a1)
{
  result = sub_27050EE20(&qword_2807D5C30, type metadata accessor for RecordMessageEventAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for RecordMessageEventAction()
{
  result = qword_2807D5C48;
  if (!qword_2807D5C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27050EAA8()
{
  result = qword_2807D5C40;
  if (!qword_2807D5C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5C38);
    sub_2703C3FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C40);
  }

  return result;
}

uint64_t sub_27050EB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMessageEventAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27050EB90(uint64_t a1)
{
  v2 = type metadata accessor for RecordMessageEventAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27050EC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2705D6774();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_27050EC9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2705D6774();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_27050ED1C()
{
  sub_2703F0028();
  if (v0 <= 0x3F)
  {
    sub_2705D6774();
    if (v1 <= 0x3F)
    {
      sub_2703F0078();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27050EDC8(uint64_t a1)
{
  result = sub_27050EE20(&qword_2807CEC98, type metadata accessor for RecordMessageEventAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27050EE20(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 OUTLINED_FUNCTION_1_63@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 144);
  v5 = *(v2 - 128);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 112);
  return result;
}

uint64_t sub_27050EE98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_27050EED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27050EF4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6576456B63696C63 && a2 == 0xEA0000000000746ELL;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

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

uint64_t sub_27050F0C4(char a1)
{
  result = 0x6E656D6563616C70;
  switch(a1)
  {
    case 1:
      result = 0x6576456B63696C63;
      break;
    case 2:
      result = 0x416572756C696166;
      break;
    case 3:
      result = 0x4173736563637573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27050F168(void *a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5C58);
  OUTLINED_FUNCTION_0();
  v42 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = *(v1 + 8);
  v39 = *v1;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v36 = *(v1 + 56);
  v37 = v11;
  v49 = *(v1 + 64);
  v12 = *(v1 + 72);
  v34 = *(v1 + 80);
  v35 = v12;
  v33 = *(v1 + 88);
  v32 = *(v1 + 96);
  v13 = *(v1 + 112);
  v28 = *(v1 + 104);
  v30 = *(v1 + 120);
  v31 = v13;
  v29 = *(v1 + 128);
  v14 = a1[3];
  v38 = a1[4];
  v15 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, v14);

  sub_2703B4984(v9, v10, v15);
  sub_27050F988();
  sub_2705D84C4();
  v43 = v39;
  v44 = v7;
  v45 = v8;
  v46 = v9;
  v16 = v40;
  v47 = v10;
  v48 = v15;
  v50 = 0;
  sub_2704A0944();
  OUTLINED_FUNCTION_1_64();
  v17 = v41;
  sub_2705D8084();
  if (v17)
  {
    v19 = v46;
    v18 = v47;
    v20 = v48;

    sub_2703AF9AC(v19, v18, v20);
    return (*(v42 + 8))(v6, v16);
  }

  else
  {
    v22 = v34;
    v23 = v35;
    v25 = v46;
    v24 = v47;
    v26 = v48;

    sub_2703AF9AC(v25, v24, v26);
    v43 = v37;
    v44 = v36;
    LOBYTE(v45) = v49;
    v50 = 1;
    sub_2703AE9E8(v37, v36, v49);
    sub_2703C39C4();
    OUTLINED_FUNCTION_1_64();
    sub_2705D8024();
    sub_2703AE980(v43, v44, v45);
    v43 = v23;
    v44 = v22;
    v45 = v33;
    LOBYTE(v46) = v32;
    v50 = 2;
    sub_2703B4AA0(v23, v22, v33, v32);
    sub_2703C38C8();
    OUTLINED_FUNCTION_1_64();
    sub_2705D8024();
    OUTLINED_FUNCTION_7_41();
    v27 = v42;
    v43 = v28;
    v44 = v31;
    v45 = v30;
    LOBYTE(v46) = v29;
    v50 = 3;
    sub_2703B4AA0(v28, v31, v30, v29);
    OUTLINED_FUNCTION_1_64();
    sub_2705D8024();
    OUTLINED_FUNCTION_7_41();
    return (*(v27 + 8))(0, v16);
  }
}

void sub_27050F494(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5C68);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v35 = a1;
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_27050F988();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_3_57();
    sub_2703AE980(a2, v12, v9);
    sub_2703AFC10(0, 0, v10, v11);
    OUTLINED_FUNCTION_3_17();
  }

  else
  {
    v33 = a2;
    v34 = v6;
    LOBYTE(v36[0]) = 0;
    sub_2704A1058();
    OUTLINED_FUNCTION_6_53();
    sub_2705D7FA4();
    v13 = v37;
    v29 = v39;
    v30 = v38;
    v31 = v40;
    v32 = v41;
    v58 = v42;
    LOBYTE(v36[0]) = 1;
    sub_2703C3FAC();
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_6_53();
    sub_2705D7F44();
    v27 = v37;
    v28 = v38;
    v26 = v39;
    sub_2703AE980(0, 0, 255);
    LOBYTE(v36[0]) = 2;
    sub_2703C3EB0();
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_6_53();
    sub_2705D7F44();
    v14 = v37;
    v25 = v38;
    v15 = v39;
    v16 = v40;
    OUTLINED_FUNCTION_3_17();
    v59 = 3;
    OUTLINED_FUNCTION_6_53();
    sub_2705D7F44();
    v17 = OUTLINED_FUNCTION_0_62();
    v18(v17);
    v19 = v54;
    v20 = v55;
    v34 = v54;
    v24 = v56;
    v21 = v57;
    OUTLINED_FUNCTION_3_17();
    v36[0] = v13;
    v36[1] = v30;
    v36[2] = v29;
    v36[3] = v31;
    v36[4] = v32;
    LOBYTE(v36[5]) = v58;
    v36[6] = v27;
    v36[7] = v28;
    LOBYTE(v36[8]) = v26;
    v36[9] = v14;
    v36[10] = v25;
    v36[11] = v15;
    LOBYTE(v36[12]) = v16;
    v36[13] = v19;
    v36[14] = v20;
    v22 = v24;
    v36[15] = v24;
    LOBYTE(v36[16]) = v21;
    memcpy(v33, v36, 0x81uLL);
    sub_2703B4928(v36, &v37);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v37 = v13;
    v38 = v30;
    v39 = v29;
    v40 = v31;
    v41 = v32;
    v42 = v58;
    v43 = v27;
    v44 = v28;
    v45 = v26;
    v46 = v14;
    v47 = v25;
    v48 = v15;
    v49 = v16;
    v50 = v34;
    v51 = v20;
    v52 = v22;
    v53 = v21;
    sub_2703B499C(&v37);
  }
}

uint64_t sub_27050F8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27050EF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27050F8E0(uint64_t a1)
{
  v2 = sub_27050F988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27050F91C(uint64_t a1)
{
  v2 = sub_27050F988();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27050F988()
{
  result = qword_2807D5C60;
  if (!qword_2807D5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecordMessageEventModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27050FAA8);
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

unint64_t sub_27050FAE4()
{
  result = qword_2807D5C70;
  if (!qword_2807D5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C70);
  }

  return result;
}

unint64_t sub_27050FB3C()
{
  result = qword_2807D5C78;
  if (!qword_2807D5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C78);
  }

  return result;
}

unint64_t sub_27050FB94()
{
  result = qword_2807D5C80;
  if (!qword_2807D5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5C80);
  }

  return result;
}

void OUTLINED_FUNCTION_7_41()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
  v4 = *(v0 - 120);
  v5 = *(v0 - 112);

  sub_2703AFC10(v2, v3, v4, v5);
}

unint64_t sub_27050FC78()
{
  result = qword_2807CEC98;
  if (!qword_2807CEC98)
  {
    type metadata accessor for RecordMessageEventAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEC98);
  }

  return result;
}

uint64_t sub_27050FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RecordMessageEventAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_27050EB2C(a1, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  sub_27051038C(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  sub_2704E1B94(&unk_270604C70, v9);
  sub_2703C7FFC();
  v11 = v10;

  return v11;
}

uint64_t sub_27050FE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(type metadata accessor for RecordMessageEventAction() - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27050FF14, 0, 0);
}

uint64_t sub_27050FF14()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_27050EB2C(v4, v1);
  sub_2705D78A4();

  v8 = sub_2705D7894();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v8;
  v10[3] = v11;
  v10[4] = v5;
  sub_27051038C(v1, v10 + v9);
  sub_270482728();

  v12 = *MEMORY[0x277D21CA8];
  sub_2705D6784();
  OUTLINED_FUNCTION_14();
  (*(v13 + 104))(v6, v12);

  OUTLINED_FUNCTION_1_4();

  return v14();
}

uint64_t sub_270510094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2705D78A4();
  v5[4] = sub_2705D7894();
  v7 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_27051012C, v7, v6);
}

uint64_t sub_27051012C()
{
  v20 = v0;
  v1 = *(v0 + 24);

  sub_270487E10();
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v13[0] = *v1;
  v13[1] = v2;
  v13[2] = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  LOBYTE(v1) = *(v1 + 64);
  v17 = v7;
  v18 = v8;
  v19 = v1;

  sub_2703B4984(v4, v5, v6);
  sub_2703AE9E8(v7, v8, v1);
  sub_27048DC28(v13, &v17);

  sub_2703AE980(v17, v18, v19);
  v9 = v14;
  v10 = v15;
  LOBYTE(v5) = v16;

  sub_2703AF9AC(v9, v10, v5);
  OUTLINED_FUNCTION_1_4();

  return v11();
}

uint64_t sub_270510260()
{
  type metadata accessor for RecordMessageEventAction();
  OUTLINED_FUNCTION_34_0();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v1 + v3;

  sub_2703AF9AC(*(v4 + 24), *(v4 + 32), *(v4 + 40));
  v5 = *(v1 + v3 + 64);
  if (v5 != 255)
  {
    sub_2703AE630(*(v4 + 48), *(v4 + 56), v5);
  }

  v6 = v0[6];
  sub_2705D6774();
  OUTLINED_FUNCTION_14();
  (*(v7 + 8))(v4 + v6);
  v8 = OUTLINED_FUNCTION_43(v0[7]);
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v10 = OUTLINED_FUNCTION_43(v0[8]);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_27051038C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMessageEventAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2705103F0(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordMessageEventAction() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2705104D4;

  return sub_27050FE14(a1, v6, v1 + v5);
}

uint64_t sub_2705104D4()
{

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2705105C4()
{
  type metadata accessor for RecordMessageEventAction();
  OUTLINED_FUNCTION_34_0();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = v1 + v3;

  sub_2703AF9AC(*(v4 + 24), *(v4 + 32), *(v4 + 40));
  v5 = *(v1 + v3 + 64);
  if (v5 != 255)
  {
    sub_2703AE630(*(v4 + 48), *(v4 + 56), v5);
  }

  v6 = v0[6];
  sub_2705D6774();
  OUTLINED_FUNCTION_14();
  (*(v7 + 8))(v4 + v6);
  v8 = OUTLINED_FUNCTION_43(v0[7]);
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v10 = OUTLINED_FUNCTION_43(v0[8]);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2705106F8(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordMessageEventAction() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2705104D4;

  return sub_270510094(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_270510804()
{
  v3 = OUTLINED_FUNCTION_53();
  type metadata accessor for ResponsiveArtworkUnderlay(v3);
  OUTLINED_FUNCTION_46_0();
  if (*(v5 + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v4);
  }

  else
  {
    v7 = *(v0 + *(v2 + 20));
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    v8 = v7 - 1;
    if (v8 < 0)
    {
      v8 = -1;
    }

    return (v8 + 1);
  }
}

void sub_2705108C0()
{
  v4 = OUTLINED_FUNCTION_2_61();
  type metadata accessor for ResponsiveArtworkUnderlay(v4);
  OUTLINED_FUNCTION_46_0();
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_26_5();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

void sub_270510968()
{
  type metadata accessor for ResponsiveArtworkUnderlay(319);
  if (v0 <= 0x3F)
  {
    sub_2705109EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2705109EC()
{
  if (!qword_2807D5C98)
  {
    type metadata accessor for DynamicSheetElementDimensionCache(255);
    sub_270510A50();
    v0 = sub_2705D50C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D5C98);
    }
  }
}

unint64_t sub_270510A50()
{
  result = qword_2807CFD50;
  if (!qword_2807CFD50)
  {
    type metadata accessor for DynamicSheetElementDimensionCache(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CFD50);
  }

  return result;
}

__n128 sub_270510AC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5CA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2705F38E0;
  *(v6 + 32) = sub_2705D5C44();
  *(v6 + 40) = sub_2705D5D34();
  *(v6 + 48) = sub_2705D5D14();
  *(v6 + 56) = sub_2705D5C54();
  *(v6 + 64) = sub_2705D5C44();
  sub_2705D6114();
  sub_2705D6104();
  MEMORY[0x2743A23D0](v6);
  sub_2705D4F44();
  v7 = sub_2705D5054();
  v8 = sub_2705D56C4();
  v9 = sub_2705D60A4();
  v11 = v10;
  v12 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5CA8) + 36);
  *v12 = sub_2705D53C4();
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5CB0);
  sub_270510C68(a2, a1, v12 + *(v13 + 44));
  v14 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5CB8) + 36));
  *v14 = v9;
  v14[1] = v11;
  *a3 = v16;
  result = v17;
  *(a3 + 24) = v18;
  *(a3 + 8) = v17;
  *(a3 + 40) = 256;
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  return result;
}

uint64_t sub_270510C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v93 = a3;
  v89 = type metadata accessor for LegibilityGradientView(0);
  v4 = MEMORY[0x28223BE20](v89);
  v88 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v85 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5CC0);
  v8 = MEMORY[0x28223BE20](v96);
  v87 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v86 = &v85 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v85 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v85 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5CC8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = (&v85 - v21);
  v23 = type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle(0);
  v24 = MEMORY[0x28223BE20](v23);
  v85 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v85 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5CD0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v92 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v91 = &v85 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v94 = &v85 - v34;
  MEMORY[0x28223BE20](v33);
  v97 = &v85 - v35;
  v36 = type metadata accessor for ResponsiveArtworkUnderlay(0);
  v37 = a1 + *(v36 + 32);
  v38 = *(v37 + 8);
  if (v38 == 1)
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
LABEL_4:
    sub_2703C2EFC(v22, &qword_2807D5CC8);
    v40 = 1;
    goto LABEL_9;
  }

  v90 = v16;
  v39 = *(v37 + 16);
  LOBYTE(v105) = *v37;
  *(&v105 + 1) = v38;
  LOBYTE(v106) = v39;
  sub_270401EF4(v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    goto LABEL_4;
  }

  sub_270511A88(v22, v27, type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle);
  sub_270511AE8(v27, v7, type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle);
  v7[*(v89 + 20)] = 0;
  sub_2705D4EB4();
  if (!*(a1 + *(type metadata accessor for ResponsiveArtworkUnderlayView(0) + 20)))
  {
    goto LABEL_18;
  }

  sub_270408F80();

  sub_270445B8C(v98);
  v41 = v98[0];
  v42 = v98[1];
  v43 = v98[2];
  v44 = v98[3];

  if ((v99 & 1) == 0)
  {
    v108.origin.x = v41;
    v108.origin.y = v42;
    v108.size.width = v43;
    v108.size.height = v44;
    CGRectGetHeight(v108);
  }

  sub_2705D60A4();
  sub_2705D4E64();
  sub_270511B48(v27);
  sub_270511A88(v7, v14, type metadata accessor for LegibilityGradientView);
  v45 = &v14[*(v96 + 36)];
  v46 = v101;
  *v45 = v100;
  *(v45 + 1) = v46;
  *(v45 + 2) = v102;
  v47 = v90;
  sub_270511BA4(v14, v90);
  sub_270511BA4(v47, v97);
  v40 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v97, v40, 1, v96);
  sub_2705D4EB4();
  *&v105 = sub_270511620(v48, v49);
  *(&v105 + 1) = v50;
  sub_2703C2F54();
  v51 = sub_2705D5944();
  v90 = v52;
  v54 = v53;
  v56 = v55;
  v57 = a1 + *(v36 + 36);
  v58 = *(v57 + 8);
  if (v58 == 1)
  {
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v23);
LABEL_12:
    v60 = v51;
    v61 = v56;
    sub_2703C2EFC(v20, &qword_2807D5CC8);
    v62 = 1;
LABEL_17:
    v74 = v94;
    __swift_storeEnumTagSinglePayload(v94, v62, 1, v96);
    v75 = v91;
    sub_2703C2E9C(v97, v91, &qword_2807D5CD0);
    v76 = v92;
    sub_2703C2E9C(v74, v92, &qword_2807D5CD0);
    v77 = v93;
    sub_2703C2E9C(v75, v93, &qword_2807D5CD0);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5CD8);
    v79 = v77 + v78[12];
    *v79 = 0;
    *(v79 + 8) = 1;
    v80 = v77 + v78[16];
    v81 = v90;
    *v80 = v60;
    *(v80 + 8) = v81;
    v82 = v54 & 1;
    *(v80 + 16) = v82;
    *(v80 + 24) = v61;
    v83 = v77 + v78[20];
    *v83 = 0;
    *(v83 + 8) = 1;
    sub_2703C2E9C(v76, v77 + v78[24], &qword_2807D5CD0);
    sub_2703CED5C(v60, v81, v82);

    sub_2703C2EFC(v74, &qword_2807D5CD0);
    sub_2703C2EFC(v97, &qword_2807D5CD0);
    sub_2703C2EFC(v76, &qword_2807D5CD0);
    sub_2703CEDB0(v60, v81, v82);

    return sub_2703C2EFC(v75, &qword_2807D5CD0);
  }

  v59 = *(v57 + 16);
  LOBYTE(v105) = *v57;
  *(&v105 + 1) = v58;
  LOBYTE(v106) = v59;
  sub_270401EF4(v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v23) == 1)
  {
    goto LABEL_12;
  }

  v63 = v85;
  sub_270511A88(v20, v85, type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle);
  v64 = v88;
  sub_270511AE8(v63, v88, type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle);
  *(v64 + *(v89 + 20)) = 1;
  sub_2705D4EB4();
  sub_2705D4EB4();
  if (*(a1 + *(type metadata accessor for ResponsiveArtworkUnderlayView(0) + 20)))
  {
    v60 = v51;

    sub_270408FA8();

    sub_270445B8C(v103);
    v65 = *v103;
    v66 = *&v103[1];
    v67 = *&v103[2];
    v68 = *&v103[3];

    if ((v104 & 1) == 0)
    {
      v109.origin.x = v65;
      v109.origin.y = v66;
      v109.size.width = v67;
      v109.size.height = v68;
      CGRectGetMinY(v109);
    }

    v61 = v56;
    sub_2705D60A4();
    sub_2705D4E64();
    sub_270511B48(v63);
    v69 = v87;
    sub_270511A88(v64, v87, type metadata accessor for LegibilityGradientView);
    v70 = (v69 + *(v96 + 36));
    v71 = v106;
    *v70 = v105;
    v70[1] = v71;
    v70[2] = v107;
    v72 = v69;
    v73 = v86;
    sub_270511BA4(v72, v86);
    sub_270511BA4(v73, v94);
    v62 = 0;
    goto LABEL_17;
  }

LABEL_18:
  type metadata accessor for DynamicSheetElementDimensionCache(0);
  sub_270510A50();
  result = sub_2705D50A4();
  __break(1u);
  return result;
}

uint64_t sub_270511620(double a1, double a2)
{
  if (*(v2 + *(type metadata accessor for ResponsiveArtworkUnderlayView(0) + 20)))
  {

    sub_270408F80();

    sub_270445B8C(v16);

    if (v17)
    {
      return 0xD000000000000011;
    }

    v5 = *v16;
    v6 = *&v16[1];
    v7 = *&v16[2];
    v8 = *&v16[3];

    sub_270408FA8();

    sub_270445B8C(v18);

    if (v19)
    {
      return 0xD000000000000011;
    }

    else
    {
      if (a1 == 0.0 || a2 == 0.0)
      {
        v15 = 0;
        sub_2705D7D04();
        MEMORY[0x2743A3A90](0xD000000000000014, 0x80000002706154D0);
        type metadata accessor for CGSize(0);
        sub_2705D7DF4();
      }

      else
      {
        v10 = *v18;
        v11 = *&v18[1];
        v13 = *&v18[3];
        v14 = *&v18[2];
        v20.origin.x = v5;
        v20.origin.y = v6;
        v20.size.width = v7;
        v20.size.height = v8;
        CGRectGetHeight(v20);
        v21.origin.x = v10;
        v21.origin.y = v11;
        v21.size.height = v13;
        v21.size.width = v14;
        CGRectGetHeight(v21);
        v15 = 2118209;
        v12 = sub_2705D79C4();
        MEMORY[0x2743A3A90](v12);

        MEMORY[0x2743A3A90](41, 0xE100000000000000);
      }

      return v15;
    }
  }

  else
  {
    type metadata accessor for DynamicSheetElementDimensionCache(0);
    sub_270510A50();
    result = sub_2705D50A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_270511890()
{
  v1 = *(type metadata accessor for ResponsiveArtworkUnderlayView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_2705D6734();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = type metadata accessor for ResponsiveArtworkUnderlay(0);
  v5(v2 + v6[5], v3);

  if (*(v2 + v6[8] + 8) != 1)
  {
  }

  if (*(v2 + v6[9] + 8) != 1)
  {
  }

  return swift_deallocObject();
}

double sub_2705119E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ResponsiveArtworkUnderlayView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_270510AC4(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_270511A88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_270511AE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_270511B48(uint64_t a1)
{
  v2 = type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270511BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270511C28()
{
  v3 = OUTLINED_FUNCTION_53();
  type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle(v3);
  OUTLINED_FUNCTION_46_0();
  if (*(v5 + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v4);
  }

  else
  {
    v7 = *(v0 + *(v2 + 20));
    if (v7 >= 2)
    {
      return v7 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_270511CD4()
{
  v4 = OUTLINED_FUNCTION_2_61();
  type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle(v4);
  OUTLINED_FUNCTION_46_0();
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_26_5();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

uint64_t sub_270511D5C()
{
  result = type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegibilityGradientView.Direction(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270511E9CLL);
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

unint64_t sub_270511F08()
{
  result = qword_2807D5D00;
  if (!qword_2807D5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5D00);
  }

  return result;
}

uint64_t sub_270511F78@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = a1(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_270511AE8(v4, &v15 - v10, a2);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  result = sub_270511A88(v11, v13 + v12, a2);
  *a4 = a3;
  a4[1] = v13;
  return result;
}

uint64_t sub_27051207C@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D08);
  MEMORY[0x28223BE20](v61);
  v57 = &v55 - v2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D10);
  MEMORY[0x28223BE20](v60);
  v59 = (&v55 - v3);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D18);
  MEMORY[0x28223BE20](v67);
  v62 = &v55 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D20);
  MEMORY[0x28223BE20](v58);
  v6 = &v55 - v5;
  v63 = sub_2705D6024();
  v7 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D28);
  MEMORY[0x28223BE20](v64);
  v66 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D30);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D38);
  MEMORY[0x28223BE20](v65);
  v15 = &v55 - v14;
  v16 = type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v1;
  sub_270511AE8(v1, v18, type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = v63;
      (*(v7 + 32))(v9, v18, v63);
      (*(v7 + 16))(v6, v9, v47);
      *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5960) + 56)] = 256;
      v48 = sub_2705D5054();
      v49 = sub_2705D56C4();
      v50 = &v6[*(v58 + 36)];
      *v50 = v48;
      v50[8] = v49;
      sub_2703C2E9C(v6, v13, &qword_2807D5D20);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D98);
      sub_270513224();
      sub_2705132A8();
      sub_2705D5434();
      sub_2703C2E9C(v15, v66, &qword_2807D5D38);
      swift_storeEnumTagMultiPayload();
      sub_270513198();
      sub_270513360();
      sub_2705D5434();
      sub_2703C2EFC(v15, &qword_2807D5D38);
      sub_2703C2EFC(v6, &qword_2807D5D20);
      result = (*(v7 + 8))(v9, v47);
      break;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5DB0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2705E10F0;
      sub_2705D5D44();
      *(v25 + 32) = sub_2705D5F94();
      *(v25 + 40) = v26;
      sub_2705D5D44();
      *(v25 + 48) = sub_2705D5F94();
      *(v25 + 56) = v27;
      sub_2705D5D44();
      *(v25 + 64) = sub_2705D5F94();
      *(v25 + 72) = v28;
      if (*(v19 + *(type metadata accessor for LegibilityGradientView(0) + 20)))
      {
        sub_2705D6134();
        sub_2705D6124();
      }

      else
      {
        sub_2705D6124();
        sub_2705D6134();
      }

      sub_2705D5FA4();
      sub_2705D4F44();
      v51 = sub_2705D5054();
      v52 = sub_2705D56C4();
      v53 = v59;
      *v59 = v71;
      *(v53 + 1) = v72;
      *(v53 + 3) = v73;
      v53[5] = v51;
      *(v53 + 48) = v52;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D50);
      sub_270513030(&qword_2807D5D58, &qword_2807D5D50, &unk_270604E88, sub_270512FDC);
      sub_270513030(&qword_2807D5D68, &qword_2807D5D08, &unk_270604E38, sub_2705130B4);
      v54 = v62;
      sub_2705D5434();
      v23 = &qword_2807D5D18;
      sub_2703C2E9C(v54, v66, &qword_2807D5D18);
      swift_storeEnumTagMultiPayload();
      sub_270513198();
      sub_270513360();
      sub_2705D5434();

      v24 = v54;
      goto LABEL_9;
    case 3u:
      v56 = v7;
      v29 = *(v7 + 32);
      v55 = v9;
      v30 = v18;
      v31 = v63;
      v29(v9, v30, v63);
      v32 = v57;
      (*(v7 + 16))(v57, v9, v31);
      *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5960) + 56)) = 256;
      v33 = sub_2705D60A4();
      v35 = v34;
      sub_270512C98(v19, &v71);
      v36 = v71;
      v37 = v72;
      v38 = v73;
      v39 = v74;
      v40 = BYTE8(v74);
      __src[0] = v33;
      __src[1] = v35;
      __src[2] = v71;
      *&__src[3] = v72;
      *&__src[5] = v73;
      __src[7] = v74;
      LOBYTE(__src[8]) = BYTE8(v74);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D40);
      memcpy((v32 + *(v41 + 36)), __src, 0x41uLL);
      v71 = v33;
      *&v72 = v35;
      *(&v72 + 1) = v36;
      v73 = v37;
      v74 = v38;
      v75 = v39;
      v76 = v40;
      sub_2703C2E9C(__src, v69, &qword_2807D5D48);
      sub_2703C2EFC(&v71, &qword_2807D5D48);
      v42 = sub_2705D5054();
      v43 = sub_2705D56C4();
      v44 = v32 + *(v61 + 36);
      *v44 = v42;
      *(v44 + 8) = v43;
      sub_2703C2E9C(v32, v59, &qword_2807D5D08);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D50);
      sub_270513030(&qword_2807D5D58, &qword_2807D5D50, &unk_270604E88, sub_270512FDC);
      sub_270513030(&qword_2807D5D68, &qword_2807D5D08, &unk_270604E38, sub_2705130B4);
      v45 = v62;
      sub_2705D5434();
      sub_2703C2E9C(v45, v66, &qword_2807D5D18);
      swift_storeEnumTagMultiPayload();
      sub_270513198();
      sub_270513360();
      sub_2705D5434();
      sub_2703C2EFC(v45, &qword_2807D5D18);
      sub_2703C2EFC(v32, &qword_2807D5D08);
      result = (*(v56 + 8))(v55, v63);
      break;
    default:
      v20 = *v18;
      v21 = sub_2705D5054();
      v22 = sub_2705D56C4();
      *v13 = v20;
      *(v13 + 1) = v21;
      v13[16] = v22;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5D98);
      sub_270513224();
      sub_2705132A8();
      sub_2705D5434();
      v23 = &qword_2807D5D38;
      sub_2703C2E9C(v15, v66, &qword_2807D5D38);
      swift_storeEnumTagMultiPayload();
      sub_270513198();
      sub_270513360();
      sub_2705D5434();

      v24 = v15;
LABEL_9:
      result = sub_2703C2EFC(v24, v23);
      break;
  }

  return result;
}

__n128 sub_270512C98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5DB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2705E6EB0;
  sub_2705D5CB4();
  sub_2705D5D44();

  *(v4 + 32) = sub_2705D5F94();
  *(v4 + 40) = v5;
  sub_2705D5CB4();
  sub_2705D5D44();

  *(v4 + 48) = sub_2705D5F94();
  *(v4 + 56) = v6;
  if (*(a1 + *(type metadata accessor for LegibilityGradientView(0) + 20)))
  {
    sub_2705D6134();
    sub_2705D6124();
  }

  else
  {
    sub_2705D6124();
    sub_2705D6134();
  }

  sub_2705D5FA4();
  sub_2705D4F44();
  v7 = sub_2705D5054();
  v8 = sub_2705D56C4();
  *a2 = v10;
  result = v12;
  *(a2 + 8) = v11;
  *(a2 + 24) = v12;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_270512E58()
{
  v1 = *(type metadata accessor for LegibilityGradientView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for ResponsiveArtworkUnderlay.LegibilityElement.ResolvedStyle(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:

      break;
    case 1u:
    case 3u:
      sub_2705D6024();
      OUTLINED_FUNCTION_14();
      (*(v3 + 8))(v0 + v2);
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

unint64_t sub_270512FDC()
{
  result = qword_2807D5D60;
  if (!qword_2807D5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5D60);
  }

  return result;
}

uint64_t sub_270513030(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2705130B4()
{
  result = qword_2807D5D70;
  if (!qword_2807D5D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5D40);
    sub_2703AFBC8(&qword_2807D5D78, &qword_2807D5960);
    sub_2703AFBC8(&qword_2807D5D80, &qword_2807D5D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5D70);
  }

  return result;
}

unint64_t sub_270513198()
{
  result = qword_2807D5D88;
  if (!qword_2807D5D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5D38);
    sub_270513224();
    sub_2705132A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5D88);
  }

  return result;
}

unint64_t sub_270513224()
{
  result = qword_2807D5D90;
  if (!qword_2807D5D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5D90);
  }

  return result;
}

unint64_t sub_2705132A8()
{
  result = qword_2807D5DA0;
  if (!qword_2807D5DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5D20);
    sub_2703AFBC8(&qword_2807D5D78, &qword_2807D5960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5DA0);
  }

  return result;
}

unint64_t sub_270513360()
{
  result = qword_2807D5DA8;
  if (!qword_2807D5DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5D18);
    sub_270513030(&qword_2807D5D58, &qword_2807D5D50, &unk_270604E88, sub_270512FDC);
    sub_270513030(&qword_2807D5D68, &qword_2807D5D08, &unk_270604E38, sub_2705130B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5DA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_65(unint64_t *a1, uint64_t *a2)
{

  return sub_2703AFBC8(a1, a2);
}

void *ResponsiveImageModel.init(regular:compact:)@<X0>(void *__src@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(a3, __src, 0xB0uLL);

  return memcpy((a3 + 176), a2, 0xB0uLL);
}

uint64_t sub_270513500(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C75676572 && a2 == 0xE700000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361706D6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_2705135D0(char a1)
{
  if (a1)
  {
    return 0x746361706D6F63;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_270513608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270513500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270513630(uint64_t a1)
{
  v2 = sub_2705138C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27051366C(uint64_t a1)
{
  v2 = sub_2705138C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResponsiveImageModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5DC8);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8 - 8];
  memcpy(v16, v1, sizeof(v16));
  memcpy(v17, (v1 + 176), 0xB0uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703B6DF4(v16, v15);
  sub_2705138C4();
  sub_2705D84C4();
  memcpy(v15, v16, sizeof(v15));
  v17[199] = 0;
  sub_2703BB7B4();
  OUTLINED_FUNCTION_2_62();
  sub_2705D8084();
  memcpy(v14, v15, sizeof(v14));
  sub_2703B6E2C(v14);
  if (!v2)
  {
    memcpy(v13, v17, sizeof(v13));
    v17[198] = 1;
    sub_270513918(v17, v12);
    OUTLINED_FUNCTION_2_62();
    sub_2705D8024();
    memcpy(v12, v13, sizeof(v12));
    sub_270513988(v12);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_2705138C4()
{
  result = qword_2807D5DD0;
  if (!qword_2807D5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5DD0);
  }

  return result;
}

uint64_t sub_270513918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270513988(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ResponsiveImageModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5DD8);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705138C4();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13[375] = 0;
  sub_2703BB604();
  OUTLINED_FUNCTION_1_66();
  sub_2705D7FA4();
  memcpy(v13, v12, 0xB0uLL);
  v13[374] = 1;
  OUTLINED_FUNCTION_1_66();
  sub_2705D7F44();
  v5 = OUTLINED_FUNCTION_0_3();
  v6(v5);
  memcpy(&v13[176], v11, 0xB0uLL);
  memcpy(v9, v13, sizeof(v9));
  memcpy(a2, v13, 0x160uLL);
  sub_2703BACBC(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v10, v13, sizeof(v10));
  return sub_270513C2C(v10);
}

uint64_t sub_270513C8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 352))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_270513CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponsiveImageModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270513E44);
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

unint64_t sub_270513E80()
{
  result = qword_2807D5DE0;
  if (!qword_2807D5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5DE0);
  }

  return result;
}

unint64_t sub_270513ED8()
{
  result = qword_2807D5DE8;
  if (!qword_2807D5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5DE8);
  }

  return result;
}

unint64_t sub_270513F30()
{
  result = qword_2807D5DF0;
  if (!qword_2807D5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5DF0);
  }

  return result;
}

uint64_t sub_270513FB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 648) = a1;
  *(v4 + 656) = type metadata accessor for MessageViewStyle(0);
  *(v4 + 664) = swift_task_alloc();
  sub_2705D6524();
  *(v4 + 672) = swift_task_alloc();
  v7 = *(a2 + 8);
  *(v4 + 680) = *a2;
  *(v4 + 688) = v7;
  *(v4 + 696) = *(a2 + 16);
  *(v4 + 641) = *(a2 + 32);
  *(v4 + 712) = *a4;

  return MEMORY[0x2822009F8](sub_2705140A0, 0, 0);
}

uint64_t sub_2705140A0()
{
  if (qword_2807CE838 != -1)
  {
    swift_once();
  }

  *(v0 + 720) = qword_28081C4F8;
  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v1 = *(sub_2705D6574() - 8);
  *(v0 + 736) = *(v1 + 72);
  *(v0 + 644) = *(v1 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2705E10F0;
  v59 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5DF8);
  *(v0 + 744) = v3;
  *(v0 + 40) = v3;
  *(v0 + 16) = &type metadata for RoutedStyleIntentImplementation;
  v4 = AMSLogKey();
  v5 = MEMORY[0x277D837D0];
  if (v4)
  {
    v6 = v4;
    v7 = v0 + 592;
    v8 = sub_2705D7564();
    v10 = v9;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v11 = OUTLINED_FUNCTION_7_42((v0 + 16));
    *(v0 + 584) = swift_getMetatypeMetadata();
    *(v0 + 560) = v11;
    sub_2705D64E4();
    sub_2704B667C(v0 + 560);
    OUTLINED_FUNCTION_7_24();
    *(v0 + 616) = v5;
    *(v0 + 592) = v8;
    *(v0 + 600) = v10;
  }

  else
  {
    v7 = v0 + 48;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v12 = OUTLINED_FUNCTION_7_42((v0 + 16));
    *(v0 + 72) = swift_getMetatypeMetadata();
    *(v0 + 48) = v12;
  }

  sub_2705D64E4();
  sub_2704B667C(v7);
  v58 = *(v0 + 712);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v15 = *(v0 + 688);
  v16 = *(v0 + 680);
  v17 = *(v0 + 641);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2705D64C4();
  *(v0 + 104) = &type metadata for RoutedStyleIntentModel;
  OUTLINED_FUNCTION_8_43();
  v18 = swift_allocObject();
  *(v0 + 80) = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v15;
  *(v18 + 32) = v14;
  *(v18 + 40) = v13;
  *(v18 + 48) = v17;

  sub_2703AE9E8(v14, v13, v17);
  sub_2705D6544();
  sub_2704B667C(v0 + 80);
  sub_27047CF60(v59);

  if (v58)
  {
    v19 = *(v0 + 712);
    v20 = *(v0 + 688);
    v21 = *(v0 + 680);
    sub_2703AE9E8(*(v0 + 696), *(v0 + 704), *(v0 + 641));
    v22 = sub_2703D82A0(v21, v20, v19);
    *(v0 + 752) = v22;
    *(v0 + 760) = v23;
    if (v22)
    {
      v24 = *(v0 + 641);
      *(v0 + 624) = *(v0 + 696);
      *(v0 + 640) = v24;
      v60 = (v22 + *v22);
      v25 = swift_task_alloc();
      *(v0 + 768) = v25;
      *v25 = v0;
      v25[1] = sub_270514888;
      v26 = *(v0 + 664);

      return v60(v26, v0 + 624);
    }

    v36 = *(v0 + 704);
    v37 = *(v0 + 696);
    v38 = *(v0 + 641);
    sub_270514F24();
    v61 = swift_allocError();
    swift_willThrow();
    sub_2703AE980(v37, v36, v38);
    OUTLINED_FUNCTION_5_56();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2705E10F0;
    *(v0 + 264) = v36;
    *(v0 + 240) = &type metadata for RoutedStyleIntentImplementation;
    v40 = AMSLogKey();
    if (v40)
    {
      v41 = v40;
      v42 = v0 + 368;
      v43 = sub_2705D7564();
      v45 = v44;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1((v0 + 240), *(v0 + 264));
      DynamicType = swift_getDynamicType();
      *(v0 + 360) = swift_getMetatypeMetadata();
      *(v0 + 336) = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v0 + 336);
      OUTLINED_FUNCTION_7_24();
      *(v0 + 392) = MEMORY[0x277D837D0];
      *(v0 + 368) = v43;
      *(v0 + 376) = v45;
    }

    else
    {
      v42 = v0 + 272;
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v48 = OUTLINED_FUNCTION_54_3((v0 + 240));
      *(v0 + 296) = swift_getMetatypeMetadata();
      *(v0 + 272) = v48;
    }

    sub_2705D64E4();
    sub_2704B667C(v42);
    v49 = *(v0 + 704);
    v50 = *(v0 + 696);
    v51 = *(v0 + 688);
    v52 = *(v0 + 680);
    v53 = *(v0 + 641);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v0 + 240);
    sub_2705D64C4();
    *(v0 + 328) = &type metadata for RoutedStyleIntentModel;
    OUTLINED_FUNCTION_8_43();
    v54 = swift_allocObject();
    *(v0 + 304) = v54;
    *(v54 + 16) = v52;
    *(v54 + 24) = v51;
    *(v54 + 32) = v50;
    *(v54 + 40) = v49;
    *(v54 + 48) = v53;

    sub_2703AE9E8(v50, v49, v53);
    sub_2705D6544();
    sub_2704B667C(v0 + 304);
    sub_27047CF78(v39);
  }

  else
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2705E6EB0;
    *(v0 + 136) = v3;
    *(v0 + 112) = &type metadata for RoutedStyleIntentImplementation;
    v29 = AMSLogKey();
    if (v29)
    {
      v30 = v29;
      v31 = v0 + 208;
      v32 = sub_2705D7564();
      v34 = v33;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v35 = OUTLINED_FUNCTION_9_41();
      *(v0 + 200) = swift_getMetatypeMetadata();
      *(v0 + 176) = v35;
      sub_2705D64E4();
      sub_2704B667C(v0 + 176);
      OUTLINED_FUNCTION_7_24();
      *(v0 + 232) = MEMORY[0x277D837D0];
      *(v0 + 208) = v32;
      *(v0 + 216) = v34;
    }

    else
    {
      v31 = v0 + 144;
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v47 = OUTLINED_FUNCTION_9_41();
      *(v0 + 168) = swift_getMetatypeMetadata();
      *(v0 + 144) = v47;
    }

    sub_2705D64E4();
    sub_2704B667C(v31);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    sub_2705D64C4();
    sub_27047CF78(v28);
  }

  v55 = OUTLINED_FUNCTION_0_63();
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v56);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_270514888()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_270514C20;
  }

  else
  {
    v2 = sub_27051499C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27051499C()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 641);
  sub_2703B8280(*(v0 + 752));
  sub_2703AE980(v3, v2, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2705E10F0;
  *(v0 + 424) = v1;
  *(v0 + 400) = &type metadata for RoutedStyleIntentImplementation;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = v0 + 528;
    v9 = sub_2705D7564();
    v11 = v10;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v12 = OUTLINED_FUNCTION_54_3((v0 + 400));
    *(v0 + 520) = swift_getMetatypeMetadata();
    *(v0 + 496) = v12;
    sub_2705D64E4();
    sub_2704B667C(v0 + 496);
    OUTLINED_FUNCTION_7_24();
    *(v0 + 552) = MEMORY[0x277D837D0];
    *(v0 + 528) = v9;
    *(v0 + 536) = v11;
  }

  else
  {
    v8 = v0 + 432;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v13 = OUTLINED_FUNCTION_7_42((v0 + 400));
    *(v0 + 456) = swift_getMetatypeMetadata();
    *(v0 + 432) = v13;
  }

  sub_2705D64E4();
  sub_2704B667C(v8);
  v14 = *(v0 + 664);
  v15 = *(v0 + 656);
  v16 = *(v0 + 648);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v0 + 400);
  sub_2705D64C4();
  *(v0 + 488) = v15;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 464));
  sub_270514F78(v14, boxed_opaque_existential_1Tm);
  sub_2705D6544();
  sub_2704B667C(v0 + 464);
  sub_27047CF90(v5);

  sub_270514FDC(v14, v16);
  v18 = OUTLINED_FUNCTION_0_63();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_270514C20()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 641);
  sub_2703B8280(*(v0 + 752));
  sub_2703AE980(v2, v1, v3);
  v24 = *(v0 + 776);
  OUTLINED_FUNCTION_5_56();
  v4 = swift_allocObject();
  *(v0 + 240) = &type metadata for RoutedStyleIntentImplementation;
  *(v4 + 16) = xmmword_2705E10F0;
  *(v0 + 264) = v1;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    v7 = v0 + 368;
    v8 = sub_2705D7564();
    v10 = v9;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1((v0 + 240), *(v0 + 264));
    DynamicType = swift_getDynamicType();
    *(v0 + 360) = swift_getMetatypeMetadata();
    *(v0 + 336) = DynamicType;
    sub_2705D64E4();
    sub_2704B667C(v0 + 336);
    OUTLINED_FUNCTION_7_24();
    *(v0 + 392) = MEMORY[0x277D837D0];
    *(v0 + 368) = v8;
    *(v0 + 376) = v10;
  }

  else
  {
    v7 = v0 + 272;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v12 = OUTLINED_FUNCTION_54_3((v0 + 240));
    *(v0 + 296) = swift_getMetatypeMetadata();
    *(v0 + 272) = v12;
  }

  sub_2705D64E4();
  sub_2704B667C(v7);
  v23 = v4;
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v15 = *(v0 + 688);
  v16 = *(v0 + 680);
  v17 = *(v0 + 641);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  sub_2705D64C4();
  *(v0 + 328) = &type metadata for RoutedStyleIntentModel;
  OUTLINED_FUNCTION_8_43();
  v18 = swift_allocObject();
  *(v0 + 304) = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v15;
  *(v18 + 32) = v14;
  *(v18 + 40) = v13;
  *(v18 + 48) = v17;

  sub_2703AE9E8(v14, v13, v17);
  sub_2705D6544();
  sub_2704B667C(v0 + 304);
  sub_27047CF78(v23);

  v19 = OUTLINED_FUNCTION_0_63();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_270514EDC()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_2703AE630(*(v0 + 32), *(v0 + 40), v1);
  }

  OUTLINED_FUNCTION_8_43();

  return swift_deallocObject();
}

unint64_t sub_270514F24()
{
  result = qword_2807D5E00;
  if (!qword_2807D5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5E00);
  }

  return result;
}

uint64_t sub_270514F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageViewStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270514FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageViewStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_42(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_9_41()
{
  __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));

  return swift_getDynamicType();
}

uint64_t MessageItemService.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MessageItemService.init(configuration:)(a1);
  return v2;
}

uint64_t MessageItemService.init(configuration:)(uint64_t a1)
{
  v3 = sub_2705D49C4();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2705D4B54();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC19UnifiedMessagingKit18MessageItemService_configuration;
  sub_2705152B8(a1, v1 + OBJC_IVAR____TtC19UnifiedMessagingKit18MessageItemService_configuration);
  (*(v5 + 16))(v8, v1 + v15, v3);
  sub_2705D49F4();
  sub_27051531C(a1);
  (*(v11 + 32))(v1 + OBJC_IVAR____TtC19UnifiedMessagingKit18MessageItemService_networkingService, v14, v9);
  return v1;
}

uint64_t sub_2705152B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageItemServiceConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27051531C(uint64_t a1)
{
  v2 = type metadata accessor for MessageItemServiceConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MessageItemService.fetchMessageItems(requests:)(uint64_t a1)
{
  *(v2 + 352) = a1;
  *(v2 + 360) = v1;
  return OUTLINED_FUNCTION_15_33();
}

uint64_t sub_27051538C()
{
  OUTLINED_FUNCTION_23_14();
  v1 = v0[44];
  if (*(v1 + 16))
  {
    memcpy(v0 + 2, (v1 + 32), 0x70uLL);
    memcpy(v0 + 16, (v1 + 32), 0x70uLL);
    sub_2704A1100((v0 + 2), (v0 + 30));
    swift_task_alloc();
    OUTLINED_FUNCTION_34_9();
    v0[46] = v2;
    *v2 = v3;
    v2[1] = sub_2705154B0;

    return sub_27051559C(v0 + 16);
  }

  else
  {
    sub_270516F14();
    OUTLINED_FUNCTION_21_6();
    *v5 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_1_4();

    return v6();
  }
}

uint64_t sub_2705154B0()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v2 = v1;
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;

  sub_2704A1138(v2 + 16);
  v6 = OUTLINED_FUNCTION_11_36();

  return v7(v6);
}

uint64_t sub_27051559C(const void *a1)
{
  v2[554] = v1;
  v2[555] = *v1;
  v4 = sub_2705D45C4();
  v2[556] = v4;
  v2[557] = *(v4 - 8);
  v2[558] = swift_task_alloc();
  sub_2705D6524();
  v2[559] = swift_task_alloc();
  v5 = sub_2705D4A64();
  v2[560] = v5;
  v2[561] = *(v5 - 8);
  v2[562] = swift_task_alloc();
  v6 = sub_2705D4A94();
  v2[563] = v6;
  v2[564] = *(v6 - 8);
  v7 = swift_task_alloc();
  v2[565] = v7;
  memcpy(v2 + 389, a1, 0x70uLL);
  memcpy(v2 + 403, a1, 0x70uLL);
  v8 = swift_task_alloc();
  v2[566] = v8;
  *v8 = v2;
  v8[1] = sub_2705157D0;

  return sub_270518630(v7, v2 + 403);
}

uint64_t sub_2705157D0()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 4536) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2705158CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_58_2();
  v14 = *(v12 + 4496);
  v15 = *(v12 + 4488);
  v16 = *(v12 + 4480);
  sub_2705D4A74();
  v17 = sub_2705D4A54();
  (*(v15 + 8))(v14, v16);
  i = &unk_2705E1000;
  v19 = MEMORY[0x277D837D0];
  if ((v17 & 1) == 0)
  {
    if (qword_2807CE838 != -1)
    {
      OUTLINED_FUNCTION_0_64();
    }

    v31 = *(v12 + 4440);
    v32 = *(v12 + 4432);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v33 = OUTLINED_FUNCTION_49_4();
    OUTLINED_FUNCTION_1_1(v33);
    OUTLINED_FUNCTION_29_8();
    v36 = v35 & ~v34;
    v137 = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2705E10F0;
    v39 = v38 + v36;
    *(v12 + 4160) = v31;
    *(v12 + 4136) = v32;

    v40 = AMSLogKey();
    if (v40)
    {
      v41 = v40;
      sub_2705D7564();
      OUTLINED_FUNCTION_52_3();

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v42 = OUTLINED_FUNCTION_52_1((v12 + 4136));
      *(v12 + 4000) = swift_getMetatypeMetadata();
      *(v12 + 3976) = v42;
      sub_2705D64E4();
      sub_270474A7C(v12 + 3976, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      *(v12 + 3904) = v19;
      *(v12 + 3880) = v13;
      *(v12 + 3888) = v31;
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v56 = OUTLINED_FUNCTION_54_3((v12 + 4136));
      *(v12 + 4128) = swift_getMetatypeMetadata();
      *(v12 + 4104) = v56;
    }

    v57 = sub_2705D64E4();
    OUTLINED_FUNCTION_42_7(v57, &unk_2807D4890);
    v58 = *(v12 + 4520);
    v59 = *(v12 + 4512);
    v135 = *(v12 + 4504);
    v60 = *(v12 + 4480);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v12 + 4136);
    OUTLINED_FUNCTION_55_3();
    sub_2705D64C4();
    *(v12 + 4096) = v60;
    __swift_allocate_boxed_opaque_existential_1Tm((v12 + 4072));
    sub_2705D4A74();
    sub_2705D6544();
    sub_270474A7C(v12 + 4072, &unk_2807D4890);
    sub_27047CF78(v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E58);
    OUTLINED_FUNCTION_23_3();
    v61 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_29_13(v61, xmmword_2705DC030);
    sub_270516F14();
    v62 = OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_58_4(v62, v63);
    *(v38 + v39 + 2 * v137) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E60);
    OUTLINED_FUNCTION_26_18();
    swift_storeEnumTagMultiPayload();
    sub_2704A1100(v12 + 3112, v12 + 3560);
    sub_27051AB40();
    OUTLINED_FUNCTION_36_11();
    (*(v59 + 8))(v58, v135);
    goto LABEL_45;
  }

  if (qword_2807CE838 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    OUTLINED_FUNCTION_0_64();
LABEL_3:
    OUTLINED_FUNCTION_53_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v20 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v20);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    v131 = *(i + 240);
    *(v23 + 16) = v131;
    v133 = v22;
    *(v12 + 3840) = v14;
    *(v12 + 3816) = v17;

    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      v26 = v12 + 4360;
      v27 = sub_2705D7564();
      v29 = v28;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v30 = OUTLINED_FUNCTION_41_7((v12 + 3816));
      *(v12 + 4352) = swift_getMetatypeMetadata();
      *(v12 + 4328) = v30;
      sub_2705D64E4();
      sub_270474A7C(v12 + 4328, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      *(v12 + 4384) = MEMORY[0x277D837D0];
      *(v12 + 4360) = v27;
      *(v12 + 4368) = v29;
    }

    else
    {
      v26 = v12 + 3848;
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v43 = OUTLINED_FUNCTION_5_57((v12 + 3816));
      *(v12 + 3872) = swift_getMetatypeMetadata();
      *(v12 + 3848) = v43;
    }

    sub_2705D64E4();
    sub_270474A7C(v26, &unk_2807D4890);
    v44 = *(v12 + 4536);
    v45 = *(v12 + 4520);
    sub_2705D6504();
    OUTLINED_FUNCTION_44_5();
    __swift_destroy_boxed_opaque_existential_1(v12 + 3816);
    sub_2705D64C4();
    v46 = sub_2705D4A84();
    *(v12 + 3808) = MEMORY[0x277CC9318];
    *(v12 + 3784) = v46;
    *(v12 + 3792) = v47;
    sub_2705D6544();
    sub_270474A7C(v12 + 3784, &unk_2807D4890);
    sub_27047CF78(v23);

    sub_2705D4014();
    swift_allocObject();
    sub_2705D4004();
    sub_2705D4A84();
    OUTLINED_FUNCTION_52_3();
    sub_27051AA04();
    v14 = 4416;
    OUTLINED_FUNCTION_60_5();
    if (v44)
    {
      (*(*(v12 + 4512) + 8))(*(v12 + 4520), *(v12 + 4504));
      OUTLINED_FUNCTION_64_5();

      if (qword_2807CE838 != -1)
      {
        OUTLINED_FUNCTION_0_64();
      }

      OUTLINED_FUNCTION_53_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v48 = swift_allocObject();
      *(v48 + 16) = v131;
      *(v12 + 4320) = 4416;
      *(v12 + 4296) = v45;

      v49 = AMSLogKey();
      if (v49)
      {
        v50 = v49;
        v51 = v12 + 4168;
        v52 = sub_2705D7564();
        v54 = v53;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v55 = OUTLINED_FUNCTION_41_7((v12 + 4296));
        *(v12 + 4224) = swift_getMetatypeMetadata();
        *(v12 + 4200) = v55;
        sub_2705D64E4();
        sub_270474A7C(v12 + 4200, &unk_2807D4890);
        OUTLINED_FUNCTION_7_24();
        *(v12 + 4192) = MEMORY[0x277D837D0];
        *(v12 + 4168) = v52;
        *(v12 + 4176) = v54;
      }

      else
      {
        v51 = v12 + 4264;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        __swift_project_boxed_opaque_existential_1((v12 + 4296), *(v12 + 4320));
        DynamicType = swift_getDynamicType();
        *(v12 + 4288) = swift_getMetatypeMetadata();
        *(v12 + 4264) = DynamicType;
      }

      sub_2705D64E4();
      sub_270474A7C(v51, &unk_2807D4890);
      sub_2705D6504();
      OUTLINED_FUNCTION_44_5();
      __swift_destroy_boxed_opaque_existential_1(v12 + 4296);
      OUTLINED_FUNCTION_25_20();
      swift_getErrorValue();
      *(v12 + 4256) = *(v12 + 4400);
      __swift_allocate_boxed_opaque_existential_1Tm((v12 + 4232));
      OUTLINED_FUNCTION_4_4();
      (*(v78 + 16))();
      sub_2705D6544();
      sub_270474A7C(v12 + 4232, &unk_2807D4890);
      sub_27047CF78(v48);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E58);
      OUTLINED_FUNCTION_23_3();
      v80 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_2705DC030;
      v82 = (v81 + v80);
      v83 = MEMORY[0x10C0];
      memcpy(v82, (v12 + 3112), 0x70uLL);
      *&v82[v83] = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E60);
      OUTLINED_FUNCTION_26_18();
      swift_storeEnumTagMultiPayload();
      sub_2704A1100(v12 + 3112, v12 + 3448);
      sub_27051AB40();
      OUTLINED_FUNCTION_36_11();
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_64_5();

    v65 = *(v12 + 4416);
    if (!*(v65 + 16))
    {
      break;
    }

    v66 = *(v65 + 72);
    if (!v66)
    {
      break;
    }

    v132 = *(v12 + 4416);
    v17 = v66 + 64;
    v129 = (v12 + 2992);
    v67 = -1;
    v68 = -1 << *(v66 + 32);
    if (-v68 < 64)
    {
      v67 = ~(-1 << -v68);
    }

    v45 = v67 & *(v66 + 64);
    v69 = (63 - v68) >> 6;
    swift_bridgeObjectRetain_n();
    v14 = 0;
    v23 = MEMORY[0x277D84F90];
    for (i = 24; v45; v45 &= v45 - 1)
    {
LABEL_26:
      v71 = *(v66 + 56) + 24 * (__clz(__rbit64(v45)) | (v14 << 6));
      v72 = *(v71 + 8);
      v73 = *(v71 + 16);
      *&__src[0] = *v71;
      *(&__src[0] + 1) = v72;
      LOBYTE(__src[1]) = v73;
      sub_2703AE9FC(*&__src[0], v72, v73);
      sub_270519178(__src, v142);
      sub_2703AE630(*&__src[0], *(&__src[0] + 1), __src[1]);
      if (v142[5])
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_270499AD0();
          v23 = v75;
        }

        v74 = *(v23 + 16);
        if (v74 >= *(v23 + 24) >> 1)
        {
          sub_270499AD0();
          v23 = v76;
        }

        memcpy(__dst, v142, 0x78uLL);
        *(v23 + 16) = v74 + 1;
        memcpy((v23 + 120 * v74 + 32), __dst, 0x78uLL);
        i = 24;
      }

      else
      {
        memcpy((v12 + 2512), v142, 0x78uLL);
        sub_270474A7C(v12 + 2512, &qword_2807D2450);
      }
    }

    while (1)
    {
      v70 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v70 >= v69)
      {

        v84 = MEMORY[0x277D837D0];
        v65 = v132;
        if (!v23)
        {
          goto LABEL_38;
        }

        if (*(v23 + 16))
        {
          v138 = *(v12 + 4504);
          v139 = *(v12 + 4520);
          v90 = *(v12 + 4464);
          v91 = *(v12 + 4456);
          v134 = *(v12 + 4448);
          v136 = *(v12 + 4512);
          memcpy((v12 + 2872), (v23 + 32), 0x78uLL);
          sub_270416AC0(v12 + 2872, v12 + 2752);
          sub_27051AB94(0, 1);
          sub_2704522D0(v12 + 1808);
          sub_2704522D0(v12 + 2160);
          v130 = *(v12 + 2968);
          v92 = *(v12 + 2984);
          memcpy(__dst, (v12 + 2160), sizeof(__dst));
          memcpy(__src, (v12 + 1808), sizeof(__src));
          *v129 = 0u;
          *(v12 + 3008) = 0u;
          *(v12 + 3024) = 0u;
          *(v12 + 3040) = 0u;
          *(v12 + 3056) = 0u;
          *(v12 + 3072) = 0u;
          *(v12 + 3088) = 0u;
          *(v12 + 3104) = 0;
          v127 = *(v12 + 2904);
          v128 = *(v12 + 2872);
          v124 = *(v12 + 2920);
          v125 = *(v12 + 2888);
          v126 = *(v12 + 2936);
          v123 = *(v12 + 2952);
          sub_270416AC0(v12 + 2872, v12 + 2632);
          sub_270474A7C(v129, &qword_2807D2450);
          *(v12 + 912) = v23;
          memcpy((v12 + 920), __src, 0x160uLL);
          *(v12 + 1272) = 0u;
          *(v12 + 1288) = 0u;
          *(v12 + 1304) = 0u;
          *(v12 + 1320) = 0u;
          memcpy((v12 + 1336), __dst, 0x160uLL);
          *(v12 + 1688) = v128;
          *(v12 + 1704) = v125;
          *(v12 + 1720) = v127;
          *(v12 + 1736) = v124;
          *(v12 + 1752) = v126;
          *(v12 + 1768) = v123;
          *(v12 + 1784) = v130;
          *(v12 + 1800) = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E58);
          OUTLINED_FUNCTION_23_3();
          v93 = OUTLINED_FUNCTION_13_31();
          *(v93 + 16) = xmmword_2705DC030;
          v94 = (v93 + v12 + 1272);
          v95 = &v94[*(v23 + 56)];
          memcpy(v94, (v12 + 3112), 0x70uLL);
          v96 = type metadata accessor for MessageItem();
          v97 = &v95[*(v96 + 24)];
          memcpy(v97, (v12 + 912), 0x380uLL);
          type metadata accessor for MessageViewStyle.ViewStyle(0);
          swift_storeEnumTagMultiPayload();
          sub_2704A1100(v12 + 3112, v12 + 3336);
          sub_2704385A4(v12 + 912, v12 + 16);
          sub_2705D45B4();
          v98 = sub_2705D45A4();
          v100 = v99;
          (*(v91 + 8))(v90, v134);
          v101 = type metadata accessor for MessageViewStyle(0);
          v102 = &v97[*(v101 + 20)];
          *v102 = 0;
          *(v102 + 1) = 0;
          v102[16] = -1;
          v103 = &v97[*(v101 + 24)];
          *v103 = v98;
          v103[1] = v100;
          v104 = *v102;
          v105 = *(v102 + 1);
          *v102 = 0;
          *(v102 + 1) = 0;
          v106 = v102[16];
          v102[16] = -1;
          sub_2703AE980(v104, v105, v106);
          *v95 = 0;
          *(v95 + 1) = 0;
          v95[16] = -1;
          *(v95 + 3) = 0;
          *(v95 + 4) = 0;
          v95[40] = -1;
          *&v95[*(v96 + 28)] = v132;
          sub_2703AE980(*v95, *(v95 + 1), v95[16]);
          *v95 = 0;
          *(v95 + 1) = 0;
          v95[16] = -1;
          sub_2703AE980(*(v95 + 3), *(v95 + 4), v95[40]);
          *(v95 + 3) = 0;
          *(v95 + 4) = 0;
          v95[40] = -1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E60);
          swift_storeEnumTagMultiPayload();
          sub_27051AB40();
          sub_2705D7494();
          sub_27051AC78(v12 + 2872);
          sub_2704385DC(v12 + 912);
          (*(v136 + 8))(v139, v138);
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      v45 = *(v17 + 8 * v70);
      ++v14;
      if (v45)
      {
        v14 = v70;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  v84 = MEMORY[0x277D837D0];
LABEL_38:

  OUTLINED_FUNCTION_53_3();
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_2705E6EB0;
  *(v12 + 3936) = v14;
  *(v12 + 3912) = v65;

  v86 = AMSLogKey();
  if (v86)
  {
    v87 = v86;
    v88 = v12 + 4040;
    sub_2705D7564();
    OUTLINED_FUNCTION_52_3();

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1((v12 + 3912), *(v12 + 3936));
    OUTLINED_FUNCTION_26_18();
    v89 = swift_getDynamicType();
    *(v12 + 4032) = swift_getMetatypeMetadata();
    *(v12 + 4008) = v89;
    sub_2705D64E4();
    sub_270474A7C(v12 + 4008, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    *(v12 + 4064) = v84;
    *(v12 + 4040) = v23;
    *(v12 + 4048) = v45;
  }

  else
  {
    v88 = v12 + 3944;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1((v12 + 3912), *(v12 + 3936));
    OUTLINED_FUNCTION_26_18();
    v107 = swift_getDynamicType();
    *(v12 + 3968) = swift_getMetatypeMetadata();
    *(v12 + 3944) = v107;
  }

  sub_2705D64E4();
  sub_270474A7C(v88, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v12 + 3912);
  sub_2705D64C4();
  sub_27047CF78(v85);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E58);
  OUTLINED_FUNCTION_23_3();
  v108 = OUTLINED_FUNCTION_13_31();
  OUTLINED_FUNCTION_29_13(v108, xmmword_2705DC030);
  sub_270516F14();
  v109 = OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_58_4(v109, v110);
  *(v85 + v85 + v133) = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E60);
  OUTLINED_FUNCTION_26_18();
  swift_storeEnumTagMultiPayload();
  sub_2704A1100(v12 + 3112, v12 + 3672);
  sub_27051AB40();
  OUTLINED_FUNCTION_36_11();
  v112 = OUTLINED_FUNCTION_8_3();
  v113(v112);
LABEL_45:
  OUTLINED_FUNCTION_59_6();

  OUTLINED_FUNCTION_11_36();
  OUTLINED_FUNCTION_33_7();

  return v116(v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12);
}

uint64_t sub_270516B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_32_11();
  v43 = v16[567];
  if (qword_2807CE838 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  OUTLINED_FUNCTION_53_3();
  v42 = qword_28081C4F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v17 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v17);
  OUTLINED_FUNCTION_29_8();
  v18 = OUTLINED_FUNCTION_37_10();
  *(v18 + 16) = xmmword_2705E10F0;
  v16[540] = v14;
  v16[537] = v15;

  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    v21 = (v16 + 521);
    v22 = sub_2705D7564();
    v24 = v23;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v25 = OUTLINED_FUNCTION_52_1(v16 + 537);
    v16[528] = swift_getMetatypeMetadata();
    v16[525] = v25;
    sub_2705D64E4();
    sub_270474A7C((v16 + 525), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v16[524] = MEMORY[0x277D837D0];
    v16[521] = v22;
    v16[522] = v24;
  }

  else
  {
    v21 = (v16 + 533);
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v26 = OUTLINED_FUNCTION_54_3(v16 + 537);
    v16[536] = swift_getMetatypeMetadata();
    v16[533] = v26;
  }

  sub_2705D64E4();
  sub_270474A7C(v21, &unk_2807D4890);
  sub_2705D6504();
  OUTLINED_FUNCTION_44_5();
  __swift_destroy_boxed_opaque_existential_1((v16 + 537));
  OUTLINED_FUNCTION_25_20();
  swift_getErrorValue();
  v16[532] = v16[550];
  __swift_allocate_boxed_opaque_existential_1Tm(v16 + 529);
  OUTLINED_FUNCTION_4_4();
  (*(v27 + 16))();
  sub_2705D6544();
  sub_270474A7C((v16 + 529), &unk_2807D4890);
  sub_27047CF78(v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E50);
  v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E58) - 8);
  v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2705DC030;
  v31 = v30 + v29;
  v32 = v28[14];
  memcpy((v30 + v29), v16 + 389, 0x70uLL);
  *(v31 + v32) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E60);
  OUTLINED_FUNCTION_26_18();
  swift_storeEnumTagMultiPayload();
  sub_2704A1100((v16 + 389), (v16 + 431));
  sub_27051AB40();
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_59_6();

  OUTLINED_FUNCTION_11_36();
  OUTLINED_FUNCTION_39_4();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, a12, a13, a14);
}

unint64_t sub_270516F14()
{
  result = qword_2807D5E08;
  if (!qword_2807D5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5E08);
  }

  return result;
}

uint64_t MessageItemService.fetchOfferSnippets(requests:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return OUTLINED_FUNCTION_15_33();
}

uint64_t sub_270516F7C()
{
  OUTLINED_FUNCTION_67_2();
  v1 = *(v0 + 64);
  if (*(v1 + 16))
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    *(v0 + 80) = v2;
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);
    *(v0 + 88) = v5;
    v6 = *(v1 + 64);
    *(v0 + 96) = v6;
    v7 = *(v1 + 72);
    *(v0 + 16) = v3;
    *(v0 + 104) = v7;
    *(v0 + 24) = v2;
    *(v0 + 32) = v4;
    *(v0 + 40) = v5;
    *(v0 + 48) = v6;
    *(v0 + 56) = v7;

    OUTLINED_FUNCTION_74_2();
    sub_270462DF8(v8, v9);
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v10[1] = sub_2705170CC;

    return sub_27051722C((v0 + 16));
  }

  else
  {
    sub_270516F14();
    OUTLINED_FUNCTION_21_6();
    *v12 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_1_4();

    return v13();
  }
}

uint64_t sub_2705170CC()
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_70();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;

  sub_270462E84(v3, v2);
  v6 = OUTLINED_FUNCTION_11_36();

  return v7(v6);
}

uint64_t sub_27051722C(__int128 *a1)
{
  *(v2 + 2488) = v1;
  *(v2 + 2496) = *v1;
  sub_2705D6524();
  *(v2 + 2504) = swift_task_alloc();
  v4 = sub_2705D4A64();
  *(v2 + 2512) = v4;
  *(v2 + 2520) = *(v4 - 8);
  *(v2 + 2528) = swift_task_alloc();
  v5 = sub_2705D4A94();
  *(v2 + 2536) = v5;
  *(v2 + 2544) = *(v5 - 8);
  v6 = swift_task_alloc();
  *(v2 + 2552) = v6;
  v7 = *a1;
  v8 = a1[1];
  *(v2 + 1920) = *a1;
  *(v2 + 1936) = v8;
  v9 = a1[2];
  *(v2 + 1952) = v9;
  *(v2 + 1680) = v7;
  *(v2 + 1696) = v8;
  *(v2 + 1712) = v9;
  v10 = swift_task_alloc();
  *(v2 + 2560) = v10;
  *v10 = v2;
  v10[1] = sub_270517404;

  return sub_270519300(v6, (v2 + 1680));
}

uint64_t sub_270517404()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 2568) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270517500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_58_2();
  v149 = (v12 + 240);
  v13 = v12[316];
  v14 = v12[315];
  v15 = v12[314];
  sub_2705D4A74();
  v16 = sub_2705D4A54();
  (*(v14 + 8))(v13, v15);
  if (v16)
  {
    if (qword_2807CE838 != -1)
    {
LABEL_39:
      OUTLINED_FUNCTION_0_64();
    }

    v17 = v12[312];
    v18 = v12[311];
    v141 = qword_28081C4F8;
    v144 = (v12 + 309);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v19 = OUTLINED_FUNCTION_49_4();
    OUTLINED_FUNCTION_1_1(v19);
    v22 = *(v21 + 80);
    v147 = *(v20 + 72);
    v136 = 3 * v147;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2705E10F0;
    v12[249] = v17;
    v12[246] = v18;

    v24 = AMSLogKey();
    v138 = v22;
    v140 = (v22 + 32) & ~v22;
    if (v24)
    {
      v25 = v24;
      v26 = (v12 + 302);
      v27 = sub_2705D7564();
      v29 = v28;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v30 = OUTLINED_FUNCTION_7_42(v12 + 246);
      v12[301] = swift_getMetatypeMetadata();
      v12[298] = v30;
      sub_2705D64E4();
      sub_270474A7C((v12 + 298), &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      v12[305] = MEMORY[0x277D837D0];
      v12[302] = v27;
      v12[303] = v29;
    }

    else
    {
      v26 = (v12 + 254);
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v44 = OUTLINED_FUNCTION_5_57(v12 + 246);
      v12[257] = swift_getMetatypeMetadata();
      v12[254] = v44;
    }

    sub_2705D64E4();
    sub_270474A7C(v26, &unk_2807D4890);
    v45 = v12[321];
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1((v12 + 246));
    sub_2705D64C4();
    v46 = sub_2705D4A84();
    v12[253] = MEMORY[0x277CC9318];
    v12[250] = v46;
    v12[251] = v47;
    sub_2705D6544();
    sub_270474A7C((v12 + 250), &unk_2807D4890);
    sub_27047CF60(v23);

    sub_2705D4014();
    swift_allocObject();
    sub_2705D4004();
    sub_2705D4A84();
    OUTLINED_FUNCTION_52_3();
    sub_27051AA04();
    OUTLINED_FUNCTION_60_5();
    if (v45)
    {
      (*(v12[318] + 8))(v12[319], v12[317]);
      OUTLINED_FUNCTION_64_5();

      if (qword_2807CE838 != -1)
      {
        OUTLINED_FUNCTION_0_64();
      }

      v92 = v12[312];
      v93 = v12[311];
      v146 = qword_28081C4F8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_2705E10F0;
      v12[297] = v92;
      v12[294] = v93;

      v95 = AMSLogKey();
      if (v95)
      {
        v96 = v95;
        v97 = (v12 + 278);
        v98 = sub_2705D7564();
        v100 = v99;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        v101 = OUTLINED_FUNCTION_7_42(v12 + 294);
        v12[285] = swift_getMetatypeMetadata();
        v12[282] = v101;
        sub_2705D64E4();
        sub_270474A7C((v12 + 282), &unk_2807D4890);
        OUTLINED_FUNCTION_7_24();
        v12[281] = MEMORY[0x277D837D0];
        v12[278] = v98;
        v12[279] = v100;
      }

      else
      {
        v97 = (v12 + 290);
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        v102 = OUTLINED_FUNCTION_7_42(v12 + 294);
        v12[293] = swift_getMetatypeMetadata();
        v12[290] = v102;
      }

      sub_2705D64E4();
      sub_270474A7C(v97, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1((v12 + 294));
      OUTLINED_FUNCTION_25_20();
      swift_getErrorValue();
      v12[289] = v12[307];
      __swift_allocate_boxed_opaque_existential_1Tm(v12 + 286);
      OUTLINED_FUNCTION_4_4();
      (*(v103 + 16))();
      sub_2705D6544();
      sub_270474A7C((v12 + 286), &unk_2807D4890);
      sub_27047CF78(v94);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E20);
      v104 = OUTLINED_FUNCTION_46_8();
      OUTLINED_FUNCTION_3_58(v104, xmmword_2705DC030, v105, v106, v107, v108, v109, v110, v111, 3, 6, v134, v136, v138, v140, 2 * v147, v146, v147, v149);
      v12[22] = v45;
      sub_27051A948((v12 + 22));
      memcpy((v104 + 80), v12 + 22, 0x99uLL);
      sub_27051A954(v92, (v12 + 228));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E28);
      sub_27051A9B0();
      OUTLINED_FUNCTION_36_11();
    }

    else
    {
      OUTLINED_FUNCTION_64_5();

      v63 = 0;
      v64 = *v144;
      v65 = MEMORY[0x277D84F90];
      v66 = *(*v144 + 16);
      v67 = 32;
      while (v66 != v63)
      {
        if (v63 >= *(v64 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v68 = v12[311];
        memcpy(v12 + 162, (v64 + v67), 0x60uLL);
        memcpy(__dst, (v64 + v67), sizeof(__dst));
        sub_2703D24BC((v12 + 162), (v12 + 198));
        sub_270519E80(__dst, v149, v68, __src);
        memcpy(v12 + 174, __dst, 0x60uLL);
        sub_2703D24F4((v12 + 174));
        memcpy(v12 + 146, __src, 0x80uLL);
        if (sub_2704369B4((v12 + 146)) == 1)
        {
          memcpy(v12 + 130, __src, 0x80uLL);
          sub_270474A7C((v12 + 130), &qword_2807D5E40);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_270499BA8();
            v65 = v70;
          }

          v69 = v65[2];
          if (v69 >= v65[3] >> 1)
          {
            sub_270499BA8();
            v65 = v71;
          }

          memcpy(v152, __src, sizeof(v152));
          v65[2] = v69 + 1;
          memcpy(&v65[16 * v69 + 4], v152, 0x80uLL);
        }

        v67 += 96;
        ++v63;
      }

      v72 = v12[319];
      v73 = v12[318];
      v74 = v12[317];
      if (v65[2])
      {
        memcpy(v12 + 114, v65 + 4, 0x80uLL);
        sub_2704A2980((v12 + 114), (v12 + 98));

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E20);
        v75 = OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_3_58(v75, xmmword_2705DC030, v76, v77, v78, v79, v80, v81, v82, 3, 6, v134, v136, v138, v140, v141, v144, v147, v149);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42A8);
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_2705E6EB0;
        *(v83 + 32) = 0x707954746E657665;
        *(v83 + 40) = 0xE900000000000065;
        v84 = MEMORY[0x277D837D0];
        *(v83 + 48) = 0x6B63696C63;
        *(v83 + 56) = 0xE500000000000000;
        *(v83 + 72) = v84;
        strcpy((v83 + 80), "messageItemId");
        *(v83 + 120) = v84;
        *(v83 + 94) = -4864;
        *(v83 + 96) = 1145656661;
        *(v83 + 104) = 0xE400000000000000;
        sub_2704A2980((v12 + 114), (v12 + 82));
        sub_27051A954(v63, (v12 + 222));
        OUTLINED_FUNCTION_8_3();
        v85 = sub_2705D7494();
        sub_27046BFF4(v85);
        v87 = v86;
        v89 = v88;
        v91 = v90;

        memcpy(&v153[7], v12 + 114, 0x80uLL);
        sub_2703AE980(0, 0, 255);
        v12[42] = v87;
        v12[43] = v89;
        *(v12 + 352) = v91;
        memcpy(v12 + 353, v153, 0x87uLL);
        sub_27051AA58((v12 + 42));
        memcpy((v75 + 80), v12 + 42, 0x99uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E28);
        sub_27051A9B0();
        sub_2705D7494();
        sub_2704A2A2C((v12 + 114));
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E20);
        v121 = OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_3_58(v121, xmmword_2705DC030, v122, v123, v124, v125, v126, v127, v128, 3, 6, v134, v136, v138, v140, v141, v144, v147, v149);
        sub_270516F14();
        v129 = OUTLINED_FUNCTION_21_6();
        OUTLINED_FUNCTION_58_4(v129, v130);
        v12[2] = v131;
        sub_27051A948((v12 + 2));
        memcpy((v121 + 80), v12 + 2, 0x99uLL);
        sub_27051A954(v63, (v12 + 216));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E28);
        sub_27051A9B0();
        sub_2705D7494();
      }

      (*(v73 + 8))(v72, v74);
    }
  }

  else
  {
    if (qword_2807CE838 != -1)
    {
      OUTLINED_FUNCTION_0_64();
    }

    v31 = v12[312];
    v32 = v12[311];
    v148 = qword_28081C4F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v33 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v33);
    v35 = *(v34 + 72);
    OUTLINED_FUNCTION_29_8();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2705E10F0;
    v12[277] = v31;
    v12[274] = v32;

    v37 = AMSLogKey();
    v145 = v35;
    if (v37)
    {
      v38 = v37;
      v39 = (v12 + 258);
      v40 = sub_2705D7564();
      v42 = v41;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v43 = OUTLINED_FUNCTION_41_7(v12 + 274);
      v12[265] = swift_getMetatypeMetadata();
      v12[262] = v43;
      sub_2705D64E4();
      sub_270474A7C((v12 + 262), &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      v12[261] = MEMORY[0x277D837D0];
      v12[258] = v40;
      v12[259] = v42;
    }

    else
    {
      v39 = (v12 + 270);
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1(v12 + 274, v12[277]);
      DynamicType = swift_getDynamicType();
      v12[273] = swift_getMetatypeMetadata();
      v12[270] = DynamicType;
    }

    sub_2705D64E4();
    sub_270474A7C(v39, &unk_2807D4890);
    v49 = v12[319];
    v50 = v12[318];
    v142 = v12[317];
    v51 = v12[314];
    sub_2705D6504();
    OUTLINED_FUNCTION_44_5();
    __swift_destroy_boxed_opaque_existential_1((v12 + 274));
    OUTLINED_FUNCTION_55_3();
    sub_2705D64C4();
    v12[269] = v51;
    __swift_allocate_boxed_opaque_existential_1Tm(v12 + 266);
    sub_2705D4A74();
    sub_2705D6544();
    sub_270474A7C((v12 + 266), &unk_2807D4890);
    sub_27047CF78(v36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E20);
    v52 = OUTLINED_FUNCTION_46_8();
    OUTLINED_FUNCTION_3_58(v52, xmmword_2705DC030, v53, v54, v55, v56, v57, v58, v59, v132, v133, v134, v135, v137, v139, v142, v145, v148, v149);
    sub_270516F14();
    v60 = OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_58_4(v60, v61);
    v12[62] = v62;
    sub_27051A948((v12 + 62));
    memcpy((v52 + 80), v12 + 62, 0x99uLL);
    sub_27051A954(v51, (v12 + 234));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E28);
    sub_27051A9B0();
    OUTLINED_FUNCTION_36_11();
    (*(v50 + 8))(v49, v143);
  }

  OUTLINED_FUNCTION_33_7();

  return v114(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

uint64_t sub_2705182E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_58_2();
  v15 = *(v12 + 2568);
  if (qword_2807CE838 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  v16 = *(v12 + 2496);
  v17 = *(v12 + 2488);
  v38 = qword_28081C4F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v18 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v18);
  OUTLINED_FUNCTION_29_8();
  *(OUTLINED_FUNCTION_37_10() + 16) = xmmword_2705E10F0;
  *(v12 + 2376) = v16;
  *(v12 + 2352) = v17;

  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    sub_2705D7564();
    OUTLINED_FUNCTION_33_14();

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v21 = OUTLINED_FUNCTION_52_1((v12 + 2352));
    *(v12 + 2280) = swift_getMetatypeMetadata();
    *(v12 + 2256) = v21;
    sub_2705D64E4();
    sub_270474A7C(v12 + 2256, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    *(v12 + 2248) = MEMORY[0x277D837D0];
    *(v12 + 2224) = v13;
    *(v12 + 2232) = v14;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v22 = OUTLINED_FUNCTION_54_3((v12 + 2352));
    *(v12 + 2344) = swift_getMetatypeMetadata();
    *(v12 + 2320) = v22;
  }

  sub_2705D64E4();
  v23 = OUTLINED_FUNCTION_8_3();
  sub_270474A7C(v23, v24);
  sub_2705D6504();
  OUTLINED_FUNCTION_44_5();
  __swift_destroy_boxed_opaque_existential_1(v12 + 2352);
  OUTLINED_FUNCTION_25_20();
  swift_getErrorValue();
  *(v12 + 2312) = *(v12 + 2456);
  __swift_allocate_boxed_opaque_existential_1Tm((v12 + 2288));
  OUTLINED_FUNCTION_4_4();
  (*(v25 + 16))();
  sub_2705D6544();
  sub_270474A7C(v12 + 2288, &unk_2807D4890);
  OUTLINED_FUNCTION_48_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E20);
  v26 = OUTLINED_FUNCTION_46_8();
  v27 = *(v12 + 1920);
  v26[1] = xmmword_2705DC030;
  v26[2] = v27;
  v28 = *(v12 + 1952);
  v26[3] = *(v12 + 1936);
  v26[4] = v28;
  *(v12 + 176) = v15;
  sub_27051A948(v12 + 176);
  memcpy(v26 + 5, (v12 + 176), 0x99uLL);
  sub_27051A954(v12 + 1920, v12 + 1824);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E28);
  sub_27051A9B0();
  OUTLINED_FUNCTION_36_11();

  OUTLINED_FUNCTION_11_36();
  OUTLINED_FUNCTION_33_7();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

uint64_t sub_270518630(uint64_t a1, const void *a2)
{
  v4 = v2;
  v3[73] = v4;
  v3[72] = a1;
  v3[74] = *v4;
  sub_2705D6524();
  v3[75] = swift_task_alloc();
  v6 = sub_2705D4AA4();
  v3[76] = v6;
  v3[77] = *(v6 - 8);
  v3[78] = swift_task_alloc();
  v7 = sub_2705D4A44();
  v3[79] = v7;
  v3[80] = *(v7 - 8);
  v3[81] = swift_task_alloc();
  memcpy(v3 + 20, a2, 0x70uLL);

  return MEMORY[0x2822009F8](sub_2705187B8, 0, 0);
}

uint64_t sub_2705187B8()
{
  OUTLINED_FUNCTION_23_14();
  v0[82] = OBJC_IVAR____TtC19UnifiedMessagingKit18MessageItemService_networkingService;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E70);
  inited = swift_initStackObject();
  v0[83] = inited;
  *(inited + 16) = xmmword_2705DC030;
  memcpy((inited + 32), v0 + 20, 0x70uLL);
  sub_2704A1100((v0 + 20), (v0 + 34));
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  v0[84] = v2;
  *v2 = v3;
  v2[1] = sub_2705188BC;

  return sub_2704C48CC();
}

uint64_t sub_2705188BC()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  *(v3 + 680) = v0;

  if (!v0)
  {
    swift_setDeallocating();
    sub_2704891B8();
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2705189C8()
{
  OUTLINED_FUNCTION_23_14();
  sub_2705D4B24();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  v0[86] = v1;
  *v1 = v2;
  v1[1] = sub_270518A80;
  v3 = v0[81];
  v4 = v0[78];
  v5 = v0[72];

  return MEMORY[0x2821409D8](v5, v3, v4);
}

uint64_t sub_270518A80()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 696) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270518B7C()
{
  OUTLINED_FUNCTION_67_2();
  (*(v0[77] + 8))(v0[78], v0[76]);
  v1 = OUTLINED_FUNCTION_25_11();
  v2(v1);

  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_270518C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_32_11();
  swift_setDeallocating();
  sub_2704891B8();
  v35 = v14[85];
  if (qword_2807CE838 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  v34 = qword_28081C4F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v15 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_1_1(v15);
  v16 = OUTLINED_FUNCTION_2_63();
  OUTLINED_FUNCTION_61_6(v16, xmmword_2705E10F0);
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    sub_2705D7564();
    OUTLINED_FUNCTION_33_14();

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v19 = OUTLINED_FUNCTION_5_57(v14 + 48);
    v14[63] = swift_getMetatypeMetadata();
    v14[60] = v19;
    sub_2705D64E4();
    sub_270474A7C((v14 + 60), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_56_2(MEMORY[0x277D837D0]);
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v20 = OUTLINED_FUNCTION_5_57(v14 + 48);
    v14[55] = swift_getMetatypeMetadata();
    v14[52] = v20;
  }

  v21 = sub_2705D64E4();
  OUTLINED_FUNCTION_42_7(v21, &unk_2807D4890);
  OUTLINED_FUNCTION_24_24();
  OUTLINED_FUNCTION_65_5();
  __swift_destroy_boxed_opaque_existential_1((v14 + 48));
  OUTLINED_FUNCTION_10_40();
  OUTLINED_FUNCTION_38_8();
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_74_2();
  v22();
  sub_2705D6544();
  sub_270474A7C((v14 + 56), &unk_2807D4890);
  OUTLINED_FUNCTION_48_2();

  sub_270516F14();
  v23 = OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_27_13(v23, v24);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_39_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, a11, a12, a13, a14);
}

uint64_t sub_270518EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_32_11();
  (*(v14[77] + 8))(v14[78], v14[76]);
  v15 = OUTLINED_FUNCTION_25_11();
  v16(v15);
  v37 = v14[87];
  if (qword_2807CE838 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  v36 = qword_28081C4F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v17 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_1_1(v17);
  v18 = OUTLINED_FUNCTION_2_63();
  OUTLINED_FUNCTION_61_6(v18, xmmword_2705E10F0);
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    sub_2705D7564();
    OUTLINED_FUNCTION_33_14();

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v21 = OUTLINED_FUNCTION_5_57(v14 + 48);
    v14[63] = swift_getMetatypeMetadata();
    v14[60] = v21;
    sub_2705D64E4();
    sub_270474A7C((v14 + 60), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_56_2(MEMORY[0x277D837D0]);
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v22 = OUTLINED_FUNCTION_5_57(v14 + 48);
    v14[55] = swift_getMetatypeMetadata();
    v14[52] = v22;
  }

  v23 = sub_2705D64E4();
  OUTLINED_FUNCTION_42_7(v23, &unk_2807D4890);
  OUTLINED_FUNCTION_24_24();
  OUTLINED_FUNCTION_65_5();
  __swift_destroy_boxed_opaque_existential_1((v14 + 48));
  OUTLINED_FUNCTION_10_40();
  OUTLINED_FUNCTION_38_8();
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_74_2();
  v24();
  sub_2705D6544();
  sub_270474A7C((v14 + 56), &unk_2807D4890);
  OUTLINED_FUNCTION_48_2();

  sub_270516F14();
  v25 = OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_27_13(v25, v26);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_39_4();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, a11, a12, a13, a14);
}

uint64_t sub_270519178@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v10 = *a1;
  LOBYTE(v11) = v3;
  sub_27046CD54();
  v5 = sub_27046C7B8(v4);

  sub_2703D5404(0x6D61726150797562, 0xE900000000000073, v5, __src);

  if (!*&__src[24])
  {
    sub_270474A7C(__src, &unk_2807D4890);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_6;
  }

  v6 = *(&v10 + 1);
  v7 = v10;
LABEL_6:
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = -1;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = -1;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 64) = 0;
  *(v8 + 88) = -2;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  *(v8 + 120) = -2;
  *(v8 + 128) = v7;
  *(v8 + 136) = v6;
  v11 = 0;
  v10 = v8;
  v12 = 255;
  v13 = v7;
  v14 = v6;
  v15 = v7;
  v16 = v6;
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v20 = 0u;
  v21 = 0u;
  sub_2703B1414(&v10, __src);
  memcpy(a2, __src, 0x78uLL);
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_270519300(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v4;
  *(v3 + 304) = *v4;
  sub_2705D6524();
  *(v3 + 312) = swift_task_alloc();
  v6 = sub_2705D4AA4();
  *(v3 + 320) = v6;
  *(v3 + 328) = *(v6 - 8);
  *(v3 + 336) = swift_task_alloc();
  v7 = sub_2705D4A44();
  *(v3 + 344) = v7;
  *(v3 + 352) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  *(v3 + 360) = v8;
  *(v3 + 368) = v9;
  *(v3 + 376) = v10;
  *(v3 + 456) = *(a2 + 16);
  *(v3 + 384) = *(a2 + 3);
  *(v3 + 400) = a2[5];

  return MEMORY[0x2822009F8](sub_270519494, 0, 0);
}

uint64_t sub_270519494()
{
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_58_2();
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 456);
  v6 = *(v0 + 368);
  *(v0 + 408) = OBJC_IVAR____TtC19UnifiedMessagingKit18MessageItemService_networkingService;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E48);
  inited = swift_initStackObject();
  *(v0 + 416) = inited;
  *(inited + 16) = xmmword_2705DC030;
  *(inited + 32) = v6;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v3;
  *(inited + 64) = v1;
  *(inited + 72) = v2;

  sub_270462DF8(v3, v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v0 + 424) = v8;
  *v8 = v9;
  v8[1] = sub_2705195BC;
  OUTLINED_FUNCTION_33_7();

  return sub_2704C7D54();
}

uint64_t sub_2705195BC()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
    swift_setDeallocating();
    sub_2704891F4();
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2705196C8()
{
  OUTLINED_FUNCTION_23_14();
  sub_2705D4B24();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  v0[55] = v1;
  *v1 = v2;
  v1[1] = sub_270519780;
  v3 = v0[45];
  v4 = v0[42];
  v5 = v0[36];

  return MEMORY[0x2821409D8](v5, v3, v4);
}

uint64_t sub_270519780()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27051987C()
{
  OUTLINED_FUNCTION_67_2();
  (*(v0[41] + 8))(v0[42], v0[40]);
  v1 = OUTLINED_FUNCTION_25_11();
  v2(v1);

  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_270519930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_32_11();
  swift_setDeallocating();
  sub_2704891F4();
  v37 = v14[54];
  if (qword_2807CE838 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  v36 = qword_28081C4F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v17 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_1_1(v17);
  v18 = OUTLINED_FUNCTION_2_63();
  OUTLINED_FUNCTION_62_5(v18, xmmword_2705E10F0);
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    sub_2705D7564();
    OUTLINED_FUNCTION_33_14();

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v21 = OUTLINED_FUNCTION_5_57(v14 + 12);
    v14[27] = swift_getMetatypeMetadata();
    v14[24] = v21;
    sub_2705D64E4();
    sub_270474A7C((v14 + 24), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v14[31] = MEMORY[0x277D837D0];
    v14[28] = v15;
    v14[29] = v16;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v22 = OUTLINED_FUNCTION_5_57(v14 + 12);
    v14[19] = swift_getMetatypeMetadata();
    v14[16] = v22;
  }

  v23 = sub_2705D64E4();
  OUTLINED_FUNCTION_42_7(v23, &unk_2807D4890);
  OUTLINED_FUNCTION_24_24();
  OUTLINED_FUNCTION_65_5();
  __swift_destroy_boxed_opaque_existential_1((v14 + 12));
  OUTLINED_FUNCTION_10_40();
  OUTLINED_FUNCTION_39_7();
  v14[23] = v14[33];
  __swift_allocate_boxed_opaque_existential_1Tm(v14 + 20);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_74_2();
  v24();
  sub_2705D6544();
  sub_270474A7C((v14 + 20), &unk_2807D4890);
  OUTLINED_FUNCTION_48_2();

  sub_270516F14();
  v25 = OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_27_13(v25, v26);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_39_4();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, a11, a12, a13, a14);
}

uint64_t sub_270519BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_32_11();
  (*(v14[41] + 8))(v14[42], v14[40]);
  v17 = OUTLINED_FUNCTION_25_11();
  v18(v17);
  v39 = v14[56];
  if (qword_2807CE838 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  v38 = qword_28081C4F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v19 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_1_1(v19);
  v20 = OUTLINED_FUNCTION_2_63();
  OUTLINED_FUNCTION_62_5(v20, xmmword_2705E10F0);
  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    sub_2705D7564();
    OUTLINED_FUNCTION_33_14();

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v23 = OUTLINED_FUNCTION_5_57(v14 + 12);
    v14[27] = swift_getMetatypeMetadata();
    v14[24] = v23;
    sub_2705D64E4();
    sub_270474A7C((v14 + 24), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v14[31] = MEMORY[0x277D837D0];
    v14[28] = v15;
    v14[29] = v16;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v24 = OUTLINED_FUNCTION_5_57(v14 + 12);
    v14[19] = swift_getMetatypeMetadata();
    v14[16] = v24;
  }

  v25 = sub_2705D64E4();
  OUTLINED_FUNCTION_42_7(v25, &unk_2807D4890);
  OUTLINED_FUNCTION_24_24();
  OUTLINED_FUNCTION_65_5();
  __swift_destroy_boxed_opaque_existential_1((v14 + 12));
  OUTLINED_FUNCTION_10_40();
  OUTLINED_FUNCTION_39_7();
  v14[23] = v14[33];
  __swift_allocate_boxed_opaque_existential_1Tm(v14 + 20);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_74_2();
  v26();
  sub_2705D6544();
  sub_270474A7C((v14 + 20), &unk_2807D4890);
  OUTLINED_FUNCTION_48_2();

  sub_270516F14();
  v27 = OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_27_13(v27, v28);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_39_4();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, a11, a12, a13, a14);
}

void *sub_270519E80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v61 = a2;
  v8 = *a3;
  v9 = sub_2705D6524();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2705D75C4();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[7];
  if (!v17)
  {
    goto LABEL_8;
  }

  v58 = v11;
  v59 = v16;
  v54 = v14;
  v55 = v13;
  v56 = v8;
  v57 = a3;
  v60 = a4;
  v65 = v4;
  v18 = a1[6];
  v20 = a1[8];
  v19 = a1[9];
  v22 = a1[10];
  v21 = a1[11];
  sub_27051AA78(v18, v17);

  if (v20 == 0x75622D726566666FLL && v19 == 0xEC0000006E6F7474)
  {
  }

  else
  {
    v24 = sub_2705D8134();

    if ((v24 & 1) == 0)
    {
      sub_27051AADC(v18, v17);
      a4 = v60;
LABEL_8:
      sub_27051AA60(v64);
      v25 = v64;
      return memcpy(a4, v25, 0x80uLL);
    }
  }

  sub_2705D4044();
  swift_allocObject();
  sub_2705D4034();
  *&v64[0] = v18;
  *(&v64[0] + 1) = v17;
  *&v64[1] = v20;
  *(&v64[1] + 1) = v19;
  *&v64[2] = v22;
  *(&v64[2] + 1) = v21;
  sub_2703D2DD4();
  v27 = v65;
  v28 = sub_2705D4024();
  v30 = v29;

  if (!v27)
  {
    sub_2705D75A4();
    v31 = sub_2705D7584();
    v33 = v31;
    v34 = v32;
    v35 = v61;
    v36 = *(v61 + 32);
    v37 = MEMORY[0x277D837D0];
    if (v36)
    {
      if (!v32)
      {
        goto LABEL_17;
      }

      v38 = *(v61 + 24);
      *&v64[0] = v31;
      *(&v64[0] + 1) = v32;
      v62[0] = 0xD000000000000010;
      v62[1] = 0x80000002706156A0;
      *&v63 = v38;
      *(&v63 + 1) = v36;
      sub_2703C2F54();
      v33 = sub_2705D7C64();
      v40 = v39;

      v34 = v40;
    }

    else if (!v32)
    {
      goto LABEL_17;
    }

    *&v64[0] = v33;
    *(&v64[0] + 1) = v34;
    v62[0] = 0xD00000000000001ALL;
    v62[1] = 0x8000000270615640;
    v63 = *v35;
    sub_2703C2F54();
    sub_2705D7C64();

    v41 = v59;
    sub_2705D75A4();
    v42 = sub_2705D7574();
    v44 = v43;

    (*(v54 + 8))(v41, v55);
    if (v44 >> 60 != 15)
    {
      sub_27046DCA4(v28, v30);
      v50 = v42;
      v51 = v44;
      a4 = v60;
LABEL_24:
      sub_2705D4014();
      swift_allocObject();
      sub_2705D4004();
      sub_2704A3180();
      sub_2705D3FF4();
      sub_27046DCA4(v50, v51);

      memcpy(v62, v64, sizeof(v62));
      CGSizeMake(v62, v53);
      v25 = v62;
      return memcpy(a4, v25, 0x80uLL);
    }

LABEL_17:
    v61 = v28;
    v65 = v30;
    if (qword_2807CE838 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2705E6EB0;
    *(&v64[1] + 1) = v56;
    *&v64[0] = v57;

    v46 = AMSLogKey();
    if (v46)
    {
      v47 = v46;
      v59 = sub_2705D7564();
      v57 = v48;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v64, *(&v64[1] + 1));
      DynamicType = swift_getDynamicType();
      v62[3] = swift_getMetatypeMetadata();
      v62[0] = DynamicType;
      sub_2705D64E4();
      sub_270474A7C(v62, &unk_2807D4890);
      sub_2705D6504();
      v62[3] = v37;
      v62[0] = v59;
      v62[1] = v57;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v64, *(&v64[1] + 1));
      v52 = swift_getDynamicType();
      v62[3] = swift_getMetatypeMetadata();
      v62[0] = v52;
    }

    sub_2705D64E4();
    sub_270474A7C(v62, &unk_2807D4890);
    a4 = v60;
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v64);
    sub_2705D64C4();
    sub_27047CF78(v45);

    v51 = v65;
    v50 = v61;
    goto LABEL_24;
  }

  return result;
}

uint64_t MessageItemService.deinit()
{
  sub_27051531C(v0 + OBJC_IVAR____TtC19UnifiedMessagingKit18MessageItemService_configuration);
  v1 = OBJC_IVAR____TtC19UnifiedMessagingKit18MessageItemService_networkingService;
  sub_2705D4B54();
  OUTLINED_FUNCTION_4_4();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t MessageItemService.__deallocating_deinit()
{
  sub_27051531C(v0 + OBJC_IVAR____TtC19UnifiedMessagingKit18MessageItemService_configuration);
  v1 = OBJC_IVAR____TtC19UnifiedMessagingKit18MessageItemService_networkingService;
  sub_2705D4B54();
  OUTLINED_FUNCTION_4_4();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for MessageItemService()
{
  result = qword_2807D5E10;
  if (!qword_2807D5E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27051A75C()
{
  result = type metadata accessor for MessageItemServiceConfiguration();
  if (v1 <= 0x3F)
  {
    result = sub_2705D4B54();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit18MessageItemServiceC0F5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27051A86C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27051A8C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_27051A918(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_27051A9B0()
{
  result = qword_2807D5E30;
  if (!qword_2807D5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5E30);
  }

  return result;
}

unint64_t sub_27051AA04()
{
  result = qword_2807D5E38;
  if (!qword_2807D5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5E38);
  }

  return result;
}

double sub_27051AA60(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_27051AA78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_27051AADC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_27051AB40()
{
  result = qword_2807D5E68;
  if (!qword_2807D5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5E68);
  }

  return result;
}

uint64_t sub_27051AB94(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_27051AD84(result);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 120 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_270499ED4((v9 + 120 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_27051ACCC()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_2703AE630(*(v0 + 16), *(v0 + 24), v1);
  }

  v2 = *(v0 + 56);
  if (v2 != 255)
  {
    sub_2703AE630(*(v0 + 40), *(v0 + 48), v2);
  }

  if (*(v0 + 88) != 254)
  {

    v3 = *(v0 + 88);
    if (v3 != 255)
    {
      sub_2703AE630(*(v0 + 72), *(v0 + 80), v3);
    }
  }

  if (*(v0 + 120) != 254)
  {

    v4 = *(v0 + 120);
    if (v4 != 255)
    {
      sub_2703AE630(*(v0 + 104), *(v0 + 112), v4);
    }
  }

  return swift_deallocObject();
}

void sub_27051AD84(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_270499AD0();
    *v1 = v5;
  }
}

uint64_t OUTLINED_FUNCTION_0_64()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_63()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_3_58(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 *a19)
{
  v19 = *a19;
  v20 = a19[1];
  *(a1 + 16) = a2;
  *(a1 + 32) = v19;
  result = a19[2];
  *(a1 + 48) = v20;
  *(a1 + 64) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_57(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_10_40()
{

  return sub_2705D64C4();
}

uint64_t OUTLINED_FUNCTION_13_31()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_24()
{

  return sub_2705D6504();
}

uint64_t OUTLINED_FUNCTION_25_20()
{

  return sub_2705D64C4();
}

uint64_t OUTLINED_FUNCTION_27_13(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_29_13(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = a1 + v2;

  return memcpy(v5, (v3 + 3112), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_36_11()
{

  return sub_2705D7494();
}

uint64_t OUTLINED_FUNCTION_37_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_38_8()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_41_7(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_42_7(uint64_t a1, uint64_t *a2)
{

  return sub_270474A7C(v2, a2);
}

uint64_t OUTLINED_FUNCTION_44_5()
{

  return sub_2705D6534();
}

uint64_t OUTLINED_FUNCTION_46_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return sub_27047CF78(v0);
}

void OUTLINED_FUNCTION_56_2(uint64_t a1@<X8>)
{
  v1[67] = a1;
  v1[64] = v2;
  v1[65] = v3;
}

uint64_t OUTLINED_FUNCTION_59_6()
{
}

uint64_t OUTLINED_FUNCTION_60_5()
{

  return sub_2705D3FF4();
}

uint64_t OUTLINED_FUNCTION_61_6(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 + 408) = v4;
  *(v3 + 384) = v2;
}

uint64_t OUTLINED_FUNCTION_62_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 + 120) = v4;
  *(v3 + 96) = v2;
}

uint64_t *OUTLINED_FUNCTION_63_5()
{
  v0[59] = v0[69];

  return __swift_allocate_boxed_opaque_existential_1Tm(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return sub_27046DCA4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_65_5()
{

  return sub_2705D6534();
}

uint64_t sub_27051B1CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574756F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_27051B290(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x6574756F72;
  }
}

uint64_t sub_27051B2BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E90);
  OUTLINED_FUNCTION_1_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v9;
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27051B804();
  sub_2705D84C4();
  LOBYTE(v15) = 0;
  v10 = v14;
  sub_2705D8034();
  if (!v10)
  {
    v15 = v13;
    v16 = v12;
    v17 = v18;
    v19 = 1;
    sub_2703AE9E8(v13, v12, v18);
    sub_2703C39C4();
    sub_2705D8024();
    sub_2703AE980(v15, v16, v17);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_27051B464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5E80);
  OUTLINED_FUNCTION_1_14();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27051B804();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v12) = 0;
  v6 = sub_2705D7F54();
  v8 = v7;
  sub_2703C3FAC();
  sub_2705D7F44();
  v9 = OUTLINED_FUNCTION_2_12();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;

  sub_2703AE9E8(v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2703AE980(v12, v13, v14);
}

uint64_t sub_27051B67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27051B1CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27051B6A4(uint64_t a1)
{
  v2 = sub_27051B804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27051B6E0(uint64_t a1)
{
  v2 = sub_27051B804();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27051B788(uint64_t a1)
{
  result = sub_27051B7B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27051B7B0()
{
  result = qword_2807D5E78;
  if (!qword_2807D5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5E78);
  }

  return result;
}

unint64_t sub_27051B804()
{
  result = qword_2807D5E88;
  if (!qword_2807D5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5E88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RoutedStyleIntentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27051B924);
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

unint64_t sub_27051B960()
{
  result = qword_2807D5E98;
  if (!qword_2807D5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5E98);
  }

  return result;
}

unint64_t sub_27051B9B8()
{
  result = qword_2807D5EA0;
  if (!qword_2807D5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5EA0);
  }

  return result;
}

unint64_t sub_27051BA10()
{
  result = qword_2807D5EA8[0];
  if (!qword_2807D5EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2807D5EA8);
  }

  return result;
}

uint64_t sub_27051BA64()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_2705D6914();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27051BAEC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v8);
        if (v14)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x27051BC28);
      case 4:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = v14 - 1;
        if (v10)
        {
          v16 = 0;
          LODWORD(v10) = *a1;
        }

        return v7 + (v10 | v16) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_27051BC3C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        return;
      case 2:
        *&a1[v10] = v15;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x27051BE08);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v7 < 0x7FFFFFFF)
        {
          v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *v17 = v18;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}