id _initWSKLOG()
{
  if (_initWSKLOG_onceToken[0] != -1)
  {
    _initWSKLOG_cold_1();
  }

  v1 = _WSKLOG;

  return v1;
}

void WiFiDisableMISState()
{
  v2 = 0;
  if (_MISAttach(&v2))
  {
    WiFiDisableMISState_cold_1();
  }

  else if (_MISSetGlobalServiceState(v2, 1022))
  {
    WiFiDisableMISState_cold_2();
  }

  else if (_MISSetGlobalServiceState(v2, 1023))
  {
    WiFiDisableMISState_cold_3();
  }

  else
  {
    _MISDetach(v2);
    v0 = *MEMORY[0x277CBECE8];
    v1 = WiFiManagerClientCreate();
    WiFiManagerClientSetMISState();
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

void WiFiManagerSetAutoJoinEnabled(int a1)
{
  v2 = _initWSKLOG();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WiFiManagerSetAutoJoinEnabled_cold_1(a1, v2);
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = WiFiManagerClientCreate();
  if (!a1)
  {
    WiFiManagerClientDisable();
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  WiFiManagerClientEnable();
  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }
}

uint64_t ___initWSKLOG_block_invoke()
{
  _WSKLOG = os_log_create("com.apple.wifi.wfsettingskit", "MobileWiFi");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t sub_2740972A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274099008();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274097308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274099008();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274097388()
{
  sub_274099008();
  sub_2741C74CC();
  __break(1u);
}

uint64_t sub_2740973B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2741C73CC();

    return sub_2741C6E6C();
  }

  else
  {
    sub_2741C6EEC();
    swift_getWitnessTable();
    sub_2741C735C();
    sub_2741C6E6C();
    sub_2741C839C();
    swift_getWitnessTable();
    sub_2741C6EEC();
    swift_getWitnessTable();
    sub_2741C735C();
    return sub_2741C6E6C();
  }
}

uint64_t sub_27409751C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2741C73CC();
    sub_2741C6E6C();
  }

  else
  {
    sub_2741C6EEC();
    swift_getWitnessTable();
    sub_2741C735C();
    sub_2741C6E6C();
    sub_2741C839C();
    swift_getWitnessTable();
    sub_2741C6EEC();
    swift_getWitnessTable();
    sub_2741C735C();
    sub_2741C6E6C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274097720@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 33) = a2;
  sub_27409861C(a3, a4, a5 & 1);
}

uint64_t sub_27409777C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_27409861C(a3, a4, a5 & 1);
}

uint64_t sub_2740977E0(uint64_t a1, id *a2)
{
  result = sub_2741C7E5C();
  *a2 = 0;
  return result;
}

uint64_t sub_274097858(uint64_t a1, id *a2)
{
  v3 = sub_2741C7E6C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2740978D8@<X0>(uint64_t *a1@<X8>)
{
  sub_2741C7E7C();
  v2 = sub_2741C7E3C();

  *a1 = v2;
  return result;
}

uint64_t sub_27409791C()
{
  v1 = *v0;
  v2 = sub_2741C7E7C();
  v3 = MEMORY[0x2743E6010](v2);

  return v3;
}

uint64_t sub_274097958()
{
  v1 = *v0;
  sub_2741C7E7C();
  sub_2741C7F0C();
}

uint64_t sub_2740979AC()
{
  v1 = *v0;
  sub_2741C7E7C();
  sub_2741C87DC();
  sub_2741C7F0C();
  v2 = sub_2741C880C();

  return v2;
}

uint64_t sub_274097A20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2741C6A9C();
}

BOOL sub_274097B18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_274097B48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_274097B74@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_274097C60@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_274097C70()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2741C6ABC();
}

uint64_t sub_274097CBC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2741C6AAC();
}

uint64_t sub_274097D2C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2741C6ABC();
}

uint64_t sub_274097D78()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2741C6AAC();
}

uint64_t sub_274097DE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2741C7E7C();
  v6 = v5;
  if (v4 == sub_2741C7E7C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2741C86DC();
  }

  return v9 & 1;
}

