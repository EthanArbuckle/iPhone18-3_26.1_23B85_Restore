id WFUserInterfaceFromViewController(void *a1)
{
  v1 = a1;
  v2 = [v1 viewIfLoaded];
  v3 = WFUserInterfaceFromView(v2, v1);

  return v3;
}

WFConcreteUIKitUserInterface *WFUserInterfaceFromView(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = [[WFConcreteUIKitUserInterface alloc] initWithView:v4 viewController:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double WFConvertEdgeInsetsToRTLIfNeeded(double a1)
{
  v2 = [MEMORY[0x277CFC248] sharedContext];
  [v2 shouldReverseLayoutDirection];

  return a1;
}

void sub_274AD73E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_274AD7448()
{
  sub_274AD81E0(319, &qword_2815A3118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_274AD73E0(319, &qword_2815A3108, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_274BF2994();
      if (v2 <= 0x3F)
      {
        sub_274BF51A4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for TopHitCollectionView.Layout();
          if (v4 <= 0x3F)
          {
            sub_274AD8430(319, &qword_2815A2F30);
            if (v5 <= 0x3F)
            {
              sub_274AD73E0(319, &qword_2815A3910, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_274AD8470();
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

uint64_t sub_274AD766C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t onMainThreadInlineOrSync(closure:)(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_274B0F2B4();
  v5 = sub_274BF5504();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_274B32730;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_274B4296C;
  v8[3] = &block_descriptor_3;
  v7 = _Block_copy(v8);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return sub_274BF4F04();
}

uint64_t OUTLINED_FUNCTION_0_4(unint64_t *a1, uint64_t *a2)
{

  return sub_274AFA930(a1, a2);
}

id OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return [v2 (v1 + 411)];
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return sub_274BF4544();
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return sub_274BF2DF4();
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_20()
{
  *(v2 - 224) = *(v2 - 228);
  *(v2 - 223) = v1;
  *(v2 - 216) = v0;
  return v2 - 224;
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_0_29(uint64_t a1)
{

  return sub_274BC19D4(a1);
}

uint64_t OUTLINED_FUNCTION_0_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return sub_274B066B4(&a13, &a9, v13);
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return sub_274BF5C24();
}

id OUTLINED_FUNCTION_46_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_15_3()
{
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{

  return sub_274B4E058(&STACK[0x310], &a58);
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return sub_274BF4774();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_2()
{
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  *v4 = a1;
  v4[1] = a2;
  return sub_274AD81C4(v5);
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_12(unint64_t *a1)
{

  return sub_274B8451C(a1, v1, v2, sub_274B08ED8);
}

uint64_t OUTLINED_FUNCTION_5_18()
{

  return sub_274BF2D64();
}

double OUTLINED_FUNCTION_5_21()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

void OUTLINED_FUNCTION_5_24()
{

  sub_274B2CC88();
}

uint64_t sub_274AD81C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_274AD81E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_67();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_274AD8240()
{
  sub_274AD81E0(319, &qword_2815A3110, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_274AD81E0(319, &qword_2815A3118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_274AD73E0(319, &qword_2815A2F60, MEMORY[0x277CE0AE0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_274AD8430(319, &unk_2815A2E80);
        if (v3 <= 0x3F)
        {
          sub_274AD81E0(319, &qword_2815A2F40, MEMORY[0x277D7BE40], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_274BF2934();
            if (v5 <= 0x3F)
            {
              sub_274AD8470();
              if (v6 <= 0x3F)
              {
                sub_274AD84B8();
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

uint64_t sub_274AD8430(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_274AD8470()
{
  result = qword_2815A2E78;
  if (!qword_2815A2E78)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2815A2E78);
  }

  return result;
}

void sub_274AD84B8()
{
  if (!qword_2815A2E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B570);
    v0 = sub_274BF5724();
    if (!v1)
    {
      atomic_store(v0, &qword_2815A2E70);
    }
  }
}

unint64_t sub_274AD8550()
{
  result = qword_2815A37C8[0];
  if (!qword_2815A37C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815A37C8);
  }

  return result;
}

void sub_274AD85E8()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_64();
  sub_274BF57D4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_8();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_274BF4964();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  sub_274BF4B14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550);
  OUTLINED_FUNCTION_32_1();
  sub_274AD766C(v0, &qword_28098B550);
  OUTLINED_FUNCTION_52();
  sub_274BF31C4();
  sub_274BF3A74();
  OUTLINED_FUNCTION_75_0();
  sub_274BF46B4();
  sub_274BF33D4();
  sub_274BF33D4();
  OUTLINED_FUNCTION_59();
  sub_274BF33D4();
  OUTLINED_FUNCTION_52();
  sub_274BF33D4();
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B538);
  OUTLINED_FUNCTION_64();
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B540);
  OUTLINED_FUNCTION_64();
  sub_274BF33D4();
  OUTLINED_FUNCTION_31_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  sub_274AD766C(v1, &qword_28098B550);
  OUTLINED_FUNCTION_29_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_34_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_81();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_0();
  sub_274AD766C(v2, &qword_28098B538);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_0();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_20_0();
  sub_274AD766C(v3, &qword_28098B540);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_0();
  swift_getOpaqueTypeMetadata2();
  sub_274BF51A4();
  OUTLINED_FUNCTION_27_0();
  swift_getWitnessTable();
  sub_274BF4964();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_1();
  sub_274BF2EA4();
  OUTLINED_FUNCTION_75_0();
  sub_274BF33D4();
  OUTLINED_FUNCTION_64();
  sub_274BF33D4();
  OUTLINED_FUNCTION_52();
  sub_274BF33D4();
  OUTLINED_FUNCTION_59();
  sub_274BF33D4();
  OUTLINED_FUNCTION_65();
  sub_274BF33D4();
  OUTLINED_FUNCTION_24_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_57();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_1();
  sub_274BF3434();
  OUTLINED_FUNCTION_19_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_4_2();
  sub_274BF3A74();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return sub_274BF5A74();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_274BF2BC4();
}

uint64_t sub_274AD8D30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_2();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_274AD8D8C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B798);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7A0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  sub_274AD90D8();
  v17 = *(a1 + *(type metadata accessor for TopHitSymbolIconView(0) + 28));
  v18 = [v17 color];
  v19 = sub_274BF4594();
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7A8) + 36)] = v19;
  [v17 blendMode];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7B0);
  sub_274BF55E4();
  sub_274BF4A94();
  sub_274BF30D4();
  v20 = &v16[*(v11 + 44)];
  v21 = v34;
  *v20 = v33;
  *(v20 + 1) = v21;
  *(v20 + 2) = v35;
  v22 = *a1;
  v23 = [v22 symbolName];
  sub_274BF4F44();

  sub_274BF3F24();
  sub_274BF28E4();
  v24 = [v22 symbolColor];
  v25 = sub_274BF4594();
  KeyPath = swift_getKeyPath();
  v27 = &v9[*(v4 + 44)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_274B32834(v16, v14, &qword_28098B7A0);
  sub_274B32834(v9, v7, &qword_28098B798);
  v28 = v32;
  sub_274B32834(v14, v32, &qword_28098B7A0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7B8);
  sub_274B32834(v7, v28 + *(v29 + 48), &qword_28098B798);
  sub_274AFA708(v9, &qword_28098B798);
  sub_274AFA708(v16, &qword_28098B7A0);
  sub_274AFA708(v7, &qword_28098B798);
  return sub_274AFA708(v14, &qword_28098B7A0);
}

uint64_t sub_274AD90D8()
{
  v1 = sub_274BF3484();
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7C0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  if (*(v0 + *(type metadata accessor for TopHitSymbolIconView(0) + 24)) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_274AD938C();
    sub_274AD9EF0(&qword_2815A3028, MEMORY[0x277CDFC08]);
    return sub_274BF3A64();
  }

  else
  {
    sub_274AE0A70();
    v9 = v8;
    v10 = *(v1 + 20);
    v11 = *MEMORY[0x277CE0118];
    v12 = sub_274BF38C4();
    (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
    *v3 = v9;
    *(v3 + 1) = v9;
    v13 = MEMORY[0x277CDFC08];
    sub_274AE0874(v3, v6, MEMORY[0x277CDFC08]);
    swift_storeEnumTagMultiPayload();
    sub_274AD938C();
    sub_274AD9EF0(&qword_2815A3028, MEMORY[0x277CDFC08]);
    sub_274BF3A64();
    return sub_274AE2EFC(v3, v13);
  }
}

uint64_t sub_274AD9340@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_274BF4A94();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B790);
  return sub_274AD8D8C(v1, a1 + *(v4 + 44));
}

unint64_t sub_274AD938C()
{
  result = qword_2815A2F58;
  if (!qword_2815A2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2F58);
  }

  return result;
}

uint64_t sub_274AD93E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TopHitView.body.getter()
{
  OUTLINED_FUNCTION_58();
  v2 = v1;
  v102 = v3;
  v101 = sub_274BF3CC4();
  OUTLINED_FUNCTION_1();
  v100 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_54(v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518);
  v9 = *(v2 + 16);
  v10 = sub_274AD9D10();
  v11 = *(v2 + 24);
  v96 = v9;
  v98 = v10;
  v95 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = v8;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_2();
  v13 = OpaqueTypeMetadata2;
  sub_274BF47F4();
  v14 = OUTLINED_FUNCTION_35_0();
  v118 = v14;
  v119 = sub_274ADA8B4();
  OUTLINED_FUNCTION_22();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_76();
  v88 = v13;
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B528);
  OUTLINED_FUNCTION_16_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_76();
  v91 = sub_274BF4B54();
  v90 = OUTLINED_FUNCTION_40();
  v15 = sub_274BF48A4();
  OUTLINED_FUNCTION_1();
  v94 = v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_54(v18);
  v84 = v15;
  v19 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v93 = v20;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_54(v22);
  v81 = OUTLINED_FUNCTION_39_0();
  v114 = v81;
  v115 = MEMORY[0x277CDF678];
  v97 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v116 = v19;
  v117 = WitnessTable;
  v86 = MEMORY[0x277CDEAE8];
  v85 = swift_getOpaqueTypeMetadata2();
  v89 = *(v85 - 8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_54(v24);
  sub_274BF3DB4();
  v25 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v92 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15_2();
  v80 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_54(&v75 - v31);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_71();
  v87 = *(v13 - 8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_54(v34);
  v78 = v2;
  v35 = v0;
  v36 = *(v0 + *(v2 + 44));
  v37 = *(v0 + *(v2 + 48));
  v38 = *(v2 + 60);
  v39 = type metadata accessor for TopHitIconView(0);
  v40 = v39[7];
  sub_274BF2934();
  OUTLINED_FUNCTION_2();
  (*(v41 + 16))(v14 + v40, v0 + v38);
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  *(v14 + v39[5]) = v36;
  *(v14 + v39[6]) = v37;
  v42 = v36;
  v43 = sub_274BF4A94();
  v45 = v44;
  v46 = (v14 + *(v76 + 36));
  v47 = v96;
  v48 = v95;
  sub_274ADC9C0(v46, 20.0, 56.0);
  v49 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B520) + 36));
  *v49 = v43;
  v49[1] = v45;
  v107 = v47;
  v108 = v48;
  v109 = v35;
  v50 = v77;
  sub_274BF41F4();
  sub_274AFA708(v14, &qword_28098B518);
  v103 = v47;
  v104 = v48;
  v105 = v35;
  v106 = v50;
  sub_274BF38F4();
  sub_274BF4894();
  sub_274BF4A94();
  v51 = v83;
  sub_274BF43E4();
  OUTLINED_FUNCTION_63();
  v52 = OUTLINED_FUNCTION_24();
  v53(v52);
  v54 = v99;
  sub_274BF3CB4();
  v55 = v79;
  v56 = WitnessTable;
  sub_274BF4354();
  OUTLINED_FUNCTION_63();
  v57(v54, v101);
  OUTLINED_FUNCTION_63();
  v58(v51, v19);
  v59 = (v35 + *(v78 + 56));
  v61 = *v59;
  v60 = v59[1];
  v116 = v61;
  v117 = v60;
  v112 = v19;
  v113 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_274ADDF6C();
  v63 = v80;
  v64 = v85;
  sub_274BF42F4();
  OUTLINED_FUNCTION_63();
  v65(v55, v64);
  OUTLINED_FUNCTION_33_0();
  v68 = sub_274AD9EF0(v66, v67);
  v110 = OpaqueTypeConformance2;
  v111 = v68;
  v69 = swift_getWitnessTable();
  sub_274ADB48C(v63, v25, v69);
  v70 = *(v92 + 8);
  v70(v63, v25);
  v71 = OUTLINED_FUNCTION_81();
  sub_274ADB48C(v71, v72, v69);
  v73 = OUTLINED_FUNCTION_81();
  (v70)(v73);
  OUTLINED_FUNCTION_63();
  v74(v50, v88);
  OUTLINED_FUNCTION_55();
}

unint64_t sub_274AD9D10()
{
  result = qword_2815A30D8;
  if (!qword_2815A30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518);
    sub_274AD9EF0(&qword_2815A3868, type metadata accessor for TopHitIconView);
    sub_274AD766C(&qword_2815A3010, &qword_28098B520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_35_1(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1, uint64_t a2, unint64_t *a3)
{

  return sub_274B33594(0, 254, a3);
}

void OUTLINED_FUNCTION_27_3(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  *(v1 - 376) = v2 + 16;
  *(v1 - 384) = v2 + 8;
}

uint64_t OUTLINED_FUNCTION_96()
{

  return swift_allocObject();
}

uint64_t sub_274AD9EF0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_2_3@<Q0>(int a1@<W8>)
{
  result = *(v2 - 128);
  v4 = *(v2 - 112);
  *(v2 - 176) = result;
  *(v2 - 160) = v4;
  *(v2 - 144) = v1 | a1;
  return result;
}

__n128 OUTLINED_FUNCTION_2_6()
{
  result = *(v1 - 128);
  v0[8] = result;
  v0[9].n128_u64[0] = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_274BF4EB4();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_274BF2DF4();
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return sub_274BF48B4();
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return sub_274BF2D64();
}

uint64_t OUTLINED_FUNCTION_2_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_29()
{
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return sub_274BF5C24();
}

uint64_t OUTLINED_FUNCTION_2_34(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_274BF2D54();
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_9(unint64_t *a1, uint64_t *a2)
{

  return sub_274AFA930(a1, a2);
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_3_15()
{

  return [v0 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_3_21(uint64_t a1, uint64_t *a2)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2);
}

uint64_t OUTLINED_FUNCTION_3_23()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_3_29()
{

  sub_274BCDB68(1701667182, 0xE400000000000000, (v0 - 112));
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_274BF3A64();
}

id OUTLINED_FUNCTION_14_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_14_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{

  sub_274BC934C(&a13, v14, &a14);
}

uint64_t OUTLINED_FUNCTION_14_11(unint64_t *a1)
{

  return sub_274AFA930(a1, v1);
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_274BF4774();
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_274BA5CC0(a1, va, v2);
}

unint64_t OUTLINED_FUNCTION_11_14()
{

  return sub_274BD7E6C();
}

id OUTLINED_FUNCTION_18_4(uint64_t a1)
{

  return [v2 (v1 + 411)];
}

unint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_274B08760();
}

unint64_t sub_274ADA8B4()
{
  result = qword_2815A34B8[0];
  if (!qword_2815A34B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815A34B8);
  }

  return result;
}

id OUTLINED_FUNCTION_64_0()
{

  return [v0 (v1 + 821)];
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_274AD8D30(v0, v0 + 40, v1);
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_274BF5A74();
}

uint64_t OUTLINED_FUNCTION_31()
{
}

id OUTLINED_FUNCTION_31_2()
{

  return [v0 (v1 + 46)];
}

id OUTLINED_FUNCTION_26_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_26_5()
{

  return [v0 (v1 + 1016)];
}

void OUTLINED_FUNCTION_30()
{

  type metadata accessor for WFGlyphCharacter(0);
}

uint64_t OUTLINED_FUNCTION_30_1()
{
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return sub_274BF5724();
}

size_t OUTLINED_FUNCTION_30_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{

  return sub_274BBC18C(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_28_1()
{
}

id OUTLINED_FUNCTION_23_3()
{
  v3 = *v1;

  return [v3 (v0 + 1784)];
}

id OUTLINED_FUNCTION_22_2(uint64_t a1)
{

  return [v1 (v2 + 3218)];
}

__n128 TopHitCollectionView.init(style:items:layout:backgroundGradient:containerWidth:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v25 = *a3;
  v15 = a3[1].n128_u64[0];
  v16 = a3[1].n128_u8[8];
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for TopHitCollectionView();
  v18 = a9 + v17[13];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v17[14];
  sub_274BF2994();
  OUTLINED_FUNCTION_2();
  (*(v20 + 32))(a9 + v19, a1);
  *(a9 + v17[15]) = a2;
  v21 = (a9 + v17[16]);
  result = v25;
  *v21 = v25;
  v21[1].n128_u64[0] = v15;
  v21[1].n128_u8[8] = v16;
  *(a9 + v17[17]) = a4;
  v23 = a9 + v17[18];
  *v23 = a5;
  v23[8] = a6 & 1;
  v24 = (a9 + v17[19]);
  *v24 = a7;
  v24[1] = a8;
  return result;
}

uint64_t sub_274ADAEE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274ADAF38();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274ADAF38()
{
  sub_274ADAF74();
  sub_274BF37A4();
  return v1;
}

unint64_t sub_274ADAF74()
{
  result = qword_2815A34B0;
  if (!qword_2815A34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A34B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_67_0()
{
}

uint64_t sub_274ADAFF4(uint64_t a1, uint64_t a2, double a3)
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  result = sub_274ADC698(a2, a3);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  v3 = result * a1;
  if ((result * a1) >> 64 == (result * a1) >> 63)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_274ADB050(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = sub_274BF4A14();
      v5 = sub_274BF5174();
      *(v5 + 16) = v2;
      v6 = *(v4 - 8);
      v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v8 = *(v6 + 16);
      while (1)
      {
        --v2;
        v8(v7, v3, v4);
        if (!v2)
        {
          break;
        }

        v7 += *(v6 + 72);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_274BF4A14();
    OUTLINED_FUNCTION_0_2();
    (*(v9 + 8))(v3);
    return v5;
  }

  return result;
}

void sub_274ADB178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_58();
  v24 = v23;
  v72 = v25;
  v73 = v26;
  v70 = v27;
  v71 = v28;
  v30 = v29;
  v61[1] = v29;
  v77 = v31;
  v74 = a22;
  v75 = a21;
  v76 = a23;
  v33 = v32;
  v62 = v34;
  v69 = type metadata accessor for TopHitCollectionView();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13_0();
  v64 = v38;
  v67 = sub_274BF57D4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_8();
  WitnessTable = swift_getWitnessTable();
  v39 = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = sub_274BF4964();
  OUTLINED_FUNCTION_1();
  v68 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15_2();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v63 = v61 - v47;
  v78 = v30;
  v79 = v70;
  v80 = v71;
  v81 = v72;
  v48 = v64;
  v49 = v69;
  (*(v36 + 16))(v64, v73, v69);
  v50 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v51 = swift_allocObject();
  *(v51 + 2) = v24;
  *(v51 + 3) = v39;
  v52 = v75;
  *(v51 + 4) = v62;
  *(v51 + 5) = v52;
  (*(v36 + 32))(&v51[v50], v48, v49);
  swift_unknownObjectRetain();
  sub_274BF4954();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_53_0();
  sub_274ADB48C(v53, v54, v55);
  v56 = *(v68 + 8);
  v56(v45, v40);
  OUTLINED_FUNCTION_53_0();
  sub_274ADB48C(v57, v58, v59);
  v60 = OUTLINED_FUNCTION_57();
  (v56)(v60);
  OUTLINED_FUNCTION_55();
}

unint64_t OUTLINED_FUNCTION_61(uint64_t a1, unsigned __int16 a2)
{

  return sub_274BDA978(a2);
}

id OUTLINED_FUNCTION_61_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return sub_274BF3264();
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x2821FF290](v9, &a9);
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return sub_274BF34A4();
}

id OUTLINED_FUNCTION_10_10(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 112) = a7;
  *(v7 - 104) = a6;
  *(v7 - 160) = a3;
  *(v7 - 152) = a2;
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_1_5(unint64_t *a1)
{

  return sub_274AFA930(a1, v1);
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_once();
}

id OUTLINED_FUNCTION_1_14()
{

  return [v1 (v0 + 1314)];
}

__n128 OUTLINED_FUNCTION_1_17(uint64_t a1)
{
  v2 = *(v1 - 96);
  *(a1 + 16) = *(v1 - 112);
  *(a1 + 32) = v2;
  result = *(v1 - 87);
  *(a1 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_25()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_274BF4F44();
}

void sub_274ADB9A0()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_3();
  sub_274BF3A54();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  v1 = OUTLINED_FUNCTION_78();
  v2(v1);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_72();
}

__n128 OUTLINED_FUNCTION_12_0@<Q0>(__int16 a1@<W8>)
{
  result = *(v2 - 128);
  v4 = *(v2 - 112);
  *(v2 - 176) = result;
  *(v2 - 160) = v4;
  *(v2 - 142) = BYTE2(v1);
  *(v2 - 144) = a1;
  *(v2 - 141) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_274BF4F04();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return sub_274BF2D34();
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_274BF43F4();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_274BF3CD4();
}

unint64_t OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_274BDA830(a2, a3);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_274BF4F04();
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1)
{

  return sub_274ADB48C(v2, v1, a1);
}

uint64_t sub_274ADBBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v80 = a6;
  v81 = a5;
  v89 = a4;
  v97 = a3;
  v98 = a2;
  v88 = a1;
  v96 = a9;
  v99 = a11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550);
  *&v109 = COERCE_DOUBLE(sub_274BF57D4());
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = a8;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_274BF4964();
  sub_274AD766C(&qword_2815A30F8, &qword_28098B550);
  v14 = sub_274BF31C4();
  v84 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v83 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = v73 - v17;
  v18 = sub_274BF3B54();
  MEMORY[0x28223BE20](v18 - 8);
  v75 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_getWitnessTable();
  v79 = v13;
  v95 = v20;
  v21 = sub_274BF4B14();
  v78 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v77 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v74 = v73 - v25;
  MEMORY[0x28223BE20](v24);
  v76 = v73 - v26;
  v94 = sub_274BF3A74();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = v73 - v27;
  v109 = a7;
  AssociatedTypeWitness = a8;
  v91 = a8;
  v90 = a10;
  v111 = a10;
  v28 = v88;
  WitnessTable = v99;
  v29 = type metadata accessor for TopHitCollectionView();
  v108 = *(v28 + *(v29 + 60));
  v30 = v89;
  v31 = v97;
  if (v89)
  {

    sub_274BF2974();
    v33 = v32;
  }

  else
  {
    v33 = v97;
  }

  sub_274ADAFF4(v98, v29, v33);
  sub_274BF51A4();
  swift_getWitnessTable();
  sub_274BF53E4();
  v97 = *&v109;
  v85 = AssociatedTypeWitness;
  v86 = v111;
  v87 = WitnessTable;
  if (sub_274AE28A0(v29))
  {
    v73[1] = v14;
    if (v30)
    {
      sub_274BF2974();
    }

    else
    {
      v34 = v31;
    }

    sub_274AE29BC(v29, v34);
    sub_274BF3904();
    v37 = sub_274BF2964();
    MEMORY[0x28223BE20](v37);
    v38 = v91;
    v73[-10] = a7;
    v73[-9] = v38;
    v39 = v99;
    v73[-8] = v90;
    v73[-7] = v39;
    v40 = v85;
    *&v73[-6] = v97;
    v73[-5] = v40;
    v41 = v87;
    v73[-4] = v86;
    v73[-3] = v41;
    v42 = v95;
    sub_274ADC748();
    v72 = v42;
    v43 = v74;
    sub_274BF4B04();
    v44 = swift_getWitnessTable();
    v45 = v76;
    sub_274ADB48C(v43, v21, v44);
    v46 = *(v78 + 8);
    v46(v43, v21);
    v47 = v77;
    sub_274ADB48C(v45, v21, v44);
    v100 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550);
    v101 = v42;
    swift_getWitnessTable();
    v48 = v92;
    sub_274ADB9A0();
    swift_unknownObjectRelease();
    v46(v47, v21);
    v49 = v45;
    v50 = v21;
  }

  else
  {
    if (v30)
    {
      sub_274BF2974();
      v36 = v35;
    }

    else
    {
      v36 = *&v31;
    }

    v51 = sub_274BF2964();
    v53 = v52;
    MEMORY[0x28223BE20](v51);
    v54 = v91;
    v73[-6] = a7;
    v73[-5] = v54;
    v55 = v90;
    v56 = v99;
    v73[-4] = v90;
    v73[-3] = v56;
    v57 = sub_274B2CD3C(sub_274B322F8, &v73[-8], v81, v80 & 1);
    v109 = v36;
    AssociatedTypeWitness = v53;
    v111 = v98;
    WitnessTable = v57;
    LOBYTE(AssociatedConformanceWitness) = v58 & 1;
    v59 = sub_274B2EFBC(&v109, a7, v54, v55, v56);
    MEMORY[0x28223BE20](v59);
    v73[-10] = a7;
    v73[-9] = v54;
    v73[-8] = v55;
    v73[-7] = v56;
    v60 = v85;
    *&v73[-6] = v97;
    v73[-5] = v60;
    v61 = v87;
    v73[-4] = v86;
    v73[-3] = v61;
    v72 = v28;
    v62 = v83;
    v63(sub_274B32314);

    v64 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550);
    v42 = v95;
    v106 = v64;
    v107 = v95;
    v65 = swift_getWitnessTable();
    v66 = v82;
    sub_274ADB48C(v62, v14, v65);
    v46 = *(v84 + 8);
    v46(v62, v14);
    sub_274ADB48C(v66, v14, v65);
    swift_getWitnessTable();
    v48 = v92;
    sub_274B2CC88();
    swift_unknownObjectRelease();
    v46(v62, v14);
    v49 = v66;
    v50 = v14;
  }

  v46(v49, v50);
  v67 = swift_getWitnessTable();
  v104 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550);
  v105 = v42;
  v68 = swift_getWitnessTable();
  v102 = v67;
  v103 = v68;
  v69 = v94;
  v70 = swift_getWitnessTable();
  sub_274ADB48C(v48, v69, v70);
  return (*(v93 + 8))(v48, v69);
}

uint64_t sub_274ADC698(uint64_t a1, double a2)
{
  v3 = v2 + *(a1 + 72);
  if (*(v3 + 8))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = *v3;
  sub_274BF2954();
  v8 = v6 - (v7 + v7) + -68.0;
  if (v8 <= 68.0)
  {
    return 1;
  }

  for (i = 1; ; ++i)
  {
    result = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v8 + -68.0 - a2;
    if (v8 <= 68.0)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_274ADC748()
{
  OUTLINED_FUNCTION_68();
  sub_274BF3B54();
  sub_274AD9EF0(&qword_2815A2FC8, MEMORY[0x277CE0428]);
  return sub_274BF5DB4();
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return sub_274BF5A74();
}

uint64_t sub_274ADC850(double a1, double a2)
{
  type metadata accessor for TopHitView();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B748);
  sub_274AD766C(&qword_2815A2F38, &qword_28098B740);
  sub_274ADCA40();
  sub_274AD9EF0(&qword_2815A3918, MEMORY[0x277D7BE40]);
  return sub_274BF4954();
}

uint64_t sub_274ADC9C0@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = sub_274BF4A94();
  a1[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B738);
  return sub_274ADC850(a2, a3);
}

unint64_t sub_274ADCA40()
{
  result = qword_2815A30D0;
  if (!qword_2815A30D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B748);
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30D0);
  }

  return result;
}

