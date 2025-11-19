uint64_t sub_197553864@<X0>(uint64_t a1@<X8>)
{
  v2 = os_variant_allows_internal_security_policies();
  result = Platform.Device.init()();
  *a1 = v4;
  *(a1 + 1) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = v2;
  *(a1 + 5) = 0;
  return result;
}

TipKitCore::Platform::Device __swiftcall Platform.Device.init()()
{
  v1 = v0;
  if (qword_1ED816FC0 != -1)
  {
    result = swift_once();
  }

  if ((dword_1ED81D1F0 - 1) > 0xA)
  {
    v2 = 7;
  }

  else
  {
    v2 = byte_197622C42[dword_1ED81D1F0 - 1];
  }

  *v1 = v2;
  return result;
}

void sub_197553934()
{
  v0 = sub_1976161B0();
  v1 = MGGetSInt32Answer();

  dword_1ED81D1F0 = v1;
}

uint64_t sub_1975539AC(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

BOOL sub_1975539E8()
{
  result = sub_197553A24(0xD000000000000018, 0x8000000197623C40);
  byte_1ED816549 = result;
  return result;
}

BOOL sub_197553A24(uint64_t a1, uint64_t a2)
{
  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  if (byte_1ED8172A1 == 1)
  {
    if (qword_1ED816E78 != -1)
    {
      OUTLINED_FUNCTION_1_45();
    }

    v14 = a1;
    v15 = a2;
    MEMORY[0x1EEE9AC00]();
    OUTLINED_FUNCTION_2_0();
    *(v4 - 16) = &v14;
    if (!sub_1975544B4(sub_1975F8D28, v5, v6))
    {
      return 0;
    }

    if (qword_1EAF34278 != -1)
    {
      swift_once();
    }

    v14 = a1;
    v15 = a2;
    MEMORY[0x1EEE9AC00]();
    OUTLINED_FUNCTION_2_0();
    *(v9 - 16) = &v14;
    v10 = sub_1975F8D28;
  }

  else
  {
    if (qword_1ED816E78 != -1)
    {
      OUTLINED_FUNCTION_1_45();
    }

    v14 = a1;
    v15 = a2;
    MEMORY[0x1EEE9AC00]();
    OUTLINED_FUNCTION_2_0();
    *(v11 - 16) = &v14;
    v10 = sub_197556D58;
  }

  return sub_1975544B4(v10, v7, v8);
}

uint64_t sub_197553BF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  sub_197553D0C();
  v3 = v11;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1975586C0(v4, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v11 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_197553D0C();
        v3 = v11;
      }

      *(v3 + 16) = v5 + 1;
      v6 = v3 + 16 * v5;
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_197553D0C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_25();
  sub_197553D48();
  *v0 = v2;
}