uint64_t sub_274097E80(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D40, type metadata accessor for LAError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_274097EEC(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D40, type metadata accessor for LAError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_274097F58(void *a1, uint64_t a2)
{
  v4 = sub_274098720(&qword_280937D40, type metadata accessor for LAError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_27409800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_274098720(&qword_280937D40, type metadata accessor for LAError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_274098088()
{
  v2 = *v0;
  sub_2741C87DC();
  sub_2741C7D9C();
  return sub_2741C880C();
}

uint64_t sub_2740980E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_27416D2C8();

  *a1 = v2;
  return result;
}

uint64_t sub_274098128(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2741C6A9C();
}

uint64_t sub_274098194(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2741C6A9C();
}

uint64_t sub_274098200@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2741C7E3C();

  *a2 = v5;
  return result;
}

uint64_t sub_274098248@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2741C7E7C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_274098274(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D68, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_274098720(&qword_280937D70, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_274098330()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2741C6ABC();
}

uint64_t sub_27409837C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2741C6AAC();
}

uint64_t sub_2740983EC()
{
  sub_2741C87DC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2741C6AAC();
  return sub_2741C880C();
}

uint64_t sub_274098450(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D08, type metadata accessor for LAError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2740984BC(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D08, type metadata accessor for LAError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_27409852C(uint64_t a1)
{
  v2 = sub_274098720(&qword_280937D40, type metadata accessor for LAError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_274098598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274098720(&qword_280937D40, type metadata accessor for LAError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_27409861C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_274098720(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274098D1C()
{
  result = qword_280937D30;
  if (!qword_280937D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937D30);
  }

  return result;
}

void sub_274098F48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_274098FA8()
{
  result = qword_280937D90;
  if (!qword_280937D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937D90);
  }

  return result;
}

unint64_t sub_274099008()
{
  result = qword_280937D98;
  if (!qword_280937D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937D98);
  }

  return result;
}

uint64_t PasswordAlertResult.username.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PasswordAlertResult.username.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PasswordAlertResult.password.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PasswordAlertResult.password.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PasswordAlertResult.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PasswordAlertResult() + 28);

  return sub_274099294(v3, a1);
}

uint64_t type metadata accessor for PasswordAlertResult()
{
  result = qword_280937DA8;
  if (!qword_280937DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274099294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t PasswordAlertResult.identity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PasswordAlertResult() + 28);

  return sub_274099390(a1, v3);
}

uint64_t sub_274099390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PasswordAlertResult.rememberThisNetwork.setter(char a1)
{
  result = type metadata accessor for PasswordAlertResult();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_2740994F0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_274099520()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_274099580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_274099650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_274099700()
{
  sub_2740997A4();
  if (v0 <= 0x3F)
  {
    sub_2740997F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2740997A4()
{
  if (!qword_280937DB8)
  {
    v0 = sub_2741C839C();
    if (!v1)
    {
      atomic_store(v0, &qword_280937DB8);
    }
  }
}

void sub_2740997F4()
{
  if (!qword_280937DC0)
  {
    type metadata accessor for EnterpriseIdentity();
    v0 = sub_2741C839C();
    if (!v1)
    {
      atomic_store(v0, &qword_280937DC0);
    }
  }
}

uint64_t sub_27409984C(char a1, uint64_t a2, __int16 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DC8, &qword_2741CB228);
  v5 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v5);

  v6 = 1702195828;
  if (a1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v7, v8);

  MEMORY[0x2743E5FB0](0x6564646948736920, 0xEB00000000203A6ELL);

  sub_2741C856C();

  if ((a3 & 0x100) != 0)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((a3 & 0x100) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if ((a3 & 0x100) != 0)
  {
    v6 = 0x65736C6166;
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x2743E5FB0](v9, v10);

  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741D8BB0);

  MEMORY[0x2743E5FB0](v6, v11);

  MEMORY[0x2743E5FB0](0x65626D656D657220, 0xEB00000000203A72);

  if (a3)
  {
    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    sub_274099AE0();
    v13 = sub_2741C83CC();
    v12 = v14;
  }

  MEMORY[0x2743E5FB0](v13, v12);

  MEMORY[0x2743E5FB0](0x6C656E6E61686320, 0xEA0000000000203ALL);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_274099AB4()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_27409984C(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

unint64_t sub_274099AE0()
{
  result = qword_280937DD0;
  if (!qword_280937DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937DD0);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AssociationSettings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AssociationSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_274099BF4()
{
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_274099CAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_274099D6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_274099D98(v4);
}

uint64_t sub_274099D98(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = sub_2741568A0(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
    sub_2741C69FC();
  }
}

uint64_t sub_274099EE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

uint64_t sub_274099F48()
{
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  v1 = *(v0 + 32);
}

uint64_t sub_274099FEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 32);
}

uint64_t sub_27409A098(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27409A0C4(v4);
}

uint64_t sub_27409A0C4(uint64_t a1)
{
  v3 = *(v1 + 32);

  v5 = sub_2741568A0(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27409A218@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_27409D4E4(v1 + 48, a1);
}

uint64_t sub_27409A2D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_27409D4E4(v3 + 48, a2);
}

uint64_t sub_27409A398(uint64_t a1, uint64_t *a2)
{
  sub_27409D4E4(a1, v17);
  v3 = *a2;
  v4 = v18;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8);
  v10 = *v8;
  v16[3] = type metadata accessor for WiFiSystemConfiguration();
  v16[4] = &off_2883289C0;
  v16[0] = v10;
  swift_getKeyPath();
  v13 = v3;
  v14 = v16;
  v15 = v3;
  sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
  sub_2741C69FC();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_27409A534(uint64_t a1, uint64_t a2)
{
  sub_27409D4E4(a2, v15);
  v3 = v16;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13 = type metadata accessor for WiFiSystemConfiguration();
  v14 = &off_2883289C0;
  *&v12 = v9;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
  sub_27409D118(&v12, a1 + 48);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t KnownNetworksViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  KnownNetworksViewModel.init()();
  return v3;
}

uint64_t KnownNetworksViewModel.init()()
{
  v1 = v0;
  sub_2741C6A3C();
  v2 = type metadata accessor for SystemConfigurationState();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 48) = 0;
  sub_2741C6A3C();
  *(v1 + 40) = v5;
  v23[3] = v2;
  v23[4] = sub_27409CFC4(&qword_280937DE0, type metadata accessor for SystemConfigurationState);
  v23[0] = v5;
  v6 = qword_280937B98;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for WiFiSystemConfiguration();
  v8 = swift_allocObject();

  v10 = sub_27409CBB0(v9, v23, v8);

  *(v1 + 48) = v10;
  *(v1 + 72) = v7;
  *(v1 + 80) = &off_2883289C0;
  v11 = *(v1 + 40);
  v12 = *(v10 + 32);

  sub_2740D7168(v13);

  v14 = *(v1 + 40);
  swift_getKeyPath();
  v23[0] = v14;
  sub_27409CFC4(&qword_280937DE8, type metadata accessor for SystemConfigurationState);

  sub_2741C6A0C();

  v15 = v14[2];

  *(v1 + 16) = v15;
  v16 = *(v1 + 40);
  swift_getKeyPath();
  v23[0] = v16;

  sub_2741C6A0C();

  v17 = v16[2];

  v18 = sub_2741B27E4(v17);

  v23[0] = v18;

  sub_27409B090(v23);

  *(v1 + 24) = v23[0];
  v19 = *(v1 + 40);
  swift_getKeyPath();
  v23[0] = v19;

  sub_2741C6A0C();

  v20 = v19[2];

  v21 = sub_2741B2998(v20);

  v23[0] = v21;

  sub_27409B090(v23);

  *(v1 + 32) = v23[0];
  return v1;
}

uint64_t sub_27409AAC0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for KnownNetwork();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2741C856C();

  v16 = 0xD000000000000012;
  v17 = 0x80000002741D8C80;
  v15[1] = v4;
  v9 = MEMORY[0x2743E6080](a1, v4);
  MEMORY[0x2743E5FB0](v9);

  sub_2740CB460(v16, v17);

  v11 = *(a1 + 16);
  if (v11)
  {
    v15[0] = "Removing networks ";
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    swift_beginAccess();
    v13 = *(v5 + 72);
    do
    {
      sub_27409CF58(v12, v8);
      swift_getKeyPath();
      v15[6] = v2;
      sub_27409CFC4(&qword_280937E00, type metadata accessor for KnownNetworksViewModel);
      sub_2741C6A0C();

      v14 = *(*__swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72)) + 16);
      sub_274198718(v8);
      result = sub_27409D050(v8);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

void *KnownNetworksViewModel.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v5 = OBJC_IVAR____TtC15WiFiSettingsKit22KnownNetworksViewModel___observationRegistrar;
  v6 = sub_2741C6A4C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t KnownNetworksViewModel.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v5 = OBJC_IVAR____TtC15WiFiSettingsKit22KnownNetworksViewModel___observationRegistrar;
  v6 = sub_2741C6A4C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_27409AFB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27409CFC4(&qword_280937DE8, type metadata accessor for SystemConfigurationState);
  sub_2741C6A0C();

  *a2 = *(v3 + 16);
}

uint64_t sub_27409B064(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2740D7168(v4);
}

uint64_t sub_27409B090(void **a1)
{
  v2 = *(type metadata accessor for KnownNetwork() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2741B4B34(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_27409B138(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_27409B138(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2741C86BC();
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
        type metadata accessor for KnownNetwork();
        v6 = sub_2741C801C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for KnownNetwork() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_27409B514(v8, v9, a1, v4);
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
    return sub_27409B264(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27409B264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = type metadata accessor for KnownNetwork();
  v8 = *(*(v44 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v41 = -v19;
    v42 = v18;
    v21 = a1 - a3;
    v35 = v19;
    v22 = v18 + v19 * a3;
    v45 = &v34 - v16;
LABEL_6:
    v39 = v20;
    v40 = a3;
    v37 = v22;
    v38 = v21;
    v23 = v20;
    while (1)
    {
      sub_27409CF58(v22, v17);
      sub_27409CF58(v23, v13);
      sub_27411741C();
      v24 = sub_2741C7ECC();
      v26 = v25;

      v27 = v13;
      sub_27411741C();
      v28 = sub_2741C7ECC();
      v30 = v29;

      if (v24 == v28 && v26 == v30)
      {

        v13 = v27;
        sub_27409D050(v27);
        v17 = v45;
        result = sub_27409D050(v45);
LABEL_5:
        a3 = v40 + 1;
        v20 = v39 + v35;
        v21 = v38 - 1;
        v22 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v31 = sub_2741C86DC();

      v13 = v27;
      sub_27409D050(v27);
      v17 = v45;
      result = sub_27409D050(v45);
      if ((v31 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v32 = v43;
      sub_27409D240(v22, v43);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_27409D240(v32, v23);
      v23 += v41;
      v22 += v41;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_27409B514(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v152 = a1;
  v171 = type metadata accessor for KnownNetwork();
  v161 = *(v171 - 8);
  v6 = *(v161 + 64);
  v7 = MEMORY[0x28223BE20](v171);
  v156 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v170 = &v149 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v174 = (&v149 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v149 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v165 = &v149 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v164 = &v149 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  result = MEMORY[0x28223BE20](v20);
  v163 = a3;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_137:
    a3 = *v152;
    if (!*v152)
    {
      goto LABEL_175;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_139:
      v181 = v26;
      v144 = *(v26 + 2);
      if (v144 >= 2)
      {
        while (*v163)
        {
          v145 = *&v26[16 * v144];
          v146 = *&v26[16 * v144 + 24];
          v147 = v166;
          sub_27409C4FC(*v163 + *(v161 + 72) * v145, *v163 + *(v161 + 72) * *&v26[16 * v144 + 16], *v163 + *(v161 + 72) * v146, a3);
          v166 = v147;
          if (v147)
          {
          }

          if (v146 < v145)
          {
            goto LABEL_162;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2741B412C(v26);
          }

          if (v144 - 2 >= *(v26 + 2))
          {
            goto LABEL_163;
          }

          v148 = &v26[16 * v144];
          *v148 = v145;
          *(v148 + 1) = v146;
          v181 = v26;
          result = sub_2741B40A0(v144 - 1);
          v26 = v181;
          v144 = *(v181 + 2);
          if (v144 <= 1)
          {
          }
        }

        goto LABEL_173;
      }
    }

LABEL_169:
    result = sub_2741B412C(v26);
    v26 = result;
    goto LABEL_139;
  }

  v150 = &v149 - v22;
  v151 = v23;
  v149 = a4;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v167 = 0x80000002741D8CE0;
  v172 = v15;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v162 = v26;
    if (v25 + 1 < v24)
    {
      v158 = v24;
      v29 = *v163;
      v30 = *(v161 + 72);
      v160 = v25 + 1;
      v31 = v150;
      sub_27409CF58(v29 + v30 * v28, v150);
      v153 = v27;
      v168 = v30;
      v32 = v151;
      sub_27409CF58(v29 + v30 * v27, v151);
      sub_27411741C();
      v33 = sub_2741C7ECC();
      v35 = v34;

      sub_27411741C();
      v36 = sub_2741C7ECC();
      v38 = v37;

      if (v33 == v36 && v35 == v38)
      {
        LODWORD(v159) = 0;
      }

      else
      {
        LODWORD(v159) = sub_2741C86DC();
      }

      sub_27409D050(v32);
      result = sub_27409D050(v31);
      v39 = v153 + 2;
      v40 = v168 * (v153 + 2);
      v41 = v29 + v40;
      v42 = v160;
      v43 = v168 * v160;
      v44 = v29 + v168 * v160;
      do
      {
        v48 = v39;
        v46 = v42;
        a3 = v43;
        v26 = v40;
        if (v39 >= v158)
        {
          break;
        }

        v169 = v42;
        v173 = v39;
        sub_27409CF58(v41, v164);
        sub_27409CF58(v44, v165);
        sub_27411741C();
        v49 = sub_2741C7ECC();
        v51 = v50;

        sub_27411741C();
        v52 = sub_2741C7ECC();
        v54 = v53;

        if (v49 != v52)
        {
          goto LABEL_10;
        }

        if (v51 == v54)
        {
          v45 = 0;
        }

        else
        {
LABEL_10:
          v45 = sub_2741C86DC();
        }

        v15 = v172;
        v46 = v169;

        sub_27409D050(v165);
        result = sub_27409D050(v164);
        v47 = v159 ^ v45;
        v48 = v173;
        v39 = v173 + 1;
        v41 += v168;
        v44 += v168;
        v42 = v46 + 1;
        v43 = a3 + v168;
        v40 = &v26[v168];
      }

      while ((v47 & 1) == 0);
      if (v159)
      {
        v27 = v153;
        if (v48 < v153)
        {
          goto LABEL_166;
        }

        if (v153 >= v48)
        {
          v28 = v48;
          v26 = v162;
          goto LABEL_32;
        }

        v55 = v153 * v168;
        do
        {
          if (v27 != v46)
          {
            v57 = *v163;
            if (!*v163)
            {
              goto LABEL_172;
            }

            sub_27409D240(v57 + v55, v156);
            if (v55 < a3 || v57 + v55 >= &v26[v57])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v55 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_27409D240(v156, v57 + a3);
          }

          ++v27;
          a3 -= v168;
          v26 -= v168;
          v55 += v168;
        }

        while (v27 < v46--);
      }

      v28 = v48;
      v26 = v162;
      v27 = v153;
    }

LABEL_32:
    v58 = v163[1];
    if (v28 < v58)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_165;
      }

      if (v28 - v27 < v149)
      {
        break;
      }
    }

LABEL_85:
    if (v28 < v27)
    {
      goto LABEL_164;
    }

    v96 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_274176EC4(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v98 = *(v26 + 2);
    v97 = *(v26 + 3);
    v99 = v98 + 1;
    if (v98 >= v97 >> 1)
    {
      result = sub_274176EC4((v97 > 1), v98 + 1, 1, v26);
      v25 = v96;
      v26 = result;
    }

    else
    {
      v25 = v96;
    }

    *(v26 + 2) = v99;
    v100 = &v26[16 * v98];
    *(v100 + 4) = v27;
    *(v100 + 5) = v25;
    a3 = *v152;
    if (!*v152)
    {
      goto LABEL_174;
    }

    if (v98)
    {
      while (1)
      {
        v101 = v99 - 1;
        if (v99 >= 4)
        {
          break;
        }

        if (v99 == 3)
        {
          v102 = *(v26 + 4);
          v103 = *(v26 + 5);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_105:
          if (v105)
          {
            goto LABEL_153;
          }

          v118 = &v26[16 * v99];
          v120 = *v118;
          v119 = *(v118 + 1);
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_156;
          }

          v124 = &v26[16 * v101 + 32];
          v126 = *v124;
          v125 = *(v124 + 1);
          v112 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v112)
          {
            goto LABEL_159;
          }

          if (__OFADD__(v122, v127))
          {
            goto LABEL_160;
          }

          if (v122 + v127 >= v104)
          {
            if (v104 < v127)
            {
              v101 = v99 - 2;
            }

            goto LABEL_126;
          }

          goto LABEL_119;
        }

        v128 = &v26[16 * v99];
        v130 = *v128;
        v129 = *(v128 + 1);
        v112 = __OFSUB__(v129, v130);
        v122 = v129 - v130;
        v123 = v112;
LABEL_119:
        if (v123)
        {
          goto LABEL_155;
        }

        v131 = &v26[16 * v101];
        v133 = *(v131 + 4);
        v132 = *(v131 + 5);
        v112 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v112)
        {
          goto LABEL_158;
        }

        if (v134 < v122)
        {
          goto LABEL_3;
        }

LABEL_126:
        v139 = v101 - 1;
        if (v101 - 1 >= v99)
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
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (!*v163)
        {
          goto LABEL_171;
        }

        v140 = *&v26[16 * v139 + 32];
        v141 = *&v26[16 * v101 + 40];
        v142 = v166;
        sub_27409C4FC(*v163 + *(v161 + 72) * v140, *v163 + *(v161 + 72) * *&v26[16 * v101 + 32], *v163 + *(v161 + 72) * v141, a3);
        v166 = v142;
        if (v142)
        {
        }

        if (v141 < v140)
        {
          goto LABEL_149;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2741B412C(v26);
        }

        if (v139 >= *(v26 + 2))
        {
          goto LABEL_150;
        }

        v143 = &v26[16 * v139];
        *(v143 + 4) = v140;
        *(v143 + 5) = v141;
        v181 = v26;
        result = sub_2741B40A0(v101);
        v26 = v181;
        v99 = *(v181 + 2);
        v25 = v96;
        if (v99 <= 1)
        {
          goto LABEL_3;
        }
      }

      v106 = &v26[16 * v99 + 32];
      v107 = *(v106 - 64);
      v108 = *(v106 - 56);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_151;
      }

      v111 = *(v106 - 48);
      v110 = *(v106 - 40);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_152;
      }

      v113 = &v26[16 * v99];
      v115 = *v113;
      v114 = *(v113 + 1);
      v112 = __OFSUB__(v114, v115);
      v116 = v114 - v115;
      if (v112)
      {
        goto LABEL_154;
      }

      v112 = __OFADD__(v104, v116);
      v117 = v104 + v116;
      if (v112)
      {
        goto LABEL_157;
      }

      if (v117 >= v109)
      {
        v135 = &v26[16 * v101 + 32];
        v137 = *v135;
        v136 = *(v135 + 1);
        v112 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v112)
        {
          goto LABEL_161;
        }

        if (v104 < v138)
        {
          v101 = v99 - 2;
        }

        goto LABEL_126;
      }

      goto LABEL_105;
    }

LABEL_3:
    v24 = v163[1];
    if (v25 >= v24)
    {
      goto LABEL_137;
    }
  }

  v59 = v27 + v149;
  if (__OFADD__(v27, v149))
  {
    goto LABEL_167;
  }

  if (v59 >= v58)
  {
    v59 = v163[1];
  }

  if (v59 < v27)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if (v28 == v59)
  {
    goto LABEL_85;
  }

  v60 = *v163;
  v61 = *(v161 + 72);
  v62 = *v163 + v61 * (v28 - 1);
  v168 = -v61;
  v153 = v27;
  v63 = v27 - v28;
  v169 = v60;
  v154 = v61;
  v64 = v60 + v28 * v61;
  v155 = v59;
LABEL_43:
  v160 = v28;
  v157 = v64;
  v158 = v63;
  v65 = v63;
  v159 = v62;
  while (1)
  {
    v173 = v65;
    sub_27409CF58(v64, v15);
    sub_27409CF58(v62, v174);
    sub_27409D4E4((v15 + 9), v180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
    sub_27409D1F4();
    if (swift_dynamicCast())
    {
      v66 = v179;
      if ([v179 isPasspoint])
      {
        v67 = [v66 displayedOperatorName];
        if (v67)
        {
          v68 = v67;
          sub_2741C7E7C();

          goto LABEL_60;
        }
      }
    }

    sub_27409D4E4((v15 + 9), v180);
    if (swift_dynamicCast())
    {
      v69 = v179;
      v70 = [v179 OSSpecificAttributes];
      if (v70)
      {
        v71 = v70;
        v72 = sub_2741C7D6C();

        v175 = 0xD000000000000013;
        v176 = v167;
        sub_2741C850C();
        if (*(v72 + 16) && (v73 = sub_274125164(v180), (v74 & 1) != 0))
        {
          sub_27409D308(*(v72 + 56) + 32 * v73, &v177);
          sub_27409D2A4(v180);

          if (*(&v178 + 1))
          {
            sub_27409D2F8(&v177, &v179);
            sub_27409D308(&v179, v180);
            sub_2741C7EBC();

            __swift_destroy_boxed_opaque_existential_1Tm(&v179);
            goto LABEL_60;
          }
        }

        else
        {

          sub_27409D2A4(v180);
          v177 = 0u;
          v178 = 0u;
        }
      }

      else
      {

        v177 = 0u;
        v178 = 0u;
      }

      sub_27409D420(&v177, &qword_280937E28, &unk_2741CB3D0);
    }

    v76 = *v15;
    v75 = v15[1];

LABEL_60:
    v77 = sub_2741C7ECC();
    v79 = v78;

    sub_27409D4E4((v174 + 9), v180);
    if (swift_dynamicCast())
    {
      v80 = v179;
      if ([v179 isPasspoint])
      {
        v81 = [v80 displayedOperatorName];
        if (v81)
        {
          v82 = v81;
          sub_2741C7E7C();

          v26 = v162;
          goto LABEL_77;
        }

        v26 = v162;
      }

      else
      {
      }
    }

    sub_27409D4E4((v174 + 9), v180);
    if (!swift_dynamicCast())
    {
      goto LABEL_76;
    }

    v83 = v179;
    v84 = [v179 OSSpecificAttributes];
    if (!v84)
    {

      v177 = 0u;
      v178 = 0u;
      goto LABEL_75;
    }

    v85 = v84;
    v86 = sub_2741C7D6C();

    v175 = 0xD000000000000013;
    v176 = v167;
    sub_2741C850C();
    if (!*(v86 + 16) || (v87 = sub_274125164(v180), (v88 & 1) == 0))
    {

      sub_27409D2A4(v180);
      v177 = 0u;
      v178 = 0u;
LABEL_73:

LABEL_75:
      sub_27409D420(&v177, &qword_280937E28, &unk_2741CB3D0);
LABEL_76:
      v90 = *v174;
      v89 = v174[1];

      goto LABEL_77;
    }

    sub_27409D308(*(v86 + 56) + 32 * v87, &v177);
    sub_27409D2A4(v180);

    if (!*(&v178 + 1))
    {
      goto LABEL_73;
    }

    sub_27409D2F8(&v177, &v179);
    sub_27409D308(&v179, v180);
    sub_2741C7EBC();

    __swift_destroy_boxed_opaque_existential_1Tm(&v179);
LABEL_77:
    v91 = sub_2741C7ECC();
    a3 = v92;

    if (v77 == v91 && v79 == a3)
    {

      sub_27409D050(v174);
      v15 = v172;
      sub_27409D050(v172);
LABEL_42:
      v28 = v160 + 1;
      v62 = v159 + v154;
      v63 = v158 - 1;
      v64 = v157 + v154;
      if (v160 + 1 == v155)
      {
        v28 = v155;
        v27 = v153;
        goto LABEL_85;
      }

      goto LABEL_43;
    }

    v93 = sub_2741C86DC();

    sub_27409D050(v174);
    v15 = v172;
    result = sub_27409D050(v172);
    if ((v93 & 1) == 0)
    {
      goto LABEL_42;
    }

    v94 = v173;
    if (!v169)
    {
      break;
    }

    a3 = v170;
    sub_27409D240(v64, v170);
    swift_arrayInitWithTakeFrontToBack();
    sub_27409D240(a3, v62);
    v62 += v168;
    v64 += v168;
    v95 = __CFADD__(v94, 1);
    v65 = v94 + 1;
    if (v95)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
  return result;
}

uint64_t sub_27409C4FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for KnownNetwork();
  v8 = *(*(v53 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v53);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v51 = &v48 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v48 - v14;
  result = MEMORY[0x28223BE20](v13);
  v54 = &v48 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_67;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_68;
  }

  v20 = (a2 - a1) / v18;
  v59 = a1;
  v58 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v22;
    if (v22 >= 1)
    {
      v34 = -v18;
      v35 = a4 + v22;
      v50 = a4;
      v55 = -v18;
      while (2)
      {
        while (1)
        {
          v48 = v33;
          v36 = a2;
          a2 += v34;
          v56 = a2;
          v54 = v36;
          while (1)
          {
            if (v36 <= a1)
            {
              v59 = v36;
              v57 = v48;
              goto LABEL_65;
            }

            v38 = a3;
            v49 = v33;
            v39 = v35 + v34;
            sub_27409CF58(v39, v51);
            sub_27409CF58(a2, v52);
            sub_27411741C();
            v40 = sub_2741C7ECC();
            v42 = v41;

            sub_27411741C();
            v43 = sub_2741C7ECC();
            v45 = v44;

            if (v40 != v43)
            {
              goto LABEL_49;
            }

            if (v42 == v45)
            {
              v46 = 0;
            }

            else
            {
LABEL_49:
              v46 = sub_2741C86DC();
            }

            a3 = v38 + v55;
            sub_27409D050(v52);
            sub_27409D050(v51);
            a2 = v56;
            v47 = v50;
            if (v46)
            {
              break;
            }

            v33 = v39;
            if (v38 < v35 || a3 >= v35)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v35 = v39;
            v37 = v39 > v47;
            v36 = v54;
            v34 = v55;
            if (!v37)
            {
              a2 = v54;
              goto LABEL_64;
            }
          }

          if (v38 < v54 || a3 >= v54)
          {
            break;
          }

          v33 = v49;
          v34 = v55;
          if (v38 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v35 <= v47)
          {
            goto LABEL_64;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v33 = v49;
        v34 = v55;
        if (v35 > v47)
        {
          continue;
        }

        break;
      }
    }

LABEL_64:
    v59 = a2;
    v57 = v33;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v21;
    v57 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      do
      {
        v24 = a3;
        v56 = a2;
        sub_27409CF58(a2, v54);
        v25 = a4;
        sub_27409CF58(a4, v55);
        sub_27411741C();
        v26 = sub_2741C7ECC();
        v28 = v27;

        sub_27411741C();
        v29 = sub_2741C7ECC();
        v31 = v30;

        if (v26 == v29 && v28 == v31)
        {

          sub_27409D050(v55);
          sub_27409D050(v54);
        }

        else
        {
          v32 = sub_2741C86DC();

          sub_27409D050(v55);
          sub_27409D050(v54);
          if (v32)
          {
            a2 = v56 + v18;
            a3 = v24;
            if (a1 < v56 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_34;
          }
        }

        a4 += v18;
        a3 = v24;
        if (a1 < v25 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = v25 + v18;
        a2 = v56;
LABEL_34:
        a1 += v18;
        v59 = a1;
      }

      while (a4 < v52 && a2 < a3);
    }
  }

LABEL_65:
  sub_27409CACC(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_27409CACC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for KnownNetwork();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_27409CBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  *(a3 + 16) = a1;
  *(a3 + 24) = &off_28832CB18;
  sub_27409D3B0(a2, &v28);
  if (v29)
  {
    sub_27409D118(&v28, v31);
    v10 = v32;
    v11 = v33;
    v12 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v29 = v10;
    v30 = *(v11 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
    v14 = sub_2741C80DC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_27409D4E4(&v28, v27);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_27409D118(v27, v15 + 32);
    *(v15 + 72) = 3;

    sub_2740CE980(0, 0, v9, &unk_2741D5960, v15);

    __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_27409D420(&v28, &qword_280937E38, &unk_2741CB3E0);
  }

  *(a3 + 32) = sub_2741980C8();
  v16 = sub_274197AE8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v16 >> 8;
  sub_27409D420(a2, &qword_280937E38, &unk_2741CB3E0);
  *(a3 + 40) = v17;
  *(a3 + 41) = v24;
  *(a3 + 48) = v19;
  *(a3 + 56) = v21;
  *(a3 + 64) = v23;
  *(a3 + 65) = HIBYTE(v23) & 1;
  return a3;
}

uint64_t type metadata accessor for KnownNetworksViewModel()
{
  result = qword_280937DF0;
  if (!qword_280937DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27409CE70()
{
  result = sub_2741C6A4C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27409CF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnownNetwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27409CFC4(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_27409D050(uint64_t a1)
{
  v2 = type metadata accessor for KnownNetwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_27409D118(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_27409D14C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

unint64_t sub_27409D1F4()
{
  result = qword_280937E20;
  if (!qword_280937E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280937E20);
  }

  return result;
}

uint64_t sub_27409D240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnownNetwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_27409D2F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_27409D308(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_27409D3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E38, &unk_2741CB3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27409D420(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_27409D4E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27409D548()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_27409D588(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_274104E24(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_27409D648()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_27409D7A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27409D7F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_27409D85C(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = [a1 networkName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2741C7E7C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = [a1 RSSI] + 77.5;
  v10 = fabsf(sqrtf((v9 * v9) + 450.0));
  sub_2740CBBBC(((v9 / (v10 + v10)) + 0.5));
  *(a2 + 32) = v11;
  *(a2 + 42) = [a1 isPersonalHotspot];
  if (([a1 supportedSecurityTypes] & 0x200) != 0)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v12 = ([a1 supportedSecurityTypes] >> 8) & 1;
  }

  *(a2 + 40) = v12;
  *(a2 + 48) = [a1 strongestSupportedSecurityType];
  *(a2 + 80) = sub_27409E144();
  *(a2 + 88) = &off_28832A778;
  *(a2 + 56) = a1;
  v13 = a1;
  *(a2 + 96) = [v13 isEAP];
  v14 = [v13 matchingKnownNetworkProfile];
  v15 = v14;
  if (v14)
  {
  }

  *(a2 + 41) = v15 != 0;
  v21 = [v13 matchingKnownNetworkProfile];

  if (v21)
  {
    if ([v21 isPasspoint])
    {
      v16 = [v21 displayedOperatorName];
      if (v16)
      {
        v17 = v16;
        v18 = sub_2741C7E7C();
        v20 = v19;
      }

      else
      {

        v18 = 0;
        v20 = 0;
      }

      *(a2 + 16) = v18;
      *(a2 + 24) = v20;
    }

    else
    {
    }
  }
}

uint64_t sub_27409DA98()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_27409DAEC()
{
  sub_2741C87DC();
  v1 = *v0;
  v2 = v0[1];
  sub_2741C7F0C();
  return sub_2741C880C();
}

uint64_t sub_27409DB30()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2741C7F0C();
}

uint64_t sub_27409DB38()
{
  sub_2741C87DC();
  v1 = *v0;
  v2 = v0[1];
  sub_2741C7F0C();
  return sub_2741C880C();
}

uint64_t sub_27409DB78(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2741C86DC();
  }
}

unint64_t sub_27409DBAC()
{
  result = qword_280937E40;
  if (!qword_280937E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937E40);
  }

  return result;
}

unint64_t sub_27409DC00(uint64_t a1)
{
  *(a1 + 8) = sub_27409DC30();
  result = sub_27409DC84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_27409DC30()
{
  result = qword_280937E48;
  if (!qword_280937E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937E48);
  }

  return result;
}

unint64_t sub_27409DC84()
{
  result = qword_280937E50;
  if (!qword_280937E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937E50);
  }

  return result;
}

uint64_t sub_27409DCD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E58, &unk_2741CB540);
  v1 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v1);

  MEMORY[0x2743E5FB0](*v0, *(v0 + 8));
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0x273D656D616E20, 0xE700000000000000);

  sub_2741C856C();

  v2 = sub_2740EAF84(*(v0 + 48));
  v4 = v3;

  MEMORY[0x2743E5FB0](v2, v4);

  MEMORY[0x2743E5FB0](10272, 0xE200000000000000);
  v5 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v5);

  MEMORY[0x2743E5FB0](10025, 0xE200000000000000);
  MEMORY[0x2743E5FB0](0x7469727563657320, 0xEF273D6570795479);

  if (*(v0 + 41))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 41))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v6, v7);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0x273D6E776F6E6B20, 0xE800000000000000);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_27409DF24(uint64_t a1, uint64_t a2)
{
  sub_27409D4E4(v2 + 56, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_27409E144();
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v5 = v14[0];
  v6 = [v14[0] matchingKnownNetworkProfile];
  if (!v6)
  {

LABEL_15:
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  v7 = v6;
  v8 = [v6 OSSpecificAttributes];
  if (!v8)
  {

    goto LABEL_15;
  }

  v9 = v8;
  v10 = sub_2741C7D6C();

  sub_2741C850C();
  if (!*(v10 + 16) || (v11 = sub_274125164(v15), (v12 & 1) == 0))
  {

    sub_27409D2A4(v15);
    goto LABEL_13;
  }

  sub_27409D308(*(v10 + 56) + 32 * v11, v14);
  sub_27409D2A4(v15);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    LOBYTE(a2) = a2 == 0;
    return a2 & 1;
  }

  if (!a2)
  {
LABEL_18:

    return a2 & 1;
  }

  if (a1 != 0x55557963696C6F50 || a2 != 0xEA00000000004449)
  {
    LOBYTE(a2) = sub_2741C86DC();
    goto LABEL_18;
  }

  LOBYTE(a2) = 1;
  return a2 & 1;
}

unint64_t sub_27409E144()
{
  result = qword_280937E60;
  if (!qword_280937E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280937E60);
  }

  return result;
}

uint64_t sub_27409E194@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2741C70AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OtherNetworkSheet();
  sub_2740A6D94(v1 + *(v12 + 20), v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2741C82AC();
    v16 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_27409E39C()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for OtherNetworkSheet() + 24));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2741C82AC();
    v9 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_27409E4EC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for OtherNetworkSheet();
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v56 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF0, &qword_2741CB630);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF8, &qword_2741CB638);
  v9 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F00, &qword_2741CB640);
  v53 = *(v12 - 8);
  v54 = v12;
  v52 = *(v53 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v51 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = v47 - v15;
  *v11 = sub_2741C71AC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F08, &qword_2741CB648) + 44);
  v17 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8);
  sub_2741C7A5C();
  v59 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F10, &unk_2741CB650);
  sub_2740A6D24(&qword_280937F18, &qword_280937F10, &unk_2741CB650);
  sub_2741C6E7C();
  v47[0] = v6;
  sub_2740A5968(v1, v6);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_2740A59D0(v6, v19 + v18);
  v20 = &v11[*(v58 + 36)];
  *v20 = sub_2740A5A34;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v49 = v3;
  v21 = v1 + v3[11];
  v22 = *v21;
  v23 = *(v21 + 8);
  v64[0] = v22;
  v65 = v23;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v24 = v60;
  LODWORD(v48) = v61;
  v47[2] = v3[13];
  v47[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  v25 = v47[0];
  sub_2740A5968(v1, v47[0]);
  v26 = swift_allocObject();
  sub_2740A59D0(v25, v26 + v18);
  v27 = v57;
  sub_2741A21D8(v24, *(&v24 + 1), v48, &v60, sub_2740A5A4C, v26, v57);

  sub_27409D420(&v60, &qword_280937E78, &qword_2741D81E0);
  sub_27409D420(v11, &qword_280937EF8, &qword_2741CB638);
  v28 = v1 + v49[12];
  v29 = *v28;
  v30 = *(v28 + 8);
  v64[0] = v29;
  v65 = v30;
  sub_2741C7A5C();
  v48 = *(&v60 + 1);
  v49 = v60;
  LODWORD(v50) = v61;
  sub_2741C7A3C();
  sub_2740A5968(v1, v25);
  v31 = swift_allocObject();
  sub_2740A59D0(v25, v31 + v18);
  sub_2740A6D94(v64, &v60, &qword_280937E78, &qword_2741D81E0);
  v32 = v53;
  v33 = v54;
  v34 = v51;
  (*(v53 + 16))(v51, v27, v54);
  v35 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v36 = (v52 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v61;
  *(v37 + 16) = v60;
  *(v37 + 32) = v38;
  *(v37 + 48) = v62;
  (*(v32 + 32))(v37 + v35, v34, v33);
  v39 = (v37 + v36);
  *v39 = sub_2740A5AD8;
  v39[1] = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F30, &unk_2741D7CA0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  v42 = sub_2740A5CF8();
  v43 = sub_2740A5DB0();
  v44 = sub_2740A5EE4();
  *&v60 = v58;
  *(&v60 + 1) = v40;
  *&v61 = v41;
  *(&v61 + 1) = v42;
  v62 = v43;
  v63 = v44;
  swift_getOpaqueTypeConformance2();
  sub_2740A5F60();
  v45 = v57;
  sub_2741C788C();

  sub_27409D420(v64, &qword_280937E78, &qword_2741D81E0);
  return (*(v32 + 8))(v45, v33);
}

uint64_t sub_27409EC40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a1;
  v75 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FE0, &qword_2741CB720);
  v69 = *(v2 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v65 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FE8, &qword_2741CB728);
  v70 = *(v72 - 1);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v68 = &v65 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FF0, &qword_2741CB730);
  v76 = *(v77 - 8);
  v8 = *(v76 + 64);
  v9 = MEMORY[0x28223BE20](v77);
  v74 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FF8, &qword_2741CB738);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - v16;
  if (qword_280937460 != -1)
  {
    swift_once();
  }

  v96 = qword_280945FF8;
  v97 = unk_280946000;
  v18 = sub_2740A6A74();

  v67 = v18;
  v19 = sub_2741C76AC();
  v21 = v20;
  v23 = v22;
  sub_2741C758C();
  v83 = sub_2741C767C();
  v82 = v24;
  v26 = v25;
  v84 = v27;

  sub_2740A6AC8(v19, v21, v23 & 1);

  v81 = sub_2741C752C();
  sub_2741C6C6C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v78 = v26 & 1;
  LOBYTE(v96) = v26 & 1;
  LOBYTE(v90) = 0;
  KeyPath = swift_getKeyPath();
  v80 = sub_2741C737C();
  *v17 = sub_2741C70EC();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938008, &qword_2741CB770);
  v37 = v66;
  sub_27409F640(v66, &v17[*(v36 + 44)]);
  LOBYTE(v18) = sub_2741C751C();
  v38 = sub_2741C6C6C();
  v39 = &v17[*(v12 + 36)];
  *v39 = v18;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  MEMORY[0x28223BE20](v38);
  *(&v65 - 2) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938010, &qword_2741CB778);
  sub_2740A6D24(&qword_280938018, &qword_280938010, &qword_2741CB778);
  sub_2741C761C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938020, &qword_2741CB780);
  v44 = *(sub_2741C6F0C() - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2741CB550;
  sub_2741C6EFC();
  v48 = sub_2740A6D24(&qword_280938028, &qword_280937FE0, &qword_2741CB720);
  v49 = v68;
  MEMORY[0x2743E5820](2, v47, v2, v48);

  (*(v69 + 8))(v5, v2);
  if (qword_280937470 != -1)
  {
    swift_once();
  }

  v96 = qword_280946018;
  v97 = unk_280946020;
  *&v90 = v2;
  *(&v90 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v50 = v73;
  v51 = v72;
  sub_2741C777C();
  (*(v70 + 8))(v49, v51);
  v52 = v71;
  sub_2740A6D94(v17, v71, &qword_280937FF8, &qword_2741CB738);
  v53 = v76;
  v54 = *(v76 + 16);
  v55 = v74;
  v56 = v77;
  v54(v74, v50, v77);
  *&v90 = v83;
  *(&v90 + 1) = v82;
  LOBYTE(v91) = v78;
  *(&v91 + 1) = *v86;
  DWORD1(v91) = *&v86[3];
  v72 = v17;
  *(&v91 + 1) = v84;
  LOBYTE(v92) = v81;
  *(&v92 + 1) = *v85;
  DWORD1(v92) = *&v85[3];
  *(&v92 + 1) = v29;
  *&v93 = v31;
  *(&v93 + 1) = v33;
  *&v94 = v35;
  BYTE8(v94) = 0;
  *(&v94 + 9) = *v87;
  HIDWORD(v94) = *&v87[3];
  *&v95 = KeyPath;
  BYTE8(v95) = 1;
  *(&v95 + 9) = v88;
  BYTE11(v95) = v89;
  HIDWORD(v95) = v80;
  v57 = v91;
  v58 = v75;
  *v75 = v90;
  *(v58 + 1) = v57;
  v59 = v92;
  v60 = v93;
  v61 = v95;
  *(v58 + 4) = v94;
  *(v58 + 5) = v61;
  *(v58 + 2) = v59;
  *(v58 + 3) = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938030, &qword_2741CB788);
  sub_2740A6D94(v52, &v58[*(v62 + 48)], &qword_280937FF8, &qword_2741CB738);
  v54(&v58[*(v62 + 64)], v55, v56);
  sub_2740A6D94(&v90, &v96, &qword_280938038, &qword_2741CB790);
  v63 = *(v53 + 8);
  v63(v50, v56);
  sub_27409D420(v72, &qword_280937FF8, &qword_2741CB738);
  v63(v55, v56);
  sub_27409D420(v52, &qword_280937FF8, &qword_2741CB738);
  v96 = v83;
  v97 = v82;
  v98 = v78;
  *v99 = *v86;
  *&v99[3] = *&v86[3];
  v100 = v84;
  v101 = v81;
  *v102 = *v85;
  *&v102[3] = *&v85[3];
  v103 = v29;
  v104 = v31;
  v105 = v33;
  v106 = v35;
  v107 = 0;
  *v108 = *v87;
  *&v108[3] = *&v87[3];
  v109 = KeyPath;
  v110 = 1;
  v111 = v88;
  v112 = v89;
  v113 = v80;
  return sub_27409D420(&v96, &qword_280938038, &qword_2741CB790);
}