uint64_t sub_274ADCAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = type metadata accessor for TopHitView();
  (*(a1 + *(v12 + 64)))();
  sub_274ADB48C(v9, a2, a3);
  v13 = *(v6 + 8);
  v13(v9, a2);
  sub_274ADB48C(v11, a2, a3);
  return (v13)(v11, a2);
}

uint64_t sub_274ADCC50@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a2;
  v133 = a1;
  v125 = a5;
  v7 = type metadata accessor for TopHitView();
  v117 = *(v7 - 8);
  v115 = *(v117 + 64);
  MEMORY[0x28223BE20](v7);
  v116 = v103 - v8;
  v124 = sub_274BF38E4();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6D0);
  MEMORY[0x28223BE20](v110);
  v11 = v103 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6D8);
  MEMORY[0x28223BE20](v132);
  v114 = v103 - v12;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B528);
  v122 = *(v123 - 8);
  v13 = MEMORY[0x28223BE20](v123);
  v121 = v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v119 = v103 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518);
  v17 = sub_274AD9D10();
  *&v146 = v16;
  *(&v146 + 1) = a3;
  *&v147 = v17;
  *(&v147 + 1) = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v146 = v16;
  *(&v146 + 1) = a3;
  v127 = a3;
  *&v147 = v17;
  *(&v147 + 1) = a4;
  v128 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_274BF47F4();
  v107 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v105 = v103 - v20;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_274ADA8B4();
  v131 = v19;
  *&v146 = v19;
  *(&v146 + 1) = &type metadata for TopHitButtonStyle;
  v130 = WitnessTable;
  *&v147 = WitnessTable;
  *(&v147 + 1) = v22;
  v129 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v108 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v106 = v103 - v28;
  v29 = *(OpaqueTypeMetadata2 - 8);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v103 - v33;
  v113 = sub_274BF3A74();
  v112 = *(v113 - 8);
  v35 = MEMORY[0x28223BE20](v113);
  v111 = v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v135 = v103 - v37;
  v126 = v7;
  v38 = (v133 + *(v7 + 68));
  v39 = *v38;
  if (*v38)
  {
    v104 = v38[1];
    v40 = v104;
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v40;
    MEMORY[0x28223BE20](v41);
    v42 = v128;
    v103[-4] = v127;
    v103[-3] = v42;
    v103[-2] = v109;
    sub_274ADDED0(v39);

    v43 = v105;
    v103[1] = OpaqueTypeMetadata2;
    sub_274BF47C4();
    v44 = v126;
    v45 = v133;
    v46 = sub_274ADDEEC();
    v47 = *(v45 + *(v44 + 72));
    LOBYTE(v146) = v46;
    BYTE1(v146) = v47;
    v48 = v131;
    v49 = v130;
    v50 = v129;
    sub_274BF41E4();
    (*(v107 + 8))(v43, v48);
    *&v146 = v48;
    *(&v146 + 1) = &type metadata for TopHitButtonStyle;
    *&v147 = v49;
    *(&v147 + 1) = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = v106;
    sub_274ADB48C(v26, v23, v51);
    v53 = *(v108 + 8);
    v53(v26, v23);
    sub_274ADB48C(v52, v23, v51);
    sub_274ADB9A0();
    sub_274AD81C4(v39);
    v53(v26, v23);
    v53(v52, v23);
  }

  else
  {
    v54 = OpaqueTypeConformance2;
    sub_274ADB48C(v109, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    sub_274ADB48C(v34, OpaqueTypeMetadata2, v54);
    *&v146 = v131;
    *(&v146 + 1) = &type metadata for TopHitButtonStyle;
    *&v147 = v130;
    *(&v147 + 1) = v129;
    swift_getOpaqueTypeConformance2();
    sub_274B2CC88();
    v55 = *(v29 + 8);
    v55(v32, OpaqueTypeMetadata2);
    v55(v34, OpaqueTypeMetadata2);
  }

  v56 = v133;
  v57 = v126;
  v58 = (v133 + *(v126 + 56));
  v59 = v58[1];
  *&v146 = *v58;
  *(&v146 + 1) = v59;
  sub_274ADDF6C();

  v60 = sub_274BF4104();
  v62 = v61;
  v64 = v63;
  v109 = v65;
  sub_274BF4A94();
  sub_274BF30D4();
  v66 = v64 & 1;
  LOBYTE(v138) = v64 & 1;
  KeyPath = swift_getKeyPath();
  v68 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6E0) + 36)];
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6E8) + 28);
  v70 = *MEMORY[0x277CE0B28];
  v71 = sub_274BF4084();
  (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
  *v68 = swift_getKeyPath();
  *v11 = v60;
  *(v11 + 1) = v62;
  v11[16] = v66;
  *(v11 + 17) = *v149;
  *(v11 + 5) = *&v149[3];
  *(v11 + 3) = v109;
  v72 = v147;
  *(v11 + 2) = v146;
  *(v11 + 3) = v72;
  *(v11 + 4) = v148;
  *(v11 + 10) = KeyPath;
  v11[88] = 1;
  v73 = swift_getKeyPath();
  v74 = &v11[*(v110 + 36)];
  *v74 = v73;
  v74[8] = 1;
  sub_274ADDFC0();
  v75 = v114;
  sub_274BF42E4();
  sub_274AFA708(v11, &qword_28098B6D0);
  v76 = sub_274ADE078();
  v77 = swift_getKeyPath();
  v78 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B710) + 36));
  *v78 = v77;
  v78[1] = v76;
  v79 = swift_getKeyPath();
  v80 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B718) + 36);
  *v80 = v79;
  *(v80 + 8) = 2;
  *(v80 + 16) = 0;
  v81 = sub_274ADE0D0();
  v82 = swift_getKeyPath();
  v83 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B720) + 36));
  *v83 = v82;
  v83[1] = v81;
  sub_274ADE3A8(v75 + *(v132 + 36));
  v84 = v118;
  sub_274B2CE88();
  v85 = v117;
  v86 = v116;
  (*(v117 + 16))(v116, v56, v57);
  v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v88 = swift_allocObject();
  v89 = v128;
  *(v88 + 16) = v127;
  *(v88 + 24) = v89;
  (*(v85 + 32))(v88 + v87, v86, v57);
  v133 = sub_274B326A4();
  v90 = sub_274AD9EF0(&qword_2815A3000, MEMORY[0x277CE02A8]);
  v91 = v119;
  v92 = v124;
  sub_274BF44A4();

  (*(v120 + 8))(v84, v92);
  sub_274ADDE2C(v75);
  v93 = v112;
  v94 = v111;
  v95 = v113;
  (*(v112 + 16))(v111, v135, v113);
  v145[0] = v94;
  v96 = v122;
  v97 = v121;
  v98 = v123;
  (*(v122 + 16))(v121, v91, v123);
  v145[1] = v97;
  v144[0] = v95;
  v144[1] = v98;
  v138 = v131;
  v139 = &type metadata for TopHitButtonStyle;
  v140 = v130;
  v141 = v129;
  v136 = swift_getOpaqueTypeConformance2();
  v137 = OpaqueTypeConformance2;
  v99 = swift_getWitnessTable();
  v141 = v90;
  v142 = v99;
  v138 = v132;
  v139 = v92;
  v140 = v133;
  v143 = swift_getOpaqueTypeConformance2();
  sub_274ADE60C(v145, 2, v144);
  v100 = *(v96 + 8);
  v100(v91, v98);
  v101 = *(v93 + 8);
  v101(v135, v95);
  v100(v97, v98);
  return (v101)(v94, v95);
}

uint64_t sub_274ADDBBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3584();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274ADDC2C()
{
  OUTLINED_FUNCTION_74();
  type metadata accessor for TopHitView();
  OUTLINED_FUNCTION_1_1();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510);
  OUTLINED_FUNCTION_67();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF38E4();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v1 + v3);
  }

  else
  {
  }

  v6 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v7 + 8))(v4 + v6);
  }

  else
  {
  }

  v8 = v0[15];
  sub_274BF2934();
  OUTLINED_FUNCTION_0_2();
  (*(v9 + 8))(v4 + v8);

  if (*(v4 + v0[17]))
  {
  }

  OUTLINED_FUNCTION_72();

  return swift_deallocObject();
}