void sub_197553D48()
{
  OUTLINED_FUNCTION_4_21();
  if ((v6 & 1) == 0)
  {
    v8 = v3;
    goto LABEL_8;
  }

  v7 = *(v0 + 24);
  v8 = v7 >> 1;
  if ((v7 >> 1) >= v3)
  {
    goto LABEL_8;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= v3)
    {
      v8 = v3;
    }

LABEL_8:
    v9 = *(v0 + 16);
    if (v8 <= v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 16);
      if (v2)
      {
LABEL_13:
        v1(v0 + 32, v9, v11 + 4);
        *(v0 + 16) = 0;
LABEL_16:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_5_13();
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_197553E34()
{
  v0 = sub_197553EE0(0xD000000000000025, 0x8000000197625E50, &qword_1ED816F08, 0x1E695DEC8);
  if (v0 && (v1 = sub_197553BF8(v0), result = , v1))
  {
    qword_1ED81D1E8 = v1;
  }

  else
  {
    qword_1ED81D1E8 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_197553EE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (!v6 || (v7 = v6, v8 = [v6 entitlements], v7, !v8))
  {
    v16 = 0u;
    v17 = 0u;
LABEL_6:
    sub_19755643C(&v16);
    return 0;
  }

  v9 = sub_1976161B0();
  sub_19755404C(0, a3, a4);
  v10 = [v8 objectForKey:v9 ofClass:swift_getObjCClassFromMetadata()];

  if (v10)
  {
    sub_197616910();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    goto LABEL_6;
  }

  v12 = OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19755404C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_19755408C(uint64_t a1@<X8>)
{
  v2 = sub_1976172D0();
  v32 = v3;
  v33 = v2;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1975543E0();
  v30 = v6;
  v31 = v5;
  v29 = v7;

  v8 = OUTLINED_FUNCTION_3_5();
  v28 = sub_197557848();

  v9 = OUTLINED_FUNCTION_3_5();
  v10 = sub_197557848();

  v11 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_2();
  v13 = v12;

  v14 = OUTLINED_FUNCTION_3_5();
  v15 = sub_197557848();

  v16 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_2();
  v18 = v17;

  v19 = OUTLINED_FUNCTION_3_5();
  v20 = sub_197557848();

  v21 = OUTLINED_FUNCTION_3_5();
  v22 = sub_197557848();

  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  *a1 = 0x74696B7069742ELL;
  *(a1 + 8) = 0xE700000000000000;
  v23 = MEMORY[0x1E69E7CD0];
  if (v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
  }

  if (v13)
  {
    v23 = v13;
  }

  v25 = byte_1ED8174EA;
  *(a1 + 16) = v33;
  *(a1 + 24) = v32;
  v26 = 93675;
  if ((v29 & 1) == 0)
  {
    v26 = v30;
  }

  v27 = 0x1154F79EB8000000;
  if ((v29 & 1) == 0)
  {
    v27 = v31;
  }

  *(a1 + 32) = v27;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28 & 1;
  *(a1 + 49) = v10 & 1;
  *(a1 + 56) = v23;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v24;
  *(a1 + 80) = v20 & 1;
  *(a1 + 81) = v22 & 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 105) = v25;
}

BOOL sub_197554338()
{
  v1 = sub_1976161B0();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_197616910();
    swift_unknownObjectRelease();
    sub_19756A94C(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_19755643C(v5);
  return v2 != 0;
}

uint64_t sub_1975543E0()
{
  if (!sub_197554338())
  {
    return 0;
  }

  v1 = sub_1976161B0();
  [v0 doubleForKey_];
  v5 = v2;

  v3 = Double.seconds.getter(v5);
  sub_1975877EC(v3);
  sub_197617290();
  return sub_1976172B0();
}

BOOL sub_1975544B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t OUTLINED_FUNCTION_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_197616E80();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_9(unint64_t *a1)
{

  return sub_197567E98(a1);
}

void *OUTLINED_FUNCTION_6_12(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_6_14(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v7 - 72) = v6;
  *(v7 - 248) = a5;
  *(v7 - 240) = a6;
  *(v7 - 256) = a3;
  *(v7 - 252) = a4;
  *(v7 - 264) = a2;
  *(v7 - 216) = result;
  return result;
}

double OUTLINED_FUNCTION_6_19()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

void OUTLINED_FUNCTION_4_2()
{

  sub_1975578B4();
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_4()
{
  v1 = *(*(v0 - 152) + 104);
  result = *(v0 - 160);
  v3 = *(v0 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_4_10(uint64_t a1)
{

  return sub_19757B688(a1);
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  v2 = *(*(v0 + 32) + 8);

  return sub_197616180();
}

uint64_t OUTLINED_FUNCTION_4_16()
{

  return sub_197616D80();
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_4_23()
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_4_28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  sub_19755A4E0(a10, v11, v10, (v10 + 8));
}

void OUTLINED_FUNCTION_4_32()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_4_35()
{

  return sub_197617190();
}

uint64_t OUTLINED_FUNCTION_4_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_42(uint64_t a1)
{
  *(a1 + 8) = sub_19760FA30;
  v2 = v1[17];
  result = v1[11];
  v4 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return sub_197616090();
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{
  *(a1 + 8) = sub_1975A899C;
  v2 = v1[203];
  v3 = v1[201];
  v4 = v1[199];
  v5 = v1[197];
  return v1[196];
}

uint64_t OUTLINED_FUNCTION_0_9()
{
  v1 = v0[3];
  v2 = v0[4];
  return v0[2];
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_30()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return swift_once();
}

double OUTLINED_FUNCTION_0_38(int8x16_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int8x16_t a10)
{
  *a1.i64 = *a10.i64 - trunc(*a10.i64);
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  a1.i64[0] = vbslq_s8(vnegq_f64(v10), a1, a10).u64[0];
  return *a1.i64;
}

uint64_t OUTLINED_FUNCTION_0_39()
{

  return sub_197616260();
}

uint64_t OUTLINED_FUNCTION_0_41()
{
}

uint64_t OUTLINED_FUNCTION_0_44()
{

  return sub_197615CB0();
}

uint64_t OUTLINED_FUNCTION_0_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_47()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_48()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_52()
{
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_3()
{
}

uint64_t OUTLINED_FUNCTION_1_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 40) = result;
  *(v3 + 80) = 8;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1)
{
  *(a1 + 8) = sub_1975A8644;
  v2 = *(v1 + 1608);
  return v1 + 1120;
}

uint64_t OUTLINED_FUNCTION_1_9()
{
  v1 = *(*(v0 - 264) + 8);
  result = *(v0 - 272);
  v3 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_21()
{
  sub_1975558C4((v0 - 160), v0 - 120);
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1Tm((v0 - 120), v1);
  return v1;
}

void OUTLINED_FUNCTION_1_23()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_1_34()
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_1_36()
{

  CoreTipRecord.id.getter();
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return MEMORY[0x1EEDC5700]();
}

uint64_t OUTLINED_FUNCTION_1_38(uint64_t a1)
{
  *(a1 + 8) = sub_1975EE880;
  v2 = *(v1 + 352);
  return *(v1 + 296);
}

uint64_t OUTLINED_FUNCTION_1_39()
{

  return sub_197617190();
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_47(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_1_48(uint64_t a1)
{
  *(a1 + 8) = sub_197570428;
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_1_50()
{

  return sub_1975F893C();
}

uint64_t OUTLINED_FUNCTION_1_51()
{

  return sub_197567790(v1, v0);
}

uint64_t sub_1975558C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_3_5()
{

  return [v1 (v0 + 2734)];
}

uint64_t OUTLINED_FUNCTION_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return sub_19755FA5C(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  *(v1 - 104) = v0;

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_3_13()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

double OUTLINED_FUNCTION_3_19()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return sub_197616D80();
}

uint64_t OUTLINED_FUNCTION_3_26()
{

  return sub_1976160F0();
}

uint64_t OUTLINED_FUNCTION_3_28()
{
  result = *(v0 - 256);
  v2 = *(*(v0 - 248) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_29()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_35()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;
  *(v2 - 88) = a1;
  v4 = MEMORY[0x1E697BC78];

  return MEMORY[0x1EEE6BF68](v2 - 112, v4, 1);
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return sub_197615750();
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return sub_197615B10();
}

void OUTLINED_FUNCTION_15_7(uint64_t a1@<X8>)
{

  os_unfair_lock_lock((v1 + a1));
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return sub_1976170C0();
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return sub_197615D90();
}

uint64_t OUTLINED_FUNCTION_15_11()
{
  result = v0[36];
  v2 = v0[34];
  v3 = *(v0[35] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_15()
{
  v2 = *(v1 - 128);
  v3 = *(*(v1 - 136) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return sub_197617240();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_14_3(uint64_t a1@<X8>, uint64_t a2)
{
  *(v4 - 248) = &a2 - a1;
  *(v4 - 296) = *v3;
  *(v4 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1)
{

  return sub_19755C7C8(a1, v1, v2);
}

void OUTLINED_FUNCTION_14_6()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  *(v1 - 184) = v0;

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_5_9()
{
  *(v1 - 65) = v0;

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, __int128);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_19756EED8(va, va1);
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_5_18()
{
  v1 = v0[8];
  result = __swift_project_boxed_opaque_existential_1Tm(v0 + 4, v0[7]);
  v3 = *(v1 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_21()
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_28(uint64_t a1)
{
  *(a1 + 8) = sub_197610CD8;
  v2 = v1[12];
  result = v1[9];
  v4 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return sub_1975CF4F0(&a17, &a9, v17, v18);
}

uint64_t OUTLINED_FUNCTION_22_9()
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_22_12(__n128 *a1)
{
  *(v2 + 56) = a1;
  result = *(v2 + 24);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v1;
  a1[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return swift_setAtWritableKeyPath();
}

uint64_t sub_19755643C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_17()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 128, v3);
}

void OUTLINED_FUNCTION_17_0()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_197615D90();
}

uint64_t OUTLINED_FUNCTION_20_1()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_7()
{
  result = v0;
  v3 = *(v1 - 304);
  v4 = *(v1 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1)
{

  return sub_19755C7C8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_197615BE0();
}

uint64_t OUTLINED_FUNCTION_17_17()
{
  result = *(v0 + 56);
  v2 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_8_5(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_197615D90();
}

uint64_t OUTLINED_FUNCTION_8_8()
{
  *(v1 - 120) = v0;

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_8_10@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_13()
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_8_16()
{
  v2 = *(v0 - 184);

  return sub_197616ED0();
}

uint64_t OUTLINED_FUNCTION_8_17()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_8_20()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_8_22(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_23()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_8_27()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = *(v0[22] + 8);
  return v0[23];
}

uint64_t OUTLINED_FUNCTION_2_2()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_7()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1543);
  v3 = *(v0 + 1728);
  v4 = *(v0 + 1542);
  v5 = *(v0 + 1720);
  v6 = *(v0 + 1712);
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_2_27()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_2_28@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1)
{
  *(a1 + 8) = sub_1975EF480;
  result = v1[10];
  v3 = v1[7];
  v4 = v1[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_33()
{

  return sub_197616260();
}

uint64_t *OUTLINED_FUNCTION_2_34()
{
  sub_19756EED8((v1 - 160), v1 - 120);
  v2 = *(v1 - 88);
  __swift_project_boxed_opaque_existential_1Tm((v1 - 120), *(v1 - 96));
  *(v1 - 136) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 - 160));
}

uint64_t OUTLINED_FUNCTION_2_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  result = sub_197559BFC(0, a1, v2);
  if (v4)
  {
    return v2;
  }

  return result;
}

uint64_t sub_197556DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_197616EF0() & 1;
  }
}

uint64_t Array.asDictionary<A, B>()()
{

  swift_getTupleTypeMetadata2();
  sub_197616530();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  return sub_1976160C0();
}

void Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_15_12();
  v51 = v2;
  v52 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v49 = v9;
  v53 = v10;
  v11 = sub_197616860();
  v12 = OUTLINED_FUNCTION_0(v11);
  v47 = v13;
  v48 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v50 = v6;
  v19 = sub_197616860();
  OUTLINED_FUNCTION_13(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v23 = sub_197616860();
  OUTLINED_FUNCTION_0(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_31_6();
  OUTLINED_FUNCTION_14();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_0();
  v36 = v35 - v34;
  (*(v25 + 16))(v0, v52, v23);
  if (__swift_getEnumTagSinglePayload(v0, 1, v8) == 1)
  {
    (*(v25 + 8))(v0, v23);
    v37 = 1;
LABEL_6:
    v45 = v53;
    goto LABEL_7;
  }

  (*(v30 + 32))(v36, v0, v8);
  sub_197616120();
  v38 = *(v30 + 8);
  v39 = OUTLINED_FUNCTION_1_18();
  v40(v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = 1;
    OUTLINED_FUNCTION_22_10(v18, 1);
    (*(v47 + 8))(v18, v48);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v4);
  OUTLINED_FUNCTION_18(v4);
  v45 = v53;
  (*(v44 + 32))(v53, v18, v4);
  v37 = 0;
LABEL_7:
  OUTLINED_FUNCTION_22_10(v45, v37);
  OUTLINED_FUNCTION_14_9();
}

{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_197616860();
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = sub_197616860();
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  if (v3)
  {
    v29[0] = AnyKeyPath.stringValue.getter();
    v29[1] = v18;
    sub_197616120();

    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v1);
      OUTLINED_FUNCTION_18(v1);
      (*(v22 + 32))(v5, v13, v1);
      v23 = 0;
    }

    else
    {
      v23 = 1;
      v24 = OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_22_10(v24, v25);
      v26 = *(v8 + 8);
      v27 = OUTLINED_FUNCTION_1_18();
      v28(v27);
    }
  }

  else
  {
    v23 = 1;
  }

  OUTLINED_FUNCTION_22_10(v5, v23);
  OUTLINED_FUNCTION_14_9();
}

{
  OUTLINED_FUNCTION_15_12();
  v34 = v2;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_197616860();
  v13 = OUTLINED_FUNCTION_0(v12);
  v32 = v14;
  v33 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = sub_197616860();
  OUTLINED_FUNCTION_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_14();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_31_6();
  (*(v22 + 16))(v0, v9, v20);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    (*(v22 + 8))(v0, v20);
  }

  else
  {
    (*(v27 + 32))(v1, v0, v7);
    sub_197616120();
    if (__swift_getEnumTagSinglePayload(v19, 1, v5) != 1)
    {
      *(v11 + 24) = v5;
      __swift_allocate_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_18(v5);
      (*(v31 + 32))();
      (*(v27 + 8))(v1, v7);
      goto LABEL_7;
    }

    (*(v27 + 8))(v1, v7);
    (*(v32 + 8))(v19, v33);
  }

  *v11 = 0u;
  *(v11 + 16) = 0u;
LABEL_7:
  OUTLINED_FUNCTION_14_9();
}

uint64_t OUTLINED_FUNCTION_13_6()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 72);

  return sub_197615C60();
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_10()
{
  v2 = *(v0 - 248);
  v3 = *(v0 - 224);
  v4 = *(v0 - 144);

  return sub_197615780();
}

void OUTLINED_FUNCTION_13_11(uint64_t a1@<X8>)
{

  os_unfair_lock_lock((v1 + a1));
}

uint64_t OUTLINED_FUNCTION_13_14()
{
  v2 = *(v0 - 216);
  v3 = *(v0 - 72);

  return sub_197615C80();
}

uint64_t OUTLINED_FUNCTION_13_17@<X0>(uint64_t a1@<X8>)
{

  return sub_197614384(0, (a1 + 63) >> 6, v1);
}

unint64_t OUTLINED_FUNCTION_13_19()
{
  v2 = *v0;

  return sub_19755C610();
}

uint64_t OUTLINED_FUNCTION_13_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_0()
{
}

void OUTLINED_FUNCTION_29_4()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_29_7(uint64_t a1, uint64_t a2)
{

  return sub_1975F3024(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_29_9()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x19A8E4300);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_19755750C()
{
  if (qword_1ED8174D8 != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  if (qword_1ED81D218)
  {

    v0 = sub_197557704();
  }

  else
  {
    v0 = 0;
  }

  byte_1ED8174EA = v0 & 1;
}

uint64_t sub_1975575A8(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1976161E0();

  return v3;
}

uint64_t sub_197557618()
{
  v0 = objc_opt_self();
  sub_1975575A8([v0 mainBundle]);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = sub_1975575A8([v0 mainBundle]);
  if (v3)
  {
    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (v4)
    {
    }

    else
    {
      v5 = sub_197616EF0();

      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    type metadata accessor for CFBundle(0);
    result = sub_1975A5740();
    goto LABEL_11;
  }

LABEL_8:
  result = sub_1975575A8([v0 mainBundle]);
LABEL_11:
  qword_1ED81D210 = result;
  qword_1ED81D218 = v7;
  return result;
}

uint64_t sub_197557704()
{

  do
  {
    while (1)
    {
      v0 = sub_1976162C0();
      if (!v1)
      {

        sub_1976162C0();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_1976162C0();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_197616EF0();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_197557848()
{
  if (!sub_197554338())
  {
    return 2;
  }

  v1 = sub_1976161B0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1975578B4()
{
  sub_1975578D4();
  if (v0)
  {
    sub_197589344(v0);
  }
}

void sub_1975578D4()
{
  v1 = v0;
  v2 = sub_1976161B0();
  v3 = [v0 arrayForKey_];

  if (!v3 || (v4 = sub_197616460(), v3, v5 = sub_197553BF8(v4), , !v5))
  {
    v6 = sub_1976161B0();
    v7 = [v1 stringForKey_];

    if (v7)
    {
      sub_1976161E0();

      sub_197611F94(44, 0xE100000000000000);
      v9 = v8;

      v10 = 0;
      v11 = *(v9 + 16);
      v12 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (i = (v9 + 40 + 16 * v10); ; i += 2)
      {
        if (v11 == v10)
        {

          return;
        }

        if (v10 >= *(v9 + 16))
        {
          break;
        }

        v14 = *(i - 1);
        v15 = *i;
        if (v14 != 44 || v15 != 0xE100000000000000)
        {
          v17 = *(i - 1);
          v18 = *i;
          if ((sub_197616EF0() & 1) == 0)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = *(v12 + 16);
              sub_197553D0C();
            }

            v20 = *(v12 + 16);
            v21 = v20 + 1;
            if (v20 >= *(v12 + 24) >> 1)
            {
              sub_197553D0C();
              v21 = v20 + 1;
            }

            ++v10;
            *(v12 + 16) = v21;
            v22 = v12 + 16 * v20;
            *(v22 + 32) = v14;
            *(v22 + 40) = v15;
            goto LABEL_5;
          }
        }

        ++v10;
      }

      __break(1u);
    }
  }
}

uint64_t static URL.defaultDatastore.getter@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v1 = sub_197615880();
  v2 = OUTLINED_FUNCTION_0(v1);
  v81 = v3;
  v82 = v2;
  v5 = *(v4 + 64);
  (MEMORY[0x1EEE9AC00])();
  OUTLINED_FUNCTION_6_0();
  v80 = v7 - v6;
  v8 = sub_197615970();
  v9 = OUTLINED_FUNCTION_0(v8);
  v83 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v79 = (v13 - v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v76 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34690, &qword_197618F70);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v76 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  OUTLINED_FUNCTION_5();
  v31 = v29 - v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v76 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v76 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v76 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v76 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = (&v76 - v45);
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  if (byte_1ED8172A1 == 2)
  {
    if (qword_1ED8174E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    if ((byte_1ED8174EA & 1) == 0)
    {
      sub_1976158B0();
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v8);
      static URL.cachesDirectoryForCurrentUser.getter(v44);
      v50 = *(v19 + 48);
      sub_19755EDE0(v46, v26);
      sub_19755EDE0(v44, &v26[v50]);
      OUTLINED_FUNCTION_1_5(v26);
      if (v48)
      {
        OUTLINED_FUNCTION_7_2(v44);
        OUTLINED_FUNCTION_7_2(v46);
        OUTLINED_FUNCTION_1_5(&v26[v50]);
        if (v48)
        {
          sub_19755C404(v26, &qword_1EAF34610, &qword_197621E30);
LABEL_37:
          v56 = v77;
          sub_1976158B0();
          OUTLINED_FUNCTION_8_2();
          if (qword_1ED817578)
          {
            v64 = qword_1ED817570;
            v65 = qword_1ED817578;
          }

          else
          {
            if (qword_1ED8174D8 != -1)
            {
              OUTLINED_FUNCTION_4_3();
            }

            if (qword_1ED81D218)
            {
              v64 = qword_1ED81D210;
              v65 = qword_1ED81D218;
            }

            else
            {
              type metadata accessor for CFBundle(0);
              v71 = sub_1975A5740();
              if (v72)
              {
                v64 = v71;
                v65 = v72;
              }

              else
              {
                v64 = 0;
                v65 = 0xE000000000000000;
              }
            }
          }

          v85 = v64;
          v86 = v65;
          v73 = *MEMORY[0x1E6968F58];
          v74 = OUTLINED_FUNCTION_4_4();
          v75(v74);
          sub_1975607A8();

          goto LABEL_56;
        }
      }

      else
      {
        sub_19755EDE0(v26, v41);
        OUTLINED_FUNCTION_1_5(&v26[v50]);
        if (!v58)
        {
          v59 = v83;
          v60 = &v26[v50];
          v61 = v78;
          (*(v83 + 32))(v78, v60, v8);
          sub_19755EE50();
          v62 = sub_1976161A0();
          v63 = *(v59 + 8);
          v35 = (v59 + 8);
          v63(v61, v8);
          sub_19755C404(v44, &qword_1EAF34610, &qword_197621E30);
          sub_19755C404(v46, &qword_1EAF34610, &qword_197621E30);
          v63(v41, v8);
          sub_19755C404(v26, &qword_1EAF34610, &qword_197621E30);
          if (v62)
          {
            goto LABEL_37;
          }

          return sub_1976158B0();
        }

        OUTLINED_FUNCTION_7_2(v44);
        OUTLINED_FUNCTION_7_2(v46);
        (*(v83 + 8))(v41, v8);
      }

      sub_19755C404(v26, &qword_1EAF34690, &qword_197618F70);
      return sub_1976158B0();
    }
  }

  sub_1976158F0();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v8);
  static URL.applicationSupportDirectoryForCurrentUser.getter(v35);
  v47 = *(v19 + 48);
  sub_19755EDE0(v38, v23);
  sub_19755EDE0(v35, v23 + v47);
  OUTLINED_FUNCTION_1_5(v23);
  if (!v48)
  {
    sub_19755EDE0(v23, v31);
    OUTLINED_FUNCTION_1_5(v23 + v47);
    if (!v48)
    {
      v51 = v83;
      v52 = v23 + v47;
      v53 = v78;
      (*(v83 + 32))(v78, v52, v8);
      sub_19755EE50();
      v54 = sub_1976161A0();
      v55 = *(v51 + 8);
      v55(v53, v8);
      v46 = &qword_197621E30;
      sub_19755C404(v35, &qword_1EAF34610, &qword_197621E30);
      sub_19755C404(v38, &qword_1EAF34610, &qword_197621E30);
      v55(v31, v8);
      sub_19755C404(v23, &qword_1EAF34610, &qword_197621E30);
      if (v54)
      {
        goto LABEL_25;
      }

      return sub_1976158F0();
    }

    sub_19755C404(v35, &qword_1EAF34610, &qword_197621E30);
    sub_19755C404(v38, &qword_1EAF34610, &qword_197621E30);
    (*(v83 + 8))(v31, v8);
LABEL_17:
    sub_19755C404(v23, &qword_1EAF34690, &qword_197618F70);
    return sub_1976158F0();
  }

  OUTLINED_FUNCTION_7_2(v35);
  OUTLINED_FUNCTION_7_2(v38);
  OUTLINED_FUNCTION_1_5(v23 + v47);
  if (!v48)
  {
    goto LABEL_17;
  }

  sub_19755C404(v23, &qword_1EAF34610, &qword_197621E30);
LABEL_25:
  v56 = v79;
  sub_1976158F0();
  OUTLINED_FUNCTION_8_2();
  if (qword_1ED817578)
  {
    v41 = qword_1ED817570;
    v57 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    if (qword_1ED81D218)
    {
      v41 = qword_1ED81D210;
      v57 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v66 = sub_1975A5740();
      if (v67)
      {
        v41 = v66;
      }

      else
      {
        v41 = 0;
      }

      if (v67)
      {
        v57 = v67;
      }

      else
      {
        v57 = 0xE000000000000000;
      }
    }
  }

  v85 = v41;
  v86 = v57;
  v68 = *MEMORY[0x1E6968F58];
  v69 = OUTLINED_FUNCTION_4_4();
  v70(v69);
  sub_1975607A8();

LABEL_56:
  sub_197615960();
  (v46[1])(v35, v41);

  return (*(v83 + 8))(v56, v8);
}

size_t OUTLINED_FUNCTION_9_3(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_9_4()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_9_5()
{
  v5 = *(v3 - 104);

  return MEMORY[0x1EEDD9088](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_11()
{
  v2 = *(v0 - 288);
  v3 = *(v0 - 272);

  return sub_197615740();
}

uint64_t OUTLINED_FUNCTION_9_13@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 - v1;
  v4 = *(v2 + 16);
  return v3;
}

char *OUTLINED_FUNCTION_9_14(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 16);
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_9_17()
{
}

uint64_t OUTLINED_FUNCTION_9_18()
{

  return sub_197616BC0();
}

uint64_t OUTLINED_FUNCTION_9_24()
{

  return sub_197616890();
}

id default argument 0 of URL.removeFile(fileManager:)()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

uint64_t sub_1975586C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_31(uint64_t result)
{
  *(v3 - 144) = v1;
  *(v3 - 136) = v2;
  *(v3 - 168) = result;
  return result;
}

uint64_t type metadata accessor for logger()
{
  result = qword_1ED8174F0;
  if (!qword_1ED8174F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_197558864()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_22_11();
  if (byte_1ED817548 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    OUTLINED_FUNCTION_15_13();
    if (v2)
    {
      OUTLINED_FUNCTION_17_14();
      if (v3 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_197618C10;
        OUTLINED_FUNCTION_30_9();
        v4 = sub_1975F901C(*v0);
        MEMORY[0x19A8E2A50](v4);

        MEMORY[0x19A8E2A50](8285, 0xE200000000000000);
        OUTLINED_FUNCTION_32_6();
        *(v1 + 56) = MEMORY[0x1E69E6158];
        *(v1 + 32) = v10;
        *(v1 + 40) = v12;
        OUTLINED_FUNCTION_25_8();
      }
    }
  }

  v5 = *(type metadata accessor for logger() + 20);

  v6 = sub_197615B90();
  v7 = _s10TipKitCore3logyyAA6loggerV_So03os_D7_type_tanSSyXKs7CVarArg_pdtFfA0__0();

  if (os_log_type_enabled(v6, v7))
  {
    swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_34_5();
    *(v1 + 4) = OUTLINED_FUNCTION_24_10(4.8149e-34, v11);
    OUTLINED_FUNCTION_23_9(&dword_197552000, v8, v9, "%s");
    OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_31_7();
  }
}

uint64_t sub_197558A20()
{
  v0 = type metadata accessor for logger();
  __swift_allocate_value_buffer(v0, qword_1ED816F18);
  v1 = __swift_project_value_buffer(v0, qword_1ED816F18);
  *v1 = 5;
  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  v2 = &v1[*(v0 + 20)];
  return sub_197615BA0();
}

uint64_t sub_197558B1C()
{
  result = sub_197615BB0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t (*static logger.tipKit.read())()
{
  if (qword_1ED816F10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger();
  OUTLINED_FUNCTION_37_2(v0, qword_1ED816F18);
  return nullsub_1;
}

uint64_t sub_197558C30()
{
  OUTLINED_FUNCTION_8_24();
  v2 = v1();
  v0(v2);
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_197616DC0();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_3(uint64_t a1)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = v1;
  *(v3 - 168) = a1;
  return 1970037110;
}

void OUTLINED_FUNCTION_23_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_34()
{
  v2 = *(v0 + 776);
  v3 = *(v0 + 784);

  sub_197558864();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return sub_19758C664(v0 + v2, v1);
}

uint64_t OUTLINED_FUNCTION_34_4()
{
  *(v1 - 136) = v0;
  v3 = *(v1 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 128, v3);
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return swift_slowAlloc();
}

uint64_t sub_197558E6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_197558F30(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1975586C0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_197558F30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1975FB00C(a5, a6);
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
    result = sub_197616AA0();
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

uint64_t (*static Configuration.shared.modify())()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void Configuration.usesCoreAnalytics.setter(char a1)
{
  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_4();
  if (v3)
  {
    *(v1 + 105) = a1 & 1;
  }
}

void Configuration.usesAppleDisplayFrequency.setter(char a1)
{
  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_4();
  if (v3)
  {
    *(v1 + 104) = a1 & 1;
  }
}

void sub_197559150()
{
  if (!qword_1ED816E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34988, &qword_197620CA0);
    v0 = sub_197615B50();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED816E40);
    }
  }
}

void sub_1975591B4()
{
  sub_197559150();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_197615B40();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for CoreTip()
{
  result = qword_1ED816E58;
  if (!qword_1ED816E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_28_4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

int64_t String.init<A>(type:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15[-v3];
  v5 = sub_197617320();
  v21 = 46;
  v22 = 0xE100000000000000;
  v16 = &v21;
  v7 = sub_19755967C(0x7FFFFFFFFFFFFFFFLL, 1, sub_197556D58, v15, v5, v6);
  v21 = sub_197559AF4(1, v7);
  v22 = v8;
  v23 = v9;
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349A0, &qword_19761B1F0);
  sub_197559AAC(&qword_1ED816D98, &qword_1EAF349A0, &qword_19761B1F0);
  sub_197559C9C();
  v11 = sub_1976163D0();
  v13 = v12;
  swift_unknownObjectRelease();
  v19 = v11;
  v20 = v13;
  sub_197615B60();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_197559BA8();
  sub_197559C48();
  sub_197559AAC(&qword_1ED816DB8, &qword_1EAF34688, &qword_197619420);
  sub_1976167A0();
  (*(v1 + 8))(v4, v0);

  return v21;
}

uint64_t sub_19755967C(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_197616340();
    OUTLINED_FUNCTION_1_3();
    sub_1975599D8();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1975599D8();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_1();
      v17 = sub_197616310();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_0_1();
      v16 = sub_197616280();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_197616340();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      sub_1975599D8();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_1975599D8();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_0_1();
    v16 = sub_197616280();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_197616340();
        OUTLINED_FUNCTION_1_3();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      sub_1975599D8();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void sub_1975599D8()
{
  OUTLINED_FUNCTION_17_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_5(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB0, &qword_19761B6E8);
    v9 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_23_2(v9);
    OUTLINED_FUNCTION_25_1();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_197559AAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

int64_t sub_197559AF4(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_2_41(result, a2);
    if (v3 >= result)
    {
      sub_197612444(result, v3, v2);
      OUTLINED_FUNCTION_0_52();
      return OUTLINED_FUNCTION_1_52();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197559B4C(void *a1, os_unfair_lock_t lock, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(lock);
  v5 = *a3;

  os_unfair_lock_unlock(lock);
  return v5;
}

unint64_t sub_197559BA8()
{
  result = qword_1ED816DA8;
  if (!qword_1ED816DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816DA8);
  }

  return result;
}

uint64_t sub_197559BFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_197559C48()
{
  result = qword_1ED816DB0;
  if (!qword_1ED816DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816DB0);
  }

  return result;
}

unint64_t sub_197559C9C()
{
  result = qword_1ED816DA0;
  if (!qword_1ED816DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816DA0);
  }

  return result;
}

uint64_t (*static CoreParameter.parameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = static CoreParameter.parameters.getter();
  return sub_19755A370;
}

uint64_t sub_197559D58()
{
  type metadata accessor for CoreParameter();
  result = sub_1976160B0();
  dword_1ED816538 = 0;
  qword_1ED816540 = result;
  return result;
}

uint64_t Dictionary.getOrCreate(key:default:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v51 = a3;
  v52 = a2;
  v54 = a5;
  v55 = a1;
  v8 = *(a4 + 16);
  OUTLINED_FUNCTION_14();
  v48 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v49 = v14 - v13;
  v16 = *(v15 + 24);
  OUTLINED_FUNCTION_14();
  v53 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v23 = (v22 - v21);
  v24 = sub_197616860();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v48 - v34;
  v50 = v6;
  v36 = *v6;
  v37 = v55;
  v38 = *(a4 + 32);
  sub_197616120();
  v39 = OUTLINED_FUNCTION_24_9();
  if (__swift_getEnumTagSinglePayload(v39, v40, v16) == 1)
  {
    v41 = (*(v27 + 8))(v35, v24);
    v42 = v56;
    result = v52(v41);
    if (v42)
    {
      return result;
    }

    (*(v48 + 16))(v49, v37, v8);
    v44 = v53;
    (*(v53 + 16))(v32, v23, v16);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v16);
    sub_197616130();
  }

  else
  {
    v23 = v35;
    v44 = v53;
  }

  return (*(v44 + 32))(v54, v23, v16);
}

uint64_t Array.find<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v37 = a1;
  v38 = a4;
  v32 = a5;
  v34 = sub_197616860();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  OUTLINED_FUNCTION_14();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v31 = v20;
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4_1();
  v22 = sub_197616470();
  v40 = v22;
  v35 = (v16 + 8);
  v36 = (v16 + 16);
  v33 = (v9 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_4_1();
    if (v22 == sub_1976164E0())
    {
      v25 = v32;
      v26 = 1;
      v27 = v38;
      return __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
    }

    OUTLINED_FUNCTION_4_1();
    v23 = sub_1976164C0();
    sub_197616490();
    if (v23)
    {
      (*(v16 + 16))(v21, a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, a3);
      goto LABEL_5;
    }

    result = sub_197616A30();
    if (v31 != 8)
    {
      break;
    }

    v39 = result;
    (*v36)(v21, &v39, a3);
    swift_unknownObjectRelease();
LABEL_5:
    sub_197616520();
    v37(v21);
    result = (*v35)(v21, a3);
    if (v5)
    {
      return result;
    }

    if (__swift_getEnumTagSinglePayload(v14, 1, v38) != 1)
    {
      v28 = v38;
      v29 = v32;
      (*(*(v38 - 8) + 32))(v32, v14, v38);
      v25 = v29;
      v26 = 0;
      v27 = v28;
      return __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
    }

    (*v33)(v14, v34);
    v22 = v40;
  }

  __break(1u);
  return result;
}

uint64_t sub_19755A3A8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v5 = *a1;

  a3(v6);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_19755A45C()
{
  result = qword_1ED816FF0;
  if (!qword_1ED816FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34A00, &qword_19761B418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816FF0);
  }

  return result;
}

void sub_19755A4E0(uint64_t a1, void *a2, os_unfair_lock_t lock, uint64_t *a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(lock);
  v7 = *a4;

  *a4 = a1;

  os_unfair_lock_unlock(lock);
}

uint64_t sub_19755A560(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CoreParameter.init(_:datastore:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_19755A560(a1, v2 + 16);
  *(v2 + 56) = a2;
  v6 = *(a2 + 64);
  sub_19755A560(a1, v9);
  v7 = swift_allocObject();
  sub_1975558C4(v9, v7 + 16);
  swift_unownedRetain();
  sub_19755A5C4(&unk_19761C838, v7);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  return v3;
}

uint64_t sub_19755A6A8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19755A6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C70, &qword_19761BEF8);
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v17[0] = a4;
  v17[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  sub_197616600();
  return (*(v9 + 8))(v14, v7);
}

uint64_t CoreParameter.__allocating_init(_:datastore:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CoreParameter.init(_:datastore:)(a1, a2);
  return v4;
}

uint64_t static MiniTipsDatastore.shared.getter()
{
  if (qword_1ED817358 != -1)
  {
    OUTLINED_FUNCTION_2_39();
  }
}

uint64_t sub_19755A8A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346B0, &qword_1976190C8);
  result = sub_1976160B0();
  dword_1ED817330 = 0;
  qword_1ED817338 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_2(unint64_t *a1)
{

  return sub_1975B3454(a1, v1, v2, sub_1975B2E08);
}

char *OUTLINED_FUNCTION_12_7(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = *(v2 + 16);
  result = a1 + v3;
  v7 = *(v4 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_1975CFB0C(v2 - 80, v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return sub_197616DC0();
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v2 = *(v0 - 232);
  v3 = *(v0 - 200);

  return sub_197615710();
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  v2 = *(*(v0 + 32) + 8);

  return sub_197616180();
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return _ss8DurationV10TipKitCoreE7secondsSivg_0();
}

uint64_t OUTLINED_FUNCTION_12_16()
{
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for MiniTipsDatastore.DatastoreQueue()
{
  result = qword_1ED817398;
  if (!qword_1ED817398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_197617240();
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_31_7()
{

  JUMPOUT(0x19A8E4300);
}

uint64_t sub_19755ABF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_19755C610();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35560, &unk_197621E40);
  if ((sub_197616BF0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_19755C610();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    return sub_197564C90(a1, v16[7] + 8 * v11, &qword_1EAF346B0, &qword_1976190C8);
  }

  sub_19755C4D4(v11, a2, a3, a1, v16);
}

void *sub_19755AD34()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v0 = qword_1ED817570;
    v1 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    if (qword_1ED81D218)
    {
      v0 = qword_1ED81D210;
      v1 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v2 = sub_1975A5740();
      if (v3)
      {
        v0 = v2;
      }

      else
      {
        v0 = 0;
      }

      if (v3)
      {
        v1 = v3;
      }

      else
      {
        v1 = 0xE000000000000000;
      }
    }
  }

  v4 = type metadata accessor for MiniTipsDatastore();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  result = MiniTipsDatastore.init(id:bundleID:)(0xD000000000000017, 0x8000000197626770, v0, v1);
  qword_1ED817360 = result;
  return result;
}

void sub_19755AE74()
{
  sub_19755AF30();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_19755AF30()
{
  if (!qword_1ED817350)
  {
    sub_197615EF0();
    v0 = sub_197616860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED817350);
    }
  }
}

uint64_t static MiniTipsDatastore.activeStores.getter()
{
  if (qword_1ED817368 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  os_unfair_lock_lock(&dword_1ED817330);
  v0 = qword_1ED817338;

  os_unfair_lock_unlock(&dword_1ED817330);
  return v0;
}

void *MiniTipsDatastore.init(id:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v4[9] = 0;
  v11 = OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelConfiguration;
  v12 = sub_197615EF0();
  __swift_storeEnumTagSinglePayload(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer) = 0;
  *(v5 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask) = 0;
  v5[2] = a1;
  v5[3] = a2;
  v13 = a1 == a3 && a2 == a4;
  if (v13 || (OUTLINED_FUNCTION_12_8(), (sub_197616EF0() & 1) != 0))
  {

    v14 = a3;
    v15 = a4;
  }

  else
  {
    v23 = a3;
    v24 = a4;

    MEMORY[0x19A8E2A50](95, 0xE100000000000000);
    v16 = OUTLINED_FUNCTION_12_8();
    MEMORY[0x19A8E2A50](v16);
    v14 = a3;
    v15 = a4;
  }

  v5[6] = v14;
  v5[7] = v15;
  v5[4] = a3;
  v5[5] = a4;
  v17 = type metadata accessor for MiniTipsDatastore.DatastoreQueue();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v5[8] = sub_19755B2B8();
  swift_weakInit();
  swift_weakAssign();
  LOBYTE(v24) = 0;
  v20 = static MiniTipsDatastore.activeStores.getter();
  sub_19755C540(&v23, &v22);
  swift_isUniquelyReferenced_nonNull_native();
  sub_19755ABF4(&v22, a1, a2);

  static MiniTipsDatastore.activeStores.setter(v20);
  return v5;
}

uint64_t sub_19755B2B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35628, &qword_1976226A8);
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  OUTLINED_FUNCTION_0(v26);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35610, &qword_197622548);
  OUTLINED_FUNCTION_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v25 - v22;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35618, &qword_197622668);
  (*(v3 + 104))(v8, *MEMORY[0x1E69E8650], v1);
  sub_1976165C0();
  (*(v3 + 8))(v8, v1);
  (*(v10 + 32))(v0 + OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_continuations, v15, v26);
  (*(v18 + 32))(v0 + OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_stream, v23, v16);
  return v0;
}

void sub_19755B510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35618, &qword_197622668);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_19755B57C()
{
  sub_19755B510(319, &qword_1ED817348, MEMORY[0x1E69E8660]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_19755B510(319, &qword_1ED817340, MEMORY[0x1E69E8698]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for MiniTipsDatastore()
{
  result = qword_1ED817500;
  if (!qword_1ED817500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19755B6D4()
{
  v1 = *(v0 + 112);
  if (MiniTipsDatastore.hasConfigured.getter())
  {
    if (qword_1ED816C98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 200);
    v3 = *(v0 + 80);
    v4 = type metadata accessor for logger();
    __swift_project_value_buffer(v4, qword_1ED816CA0);
    sub_197616A20();

    sub_1975FCA28();
    v5 = sub_197616E80();
    MEMORY[0x19A8E2A50](v5);

    sub_197558864();

LABEL_5:
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v8 = *(v0 + 216);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 176);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);

    OUTLINED_FUNCTION_3();
    goto LABEL_15;
  }

  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 80);
  swift_beginAccess();

  sub_1976158D0();

  v17 = [objc_opt_self() defaultManager];
  LOBYTE(v16) = URL.createDirectory(using:)(v17);

  if (v16)
  {
    v18 = *(v0 + 120);
    v19 = sub_19755F4A0();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 32);
      do
      {
        v22 = *v21++;
        sub_19755F63C();
        --v20;
      }

      while (v20);
    }

    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    v25 = *(v0 + 168);
    v26 = *(v0 + 176);
    v27 = *(v0 + 160);
    v81 = *(v0 + 152);
    v82 = *(v0 + 104);
    v78 = *(v0 + 88);
    v80 = *(v0 + 96);

    sub_197616080();
    sub_19756087C();
    sub_197615FB0();
    strcpy((v0 + 64), "tips-store.db");
    *(v0 + 78) = -4864;
    (*(v25 + 104))(v26, *MEMORY[0x1E6968F70], v27);
    sub_1975607A8();
    sub_197615950();
    (*(v25 + 8))(v26, v27);
    sub_1975649B8(v78, v80, v82, v81);
    v38 = *(v0 + 224);
    v39 = sub_197615890();
    v41 = v40;

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      v43 = *(v0 + 224);
      v45 = *(v0 + 200);
      v44 = *(v0 + 208);
      v46 = *(v0 + 192);
      v48 = *(v0 + 144);
      v47 = *(v0 + 152);
      v50 = *(v0 + 128);
      v49 = *(v0 + 136);
      v77 = *(v0 + 112);
      v79 = *(v0 + 184);
      (*(v44 + 16))(*(v0 + 216), v43, v45);
      (*(v49 + 16))(v48, v47, v50);
      sub_197615F00();
      (*(v49 + 8))(v47, v50);
      v51 = *(v44 + 8);
      v51(v43, v45);
      v52 = sub_197615EF0();
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v52);
      v53 = OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelConfiguration;
      swift_beginAccess();
      sub_197564C90(v46, v77 + v53, &qword_1EAF35568, &qword_197621E58);
      swift_endAccess();
      sub_197615D40();
      v54 = sub_197615FB0();
      sub_1975FCC78(v77 + v53, v79, &qword_1EAF35568, &qword_197621E58);
      sub_197564BD8();
      v55 = sub_19755D970(v54, v79, &_s13MigrationPlanON);
      v65 = *(v0 + 112);
      v66 = *(v0 + 240);
      v67 = *(v65 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);
      *(v65 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer) = v55;

      if (v66 == 1)
      {
        v68 = *(v0 + 112);
        v70 = v68[6];
        v69 = v68[7];
        _s16ContainerMonitorCMa();
        v71 = swift_allocObject();

        swift_defaultActor_initialize();
        *(v71 + 112) = v70;
        *(v71 + 120) = v69;
        v72 = v68[9];
        v68[9] = v71;
      }

      v73 = *(v0 + 232);
      v74 = *(v0 + 200);
      v75 = *(v0 + 112);
      sub_19755DC6C();
      v76 = OUTLINED_FUNCTION_18_0();
      (v51)(v76);
      goto LABEL_5;
    }

    v56 = *(v0 + 224);
    v57 = *(v0 + 232);
    v58 = *(v0 + 200);
    v59 = *(v0 + 208);
    v60 = *(v0 + 152);
    v62 = *(v0 + 128);
    v61 = *(v0 + 136);
    sub_19759228C();
    swift_allocError();
    *v63 = 0xD00000000000001ELL;
    v63[1] = 0x8000000197626170;
    swift_willThrow();

    (*(v61 + 8))(v60, v62);
    v64 = *(v59 + 8);
    v64(v56, v58);
    v64(v57, v58);
  }

  else
  {
    (*(*(v0 + 208) + 8))(*(v0 + 232), *(v0 + 200));
    sub_19759228C();
    swift_allocError();
    *v28 = 0xD000000000000015;
    v28[1] = 0x8000000197626150;
    swift_willThrow();
  }

  v30 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 216);
  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v34 = *(v0 + 176);
  v36 = *(v0 + 144);
  v35 = *(v0 + 152);

  OUTLINED_FUNCTION_3();
LABEL_15:

  return v14();
}

uint64_t sub_19755BE50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_197615970();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = sub_197615EF0();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelConfiguration;
  swift_beginAccess();
  v18 = 1;
  if (!__swift_getEnumTagSinglePayload(v1 + v17, 1, v9))
  {
    v19 = (*(v12 + 16))(v16, v1 + v17, v9);
    MEMORY[0x19A8E2680](v19);
    (*(v12 + 8))(v16, v9);
    sub_1976158E0();
    v20 = *(v6 + 8);
    v21 = OUTLINED_FUNCTION_22();
    v22(v21);
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v18, 1, v3);
}

uint64_t MiniTipsDatastore.configure(url:monitorChanges:cloudKitContainer:)()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 240) = v5;
  *(v1 + 80) = v6;
  *(v1 + 120) = *v0;
  v7 = sub_197615ED0();
  *(v1 + 128) = v7;
  OUTLINED_FUNCTION_20_0(v7);
  *(v1 + 136) = v8;
  v10 = *(v9 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  v11 = sub_197615880();
  *(v1 + 160) = v11;
  OUTLINED_FUNCTION_20_0(v11);
  *(v1 + 168) = v12;
  v14 = *(v13 + 64) + 15;
  *(v1 + 176) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35568, &qword_197621E58);
  OUTLINED_FUNCTION_5_2(v15);
  v17 = *(v16 + 64) + 15;
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  v18 = sub_197615970();
  *(v1 + 200) = v18;
  OUTLINED_FUNCTION_20_0(v18);
  *(v1 + 208) = v19;
  v21 = *(v20 + 64) + 15;
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  if (qword_1ED817448 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED817450;

  return MEMORY[0x1EEE6DFA0](sub_19755B6D4, v22, 0);
}

BOOL MiniTipsDatastore.hasConfigured.getter()
{
  v0 = OUTLINED_FUNCTION_18_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v3 = OUTLINED_FUNCTION_5_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  sub_19755BE50(&v11 - v6);
  v8 = sub_197615970();
  v9 = __swift_getEnumTagSinglePayload(v7, 1, v8) != 1;
  sub_19755C7C8(v7, &qword_1EAF34610, &qword_197621E30);
  return v9;
}

Swift::Bool __swiftcall URL.createDirectory(using:)(NSFileManager using)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ((sub_19755F3FC() & 1) == 0)
  {
    v2 = sub_1976158C0();
    v9[0] = 0;
    v3 = [(objc_class *)using.super.isa createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:v9];

    if (!v3)
    {
      v6 = v9[0];
      v7 = sub_197615830();

      swift_willThrow();
      result = 0;
      goto LABEL_6;
    }

    v4 = v9[0];
  }

  result = 1;
LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19755C404(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void static MiniTipsDatastore.activeStores.setter(uint64_t a1)
{
  if (qword_1ED817368 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  os_unfair_lock_lock(&dword_1ED817330);

  qword_1ED817338 = a1;

  os_unfair_lock_unlock(&dword_1ED817330);
}

uint64_t sub_19755C4D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19755C540(a4, a5[7] + 8 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_19755C540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346B0, &qword_1976190C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19755C5D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_19755C610()
{
  v1 = *(v0 + 40);
  sub_197617190();
  sub_197616260();
  sub_1976171F0();
  v2 = OUTLINED_FUNCTION_22();

  return sub_19755C684(v2, v3, v4);
}

unint64_t sub_19755C684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_197616EF0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_19755C768()
{
  type metadata accessor for DatastoreActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ED817450 = v0;
  return result;
}

uint64_t sub_19755C7C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_19755C820(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return sub_197616F60();
}

void OUTLINED_FUNCTION_18_2()
{
  v2 = v0[100];
  v0[97] = v0[99];
  v0[98] = v2;

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return sub_197615BD0();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_8()
{
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_197617240();
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_24_10(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_197558E6C(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_24_12()
{

  return sub_197616350();
}

void sub_19755CB18()
{
  v1 = v0;
  v12[3] = *MEMORY[0x1E69E9840];
  if ((sub_19755F3FC() & 1) == 0)
  {
LABEL_9:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = sub_1976158C0();
  v12[0] = 0;
  v3 = [v1 removeItemAtURL:v2 error:v12];

  v4 = v12[0];
  if (!v3)
  {
    v7 = v12[0];
    v8 = sub_197615830();

    swift_willThrow();
    if (qword_1ED815ED8 != -1)
    {
      OUTLINED_FUNCTION_0_33();
    }

    v9 = type metadata accessor for logger();
    __swift_project_value_buffer(v9, qword_1ED815EE0);
    OUTLINED_FUNCTION_1_42();
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD000000000000027, 0x8000000197625D30);
    v10 = sub_197615920();
    MEMORY[0x19A8E2A50](v10);

    MEMORY[0x19A8E2A50](8250, 0xE200000000000000);
    swift_getErrorValue();
    sub_197616EB0();
    sub_197558864();

    goto LABEL_9;
  }

  v5 = *MEMORY[0x1E69E9840];

  v6 = v4;
}

uint64_t sub_19755CCE8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_19755CDCC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_19755CEB0()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35620, &qword_197622670);
  v1[11] = v7;
  v8 = *(v7 - 8);
  v1[12] = v8;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19755CF80, v0, 0);
}

uint64_t sub_19755CF80()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_197615CF0();

  v5 = sub_19755D67C();
  v0[14] = v5;
  if (v2)
  {
    v6 = v5;
    v8 = v0[8];
    v7 = v0[9];

    v21 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_23_10(v10);

    return v21(v6);
  }

  else
  {
    v12 = v0[13];
    v13 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35610, &qword_197622548);
    sub_197616630();
    OUTLINED_FUNCTION_0_45();
    v0[16] = sub_19756F538(v14, 255, v15);
    v16 = v0[10];
    v17 = *(MEMORY[0x1E69E8678] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[17] = v18;
    *v18 = v19;
    v20 = OUTLINED_FUNCTION_1_48(v18);

    return MEMORY[0x1EEE6D9C8](v20);
  }
}

uint64_t sub_19755D180(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19755CDCC;

  return v6();
}

uint64_t sub_19755D268()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_19755CDC8;
  OUTLINED_FUNCTION_18_0();

  return sub_19755D30C();
}

uint64_t sub_19755D30C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19755CCE8;

  return sub_19755CEB0();
}

void *OUTLINED_FUNCTION_21_1(void *result)
{
  *result = v1;
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_8()
{
  v3 = *(v1 + 16);
  v4 = *(v2 + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1, uint64_t a2)
{

  return sub_197579604(a1, a2, v2);
}

void OUTLINED_FUNCTION_21_11()
{

  sub_1975FA290();
}

uint64_t OUTLINED_FUNCTION_21_15()
{
  result = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[3];
  v5 = *(v0[16] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_8()
{
  v3 = *(v1 + 8);
  *(v2 - 312) = v1 + 8;
  *(v2 - 304) = v3;
  return v0;
}

void *OUTLINED_FUNCTION_16_9()
{
  v2 = v0[8];
  v3 = v0[7];

  return __swift_project_boxed_opaque_existential_1Tm(v0 + 4, v3);
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return sub_197616BC0();
}

uint64_t OUTLINED_FUNCTION_16_11()
{
  sub_19756A94C((v0 - 80), (v0 - 112));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_19755D67C()
{

  v0 = sub_197615D00();

  sub_197615C50();
  sub_197615CA0();

  return v0;
}

uint64_t sub_19755D6F0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t sub_19755D780()
{
  OUTLINED_FUNCTION_1();
  v1 = sub_197615970();
  OUTLINED_FUNCTION_5_2(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_1(v4);
  *v5 = v6;
  v5[1] = sub_19755CDC8;

  return sub_19755D83C(v0 + v3);
}

uint64_t sub_19755D83C(uint64_t a1)
{
  type metadata accessor for MiniTipsDatastore();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19755CDC8;

  return sub_19755EEA8(a1);
}

uint64_t sub_19755D8E0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t *sub_19755D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35568, &qword_197621E58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_197615EF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197564CDC(a2, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v14 = &qword_197621E58;
    sub_19755C404(v8, &qword_1EAF35568, &qword_197621E58);
    sub_19759228C();
    swift_allocError();
    *v15 = 0xD00000000000001FLL;
    v15[1] = 0x80000001976267E0;
    swift_willThrow();

    sub_19755C404(a2, &qword_1EAF35568, &qword_197621E58);
  }

  else
  {
    v21 = a2;
    (*(v10 + 32))(v13, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35680, &qword_197622790);
    v16 = *(v10 + 72);
    v14 = ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_197618C10;
    (*(v10 + 16))(v14 + v17, v13, v9);
    v18 = sub_197615D30();
    if (!v3)
    {
      v14 = v18;
    }

    sub_19755C404(v21, &qword_1EAF35568, &qword_197621E58);
    (*(v10 + 8))(v13, v9);
  }

  return v14;
}

uint64_t sub_19755DC6C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - v7;
  v9 = sub_197615970();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);
  if (v16)
  {
    v17 = *(v0 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);

    sub_19755BE50(v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      v20 = *(v10 + 32);
      v45 = v10 + 32;
      v46 = v20;
      v20(v15, v8, v9);
      v21 = sub_1976165B0();
      __swift_storeEnumTagSinglePayload(v49, 1, 1, v21);
      v22 = v0[2];
      v43 = v0[3];
      v44 = v22;
      v23 = v0[6];
      v41 = v0[7];
      v42 = v23;
      v24 = v0[9];
      v39 = v0[8];
      v40 = v24;
      (*(v10 + 16))(v13, v15, v9);
      v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v38 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
      v47 = v10;
      v48 = v15;
      v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v46(v29 + v25, v13, v9);
      *(v29 + v38) = v39;
      *(v29 + v26) = v16;
      v30 = (v29 + v27);
      v31 = v41;
      *v30 = v42;
      v30[1] = v31;
      *(v29 + v28) = v40;
      v32 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
      v33 = v43;
      *v32 = v44;
      v32[1] = v33;

      v34 = v49;
      sub_1975FB620(0, 0, v49, &unk_197621F90, v29);
      v36 = v35;

      sub_19755C7C8(v34, &qword_1EAF35140, &qword_197621F80);
      (*(v47 + 8))(v48, v9);
      v37 = *(v1 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask);
      *(v1 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask) = v36;
    }

    sub_19755C7C8(v8, &qword_1EAF34610, &qword_197621E30);
  }

  if (qword_1ED815ED8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for logger();
  __swift_project_value_buffer(v18, qword_1ED815EE0);
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_197616A20();

  v50 = 0xD000000000000016;
  v51 = 0x8000000197626110;
  MEMORY[0x19A8E2A50](v0[2], v0[3]);
  MEMORY[0x19A8E2A50](0xD000000000000017, 0x8000000197626250);
  sub_197558864();
}

uint64_t sub_19755E0BC()
{
  v1 = sub_197615970();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v13 = *(v0 + v7);

  v14 = *(v0 + v8);

  v15 = *(v0 + v9 + 8);

  v16 = *(v0 + v10);

  v17 = *(v0 + v11 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v4 | 7);
}

uint64_t sub_19755E1E0()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_1(v4);
  *v5 = v6;
  v5[1] = sub_1975FCD54;

  return v8(v1);
}

uint64_t sub_19755E2CC(uint64_t a1)
{
  v3 = v2;
  v4 = sub_197615970();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + 24);
  v23 = *(v1 + 16);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v11);
  v16 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v18 = *(v1 + v12);
  v19 = *(v1 + v12 + 8);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_19755CCE8;

  return sub_19755E448(a1, v23, v22, v1 + v6, v13, v14, v16, v17);
}

uint64_t sub_19755E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2232) = v14;
  *(v8 + 2216) = v13;
  *(v8 + 2168) = a8;
  *(v8 + 2120) = a7;
  *(v8 + 2072) = a6;
  *(v8 + 2024) = a5;
  *(v8 + 1976) = a4;
  v9 = sub_197615970();
  *(v8 + 2240) = v9;
  v10 = *(v9 - 8);
  *(v8 + 2248) = v10;
  *(v8 + 2256) = *(v10 + 64);
  *(v8 + 2264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19755E538, 0, 0);
}

uint64_t sub_19755E538()
{
  v1 = v0[283];
  v2 = v0[282];
  v3 = v0[281];
  v4 = v0[280];
  v23 = v0[277];
  v5 = v0[271];
  v6 = v0[265];
  v7 = v0[259];
  v8 = v0[253];
  (*(v3 + 16))(v1, v0[247], v4);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[284] = v10;
  (*(v3 + 32))(v10 + v9, v1, v4);
  v11 = swift_task_alloc();
  v0[285] = v11;
  *(v11 + 16) = &unk_197621FB8;
  *(v11 + 24) = v10;
  swift_asyncLet_begin();
  v12 = swift_allocObject();
  v0[286] = v12;
  v12[2] = v8;
  v12[3] = v7;
  v12[4] = v6;
  v12[5] = v5;
  v13 = swift_task_alloc();
  v0[287] = v13;
  *(v13 + 16) = &unk_197621FD8;
  *(v13 + 24) = v12;

  swift_asyncLet_begin();
  v14 = swift_allocObject();
  v0[288] = v14;
  v14[2] = v23;
  v14[3] = v7;
  v14[4] = v8;
  v15 = swift_task_alloc();
  v0[289] = v15;
  *(v15 + 16) = &unk_197621FF0;
  *(v15 + 24) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35588, &qword_197622008);
  swift_asyncLet_begin();
  if (qword_1ED8172A8 != -1)
  {
    swift_once();
  }

  v16 = v0[279];
  v17 = v0[278];
  v18 = v0[247];
  v19 = type metadata accessor for logger();
  __swift_project_value_buffer(v19, qword_1ED8172B0);
  sub_197616A20();

  MEMORY[0x19A8E2A50](v17, v16);
  MEMORY[0x19A8E2A50](0x6F6C206469642029, 0xEF203A7461206461);
  v20 = sub_197615920();
  MEMORY[0x19A8E2A50](v20);

  sub_197558864();

  return MEMORY[0x1EEE6DEB8](v0 + 2, v21, sub_19756FC74, v0 + 242);
}

uint64_t sub_19755E8B8()
{
  v1 = sub_197615970();
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19755E938()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19755E980()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19755E9C8()
{
  v0 = type metadata accessor for logger();
  __swift_allocate_value_buffer(v0, qword_1ED8172B0);
  *OUTLINED_FUNCTION_13_18() = 1;
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  OUTLINED_FUNCTION_16_14();
  if (v1)
  {
    OUTLINED_FUNCTION_17_14();
  }

  return OUTLINED_FUNCTION_7_20();
}

uint64_t sub_19755EA78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_197615880();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v13 - v8;
  static URL.homeDirectoryForCurrentUser.getter(&v13 - v8);
  v10 = sub_197615970();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_19755ED78(v9);
    v11 = 1;
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E6968F58], v2);
    sub_1975607A8();
    sub_197615940();
    (*(v3 + 8))(v6, v2);
    (*(*(v10 - 8) + 8))(v9, v10);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v10);
}

uint64_t static URL.homeDirectoryForCurrentUser.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4 = &v10 - v3;
  v5 = getuid();
  v6 = getpwuid(v5);
  if (v6 && v6->pw_dir)
  {
    v7 = sub_197615970();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    sub_197615900();
    sub_19755ED78(v4);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  else
  {
    v9 = sub_197615970();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }
}

uint64_t sub_19755ED78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19755EDE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19755EE50()
{
  result = qword_1ED8167E0;
  if (!qword_1ED8167E0)
  {
    sub_197615970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8167E0);
  }

  return result;
}

uint64_t sub_19755EEA8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_197615970();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19755EF74, 0, 0);
}

uint64_t sub_19755EF74()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_1976158D0();
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  OUTLINED_FUNCTION_4_40();
  sub_19755F1B8();

  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_3_37();
  v8(v9);
  sub_1976158D0();
  v10 = [v6 defaultManager];
  OUTLINED_FUNCTION_4_40();
  sub_19755F1B8();

  v11 = OUTLINED_FUNCTION_3_37();
  v8(v11);
  sub_1976158E0();
  sub_1976158D0();
  (v8)(v1, v3);
  v12 = [v6 defaultManager];
  OUTLINED_FUNCTION_4_40();
  sub_19755CB18();

  v13 = OUTLINED_FUNCTION_3_37();
  v8(v13);
  sub_1976158E0();
  sub_1976158D0();
  (v8)(v1, v3);
  v14 = [v6 defaultManager];
  OUTLINED_FUNCTION_4_40();
  sub_19755CB18();

  v15 = OUTLINED_FUNCTION_3_37();
  v8(v15);

  OUTLINED_FUNCTION_3();

  return v16();
}

void sub_19755F1B8()
{
  v1 = v0;
  v12[3] = *MEMORY[0x1E69E9840];
  if ((sub_19755F398() & 1) == 0)
  {
LABEL_9:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = sub_1976158C0();
  v12[0] = 0;
  v3 = [v1 removeItemAtURL:v2 error:v12];

  v4 = v12[0];
  if (!v3)
  {
    v7 = v12[0];
    v8 = sub_197615830();

    swift_willThrow();
    if (qword_1ED815ED8 != -1)
    {
      OUTLINED_FUNCTION_0_33();
    }

    v9 = type metadata accessor for logger();
    __swift_project_value_buffer(v9, qword_1ED815EE0);
    OUTLINED_FUNCTION_1_42();
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD000000000000025, 0x8000000197625D60);
    v10 = sub_197615920();
    MEMORY[0x19A8E2A50](v10);

    MEMORY[0x19A8E2A50](8250, 0xE200000000000000);
    swift_getErrorValue();
    sub_197616EB0();
    MEMORY[0x19A8E2A50](46, 0xE100000000000000);
    sub_197558864();

    goto LABEL_9;
  }

  v5 = *MEMORY[0x1E69E9840];

  v6 = v4;
}

id sub_19755F398()
{
  sub_197615920();
  v1 = sub_1976161B0();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_19755F3FC()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  sub_197615920();
  v1 = sub_1976161B0();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  v3 = *MEMORY[0x1E69E9840];
  return (v2 & v5);
}

uint64_t sub_19755F4A0()
{
  v0 = sub_19755F52C();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_197618BF0;
  *(v3 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35328, &qword_197620D30);
  *(v3 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35040, &qword_19761E9B8);
  *(v3 + 48) = type metadata accessor for RawDictionaryTransformer();
  return v3;
}

uint64_t sub_19755F52C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35638, &qword_1976226F8);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &qword_1EAF345D0;
    v2 = &qword_19761B410;
  }

  else
  {
    v1 = &unk_1EAF35640;
    v2 = &unk_197622700;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19755F63C()
{
  v0 = objc_opt_self();
  v1 = [v0 valueTransformerNames];
  type metadata accessor for NSValueTransformerName(0);
  v2 = sub_197616460();

  v3 = sub_19755F7C8();
  v7 = v3;
  v6[2] = &v7;
  LOBYTE(v1) = sub_19755F828(sub_19755F8F4, v6, v2);

  if ((v1 & 1) == 0)
  {
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = sub_19755F7C8();
    [v0 setValueTransformer:v4 forName:v5];
  }
}

void sub_19755F77C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_19755F7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35638, &qword_1976226F8);
  sub_197616200();
  v0 = sub_1976161B0();

  return v0;
}

