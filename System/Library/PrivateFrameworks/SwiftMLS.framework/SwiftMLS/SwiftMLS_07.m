unint64_t sub_26BE7C5A8(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA00, &qword_26C0133B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0125A0;
  strcpy((inited + 32), "errorContext");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x646F43726574756FLL;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x646F4372656E6E69;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = sub_26C005B6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA08, &qword_26C0133B8);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_26BE7C710()
{
  v0 = MLS.MLSError.errorUserInfo.getter();
  v1 = *MEMORY[0x277CCA7E8];
  v2 = sub_26C00A48C();
  if (!*(v0 + 16))
  {

    goto LABEL_7;
  }

  v4 = sub_26BEBB618(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:

    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    goto LABEL_8;
  }

  sub_26BE2E2EC(*(v0 + 56) + 32 * v4, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA20, &qword_26C0133C8);
  if (swift_dynamicCast())
  {
    if (*(&v11 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
      v7 = sub_26C008E2C();
      __swift_destroy_boxed_opaque_existential_1(&v10);
      return v7;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

LABEL_8:
  sub_26BE7D3AC(&v10);
  return 0;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BE7C860(unsigned __int8 a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA00, &qword_26C0133B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0125A0;
  strcpy((inited + 32), "errorContext");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x646F43726574756FLL;
  *(inited + 64) = 0xE900000000000065;
  sub_26BE7D360();
  *(inited + 72) = sub_26C00AA8C();
  *(inited + 80) = 0x646F4372656E6E69;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = sub_26C005B6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA08, &qword_26C0133B8);
  swift_arrayDestroy();
  return v5;
}

void sub_26BE7C9B8(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v6 = sub_26C00921C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  LODWORD(v14) = a1;
  if (a1 > 3u)
  {
    goto LABEL_8;
  }

  if (a1 > 1u)
  {
    goto LABEL_14;
  }

  if (a1)
  {
LABEL_24:
    v14 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
    if ((a2 & 1) == 0)
    {
LABEL_49:
      v26 = v14[2];
      v14 += 2;
      v15 = v26 + 1;
      if (!__OFADD__(v26, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_52;
    }

    v19 = v14[1];
    ++v14;
    v15 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (a2)
  {
    goto LABEL_60;
  }

  v14 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport + 120);
  v15 = *v14 + 1;
  if (__OFADD__(*v14, 1))
  {
    __break(1u);
LABEL_8:
    if (v14 > 5)
    {
LABEL_19:
      if (v14 != 6)
      {
LABEL_36:
        v14 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
        if ((a2 & 1) == 0)
        {
          goto LABEL_58;
        }

        v22 = v14[13];
        v14 += 13;
        v15 = v22 + 1;
        if (!__OFADD__(v22, 1))
        {
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_40;
      }

      v14 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
      if ((a2 & 1) == 0)
      {
LABEL_46:
        v25 = v14[12];
        v14 += 12;
        v15 = v25 + 1;
        if (!__OFADD__(v25, 1))
        {
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_49;
      }

      v18 = v14[11];
      v14 += 11;
      v15 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_24;
    }

    if (v14 != 4)
    {
LABEL_28:
      v14 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
      if ((a2 & 1) == 0)
      {
LABEL_52:
        v27 = v14[10];
        v14 += 10;
        v15 = v27 + 1;
        if (!__OFADD__(v27, 1))
        {
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_55;
      }

      v20 = v14[9];
      v14 += 9;
      v15 = v20 + 1;
      if (!__OFADD__(v20, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_32;
    }

    v14 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
    if ((a2 & 1) == 0)
    {
LABEL_40:
      v23 = v14[8];
      v14 += 8;
      v15 = v23 + 1;
      if (!__OFADD__(v23, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_43;
    }

    v16 = v14[7];
    v14 += 7;
    v15 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_59;
    }

    __break(1u);
LABEL_14:
    if (v14 != 2)
    {
LABEL_32:
      v14 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
      if ((a2 & 1) == 0)
      {
LABEL_55:
        v28 = v14[6];
        v14 += 6;
        v15 = v28 + 1;
        if (!__OFADD__(v28, 1))
        {
          goto LABEL_59;
        }

        __break(1u);
LABEL_58:
        v29 = v14[14];
        v14 += 14;
        v15 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_69:
          __break(1u);
          return;
        }

        goto LABEL_59;
      }

      v21 = v14[5];
      v14 += 5;
      v15 = v21 + 1;
      if (!__OFADD__(v21, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_36;
    }

    v14 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
    if ((a2 & 1) == 0)
    {
LABEL_43:
      v24 = v14[4];
      v14 += 4;
      v15 = v24 + 1;
      if (!__OFADD__(v24, 1))
      {
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_46;
    }

    v17 = v14[3];
    v14 += 3;
    v15 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_59:
  *v14 = v15;
LABEL_60:
  sub_26C00920C();
  (*(v7 + 16))(v11, v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_lastHealthReportTimestamp, v6);
  sub_26C00918C();
  v31 = v30;
  v32 = *(v7 + 8);
  v32(v11, v6);
  v32(v13, v6);
  if (v31 <= *(v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_reportingIntervalSeconds))
  {
    return;
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_67;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v33 = (v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *(v3 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport) = v31;
  v34 = sub_26C00A45C();
  aBlock[4] = sub_26BE7D224;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BEB8234;
  aBlock[3] = &block_descriptor_6;
  v35 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v35);

  v33[6] = 0u;
  v33[7] = 0u;
  v33[4] = 0u;
  v33[5] = 0u;
  v33[2] = 0u;
  v33[3] = 0u;
  *v33 = 0u;
  v33[1] = 0u;
}

unint64_t sub_26BE7CE14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA00, &qword_26C0133B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C013360;
  *(inited + 32) = 0x6C61767265746E69;
  *(inited + 40) = 0xEF73646E6F636553;
  v3 = (a1 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x800000026C02B6D0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x800000026C02B6F0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 104) = 0xD000000000000016;
  *(inited + 112) = 0x800000026C02B710;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x800000026C02B730;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 152) = 0xD00000000000001ALL;
  *(inited + 160) = 0x800000026C02B750;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x800000026C02B770;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x800000026C02B790;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x800000026C02B7B0;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 248) = 0xD00000000000001ALL;
  *(inited + 256) = 0x800000026C02B7D0;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x800000026C02B7F0;
  *(inited + 288) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 296) = 0xD000000000000015;
  *(inited + 304) = 0x800000026C02B810;
  *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 320) = 0xD000000000000013;
  *(inited + 328) = 0x800000026C02B830;
  *(inited + 336) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 344) = 0xD000000000000017;
  *(inited + 352) = 0x800000026C02B850;
  *(inited + 360) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 368) = 0xD000000000000015;
  *(inited + 376) = 0x800000026C02B870;
  *(inited + 384) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 392) = 0x68744F726F727265;
  *(inited + 400) = 0xEA00000000007265;
  *(inited + 408) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = sub_26C005B6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA08, &qword_26C0133B8);
  swift_arrayDestroy();
  return v4;
}

void sub_26BE7D22C(uint64_t a1)
{
  v2 = sub_26C00A45C();
  sub_26BE2DC18(a1, v9);
  v3 = swift_allocObject();
  v4 = v9[5];
  *(v3 + 88) = v9[4];
  *(v3 + 104) = v4;
  *(v3 + 120) = v9[6];
  v5 = v9[1];
  *(v3 + 24) = v9[0];
  *(v3 + 40) = v5;
  v6 = v9[3];
  *(v3 + 56) = v9[2];
  *(v3 + 16) = 3;
  *(v3 + 136) = v10;
  *(v3 + 72) = v6;
  aBlock[4] = sub_26BE2E3DC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BEB8234;
  aBlock[3] = &block_descriptor_13;
  v7 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

unint64_t sub_26BE7D360()
{
  result = qword_28045EA10;
  if (!qword_28045EA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045EA10);
  }

  return result;
}

uint64_t sub_26BE7D3AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA18, &qword_26C0133C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MLS.Certificate.certData.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Certificate.certData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_26BE7D4EC(unsigned __int16 *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = *(a1 + 1);
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  LOWORD(v25) = bswap32(*a1) >> 16;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v28 = MEMORY[0x277D838B0];
  v29 = MEMORY[0x277CC9C18];
  v26 = &v25;
  v27 = (&v25 + 2);
  v7 = __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  LOWORD(v25) = bswap32(v1) >> 16;
  v28 = v5;
  v29 = v6;
  v26 = &v25;
  v27 = (&v25 + 2);
  v10 = __swift_project_boxed_opaque_existential_1(&v26, v5);
  v12 = *v10;
  v11 = v10[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v25 = bswap32(v2);
  v28 = v5;
  v29 = v6;
  v26 = &v25;
  v27 = &v26;
  v13 = __swift_project_boxed_opaque_existential_1(&v26, v5);
  v15 = *v13;
  v14 = v13[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v16 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v16 != 2)
  {
    v17 = 0;
    goto LABEL_11;
  }

  v19 = *(v3 + 16);
  v18 = *(v3 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_17;
    }

    v17 = HIDWORD(v3) - v3;
  }

LABEL_11:
  result = sub_26BF30414(v17);
  v21 = result;
  if (!v24)
  {
    sub_26BE11228(v3, v4);
    v22 = v21 + v17;
    if (__OFADD__(v21, v17))
    {
      __break(1u);
    }

    else
    {
      result = v22 + 8;
      if (!__OFADD__(v22, 8))
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

LABEL_14:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s19SecretPayloadHeaderVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s19SecretPayloadHeaderVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_26BE7D7B8(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1))
  {
    return sub_26BE02DEC(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE7D80C(uint64_t result)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (2 * v3) | 1;
    v6 = 136 * v3 - 104;
    v7 = *(*result + 16);
    while (1)
    {
      if (v7 > v3)
      {
        __break(1u);
        goto LABEL_16;
      }

      memmove(&v12, (v2 + v6), 0x88uLL);
      result = sub_26BE58C10(&v12);
      if (result != 1)
      {
        break;
      }

      --v7;
      ++v4;
      v5 -= 2;
      v6 -= 136;
      if (v7 + 1 < 2)
      {
        goto LABEL_9;
      }
    }

    if (!v4)
    {
      goto LABEL_9;
    }

    sub_26BFB6640(v2, v2 + 32, 0, v5);
    v2 = v8;
  }

  else
  {
LABEL_9:
  }

  v12 = xmmword_26C00BBD0;
  v13 = 0;
  v9 = sub_26BEEAFD8(0, v2, &v12);
  if (v1)
  {
    sub_26BE00258(v12, *(&v12 + 1));
  }

  else
  {
    v10 = v9;
    v11 = sub_26BF30414(v9);
    sub_26BF2A30C(&v12);
    sub_26BE00258(v12, *(&v12 + 1));

    result = v11 + v10;
    if (__OFADD__(v11, v10))
    {
LABEL_16:
      __break(1u);
    }
  }

  return result;
}

uint64_t MLS.RatchetTree.nodes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_26BE7D9CC(uint64_t a1, __int128 *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a2[5];
  v4 = a2[7];
  v66 = a2[6];
  v67 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v62 = a2[2];
  v63 = v6;
  v7 = a2[3];
  v8 = a2[5];
  v64 = a2[4];
  v65 = v8;
  v9 = a2[1];
  v60 = *a2;
  v61 = v9;
  v10 = a2[7];
  v69[6] = v66;
  v69[7] = v10;
  v69[2] = v62;
  v69[3] = v7;
  v69[4] = v64;
  v69[5] = v3;
  v68 = *(a2 + 16);
  v70 = *(a2 + 16);
  v69[0] = v60;
  v69[1] = v5;
  if (sub_26BE58C10(v69) != 1)
  {
    v48 = v66;
    v49 = v67;
    v50 = v68;
    v44 = v62;
    v45 = v63;
    v46 = v64;
    v47 = v65;
    v42 = v60;
    v43 = v61;
    v31 = 1;
    v15 = MEMORY[0x277D838B0];
    v16 = MEMORY[0x277CC9C18];
    v41[3] = MEMORY[0x277D838B0];
    v41[4] = MEMORY[0x277CC9C18];
    v41[0] = &v31;
    v41[1] = &v32;
    v17 = __swift_project_boxed_opaque_existential_1(v41, MEMORY[0x277D838B0]);
    v18 = *v17;
    v19 = v17[1];
    sub_26BE59BD8(&v42, &v32);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(v41);
    if (sub_26BE592C4(&v42))
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    LOBYTE(v41[0]) = v20;
    *(&v33 + 1) = v15;
    *&v34 = v16;
    *&v32 = v41;
    *(&v32 + 1) = v41 + 1;
    v21 = __swift_project_boxed_opaque_existential_1(&v32, v15);
    v23 = *v21;
    v22 = v21[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v51 = v42;
    v52 = v43;
    v24 = sub_26BE592C4(&v51);
    result = sub_26BE13A3C(&v51);
    if (v24 == 1)
    {
      v25 = *(result + 32);
      v26 = *(result + 16);
      v32 = *result;
      v33 = v26;
      *&v34 = v25;
      v27 = sub_26BEC1C1C(&v32);
      result = sub_26BE7DCC0(&v60);
      if (v2)
      {
        goto LABEL_15;
      }

      v28 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
LABEL_14:
        result = v28 + 1;
        if (!__OFADD__(v28, 1))
        {
          goto LABEL_15;
        }

        __break(1u);
LABEL_17:
        __break(1u);
      }

      __break(1u);
    }

    v37 = *(result + 80);
    v38 = *(result + 96);
    v39 = *(result + 112);
    v40 = *(result + 128);
    v33 = *(result + 16);
    v34 = *(result + 32);
    v35 = *(result + 48);
    v36 = *(result + 64);
    v32 = *result;
    v29 = sub_26BE7DD28(&v32);
    result = sub_26BE7DCC0(&v60);
    if (v2)
    {
      goto LABEL_15;
    }

    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  LOBYTE(v42) = 0;
  *(&v52 + 1) = MEMORY[0x277D838B0];
  *&v53 = MEMORY[0x277CC9C18];
  *&v51 = &v42;
  *(&v51 + 1) = &v42 + 1;
  v11 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x277D838B0]);
  v13 = *v11;
  v12 = v11[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v51);
  result = 1;
LABEL_15:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE7DCC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C8, &unk_26C0112A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE7DD28(uint64_t a1)
{
  v2 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v2;
  v15[6] = *(a1 + 96);
  v3 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v3;
  v4 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v4;
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v16 = *(a1 + 112);
  v17 = v5;
  v18 = v6;
  result = sub_26BE7EBA4(v15);
  if (!v1)
  {
    v8 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        v10 = v11 - v12;
        if (__OFSUB__(v11, v12))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v9 = result;
      }

      else
      {
        v9 = result;
        v10 = 0;
      }
    }

    else if (v8)
    {
      if (__OFSUB__(HIDWORD(v5), v5))
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v9 = result;
      v10 = HIDWORD(v5) - v5;
    }

    else
    {
      v9 = result;
      v10 = BYTE6(v6);
    }

    v13 = sub_26BF30414(v10);
    result = sub_26BE11228(v5, v6);
    v14 = v13 + v10;
    if (__OFADD__(v13, v10))
    {
      __break(1u);
    }

    else
    {
      result = v9 + v14;
      if (!__OFADD__(v9, v14))
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_26BE7DE38@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v104 = *MEMORY[0x277D85DE8];
  result = sub_26BF2F7B0();
  if (v2)
  {
    goto LABEL_3;
  }

  v7 = result;
  v96 = v6;
  v94 = sub_26BF2F7B0();
  v95 = v8;
  sub_26BE03DC0(&v99);
  v9 = v99;
  v10 = v100;
  sub_26BE77DB0(&v99);
  v92 = v10;
  v93 = v9;
  v12 = v99;
  v13 = v100;
  v14 = v101;
  v15 = v102;
  v16 = v103;
  v17 = sub_26BEE62D4();
  if ((v17 & 0x100) == 0)
  {
    v87 = v16;
    v88 = v13;
    v89 = v15;
    v90 = v12;
    v91 = v14;
    switch(v17)
    {
      case 1u:
        v20 = sub_26BEEE594();
        if (v21 & 1) != 0 || (v26 = v20, v22 = sub_26BEEE594(), (v23))
        {

          sub_26BE01600();
          swift_allocError();
          *v24 = 1;
LABEL_15:
          swift_willThrow();
          v19 = v93;
          goto LABEL_16;
        }

        v85 = v22;
        v86 = 0;
        break;
      case 2u:
        v86 = v17;
        v26 = 0;
        v85 = 0;
        break;
      case 3u:
        v26 = sub_26BF2F7B0();
        v85 = v27;
        v86 = 1;
        break;
      default:

        sub_26BE01654();
        swift_allocError();
        *v25 = 0;
        v25[112] = 5;
        goto LABEL_15;
    }

    v29 = *v1;
    v28 = v3[1];
    v30 = v3[2];
    sub_26BE00608(*v3, v28);
    sub_26BE00608(v29, v28);
    sub_26BF30764(v3, &v99);
    v82 = v30;
    if (v100)
    {
      sub_26BE00258(*v3, v3[1]);
      *v3 = v29;
      v3[1] = v28;
      v31 = v28;
      v32 = v29;
      v3[2] = v30;
      v33 = v29;
LABEL_22:
      sub_26BE00258(v32, v31);

      *v3 = v33;
      v3[1] = v28;
      v3[2] = v30;
      sub_26BE01600();
      swift_allocError();
      *v34 = 1;
      swift_willThrow();
      sub_26BE00258(v7, v96);
      sub_26BE00258(v94, v95);
      sub_26BE0489C(v93, v92);
      result = sub_26BE5A170(v26, v85, v86);
      goto LABEL_3;
    }

    v35 = v29;
    v36 = v99;
    v80 = v35;
    sub_26BE00258(v35, v28);
    if (v36 > 100000000)
    {
      v84 = v26;
      sub_26BE01600();
      swift_allocError();
      *v37 = 5;
      swift_willThrow();
      v38 = v92;
      v39 = v80;
LABEL_19:
      sub_26BE00258(*v3, v3[1]);
      *v3 = v39;
      v3[1] = v28;
      v3[2] = v30;
      swift_willThrow();
      sub_26BE00258(v7, v96);
      sub_26BE00258(v94, v95);
      sub_26BE0489C(v93, v38);

      result = sub_26BE5A170(v84, v85, v86);
      goto LABEL_3;
    }

    result = sub_26BF2A44C(v36);
    if (v40 >> 60 == 15)
    {
      v32 = *v3;
      v31 = v3[1];
      v33 = v80;
      goto LABEL_22;
    }

    v99 = result;
    v100 = v40;
    v42 = v40 >> 62;
    v76 = result >> 32;
    v77 = result;
    v83 = MEMORY[0x277D84F90];
    v84 = v26;
    v78 = BYTE6(v40);
    v79 = v40 >> 62;
    v101 = v41;
    v75 = v28;
    if ((v40 >> 62) > 1)
    {
      goto LABEL_30;
    }

LABEL_28:
    v43 = v78;
    if (v42)
    {
      v43 = v76;
    }

    while (1)
    {
      v44 = __OFSUB__(v43, v41);
      v45 = v43 - v41;
      if (v44)
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v45 < 1)
      {
        result = v99;
        v70 = v100 >> 62;
        if ((v100 >> 62) > 1)
        {
          if (v70 == 2)
          {
            v71 = *(v99 + 24);
          }

          else
          {
            v71 = 0;
          }
        }

        else if (v70)
        {
          v71 = v99 >> 32;
        }

        else
        {
          v71 = BYTE6(v100);
        }

        if (!__OFSUB__(v71, v41))
        {
          if (v71 != v41)
          {
            sub_26BE01654();
            swift_allocError();
            *v73 = 0;
            v73[112] = 1;
            swift_willThrow();

            sub_26BE00258(v99, v100);
            v38 = v92;
            v39 = v80;
            v30 = v82;
            v28 = v75;
            goto LABEL_19;
          }

          sub_26BE00258(v99, v100);
          sub_26BE00258(v80, v75);
          result = sub_26BF2F7B0();
          *a1 = v7;
          *(a1 + 8) = v96;
          *(a1 + 16) = v94;
          *(a1 + 24) = v95;
          *(a1 + 32) = v93;
          *(a1 + 40) = v92;
          *(a1 + 48) = v90;
          *(a1 + 56) = v88;
          *(a1 + 64) = v91;
          *(a1 + 72) = v89;
          *(a1 + 80) = v87;
          *(a1 + 88) = v84;
          *(a1 + 96) = v85;
          *(a1 + 104) = v86;
          *(a1 + 112) = v83;
          *(a1 + 120) = result;
          *(a1 + 128) = v74;
          goto LABEL_3;
        }

LABEL_91:
        __break(1u);
        return result;
      }

      v46 = v41 + 2;
      if (__OFADD__(v41, 2))
      {
        goto LABEL_86;
      }

      v48 = v99;
      v47 = v100;
      v49 = v100 >> 62;
      if ((v100 >> 62) <= 1)
      {
        break;
      }

      if (v49 == 2)
      {
        v50 = *(v99 + 24);
        goto LABEL_42;
      }

      if (v46 > 0)
      {
        goto LABEL_77;
      }

LABEL_45:
      v97 = v99;
      v98 = v100;
      if (v46 < v41)
      {
        goto LABEL_87;
      }

      sub_26BE00608(v99, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v97, v98);
      v101 = v46;
      sub_26BE00608(v48, v47);
      v51 = v48;
      sub_26BE00608(v48, v47);
      sub_26BF30764(&v99, &v97);
      if (v98)
      {
        sub_26BE00258(v99, v100);
        v55 = v47;
        v54 = v48;
LABEL_76:
        sub_26BE00258(v54, v55);
        v99 = v48;
        v100 = v47;
        v101 = v46;
LABEL_77:
        sub_26BE01600();
        swift_allocError();
        *v72 = 1;
        v38 = v92;
        swift_willThrow();

        sub_26BE00258(v99, v100);
        v39 = v80;
        v30 = v82;
        v28 = v75;
        goto LABEL_19;
      }

      v52 = v97;
      sub_26BE00258(v48, v47);
      result = v101;
      v44 = __OFADD__(v101, v52);
      v53 = v101 + v52;
      if (v44)
      {
        goto LABEL_88;
      }

      v54 = v99;
      v55 = v100;
      v56 = v100 >> 62;
      if ((v100 >> 62) <= 1)
      {
        if (v56)
        {
          v57 = v99 >> 32;
        }

        else
        {
          v57 = BYTE6(v100);
        }

LABEL_54:
        if (v57 < v53)
        {
          goto LABEL_76;
        }

        goto LABEL_57;
      }

      if (v56 == 2)
      {
        v57 = *(v99 + 24);
        goto LABEL_54;
      }

      if (v53 > 0)
      {
        goto LABEL_76;
      }

LABEL_57:
      if (v53 < v101)
      {
        goto LABEL_89;
      }

      result = sub_26C00909C();
      v58 = v53;
      v59 = result;
      v61 = v60;
      v81 = v58;
      v101 = v58;
      v62 = v60 >> 62;
      if ((v60 >> 62) > 1)
      {
        if (v62 != 2)
        {
          goto LABEL_65;
        }

        result = *(result + 16);
        v63 = *(v59 + 24);
      }

      else
      {
        if (!v62)
        {
          goto LABEL_65;
        }

        result = result;
        v63 = v59 >> 32;
      }

      if (v63 < result)
      {
        goto LABEL_90;
      }

LABEL_65:
      v64 = sub_26C00909C();
      v66 = v65;
      sub_26BE00258(v59, v61);
      sub_26BE00258(v51, v47);
      sub_26BE00608(v64, v66);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_26BEEBD8C(0, *(v83 + 2) + 1, 1, v83);
      }

      v68 = *(v83 + 2);
      v67 = *(v83 + 3);
      if (v68 >= v67 >> 1)
      {
        v83 = sub_26BEEBD8C((v67 > 1), v68 + 1, 1, v83);
      }

      result = sub_26BE00258(v64, v66);
      *(v83 + 2) = v68 + 1;
      v69 = &v83[24 * v68];
      *(v69 + 16) = bswap32(0) >> 16;
      *(v69 + 5) = v64;
      *(v69 + 6) = v66;
      LODWORD(v42) = v79;
      v41 = v81;
      if (v79 <= 1)
      {
        goto LABEL_28;
      }

LABEL_30:
      if (v42 == 2)
      {
        v43 = *(v77 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    if (v49)
    {
      v50 = v99 >> 32;
    }

    else
    {
      v50 = BYTE6(v100);
    }

LABEL_42:
    if (v50 < v46)
    {
      goto LABEL_77;
    }

    goto LABEL_45;
  }

  sub_26BE01600();
  swift_allocError();
  *v18 = 1;
  swift_willThrow();
  v19 = v93;
LABEL_16:
  sub_26BE0489C(v19, v92);
  sub_26BE00258(v94, v95);
  result = sub_26BE00258(v7, v96);
LABEL_3:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 MLS.LeafNode.init(encryptionKey:signatureKey:credential:capabilities:content:extensions:signature:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = *a6;
  v12 = a6[1];
  *(a9 + 32) = *a5;
  *(a9 + 48) = v11;
  v13 = *(a6 + 4);
  v14 = a7[1].n128_u8[0];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 64) = v12;
  *(a9 + 80) = v13;
  result = *a7;
  *(a9 + 88) = *a7;
  *(a9 + 104) = v14;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  *(a9 + 128) = a11;
  return result;
}

uint64_t MLS.LeafNode.encryptionKey.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.LeafNode.encryptionKey.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.LeafNode.signatureKey.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.LeafNode.signatureKey.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.LeafNode.credential.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_26BE04890(v2, v3);
}

uint64_t MLS.LeafNode.credential.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE0489C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MLS.LeafNode.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 104);
  *(a1 + 16) = v4;
  return sub_26BE5A15C(v2, v3, v4);
}

uint64_t MLS.LeafNode.content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_26BE5A170(*(v1 + 88), *(v1 + 96), *(v1 + 104));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  return result;
}

uint64_t MLS.LeafNode.extensions.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_26BE7EBA4(unint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v70 = v7;
  v71 = *(a1 + 64);
  v74 = *(a1 + 72);
  *&v75 = *(a1 + 40);
  v72 = *(a1 + 56);
  v73 = *(a1 + 80);
  v8 = *(a1 + 112);
  v9 = v3 >> 62;
  v67 = *(a1 + 88);
  v68 = *(a1 + 96);
  v69 = *(a1 + 104);
  if ((v3 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v10 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v10);
  if (v1)
  {
LABEL_24:
    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  v14 = result;
  v66 = v8;
  v15 = 0;
  a1 = sub_26BE11228(v2, v3);
  v16 = __OFADD__(v14, v10);
  v17 = v14 + v10;
  if (v16)
  {
    __break(1u);
    goto LABEL_35;
  }

  v18 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v19 = 0;
      goto LABEL_23;
    }

    v21 = *(v5 + 16);
    v20 = *(v5 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(v4);
    goto LABEL_23;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_41;
  }

  v19 = HIDWORD(v5) - v5;
LABEL_23:
  v1 = 0;
  v23 = sub_26BF30414(v19);
  a1 = sub_26BE11228(v5, v4);
  v24 = v23 + v19;
  if (__OFADD__(v23, v19))
  {
    goto LABEL_36;
  }

  v4 = v17 + v24;
  if (__OFADD__(v17, v24))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    v5 = a1;
    a1 = sub_26BF30414(a1);
    v15 = v1;
    if (v1)
    {
LABEL_39:
      sub_26BE00258(v77, *(&v77 + 1));

      goto LABEL_24;
    }

    goto LABEL_42;
  }

  *&v77 = v6;
  *(&v77 + 1) = v75;
  sub_26BE04890(v6, v75);
  v15 = 0;
  v25 = sub_26BE03BF4(&v77);
  a1 = sub_26BE0489C(v77, *(&v77 + 1));
  v6 = v4 + v25;
  if (!__OFADD__(v4, v25))
  {
    v75 = xmmword_26C00BBD0;
    v77 = xmmword_26C00BBD0;
    v78 = 0;

    v26 = sub_26BE7F3F4(0, v70);
    v27 = sub_26BF30414(v26);
    sub_26BF2A30C(&v77);
    v28 = sub_26BE00258(v77, *(&v77 + 1));
    v16 = __OFADD__(v27, v26);
    v29 = v27 + v26;
    if (v16)
    {
      __break(1u);
      goto LABEL_48;
    }

    v77 = xmmword_26C00BBD0;
    v78 = 0;
    v30 = sub_26BE7F300(0, v72);
    v31 = sub_26BF30414(v30);
    sub_26BF2A30C(&v77);
    result = sub_26BE00258(v77, *(&v77 + 1));
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFADD__(v29, v32);
      v33 = v29 + v32;
      v30 = v72;
      if (!v16)
      {
        v77 = xmmword_26C00BBD0;
        v78 = 0;
        v34 = sub_26BE7F300(0, v71);
        v35 = sub_26BF30414(v34);
        sub_26BF2A30C(&v77);
        result = sub_26BE00258(v77, *(&v77 + 1));
        v36 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v4 = v33 + v36;
        if (__OFADD__(v33, v36))
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v1 = 0;
        v77 = xmmword_26C00BBD0;
        v78 = 0;
        a1 = sub_26BE7F300(0, v74);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  v37 = a1;
  sub_26BF2A30C(&v77);
  result = sub_26BE00258(v77, *(&v77 + 1));
  v38 = v37 + v5;
  if (__OFADD__(v37, v5))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v16 = __OFADD__(v4, v38);
  v26 = v4 + v38;
  if (v16)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v77 = v75;
  v78 = 0;
  v39 = sub_26BE7F300(0, v73);
  if (v15)
  {
    goto LABEL_39;
  }

  v15 = v39;
  v28 = sub_26BF30414(v39);
  v65 = 0;
LABEL_48:
  v40 = v28;
  sub_26BF2A30C(&v77);
  sub_26BE00258(v77, *(&v77 + 1));

  v41 = v40 + v15;
  if (__OFADD__(v40, v15))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v16 = __OFADD__(v26, v41);
  v42 = v26 + v41;
  if (v16)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v16 = __OFADD__(v6, v42);
  v43 = v6 + v42;
  if (v16)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  LOBYTE(v76) = 0x20301u >> (8 * v69);
  v44 = MEMORY[0x277D838B0];
  v45 = MEMORY[0x277CC9C18];
  v79 = MEMORY[0x277D838B0];
  v80 = MEMORY[0x277CC9C18];
  *&v77 = &v76;
  *(&v77 + 1) = &v76 + 1;
  v46 = __swift_project_boxed_opaque_existential_1(&v77, MEMORY[0x277D838B0]);
  v48 = *v46;
  v47 = v46[1];
  sub_26C00908C();
  result = __swift_destroy_boxed_opaque_existential_1(&v77);
  v30 = v43 + 1;
  if (__OFADD__(v43, 1))
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (!v69)
  {
    v79 = v44;
    v80 = v45;
    v76 = bswap64(v67);
    *&v77 = &v76;
    *(&v77 + 1) = &v77;
    v50 = __swift_project_boxed_opaque_existential_1(&v77, v44);
    v52 = *v50;
    v51 = v50[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v76 = bswap64(v68);
    *&v77 = &v76;
    v79 = v44;
    v80 = v45;
    *(&v77 + 1) = &v77;
    v53 = __swift_project_boxed_opaque_existential_1(&v77, v44);
    v55 = *v53;
    v54 = v53[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v16 = __OFADD__(v30, 16);
    v30 = v43 + 17;
    if (v16)
    {
      __break(1u);
    }

    goto LABEL_74;
  }

  if (v69 != 1)
  {
LABEL_74:
    v77 = v75;
    v78 = 0;
    v61 = sub_26BEEAC24(0, v66);
    if (v65)
    {
      result = sub_26BE00258(v77, *(&v77 + 1));
      goto LABEL_24;
    }

    v62 = v61;
    v63 = sub_26BF30414(v61);
    sub_26BF2A30C(&v77);
    result = sub_26BE00258(v77, *(&v77 + 1));
    v64 = v63 + v62;
    if (__OFADD__(v63, v62))
    {
      goto LABEL_91;
    }

    result = v30 + v64;
    if (!__OFADD__(v30, v64))
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_81;
  }

  v32 = v68 >> 62;
  if ((v68 >> 62) <= 1)
  {
    if (!v32)
    {
      v49 = BYTE6(v68);
LABEL_70:
      v58 = sub_26BF30414(v49);
      if (v65)
      {
        result = sub_26BE5A170(v67, v68, 1);
        goto LABEL_24;
      }

      v59 = v58;
      sub_26BE11228(v67, v68);
      result = sub_26BE5A170(v67, v68, 1);
      v60 = v59 + v49;
      if (__OFADD__(v59, v49))
      {
        goto LABEL_89;
      }

      v16 = __OFADD__(v30, v60);
      v30 += v60;
      if (v16)
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      goto LABEL_74;
    }

    goto LABEL_66;
  }

LABEL_62:
  if (v32 != 2)
  {
    v49 = 0;
    goto LABEL_70;
  }

  v57 = *(v67 + 16);
  v56 = *(v67 + 24);
  v49 = v56 - v57;
  if (!__OFSUB__(v56, v57))
  {
    goto LABEL_68;
  }

  __break(1u);
LABEL_66:
  if (!__OFSUB__(HIDWORD(v67), v67))
  {
    v49 = HIDWORD(v67) - v67;
LABEL_68:
    sub_26BE00608(v67, v68);
    goto LABEL_70;
  }

LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_26BE7F300(uint64_t a1, uint64_t a2)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  while (v3)
  {
    v7 = *v4++;
    v14 = bswap32(v7) >> 16;
    v15[3] = v5;
    v15[4] = v6;
    v15[0] = &v14;
    v15[1] = v15;
    v8 = __swift_project_boxed_opaque_existential_1(v15, v5);
    v10 = *v8;
    v9 = v8[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    --v3;
    v11 = __OFADD__(a1, 2);
    a1 += 2;
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_26BE7F3F4(uint64_t a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16) + 1;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  while (--v3)
  {
    v12 = 256;
    v13[3] = v4;
    v13[4] = v5;
    v13[0] = &v12;
    v13[1] = v13;
    v6 = __swift_project_boxed_opaque_existential_1(v13, v4);
    v8 = *v6;
    v7 = v6[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = __OFADD__(a1, 2);
    a1 += 2;
    if (v9)
    {
      __break(1u);
      break;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL _s8SwiftMLS0B0O8LeafNodeV0cD13SourceContentO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        sub_26BE5A15C(*a2, *(a2 + 8), 1);
        sub_26BE5A15C(v3, v2, 1);
        v8 = sub_26BE02DEC(v3, v2, v6, v5);
        sub_26BE5A170(v3, v2, 1);
        sub_26BE5A170(v6, v5, 1);
        return v8 & 1;
      }

      sub_26BE00608(*a1, v2);
    }

    else if (v7 == 2 && (v5 | v6) == 0)
    {
      sub_26BE5A170(*a1, v2, 2);
      sub_26BE5A170(0, 0, 2);
      return 1;
    }

    goto LABEL_19;
  }

  if (*(a2 + 16))
  {
LABEL_19:
    sub_26BE5A15C(v6, v5, v7);
    sub_26BE5A170(v3, v2, v4);
    sub_26BE5A170(v6, v5, v7);
    return 0;
  }

  sub_26BE5A170(*a1, v2, 0);
  sub_26BE5A170(v6, v5, 0);
  return v3 == v6 && v2 == v5;
}

uint64_t _s8SwiftMLS0B0O8LeafNodeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v29 = *(a1 + 48);
  v31 = *(a1 + 56);
  v33 = *(a1 + 64);
  v35 = *(a1 + 72);
  v36 = *(a1 + 80);
  v28 = *(a1 + 88);
  v27 = *(a1 + 96);
  v26 = *(a1 + 104);
  v22 = *(a1 + 112);
  v20 = *(a1 + 120);
  v19 = *(a1 + 128);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v30 = *(a2 + 48);
  v32 = *(a2 + 56);
  v10 = *(a2 + 72);
  v34 = *(a2 + 64);
  v11 = *(a2 + 80);
  v24 = *(a2 + 96);
  v25 = *(a2 + 88);
  v23 = *(a2 + 104);
  v21 = *(a2 + 112);
  v18 = *(a2 + 120);
  v17 = *(a2 + 128);
  if ((sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_26BE02DEC(v2, v3, v7, v6) & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      sub_26BE04890(v9, v8);
      sub_26BE04890(v5, v4);
      sub_26BE04890(v9, v8);
      sub_26BE04890(v5, v4);
      v12 = sub_26BFB20FC(v5, v9);
      goto LABEL_9;
    }

LABEL_7:
    sub_26BE04890(v9, v8);
    sub_26BE04890(v5, v4);
    sub_26BE0489C(v5, v4);
    sub_26BE0489C(v9, v8);
    return 0;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  sub_26BE04890(v9, v8);
  sub_26BE04890(v5, v4);
  sub_26BE04890(v9, v8);
  sub_26BE04890(v5, v4);
  v12 = sub_26BE02DEC(v5, v4, v9, v8);
LABEL_9:
  v13 = v12;
  sub_26BE0489C(v5, v4);
  sub_26BE0489C(v9, v8);
  sub_26BE0489C(v9, v8);
  sub_26BE0489C(v5, v4);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v42 = v29;
  v43 = v31;
  v44 = v33;
  v45 = v35;
  v46 = v36;
  v37 = v30;
  v38 = v32;
  v39 = v34;
  v40 = v10;
  v41 = v11;
  v16 = _s8SwiftMLS0B0O12CapabilitiesV2eeoiySbAE_AEtFZ_0(&v42, &v37);

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v42 = v28;
  v43 = v27;
  LOBYTE(v44) = v26;
  v37 = v25;
  v38 = v24;
  LOBYTE(v39) = v23;
  sub_26BE5A15C(v28, v27, v26);
  sub_26BE5A15C(v25, v24, v23);
  v14 = _s8SwiftMLS0B0O8LeafNodeV0cD13SourceContentO2eeoiySbAG_AGtFZ_0(&v42, &v37);
  sub_26BE5A170(v37, v38, v39);
  sub_26BE5A170(v42, v43, v44);
  if (!v14 || (sub_26BFB1C64(v22, v21) & 1) == 0)
  {
    return 0;
  }

  return sub_26BE02DEC(v20, v19, v18, v17);
}

uint64_t sub_26BE7F9EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE7FA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_26BE7FAB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BE7FB00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BE7FB44(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t MLS.Lifetime.init(notBefore:notAfter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void MLS.CiphersuiteID.outer.getter(BOOL *a1@<X8>)
{
  v2 = *v1;
  if ((v2 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2 != 1;
  }
}

unint64_t sub_26BE7FC54()
{
  result = qword_28045EA28;
  if (!qword_28045EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA28);
  }

  return result;
}

uint64_t sub_26BE7FCA8()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE7FD1C()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t MLS.GroupState.generateAddProposal(keyPackage:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[7];
  v28 = a1[8];
  v29 = v3;
  v5 = a1[9];
  v30 = a1[10];
  v6 = a1[5];
  v7 = a1[3];
  v24 = a1[4];
  v25 = v6;
  v8 = a1[5];
  v9 = a1[7];
  v26 = a1[6];
  v27 = v9;
  v10 = a1[1];
  v21[0] = *a1;
  v21[1] = v10;
  v11 = a1[3];
  v13 = *a1;
  v12 = a1[1];
  v22 = a1[2];
  v23 = v11;
  v40 = v28;
  v41 = v5;
  v42 = a1[10];
  v36 = v24;
  v37 = v8;
  v38 = v26;
  v39 = v4;
  v32 = v13;
  v33 = v12;
  v31 = *(a1 + 22);
  v43 = *(a1 + 22);
  v34 = v22;
  v35 = v7;
  sub_26BE7FED4(&v32);
  v14 = v41;
  *(a2 + 128) = v40;
  *(a2 + 144) = v14;
  *(a2 + 160) = v42;
  *(a2 + 176) = v43;
  v15 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v15;
  v16 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v16;
  v17 = v33;
  *a2 = v32;
  *(a2 + 16) = v17;
  v18 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v18;
  return sub_26BE2DFC0(v21, v20);
}

void *sub_26BE7FED4(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

double MLS.GroupState.generateRemoveProposal(leafIndex:)@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  LODWORD(v9[0]) = *a1;
  sub_26BE71934(v9);
  v3 = v17;
  *(a2 + 128) = v16;
  *(a2 + 144) = v3;
  *(a2 + 160) = v18;
  *(a2 + 176) = v19;
  v4 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v4;
  v5 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v5;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

double MLS.GroupState.generateServerRemoveProposal(leafIndex:)@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  LODWORD(v9[0]) = *a1;
  sub_26BE80014(v9);
  v3 = v17;
  *(a2 + 128) = v16;
  *(a2 + 144) = v3;
  *(a2 + 160) = v18;
  *(a2 + 176) = v19;
  v4 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v4;
  v5 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v5;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

void *sub_26BE80014(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

double MLS.GroupState.generateSelfRemoveProposal()@<D0>(uint64_t a1@<X8>)
{
  sub_26BE800C4(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

void *sub_26BE800C4(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

uint64_t MLS.GroupState.generateGroupContextExtensionsProposal(extensions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v9[0] = a1;
  sub_26BE80190(v9);
  v3 = v9[9];
  *(a2 + 128) = v9[8];
  *(a2 + 144) = v3;
  *(a2 + 160) = v9[10];
  *(a2 + 176) = v10;
  v4 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v4;
  v5 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v5;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  v7 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v7;
}

void *sub_26BE80190(void *result)
{
  v1 = result[19] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

char *MLS.GroupState.generateAddAndRemoveProposals(adds:removes:serverRemove:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = (a2 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v6++;
      v18 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (a3)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_26BEED780(0, *(v7 + 2) + 1, 1, v7);
        }

        v22 = *(v7 + 2);
        v21 = *(v7 + 3);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v7 = sub_26BEED780((v21 > 1), v22 + 1, 1, v7);
        }

        LODWORD(v57) = v18;
        sub_26BE80014(&v57);
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_26BEED780(0, *(v7 + 2) + 1, 1, v7);
        }

        v22 = *(v7 + 2);
        v24 = *(v7 + 3);
        v23 = v22 + 1;
        if (v22 >= v24 >> 1)
        {
          v7 = sub_26BEED780((v24 > 1), v22 + 1, 1, v7);
        }

        LODWORD(v57) = v18;
        sub_26BE71934(&v57);
      }

      *(v7 + 2) = v23;
      v8 = &v7[184 * v22];
      v9 = v57;
      v10 = v58;
      v11 = v60;
      *(v8 + 4) = v59;
      *(v8 + 5) = v11;
      *(v8 + 2) = v9;
      *(v8 + 3) = v10;
      v12 = v61;
      v13 = v62;
      v14 = v64;
      *(v8 + 8) = v63;
      *(v8 + 9) = v14;
      *(v8 + 6) = v12;
      *(v8 + 7) = v13;
      v15 = v65;
      v16 = v66;
      v17 = v67;
      *(v8 + 26) = v68;
      *(v8 + 11) = v16;
      *(v8 + 12) = v17;
      *(v8 + 10) = v15;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = (a1 + 32);
    do
    {
      v27 = v26[9];
      v65 = v26[8];
      v66 = v27;
      v67 = v26[10];
      v68 = *(v26 + 22);
      v28 = v26[5];
      v61 = v26[4];
      v62 = v28;
      v29 = v26[7];
      v63 = v26[6];
      v64 = v29;
      v30 = v26[1];
      v57 = *v26;
      v58 = v30;
      v31 = v26[3];
      v59 = v26[2];
      v60 = v31;
      sub_26BE2DFC0(&v57, &v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_26BEED780(0, *(v7 + 2) + 1, 1, v7);
      }

      v33 = *(v7 + 2);
      v32 = *(v7 + 3);
      if (v33 >= v32 >> 1)
      {
        v7 = sub_26BEED780((v32 > 1), v33 + 1, 1, v7);
      }

      v53 = v65;
      v54 = v66;
      v55 = v67;
      v56 = v68;
      v49 = v61;
      v50 = v62;
      v51 = v63;
      v52 = v64;
      v45 = v57;
      v46 = v58;
      v47 = v59;
      v48 = v60;
      sub_26BE7FED4(&v45);
      *(v7 + 2) = v33 + 1;
      v34 = &v7[184 * v33];
      v35 = v45;
      v36 = v46;
      v37 = v48;
      *(v34 + 4) = v47;
      *(v34 + 5) = v37;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v38 = v49;
      v39 = v50;
      v40 = v52;
      *(v34 + 8) = v51;
      *(v34 + 9) = v40;
      *(v34 + 6) = v38;
      *(v34 + 7) = v39;
      v41 = v53;
      v42 = v54;
      v43 = v55;
      *(v34 + 26) = v56;
      *(v34 + 11) = v42;
      *(v34 + 12) = v43;
      *(v34 + 10) = v41;
      v26 = (v26 + 184);
      --v25;
    }

    while (v25);
  }

  return v7;
}

uint64_t sub_26BE80498(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = v2[16];
  v8 = *(v2 + 5);
  v9 = *(v4 + 12);
  v10 = *(v4 + 7);
  v109 = v7;
  v110 = v8;
  v111 = v9;
  v112 = v10;
  v11 = type metadata accessor for MLS.GroupState();
  v12 = v11[13];
  v108 = *(v4 + v12);

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v108, v113);
  if (v3)
  {
  }

  v106[0] = v113[6];
  v106[1] = v113[7];
  v107 = v114;
  v102 = v113[2];
  v103 = v113[3];
  v104 = v113[4];
  v105 = v113[5];
  v100 = v113[0];
  v101 = v113[1];
  result = sub_26BE59C80(&v100);
  if (result == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v14 = 15;
    v14[112] = 0;
    return swift_willThrow();
  }

  v53 = a1;
  v54 = v100;
  v118 = v103;
  v119 = v104;
  v120 = v105;
  v116 = v101;
  v117 = v102;
  v55 = *&v106[0];
  LODWORD(v56) = BYTE8(v106[0]);
  *(&v56 + 1) = *(&v105 + 1);
  v57 = *(&v106[1] + 1);
  *(v115 + 7) = *&v106[1];
  v115[0] = *(v106 + 9);
  v121 = v107;
  v15 = *(v4 + v11[19]);
  if (v15)
  {
    swift_beginAccess();
    sub_26BE295A0(v15 + 40, v58);

    sub_26BE1118C(v96);
    v49 = a2;
    sub_26BE29710(v58);
LABEL_9:

    sub_26BE03890(v96, &v97);
    v17 = v98;
    v18 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    v19 = *(v18 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v52 = &v49;
    v21 = *(AssociatedTypeWitness - 8);
    v50 = AssociatedTypeWitness;
    v51 = v21;
    v22 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v24 = &v49 - v23;
    (*(v19 + 32))(v17, v19);
    v25 = v50;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = (*(AssociatedConformanceWitness + 16))(v25, AssociatedConformanceWitness);
    v29 = v28;
    (*(v51 + 8))(v24, v25);
    sub_26BE00258(v54, *(&v54 + 1));
    sub_26BE5A170(*(&v56 + 1), v55, v56);
    v31 = *(v4 + 1);
    v30 = *(v4 + 2);
    v32 = *(v4 + v12);
    v55 = v11[14];
    *&v56 = v27;
    *&v58[0] = v27;
    *(&v58[0] + 1) = v29;
    v33 = v30;
    *(&v56 + 1) = v29;
    v58[3] = v118;
    v58[4] = v119;
    v58[1] = v116;
    v58[2] = v117;
    v60 = 0;
    *&v61[0] = 0;
    v59 = v120;
    BYTE8(v61[0]) = 2;
    *(v61 + 9) = v115[0];
    *&v61[1] = *(v115 + 7);
    *(&v61[1] + 1) = v57;
    v62 = v121;
    v93 = v61[0];
    v94 = v61[1];
    v95 = v121;
    v89 = v117;
    v90 = v118;
    v91 = v119;
    v92 = v120;
    v88[0] = v58[0];
    v88[1] = v116;
    v86[0] = v31;
    v86[1] = v30;
    v87 = v32;
    sub_26BE00608(v31, v30);
    sub_26BE00758(v58, v78);
    v34 = sub_26BE5B600(v86);
    v35 = (v4 + v55);
    v83 = v93;
    v84 = v94;
    v85 = v95;
    v79 = v89;
    v80 = v90;
    v81 = v91;
    v82 = v92;
    v78[0] = v88[0];
    v78[1] = v88[1];
    v37 = v36;
    sub_26BE00854(v78);
    v38 = v35[3];
    v39 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v38);
    v55 = v37;
    v40 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v34, v37, v38, v39);
    v42 = v41;
    sub_26BE00258(v31, v33);
    sub_26BE00258(v34, v55);
    sub_26BE00258(v57, v121);
    v43 = v56;
    v64 = v56;
    v67 = v118;
    v68 = v119;
    v65 = v116;
    v66 = v117;
    *&v70[0] = 0;
    v69 = v120;
    BYTE8(v70[0]) = 2;
    *(v70 + 9) = v115[0];
    *&v70[1] = *(v115 + 7);
    *(&v70[1] + 1) = v40;
    v71 = v42;
    v44 = v53;
    *(v53 + 128) = v42;
    v45 = v69;
    v44[4] = v68;
    v44[5] = v45;
    v46 = v67;
    v44[2] = v66;
    v44[3] = v46;
    v47 = v65;
    *v44 = v64;
    v44[1] = v47;
    v48 = v70[1];
    v44[6] = v70[0];
    v44[7] = v48;
    sub_26BE03890(&v97, v49);
    v72[0] = v43;
    v72[3] = v118;
    v72[4] = v119;
    v72[2] = v117;
    v72[1] = v116;
    v75 = 0;
    v73 = v120;
    v74 = 0;
    v76 = 2;
    *&v77[7] = *(v115 + 7);
    *v77 = v115[0];
    *&v77[15] = v40;
    *&v77[23] = v42;
    sub_26BE00758(&v64, &v63);
    return sub_26BE00854(v72);
  }

  v16 = *v4;
  if ((v16 - 3) >= 0xFFFFFFFE)
  {
    LOBYTE(v58[0]) = v16 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v58, v88);
    LOBYTE(v78[0]) = v88[0];
    *(v78 + 8) = *(v88 + 8);
    *(&v78[1] + 1) = *(&v88[1] + 1);
    *&v79 = v89;
    MLS.Cryptography.Ciphersuite.generateHPKEPrivateKey()(v96);
    v49 = a2;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t MLS.GroupState.generateUpdateProposalWithRotatedHPKEKey()@<X0>(uint64_t a1@<X8>)
{
  result = sub_26BE80498(&v34, v43);
  if (!v2)
  {
    v20[6] = v40;
    v20[7] = v41;
    v21 = v42;
    v20[2] = v36;
    v20[3] = v37;
    v20[4] = v38;
    v20[5] = v39;
    v20[0] = v34;
    v20[1] = v35;
    v5 = v1 + *(type metadata accessor for MLS.GroupState() + 64);
    sub_26BE2E258(v5, &qword_28045E730, &qword_26C011528);
    sub_26BE03890(v43, v5);
    v6 = v38;
    *(v5 + 120) = v39;
    v7 = v39;
    *(v5 + 136) = v40;
    v8 = v40;
    *(v5 + 152) = v41;
    v9 = v34;
    *(v5 + 56) = v35;
    v10 = v35;
    *(v5 + 72) = v36;
    v11 = v36;
    *(v5 + 88) = v37;
    v12 = v37;
    *(v5 + 104) = v38;
    *(v5 + 40) = v34;
    v28 = v8;
    v29 = v41;
    v24 = v11;
    v25 = v12;
    v26 = v6;
    v27 = v7;
    v13 = v42;
    *(v5 + 168) = v42;
    *&v30 = v13;
    v22 = v9;
    v23 = v10;
    sub_26BE821D4(&v22);
    v14 = v31;
    *(a1 + 128) = v30;
    *(a1 + 144) = v14;
    *(a1 + 160) = v32;
    *(a1 + 176) = v33;
    v15 = v27;
    *(a1 + 64) = v26;
    *(a1 + 80) = v15;
    v16 = v29;
    *(a1 + 96) = v28;
    *(a1 + 112) = v16;
    v17 = v23;
    *a1 = v22;
    *(a1 + 16) = v17;
    v18 = v25;
    *(a1 + 32) = v24;
    *(a1 + 48) = v18;
    return sub_26BE00758(v20, v19);
  }

  return result;
}

uint64_t MLS.GroupState.generateProposalMessage(_:options:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[9];
  v26 = a1[8];
  v27 = v4;
  *v28 = a1[10];
  *&v28[16] = *(a1 + 22);
  v5 = a1[5];
  v22 = a1[4];
  v23 = v5;
  v6 = a1[7];
  v24 = a1[6];
  v25 = v6;
  v7 = a1[1];
  v18 = *a1;
  v19 = v7;
  v8 = a1[3];
  v20 = a1[2];
  v21 = v8;
  v9 = *a2;
  v12 = *(a2 + 8);
  v10 = *(a2 + 24);
  sub_26BE82200(&v18);
  v16[8] = v26;
  v16[9] = v27;
  v17[0] = *v28;
  *(v17 + 9) = *&v28[9];
  v16[4] = v22;
  v16[5] = v23;
  v16[6] = v24;
  v16[7] = v25;
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v21;
  v13[0] = v9;
  v14 = v12;
  v15 = v10;
  return sub_26BE68838(v16, v13, a3);
}

uint64_t MLS.GroupState.generateApplicationMessage(message:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v8 = _s11HashRatchetVMa(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - v14;
  v16 = *a3;
  v17 = *(a3 + 8);
  v27 = *(a3 + 16);
  if (*(a3 + 26) == 1)
  {
    sub_26BE00608(a1, a2);
LABEL_3:
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2;
    sub_26BE8220C(v35);
    v33[8] = v35[8];
    v33[9] = v35[9];
    v34[0] = v36[0];
    *(v34 + 9) = *(v36 + 9);
    v33[4] = v35[4];
    v33[5] = v35[5];
    v33[6] = v35[6];
    v33[7] = v35[7];
    v33[0] = v35[0];
    v33[1] = v35[1];
    v33[2] = v35[2];
    v33[3] = v35[3];
    v29[0] = 1;
    v30 = v16;
    v31 = v17;
    v32 = v27;
    sub_26BE00608(v16, v17);
    sub_26BE68838(v33, v29, v28);
    sub_26BE00258(v16, v17);
    return sub_26BE00258(a1, a2);
  }

  v26 = v13;
  v19 = *(a3 + 24);
  v20 = type metadata accessor for MLS.GroupState();
  v21 = *(v20 + 48);
  LODWORD(v35[0]) = *(v4 + *(v20 + 52));
  v25 = v4;
  v22 = v37;
  result = sub_26BF94CD0(1, v35, v12);
  if (!v22)
  {
    sub_26BE82214(v12, v15);
    v23 = *&v15[*(v26 + 24)];
    sub_26BE823D0(v15, _s11HashRatchetVMa);
    LOWORD(v35[0]) = v19;
    a1 = sub_26BE71984(a1, a2, v35, v23);
    a2 = v24;
    v37 = 0;
    goto LABEL_3;
  }

  return result;
}

uint64_t MLS.GroupState.generateSignedMessage(aadData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26BE82278(v13);
  v23 = v13[8];
  v24 = v13[9];
  *v25 = v13[10];
  *&v25[16] = v14;
  v19 = v13[4];
  v20 = v13[5];
  v21 = v13[6];
  v22 = v13[7];
  v15 = v13[0];
  v16 = v13[1];
  v17 = v13[2];
  v18 = v13[3];
  sub_26BE82200(&v15);
  v11[8] = v23;
  v11[9] = v24;
  v12[0] = *v25;
  *(v12 + 9) = *&v25[9];
  v11[4] = v19;
  v11[5] = v20;
  v11[6] = v21;
  v11[7] = v22;
  v11[0] = v15;
  v11[1] = v16;
  v11[2] = v17;
  v11[3] = v18;
  v7[0] = 0;
  v8 = a1;
  v9 = a2;
  v10 = 0;
  sub_26BE00608(a1, a2);
  sub_26BE68838(v11, v7, a3);
  return sub_26BE00258(a1, a2);
}

uint64_t MLS.GroupState.generateSignedMessage(messageID:verifiableDerivedContent:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  sub_26BE038A8(a3, &v38);
  v10 = type metadata accessor for MLS.GroupState();
  v11 = sub_26BE81FE0(*(v6 + *(v10 + 40)));
  if (v5)
  {
  }

  else if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  LODWORD(v11) = sub_26BE4126C();
LABEL_5:
  v25 = v38;
  v26 = v39;
  *&v27 = v40;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v51 = 1;
  v52 = a1;
  v53 = a2;
  v54 = v11;
  sub_26BE00608(a1, a2);
  sub_26BE822A4(&v25, v55);
  v49 = xmmword_26C00BBD0;
  v50 = 0;
  sub_26BFF933C(&v51);
  v12 = v49;
  v13 = *(&v49 + 1) >> 62;
  if ((*(&v49 + 1) >> 62) > 1)
  {
    v15 = *(&v49 + 1);
    if (v13 != 2)
    {
      goto LABEL_13;
    }

    v14 = v49;
    v16 = *(v49 + 24);
LABEL_11:
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v14 = v12;
    goto LABEL_14;
  }

  if (v13)
  {
    v15 = *(&v49 + 1);
    v14 = v49;
    v16 = v49 >> 32;
    goto LABEL_11;
  }

  v15 = *(&v49 + 1);
  v14 = v49;
LABEL_14:
  v17 = sub_26C00909C();
  v19 = v18;
  sub_26BE00258(v14, v15);
  sub_26BE82278(v36);
  v46 = v36[8];
  v47 = v36[9];
  *v48 = v36[10];
  *&v48[16] = v37;
  v42 = v36[4];
  v43 = v36[5];
  v44 = v36[6];
  v45 = v36[7];
  v38 = v36[0];
  v39 = v36[1];
  v40 = v36[2];
  v41 = v36[3];
  sub_26BE82200(&v38);
  v33 = v46;
  v34 = v47;
  v35[0] = *v48;
  *(v35 + 9) = *&v48[9];
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v21[0] = 0;
  v22 = v17;
  v23 = v19;
  v24 = 0;
  sub_26BE00608(v17, v19);
  sub_26BE68838(&v25, v21, a4);
  sub_26BE00258(v17, v19);
  sub_26BE6FDD8(&v51);
  return sub_26BE00258(v17, v19);
}

uint64_t MLS.GroupState.authenticatedDataForMessage(messageID:verifiableDerivedContent:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = type metadata accessor for MLS.GroupState();
  v11 = sub_26BE81FE0(*(v4 + *(v10 + 40)));
  if (v5)
  {
  }

  else
  {
    v12 = v11;
    if ((v11 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v12 = sub_26BE4126C();
LABEL_5:
  if (a2 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = a2;
  }

  sub_26BE2E1F0(a3, v16, &qword_28045E2A8, &qword_26C028DD0);
  *(a4 + 48) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 64) = 0;
  *a4 = 1;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14;
  *(a4 + 24) = v12;
  sub_26BE2E408(a1, a2);
  return sub_26BE822A4(v16, a4 + 32);
}

uint64_t MLS.GroupState.generateGroupInfo(commitOptions:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v97 = a1;
  v98 = a2;
  v4 = sub_26C009C8C();
  v116 = *(v4 - 8);
  v5 = *(v116 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v90[-v9];
  v11 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v90[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for MLS.GroupState();
  v16 = v3 + *(v15 + 44);
  v17 = v3 + *(v15 + 36);
  v18 = *(v17 + 2);
  v100 = *(v17 + 1);
  v99 = v18;
  v19 = *(v16 + 24);
  v20 = *(v16 + 32);
  LOBYTE(v112) = *v16;
  v113 = *(v16 + 8);
  v114 = v19;
  v115 = v20;
  v96 = type metadata accessor for MLS.KeySchedule();
  (*(v116 + 16))(v8, v16 + *(v96 + 48), v4);
  sub_26BE82314();
  v21 = v14;

  sub_26C009C5C();
  v22 = v101;
  MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v10, v100, v99);
  if (v22)
  {
    (*(v116 + 8))(v10, v4);
  }

  v100 = v16;
  v101 = v15;
  (*(v116 + 8))(v10, v4);

  v24 = *v3;
  v25 = *(v3 + 1);
  v26 = *(v3 + 2);
  v27 = *(v3 + 3);
  v28 = *(v3 + 5);
  v29 = *(v3 + 12);
  v30 = *(v3 + 7);
  v108 = v3[16];
  v109 = v28;
  v110 = v29;
  v111 = v30;
  v31 = sub_26BE592D0();
  v99 = 0;
  v32 = *(v17 + 1);
  v33 = *(v17 + 2);
  v93 = v32;
  v92 = v33;
  v34 = v21;
  v35 = *(v3 + *(v101 + 40));
  v95 = v31;
  v94 = v36;
  sub_26BE00608(v31, v36);
  sub_26BE00608(v25, v26);
  sub_26BE00608(v32, v33);

  v37 = sub_26BEE04CC(3, v35);
  v91 = v24;
  v38 = v37;
  v39 = v27;
  v40 = type metadata accessor for MLS.GroupInfo();
  v41 = v98;
  v42 = v98 + v40[6];
  v116 = v34;
  sub_26BE8236C(v34, v42);
  v43 = *(v101 + 52);
  v44 = *(v3 + v43);
  *v41 = v91;
  *(v41 + 8) = v25;
  *(v41 + 16) = v26;
  v45 = v95;
  *(v41 + 24) = v39;
  *(v41 + 32) = v45;
  v46 = v93;
  *(v41 + 40) = v94;
  *(v41 + 48) = v46;
  *(v41 + 56) = v92;
  *(v41 + 64) = v35;
  v95 = v38;
  *(v41 + 72) = v38;
  *(v41 + v40[7]) = v44;
  *(v41 + v40[8]) = xmmword_26C00BBD0;
  if (*(v97 + *(type metadata accessor for MLS.GroupState.CommitOptions(0) + 28)))
  {
    v97 = v3;
    v47 = v116;
  }

  else
  {
    v61 = v43;
    v62 = *(v3 + 5);
    v63 = *(v3 + 12);
    v64 = *(v3 + 7);
    LOWORD(v112) = v3[16];
    *&v113 = v62;
    DWORD2(v113) = v63;
    v114 = v64;
    v65 = v99;
    v66 = MLS.TreeKEMPublicKey.rawRepresentation.getter();
    if (v65)
    {
      sub_26BE823D0(v116, type metadata accessor for MLS.Cryptography.MACTag);
      return sub_26BE823D0(v41, type metadata accessor for MLS.GroupInfo);
    }

    v97 = v3;
    MLS.RatchetTree.init(rawValue:)(v66, v67, &v105);
    v47 = v116;
    v112 = v105;
    v81 = MLS.RatchetTree.rawValue.getter();
    v83 = v82;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = 0;
    v85 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v95 = sub_26BEEBD8C(0, *(v95 + 2) + 1, 1, v95);
    }

    v87 = *(v95 + 2);
    v86 = *(v95 + 3);
    if (v87 >= v86 >> 1)
    {
      v95 = sub_26BEEBD8C((v86 > 1), v87 + 1, 1, v95);
    }

    v88 = v95;
    *(v95 + 2) = v87 + 1;
    v89 = &v88[24 * v87];
    *(v89 + 16) = 2;
    *(v89 + 5) = v81;
    *(v89 + 6) = v83;
    v41 = v98;
    *(v98 + 72) = v88;
    v43 = v85;
  }

  sub_26BE2E1F0(v100 + *(v96 + 64), v102, &qword_28045E6A8, &qword_26C0112B0);
  v48 = v103;
  if (!v103)
  {
    sub_26BE2E258(v102, &qword_28045E6A8, &qword_26C0112B0);
    v105 = 0u;
    v106 = 0u;
    AssociatedConformanceWitness = 0;
    v54 = v101;
    goto LABEL_12;
  }

  v49 = v43;
  v50 = v104;
  __swift_project_boxed_opaque_existential_1(v102, v103);
  v51 = *(v50 + 8);
  v52 = *(v51 + 32);
  *(&v106 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v105);
  v53 = v51;
  v47 = v116;
  v52(v48, v53);
  v43 = v49;
  __swift_destroy_boxed_opaque_existential_1(v102);
  v54 = v101;
  if (!*(&v106 + 1))
  {
LABEL_12:
    sub_26BE2E258(&v105, &qword_28045EA30, &qword_26C013D38);
    v68 = v99;
    goto LABEL_13;
  }

  sub_26BE03890(&v105, &v112);
  v55 = v114;
  v56 = v115;
  __swift_project_boxed_opaque_existential_1(&v112, v114);
  v57 = (*(*(v56 + 8) + 16))(v55);
  v59 = v58;
  v60 = v99;
  sub_26BFFAFE8(v57, v58, &v105);
  if (v60)
  {
    sub_26BE823D0(v47, type metadata accessor for MLS.Cryptography.MACTag);
    sub_26BE00258(v57, v59);
    sub_26BE823D0(v41, type metadata accessor for MLS.GroupInfo);
    return __swift_destroy_boxed_opaque_existential_1(&v112);
  }

  v68 = 0;
  sub_26BE00258(v57, v59);
  v74 = v105;
  v75 = *(&v105 + 1);
  v76 = v106;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v95 = sub_26BEEBD8C(0, *(v95 + 2) + 1, 1, v95);
  }

  v78 = *(v95 + 2);
  v77 = *(v95 + 3);
  if (v78 >= v77 >> 1)
  {
    v95 = sub_26BEEBD8C((v77 > 1), v78 + 1, 1, v95);
  }

  v79 = v95;
  *(v95 + 2) = v78 + 1;
  v80 = &v79[24 * v78];
  *(v80 + 16) = v74;
  *(v80 + 5) = v75;
  *(v80 + 6) = v76;
  *(v41 + 72) = v79;
  __swift_destroy_boxed_opaque_existential_1(&v112);
  v54 = v101;
  v43 = v49;
LABEL_13:
  v69 = v97;
  v70 = *(v97 + 5);
  v71 = *(v97 + 12);
  v72 = *(v97 + 7);
  LOWORD(v112) = v97[16];
  *&v113 = v70;
  DWORD2(v113) = v71;
  v114 = v72;
  LODWORD(v105) = *(v97 + v43);
  v73 = *(v54 + 56);

  MLS.GroupInfo.sign(tree:signer:signaturePrivateKey:)(&v112, &v105, (v69 + v73));

  result = sub_26BE823D0(v47, type metadata accessor for MLS.Cryptography.MACTag);
  if (v68)
  {
    return sub_26BE823D0(v41, type metadata accessor for MLS.GroupInfo);
  }

  return result;
}

uint64_t static MLS.GroupState.authenticatedDataForParameters(era:messageID:verifiableDerivedContent:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  if (a3 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = a3;
  }

  sub_26BE2E1F0(a4, v12, &qword_28045E2A8, &qword_26C028DD0);
  *(a5 + 48) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 64) = 0;
  *a5 = 1;
  *(a5 + 8) = v9;
  *(a5 + 16) = v10;
  *(a5 + 24) = a1;
  sub_26BE2E408(a2, a3);
  return sub_26BE822A4(v12, a5 + 32);
}

unint64_t sub_26BE81FE0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      v7 = 0;
      return v7 | ((v3 == 0) << 32);
    }

    v4 = v2 + 12;
    v5 = *v2;
    v2 += 12;
  }

  while (v5 != -4095);
  v8 = -4095;
  v9 = *(v4 - 1);
  result = sub_26BE34C94(&v8);
  if (v1)
  {
    return result;
  }

  v7 = result;
  return v7 | ((v3 == 0) << 32);
}

uint64_t sub_26BE8206C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = (result + 32);
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 12;
    v5 = *v2;
    v2 += 12;
    if (v5 == 3)
    {
      v6 = 3;
      v7 = *(v4 - 1);
      return sub_26BFF740C(&v6, a2);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

double sub_26BE820D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      result = 0.0;
      *a2 = xmmword_26C00DA60;
      return result;
    }

    v5 = v3 + 12;
    v6 = *v3;
    v3 += 12;
  }

  while (v6 != -4091);
  v11 = -4091;
  v12 = *(v5 - 1);
  v8 = sub_26BFDB8C0(&v11);
  if (!v2)
  {
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  return result;
}

double sub_26BE82154@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      result = 0.0;
      *a2 = xmmword_26C00DA60;
      return result;
    }

    v5 = v3 + 12;
    v6 = *v3;
    v3 += 12;
  }

  while (v6 != 4);
  v11 = 4;
  v12 = *(v5 - 1);
  v8 = sub_26BFDB8C0(&v11);
  if (!v2)
  {
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  return result;
}

void *sub_26BE821D4(void *result)
{
  v1 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[19] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v2;
  result[22] = v1;
  return result;
}

uint64_t sub_26BE82214(uint64_t a1, uint64_t a2)
{
  v4 = _s11HashRatchetVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_26BE82278(void *result)
{
  v1 = result[19] | 0x3000000000000000;
  v2 = result[22] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v1;
  result[22] = v2;
  return result;
}

uint64_t sub_26BE822A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E2A8, &qword_26C028DD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BE82314()
{
  result = qword_28045E8B8;
  if (!qword_28045E8B8)
  {
    sub_26C009C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E8B8);
  }

  return result;
}

uint64_t sub_26BE8236C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE823D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BE82430()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00B07C();
  return sub_26C00B0CC();
}

unint64_t sub_26BE824B8()
{
  result = qword_28045EA38;
  if (!qword_28045EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA38);
  }

  return result;
}

uint64_t sub_26BE8250C()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00B07C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE82550(uint64_t a1, void (*a2)(__int128 *, uint64_t))
{
  v8 = xmmword_26C00BBD0;
  v9 = 0;
  a2(&v8, a1);
  result = v8;
  if (v2)
  {
    return sub_26BE00258(v8, *(&v8 + 1));
  }

  v4 = *(&v8 + 1) >> 62;
  if ((*(&v8 + 1) >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v8 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v8 >> 32;
  }

  else
  {
    v5 = BYTE14(v8);
  }

  if (v5 < v9)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;
    v7 = sub_26C00909C();
    sub_26BE00258(v6, *(&v6 + 1));
    return v7;
  }

  return result;
}

uint64_t sub_26BE82640()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478F00);
  __swift_project_value_buffer(v0, qword_280478F00);
  return sub_26C009A4C();
}

void sub_26BE826C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_28045DF88 != -1)
  {
    swift_once();
  }

  v8 = sub_26C009A5C();
  __swift_project_value_buffer(v8, qword_280478F00);

  sub_26BE00608(a3, a4);
  v9 = sub_26C009A3C();
  v10 = sub_26C00AA0C();

  sub_26BE00258(a3, a4);
  if (os_log_type_enabled(v9, v10))
  {
    osloga = v8;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_26BE29740(a1, a2, &v26);
    *(v11 + 12) = 2080;
    v13 = sub_26BE832D4(a3, a4);
    v15 = a1;
    v16 = sub_26BE29740(v13, v14, &v26);

    *(v11 + 14) = v16;
    a1 = v15;
    _os_log_impl(&dword_26BDFE000, v9, v10, "Failed to deserialize %s from %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v12, -1, -1);
    v17 = v11;
    v8 = osloga;
    MEMORY[0x26D69A4E0](v17, -1, -1);
  }

  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_280478FB0);

  sub_26BE00608(a3, a4);
  oslog = sub_26C009A3C();
  v18 = sub_26C00A9FC();

  sub_26BE00258(a3, a4);
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_26BE29740(a1, a2, &v26);
    *(v19 + 12) = 2080;
    v21 = sub_26C0090EC();
    v23 = sub_26BE29740(v21, v22, &v26);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_26BDFE000, oslog, v18, "Full data from failure to deserialize %s: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v20, -1, -1);
    MEMORY[0x26D69A4E0](v19, -1, -1);
  }
}

void static MLS.parseMLSMessage(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MLS.MLSMessage(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = 0;
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 16);
  }

  else
  {
    if (!v15)
    {
      goto LABEL_7;
    }

    v14 = a1;
  }

  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
LABEL_7:
  v29 = a1;
  v30 = a2;
  v31 = v14;
  sub_26BEE3C08(v13);
  if (v3)
  {
    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v29, v30);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v16 = sub_26C009A5C();
    __swift_project_value_buffer(v16, qword_280478EE8);
    v17 = sub_26C009A3C();
    v18 = sub_26C00AA0C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26BDFE000, v17, v18, "parseMLSMessage failed to parse incoming message as MLSMessage, trying CommitList", v19, 2u);
      MEMORY[0x26D69A4E0](v19, -1, -1);
    }

    v27 = a1;
    v28 = a2;
    sub_26BE00608(a1, a2);
    MLS.Group.Message.asSingleCommit()(&v29);
    sub_26BE00258(v27, v28);
    MLS.MLSMessage.init(rawValue:quiet:)(v29, v30, 0, v11);
    sub_26BE831AC(v11, a3);
    v21 = sub_26C009A3C();
    v24 = sub_26C00AA1C();
    if (os_log_type_enabled(v21, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26BDFE000, v21, v24, "parseMLSMessage successfully parsed incoming message as CommitList", v25, 2u);
      MEMORY[0x26D69A4E0](v25, -1, -1);
    }
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(v29, v30);
    sub_26BE831AC(v13, a3);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v20 = sub_26C009A5C();
    __swift_project_value_buffer(v20, qword_280478EE8);
    v21 = sub_26C009A3C();
    v22 = sub_26C00AA1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26BDFE000, v21, v22, "parseMLSMessage successfully parsed incoming message as MLSMessage", v23, 2u);
      MEMORY[0x26D69A4E0](v23, -1, -1);
    }
  }
}