uint64_t sub_274ADDE2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6D8);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274ADDE8C()
{

  return swift_deallocObject();
}

uint64_t sub_274ADDED0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_274ADDEEC()
{
  objc_opt_self();
  result = 0;
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1 || ([v1 hasClearBackground] & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_274ADDF6C()
{
  result = qword_2815A2F48;
  if (!qword_2815A2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2F48);
  }

  return result;
}

unint64_t sub_274ADDFC0()
{
  result = qword_2815A3050;
  if (!qword_2815A3050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6D0);
    sub_274AE4A40();
    sub_274AD766C(&qword_2815A2F80, &qword_28098B708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3050);
  }

  return result;
}

uint64_t sub_274ADE078()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B730);
  sub_274BF4784();
  return v1;
}

uint64_t sub_274ADE0D0()
{
  v14 = sub_274BF2F04();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_274BF28B4();
  v3 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF28A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2914();
  sub_274B2D01C();
  sub_274BF2874();
  (*(v0 + 8))(v2, v14);
  v10 = (*(v3 + 8))(v5, v13);
  v11 = MEMORY[0x277C62120](v10);
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t result, uint64_t a2)
{
  *(v2 - 176) = result;
  *(v2 - 168) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_274ADE3A8@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = sub_274BF2F04();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_274BF28B4();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274BF28A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2914();
  sub_274B2D01C();
  sub_274BF2874();
  (*(v1 + 8))(v3, v14);
  (*(v4 + 8))(v6, v13);
  sub_274BF2894();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_274ADE60C(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    OUTLINED_FUNCTION_12_5();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v13 = (v6 + 32);
    v14 = a2;
    do
    {
      if (a2 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v13;
      }

      v17 = *v12++;
      v16 = v17;
      v18 = *v5++;
      (*(*(v16 - 8) + 16))(&v11[v15], v18);
      v13 += 4;
      --v14;
    }

    while (v14);
  }

  return sub_274BF4B64();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return sub_274BF30D4();
}

uint64_t sub_274ADE878@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v60 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B618);
  MEMORY[0x28223BE20](v50);
  v4 = &v48 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B620);
  MEMORY[0x28223BE20](v49);
  v6 = &v48 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B628);
  MEMORY[0x28223BE20](v48);
  v52 = &v48 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B630);
  MEMORY[0x28223BE20](v51);
  v54 = &v48 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B638);
  MEMORY[0x28223BE20](v53);
  v56 = &v48 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B640);
  v10 = MEMORY[0x28223BE20](v59);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v48 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B648);
  MEMORY[0x28223BE20](v58);
  v14 = &v48 - v13;
  v15 = sub_274BF3BC4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  if ((a1 & 0x100) != 0)
  {
    sub_274BF3BD4();
    (*(v16 + 16))(v14, v21, v15);
    swift_storeEnumTagMultiPayload();
    sub_274AD9EF0(&qword_2815A2FC0, MEMORY[0x277CDE278]);
    sub_274ADEF6C();
    sub_274BF3A64();
    return (*(v16 + 8))(v21, v15);
  }

  else
  {
    sub_274BF3BD4();
    if (sub_274BF3BE4() & a1)
    {
      v22 = -0.15;
    }

    else
    {
      v22 = 0.0;
    }

    (*(v16 + 32))(v4, v19, v15);
    *&v4[*(v50 + 36)] = v22;
    if (sub_274BF3BE4() & a1)
    {
      v23 = 0.75;
    }

    else
    {
      v23 = 1.0;
    }

    sub_274B31858(v4, v6, &qword_28098B618);
    *&v6[*(v49 + 36)] = v23;
    if (a1 & 1 | ((sub_274BF3BE4() & 1) == 0))
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.65;
    }

    v25 = v52;
    v26 = sub_274B31858(v6, v52, &qword_28098B620);
    *(v25 + *(v48 + 36)) = v24;
    v27 = 0.4;
    v28 = MEMORY[0x277C64360](v26, 0.4, 1.0, 0.0);
    v29 = sub_274BF3BE4();
    v30 = v25;
    v31 = v54;
    sub_274B31858(v30, v54, &qword_28098B628);
    v32 = v31 + *(v51 + 36);
    *v32 = v28;
    *(v32 + 8) = v29 & 1;
    if (sub_274BF3BE4())
    {
      v33 = 0.91;
    }

    else
    {
      v33 = 1.0;
    }

    sub_274BF4B84();
    v35 = v34;
    v37 = v36;
    v38 = v56;
    sub_274B31858(v31, v56, &qword_28098B630);
    v39 = v38 + *(v53 + 36);
    *v39 = v33;
    *(v39 + 8) = v33;
    *(v39 + 16) = v35;
    *(v39 + 24) = v37;
    if (sub_274BF3BE4())
    {
      v27 = 0.35;
    }

    if (sub_274BF3BE4())
    {
      v40.n128_f64[0] = 0.5;
    }

    else
    {
      v40.n128_f64[0] = 1.0;
    }

    v41 = MEMORY[0x277C64360](v27, v40, 0.0);
    v42 = sub_274BF3BE4();
    v43 = v38;
    v44 = v55;
    sub_274B31858(v43, v55, &qword_28098B638);
    v45 = v44 + *(v59 + 36);
    *v45 = v41;
    *(v45 + 8) = v42 & 1;
    v46 = v57;
    sub_274B31858(v44, v57, &qword_28098B640);
    sub_274B32834(v46, v14, &qword_28098B640);
    swift_storeEnumTagMultiPayload();
    sub_274AD9EF0(&qword_2815A2FC0, MEMORY[0x277CDE278]);
    sub_274ADEF6C();
    sub_274BF3A64();
    return sub_274AFA708(v46, &qword_28098B640);
  }
}

uint64_t sub_274ADEF50@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_274ADE878(v2 | *v1, a1);
}

unint64_t sub_274ADEF6C()
{
  result = qword_2815A3030;
  if (!qword_2815A3030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B640);
    sub_274B311E4();
    sub_274AD766C(&qword_2815A3008, &qword_28098B650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3030);
  }

  return result;
}

uint64_t sub_274ADF028@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_274BF29C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF28D4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  if (*(v2 + *(type metadata accessor for TopHitIconView(0) + 24)))
  {
    v15 = MEMORY[0x277D7D5C0];
  }

  else
  {
    *v12 = 0x3FC0A3D70A3D70A4;
    v15 = MEMORY[0x277D7D5B0];
  }

  (*(v9 + 104))(v12, *v15, v8);
  (*(v9 + 32))(v14, v12, v8);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B580) + 48);
  *v7 = 0x404C000000000000;
  (*(v9 + 16))(&v7[v16], v14, v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D7D698], v4);
  sub_274ADF358(v2, v7, v14, a1);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B588) + 36));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B590);
  sub_274BF34B4();
  sub_274AE0A70();
  v20 = v19;
  v21 = *(sub_274BF3484() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_274BF38C4();
  (*(*(v23 - 8) + 104))(&v17[v21], v22, v23);
  *v17 = v20;
  *(v17 + 1) = v20;
  v17[*(v18 + 36)] = 0;
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_274ADF358@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v162 = a2;
  v160 = a4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B598);
  MEMORY[0x28223BE20](v135);
  v136 = &v126 - v5;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5A0);
  MEMORY[0x28223BE20](v159);
  v137 = (&v126 - v6);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5A8);
  MEMORY[0x28223BE20](v134);
  v133 = (&v126 - v7);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5B0);
  MEMORY[0x28223BE20](v147);
  v139 = &v126 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5B8);
  MEMORY[0x28223BE20](v140);
  v142 = &v126 - v9;
  v141 = type metadata accessor for TopHitSymbolIconView(0);
  MEMORY[0x28223BE20](v141);
  v138 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_274BF2F04();
  v151 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_274BF29B4();
  v148 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5C0);
  MEMORY[0x28223BE20](v156);
  v143 = (&v126 - v13);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5C8);
  MEMORY[0x28223BE20](v161);
  v158 = &v126 - v14;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5D0);
  MEMORY[0x28223BE20](v153);
  v154 = &v126 - v15;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5D8);
  MEMORY[0x28223BE20](v157);
  v155 = (&v126 - v16);
  v152 = sub_274BF29E4();
  v17 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v19 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_274BF29C4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_274BF29F4();
  v150 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TopHitIconView(0);
  v28 = a1;
  v29 = *(a1 + *(v27 + 20));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    (*(v21 + 16))(v23, v162, v20);
    (*(v17 + 104))(v19, *MEMORY[0x277D7D6D0], v152);
    v30 = v29;
    sub_274BF2A04();
    v31 = v150;
    (*(v150 + 16))(v154, v26, v24);
    swift_storeEnumTagMultiPayload();
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    sub_274AE2F54();
    v32 = v155;
    sub_274BF3A64();
    sub_274B32834(v32, v158, &qword_28098B5D8);
    swift_storeEnumTagMultiPayload();
    sub_274AE09B4();
    sub_274AE3010();
    sub_274BF3A64();
    sub_274AFA708(v32, &qword_28098B5D8);
    return (*(v31 + 8))(v26, v24);
  }

  v131 = v27;
  v126 = v17;
  v127 = v23;
  v130 = v21;
  v150 = v20;
  v128 = v19;
  v129 = v24;
  v34 = v162;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 hasClearBackground];
    v38 = v28;
    v40 = v148;
    v39 = v149;
    v41 = v151;
    v42 = v146;
    v43 = v131;
    if (v37 & 1) != 0 || (sub_274BF2924())
    {
      v152 = *(v43 + 28);
      v44 = sub_274BF2904();
      v45 = v144;
      sub_274BF28F4();
      v139 = MEMORY[0x277CDF3E0];
      sub_274B309E8(&qword_28098A7C0, &unk_274BFF8F0, MEMORY[0x277CDF3E0], v46, v47, v48, v49, v50, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
      v51 = sub_274BF29A4();
      v52 = *(v41 + 8);
      v151 = v41 + 8;
      v137 = v52;
      (v52)(v42, v39);
      v53 = v40[1];
      v54 = v42;
      v55 = v145;
      v53(v45, v145);
      v148 = [v36 iconWithSymbolColor:v44 background:v51];

      v56 = v141;
      v57 = v138;
      (*(v130 + 16))(&v138[*(v141 + 20)], v162, v150);
      v58 = *(v38 + *(v131 + 24));
      sub_274BF28F4();
      sub_274B309E8(&qword_28098A7C0, &unk_274BFF8F0, v139, v59, v60, v61, v62, v63, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
      v64 = sub_274BF29A4();
      (v137)(v54, v149);
      v53(v45, v55);
      *v57 = v148;
      *(v57 + *(v56 + 24)) = v58;
      *(v57 + *(v56 + 28)) = v64;
      sub_274AE0874(v57, v142, type metadata accessor for TopHitSymbolIconView);
      swift_storeEnumTagMultiPayload();
      sub_274AD9EF0(qword_2815A33A8, type metadata accessor for TopHitSymbolIconView);
      sub_274AE08CC();
      v65 = v143;
      sub_274BF3A64();
      sub_274AE2EFC(v57, type metadata accessor for TopHitSymbolIconView);
    }

    else
    {
      (*(v130 + 16))(v127, v34, v150);
      (*(v126 + 104))(v128, *MEMORY[0x277D7D6D0], v152);
      v111 = v29;
      v112 = v139;
      sub_274BF2A04();
      KeyPath = swift_getKeyPath();
      v114 = (v112 + *(v147 + 36));
      v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5E0) + 28);
      v116 = *MEMORY[0x277D7D6F0];
      v117 = sub_274BF35E4();
      (*(*(v117 - 8) + 104))(v114 + v115, v116, v117);
      *v114 = KeyPath;
      sub_274B32834(v112, v142, &qword_28098B5B0);
      swift_storeEnumTagMultiPayload();
      sub_274AD9EF0(qword_2815A33A8, type metadata accessor for TopHitSymbolIconView);
      sub_274AE08CC();
      v65 = v143;
      sub_274BF3A64();
      sub_274AFA708(v112, &qword_28098B5B0);
    }

    v109 = v155;
    v108 = &qword_28098B5C0;
    sub_274B32834(v65, v154, &qword_28098B5C0);
    swift_storeEnumTagMultiPayload();
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    sub_274AE2F54();
    sub_274BF3A64();
    v110 = &qword_28098B5D8;
    sub_274B32834(v109, v158, &qword_28098B5D8);
    swift_storeEnumTagMultiPayload();
    sub_274AE09B4();
    sub_274AE3010();
  }

  else
  {
    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();
    v67 = v139;
    v68 = v34;
    v70 = v148;
    v69 = v149;
    v71 = v151;
    v72 = v146;
    if (!v66)
    {
      (*(v130 + 16))(v127, v68, v150);
      (*(v126 + 104))(v128, *MEMORY[0x277D7D6D0], v152);
      v119 = v29;
      sub_274BF2A04();
      v120 = swift_getKeyPath();
      v121 = (v67 + *(v147 + 36));
      v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5E0) + 28);
      v123 = *MEMORY[0x277D7D6F0];
      v124 = sub_274BF35E4();
      (*(*(v124 - 8) + 104))(v121 + v122, v123, v124);
      *v121 = v120;
      v108 = &qword_28098B5B0;
      sub_274B32834(v67, v136, &qword_28098B5B0);
      swift_storeEnumTagMultiPayload();
      sub_274AE52DC();
      sub_274AE08CC();
      v125 = v137;
      sub_274BF3A64();
      sub_274B32834(v125, v158, &qword_28098B5A0);
      swift_storeEnumTagMultiPayload();
      sub_274AE09B4();
      sub_274AE3010();
      sub_274BF3A64();
      sub_274AFA708(v125, &qword_28098B5A0);
      v118 = v67;
      return sub_274AFA708(v118, v108);
    }

    v156 = *(v131 + 28);
    v73 = v144;
    sub_274BF28F4();
    v155 = MEMORY[0x277CDF3E0];
    sub_274B309E8(&qword_28098A7C0, &unk_274BFF8F0, MEMORY[0x277CDF3E0], v74, v75, v76, v77, v78, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
    v79 = sub_274BF29A4();
    v80 = *(v71 + 8);
    v80(v72, v69);
    v162 = v29;
    v81 = v70[1];
    v148 = v70 + 1;
    v82 = v145;
    v81(v73, v145);
    v83 = [v79 color];
    v84 = v69;

    v85 = sub_274BF4594();
    sub_274BF28F4();
    sub_274B309E8(&qword_28098A7C0, &unk_274BFF8F0, v155, v86, v87, v88, v89, v90, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
    v91 = sub_274BF29A4();
    v80(v72, v84);
    v81(v73, v82);
    [v91 blendMode];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5F0);
    v65 = v133;
    sub_274BF55E4();
    *v65 = v85;
    sub_274BF4A94();
    sub_274BF30D4();
    v92 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5E8) + 36));
    v93 = v164;
    *v92 = v163;
    v92[1] = v93;
    v92[2] = v165;
    v94 = sub_274BF4A94();
    v96 = v95;
    v97 = v65 + *(v134 + 36);
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B580) + 48);
    v99 = v127;
    *v127 = 0x403D000000000000;
    v100 = sub_274BF28D4();
    (*(*(v100 - 8) + 16))(&v99[v98], v132, v100);
    (*(v130 + 104))(v99, *MEMORY[0x277D7D698], v150);
    (*(v126 + 104))(v128, *MEMORY[0x277D7D6D0], v152);
    v101 = v162;
    sub_274BF2A04();
    v102 = swift_getKeyPath();
    v103 = &v97[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B608) + 36)];
    v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B610) + 28);
    v105 = *MEMORY[0x277D7D6A8];
    v106 = sub_274BF29D4();
    (*(*(v106 - 8) + 104))(v103 + v104, v105, v106);
    *v103 = v102;
    v107 = &v97[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B600) + 36)];
    *v107 = v94;
    v107[1] = v96;
    v108 = &qword_28098B5A8;
    sub_274B32834(v65, v136, &qword_28098B5A8);
    swift_storeEnumTagMultiPayload();
    sub_274AE52DC();
    sub_274AE08CC();
    v109 = v137;
    sub_274BF3A64();
    v110 = &qword_28098B5A0;
    sub_274B32834(v109, v158, &qword_28098B5A0);
    swift_storeEnumTagMultiPayload();
    sub_274AE09B4();
    sub_274AE3010();
  }

  sub_274BF3A64();
  sub_274AFA708(v109, v110);
  v118 = v65;
  return sub_274AFA708(v118, v108);
}

uint64_t sub_274AE0874(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

unint64_t sub_274AE08CC()
{
  result = qword_2815A30C8;
  if (!qword_2815A30C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5B0);
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    sub_274AD766C(&qword_2815A2FA8, &qword_28098B5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30C8);
  }

  return result;
}

unint64_t sub_274AE09B4()
{
  result = qword_2815A2FE8;
  if (!qword_2815A2FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5D8);
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    sub_274AE2F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FE8);
  }

  return result;
}

uint64_t sub_274AE0A70()
{
  v1 = v0;
  v2 = sub_274BF28D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF29C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  if ((*(v7 + 88))(v9, v6) != *MEMORY[0x277D7D698])
  {
    return (*(v7 + 8))(v9, v6);
  }

  (*(v7 + 96))(v9, v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B580);
  (*(v3 + 32))(v5, &v9[*(v10 + 48)], v2);
  sub_274BF28C4();
  return (*(v3 + 8))(v5, v2);
}