BOOL sub_19755F828(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_19755F8D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_19755F914() & 1;
}

uint64_t sub_19755F914()
{
  v0 = sub_1976161E0();
  v2 = v1;
  if (v0 == sub_1976161E0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_197616EF0();
  }

  return v5 & 1;
}

uint64_t sub_19755F9A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_21();
  v9(v8);
  return a2;
}

uint64_t sub_19755F9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_19755FA5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(v0, v3);
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{

  return sub_19755C404(a1, v1, v2);
}

void OUTLINED_FUNCTION_7_3()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_197615AE0();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_197616070();
}

void OUTLINED_FUNCTION_7_7()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_7_10@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 128) = &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0);

  return sub_197615A60();
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_197616D80();
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return sub_1976168B0();
}

uint64_t OUTLINED_FUNCTION_7_20()
{
  v3 = v1 + *(v0 + 20);

  return sub_197615BA0();
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return swift_allocObject();
}

uint64_t sub_19755FD88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_25_3()
{

  return sub_197615B20();
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return sub_197615820();
}

void OUTLINED_FUNCTION_25_5()
{

  sub_197558864();
}

uint64_t OUTLINED_FUNCTION_25_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return sub_197617180();
}

unint64_t sub_19755FEB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_19755FEF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19755FF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19755FF88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_19755FFD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CoreRuleRecord()
{
  result = qword_1ED817258;
  if (!qword_1ED817258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CoreParameterRecord()
{
  result = qword_1ED817120;
  if (!qword_1ED817120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CoreTipRecord()
{
  result = qword_1ED8170B8;
  if (!qword_1ED8170B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1975600FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CoreEventRecord()
{
  result = qword_1ED8171F0;
  if (!qword_1ED8171F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1)
{
  v1[117] = a1;
  v1[99] = 0;
  v1[100] = 0xE000000000000000;

  return sub_197616A20();
}

uint64_t OUTLINED_FUNCTION_19_3()
{
  v2 = *(v0 - 144);

  return sub_197616D30();
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{
  *(v1 - 96) = a1;
  *(v1 - 88) = a1;
  v3 = MEMORY[0x1E697BC78];

  return MEMORY[0x1EEE6BF68](v1 - 112, v3, 1);
}

uint64_t OUTLINED_FUNCTION_19_5()
{
  v2 = *(v0 - 240);

  return sub_197615700();
}

uint64_t OUTLINED_FUNCTION_19_13()
{
  result = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[3];
  v5 = *(v0[11] + 32);
  return result;
}

uint64_t sub_197560338(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_32_2()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void OUTLINED_FUNCTION_32_6()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 128, v0);
}

void *OUTLINED_FUNCTION_20_3()
{
  v3 = (*(v1 + 1584) + 320 * v0 + 32);

  return memcpy((v1 + 16), v3, 0x139uLL);
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1975586C0(a1, va);
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return sub_197615700();
}

void OUTLINED_FUNCTION_20_7()
{

  sub_19757EEC4();
}

unint64_t OUTLINED_FUNCTION_20_10()
{
  v2 = *v0;

  return sub_19755C610();
}

uint64_t OUTLINED_FUNCTION_20_12@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = result;
  v6[4] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 128, v3);
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1975CFB0C(va, v8, v9);
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  v2 = *(v0 - 216);
  v3 = *(v0 - 176);
  v4 = *(v0 - 128);

  return sub_1976156F0();
}

uint64_t OUTLINED_FUNCTION_11_14()
{
}

uint64_t OUTLINED_FUNCTION_11_16()
{
  result = v1;
  *(v2 - 144) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_17()
{
  v1 = *(v0 - 160);
  v2 = *(*(v0 - 168) + 8);
  return *(v0 - 200);
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return sub_197615AD0();
}

uint64_t OUTLINED_FUNCTION_11_23()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  v6 = *(v0[17] + 8);
  return v0[18];
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

unint64_t sub_1975607A8()
{
  result = qword_1ED816FD0;
  if (!qword_1ED816FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816FD0);
  }

  return result;
}

id sub_197560820()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_19756087C()
{
  result = qword_1ED816E50;
  if (!qword_1ED816E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816E50);
  }

  return result;
}

uint64_t sub_197560918()
{
  result = sub_197615B40();
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

uint64_t sub_197560A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35648, &qword_197622750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19761C160;
  v1 = type metadata accessor for CoreTipRecord();
  v2 = sub_19755FFD0(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CoreRuleRecord();
  v4 = sub_19755FFD0(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CoreParameterRecord();
  v6 = sub_19755FFD0(&qword_1ED817148, type metadata accessor for CoreParameterRecord);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CoreEventRecord();
  v8 = sub_19755FFD0(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for CoreDonationRecord();
  v10 = sub_19755FFD0(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  return v0;
}

uint64_t sub_197560BC4()
{
  result = sub_197615B40();
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

uint64_t sub_197560C88()
{
  result = sub_197615B40();
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

uint64_t sub_197561020()
{
  result = sub_197615B40();
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

uint64_t sub_1975611B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CoreDonationRecord()
{
  result = qword_1ED817188;
  if (!qword_1ED817188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_197561290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1975612D8()
{
  result = sub_197615B40();
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

uint64_t static CoreTipRecord.schemaMetadata.getter()
{
  v61 = sub_197616010();
  v0 = *(v61 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_6_0();
  v57 = v3 - v2;
  v56 = sub_197615FC0();
  OUTLINED_FUNCTION_14();
  v55 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v54 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v10 = *(v0 + 72);
  v60 = v0;
  v11 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_197620BF0;
  v58 = v12;
  v59 = v11;
  swift_getKeyPath();
  v63 = MEMORY[0x1E69E6158];
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  v13 = sub_197616060();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  sub_197560338(&qword_1ED816FD8, MEMORY[0x1E697BD30]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v63 = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_0(v62);
  sub_197615A50();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v16 = sub_197616070();
  OUTLINED_FUNCTION_31(v16);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v17 = sub_197616070();
  OUTLINED_FUNCTION_31(v17);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v18 = MEMORY[0x1E69E7290];
  v63 = MEMORY[0x1E69E7290];
  LOWORD(v62[0]) = 0;
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v19 = sub_197616070();
  OUTLINED_FUNCTION_31(v19);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v63 = v18;
  LOWORD(v62[0]) = 1;
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v20 = sub_197616070();
  OUTLINED_FUNCTION_31(v20);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E8, &qword_19761E9B0);
  v21 = *(sub_197616050() - 8);
  v22 = *(v21 + 72);
  v23 = *(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_197618C10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35328, &qword_197620D30);
  sub_197616040();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v24 = sub_197616070();
  OUTLINED_FUNCTION_31(v24);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v25 = sub_1976160B0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A8, &qword_19761C270);
  v62[0] = v25;
  *(swift_allocObject() + 16) = xmmword_197618C10;
  type metadata accessor for RawDictionaryTransformer();
  sub_197616040();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v26 = sub_197616070();
  OUTLINED_FUNCTION_31(v26);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  v62[0] = MEMORY[0x1E69E7CC0];
  (*(v55 + 104))(v54, *MEMORY[0x1E697BCD8], v56);
  swift_getKeyPath();
  v27 = sub_197615FD0();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_197615FE0();
  sub_197560338(qword_1ED817008, MEMORY[0x1E697BCF0]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35330, &qword_197620DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35338, &unk_197620DC0);
  OUTLINED_FUNCTION_14();
  v31 = v30;
  v33 = *(v32 + 72);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_19761C160;
  v36 = (v35 + v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_197619030;
  *(v37 + 32) = swift_getKeyPath();
  *v36 = v37;
  v38 = *MEMORY[0x1E697BD10];
  v39 = *(v31 + 104);
  OUTLINED_FUNCTION_46();
  v39();
  v40 = OUTLINED_FUNCTION_51();
  *(v40 + 16) = xmmword_197619030;
  *(v40 + 32) = swift_getKeyPath();
  *(v36 + v33) = v40;
  OUTLINED_FUNCTION_46();
  v39();
  v41 = OUTLINED_FUNCTION_51();
  *(v41 + 16) = xmmword_197619030;
  *(v41 + 32) = swift_getKeyPath();
  *(v36 + 2 * v33) = v41;
  OUTLINED_FUNCTION_46();
  v39();
  v42 = OUTLINED_FUNCTION_51();
  *(v42 + 16) = xmmword_197619030;
  *(v42 + 32) = swift_getKeyPath();
  *(v36 + 3 * v33) = v42;
  OUTLINED_FUNCTION_46();
  v39();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_19761C170;
  *(v43 + 32) = swift_getKeyPath();
  *(v43 + 40) = swift_getKeyPath();
  *(v36 + 4 * v33) = v43;
  OUTLINED_FUNCTION_46();
  v39();
  v44 = OUTLINED_FUNCTION_18_0();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_60();
  sub_197616020();
  sub_1975E5660(&qword_1ED816FE0, &unk_1EAF35340);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  sub_197561FE0();
  v50 = v49;
  v51 = *(v49 + 16);
  if (v51 >= *(v49 + 24) >> 1)
  {
    sub_197561FE0();
    v50 = v53;
  }

  *(v50 + 16) = v51 + 1;
  (*(v60 + 32))(v50 + v59 + v51 * v10, v57, v61);
  sub_197562DA0(v50);
  return v58;
}

void OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 152) = a6;
  *(v7 - 144) = a7;
  *(v7 - 160) = a4;
  *(v7 - 156) = a5;
  *(v7 - 168) = a3;
  *(v7 - 120) = a2;
}

void sub_197561FE0()
{
  OUTLINED_FUNCTION_28_1();
  if (v3)
  {
    OUTLINED_FUNCTION_26_2();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_30_3();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1975620C4(*(v0 + 16), v4, &qword_1EAF349E0, &unk_19761B3C0, MEMORY[0x1E697BD08]);
  OUTLINED_FUNCTION_40_0();
  v7 = sub_197616010();
  OUTLINED_FUNCTION_31_2(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_41_0();
  if (v1)
  {
    OUTLINED_FUNCTION_33_1(MEMORY[0x1E697BD08], v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
  }
}

size_t sub_1975620C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_40_0();
  v9 = a5(v8);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void static CoreEventRecord.schemaMetadata.getter()
{
  OUTLINED_FUNCTION_26_3();
  v64 = v0;
  v65 = v1;
  v61 = sub_197616010();
  v2 = *(v61 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_6_0();
  v58 = v5 - v4;
  v56 = sub_197615FC0();
  v6 = OUTLINED_FUNCTION_0(v56);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v57 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v13 = *(v2 + 72);
  v60 = v2;
  v14 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  *(swift_allocObject() + 16) = xmmword_19761C160;
  v59 = v14;
  swift_getKeyPath();
  *(&v63 + 1) = MEMORY[0x1E69E6158];
  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  v15 = sub_197616060();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  sub_1975611B4(&qword_1ED816FD8, MEMORY[0x1E697BD30]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v63 + 1) = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_0(&v62);
  sub_197615A50();
  v19 = *(v15 + 48);
  v20 = *(v15 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v21 = sub_1976160B0();
  *(&v63 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A8, &qword_19761C270);
  *&v62 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E8, &qword_19761E9B0);
  v22 = *(sub_197616050() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  *(swift_allocObject() + 16) = xmmword_197618C10;
  type metadata accessor for RawDictionaryTransformer();
  sub_197616040();
  v25 = *(v15 + 48);
  v26 = *(v15 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  *(&v63 + 1) = v27;
  *&v62 = v18;
  v28 = *MEMORY[0x1E697BCD8];
  v29 = *(v8 + 104);
  v29(v57, v28, v56);
  v30 = sub_197615FD0();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_15_0();
  sub_197615FE0();
  sub_1975611B4(qword_1ED817008, MEMORY[0x1E697BCF0]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v63 + 1) = v27;
  *&v62 = MEMORY[0x1E69E7CC0];
  v29(v57, v28, v56);
  swift_getKeyPath();
  v33 = *(v30 + 48);
  v34 = *(v30 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_15_0();
  sub_197615FE0();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v62 = 0u;
  v63 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CE8, &qword_19761C2D0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CF0, &unk_19761C2D8);
  OUTLINED_FUNCTION_0(v35);
  v37 = v36;
  v39 = *(v38 + 72);
  v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_197618BF0;
  v42 = (v41 + v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_197619030;
  *(v43 + 32) = swift_getKeyPath();
  *v42 = v43;
  v44 = *MEMORY[0x1E697BD10];
  v45 = *(v37 + 104);
  v45(v42, v44, v35);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_197619030;
  *(v46 + 32) = swift_getKeyPath();
  *(v42 + v39) = v46;
  v45((v42 + v39), v44, v35);
  v47 = (v42 + 2 * v39);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_19761C170;
  *(v48 + 32) = swift_getKeyPath();
  *(v48 + 40) = swift_getKeyPath();
  *v47 = v48;
  v45(v47, v44, v35);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CF8, &qword_19761C2E8);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_197616020();
  sub_197559AAC(&qword_1ED816FF8, &qword_1EAF34CF8, &qword_19761C2E8);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  sub_197561FE0();
  v53 = v52;
  v54 = *(v52 + 16);
  if (v54 >= *(v52 + 24) >> 1)
  {
    sub_197561FE0();
    v53 = v55;
  }

  *(v53 + 16) = v54 + 1;
  (*(v60 + 32))(v53 + v59 + v54 * v13, v58, v61);
  sub_197562DA0(v53);
  OUTLINED_FUNCTION_25_2();
}

void sub_197562ABC(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  CoreEventRecord.rules.getter();
  *v1 = v2;
}

void sub_197562AE8(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  CoreEventRecord.donations.getter();
  *v1 = v2;
}

void OUTLINED_FUNCTION_27()
{

  JUMPOUT(0x19A8E2A50);
}

void OUTLINED_FUNCTION_27_1(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_27_3(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(v3 - 160) = a1;
  *(v3 - 152) = a2;
  *(v3 - 112) = a3;
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1975586C0(v2, va);
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return sub_197573E58();
}

uint64_t OUTLINED_FUNCTION_26_5()
{
  v2 = *(v0 - 296);

  return sub_197615820();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return sub_197616A20();
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return swift_dynamicCast();
}

uint64_t sub_197562DA0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1975BC460(result, 1, sub_197561FE0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_197616010();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_197562EA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_36_1();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_13(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v12 = OUTLINED_FUNCTION_11_3();

      return MEMORY[0x1EEE6BCF8](v12);
    }
  }

  else
  {
    a4(0);
    v13 = OUTLINED_FUNCTION_11_3();

    return MEMORY[0x1EEE6BD00](v13);
  }

  return result;
}

uint64_t static CoreRuleRecord.schemaMetadata.getter()
{
  v67 = sub_197616010();
  v0 = *(v67 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_6_0();
  v63 = v3 - v2;
  v4 = sub_197615FC0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v70 = v6;
  v71 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v62 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v11 = *(v0 + 72);
  v66 = v0;
  v12 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19761E820;
  v65 = v12;
  v64 = v13;
  swift_getKeyPath();
  v73 = MEMORY[0x1E69E6158];
  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  v14 = sub_197616060();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  sub_1975600FC(&qword_1ED816FD8, MEMORY[0x1E697BD30]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v73 = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_0(v72);
  sub_197615A50();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v17 = sub_197616070();
  OUTLINED_FUNCTION_31(v17);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v18 = MEMORY[0x1E69E7290];
  v73 = MEMORY[0x1E69E7290];
  LOWORD(v72[0]) = 0;
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v19 = sub_197616070();
  OUTLINED_FUNCTION_31(v19);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v73 = v18;
  LOWORD(v72[0]) = 0;
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v20 = sub_197616070();
  OUTLINED_FUNCTION_31(v20);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E8, &qword_19761E9B0);
  v21 = *(sub_197616050() - 8);
  v22 = *(v21 + 72);
  v23 = *(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_197618C10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35040, &qword_19761E9B8);
  sub_197616040();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v24 = sub_197616070();
  OUTLINED_FUNCTION_31(v24);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v25 = sub_1976160B0();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A8, &qword_19761C270);
  v72[0] = v25;
  *(swift_allocObject() + 16) = xmmword_197618C10;
  type metadata accessor for RawDictionaryTransformer();
  sub_197616040();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_11_0();
  v26 = sub_197616070();
  OUTLINED_FUNCTION_31(v26);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v27 = OUTLINED_FUNCTION_32_2();
  v28 = *MEMORY[0x1E697BCE0];
  v68 = *(v70 + 104);
  v68(v62, v28, v71, v27);
  v29 = sub_197615FD0();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_15_0();
  sub_197615FE0();
  sub_1975600FC(qword_1ED817008, MEMORY[0x1E697BCF0]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  v69 = v11;
  swift_getKeyPath();
  v32 = OUTLINED_FUNCTION_32_2();
  v68(v62, v28, v71, v32);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_15_0();
  v33 = sub_197615FE0();
  OUTLINED_FUNCTION_39_1(v33);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v34 = OUTLINED_FUNCTION_32_2();
  v68(v62, v28, v71, v34);
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_15_0();
  v35 = sub_197615FE0();
  OUTLINED_FUNCTION_39_1(v35);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v36 = OUTLINED_FUNCTION_32_2();
  v68(v62, v28, v71, v36);
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_37_1();
  v37 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_15_0();
  sub_197615FE0();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  v72[0] = v37;
  (v68)(v62, *MEMORY[0x1E697BCD8], v71);
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_15_0();
  v38 = sub_197615FE0();
  OUTLINED_FUNCTION_31(v38);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35048, &qword_19761EAA0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35050, &unk_19761EAA8);
  OUTLINED_FUNCTION_0(v39);
  v41 = v40;
  v43 = *(v42 + 72);
  v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_19761C160;
  v46 = (v45 + v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_197619030;
  *(v47 + 32) = swift_getKeyPath();
  *v46 = v47;
  v48 = *MEMORY[0x1E697BD10];
  v49 = *(v41 + 104);
  OUTLINED_FUNCTION_34_2();
  v49();
  v50 = OUTLINED_FUNCTION_36_2();
  *(v50 + 16) = xmmword_197619030;
  *(v50 + 32) = swift_getKeyPath();
  *(v46 + v43) = v50;
  OUTLINED_FUNCTION_34_2();
  v49();
  v51 = OUTLINED_FUNCTION_36_2();
  *(v51 + 16) = xmmword_197619030;
  *(v51 + 32) = swift_getKeyPath();
  *(v46 + 2 * v43) = v51;
  OUTLINED_FUNCTION_34_2();
  v49();
  v52 = OUTLINED_FUNCTION_36_2();
  *(v52 + 16) = xmmword_197619030;
  *(v52 + 32) = swift_getKeyPath();
  *(v46 + 3 * v43) = v52;
  OUTLINED_FUNCTION_34_2();
  v49();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_19761C170;
  *(v53 + 32) = swift_getKeyPath();
  *(v53 + 40) = swift_getKeyPath();
  *(v46 + 4 * v43) = v53;
  OUTLINED_FUNCTION_34_2();
  v49();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35058, &qword_19761EAB8);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_42();
  sub_197616020();
  sub_197559AAC(&qword_1ED817000, &qword_1EAF35058, &qword_19761EAB8);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  sub_197561FE0();
  v58 = v57;
  v59 = *(v57 + 16);
  if (v59 >= *(v57 + 24) >> 1)
  {
    sub_197561FE0();
    v58 = v61;
  }

  *(v58 + 16) = v59 + 1;
  (*(v66 + 32))(v58 + v65 + v59 * v69, v63, v67);
  sub_197562DA0(v58);
  return v64;
}

uint64_t static CoreParameterRecord.schemaMetadata.getter()
{
  v51 = sub_197616010();
  v0 = *(v51 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6_0();
  v47 = v3 - v2;
  v46 = sub_197615FC0();
  v4 = OUTLINED_FUNCTION_0(v46);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v45 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v11 = *(v0 + 72);
  v50 = v0;
  v12 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19761C160;
  v48 = v12;
  v49 = v13;
  swift_getKeyPath();
  *(&v53 + 1) = MEMORY[0x1E69E6158];
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  v14 = sub_197616060();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_6();
  sub_19755FD88(&qword_1ED816FD8, MEMORY[0x1E697BD30]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v53 + 1) = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_0(&v52);
  sub_197615A50();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v52 = 0u;
  v53 = 0u;
  OUTLINED_FUNCTION_20_1();
  v18 = OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_23_3(v18);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v53 + 1) = MEMORY[0x1E69E6158];
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  OUTLINED_FUNCTION_20_1();
  v19 = OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_23_3(v19);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v53 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  *&v52 = v17;
  (*(v6 + 104))(v45, *MEMORY[0x1E697BCD8], v46);
  v20 = sub_197615FD0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_197615FE0();
  sub_19755FD88(qword_1ED817008, MEMORY[0x1E697BCF0]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v52 = 0u;
  v53 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D58, &qword_19761CA38);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D60, &unk_19761CA40);
  OUTLINED_FUNCTION_0(v23);
  v25 = v24;
  v27 = *(v26 + 72);
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_197618BF0;
  v30 = (v29 + v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_197619030;
  *(v31 + 32) = swift_getKeyPath();
  *v30 = v31;
  v32 = *MEMORY[0x1E697BD10];
  v33 = *(v25 + 104);
  v33(v30, v32, v23);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_197619030;
  *(v34 + 32) = swift_getKeyPath();
  *(v30 + v27) = v34;
  v33((v30 + v27), v32, v23);
  v35 = (v30 + 2 * v27);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_19761C170;
  *(v36 + 32) = swift_getKeyPath();
  *(v36 + 40) = swift_getKeyPath();
  *v35 = v36;
  v33(v35, v32, v23);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D68, &qword_19761CA50);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_197616020();
  sub_197559AAC(&qword_1ED816FE8, &qword_1EAF34D68, &qword_19761CA50);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  sub_197561FE0();
  v41 = v40;
  v42 = *(v40 + 16);
  if (v42 >= *(v40 + 24) >> 1)
  {
    sub_197561FE0();
    v41 = v44;
  }

  *(v41 + 16) = v42 + 1;
  (*(v50 + 32))(v41 + v48 + v42 * v11, v47, v51);
  sub_197562DA0(v41);
  return v49;
}

uint64_t static CoreDonationRecord.schemaMetadata.getter()
{
  v49 = sub_197616010();
  v0 = *(v49 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_6_0();
  v46 = v3 - v2;
  v4 = sub_197615FC0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v13 = *(v0 + 72);
  v48 = v0;
  v14 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_197618BF0;
  v47 = v15;
  swift_getKeyPath();
  *(&v51 + 1) = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_1Tm(&v50);
  sub_197615A50();
  v16 = sub_197616060();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_35();
  sub_197616070();
  sub_197561290(&qword_1ED816FD8, MEMORY[0x1E697BD30]);
  OUTLINED_FUNCTION_37_0();
  sub_197616000();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E8, &qword_19761E9B0);
  v19 = sub_197616050();
  OUTLINED_FUNCTION_20_0(v19);
  v21 = *(v20 + 72);
  v23 = *(v22 + 80);
  *(OUTLINED_FUNCTION_32_1() + 16) = xmmword_197618C10;
  type metadata accessor for RawDictionaryTransformer();
  sub_197616040();
  v24 = *(v16 + 48);
  v25 = *(v16 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_35();
  sub_197616070();
  OUTLINED_FUNCTION_37_0();
  sub_197616000();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  (*(v7 + 104))(v12, *MEMORY[0x1E697BCE0], v4);
  v26 = sub_197615FD0();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_197615FE0();
  sub_197561290(qword_1ED817008, MEMORY[0x1E697BCF0]);
  OUTLINED_FUNCTION_37_0();
  sub_197616000();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349F0, &qword_19761B400);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349F8, &qword_19761B408);
  OUTLINED_FUNCTION_0(v29);
  v31 = v30;
  v33 = *(v32 + 72);
  v34 = *(v30 + 80);
  v35 = OUTLINED_FUNCTION_32_1();
  *(v35 + 16) = xmmword_197618C10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_197619030;
  KeyPath = swift_getKeyPath();
  *(v35 + v14) = v36;
  *(v36 + 32) = KeyPath;
  (*(v31 + 104))(v35 + v14, *MEMORY[0x1E697BD10], v29);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A00, &qword_19761B418);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_197616020();
  sub_19755A45C();
  OUTLINED_FUNCTION_37_0();
  sub_197616000();
  sub_197561FE0();
  v42 = v41;
  v43 = *(v41 + 16);
  if (v43 >= *(v41 + 24) >> 1)
  {
    sub_197561FE0();
    v42 = v45;
  }

  *(v42 + 16) = v43 + 1;
  (*(v48 + 32))(v42 + v14 + v43 * v13, v46, v49);
  sub_197562DA0(v42);
  return v47;
}

uint64_t sub_1975649B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 == 1)
  {
    return sub_197615EB0();
  }

  v6 = a3;
  LOBYTE(v7) = a1;
  v8 = &unk_1EAF34000;
  v9 = &unk_1EAF3E000;
  if (!a3)
  {
    if (a1)
    {
      v19 = a4;
      goto LABEL_10;
    }

    return sub_197615EB0();
  }

  v4 = a2;
  v19 = a4;
  if (qword_1EAF34280 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v10 = v9[101];
    v18[0] = v4;
    v18[1] = v6;
    MEMORY[0x1EEE9AC00](a1);
    v17[2] = v18;
    if (sub_1975544B4(sub_197556D58, v17, v11))
    {
      return sub_197615EC0();
    }

    if ((v7 & 1) == 0)
    {
      break;
    }

LABEL_10:
    if (v8[80] != -1)
    {
      OUTLINED_FUNCTION_0_47();
    }

    v8 = 0;
    v7 = v9[101];
    v9 = v7[2];
    for (i = v7 + 5; ; i += 2)
    {
      v13 = v7[2];
      if (v9 == v8)
      {
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = v7[4];
        v15 = v7[5];

        sub_197615EC0();
      }

      if (v8 >= v13)
      {
        break;
      }

      v4 = *(i - 1);
      v6 = *i;

      if (sub_1976162F0())
      {
        sub_197615EC0();
      }

      v8 = (v8 + 1);
    }

    __break(1u);
LABEL_23:
    a1 = OUTLINED_FUNCTION_0_47();
  }

LABEL_19:
  sub_19759228C();
  swift_allocError();
  *v16 = 0xD000000000000027;
  v16[1] = 0x8000000197626790;
  return swift_willThrow();
}

unint64_t sub_197564BD8()
{
  result = qword_1ED816E48;
  if (!qword_1ED816E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816E48);
  }

  return result;
}

uint64_t sub_197564C90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_28_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_21();
  v9(v8);
  return v4;
}

uint64_t sub_197564CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35568, &qword_197621E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197564D4C()
{
  swift_getObjCClassMetadata();
  sub_197564D84();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_197564D90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35630, &qword_1976226F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_197618C10;
  v1 = sub_19756087C();
  *(v0 + 32) = &_s15TipsSchemaV0001ON;
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_197564DFC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t sub_197564E8C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1975FBD94;

  return v6();
}

uint64_t sub_197564F78()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1975EDA70;
  v6 = OUTLINED_FUNCTION_18_0();

  return sub_197565018(v6, v7, v4);
}

uint64_t sub_197565018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  if (a1)
  {
    v6 = swift_task_alloc();
    v3[3] = v6;
    *v6 = v3;
    v6[1] = sub_1975FBC8C;

    return sub_197565104(a2, a3);
  }

  else
  {
    v8 = v3[1];

    return v8(1);
  }
}

uint64_t sub_197565104(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  *v6 = v3;
  v6[1] = sub_1975FF700;

  return sub_1975651AC(a1, a2);
}

uint64_t sub_1975651AC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1975651D0, v2, 0);
}

uint64_t sub_1975651D0()
{
  v1 = v0[15];
  v2 = v0[13];
  sub_197615CF0();
  v0[16] = *(v1 + 112);
  v0[17] = *(v1 + 120);

  OUTLINED_FUNCTION_31_0();
  v0[18] = sub_19755D67C();
  sub_19756FC90(v0 + 7);
  v3 = v0[10];
  v4 = __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_197616690();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v0[19] = sub_19755FF88(&qword_1ED816F58, v8, _s16ContainerMonitorCMa);
  OUTLINED_FUNCTION_140();
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_104(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_13_20(v11);
  v13 = OUTLINED_FUNCTION_82();

  return MEMORY[0x1EEE6D8D0](v13);
}

uint64_t sub_1975653E0()
{
  v1 = *(v0 + 104);

  sub_1975D54D0((v0 + 120));
  *(v0 + 112) = 0;
  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1975673F8, 0, 0);
}

uint64_t sub_197565498(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_197565558(*(v1 + 96), v2 | (v3 << 8));
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19756559C();
  }

  else
  {
    *(v1 + 96) = v2;
    *(v1 + 97) = v3;
  }

  return result;
}

uint64_t sub_197565558(__int16 a1, __int16 a2)
{
  if (a2 != a1)
  {
    return 1;
  }

  if (HIBYTE(a1) == 10)
  {
    if (HIBYTE(a2) != 10)
    {
      return 1;
    }
  }

  else if (HIBYTE(a1) != HIBYTE(a2) || HIBYTE(a2) == 10)
  {
    return 1;
  }

  return 0;
}

void sub_19756567C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1())
  {
    v14 = [objc_opt_self() currentRunLoop];
    v15 = swift_allocObject();
    v15[2] = a7;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a1;
    v15[6] = a2;
    v15[7] = a5;
    v15[8] = a6;
    v17[4] = sub_197565A2C;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1975659E8;
    v17[3] = &block_descriptor_1;
    v16 = _Block_copy(v17);

    [v14 performBlock_];
    _Block_release(v16);
  }
}

uint64_t sub_1975657DC(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 20);
  os_unfair_lock_unlock((a1 + 16));
  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_197565874()
{
  result = qword_1ED816D08;
  if (!qword_1ED816D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34AE8, &qword_19761B848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816D08);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_11_6();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1975659E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_197565A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  withContinuousObservation<A>(_:continueObserving:didChange:)(a1, a2, sub_1976084E0, v14, a5, a6, a7);
}

uint64_t sub_197565AFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_197565B4C()
{
  result = qword_1ED816700;
  if (!qword_1ED816700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34D78, &qword_19761CE28);
    sub_197559AAC(&qword_1ED8166F0, &qword_1EAF34D70, &unk_1976223F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816700);
  }

  return result;
}

unint64_t sub_197565BFC()
{
  result = qword_1ED816708;
  if (!qword_1ED816708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34D80, &qword_19761CE58);
    sub_197565B4C();
    sub_197565874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816708);
  }

  return result;
}

uint64_t sub_197565C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a4;
  v75 = a3;
  v64 = sub_197615F50();
  v63 = *(v64 - 8);
  v10 = *(v63 + 64);
  v11 = MEMORY[0x1EEE9AC00](v64);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v58 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  v14 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = &v58 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  v16 = *(v69 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v19 = &v58 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  v20 = *(v68 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v23 = &v58 - v22;
  swift_getKeyPath();
  sub_197567FA8(&qword_1ED816CD8, MEMORY[0x1E6969530]);
  sub_197615640();
  v82 = a1;
  v83 = a2;
  v86 = v72;
  sub_197615AE0();
  v70 = a6;
  v71 = a5;
  v77 = a5;
  v78 = a6;
  v79 = a1;
  v80 = a2;
  v61 = a2;
  v24 = v74;
  v81 = v75;
  v74 = sub_197566864(v73, 0, MEMORY[0x1E69E7CC0], v23, v19, sub_1975C91C0, v76);
  if (v24)
  {

    (*(v16 + 8))(v19, v69);
    (*(v20 + 8))(v23, v68);
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_197616A20();

    v84 = 0xD00000000000002ALL;
    v85 = 0x80000001976246C0;
    v26 = (*(*(v70 + 16) + 16))(v71);
    MEMORY[0x19A8E2A50](v26);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v27 = v84;
    v28 = v85;
    sub_19759228C();
    swift_allocError();
    *v29 = v27;
    v29[1] = v28;
    swift_willThrow();
    return v74;
  }

  v31 = v25;
  v59 = a1;
  (*(v16 + 8))(v19, v69);
  (*(v20 + 8))(v23, v68);
  v32 = v70;
  v33 = v71;
  v34 = v67;
  if (v31 & 1) != 0 || ((*(v70 + 48))(v71, v70))
  {
    goto LABEL_5;
  }

  v40 = CoreParameterProtocol.valueType.getter();
  v42 = v41;
  if (v40 == CoreParameterRecord.valueType.getter() && v42 == v43)
  {

LABEL_13:
    v46 = CoreParameterRecord.valueData.getter();
    v48 = v47;
    (*(v32 + 64))();
    sub_197576558(v46, v48);
    goto LABEL_14;
  }

  v45 = sub_197616EF0();

  if (v45)
  {
    goto LABEL_13;
  }

LABEL_5:
  KeyPath = swift_getKeyPath();
  (*(v32 + 56))(v33, v32);
  v36 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v37 = sub_19756EF78();
  v39 = v38;
  (*(v65 + 8))(v34, v36);
  sub_19757C310(KeyPath, v37, v39);

  sub_197567790(v37, v39);
  swift_getKeyPath();
  CoreParameterProtocol.valueType.getter();
  sub_19757FD24();

LABEL_14:
  v49 = sub_197615C20();
  v50 = v64;
  v51 = v61;
  v52 = v62;
  if (v49)
  {
    sub_197615C70();
  }

  v53 = v63;
  type metadata accessor for CoreParameter();
  sub_197567FA8(&qword_1ED817148, type metadata accessor for CoreParameterRecord);
  v30 = v74;
  sub_197615DB0();
  v54 = static CoreParameter.modelIdentifiers.getter();
  v55 = v60;
  (*(v53 + 16))(v60, v52, v50);

  swift_isUniquelyReferenced_nonNull_native();
  v84 = v54;
  sub_19757B964(v55, v59, v51);

  v56 = v84;
  (*(v53 + 8))(v52, v50);
  static CoreParameter.modelIdentifiers.setter(v56);
  return v30;
}

uint64_t sub_197566500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a2;
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  v34 = OUTLINED_FUNCTION_0(v6);
  v35 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D70, &unk_1976223F0);
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D78, &qword_19761CE28);
  OUTLINED_FUNCTION_0(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v32 - v27;
  v29 = *a1;
  sub_197559AAC(&qword_1ED8166E8, &qword_1EAF34D70, &unk_1976223F0);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v15 + 8))(v20, v13);
  v36 = v32;
  v37 = v33;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D80, &qword_19761CE58);
  a4[4] = sub_197565BFC();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED8166F8, &qword_1EAF34D78, &qword_19761CE28);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848);
  v30 = v34;
  sub_1976156F0();
  (*(v35 + 8))(v12, v30);
  return (*(v23 + 8))(v28, v21);
}