uint64_t static MLS.parseKeyPackage(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
  a3 = v7;
LABEL_7:
  sub_26BE00E2C(a3);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA40, &qword_26C013E18);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
  }

  return sub_26BE00258(a1, a2);
}

uint64_t static MLS.parseWelcome(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
  a3 = v7;
LABEL_7:
  sub_26BE343E4(a3);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA48, &qword_26C013E20);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
  }

  return sub_26BE00258(a1, a2);
}

uint64_t static MLS.parseGroupInfo(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
  a3 = v7;
LABEL_7:
  sub_26BED3A64(a3);
  if (v3)
  {
    type metadata accessor for MLS.GroupInfo();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA50, &qword_26C013E28);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
  }

  return sub_26BE00258(a1, a2);
}

uint64_t sub_26BE831AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE83210()
{
  sub_26C00AC1C();

  v0 = sub_26C00AEFC();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  MEMORY[0x26D699090](0xD000000000000011, 0x800000026C02B9D0);
}

uint64_t sub_26BE832D4(uint64_t a1, unint64_t a2)
{
  sub_26BE00608(a1, a2);
  sub_26BE3C290(16, a1, a2, &v15);
  v4 = v15;
  v5 = v16;
  v17 = sub_26BF87240(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v6 = sub_26C00A3EC();
  v8 = v7;
  sub_26BE00258(v4, v5);

  v17 = v6;
  v18 = v8;
  MEMORY[0x26D699090](3026478, 0xE300000000000000);
  sub_26BE00608(a1, a2);
  sub_26BE83448(16, a1, a2, &v15);
  v9 = v15;
  v10 = v16;
  sub_26BF87240(v15, v16);
  v11 = sub_26C00A3EC();
  v13 = v12;
  sub_26BE00258(v9, v10);

  MEMORY[0x26D699090](v11, v13);

  return v17;
}

uint64_t sub_26BE83448@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_26BE855EC(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_26BE85588(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = sub_26C00909C();
    v14 = v13;
    result = sub_26BE00258(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26BE83594(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    v5 = sub_26C00AEFC();
    MEMORY[0x26D699090](v5);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    v6 = sub_26BE832D4(v3, a2);
    MEMORY[0x26D699090](v6);

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t MLS.Client.KeyPackage.description.getter()
{
  result = 0x616B63615079654BLL;
  sub_26BE83970();
  return result;
}

uint64_t MLS.Group.GroupInfo.description.getter()
{
  result = 0x666E4970756F7247;
  sub_26BE83970();
  return result;
}

uint64_t MLS.RatchetTree.description.getter()
{
  v1 = *v0;
  v2 = MLS.RatchetTree.rawRepresentation.getter();
  v4 = v3;
  sub_26C00AC1C();

  v14 = *(v1 + 16);
  v5 = sub_26C00AEFC();
  MEMORY[0x26D699090](v5);

  result = MEMORY[0x26D699090](8236, 0xE200000000000000);
  if (v4 >> 60 == 15)
  {
    v7 = sub_26C00AEFC();
    MEMORY[0x26D699090](v7);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    v8 = 0xE500000000000000;
    v9 = 0x3E6C696E3CLL;
LABEL_14:
    MEMORY[0x26D699090](v9, v8);

    sub_26BE136AC(v2, v4);
    return 0xD000000000000019;
  }

  v10 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_26BE136AC(v2, v4);
LABEL_13:
      v11 = sub_26C00AEFC();
      MEMORY[0x26D699090](v11);

      MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
      sub_26BE00608(v2, v4);
      v12 = sub_26BE832D4(v2, v4);
      v8 = v13;
      sub_26BE136AC(v2, v4);
      v9 = v12;
      goto LABEL_14;
    }

    if (!__OFSUB__(*(v2 + 24), *(v2 + 16)))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v10)
  {
    goto LABEL_12;
  }

  if (!__OFSUB__(HIDWORD(v2), v2))
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t MLS.Group.Message.description.getter()
{
  result = 0x286567617373654DLL;
  sub_26BE83970();
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26BE83970()
{
  v1 = sub_26BE83594(*v0, *(v0 + 8));
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](41, 0xE100000000000000);
}

uint64_t sub_26BE839E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BE83594(*v3, *(v3 + 8));
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return a3;
}

uint64_t MLS.GroupContext.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 8);
  v45 = *(v0 + 7);
  v47 = *(v0 + 6);
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000016, 0x800000026C02B8B0);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x726568706963202CLL, 0xEF203A6574697573);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x4970756F7267202CLL, 0xEB00000000203A44);
  v8 = sub_26BE83594(v2, v3);
  MEMORY[0x26D699090](v8);

  MEMORY[0x26D699090](0x3A68636F7065202CLL, 0xE900000000000020);
  v55 = v4;
  v9 = sub_26C00AEFC();
  MEMORY[0x26D699090](v9);

  MEMORY[0x26D699090](0x614865657274202CLL, 0xEC000000203A6873);
  v10 = sub_26BE83594(v5, v6);
  MEMORY[0x26D699090](v10);

  MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B8D0);
  v11 = sub_26BE83594(v47, v45);
  MEMORY[0x26D699090](v11);

  MEMORY[0x26D699090](0x736E65747865202CLL, 0xEE00203A736E6F69);
  v12 = *(v7 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_15:
    v41 = MEMORY[0x26D6991B0](v13, MEMORY[0x277D837D0]);
    v43 = v42;

    MEMORY[0x26D699090](v41, v43);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    return v58;
  }

  v57 = MEMORY[0x277D84F90];
  sub_26BECB834(0, v12, 0);
  v13 = v57;
  v14 = (v7 + 48);
  while (1)
  {
    v15 = *(v14 - 8);
    v16 = *(v14 - 1);
    v17 = *v14;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_26BE00608(v16, v17);
    sub_26C00AC1C();

    v55 = 0xD000000000000010;
    v56 = 0x800000026C02B8F0;
    LOWORD(v53) = v15;
    v18 = MLS.Extension.ExtensionType.description.getter();
    MEMORY[0x26D699090](v18);

    result = MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
    v53 = 0;
    v54 = 0xE000000000000000;
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      break;
    }

    if (v20)
    {
      LODWORD(v21) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_16;
      }

      v21 = v21;
    }

    else
    {
      v21 = BYTE6(v17);
    }