__n128 OUTLINED_FUNCTION_4_3()
{
  result = *(v0 - 128);
  v2 = *(v0 - 112);
  *(v0 - 176) = result;
  *(v0 - 160) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return sub_274BF5644();
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_4_14()
{

  return [v0 (v2 + 2865)];
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return MutableStateObject.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t a1, uint64_t a2)
{

  return sub_274BDFDF0(1, a1, a2);
}

id OUTLINED_FUNCTION_29_1()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return sub_274BF2DB4();
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 2, v1);
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1, uint64_t a2)
{

  return sub_274B33594(a1, a2, v2);
}

id OUTLINED_FUNCTION_25_3()
{

  return [v0 (v2 + 3941)];
}

uint64_t TopHitCollectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v212 = a2;
  sub_274BF3CA4();
  OUTLINED_FUNCTION_1();
  v180 = v4;
  v181 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v179 = v6 - v5;
  OUTLINED_FUNCTION_70();
  v7 = sub_274BF3AC4();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_4();
  v178 = (v9 - v8);
  v10 = a1;
  v11 = *(a1 + 16);
  OUTLINED_FUNCTION_64();
  v12 = sub_274BF51A4();
  v225 = *(v10 + 24);
  v216 = v10;
  OUTLINED_FUNCTION_52();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_0();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v228 = v12;
  OpaqueTypeConformance2 = AssociatedTypeWitness;
  v230 = v225.i64[0];
  v231 = WitnessTable;
  v232 = AssociatedConformanceWitness;
  sub_274BF4964();
  v223 = *(v10 + 40);
  v264 = v223;
  OUTLINED_FUNCTION_0_12();
  v209 = v14;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_274BF2EA4();
  sub_274BF33D4();
  OUTLINED_FUNCTION_65();
  sub_274BF33D4();
  OUTLINED_FUNCTION_59();
  sub_274BF33D4();
  v217 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B538);
  sub_274BF33D4();
  v218 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B540);
  OUTLINED_FUNCTION_75_0();
  v15 = sub_274BF33D4();
  OUTLINED_FUNCTION_24_1();
  v262 = swift_getWitnessTable();
  v263 = MEMORY[0x277CDFC60];
  OUTLINED_FUNCTION_34_0();
  v260 = swift_getWitnessTable();
  v261 = MEMORY[0x277CDF918];
  v16 = MEMORY[0x277CDF918];
  v258 = swift_getWitnessTable();
  v259 = v16;
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_23_0();
  v220 = sub_274AD766C(v18, &qword_28098B538);
  v256 = v17;
  v257 = v220;
  v19 = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  v219 = sub_274AD766C(v20, &qword_28098B540);
  v254 = v19;
  v255 = v219;
  OUTLINED_FUNCTION_24();
  v177 = v15;
  v171 = swift_getWitnessTable();
  v21 = sub_274BF3434();
  OUTLINED_FUNCTION_1();
  v174 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13_0();
  v173 = v24;
  OUTLINED_FUNCTION_19_2();
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18_2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v170 = v27;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13_0();
  v168[1] = v25;
  v169 = v29;
  v176 = v21;
  v211 = OpaqueTypeMetadata2;
  v228 = OpaqueTypeMetadata2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v224 = OpaqueTypeConformance2;
  v222 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v175 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15_2();
  v172 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  v204 = v168 - v35;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B548);
  OUTLINED_FUNCTION_1();
  v203 = v36;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13_0();
  v202 = v38;
  OUTLINED_FUNCTION_70();
  sub_274BF2994();
  OUTLINED_FUNCTION_1();
  v200 = v40;
  v201 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  v199 = v42 - v41;
  v210 = v11;
  v43 = sub_274BF57D4();
  OUTLINED_FUNCTION_6_8();
  v44 = swift_getWitnessTable();
  v228 = v43;
  OpaqueTypeConformance2 = AssociatedTypeWitness;
  v230 = v225.i64[0];
  v231 = v44;
  v232 = AssociatedConformanceWitness;
  sub_274BF4964();
  v253 = v223;
  AssociatedTypeWitness = swift_getWitnessTable();
  OUTLINED_FUNCTION_75_0();
  sub_274BF4B14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550);
  OUTLINED_FUNCTION_32_1();
  sub_274AD766C(v45, &qword_28098B550);
  OUTLINED_FUNCTION_65();
  sub_274BF31C4();
  OUTLINED_FUNCTION_52();
  v207 = sub_274BF3A74();
  v208 = sub_274BF46B4();
  v209 = sub_274BF33D4();
  v46 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v187 = v47;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13_0();
  v186 = v49;
  OUTLINED_FUNCTION_70();
  v50 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v192 = v51;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_13_0();
  v189 = v53;
  OUTLINED_FUNCTION_70();
  v54 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v191 = v55;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13_0();
  v188 = v57;
  v58 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v196 = v59;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_13_0();
  v195 = v61;
  OUTLINED_FUNCTION_70();
  v62 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v198 = v63;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_13_0();
  AssociatedConformanceWitness = v65;
  OUTLINED_FUNCTION_65();
  v66 = sub_274BF33D4();
  OUTLINED_FUNCTION_31_0();
  v67 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  v251 = sub_274AD766C(v68, &qword_28098B550);
  v252 = AssociatedTypeWitness;
  OUTLINED_FUNCTION_29_0();
  v69 = swift_getWitnessTable();
  v249 = v67;
  v250 = v69;
  OUTLINED_FUNCTION_3_0();
  v248 = swift_getWitnessTable();
  OUTLINED_FUNCTION_28_0();
  v246 = swift_getWitnessTable();
  v70 = MEMORY[0x277CDF918];
  v247 = MEMORY[0x277CDF918];
  v244 = swift_getWitnessTable();
  v245 = v70;
  v190 = v46;
  v182 = swift_getWitnessTable();
  v242 = v182;
  v243 = v70;
  v194 = v50;
  v183 = swift_getWitnessTable();
  v240 = v183;
  v241 = v70;
  v193 = v54;
  v184 = swift_getWitnessTable();
  v238 = v184;
  v239 = MEMORY[0x277CDF900];
  v197 = v58;
  v185 = swift_getWitnessTable();
  v236 = v185;
  v237 = v220;
  v71 = swift_getWitnessTable();
  v228 = MEMORY[0x277CE1350];
  OpaqueTypeConformance2 = MEMORY[0x277CE1340];
  OUTLINED_FUNCTION_25_0();
  v72 = swift_getOpaqueTypeConformance2();
  v234 = v71;
  v235 = v219;
  v73 = swift_getWitnessTable();
  v209 = v62;
  v228 = v62;
  OpaqueTypeConformance2 = v221;
  v217 = v66;
  v230 = v66;
  v219 = v73;
  v220 = v71;
  v231 = v71;
  AssociatedTypeWitness = v72;
  v232 = v72;
  v233 = v73;
  OUTLINED_FUNCTION_21_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v75 = v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_15_2();
  v79 = (v77 - v78);
  v81 = (MEMORY[0x28223BE20])(v80);
  v83 = v168 - v82;
  MEMORY[0x28223BE20](v81);
  v85 = v168 - v84;
  v206 = v86;
  sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v207 = v88;
  v208 = v87;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_13_0();
  v218 = v90;
  v91 = v215;
  v92 = v215 + *(v216 + 16);
  v93 = *v92;
  v94 = *(v92 + 8);
  v95 = *(v92 + 16);
  v96 = *(v92 + 24);
  if (v96 < 0)
  {
    v145 = sub_274BF3AB4();
    MEMORY[0x28223BE20](v145);
    v168[-10] = v210;
    *&v168[-9] = v225;
    v168[-7] = v223;
    v168[-6] = v94;
    v168[-5] = v91;
    v168[-4] = v95;
    LOBYTE(v168[-3]) = v96 & 1;
    v167 = v93;
    v146 = v173;
    sub_274BF3424();
    v147 = v179;
    sub_274BF3C94();
    v148 = v176;
    sub_274B2EEE8();
    v149 = v169;
    sub_274BF42D4();
    (*(v180 + 8))(v147, v181);
    (*(v174 + 8))(v146, v148);
    sub_274BF3E34();
    v150 = v172;
    v141 = v211;
    v151 = v224;
    sub_274BF4364();
    (*(v170 + 8))(v149, v141);
    v228 = v141;
    OpaqueTypeConformance2 = v151;
    v152 = OUTLINED_FUNCTION_8_7();
    v153 = v204;
    v154 = v222;
    sub_274ADB48C(v150, v222, v152);
    v225.i64[0] = *(v175 + 8);
    v155 = OUTLINED_FUNCTION_66();
    v156(v155);
    sub_274ADB48C(v153, v154, v152);
    v128 = v209;
    v130 = v221;
    v228 = v209;
    OpaqueTypeConformance2 = v221;
    v144 = v217;
    v230 = v217;
    v231 = v220;
    v142 = AssociatedTypeWitness;
    v232 = AssociatedTypeWitness;
    v233 = v219;
    OUTLINED_FUNCTION_7_9();
    sub_274B2CC88();
    v157 = OUTLINED_FUNCTION_66();
    v158 = v225.i64[0];
    (v225.i64[0])(v157);
    v139 = v220;
    v158(v204, v154);
    v143 = v219;
  }

  else
  {
    v204 = v75;
    v97 = v186;
    v98 = v93;
    v99 = v216;
    sub_274AE2370(v98, v94, v95 & 1, 0, 1, v216, v186);
    LODWORD(v177) = sub_274BF3E34();
    v179 = *(v99 + 14);
    LODWORD(v180) = *MEMORY[0x277D7D648];
    v181 = v83;
    v100 = v199;
    v101 = v200;
    v205 = v85;
    v178 = *(v200 + 13);
    v102 = v201;
    v178(v199);
    sub_274BF2984();
    v103 = *(v101 + 1);
    v104 = OUTLINED_FUNCTION_66();
    v103(v104);
    v200 = v79;
    v105 = v190;
    sub_274BF4464();
    (*(v187 + 8))(v97, v105);
    sub_274BF3E54();
    (v178)(v100, v180, v102);
    v106 = v215;
    sub_274BF2984();
    v107 = OUTLINED_FUNCTION_66();
    v103(v107);
    v108 = v188;
    sub_274BF4464();
    v109 = OUTLINED_FUNCTION_24();
    v110(v109);
    sub_274AE2BD8(v216);
    v111 = v195;
    v112 = v193;
    sub_274BF4444();
    v113 = (*(v191 + 8))(v108, v112);
    v216 = v168;
    v114 = MEMORY[0x28223BE20](v113);
    v115 = v210;
    v114.i64[0] = v210;
    *&v116 = vdupq_laneq_s64(v225, 1).u64[0];
    v117 = v223;
    *(&v116 + 1) = v223;
    *&v168[-6] = vzip1q_s64(v114, v225);
    *&v168[-4] = v116;
    v167 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B558);
    v118 = sub_274BF3484();
    OUTLINED_FUNCTION_26_0();
    v121 = sub_274AD9EF0(v119, v120);
    v228 = v118;
    OpaqueTypeConformance2 = v121;
    swift_getOpaqueTypeConformance2();
    sub_274BF4A94();
    v122 = v197;
    sub_274BF4194();
    (*(v196 + 8))(v111, v122);
    sub_274BF4A64();
    v123 = v202;
    v124 = sub_274BF38D4();
    v216 = v168;
    MEMORY[0x28223BE20](v124);
    v168[-6] = v115;
    *&v168[-5] = v225;
    v168[-3] = v117;
    v125 = swift_checkMetadataState();
    v167 = v219;
    v126 = v219;
    v127 = v181;
    v128 = v209;
    v129 = v220;
    v130 = v221;
    v131 = AssociatedConformanceWitness;
    v132 = AssociatedTypeWitness;
    sub_274BF44B4();
    (*(v203 + 8))(v123, v130);
    (*(v198 + 8))(v131, v128);
    v228 = v128;
    OpaqueTypeConformance2 = v130;
    v230 = v125;
    v231 = v129;
    v232 = v132;
    v233 = v126;
    v133 = OUTLINED_FUNCTION_7_9();
    v135 = v205;
    v134 = v206;
    sub_274ADB48C(v127, v206, v133);
    v136 = *(v204 + 1);
    v136(v127, v134);
    v137 = v200;
    sub_274ADB48C(v135, v134, v133);
    v138 = v211;
    v228 = v211;
    OpaqueTypeConformance2 = v224;
    OUTLINED_FUNCTION_8_7();
    v139 = v220;
    sub_274ADB9A0();
    v136(v137, v134);
    v140 = v134;
    v141 = v138;
    v136(v205, v140);
    v142 = AssociatedTypeWitness;
    v143 = v219;
    v144 = v217;
  }

  v228 = v128;
  OpaqueTypeConformance2 = v130;
  v230 = v144;
  v231 = v139;
  v232 = v142;
  v233 = v143;
  v159 = OUTLINED_FUNCTION_7_9();
  v228 = v141;
  OpaqueTypeConformance2 = v224;
  v160 = OUTLINED_FUNCTION_8_7();
  v226 = v159;
  v227 = v160;
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  v161 = OUTLINED_FUNCTION_56();
  sub_274ADB48C(v161, v162, v163);
  v164 = OUTLINED_FUNCTION_56();
  return v165(v164);
}

uint64_t sub_274AE2370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a5;
  v34 = a4;
  v31 = a3;
  v30 = a2;
  v29 = a1;
  v37 = a7;
  v8 = a6[2];
  v9 = sub_274BF57D4();
  v10 = a6[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = a6[3];
  v36 = a6;
  v54 = v9;
  v55 = AssociatedTypeWitness;
  v56 = v26;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_274BF4964();
  v12 = a6[5];
  v53 = v12;
  v27 = swift_getWitnessTable();
  sub_274BF4B14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550);
  sub_274AD766C(&qword_2815A30F8, &qword_28098B550);
  sub_274BF31C4();
  sub_274BF3A74();
  v13 = sub_274BF46B4();
  v28 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = sub_274BF33D4();
  v33 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  *&v19 = v8;
  *(&v19 + 1) = v26;
  *&v20 = v10;
  *(&v20 + 1) = v12;
  v39 = v20;
  v38 = v19;
  v40 = v32;
  v41 = v29;
  v42 = v30;
  v43 = v31 & 1;
  v44 = v34;
  v45 = v35 & 1;
  v21 = swift_getWitnessTable();
  v51 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550);
  v52 = v27;
  v22 = swift_getWitnessTable();
  v49 = v21;
  v50 = v22;
  v23 = swift_getWitnessTable();
  sub_274BF46A4();
  sub_274BF3E34();
  sub_274BF2954();
  v48 = v23;
  v24 = swift_getWitnessTable();
  sub_274BF4464();
  (*(v28 + 8))(v15, v13);
  sub_274BF3EA4();
  sub_274BF2944();
  v46 = v24;
  v47 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_274BF4464();
  return (*(v33 + 8))(v18, v16);
}

uint64_t sub_274AE28A0(uint64_t a1)
{
  v3 = sub_274BF2994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(a1 + 64) + 24) < 0)
  {
    v7 = 0;
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D7D640], v3);
    v7 = sub_274BF2984();
    (*(v4 + 8))(v6, v3);
  }

  return v7 & 1;
}

uint64_t sub_274AE29BC(uint64_t a1, double a2)
{
  v4 = sub_274BF4A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_274BF4A14();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_274ADC698(a1, a2);
  result = sub_274BF5194();
  if (result >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = result;
  }

  if ((v13 & 1) != 0 && (v14 = __OFADD__(v13, 1), ++v13, v14))
  {
    __break(1u);
  }

  else
  {
    *v7 = 0x4051000000000000;
    (*(v5 + 104))(v7, *MEMORY[0x277CDF0F0], v4);
    sub_274BF4A84();
    sub_274BF4A24();
    return sub_274ADB050(v10, v13);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_51(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 448) = v3;
  result[2].n128_u64[0] = *(v2 + 432);
  return result;
}

uint64_t sub_274AE2BD8(uint64_t a1)
{
  v3 = sub_274BF3774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_274BF54A4();
    v9 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_274AE2D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518);
  v13 = a2;
  v14 = sub_274AD9D10();
  v15 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v9 = &v12 - v8;
  v13 = a2;
  v15 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_274ADB48C(a1, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  sub_274ADB48C(v9, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (*(v7 + 8))(v9, OpaqueTypeMetadata2);
}

uint64_t sub_274AE2EFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_274AE2F54()
{
  result = qword_2815A2FF0;
  if (!qword_2815A2FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5C0);
    sub_274AD9EF0(qword_2815A33A8, type metadata accessor for TopHitSymbolIconView);
    sub_274AE08CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FF0);
  }

  return result;
}

unint64_t sub_274AE3010()
{
  result = qword_2815A2FE0;
  if (!qword_2815A2FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5A0);
    sub_274AE52DC();
    sub_274AE08CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_274BF2BC4();
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return swift_beginAccess();
}