uint64_t sub_27409F640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v3);
  v80 = &v69 - v5;
  v6 = type metadata accessor for OtherNetworkSheet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v69 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v69 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v84 = &v69 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - v20;
  sub_2740A5968(a1, v9);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v73 = v8;
  v23 = swift_allocObject();
  sub_2740A59D0(v9, v23 + v22);
  sub_2741C7A7C();
  v77 = v6;
  v78 = a1;
  v24 = (a1 + *(v6 + 48));
  v25 = *v24;
  v26 = *(v24 + 1);
  v71 = v25;
  LOBYTE(v98) = v25;
  v70 = v26;
  v99 = v26;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  LOBYTE(a1) = v89;
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  v81 = v10;
  v29 = *(v10 + 36);
  v87 = v21;
  v30 = &v21[v29];
  *v30 = KeyPath;
  v30[1] = sub_2740A6E2C;
  v30[2] = v28;
  if (qword_280937470 != -1)
  {
    swift_once();
  }

  v98 = qword_280946018;
  v99 = unk_280946020;
  sub_2740A6A74();

  v31 = sub_2741C76AC();
  v33 = v32;
  v35 = v34;
  sub_2741C75EC();
  v36 = sub_2741C767C();
  v74 = v37;
  v75 = v36;
  v39 = v38;
  v76 = v40;

  sub_2740A6AC8(v31, v33, v35 & 1);

  sub_2741C7C1C();
  v41 = 1;
  sub_2741C6F1C();
  v72 = v39 & 1;
  v118 = v39 & 1;
  v42 = v78;
  sub_2740A5968(v78, v9);
  v43 = swift_allocObject();
  sub_2740A59D0(v9, v43 + v22);
  v44 = v80;
  sub_2741C7A7C();
  v45 = (v42 + *(v77 + 32));
  v47 = *v45;
  v46 = v45[1];
  v98 = v47;
  v99 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v48 = sub_274109704();

  if (v48)
  {
    LOBYTE(v98) = v71;
    v99 = v70;
    sub_2741C7A3C();
    v41 = v89;
  }

  v49 = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v41;
  v51 = v79;
  (*(v82 + 32))(v79, v44, v83);
  v52 = (v51 + *(v81 + 36));
  *v52 = v49;
  v52[1] = sub_2740A7438;
  v52[2] = v50;
  v53 = v84;
  sub_2740A7060(v51, v84);
  v54 = v88;
  sub_2740A6D94(v87, v88, &qword_2809381A0, &qword_2741CB990);
  v55 = v85;
  sub_2740A6D94(v53, v85, &qword_2809381A0, &qword_2741CB990);
  v56 = v54;
  v57 = v86;
  sub_2740A6D94(v56, v86, &qword_2809381A0, &qword_2741CB990);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A8, &qword_2741CB9C8);
  v59 = (v57 + *(v58 + 48));
  v61 = v74;
  v60 = v75;
  *&v89 = v75;
  *(&v89 + 1) = v74;
  v62 = v72;
  LOBYTE(v90) = v72;
  *(&v90 + 1) = *v117;
  DWORD1(v90) = *&v117[3];
  v63 = v76;
  *(&v90 + 1) = v76;
  v95 = v114;
  v96 = v115;
  v97 = v116;
  v94 = v113;
  v93 = v112;
  v92 = v111;
  v91 = v110;
  v64 = v115;
  v59[6] = v114;
  v59[7] = v64;
  v59[8] = v97;
  v65 = v92;
  v59[2] = v91;
  v59[3] = v65;
  v66 = v94;
  v59[4] = v93;
  v59[5] = v66;
  v67 = v90;
  *v59 = v89;
  v59[1] = v67;
  sub_2740A6D94(v55, v57 + *(v58 + 64), &qword_2809381A0, &qword_2741CB990);
  sub_2740A6D94(&v89, &v98, &qword_2809381B0, &qword_2741CB9D0);
  sub_27409D420(v53, &qword_2809381A0, &qword_2741CB990);
  sub_27409D420(v87, &qword_2809381A0, &qword_2741CB990);
  sub_27409D420(v55, &qword_2809381A0, &qword_2741CB990);
  v98 = v60;
  v99 = v61;
  v100 = v62;
  *v101 = *v117;
  *&v101[3] = *&v117[3];
  v102 = v63;
  v107 = v114;
  v108 = v115;
  v109 = v116;
  v103 = v110;
  v104 = v111;
  v106 = v113;
  v105 = v112;
  sub_27409D420(&v98, &qword_2809381B0, &qword_2741CB9D0);
  return sub_27409D420(v88, &qword_2809381A0, &qword_2741CB990);
}

uint64_t sub_27409FE38(uint64_t a1)
{
  v20 = sub_2741C70AC();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_2741C6DBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OtherNetworkSheet();
  sub_2740A6D94(a1 + *(v15 + 20), v9, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_2741C82AC();
    v17 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_2741C6DAC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2740A00C0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  sub_2741C676C();

  sub_2740A6A74();
  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2740A0198@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937390 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2740A023C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938040, &qword_2741CB798);
  v52 = *(v54 - 1);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v48 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938048, &qword_2741CB7A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v47 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938050, &qword_2741CB7A8);
  v10 = *(v49 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v49);
  v59 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938058, &qword_2741CB7B0);
  v50 = *(v53 - 8);
  v16 = *(v50 + 64);
  v17 = MEMORY[0x28223BE20](v53);
  v58 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v62 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938060, &qword_2741CB7B8);
  sub_2740A6D24(&qword_280938068, &qword_280938060, &qword_2741CB7B8);
  v57 = v20;
  sub_2741C7B9C();
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938070, &qword_2741CB7C0);
  sub_2740A6D24(&qword_280938078, &qword_280938070, &qword_2741CB7C0);
  v56 = v15;
  sub_2741C7B9C();
  v21 = (a1 + *(type metadata accessor for OtherNetworkSheet() + 32));
  v23 = *v21;
  v22 = v21[1];
  v64 = v23;
  v65 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v24 = v63;
  swift_getKeyPath();
  v64 = v24;
  sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials);
  sub_2741C6A0C();

  v25 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
  if ((*(v24 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) & 0xFFFFFFFFFFFFFB57) == 0)
  {

    goto LABEL_5;
  }

  swift_getKeyPath();
  v64 = v24;
  sub_2741C6A0C();

  v26 = *(v24 + v25);

  if (v26 == 160)
  {
LABEL_5:
    MEMORY[0x28223BE20](v27);
    *(&v47 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938088, &qword_2741CB7F8);
    sub_2740A6D24(&qword_280938090, &qword_280938088, &qword_2741CB7F8);
    v31 = v48;
    sub_2741C7B9C();
    v30 = v52;
    v32 = v31;
    v29 = v54;
    (*(v52 + 32))(v60, v32, v54);
    v28 = 0;
    goto LABEL_6;
  }

  v28 = 1;
  v29 = v54;
  v30 = v52;
LABEL_6:
  v33 = v60;
  (*(v30 + 56))(v60, v28, 1, v29);
  v34 = v50;
  v35 = *(v50 + 16);
  v36 = v58;
  v37 = v53;
  v35(v58, v57, v53);
  v54 = v10[2];
  v38 = v49;
  (v54)(v59, v56, v49);
  v39 = v33;
  v40 = v51;
  sub_2740A6D94(v39, v51, &qword_280938048, &qword_2741CB7A0);
  v41 = v55;
  v35(v55, v36, v37);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938080, &qword_2741CB7F0);
  v43 = v59;
  (v54)(&v41[*(v42 + 48)], v59, v38);
  sub_2740A6D94(v40, &v41[*(v42 + 64)], &qword_280938048, &qword_2741CB7A0);
  sub_27409D420(v60, &qword_280938048, &qword_2741CB7A0);
  v44 = v10[1];
  v44(v56, v38);
  v45 = *(v34 + 8);
  v45(v57, v37);
  sub_27409D420(v40, &qword_280938048, &qword_2741CB7A0);
  v44(v43, v38);
  return (v45)(v58, v37);
}

uint64_t sub_2740A0958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938188, &qword_2741CB950);
  return sub_2740A09B0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_2740A09B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938118, &unk_2741CB890);
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938120, &unk_2741D05E0);
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938190, &qword_2741CB958);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v56 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v43 - v12;
  if (qword_280937468 != -1)
  {
    swift_once();
  }

  v61 = qword_280946008;
  v62 = unk_280946010;
  v13 = sub_2740A6A74();

  v58 = v13;
  v47 = sub_2741C76AC();
  v46 = v14;
  v45 = v15;
  v48 = v16;
  if (qword_2809373E8 != -1)
  {
    swift_once();
  }

  v17 = unk_280945F10;
  v44 = qword_280945F08;
  v18 = type metadata accessor for OtherNetworkSheet();
  v19 = (a1 + *(v18 + 32));
  v21 = *v19;
  v20 = v19[1];
  v65 = v21;
  v66 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v22 = v61;
  v23 = v62;
  v24 = v63;
  swift_getKeyPath();
  v65 = v22;
  v66 = v23;
  v67 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v59 = v44;
  v60 = v17;
  v25 = v49;
  sub_2741C7C9C();
  v26 = (a1 + *(v18 + 52));
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v26) = v26[16];
  LOBYTE(v61) = v27;
  v62 = v28;
  LOBYTE(v63) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v61 = v65;
  v62 = v66;
  LOBYTE(v63) = v67;
  LOBYTE(v65) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v30 = sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890);
  v31 = sub_2740A58C0();
  v33 = v51;
  v32 = v52;
  sub_2741C789C();

  (*(v50 + 8))(v25, v32);
  v65 = qword_280946008;
  v66 = unk_280946010;
  v61 = v32;
  v62 = v29;
  v63 = v30;
  v64 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v54;
  v35 = v55;
  sub_2741C77BC();
  (*(v53 + 8))(v33, v34);
  v36 = v56;
  sub_2740A6D94(v35, v56, &qword_280938190, &qword_2741CB958);
  v37 = v57;
  v39 = v47;
  v38 = v48;
  v40 = v46;
  *v57 = v47;
  v37[1] = v40;
  LOBYTE(v22) = v45 & 1;
  *(v37 + 16) = v45 & 1;
  v37[3] = v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938198, &qword_2741CB988);
  sub_2740A6D94(v36, v37 + *(v41 + 48), &qword_280938190, &qword_2741CB958);
  sub_27409861C(v39, v40, v22);

  sub_27409D420(v35, &qword_280938190, &qword_2741CB958);
  sub_27409D420(v36, &qword_280938190, &qword_2741CB958);
  sub_2740A6AC8(v39, v40, v22);
}