LABEL_12:
    v44 = v14;
    v48 = v12;
    v51 = v21;
    v25 = sub_26C00AEFC();
    MEMORY[0x26D699090](v25);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    sub_26BE00608(v16, v17);
    sub_26BE3C290(16, v16, v17, &v49);
    v46 = v13;
    v26 = v49;
    v27 = v50;
    v51 = sub_26BF87240(v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v28 = sub_26C00A3EC();
    v30 = v29;
    sub_26BE00258(v26, v27);

    v51 = v28;
    v52 = v30;
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    sub_26BE00608(v16, v17);
    sub_26BE83448(16, v16, v17, &v49);
    v31 = v49;
    v32 = v50;
    sub_26BF87240(v49, v50);
    v33 = sub_26C00A3EC();
    v35 = v34;
    sub_26BE00258(v31, v32);
    v13 = v46;

    MEMORY[0x26D699090](v33, v35);

    MEMORY[0x26D699090](v51, v52);

    MEMORY[0x26D699090](v53, v54);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE00258(v16, v17);
    v36 = v55;
    v37 = v56;
    v57 = v46;
    v39 = *(v46 + 16);
    v38 = *(v46 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_26BECB834((v38 > 1), v39 + 1, 1);
      v13 = v57;
    }

    v14 = v44 + 3;
    *(v13 + 16) = v39 + 1;
    v40 = v13 + 16 * v39;
    *(v40 + 32) = v36;
    *(v40 + 40) = v37;
    v12 = v48 - 1;
    if (v48 == 1)
    {
      goto LABEL_15;
    }
  }

  v21 = 0;
  if (v20 != 2)
  {
    goto LABEL_12;
  }

  v23 = *(v16 + 16);
  v22 = *(v16 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (!v24)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t MLS.Extension.Extension.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_26C00AC1C();

  v4 = MLS.Extension.ExtensionType.description.getter();
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
  v5 = sub_26BE83594(v2, v3);
  MEMORY[0x26D699090](v5);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t MLS.GroupInfo.description.getter()
{
  v1 = v0;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000018, 0x800000026C02B910);
  v2 = MLS.GroupContext.description.getter();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](0x736E65747865202CLL, 0xEE00203A736E6F69);
  v3 = *(v0 + 72);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_16:
    v33 = MEMORY[0x26D6991B0](v5, MEMORY[0x277D837D0]);
    v35 = v34;

    MEMORY[0x26D699090](v33, v35);

    MEMORY[0x26D699090](0x72656E676973202CLL, 0xEA0000000000203ALL);
    v36 = type metadata accessor for MLS.GroupInfo();
    v37 = *(v1 + *(v36 + 28));
    sub_26BE83210();
    MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
    v38 = sub_26BE83594(*(v1 + *(v36 + 32)), *(v1 + *(v36 + 32) + 8));
    MEMORY[0x26D699090](v38);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    return v52;
  }

  v39 = v0;
  v51 = MEMORY[0x277D84F90];
  sub_26BECB834(0, v4, 0);
  v5 = v51;
  v6 = (v3 + 48);
  while (1)
  {
    v7 = *(v6 - 8);
    v8 = *(v6 - 1);
    v9 = *v6;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_26BE00608(v8, v9);
    sub_26C00AC1C();

    v49 = 0xD000000000000010;
    v50 = 0x800000026C02B8F0;
    LOWORD(v47) = v7;
    v10 = MLS.Extension.ExtensionType.description.getter();
    MEMORY[0x26D699090](v10);

    result = MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
    v47 = 0;
    v48 = 0xE000000000000000;
    v12 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      break;
    }

    if (v12)
    {
      LODWORD(v13) = HIDWORD(v8) - v8;
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_17;
      }

      v13 = v13;
    }

    else
    {
      v13 = BYTE6(v9);
    }