uint64_t sub_197566864(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v41 = a1;
  v8 = v7;
  v37 = a6;
  v38 = a7;
  v40 = a3;
  v39 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  v15 = OUTLINED_FUNCTION_0(v54);
  v43 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v36 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D30, &unk_1976223E0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  OUTLINED_FUNCTION_0(v21);
  v23 = v22;
  v25 = *(v24 + 72);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_197618C10;
  (*(v23 + 16))(v27 + v26, a4, v21);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  (*(*(v28 - 8) + 16))(v14, a5, v28);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);
  v29 = sub_197567FF0(&qword_1ED817148, type metadata accessor for CoreParameterRecord);
  sub_197615D90();
  v50 = v8;
  v51 = v29;
  swift_getKeyPath();
  v52 = 1;
  v53 = 0;
  OUTLINED_FUNCTION_4_23();

  v48 = v8;
  v49 = v29;
  swift_getKeyPath();
  LOBYTE(v52) = v39;
  OUTLINED_FUNCTION_4_23();

  v46 = v8;
  v47 = v29;
  swift_getKeyPath();
  v52 = v40;

  OUTLINED_FUNCTION_4_23();

  v44 = v8;
  v45 = v29;
  swift_getKeyPath();
  v52 = v27;

  OUTLINED_FUNCTION_4_23();

  v30 = v42;
  v31 = sub_197615C80();
  if (!v30)
  {
    v32 = v31;
    v33 = v37;
    v42 = sub_197567E4C(v31);
    if (v42)
    {
      sub_1975692BC(0, (v32 & 0xC000000000000001) == 0, v32);
      if ((v32 & 0xC000000000000001) != 0)
      {
        a4 = MEMORY[0x19A8E31E0](0, v32);
      }

      else
      {
        a4 = *(v32 + 32);
      }
    }

    else
    {

      a4 = v33(v34);
      sub_197615CD0();
    }
  }

  (*(v43 + 8))(v20, v54);

  return a4;
}