uint64_t sub_274AE3164@<X0>(double *a1@<X8>)
{
  v2 = sub_274BF2994();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D7D648], v2);
  v6 = sub_274BF2984();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 22.0;
  }

  v8 = *(sub_274BF3484() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_274BF38C4();
  result = (*(*(v10 - 8) + 104))(a1 + v8, v9, v10);
  *a1 = v7;
  a1[1] = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t OUTLINED_FUNCTION_8_3()
{
}

uint64_t OUTLINED_FUNCTION_8_5(_OWORD *a1)
{
  v3 = v1[1];
  a1[2] = *v1;
  a1[3] = v3;
  a1[4] = v1[2];
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_8(unint64_t *a1)
{

  return sub_274AFA930(a1, v1);
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return sub_274BF2DF4();
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return sub_274B22670(v0 + 184, v0 + 536, v1);
}

uint64_t OUTLINED_FUNCTION_8_15()
{
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_274AFA6A8(v2 - 240, v0, v1);
}

uint64_t OUTLINED_FUNCTION_8_20(unint64_t *a1)
{

  return sub_274AFA930(a1, v1);
}

uint64_t OUTLINED_FUNCTION_7_5(unint64_t *a1)
{

  return sub_274AFA930(a1, v1);
}

void OUTLINED_FUNCTION_7_6()
{

  JUMPOUT(0x277C64DC0);
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_274BF2D74();
}

id OUTLINED_FUNCTION_7_22()
{

  return sub_274B217DC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_23()
{
  v3 = *(v1 - 136);
  v4 = *(v1 - 104);

  return sub_274ADB48C(v3, v0, v4);
}

void sub_274AE37C4()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_2();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v25[0] = v13;
  v25[1] = v14;
  v25[2] = v15;
  v25[3] = v16;
  v17 = type metadata accessor for TopHitCollectionView();
  (*(v3 + *(v17 + 76)))(v5);
  OUTLINED_FUNCTION_53_0();
  sub_274ADB48C(v18, v19, v20);
  v21 = *(v6 + 8);
  v21(v9, v1);
  OUTLINED_FUNCTION_53_0();
  sub_274ADB48C(v22, v23, v24);
  v21(v12, v1);
  OUTLINED_FUNCTION_72();
}

_BYTE *storeEnumTagSinglePayload for TopHitIconMask(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x274AE39E8);
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

uint64_t TopHitView.init(icon:iconMask:badges:name:colorScheme:menu:tapHandler:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *a2;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510);
  OUTLINED_FUNCTION_46();
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for TopHitView();
  v19 = v18[9];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  swift_storeEnumTagMultiPayload();
  v20 = (a9 + v18[10]);
  sub_274AE3C84();
  *v20 = sub_274AE4288();
  v20[1] = v21;
  *(a9 + v18[11]) = a1;
  if (v17 == 2)
  {
    v22 = a1;
    static TopHitIconMask.default(for:)(&v31);

    LOBYTE(v17) = v31;
  }

  *(a9 + v18[12]) = v17 & 1;
  *(a9 + v18[13]) = a3;
  v23 = (a9 + v18[14]);
  *v23 = a4;
  v23[1] = a5;
  v24 = v18[15];
  sub_274BF2934();
  OUTLINED_FUNCTION_2();
  result = (*(v25 + 32))(a9 + v24, a6);
  v27 = (a9 + v18[16]);
  *v27 = a7;
  v27[1] = a8;
  v28 = (a9 + v18[17]);
  *v28 = a10;
  v28[1] = a11;
  *(a9 + v18[18]) = 1;
  return result;
}

uint64_t sub_274AE3C84()
{
  sub_274AD8430(0, &qword_2815A2EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B750);
  inited = swift_initStackObject();
  v1 = MEMORY[0x277D74378];
  *(inited + 16) = xmmword_274BFA880;
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = *MEMORY[0x277D76938];
  type metadata accessor for TextStyle(0);
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277D74380];
  *(inited + 64) = v5;
  *(inited + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B758);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_274BFA880;
  v7 = *MEMORY[0x277D74430];
  type metadata accessor for TraitKey(0);
  sub_274AD9EF0(&qword_2815A2EE0, type metadata accessor for TraitKey);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v7;
  sub_274BF5914();
  v12 = *MEMORY[0x277D74418];
  type metadata accessor for Weight(0);
  *(v6 + 96) = v13;
  *(v6 + 72) = v12;
  sub_274BF4F44();
  sub_274BF5914();
  *(v6 + 168) = MEMORY[0x277D83B88];
  *(v6 + 144) = 3;
  v14 = sub_274BF4E14();
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B760);
  *(inited + 80) = v14;
  type metadata accessor for AttributeName(0);
  sub_274AD9EF0(&unk_2815A2EC0, type metadata accessor for AttributeName);
  sub_274BF4E14();
  v15 = sub_274AE4148();
  v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
  v17 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v18 = [v17 scaledFontForFont_];

  v19 = sub_274BF4004();
  return v19;
}

void sub_274AE3F90(uint64_t a1, unint64_t *a2)
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

uint64_t sub_274AE40C8()
{
  sub_274BF4F44();
  sub_274BF5CD4();
  sub_274BF4FF4();
  v0 = sub_274BF5D44();

  return v0;
}

id sub_274AE4148()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for AttributeName(0);
  sub_274AD9EF0(&unk_2815A2EC0, type metadata accessor for AttributeName);
  v1 = sub_274BF4DE4();

  v2 = [v0 initWithFontAttributes_];

  return v2;
}

uint64_t sub_274AE4210()
{
  v0 = sub_274BF4F44();
  v2 = v1;
  if (v0 == sub_274BF4F44() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_32();
  }

  return v5 & 1;
}

void static TopHitIconMask.default(for:)(BOOL *a1@<X8>)
{
  objc_opt_self();
  OUTLINED_FUNCTION_46();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_46(), swift_dynamicCastObjCClass()) || (objc_opt_self(), OUTLINED_FUNCTION_46(), swift_dynamicCastObjCClass()))
  {
    v2 = 1;
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_46();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 image];
      v5 = [v4 displayStyle];

      v2 = v5 == 1;
    }

    else
    {
      v2 = 0;
    }
  }

  *a1 = v2;
}

void sub_274AE43B4()
{
  sub_274AD81E0(319, &qword_2815A3118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_274AD8430(319, &unk_2815A2E80);
    if (v1 <= 0x3F)
    {
      sub_274BF2934();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_274AE44EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518);
  sub_274AD9D10();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_2();
  sub_274BF47F4();
  OUTLINED_FUNCTION_35_0();
  sub_274ADA8B4();
  OUTLINED_FUNCTION_22();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_76();
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B528);
  OUTLINED_FUNCTION_16_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_76();
  sub_274BF4B54();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16_1();
  sub_274BF48A4();
  sub_274BF33D4();
  OUTLINED_FUNCTION_39_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_274BF3DB4();
  OUTLINED_FUNCTION_4_2();
  sub_274BF33D4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_33_0();
  sub_274AD9EF0(v0, v1);
  return swift_getWitnessTable();
}

uint64_t EnvironmentValues.isLockedByAppProtection.getter()
{
  sub_274AE4740();
  sub_274BF3784();
  return v1;
}

unint64_t sub_274AE4740()
{
  result = qword_2815A3880;
  if (!qword_2815A3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3880);
  }

  return result;
}

unint64_t sub_274AE4798()
{
  result = qword_2815A3888[0];
  if (!qword_2815A3888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815A3888);
  }

  return result;
}

uint64_t sub_274AE4828@<X0>(_BYTE *a1@<X8>)
{
  result = static LockedAppKey.read(from:)();
  *a1 = result & 1;
  return result;
}

unint64_t sub_274AE4854()
{
  result = qword_2815A3870;
  if (!qword_2815A3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3870);
  }

  return result;
}

uint64_t static LockedAppTrait.defaultValue.getter()
{
  if (qword_2815A3878 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  OUTLINED_FUNCTION_1_25();
  return byte_28098DA59;
}

uint64_t sub_274AE4904@<X0>(_BYTE *a1@<X8>)
{
  result = static LockedAppTrait.defaultValue.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AE4930()
{
  result = swift_beginAccess();
  byte_28098DA59 = byte_28098DA58;
  return result;
}

unint64_t sub_274AE4988()
{
  result = qword_2815A3090;
  if (!qword_2815A3090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6F0);
    sub_274AE4AF8();
    sub_274AD766C(&qword_2815A2FA0, &qword_28098B700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3090);
  }

  return result;
}

unint64_t sub_274AE4A40()
{
  result = qword_2815A3070;
  if (!qword_2815A3070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6E0);
    sub_274AE4988();
    sub_274AD766C(&qword_2815A2F90, &qword_28098B6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3070);
  }

  return result;
}

unint64_t sub_274AE4AF8()
{
  result = qword_2815A30B8;
  if (!qword_2815A30B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30B8);
  }

  return result;
}

unint64_t sub_274AE4B7C()
{
  result = qword_2815A3068;
  if (!qword_2815A3068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B720);
    sub_274AE4C34();
    sub_274AD766C(&qword_2815A2F88, &qword_280989AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3068);
  }

  return result;
}

unint64_t sub_274AE4C34()
{
  result = qword_2815A3088;
  if (!qword_2815A3088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B718);
    sub_274AE4CEC();
    sub_274AD766C(&qword_2815A2F78, &qword_28098B728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3088);
  }

  return result;
}

unint64_t sub_274AE4CEC()
{
  result = qword_2815A30B0;
  if (!qword_2815A30B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6D0);
    sub_274ADDFC0();
    swift_getOpaqueTypeConformance2();
    sub_274AD766C(&qword_2815A2F98, &qword_280989D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30B0);
  }

  return result;
}

unint64_t sub_274AE4E00()
{
  result = qword_2815A2FD8;
  if (!qword_2815A2FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B788);
    sub_274AD9EF0(&qword_2815A2FC0, MEMORY[0x277CDE278]);
    sub_274ADEF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FD8);
  }

  return result;
}

unint64_t sub_274AE4EBC()
{
  result = qword_2815A3058;
  if (!qword_2815A3058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B630);
    sub_274B31270();
    sub_274AD766C(&qword_2815A3008, &qword_28098B650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3058);
  }

  return result;
}

unint64_t sub_274AE4F74()
{
  result = qword_2815A3098;
  if (!qword_2815A3098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B620);
    sub_274AE5000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3098);
  }

  return result;
}

unint64_t sub_274AE5000()
{
  result = qword_2815A30C0;
  if (!qword_2815A30C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B618);
    sub_274AD9EF0(&qword_2815A2FC0, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30C0);
  }

  return result;
}

uint64_t sub_274AE50BC()
{
  result = sub_274AD8430(319, &qword_2815A2F20);
  if (v1 <= 0x3F)
  {
    result = sub_274BF29C4();
    if (v2 <= 0x3F)
    {
      result = sub_274AD8430(319, &qword_2815A2EE8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_274AE51A0()
{
  result = qword_2815A30A8;
  if (!qword_2815A30A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B588);
    sub_274AE5258();
    sub_274AD766C(&qword_2815A2FB0, &qword_28098B590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30A8);
  }

  return result;
}

unint64_t sub_274AE5258()
{
  result = qword_2815A2F68;
  if (!qword_2815A2F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B778);
    sub_274B327A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2F68);
  }

  return result;
}

unint64_t sub_274AE52DC()
{
  result = qword_2815A3040;
  if (!qword_2815A3040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5A8);
    sub_274B31158();
    sub_274AD766C(&qword_2815A3018, &qword_28098B600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3040);
  }

  return result;
}

unint64_t sub_274AE5394()
{
  result = qword_2815A3080;
  if (!qword_2815A3080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5F0);
    sub_274AE5420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3080);
  }

  return result;
}

unint64_t sub_274AE5420()
{
  result = qword_2815A30A0;
  if (!qword_2815A30A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5F8);
    sub_274AD938C();
    sub_274AD766C(&qword_2815A2FB8, &qword_280989D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30A0);
  }

  return result;
}

uint64_t WFDatabaseObjectDescriptor.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_274BF4F44();

  return v2;
}

uint64_t sub_274AE5590(char a1)
{
  if (a1)
  {
    return 0x6E61747369737361;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_274AE564C()
{
  if (OUTLINED_FUNCTION_8_1())
  {
    sub_274BF3C64();

    return sub_274BF33D4();
  }

  else
  {
    sub_274BF3494();
    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3B64();
    OUTLINED_FUNCTION_4_2();
    sub_274BF33D4();
    sub_274BF5724();
    OUTLINED_FUNCTION_1_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3494();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3B64();
    return sub_274BF33D4();
  }
}

uint64_t sub_274AE5770()
{
  if (OUTLINED_FUNCTION_8_1())
  {
    sub_274BF3C64();
    OUTLINED_FUNCTION_9_2();
  }

  else
  {
    sub_274BF3494();
    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3B64();
    OUTLINED_FUNCTION_9_2();
    sub_274BF5724();
    OUTLINED_FUNCTION_1_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3494();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3B64();
    sub_274BF33D4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274AE5954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274AF6294();
  *a1 = result;
  return result;
}

void *sub_274AE59CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_274AE59E0()
{
  OUTLINED_FUNCTION_3_4();
  result = sub_274AE5A08();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274AE5A0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_7_4(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AutocompleteAccessoryBar.FadeMaskIntensities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_274AE5A4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_7_4(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274AE5A64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_274AE5AE0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.platformViewReusePool.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AE5CE8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A38);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_274AE5D50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF3544();
  *a1 = result;
  return result;
}

uint64_t sub_274AE5E00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AFC020();
  *a1 = result;
  return result;
}

uint64_t sub_274AE5EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C70);
  OUTLINED_FUNCTION_6_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
  OUTLINED_FUNCTION_6_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_274AE5FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C70);
  OUTLINED_FUNCTION_6_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
    OUTLINED_FUNCTION_6_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_274AE60C0()
{
  type metadata accessor for AutocompleteAccessoryBar(0);
  OUTLINED_FUNCTION_1_1();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF33A4();
    OUTLINED_FUNCTION_0_2();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_2();
  v5 = v0[6];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
  OUTLINED_FUNCTION_0_2();
  v8 = *(v7 + 8);
  v8(v1 + v3 + v5, v6);
  v9 = OUTLINED_FUNCTION_2_4(v0[7]);
  (v8)(v9);
  v10 = OUTLINED_FUNCTION_2_4(v0[8]);
  (v8)(v10);
  v11 = OUTLINED_FUNCTION_2_4(v0[9]);
  (v8)(v11);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_4_4();

  return swift_deallocObject();
}

uint64_t sub_274AE6270()
{

  return swift_deallocObject();
}

uint64_t sub_274AE62AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274AFCCCC();
  *a1 = result;
  return result;
}

uint64_t sub_274AE62F4()
{
  sub_274B03D34(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_274AE6338()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6370()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_274AE63AC()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6414()
{
  sub_274B064E4();

  return swift_deallocObject();
}

uint64_t sub_274AE64BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274AE6524()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A0D8);
  sub_274B08338();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AE65A8()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6680()
{
  sub_274BF1A24();
  OUTLINED_FUNCTION_0_2();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_274AE6714()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6754(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_274BF2A74();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274AE67DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_274BF2A74();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AE6860()
{
  type metadata accessor for MontaraPreviewView();
  OUTLINED_FUNCTION_1_1();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  v4 = v0[6];
  sub_274BF2A74();
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 8))(v3 + v4);
  v6 = v3 + v0[7];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  if (*(v3 + v0[8] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AE699C()
{
  type metadata accessor for MontaraPreviewView();
  OUTLINED_FUNCTION_1_1();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_274BF3114();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v1 + v3;

  v11 = v0[6];
  sub_274BF2A74();
  OUTLINED_FUNCTION_0_2();
  (*(v12 + 8))(v1 + v3 + v11);
  v13 = v1 + v3 + v0[7];
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  if (*(v10 + v0[8] + 8))
  {
  }

  (*(v8 + 8))(v1 + ((v3 + v5 + v9) & ~v9), v6);

  return swift_deallocObject();
}

uint64_t sub_274AE6B60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_274AE6BA4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_274AE6BB0@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableDictionary.subscript.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AE6BE8()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6C40()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B0CFC4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274AE6F24()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6F68()
{
  sub_274BF33D4();
  sub_274B11AF8();
  return swift_getWitnessTable();
}

uint64_t sub_274AE6FCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B10E18();
  *a1 = result;
  return result;
}

uint64_t sub_274AE7004@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3704();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AE7068(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A590);
  OUTLINED_FUNCTION_1_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AE70D0()
{

  return swift_deallocObject();
}

uint64_t sub_274AE7128()
{

  return swift_deallocObject();
}

uint64_t sub_274AE7168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_274AE71FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AE7288()
{
  sub_274BF33D4();
  sub_274BF3A74();
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A708);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_274B178D8(v0, v1);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A718);
  sub_274BF33D4();
  sub_274BF33D4();
  sub_274BF3A74();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_8();
  sub_274B178D8(v2, &qword_28098A718);
  swift_getWitnessTable();
  sub_274B16E38();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274AE74D4()
{
  type metadata accessor for PageIndicator();
  OUTLINED_FUNCTION_14_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AE75EC()
{
  type metadata accessor for PageIndicator();
  OUTLINED_FUNCTION_14_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AE77C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274AE780C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274AE784C()
{

  OUTLINED_FUNCTION_10_1();

  return swift_deallocObject();
}

uint64_t sub_274AE78A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA90);
  sub_274BF32B4();
  sub_274B214A8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AE7924()
{

  return swift_deallocObject();
}

uint64_t sub_274AE7964()
{

  OUTLINED_FUNCTION_9_7();

  return swift_deallocObject();
}

uint64_t sub_274AE7994()
{

  OUTLINED_FUNCTION_9_7();

  return swift_deallocObject();
}

uint64_t sub_274AE79E4@<X0>(void *a1@<X8>)
{
  result = sub_274BF36A4();
  *a1 = v3;
  return result;
}

uint64_t sub_274AE7A38()
{

  return swift_deallocObject();
}

uint64_t sub_274AE7A70()
{

  OUTLINED_FUNCTION_9_7();

  return swift_deallocObject();
}

uint64_t sub_274AE7AC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ContentItemPreview.Action();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    sub_274BF2164();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v0 + v2);
  }

  v6 = (v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_274AE7C4C()
{
  v1 = *(type metadata accessor for ContentItemPreview.Action() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_274BF2164();
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_274AE7D6C()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_274B08760();
  OUTLINED_FUNCTION_3_1();
  sub_274AFA930(v1, &qword_28098AD38);
  OUTLINED_FUNCTION_2_13();
  sub_274B221BC(v2, v3);
  OUTLINED_FUNCTION_13_2();
  sub_274BF4964();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_274BF4054();
  OUTLINED_FUNCTION_1_3();
  return swift_getWitnessTable();
}

uint64_t sub_274AE7E64()
{
  sub_274B08760();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38);
  sub_274BF33D4();
  OUTLINED_FUNCTION_3_1();
  sub_274AFA930(v0, &qword_28098AD38);
  OUTLINED_FUNCTION_2_13();
  sub_274B221BC(v1, v2);
  sub_274BF4964();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  sub_274BF4054();
  sub_274BF3B44();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD50);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD58);
  sub_274BF33D4();
  swift_getOpaqueTypeConformance2();
  sub_274AFA930(&qword_28098AD60, &qword_28098AD50);
  swift_getWitnessTable();
  sub_274AFA930(&qword_28098AD68, &qword_28098AD58);
  return swift_getWitnessTable();
}