uint64_t sub_2740A0FA8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380B8, &qword_2741CB838);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380C0, &qword_2741CB840);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = (&v63 - v10);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380C8, &qword_2741CB848);
  v64 = *(v65 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = (&v63 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380D0, &qword_2741CB850);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v67 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v66 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380D8, &qword_2741CB858);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v77 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v63 - v22;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380E0, &qword_2741CB860);
  v73 = *(v76 - 8);
  v23 = *(v73 + 64);
  v24 = MEMORY[0x28223BE20](v76);
  v74 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v63 - v26;
  v81 = a1;
  v28 = *(type metadata accessor for OtherNetworkSheet() + 32);
  v69 = a1;
  v29 = (a1 + v28);
  v31 = v29[1];
  v82 = *v29;
  v30 = v82;
  v83 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800);
  sub_2740A6BC4();
  v72 = v27;
  sub_2741C6DDC();
  v84 = v30;
  *&v85 = v31;
  sub_2741C7A3C();
  v32 = v82;
  swift_getKeyPath();
  v84 = v32;
  sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials);
  sub_2741C6A0C();

  v33 = *(v32 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);

  if (v33 != 512)
  {
    v84 = v30;
    *&v85 = v31;
    sub_2741C7A3C();
    v36 = v82;
    swift_getKeyPath();
    v84 = v36;
    sub_2741C6A0C();

    v37 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
    if ((*(v36 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) & 0xFFFFFFFFFFFFFB57) != 0)
    {
      swift_getKeyPath();
      v84 = v36;
      sub_2741C6A0C();

      v38 = *(v36 + v37);

      v39 = v75;
      if (v38 != 160)
      {
        v40 = 1;
        v41 = v69;
        v42 = v66;
LABEL_8:
        (*(v64 + 56))(v42, v40, 1, v65);
        v46 = sub_2741C70EC();
        v47 = v68;
        *v68 = v46;
        *(v47 + 8) = 0;
        *(v47 + 16) = 1;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380F0, &qword_2741CB868);
        sub_2740A2548(v41, (v47 + *(v48 + 44)));
        v49 = v67;
        sub_2740A6D94(v42, v67, &qword_2809380D0, &qword_2741CB850);
        v50 = v70;
        sub_2740A6D94(v47, v70, &qword_2809380C0, &qword_2741CB840);
        v51 = v71;
        sub_2740A6D94(v49, v71, &qword_2809380D0, &qword_2741CB850);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380F8, &qword_2741CB870);
        sub_2740A6D94(v50, v51 + *(v52 + 48), &qword_2809380C0, &qword_2741CB840);
        sub_27409D420(v47, &qword_2809380C0, &qword_2741CB840);
        sub_27409D420(v42, &qword_2809380D0, &qword_2741CB850);
        sub_27409D420(v50, &qword_2809380C0, &qword_2741CB840);
        sub_27409D420(v49, &qword_2809380D0, &qword_2741CB850);
        v35 = v39;
        sub_2740A6C18(v51, v39, &qword_2809380B8, &qword_2741CB838);
        v34 = 0;
        goto LABEL_9;
      }
    }

    else
    {

      v39 = v75;
    }

    v43 = sub_2741C70EC();
    v44 = v63;
    *v63 = v43;
    *(v44 + 8) = 0;
    *(v44 + 16) = 1;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938108, &unk_2741CB880);
    v41 = v69;
    sub_2740A1AF8(v69, (v44 + *(v45 + 44)));
    v42 = v66;
    sub_2740A6C18(v44, v66, &qword_2809380C8, &qword_2741CB848);
    v40 = 0;
    goto LABEL_8;
  }

  v34 = 1;
  v35 = v75;
LABEL_9:
  (*(v78 + 56))(v35, v34, 1, v79);
  v53 = v73;
  v54 = v74;
  v55 = *(v73 + 16);
  v56 = v72;
  v57 = v76;
  v55(v74, v72, v76);
  v58 = v77;
  sub_2740A6D94(v35, v77, &qword_2809380D8, &qword_2741CB858);
  v59 = v80;
  v55(v80, v54, v57);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938100, &qword_2741CB878);
  sub_2740A6D94(v58, &v59[*(v60 + 48)], &qword_2809380D8, &qword_2741CB858);
  sub_27409D420(v35, &qword_2809380D8, &qword_2741CB858);
  v61 = *(v53 + 8);
  v61(v56, v57);
  sub_27409D420(v58, &qword_2809380D8, &qword_2741CB858);
  return (v61)(v54, v57);
}

uint64_t sub_2740A184C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2809373C8 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v24 = sub_2741C76AC();
  v25 = v4;
  v6 = v5;
  v23 = v7;
  v8 = (a1 + *(type metadata accessor for OtherNetworkSheet() + 32));
  v27 = *v8;
  v28 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials);
  sub_2741C6A0C();

  v9 = *(v26 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);

  sub_27418FE90(v9);

  v10 = sub_2741C76AC();
  v12 = v11;
  v14 = v13;
  sub_2741C737C();
  v15 = sub_2741C764C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_2740A6AC8(v10, v12, v14 & 1);

  *a2 = v24;
  *(a2 + 8) = v6;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  *(a2 + 64) = v19 & 1;
  *(a2 + 72) = v21;
  sub_27409861C(v24, v6, v23 & 1);

  sub_27409861C(v15, v17, v19 & 1);

  sub_2740A6AC8(v15, v17, v19 & 1);

  sub_2740A6AC8(v24, v6, v23 & 1);
}

uint64_t sub_2740A1AF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938110, &unk_2741D05D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = v69 - v5;
  v6 = sub_2741C6E4C();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v6);
  v92 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OtherNetworkSheet();
  v79 = *(v9 - 8);
  v10 = *(v79 + 64);
  MEMORY[0x28223BE20](v9);
  v80 = v11;
  v81 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938118, &unk_2741CB890);
  v75 = *(v78 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v78);
  v70 = v69 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938120, &unk_2741D05E0);
  v83 = *(v84 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v77 = v69 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938128, &unk_2741CB8A0);
  v82 = *(v87 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v87);
  v76 = v69 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938130, &unk_2741D05F0);
  v86 = *(v88 - 8);
  v18 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938138, &qword_2741CB8B0);
  v90 = *(v20 - 8);
  v91 = v20;
  v21 = *(v90 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v89 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v97 = v69 - v24;
  if (qword_2809374A0 != -1)
  {
    swift_once();
  }

  v98 = qword_280946078;
  v99 = unk_280946080;
  sub_2740A6A74();

  v72 = sub_2741C76AC();
  v71 = v25;
  v73 = v26;
  v74 = v27;
  v69[3] = sub_2741C714C();
  v69[2] = v28;
  v69[1] = v29;
  v30 = (a1 + *(v9 + 32));
  v32 = *v30;
  v31 = v30[1];
  v102 = v32;
  v103 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v33 = v98;
  v34 = v99;
  v35 = v100;
  swift_getKeyPath();
  v102 = v33;
  v103 = v34;
  v104 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v36 = v70;
  sub_2741C7C8C();
  v37 = a1 + *(v9 + 52);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v37) = *(v37 + 16);
  LOBYTE(v98) = v38;
  v99 = v39;
  LOBYTE(v100) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v98 = v102;
  v99 = v103;
  LOBYTE(v100) = v104;
  LOBYTE(v102) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v41 = sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890);
  v42 = sub_2740A58C0();
  v43 = v77;
  v44 = v78;
  sub_2741C789C();

  (*(v75 + 8))(v36, v44);
  v45 = v81;
  sub_2740A5968(a1, v81);
  v46 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v47 = swift_allocObject();
  sub_2740A59D0(v45, v47 + v46);
  v48 = v92;
  sub_2741C6E3C();
  v98 = v44;
  v99 = v40;
  v100 = v41;
  v101 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v76;
  v51 = v84;
  sub_2741C78EC();

  (*(v93 + 8))(v48, v94);
  (*(v83 + 8))(v43, v51);
  v98 = v51;
  v99 = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v85;
  v54 = v87;
  MEMORY[0x2743E5870](1, v87, v52);
  (*(v82 + 8))(v50, v54);
  v55 = v95;
  sub_2741C744C();
  v56 = sub_2741C745C();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v98 = v54;
  v99 = v52;
  swift_getOpaqueTypeConformance2();
  v57 = v97;
  v58 = v88;
  sub_2741C782C();
  sub_27409D420(v55, &qword_280938110, &unk_2741D05D0);
  (*(v86 + 8))(v53, v58);
  v60 = v89;
  v59 = v90;
  v61 = *(v90 + 16);
  v62 = v91;
  v61(v89, v57, v91);
  v63 = v96;
  v64 = v72;
  v65 = v71;
  *v96 = v72;
  v63[1] = v65;
  LOBYTE(v58) = v73 & 1;
  *(v63 + 16) = v73 & 1;
  v63[3] = v74;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938150, &qword_2741CB8E8);
  v61(v63 + *(v66 + 48), v60, v62);
  sub_27409861C(v64, v65, v58);
  v67 = *(v59 + 8);

  v67(v97, v62);
  v67(v60, v62);
  sub_2740A6AC8(v64, v65, v58);
}

uint64_t sub_2740A2548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = sub_2741C6E4C();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OtherNetworkSheet();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = v8;
  v67 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938158, &qword_2741CFBD0);
  v62 = *(v64 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = v56 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938160, &unk_2741CB900);
  v69 = *(v72 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v63 = v56 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938168, &qword_2741D5C10);
  v70 = *(v73 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x28223BE20](v73);
  v68 = v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938170, &qword_2741CB910);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v74 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = v56 - v19;
  if (qword_2809374A8 != -1)
  {
    swift_once();
  }

  v79 = qword_280946088;
  v80 = unk_280946090;
  v56[3] = sub_2740A6A74();

  v58 = sub_2741C76AC();
  v57 = v20;
  v59 = v21;
  v60 = v22;
  v56[2] = sub_2741C714C();
  v56[1] = v23;
  v56[0] = v24;
  v25 = (a1 + *(v6 + 32));
  v27 = *v25;
  v26 = v25[1];
  v83 = v27;
  v84 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v29 = v79;
  v28 = v80;
  v30 = v81;
  swift_getKeyPath();
  v83 = v29;
  v84 = v28;
  v85 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v31 = v61;
  sub_2741C6CFC();
  v32 = a1;
  v33 = a1 + *(v6 + 52);
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v33) = *(v33 + 16);
  LOBYTE(v79) = v34;
  v80 = v35;
  LOBYTE(v81) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v79 = v83;
  v80 = v84;
  LOBYTE(v81) = v85;
  LOBYTE(v83) = 2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v37 = sub_2740A6D24(&qword_280938178, &qword_280938158, &qword_2741CFBD0);
  v38 = sub_2740A58C0();
  v39 = v63;
  v40 = v64;
  sub_2741C789C();

  (*(v62 + 8))(v31, v40);
  v41 = v67;
  sub_2740A5968(v32, v67);
  v42 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v43 = swift_allocObject();
  sub_2740A59D0(v41, v43 + v42);
  v44 = v75;
  sub_2741C6E3C();
  v79 = v40;
  v80 = v36;
  v81 = v37;
  v82 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v68;
  v47 = v72;
  sub_2741C78EC();

  (*(v76 + 8))(v44, v77);
  (*(v69 + 8))(v39, v47);
  v79 = qword_280946088;
  v80 = unk_280946090;
  v83 = v47;
  v84 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v71;
  v49 = v73;
  sub_2741C77BC();
  (*(v70 + 8))(v46, v49);
  v50 = v74;
  sub_2740A6D94(v48, v74, &qword_280938170, &qword_2741CB910);
  v51 = v78;
  v52 = v58;
  v53 = v57;
  *v78 = v58;
  v51[1] = v53;
  LOBYTE(v30) = v59 & 1;
  *(v51 + 16) = v59 & 1;
  v51[3] = v60;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938180, &qword_2741CB940);
  sub_2740A6D94(v50, v51 + *(v54 + 48), &qword_280938170, &qword_2741CB910);
  sub_27409861C(v52, v53, v30);

  sub_27409D420(v48, &qword_280938170, &qword_2741CB910);
  sub_27409D420(v50, &qword_280938170, &qword_2741CB910);
  sub_2740A6AC8(v52, v53, v30);
}

uint64_t sub_2740A2DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OtherNetworkSheet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_2741C80DC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2740A5968(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2741C80AC();
  v13 = sub_2741C809C();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_2740A59D0(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_2740CE980(0, 0, v11, a3, v15);
}

uint64_t sub_2740A2F54(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for OtherNetworkSheet() + 32));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800);
  sub_2740A6B38();
  return sub_2741C6DDC();
}

double sub_2740A305C@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2741C70EC();
  v18 = 1;
  a2(&v12, a1);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_2740A6D94(&v19, &v11, &qword_2809380B0, &qword_2741CD1A0);
  sub_27409D420(v24, &qword_2809380B0, &qword_2741CD1A0);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_2740A316C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2809373D0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v27 = sub_2741C76AC();
  v28 = v4;
  v6 = v5;
  v26 = v7;
  v8 = (a1 + *(type metadata accessor for OtherNetworkSheet() + 32));
  v30 = *v8;
  v31 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials);
  sub_2741C6A0C();

  v9 = *(v29 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);

  if (v9)
  {
    if (v9 == 1)
    {
      if (qword_280937480 != -1)
      {
        swift_once();
      }

      v10 = &qword_280946038;
    }

    else
    {
      if (qword_280937488 != -1)
      {
        swift_once();
      }

      v10 = &qword_280946048;
    }

    v12 = *v10;
    v11 = v10[1];
  }

  v13 = sub_2741C76AC();
  v15 = v14;
  v17 = v16;
  sub_2741C737C();
  v18 = sub_2741C764C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2740A6AC8(v13, v15, v17 & 1);

  *a2 = v27;
  *(a2 + 8) = v6;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v22 & 1;
  *(a2 + 72) = v24;
  sub_27409861C(v27, v6, v26 & 1);

  sub_27409861C(v18, v20, v22 & 1);

  sub_2740A6AC8(v18, v20, v22 & 1);

  sub_2740A6AC8(v27, v6, v26 & 1);
}