__n128 sub_197566CB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197566D78(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00]();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  a1(v11);
  return (*(v7 + 8))(v11, a5);
}

uint64_t _s6StatusVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x197566F24);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

void sub_197566F4C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_197616620() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  sub_197566FDC(a1, v6, v7, v8, v9, v3);
}

void sub_197566FDC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a1;
  v30 = a4;
  v31 = a3;
  v8 = sub_1976165D0();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = sub_197616860();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - v16;
  v18 = *(a6 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v26 - v23;
  os_unfair_lock_lock((a2 + 16));
  v25 = *(a2 + 20);
  os_unfair_lock_unlock((a2 + 16));
  if (v25 == 1)
  {
    v31(v29);
    if (__swift_getEnumTagSinglePayload(v17, 1, a6) == 1)
    {
      (*(v13 + 8))(v17, v12);
    }

    else
    {
      (*(v18 + 32))(v24, v17, a6);
      (*(v18 + 16))(v22, v24, a6);
      sub_197616620();
      sub_197616600();
      (*(v26 + 8))(v11, v27);
      (*(v18 + 8))(v24, a6);
    }
  }
}

uint64_t _s6StatusVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65284;
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

uint64_t (*sub_197567348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a5;
  v14[8] = a6;

  return sub_197565664;
}