LABEL_12:
    v40 = v6;
    v42 = v4;
    v45 = v13;
    v17 = sub_26C00AEFC();
    MEMORY[0x26D699090](v17);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    sub_26BE00608(v8, v9);
    sub_26BE3C290(16, v8, v9, &v43);
    v19 = v43;
    v18 = v44;
    v45 = sub_26BF87240(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v41 = v5;
    v20 = sub_26C00A3EC();
    v22 = v21;
    sub_26BE00258(v19, v18);

    v45 = v20;
    v46 = v22;
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    sub_26BE00608(v8, v9);
    sub_26BE83448(16, v8, v9, &v43);
    v23 = v43;
    v24 = v44;
    sub_26BF87240(v43, v44);
    v25 = sub_26C00A3EC();
    v27 = v26;
    sub_26BE00258(v23, v24);

    MEMORY[0x26D699090](v25, v27);
    v5 = v41;

    MEMORY[0x26D699090](v45, v46);

    MEMORY[0x26D699090](v47, v48);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE00258(v8, v9);
    v28 = v49;
    v29 = v50;
    v51 = v41;
    v31 = *(v41 + 16);
    v30 = *(v41 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_26BECB834((v30 > 1), v31 + 1, 1);
      v5 = v51;
    }

    v6 = v40 + 3;
    *(v5 + 16) = v31 + 1;
    v32 = v5 + 16 * v31;
    *(v32 + 32) = v28;
    *(v32 + 40) = v29;
    v4 = v42 - 1;
    if (v42 == 1)
    {
      v1 = v39;
      goto LABEL_16;
    }
  }

  v13 = 0;
  if (v12 != 2)
  {
    goto LABEL_12;
  }

  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (!v16)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t MLS.KeyPackage.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 52);
  v5 = *(v0 + 68);
  v67 = *(v0 + 60);
  v68 = v5;
  v6 = *(v0 + 20);
  v69 = *(v0 + 19);
  v7 = *(v0 + 20);
  v8 = *(v0 + 36);
  v63 = *(v0 + 28);
  v64 = v8;
  v65 = *(v0 + 44);
  v66 = v4;
  v61 = *(v0 + 12);
  v62 = v7;
  v9 = *(v0 + 21);
  v10 = *(v0 + 22);
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000014, 0x800000026C02B930);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x726568706963202CLL, 0xEF203A6574697573);
  LOWORD(v56) = v1;
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x654B74696E69202CLL, 0xEB00000000203A79);
  v11 = sub_26BE832D4(v2, v3);
  MEMORY[0x26D699090](v11);

  MEMORY[0x26D699090](0x6F4E6661656C202CLL, 0xEC000000203A6564);
  v12 = MLS.LeafNode.description.getter();
  MEMORY[0x26D699090](v12);

  MEMORY[0x26D699090](0x736E65747865202CLL, 0xEE00203A736E6F69);
  v13 = *(v6 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
LABEL_16:
    v42 = MEMORY[0x26D6991B0](v14, MEMORY[0x277D837D0]);
    v44 = v43;

    MEMORY[0x26D699090](v42, v44);

    MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
    v45 = sub_26BE83594(v9, v10);
    MEMORY[0x26D699090](v45);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    return v59;
  }

  v46 = v10;
  v47 = v9;
  v58 = MEMORY[0x277D84F90];
  sub_26BECB834(0, v13, 0);
  v14 = v58;
  v15 = (v6 + 48);
  while (1)
  {
    v16 = *(v15 - 8);
    v17 = *(v15 - 1);
    v18 = *v15;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_26BE00608(v17, v18);
    sub_26C00AC1C();

    v56 = 0xD000000000000010;
    v57 = 0x800000026C02B8F0;
    LOWORD(v54) = v16;
    v19 = MLS.Extension.ExtensionType.description.getter();
    MEMORY[0x26D699090](v19);

    result = MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
    v54 = 0;
    v55 = 0xE000000000000000;
    v21 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      break;
    }

    if (v21)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_17;
      }

      v22 = v22;
    }

    else
    {
      v22 = BYTE6(v18);
    }