uint64_t sub_2740A34A0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for OtherNetworkSheet() + 52));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740A351C(uint64_t a1)
{
  v2 = type metadata accessor for OtherNetworkSheet();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v57 - v7;
  v9 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  if (!v74)
  {
    sub_27409D420(&v72, &qword_280937E78, &qword_2741D81E0);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  if (swift_dynamicCast())
  {
    v10 = v66;
    v60 = v65;
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v11 = v71;
    if (v71 > 5u)
    {
      if (v71 == 6)
      {
        sub_2740CB460(0xD00000000000001ALL, 0x80000002741D8E90);
        WiFiDisableMISState();
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_2741C856C();
        v72 = v65;
        v73 = v66;
        MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
        v39 = v60;
        MEMORY[0x2743E5FB0](v60, v10);
        MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
        v65 = v39;
        v66 = v10;
        v41 = v61;
        v40 = v62;
        v67 = v61;
        v68 = v62;
        v43 = v63;
        v42 = v64;
        v69 = v63;
        v70 = v64;
        v71 = 6;
        sub_2741C862C();
        sub_2740CB460(v72, v73);
        v22 = v39;
        v23 = v10;
        v24 = v41;
        v25 = v40;
        v26 = v43;
        v27 = v42;
        v28 = 6;
        goto LABEL_15;
      }

      if (v71 == 7)
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_2741C856C();
        v72 = v65;
        v73 = v66;
        MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
        v17 = v60;
        MEMORY[0x2743E5FB0](v60, v10);
        MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
        v65 = v17;
        v66 = v10;
        v19 = v61;
        v18 = v62;
        v67 = v61;
        v68 = v62;
        v21 = v63;
        v20 = v64;
        v69 = v63;
        v70 = v64;
        v71 = 7;
        sub_2741C862C();
        sub_2740CB460(v72, v73);
        v22 = v17;
        v23 = v10;
        v24 = v19;
        v25 = v18;
        v26 = v21;
        v27 = v20;
        v28 = 7;
LABEL_15:
        sub_2740A66EC(v22, v23, v24, v25, v26, v27, v28);

        goto LABEL_18;
      }

LABEL_11:
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_2741C856C();
      v72 = v65;
      v73 = v66;
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D8E10);
      v30 = v60;
      v29 = v61;
      v65 = v60;
      v66 = v10;
      v32 = v62;
      v31 = v63;
      v67 = v61;
      v68 = v62;
      v33 = v64;
      v69 = v63;
      v70 = v64;
      v71 = v11;
      sub_2741C862C();
      sub_2740CB460(v72, v73);
      v22 = v30;
      v23 = v10;
      v24 = v29;
      v25 = v32;
      v26 = v31;
      v27 = v33;
      v28 = v11;
      goto LABEL_15;
    }

    if (v71 != 3)
    {
      if (v71 == 5)
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_2741C856C();
        v72 = v65;
        v73 = v66;
        MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
        v12 = v60;
        MEMORY[0x2743E5FB0](v60, v10);
        MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
        v65 = v12;
        v66 = v10;
        v14 = v61;
        v13 = v62;
        v67 = v61;
        v68 = v62;
        v16 = v63;
        v15 = v64;
        v69 = v63;
        v70 = v64;
        v71 = 5;
        sub_2741C862C();
        sub_2740CB460(v72, v73);

        [*(*(*a1 + 16) + 16) disassociateWithReason_];
        sub_2740A66EC(v12, v10, v14, v13, v16, v15, 5u);
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    v65 = 0;
    v66 = 0xE000000000000000;
    sub_2741C856C();
    v72 = v65;
    v73 = v66;
    MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
    v34 = v61;
    MEMORY[0x2743E5FB0](v10, v61);
    MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741D8EB0);
    v65 = v60;
    v66 = v10;
    v67 = v34;
    v68 = v62;
    v69 = v63;
    v70 = v64;
    v71 = 3;
    sub_2741C862C();
    sub_2740CB460(v72, v73);

    v35 = (a1 + v2[8]);
    v37 = *v35;
    v36 = v35[1];
    v65 = v37;
    v66 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
    sub_2741C7A3C();
    v38 = v72;
    if (*(v72 + 72))
    {
      *(v72 + 72) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v58 = v10;
      v59 = &v57;
      MEMORY[0x28223BE20](KeyPath);
      *(&v57 - 2) = v38;
      *(&v57 - 8) = 1;
      v65 = v38;
      sub_2740A693C(&qword_280937FD8, type metadata accessor for AssociationCredentials);
      sub_2741C69FC();

      v10 = v58;
    }

    v45 = sub_2741C80DC();
    (*(*(v45 - 8) + 56))(v8, 1, 1, v45);
    sub_2740A5968(a1, &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2741C80AC();
    v46 = sub_2741C809C();
    v47 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v48 = swift_allocObject();
    v49 = MEMORY[0x277D85700];
    *(v48 + 16) = v46;
    *(v48 + 24) = v49;
    sub_2740A59D0(&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47);
    sub_2740CE980(0, 0, v8, &unk_2741CB718, v48);
    sub_2740A66EC(v60, v10, v61, v62, v63, v64, 3u);
  }

LABEL_18:
  v50 = a1 + v2[9];
  v51 = *v50;
  v52 = *(v50 + 8);
  LOBYTE(v65) = v51;
  v66 = v52;
  LOBYTE(v72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v53 = a1 + v2[13];
  v54 = *v53;
  v55 = *(v53 + 8);
  LOBYTE(v53) = *(v53 + 16);
  LOBYTE(v65) = v54;
  v66 = v55;
  LOBYTE(v67) = v53;
  LOBYTE(v72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740A3DAC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for OtherNetworkSheet();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32[-1] - v10;
  if (a1)
  {
    v12 = v4[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A3C();
    if (v33[1])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
      if (swift_dynamicCast())
      {
        if (v37[0] != 1)
        {
          sub_2740A6040(v37, v38);
          sub_2740A609C(v38, v37);

          v34 = *&v37[2];
          v35 = *&v37[4];
          v36 = v37[6];
          if (v37[5])
          {
            sub_2740A609C(v38, v32);
            v13 = v32[0];
            sub_27409D420(v33, &qword_280937FB8, &unk_2741D0410);
            v14 = *(&v35 + 1);
            v15 = v36;
            __swift_mutable_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
            (*(v15 + 56))(v13, v14, v15);
          }

          sub_2740CB460(0xD000000000000035, 0x80000002741D8D00);
          v16 = sub_2741C80DC();
          (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
          sub_2740A5968(a2, &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_2741C80AC();
          v17 = sub_2741C809C();
          v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v19 = swift_allocObject();
          v20 = MEMORY[0x277D85700];
          *(v19 + 16) = v17;
          *(v19 + 24) = v20;
          sub_2740A59D0(v7, v19 + v18);
          sub_2740CE980(0, 0, v11, &unk_2741CB6C0, v19);

          sub_2740A61EC(v38);
          v21 = &qword_280937FB8;
          v22 = &unk_2741D0410;
          v23 = &v34;
          goto LABEL_11;
        }

LABEL_10:
        v21 = &unk_280937FA8;
        v22 = &unk_2741D03F0;
        v23 = v37;
LABEL_11:
        sub_27409D420(v23, v21, v22);
        goto LABEL_12;
      }
    }

    else
    {
      sub_27409D420(v32, &qword_280937E78, &qword_2741D81E0);
    }

    v37[0] = 1;
    memset(&v37[1], 0, 48);
    goto LABEL_10;
  }

LABEL_12:
  v24 = a2 + v4[10];
  v25 = *v24;
  v26 = *(v24 + 8);
  v38[0] = v25;
  v39 = v26;
  LOBYTE(v37[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v27 = a2 + v4[13];
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v27) = *(v27 + 16);
  v38[0] = v28;
  v39 = v29;
  v40 = v27;
  LOBYTE(v37[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_2740A41AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for OtherNetworkSheet();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = sub_2741C80AC();
  v4[11] = sub_2741C809C();
  v9 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740A42E4, v9, v8);
}

uint64_t sub_2740A42E4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  v9 = v8 + *(v7 + 48);
  v10 = *v9;
  v11 = *(v9 + 8);
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 96) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  v12 = sub_2741C80DC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_2740A5968(v8, v3);
  v13 = sub_2741C809C();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_2740A59D0(v3, v15 + v14);
  v17 = v15 + ((v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = 1;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  sub_2740CE980(0, 0, v4, &unk_2741CB6D8, v15);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2740A44A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, __int16 a7)
{
  *(v7 + 178) = a7;
  *(v7 + 182) = a5;
  *(v7 + 488) = a4;
  *(v7 + 496) = a6;
  v8 = sub_2741C6DBC();
  *(v7 + 504) = v8;
  v9 = *(v8 - 8);
  *(v7 + 512) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 520) = swift_task_alloc();
  *(v7 + 528) = sub_2741C80AC();
  *(v7 + 536) = sub_2741C809C();
  v12 = sub_2741C805C();
  *(v7 + 544) = v12;
  *(v7 + 552) = v11;

  return MEMORY[0x2822009F8](sub_2740A45A8, v12, v11);
}

uint64_t sub_2740A45A8()
{
  v1 = *(v0 + 178);
  v2 = *(v0 + 488);
  *(v0 + 560) = sub_27409E39C();
  v3 = type metadata accessor for OtherNetworkSheet();
  *(v0 + 568) = v3;
  v4 = (v2 + *(v3 + 32));
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 384) = v6;
  *(v0 + 392) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  *(v0 + 208) = type metadata accessor for AssociationCredentials();
  *(v0 + 216) = &off_288329FD0;
  v7 = swift_task_alloc();
  *(v0 + 576) = v7;
  *v7 = v0;
  v7[1] = sub_2740A46B8;
  v8 = *(v0 + 496);
  v9 = *(v0 + 182);

  return sub_27413A3D8(v9, v8, v1 & 0x101, v0 + 184);
}

uint64_t sub_2740A46B8()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *(*v1 + 560);
  v9 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v5 = *(v2 + 552);
    v6 = *(v2 + 544);
    v7 = sub_2740A49AC;
  }

  else
  {
    sub_27409D420(v2 + 184, &qword_280937FB8, &unk_2741D0410);
    v7 = sub_2740A4814;
    v6 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2740A4814()
{
  v1 = *(v0 + 528);
  *(v0 + 592) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2740A48A0, v3, v2);
}

uint64_t sub_2740A48A0()
{
  v1 = v0[74];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[61];

  sub_27409E194(v2);
  sub_2741C6DAC();
  (*(v4 + 8))(v2, v3);
  v6 = v0[69];
  v7 = v0[68];

  return MEMORY[0x2822009F8](sub_2740A4944, v7, v6);
}

uint64_t sub_2740A4944()
{
  v1 = v0[67];

  v2 = v0[65];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2740A49AC()
{
  v1 = v0;
  v2 = *(v0 + 584);
  v3 = *(v0 + 568);
  v4 = *(v1 + 536);
  v5 = *(v1 + 488);

  sub_27409D420(v1 + 184, &qword_280937FB8, &unk_2741D0410);
  sub_2741C856C();
  *(v1 + 400) = 0;
  *(v1 + 408) = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741D8D40);
  *(v1 + 464) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  sub_2740CB218(*(v1 + 400), *(v1 + 408), 0xD000000000000010, 0x80000002741D8D60);

  v6 = (v5 + *(v3 + 48));
  v7 = *v6;
  v8 = *(v6 + 1);
  *(v1 + 177) = 0;
  *(v1 + 416) = v7;
  *(v1 + 424) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  *(v1 + 472) = v2;
  v9 = v2;
  if (swift_dynamicCast())
  {
    v37 = *(v1 + 584);
    v10 = *(v1 + 568);
    v11 = *(v1 + 128);
    v12 = *(v1 + 136);
    v36 = *(v1 + 488);
    v13 = *(v1 + 144);
    v14 = *(v1 + 152);
    v15 = *(v1 + 160);
    v16 = *(v1 + 168);
    *(v1 + 328) = &type metadata for WiFiAssociationError;
    v17 = *(v1 + 176);
    *(v1 + 336) = sub_2740A6654();
    v18 = swift_allocObject();
    *(v1 + 304) = v18;
    *(v18 + 16) = v11;
    *(v18 + 24) = v12;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    *(v18 + 48) = v15;
    *(v18 + 56) = v16;
    *(v18 + 64) = v17;
    v19 = *(v10 + 44);
    sub_2740A6D94(v1 + 304, v1 + 344, &qword_280937E78, &qword_2741D81E0);
    sub_2740A6800(v11, v12, v13, v14, v15, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v1 + 304, &qword_280937E78, &qword_2741D81E0);
    v20 = (v36 + *(v10 + 36));
    v21 = *v20;
    v22 = *(v20 + 1);
    *(v1 + 181) = 1;
    *(v1 + 448) = v21;
    *(v1 + 456) = v22;

    sub_2741C7A4C();
    sub_2740A66EC(v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v23 = *(v1 + 584);
    *(v1 + 480) = v23;
    v24 = v23;
    v25 = swift_dynamicCast();
    v26 = *(v1 + 584);
    if (v25)
    {
      v27 = *(v1 + 568);
      v28 = *(v1 + 488);
      sub_2740A6040(v1 + 72, v1 + 16);
      *(v1 + 248) = &type metadata for WiFiEnterpriseAssociationError;
      *(v1 + 256) = sub_2740A65B8();
      v29 = swift_allocObject();
      *(v1 + 224) = v29;
      sub_2740A609C(v1 + 16, v29 + 16);
      v30 = *(v27 + 44);
      sub_2740A6D94(v1 + 224, v1 + 264, &qword_280937E78, &qword_2741D81E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
      sub_2741C7A4C();
      sub_27409D420(v1 + 224, &qword_280937E78, &qword_2741D81E0);
      v31 = v28 + *(v27 + 40);
      v32 = *(v31 + 8);
      *(v1 + 432) = *v31;
      *(v1 + 440) = v32;
      *(v1 + 180) = 1;

      sub_2741C7A4C();

      sub_2740A61EC(v1 + 16);
    }

    else
    {

      *(v1 + 72) = 1;
      *(v1 + 80) = 0u;
      *(v1 + 96) = 0u;
      *(v1 + 112) = 0u;
      sub_27409D420(v1 + 72, &qword_280937FA8, &unk_2741D03F0);
    }
  }

  v33 = *(v1 + 520);

  v34 = *(v1 + 8);

  return v34();
}

uint64_t sub_2740A4E38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2741C6DFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-1] - v8;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  *a1 = sub_274175B8C(v10, &v34);
  v11 = type metadata accessor for OtherNetworkSheet();
  v12 = v11[5];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  v13 = a1 + v11[6];
  type metadata accessor for AssociationModel();
  sub_2740A693C(&qword_280937E70, type metadata accessor for AssociationModel);
  *v13 = sub_2741C6CEC();
  v13[8] = v14 & 1;
  v15 = v11[7];
  sub_2741C6DEC();
  (*(v3 + 16))(v7, v9, v2);
  sub_2741C7A2C();
  (*(v3 + 8))(v9, v2);
  v16 = (a1 + v11[8]);
  v17 = type metadata accessor for AssociationCredentials();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v33[0] = sub_27410A05C();
  sub_2741C7A2C();
  v20 = *(&v34 + 1);
  *v16 = v34;
  v16[1] = v20;
  v21 = a1 + v11[9];
  LOBYTE(v33[0]) = 0;
  sub_2741C7A2C();
  v22 = *(&v34 + 1);
  *v21 = v34;
  *(v21 + 1) = v22;
  v23 = a1 + v11[10];
  LOBYTE(v33[0]) = 0;
  sub_2741C7A2C();
  v24 = *(&v34 + 1);
  *v23 = v34;
  *(v23 + 1) = v24;
  v25 = v11[11];
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_2740A6D94(&v34, v33, &qword_280937E78, &qword_2741D81E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
  sub_2741C7A2C();
  sub_27409D420(&v34, &qword_280937E78, &qword_2741D81E0);
  v26 = a1 + v11[12];
  LOBYTE(v33[0]) = 0;
  sub_2741C7A2C();
  v27 = *(&v34 + 1);
  *v26 = v34;
  *(v26 + 1) = v27;
  v28 = a1 + v11[13];
  sub_2740A5224();
  result = sub_2741C6CAC();
  v30 = *(&v34 + 1);
  v31 = v35;
  *v28 = v34;
  *(v28 + 1) = v30;
  v28[16] = v31;
  return result;
}

uint64_t type metadata accessor for OtherNetworkSheet()
{
  result = qword_280937E98;
  if (!qword_280937E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2740A5224()
{
  result = qword_280937E80;
  if (!qword_280937E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937E80);
  }

  return result;
}

uint64_t sub_2740A528C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2740A53DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2740A5518()
{
  type metadata accessor for WiFiAssociator();
  if (v0 <= 0x3F)
  {
    sub_2740A56F0(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2740A56F0(319, &qword_280937EB0, type metadata accessor for AssociationModel, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2740A56F0(319, &qword_280937EB8, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2740A56F0(319, &qword_280937EC0, type metadata accessor for AssociationCredentials, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2740A5754();
            if (v5 <= 0x3F)
            {
              sub_2740A57A4();
              if (v6 <= 0x3F)
              {
                sub_2740A5850();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2740A56F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2740A5754()
{
  if (!qword_280937EC8)
  {
    v0 = sub_2741C7A6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280937EC8);
    }
  }
}

void sub_2740A57A4()
{
  if (!qword_280937ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937E78, &qword_2741D81E0);
    v0 = sub_2741C7A6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280937ED0);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_2740A5850()
{
  if (!qword_280937ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937EE0, &qword_2741CFAD0);
    sub_2740A58C0();
    v0 = sub_2741C6CBC();
    if (!v1)
    {
      atomic_store(v0, &qword_280937ED8);
    }
  }
}

unint64_t sub_2740A58C0()
{
  result = qword_280937EE8;
  if (!qword_280937EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937EE0, &qword_2741CFAD0);
    sub_2740A5224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937EE8);
  }

  return result;
}

uint64_t sub_2740A5968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OtherNetworkSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740A59D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OtherNetworkSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740A5A64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OtherNetworkSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2740A5AD8(char a1)
{
  v3 = *(type metadata accessor for OtherNetworkSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2740A3DAC(a1, v4);
}

uint64_t sub_2740A5B48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F00, &qword_2741CB640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v5 = (v3 + 56) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

double sub_2740A5C38@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F00, &qword_2741CB640) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2741A883C(v1 + 16, *v4, v4[1], v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

unint64_t sub_2740A5CF8()
{
  result = qword_280937F48;
  if (!qword_280937F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937EF8, &qword_2741CB638);
    sub_2740A6D24(&qword_280937F50, &qword_280937F58, &unk_2741CB680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F48);
  }

  return result;
}

unint64_t sub_2740A5DB0()
{
  result = qword_280937F60;
  if (!qword_280937F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
    sub_2740A5E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F60);
  }

  return result;
}

unint64_t sub_2740A5E34()
{
  result = qword_280937F68;
  if (!qword_280937F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F70, &qword_2741CE730);
    sub_2740A6D24(&qword_280937F78, &qword_280937F80, &unk_2741CB690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F68);
  }

  return result;
}

unint64_t sub_2740A5EE4()
{
  result = qword_280937F88;
  if (!qword_280937F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F88);
  }

  return result;
}

unint64_t sub_2740A5F60()
{
  result = qword_280937F90;
  if (!qword_280937F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F30, &unk_2741D7CA0);
    sub_2740A5FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F90);
  }

  return result;
}

unint64_t sub_2740A5FEC()
{
  result = qword_280937F98;
  if (!qword_280937F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F98);
  }

  return result;
}

uint64_t sub_2740A60FC(uint64_t a1)
{
  v4 = *(type metadata accessor for OtherNetworkSheet() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_2740A41AC(a1, v6, v7, v1 + v5);
}

uint64_t sub_2740A6240()
{
  v1 = type metadata accessor for OtherNetworkSheet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2741C6DBC();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = *(v6 + v1[6]);

  v12 = v6 + v1[7];
  v13 = sub_2741C6DFC();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8) + 28));

  v15 = (v6 + v1[8]);
  v16 = *v15;

  v17 = v15[1];

  v18 = *(v6 + v1[9] + 8);

  v19 = *(v6 + v1[10] + 8);

  v20 = v6 + v1[11];
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + v1[11]));
  }

  v21 = *(v20 + 40);

  v22 = *(v6 + v1[12] + 8);

  v23 = *(v6 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 18, v2 | 7);
}

uint64_t sub_2740A6460(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OtherNetworkSheet() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (*(v9 + 17))
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2740A7434;

  return sub_2740A44A4(a1, v7, v8, v1 + v6, v10, v11, v13 | v12);
}

unint64_t sub_2740A65B8()
{
  result = qword_280937FC8;
  if (!qword_280937FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937FC8);
  }

  return result;
}

uint64_t sub_2740A660C()
{
  v1 = v0[2];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_2740A6654()
{
  result = qword_280937FD0;
  if (!qword_280937FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937FD0);
  }

  return result;
}

uint64_t sub_2740A66A8()
{
  sub_2740A66EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void sub_2740A66EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 5u)
  {
    goto LABEL_13;
  }

  if (a7 <= 8u)
  {
    if (a7 != 6)
    {
      if (a7 == 7)
      {
      }

      else if (a7 != 8)
      {
        return;
      }
    }

    goto LABEL_13;
  }

  if (a7 == 9 || a7 == 10)
  {
LABEL_13:

    return;
  }

  if (a7 == 11)
  {
  }
}

void sub_2740A6800(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 5u)
  {
    goto LABEL_13;
  }

  if (a7 <= 8u)
  {
    if (a7 != 6)
    {
      if (a7 == 7)
      {
      }

      else if (a7 != 8)
      {
        return;
      }
    }

    goto LABEL_13;
  }

  if (a7 == 9 || a7 == 10)
  {
LABEL_13:

    return;
  }

  if (a7 == 11)
  {

    v8 = a3;
  }
}

uint64_t sub_2740A693C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2740A6984(uint64_t a1)
{
  v4 = *(type metadata accessor for OtherNetworkSheet() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_2740A41AC(a1, v6, v7, v1 + v5);
}

unint64_t sub_2740A6A74()
{
  result = qword_280938000;
  if (!qword_280938000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938000);
  }

  return result;
}

uint64_t sub_2740A6AC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2740A6B38()
{
  result = qword_2809380A8;
  if (!qword_2809380A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809380A8);
  }

  return result;
}

unint64_t sub_2740A6BC4()
{
  result = qword_2809380E8;
  if (!qword_2809380E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809380E8);
  }

  return result;
}

uint64_t sub_2740A6C18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2740A6D24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2740A6D94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for OtherNetworkSheet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2741C6DBC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[6]);

  v11 = v5 + v1[7];
  v12 = sub_2741C6DFC();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8) + 28));

  v14 = (v5 + v1[8]);
  v15 = *v14;

  v16 = v14[1];

  v17 = *(v5 + v1[9] + 8);

  v18 = *(v5 + v1[10] + 8);

  v19 = v5 + v1[11];
  if (*(v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[11]));
  }

  v20 = *(v19 + 40);

  v21 = *(v5 + v1[12] + 8);

  v22 = *(v5 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740A7060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for OtherNetworkSheet();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2741C6DBC();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = *(v6 + v1[6]);

  v12 = v6 + v1[7];
  v13 = sub_2741C6DFC();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E90, qword_2741CB5A8) + 28));

  v15 = (v6 + v1[8]);
  v16 = *v15;

  v17 = v15[1];

  v18 = *(v6 + v1[9] + 8);

  v19 = *(v6 + v1[10] + 8);

  v20 = v6 + v1[11];
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + v1[11]));
  }

  v21 = *(v20 + 40);

  v22 = *(v6 + v1[12] + 8);

  v23 = *(v6 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740A72E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F00, &qword_2741CB640);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F30, &unk_2741D7CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937EF8, &qword_2741CB638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  sub_2740A5CF8();
  sub_2740A5DB0();
  sub_2740A5EE4();
  swift_getOpaqueTypeConformance2();
  sub_2740A5F60();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_2740A74AC()
{
  v0 = sub_2741C7E3C();
  v1 = sub_2741C7E3C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  if (AppBooleanValue)
  {
    return 1;
  }

  v4 = sub_2741C7E3C();
  v5 = sub_2741C7E3C();
  v6 = CFPreferencesGetAppBooleanValue(v4, v5, 0);

  return v6 != 0;
}

uint64_t getEnumTagSinglePayload for AskToJoinNetworkMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AskToJoinNetworkMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2740A7708()
{
  result = qword_2809381B8;
  if (!qword_2809381B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381C0, qword_2741CBA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809381B8);
  }

  return result;
}

uint64_t sub_2740A7780()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  return sub_2741C880C();
}

uint64_t sub_2740A77F4()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  return sub_2741C880C();
}

unint64_t sub_2740A784C()
{
  result = qword_2809381C8;
  if (!qword_2809381C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809381C8);
  }

  return result;
}

uint64_t sub_2740A78A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D0, &qword_2741CF940);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  v28 = sub_2741C717C();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2741C69BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2741C7E2C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_2741C7E0C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D8, &unk_2741D5420);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v32 = sub_2741C79BC();
  sub_2741C7DFC();
  sub_2741C7DEC();
  v30 = a1;
  sub_2741C7DCC();
  sub_2741C7DEC();
  sub_2741C7E1C();
  sub_2741C69AC();
  v30 = sub_2741C7E9C();
  v31 = v21;
  sub_2740A6A74();
  sub_2741C77BC();

  sub_2741C716C();
  v22 = v29;
  sub_2741C6E5C();
  (*(v7 + 8))(v10, v28);
  sub_27409D420(v20, &qword_2809381D8, &unk_2741D5420);
  v23 = sub_2741C75AC();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  v24 = sub_2741C75CC();
  sub_27409D420(v6, &qword_2809381D0, &qword_2741CF940);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E0, &qword_2741D42A0);
  v27 = (v22 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = v24;
  return result;
}