uint64_t sub_1975673F8()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  type metadata accessor for CoreTipRecord();
  sub_19757063C();
  if (!v1)
  {

    v5 = v0[11];
    OUTLINED_FUNCTION_10();
    if (swift_weakLoadStrong())
    {
      sub_197580628(v0[9]);
    }
  }

  v6 = v0[12];

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_1975674F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_197567560@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1975674F0(a1, &v7);
  if (!v8)
  {
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_19755404C(0, &qword_1ED816C58, 0x1E696ACD0);
  v3 = [objc_opt_self() allowedTopLevelClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35460, &qword_197621C28);
  sub_197616460();

  sub_197616800();

  if (!v8)
  {
    OUTLINED_FUNCTION_1_51();
LABEL_7:
    sub_19755643C(&v7);
    goto LABEL_8;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  if (swift_dynamicCast())
  {
    *(a2 + 24) = v4;
    OUTLINED_FUNCTION_1_51();
    *a2 = v6;
    return result;
  }

  OUTLINED_FUNCTION_1_51();
LABEL_8:
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_197567790(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1975677E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_197616910();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  a4(v17, v16);

  sub_19755643C(v16);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_197616EE0();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_197567980()
{
  v0 = sub_197615530();
  OUTLINED_FUNCTION_1_43(v0);
  sub_197615520();
  sub_197615510();
}

uint64_t OUTLINED_FUNCTION_42_0()
{
  v4 = *(v2 - 82);
  *v0 = v1;
  *(v0 + 8) = v4;
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t a1)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = v1;
  *(v3 - 168) = a1;
  return 24944;
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3;
  v5 = *(a2 + a3 - 16);
  v6 = *(v4 - 8);

  return sub_197615DA0();
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_10_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v4 - 72) = v3;
  *(v4 - 160) = a2;
  *(v4 - 152) = result;
  *(v4 - 176) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  v2 = *(v0 - 96);

  return sub_197616DE0();
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{

  return sub_19757B6F0(a1);
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return sub_197616E20();
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_15()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_16()
{
  *(v1 - 120) = v0;
  v3 = *(v1 - 88);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 112, v3);
}

uint64_t OUTLINED_FUNCTION_10_17()
{
  v2 = *(v1 - 224);
  v3 = *(*(v1 - 232) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_23(uint64_t a1)
{
  *(v2 + 16) = a1;
  v4 = *(v3 + 16);
  return v1;
}

unint64_t sub_197567D64()
{
  result = qword_1ED816D28;
  if (!qword_1ED816D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34CC8, &unk_19761C9F0);
    sub_197559AAC(&qword_1ED816D30, &qword_1EAF34CD0, &qword_19761C200);
    sub_1975611B4(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816D28);
  }

  return result;
}

uint64_t sub_197567E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197567E98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_197615A60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197567EDC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    sub_197615A60();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_197567F1C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_197567F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197567FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197567FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197568038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197568080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1975680C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = a6;
  v101 = a5;
  v106 = a4;
  v100 = a3;
  v103 = a2;
  v89 = sub_197615F50();
  v88 = *(v89 - 8);
  v7 = *(v88 + 64);
  v8 = MEMORY[0x1EEE9AC00](v89);
  v86 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v85 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  v96 = *(v98 - 1);
  v14 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v91 = &v85 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  v105 = *(v104 - 8);
  v16 = v105[8];
  MEMORY[0x1EEE9AC00](v104);
  v18 = &v85 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  v20 = *(v19 - 8);
  v21 = v20;
  v22 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v85 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_197619030;
  *(v25 + 32) = swift_getKeyPath();
  swift_getKeyPath();
  sub_197568080(&qword_1ED816CD8, MEMORY[0x1E6969530]);
  sub_197615640();
  v90 = a1;
  v115 = a1;
  v26 = v103;
  v116 = v103;
  v27 = v99;
  v124 = v99;
  sub_197615AE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
  v28 = *(v20 + 72);
  v29 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_197618C10;
  v95 = v21;
  v31 = *(v21 + 16);
  v94 = v24;
  v32 = v24;
  v33 = v91;
  v97 = v19;
  v31(v30 + v29, v32, v19);
  v34 = v92;
  v35 = v104;
  (v105[2])(v92, v18, v104);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  v36 = sub_197568080(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  swift_bridgeObjectRetain_n();
  sub_197615D90();
  v113 = v27;
  v114 = v36;
  swift_getKeyPath();
  v118 = 1;
  LOBYTE(v119) = 0;
  swift_setAtWritableKeyPath();

  v111 = v27;
  v112 = v36;
  swift_getKeyPath();
  LOBYTE(v118) = 0;
  swift_setAtWritableKeyPath();

  v109 = v27;
  v110 = v36;
  swift_getKeyPath();
  v118 = v25;

  swift_setAtWritableKeyPath();

  v107 = v27;
  v108 = v36;
  swift_getKeyPath();
  v118 = v30;

  swift_setAtWritableKeyPath();

  v37 = v93;
  v38 = sub_197615C80();
  v39 = v37;
  if (v37)
  {
    (*(v96 + 8))(v33, v98);

    swift_bridgeObjectRelease_n();

    (v105[1])(v18, v104);
    (*(v95 + 8))(v94, v97);
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_197616A20();

    v118 = 0xD000000000000024;
    v119 = 0x8000000197625430;
    v40 = (*(v102 + 32))(v101);
    MEMORY[0x19A8E2A50](v40);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v41 = v118;
    v42 = v119;
    sub_19759228C();
    swift_allocError();
    *v43 = v41;
    v43[1] = v42;
    swift_willThrow();
  }

  else
  {
    v44 = v38;
    v93 = v18;
    v45 = v104;
    v92 = v36;
    if (sub_197567E4C(v38))
    {
      sub_1975692BC(0, (v44 & 0xC000000000000001) == 0, v44);
      v46 = v106;
      if ((v44 & 0xC000000000000001) != 0)
      {
LABEL_25:
        v47 = MEMORY[0x19A8E31E0](0, v44);
      }

      else
      {
        v47 = *(v44 + 32);
      }
    }

    else
    {

      v48 = *(v99 + 48);
      v49 = *(v99 + 52);
      swift_allocObject();

      v47 = CoreTipRecord.init(id:)(v90, v26);
      v46 = v106;
      sub_197615CD0();
    }

    (*(v96 + 8))(v33, v98);

    swift_bridgeObjectRelease_n();
    (v105[1])(v93, v45);
    (*(v95 + 8))(v94, v97);
    v25 = v100;
    v50 = v46;
    v51 = v101;
    v52 = v102;
    sub_197579A20(v100, v50, v101, v102);
    v45 = v39;
    if (v39)
    {
    }

    else
    {
      v105 = v47;
      v53 = *(v52 + 64);
      v44 = v25;
      v104 = v52 + 64;
      v98 = v53;
      v46 = v53(v51, v52);
      v54 = 0;
      v33 = *(v46 + 16);
      for (i = v46 + 32; ; i += 40)
      {
        v39 = MEMORY[0x1E69E7CC0];
        if (v33 == v54)
        {
          break;
        }

        if (v54 >= *(v46 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_19755A560(i, &v118);
        v56 = v120;
        v57 = v121;
        v58 = __swift_project_boxed_opaque_existential_1Tm(&v118, v120);
        v59 = type metadata accessor for CoreRuleRecord();
        v60 = v56;
        v44 = v59;
        sub_19757B0DC(v58, v105, 0, v106, v60, v57);

        ++v54;
        __swift_destroy_boxed_opaque_existential_0Tm(&v118);
      }

      v61 = v98(v101, v102);
      v62 = *(v61 + 16);
      v123 = v39;
      sub_197553D0C();
      v63 = v123;
      v104 = v61;
      if (v62)
      {
        v64 = (v61 + 32);
        do
        {
          v65 = v64[3];
          v66 = v64[4];
          __swift_project_boxed_opaque_existential_1Tm(v64, v65);
          v67 = (*(v66 + 24))(v65, v66);
          v69 = v68;
          v123 = v63;
          v70 = *(v63 + 16);
          if (v70 >= *(v63 + 24) >> 1)
          {
            sub_197553D0C();
            v63 = v123;
          }

          *(v63 + 16) = v70 + 1;
          v71 = v63 + 16 * v70;
          *(v71 + 32) = v67;
          *(v71 + 40) = v69;
          v64 += 5;
          --v62;
        }

        while (v62);
      }

      v72 = sub_197589344(v63);

      (*(v102 + 72))(&v118, v101, v102);
      sub_19756D1E8(&v118);
      sub_197589404(v72, v122, v106);

      sub_19758ABB4();
      sub_19758B928();
      sub_197592314();
      OUTLINED_FUNCTION_8_1();
      sub_1975782A0();
      sub_19757E36C();
      if (sub_197615C20())
      {
        sub_197615C70();
      }

      v74 = v103;
      v75 = v89;
      v76 = v88;
      v77 = v87;
      v78 = v86;
      type metadata accessor for CoreTip();
      v25 = v105;
      sub_197615DB0();
      v79 = static CoreTip.modelIdentifiers.getter();
      (*(v76 + 16))(v78, v77, v75);

      swift_isUniquelyReferenced_nonNull_native();
      v117 = v79;
      v80 = v78;
      v81 = v90;
      sub_19757B964(v80, v90, v74);

      v82 = v117;
      (*(v76 + 8))(v77, v75);
      static CoreTip.modelIdentifiers.setter(v82);
      v83 = CoreTipRecord.status.getter();
      v84 = CoreTipRecord.invalidationReason.getter();
      sub_19757EBE4(v81, v74, v83, v84);
    }
  }

  return v25;
}

__n128 sub_197568EB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197568EEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_197616C60();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t CoreTipRecord.status.getter()
{
  v0 = sub_197575E6C();
  v3 = MEMORY[0x1E69E7290];
  v4 = sub_197575F54();
  v2[0] = v0;
  sub_197575A60(v2);
  if (result == 4)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return sub_197616D90();
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return sub_197616D90();
}

void *OUTLINED_FUNCTION_35_0()
{
  v3 = *(v1 + 1608);

  return memcpy((v1 + 656), v0, 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return sub_197616BF0();
}

void OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 160) = a6;
  *(v7 - 152) = a7;
  *(v7 - 168) = a4;
  *(v7 - 164) = a5;
  *(v7 - 176) = a3;
  *(v7 - 120) = a2;
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

unint64_t sub_19756930C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t CoreTipRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CoreTipRecord.init(backingData:)(a1);
  return v5;
}

uint64_t *CoreTipRecord.init(backingData:)(__int128 *a1)
{
  v28 = a1;
  v2 = *v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_13(v27);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v25 - v6;
  v7 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v15 = v14 - v13;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35320, &qword_197620CD0);
  OUTLINED_FUNCTION_0_35();
  v18 = sub_197560338(v16, v17);
  v1[7] = OUTLINED_FUNCTION_15_3(v18);
  __swift_allocate_boxed_opaque_existential_0(v1 + 3);
  sub_197615DC0();
  sub_19756985C();
  sub_197615A50();
  OUTLINED_FUNCTION_11_13();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();
  sub_197560338(&qword_1ED816D90, v19);
  sub_197615BE0();

  (*(v9 + 8))(v15, v7);
  v20 = v26;
  OUTLINED_FUNCTION_36();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_11_13();
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_9();
  sub_197569718();
  sub_197615BE0();

  sub_1975E62E4(v20, &qword_1EAF34988);
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_11_13();
  swift_getKeyPath();
  v29 = 0;
  OUTLINED_FUNCTION_17_11();

  OUTLINED_FUNCTION_11_13();
  swift_getKeyPath();
  v29 = 1;
  OUTLINED_FUNCTION_17_11();

  sub_197569928();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  sub_1976160B0();
  sub_1975699E4();
  sub_19756979C(v1 + 3, v1 + 18);
  sub_197615B30();
  *(v1 + 8) = 0;
  *(v1 + 18) = 0;
  OUTLINED_FUNCTION_43_0();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 3);
  sub_1975558C4(v28, (v1 + 3));
  swift_endAccess();
  return v1;
}

void sub_197569718()
{
  OUTLINED_FUNCTION_41_1();
  v2 = v1;
  if (!*v1)
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34988, &qword_197620CA0);
    OUTLINED_FUNCTION_4_29();
    sub_197560338(v3, v4);
    atomic_store(swift_getWitnessTable(), v2);
  }

  OUTLINED_FUNCTION_38_1();
}