LABEL_12:
    v48 = v15;
    v49 = v13;
    v52 = v22;
    v26 = sub_26C00AEFC();
    MEMORY[0x26D699090](v26);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    sub_26BE00608(v17, v18);
    sub_26BE3C290(16, v17, v18, &v50);
    v27 = v50;
    v28 = v51;
    v52 = sub_26BF87240(v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v29 = sub_26C00A3EC();
    v31 = v30;
    sub_26BE00258(v27, v28);

    v52 = v29;
    v53 = v31;
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    sub_26BE00608(v17, v18);
    sub_26BE83448(16, v17, v18, &v50);
    v32 = v50;
    v33 = v51;
    sub_26BF87240(v50, v51);
    v34 = sub_26C00A3EC();
    v36 = v35;
    sub_26BE00258(v32, v33);

    MEMORY[0x26D699090](v34, v36);

    MEMORY[0x26D699090](v52, v53);

    MEMORY[0x26D699090](v54, v55);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE00258(v17, v18);
    v37 = v56;
    v38 = v57;
    v58 = v14;
    v40 = *(v14 + 16);
    v39 = *(v14 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_26BECB834((v39 > 1), v40 + 1, 1);
      v14 = v58;
    }

    v15 = v48 + 3;
    *(v14 + 16) = v40 + 1;
    v41 = v14 + 16 * v40;
    *(v41 + 32) = v37;
    *(v41 + 40) = v38;
    v13 = v49 - 1;
    if (v49 == 1)
    {
      v10 = v46;
      v9 = v47;
      goto LABEL_16;
    }
  }

  v22 = 0;
  if (v21 != 2)
  {
    goto LABEL_12;
  }

  v24 = *(v17 + 16);
  v23 = *(v17 + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (!v25)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t MLS.LeafNode.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 80);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_26C00AC1C();
  v57 = v54;
  MEMORY[0x26D699090](0xD000000000000015, 0x800000026C02B950);
  *&v54 = v1;
  *(&v54 + 1) = v2;
  v8 = MLS.Credential.description.getter();
  v43 = *(v0 + 64);
  v45 = *(v0 + 48);
  MEMORY[0x26D699090](v8);

  MEMORY[0x26D699090](0xD000000000000010, 0x800000026C02B970);
  v54 = v45;
  v55 = v43;
  v56 = v3;
  sub_26C00AD4C();
  MEMORY[0x26D699090](0xD000000000000012, 0x800000026C02B990);
  LOBYTE(v54) = 0x20301u >> (8 * v4);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x736E65747865202CLL, 0xEE00203A736E6F69);
  v9 = *(v5 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_16:
    v37 = MEMORY[0x26D6991B0](v10, MEMORY[0x277D837D0]);
    v39 = v38;

    MEMORY[0x26D699090](v37, v39);

    MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
    v40 = sub_26BE83594(v6, v7);
    MEMORY[0x26D699090](v40);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    return v57;
  }

  v41 = v7;
  v42 = v6;
  v53 = MEMORY[0x277D84F90];
  sub_26BECB834(0, v9, 0);
  v10 = v53;
  v11 = (v5 + 48);
  while (1)
  {
    v12 = *(v11 - 8);
    v13 = *(v11 - 1);
    v14 = *v11;
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    sub_26BE00608(v13, v14);
    sub_26C00AC1C();

    *&v54 = 0xD000000000000010;
    *(&v54 + 1) = 0x800000026C02B8F0;
    LOWORD(v51) = v12;
    v15 = MLS.Extension.ExtensionType.description.getter();
    MEMORY[0x26D699090](v15);

    result = MEMORY[0x26D699090](0x203A61746164202CLL, 0xE800000000000000);
    v51 = 0;
    v52 = 0xE000000000000000;
    v17 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      LODWORD(v18) = HIDWORD(v13) - v13;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_17;
      }

      v18 = v18;
    }

    else
    {
      v18 = BYTE6(v14);
    }

LABEL_12:
    v46 = v9;
    v49 = v18;
    v22 = sub_26C00AEFC();
    MEMORY[0x26D699090](v22);

    MEMORY[0x26D699090](0x203A736574796220, 0xE800000000000000);
    sub_26BE00608(v13, v14);
    sub_26BE3C290(16, v13, v14, &v47);
    v23 = v47;
    v24 = v48;
    v44 = v10;
    v49 = sub_26BF87240(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v25 = sub_26C00A3EC();
    v27 = v26;
    sub_26BE00258(v23, v24);

    v49 = v25;
    v50 = v27;
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    sub_26BE00608(v13, v14);
    sub_26BE83448(16, v13, v14, &v47);
    v28 = v47;
    v29 = v48;
    sub_26BF87240(v47, v48);
    v30 = sub_26C00A3EC();
    v32 = v31;
    sub_26BE00258(v28, v29);

    v33 = v30;
    v10 = v44;
    MEMORY[0x26D699090](v33, v32);

    MEMORY[0x26D699090](v49, v50);

    MEMORY[0x26D699090](v51, v52);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE00258(v13, v14);
    v34 = v54;
    v53 = v44;
    v36 = *(v44 + 16);
    v35 = *(v44 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_26BECB834((v35 > 1), v36 + 1, 1);
      v10 = v53;
    }

    v11 += 3;
    *(v10 + 16) = v36 + 1;
    *(v10 + 16 * v36 + 32) = v34;
    v9 = v46 - 1;
    if (v46 == 1)
    {
      v7 = v41;
      v6 = v42;
      goto LABEL_16;
    }
  }

  v18 = 0;
  if (v17 != 2)
  {
    goto LABEL_12;
  }

  v20 = *(v13 + 16);
  v19 = *(v13 + 24);
  v21 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (!v21)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t MLS.Credential.description.getter()
{
  v1 = *(v0 + 8);
  sub_26C00AC1C();

  v2 = MLS.CredentialType.description.getter();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000015;
}

unint64_t MLS.LeafIndex.description.getter()
{
  v1 = *v0;
  sub_26C00AC1C();

  v2 = sub_26C00AEFC();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t MLS.GroupState.description.getter()
{
  v1 = v0;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000014, 0x800000026C02B9F0);
  v2 = sub_26BE832D4(v1[1], v1[2]);
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](0x203A617265202CLL, 0xE700000000000000);
  v3 = type metadata accessor for MLS.GroupState();
  v4 = sub_26BE81FE0(*(v0 + v3[10]));
  if ((v4 & 0x100000000) != 0)
  {
    LODWORD(v4) = sub_26BE4126C();
  }

  LODWORD(v20) = v4;
  v5 = sub_26C00AEFC();
  MEMORY[0x26D699090](v5);

  MEMORY[0x26D699090](0x3A68636F7065202CLL, 0xE900000000000020);
  v20 = v0[3];
  v6 = sub_26C00AEFC();
  MEMORY[0x26D699090](v6);

  MEMORY[0x26D699090](0x4168636F7065202CLL, 0xED0000203A687475);
  v7 = v0 + v3[11];
  v8 = &v7[*(type metadata accessor for MLS.KeySchedule() + 40)];
  sub_26C009C3C();
  v9 = sub_26BE832D4(v20, v21);
  v11 = v10;
  sub_26BE00258(v20, v21);
  MEMORY[0x26D699090](v9, v11);

  MEMORY[0x26D699090](0x61654C6D756E202CLL, 0xED0000203A736576);
  v20 = v1[7];
  MLS.RatchetTree.leafCount.getter(&v19);
  v12 = sub_26C00AEFC();
  MEMORY[0x26D699090](v12);

  MEMORY[0x26D699090](0xD000000000000019, 0x800000026C02BA10);
  v20 = *(*(v1 + v3[15]) + 16);
  v13 = sub_26C00AEFC();
  MEMORY[0x26D699090](v13);

  MEMORY[0x26D699090](0x534C4D646E65202CLL, 0xEA0000000000203ALL);
  v14 = sub_26BE5CC90();
  v15 = !v14;
  if (v14)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x26D699090](v16, v17);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return v22;
}