uint64_t sub_274AE80FC()
{
  sub_274B08760();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38);
  OUTLINED_FUNCTION_3_1();
  sub_274AFA930(v0, &qword_28098AD38);
  OUTLINED_FUNCTION_2_13();
  sub_274B221BC(v1, v2);
  OUTLINED_FUNCTION_13_2();
  sub_274BF4964();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_274BF4054();
  OUTLINED_FUNCTION_1_3();
  return swift_getWitnessTable();
}

uint64_t sub_274AE824C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3704();
  *a1 = result & 1;
  return result;
}

double sub_274AE82CC@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.overrideTextFieldEdgeInsets.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_274AE8338()
{
  type metadata accessor for UIKitTextEditor();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28098AF40);
  sub_274BF33D4();
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_2();
  sub_274AFA930(v0, &unk_28098AF40);
  OUTLINED_FUNCTION_8_6();
  return swift_getWitnessTable();
}

uint64_t sub_274AE83D8()
{
  MEMORY[0x277C665A0](v0 + 16);
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AE840C()
{

  return swift_deallocObject();
}

uint64_t sub_274AE845C()
{
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AE8490()
{
  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AE84D0()
{

  return swift_deallocObject();
}

uint64_t sub_274AE8510()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AE8570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BF1A24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_274AE861C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_274BF1A24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_274AE86C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF36C4();
  *a1 = result;
  return result;
}

uint64_t sub_274AE8718(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4B0);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AE8788()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4B0);
  sub_274B2C770();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AE8818(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B568);
  OUTLINED_FUNCTION_6_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
    OUTLINED_FUNCTION_6_1();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[9];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_13_4(*(v4 + a3[10]));
      }

      v8 = sub_274BF2934();
      v12 = a3[15];
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_274AE892C()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B568);
  OUTLINED_FUNCTION_6_1();
  if (*(v4 + 84) != v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
    OUTLINED_FUNCTION_6_1();
    if (*(v5 + 84) != v3)
    {
      if (v3 == 0x7FFFFFFF)
      {
        *(v1 + *(v2 + 40)) = (v0 - 1);
        return;
      }

      sub_274BF2934();
    }
  }

  OUTLINED_FUNCTION_80();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_274AE8A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
  OUTLINED_FUNCTION_6_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_274BF2994();
    OUTLINED_FUNCTION_6_1();
    if (*(v11 + 84) != v3)
    {
      return OUTLINED_FUNCTION_13_4(*(v4 + *(a3 + 60)));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 56);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_274AE8B24()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
  OUTLINED_FUNCTION_6_1();
  if (*(v4 + 84) == v3 || (sub_274BF2994(), OUTLINED_FUNCTION_6_1(), *(v5 + 84) == v3))
  {
    OUTLINED_FUNCTION_80();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 60)) = (v0 - 1);
  }
}

uint64_t sub_274AE8C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
  OUTLINED_FUNCTION_6_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_13_4(*(v4 + *(a3 + 20)));
    }

    v8 = sub_274BF2934();
    v9 = v4 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_274AE8CF8()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
  OUTLINED_FUNCTION_6_1();
  if (*(v4 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    sub_274BF2934();
  }

  OUTLINED_FUNCTION_80();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_274AE8DC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_13_4(*a1);
  }

  v7 = sub_274BF29C4();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_274AE8E44()
{
  OUTLINED_FUNCTION_48();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_274BF29C4();
    OUTLINED_FUNCTION_80();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_274AE8EC4()
{

  return swift_deallocObject();
}

void sub_274AE8EFC(id a1, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    sub_274AE8F14(a1);
  }
}

uint64_t sub_274AE8FE4()
{

  return swift_deallocObject();
}

uint64_t sub_274AE901C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 112);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C8);
      v10 = *(a3 + 120);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_274AE9100(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 112);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C8);
      v10 = *(a4 + 120);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_274AE91E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B928);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B8A0);
  sub_274BF3B44();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B898);
  OUTLINED_FUNCTION_3_3();
  sub_274AFA930(v0, &qword_28098B898);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_7_11();
  sub_274AFA930(qword_28098B930, &qword_28098B928);
  return OUTLINED_FUNCTION_7_11();
}

id sub_274AE9364@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B02230();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AE93C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B9B8);
  type metadata accessor for DebugDatabaseView();
  swift_getWitnessTable();
  sub_274ADDF6C();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7_11();
  swift_getOpaqueTypeConformance2();
  sub_274BF3254();
  return swift_getWitnessTable();
}

uint64_t sub_274AE9520()
{

  return swift_deallocObject();
}

uint64_t sub_274AE9558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3684();
  *a1 = result;
  return result;
}

uint64_t sub_274AE95AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274AE967C()
{

  return swift_deallocObject();
}

uint64_t sub_274AE96B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD90);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_274AE976C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD90);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_274AE987C()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

id sub_274AE98B0()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B44AE4();
  *v0 = result;
  return result;
}

__n128 sub_274AE98E0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_274AE9918()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B45030();
  *v0 = result;
  return result;
}

id sub_274AE9948()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B451DC();
  *v0 = result;
  return result;
}

uint64_t sub_274AE99D0()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B4738C();
  *v0 = result;
  return result;
}

uint64_t sub_274AE9A48@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.triggerManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AE9ACC()
{
  type metadata accessor for ContentItemQuickLookModal();

  return swift_getWitnessTable();
}

uint64_t sub_274AE9B50()
{

  return swift_deallocObject();
}

uint64_t sub_274AE9BCC()
{
  type metadata accessor for ContentItemQuickLookModalContent();
  sub_274BF3A74();
  sub_274BF3A74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274AE9C94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C1B8);
  sub_274B4C328();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_274BF3A74();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_274AE9DE8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274AE9E7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AE9F1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C248);
  sub_274BF3B04();
  sub_274AFA930(&qword_28098C250, &qword_28098C248);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEA008()
{
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AEA044()
{

  return swift_deallocObject();
}

uint64_t sub_274AEA130()
{

  return swift_deallocObject();
}

uint64_t sub_274AEA220()
{
  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEA254()
{

  return swift_deallocObject();
}

uint64_t sub_274AEA34C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEA38C()
{

  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AEA3C0()
{

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEA444()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C4E8);
  sub_274B69224();
  sub_274B69268();
  OUTLINED_FUNCTION_0_18();
  sub_274B697E0(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEA528()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AEA588()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AEA64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF1F54();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_274AEA694(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF1F54();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_274AEA6F0()
{
  MEMORY[0x277C665A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_274AEA728(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_274BF2254();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274AEA7B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_274BF2254();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AEA830()
{
  v1 = (_s14WorkflowUICore11PreviewViewVMa_2() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  sub_274BF2254();
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_274AEA920()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C6F8);
  sub_274B6D87C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEA98C()
{
  type metadata accessor for SizeCategoryCappingModifier();
  sub_274BF33D4();
  sub_274B6DCC0();
  return swift_getWitnessTable();
}

uint64_t sub_274AEA9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BF38E4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B568);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_274AEAAA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_274BF38E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B568);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void *sub_274AEAB54@<X0>(void *a1@<X8>)
{
  result = sub_274B6E36C();
  *a1 = result;
  return result;
}

uint64_t sub_274AEABB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B6E8C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AEAC0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B709B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_274AEAC3C@<X0>(void *a1@<X8>)
{
  result = sub_274B70C10();
  *a1 = result;
  return result;
}

uint64_t sub_274AEAC6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B70F58();
  *a1 = result;
  return result;
}

uint64_t sub_274AEAC9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274AEACDC()
{
  MEMORY[0x277C665A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_274AEAD3C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEAD74()
{

  OUTLINED_FUNCTION_9_10();

  return swift_deallocObject();
}

uint64_t sub_274AEADB8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.glyphCache.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AEADE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B7256C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AEAE40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B725D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AEAE98()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AEAECC()
{

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEAF20()
{

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEAF5C()
{
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AEAF90()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_9_10();

  return swift_deallocObject();
}

uint64_t sub_274AEAFD4()
{

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEB014()
{
  sub_274BF33D4();
  sub_274B74720();
  return swift_getWitnessTable();
}

uint64_t sub_274AEB078()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9A8);
  sub_274AFA930(&qword_28098C9C0, &qword_28098C9B8);
  sub_274AFA930(&qword_28098C9C8, &qword_28098C9A8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEB16C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEB29C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CA18);
  OUTLINED_FUNCTION_4_2();
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28098CA20);
  OUTLINED_FUNCTION_12_5();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_76();
  sub_274BF4B54();
  OUTLINED_FUNCTION_2_23();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_274BF48A4();
  OUTLINED_FUNCTION_4_13();
  return swift_getWitnessTable();
}

uint64_t sub_274AEB364()
{
  OUTLINED_FUNCTION_11_7();
  type metadata accessor for WFShowContentDialogRequest.TextLoadingView();
  OUTLINED_FUNCTION_11_7();
  type metadata accessor for WFShowContentDialogRequest.ImageLoadingView();
  sub_274BF3A74();
  OUTLINED_FUNCTION_11_7();
  type metadata accessor for WFShowContentDialogRequest.FileLoadingView();
  sub_274BF3A74();
  OUTLINED_FUNCTION_3_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_20_3();
}

uint64_t sub_274AEB430()
{

  return swift_deallocObject();
}

uint64_t sub_274AEB468@<X0>(uint64_t a1@<X8>)
{
  result = sub_274B770EC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

__n128 sub_274AEB4AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274AEB4B8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274AEB58C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_274AEB5C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B81410();
  *a1 = result;
  return result;
}

uint64_t sub_274AEB5F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B81304();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274AEB64C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B812DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274AEB6AC()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AEB6E0()
{
  OUTLINED_FUNCTION_1_21();
  v0 = sub_274B82E5C();
  return OUTLINED_FUNCTION_3(v0);
}

uint64_t sub_274AEB74C()
{
  OUTLINED_FUNCTION_1_21();
  v0 = sub_274B82E7C();
  return OUTLINED_FUNCTION_3(v0);
}

uint64_t sub_274AEB7B8()
{
  OUTLINED_FUNCTION_1_21();
  v0 = sub_274B83138();
  return OUTLINED_FUNCTION_3(v0);
}

uint64_t sub_274AEB824()
{
  OUTLINED_FUNCTION_1_21();
  v0 = sub_274B831D4();
  return OUTLINED_FUNCTION_3(v0);
}

uint64_t sub_274AEB918@<X0>(void *a1@<X8>)
{
  result = sub_274BF3504();
  *a1 = v3;
  return result;
}

uint64_t sub_274AEB9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BF2164();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_274AEBA98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_274BF2164();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_274AEBB50()
{
  v1 = sub_274BF1F54();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_274AEBC0C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D208);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274AEBC74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D208);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AEBCEC()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B8B388();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274AEBD40()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B8B360();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274AEBD94()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B8B264();
  *v0 = result & 1;
  return result;
}

uint64_t sub_274AEBE88()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B8A3DC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_274AEBEE0()
{

  sub_274AFA1D0(*(v0 + 128), *(v0 + 136), *(v0 + 144));

  sub_274AFA1D0(*(v0 + 176), *(v0 + 184), *(v0 + 192));

  return swift_deallocObject();
}

uint64_t sub_274AEBF70()
{
  v1 = sub_274BF3114();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_274AEC058()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC0D4()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC10C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D3F8);
  sub_274B8CF28();
  type metadata accessor for LoaderProgressView();
  OUTLINED_FUNCTION_0_24();

  return swift_getWitnessTable();
}

uint64_t sub_274AEC178(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274AEC20C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AEC2A4()
{
  type metadata accessor for ContentCollectionGridView();
  OUTLINED_FUNCTION_1_1();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_274B21754(*(v3 + 24), *(v3 + 32));

  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AEC48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_25();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_274AEC500()
{
  OUTLINED_FUNCTION_0_25();
  swift_getWitnessTable();

  return sub_274BF5304();
}

uint64_t sub_274AEC574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_25();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_274AEC5E8@<X0>(uint64_t *a1@<X8>)
{
  result = DatabaseResult.descriptors.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AEC628()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC6B0()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC6F0()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_3_3();
  sub_274AFA930(v1, &qword_28098D7A8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEC7A8()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC7E8()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC834()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC86C()
{
  sub_274BF51A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B0);
  OUTLINED_FUNCTION_27_0();
  swift_getWitnessTable();
  sub_274BF4964();
  v0 = OUTLINED_FUNCTION_11_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C8);
  OUTLINED_FUNCTION_7_19();
  sub_274AFA930(v1, &qword_28098D8C0);
  OUTLINED_FUNCTION_6_2();
  sub_274AFA930(v2, &qword_28098D8C8);
  OUTLINED_FUNCTION_5_15();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_18();
  sub_274AFA930(v3, &qword_28098D8B8);
  swift_getWitnessTable();
  sub_274BF4054();
  sub_274BF32B4();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_274BF3A74();
  sub_274BF46B4();
  sub_274BF33D4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274AECB74()
{

  return swift_deallocObject();
}

uint64_t sub_274AECBBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B990B4();
  *a1 = result;
  return result;
}

uint64_t sub_274AECC28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B9D580();
  *a1 = result;
  return result;
}

uint64_t sub_274AECC58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B9DB00();
  *a1 = result;
  return result;
}

uint64_t sub_274AECCAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B9DF14();
  *a1 = result;
  return result;
}

id sub_274AECE80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B9E610();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AECEFC()
{

  return swift_deallocObject();
}

uint64_t sub_274AECF44()
{

  return swift_deallocObject();
}

uint64_t sub_274AECF8C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLockedByAppProtection.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_274AED000(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274AED040()
{

  return swift_deallocObject();
}

uint64_t sub_274AED098()
{
  sub_274BF33D4();
  sub_274BF3A74();
  sub_274BA3B7C();
  OUTLINED_FUNCTION_11_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_0();
  return swift_getWitnessTable();
}

uint64_t sub_274AED120()
{
  sub_274B4C38C();

  return swift_deallocObject();
}

uint64_t sub_274AED180()
{
  type metadata accessor for UIKitTextEditor();
  type metadata accessor for UIKitTextFieldHost();
  sub_274BF3A74();
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_0();
  return swift_getWitnessTable();
}

uint64_t sub_274AED228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3684();
  *a1 = result;
  return result;
}

uint64_t sub_274AED2B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BA9150();
  *a1 = result;
  return result;
}

uint64_t sub_274AED304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BA9060();
  *a1 = result;
  return result;
}

uint64_t sub_274AED334(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DEF8);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AED3A8()
{

  return swift_deallocObject();
}

uint64_t sub_274AED3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DEF8);
  OUTLINED_FUNCTION_3_2();
  sub_274AFA930(v0, &qword_28098DEF8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AED4D8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.userInterface.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AED534()
{
  sub_274BF33D4();
  sub_274BADA80();
  return swift_getWitnessTable();
}

uint64_t sub_274AED5A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3644();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AED5FC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.debugStatistics.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AED62C()
{
  sub_274BF33D4();
  sub_274BAE66C();
  return swift_getWitnessTable();
}

uint64_t sub_274AED694()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E038);
  sub_274BAE804();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore25ActionDrawerDebugSnapshot33_52078985FEC5CEC919BB9D4DED11073CLLVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return OUTLINED_FUNCTION_21_4(v1);
}

uint64_t sub_274AED7A4()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_274BC19D4(&unk_28098E078);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AED838()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989EA8);
  OUTLINED_FUNCTION_14_8();
  sub_274BC19D4(v1);
  OUTLINED_FUNCTION_17();
  sub_274BC19D4(v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AED928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF4C14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274AED958()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDA84()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDAD4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E508);
  OUTLINED_FUNCTION_0_2();
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  return a2;
}

BOOL sub_274AEDC3C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_274AEDC68()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDCCC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnvironmentFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AEDD24()
{
  sub_274BF33D4();
  sub_274BC4134();
  return swift_getWitnessTable();
}

uint64_t sub_274AEDD88()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDDC4()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDE1C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDE98()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDEF0()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_17_5();

  return swift_deallocObject();
}