uint64_t sub_19756979C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  OUTLINED_FUNCTION_71(a1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CC8, &unk_19761C9F0);
  type metadata accessor for CoreRuleRecord();
  sub_197567D64();
  sub_197615BD0();

  *a2 = 0;
  return result;
}

void sub_19756985C()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  swift_getKeyPath();
  sub_197615BE0();

  OUTLINED_FUNCTION_38_1();
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2)
{

  return sub_197579604(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_73_0()
{
  v2 = *(v0 - 120);

  return sub_197615C80();
}

void sub_197569928()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v5 = v4[3];
  v6 = v4[4];
  OUTLINED_FUNCTION_71(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34728, &qword_197619348);
  sub_197615BC0();

  *v3 = 0;
  OUTLINED_FUNCTION_38_1();
}

uint64_t sub_1975699B8(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_0(a1);
  result = CoreTipRecord.content.getter(v2);
  *v1 = result;
  return result;
}

void sub_1975699E4()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  sub_197615BC0();

  OUTLINED_FUNCTION_38_1();
}

uint64_t sub_197569A78(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_0(a1);
  result = sub_197568F10(v2);
  *v1 = result;
  return result;
}

unint64_t sub_197569AA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t static DictionaryDecoder.decode<A>(from:class:)()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1976160A0();
  v10[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:0 error:v10];

  v3 = v10[0];
  if (v2)
  {
    v4 = sub_1976159A0();
    v6 = v5;

    sub_197567980();
    result = sub_197567790(v4, v6);
  }

  else
  {
    v8 = v3;
    sub_197615830();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CoreRule.Predicate.Argument.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E58, &qword_19761D430);
  OUTLINED_FUNCTION_0(v76);
  v71 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v73 = v67 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E60, &qword_19761D438);
  OUTLINED_FUNCTION_0(v70);
  v72 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E68, &qword_19761D440);
  OUTLINED_FUNCTION_0(v14);
  v69 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E70, &qword_19761D448);
  OUTLINED_FUNCTION_0(v21);
  v75 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v67 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19756B5B4();
  v29 = v77;
  sub_197617240();
  if (v29)
  {
    goto LABEL_9;
  }

  v67[0] = v20;
  v67[1] = v13;
  v30 = v76;
  v77 = a1;
  v31 = sub_197616DD0();
  result = sub_19756B708(v31, 0);
  v36 = v21;
  v68 = v27;
  if (v34 == v35 >> 1)
  {
LABEL_8:
    v44 = sub_197616A70();
    swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E78, &qword_19761D450) + 48);
    *v46 = &type metadata for CoreRule.Predicate.Argument;
    sub_197616D40();
    sub_197616A60();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = OUTLINED_FUNCTION_4_17();
    v49(v48);
    a1 = v77;