uint64_t sub_26BE85588(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_26BE855EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BE856B4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MLS.Validity();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MLS.SubjectPublicKeyInfo();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_26BE857EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLS.Validity();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MLS.SubjectPublicKeyInfo();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s21RCSTBSParticipantInfoVMa()
{
  result = qword_28045EA58;
  if (!qword_28045EA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BE8595C()
{
  result = type metadata accessor for MLS.Validity();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLS.SubjectPublicKeyInfo();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BE85A00()
{
  v1 = v0;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000021, 0x800000026C02BA30);
  v10 = *v0;
  sub_26BE85E88();
  v2 = sub_26C00AEFC();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](0x726F646E6576202CLL, 0xEC000000203A6449);
  v11 = v0[1];
  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](0x6964696C6176202CLL, 0xEC000000203A7974);
  v4 = _s21RCSTBSParticipantInfoVMa();
  v5 = v4[6];
  type metadata accessor for MLS.Validity();
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x203A696B7073202CLL, 0xE800000000000000);
  v6 = v1 + v4[7];
  v7 = MLS.SubjectPublicKeyInfo.description.getter();
  MEMORY[0x26D699090](v7);

  MEMORY[0x26D699090](0x203A6E6173202CLL, 0xE700000000000000);
  v12 = *(v1 + v4[8]);
  sub_26BE85EDC();
  v8 = sub_26C00AEFC();
  MEMORY[0x26D699090](v8);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_26BE85BFC(uint64_t a1, uint64_t *a2)
{
  v8 = *a2;
  sub_26BE85F4C();
  result = sub_26C00976C();
  if (!v2)
  {
    v9 = a2[1];
    sub_26C00976C();
    v5 = _s21RCSTBSParticipantInfoVMa();
    v6 = v5[6];
    type metadata accessor for MLS.Validity();
    sub_26BE85FA0(&qword_28045EA80, type metadata accessor for MLS.Validity);
    sub_26C00976C();
    v7 = v5[7];
    type metadata accessor for MLS.SubjectPublicKeyInfo();
    sub_26BE85FA0(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26C00976C();
    v10 = *(a2 + v5[8]);
    sub_26BE85FE8();
    return sub_26C00976C();
  }

  return result;
}

uint64_t sub_26BE85D80()
{
  v1 = sub_26C00934C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  v8 = v0;
  sub_26C00973C();
  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_26BE85E88()
{
  result = qword_28045EA68;
  if (!qword_28045EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA68);
  }

  return result;
}

unint64_t sub_26BE85EDC()
{
  result = qword_28045EA70;
  if (!qword_28045EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA70);
  }

  return result;
}

unint64_t sub_26BE85F4C()
{
  result = qword_28045EA78;
  if (!qword_28045EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA78);
  }

  return result;
}

uint64_t sub_26BE85FA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BE85FE8()
{
  result = qword_28045EA90;
  if (!qword_28045EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA90);
  }

  return result;
}

uint64_t MLS.CredentialType.description.getter()
{
  v1 = *v0;
  if (v1 == 1)
  {
    return 0x63697361622ELL;
  }

  if (v1 == 2)
  {
    return 0x393035782ELL;
  }

  sub_26C00AC1C();

  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000019;
}

unint64_t sub_26BE8616C()
{
  result = qword_28045EA98;
  if (!qword_28045EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EA98);
  }

  return result;
}

uint64_t MLS.LeafIndex.hashValue.getter()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

unint64_t sub_26BE862AC()
{
  result = qword_28045EAA0;
  if (!qword_28045EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAA0);
  }

  return result;
}

