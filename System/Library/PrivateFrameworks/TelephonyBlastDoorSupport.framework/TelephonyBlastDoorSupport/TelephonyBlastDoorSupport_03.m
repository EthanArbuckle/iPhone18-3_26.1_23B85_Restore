void sub_26D1EA1B0(uint64_t a1)
{
  v2 = type metadata accessor for RCSBlastDoorDecodingResultEvent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_2804E0478 != -1)
  {
    swift_once();
  }

  v5 = sub_26D22CF14();
  __swift_project_value_buffer(v5, qword_2804E0E78);
  v6 = sub_26D22CEF4();
  v7 = sub_26D22E5E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_26D1E9B10(0xD00000000000002ELL, 0x800000026D23B920, aBlock);
    _os_log_impl(&dword_26D1AF000, v6, v7, "Sending event (lazily): %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D6B7800](v9, -1, -1);
    MEMORY[0x26D6B7800](v8, -1, -1);
  }

  else
  {
  }

  v10 = sub_26D22E3B4();
  sub_26D1EA78C(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_26D1EA90C(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  aBlock[4] = sub_26D1EA970;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D1E9A84;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

uint64_t sub_26D1EA464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSBlastDoorDecodingResultEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26D1EA058(a1);
  if (result != 16)
  {
    v9 = result;
    if (qword_2804E0478 != -1)
    {
      swift_once();
    }

    v10 = sub_26D22CF14();
    __swift_project_value_buffer(v10, qword_2804E0E78);
    v11 = sub_26D22CEF4();
    v12 = sub_26D22E5E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315394;
      v15 = sub_26D22EA64();
      v17 = sub_26D1E9B10(v15, v16, &v19);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v9 + 1;
      _os_log_impl(&dword_26D1AF000, v11, v12, "Sending decoding result event for type: %s (%ld)", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D6B7800](v14, -1, -1);
      MEMORY[0x26D6B7800](v13, -1, -1);
    }

    sub_26D1EA664(a2, &v7[*(v4 + 20)]);
    *v7 = v9;
    sub_26D1EA1B0(v7);
    return sub_26D1EA6D4(v7);
  }

  return result;
}