LABEL_9:
    v50 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  if (v34 < (v35 >> 1))
  {
    v37 = *(v33 + v34);
    sub_19756B4E4(v34 + 1, v35 >> 1, result, v33, v34, v35);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    if (v39 == v41 >> 1)
    {
      if (v37)
      {
        v42 = v37;
        if (v37 == 1)
        {
          v79 = 1;
          sub_1975CB5C0();
          sub_197616D30();
          v43 = v74;
          v57 = sub_197616D90();
          v59 = v58;
          swift_unknownObjectRelease();
          v60 = OUTLINED_FUNCTION_7_8();
          v61(v60);
          v62 = OUTLINED_FUNCTION_9_8();
          v63(v62);
        }

        else
        {
          v80 = 2;
          sub_19756B560();
          v54 = v73;
          sub_197616D30();
          v43 = v74;
          swift_unknownObjectRelease();
          (*(v71 + 8))(v54, v30);
          v55 = OUTLINED_FUNCTION_4_17();
          v56(v55);
          v57 = 0;
          v59 = 0;
        }
      }

      else
      {
        v78 = 0;
        sub_197571C50();
        sub_197616D30();
        v42 = 0;
        v51 = v36;
        v52 = sub_197616D90();
        v53 = v75;
        v57 = v52;
        v59 = v64;
        swift_unknownObjectRelease();
        v65 = OUTLINED_FUNCTION_8_11();
        v66(v65);
        (*(v53 + 8))(v68, v51);
        v43 = v74;
      }

      *v43 = v57;
      *(v43 + 8) = v59;
      *(v43 + 16) = v42;
      v50 = v77;
      return __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_19756A294(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_197616910();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  a4(v17, v16);

  sub_19755643C(v16);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_197616EE0();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_19756A414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  sub_1975674F0(a1, v11);
  if (!v11[3])
  {
    result = sub_19755643C(v11);
    goto LABEL_7;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v6 = [objc_opt_self() allowedTopLevelClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35460, &qword_197621C28);
  sub_197616460();

  v7 = sub_19756AED8();

  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    v7 = sub_1976160B0();
  }

  *(a2 + 24) = *(v4 + 80);
  v8 = *(v4 + 88);
  static DictionaryCoder.decode<A>(from:class:)(v7);
  sub_197567790(v9, v10);
}

unint64_t sub_19756A6CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34388, &qword_197618388);
    v2 = sub_197616C90();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1975586C0(*(a1 + 56) + 32 * v11, v31);
    *&v30 = v13;
    *(&v30 + 1) = v14;
    v28[2] = v30;
    v29[0] = v31[0];
    v29[1] = v31[1];
    v15 = v30;
    sub_19756A94C(v29, &v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    swift_dynamicCast();
    sub_19756A94C(&v25, v27);
    sub_19756A94C(v27, v28);
    sub_19756A94C(v28, &v26);
    result = sub_19755C610();
    v16 = result;
    if (v17)
    {
      v18 = v2[6] + 16 * result;
      v19 = *(v18 + 8);
      *v18 = v15;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      result = sub_19756A94C(&v26, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_19756A94C(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

_OWORD *sub_19756A94C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id CoreRule.Predicate.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E20, &qword_19761D248);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19756B348();
  sub_197617240();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22) = 0;
    v10 = sub_197616D90();
    v12 = &v1[OBJC_IVAR___Predicate_id];
    *v12 = v10;
    v12[1] = v13;
    v24 = 1;
    sub_19756B958();
    OUTLINED_FUNCTION_0_22();
    sub_197616DC0();
    v14 = v23;
    v15 = &v1[OBJC_IVAR___Predicate_argument];
    *v15 = v22;
    v15[16] = v14;
    v24 = 2;
    sub_19756B490();
    OUTLINED_FUNCTION_0_22();
    sub_197616DC0();
    v1[OBJC_IVAR___Predicate_operation] = v22;
    v24 = 3;
    sub_19756B608();
    OUTLINED_FUNCTION_0_22();
    sub_197616D80();
    *&v1[OBJC_IVAR___Predicate_rawdata] = v22;
    v24 = 4;
    sub_19756BBB0();
    OUTLINED_FUNCTION_0_22();
    sub_197616D80();
    v16 = &v1[OBJC_IVAR___Predicate_value];
    v17 = v23;
    *v16 = v22;
    *(v16 + 1) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E10, &qword_19761D238);
    v24 = 5;
    sub_19756B3E8(&qword_1ED8167E8, sub_19756C69C);
    OUTLINED_FUNCTION_4_16();
    *&v1[OBJC_IVAR___Predicate_queries] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E18, &qword_19761D240);
    v24 = 6;
    sub_1975CA9EC(&qword_1ED8167F8, sub_19756C410);
    OUTLINED_FUNCTION_4_16();
    *&v1[OBJC_IVAR___Predicate_subpredicates] = v22;
    v21.receiver = v1;
    v21.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v21, sel_init);
    v18 = OUTLINED_FUNCTION_1_19();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t static DictionaryCoder.decode<A>(from:class:)(uint64_t a1)
{
  sub_19756A6CC(a1);
  static DictionaryDecoder.decode<A>(from:class:)();
}

uint64_t sub_19756AED8()
{
  sub_19755404C(0, &qword_1ED816C58, 0x1E696ACD0);
  sub_197616800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19756B06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19756B750(a1, a2);
  *a3 = result;
  return result;
}

id sub_19756B0B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CoreRule.Predicate.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CoreRule.Predicate.Operator.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_13_7();
  sub_197617230();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
    OUTLINED_FUNCTION_13_7();
    v6 = sub_197616F10();
    v8 = v7;
    sub_197616210();
    CoreRule.Predicate.Operator.init(rawValue:)(&v11);
    v9 = v11;
    if (v11 == 13)
    {
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000036, 0x8000000197624940);
      MEMORY[0x19A8E2A50](v6, v8);

      sub_197616A70();
      swift_allocError();
      sub_197616A50();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      *a2 = v9;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19756B260(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x746E656D75677261;
      break;
    case 2:
      result = 0x6F6974617265706FLL;
      break;
    case 3:
      result = 0x61746164776172;
      break;
    case 4:
      result = 0x65756C6176;
      break;
    case 5:
      result = 0x73656972657571;
      break;
    case 6:
      result = 0x6964657270627573;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_19756B348()
{
  result = qword_1ED816AB8;
  if (!qword_1ED816AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816AB8);
  }

  return result;
}

uint64_t sub_19756B3E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34E10, &qword_19761D238);
    a2();
    result = OUTLINED_FUNCTION_10_6();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19756B450(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_19756B490()
{
  result = qword_1ED816A18;
  if (!qword_1ED816A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A18);
  }

  return result;
}

uint64_t sub_19756B4E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_19756B560()
{
  result = qword_1ED8166A0;
  if (!qword_1ED8166A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8166A0);
  }

  return result;
}

unint64_t sub_19756B5B4()
{
  result = qword_1ED816A80;
  if (!qword_1ED816A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A80);
  }

  return result;
}

unint64_t sub_19756B608()
{
  result = qword_1ED816B48;
  if (!qword_1ED816B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B48);
  }

  return result;
}

uint64_t CoreRule.Predicate.Operator.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_197616D20();

  v4 = 13;
  if (v2 < 0xD)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_19756B6B8(char a1)
{
  if (!a1)
  {
    return 0x746E756F63;
  }

  if (a1 == 1)
  {
    return 0x697461756C617665;
  }

  return 1701736302;
}

uint64_t sub_19756B708(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_19756B750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697461756C617665 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_197616EF0();

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

_BYTE *_s9PredicateC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19756B930);
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

unint64_t sub_19756B958()
{
  result = qword_1ED816A30;
  if (!qword_1ED816A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstellationDeliveryInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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