uint64_t MLS.MLSError.errorCode.getter()
{
  sub_26BE2DC18(v0, &v4);
  result = 1;
  switch(v18)
  {
    case 1:
      result = 2;
      break;
    case 2:
      sub_26BE2DC9C(&v4);
      result = 3;
      break;
    case 3:
      result = 6;
      break;
    case 4:
      result = 7;
      break;
    case 5:
      result = 8;
      break;
    case 6:
      result = 9;
      break;
    case 7:
      result = 10;
      break;
    case 8:
      result = 11;
      break;
    case 9:
      result = 12;
      break;
    case 10:
      result = 13;
      break;
    case 11:
      result = 16;
      break;
    case 12:
      result = 17;
      break;
    case 13:
      result = 18;
      break;
    case 14:
      sub_26BE2DC9C(&v4);
      result = 19;
      break;
    case 15:
      sub_26BE2DC9C(&v4);
      result = 20;
      break;
    case 16:
      sub_26BE2DC9C(&v4);
      result = 23;
      break;
    case 17:
      result = 24;
      break;
    case 18:
      result = 33;
      break;
    case 19:
      result = 51;
      break;
    case 20:
      result = 56;
      break;
    case 21:
      sub_26BE2E258(&v11, &qword_28045EAA8, &unk_26C014260);
      sub_26BE2E258(&v4, &qword_28045EAA8, &unk_26C014260);
      result = 57;
      break;
    case 22:
      sub_26BE2E258(&v4, &qword_28045EAA8, &unk_26C014260);
      result = 58;
      break;
    case 23:
      if (v17 | v4 | v16 | v15 | v14 | v13 | v12 | v11 | v10 | v9 | v8 | v7 | v6 | v5)
      {
        v2 = v16 | v17 | v15 | v14 | v13 | v12 | v11 | v10 | v9 | v8 | v7 | v6 | v5;
        if (v4 != 1 || v2)
        {
          if (v4 != 2 || v2)
          {
            if (v4 != 3 || v2)
            {
              if (v4 != 4 || v2)
              {
                if (v4 != 5 || v2)
                {
                  if (v4 != 6 || v2)
                  {
                    if (v4 != 7 || v2)
                    {
                      if (v4 != 8 || v2)
                      {
                        if (v4 != 9 || v2)
                        {
                          if (v4 != 10 || v2)
                          {
                            if (v4 != 11 || v2)
                            {
                              if (v4 != 12 || v2)
                              {
                                if (v4 != 13 || v2)
                                {
                                  if (v4 != 14 || v2)
                                  {
                                    if (v4 != 15 || v2)
                                    {
                                      if (v4 != 16 || v2)
                                      {
                                        if (v4 != 17 || v2)
                                        {
                                          if (v4 != 18 || v2)
                                          {
                                            if (v4 != 19 || v2)
                                            {
                                              if (v4 != 20 || v2)
                                              {
                                                if (v4 != 21 || v2)
                                                {
                                                  if (v4 != 22 || v2)
                                                  {
                                                    if (v4 != 23 || v2)
                                                    {
                                                      if (v4 != 24 || v2)
                                                      {
                                                        if (v4 != 25 || v2)
                                                        {
                                                          if (v4 != 26 || v2)
                                                          {
                                                            if (v4 != 27 || v2)
                                                            {
                                                              if (v4 != 28 || v2)
                                                              {
                                                                if (v4 != 29 || v2)
                                                                {
                                                                  if (v4 != 30 || v2)
                                                                  {
                                                                    if (v4 != 31 || v2)
                                                                    {
                                                                      if (v4 != 32 || v2)
                                                                      {
                                                                        if (v4 != 33 || v2)
                                                                        {
                                                                          if (v4 != 34 || v2)
                                                                          {
                                                                            if (v4 != 35 || v2)
                                                                            {
                                                                              if (v4 != 36 || v2)
                                                                              {
                                                                                if (v4 != 37 || v2)
                                                                                {
                                                                                  if (v4 != 38 || v2)
                                                                                  {
                                                                                    if (v4 != 39 || v2)
                                                                                    {
                                                                                      if (v4 != 40 || v2)
                                                                                      {
                                                                                        if (v4 != 41 || v2)
                                                                                        {
                                                                                          if (v4 != 42 || v2)
                                                                                          {
                                                                                            if (v4 != 43 || v2)
                                                                                            {
                                                                                              if (v4 != 44 || v2)
                                                                                              {
                                                                                                if (v4 != 45 || v2)
                                                                                                {
                                                                                                  if (v2)
                                                                                                  {
                                                                                                    v3 = 0;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v3 = v4 == 46;
                                                                                                  }

                                                                                                  if (v3)
                                                                                                  {
                                                                                                    result = 70;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    result = 71;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  result = 69;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                result = 68;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              result = 67;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            result = 66;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          result = 65;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        result = 64;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      result = 63;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    result = 62;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  result = 61;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                result = 60;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              result = 59;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            result = 55;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          result = 54;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        result = 53;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      result = 52;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    result = 50;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  result = 49;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                result = 48;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              result = 47;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            result = 46;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          result = 45;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        result = 44;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      result = 43;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    result = 42;
                                                  }
                                                }

                                                else
                                                {
                                                  result = 41;
                                                }
                                              }

                                              else
                                              {
                                                result = 40;
                                              }
                                            }

                                            else
                                            {
                                              result = 39;
                                            }
                                          }

                                          else
                                          {
                                            result = 38;
                                          }
                                        }

                                        else
                                        {
                                          result = 37;
                                        }
                                      }

                                      else
                                      {
                                        result = 36;
                                      }
                                    }

                                    else
                                    {
                                      result = 35;
                                    }
                                  }

                                  else
                                  {
                                    result = 34;
                                  }
                                }

                                else
                                {
                                  result = 32;
                                }
                              }

                              else
                              {
                                result = 31;
                              }
                            }

                            else
                            {
                              result = 30;
                            }
                          }

                          else
                          {
                            result = 29;
                          }
                        }

                        else
                        {
                          result = 28;
                        }
                      }

                      else
                      {
                        result = 27;
                      }
                    }

                    else
                    {
                      result = 26;
                    }
                  }

                  else
                  {
                    result = 25;
                  }
                }

                else
                {
                  result = 22;
                }
              }

              else
              {
                result = 21;
              }
            }

            else
            {
              result = 15;
            }
          }

          else
          {
            result = 14;
          }
        }

        else
        {
          result = 5;
        }
      }

      else
      {
        result = 4;
      }

      break;
    default:
      return result;
  }

  return result;
}

unint64_t MLS.MLSError.errorUserInfo.getter()
{
  sub_26BE2DC18(v0, v29);
  if (v30 > 4u)
  {
    if (v30 <= 6u)
    {
      if (v30 == 5)
      {
        v1 = v29[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26C011280;
        v15 = *MEMORY[0x277CCA7E8];
        *(inited + 32) = sub_26C00A48C();
        v4 = inited + 32;
        *(inited + 40) = v16;
        v6 = &type metadata for MLS.InvalidLeafNodeError;
        goto LABEL_23;
      }

      if (v30 == 6)
      {
        v1 = v29[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26C011280;
        v11 = *MEMORY[0x277CCA7E8];
        *(inited + 32) = sub_26C00A48C();
        v4 = inited + 32;
        *(inited + 40) = v12;
        v6 = &type metadata for MLS.InvalidMessageError;
        goto LABEL_23;
      }
    }

    else
    {
      switch(v30)
      {
        case 7u:
          v1 = v29[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C011280;
          v21 = *MEMORY[0x277CCA7E8];
          *(inited + 32) = sub_26C00A48C();
          v4 = inited + 32;
          *(inited + 40) = v22;
          v6 = &type metadata for MLS.InvalidCommitError;
          goto LABEL_23;
        case 8u:
          v1 = v29[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C011280;
          v25 = *MEMORY[0x277CCA7E8];
          *(inited + 32) = sub_26C00A48C();
          v4 = inited + 32;
          *(inited + 40) = v26;
          v6 = &type metadata for MLS.InvalidCapabilitiesError;
          goto LABEL_23;
        case 9u:
          v1 = v29[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C011280;
          v7 = *MEMORY[0x277CCA7E8];
          *(inited + 32) = sub_26C00A48C();
          v4 = inited + 32;
          *(inited + 40) = v8;
          v6 = &type metadata for MLS.RCSError;
          goto LABEL_23;
      }
    }

LABEL_26:
    v27 = sub_26C0055D4(MEMORY[0x277D84F90]);
    sub_26BE2DC9C(v29);
    return v27;
  }

  if (v30 <= 1u)
  {
    v1 = v29[0];
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C011280;
      v9 = *MEMORY[0x277CCA7E8];
      *(inited + 32) = sub_26C00A48C();
      v4 = inited + 32;
      *(inited + 40) = v10;
      v6 = &type metadata for MLS.MLSSerializationError;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C011280;
      v13 = *MEMORY[0x277CCA7E8];
      *(inited + 32) = sub_26C00A48C();
      v4 = inited + 32;
      *(inited + 40) = v14;
      v6 = &type metadata for MLS.MLSInternalError;
    }

    goto LABEL_23;
  }

  if (v30 != 2)
  {
    if (v30 == 3)
    {
      v1 = v29[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C011280;
      v23 = *MEMORY[0x277CCA7E8];
      *(inited + 32) = sub_26C00A48C();
      v4 = inited + 32;
      *(inited + 40) = v24;
      v6 = &type metadata for MLS.InvalidProposalListError;
      goto LABEL_23;
    }

    if (v30 == 4)
    {
      v1 = v29[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C011280;
      v3 = *MEMORY[0x277CCA7E8];
      *(inited + 32) = sub_26C00A48C();
      v4 = inited + 32;
      *(inited + 40) = v5;
      v6 = &type metadata for MLS.InvalidKeyPackageError;
LABEL_23:
      *(inited + 72) = v6;
      *(inited + 48) = v1;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v17 = v29[0];
  v18 = v29[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C011280;
  v19 = *MEMORY[0x277CCA7E8];
  *(inited + 32) = sub_26C00A48C();
  v4 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v20;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
LABEL_24:
  v27 = sub_26C0055D4(inited);
  swift_setDeallocating();
  sub_26BE2E258(v4, &qword_28045E940, &unk_26C014270);
  return v27;
}

uint64_t sub_26BE86DA8(uint64_t a1)
{
  v2 = sub_26BE8BEDC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE86DE4(uint64_t a1)
{
  v2 = sub_26BE8BEDC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26BE86E7C(uint64_t a1)
{
  v2 = sub_26BE8BE34();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t MLS.MLSInternalError.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 34;
  switch(result)
  {
    case 1:
      goto LABEL_50;
    case 2:
      v2 = 1;
      goto LABEL_50;
    case 3:
      v2 = 2;
      goto LABEL_50;
    case 4:
      v2 = 3;
      goto LABEL_50;
    case 5:
      v2 = 4;
      goto LABEL_50;
    case 6:
      v2 = 5;
      goto LABEL_50;
    case 7:
      v2 = 6;
      goto LABEL_50;
    case 8:
      v2 = 7;
      goto LABEL_50;
    case 9:
      v2 = 8;
      goto LABEL_50;
    case 10:
      v2 = 9;
      goto LABEL_50;
    case 11:
      v2 = 10;
      goto LABEL_50;
    case 12:
      v2 = 11;
      goto LABEL_50;
    case 13:
      v2 = 12;
      goto LABEL_50;
    case 14:
      v2 = 13;
      goto LABEL_50;
    case 15:
      v2 = 14;
      goto LABEL_50;
    case 16:
      v2 = 15;
      goto LABEL_50;
    case 17:
      v2 = 16;
      goto LABEL_50;
    case 18:
      v2 = 17;
      goto LABEL_50;
    case 19:
      v2 = 18;
      goto LABEL_50;
    case 20:
      v2 = 19;
      goto LABEL_50;
    case 21:
      v2 = 20;
      goto LABEL_50;
    case 22:
      v2 = 21;
      goto LABEL_50;
    case 23:
      v2 = 22;
      goto LABEL_50;
    case 24:
      v2 = 23;
      goto LABEL_50;
    case 25:
      v2 = 24;
      goto LABEL_50;
    case 26:
      v2 = 25;
      goto LABEL_50;
    case 27:
      v2 = 26;
      goto LABEL_50;
    case 28:
      v2 = 27;
      goto LABEL_50;
    case 29:
      v2 = 28;
      goto LABEL_50;
    case 30:
      v2 = 29;
      goto LABEL_50;
    case 31:
      v2 = 30;
      goto LABEL_50;
    case 32:
      v2 = 31;
      goto LABEL_50;
    case 33:
      v2 = 32;
      goto LABEL_50;
    case 34:
      v2 = 33;
LABEL_50:
      v3 = v2;
      goto LABEL_51;
    case 35:
LABEL_51:
      *a2 = v3;
      break;
    case 36:
      *a2 = 35;
      break;
    case 37:
      *a2 = 36;
      break;
    case 38:
      *a2 = 37;
      break;
    case 39:
      *a2 = 38;
      break;
    case 40:
      *a2 = 39;
      break;
    case 41:
      *a2 = 40;
      break;
    case 42:
      *a2 = 41;
      break;
    case 43:
      *a2 = 42;
      break;
    case 44:
      *a2 = 43;
      break;
    case 45:
      *a2 = 44;
      break;
    case 46:
      *a2 = 45;
      break;
    case 47:
      *a2 = 46;
      break;
    case 48:
      *a2 = 47;
      break;
    case 49:
      *a2 = 48;
      break;
    case 50:
      *a2 = 49;
      break;
    case 51:
      *a2 = 50;
      break;
    case 52:
      *a2 = 51;
      break;
    default:
      *a2 = 52;
      break;
  }

  return result;
}

uint64_t sub_26BE87224(uint64_t a1)
{
  v2 = sub_26BE8BD8C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t MLS.InvalidProposalListError.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 3;
  switch(result)
  {
    case 1:
      goto LABEL_11;
    case 2:
      v2 = 1;
      goto LABEL_11;
    case 3:
      v2 = 2;
LABEL_11:
      v3 = v2;
      goto LABEL_12;
    case 4:
LABEL_12:
      *a2 = v3;
      break;
    case 5:
      *a2 = 4;
      break;
    case 6:
      *a2 = 5;
      break;
    case 7:
      *a2 = 6;
      break;
    case 8:
      *a2 = 7;
      break;
    case 9:
      *a2 = 8;
      break;
    case 10:
      *a2 = 9;
      break;
    case 11:
      *a2 = 10;
      break;
    case 12:
      *a2 = 11;
      break;
    case 13:
      *a2 = 12;
      break;
    case 14:
      *a2 = 13;
      break;
    case 15:
      *a2 = 14;
      break;
    case 16:
      *a2 = 15;
      break;
    case 17:
      *a2 = 16;
      break;
    case 18:
      *a2 = 17;
      break;
    case 19:
      *a2 = 18;
      break;
    case 20:
      *a2 = 19;
      break;
    case 21:
      *a2 = 20;
      break;
    default:
      *a2 = 21;
      break;
  }

  return result;
}

uint64_t sub_26BE87454(uint64_t a1)
{
  v2 = sub_26BE8BCE4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE874F4(uint64_t a1)
{
  v2 = sub_26BE8BC3C();

  return MEMORY[0x28211F4B8](a1, v2);
}

unint64_t MLS.InvalidLeafNodeError.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE875C4(uint64_t a1)
{
  v2 = sub_26BE8BB94();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t MLS.InvalidMessageError.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 1;
  if ((result - 1) >= 0xD)
  {
    v2 = 13;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE87684(uint64_t a1)
{
  v2 = sub_26BE8BAEC();

  return MEMORY[0x28211F4B8](a1, v2);
}

unint64_t MLS.InvalidCommitError.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x302010004uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE87754(uint64_t a1)
{
  v2 = sub_26BE8BA44();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE877F4(uint64_t a1)
{
  v2 = sub_26BE8B99C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t MLS.RCSError.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 1;
  if ((result - 1) >= 0xE)
  {
    v2 = 14;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE878B4(uint64_t a1)
{
  v2 = sub_26BE8B8A0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE8791C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a3();
  v7 = a4();
  v8 = sub_26BE8B948();

  return MEMORY[0x28211F498](a1, v6, v7, v8);
}

unint64_t MLS.IdentityError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_26C00921C();
  v60[0] = *(v2 - 8);
  v3 = *(v60[0] + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v60 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v60 - v17;
  v19 = type metadata accessor for MLS.IdentityError();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BE8A684(v1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v36 = *v22;
        v37 = v22[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
        inited = swift_initStackObject();
        *(inited + 32) = 0xD000000000000010;
        v39 = MEMORY[0x277D83B88];
        *(inited + 16) = xmmword_26C0125B0;
        *(inited + 40) = 0x800000026C02BC70;
        *(inited + 48) = v36;
        *(inited + 72) = v39;
        *(inited + 80) = 0x726F646E65566970;
        *(inited + 120) = v39;
        *(inited + 88) = 0xEA00000000006449;
        *(inited + 96) = v37;
        v40 = sub_26C0055D4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
LABEL_25:
        swift_arrayDestroy();
        return v40;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v24 = *v22;
        v25 = v22[1];
        v27 = v22[2];
        v26 = v22[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
        v28 = swift_initStackObject();
        v29 = v28;
        *(v28 + 16) = xmmword_26C0125B0;
        *(v28 + 32) = 0x4B676E696E676973;
        v30 = MEMORY[0x277CC9318];
        *(v28 + 40) = 0xEA00000000007965;
        *(v28 + 48) = v24;
        *(v28 + 56) = v25;
        *(v28 + 72) = v30;
        *(v28 + 80) = 0x79654B74726563;
        *(v28 + 88) = 0xE700000000000000;
        if (v26 >> 60 == 15)
        {
          *(v28 + 120) = MEMORY[0x277D837D0];
          *(v28 + 96) = 7104878;
          *(v28 + 104) = 0xE300000000000000;
        }

        else
        {
          v62 = v30;
          *&v61 = v27;
          *(&v61 + 1) = v26;
          sub_26BE5B0F0(&v61, (v28 + 96));
        }

        v40 = sub_26C0055D4(v29);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
        goto LABEL_25;
      }

      goto LABEL_20;
    }

LABEL_18:
    v43 = *v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_26C011280;
    *(v44 + 32) = 0x737574617453534FLL;
    v34 = v44 + 32;
    *(v44 + 40) = 0xE800000000000000;
    *(v44 + 72) = MEMORY[0x277D849A8];
    *(v44 + 48) = v43;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_26BE8A790(v22, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
      v41 = swift_initStackObject();
      *(v41 + 16) = xmmword_26C011280;
      *(v41 + 32) = 0x6D617473656D6974;
      *(v41 + 40) = 0xE900000000000070;
      sub_26BE2E1F0(v18, v16, &qword_28045E4A8, &unk_26C00ECB0);
      v42 = v60[0];
      if ((*(v60[0] + 48))(v16, 1, v2) == 1)
      {
        sub_26BE2E258(v16, &qword_28045E4A8, &unk_26C00ECB0);
        *(v41 + 72) = MEMORY[0x277D837D0];
        *(v41 + 48) = 7104878;
        *(v41 + 56) = 0xE300000000000000;
      }

      else
      {
        v62 = v2;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v61);
        (*(v42 + 32))(boxed_opaque_existential_1, v16, v2);
        sub_26BE5B0F0(&v61, (v41 + 48));
      }

      v40 = sub_26C0055D4(v41);
      swift_setDeallocating();
      sub_26BE2E258(v41 + 32, &qword_28045E940, &unk_26C014270);
      v56 = &qword_28045E4A8;
      v57 = &unk_26C00ECB0;
      v58 = v18;
      goto LABEL_29;
    }

    v31 = *v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_26C011280;
    v33 = *MEMORY[0x277CCA7E8];
    *(v32 + 32) = sub_26C00A48C();
    v34 = v32 + 32;
    *(v32 + 40) = v35;
    if (v31)
    {
      v62 = sub_26BE8A744();
      *&v61 = v31;
      sub_26BE5B0F0(&v61, (v32 + 48));
    }

    else
    {
      *(v32 + 72) = MEMORY[0x277D837D0];
      *(v32 + 48) = 7104878;
      *(v32 + 56) = 0xE300000000000000;
    }

    v44 = v32;
LABEL_28:
    v40 = sub_26C0055D4(v44);
    swift_setDeallocating();
    v56 = &qword_28045E940;
    v57 = &unk_26C014270;
    v58 = v34;
LABEL_29:
    sub_26BE2E258(v58, v56, v57);
    return v40;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
LABEL_20:
      v40 = sub_26C0055D4(MEMORY[0x277D84F90]);
      sub_26BE8A6E8(v22);
      return v40;
    }

    goto LABEL_18;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EAB0, &qword_26C014280);
  v46 = *(v45 + 48);
  v47 = *(v45 + 64);
  v48 = *(v60[0] + 32);
  v48(v11, v22, v2);
  v48(v9, (v22 + v46), v2);
  v48(v6, (v22 + v47), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_26C0125A0;
  *(v49 + 32) = 0x6D617473656D6974;
  *(v49 + 40) = 0xE900000000000070;
  *(v49 + 72) = v2;
  v50 = __swift_allocate_boxed_opaque_existential_1((v49 + 48));
  v51 = *(v60[0] + 16);
  v51(v50, v11, v2);
  *(v49 + 80) = 0x726F666542746F6ELL;
  *(v49 + 88) = 0xE900000000000065;
  *(v49 + 120) = v2;
  v52 = __swift_allocate_boxed_opaque_existential_1((v49 + 96));
  v51(v52, v9, v2);
  *(v49 + 128) = 0x7265746641746F6ELL;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 168) = v2;
  v53 = __swift_allocate_boxed_opaque_existential_1((v49 + 144));
  v51(v53, v6, v2);
  v40 = sub_26C0055D4(v49);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
  swift_arrayDestroy();
  v54 = *(v60[0] + 8);
  v54(v6, v2);
  v54(v9, v2);
  v54(v11, v2);
  return v40;
}

uint64_t MLS.IdentityError.errorCode.getter()
{
  v1 = type metadata accessor for MLS.IdentityError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BE8A684(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_26BE8A6E8(v4);
      result = 9;
      break;
    case 2:
      result = 10;
      break;
    case 3:
      result = 11;
      break;
    case 4:
      sub_26BE8A6E8(v4);
      result = 12;
      break;
    case 5:
      sub_26BE8A6E8(v4);
      result = 13;
      break;
    case 6:
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EAB0, &qword_26C014280);
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = sub_26C00921C();
      v11 = *(*(v10 - 8) + 8);
      v11(&v4[v9], v10);
      v11(&v4[v8], v10);
      v11(v4, v10);
      result = 21;
      break;
    case 7:
      result = 25;
      break;
    case 8:
      result = 26;
      break;
    case 9:
      result = 27;
      break;
    case 10:
      return result;
    case 11:
      result = 2;
      break;
    case 12:
      result = 3;
      break;
    case 13:
      result = 5;
      break;
    case 14:
      result = 6;
      break;
    case 15:
      result = 7;
      break;
    case 16:
      result = 14;
      break;
    case 17:
      result = 15;
      break;
    case 18:
      result = 16;
      break;
    case 19:
      result = 17;
      break;
    case 20:
      result = 18;
      break;
    case 21:
      result = 19;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 22;
      break;
    case 24:
      result = 23;
      break;
    case 25:
      result = 24;
      break;
    case 26:
      result = 28;
      break;
    default:
      result = 4;
      break;
  }

  return result;
}

uint64_t sub_26BE884C8(uint64_t a1)
{
  v2 = sub_26BE8BF30(&qword_28045EB88, type metadata accessor for MLS.IdentityError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BE88534(uint64_t a1)
{
  v2 = sub_26BE8BF30(&qword_28045EB88, type metadata accessor for MLS.IdentityError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t _s8SwiftMLS0B0O8MLSErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_26BE2DC18(a1, &v48);
  sub_26BE2DC18(a2, &v63);
  switch(v62)
  {
    case 1:
      sub_26BE2DC18(&v48, &v42);
      if (v67 == 1)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    case 2:
      sub_26BE2DC18(&v48, &v42);
      v3 = *(&v42 + 1);
      if (v67 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    case 3:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 3)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 4:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 4)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 5:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 5)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 6:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 6)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 7:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 7)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 8:
      sub_26BE2DC18(&v48, &v42);
      if (v67 == 8)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    case 9:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 9)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 10:
      sub_26BE2DC18(&v48, &v42);
      if (v67 == 10)
      {
        goto LABEL_58;
      }

      goto LABEL_13;
    case 11:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 11)
      {
        goto LABEL_13;
      }

      if (v42 != v63)
      {
        goto LABEL_137;
      }

      goto LABEL_52;
    case 12:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 12)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    case 13:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 13)
      {
        goto LABEL_13;
      }

      if (v42 != v63)
      {
        goto LABEL_137;
      }

LABEL_52:
      v11 = DWORD1(v42);
      v12 = DWORD1(v63);
      goto LABEL_62;
    case 14:
      sub_26BE2DC18(&v48, &v42);
      v3 = *(&v42 + 1);
      if (v67 != 14)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    case 15:
      sub_26BE2DC18(&v48, &v42);
      v3 = *(&v42 + 1);
      if (v67 != 15)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    case 16:
      sub_26BE2DC18(&v48, &v42);
      v3 = *(&v42 + 1);
      if (v67 != 16)
      {
LABEL_12:

        goto LABEL_13;
      }

LABEL_5:
      if (v42 == v63 && v3 == *(&v63 + 1))
      {

        goto LABEL_15;
      }

      v5 = sub_26C00AF2C();

      if (v5)
      {
        goto LABEL_15;
      }

      goto LABEL_137;
    case 17:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 17)
      {
        goto LABEL_13;
      }

      if (v42 != v63)
      {
        goto LABEL_137;
      }

      v7 = BYTE4(v63);
      if (BYTE4(v42))
      {
        goto LABEL_70;
      }

      v8 = WORD1(v42) == WORD1(v63);
      goto LABEL_114;
    case 18:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 18)
      {
        goto LABEL_13;
      }

LABEL_58:
      if (v42 != v63)
      {
        goto LABEL_137;
      }

      v11 = WORD1(v42);
      v12 = WORD1(v63);
LABEL_62:
      v13 = v11 == v12;
      sub_26BE2DC9C(&v48);
      return v13;
    case 19:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 19)
      {
        goto LABEL_13;
      }

      if (v42 != v63)
      {
        goto LABEL_137;
      }

      v7 = v64.u8[0];
      if (v43)
      {
LABEL_70:
        if (v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v8 = *(&v42 + 1) == *(&v63 + 1);
LABEL_114:
        if (!v8)
        {
          LOBYTE(v7) = 1;
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_137;
    case 20:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 20)
      {
        goto LABEL_13;
      }

      v9 = BYTE4(v63);
      if (BYTE4(v42))
      {
        if (!BYTE4(v63))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v42 != v63)
        {
          v9 = 1;
        }

        if (v9)
        {
          goto LABEL_137;
        }
      }

      if (BYTE12(v42))
      {
        if (!BYTE12(v63))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (DWORD2(v42) == DWORD2(v63))
        {
          v17 = BYTE12(v63);
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          goto LABEL_137;
        }
      }

      if (BYTE13(v42) == 2)
      {
        if (BYTE13(v63) == 2)
        {
          goto LABEL_15;
        }
      }

      else if (BYTE13(v63) != 2 && ((BYTE13(v63) ^ BYTE13(v42)) & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_137;
    case 21:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 21)
      {
        sub_26BE2E258(v46, &qword_28045EAA8, &unk_26C014260);
        sub_26BE2E258(&v42, &qword_28045EAA8, &unk_26C014260);
        goto LABEL_13;
      }

      v32[0] = v46[0];
      v32[1] = v46[1];
      v32[2] = v46[2];
      v33 = v47;
      v28 = *&v66[8];
      v29 = *&v66[24];
      v30 = *&v66[40];
      v31 = *&v66[56];
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v38 = v63;
      v39 = v64;
      v40 = v65;
      v37 = v45;
      v41 = *v66;
      if (!*(&v44 + 1))
      {
        if (!v40.i64[1])
        {
          sub_26BE2E258(&v34, &qword_28045EAA8, &unk_26C014260);
          goto LABEL_96;
        }

LABEL_119:
        sub_26BE2E258(&v34, &qword_28045EC50, &unk_26C015A70);
LABEL_120:
        sub_26BE2E258(&v28, &qword_28045EAA8, &unk_26C014260);
        v18 = v32;
        v19 = &qword_28045EAA8;
        v20 = &unk_26C014260;
        goto LABEL_136;
      }

      sub_26BE2E1F0(&v34, v27, &qword_28045EAA8, &unk_26C014260);
      if (!v40.i64[1])
      {
        sub_26BE2DAF8(v27);
        goto LABEL_119;
      }

      v23 = v38;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v10 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v27, &v23);
      sub_26BE2DAF8(&v23);
      sub_26BE2DAF8(v27);
      sub_26BE2E258(&v34, &qword_28045EAA8, &unk_26C014260);
      if ((v10 & 1) == 0)
      {
        goto LABEL_120;
      }

LABEL_96:
      sub_26BE2E1F0(v32, &v34, &qword_28045EAA8, &unk_26C014260);
      sub_26BE2E1F0(&v28, &v38, &qword_28045EAA8, &unk_26C014260);
      if (*(&v36 + 1))
      {
        sub_26BE2E1F0(&v34, v27, &qword_28045EAA8, &unk_26C014260);
        if (v40.i64[1])
        {
          v23 = v38;
          v24 = v39;
          v25 = v40;
          v26 = v41;
          v14 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v27, &v23);
          sub_26BE2DAF8(&v23);
          sub_26BE2E258(&v28, &qword_28045EAA8, &unk_26C014260);
          sub_26BE2E258(v32, &qword_28045EAA8, &unk_26C014260);
          sub_26BE2DAF8(v27);
          goto LABEL_99;
        }

        sub_26BE2E258(&v28, &qword_28045EAA8, &unk_26C014260);
        sub_26BE2E258(v32, &qword_28045EAA8, &unk_26C014260);
        v21 = v27;
LABEL_134:
        sub_26BE2DAF8(v21);
        goto LABEL_135;
      }

      sub_26BE2E258(&v28, &qword_28045EAA8, &unk_26C014260);
      sub_26BE2E258(v32, &qword_28045EAA8, &unk_26C014260);
LABEL_128:
      if (!v40.i64[1])
      {
        sub_26BE2E258(&v34, &qword_28045EAA8, &unk_26C014260);
LABEL_15:
        sub_26BE2DC9C(&v48);
        return 1;
      }

LABEL_135:
      v19 = &qword_28045EC50;
      v20 = &unk_26C015A70;
      v18 = &v34;
LABEL_136:
      sub_26BE2E258(v18, v19, v20);
LABEL_137:
      sub_26BE2DC9C(&v48);
      return 0;
    case 22:
      sub_26BE2DC18(&v48, &v42);
      if (v67 != 22)
      {
        sub_26BE2E258(&v42, &qword_28045EAA8, &unk_26C014260);
        goto LABEL_13;
      }

      v34 = v42;
      v35 = v43;
      v36 = v44;
      v38 = v63;
      v39 = v64;
      v40 = v65;
      v37 = v45;
      v41 = *v66;
      if (!*(&v44 + 1))
      {
        goto LABEL_128;
      }

      sub_26BE2E1F0(&v34, v32, &qword_28045EAA8, &unk_26C014260);
      if (!v40.i64[1])
      {
        v21 = v32;
        goto LABEL_134;
      }

      v28 = v38;
      v29 = v39;
      v30 = v40;
      v31 = v41;
      v14 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v32, &v28);
      sub_26BE2DAF8(&v28);
      sub_26BE2DAF8(v32);
LABEL_99:
      sub_26BE2E258(&v34, &qword_28045EAA8, &unk_26C014260);
      if ((v14 & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_15;
    case 23:
      if (v61 | v48 | v60 | v59 | v58 | v57 | v56 | v55 | v54 | v53 | v52 | v51 | v50 | v49)
      {
        v15 = v60 | v61 | v59 | v58 | v57 | v56 | v55 | v54 | v53 | v52 | v51 | v50 | v49;
        if (v48 != 1 || v15)
        {
          if (v48 != 2 || v15)
          {
            if (v48 != 3 || v15)
            {
              if (v48 != 4 || v15)
              {
                if (v48 != 5 || v15)
                {
                  if (v48 != 6 || v15)
                  {
                    if (v48 != 7 || v15)
                    {
                      if (v48 != 8 || v15)
                      {
                        if (v48 != 9 || v15)
                        {
                          if (v48 != 10 || v15)
                          {
                            if (v48 != 11 || v15)
                            {
                              if (v48 != 12 || v15)
                              {
                                if (v48 != 13 || v15)
                                {
                                  if (v48 != 14 || v15)
                                  {
                                    if (v48 != 15 || v15)
                                    {
                                      if (v48 != 16 || v15)
                                      {
                                        if (v48 != 17 || v15)
                                        {
                                          if (v48 != 18 || v15)
                                          {
                                            if (v48 != 19 || v15)
                                            {
                                              if (v48 != 20 || v15)
                                              {
                                                if (v48 != 21 || v15)
                                                {
                                                  if (v48 != 22 || v15)
                                                  {
                                                    if (v48 != 23 || v15)
                                                    {
                                                      if (v48 != 24 || v15)
                                                      {
                                                        if (v48 != 25 || v15)
                                                        {
                                                          if (v48 != 26 || v15)
                                                          {
                                                            if (v48 != 27 || v15)
                                                            {
                                                              if (v48 != 28 || v15)
                                                              {
                                                                if (v48 != 29 || v15)
                                                                {
                                                                  if (v48 != 30 || v15)
                                                                  {
                                                                    if (v48 != 31 || v15)
                                                                    {
                                                                      if (v48 != 32 || v15)
                                                                      {
                                                                        if (v48 != 33 || v15)
                                                                        {
                                                                          if (v48 != 34 || v15)
                                                                          {
                                                                            if (v48 != 35 || v15)
                                                                            {
                                                                              if (v48 != 36 || v15)
                                                                              {
                                                                                if (v48 != 37 || v15)
                                                                                {
                                                                                  if (v48 != 38 || v15)
                                                                                  {
                                                                                    if (v48 != 39 || v15)
                                                                                    {
                                                                                      if (v48 != 40 || v15)
                                                                                      {
                                                                                        if (v48 != 41 || v15)
                                                                                        {
                                                                                          if (v48 != 42 || v15)
                                                                                          {
                                                                                            if (v48 != 43 || v15)
                                                                                            {
                                                                                              if (v48 != 44 || v15)
                                                                                              {
                                                                                                if (v48 != 45 || v15)
                                                                                                {
                                                                                                  if (v48 != 46 || v15)
                                                                                                  {
                                                                                                    if (v67 != 23 || v63 != 47)
                                                                                                    {
                                                                                                      goto LABEL_13;
                                                                                                    }
                                                                                                  }

                                                                                                  else if (v67 != 23 || v63 != 46)
                                                                                                  {
                                                                                                    goto LABEL_13;
                                                                                                  }
                                                                                                }

                                                                                                else if (v67 != 23 || v63 != 45)
                                                                                                {
                                                                                                  goto LABEL_13;
                                                                                                }
                                                                                              }

                                                                                              else if (v67 != 23 || v63 != 44)
                                                                                              {
                                                                                                goto LABEL_13;
                                                                                              }
                                                                                            }

                                                                                            else if (v67 != 23 || v63 != 43)
                                                                                            {
                                                                                              goto LABEL_13;
                                                                                            }
                                                                                          }

                                                                                          else if (v67 != 23 || v63 != 42)
                                                                                          {
                                                                                            goto LABEL_13;
                                                                                          }
                                                                                        }

                                                                                        else if (v67 != 23 || v63 != 41)
                                                                                        {
                                                                                          goto LABEL_13;
                                                                                        }
                                                                                      }

                                                                                      else if (v67 != 23 || v63 != 40)
                                                                                      {
                                                                                        goto LABEL_13;
                                                                                      }
                                                                                    }

                                                                                    else if (v67 != 23 || v63 != 39)
                                                                                    {
                                                                                      goto LABEL_13;
                                                                                    }
                                                                                  }

                                                                                  else if (v67 != 23 || v63 != 38)
                                                                                  {
                                                                                    goto LABEL_13;
                                                                                  }
                                                                                }

                                                                                else if (v67 != 23 || v63 != 37)
                                                                                {
                                                                                  goto LABEL_13;
                                                                                }
                                                                              }

                                                                              else if (v67 != 23 || v63 != 36)
                                                                              {
                                                                                goto LABEL_13;
                                                                              }
                                                                            }

                                                                            else if (v67 != 23 || v63 != 35)
                                                                            {
                                                                              goto LABEL_13;
                                                                            }
                                                                          }

                                                                          else if (v67 != 23 || v63 != 34)
                                                                          {
                                                                            goto LABEL_13;
                                                                          }
                                                                        }

                                                                        else if (v67 != 23 || v63 != 33)
                                                                        {
                                                                          goto LABEL_13;
                                                                        }
                                                                      }

                                                                      else if (v67 != 23 || v63 != 32)
                                                                      {
                                                                        goto LABEL_13;
                                                                      }
                                                                    }

                                                                    else if (v67 != 23 || v63 != 31)
                                                                    {
                                                                      goto LABEL_13;
                                                                    }
                                                                  }

                                                                  else if (v67 != 23 || v63 != 30)
                                                                  {
                                                                    goto LABEL_13;
                                                                  }
                                                                }

                                                                else if (v67 != 23 || v63 != 29)
                                                                {
                                                                  goto LABEL_13;
                                                                }
                                                              }

                                                              else if (v67 != 23 || v63 != 28)
                                                              {
                                                                goto LABEL_13;
                                                              }
                                                            }

                                                            else if (v67 != 23 || v63 != 27)
                                                            {
                                                              goto LABEL_13;
                                                            }
                                                          }

                                                          else if (v67 != 23 || v63 != 26)
                                                          {
                                                            goto LABEL_13;
                                                          }
                                                        }

                                                        else if (v67 != 23 || v63 != 25)
                                                        {
                                                          goto LABEL_13;
                                                        }
                                                      }

                                                      else if (v67 != 23 || v63 != 24)
                                                      {
                                                        goto LABEL_13;
                                                      }
                                                    }

                                                    else if (v67 != 23 || v63 != 23)
                                                    {
                                                      goto LABEL_13;
                                                    }
                                                  }

                                                  else if (v67 != 23 || v63 != 22)
                                                  {
                                                    goto LABEL_13;
                                                  }
                                                }

                                                else if (v67 != 23 || v63 != 21)
                                                {
                                                  goto LABEL_13;
                                                }
                                              }

                                              else if (v67 != 23 || v63 != 20)
                                              {
                                                goto LABEL_13;
                                              }
                                            }

                                            else if (v67 != 23 || v63 != 19)
                                            {
                                              goto LABEL_13;
                                            }
                                          }

                                          else if (v67 != 23 || v63 != 18)
                                          {
                                            goto LABEL_13;
                                          }
                                        }

                                        else if (v67 != 23 || v63 != 17)
                                        {
                                          goto LABEL_13;
                                        }
                                      }

                                      else if (v67 != 23 || v63 != 16)
                                      {
                                        goto LABEL_13;
                                      }
                                    }

                                    else if (v67 != 23 || v63 != 15)
                                    {
                                      goto LABEL_13;
                                    }
                                  }

                                  else if (v67 != 23 || v63 != 14)
                                  {
                                    goto LABEL_13;
                                  }
                                }

                                else if (v67 != 23 || v63 != 13)
                                {
                                  goto LABEL_13;
                                }
                              }

                              else if (v67 != 23 || v63 != 12)
                              {
                                goto LABEL_13;
                              }
                            }

                            else if (v67 != 23 || v63 != 11)
                            {
                              goto LABEL_13;
                            }
                          }

                          else if (v67 != 23 || v63 != 10)
                          {
                            goto LABEL_13;
                          }
                        }

                        else if (v67 != 23 || v63 != 9)
                        {
                          goto LABEL_13;
                        }
                      }

                      else if (v67 != 23 || v63 != 8)
                      {
                        goto LABEL_13;
                      }
                    }

                    else if (v67 != 23 || v63 != 7)
                    {
                      goto LABEL_13;
                    }
                  }

                  else if (v67 != 23 || v63 != 6)
                  {
                    goto LABEL_13;
                  }
                }

                else if (v67 != 23 || v63 != 5)
                {
                  goto LABEL_13;
                }
              }

              else if (v67 != 23 || v63 != 4)
              {
                goto LABEL_13;
              }
            }

            else if (v67 != 23 || v63 != 3)
            {
              goto LABEL_13;
            }
          }

          else if (v67 != 23 || v63 != 2)
          {
            goto LABEL_13;
          }
        }

        else if (v67 != 23 || v63 != 1)
        {
          goto LABEL_13;
        }

        v22 = vorrq_s8(vorrq_s8(vorrq_s8(*v66, *&v66[32]), vorrq_s8(*&v66[16], *&v66[48])), vorrq_s8(v64, v65));
        if (!(*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *(&v63 + 1)))
        {
          goto LABEL_15;
        }
      }

      else if (v67 == 23)
      {
        v16 = vorrq_s8(vorrq_s8(vorrq_s8(*v66, *&v66[32]), vorrq_s8(*&v66[16], *&v66[48])), vorrq_s8(v64, v65));
        if (!(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *(&v63 + 1) | v63))
        {
          goto LABEL_15;
        }
      }

LABEL_13:
      sub_26BE2E258(&v48, &qword_28045EC48, &qword_26C015A68);
      return 0;
    default:
      sub_26BE2DC18(&v48, &v42);
      if (v67)
      {
        goto LABEL_13;
      }

LABEL_61:
      v11 = v42;
      v12 = v63;
      goto LABEL_62;
  }
}

uint64_t _s8SwiftMLS0B0O13IdentityErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v145 = a1;
  v146 = a2;
  v2 = sub_26C00921C();
  v143 = *(v2 - 8);
  v144 = v2;
  v3 = v143[8];
  v4 = MEMORY[0x28223BE20](v2);
  v137 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v135 = &v131 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v141 = &v131 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v142 = &v131 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v136 = &v131 - v13;
  MEMORY[0x28223BE20](v12);
  v131 = &v131 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v132 = &v131 - v17;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EC30, &qword_26C015A58);
  v18 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v134 = &v131 - v19;
  v20 = type metadata accessor for MLS.IdentityError();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v139 = (&v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v138 = (&v131 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v131 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v140 = &v131 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v131 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v131 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v131 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = (&v131 - v41);
  v43 = MEMORY[0x28223BE20](v40);
  v45 = (&v131 - v44);
  MEMORY[0x28223BE20](v43);
  v47 = (&v131 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EC38, &qword_26C015A60);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v52 = &v131 - v51;
  v53 = (&v131 + *(v50 + 56) - v51);
  sub_26BE8A684(v145, &v131 - v51);
  v145 = v53;
  sub_26BE8A684(v146, v53);
  v146 = v52;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26BE8A684(v146, v45);
      v75 = *v45;
      v74 = v45[1];
      v77 = v45[2];
      v76 = v45[3];
      v78 = v145;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_26BE136AC(v77, v76);
        sub_26BE00258(v75, v74);
        v54 = v146;
        goto LABEL_77;
      }

      v80 = *v78;
      v79 = v78[1];
      v82 = v78[2];
      v81 = v78[3];
      if (sub_26BE02DEC(v75, v74, v80, v79))
      {
        if (v76 >> 60 == 15)
        {
          sub_26BE00258(v80, v79);
          sub_26BE00258(v75, v74);
          if (v81 >> 60 == 15)
          {
            sub_26BE136AC(v77, v76);
LABEL_99:
            v120 = v146;
            goto LABEL_72;
          }

          goto LABEL_91;
        }

        if (v81 >> 60 == 15)
        {
          sub_26BE00258(v80, v79);
          sub_26BE00258(v75, v74);
LABEL_91:
          sub_26BE136AC(v77, v76);
          sub_26BE136AC(v82, v81);
          goto LABEL_92;
        }

        sub_26BE2E408(v77, v76);
        sub_26BE2E408(v82, v81);
        v130 = sub_26BE02DEC(v77, v76, v82, v81);
        sub_26BE136AC(v82, v81);
        sub_26BE136AC(v82, v81);
        sub_26BE136AC(v77, v76);
        sub_26BE00258(v80, v79);
        sub_26BE00258(v75, v74);
        sub_26BE136AC(v77, v76);
        if (v130)
        {
          goto LABEL_99;
        }
      }

      else
      {
        sub_26BE136AC(v82, v81);
        sub_26BE136AC(v77, v76);
        sub_26BE00258(v80, v79);
        sub_26BE00258(v75, v74);
      }

LABEL_92:
      sub_26BE8A6E8(v146);
      goto LABEL_78;
    case 2u:
      v54 = v146;
      sub_26BE8A684(v146, v42);
      v69 = v145;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_77;
      }

      v72 = *v42;
      goto LABEL_59;
    case 3u:
      v54 = v146;
      sub_26BE8A684(v146, v39);
      v69 = v145;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_77;
      }

      v72 = *v39;
      goto LABEL_59;
    case 4u:
      v54 = v146;
      sub_26BE8A684(v146, v36);
      v61 = v145;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_26BE2E258(v36, &qword_28045E4A8, &unk_26C00ECB0);
        goto LABEL_77;
      }

      v62 = v134;
      v63 = *(v133 + 48);
      sub_26BE8A790(v36, v134);
      sub_26BE8A790(v61, v62 + v63);
      v65 = v143;
      v64 = v144;
      v66 = v143[6];
      if (v66(v62, 1, v144) == 1)
      {
        if (v66(v62 + v63, 1, v64) == 1)
        {
          sub_26BE2E258(v62, &qword_28045E4A8, &unk_26C00ECB0);
          goto LABEL_71;
        }

        goto LABEL_82;
      }

      v125 = v132;
      sub_26BE2E1F0(v62, v132, &qword_28045E4A8, &unk_26C00ECB0);
      if (v66(v62 + v63, 1, v64) == 1)
      {
        (v65[1])(v125, v64);
LABEL_82:
        sub_26BE2E258(v62, &qword_28045EC30, &qword_26C015A58);
        goto LABEL_97;
      }

      v127 = v131;
      (v65[4])(v131, v62 + v63, v64);
      sub_26BE8BF30(&qword_28045EC40, MEMORY[0x277CC9578]);
      v128 = sub_26C00A43C();
      v129 = v65[1];
      v129(v127, v64);
      v129(v125, v64);
      sub_26BE2E258(v62, &qword_28045E4A8, &unk_26C00ECB0);
      if (v128)
      {
LABEL_71:
        v120 = v54;
LABEL_72:
        sub_26BE8A6E8(v120);
        v113 = 1;
        return v113 & 1;
      }

      goto LABEL_97;
    case 5u:
      v54 = v146;
      sub_26BE8A684(v146, v33);
      v85 = *v33;
      v86 = v145;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        goto LABEL_77;
      }

      v87 = *v86;
      if (v85)
      {
        if (v87)
        {
          sub_26BE8A744();
          v88 = v85;
          v89 = sub_26C00AA9C();

          if (v89)
          {
            goto LABEL_71;
          }

LABEL_97:
          sub_26BE8A6E8(v54);
LABEL_78:
          v113 = 0;
          return v113 & 1;
        }

        v87 = v85;
      }

      else if (!v87)
      {
        goto LABEL_71;
      }

      goto LABEL_97;
    case 6u:
      v54 = v146;
      v92 = v140;
      sub_26BE8A684(v146, v140);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EAB0, &qword_26C014280);
      v94 = *(v93 + 48);
      v95 = *(v93 + 64);
      v96 = v145;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v121 = v143[1];
        v122 = v92 + v95;
        v123 = v144;
        v121(v122, v144);
        v121(v92 + v94, v123);
        v121(v92, v123);
LABEL_77:
        sub_26BE2E258(v54, &qword_28045EC38, &qword_26C015A60);
        goto LABEL_78;
      }

      v98 = v143;
      v97 = v144;
      v99 = v143[4];
      v100 = v136;
      v99(v136, v96, v144);
      v99(v142, v92 + v94, v97);
      v99(v141, v92 + v95, v97);
      v101 = v96 + v94;
      v102 = v135;
      v99(v135, v101, v97);
      v103 = v96 + v95;
      v104 = v137;
      v99(v137, v103, v97);
      v105 = v100;
      v106 = sub_26C0091FC();
      v107 = v98[1];
      v107(v92, v97);
      if ((v106 & 1) == 0)
      {
        v107(v104, v97);
        v107(v102, v97);
        v107(v141, v97);
        v126 = v142;
LABEL_94:
        v107(v126, v97);
        v107(v105, v97);
        goto LABEL_97;
      }

      v109 = v141;
      v108 = v142;
      if ((sub_26C0091FC() & 1) == 0)
      {
        v107(v137, v97);
        v107(v102, v97);
        v107(v109, v97);
        v126 = v108;
        goto LABEL_94;
      }

      v110 = v105;
      v111 = v137;
      v112 = v102;
      v113 = sub_26C0091FC();
      v107(v111, v97);
      v107(v112, v97);
      v107(v109, v97);
      v107(v108, v97);
      v107(v110, v97);
LABEL_63:
      sub_26BE8A6E8(v54);
      return v113 & 1;
    case 7u:
      v54 = v146;
      sub_26BE8A684(v146, v28);
      v69 = v145;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_77;
      }

      v72 = *v28;
      goto LABEL_59;
    case 8u:
      v54 = v146;
      v68 = v138;
      sub_26BE8A684(v146, v138);
      v69 = v145;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_58;
      }

      goto LABEL_77;
    case 9u:
      v54 = v146;
      v68 = v139;
      sub_26BE8A684(v146, v139);
      v69 = v145;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_77;
      }

LABEL_58:
      v72 = *v68;
LABEL_59:
      v57 = v72 == *v69;
      goto LABEL_60;
    case 0xAu:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xBu:
      v60 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v60 != 11)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xCu:
      v67 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v67 != 12)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xDu:
      v91 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v91 != 13)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xEu:
      v59 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v59 != 14)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0xFu:
      v73 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v73 != 15)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x10u:
      v58 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v58 != 16)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x11u:
      v83 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v83 != 17)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x12u:
      v114 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v114 != 18)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x13u:
      v117 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v117 != 19)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x14u:
      v84 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v84 != 20)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x15u:
      v90 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v90 != 21)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x16u:
      v116 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v116 != 22)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x17u:
      v118 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v118 != 23)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x18u:
      v71 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v71 != 24)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x19u:
      v70 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v70 != 25)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    case 0x1Au:
      v119 = swift_getEnumCaseMultiPayload();
      v54 = v146;
      if (v119 == 26)
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    default:
      v54 = v146;
      sub_26BE8A684(v146, v47);
      v55 = v47[1];
      v56 = v145;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_77;
      }

      if (*v47 != *v56)
      {
        goto LABEL_97;
      }

      v57 = v55 == v56[1];
LABEL_60:
      v113 = v57;
      goto LABEL_63;
  }
}

uint64_t type metadata accessor for MLS.IdentityError()
{
  result = qword_28045EB50;
  if (!qword_28045EB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BE8A684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.IdentityError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE8A6E8(uint64_t a1)
{
  v2 = type metadata accessor for MLS.IdentityError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BE8A744()
{
  result = qword_28045EAB8;
  if (!qword_28045EAB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045EAB8);
  }

  return result;
}

uint64_t sub_26BE8A790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BE8A808()
{
  result = qword_28045EAC0;
  if (!qword_28045EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAC0);
  }

  return result;
}

unint64_t sub_26BE8A864()
{
  result = qword_28045EAC8;
  if (!qword_28045EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAC8);
  }

  return result;
}

unint64_t sub_26BE8A8B8()
{
  result = qword_28045EAD0;
  if (!qword_28045EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAD0);
  }

  return result;
}

unint64_t sub_26BE8A914()
{
  result = qword_28045EAD8;
  if (!qword_28045EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAD8);
  }

  return result;
}

unint64_t sub_26BE8A968()
{
  result = qword_28045EAE0;
  if (!qword_28045EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAE0);
  }

  return result;
}

unint64_t sub_26BE8A9C4()
{
  result = qword_28045EAE8;
  if (!qword_28045EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAE8);
  }

  return result;
}