uint64_t sub_26D1EA664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1EA6D4(uint64_t a1)
{
  v2 = type metadata accessor for RCSBlastDoorDecodingResultEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D1EA730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26D1EA78C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSBlastDoorDecodingResultEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1EA7F0()
{
  v1 = type metadata accessor for RCSBlastDoorDecodingResultEvent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = sub_26D22E2E4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6 + v4, 1, v7))
  {
    (*(v8 + 8))(v6 + v4, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26D1EA90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSBlastDoorDecodingResultEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D1EA970()
{
  v1 = *(type metadata accessor for RCSBlastDoorDecodingResultEvent() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26D202EF8();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26D1EA9E4()
{
  result = qword_2804E0E98;
  if (!qword_2804E0E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804E0E98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelephonyPayloadType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelephonyPayloadType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26D1EAB84()
{
  result = qword_2804E0EA0;
  if (!qword_2804E0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0EA0);
  }

  return result;
}

void sub_26D1EABD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EA8, &qword_26D2319F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v55 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EB0, &qword_26D2319F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08B8, &qword_26D2304E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v55 - v13;
  v15 = sub_26D22D6B4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EB8, &qword_26D231A00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EC0, qword_26D231A08);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v55 - v26;
  v28 = a1;
  v29 = v65;
  v30 = sub_26D1E1120();
  if (v29)
  {

    return;
  }

  v62 = v14;
  v63 = v23;
  v57 = v6;
  v58 = v10;
  v59 = v15;
  v60 = v19;
  v61 = v16;
  v65 = v27;
  v31 = sub_26D1EC12C(v30, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v32 = sub_26D1E25A8();

  v33 = sub_26D1EC12C(v32, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

  sub_26D1DD300(0, v33, v65);
  sub_26D1DD86C(1u, v33, v63);
  v34 = sub_26D1C9A0C(2u, 0, v31);
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  v37 = v62;
  sub_26D1C9C8C(3u, 0, v31, v62);
  v55 = v36;
  v56 = v33;
  v38 = v61;
  v39 = *(v61 + 48);
  v40 = v59;
  if (v39(v37, 1, v59) == 1)
  {
    (*(v38 + 104))(v60, *MEMORY[0x277CF2580], v40);
    if (v39(v37, 1, v40) != 1)
    {
      sub_26D1B950C(v37, &qword_2804E08B8, &qword_26D2304E0);
    }
  }

  else
  {
    (*(v38 + 32))(v60, v37, v40);
  }

  sub_26D1C9F34(4u, 0, v31);
  v41 = sub_26D1C9A0C(5u, 0, v31);
  v42 = v56;
  sub_26D1DD8AC(6u, v56, v58);
  v62 = v41;
  sub_26D1DDD0C(7u, v42, v57);

  v43 = sub_26D1CA1A4(8u, 0, v31);
  v45 = v44;

  sub_26D1B7FCC();
  v46 = swift_allocError();
  v47 = v46;
  *v48 = 0xD00000000000001DLL;
  *(v48 + 8) = 0x800000026D23B180;
  *(v48 + 16) = 5;
  if (v45)
  {

    v49 = sub_26D1BE654(v43, v45);
    if (v50 >> 60 == 15)
    {
      sub_26D1B950C(v57, &qword_2804E0EA8, &qword_26D2319F0);
      sub_26D1B950C(v58, &qword_2804E0EB0, &qword_26D2319F8);
      (*(v61 + 8))(v60, v59);
      sub_26D1B950C(v63, &qword_2804E0EB8, &qword_26D231A00);
      sub_26D1B950C(v65, &qword_2804E0EC0, qword_26D231A08);
      swift_willThrow();
      v51 = v47;

      return;
    }

    v52 = v49;
    v53 = v50;
    sub_26D22CD74();
    v61 = v54;
    sub_26D1BE640(v52, v53);
  }

  else
  {

    v61 = 0;
  }

  sub_26D22D6C4();
}

void sub_26D1EB4AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = a1;
  v10 = sub_26D1E1120();
  if (!v2)
  {
    v11 = sub_26D1EC12C(v10, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

    sub_26D1C7368(0, 0, v11);
    sub_26D1C73A8(1u, 0, v11, v8);
    sub_26D1C7558(2u, 0, v11);
    v27 = sub_26D1C7558(3u, 0, v11);
    v25 = sub_26D1E6CFC(4u, v11);
    v24 = sub_26D1E6CFC(5u, v11);
    v12 = sub_26D1C7368(6, 0, v11);
    v26 = v13;
    v23 = v12;
    v14 = sub_26D1C7368(7, 0, v11);
    v20 = v15;
    v21 = v14;
    v22 = a2;
    v19 = sub_26D1C7558(8u, 0, v11);
    v16 = sub_26D1C7698(9, 0, v11);
    v18[0] = v17;
    v18[1] = v16;

    sub_26D22D504();
  }
}

void sub_26D1EB798(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = a1;
  v11 = sub_26D1E1120();
  if (v1)
  {
    goto LABEL_3;
  }

  v12 = sub_26D1EC12C(v11, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v35 = sub_26D1C85D0(0, 0, v12);
  sub_26D1DF3E8(1u, v12);
  if (!v13)
  {
    sub_26D1B7F48();
    v19 = swift_allocError();
    *v20 = xmmword_26D231920;
    *(v20 + 16) = 0;
    *(v20 + 24) = 1;
    swift_willThrow();
    v33 = 0x6D616E5B6D726170;
    v34 = 0xEB00000000273D65;
    MEMORY[0x26D6B6C70](0x46657A695378614DLL, 0xED00007254656C69);
    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v15 = v33;
    v16 = v34;
    sub_26D1B7F48();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = v19;
    *(v17 + 24) = 7;
    swift_willThrow();

LABEL_3:

    return;
  }

  v18 = v14;
  v32 = sub_26D1E5A44(1, v18);

  sub_26D1C8878(2u, 0, v12);
  sub_26D1C8B10(3u, 0, v12, v9);
  sub_26D1C8B10(4u, 0, v12, v7);
  v21 = sub_26D1C8E18(5u, 0, v12);
  v31 = v22;
  v28 = sub_26D1C8E18(6u, 0, v12);
  v29 = v21;
  v30 = v23;
  v27 = sub_26D1C8878(7u, 0, v12);
  v26 = sub_26D1C85D0(8u, 0, v12);
  v25[1] = v24;

  sub_26D22D854();
}

void sub_26D1EBC34(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08A8, &qword_26D2304D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v30 - v6;
  v8 = sub_26D22D584();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v30 - v20;
  v22 = a1;
  v23 = sub_26D1E1120();
  if (!v2)
  {
    v32 = v11;
    v33 = v7;
    v34 = v16;
    v35 = v19;
    v24 = sub_26D1EC12C(v23, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

    sub_26D1C7860(0, 0, v24, v21);
    sub_26D1C7860(1u, 0, v24, v35);
    sub_26D1C7860(2u, 0, v24, v34);
    v25 = sub_26D1C7AF0(3u, 0, v24);
    v26 = sub_26D1C7AF0(4u, 0, v24);
    v27 = v33;
    sub_26D1C7D10(5u, 0, v24, v33);

    v31 = 0;
    v30[2] = v26;
    v30[3] = v25;
    v28 = v36;
    v29 = *(v36 + 48);
    if (v29(v27, 1, v8) == 1)
    {
      (*(v28 + 104))(v32, *MEMORY[0x277CF2468], v8);
      if (v29(v27, 1, v8) != 1)
      {
        sub_26D1B950C(v27, &qword_2804E08A8, &qword_26D2304D8);
      }
    }

    else
    {
      (*(v28 + 32))(v32, v27, v8);
    }

    sub_26D22D594();
  }
}

uint64_t sub_26D1EC12C(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1EC370(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08C8, &qword_26D2304E8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v19 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v16 = a1;
  v17 = sub_26D1E1120();
  if (!v1)
  {
    v18 = sub_26D1ED8A8(v17, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

    sub_26D1C926C(0, 0, v18, v15);
    sub_26D1C926C(1u, 0, v18, v13);
    sub_26D1C926C(2u, 0, v18, v10);
    sub_26D1C926C(3u, 0, v18, v7);

    sub_26D22D944();
  }
}

void sub_26D1EC640(void *a1)
{
  v3 = sub_26D22D954();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = a1;
  v6 = sub_26D1E25A8();
  if (!v1)
  {
    v7 = sub_26D1ED8A8(v6, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

    sub_26D1C6094(v7);

    sub_26D22D804();
  }
}

void sub_26D1EC778(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EC8, &qword_26D231AB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = (&v52 - v5);
  v75 = sub_26D22D664();
  v70 = *(v75 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v75);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08D8, &qword_26D2304F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - v11;
  v13 = sub_26D22CAD4();
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0ED0, &qword_26D231AB8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - v19;
  v21 = sub_26D22D654();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = v71;
  v28 = sub_26D1E1120();
  if (v27)
  {

    return;
  }

  v57 = v21;
  v58 = v12;
  v67 = v25;
  v68 = v13;
  v56 = v20;
  v69 = v16;
  v63 = v22;
  v29 = v75;
  v59 = v8;
  v30 = sub_26D1ED8A8(v28, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v31 = v26;
  v32 = sub_26D1E25A8();

  v33 = sub_26D1ED8A8(v32, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

  v34 = sub_26D1CA420(1u, 0, v30);
  v55 = v33;
  v35 = v29;
  if (v36)
  {
    v52 = v31;
    v53 = v30;
    *&v72 = 44;
    *(&v72 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v34);
    v51 = &v72;
    v39 = sub_26D1ED0E0(0x7FFFFFFFFFFFFFFFLL, 1, sub_26D1D7848, (&v52 - 4), v37, v38, &v52);
    v40 = v39;
    v54 = 0;
    v62 = *(v39 + 16);
    if (v62)
    {
      v41 = 0;
      v66 += 8;
      v60 = (v63 + 32);
      v61 = (v63 + 48);
      v30 = (v39 + 56);
      v71 = MEMORY[0x277D84F90];
      v43 = v56;
      v42 = v57;
      v27 = v69;
      while (v41 < v40[2])
      {
        v44 = *(v30 - 1);
        v45 = *v30;
        v72 = *(v30 - 3);
        v73 = v44;
        v74 = v45;

        sub_26D22CAB4();
        sub_26D1D756C();
        sub_26D22E6B4();
        (*v66)(v27, v68);
        sub_26D22D644();

        if ((*v61)(v43, 1, v42) == 1)
        {
          LODWORD(v39) = sub_26D1B950C(v43, &qword_2804E0ED0, &qword_26D231AB8);
        }

        else
        {
          v46 = *v60;
          (*v60)(v67, v43, v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_26D22BB94(0, v71[2] + 1, 1, v71);
          }

          v48 = v71[2];
          v47 = v71[3];
          if (v48 >= v47 >> 1)
          {
            v71 = sub_26D22BB94(v47 > 1, v48 + 1, 1, v71);
          }

          v49 = v71;
          v71[2] = v48 + 1;
          LODWORD(v39) = (v46)(v49 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v48, v67, v42);
        }

        ++v41;
        v30 += 4;
        v35 = v75;
        v27 = v69;
        if (v62 == v41)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    v71 = MEMORY[0x277D84F90];
LABEL_17:

    v27 = v54;
    v41 = v58;
    v30 = v53;
    v31 = v52;
  }

  else
  {
    v71 = 0;
    v41 = v58;
  }

  sub_26D1CA694(0, 0, v30, v41);
  v50 = v59;
  if (v27)
  {

    return;
  }

  sub_26D1CA934(2u, 0, v30);
  sub_26D1CA934(3u, 0, v30);
  sub_26D1CA934(4u, 0, v30);
  v40 = v31;
  sub_26D1DB870(5u, v30, v50);
  LODWORD(v39) = sub_26D1CA934(6u, 0, v30);
LABEL_22:
  LODWORD(v69) = v39;
  sub_26D1CA934(7u, 0, v30);

  if (v27)
  {

    (*(v70 + 8))(v59, v35);
    sub_26D1B950C(v41, &qword_2804E08D8, &qword_26D2304F0);
  }

  else
  {
    sub_26D1DDD4C(8u, v55, v65);

    v51 = v65;
    sub_26D22D674();
  }
}

unint64_t sub_26D1ED0E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26D22E534();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26D22BBBC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_26D22BBBC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_26D22E514();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_26D22E474();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_26D22E474();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_26D22E534();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_26D22BBBC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26D22E534();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26D22BBBC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26D22BBBC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26D22E474();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_26D1ED4A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x277D84F90];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_26D22E684();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_26D22E664() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_26D22E664();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_26D22E694();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_26D22BBBC(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_26D22BBBC((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_26D22E664();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_26D22E694();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_26D22BBBC((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_26D22BBBC(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_26D22E694();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_26D22BBBC(0, 1, 1, MEMORY[0x277D84F90]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26D1ED8A8(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1EDB2C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26D22D744();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  KeyPath = swift_getKeyPath();
  v14 = a1;
  v15 = sub_26D1BAB90(KeyPath, v14);

  v16 = sub_26D1E7618(v15);
  if (v2)
  {

    return;
  }

  v17 = v16;

  if (!v17)
  {
    sub_26D1B7F48();
    swift_allocError();
    *v29 = xmmword_26D231AC0;
    *(v29 + 16) = 0;
    *(v29 + 24) = 1;
    swift_willThrow();
LABEL_27:

    return;
  }

  v44 = v10;
  v45 = v6;
  v46 = v5;
  v47 = a2;
  v48 = 0;
  v50 = v14;
  v18 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v19 = *&v17[v18];
  v51 = v19 >> 62;
  v52 = v12;
  if (v19 >> 62)
  {
LABEL_30:
    v20 = sub_26D22E814();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = v19 & 0xC000000000000001;
  v43 = v19 + 32;
  v49 = v17;

  v22 = 0;
  v17 = &unk_287E98FF8;
  while (v20 != v22)
  {
    if (v21)
    {
      v23 = MEMORY[0x26D6B6F50](v22, v19);
    }

    else
    {
      if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v23 = *(v19 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = *&v23[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v26 = *&v23[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v27 = sub_26D22E854();

    if (v27 < 4)
    {
      v20 = v22;
      break;
    }

    if (__OFADD__(v22++, 1))
    {
      goto LABEL_29;
    }
  }

  v30 = v52;
  if (!v51)
  {
    if (v20 != *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v20 == sub_26D22E814())
  {
LABEL_26:
    v41 = v49;

    sub_26D1B7F48();
    swift_allocError();
    *v42 = 0xD000000000000035;
    *(v42 + 8) = 0x800000026D23B970;
    *(v42 + 16) = 0;
    *(v42 + 24) = 1;
    swift_willThrow();

    v14 = v50;
    goto LABEL_27;
  }

LABEL_20:
  if (v21)
  {
    v31 = MEMORY[0x26D6B6F50](v20, v19);
LABEL_23:
    v32 = v31;
    v33 = *&v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v34 = *&v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v35 = sub_26D1F125C();

    if (v35 != 4)
    {
      v36 = v49;

      v38 = v44;
      v37 = v45;
      v39 = v46;
      (*(v45 + 104))(v44, **(&unk_279D955A0 + v35), v46);
      (*(v37 + 32))(v30, v38, v39);
      sub_26D22D734();
      v40 = v50;

      return;
    }

    goto LABEL_33;
  }

  if (v20 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v43 + 8 * v20);
    goto LABEL_23;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_26D1EDF7C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EE0, &qword_26D231B78);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v30 - v5;
  v6 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v34 = a1;
  v7 = *&a1[v6];
  v35 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_37:
    v8 = sub_26D22E814();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v7 & 0xC000000000000001;
  v32 = v7 + 32;

  v10 = 0;
  while (v8 != v10)
  {
    if (v9)
    {
      v11 = MEMORY[0x26D6B6F50](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    v14 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v13 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v15 = sub_26D22E854();

    if (v15 < 4)
    {
      v8 = v10;
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_36;
    }
  }

  if (!v35)
  {
    if (v8 != *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_24:

    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0xD000000000000035;
    *(v22 + 8) = 0x800000026D23B970;
    *(v22 + 16) = 0;
    *(v22 + 24) = 1;
    swift_willThrow();

    return;
  }

  if (v8 == sub_26D22E814())
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v9)
  {
    v17 = MEMORY[0x26D6B6F50](v8, v7);
  }

  else
  {
    if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v17 = *(v32 + 8 * v8);
  }

  v8 = v17;
  v19 = *&v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v18 = *&v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

  v20 = sub_26D1F12A8();
  if (v20 == 4)
  {
LABEL_40:

    __break(1u);
    return;
  }

  if (v20 > 1)
  {

    if (v20 == 2)
    {
      v21 = MEMORY[0x277CF28A0];
    }

    else
    {
      v21 = MEMORY[0x277CF2870];
    }
  }

  else if (v20)
  {
    v23 = v30;
    v24 = v33;
    sub_26D1EE3B4(v8, v30);

    if (v24)
    {
      return;
    }

    v25 = sub_26D22D7A4();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v23, 1, v25) != 1)
    {
      v27 = v31;
      (*(v26 + 32))(v31, v23, v25);
      v21 = MEMORY[0x277CF2860];
      goto LABEL_32;
    }

    sub_26D1B950C(v23, &qword_2804E0EE0, &qword_26D231B78);
    v21 = MEMORY[0x277CF2880];
  }

  else
  {

    v21 = MEMORY[0x277CF2890];
  }

  v27 = v31;
LABEL_32:
  v28 = *v21;
  v29 = sub_26D22D7B4();
  (*(*(v29 - 8) + 104))(v27, v28, v29);
}

void sub_26D1EE3B4(char *a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = sub_26D22D7A4();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - v8;
  MEMORY[0x28223BE20](v7);
  v37 = &v37 - v9;
  v10 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v44 = a1;
  v11 = *&a1[v10];
  v46 = v11 >> 62;
  if (v11 >> 62)
  {
LABEL_32:
    v12 = sub_26D22E814();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v11 & 0xC000000000000001;
  v40 = v11 + 32;

  v14 = 0;
  while (v12 != v14)
  {
    if (v13)
    {
      v15 = MEMORY[0x26D6B6F50](v14, v11);
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v15 = *(v11 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v18 = *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v19 = sub_26D22E854();

    if (v19 < 2)
    {
      v12 = v14;
      break;
    }

    if (__OFADD__(v14++, 1))
    {
      goto LABEL_31;
    }
  }

  if (v46)
  {
    if (v12 != sub_26D22E814())
    {
LABEL_16:
      if (v13)
      {
        v21 = MEMORY[0x26D6B6F50](v12, v11);
      }

      else
      {
        if (v12 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v21 = *(v40 + 8 * v12);
      }

      v12 = v21;
      v23 = *&v21[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v22 = *&v21[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

      v24 = sub_26D22E854();

      if (!v24)
      {

        v25 = v38;
        v32 = v45;
        sub_26D1EE990(v12, v38);

        if (v32)
        {
          return;
        }

        v27 = MEMORY[0x277CF2858];
        goto LABEL_27;
      }

      if (v24 == 1)
      {

        v25 = v39;
        v26 = v45;
        sub_26D1EEF9C(v12, v39);

        if (v26)
        {
          return;
        }

        v27 = MEMORY[0x277CF2840];
LABEL_27:
        v31 = v41;
        v33 = v42;
        (*(v41 + 104))(v25, *v27, v42);
        v34 = *(v31 + 32);
        v35 = v37;
        v34(v37, v25, v33);
        v36 = v43;
        v34(v43, v35, v33);
        v30 = v33;
        v29 = v36;
        v28 = 0;
        goto LABEL_28;
      }

LABEL_35:

      __break(1u);
      return;
    }
  }

  else if (v12 != *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  v28 = 1;
  v30 = v42;
  v29 = v43;
  v31 = v41;
LABEL_28:
  (*(v31 + 56))(v29, v28, 1, v30);
}

unint64_t sub_26D1EE790(char a1)
{
  result = 0x636572726F636E69;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6E6569736E617274;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
    case 11:
      result = 0x2D64696C61766E69;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void sub_26D1EE990(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26D22CF14();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v9 = *&a1[v8];
  v10 = v9 >> 62;
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v45 = *&a1[v8];
    }

    v11 = sub_26D22E814();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {

      v13 = MEMORY[0x26D6B6F50](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v12 = *(v9 + 32);

      v13 = v12;
    }

    v14 = v13;
    v15 = *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v16 = *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    sub_26D1F1340();

    v17 = v9 & 0xFFFFFFFFFFFFFF8;
    if (!v10)
    {
LABEL_8:
      if (*(v17 + 16))
      {
        goto LABEL_9;
      }

LABEL_16:

      sub_26D1B7F48();
      swift_allocError();
      *v25 = 0xD000000000000045;
      *(v25 + 8) = 0x800000026D23B9B0;
      *(v25 + 16) = 0;
      *(v25 + 24) = 1;
      swift_willThrow();

      return;
    }
  }

  else
  {

    v17 = v9 & 0xFFFFFFFFFFFFFF8;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (!sub_26D22E814())
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v9 + 32);
      goto LABEL_12;
    }

LABEL_50:
    __break(1u);
    JUMPOUT(0x26D1EEF64);
  }

  v18 = MEMORY[0x26D6B6F50](0, v9);
LABEL_12:
  v19 = v18;
  v20 = *&v18[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v21 = *&v18[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

  v22 = sub_26D1F1340();

  if (v22 == 14)
  {
    v23 = *MEMORY[0x277CF2838];
    v24 = sub_26D22D794();
    (*(*(v24 - 8) + 104))(a2, v23, v24);
  }

  else
  {
    v26 = sub_26D22D794();
    switch(v22)
    {
      case 1:
        v27 = MEMORY[0x277CF2790];
        break;
      case 2:
        v27 = MEMORY[0x277CF2828];
        break;
      case 3:
        v27 = MEMORY[0x277CF27E0];
        break;
      case 4:
        v27 = MEMORY[0x277CF2808];
        break;
      case 5:
        v27 = MEMORY[0x277CF27D8];
        break;
      case 6:
        v27 = MEMORY[0x277CF27B0];
        break;
      case 7:
        v27 = MEMORY[0x277CF27A8];
        break;
      case 8:
        v27 = MEMORY[0x277CF27F0];
        break;
      case 9:
        v27 = MEMORY[0x277CF2780];
        break;
      case 10:
        v27 = MEMORY[0x277CF27C0];
        break;
      case 11:
        v27 = MEMORY[0x277CF2778];
        break;
      case 12:
        v27 = MEMORY[0x277CF2818];
        break;
      case 13:
        v27 = MEMORY[0x277CF2750];
        break;
      default:
        v27 = MEMORY[0x277CF2760];
        break;
    }

    (*(*(v26 - 8) + 104))(a2, *v27, v26);
  }

  v28 = *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  if (!*(v28 + 16))
  {
    goto LABEL_39;
  }

  v29 = *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];

  v30 = sub_26D1BDEEC(0x6F73616572627573, 0xEE00747865742D6ELL);
  if ((v31 & 1) == 0)
  {

LABEL_39:

    return;
  }

  v32 = (*(v28 + 56) + 16 * v30);
  v33 = *v32;
  v34 = v32[1];

  sub_26D22DA24();

  v35 = sub_26D22CEF4();
  v36 = sub_26D22E5F4();

  if (os_log_type_enabled(v35, v36))
  {
    v47 = v36;
    v48 = v33;
    v37 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v37 = 136315394;
    if (v22 == 14)
    {
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v38 = sub_26D1EE790(v22);
    }

    v51 = v38;
    v52 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EE8, qword_26D231B80);
    v40 = sub_26D22E414();
    v42 = sub_26D1E9B10(v40, v41, &v53);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = sub_26D1E9B10(v48, v34, &v53);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_26D1AF000, v35, v47, "IMDispositionNotification.DeliveryNotification.MlsServerFailureReason %s subreason-text: %s", v37, 0x16u);
    v44 = v46;
    swift_arrayDestroy();
    MEMORY[0x26D6B7800](v44, -1, -1);
    MEMORY[0x26D6B7800](v37, -1, -1);
  }

  else
  {
  }

  (*(v49 + 8))(v7, v50);
}

void sub_26D1EEF9C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v23 = a1;
  v4 = *&a1[v3];
  if (v4 >> 62)
  {
LABEL_37:
    v5 = sub_26D22E814();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v4 & 0xC000000000000001;

  v7 = 0;
  while (v5 != v7)
  {
    if (v6)
    {
      v8 = MEMORY[0x26D6B6F50](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = *&v8[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v11 = *&v8[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v12 = sub_26D22E854();

    if (v12 < 6)
    {
      v5 = v7;
      break;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_36;
    }
  }

  if (!(v4 >> 62))
  {
    if (v5 != *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_25:

    sub_26D1B7F48();
    swift_allocError();
    *v21 = 0xD000000000000045;
    *(v21 + 8) = 0x800000026D23BA00;
    *(v21 + 16) = 0;
    *(v21 + 24) = 1;
    swift_willThrow();

    return;
  }

  if (v5 == sub_26D22E814())
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v6)
  {
    v14 = MEMORY[0x26D6B6F50](v5, v4);
  }

  else
  {
    if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v14 = *(v4 + 32 + 8 * v5);
  }

  v15 = v14;
  v17 = *&v14[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v16 = *&v14[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

  v18 = sub_26D1F12F4();

  if (v18 == 6)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v19 = sub_26D22D784();
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v20 = MEMORY[0x277CF2700];
    }

    else if (v18 == 4)
    {
      v20 = MEMORY[0x277CF2738];
    }

    else
    {
      v20 = MEMORY[0x277CF2748];
    }
  }

  else if (v18)
  {
    if (v18 == 1)
    {
      v20 = MEMORY[0x277CF2718];
    }

    else
    {
      v20 = MEMORY[0x277CF26F8];
    }
  }

  else
  {
    v20 = MEMORY[0x277CF2720];
  }

  (*(*(v19 - 8) + 104))(a2, *v20, v19);
}

void sub_26D1EF2B8(void *a1)
{
  v3 = sub_26D22D7B4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v8 = a1;
  v9 = sub_26D1BABE0(KeyPath, v8);

  v10 = sub_26D1E7618(v9);
  if (v1)
  {
  }

  else
  {
    v11 = v10;

    if (v11)
    {
      v12 = v11;
      sub_26D1EDF7C(v12, v6);
      sub_26D22D774();
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v13 = xmmword_26D231AC0;
      *(v13 + 16) = 0;
      *(v13 + 24) = 1;
      swift_willThrow();
    }
  }
}

void sub_26D1EF454(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26D22D764();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  KeyPath = swift_getKeyPath();
  v14 = a1;
  v15 = sub_26D1BABB8(KeyPath, v14);

  v16 = sub_26D1E7618(v15);
  if (v2)
  {

    return;
  }

  v17 = v16;

  if (!v17)
  {
    sub_26D1B7F48();
    swift_allocError();
    *v29 = xmmword_26D231AC0;
    *(v29 + 16) = 0;
    *(v29 + 24) = 1;
    swift_willThrow();
LABEL_27:

    return;
  }

  v44 = v10;
  v45 = v6;
  v46 = v5;
  v47 = a2;
  v48 = 0;
  v49 = v14;
  v18 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v19 = *&v17[v18];
  v51 = v19 >> 62;
  v52 = v12;
  if (v19 >> 62)
  {
LABEL_30:
    v20 = sub_26D22E814();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = v19 & 0xC000000000000001;
  v43 = v19 + 32;
  v50 = v17;

  v22 = 0;
  v17 = &unk_287E98F10;
  while (v20 != v22)
  {
    if (v21)
    {
      v23 = MEMORY[0x26D6B6F50](v22, v19);
    }

    else
    {
      if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v23 = *(v19 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = *&v23[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v26 = *&v23[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v27 = sub_26D22E854();

    if (v27 < 3)
    {
      v20 = v22;
      break;
    }

    if (__OFADD__(v22++, 1))
    {
      goto LABEL_29;
    }
  }

  v30 = v52;
  if (!v51)
  {
    if (v20 != *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v20 == sub_26D22E814())
  {
LABEL_26:
    v41 = v50;

    sub_26D1B7F48();
    swift_allocError();
    *v42 = 0xD000000000000034;
    *(v42 + 8) = 0x800000026D23BA50;
    *(v42 + 16) = 0;
    *(v42 + 24) = 1;
    swift_willThrow();

    v14 = v49;
    goto LABEL_27;
  }

LABEL_20:
  if (v21)
  {
    v31 = MEMORY[0x26D6B6F50](v20, v19);
LABEL_23:
    v32 = v31;
    v33 = *&v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v34 = *&v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v35 = sub_26D22E854();
    v36 = v50;

    if (v35 < 3)
    {
      v38 = v44;
      v37 = v45;
      v39 = v46;
      (*(v45 + 104))(v44, **(&unk_279D955C0 + v35), v46);
      (*(v37 + 32))(v30, v38, v39);
      sub_26D22D754();
      v40 = v49;

      return;
    }

    goto LABEL_33;
  }

  if (v20 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v43 + 8 * v20);
    goto LABEL_23;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_26D1EF8C4()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1EF914()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

void sub_26D1EF96C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26D22D714();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  KeyPath = swift_getKeyPath();
  v14 = a1;
  v15 = sub_26D1BAB68(KeyPath, v14);

  v16 = sub_26D1E7618(v15);
  if (v2)
  {

    return;
  }

  v17 = v16;

  if (!v17)
  {
    sub_26D1B7F48();
    swift_allocError();
    *v29 = xmmword_26D231AC0;
    *(v29 + 16) = 0;
    *(v29 + 24) = 1;
    swift_willThrow();
LABEL_27:

    return;
  }

  v44 = v10;
  v45 = v6;
  v46 = v5;
  v47 = a2;
  v48 = 0;
  v50 = v14;
  v18 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v19 = *&v17[v18];
  v51 = v19 >> 62;
  v52 = v12;
  if (v19 >> 62)
  {
LABEL_30:
    v20 = sub_26D22E814();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = v19 & 0xC000000000000001;
  v43 = v19 + 32;
  v49 = v17;

  v22 = 0;
  v17 = &unk_287E98F78;
  while (v20 != v22)
  {
    if (v21)
    {
      v23 = MEMORY[0x26D6B6F50](v22, v19);
    }

    else
    {
      if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v23 = *(v19 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = *&v23[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v26 = *&v23[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v27 = sub_26D22E854();

    if (v27 < 4)
    {
      v20 = v22;
      break;
    }

    if (__OFADD__(v22++, 1))
    {
      goto LABEL_29;
    }
  }

  v30 = v52;
  if (!v51)
  {
    if (v20 != *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v20 == sub_26D22E814())
  {
LABEL_26:
    v41 = v49;

    sub_26D1B7F48();
    swift_allocError();
    *v42 = 0xD000000000000043;
    *(v42 + 8) = 0x800000026D23BA90;
    *(v42 + 16) = 0;
    *(v42 + 24) = 1;
    swift_willThrow();

    v14 = v50;
    goto LABEL_27;
  }

LABEL_20:
  if (v21)
  {
    v31 = MEMORY[0x26D6B6F50](v20, v19);
LABEL_23:
    v32 = v31;
    v33 = *&v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v34 = *&v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v35 = sub_26D1F11C4();

    if (v35 != 4)
    {
      v36 = v49;

      v38 = v44;
      v37 = v45;
      v39 = v46;
      (*(v45 + 104))(v44, **(&unk_279D955D8 + v35), v46);
      (*(v37 + 32))(v30, v38, v39);
      sub_26D22D704();
      v40 = v50;

      return;
    }

    goto LABEL_33;
  }

  if (v20 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v43 + 8 * v20);
    goto LABEL_23;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_26D1EFDD8(char *a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v3 = sub_26D22D724();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v58 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  MEMORY[0x28223BE20](v11);
  v62 = &v58 - v14;
  v15 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v67 = a1;
  v16 = *&a1[v15];
  v69 = v16 >> 62;
  v61 = v13;
  if (v16 >> 62)
  {
LABEL_61:
    v17 = sub_26D22E814();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v16 & 0xC000000000000001;
  v63 = v16 + 32;

  v19 = 0;
  v20 = &unk_287E99078;
  while (v17 != v19)
  {
    if (v18)
    {
      v21 = MEMORY[0x26D6B6F50](v19, v16);
    }

    else
    {
      if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v21 = *(v16 + 8 * v19 + 32);
    }

    v22 = v21;
    v24 = *&v21[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v23 = *&v21[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v25 = sub_26D22E854();

    if (v25 < 4)
    {
      v17 = v19;
      break;
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_60;
    }
  }

  if (v69)
  {
    if (v17 != sub_26D22E814())
    {
LABEL_16:
      if (v18)
      {
        v27 = MEMORY[0x26D6B6F50](v17, v16);
      }

      else
      {
        if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_64;
        }

        v27 = *(v63 + 8 * v17);
      }

      v20 = v27;
      v28 = &v27[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v30 = *&v27[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v29 = *&v27[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

      v31 = sub_26D1F1210();
      v32 = v68;
      if (v31 != 4)
      {

        v33 = *v28;
        v34 = *(v28 + 1);
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            v44 = v33 == 0xD000000000000017 && 0x800000026D23A300 == v34;
            if (v44 || (v45 = *v28, v46 = *(v28 + 1), (sub_26D22E964() & 1) != 0))
            {
              v38 = v59;
              sub_26D1EF96C(v20, v59);

              if (v32)
              {
                return;
              }

              v39 = MEMORY[0x277CF2678];
              goto LABEL_56;
            }
          }

          else
          {
            v50 = v33 == 0xD000000000000019 && 0x800000026D23A320 == v34;
            if (v50 || (v51 = *v28, v52 = *(v28 + 1), (sub_26D22E964() & 1) != 0))
            {
              v38 = v60;
              sub_26D1EDB2C(v20, v60);
              if (!v32)
              {

                v39 = MEMORY[0x277CF2688];
LABEL_56:
                v43 = v64;
                v54 = v65;
                (*(v64 + 104))(v38, *v39, v65);
                v55 = *(v43 + 32);
                v56 = v62;
                v55(v62, v38, v54);
                v57 = v66;
                v55(v66, v56, v54);
                v42 = v54;
                v41 = v57;
                v40 = 0;
                goto LABEL_57;
              }

              v20 = v67;
LABEL_54:

              return;
            }
          }
        }

        else if (v31)
        {
          v47 = v33 == 0xD000000000000014 && 0x800000026D23A2E0 == v34;
          if (v47 || (v48 = *v28, v49 = *(v28 + 1), (sub_26D22E964() & 1) != 0))
          {
            v38 = v58;
            sub_26D1EF454(v20, v58);

            if (v32)
            {
              return;
            }

            v39 = MEMORY[0x277CF26A0];
            goto LABEL_56;
          }
        }

        else
        {
          v35 = v33 == 0xD000000000000015 && 0x800000026D23A2C0 == v34;
          if (v35 || (v36 = *v28, v37 = *(v28 + 1), (sub_26D22E964() & 1) != 0))
          {
            v38 = v61;
            sub_26D1EF2B8(v20);

            if (v32)
            {
              return;
            }

            v39 = MEMORY[0x277CF26B0];
            goto LABEL_56;
          }
        }

        sub_26D1B7F48();
        swift_allocError();
        *v53 = v33;
        *(v53 + 8) = v34;
        *(v53 + 16) = 0;
        *(v53 + 24) = 0;
        swift_willThrow();

        goto LABEL_54;
      }

LABEL_64:

      __break(1u);
      return;
    }
  }

  else if (v17 != *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  v40 = 1;
  v42 = v65;
  v41 = v66;
  v43 = v64;
LABEL_57:
  (*(v43 + 56))(v41, v40, 1, v42);
}

uint64_t sub_26D1F03BC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F0494()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F0558()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F062C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1F138C();
  *a2 = result;
  return result;
}

void sub_26D1F065C(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006469;
  v3 = 0x2D6567617373656DLL;
  v4 = 0xED00006972752D74;
  v5 = 0x6E65697069636572;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x800000026D23A5F0;
  }

  if (*v1)
  {
    v3 = 0x656D697465746164;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_26D1F06F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0ED8, &unk_26D231B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v79 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v79 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v79 - v15;
  v17 = sub_26D22CE34();
  v91 = *(v17 - 8);
  v18 = *(v91 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v79 - v25;
  KeyPath = swift_getKeyPath();
  v28 = a1;
  v29 = sub_26D1BACA8(KeyPath, v28);

  v30 = sub_26D1DFEB4(0, v29);
  if (v2)
  {

    return;
  }

  v31 = v30;
  v83 = v24;
  v85 = v21;
  v86 = v29;
  v82 = v16;
  v84 = v26;
  if (!v30)
  {

    sub_26D1B7F48();
    swift_allocError();
    v38 = xmmword_26D231AE0;
LABEL_7:
    *v37 = v38;
    *(v37 + 16) = 0;
    *(v37 + 24) = 1;
    swift_willThrow();
LABEL_9:

    return;
  }

  v81 = v17;
  v32 = &v30[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v33 = *(v32 + 1);
  if (!v33)
  {

    sub_26D1B7F48();
    swift_allocError();
    v39 = MEMORY[0x277D837D0];
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    *v40 = v39;
    *(v40 + 24) = 5;
    swift_willThrow();

    goto LABEL_9;
  }

  v34 = *v32;
  v35 = *(v32 + 1);

  v36 = sub_26D1DFEB4(1u, v86);
  if (!v36)
  {

    sub_26D1B7F48();
    swift_allocError();
    v38 = xmmword_26D231AD0;
    goto LABEL_7;
  }

  v41 = v36;
  v42 = &v36[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v43 = v42[1];
  if (!v43)
  {

    sub_26D1B7F48();
    swift_allocError();
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    *v46 = v81;
    *(v46 + 24) = 5;
    swift_willThrow();

    goto LABEL_9;
  }

  v44 = *v42;

  v45 = v85;
  sub_26D1BCF54(v44, v43, v85);

  v47 = *(v91 + 32);
  v48 = v83;
  v49 = v45;
  v50 = v81;
  v47(v83, v49, v81);
  v47(v84, v48, v50);
  v51 = v86;
  v52 = sub_26D1DFEB4(2u, v86);
  v79 = v34;
  v85 = 0;
  if (!v52)
  {
    v83 = v33;
LABEL_21:
    v60 = sub_26D22CCE4();
    v61 = v82;
    (*(*(v60 - 8) + 56))(v82, 1, 1, v60);
    v62 = v28;
    goto LABEL_23;
  }

  v80 = v52;
  v53 = &v52[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v54 = *(v53 + 1);
  if (!v54)
  {
    v83 = v33;

    goto LABEL_21;
  }

  v55 = *v53;

  v56 = v89;
  sub_26D22CCD4();
  v57 = sub_26D22CCE4();
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v56, 1, v57) == 1)
  {

    (*(v91 + 8))(v84, v81);
    sub_26D1B950C(v56, &qword_2804E0890, &qword_26D230770);
    sub_26D1B7F48();
    swift_allocError();
    *v59 = v55;
    *(v59 + 8) = v54;
    *(v59 + 16) = 0;
    *(v59 + 24) = 4;
    swift_willThrow();

    goto LABEL_9;
  }

  v83 = v33;

  v61 = v82;
  (*(v58 + 32))(v82, v56, v57);
  (*(v58 + 56))(v61, 0, 1, v57);
  v62 = v28;
  v51 = v86;
LABEL_23:
  v63 = v85;
  v64 = sub_26D1DFEB4(3u, v51);
  v65 = v81;
  v66 = v90;
  if (!v63)
  {
    v67 = v64;

    if (v67)
    {
      v68 = &v67[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      v69 = *(v68 + 1);
      if (v69)
      {
        v70 = *v68;
        v71 = *(v68 + 1);

        v72 = v87;
        v89 = v70;
        sub_26D22CCD4();
        v73 = sub_26D22CCE4();
        v74 = *(v73 - 8);
        if ((*(v74 + 48))(v72, 1, v73) == 1)
        {

          sub_26D1B950C(v82, &qword_2804E0890, &qword_26D230770);
          (*(v91 + 8))(v84, v65);
          sub_26D1B950C(v87, &qword_2804E0890, &qword_26D230770);
          sub_26D1B7F48();
          swift_allocError();
          *v75 = v89;
          *(v75 + 8) = v69;
          *(v75 + 16) = 0;
          *(v75 + 24) = 4;
          swift_willThrow();

          goto LABEL_9;
        }

        v78 = v90;
        (*(v74 + 32))(v90, v87, v73);
        (*(v74 + 56))(v78, 0, 1, v73);
        v62 = v28;
      }

      else
      {

        v77 = sub_26D22CCE4();
        (*(*(v77 - 8) + 56))(v90, 1, 1, v77);
      }
    }

    else
    {
      v76 = sub_26D22CCE4();
      (*(*(v76 - 8) + 56))(v66, 1, 1, v76);
    }

    v28 = v62;
    sub_26D1EFDD8(v28, v88);
    sub_26D22D7C4();
    goto LABEL_9;
  }

  sub_26D1B950C(v61, &qword_2804E0890, &qword_26D230770);
  (*(v91 + 8))(v84, v65);
}

uint64_t sub_26D1F11C4()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1F1210()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1F125C()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1F12A8()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1F12F4()
{
  v0 = sub_26D22E854();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1F1340()
{
  v0 = sub_26D22E854();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1F138C()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t _s13XMLCodingKeysOwet_3(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13XMLCodingKeysOwst_3(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D1F156C()
{
  result = qword_2804E0EF0;
  if (!qword_2804E0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0EF0);
  }

  return result;
}

unint64_t sub_26D1F15C4()
{
  result = qword_2804E0EF8;
  if (!qword_2804E0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0EF8);
  }

  return result;
}

unint64_t sub_26D1F161C()
{
  result = qword_2804E0F00;
  if (!qword_2804E0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F00);
  }

  return result;
}

unint64_t sub_26D1F1674()
{
  result = qword_2804E0F08;
  if (!qword_2804E0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F08);
  }

  return result;
}

unint64_t sub_26D1F16CC()
{
  result = qword_2804E0F10;
  if (!qword_2804E0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F10);
  }

  return result;
}

uint64_t sub_26D1F173C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F1808()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F18C0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F1988@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1F21CC();
  *a2 = result;
  return result;
}

void sub_26D1F19B8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6574617473;
  v4 = 0xEB00000000657079;
  v5 = 0x74746E65746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x68736572666572;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x697463617473616CLL;
    v2 = 0xEA00000000006576;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_26D1F1A40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_26D22CE34();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v59 - v9;
  v11 = sub_26D22D694();
  v69 = *(v11 - 8);
  v12 = v69[8];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v59 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  KeyPath = swift_getKeyPath();
  v22 = a1;
  v23 = sub_26D1BAB40(KeyPath, v22);

  v24 = v70;
  v25 = sub_26D1DF190(0, v23);
  if (v24)
  {

    goto LABEL_3;
  }

  v64 = v18;
  v65 = v15;
  v60 = v6;
  v70 = v23;
  v61 = v10;
  v26 = v69;
  v63 = v20;
  if (!v25)
  {

    sub_26D1B7F48();
    swift_allocError();
    *v35 = xmmword_26D231F20;
    *(v35 + 16) = 0;
    *(v35 + 24) = 1;
    swift_willThrow();
    goto LABEL_3;
  }

  v62 = v11;
  v27 = &v25[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  v28 = v25;
  swift_beginAccess();
  if (!*(v27 + 1))
  {

    sub_26D1B7F48();
    swift_allocError();
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *v36 = v62;
    v37 = 5;
    goto LABEL_14;
  }

  v29 = *v27;
  v30 = *(v27 + 1);

  v31 = sub_26D22E854();

  if (v31)
  {
    v33 = v64;
    v32 = v65;
    if (v31 == 1)
    {
      v34 = MEMORY[0x277CF2568];
      goto LABEL_12;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v36 = 0xD00000000000001DLL;
    *(v36 + 8) = 0x800000026D23BAE0;
    *(v36 + 16) = 0;
    v37 = 1;
LABEL_14:
    *(v36 + 24) = v37;
    swift_willThrow();

    goto LABEL_3;
  }

  v34 = MEMORY[0x277CF2558];
  v33 = v64;
  v32 = v65;
LABEL_12:

  v38 = v62;
  (v26[13])(v32, *v34, v62);
  v39 = v26[4];
  v39(v33, v32, v38);
  v39(v63, v33, v38);
  v40 = v70;
  v41 = sub_26D1DF190(1u, v70);
  if (v41)
  {
    v69 = v41;
    v42 = (v41 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text);
    swift_beginAccess();
    v43 = v42[1];
    v45 = v67;
    v44 = v68;
    if (v43)
    {
      v46 = *v42;

      v47 = v60;
      sub_26D1BCF54(v46, v43, v60);

      v48 = v61;
      (*(v45 + 32))(v61, v47, v44);
      v49 = 0;
    }

    else
    {

      v49 = 1;
      v48 = v61;
    }

    v40 = v70;
  }

  else
  {
    v49 = 1;
    v48 = v61;
    v45 = v67;
    v44 = v68;
  }

  (*(v45 + 56))(v48, v49, 1, v44);
  v50 = sub_26D1DF190(2u, v40);
  if (v50)
  {
    v51 = &v50[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    v52 = v50;
    swift_beginAccess();
    v53 = *v51;
    v54 = *(v51 + 1);
  }

  v55 = sub_26D1DF190(3u, v70);

  if (v55)
  {
    v56 = &v55[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    swift_beginAccess();
    v57 = v56[1];
    if (v57)
    {
      v58 = *v56;

      sub_26D1BA284(v58, v57);
    }
  }

  sub_26D22D684();
LABEL_3:
}

uint64_t sub_26D1F2164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D1F21CC()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26D1F222C()
{
  result = qword_2804E0F18;
  if (!qword_2804E0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F18);
  }

  return result;
}

uint64_t sub_26D1F2280(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26D22E8A4();
  if (!v3)
  {
    if (v5)
    {
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v6)
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26D1F2300@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1188, &unk_26D232158);
  if (sub_26D22E924())
  {
    result = sub_26D22E934();
    if (!v1)
    {
      v4 = result;
      v5 = sub_26D22DEF4();
      v6 = v5;
      if (v4)
      {
        return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
      }

      else
      {
        sub_26D1FD028(&qword_2804E1360, MEMORY[0x277CF2D78]);
        sub_26D22E884();
        return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
      }
    }
  }

  else
  {
    v7 = sub_26D22DEF4();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  return result;
}

uint64_t sub_26D1F2484@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v38 = a4;
  v41 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v34 - v13;
  v15 = sub_26D22CAD4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v39) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26D22E8A4();
  if (!v7)
  {
    v36 = v14;
    v35 = a1;
    v22 = v41;
    if (v21)
    {
      v34[2] = 0;
      v23 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v23 = result & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        v34[1] = v6;
        v39 = result;
        v40 = v21;
        sub_26D22CAB4();
        sub_26D1B1F48();
        sub_26D22E6B4();
        (*(v16 + 8))(v19, v15);

        v24 = v36;
        sub_26D22CCD4();

        v25 = sub_26D22CCE4();
        v26 = *(v25 - 8);
        if ((*(v26 + 48))(v24, 1, v25) == 1)
        {
          sub_26D1B950C(v24, &qword_2804E0890, &qword_26D230770);
          v27 = sub_26D22E794();
          swift_allocError();
          v29 = v28;
          v30 = sub_26D22E894();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26D22F360;
          v32 = v37;
          *(inited + 56) = v38;
          *(inited + 64) = v32();
          *(inited + 32) = v35;
          v39 = v30;
          sub_26D223EA4(inited);
          sub_26D22E784();
          (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84168], v27);
          return swift_willThrow();
        }

        else
        {
          (*(v26 + 32))(v22, v24, v25);
          return (*(v26 + 56))(v22, 0, 1, v25);
        }
      }
    }

    v33 = sub_26D22CCE4();
    return (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  }

  return result;
}

uint64_t sub_26D1F287C@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = sub_26D22CCE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26D1F2484(a1, &qword_2804E1110, &unk_26D232118, &_s21DecodingConfigurationV10CodingKeysON_3, sub_26D1FB5E4, v8);
  if (!v2)
  {
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_26D1B950C(v8, &qword_2804E0890, &qword_26D230770);
    }

    else
    {
      v15 = *(v10 + 32);
      v15(v13, v8, v9);
      sub_26D22CCC4();
      if (v16)
      {

        v15(a2, v13, v9);
        v17 = 0;
        return (*(v10 + 56))(a2, v17, 1, v9);
      }

      (*(v10 + 8))(v13, v9);
    }

    v17 = 1;
    return (*(v10 + 56))(a2, v17, 1, v9);
  }

  return result;
}

uint64_t sub_26D1F2AA8()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E0F20);
  __swift_project_value_buffer(v0, qword_2804E0F20);
  return sub_26D22CF04();
}

uint64_t sub_26D1F2BAC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D1F2C04(uint64_t a1)
{
  v2 = sub_26D1F2EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F2C40(uint64_t a1)
{
  v2 = sub_26D1F2EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.TelephoneNumber.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_26D22DCC4();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F38, &qword_26D232050);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1F2EA8();
  v13 = v18;
  sub_26D22EA24();
  if (!v13)
  {
    v14 = v17;
    v18 = v3;
    sub_26D22E8A4();
    sub_26D22DCB4();
    (*(v8 + 8))(v11, v7);
    (*(v14 + 32))(v16, v6, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D1F2EA8()
{
  result = qword_2804E0F40;
  if (!qword_2804E0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F40);
  }

  return result;
}

uint64_t sub_26D1F2F14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x626E2D6C6574;
  if (v2 != 1)
  {
    v4 = 0x657079742D6C6574;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x626E2D6C6574;
  if (*a2 != 1)
  {
    v8 = 0x657079742D6C6574;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1F300C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F30A8()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F3130()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F31C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1FCE60();
  *a2 = result;
  return result;
}

void sub_26D1F31F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x626E2D6C6574;
  if (v2 != 1)
  {
    v5 = 0x657079742D6C6574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D1F3250()
{
  v1 = 0x626E2D6C6574;
  if (*v0 != 1)
  {
    v1 = 0x657079742D6C6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_26D1F32A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D1FCE60();
  *a1 = result;
  return result;
}

uint64_t sub_26D1F32D8(uint64_t a1)
{
  v2 = sub_26D1F36E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F3314(uint64_t a1)
{
  v2 = sub_26D1F36E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.TelephoneInfo.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_26D22DCC4();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_26D22DC34();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F48, &qword_26D232058);
  v9 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v17 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_26D1F36E4();
  v14 = v23;
  sub_26D22EA24();
  if (!v14)
  {
    v23 = v8;
    v18 = v5;
    v27 = 0;
    v17 = sub_26D22E8D4();
    v26 = 1;
    sub_26D1FD028(&qword_2804E0F58, MEMORY[0x277CF2C78]);
    sub_26D22E884();
    v25 = 2;
    sub_26D22E8D4();
    v16 = v23;
    sub_26D22DC24();
    MEMORY[8](v11, v22);
    (*(v19 + 32))(v20, v16, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t sub_26D1F36E4()
{
  result = qword_2804E0F50;
  if (!qword_2804E0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F50);
  }

  return result;
}

uint64_t sub_26D1F3750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xED0000657079742DLL;
  v4 = 0x6C6562616CLL;
  if (v2 == 1)
  {
    v4 = 0x6972752D72646461;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6972752D72646461;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xED0000657079742DLL;
  v8 = 0x6C6562616CLL;
  if (*a2 == 1)
  {
    v8 = 0x6972752D72646461;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6972752D72646461;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1F3844()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F38E0()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F3968()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F3A00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1FCFDC();
  *a2 = result;
  return result;
}

void sub_26D1F3A30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xED0000657079742DLL;
  v5 = 0x6972752D72646461;
  if (v2 != 1)
  {
    v5 = 0x6C6562616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6972752D72646461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D1F3A98()
{
  v1 = 0x6C6562616CLL;
  if (*v0 == 1)
  {
    v1 = 0x6972752D72646461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6972752D72646461;
  }
}

uint64_t sub_26D1F3AEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D1FCFDC();
  *a1 = result;
  return result;
}

uint64_t sub_26D1F3B14(uint64_t a1)
{
  v2 = sub_26D1F3FC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F3B50(uint64_t a1)
{
  v2 = sub_26D1F3FC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.URIEntry.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_26D22E064();
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D22E074();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_26D22E084();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F60, &qword_26D232060);
  v12 = *(v31 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v31);
  v15 = v22 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_26D1F3FC8();
  sub_26D22EA24();
  if (!v2)
  {
    v23 = v8;
    v24 = v11;
    v18 = v12;
    v35 = 0;
    v22[0] = sub_26D22E8D4();
    v22[1] = v19;
    v34 = 1;
    sub_26D1FD028(&qword_2804E0F70, MEMORY[0x277CF2F20]);
    sub_26D22E914();
    v33 = 2;
    sub_26D1FD028(&qword_2804E0F78, MEMORY[0x277CF2F00]);
    sub_26D22E914();
    v20 = v24;
    sub_26D22E054();
    (*(v18 + 8))(v15, v31);
    (*(v25 + 32))(v26, v20, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

unint64_t sub_26D1F3FC8()
{
  result = qword_2804E0F68;
  if (!qword_2804E0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F68);
  }

  return result;
}

uint64_t sub_26D1F4034(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72746E652D697275;
  }

  else
  {
    v4 = 7103860;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE900000000000079;
  }

  if (*a2)
  {
    v6 = 0x72746E652D697275;
  }

  else
  {
    v6 = 7103860;
  }

  if (*a2)
  {
    v7 = 0xE900000000000079;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1F40D8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F4158()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F41C4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F424C(uint64_t *a1@<X8>)
{
  v2 = 7103860;
  if (*v1)
  {
    v2 = 0x72746E652D697275;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000079;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F4288()
{
  if (*v0)
  {
    result = 0x72746E652D697275;
  }

  else
  {
    result = 7103860;
  }

  *v0;
  return result;
}

uint64_t sub_26D1F42D8(uint64_t a1)
{
  v2 = sub_26D1F46A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F4314(uint64_t a1)
{
  v2 = sub_26D1F46A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.CommunicationAddress.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_26D22DC34();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22DDA4();
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F80, &qword_26D232068);
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v23);
  v14 = &v18 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_26D1F46A8();
  sub_26D22EA24();
  if (!v2)
  {
    v18 = v7;
    v26 = 0;
    sub_26D1FD028(&qword_2804E0F90, MEMORY[0x277CF2C10]);
    sub_26D22E884();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F98, &unk_26D232070);
    v25 = 1;
    sub_26D1F46FC();
    sub_26D22E884();
    sub_26D22DD94();
    (*(v11 + 8))(v14, v23);
    (*(v20 + 32))(v19, v10, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t sub_26D1F46A8()
{
  result = qword_2804E0F88;
  if (!qword_2804E0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F88);
  }

  return result;
}

unint64_t sub_26D1F46FC()
{
  result = qword_2804E0FA0;
  if (!qword_2804E0FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E0F98, &unk_26D232070);
    sub_26D1FD028(&qword_2804E0FA8, MEMORY[0x277CF2F30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0FA0);
  }

  return result;
}

uint64_t sub_26D1F47C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72707265676E6966;
  }

  else
  {
    v4 = 0x72752D616964656DLL;
  }

  if (v3)
  {
    v5 = 0xE90000000000006CLL;
  }

  else
  {
    v5 = 0xEB00000000746E69;
  }

  if (*a2)
  {
    v6 = 0x72707265676E6966;
  }

  else
  {
    v6 = 0x72752D616964656DLL;
  }

  if (*a2)
  {
    v7 = 0xEB00000000746E69;
  }

  else
  {
    v7 = 0xE90000000000006CLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1F487C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F490C()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F4988()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F4A20(uint64_t *a1@<X8>)
{
  v2 = 0x72752D616964656DLL;
  if (*v1)
  {
    v2 = 0x72707265676E6966;
  }

  v3 = 0xE90000000000006CLL;
  if (*v1)
  {
    v3 = 0xEB00000000746E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F4A6C()
{
  if (*v0)
  {
    result = 0x72707265676E6966;
  }

  else
  {
    result = 0x72752D616964656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_26D1F4AC0(uint64_t a1)
{
  v2 = sub_26D1F4E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F4AFC(uint64_t a1)
{
  v2 = sub_26D1F4E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Media.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v20 - v6;
  v7 = sub_26D22DF14();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0FB0, &qword_26D232080);
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25);
  v14 = &v20 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1F4E58();
  sub_26D22EA24();
  if (!v2)
  {
    v16 = v10;
    v21 = v7;
    v17 = v23;
    sub_26D22CCE4();
    v27 = 0;
    sub_26D1FD028(&qword_2804E0FC0, MEMORY[0x277CC9260]);
    v18 = v25;
    sub_26D22E8C4();
    v26 = 1;
    sub_26D22E8A4();
    sub_26D22DF04();
    (*(v11 + 8))(v14, v18);
    (*(v22 + 32))(v17, v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D1F4E58()
{
  result = qword_2804E0FB8;
  if (!qword_2804E0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0FB8);
  }

  return result;
}

uint64_t sub_26D1F4EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x616964656DLL;
  if (v2 != 1)
  {
    v5 = 0x6F632D616964656DLL;
    v4 = 0xED0000746E65746ELL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x616964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x6F632D616964656DLL;
    v3 = 0xED0000746E65746ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1F4FD0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F5078()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F510C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F51B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1FCE14();
  *a2 = result;
  return result;
}

void sub_26D1F51E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x616964656DLL;
  if (v2 != 1)
  {
    v5 = 0x6F632D616964656DLL;
    v4 = 0xED0000746E65746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D1F5244()
{
  v1 = 0x616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6F632D616964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_26D1F52A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D1FCE14();
  *a1 = result;
  return result;
}

uint64_t sub_26D1F52CC(uint64_t a1)
{
  v2 = sub_26D1F5828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F5308(uint64_t a1)
{
  v2 = sub_26D1F5828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MediaEntry.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_26D22DA34();
  v3 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26D22DF14();
  v28 = *(v33 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22DA54();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D22DA64();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0FC8, &qword_26D232088);
  v15 = *(v35 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v35);
  v18 = &v24 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_26D1F5828();
  v34 = v18;
  v21 = v36;
  sub_26D22EA24();
  if (!v21)
  {
    v36 = v14;
    v25 = v11;
    v40 = 0;
    sub_26D1FD028(&qword_2804E0FD8, MEMORY[0x277CF2A68]);
    sub_26D22E914();
    v24 = v10;
    v39 = 1;
    sub_26D1FD028(&qword_2804E0FE0, MEMORY[0x277CF2D80]);
    sub_26D22E884();
    v38 = 2;
    sub_26D1FD028(&qword_2804E0FE8, MEMORY[0x277CF2A50]);
    sub_26D22E914();
    v23 = v36;
    sub_26D22DA44();
    (*(v15 + 8))(v34, v35);
    (*(v26 + 32))(v27, v23, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_26D1F5828()
{
  result = qword_2804E0FD0;
  if (!qword_2804E0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0FD0);
  }

  return result;
}

uint64_t sub_26D1F5944@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D1F599C(uint64_t a1)
{
  v2 = sub_26D1F5C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F59D8(uint64_t a1)
{
  v2 = sub_26D1F5C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MediaList.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_26D22E184();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0FF0, &qword_26D232090);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1F5C64();
  sub_26D22EA24();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    v17 = v4;
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1000, &qword_26D232098);
    sub_26D1F5CB8();
    sub_26D22E874();
    sub_26D22E174();
    (*(v13 + 8))(v11, v8);
    (*(v14 + 32))(v15, v7, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D1F5C64()
{
  result = qword_2804E0FF8;
  if (!qword_2804E0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0FF8);
  }

  return result;
}

unint64_t sub_26D1F5CB8()
{
  result = qword_2804E1008;
  if (!qword_2804E1008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1000, &qword_26D232098);
    sub_26D1FD028(&qword_2804E1010, MEMORY[0x277CF2A78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1008);
  }

  return result;
}

uint64_t Chatbot.CategoryList.Entry.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26D22DB24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D22EA14();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_26D22E974();
    sub_26D22DB14();
    (*(v6 + 32))(a2, v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1F5FC8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D1F6020(uint64_t a1)
{
  v2 = sub_26D1F62E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F605C(uint64_t a1)
{
  v2 = sub_26D1F62E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.CategoryList.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_26D22DB34();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1018, &qword_26D2320A0);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1F62E8();
  sub_26D22EA24();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    v17 = v4;
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1028, &qword_26D2320A8);
    sub_26D1F633C();
    sub_26D22E874();
    sub_26D22DB04();
    (*(v13 + 8))(v11, v8);
    (*(v14 + 32))(v15, v7, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D1F62E8()
{
  result = qword_2804E1020;
  if (!qword_2804E1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1020);
  }

  return result;
}

unint64_t sub_26D1F633C()
{
  result = qword_2804E1030;
  if (!qword_2804E1030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1028, &qword_26D2320A8);
    sub_26D1FD028(&qword_2804E1038, MEMORY[0x277CF2B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1030);
  }

  return result;
}

uint64_t sub_26D1F6408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656D616E2D67726FLL;
  }

  else
  {
    v4 = 0x2D79616C70736964;
  }

  if (v3)
  {
    v5 = 0xEC000000656D616ELL;
  }

  else
  {
    v5 = 0xED0000657079742DLL;
  }

  if (*a2)
  {
    v6 = 0x656D616E2D67726FLL;
  }

  else
  {
    v6 = 0x2D79616C70736964;
  }

  if (*a2)
  {
    v7 = 0xED0000657079742DLL;
  }

  else
  {
    v7 = 0xEC000000656D616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1F64C4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F655C()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F65E0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F6680(uint64_t *a1@<X8>)
{
  v2 = 0x2D79616C70736964;
  if (*v1)
  {
    v2 = 0x656D616E2D67726FLL;
  }

  v3 = 0xEC000000656D616ELL;
  if (*v1)
  {
    v3 = 0xED0000657079742DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F66D4()
{
  if (*v0)
  {
    result = 0x656D616E2D67726FLL;
  }

  else
  {
    result = 0x2D79616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_26D1F6730(uint64_t a1)
{
  v2 = sub_26D1F6AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F676C(uint64_t a1)
{
  v2 = sub_26D1F6AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.OrganizationName.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_26D22DCD4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_26D22DCF4();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1040, &qword_26D2320B0);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v18 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26D1F6AC4();
  v15 = v22;
  sub_26D22EA24();
  if (!v15)
  {
    v22 = v5;
    v16 = v20;
    v25 = 0;
    v18 = sub_26D22E8D4();
    v24 = 1;
    sub_26D1FD028(&qword_2804E1050, MEMORY[0x277CF2C88]);
    sub_26D22E914();
    sub_26D22DCE4();
    (*(v9 + 8))(v12, v21);
    (*(v19 + 32))(v16, v8, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

unint64_t sub_26D1F6AC4()
{
  result = qword_2804E1048;
  if (!qword_2804E1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1048);
  }

  return result;
}

uint64_t sub_26D1F6B3C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F6C40()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F6D30()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F6E30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1FCEF8();
  *a2 = result;
  return result;
}

void sub_26D1F6E60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x6464612D6D6D6F63;
  v5 = 0xE800000000000000;
  v6 = 0x656D616E2D67726FLL;
  v7 = 0xEF6E6F6974706972;
  v8 = 0x637365642D67726FLL;
  if (v2 != 3)
  {
    v8 = 0x79726F6765746163;
    v7 = 0xED00007473696C2DLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x696C2D616964656DLL;
    v3 = 0xEA00000000007473;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26D1F6F20()
{
  v1 = *v0;
  v2 = 0x6464612D6D6D6F63;
  v3 = 0x656D616E2D67726FLL;
  v4 = 0x637365642D67726FLL;
  if (v1 != 3)
  {
    v4 = 0x79726F6765746163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696C2D616964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26D1F6FDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D1FCEF8();
  *a1 = result;
  return result;
}

uint64_t sub_26D1F7010(uint64_t a1)
{
  v2 = sub_26D1F7800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F704C(uint64_t a1)
{
  v2 = sub_26D1F7800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.OrganizationDetails.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1058, &qword_26D2320B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1060, &qword_26D2320C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v38 - v8;
  v9 = sub_26D22DD64();
  v10 = *(v9 - 8);
  v41 = v9;
  v42 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1068, &qword_26D2320C8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v45 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1070, &qword_26D2320D0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v38 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_26D1F7800();
  v30 = v47;
  sub_26D22EA24();
  if (!v30)
  {
    v47 = v18;
    v38 = v13;
    v39 = v22;
    v40 = v24;
    sub_26D22DDA4();
    v53 = 0;
    sub_26D1FD028(&qword_2804E1080, MEMORY[0x277CF2CD8]);
    v31 = v45;
    sub_26D22E874();
    v32 = v31;
    v33 = v39;
    sub_26D1FB3C4(v32, v39);
    v34 = v40;
    sub_26D1F7854(v33, v47);
    sub_26D22E184();
    v52 = 1;
    sub_26D1FD028(&qword_2804E1088, MEMORY[0x277CF2FD0]);
    sub_26D22E874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1090, &unk_26D2320D8);
    v51 = 2;
    sub_26D1F78C4();
    sub_26D22E874();
    v50 = 3;
    v45 = sub_26D22E8A4();
    v46 = v36;
    sub_26D22DB34();
    v49 = 4;
    sub_26D1FD028(&qword_2804E10A8, MEMORY[0x277CF2B20]);
    sub_26D22E874();
    v37 = v38;
    sub_26D22DD54();
    sub_26D1B950C(v33, &qword_2804E1068, &qword_26D2320C8);
    (*(v34 + 8))(v27, v23);
    (*(v42 + 32))(v43, v37, v41);
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

unint64_t sub_26D1F7800()
{
  result = qword_2804E1078;
  if (!qword_2804E1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1078);
  }

  return result;
}

uint64_t sub_26D1F7854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1068, &qword_26D2320C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D1F78C4()
{
  result = qword_2804E1098;
  if (!qword_2804E1098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1090, &unk_26D2320D8);
    sub_26D1FD028(&qword_2804E10A0, MEMORY[0x277CF2C98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1098);
  }

  return result;
}

uint64_t sub_26D1F7990(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657079742D636370;
  }

  else
  {
    v4 = 0x617465642D67726FLL;
  }

  if (v3)
  {
    v5 = 0xEB00000000736C69;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x657079742D636370;
  }

  else
  {
    v6 = 0x617465642D67726FLL;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEB00000000736C69;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1F7A40()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F7ACC()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F7B44()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F7BD8(uint64_t *a1@<X8>)
{
  v2 = 0x617465642D67726FLL;
  if (*v1)
  {
    v2 = 0x657079742D636370;
  }

  v3 = 0xEB00000000736C69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F7C20()
{
  if (*v0)
  {
    result = 0x657079742D636370;
  }

  else
  {
    result = 0x617465642D67726FLL;
  }

  *v0;
  return result;
}

uint64_t sub_26D1F7C70(uint64_t a1)
{
  v2 = sub_26D1FB434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F7CAC(uint64_t a1)
{
  v2 = sub_26D1FB434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.PersonalContactCard.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10B0, &qword_26D2320E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v20 - v6;
  v7 = sub_26D22DD84();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10B8, &qword_26D2320F0);
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25);
  v14 = &v20 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB434();
  sub_26D22EA24();
  if (!v2)
  {
    v16 = v10;
    v21 = v7;
    v17 = v23;
    sub_26D22DD64();
    v27 = 0;
    sub_26D1FD028(&qword_2804E10C8, MEMORY[0x277CF2CC8]);
    v18 = v25;
    sub_26D22E874();
    v26 = 1;
    sub_26D22E8A4();
    sub_26D22DD74();
    (*(v11 + 8))(v14, v18);
    (*(v22 + 32))(v17, v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1F8020(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C6562616CLL;
  }

  else
  {
    v4 = 0x7274732D72646461;
  }

  if (v3)
  {
    v5 = 0xEB00000000676E69;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C6562616CLL;
  }

  else
  {
    v6 = 0x7274732D72646461;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEB00000000676E69;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1F80CC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F8154()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F81C8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F8258(uint64_t *a1@<X8>)
{
  v2 = 0x7274732D72646461;
  if (*v1)
  {
    v2 = 0x6C6562616CLL;
  }

  v3 = 0xEB00000000676E69;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F829C()
{
  if (*v0)
  {
    result = 0x6C6562616CLL;
  }

  else
  {
    result = 0x7274732D72646461;
  }

  *v0;
  return result;
}

uint64_t sub_26D1F82E8(uint64_t a1)
{
  v2 = sub_26D1FB488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F8324(uint64_t a1)
{
  v2 = sub_26D1FB488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.AddressEntry.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_26D22DAF4();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10D0, &qword_26D2320F8);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB488();
  sub_26D22EA24();
  if (!v2)
  {
    v13 = v8;
    v18 = v4;
    v14 = v20;
    v15 = v21;
    v23 = 0;
    v17[1] = sub_26D22E8A4();
    v22 = 1;
    sub_26D22E8D4();
    sub_26D22DAE4();
    (*(v13 + 8))(v11, v15);
    (*(v19 + 32))(v14, v7, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1F86D4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D1F872C(uint64_t a1)
{
  v2 = sub_26D1FB4DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F8768(uint64_t a1)
{
  v2 = sub_26D1FB4DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Address.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_26D22DFF4();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10E0, &qword_26D232100);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB4DC();
  sub_26D22EA24();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    v17 = v4;
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10F0, &qword_26D232108);
    sub_26D1FB530();
    sub_26D22E874();
    sub_26D22DFE4();
    (*(v13 + 8))(v11, v8);
    (*(v14 + 32))(v15, v7, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1F89F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 6513520;
    v6 = 0x72656469766F7270;
    if (a1 != 2)
    {
      v6 = 0x6C69616D65;
    }

    if (a1)
    {
      v5 = 0x6E6F6973726576;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65746973626577;
    v2 = 0x656761504354;
    if (a1 != 7)
    {
      v2 = 0x73736572646461;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x72756F6C6F63;
    if (a1 != 4)
    {
      v3 = 0x756F72676B636162;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_26D1F8B2C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D2231E0();
  return sub_26D22EA04();
}

uint64_t sub_26D1F8B7C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D2231E0();
  return sub_26D22EA04();
}

uint64_t sub_26D1F8BC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1FCF90();
  *a2 = result;
  return result;
}

uint64_t sub_26D1F8BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D1F89F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26D1F8C38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D1FCF90();
  *a1 = result;
  return result;
}

uint64_t sub_26D1F8C6C(uint64_t a1)
{
  v2 = sub_26D1FB5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F8CA8(uint64_t a1)
{
  v2 = sub_26D1FB5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.BotInfo.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1108, &qword_26D232110);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v45 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = v39 - v11;
  MEMORY[0x28223BE20](v10);
  v47 = v39 - v12;
  v13 = sub_26D22DD84();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_26D22E014();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1110, &unk_26D232118);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v39 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_26D1FB5E4();
  v26 = v50;
  sub_26D22EA24();
  if (!v26)
  {
    v50 = v18;
    v41 = v15;
    v54 = 4;
    v27 = sub_26D22E8A4();
    if (v28)
    {
      v29 = v27;
      v30 = sub_26D22CD14();
      if (v31 >> 60 != 15)
      {
        v40 = v29;
        sub_26D1BE640(v30, v31);
        goto LABEL_7;
      }
    }

    v40 = 0;
LABEL_7:
    v53 = 0;
    sub_26D1FD028(&qword_2804E1120, MEMORY[0x277CF2CD0]);
    sub_26D22E884();
    v33 = sub_26D1F2280(1, &qword_2804E1110, &unk_26D232118);
    v35 = v34;
    v36 = v33;
    v39[5] = sub_26D1F2280(2, &qword_2804E1110, &unk_26D232118);
    v49 = v37;
    v39[2] = sub_26D1F2280(3, &qword_2804E1110, &unk_26D232118);
    v39[3] = v38;
    v39[4] = v35;
    sub_26D1F2484(5, &qword_2804E1110, &unk_26D232118, &_s21DecodingConfigurationV10CodingKeysON_3, sub_26D1FB5E4, v47);
    sub_26D1F287C(6, v46);
    v39[1] = v36;
    sub_26D1F2484(7, &qword_2804E1110, &unk_26D232118, &_s21DecodingConfigurationV10CodingKeysON_3, sub_26D1FB5E4, v45);
    sub_26D22DFF4();
    v52 = 8;
    sub_26D1FD028(&qword_2804E1128, MEMORY[0x277CF2EB0]);
    sub_26D22E874();
    v39[0] = v19;
    sub_26D22E004();
    (*(v20 + 8))(v23, v39[0]);
    (*(v42 + 32))(v43, v50, v41);
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_26D1F94F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEB0000000079622DLL;
  v4 = 0x73657269707865;
  if (v2 == 1)
  {
    v4 = 0x6465696669726576;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6465696669726576;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xEB0000000079622DLL;
  v8 = 0x73657269707865;
  if (*a2 == 1)
  {
    v8 = 0x6465696669726576;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6465696669726576;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1F95E8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F9684()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F970C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F97A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1FCEAC();
  *a2 = result;
  return result;
}

void sub_26D1F97D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB0000000079622DLL;
  v5 = 0x6465696669726576;
  if (v2 != 1)
  {
    v5 = 0x73657269707865;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465696669726576;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D1F983C()
{
  v1 = 0x73657269707865;
  if (*v0 == 1)
  {
    v1 = 0x6465696669726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465696669726576;
  }
}

uint64_t sub_26D1F9890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D1FCEAC();
  *a1 = result;
  return result;
}

uint64_t sub_26D1F98B8(uint64_t a1)
{
  v2 = sub_26D1FB638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F98F4(uint64_t a1)
{
  v2 = sub_26D1FB638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.VerificationInfo.VerifiedInfo.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - v5;
  v7 = sub_26D22DD34();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1130, &qword_26D232128);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26D1FB638();
  v18 = v27;
  sub_26D22EA24();
  if (!v18)
  {
    v27 = v10;
    v32 = 0;
    v19 = sub_26D22E8E4();
    v31 = 1;
    v24[1] = sub_26D22E8A4();
    v30 = 2;
    sub_26D1F2280(2, &qword_2804E1130, &qword_26D232128);
    v29 = v19;
    if (v20)
    {

      v22 = sub_26D22CE34();
      sub_26D1FD028(&qword_2804E1140, MEMORY[0x277CC9578]);
      v24[0] = v22;
      sub_26D22E914();
      (*(*(v24[0] - 8) + 56))(v6, 0, 1);
    }

    else
    {
      v23 = *(*(sub_26D22CE34() - 8) + 56);
      v23(v6, 1, 1);
    }

    sub_26D22DD24();
    (*(v12 + 8))(v15, v11);
    (*(v26 + 32))(v25, v27, v7);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_26D1F9D4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x6465696669726576;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x800000026D23A820;
  }

  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x6465696669726576;
  }

  if (*a2)
  {
    v7 = 0x800000026D23A820;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1F9DF8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F9E80()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1F9EF4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F9F84@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D22E854();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26D1F9FE0(unint64_t *a1@<X8>)
{
  v2 = 0x800000026D23A820;
  v3 = 0x6465696669726576;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_26D1FA024()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x6465696669726576;
  }

  *v0;
  return result;
}

uint64_t sub_26D1FA070@<X0>(char *a1@<X8>)
{
  v2 = sub_26D22E854();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_26D1FA0D0(uint64_t a1)
{
  v2 = sub_26D1FB68C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1FA10C(uint64_t a1)
{
  v2 = sub_26D1FB68C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.VerificationInfo.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1148, &qword_26D232130);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = sub_26D22DD44();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = a1[4];
  v17 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB68C();
  v46 = v8;
  sub_26D22EA24();
  if (v2)
  {
    v18 = a1;
  }

  else
  {
    v39 = v15;
    v40 = v9;
    v20 = v41;
    v19 = v42;
    LOBYTE(v45[0]) = 0;
    v21 = v43;
    v22 = v46;
    if (sub_26D22E924())
    {
      v18 = v17;
      sub_26D1FB6E0(v17, v45);
      v23 = v13;
      Chatbot.VerificationInfo.VerifiedInfo.init(from:configuration:)(v45, v13);
      (*(v44 + 8))(v22, v21);
      v24 = v20;
      v25 = *(v20 + 104);
      v26 = v40;
      v25(v23, *MEMORY[0x277CF2CB8], v40);
      v27 = *(v24 + 32);
      v28 = v39;
      v27(v39, v23, v26);
      v29 = v28;
    }

    else
    {
      LOBYTE(v45[0]) = 1;
      v18 = v17;
      if ((sub_26D22E924() & 1) == 0)
      {
        v32 = sub_26D22E794();
        swift_allocError();
        v34 = v33;
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
        *v34 = v40;
        v36 = v46;
        sub_26D22E894();
        sub_26D22E784();
        (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84170], v32);
        swift_willThrow();
        (*(v44 + 8))(v36, v21);
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      v30 = v20;
      (*(v44 + 8))(v46, v21);
      v31 = *(v20 + 104);
      v29 = v39;
      v26 = v40;
      v31(v39, *MEMORY[0x277CF2CA8], v40);
      v27 = *(v30 + 32);
    }

    v27(v19, v29, v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_26D1FA550()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1FA5C4()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1FA660@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D1FA6B8(uint64_t a1)
{
  v2 = sub_26D1FB744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1FA6F4(uint64_t a1)
{
  v2 = sub_26D1FB744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.BotVerification.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = sub_26D22DD44();
  v4 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v25 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D22DC94();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1160, &qword_26D232140);
  v21 = *(v10 - 8);
  v11 = *(v21 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB744();
  sub_26D22EA24();
  if (!v2)
  {
    v15 = v21;
    v16 = v22;
    v20 = v6;
    v17 = v23;
    sub_26D1FD028(&qword_2804E1170, MEMORY[0x277CF2CC0]);
    sub_26D22E884();
    sub_26D22DC84();
    (*(v15 + 8))(v13, v10);
    (*(v16 + 32))(v17, v9, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1FAA0C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FAAE8()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1FABB0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FAC88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1FCF44();
  *a2 = result;
  return result;
}

void sub_26D1FACB8(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6F666E69746F62;
  v4 = 0x800000026D23A940;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000026D23A960;
  }

  if (*v1)
  {
    v3 = 0x6574736973726570;
    v2 = 0xEF756E656D2D746ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_26D1FAD50()
{
  v1 = 0x6F666E69746F62;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6574736973726570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26D1FADE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D1FCF44();
  *a1 = result;
  return result;
}

uint64_t sub_26D1FAE18(uint64_t a1)
{
  v2 = sub_26D1FB798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1FAE54(uint64_t a1)
{
  v2 = sub_26D1FB798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Info.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1178, &qword_26D232148);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1180, &qword_26D232150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = &v31 - v11;
  v12 = sub_26D22E014();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26D22DED4();
  v33 = *(v15 - 8);
  v16 = *(v33 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1188, &unk_26D232158);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_26D1FB798();
  v40 = v23;
  v26 = v41;
  sub_26D22EA24();
  if (!v26)
  {
    v41 = v18;
    v32 = v15;
    v27 = v20;
    v28 = v39;
    v44 = 0;
    sub_26D1FD028(&qword_2804E1198, MEMORY[0x277CF2EB8]);
    sub_26D22E884();
    sub_26D1F2300(v35);
    sub_26D1F2484(2, &qword_2804E1188, &unk_26D232158, &_s21DecodingConfigurationV10CodingKeysON, sub_26D1FB798, v34);
    sub_26D22DC94();
    v43 = 3;
    sub_26D1FD028(&qword_2804E11A0, MEMORY[0x277CF2C60]);
    sub_26D22E874();
    v30 = v41;
    sub_26D22DEC4();
    (*(v27 + 8))(v40, v19);
    (*(v33 + 32))(v28, v30, v32);
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_26D1FB3C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1068, &qword_26D2320C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D1FB434()
{
  result = qword_2804E10C0;
  if (!qword_2804E10C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E10C0);
  }

  return result;
}

unint64_t sub_26D1FB488()
{
  result = qword_2804E10D8;
  if (!qword_2804E10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E10D8);
  }

  return result;
}

unint64_t sub_26D1FB4DC()
{
  result = qword_2804E10E8;
  if (!qword_2804E10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E10E8);
  }

  return result;
}

unint64_t sub_26D1FB530()
{
  result = qword_2804E10F8;
  if (!qword_2804E10F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E10F0, &qword_26D232108);
    sub_26D1FD028(&qword_2804E1100, MEMORY[0x277CF2B10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E10F8);
  }

  return result;
}

unint64_t sub_26D1FB5E4()
{
  result = qword_2804E1118;
  if (!qword_2804E1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1118);
  }

  return result;
}

unint64_t sub_26D1FB638()
{
  result = qword_2804E1138;
  if (!qword_2804E1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1138);
  }

  return result;
}

unint64_t sub_26D1FB68C()
{
  result = qword_2804E1150;
  if (!qword_2804E1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1150);
  }

  return result;
}

uint64_t sub_26D1FB6E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26D1FB744()
{
  result = qword_2804E1168;
  if (!qword_2804E1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1168);
  }

  return result;
}

unint64_t sub_26D1FB798()
{
  result = qword_2804E1190;
  if (!qword_2804E1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1190);
  }

  return result;
}

uint64_t _s21DecodingConfigurationV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s21DecodingConfigurationV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D1FBB88()
{
  result = qword_2804E11A8;
  if (!qword_2804E11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11A8);
  }

  return result;
}

unint64_t sub_26D1FBBE0()
{
  result = qword_2804E11B0;
  if (!qword_2804E11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11B0);
  }

  return result;
}

unint64_t sub_26D1FBC38()
{
  result = qword_2804E11B8;
  if (!qword_2804E11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11B8);
  }

  return result;
}

unint64_t sub_26D1FBC90()
{
  result = qword_2804E11C0;
  if (!qword_2804E11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11C0);
  }

  return result;
}

unint64_t sub_26D1FBCE8()
{
  result = qword_2804E11C8;
  if (!qword_2804E11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11C8);
  }

  return result;
}

unint64_t sub_26D1FBD40()
{
  result = qword_2804E11D0;
  if (!qword_2804E11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11D0);
  }

  return result;
}

unint64_t sub_26D1FBD98()
{
  result = qword_2804E11D8;
  if (!qword_2804E11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11D8);
  }

  return result;
}

unint64_t sub_26D1FBDF0()
{
  result = qword_2804E11E0;
  if (!qword_2804E11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11E0);
  }

  return result;
}

unint64_t sub_26D1FBE48()
{
  result = qword_2804E11E8;
  if (!qword_2804E11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11E8);
  }

  return result;
}

unint64_t sub_26D1FBEA0()
{
  result = qword_2804E11F0;
  if (!qword_2804E11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11F0);
  }

  return result;
}

unint64_t sub_26D1FBEF8()
{
  result = qword_2804E11F8;
  if (!qword_2804E11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11F8);
  }

  return result;
}

unint64_t sub_26D1FBF50()
{
  result = qword_2804E1200;
  if (!qword_2804E1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1200);
  }

  return result;
}

unint64_t sub_26D1FBFA8()
{
  result = qword_2804E1208;
  if (!qword_2804E1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1208);
  }

  return result;
}

unint64_t sub_26D1FC000()
{
  result = qword_2804E1210;
  if (!qword_2804E1210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1210);
  }

  return result;
}

unint64_t sub_26D1FC058()
{
  result = qword_2804E1218;
  if (!qword_2804E1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1218);
  }

  return result;
}

unint64_t sub_26D1FC0B0()
{
  result = qword_2804E1220;
  if (!qword_2804E1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1220);
  }

  return result;
}

unint64_t sub_26D1FC108()
{
  result = qword_2804E1228;
  if (!qword_2804E1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1228);
  }

  return result;
}

unint64_t sub_26D1FC160()
{
  result = qword_2804E1230;
  if (!qword_2804E1230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1230);
  }

  return result;
}

unint64_t sub_26D1FC1B8()
{
  result = qword_2804E1238;
  if (!qword_2804E1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1238);
  }

  return result;
}

unint64_t sub_26D1FC210()
{
  result = qword_2804E1240;
  if (!qword_2804E1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1240);
  }

  return result;
}

unint64_t sub_26D1FC268()
{
  result = qword_2804E1248;
  if (!qword_2804E1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1248);
  }

  return result;
}

unint64_t sub_26D1FC2C0()
{
  result = qword_2804E1250;
  if (!qword_2804E1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1250);
  }

  return result;
}

unint64_t sub_26D1FC318()
{
  result = qword_2804E1258;
  if (!qword_2804E1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1258);
  }

  return result;
}

unint64_t sub_26D1FC370()
{
  result = qword_2804E1260;
  if (!qword_2804E1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1260);
  }

  return result;
}

unint64_t sub_26D1FC3C8()
{
  result = qword_2804E1268;
  if (!qword_2804E1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1268);
  }

  return result;
}

unint64_t sub_26D1FC420()
{
  result = qword_2804E1270;
  if (!qword_2804E1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1270);
  }

  return result;
}

unint64_t sub_26D1FC478()
{
  result = qword_2804E1278;
  if (!qword_2804E1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1278);
  }

  return result;
}

unint64_t sub_26D1FC4D0()
{
  result = qword_2804E1280;
  if (!qword_2804E1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1280);
  }

  return result;
}

unint64_t sub_26D1FC528()
{
  result = qword_2804E1288;
  if (!qword_2804E1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1288);
  }

  return result;
}

unint64_t sub_26D1FC580()
{
  result = qword_2804E1290;
  if (!qword_2804E1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1290);
  }

  return result;
}

unint64_t sub_26D1FC5D8()
{
  result = qword_2804E1298;
  if (!qword_2804E1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1298);
  }

  return result;
}

unint64_t sub_26D1FC630()
{
  result = qword_2804E12A0;
  if (!qword_2804E12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12A0);
  }

  return result;
}

unint64_t sub_26D1FC688()
{
  result = qword_2804E12A8;
  if (!qword_2804E12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12A8);
  }

  return result;
}

unint64_t sub_26D1FC6E0()
{
  result = qword_2804E12B0;
  if (!qword_2804E12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12B0);
  }

  return result;
}

unint64_t sub_26D1FC738()
{
  result = qword_2804E12B8;
  if (!qword_2804E12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12B8);
  }

  return result;
}

unint64_t sub_26D1FC790()
{
  result = qword_2804E12C0;
  if (!qword_2804E12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12C0);
  }

  return result;
}

unint64_t sub_26D1FC7E8()
{
  result = qword_2804E12C8;
  if (!qword_2804E12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12C8);
  }

  return result;
}

unint64_t sub_26D1FC840()
{
  result = qword_2804E12D0;
  if (!qword_2804E12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12D0);
  }

  return result;
}

unint64_t sub_26D1FC898()
{
  result = qword_2804E12D8;
  if (!qword_2804E12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12D8);
  }

  return result;
}

unint64_t sub_26D1FC8F0()
{
  result = qword_2804E12E0;
  if (!qword_2804E12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12E0);
  }

  return result;
}

unint64_t sub_26D1FC948()
{
  result = qword_2804E12E8;
  if (!qword_2804E12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12E8);
  }

  return result;
}

unint64_t sub_26D1FC9A0()
{
  result = qword_2804E12F0;
  if (!qword_2804E12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12F0);
  }

  return result;
}

unint64_t sub_26D1FC9F8()
{
  result = qword_2804E12F8;
  if (!qword_2804E12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12F8);
  }

  return result;
}

unint64_t sub_26D1FCA50()
{
  result = qword_2804E1300;
  if (!qword_2804E1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1300);
  }

  return result;
}

unint64_t sub_26D1FCAA8()
{
  result = qword_2804E1308;
  if (!qword_2804E1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1308);
  }

  return result;
}

unint64_t sub_26D1FCB00()
{
  result = qword_2804E1310;
  if (!qword_2804E1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1310);
  }

  return result;
}

unint64_t sub_26D1FCB58()
{
  result = qword_2804E1318;
  if (!qword_2804E1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1318);
  }

  return result;
}

unint64_t sub_26D1FCBB0()
{
  result = qword_2804E1320;
  if (!qword_2804E1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1320);
  }

  return result;
}

unint64_t sub_26D1FCC08()
{
  result = qword_2804E1328;
  if (!qword_2804E1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1328);
  }

  return result;
}

unint64_t sub_26D1FCC60()
{
  result = qword_2804E1330;
  if (!qword_2804E1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1330);
  }

  return result;
}

unint64_t sub_26D1FCCB8()
{
  result = qword_2804E1338;
  if (!qword_2804E1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1338);
  }

  return result;
}

unint64_t sub_26D1FCD10()
{
  result = qword_2804E1340;
  if (!qword_2804E1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1340);
  }

  return result;
}

unint64_t sub_26D1FCD68()
{
  result = qword_2804E1348;
  if (!qword_2804E1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1348);
  }

  return result;
}

unint64_t sub_26D1FCDC0()
{
  result = qword_2804E1350;
  if (!qword_2804E1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1350);
  }

  return result;
}

uint64_t sub_26D1FCE14()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1FCE60()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1FCEAC()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1FCEF8()
{
  v0 = sub_26D22E854();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1FCF44()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1FCF90()
{
  v0 = sub_26D22E854();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1FCFDC()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1FD028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D1FD094()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FD144()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1FD1E0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FD28C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1FDAD0();
  *a2 = result;
  return result;
}

void sub_26D1FD2BC(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000004449;
  v3 = 0x2D6567617373654DLL;
  v4 = 0xE400000000000000;
  v5 = 1836020294;
  if (*v1 != 2)
  {
    v5 = 28500;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 0x746C75736572;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_26D1FD328(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1368, &qword_26D233C60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v41 - v8;
  KeyPath = swift_getKeyPath();
  v11 = a1;
  v12 = sub_26D1BAC08(KeyPath, v11);

  v13 = sub_26D1DFAB8(0, v12);
  if (v1)
  {
    goto LABEL_2;
  }

  if (!v13)
  {

    sub_26D1B7F48();
    swift_allocError();
    v19 = xmmword_26D233C30;
    goto LABEL_8;
  }

  v14 = v13;
  v15 = &v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  if (!*(v15 + 1))
  {

LABEL_10:
    sub_26D1B7F48();
    swift_allocError();
    v20 = MEMORY[0x277D837D0];
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *v21 = v20;
    *(v21 + 24) = 5;
    swift_willThrow();

    goto LABEL_3;
  }

  v16 = *v15;

  v17 = sub_26D1DFAB8(1u, v12);
  if (!v17)
  {
    v30 = sub_26D22E284();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    goto LABEL_19;
  }

  v43 = v16;
  v22 = v17;
  v23 = &v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v46 = *(v23 + 1);
  if (!v46)
  {

    v31 = sub_26D22E284();
    (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
LABEL_18:
    v16 = v43;
LABEL_19:
    v32 = sub_26D1DFAB8(2u, v12);
    if (v32)
    {
      v43 = v16;
      v33 = v32;
      v34 = &v32[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      if (!*(v34 + 1))
      {

        sub_26D1FD9A8(v9);
        sub_26D1B7F48();
        swift_allocError();
        v36 = MEMORY[0x277D837D0];
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        *v37 = v36;
        *(v37 + 24) = 5;
        swift_willThrow();

        goto LABEL_3;
      }

      v35 = *v34;

      v38 = sub_26D1DFAB8(3u, v12);
      v46 = v35;

      if (v38)
      {
        v14 = v38;
        v39 = &v38[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
        swift_beginAccess();
        if (*(v39 + 1))
        {
          v40 = *v39;

          sub_26D22E274();
          goto LABEL_3;
        }

        sub_26D1FD9A8(v9);
        goto LABEL_10;
      }

      sub_26D1FD9A8(v9);
      sub_26D1B7F48();
      swift_allocError();
      v19 = xmmword_26D233C10;
    }

    else
    {

      sub_26D1FD9A8(v9);
      sub_26D1B7F48();
      swift_allocError();
      v19 = xmmword_26D233C20;
    }

LABEL_8:
    *v18 = v19;
    *(v18 + 16) = 0;
    *(v18 + 24) = 1;
    swift_willThrow();
    goto LABEL_3;
  }

  v42 = v22;
  v24 = *v23;
  v25 = sub_26D22E284();
  v41[0] = v24;
  v44 = v24;
  v45 = v46;
  v41[1] = sub_26D1FDA10();
  swift_bridgeObjectRetain_n();
  v26 = v25;
  sub_26D22E554();
  v27 = *(v25 - 8);
  if ((*(v27 + 48))(v7, 1, v26) != 1)
  {
    swift_bridgeObjectRelease_n();

    (*(v27 + 32))(v9, v7, v26);
    (*(v27 + 56))(v9, 0, 1, v26);
    goto LABEL_18;
  }

  sub_26D1FD9A8(v7);
  sub_26D1B7F48();
  swift_allocError();
  v28 = v46;
  *v29 = v41[0];
  *(v29 + 8) = v28;
  *(v29 + 16) = 0;
  *(v29 + 24) = 3;
  swift_willThrow();

LABEL_2:

LABEL_3:
}

uint64_t sub_26D1FD9A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1368, &qword_26D233C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26D1FDA10()
{
  result = qword_2804E1370;
  if (!qword_2804E1370)
  {
    sub_26D22E284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1370);
  }

  return result;
}

unint64_t sub_26D1FDA7C()
{
  result = qword_2804E1378;
  if (!qword_2804E1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1378);
  }

  return result;
}

uint64_t sub_26D1FDAD0()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1FDB1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6910581;
  }

  else
  {
    v4 = 0x2D79616C70736964;
  }

  if (v3)
  {
    v5 = 0xEC000000656D616ELL;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6910581;
  }

  else
  {
    v6 = 0x2D79616C70736964;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xEC000000656D616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1FDBC4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FDC48()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1FDCB8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FDD38@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D22E854();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26D1FDD98(uint64_t *a1@<X8>)
{
  v2 = 6910581;
  if (!*v1)
  {
    v2 = 0x2D79616C70736964;
  }

  v3 = 0xEC000000656D616ELL;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D1FDE44(uint64_t a1@<X8>)
{
  strcpy(a1, "display-name");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void sub_26D1FDE68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v97 = sub_26D22D364();
  v102 = *(v97 - 8);
  v4 = *(v102 + 64);
  (MEMORY[0x28223BE20])();
  v98 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_26D22D324();
  v99 = *(v96 - 8);
  v6 = *(v99 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v81 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v81 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v81 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v81 - v19;
  KeyPath = swift_getKeyPath();
  v22 = a1;
  v23 = sub_26D1BA9D8(KeyPath, v22);

  v24 = sub_26D1E51F8(v23);

  v103 = v2;
  if (v2)
  {
  }

  else
  {
    v25 = v102;
    v91 = v20;
    v92 = v18;
    v93 = v15;
    v94 = v12;
    v95 = v9;
    if (v24)
    {
      v26 = &v24[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      v27 = *(v26 + 1);
      v82 = *v26;
      v83 = v27;
    }

    else
    {
      v82 = 0;
      v83 = 0;
    }

    v28 = v25;
    v29 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
    swift_beginAccess();
    v30 = *&v22[v29];
    if (v30 >> 62)
    {
      goto LABEL_45;
    }

    for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26D22E814())
    {
      v84 = v22;

      if (!i)
      {
        break;
      }

      v22 = i;
      v32 = 0;
      v101 = v30 & 0xFFFFFFFFFFFFFF8;
      v102 = v30 & 0xC000000000000001;
      v88 = (v28 + 32);
      v87 = *MEMORY[0x277CF21A0];
      v86 = (v99 + 104);
      v33 = MEMORY[0x277D84F90];
      v100 = (v99 + 32);
      v89 = i;
      v90 = v30;
      while (1)
      {
        if (v102)
        {
          v34 = MEMORY[0x26D6B6F50](v32, v30);
        }

        else
        {
          if (v32 >= *(v101 + 16))
          {
            goto LABEL_44;
          }

          v34 = *(v30 + 8 * v32 + 32);
        }

        v35 = v34;
        v36 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v28 = &v34[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
        v37 = *&v34[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
        v38 = *&v34[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

        v39 = sub_26D22E854();

        if (v39)
        {
        }

        else
        {
          v40 = *v28 == 0x7972746E65 && *(v28 + 1) == 0xE500000000000000;
          if (!v40 && (sub_26D22E964() & 1) == 0)
          {

            v77 = *v28;
            v76 = *(v28 + 1);
            sub_26D1B7F48();
            v78 = swift_allocError();
            *v79 = v77;
            *(v79 + 8) = v76;
            *(v79 + 16) = 0;
            *(v79 + 24) = 0;
            v103 = v78;
            swift_willThrow();

            v80 = v84;
            goto LABEL_41;
          }

          v41 = swift_getKeyPath();
          v42 = v35;
          v43 = sub_26D1BAA00(v41, v42);

          if (*(v43 + 16) && (v44 = sub_26D1BDEEC(0x2D79616C70736964, 0xEC000000656D616ELL), (v45 & 1) != 0) && (v46 = *(*(v43 + 56) + 8 * v44), *(v46 + 16)))
          {
            v47 = v33;
            v48 = *(v46 + 32);

            v49 = &v48[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
            swift_beginAccess();
            v51 = *v49;
            v50 = *(v49 + 1);

            v33 = v47;
          }

          else
          {
          }

          v52 = *&v42[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
          if (!*(v52 + 16))
          {
            goto LABEL_38;
          }

          v53 = *&v42[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];

          v54 = sub_26D1BDEEC(6910581, 0xE300000000000000);
          if ((v55 & 1) == 0)
          {

LABEL_38:
            sub_26D1B7F48();
            v73 = swift_allocError();
            *v74 = xmmword_26D233D90;
            *(v74 + 16) = 0;
            *(v74 + 24) = 2;
            v103 = v73;
            swift_willThrow();
            v75 = v84;

LABEL_40:

LABEL_41:

            return;
          }

          v56 = v33;
          v57 = (*(v52 + 56) + 16 * v54);
          v59 = *v57;
          v58 = v57[1];

          v60 = v98;
          v61 = v103;
          sub_26D22D354();
          v103 = v61;
          if (v61)
          {
            v75 = v84;

            goto LABEL_40;
          }

          v62 = v94;
          (*v88)(v94, v60, v97);

          v63 = v96;
          (*v86)(v62, v87, v96);
          v28 = *v100;
          v64 = v93;
          (*v100)(v93, v62, v63);
          v65 = v92;
          (v28)(v92, v64, v63);
          v66 = v91;
          (v28)(v91, v65, v63);
          v67 = v95;
          (v28)(v95, v66, v63);
          v33 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_26D22B9E0(0, v56[2] + 1, 1, v56);
          }

          v68 = v99;
          v70 = v33[2];
          v69 = v33[3];
          if (v70 >= v69 >> 1)
          {
            v33 = sub_26D22B9E0(v69 > 1, v70 + 1, 1, v33);
          }

          v33[2] = v70 + 1;
          (v28)(v33 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v70, v67, v63);
          v30 = v90;
          v22 = v89;
        }

        ++v32;
        if (v36 == v22)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

LABEL_36:

    v71 = v103;
    sub_26D22D314();
    v72 = v84;

    v103 = v71;
  }
}

unint64_t sub_26D1FE754()
{
  result = qword_2804E1380;
  if (!qword_2804E1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1380);
  }

  return result;
}

unint64_t sub_26D1FE7AC()
{
  result = qword_2804E1388;
  if (!qword_2804E1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1388);
  }

  return result;
}

unint64_t sub_26D1FE804()
{
  result = qword_2804E1390;
  if (!qword_2804E1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1390);
  }

  return result;
}

uint64_t sub_26D1FE858@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_26D22EA14();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_26D22E974();
    sub_26D1BCF54(v6, v7, a2);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

unint64_t sub_26D1FE960()
{
  result = qword_2804E1398;
  if (!qword_2804E1398)
  {
    sub_26D22D2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1398);
  }

  return result;
}

uint64_t sub_26D1FEA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v128 = a2;
  v129 = a3;
  v125 = a1;
  v3 = sub_26D22CF24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v119 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22CF54();
  v118 = *(v7 - 8);
  v8 = *(v118 + 64);
  MEMORY[0x28223BE20](v7);
  v117 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_26D22CF34();
  v115 = *(v116 - 8);
  v10 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_26D22CE34();
  v12 = *(v131 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v131);
  v112 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v100 - v16;
  v17 = sub_26D22CC54();
  v127 = *(v17 - 8);
  v18 = *(v127 + 64);
  MEMORY[0x28223BE20](v17);
  v126 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26D22CE74();
  v123 = *(v20 - 8);
  v124 = v20;
  v21 = *(v123 + 64);
  MEMORY[0x28223BE20](v20);
  v122 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26D22CCE4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v130 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v121 = &v100 - v29;
  MEMORY[0x28223BE20](v28);
  v132 = &v100 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v100 - v33;
  v35 = type metadata accessor for TapToRadarDraft();
  v36 = *(*(v35 - 1) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_content();
  if (result)
  {
    v104 = v7;
    v111 = v24;
    v106 = v3;
    if (qword_2804E0430 != -1)
    {
      swift_once();
    }

    v109 = v17;
    v120 = v23;
    v105 = v4;
    v40 = sub_26D22CF14();
    v110 = __swift_project_value_buffer(v40, qword_2804E0438);
    v41 = sub_26D22CEF4();
    v42 = sub_26D22E5E4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26D1AF000, v41, v42, "Prompting for TTR...", v43, 2u);
      MEMORY[0x26D6B7800](v43, -1, -1);
    }

    *v38 = 0x4449656C646E7542;
    *(v38 + 1) = 0xE800000000000000;
    strcpy(v38 + 72, "Classification");
    v38[87] = -18;
    v38[88] = 10;
    *(v38 + 12) = 0x6375646F72706552;
    *(v38 + 13) = 0xEF7974696C696269;
    v38[112] = 6;
    *(v38 + 15) = 0x656C746954;
    *(v38 + 16) = 0xE500000000000000;
    *(v38 + 17) = 0;
    *(v38 + 18) = 0;
    *(v38 + 19) = 0x7470697263736544;
    *(v38 + 20) = 0xEB000000006E6F69;
    *(v38 + 21) = 0;
    *(v38 + 22) = 0;
    v44 = MEMORY[0x277D84F90];
    *(v38 + 23) = 0x7364726F7779654BLL;
    *(v38 + 24) = 0xE800000000000000;
    *(v38 + 25) = v44;
    v45 = &v38[v35[11]];
    *(v38 + 2) = 0;
    *(v38 + 3) = 0;
    v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30) + 36);
    v103 = v12;
    v107 = *(v12 + 56);
    v46 = v131;
    v107(&v45[v108], 1, 1, v131);
    *v45 = 0x7349664F656D6954;
    *(v45 + 1) = 0xEB00000000657573;
    v47 = &v38[v35[12]];
    *v47 = 0x656D686361747441;
    *(v47 + 1) = 0xEB0000000073746ELL;
    v102 = v47;
    *(v47 + 2) = v44;
    v48 = &v38[v35[13]];
    *v48 = 0xD000000000000011;
    *(v48 + 1) = 0x800000026D23AC10;
    *(v48 + 2) = v44;
    v49 = &v38[v35[14]];
    *v49 = 0xD000000000000014;
    *(v49 + 1) = 0x800000026D23AC30;
    *(v49 + 2) = v44;
    v50 = &v38[v35[15]];
    strcpy(v50, "DeleteOnAttach");
    v50[15] = -18;
    v101 = v50;
    v50[16] = 0;
    v51 = &v38[v35[16]];
    *v51 = 0x4449656369766544;
    *(v51 + 1) = 0xE900000000000073;
    *(v51 + 2) = v44;
    v52 = &v38[v35[17]];
    strcpy(v52, "DeviceClasses");
    *(v52 + 7) = -4864;
    *(v52 + 2) = v44;
    v53 = &v38[v35[18]];
    strcpy(v53, "DeviceModels");
    v53[13] = 0;
    *(v53 + 7) = -5120;
    *(v53 + 2) = v44;
    v54 = &v38[v35[19]];
    *v54 = 0xD000000000000016;
    *(v54 + 1) = 0x800000026D23AC50;
    *(v54 + 2) = 0;
    v55 = &v38[v35[20]];
    *v55 = 0xD00000000000001ALL;
    *(v55 + 1) = 0x800000026D23AC70;
    v55[16] = 0;
    v56 = &v38[v35[21]];
    *v56 = 0x676169446F747541;
    *(v56 + 1) = 0xEF73636974736F6ELL;
    v56[16] = 0;
    v57 = &v38[v35[22]];
    *v57 = 0xD00000000000001BLL;
    *(v57 + 1) = 0x800000026D23AC90;
    *(v57 + 2) = v44;
    v58 = &v38[v35[23]];
    *v58 = 0xD000000000000018;
    *(v58 + 1) = 0x800000026D23ACB0;
    *(v58 + 2) = 0;
    *(v58 + 3) = 0;
    v59 = &v38[v35[24]];
    *v59 = 0xD000000000000012;
    *(v59 + 1) = 0x800000026D23ACD0;
    *(v59 + 2) = 0;
    *(v59 + 3) = 0;
    *(v38 + 2) = xmmword_26D22F340;
    *(v38 + 3) = xmmword_26D22F350;
    *(v38 + 8) = 0xE300000000000000;
    v38[88] = 1;
    v38[112] = 5;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_26D22E744();
    MEMORY[0x26D6B6C70](0xD00000000000003CLL, 0x800000026D23ACF0);
    MEMORY[0x26D6B6C70](0x7373654D746F6F52, 0xEB00000000656761);
    MEMORY[0x26D6B6C70](39, 0xE100000000000000);
    v60 = *(&aBlock + 1);
    *(v38 + 17) = aBlock;
    *(v38 + 18) = v60;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_26D22E744();
    MEMORY[0x26D6B6C70](0xD00000000000001ALL, 0x800000026D23AD30);
    MEMORY[0x26D6B6C70](0x7373654D746F6F52, 0xEB00000000656761);
    MEMORY[0x26D6B6C70](2112039, 0xE300000000000000);
    sub_26D22E2E4();
    sub_26D22E804();
    MEMORY[0x26D6B6C70](46, 0xE100000000000000);
    v61 = *(&aBlock + 1);
    *(v38 + 21) = aBlock;
    *(v38 + 22) = v61;
    sub_26D22CE24();
    v107(v34, 0, 1, v46);
    sub_26D1B1ED8(v34, &v45[v108]);
    v62 = [objc_opt_self() defaultManager];
    v63 = [v62 temporaryDirectory];

    v64 = v132;
    sub_26D22CC94();

    strcpy(&aBlock, "RootMessage_");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v65 = v122;
    sub_26D22CE64();
    v66 = sub_26D22CE54();
    v68 = v67;
    (*(v123 + 8))(v65, v124);
    MEMORY[0x26D6B6C70](v66, v68);

    v70 = v126;
    v69 = v127;
    v71 = v109;
    (*(v127 + 104))(v126, *MEMORY[0x277CC91D8], v109);
    sub_26D1B1F48();
    sub_26D22CCB4();
    (*(v69 + 8))(v70, v71);

    sub_26D22CC84();
    sub_26D22CD84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04C8, &unk_26D22F380);
    v72 = v111;
    v73 = *(v111 + 72);
    v74 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_26D22F360;
    (*(v72 + 16))(v75 + v74, v64, v120);
    *(v102 + 2) = v75;
    v101[16] = 1;
    sub_26D208AB4(v130);
    (*(v72 + 32))();
    v76 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    v77 = sub_26D22E3B4();
    [v76 setTitle_];

    v78 = sub_26D22E3B4();
    [v76 setBody_];

    v79 = sub_26D22CC74();
    [v76 setDefaultActionURL_];

    [v76 setShouldSuppressScreenLightUp_];
    v80 = v112;
    sub_26D22CE24();
    v81 = v113;
    sub_26D22CE04();
    v82 = *(v103 + 8);
    v83 = v131;
    v82(v80, v131);
    v84 = sub_26D22CDF4();
    v82(v81, v83);
    [v76 setExpirationDate_];

    v85 = sub_26D22E3B4();
    v86 = [objc_opt_self() iconForApplicationIdentifier_];

    [v76 setIcon_];
    sub_26D1B2060();
    v87 = v115;
    v88 = v114;
    v89 = v116;
    (*(v115 + 104))(v114, *MEMORY[0x277D851C8], v116);
    v131 = sub_26D22E644();
    (*(v87 + 8))(v88, v89);
    v90 = swift_allocObject();
    *(v90 + 16) = v76;
    v137 = sub_26D1B20E4;
    v138 = v90;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v135 = sub_26D1B1E14;
    v136 = &block_descriptor_1;
    v91 = _Block_copy(&aBlock);
    v92 = v76;
    v93 = v117;
    sub_26D22CF44();
    v133 = MEMORY[0x277D84F90];
    sub_26D201968(&qword_2804E04B0, MEMORY[0x277D85198]);
    v94 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04B8, &unk_26D234120);
    sub_26D201914(&qword_2804E04C0, &qword_2804E04B8, &unk_26D234120);
    v95 = v119;
    v96 = v106;
    sub_26D22E704();
    v97 = v131;
    MEMORY[0x26D6B6E00](0, v93, v95, v91);
    _Block_release(v91);

    (*(v105 + 8))(v95, v96);
    (*(v118 + 8))(v93, v104);
    v98 = *(v94 + 8);
    v99 = v120;
    v98(v121, v120);
    v98(v132, v99);

    return sub_26D201864(v38, type metadata accessor for TapToRadarDraft);
  }

  return result;
}

uint64_t sub_26D1FFD00()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E13A0);
  __swift_project_value_buffer(v0, qword_2804E13A0);
  return sub_26D22CF04();
}

uint64_t BlastDoorClient.__allocating_init()()
{
  v0 = swift_allocObject();
  BlastDoorClient.init()();
  return v0;
}

uint64_t BlastDoorClient.init()()
{
  v14 = sub_26D22E614();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26D22E604();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26D22CF54();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_26D22CF94();
  v13[3] = "Invalid URL string.";
  v13[4] = v8;
  v9 = *MEMORY[0x277CF30B0];
  v13[2] = sub_26D1B2060();
  v13[1] = v9;
  sub_26D22CF44();
  v16 = MEMORY[0x277D84F90];
  sub_26D201968(&qword_2804E13B8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E13C0, &qword_26D2340D0);
  sub_26D201914(&qword_2804E13C8, &qword_2804E13C0, &qword_26D2340D0);
  sub_26D22E704();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v14);
  sub_26D22E634();
  v10 = sub_26D22CF64();
  v11 = v15;
  *(v15 + 16) = v10;
  return v11;
}

void sub_26D200050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = a1;
  sub_26D200A74(a2, a3, sub_26D2003F8, v5, a4, a5);
}

uint64_t sub_26D2000A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a6;
  v32 = a5;
  v34 = a4;
  v35 = a1;
  v36 = a2;
  v33 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E13D0, &unk_26D234110);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_26D22DA84();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26D22DAC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26D22DAD4();
  v22 = *(*(v21 - 8) + 64);
  if (MEMORY[0x28223BE20](v21) == a3)
  {
    (*(v29 + 104))(v15, *MEMORY[0x277CF2AB8], v30);
    v26 = sub_26D22DA94();
    MEMORY[0x28223BE20](v26);
    v27 = v35;
    *(&v29 - 2) = v34;
    *(&v29 - 1) = v20;
    v28 = v37;
    sub_26D200418(v27, v36, sub_26D201848);
    if (v28)
    {
      return (*(v17 + 8))(v20, v16);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
      return swift_dynamicCast();
    }
  }

  else
  {
    v23 = *(v34 + 16);
    v24 = sub_26D22D384();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    sub_26D22CF74();
    return sub_26D1B950C(v11, &qword_2804E13D0, &unk_26D234110);
  }
}

void sub_26D200418(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = sub_26D22E2E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v47 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v47 - v17;
  v51 = a1;
  v52 = a2;
  v19 = v54;
  a3(a1, a2);
  if (v19)
  {
    v55 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
    if (swift_dynamicCast())
    {
      v21 = v6;

      v22 = v7;
      v23 = v53;
      (*(v7 + 32))(v53, v14, v21);
      if (qword_2804E0488 != -1)
      {
        swift_once();
      }

      v24 = sub_26D22CF14();
      __swift_project_value_buffer(v24, qword_2804E13A0);
      v25 = v50;
      v54 = *(v7 + 16);
      v54(v50, v23, v21);
      v26 = sub_26D22CEF4();
      v27 = sub_26D22E5E4();
      v28 = v18;
      if (os_log_type_enabled(v26, v27))
      {
        v29 = swift_slowAlloc();
        v48 = v29;
        v49 = swift_slowAlloc();
        *v29 = 138412290;
        sub_26D201968(&qword_2804E04E0, MEMORY[0x277CF30A0]);
        swift_allocError();
        v54(v30, v25, v21);
        v31 = _swift_stdlib_bridgeErrorToNSError();
        v47 = *(v22 + 8);
        v47(v25, v21);
        v32 = v48;
        v33 = v49;
        *(v48 + 1) = v31;
        *v33 = v31;
        v23 = v53;
        v34 = v27;
        v35 = v32;
        _os_log_impl(&dword_26D1AF000, v26, v34, "Detected a BlastDoor explosion: %@", v32, 0xCu);
        sub_26D1B950C(v33, &unk_2804E0DB0, &qword_26D231180);
        MEMORY[0x26D6B7800](v33, -1, -1);
        MEMORY[0x26D6B7800](v35, -1, -1);

        v36 = v47;
      }

      else
      {

        v36 = *(v22 + 8);
        v36(v25, v21);
      }

      v45 = v54;
      sub_26D1FEA14(v23, v51, v52);
      v45(v28, v23, v21);
      (*(v22 + 56))(v28, 0, 1, v21);
      sub_26D201534(v28);
      sub_26D1B950C(v28, &qword_2804E0E90, &unk_26D231850);
      sub_26D201968(&qword_2804E04E0, MEMORY[0x277CF30A0]);
      swift_allocError();
      v45(v46, v23, v21);
      swift_willThrow();
      v36(v23, v21);
    }

    else
    {

      if (qword_2804E0488 != -1)
      {
        swift_once();
      }

      v37 = sub_26D22CF14();
      __swift_project_value_buffer(v37, qword_2804E13A0);
      v38 = v19;
      v39 = sub_26D22CEF4();
      v40 = sub_26D22E5F4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v19;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_26D1AF000, v39, v40, "Detected error while unpacking: %@", v41, 0xCu);
        sub_26D1B950C(v42, &unk_2804E0DB0, &qword_26D231180);
        MEMORY[0x26D6B7800](v42, -1, -1);
        MEMORY[0x26D6B7800](v41, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    (*(v7 + 56))(v18, 1, 1, v6);
    sub_26D201534(v18);
    sub_26D1B950C(v18, &qword_2804E0E90, &unk_26D231850);
  }
}

void sub_26D200A74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a5;
  v56 = a6;
  v9 = sub_26D22E2E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - v20;
  v53 = a1;
  v54 = a2;
  v22 = v58;
  a3(a1, a2);
  if (v22)
  {
    v59 = v22;
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
    if (swift_dynamicCast())
    {
      v24 = v9;

      v25 = v55;
      (*(v10 + 32))(v55, v17, v9);
      if (qword_2804E0488 != -1)
      {
        swift_once();
      }

      v26 = sub_26D22CF14();
      __swift_project_value_buffer(v26, qword_2804E13A0);
      v27 = v52;
      v58 = *(v10 + 16);
      v58(v52, v25, v9);
      v28 = sub_26D22CEF4();
      v29 = v10;
      v30 = sub_26D22E5E4();
      v31 = v21;
      if (os_log_type_enabled(v28, v30))
      {
        v32 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v32 = 138412290;
        sub_26D201968(&qword_2804E04E0, MEMORY[0x277CF30A0]);
        swift_allocError();
        v58(v33, v27, v24);
        v34 = _swift_stdlib_bridgeErrorToNSError();
        v35 = *(v29 + 8);
        v51 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v52 = v35;
        (v35)(v27, v24);
        *(v32 + 4) = v34;
        v36 = v50;
        *v50 = v34;
        v25 = v55;
        _os_log_impl(&dword_26D1AF000, v28, v30, "Detected a BlastDoor explosion: %@", v32, 0xCu);
        sub_26D1B950C(v36, &unk_2804E0DB0, &qword_26D231180);
        MEMORY[0x26D6B7800](v36, -1, -1);
        MEMORY[0x26D6B7800](v32, -1, -1);
      }

      else
      {

        v45 = *(v29 + 8);
        v51 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v52 = v45;
        (v45)(v27, v24);
      }

      v46 = v57;
      sub_26D1B0790(v25, v57, v53, v54);
      v47 = v58;
      v58(v31, v25, v24);
      (*(v29 + 56))(v31, 0, 1, v24);
      sub_26D1EA464(v46, v31);
      sub_26D1B950C(v31, &qword_2804E0E90, &unk_26D231850);
      sub_26D201968(&qword_2804E04E0, MEMORY[0x277CF30A0]);
      swift_allocError();
      v47(v48, v25, v24);
      swift_willThrow();
      (v52)(v25, v24);
    }

    else
    {

      if (qword_2804E0488 != -1)
      {
        swift_once();
      }

      v37 = sub_26D22CF14();
      __swift_project_value_buffer(v37, qword_2804E13A0);
      v38 = v22;
      v39 = sub_26D22CEF4();
      v40 = sub_26D22E5F4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v22;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_26D1AF000, v39, v40, "Detected error while unpacking: %@", v41, 0xCu);
        sub_26D1B950C(v42, &unk_2804E0DB0, &qword_26D231180);
        MEMORY[0x26D6B7800](v42, -1, -1);
        MEMORY[0x26D6B7800](v41, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    (*(v10 + 56))(v21, 1, 1, v9);
    sub_26D1EA464(v57, v21);
    sub_26D1B950C(v21, &qword_2804E0E90, &unk_26D231850);
  }
}

void sub_26D2010F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_26D200A74(a2, a3, sub_26D2013F8, v6, a5, *(a6 + 8));
}

uint64_t sub_26D201148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E13D0, &unk_26D234110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_26D22DAD4();
  v8 = *(a3 + 16);
  v9 = sub_26D22D384();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_26D201968(&qword_2804E13E0, MEMORY[0x277CF2B08]);
  sub_26D22CF84();
  return sub_26D1B950C(v7, &qword_2804E13D0, &unk_26D234110);
}

uint64_t sub_26D2012B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[1] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E13D0, &unk_26D234110);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v15 - v10;
  v12 = *(a3 + 16);
  v13 = sub_26D22D384();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_26D22CF84();
  return sub_26D1B950C(v11, &qword_2804E13D0, &unk_26D234110);
}

uint64_t BlastDoorClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t BlastDoorClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_26D201534(uint64_t a1)
{
  v2 = type metadata accessor for RCSBlastDoorDecodingResultEvent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D22DAD4();
  sub_26D201968(&qword_2804E13D8, MEMORY[0x277CF2B08]);
  if (v6 == sub_26D22D6A4())
  {
    v7 = 0;
  }

  else if (v6 == sub_26D22D534())
  {
    v7 = 1;
  }

  else if (v6 == sub_26D22D204())
  {
    v7 = 2;
  }

  else if (v6 == sub_26D22D914())
  {
    v7 = 3;
  }

  else if (v6 == sub_26D22D7F4())
  {
    v7 = 4;
  }

  else if (v6 == sub_26D22D7D4())
  {
    v7 = 5;
  }

  else if (v6 == sub_26D22D374())
  {
    v7 = 6;
  }

  else if (v6 == sub_26D22D4B4())
  {
    v7 = 7;
  }

  else if (v6 == sub_26D22D4F4())
  {
    v7 = 8;
  }

  else if (v6 == sub_26D22DED4())
  {
    v7 = 9;
  }

  else
  {
    v7 = 10;
  }

  if (qword_2804E0478 != -1)
  {
    swift_once();
  }

  v8 = sub_26D22CF14();
  __swift_project_value_buffer(v8, qword_2804E0E78);
  v9 = sub_26D22CEF4();
  v10 = sub_26D22E5E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_26D1E9B10(0x7373654D746F6F52, 0xEB00000000656761, &v15);
    *(v11 + 12) = 2048;
    *(v11 + 14) = (v7 + 1);
    _os_log_impl(&dword_26D1AF000, v9, v10, "Sending decoding result event for type: %s (%ld)", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D6B7800](v12, -1, -1);
    MEMORY[0x26D6B7800](v11, -1, -1);
  }

  sub_26D1EA664(a1, &v5[*(v2 + 20)]);
  *v5 = v7;
  sub_26D1EA1B0(v5);
  return sub_26D201864(v5, type metadata accessor for RCSBlastDoorDecodingResultEvent);
}