uint64_t sub_2740A7CDC@<X0>(uint64_t a1@<X8>)
{
  v20[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D0, &qword_2741CF940);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v20 - v3;
  v5 = sub_2741C717C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D8, &unk_2741D5420);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  v20[1] = sub_2741C79CC();
  sub_2741C714C();
  sub_2741C77AC();

  sub_2741C716C();
  v14 = v20[0];
  sub_2741C6E5C();
  (*(v6 + 8))(v9, v5);
  sub_27409D420(v13, &qword_2809381D8, &unk_2741D5420);
  v15 = sub_2741C75AC();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = sub_2741C75CC();
  sub_27409D420(v4, &qword_2809381D0, &qword_2741CF940);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E0, &qword_2741D42A0);
  v19 = (v14 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

uint64_t sub_2740A7FB4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v22 = sub_2741C717C();
  v20 = *(v22 - 8);
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E8, &qword_2741CBB20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381F0, &unk_2741D4330);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = sub_2741C79CC();
  v13 = sub_2741C797C();
  v14 = (v7 + *(v4 + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381F8, &unk_2741D4350) + 28);
  v16 = *MEMORY[0x277CE1048];
  v17 = sub_2741C79EC();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *v7 = v12;
  v7[1] = v13;
  sub_2741C714C();
  sub_2740A829C();
  sub_2741C77AC();

  sub_27409D420(v7, &qword_2809381E8, &qword_2741CBB20);
  sub_2741C716C();
  sub_2741C6E5C();
  (*(v20 + 8))(v3, v22);
  return sub_27409D420(v11, &qword_2809381F0, &unk_2741D4330);
}

unint64_t sub_2740A829C()
{
  result = qword_280938200;
  if (!qword_280938200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381E8, &qword_2741CBB20);
    sub_2740A8354();
    sub_2740A6D24(&qword_280938228, &qword_2809381F8, &unk_2741D4350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938200);
  }

  return result;
}

unint64_t sub_2740A8354()
{
  result = qword_280938208;
  if (!qword_280938208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938210, &unk_2741D4340);
    sub_2740A6D24(&qword_280938218, &qword_280938220, &unk_2741D6E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938208);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SdIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2740A85AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2740A85F4(uint64_t result, int a2, int a3)
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

id sub_2740A8670@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2741C70AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938230, &qword_2741CBCC0);
  v7 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938238, &qword_2741CBCC8);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v9);
  v60 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938240, &qword_2741CBCD0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v18 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v56 = v12;
    v57 = a1;
    v55 = v13;
    v54 = v9;
    v53 = v16;
    v48 = v2;
    v47 = v3;
    v46 = v6;
    if (wapiCapability)
    {
      if (qword_280937690 != -1)
      {
        swift_once();
      }

      v20 = qword_280946458;
      v21 = qword_280946460;
      v22 = qword_2809376A0;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = &qword_280946478;
    }

    else
    {
      if (qword_280937698 != -1)
      {
        swift_once();
      }

      v20 = qword_280946468;
      v21 = qword_280946470;
      v24 = qword_2809376A8;

      if (v24 != -1)
      {
        swift_once();
      }

      v23 = &qword_280946488;
    }

    v51 = v21;
    v25 = *v23;
    v50 = v23[1];
    v26 = v50;

    v27 = [objc_opt_self() currentDevice];
    [v27 userInterfaceIdiom];

    v52 = &v46;
    MEMORY[0x28223BE20](v28);
    *(&v46 - 8) = v20;
    *(&v46 - 7) = v21;
    *(&v46 - 6) = v25;
    *(&v46 - 5) = v26;
    *(&v46 - 4) = 0xD00000000000001BLL;
    *(&v46 - 3) = 0x80000002741D8F60;
    v29 = v62;
    sub_2740AB6B0(v62, wapiCapability, v58);
    sub_2740ABD30(v29, wapiCapability, v64);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938248, &qword_2741CBCD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938250, &qword_2741CBCE0);
    sub_2740AC714();
    v30 = sub_2740A6D24(&qword_280938270, &qword_280938248, &qword_2741CBCD8);
    v31 = sub_2740A6D24(&qword_280938278, &qword_280938250, &qword_2741CBCE0);
    v44 = v30;
    v45 = v31;
    v32 = v60;
    sub_2741C7B8C();

    v33 = v29[2];
    LOBYTE(v64[0]) = sub_27410B310() & 1;
    v34 = sub_2740AC7C4();
    v35 = MEMORY[0x277D839B0];
    v36 = MEMORY[0x277D839C8];
    v37 = v53;
    v38 = v54;
    sub_2741C78CC();
    (*(v61 + 8))(v32, v38);
    v66 = *(v29 + 8);
    v39 = *v29;
    v65 = v39;
    LOBYTE(v33) = v66;

    if ((v33 & 1) == 0)
    {
      sub_2741C82AC();
      v40 = sub_2741C74FC();
      sub_2741C6ACC();

      v41 = v46;
      sub_2741C709C();
      swift_getAtKeyPath();
      sub_27409D420(&v65, &qword_280938288, &qword_2741CBCF0);
      (*(v47 + 8))(v41, v48);
      v39 = v64[0];
    }

    swift_getKeyPath();
    v64[0] = v39;
    sub_2740AD108(&qword_280938290, type metadata accessor for UserSettingsModel);
    sub_2741C6A0C();

    swift_beginAccess();
    v42 = *(v39 + 81);

    v63 = v42;
    v64[0] = v38;
    v64[1] = v35;
    v64[2] = v34;
    v64[3] = v36;
    swift_getOpaqueTypeConformance2();
    v43 = v56;
    sub_2741C78CC();
    return (*(v55 + 8))(v37, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2740A8E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>, unsigned __int8 a8)
{
  v114 = a6;
  v110 = a4;
  v111 = a1;
  v112 = a2;
  v113 = a3;
  v123 = a7;
  v115 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382D0, &qword_2741CBDD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v124 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v127 = &v101 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382D8, &qword_2741CBDD8);
  v14 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v106 = (&v101 - v15);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382E0, &qword_2741CBDE0);
  v16 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v118 = &v101 - v17;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382E8, &qword_2741CBDE8);
  v18 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v105 = (&v101 - v19);
  v20 = sub_2741C70AC();
  v103 = *(v20 - 8);
  v104 = v20;
  v21 = *(v103 + 64);
  MEMORY[0x28223BE20](v20);
  v102 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382F0, &qword_2741CBDF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v122 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v126 = &v101 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382F8, &qword_2741CBDF8);
  v108 = *(v28 - 8);
  v109 = v28;
  v29 = *(v108 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v101 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938300, &qword_2741CBE00);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v107 = &v101 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938308, &qword_2741CBE08);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v121 = &v101 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v101 - v42;
  MEMORY[0x28223BE20](v41);
  v125 = &v101 - v44;
  *&v120 = a5;
  v46 = *(a5 + 48);
  v45 = *(a5 + 56);

  sub_2740ACAB0(v46);
  sub_2741C7D3C();
  v47 = v107;
  (*(v108 + 32))(v107, v31, v109);
  v48 = v47 + *(v33 + 44);
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = (v114 & 1) == 0;
  LOBYTE(v45) = sub_2741C750C();
  sub_2741C6C6C();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_2740A6C18(v47, v43, &qword_280938300, &qword_2741CBE00);
  v57 = &v43[*(v37 + 44)];
  *v57 = v45;
  *(v57 + 1) = v50;
  *(v57 + 2) = v52;
  *(v57 + 3) = v54;
  *(v57 + 4) = v56;
  v57[40] = 0;
  sub_2740A6C18(v43, v125, &qword_280938308, &qword_2741CBE08);
  if (v115)
  {
    if (qword_2809376B0 != -1)
    {
      swift_once();
    }

    v58 = &qword_280946498;
  }

  else
  {
    if (qword_2809376B8 != -1)
    {
      swift_once();
    }

    v58 = &qword_2809464A8;
  }

  v59 = v127;
  v60 = v120;
  v62 = *v58;
  v61 = v58[1];

  v159 = *(v60 + 8);
  v63 = *v60;
  v158 = *v60;
  v64 = v159;

  if ((v64 & 1) == 0)
  {
    sub_2741C82AC();
    v65 = sub_2741C74FC();
    sub_2741C6ACC();

    v66 = v102;
    sub_2741C709C();
    swift_getAtKeyPath();
    sub_27409D420(&v158, &qword_280938288, &qword_2741CBCF0);
    (*(v103 + 8))(v66, v104);
    v63 = v143;
  }

  swift_getKeyPath();
  *&v143 = v63;
  sub_2740AD108(&qword_280938290, type metadata accessor for UserSettingsModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v67 = *(v63 + 81);

  v68 = sub_2741C70EC();
  if (v67 == 1)
  {
    v69 = v105;
    *v105 = v68;
    *(v69 + 8) = 0;
    *(v69 + 16) = 1;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938368, &unk_2741CBE90);
    sub_2740A9F0C(v60, v62, v61, v69 + *(v70 + 44));

    v71 = &qword_2809382E8;
    v72 = &qword_2741CBDE8;
    sub_2740A6D94(v69, v118, &qword_2809382E8, &qword_2741CBDE8);
  }

  else
  {
    v69 = v106;
    *v106 = v68;
    *(v69 + 8) = 0;
    *(v69 + 16) = 1;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938310, &qword_2741CBE10);
    sub_2740AA904(v60, v62, v61, (v69 + *(v73 + 44)));

    v71 = &qword_2809382D8;
    v72 = &qword_2741CBDD8;
    sub_2740A6D94(v69, v118, &qword_2809382D8, &qword_2741CBDD8);
  }

  swift_storeEnumTagMultiPayload();
  sub_2740A6D24(&qword_280938318, &qword_2809382E8, &qword_2741CBDE8);
  sub_2740A6D24(&qword_280938320, &qword_2809382D8, &qword_2741CBDD8);
  sub_2741C72CC();
  sub_27409D420(v69, v71, v72);
  if (sub_2740A74AC())
  {
    *&v133 = 0;
    *(&v133 + 1) = 0xE000000000000000;
    sub_2741C7A2C();
    v120 = v143;
    v74 = v144;
    LOBYTE(v133) = 0;
    sub_2741C7A2C();
    v75 = v143;
    v76 = *(&v143 + 1);
    LOBYTE(v133) = 0;
    sub_2741C7A2C();
    v77 = v143;
    v78 = *(&v143 + 1);
    LOBYTE(v133) = 0;
    sub_2741C7A2C();
    v79 = v143;
    v80 = *(&v143 + 1);
    v143 = v120;
    *&v144 = v74;
    BYTE8(v144) = v75;
    *&v145 = v76;
    BYTE8(v145) = v77;
    *&v146 = v78;
    BYTE8(v146) = v79;
    *&v147 = v80;
    sub_2740ACB80();
    sub_2740ACBD4();
    sub_2741C6DDC();
    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938328, &qword_2741CBE18);
  (*(*(v82 - 8) + 56))(v59, v81, 1, v82);
  v83 = *(v60 + 16);
  if ((sub_27410B310() & 1) == 0)
  {
    goto LABEL_20;
  }

  v84 = *(v83 + 16);
  swift_getKeyPath();
  *&v133 = v84;
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v84 + 32, &v143, &qword_280938340, &qword_2741D1660);
  if (!*(&v143 + 1))
  {
    sub_27409D420(&v143, &qword_280938340, &qword_2741D1660);
LABEL_20:
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    goto LABEL_21;
  }

  v131[4] = v147;
  v131[5] = v148;
  v132 = v149;
  v131[0] = v143;
  v131[1] = v144;
  v131[2] = v145;
  v131[3] = v146;
  sub_2740ACAC8(v131, &v143);
  v133 = *(v60 + 24);
  LOBYTE(v134) = *(v60 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938348, &qword_2741CBE60);
  sub_2741C7B1C();
  v86 = v128;
  v85 = v129;
  v87 = v130;
  swift_getKeyPath();
  *&v133 = v84;
  sub_2741C6A0C();

  v88 = *(v84 + 16);
  v89 = *(v84 + 24);
  type metadata accessor for AssociationModel();
  sub_2740AD108(&qword_280937E70, type metadata accessor for AssociationModel);
  *&v133 = sub_2741C6CEC();
  BYTE8(v133) = v90 & 1;
  type metadata accessor for CurrentNetworkModel();
  sub_2740AD108(&qword_280938350, type metadata accessor for CurrentNetworkModel);
  *&v134 = sub_2741C6CEC();
  BYTE8(v134) = v91 & 1;
  sub_2740ACAC8(&v143, v135);
  *(&v136 + 1) = v86;
  *&v137 = v85;
  BYTE8(v137) = v87;
  *&v138 = v88;
  BYTE8(v138) = v89;
  v128 = 0;
  v129 = 0xE000000000000000;
  sub_2741C856C();

  v128 = 0xD000000000000015;
  v129 = 0x80000002741D9000;
  v92 = sub_27409DCD8();
  MEMORY[0x2743E5FB0](v92);

  sub_2740CB660(v128, v129, 0xD00000000000006FLL, 0x80000002741D9020, 0xD000000000000031, 0x80000002741D9090);

  sub_2740ACB2C(&v143);
  sub_2740ACB2C(v131);
  memset(&v139[8], 0, 32);
  *v139 = sub_2740AB544;
  v140 = 0;
  v141 = sub_2740AB5FC;
  v142 = 0;
  v151 = v136;
  v152 = v137;
  v147 = v135[2];
  v148 = v135[3];
  v149 = v135[4];
  v150 = v135[5];
  v143 = v133;
  v144 = v134;
  v145 = v135[0];
  v146 = v135[1];
  v153 = v138;
  v154 = *v139;
  v155 = *&v139[16];
  v156 = 0uLL;
  v157 = sub_2740AB5FC;
LABEL_21:
  v93 = v125;
  v94 = v121;
  sub_2740A6D94(v125, v121, &qword_280938308, &qword_2741CBE08);
  v95 = v126;
  v96 = v122;
  sub_2740A6D94(v126, v122, &qword_2809382F0, &qword_2741CBDF0);
  v97 = v124;
  sub_2740A6D94(v127, v124, &qword_2809382D0, &qword_2741CBDD0);
  sub_2740A6D94(&v143, &v133, &qword_280938330, &qword_2741CBE20);
  v98 = v123;
  sub_2740A6D94(v94, v123, &qword_280938308, &qword_2741CBE08);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938338, &qword_2741CBE28);
  sub_2740A6D94(v96, v98 + v99[12], &qword_2809382F0, &qword_2741CBDF0);
  sub_2740A6D94(v97, v98 + v99[16], &qword_2809382D0, &qword_2741CBDD0);
  sub_2740A6D94(&v133, v98 + v99[20], &qword_280938330, &qword_2741CBE20);
  sub_27409D420(&v143, &qword_280938330, &qword_2741CBE20);
  sub_27409D420(v127, &qword_2809382D0, &qword_2741CBDD0);
  sub_27409D420(v95, &qword_2809382F0, &qword_2741CBDF0);
  sub_27409D420(v93, &qword_280938308, &qword_2741CBE08);
  sub_27409D420(&v133, &qword_280938330, &qword_2741CBE20);
  sub_27409D420(v97, &qword_2809382D0, &qword_2741CBDD0);
  sub_27409D420(v96, &qword_2809382F0, &qword_2741CBDF0);
  return sub_27409D420(v94, &qword_280938308, &qword_2741CBE08);
}

void sub_2740A9E00()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_2741C684C();
  sub_274177910(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2740AD108(&qword_280937D68, type metadata accessor for OpenExternalURLOptionsKey);
  v2 = sub_2741C7D4C();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

uint64_t sub_2740A9F0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v77 = a2;
  v78 = a3;
  v84 = a4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
  v76 = *(v83 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v83);
  v75 = &v67 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938378, &qword_2741CBEA0);
  v7 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v82 = &v67 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938380, &qword_2741CBEA8);
  v9 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v11 = &v67 - v10;
  v72 = sub_2741C73EC();
  v70 = *(v72 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v69 = *(v15 - 8);
  v16 = *(v69 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938390, &qword_2741CBEB8);
  v73 = *(v19 - 8);
  v74 = v19;
  v20 = *(v73 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938398, &qword_2741CBEC0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v79 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v85 = &v67 - v29;
  v30 = *(a1[2] + 16);
  swift_getKeyPath();
  v86[0] = v30;
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  if (*(v30 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) == 2)
  {
    v86[0] = v77;
    v86[1] = v78;
    sub_2740A6A74();

    v31 = sub_2741C76AC();
    v33 = v32;
    LODWORD(v78) = v34;
    v36 = v35;
    sub_2741C6D3C();
    sub_2741C73DC();
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0);
    sub_2740AD108(&qword_2809383B8, MEMORY[0x277CDE330]);
    v37 = v15;
    v38 = v24;
    v68 = v24;
    v39 = v72;
    sub_2741C76DC();
    (*(v70 + 8))(v14, v39);
    (*(v69 + 8))(v18, v37);
    v40 = v73;
    v41 = *(v73 + 16);
    v42 = v71;
    v43 = v38;
    v44 = v74;
    v41(v71, v43, v74);
    *v11 = v31;
    *(v11 + 1) = v33;
    v45 = v78 & 1;
    v11[16] = v78 & 1;
    *(v11 + 3) = v36;
    *(v11 + 4) = 0;
    v11[40] = 1;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383C0, &unk_2741CBEF0);
    v41(&v11[*(v46 + 64)], v42, v44);
    sub_27409861C(v31, v33, v45);

    sub_27409861C(v31, v33, v45);
    v78 = *(v40 + 8);
    v47 = v78;

    v47(v42, v44);
    sub_2740A6AC8(v31, v33, v45);

    sub_2740A6D94(v11, v82, &qword_280938380, &qword_2741CBEA8);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_2809383A0, &qword_280938380, &qword_2741CBEA8);
    sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0);
    sub_2741C72CC();
    sub_2740A6AC8(v31, v33, v45);

    sub_27409D420(v11, &qword_280938380, &qword_2741CBEA8);
    v78(v68, v44);
  }

  else
  {
    v86[3] = v77;
    v86[4] = v78;
    v48 = *a1;
    v89 = *(a1 + 8);
    v49 = a1[4];
    v87 = a1[3];
    v88 = v48;
    v50 = a1[6];
    v51 = a1[7];
    sub_2741C80AC();

    sub_2740A6D94(&v88, v86, &qword_280938288, &qword_2741CBCF0);

    sub_2740ACC54(&v87, v86);

    sub_2740ACAB0(v50);
    v52 = sub_2741C809C();
    v53 = swift_allocObject();
    v54 = MEMORY[0x277D85700];
    *(v53 + 16) = v52;
    *(v53 + 24) = v54;
    v55 = *(a1 + 1);
    *(v53 + 32) = *a1;
    *(v53 + 48) = v55;
    v56 = *(a1 + 3);
    *(v53 + 64) = *(a1 + 2);
    *(v53 + 80) = v56;
    sub_2740A6D94(&v88, v86, &qword_280938288, &qword_2741CBCF0);

    sub_2740ACC54(&v87, v86);

    sub_2740ACAB0(v50);
    v57 = sub_2741C809C();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v54;
    v59 = *(a1 + 1);
    *(v58 + 32) = *a1;
    *(v58 + 48) = v59;
    v60 = *(a1 + 3);
    *(v58 + 64) = *(a1 + 2);
    *(v58 + 80) = v60;
    sub_2741C7B2C();
    sub_2740A6A74();
    v61 = v75;
    sub_2741C7ADC();
    v62 = v76;
    v63 = v83;
    (*(v76 + 16))(v82, v61, v83);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_2809383A0, &qword_280938380, &qword_2741CBEA8);
    sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0);
    sub_2741C72CC();
    (*(v62 + 8))(v61, v63);
  }

  v64 = v85;
  v65 = v79;
  sub_2740A6D94(v85, v79, &qword_280938398, &qword_2741CBEC0);
  sub_2740A6D94(v65, v84, &qword_280938398, &qword_2741CBEC0);
  sub_27409D420(v64, &qword_280938398, &qword_2741CBEC0);
  return sub_27409D420(v65, &qword_280938398, &qword_2741CBEC0);
}