unint64_t sub_26BE8AA18()
{
  result = qword_28045EAF0;
  if (!qword_28045EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAF0);
  }

  return result;
}

unint64_t sub_26BE8AA74()
{
  result = qword_28045EAF8;
  if (!qword_28045EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EAF8);
  }

  return result;
}

unint64_t sub_26BE8AAC8()
{
  result = qword_28045EB00;
  if (!qword_28045EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB00);
  }

  return result;
}

unint64_t sub_26BE8AB24()
{
  result = qword_28045EB08;
  if (!qword_28045EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB08);
  }

  return result;
}

unint64_t sub_26BE8AB78()
{
  result = qword_28045EB10;
  if (!qword_28045EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB10);
  }

  return result;
}

unint64_t sub_26BE8ABD4()
{
  result = qword_28045EB18;
  if (!qword_28045EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB18);
  }

  return result;
}

unint64_t sub_26BE8AC28()
{
  result = qword_28045EB20;
  if (!qword_28045EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB20);
  }

  return result;
}

unint64_t sub_26BE8AC84()
{
  result = qword_28045EB28;
  if (!qword_28045EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB28);
  }

  return result;
}

unint64_t sub_26BE8ACD8()
{
  result = qword_28045EB30;
  if (!qword_28045EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB30);
  }

  return result;
}

unint64_t sub_26BE8AD34()
{
  result = qword_28045EB38;
  if (!qword_28045EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB38);
  }

  return result;
}

unint64_t sub_26BE8AD8C()
{
  result = qword_28045EB40;
  if (!qword_28045EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O5GroupO6MemberVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O8MLSErrorO(uint64_t a1)
{
  if ((*(a1 + 112) & 0x1Fu) <= 0x16)
  {
    return *(a1 + 112) & 0x1F;
  }

  else
  {
    return (*a1 + 23);
  }
}

uint64_t sub_26BE8AE5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE9 && *(a1 + 113))
  {
    return (*a1 + 233);
  }

  v3 = *(a1 + 112);
  if (v3 >= 0x18)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE8AE98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE8)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 233;
    if (a3 >= 0xE9)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE9)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BE8AEF0(uint64_t result, unsigned int a2)
{
  if (a2 > 0x16)
  {
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    v2 = a2 - 23;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 23;
    *result = v2;
  }

  *(result + 112) = a2;
  return result;
}

uint64_t _s16MLSInternalErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16MLSInternalErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s24InvalidProposalListErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24InvalidProposalListErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s20InvalidLeafNodeErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t _s20InvalidLeafNodeErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26BE8B344(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26BE8B3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s8RCSErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8RCSErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26BE8B610()
{
  sub_26BE8B708();
  if (v0 <= 0x3F)
  {
    sub_26BE8B768();
    if (v1 <= 0x3F)
    {
      sub_26BE8B7E0(319, &qword_28045EB70, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_26BE8B7E0(319, &qword_28045EB78, sub_26BE8A744);
        if (v3 <= 0x3F)
        {
          sub_26BE8B834();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26BE8B708()
{
  if (!qword_28045EB60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045EB60);
    }
  }
}

void sub_26BE8B768()
{
  if (!qword_28045EB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E778, &qword_26C0159E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045EB68);
    }
  }
}

void sub_26BE8B7E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C00AAAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}