uint64_t sub_274AEDF28(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E950);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274AEDF90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E950);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AEE054()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274AEE094()
{
  swift_unknownObjectRelease();

  sub_274B4C9F8(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  sub_274B21754(*(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_274AEE118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C728);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_274AEE1B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C728);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AEE264()
{

  return swift_deallocObject();
}

uint64_t sub_274AEE29C@<X0>(uint64_t *a1@<X8>)
{
  result = MutablePublishedBox.value.getter();
  *a1 = result;
  return result;
}

__n128 sub_274AEE2D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274AEE318()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_274AEE350()
{

  return swift_deallocObject();
}

uint64_t sub_274AEE394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF23A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274AEE3C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF23D4();
  *a1 = result;
  return result;
}

uint64_t sub_274AEE430()
{

  sub_274AEF5C0(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_274AEE51C()
{
  OUTLINED_FUNCTION_58();
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_14_10();
  type metadata accessor for AsyncLoaderProgressView();
  OUTLINED_FUNCTION_1_1();
  if (!OUTLINED_FUNCTION_29_3())
  {
    OUTLINED_FUNCTION_6_9();
    (*(v4 + 8))(v2, v3);
  }

  OUTLINED_FUNCTION_14_10();
  type metadata accessor for AsyncLoaderProgressView.ContentState();
  sub_274BF47B4();

  OUTLINED_FUNCTION_17_6(v0[11]);

  OUTLINED_FUNCTION_17_6(v0[12]);

  OUTLINED_FUNCTION_17_6(v0[13]);

  OUTLINED_FUNCTION_55();

  return swift_deallocObject();
}

uint64_t sub_274AEE638()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AEE66C()
{
  OUTLINED_FUNCTION_58();
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_14_10();
  type metadata accessor for AsyncLoaderProgressView();
  OUTLINED_FUNCTION_1_1();
  if (!OUTLINED_FUNCTION_29_3())
  {
    OUTLINED_FUNCTION_6_9();
    (*(v4 + 8))(v2, v3);
  }

  OUTLINED_FUNCTION_14_10();
  type metadata accessor for AsyncLoaderProgressView.ContentState();
  sub_274BF47B4();

  OUTLINED_FUNCTION_17_6(v0[11]);

  OUTLINED_FUNCTION_17_6(v0[12]);

  OUTLINED_FUNCTION_17_6(v0[13]);

  OUTLINED_FUNCTION_55();

  return swift_deallocObject();
}

uint64_t sub_274AEE79C()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AEE7D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EDF0);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274AEE838@<X0>(uint64_t a1@<X8>)
{
  result = sub_274BF3724();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_274AEE870()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EDD8);
  sub_274BF3A74();
  sub_274BF46B4();
  sub_274BF31B4();
  OUTLINED_FUNCTION_4_2();
  sub_274BF33D4();
  sub_274BD66FC();
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_14();
  sub_274BD7110(v0, v1);
  OUTLINED_FUNCTION_11_10();
  return swift_getWitnessTable();
}

uint64_t sub_274AEE958()
{
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A860);
  OUTLINED_FUNCTION_4_2();
  sub_274BF3A74();
  swift_getWitnessTable();
  sub_274B174F4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_274BF48A4();
  OUTLINED_FUNCTION_4_13();
  return swift_getWitnessTable();
}

uint64_t sub_274AEEB34()
{
  v1 = sub_274BF1F54();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_274AEEBC4()
{

  return swift_deallocObject();
}

uint64_t sub_274AEEBFC@<X0>(uint64_t a1@<X8>)
{
  result = sub_274BDC7B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_274AEEC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274AEECB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274AEEDC8()
{
  sub_274BF3A74();
  OUTLINED_FUNCTION_3_0();
  return swift_getWitnessTable();
}

uint64_t sub_274AEEE44()
{
  type metadata accessor for QuickLookHostingView();
  OUTLINED_FUNCTION_0_37();

  return swift_getWitnessTable();
}

uint64_t sub_274AEEE94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF36E4();
  *a1 = result;
  return result;
}

uint64_t sub_274AEEEF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F4F8);
  OUTLINED_FUNCTION_1_33();
  sub_274AFA930(v0, &qword_28098F4F8);
  sub_274BE3A20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEEF94()
{
  sub_274BF3C54();
  OUTLINED_FUNCTION_1_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_274AEF010()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F510);
  sub_274BF3B24();
  OUTLINED_FUNCTION_17();
  sub_274AFA930(v0, &qword_28098F510);
  sub_274BE4320();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEF0B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BE4510();
  *a1 = result;
  return result;
}

uint64_t sub_274AEF0E8()
{

  return swift_deallocObject();
}

uint64_t sub_274AEF120()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F578);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F588);
  sub_274BF33D4();
  sub_274B83324(&qword_28098F580, &qword_28098F578);
  swift_getWitnessTable();
  sub_274B83324(&qword_28098F590, &qword_28098F588);
  return swift_getWitnessTable();
}

uint64_t sub_274AEF22C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEF28C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5B0);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

id sub_274AEF2EC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 identifier];
  *a2 = result;
  return result;
}

uint64_t sub_274AEF320()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AEF354()
{
  sub_274B4C38C();

  return swift_deallocObject();
}

uint64_t sub_274AEF390()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F5B0);
  sub_274BE8048();
  OUTLINED_FUNCTION_1_35();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEF3E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F640);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F648);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F5B0);
  sub_274BE8048();
  OUTLINED_FUNCTION_1_35();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_2();
  sub_274AFA930(v0, &qword_28098F648);
  return swift_getOpaqueTypeConformance2();
}

char *sub_274AEF52C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274AEF54C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274AEF56C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

uint64_t sub_274AEF5C0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

id WFAskLLMFeedbackPresenter.init(model:conversation:controller:wasBlockedBySafety:viewControllerForPresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_accessedURLs] = MEMORY[0x277D84FA0];
  v12 = OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_model;
  v13 = sub_274BF1A24();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v5[v12], a1, v13);
  *&v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_conversation] = a2;
  *&v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_controller] = a3;
  v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_wasBlockedBySafety] = a4;
  *&v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_viewControllerForPresentation] = a5;
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a1, v13);
  return v15;
}

Swift::Void __swiftcall WFAskLLMFeedbackPresenter.presentRAC()()
{
  sub_274BF25F4();
  OUTLINED_FUNCTION_5();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  v4 = (&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274AEF860(v4);
  sub_274BF4D64();
  (*(v1 + 8))(v4);
}

void sub_274AEF860(uint64_t *a1@<X8>)
{
  v116 = a1;
  v140 = sub_274BF1F54();
  v115 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_274BF2644();
  v124 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v138 = v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v125 = v114 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989608);
  MEMORY[0x28223BE20](v6 - 8);
  v123 = v114 - v7;
  v121 = sub_274BF2654();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v9 = (v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989610);
  MEMORY[0x28223BE20](v10 - 8);
  v137 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v146 = v114 - v13;
  MEMORY[0x28223BE20](v14);
  v128 = v114 - v15;
  MEMORY[0x28223BE20](v16);
  v127 = v114 - v17;
  v119 = sub_274BF2604();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v126 = v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_274BF4F94();
  MEMORY[0x28223BE20](v19 - 8);
  v114[2] = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_274BF4DC4();
  v21 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v23 = v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_274BF1AC4();
  MEMORY[0x28223BE20](v24 - 8);
  v117 = v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_274BF4DD4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v136 = v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v114 - v30;
  v135 = v1;
  v32 = *(v1 + OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_conversation);
  v33 = sub_274BF19C4();
  v34 = v33;
  v148 = MEMORY[0x277D84F90];
  v35 = *(v33 + 16);
  v122 = v9;
  if (v35)
  {
    v133 = v23;
    v114[1] = v32;
    v36 = 0;
    v37 = v33 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v143 = v27 + 88;
    *&v144 = v27 + 16;
    LODWORD(v142) = *MEMORY[0x277D42DB8];
    v141 = v27 + 8;
    v132 = (v27 + 96);
    v131 = (v21 + 32);
    v129 = (v21 + 8);
    v147 = MEMORY[0x277D84F90];
    v38 = v136;
    v130 = v37;
    while (1)
    {
      if (v36 >= *(v34 + 16))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v39 = *(v27 + 16);
      v39(v31, v37 + *(v27 + 72) * v36, v26);
      v39(v38, v31, v26);
      v40 = (*(v27 + 88))(v38, v26);
      if (v40 == v142)
      {
        v41 = v35;
        v42 = v27;
        v43 = v34;
        (*v132)(v38, v26);
        v44 = v133;
        v45 = v38;
        v46 = v134;
        (*v131)(v133, v45, v134);
        v47 = sub_274BF4DB4();
        v48 = [v47 CGImageBuilder];

        if (!v48)
        {
          __break(1u);
          return;
        }

        v49 = [v48 buildCGImage];

        (*v129)(v44, v46);
        v50 = (*v141)(v31, v26);
        v34 = v43;
        v27 = v42;
        v38 = v136;
        v35 = v41;
        v37 = v130;
        if (v49)
        {
          MEMORY[0x277C649C0](v50);
          if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_274BF5154();
          }

          sub_274BF5184();
          v147 = v148;
          v38 = v136;
        }
      }

      else
      {
        v51 = *v141;
        (*v141)(v31, v26);
        v51(v38, v26);
      }

      if (v35 == ++v36)
      {

        goto LABEL_14;
      }
    }
  }

  v147 = MEMORY[0x277D84F90];
LABEL_14:
  sub_274BF1B04();
  swift_allocObject();
  sub_274BF1AF4();
  sub_274BF1AB4();
  sub_274BF1AD4();
  v148 = sub_274AF0A44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989618);
  sub_274AF56D8();
  v52 = sub_274BF1AE4();
  v54 = v53;
  v133 = 0;

  sub_274BF4F84();
  v55 = sub_274BF4F64();
  v57 = v56;
  sub_274AF58B0(v52, v54);

  if (!v57)
  {
    v57 = 0x8000000274C09920;
    v55 = 0xD000000000000033;
  }

  v141 = sub_274BF19D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989638);
  v58 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989640) - 8);
  v59 = (*(*v58 + 80) + 32) & ~*(*v58 + 80);
  v60 = swift_allocObject();
  v144 = xmmword_274BF8D80;
  *(v60 + 16) = xmmword_274BF8D80;
  v61 = (v60 + v59);
  v62 = v58[14];
  *v61 = 0xD000000000000012;
  v61[1] = 0x8000000274C098B0;
  v63 = *MEMORY[0x277D08658];
  v64 = sub_274BF2674();
  (*(*(v64 - 8) + 104))(v61, v63, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989648);
  v65 = swift_allocObject();
  *(v65 + 16) = v144;
  *(v65 + 32) = sub_274BF1A14();
  *(v65 + 40) = v66;
  *(v61 + v62) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  sub_274AF4BB8(&qword_280989658, MEMORY[0x277D08668]);
  v136 = sub_274BF4E14();
  (*(v118 + 104))(v126, *MEMORY[0x277D085B8], v119);
  v67 = v122;
  *v122 = v55;
  v67[1] = v57;
  (*(v120 + 104))(v67, *MEMORY[0x277D08638], v121);
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
LABEL_48:
    swift_once();
  }

  v68 = qword_28098C7C0;
  v69 = sub_274BF4F04();
  v70 = sub_274BF4F04();

  v71 = [v68 localizedStringForKey:v69 value:v70 table:0];

  sub_274BF4F44();
  sub_274BF4FE4();
  v72 = sub_274BF4F04();
  v73 = sub_274BF4F04();

  v74 = [v68 localizedStringForKey:v72 value:v73 table:0];

  sub_274BF4F44();
  v75 = sub_274BF2634();
  __swift_storeEnumTagSinglePayload(v123, 1, 1, v75);
  v76 = v127;
  sub_274BF2624();
  v77 = v145;
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v145);
  __swift_storeEnumTagSinglePayload(v128, 1, 1, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989660);
  v78 = v124;
  v79 = (*(v124 + 80) + 32) & ~*(v124 + 80);
  v143 = *(v124 + 72);
  v80 = swift_allocObject();
  *(v80 + 16) = v144;
  v142 = v79;
  v134 = v80;
  sub_274AF1354();
  v81 = v147;
  v82 = sub_274B22B94(v147);
  v83 = 0;
  v84 = v81 & 0xC000000000000001;
  v85 = v81 & 0xFFFFFFFFFFFFFF8;
  *&v144 = v78 + 32;
  v86 = MEMORY[0x277D84F90];
LABEL_18:
  v87 = v146;
  while (v82 != v83)
  {
    if (v84)
    {
      v88 = MEMORY[0x277C65230](v83, v147);
    }

    else
    {
      if (v83 >= *(v85 + 16))
      {
        goto LABEL_46;
      }

      v88 = v147[v83 + 4];
    }

    v89 = v88;
    v90 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    sub_274AF162C(v88, v87);
    v87 = v146;

    if (__swift_getEnumTagSinglePayload(v87, 1, v77) != 1)
    {
      v91 = *v144;
      (*v144)(v125, v87, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBACA4();
        v86 = v93;
      }

      v92 = *(v86 + 16);
      if (v92 >= *(v86 + 24) >> 1)
      {
        sub_274BBACA4();
        v86 = v94;
      }

      *(v86 + 16) = v92 + 1;
      v91(v86 + v142 + v92 * v143, v125, v77);
      v83 = v90;
      goto LABEL_18;
    }

    sub_274AF5848(v87);
    ++v83;
  }

  v148 = v134;
  sub_274AF398C(v86);
  v95 = v148;
  v96 = *(v141 + 16);
  if (v96)
  {
    v134 = v148;
    v97 = *(v115 + 16);
    v98 = v141 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
    v146 = *(v115 + 72);
    v147 = v97;
    v99 = (v115 + 8);
    v100 = MEMORY[0x277D84F90];
    v101 = v137;
    do
    {
      v102 = v139;
      v103 = v140;
      (v147)(v139, v98, v140);
      sub_274AF1F44(v102, v101);
      (*v99)(v102, v103);
      v104 = v145;
      if (__swift_getEnumTagSinglePayload(v101, 1, v145) == 1)
      {
        sub_274AF5848(v101);
      }

      else
      {
        v105 = *v144;
        (*v144)(v138, v101, v104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274BBACA4();
          v100 = v107;
        }

        v106 = *(v100 + 16);
        if (v106 >= *(v100 + 24) >> 1)
        {
          sub_274BBACA4();
          v100 = v108;
        }

        *(v100 + 16) = v106 + 1;
        v105(v100 + v142 + v106 * v143, v138, v145);
      }

      v98 += v146;
      --v96;
    }

    while (v96);

    v95 = v134;
  }

  else
  {

    v100 = MEMORY[0x277D84F90];
  }

  v148 = v95;
  sub_274AF398C(v100);
  v109 = objc_allocWithZone(sub_274BF2664());
  v110 = sub_274BF2614();
  v111 = v116;
  *v116 = v110;
  v112 = *MEMORY[0x277D08530];
  v113 = sub_274BF25F4();
  (*(*(v113 - 8) + 104))(v111, v112, v113);
}

uint64_t sub_274AF0A44()
{
  v0 = sub_274BF4DD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_274BF1974();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_274BF1F54();
  v8 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_274BF1954();
  v10 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v81 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v66 - v13;
  v14 = sub_274BF19B4();
  v15 = *(v14 + 16);
  if (v15)
  {
    v104 = MEMORY[0x277D84F90];
    v79 = v15;
    sub_274B63DBC(0, v15, 0);
    v16 = 0;
    v17 = v104;
    v78 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v77 = v10 + 16;
    v76 = v10 + 88;
    v86 = *MEMORY[0x277CFC040];
    v75 = (v10 + 96);
    v95 = v8 + 16;
    v69 = v8;
    v93 = v5 + 16;
    v94 = (v8 + 8);
    v92 = (v1 + 88);
    v91 = *MEMORY[0x277D42DD0];
    v89 = (v1 + 8);
    v90 = (v5 + 8);
    v88 = (v1 + 96);
    v74 = (v10 + 8);
    v68 = *MEMORY[0x277CFC048];
    v99 = v3;
    v100 = v0;
    v102 = v4;
    v18 = v70;
    v19 = v10;
    v73 = v10;
    v80 = v14;
    v67 = v5;
    v101 = v7;
    while (v16 < *(v14 + 16))
    {
      v84 = v17;
      v85 = v16;
      v20 = *(v19 + 16);
      v21 = v87;
      v20(v87, v78 + *(v19 + 72) * v16, v18);
      v22 = v81;
      v20(v81, v21, v18);
      v23 = (*(v19 + 88))(v22, v18);
      v83 = v23;
      if (v23 == v86)
      {
        (*v75)(v22, v18);
        v27 = *v22;
        v28 = sub_274BF19A4();
        v29 = *(v28 + 16);
        v30 = v69;
        v82 = v27;
        if (v29)
        {
          v103 = MEMORY[0x277D84F90];
          sub_274B63DF4();
          v26 = v103;
          v31 = *(v30 + 80);
          v98 = v28;
          v32 = v28 + ((v31 + 32) & ~v31);
          v33 = *(v30 + 72);
          v34 = *(v30 + 16);
          do
          {
            v35 = v96;
            v36 = v97;
            v34(v96, v32, v97);
            v37 = sub_274BF1E94();
            v39 = v38;
            (*v94)(v35, v36);
            v103 = v26;
            v40 = v26[2];
            if (v40 >= v26[3] >> 1)
            {
              sub_274B63DF4();
              v26 = v103;
            }

            v26[2] = v40 + 1;
            v41 = &v26[2 * v40];
            *(v41 + 4) = v37;
            *(v41 + 5) = v39;
            v32 += v33;
            --v29;
          }

          while (v29);

          v3 = v99;
          v0 = v100;
          v4 = v102;
          v19 = v73;
          v27 = v82;
        }

        else
        {

          v26 = MEMORY[0x277D84F90];
        }

        v42 = *(sub_274BF1994() + 16);

        v43 = sub_274BF1984();
        v44 = *(v43 + 16);
        v45 = v101;
        if (v44)
        {
          v72 = v42;
          v103 = MEMORY[0x277D84F90];
          sub_274B63DF4();
          v46 = v43;
          v24 = v103;
          v47 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v71 = v46;
          v48 = v46 + v47;
          v98 = *(v67 + 72);
          v49 = *(v67 + 16);
          do
          {
            v49(v45, v48, v4);
            sub_274BF1964();
            v50 = (*v92)(v3, v0);
            if (v50 == v91)
            {
              (*v90)(v45, v4);
              (*v88)(v3, v0);
              v52 = *v3;
              v51 = v3[1];
            }

            else
            {
              sub_274AF4BB8(&qword_280989678, MEMORY[0x277CFC060]);
              v53 = sub_274BF4E84();
              v54 = v4;
              v52 = v53;
              v55 = v45;
              v51 = v56;
              (*v90)(v55, v54);
              (*v89)(v3, v0);
            }

            v103 = v24;
            v57 = v24[2];
            if (v57 >= v24[3] >> 1)
            {
              sub_274B63DF4();
              v24 = v103;
            }

            v24[2] = v57 + 1;
            v58 = &v24[2 * v57];
            v58[4] = v52;
            v58[5] = v51;
            v3 = v99;
            v48 += v98;
            --v44;
            v0 = v100;
            v45 = v101;
            v4 = v102;
          }

          while (v44);
          v18 = v70;
          (*v74)(v87, v70);

          v19 = v73;
          v42 = v72;
        }

        else
        {

          v18 = v70;
          (*v74)(v87, v70);
          v24 = MEMORY[0x277D84F90];
        }

        v25 = v42 != 0;
      }

      else
      {
        if (v23 != v68)
        {
          goto LABEL_31;
        }

        (*v74)(v87, v18);
        (*v75)(v22, v18);
        v24 = 0;
        v26 = *v22;
        v25 = *(v22 + 1);
      }

      v17 = v84;
      v59 = v85;
      v104 = v84;
      v61 = *(v84 + 16);
      v60 = *(v84 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_274B63DBC(v60 > 1, v61 + 1, 1);
        v59 = v85;
        v18 = v70;
        v17 = v104;
      }

      v16 = v59 + 1;
      v62 = v83 != v86;
      *(v17 + 16) = v61 + 1;
      v63 = v17 + 32 * v61;
      *(v63 + 32) = v26;
      *(v63 + 40) = v25;
      *(v63 + 48) = v24;
      *(v63 + 56) = v62;
      v4 = v102;
      v14 = v80;
      if (v16 == v79)
      {
        v64 = v17;

        return v64;
      }
    }

    __break(1u);
LABEL_31:
    result = sub_274BF5C14();
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_274AF1354()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989608);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_274BF2654();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = sub_274BF1944();
  v6[1] = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D08638], v3);
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v8 = qword_28098C7C0;
  v9 = sub_274BF4F04();
  v10 = sub_274BF4F04();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  sub_274BF4F44();
  sub_274BF4FE4();
  v12 = sub_274BF4F04();
  v13 = sub_274BF4F04();

  v14 = [v8 localizedStringForKey:v12 value:v13 table:0];

  sub_274BF4F44();
  v15 = sub_274BF2634();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v15);
  return sub_274BF2624();
}