uint64_t sub_2740AA904@<X0>(uint64_t *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v75 = a2;
  v76 = a3;
  v83 = a4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383C8, &qword_2741CBF30);
  v5 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v74 = &v68 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383D0, &qword_2741CBF38);
  v7 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v81 = &v68 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938380, &qword_2741CBEA8);
  v9 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v11 = &v68 - v10;
  v71 = sub_2741C73EC();
  v70 = *(v71 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v69 = *(v15 - 8);
  v16 = *(v69 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938390, &qword_2741CBEB8);
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v77 = &v68 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383D8, &qword_2741CBF40);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v78 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v84 = &v68 - v29;
  v30 = *(a1[2] + 16);
  swift_getKeyPath();
  v85[0] = v30;
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  if (*(v30 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) == 2)
  {
    v85[0] = v75;
    v85[1] = v76;
    sub_2740A6A74();

    v31 = sub_2741C76AC();
    v33 = v32;
    LODWORD(v75) = v34;
    v76 = v35;
    sub_2741C6D3C();
    sub_2741C73DC();
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0);
    sub_2740AD108(&qword_2809383B8, MEMORY[0x277CDE330]);
    v36 = v23;
    v37 = v77;
    v38 = v71;
    sub_2741C76DC();
    (*(v70 + 8))(v14, v38);
    (*(v69 + 8))(v18, v15);
    v40 = v72;
    v39 = v73;
    v41 = *(v72 + 16);
    v41(v36, v37, v73);
    *v11 = v31;
    *(v11 + 1) = v33;
    v42 = v75 & 1;
    v11[16] = v75 & 1;
    *(v11 + 3) = v76;
    *(v11 + 4) = 0;
    v11[40] = 1;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383C0, &unk_2741CBEF0);
    v41(&v11[*(v43 + 64)], v36, v39);
    sub_27409861C(v31, v33, v42);

    sub_27409861C(v31, v33, v42);
    v75 = *(v40 + 8);
    v44 = v75;

    v44(v36, v39);
    sub_2740A6AC8(v31, v33, v42);

    sub_2740A6D94(v11, v81, &qword_280938380, &qword_2741CBEA8);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_2809383A0, &qword_280938380, &qword_2741CBEA8);
    sub_2740ACF20();
    sub_2741C72CC();
    sub_2740A6AC8(v31, v33, v42);

    sub_27409D420(v11, &qword_280938380, &qword_2741CBEA8);
    v75(v77, v39);
  }

  else
  {
    v85[3] = v75;
    v85[4] = v76;
    v45 = *a1;
    v88 = *(a1 + 8);
    v46 = a1[4];
    v86 = a1[3];
    v87 = v45;
    v47 = a1[6];
    v48 = a1[7];
    sub_2741C80AC();

    sub_2740A6D94(&v87, v85, &qword_280938288, &qword_2741CBCF0);

    sub_2740ACC54(&v86, v85);

    sub_2740ACAB0(v47);
    v49 = sub_2741C809C();
    v50 = swift_allocObject();
    v51 = MEMORY[0x277D85700];
    *(v50 + 16) = v49;
    *(v50 + 24) = v51;
    v52 = *(a1 + 1);
    *(v50 + 32) = *a1;
    *(v50 + 48) = v52;
    v53 = *(a1 + 3);
    *(v50 + 64) = *(a1 + 2);
    *(v50 + 80) = v53;
    sub_2740A6D94(&v87, v85, &qword_280938288, &qword_2741CBCF0);

    sub_2740ACC54(&v86, v85);

    sub_2740ACAB0(v47);
    v54 = sub_2741C809C();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v51;
    v56 = *(a1 + 1);
    *(v55 + 32) = *a1;
    *(v55 + 48) = v56;
    v57 = *(a1 + 3);
    *(v55 + 64) = *(a1 + 2);
    *(v55 + 80) = v57;
    sub_2741C7B2C();
    sub_2740A6A74();
    v58 = v74;
    sub_2741C7ADC();
    KeyPath = swift_getKeyPath();
    v60 = swift_allocObject();
    *(v60 + 16) = 1;
    v61 = v81;
    v62 = (v58 + *(v82 + 36));
    *v62 = KeyPath;
    v62[1] = sub_2740ACF08;
    v62[2] = v60;
    sub_2740A6D94(v58, v61, &qword_2809383C8, &qword_2741CBF30);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_2809383A0, &qword_280938380, &qword_2741CBEA8);
    sub_2740ACF20();
    sub_2741C72CC();
    sub_27409D420(v58, &qword_2809383C8, &qword_2741CBF30);
  }

  v63 = v84;
  v64 = v78;
  sub_2740A6D94(v84, v78, &qword_2809383D8, &qword_2741CBF40);
  v65 = v83;
  *v83 = 0;
  *(v65 + 8) = 1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809383F8, &qword_2741CBF80);
  sub_2740A6D94(v64, v65 + *(v66 + 48), &qword_2809383D8, &qword_2741CBF40);
  sub_27409D420(v63, &qword_2809383D8, &qword_2741CBF40);
  return sub_27409D420(v64, &qword_2809383D8, &qword_2741CBF40);
}

uint64_t sub_2740AB2D8@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(*(a1 + 16) + 16);
  swift_getKeyPath();
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn);
  return result;
}

uint64_t sub_2740AB38C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v19 - v11;
  v13 = *a1;
  v14 = *(a4 + 16);
  swift_getKeyPath();
  v19[1] = v14;
  sub_2740AD108(&qword_280938350, type metadata accessor for CurrentNetworkModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v15 = *(*__swift_project_boxed_opaque_existential_1((v14 + 24), *(v14 + 48)) + 16);
  v16 = sub_2741C80DC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v15;
  *(v17 + 40) = v13;
  swift_unknownObjectRetain();
  sub_2740CE980(0, 0, v12, a6, v17);
}

uint64_t sub_2740AB544()
{
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938298, &qword_2741CBD20);
  v0 = sub_2741C7EBC();
  v2 = v1;

  MEMORY[0x2743E5FB0](0xD00000000000002DLL, 0x80000002741D9110);
  sub_2740CB460(v0, v2);
}

uint64_t sub_2740AB5FC()
{
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938298, &qword_2741CBD20);
  v0 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v0);

  MEMORY[0x2743E5FB0](0xD000000000000031, 0x80000002741D90D0);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_2740AB6B0@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938268, &qword_2741CBCE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_2741C70AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 8);
  v16 = *a1;
  v34 = v16;
  v17 = v35;

  if ((v17 & 1) == 0)
  {
    sub_2741C82AC();
    v18 = sub_2741C74FC();
    v32 = v11;
    v19 = v10;
    v20 = v7;
    v21 = v6;
    v22 = a3;
    v23 = a2;
    v24 = v18;
    sub_2741C6ACC();

    a2 = v23;
    a3 = v22;
    v6 = v21;
    v7 = v20;
    v10 = v19;
    sub_2741C709C();
    swift_getAtKeyPath();
    sub_27409D420(&v34, &qword_280938288, &qword_2741CBCF0);
    (*(v12 + 8))(v15, v32);
    v16 = v33;
  }

  swift_getKeyPath();
  v33 = v16;
  sub_2740AD108(&qword_280938290, type metadata accessor for UserSettingsModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v25 = *(v16 + 72);

  if (v25)
  {

    if (a2)
    {
      if (qword_280937710 != -1)
      {
        swift_once();
      }

      v26 = &qword_280946558;
    }

    else
    {
      if (qword_280937718 != -1)
      {
        swift_once();
      }

      v26 = &qword_280946568;
    }

    v28 = *v26;
    v29 = v26[1];

    *v10 = sub_2741C70EC();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382A8, &qword_2741CBD78);
    sub_2740ABA78(v28, v29, &v10[*(v30 + 44)]);

    sub_2740A6C18(v10, a3, &qword_280938268, &qword_2741CBCE8);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  return (*(v7 + 56))(a3, v27, 1, v6);
}

uint64_t sub_2740ABA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382B0, &qword_2741CBD80);
  v6 = *(v5 - 8);
  v39 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  v42 = a1;
  v43 = a2;
  sub_2740A6A74();

  v12 = sub_2741C76AC();
  v14 = v13;
  v16 = v15;
  sub_2741C75DC();
  v17 = sub_2741C767C();
  v19 = v18;
  v21 = v20;

  sub_2740A6AC8(v12, v14, v16 & 1);

  sub_2741C79AC();
  v22 = sub_2741C763C();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_2740A6AC8(v17, v19, v21 & 1);

  v29 = &v11[*(v39 + 44)];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382B8, &qword_2741CBD88) + 28);
  v31 = sub_2741C766C();
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  *v29 = swift_getKeyPath();
  *v11 = v22;
  *(v11 + 1) = v24;
  v11[16] = v26 & 1;
  *(v11 + 3) = v28;
  v32 = v40;
  sub_2740A6D94(v11, v40, &qword_2809382B0, &qword_2741CBD80);
  v33 = v41;
  *v41 = 0;
  *(v33 + 8) = 1;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382C0, &qword_2741CBDC0);
  sub_2740A6D94(v32, v34 + *(v35 + 48), &qword_2809382B0, &qword_2741CBD80);
  v36 = v34 + *(v35 + 64);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_27409D420(v11, &qword_2809382B0, &qword_2741CBD80);
  return sub_27409D420(v32, &qword_2809382B0, &qword_2741CBD80);
}

uint64_t sub_2740ABD30@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a1 + 16) + 16);
  swift_getKeyPath();
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  if (*(v5 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState))
  {
    if (a2)
    {
      if (qword_280937700 != -1)
      {
        swift_once();
      }

      v10 = &qword_280946538;
    }

    else
    {
      if (qword_280937708 != -1)
      {
        swift_once();
      }

      v10 = &qword_280946548;
    }

    v22 = *v10;
    v23 = v10[1];
    sub_2740A6A74();

    v6 = sub_2741C76AC();
    v7 = v11;
    v9 = v12;
    v8 = v13 & 1;
    sub_27409861C(v6, v11, v13 & 1);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v5 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn))
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    sub_2741475F8();
    sub_2740A6A74();

    v14 = sub_2741C76AC();
    v15 = v18;
    v17 = v19;
    v16 = v20 & 1;
    sub_27409861C(v14, v18, v20 & 1);
  }

  sub_2740ACA00(v6, v7, v8, v9);
  sub_2740ACA00(v14, v15, v16, v17);
  sub_2740ACA44(v6, v7, v8, v9);
  sub_2740ACA44(v14, v15, v16, v17);
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = v14;
  a3[5] = v15;
  a3[6] = v16;
  a3[7] = v17;
  sub_2740ACA44(v14, v15, v16, v17);
  return sub_2740ACA44(v6, v7, v8, v9);
}

uint64_t sub_2740AC008(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938298, &qword_2741CBD20);
  v4 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0xD000000000000039, 0x80000002741D8FC0);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v6);

  MEMORY[0x2743E5FB0](544175136, 0xE400000000000000);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v7, v8);

  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_2740AC14C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938298, &qword_2741CBD20);
  v4 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0xD000000000000031, 0x80000002741D8F80);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v6);

  MEMORY[0x2743E5FB0](544175136, 0xE400000000000000);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v7, v8);

  sub_2740CB460(0, 0xE000000000000000);
}

id sub_2740AC290@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_2740A8670(a1);
}

uint64_t sub_2740AC2CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740AD108(&qword_280938350, type metadata accessor for CurrentNetworkModel);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_27409D4E4(v3 + 24, a2);
}

uint64_t sub_2740AC38C(uint64_t a1, uint64_t *a2)
{
  sub_27409D4E4(a1, v17);
  v3 = *a2;
  v4 = v18;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8);
  v10 = *v8;
  v16[3] = type metadata accessor for WiFiStateProvider();
  v16[4] = &off_28832A538;
  v16[0] = v10;
  swift_getKeyPath();
  v13 = v3;
  v14 = v16;
  v15 = v3;
  sub_2740AD108(&qword_280938350, type metadata accessor for CurrentNetworkModel);
  sub_2741C69FC();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_2740AC528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState);
  return result;
}

uint64_t sub_2740AC600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740AD108(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState);
  return result;
}

uint64_t sub_2740AC6D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return sub_2740A8E28(*(v1 + 16), *(v1 + 32), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1, *(v1 + 73));
}

unint64_t sub_2740AC714()
{
  result = qword_280938258;
  if (!qword_280938258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938230, &qword_2741CBCC0);
    sub_2740A6D24(&qword_280938260, &qword_280938268, &qword_2741CBCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938258);
  }

  return result;
}

unint64_t sub_2740AC7C4()
{
  result = qword_280938280;
  if (!qword_280938280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938238, &qword_2741CBCC8);
    sub_2740AC714();
    sub_2740A6D24(&qword_280938270, &qword_280938248, &qword_2741CBCD8);
    sub_2740A6D24(&qword_280938278, &qword_280938250, &qword_2741CBCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938280);
  }

  return result;
}

uint64_t sub_2740AC8B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2741C707C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2740AC924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809382C8, &qword_2741CBDC8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2740A6D94(a1, &v6 - v4, &qword_2809382C8, &qword_2741CBDC8);
  return sub_2741C706C();
}

uint64_t sub_2740ACA00(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_27409861C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2740ACA44(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2740A6AC8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2740ACAB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2740ACB80()
{
  result = qword_280938358;
  if (!qword_280938358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938358);
  }

  return result;
}

unint64_t sub_2740ACBD4()
{
  result = qword_280938360;
  if (!qword_280938360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938360);
  }

  return result;
}

uint64_t sub_2740ACCB4@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2740AB2D8(v1 + 32, a1);
}

uint64_t sub_2740ACD1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27416DFF8(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  if (v0[10])
  {
    v6 = v0[11];
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2740ACEA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2741C707C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2740ACF20()
{
  result = qword_2809383E0;
  if (!qword_2809383E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809383C8, &qword_2741CBF30);
    sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0);
    sub_2740A6D24(&qword_2809383E8, &qword_2809383F0, &qword_2741CE8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809383E0);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2740AD044(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_27416DFF8(a1, v4, v5, v6, v7);
}

uint64_t sub_2740AD108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2740AD150()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938240, &qword_2741CBCD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938238, &qword_2741CBCC8);
  sub_2740AC7C4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2740AD218()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938408, &qword_2741CC078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CBF90;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v2 = 0xE600000000000000;
  v3 = 0x68636E75616CLL;
  v4 = 0xEE00737365726464;
  v5 = 0x4143414D77656976;
  if (*(v0 + 16) != 2)
  {
    v5 = 0x7774654E6E696F6ALL;
    v4 = 0xEB000000006B726FLL;
  }

  if (*(v0 + 16))
  {
    v3 = 0x7373696D736964;
    v2 = 0xE700000000000000;
  }

  if (*(v0 + 16) <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*(v0 + 16) <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x2743E5FB0](v6, v7);

  v8 = sub_2741C7E3C();

  *(inited + 48) = v8;
  *(inited + 56) = 0x65756C6176;
  *(inited + 64) = 0xE500000000000000;
  sub_2740AD50C();
  *(inited + 72) = sub_2741C833C();
  *(inited + 80) = 0x737365636F7270;
  *(inited + 88) = 0xE700000000000000;
  if (qword_280937380 != -1)
  {
    swift_once();
  }

  v9 = *(qword_280945E28 + 16);
  v10 = *(qword_280945E28 + 24);

  v11 = sub_2741C7E3C();

  *(inited + 96) = v11;
  v12 = sub_274177A38(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938418, &unk_2741CC080);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_2740AD448()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2740AD4B8()
{
  result = qword_280938400;
  if (!qword_280938400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938400);
  }

  return result;
}

unint64_t sub_2740AD50C()
{
  result = qword_280938410;
  if (!qword_280938410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280938410);
  }

  return result;
}

uint64_t sub_2740AD558()
{
  v1 = SCNetworkSetCopyAll(*(v0 + 48));
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SCNetworkSet(0);
      sub_2741C7FDC();
    }
  }

  sub_2740CB218(0xD00000000000001ELL, 0x80000002741D9980, 0x536B726F7774656ELL, 0xEA00000000007465);
  return 0;
}

uint64_t sub_2740AD7C8()
{
  v1 = SCNetworkSetCopyAll(*(v0 + 48));
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SCNetworkSet(0);
      sub_2741C7FDC();
    }
  }

  sub_2740CB218(0xD00000000000001ELL, 0x80000002741D9980, 0x53746C7561666564, 0xEA00000000007465);
  return 0;
}

uint64_t sub_2740ADA30()
{
  v0 = sub_2740AD558();
  if (v0)
  {
    v1 = v0;
    v2 = SCNetworkSetCopyServices(v0);
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for SCNetworkService(0);
        sub_2741C7FDC();
      }
    }

    sub_2740CB218(0xD00000000000001ALL, 0x80000002741D94F0, 0x536B726F7774656ELL, 0xEE00656369767265);
  }

  else
  {
    sub_2740CB218(0xD00000000000001FLL, 0x80000002741D9960, 0x536B726F7774656ELL, 0xEE00656369767265);
  }

  return 0;
}

void *sub_2740ADCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  v5 = sub_2741C7E3C();
  v6 = SCPreferencesCreateWithAuthorization(0, v5, 0, 0);

  if (v6)
  {
    v4[6] = v6;
  }

  else
  {
    sub_2740CB218(0xD00000000000001BLL, 0x80000002741D9200, 0xD000000000000022, 0x80000002741D9220);
    v7 = v4[3];

    v8 = v4[5];

    type metadata accessor for SystemIPConfiguration();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t sub_2740ADDD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2740B0ADC(*MEMORY[0x277CE1688]);
  if (!v4)
  {
    result = sub_2740CB218(0xD000000000000026, 0x80000002741D98F0, 0xD000000000000013, 0x80000002741D9920);
LABEL_59:
    v75 = 0;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    goto LABEL_60;
  }

  v5 = v4;
  v82 = v2;
  v6 = *MEMORY[0x277CE1730];
  v7 = sub_2741C7E7C();
  if (*(v5 + 16))
  {
    v9 = sub_2741251AC(v7, v8);
    v11 = v10;

    if (v11)
    {
      sub_27409D308(*(v5 + 56) + 32 * v9, v101);
      goto LABEL_8;
    }
  }

  else
  {
  }

  memset(v101, 0, 32);
LABEL_8:
  v13 = *MEMORY[0x277CE1800];
  v14 = sub_2741C7E7C();
  v16 = v15;
  v17 = *MEMORY[0x277CE1810];
  v18 = sub_2741C7E7C();
  v20 = v19;
  v21 = *MEMORY[0x277CE1828];
  v22 = sub_2741C7E7C();
  v24 = v23;
  v25 = *MEMORY[0x277CE1808];
  v26 = sub_2741C7E7C();
  v28 = v27;
  sub_2740B2A50(v101, v90);
  if (!v93)
  {
    sub_2740B29E8(v90);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  *&v80 = v26;
  v29 = v14 == v84 && v16 == *(&v84 + 1);
  *(&v80 + 1) = *(&v84 + 1);
  if (v29)
  {

LABEL_20:

LABEL_21:

    v32 = 0;
    v31 = 0;
    goto LABEL_22;
  }

  v30 = sub_2741C86DC();

  if ((v30 & 1) != 0 || __PAIR128__(v20, v18) == v84)
  {
    goto LABEL_20;
  }

  v77 = sub_2741C86DC();

  if (v77)
  {
    goto LABEL_21;
  }

  if (__PAIR128__(v24, v22) == v84)
  {

LABEL_67:

    v32 = 0;
    v31 = 1;
    goto LABEL_22;
  }

  v78 = sub_2741C86DC();

  if (v78)
  {

    goto LABEL_67;
  }

  if (__PAIR128__(v28, v84) != v80)
  {
    v79 = sub_2741C86DC();

    if (v79)
    {
      goto LABEL_71;
    }

LABEL_18:
    v31 = 3;
    v32 = 1;
    goto LABEL_22;
  }

LABEL_71:
  v32 = 0;
  v31 = 2;
LABEL_22:
  v33 = *MEMORY[0x277CE1728];
  v34 = sub_2741C7E7C();
  if (!*(v5 + 16))
  {

    goto LABEL_28;
  }

  v36 = sub_2741251AC(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_28:
    v39 = 0;
    goto LABEL_29;
  }

  sub_27409D308(*(v5 + 56) + 32 * v36, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  if (swift_dynamicCast())
  {
    v39 = v84;
  }

  else
  {
    v39 = 0;
  }

LABEL_29:
  v40 = *MEMORY[0x277CE1750];
  v41 = sub_2741C7E7C();
  if (!*(v5 + 16))
  {

    goto LABEL_35;
  }

  v43 = sub_2741251AC(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_35:
    v46 = 0;
    goto LABEL_36;
  }

  sub_27409D308(*(v5 + 56) + 32 * v43, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  if (swift_dynamicCast())
  {
    v46 = v84;
  }

  else
  {
    v46 = 0;
  }

LABEL_36:
  v47 = *MEMORY[0x277CE1748];
  v48 = sub_2741C7E7C();
  if (!*(v5 + 16))
  {

    goto LABEL_45;
  }

  v50 = sub_2741251AC(v48, v49);
  v52 = v51;

  if ((v52 & 1) == 0)
  {
LABEL_45:
    v54 = 0;
    v55 = 0;
    goto LABEL_46;
  }

  sub_27409D308(*(v5 + 56) + 32 * v50, v90);
  v53 = swift_dynamicCast();
  if (v53)
  {
    v54 = v84;
  }

  else
  {
    v54 = 0;
  }

  if (v53)
  {
    v55 = *(&v84 + 1);
  }

  else
  {
    v55 = 0;
  }

LABEL_46:
  v56 = *MEMORY[0x277CE1738];
  v57 = sub_2741C7E7C();
  if (*(v5 + 16))
  {
    v81 = v54;
    v59 = v39;
    v60 = v32;
    v61 = v31;
    v62 = sub_2741251AC(v57, v58);
    v64 = v63;

    if (v64)
    {
      sub_27409D308(*(v5 + 56) + 32 * v62, v90);

      v65 = swift_dynamicCast();
      if (v65)
      {
        v66 = v84;
      }

      else
      {
        v66 = 0;
      }

      if (v65)
      {
        v67 = *(&v84 + 1);
      }

      else
      {
        v67 = 0;
      }
    }

    else
    {

      v66 = 0;
      v67 = 0;
    }

    v31 = v61;
    v76 = v60;
    v39 = v59;
    v54 = v81;
    if (v76)
    {
      goto LABEL_58;
    }
  }

  else
  {

    v66 = 0;
    v67 = 0;
    if (v32)
    {
LABEL_58:

      sub_2740CB218(0xD00000000000001DLL, 0x80000002741D9940, 0xD000000000000013, 0x80000002741D9920);
      result = sub_2740B29E8(v101);
      goto LABEL_59;
    }
  }

  sub_2740B29E8(v101);
  v69 = *(v82 + 32);
  v68 = *(v82 + 40);
  LOBYTE(v84) = v31;
  *(&v84 + 1) = v39;
  *&v85 = v46;
  *(&v85 + 1) = v54;
  *&v86 = v55;
  *(&v86 + 1) = v66;
  v87 = v67;
  *&v88 = 0;
  *(&v88 + 1) = v69;
  v89 = v68;
  v90[0] = v31;
  v91 = v39;
  v92 = v46;
  v93 = v54;
  v94 = v55;
  v95 = v66;
  v96 = v67;
  v97 = 0;
  v98 = 0;
  v99 = v69;
  v100 = v68;

  sub_2740B2AC0(&v84, v83);
  result = sub_2740B2B1C(v90);
  v70 = v84;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  v74 = v88;
  v75 = v89;
LABEL_60:
  *a1 = v70;
  *(a1 + 16) = v71;
  *(a1 + 32) = v72;
  *(a1 + 48) = v73;
  *(a1 + 64) = v74;
  *(a1 + 80) = v75;
  return result;
}

uint64_t sub_2740AE4C0@<X0>(_BOOL8 *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2740B0ADC(*MEMORY[0x277CE1678]);
  if (!v4)
  {
    result = sub_2740CB218(0xD000000000000029, 0x80000002741D9840, 0xD000000000000012, 0x80000002741D9870);
    v13 = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_25;
  }

  v5 = *MEMORY[0x277CE1710];
  v6 = sub_2741C7E7C();
  if (!*(v4 + 16))
  {

    goto LABEL_9;
  }

  v8 = sub_2741251AC(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  sub_27409D308(*(v4 + 56) + 32 * v8, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  if (swift_dynamicCast())
  {
    v11 = v33;
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  v16 = *MEMORY[0x277CE1708];
  v17 = sub_2741C7E7C();
  if (*(v4 + 16))
  {
    v19 = sub_2741251AC(v17, v18);
    v21 = v20;

    if (v21)
    {
      sub_27409D308(*(v4 + 56) + 32 * v19, &v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
      if (swift_dynamicCast())
      {
        v14 = v33;
      }

      else
      {
        v14 = 0;
      }

      if (!v11)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = 0;
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {

    v14 = 0;
    if (!v11)
    {
      goto LABEL_24;
    }
  }

  if (!v14)
  {
LABEL_24:

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD00000000000003ALL, 0x80000002741D9890);
    v23 = sub_2741C7D7C();
    v25 = v24;

    MEMORY[0x2743E5FB0](v23, v25);

    sub_2740CB218(v26, v27, 0xD000000000000012, 0x80000002741D9870);

    v13 = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v4 = 0;
    goto LABEL_25;
  }

  v22 = *(v11 + 16) || *(v14 + 16);
  v15 = *(v2 + 32);
  v4 = *(v2 + 40);
  v26 = 0;
  v27 = 0xE000000000000000;

  sub_2741C856C();
  v33 = v26;
  v34 = v27;
  MEMORY[0x2743E5FB0](0xD000000000000016, 0x80000002741D98D0);
  LOBYTE(v26) = v22;
  v27 = v11;
  v28 = v14;
  v29 = 0;
  v30 = 0;
  v31 = v15;
  v32 = v4;
  sub_2741C862C();
  sub_2740CB460(v33, v34);

  v13 = v22;
LABEL_25:
  *a1 = v13;
  a1[1] = v11;
  a1[2] = v14;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = v15;
  a1[6] = v4;
  return result;
}

uint64_t sub_2740AE850()
{
  v1 = v0;
  v2 = sub_2740B0ADC(*MEMORY[0x277CE16B8]);
  if (!v2)
  {
    sub_2740CB218(0xD00000000000002DLL, 0x80000002741D97B0, 0x74655379786F7270, 0xEF292873676E6974);
    return 0;
  }

  v3 = v2;
  sub_2741C856C();

  v88[0] = 0xD000000000000015;
  v88[1] = 0x80000002741D97E0;
  v4 = sub_2741C7D7C();
  MEMORY[0x2743E5FB0](v4);

  sub_2740CB218(0xD000000000000015, 0x80000002741D97E0, 0x74655379786F7270, 0xEF292873676E6974);

  if (*(v3 + 16) && (v5 = sub_2741251AC(0xD000000000000016, 0x80000002741D96E0), (v6 & 1) != 0) && (sub_27409D308(*(v3 + 56) + 32 * v5, v88), swift_dynamicCast()))
  {
    v81 = v86;
  }

  else
  {
    v81 = 0;
  }

  v7 = *MEMORY[0x277CE17C8];
  v8 = sub_2741C7E7C();
  if (!*(v3 + 16))
  {

    goto LABEL_17;
  }

  v10 = sub_2741251AC(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_17:
    v80 = 0;
    v85 = 0;
    goto LABEL_18;
  }

  sub_27409D308(*(v3 + 56) + 32 * v10, v88);
  v13 = swift_dynamicCast();
  v14 = v86;
  if (!v13)
  {
    v14 = 0;
  }

  v80 = v14;
  if (v13)
  {
    v15 = v87;
  }

  else
  {
    v15 = 0;
  }

  v85 = v15;
LABEL_18:
  v17 = *MEMORY[0x277CE17C0];
  v18 = sub_2741C7E7C();
  if (*(v3 + 16))
  {
    v20 = sub_2741251AC(v18, v19);
    v22 = v21;

    if (v22)
    {
      sub_27409D308(*(v3 + 56) + 32 * v20, v88);
      v23 = swift_dynamicCast();
      v24 = v86;
      if (!v23)
      {
        v24 = 0;
      }

      v79 = v24;
      if (v23)
      {
        v25 = v87;
      }

      else
      {
        v25 = 0;
      }

      v84 = v25;
      if (!*(v3 + 16))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v79 = 0;
      v84 = 0;
      if (!*(v3 + 16))
      {
LABEL_37:
        v78 = 0;
        v83 = 0;
        goto LABEL_38;
      }
    }
  }

  else
  {

    v79 = 0;
    v84 = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_37;
    }
  }

  v26 = sub_2741251AC(0xD000000000000011, 0x80000002741D9700);
  if ((v27 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_27409D308(*(v3 + 56) + 32 * v26, v88);
  v28 = swift_dynamicCast();
  v29 = v86;
  if (!v28)
  {
    v29 = 0;
  }

  v78 = v29;
  if (v28)
  {
    v30 = v87;
  }

  else
  {
    v30 = 0;
  }

  v83 = v30;
LABEL_38:
  v31 = *MEMORY[0x277CE17F0];
  v32 = sub_2741C7E7C();
  if (!*(v3 + 16))
  {

    goto LABEL_47;
  }

  v34 = sub_2741251AC(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_47:
    v77 = 0;
    v82 = 0;
    goto LABEL_48;
  }

  sub_27409D308(*(v3 + 56) + 32 * v34, v88);
  v37 = swift_dynamicCast();
  v38 = v86;
  if (!v37)
  {
    v38 = 0;
  }

  v77 = v38;
  if (v37)
  {
    v39 = v87;
  }

  else
  {
    v39 = 0;
  }

  v82 = v39;
LABEL_48:
  v40 = *MEMORY[0x277CE17E8];
  v41 = sub_2741C7E7C();
  if (*(v3 + 16))
  {
    v43 = sub_2741251AC(v41, v42);
    v45 = v44;

    if (v45)
    {
      sub_27409D308(*(v3 + 56) + 32 * v43, v88);
      if (swift_dynamicCast())
      {
        v76 = v86;
        goto LABEL_54;
      }
    }
  }

  else
  {
  }

  v76 = 0;
LABEL_54:
  v46 = *MEMORY[0x277CE17F8];
  v47 = sub_2741C7E7C();
  if (!*(v3 + 16))
  {
    v52 = v1;

    goto LABEL_60;
  }

  v49 = sub_2741251AC(v47, v48);
  v51 = v50;

  if ((v51 & 1) == 0 || (sub_27409D308(*(v3 + 56) + 32 * v49, v88), !swift_dynamicCast()))
  {
    v52 = v1;
LABEL_60:
    v53 = 0;
    goto LABEL_61;
  }

  v52 = v1;
  v53 = v86;
LABEL_61:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938438, &qword_2741CC110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CC090;
  v55 = *MEMORY[0x277CE17A8];
  *(inited + 32) = sub_2741C7E7C();
  *(inited + 40) = v56;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  *(inited + 48) = &unk_288325E28;
  v57 = *MEMORY[0x277CE17B0];
  *(inited + 80) = sub_2741C7E7C();
  *(inited + 88) = v58;
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 1;
  v59 = sub_274177B3C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938440, &qword_2741CC118);
  swift_arrayDestroy();
  sub_274111E54(v3);

  v60 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v61 = sub_2741C7D4C();

  v62 = [v60 initWithDictionary_];

  sub_274111E54(v59);

  v63 = sub_2741C7D4C();

  v64 = [v62 isEqualToDictionary_];

  if (v64)
  {

    sub_2740CB218(0xD00000000000003ALL, 0x80000002741D9800, 0x74655379786F7270, 0xEF292873676E6974);
    v65 = *(v52 + 32);
    v66 = *(v52 + 40);
    type metadata accessor for ProxySettings();
    swift_allocObject();
    v16 = sub_274113B80(v65, v66);
  }

  else
  {
    if ((v76 & v53) != 0)
    {
      v67 = 2;
    }

    else
    {
      v67 = 1;
    }

    if (v84)
    {
      v68 = v79;
    }

    else
    {
      v68 = 0;
    }

    if (v84)
    {
      v69 = v84;
    }

    else
    {
      v69 = 0xE000000000000000;
    }

    v70 = sub_2740AF028(v68, v69);
    v72 = v71;
    v74 = *(v52 + 32);
    v73 = *(v52 + 40);
    type metadata accessor for ProxySettings();
    v16 = swift_allocObject();
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    *(v16 + 112) = 0;
    *(v16 + 120) = 0;
    *(v16 + 16) = v67;
    *(v16 + 24) = v80;
    *(v16 + 32) = v85;
    *(v16 + 40) = v78;
    *(v16 + 48) = v83;
    *(v16 + 72) = v70;
    *(v16 + 80) = v72 & 1;
    *(v16 + 88) = v77;
    *(v16 + 96) = v82;
    *(v16 + 81) = v81;
    *(v16 + 104) = v53;
    *(v16 + 105) = v76;
    *(v16 + 128) = v74;
    *(v16 + 136) = v73;
    *(v16 + 17) = 1;
  }

  return v16;
}

uint64_t sub_2740AF028(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
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
        result = sub_2741C858C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_2740B1168(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2740AF328(void *a1, __CFArray *a2, uint64_t a3)
{
  v8 = sub_2740B01A4(a2, a3);
  if (!v4)
  {
    v9 = v8;
    v44 = 0;
    v10 = sub_2740ADA30();
    if (v10)
    {
      v11 = *MEMORY[0x277CE1688];
      v43 = v10;
      v12 = SCNetworkServiceCopyProtocol(v10, v11);
      if (v12)
      {
        v13 = v12;
        sub_2740B20B0(a1);
        v14 = sub_2741C7D4C();
        v15 = SCNetworkProtocolSetConfiguration(v13, v14);

        v45 = 0;
        v46 = 0xE000000000000000;
        sub_2741C856C();
        if (v15)
        {
          MEMORY[0x2743E5FB0](0x7270206465766153, 0xED0000203A6F746FLL);
          v47 = v13;
          type metadata accessor for SCNetworkProtocol(0);
          sub_2741C862C();
          MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
          v16 = sub_2741C7D7C();
          v18 = v17;

          MEMORY[0x2743E5FB0](v16, v18);

          sub_2740CB460(0, 0xE000000000000000);
        }

        else
        {
          MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741D9250);
          v47 = v13;
          type metadata accessor for SCNetworkProtocol(0);
          sub_2741C862C();
          MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
          v20 = sub_2741C7D7C();
          v22 = v21;

          MEMORY[0x2743E5FB0](v20, v22);

          sub_2740CB218(0, 0xE000000000000000, 0xD000000000000015, 0x80000002741D9790);
        }
      }

      if (qword_280937B98 != -1)
      {
        swift_once();
      }

      v23 = qword_280946F10;
      swift_beginAccess();
      v24 = v23[9];
      if (!v24)
      {
        goto LABEL_21;
      }

      v42 = v9;
      v25 = v23[10];
      v26 = __swift_project_boxed_opaque_existential_1(v23 + 6, v24);
      v41[1] = v41;
      v27 = *(v24 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x28223BE20](v26);
      v30 = v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30);
      v31 = (*(v25 + 32))(v24, v25);
      v33 = v32;
      (*(v27 + 8))(v30, v24);
      if (v31 == a2 && v33 == a3)
      {

        v9 = v42;
      }

      else
      {
        v35 = sub_2741C86DC();

        v9 = v42;
        if ((v35 & 1) == 0)
        {
LABEL_21:
          v3 = sub_2740B048C(v9);

          return v3;
        }
      }

      v36 = sub_2740AD558();
      if (!v36 || (v37 = v36, v38 = SCNetworkSetSetCurrent(v36), v37, !v38))
      {
        sub_2740CB218(0xD00000000000001DLL, 0x80000002741D96C0, 0xD000000000000015, 0x80000002741D9790);
        sub_2740B2004();
        v3 = swift_allocError();
        *v39 = 1;
        swift_willThrow();

        return v3;
      }

      goto LABEL_21;
    }

    sub_2740CB218(0xD00000000000001ELL, 0x80000002741D9750, 0xD000000000000015, 0x80000002741D9790);
    sub_2740B2004();
    v3 = swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2740AF8A0(uint64_t a1, __CFArray *a2, uint64_t a3)
{
  v8 = sub_2740B01A4(a2, a3);
  if (!v4)
  {
    v9 = v8;
    v44 = 0;
    v10 = sub_2740ADA30();
    if (v10)
    {
      v11 = *MEMORY[0x277CE1678];
      v43 = v10;
      v12 = SCNetworkServiceCopyProtocol(v10, v11);
      if (v12)
      {
        v13 = v12;
        sub_2740B2450(a1);
        v14 = sub_2741C7D4C();
        v15 = SCNetworkProtocolSetConfiguration(v13, v14);

        v45 = 0;
        v46 = 0xE000000000000000;
        sub_2741C856C();
        if (v15)
        {
          MEMORY[0x2743E5FB0](0x7270206465766153, 0xED0000203A6F746FLL);
          v47 = v13;
          type metadata accessor for SCNetworkProtocol(0);
          sub_2741C862C();
          MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
          v16 = sub_2741C7D7C();
          v18 = v17;

          MEMORY[0x2743E5FB0](v16, v18);

          sub_2740CB460(0, 0xE000000000000000);
        }

        else
        {
          MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741D9250);
          v47 = v13;
          type metadata accessor for SCNetworkProtocol(0);
          sub_2741C862C();
          MEMORY[0x2743E5FB0](0x6964206874697720, 0xEC000000203A7463);
          v20 = sub_2741C7D7C();
          v22 = v21;

          MEMORY[0x2743E5FB0](v20, v22);

          sub_2740CB218(0, 0xE000000000000000, 0xD000000000000014, 0x80000002741D9770);
        }
      }

      if (qword_280937B98 != -1)
      {
        swift_once();
      }

      v23 = qword_280946F10;
      swift_beginAccess();
      v24 = v23[9];
      if (!v24)
      {
        goto LABEL_21;
      }

      v42 = v9;
      v25 = v23[10];
      v26 = __swift_project_boxed_opaque_existential_1(v23 + 6, v24);
      v41[1] = v41;
      v27 = *(v24 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x28223BE20](v26);
      v30 = v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30);
      v31 = (*(v25 + 32))(v24, v25);
      v33 = v32;
      (*(v27 + 8))(v30, v24);
      if (v31 == a2 && v33 == a3)
      {

        v9 = v42;
      }

      else
      {
        v35 = sub_2741C86DC();

        v9 = v42;
        if ((v35 & 1) == 0)
        {
LABEL_21:
          v3 = sub_2740B048C(v9);

          return v3;
        }
      }

      v36 = sub_2740AD558();
      if (!v36 || (v37 = v36, v38 = SCNetworkSetSetCurrent(v36), v37, !v38))
      {
        sub_2740CB218(0xD00000000000001DLL, 0x80000002741D96C0, 0xD000000000000014, 0x80000002741D9770);
        sub_2740B2004();
        v3 = swift_allocError();
        *v39 = 1;
        swift_willThrow();

        return v3;
      }

      goto LABEL_21;
    }

    sub_2740CB218(0xD00000000000001ELL, 0x80000002741D9750, 0xD000000000000014, 0x80000002741D9770);
    sub_2740B2004();
    v3 = swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  return v3;
}