uint64_t sub_274AF162C@<X0>(CGImage *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v71 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989608);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v58 - v3;
  v61 = sub_274BF2654();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_274BF2BE4();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v58 - v9;
  MEMORY[0x28223BE20](v10);
  v60 = &v58 - v11;
  v66 = sub_274BF2BB4();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_274BF1F54();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_274BF2164();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_274BF5984();

  v72 = 0xD000000000000014;
  v73 = 0x8000000274C099C0;
  sub_274BF2154();
  v21 = sub_274BF2124();
  v23 = v22;
  (*(v18 + 8))(v20, v17);
  MEMORY[0x277C648E0](v21, v23);

  MEMORY[0x277C648E0](1735290926, 0xE400000000000000);
  v24 = objc_opt_self();
  v25 = sub_274BF4F04();
  v26 = [v24 createTemporaryFileWithFilename_];

  if (!v26)
  {

    sub_274BF2A54();
    v42 = sub_274BF2BD4();
    v43 = sub_274BF5494();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_274AD4000, v42, v43, "Failed to create temporary file URL", v44, 2u);
      MEMORY[0x277C664A0](v44, -1, -1);
    }

    (*(v68 + 8))(v7, v69);
    goto LABEL_16;
  }

  sub_274BF1F04();

  v27 = sub_274BF1ED4();
  sub_274BF2B44();
  sub_274BF2B04();
  (*(v12 + 8))(v14, v66);
  v28 = sub_274BF4F04();

  v29 = CGImageDestinationCreateWithURL(v27, v28, 1uLL, 0);

  if (!v29)
  {

    v45 = v63;
    sub_274BF2A54();
    v46 = sub_274BF2BD4();
    v47 = sub_274BF5494();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v70;
    v50 = v67;
    if (v48)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_274AD4000, v46, v47, "CGImageDestinationCreateWithURL failed", v51, 2u);
      MEMORY[0x277C664A0](v51, -1, -1);
    }

    (*(v68 + 8))(v45, v69);
    (*(v50 + 8))(v16, v49);
    goto LABEL_16;
  }

  CGImageDestinationAddImage(v29, v64, 0);
  v30 = CGImageDestinationFinalize(v29);
  v31 = v67;
  if (!v30)
  {

    v52 = v60;
    sub_274BF2A54();
    v53 = sub_274BF2BD4();
    v54 = sub_274BF5494();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_274AD4000, v53, v54, "CGImageDestinationFinalize failed", v55, 2u);
      MEMORY[0x277C664A0](v55, -1, -1);
    }

    (*(v68 + 8))(v52, v69);
    (*(v31 + 8))(v16, v70);
LABEL_16:
    v41 = 1;
    goto LABEL_17;
  }

  v32 = v65;
  (*(v67 + 16))(v65, v16, v70);
  (*(v59 + 104))(v32, *MEMORY[0x277D08628], v61);
  sub_274BF4FE4();
  v69 = v16;
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v33 = qword_28098C7C0;
  v34 = sub_274BF4F04();
  v35 = sub_274BF4F04();

  v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

  sub_274BF4F44();
  sub_274BF4FE4();
  v37 = sub_274BF4F04();
  v38 = sub_274BF4F04();

  v39 = [v33 localizedStringForKey:v37 value:v38 table:0];

  sub_274BF4F44();
  v40 = sub_274BF2634();
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v40);
  sub_274BF2624();

  (*(v31 + 8))(v69, v70);
  v41 = 0;
LABEL_17:
  v56 = sub_274BF2644();
  return __swift_storeEnumTagSinglePayload(v71, v41, 1, v56);
}

uint64_t sub_274AF1F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_274BF2BE4();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989608);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v42 - v7;
  v8 = sub_274BF2654();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_274BF1F54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  if (sub_274BF1F14())
  {
    v21 = *(v12 + 16);
    v21(v17, a1, v11);
    v45 = v8;
    swift_beginAccess();
    sub_274B90DB4(v20, v17);
    swift_endAccess();
    (*(v12 + 8))(v20, v11);
    v21(v10, a1, v11);
    (*(v43 + 104))(v10, *MEMORY[0x277D08628], v45);
    sub_274BF4FE4();
    if (qword_2809893B8 != -1)
    {
      swift_once();
    }

    v22 = qword_28098C7C0;
    v23 = sub_274BF4F04();
    v24 = sub_274BF4F04();

    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    sub_274BF4F44();
    sub_274BF4FE4();
    v26 = sub_274BF4F04();
    v27 = sub_274BF4F04();

    v28 = [v22 localizedStringForKey:v26 value:v27 table:0];

    sub_274BF4F44();
    sub_274BF1EC4();
    v29 = sub_274BF2634();
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v29);
    v30 = v47;
    sub_274BF2624();
    v31 = 0;
  }

  else
  {
    sub_274BF2A54();
    (*(v12 + 16))(v14, a1, v11);
    v32 = sub_274BF2BD4();
    v33 = sub_274BF5494();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48[0] = v35;
      *v34 = 136315138;
      sub_274AF4BB8(&qword_280989668, MEMORY[0x277CC9260]);
      v36 = sub_274BF5BE4();
      v38 = v37;
      (*(v12 + 8))(v14, v11);
      v39 = sub_274AF4F60(v36, v38, v48);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_274AD4000, v32, v33, "Failed to access security scoped resource at %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x277C664A0](v35, -1, -1);
      MEMORY[0x277C664A0](v34, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }

    (*(v44 + 8))(v5, v45);
    v31 = 1;
    v30 = v47;
  }

  v40 = sub_274BF2644();
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v40);
}

uint64_t sub_274AF25B0()
{
  v0 = sub_274BF5B24();

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

uint64_t sub_274AF2680(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_274BF5CD4();
  a2(v5, a1);
  return sub_274BF5D44();
}

uint64_t sub_274AF26D4()
{
  sub_274BF5CD4();
  sub_274BF5D04();
  return sub_274BF5D44();
}

uint64_t sub_274AF274C()
{
  sub_274BF4FF4();
}

uint64_t sub_274AF27B4()
{
  sub_274BF4FF4();
}

uint64_t sub_274AF28AC()
{
  sub_274BF4FF4();
}

uint64_t sub_274AF2980()
{
  sub_274BF4FF4();
}

uint64_t sub_274AF2B4C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_274BF5CD4();
  a3(v6, a2);
  return sub_274BF5D44();
}

uint64_t sub_274AF2B98()
{
  sub_274BF5CD4();
  sub_274BF4FF4();

  return sub_274BF5D44();
}

uint64_t sub_274AF2C14(uint64_t a1, unsigned __int8 a2)
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](a2);
  return sub_274BF5D44();
}

uint64_t sub_274AF2C58()
{
  sub_274BF5CD4();
  sub_274BF5D04();
  return sub_274BF5D44();
}

uint64_t sub_274AF2C9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AF25B0();
  *a1 = result;
  return result;
}

uint64_t sub_274AF2CCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274AE5590(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_274AF2D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AF25B0();
  *a1 = result;
  return result;
}

uint64_t sub_274AF2D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AF2604();
  *a1 = result;
  return result;
}

uint64_t sub_274AF2D70(uint64_t a1)
{
  v2 = sub_274AF61E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274AF2DAC(uint64_t a1)
{
  v2 = sub_274AF61E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274AF2DE8(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v15 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989780);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274AF61E8();
  sub_274BF5D84();
  if (a5)
  {
    LOBYTE(v16) = 1;
    sub_274BF5B84();
  }

  else
  {
    v16 = a2;
    v17 = a3 & 1;
    v18 = v15;
    v19 = 0;
    sub_274AF623C();
    sub_274BF5BB4();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_274AF2F84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D75636F64 && a2 == 0xE900000000000073;
  if (v4 || (sub_274BF5C24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567616D49736168 && a2 == 0xE800000000000000;
    if (v6 || (sub_274BF5C24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047348 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_274BF5C24();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_274AF30A4(unsigned __int8 a1)
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](a1);
  return sub_274BF5D44();
}

uint64_t sub_274AF30EC(char a1)
{
  if (!a1)
  {
    return 0x746E656D75636F64;
  }

  if (a1 == 1)
  {
    return 0x6567616D49736168;
  }

  return 1954047348;
}

uint64_t sub_274AF3164()
{
  v1 = *v0;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v1);
  return sub_274BF5D44();
}

uint64_t sub_274AF31A8(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v13[2] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989838);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274AF6668();
  sub_274BF5D84();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  sub_274AF66BC();
  sub_274BF5BB4();
  if (!v4)
  {
    LOBYTE(v15) = 1;
    sub_274BF5B94();
    v15 = a4;
    v14 = 2;
    sub_274BF5BB4();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_274AF3388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274AF2F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274AF33B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AF309C();
  *a1 = result;
  return result;
}

uint64_t sub_274AF33D8(uint64_t a1)
{
  v2 = sub_274AF6668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274AF3414(uint64_t a1)
{
  v2 = sub_274AF6668();

  return MEMORY[0x2821FE720](a1, v2);
}

id WFAskLLMFeedbackPresenter.viewControllerForPresentation(controller:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_viewControllerForPresentation);
  if (v1)
  {

    return v1;
  }

  else
  {
    result = sub_274BF5AC4();
    __break(1u);
  }

  return result;
}

uint64_t WFAskLLMFeedbackPresenter.evaluationDidComplete(controller:evaluation:)()
{
  sub_274BF1F54();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_accessedURLs;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  v17 = v3 + 16;

  for (i = 0; v11; result = (*(v3 + 8))(v6, v0))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v3 + 16))(v6, *(v8 + 48) + *(v3 + 72) * (v16 | (v15 << 6)), v0);
    sub_274BF1EF4();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 56 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id WFAskLLMFeedbackPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFAskLLMFeedbackPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_274AF380C()
{
  swift_getObjectType();
  sub_274AF4BB8(&qword_280989600, type metadata accessor for WFAskLLMFeedbackPresenter);

  JUMPOUT(0x277C64640);
}

void sub_274AF3898()
{
  swift_getObjectType();
  sub_274AF4BB8(&qword_280989600, type metadata accessor for WFAskLLMFeedbackPresenter);

  JUMPOUT(0x277C64630);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_274AF396C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_274AF398C(uint64_t a1)
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

  sub_274BDAA78(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_274BF2644();
  if (v7 < v3)
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

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_274AF3A8C(uint64_t a1)
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

  result = sub_274BDAA90(result, 1);
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

uint64_t sub_274AF3B58(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x277C64B10](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_274AF3BAC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x277C61E50](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_274AF3C00(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x277C64B20](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_274AF3C58(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x277C61E60](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_274AF3D5C(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x277C655C0](*&a1);
}

uint64_t sub_274AF3DBC@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_3_13();
  *a1 = result;
  return result;
}

uint64_t sub_274AF3DF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_274BDDADC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_274AF3E20(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_274BDB8BC(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_274AF3E48(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_274BDDB08(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_274AF3E78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_274BDDB40(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_274AF3EAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_274BDDB8C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_274AF3EF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_274BDDAA4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_274AF3F8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_274BDD9B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_274AF3FC0@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_274AF397C(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_274AF3FF4@<X0>(_WORD *a1@<X8>)
{
  result = CGSizeMake(*v1);
  *a1 = result;
  return result;
}

double sub_274AF4024@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_274AF4030()
{
  sub_274AF4BB8(&qword_2809897A8, type metadata accessor for Weight);
  sub_274AF4BB8(&qword_2809897B0, type metadata accessor for Weight);
  sub_274AF62D0();
  return sub_274BF5B04();
}

_DWORD *sub_274AF40F8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_274AF4108@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_274AF4114()
{
  sub_274AF4BB8(&qword_2809897F0, type metadata accessor for UILayoutPriority);
  sub_274AF4BB8(&qword_2809897F8, type metadata accessor for UILayoutPriority);
  return sub_274BF5B04();
}

uint64_t sub_274AF41D0()
{
  sub_274AF4BB8(&qword_280989798, type metadata accessor for WFContentItemListThumbnailOption);
  sub_274AF4BB8(&qword_2809897A0, type metadata accessor for WFContentItemListThumbnailOption);

  return sub_274BF5B04();
}

uint64_t sub_274AF428C()
{
  sub_274AF4BB8(&qword_280989560, type metadata accessor for WFTextFieldAutocapitalizationType);
  sub_274AF4BB8(&qword_280989568, type metadata accessor for WFTextFieldAutocapitalizationType);

  return sub_274BF5B04();
}

uint64_t sub_274AF4348()
{
  sub_274AF4BB8(&qword_280989570, type metadata accessor for WFTextFieldKeyboardType);
  sub_274AF4BB8(&qword_280989578, type metadata accessor for WFTextFieldKeyboardType);

  return sub_274BF5B04();
}

uint64_t sub_274AF4404()
{
  sub_274AF4BB8(&qword_280989580, type metadata accessor for Key);
  sub_274AF4BB8(&qword_280989588, type metadata accessor for Key);

  return sub_274BF5B04();
}

uint64_t sub_274AF44C0()
{
  sub_274AF4BB8(&qword_2809897D0, type metadata accessor for TextStyle);
  sub_274AF4BB8(&unk_2809897D8, type metadata accessor for TextStyle);

  return sub_274BF5B04();
}

uint64_t sub_274AF457C()
{
  sub_274AF4BB8(&unk_2815A2EC0, type metadata accessor for AttributeName);
  sub_274AF4BB8(&qword_2809897E8, type metadata accessor for AttributeName);

  return sub_274BF5B04();
}

uint64_t sub_274AF4638()
{
  sub_274AF4BB8(&qword_2815A2EE0, type metadata accessor for TraitKey);
  sub_274AF4BB8(&qword_2809897C8, type metadata accessor for TraitKey);

  return sub_274BF5B04();
}

uint64_t sub_274AF46F4()
{
  sub_274AF4BB8(&qword_280989800, type metadata accessor for WFWorkflowRunSource);
  sub_274AF4BB8(&qword_280989808, type metadata accessor for WFWorkflowRunSource);

  return sub_274BF5B04();
}

uint64_t sub_274AF47B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_274BF4F04();

  *a1 = v2;
  return result;
}

uint64_t sub_274AF47F8()
{
  sub_274AF4BB8(&qword_280989590, type metadata accessor for OptionKey);
  sub_274AF4BB8(&qword_280989598, type metadata accessor for OptionKey);

  return sub_274BF5B04();
}

uint64_t type metadata accessor for WFAskLLMFeedbackPresenter()
{
  result = qword_280989438;
  if (!qword_280989438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274AF49A4()
{
  result = sub_274BF1A24();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_274AF4BB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274AF4F60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_274AF5024(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_274AF5954(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_274AF5024(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_274AF5124(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_274BF59B4();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_274AF5124(uint64_t a1, unint64_t a2)
{
  v3 = sub_274AF5170(a1, a2);
  sub_274AF5288(&unk_2883C6638);
  return v3;
}

uint64_t sub_274AF5170(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_274BF5064())
  {
    result = sub_274AF536C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_274BF5964();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_274BF59B4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_274AF5288(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_274AF53DC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_274AF536C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989670);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_274AF53DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_274AF54D0()
{
  sub_274BF4F44();
  sub_274BF4FF4();
}

uint64_t sub_274AF5524()
{
  v0 = sub_274BF4F44();
  v2 = v1;
  if (v0 == sub_274BF4F44() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_274BF5C24();
  }

  return v5 & 1;
}

uint64_t sub_274AF55A8()
{
  v0 = sub_274BF4F44();
  v1 = MEMORY[0x277C64930](v0);

  return v1;
}

uint64_t sub_274AF55E0(uint64_t a1, id *a2)
{
  result = sub_274BF4F24();
  *a2 = 0;
  return result;
}

uint64_t sub_274AF5658(uint64_t a1, id *a2)
{
  v3 = sub_274BF4F34();
  *a2 = 0;
  return v3 & 1;
}

unint64_t sub_274AF56D8()
{
  result = qword_280989620;
  if (!qword_280989620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989618);
    sub_274AF57A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989620);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_274AF57A4()
{
  result = qword_280989628;
  if (!qword_280989628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989628);
  }

  return result;
}