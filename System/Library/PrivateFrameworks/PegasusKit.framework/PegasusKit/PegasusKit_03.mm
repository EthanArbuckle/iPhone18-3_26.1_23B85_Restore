uint64_t sub_1C04C9A84(uint64_t a1)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a1);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9B28()
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](0);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9B68(uint64_t a1, char a2)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a2 & 1);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9BAC(uint64_t a1, char a2)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](qword_1C04F99D8[a2]);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9BFC(uint64_t a1, uint64_t a2)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a2);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9C40()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE44DB0);
  __swift_project_value_buffer(v0, qword_1EDE44DB0);
  return sub_1C04F63F0();
}

BOOL sub_1C04C9CD4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C04C9CB8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C04C9D0C()
{
  v0 = qword_1EBE0D428;

  return v0;
}

uint64_t sub_1C04C9D44()
{
  v0 = *aSearch;

  return v0;
}

uint64_t sub_1C04C9D90()
{
  OUTLINED_FUNCTION_9_5();
  v1 = *(v0 + 24);

  sub_1C04D3164();
}

uint64_t sub_1C04C9DFC()
{
  OUTLINED_FUNCTION_24_0(OBJC_IVAR____TtC10PegasusKit10GRPCClient__overrideRpcTimeout);
  sub_1C047B9BC();

  return OUTLINED_FUNCTION_12_4();
}

uint64_t sub_1C04C9E44()
{
  OUTLINED_FUNCTION_24_0(OBJC_IVAR____TtC10PegasusKit10GRPCClient__overrideRpcTimeout);
  sub_1C04D3164();
}

uint64_t sub_1C04C9EC0(char a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_24_0(*a2);
  sub_1C047AC48(a1);
}

uint64_t sub_1C04C9F04()
{
  v1 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults;
  OUTLINED_FUNCTION_9_5();
  v2 = *(v0 + v1);

  sub_1C04D30CC();

  return OUTLINED_FUNCTION_12_4();
}

uint64_t sub_1C04C9F6C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v34 = sub_1C04F62E0();
  v11 = OUTLINED_FUNCTION_0(v34);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  *(v5 + OBJC_IVAR____TtC10PegasusKit10GRPCClient_defaultMTUSizeInBytes) = 1500;
  v19 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__overrideRpcTimeout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D478, &qword_1C04F99B0);
  swift_allocObject();
  *(v5 + v19) = sub_1C04D3014(0, 0);
  v20 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__compressionEnabled;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D200, &unk_1C04F8810);
  swift_allocObject();
  *(v5 + v20) = sub_1C04D271C(0);
  v21 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__assumesHTTP3Capable;
  swift_allocObject();
  *(v5 + v21) = sub_1C04D271C(0);
  if (a5)
  {
    v22 = a5;
  }

  else
  {
    if (qword_1EDE44538 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDE44DC8;
  }

  *(v5 + OBJC_IVAR____TtC10PegasusKit10GRPCClient_sharedSession) = v22;
  if (a4)
  {
    v33 = a5;
    v23 = a4;
  }

  else
  {
    type metadata accessor for ActivityMonitor();
    swift_allocObject();
    v33 = a5;
    v23 = sub_1C04E72EC();
  }

  *(v5 + 16) = v23;

  v24 = a3;
  sub_1C04A3CE4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults;
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D480, &qword_1C04F99B8);
  swift_allocObject();
  *(v6 + v31) = sub_1C04D2740(v26, v28, v30);
  swift_endAccess();
  sub_1C04F62D0();
  (*(v13 + 32))(v6 + OBJC_IVAR____TtC10PegasusKit10GRPCClient_jsonEncodingOptions, v18, v34);
  OUTLINED_FUNCTION_10_3();
  sub_1C04F62B0();
  sub_1C04F62C0();
  swift_endAccess();
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D488, &qword_1C04F99C0);
  swift_allocObject();

  *(v6 + 24) = sub_1C04D3014(a1, a2);
  swift_endAccess();

  return v6;
}

id sub_1C04CA2A8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_1C04CBB14(a2, v8);
  v5 = v9;
  if (v9)
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v6 + 24))(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1C04CBB84(v8, &qword_1EBE0CE40, &qword_1C04F8900);
  }

  *a3 = v4;
  return v4;
}

uint64_t sub_1C04CA360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 40);
  if (v5)
  {
    v7 = *(a2 + 32);
    v73 = sub_1C047B774();
    v74 = v8;

    MEMORY[0x1C68DC0D0](v7, v5);

    v9 = sub_1C04C9F04();
    v12 = sub_1C04A4D5C(v9, v10, v11);
    v14 = v13;

    if (v14)
    {
      MEMORY[0x1C68DC0D0](v12, v14);

      MEMORY[0x1C68DC0D0](63, 0xE100000000000000);
    }

    v15 = sub_1C04F5190();
    if (!v16)
    {
      goto LABEL_17;
    }

    if (v15 == 1414745936 && v16 == 0xE400000000000000)
    {
    }

    else
    {
      v18 = sub_1C04F6D80();

      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    MEMORY[0x1C68DC0D0](0x54534F5020582D20, 0xE800000000000000);
LABEL_17:
    MEMORY[0x1C68DC0D0](v73, v74);
    MEMORY[0x1C68DC0D0](8231, 0xE200000000000000);
    MEMORY[0x1C68DC0D0](10016, 0xE200000000000000);

    v26 = sub_1C04F51D0();
    v69 = a4;
    if (!v26)
    {
      v26 = sub_1C04F66F0();
    }

    v27 = v26;
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_3_11(a5);
    v30 = v29 & v28;
    v32 = (v31 + 63) >> 6;

    v33 = 0;
    if (v30)
    {
      while (1)
      {
        v34 = v27;
LABEL_25:
        v36 = (v33 << 10) | (16 * __clz(__rbit64(v30)));
        v37 = (*(a5 + 48) + v36);
        v38 = *v37;
        v39 = v37[1];
        v40 = *(*(a5 + 56) + v36 + 8);

        if ((sub_1C04CAC7C() & 1) == 0)
        {
          break;
        }

        v41 = sub_1C04F67F0();
        v42 = sub_1C04CADC0(v41, v38, v39);
        MEMORY[0x1C68DC060](v42);

        v43 = sub_1C047D36C();
        if ((v44 & 1) == 0)
        {

          OUTLINED_FUNCTION_5_9();
          goto LABEL_30;
        }

        v45 = v43;
        swift_isUniquelyReferenced_nonNull_native();
        v72 = v34;
        v46 = *(v34 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
        sub_1C04F6CC0();
        v47 = *(*(v72 + 48) + 16 * v45 + 8);

        v48 = *(*(v72 + 56) + 16 * v45 + 8);
        sub_1C04F6CE0();

        v27 = v72;

        OUTLINED_FUNCTION_5_9();
LABEL_31:
        v30 &= v30 - 1;

        if (!v30)
        {
          goto LABEL_21;
        }
      }

LABEL_30:
      v27 = v34;
      goto LABEL_31;
    }

    while (1)
    {
LABEL_21:
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v35 >= v32)
      {
        break;
      }

      v30 = *(v74 + 8 * v35);
      ++v33;
      if (v30)
      {
        v34 = v27;
        v33 = v35;
        goto LABEL_25;
      }
    }

    v49 = sub_1C04CAE94(a5, v27);
    v50 = 0;
    OUTLINED_FUNCTION_3_11(v49);
    v53 = v52 & v51;
    v55 = (v54 + 63) >> 6;
    while (v53)
    {
LABEL_39:
      v57 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v58 = (v50 << 10) | (16 * v57);
      v59 = (*(v49 + 48) + v58);
      v60 = *v59;
      v61 = v59[1];
      if (*v59 != 0x65696B6F6F43 || v61 != 0xE600000000000000)
      {
        v63 = (*(v49 + 56) + v58);
        v64 = v63[1];
        v71 = *v63;
        if ((sub_1C04F6D80() & 1) == 0)
        {
          v65 = v60 == 0x2D746E65746E6F43 && v61 == 0xEC00000065707954;
          if (v65 || (OUTLINED_FUNCTION_8_5() & 1) != 0)
          {
            MEMORY[0x1C68DC0D0](0xD000000000000024, 0x80000001C04FDE70);
          }

          else
          {
            v66 = v60 == 0xD000000000000011 && 0x80000001C04FCC30 == v61;
            if (!v66 && (OUTLINED_FUNCTION_8_5() & 1) == 0)
            {
              v67 = v60 == 1953722184 && v61 == 0xE400000000000000;
              if (!v67 && (OUTLINED_FUNCTION_8_5() & 1) == 0)
              {

                MEMORY[0x1C68DC0D0](v60, v61);

                MEMORY[0x1C68DC0D0](8250, 0xE200000000000000);
                MEMORY[0x1C68DC0D0](v71, v64);

                MEMORY[0x1C68DC0D0](39, 0xE100000000000000);
                MEMORY[0x1C68DC0D0](0x2720482D20, 0xE500000000000000);
              }
            }
          }
        }
      }
    }

    while (1)
    {
      v56 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v56 >= v55)
      {

        MEMORY[0x1C68DC0D0](a3, v69);
        MEMORY[0x1C68DC0D0](39, 0xE100000000000000);
        MEMORY[0x1C68DC0D0](0x2720642D20, 0xE500000000000000);

        return 1819440483;
      }

      v53 = *(8 * v56);
      ++v50;
      if (v53)
      {
        v50 = v56;
        goto LABEL_39;
      }
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (qword_1EDE44480 != -1)
  {
LABEL_64:
    OUTLINED_FUNCTION_0_11();
  }

  v19 = sub_1C04F6400();
  __swift_project_value_buffer(v19, qword_1EDE44DB0);
  v20 = sub_1C04F63E0();
  v21 = sub_1C04F6A20();
  if (OUTLINED_FUNCTION_19_1(v21))
  {
    v22 = OUTLINED_FUNCTION_25_0();
    *v22 = 0;
    OUTLINED_FUNCTION_13_5(&dword_1C0479000, v23, v24, "No gateway declared, unable to craft curl equivalent");
    MEMORY[0x1C68DCEB0](v22, -1, -1);
  }

  return 0;
}

uint64_t sub_1C04CAAA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C04F53F0();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  switch(a3 >> 62)
  {
    case 2uLL:
      v10 = *(a2 + 16);
      break;
    default:
      break;
  }

  sub_1C048087C(a2, a3);
  sub_1C04F5400();
  sub_1C04CBACC(qword_1EDE423D0, MEMORY[0x1E6969050]);
  v11 = 0;
  while (1)
  {
    result = sub_1C04F6B70();
    if (v23)
    {
      v17 = OUTLINED_FUNCTION_88();
      result = v18(v17);
      v19 = *(a1 + 16);
      if (v19 != v11)
      {
        if (v11 < v19)
        {
          return 0;
        }

        goto LABEL_16;
      }

      return 1;
    }

    v13 = *(a1 + 16);
    if (v11 == v13)
    {
      v20 = OUTLINED_FUNCTION_88();
      v21(v20);
      return 1;
    }

    if (v11 >= v13)
    {
      break;
    }

    v14 = *(a1 + 32 + v11++);
    if (v22 != v14)
    {
      v15 = OUTLINED_FUNCTION_88();
      v16(v15);
      return 0;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C04CAC7C()
{

  do
  {
    while (1)
    {
      v0 = sub_1C04F6840();
      if (!v1)
      {

        sub_1C04F6840();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_1C04F6840();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_1C04F6D80();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

unint64_t sub_1C04CADC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1C04F6810();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1C04F68D0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04CAE94(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C04CB788(a1, sub_1C04CBA44, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C04CAF18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC10PegasusKit10GRPCClient_jsonEncodingOptions;
  v4 = sub_1C04F62E0();
  OUTLINED_FUNCTION_1_0(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + OBJC_IVAR____TtC10PegasusKit10GRPCClient__overrideRpcTimeout);

  v7 = *(v0 + OBJC_IVAR____TtC10PegasusKit10GRPCClient__compressionEnabled);

  v8 = *(v0 + OBJC_IVAR____TtC10PegasusKit10GRPCClient__assumesHTTP3Capable);

  v9 = *(v0 + OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults);

  return v0;
}

uint64_t sub_1C04CAFCC()
{
  sub_1C04CAF18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for GRPCClient()
{
  result = qword_1EDE44838;
  if (!qword_1EDE44838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C04CB078()
{
  result = sub_1C04F62E0();
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

uint64_t get_enum_tag_for_layout_string_10PegasusKit10GRPCClientC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C04CB16C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 25))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 5)
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

uint64_t sub_1C04CB1AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C04CB1F4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1C04CB224()
{
  result = qword_1EBE0D448;
  if (!qword_1EBE0D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D448);
  }

  return result;
}

unint64_t sub_1C04CB278(uint64_t a1)
{
  *(a1 + 8) = sub_1C04CB2A8();
  result = sub_1C04CB2FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C04CB2A8()
{
  result = qword_1EBE0D450;
  if (!qword_1EBE0D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D450);
  }

  return result;
}

unint64_t sub_1C04CB2FC()
{
  result = qword_1EBE0D458;
  if (!qword_1EBE0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D458);
  }

  return result;
}

unint64_t sub_1C04CB354()
{
  result = qword_1EBE0D460;
  if (!qword_1EBE0D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D460);
  }

  return result;
}

uint64_t sub_1C04CB3A8(uint64_t a1)
{
  result = sub_1C04CBACC(&qword_1EBE0D468, type metadata accessor for GRPCClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C04CB424(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D470, &qword_1C04F99A8);
  v39 = a2;
  result = sub_1C04F6D20();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_1C04CB6D8(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_1C04F6E60();
    sub_1C04F67E0();
    result = sub_1C04F6E80();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1C04CB6D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C04F9710;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C04CB73C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_1C04CB788(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  sub_1C04CBA88(a1, a2, a3, v50);
  v6 = v50[1];
  v7 = v50[3];
  v8 = v50[4];
  v45 = v50[5];
  v46 = v50[0];
  v9 = (v50[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v49[0] = v14;
      v49[1] = v15;
      v49[2] = v17;
      v49[3] = v18;

      v45(v48, v49);

      v19 = v48[0];
      v20 = v48[1];
      v21 = v48[2];
      v22 = v48[3];
      v23 = *v51;
      v25 = sub_1C047D36C();
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
          sub_1C04F6CD0();
        }
      }

      else
      {
        v30 = v51;
        sub_1C04CB424(v28, v47 & 1);
        v31 = *v30;
        v32 = sub_1C047D36C();
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v51;
      if (v29)
      {

        v35 = (v34[7] + 16 * v25);
        v36 = v35[1];
        *v35 = v21;
        v35[1] = v22;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v34[6] + 16 * v25);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v34[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v34[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v34[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C04CBAC4();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C04F6DD0();
  __break(1u);
  return result;
}

uint64_t sub_1C04CBA44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C04CB73C(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_1C04CBA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1C04CBACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C04CBB14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE40, &qword_1C04F8900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04CBB84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for GRPCClient.Activity(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for GRPCClient.Activity(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_3_11(uint64_t result)
{
  v1 = *(result + 64);
  *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_1C04F6D80();
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_13_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1C04CBDAC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D490);
  __swift_project_value_buffer(v0, qword_1EBE0D490);
  return sub_1C04F63F0();
}

uint64_t sub_1C04CBE38()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v10 = sub_1C04F6250();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  qword_1EBE0D4A8 = v10;
  unk_1EBE0D4B0 = v12;
  return result;
}

uint64_t PegasusProxyForLookup.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void sub_1C04CC054()
{
  *&xmmword_1EBE0D4B8 = 0xD00000000000002BLL;
  *(&xmmword_1EBE0D4B8 + 1) = 0x80000001C04FDED0;
  qword_1EBE0D4C8 = 0xD000000000000010;
  unk_1EBE0D4D0 = 0x80000001C04FDF00;
  *&xmmword_1EBE0D4D8 = 0xD000000000000013;
  *(&xmmword_1EBE0D4D8 + 1) = 0x80000001C04FDF20;
}

void *PegasusProxyForLookup.init()()
{
  if (qword_1EBE0CA20 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  v0 = qword_1EBE0D4A8;
  v1 = unk_1EBE0D4B0;

  return sub_1C04B8AAC(v0, v1, 0, 0, 0xF000000000000000, 0);
}

uint64_t sub_1C04CC1C0()
{
  v1 = sub_1C04F6200();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = *(v0 + 16);

  sub_1C04F6220();
  v7 = type metadata accessor for ResourceAccessSpan();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1C0482EFC(v6, 16, v5, 0, 1);
}

uint64_t sub_1C04CC268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a1;
  v87 = *v2;
  v88 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D518, &qword_1C04F9EE8);
  OUTLINED_FUNCTION_152(v81);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v6);
  v79 = (&v74 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D520, &qword_1C04F9EF0);
  v9 = OUTLINED_FUNCTION_0(v8);
  v82 = v10;
  v83 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D528, &unk_1C04F9EF8);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v74 - v21;
  v78 = sub_1C04F54B0();
  v22 = OUTLINED_FUNCTION_0(v78);
  v77 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v85 = sub_1C04F5790();
  v29 = OUTLINED_FUNCTION_0(v85);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBE0CA20 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  v35 = qword_1EBE0D4A8;
  v36 = unk_1EBE0D4B0;

  v37 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  *&v92 = v37;
  sub_1C049FB48(v35, v36, 0x6567612D72657375, 0xEA0000000000746ELL);
  sub_1C04B7390(v92);
  v38 = v3[15];
  v39 = *(v38 + 16);
  sub_1C04F6490();
  if (v92 == 5)
  {
    v82 = v17;
    v83 = v15;
    v40 = v85;
    v79 = *(v31 + 16);
    v79(&v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v86, v85);
    v41 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v42 = (v33 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = *(v31 + 32);
    v81 = v41;
    v45 = v43 + v41;
    v46 = v34;
    v76 = v44;
    v44(v45, v34, v40);
    v75 = v42;
    *(v43 + v42) = v87;
    sub_1C04F54A0();
    v47 = sub_1C04F5470();
    v49 = v48;
    (*(v77 + 8))(v28, v78);
    *&v92 = v47;
    *(&v92 + 1) = v49;
    LOBYTE(v93) = 0;
    *(&v93 + 1) = v89[0];
    DWORD1(v93) = *(v89 + 3);
    *(&v93 + 1) = sub_1C04CEFF8;
    v94 = v43;
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v50 = sub_1C04D0244(4, 0);
    v80 = v50;

    v90 = v50;
    v51 = v34;
    v52 = v85;
    v79(v51, v86, v85);
    v53 = v75;
    v54 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v76(v56 + v81, v46, v52);
    *(v56 + v53) = v3;
    *(v56 + v54) = v88;
    v57 = v56 + v55;
    v58 = v93;
    *v57 = v92;
    *(v57 + 16) = v58;
    *(v57 + 32) = v94;
    *(v56 + ((v55 + 47) & 0xFFFFFFFFFFFFFFF8)) = v87;

    sub_1C04C0838(&v92, v89);
    sub_1C04F6410();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D4F0, &qword_1C04F9DD0);
    sub_1C047C1A4(&qword_1EDE40898, &qword_1EBE0D070, &qword_1C04F9350);
    sub_1C047C1A4(&qword_1EBE0D4F8, &qword_1EBE0D4F0, &qword_1C04F9DD0);
    v59 = v84;
    sub_1C04F65B0();

    sub_1C047C1A4(&qword_1EBE0D538, &qword_1EBE0D528, &unk_1C04F9EF8);
    v60 = v83;
    v61 = sub_1C04F64E0();
    sub_1C04C0894(&v92);
    (*(v82 + 8))(v59, v60);
  }

  else
  {
    *(v88 + qword_1EDE44718) = 34;
    sub_1C0483574();
    if (qword_1EBE0CA18 != -1)
    {
      swift_once();
    }

    v62 = sub_1C04F6400();
    __swift_project_value_buffer(v62, qword_1EBE0D490);

    v63 = sub_1C04F63E0();
    v64 = sub_1C04F6A20();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v92 = v66;
      *v65 = 136315138;
      v67 = *(v38 + 16);
      sub_1C04F6490();
      v91 = v89[0];
      v68 = sub_1C04F6790();
      v70 = sub_1C047D76C(v68, v69, &v92);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1C0479000, v63, v64, "Multimodal Lookup Search is disabled: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1C68DCEB0](v66, -1, -1);
      MEMORY[0x1C68DCEB0](v65, -1, -1);
    }

    *v79 = 3;
    swift_storeEnumTagMultiPayload();
    v71 = v80;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D530, &qword_1EBE0D520, &qword_1C04F9EF0);
    v72 = v83;
    v61 = sub_1C04F64E0();
    (*(v82 + 8))(v71, v72);
  }

  return v61;
}

uint64_t sub_1C04CCB04(uint64_t a1)
{
  v2 = sub_1C04F5DA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C04F5C70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  sub_1C04F5780();
  sub_1C04F5590();
  sub_1C04F5570();
  v18 = sub_1C04F5540();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
  {
    v28 = v3;
    sub_1C04A13B0(v17, v15, &qword_1EBE0CAA0, &qword_1C04F7A40);
    v19 = *(v18 - 8);
    v20 = (*(v19 + 88))(v15, v18);
    if (v20 == *MEMORY[0x1E69BCB98])
    {
      (*(v7 + 104))(v10, *MEMORY[0x1E69BD180], v6);
      v21 = sub_1C04F5560();
      sub_1C04F5A90();
      v21(v30, 0);
      (*(v28 + 104))(v29, *MEMORY[0x1E69BD4F8], v2);
      v22 = sub_1C04F5560();
      sub_1C04F5A30();
      v22(v30, 0);
    }

    else if (v20 == *MEMORY[0x1E69BCB90])
    {
      (*(v7 + 104))(v10, *MEMORY[0x1E69BD180], v6);
      v23 = sub_1C04F5550();
      sub_1C04F5970();
      v23(v30, 0);
    }

    (*(v19 + 8))(v15, v18);
  }

  sub_1C04A12B4(v17, &qword_1EBE0CAA0, &qword_1C04F7A40);
  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBE0CA20;
  v25 = qword_1EDE44DD0;
  if (v24 != -1)
  {
    swift_once();
  }

  sub_1C04A85AC(a1, qword_1EBE0D4A8, unk_1EBE0D4B0, 0);

  v26 = sub_1C04F55B0();
  return (*(*(v26 - 8) + 8))(a1, v26);
}

uint64_t sub_1C04CCF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v96 = a6;
  v98 = a5;
  v97 = a3;
  v107 = a2;
  v105 = a1;
  v109 = a7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D518, &qword_1C04F9EE8);
  v8 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v87 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D520, &qword_1C04F9EF0);
  v104 = *(v108 - 8);
  v10 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v103 = &v87 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D540, &qword_1C04F9F08);
  v92 = *(v93 - 8);
  v12 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v87 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D548, &qword_1C04F9F10);
  v94 = *(v95 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v87 - v18);
  v20 = sub_1C04F54F0();
  v100 = *(v20 - 8);
  v21 = *(v100 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v99 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v87 - v31);
  v33 = sub_1C04F5790();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v37;
  v38 = *(v37 + 16);
  v39 = v107;
  v107 = v40;
  v38(v36, v39);
  sub_1C04A13B0(v105, v32, &qword_1EBE0D088, &qword_1C04F9370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v36;
    v42 = *v32;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EBE0CA18 != -1)
    {
      swift_once();
    }

    v43 = sub_1C04F6400();
    __swift_project_value_buffer(v43, qword_1EBE0D490);
    v44 = v42;
    v45 = sub_1C04F63E0();
    v46 = sub_1C04F6A20();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v112[0] = v48;
      *v47 = 136315138;
      v111[0] = v42;
      v49 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v50 = sub_1C04F6790();
      v52 = sub_1C047D76C(v50, v51, v112);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1C0479000, v45, v46, "context fetch failure: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1C68DCEB0](v48, -1, -1);
      MEMORY[0x1C68DCEB0](v47, -1, -1);
    }

    v36 = v41;
    *v101 = 7;
    swift_storeEnumTagMultiPayload();
    v53 = v103;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D530, &qword_1EBE0D520, &qword_1C04F9EF0);
    v54 = v108;
    v55 = sub_1C04F64E0();

    (*(v104 + 8))(v53, v54);
  }

  else
  {
    v88 = a4;
    v56 = v100;
    v57 = *(v100 + 32);
    v57(v28, v32, v20);
    sub_1C04F5760();
    sub_1C0482664(16, v24, v19);
    v58 = *(v56 + 8);
    v105 = v56 + 8;
    v89 = v58;
    v58(v24, v20);
    v59 = v20;
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      sub_1C04A12B4(v19, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v88 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EBE0CA18 != -1)
      {
        swift_once();
      }

      v60 = sub_1C04F6400();
      __swift_project_value_buffer(v60, qword_1EBE0D490);
      v61 = sub_1C04F63E0();
      v62 = sub_1C04F6A20();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1C0479000, v61, v62, "unable to create unified query context", v63, 2u);
        MEMORY[0x1C68DCEB0](v63, -1, -1);
      }

      *v101 = 8;
      swift_storeEnumTagMultiPayload();
      v64 = v103;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EBE0D530, &qword_1EBE0D520, &qword_1C04F9EF0);
      v65 = v108;
      v55 = sub_1C04F64E0();
      (*(v104 + 8))(v64, v65);
      v89(v28, v20);
    }

    else
    {
      v66 = v99;
      v57(v99, v19, v20);
      (*(v100 + 16))(v24, v66, v20);
      sub_1C04F5770();
      sub_1C047ACAC();
      v67 = v88;
      if (qword_1EBE0CA28 != -1)
      {
        swift_once();
      }

      v112[0] = xmmword_1EBE0D4B8;
      v112[1] = *&qword_1EBE0D4C8;
      v112[2] = xmmword_1EBE0D4D8;
      v68 = sub_1C04B7354();
      v111[3] = &type metadata for NetworkFeedbackGenerator;
      v111[4] = &protocol witness table for NetworkFeedbackGenerator;
      v69 = swift_allocObject();
      v111[0] = v69;
      v70 = v98;
      v71 = v98[1];
      *(v69 + 16) = *v98;
      *(v69 + 32) = v71;
      *(v69 + 48) = *(v70 + 32);
      sub_1C04C0838(v70, v110);
      v72 = sub_1C04D9C44(v112, v36, v68, v111, 1);
      v74 = v73;

      sub_1C04A12B4(v111, &qword_1EBE0CE40, &qword_1C04F8900);
      v75 = v72;

      v76 = nw_activity_create();
      v77 = v75;
      sub_1C04E0B04(v77, v76, 0, 0xE000000000000000, v67);
      swift_unknownObjectRelease();

      v111[0] = v74;

      sub_1C04F6410();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D550, &qword_1C04FA7C0);
      v104 = v59;
      sub_1C047C1A4(&qword_1EBE0D558, &qword_1EBE0D550, &qword_1C04FA7C0);
      v103 = v28;
      sub_1C047C1A4(&qword_1EBE0D530, &qword_1EBE0D520, &qword_1C04F9EF0);
      v78 = v90;
      sub_1C04F6530();

      v79 = swift_allocObject();
      v80 = v96;
      *(v79 + 16) = v67;
      *(v79 + 24) = v80;
      sub_1C047C1A4(&qword_1EBE0D560, &qword_1EBE0D540, &qword_1C04F9F08);

      v81 = v91;
      v82 = v93;
      sub_1C04F6500();

      (*(v92 + 8))(v78, v82);
      sub_1C047C1A4(&qword_1EBE0D568, &qword_1EBE0D548, &qword_1C04F9F10);
      v83 = v95;
      v55 = sub_1C04F64E0();

      (*(v94 + 8))(v81, v83);
      v84 = v104;
      v85 = v89;
      v89(v99, v104);
      v85(v103, v84);
    }
  }

  result = (*(v106 + 8))(v36, v107);
  *v109 = v55;
  return result;
}

uint64_t sub_1C04CDF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v73 = a3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D518, &qword_1C04F9EE8);
  v4 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v6 = &v57 - v5;
  v7 = sub_1C04F5B60();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C04F5BC0();
  v69 = *(v67 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x1EEE9AC00](v67);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - v13;
  v15 = sub_1C04F57C0();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  if (qword_1EBE0CA18 != -1)
  {
    swift_once();
  }

  v23 = sub_1C04F6400();
  v24 = __swift_project_value_buffer(v23, qword_1EBE0D490);
  v25 = v16[2];
  v25(v22, a1, v15);
  v71 = a1;
  v65 = v25;
  v66 = v16 + 2;
  v25(v20, a1, v15);
  v64 = v24;
  v26 = sub_1C04F63E0();
  v27 = v15;
  v28 = sub_1C04F6A40();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    v58 = v28;
    v30 = v29;
    v59 = swift_slowAlloc();
    v74 = v59;
    *v30 = 136315394;
    v57 = v26;
    sub_1C04F57A0();
    v31 = v67;
    v32 = sub_1C04F6790();
    v60 = v6;
    v34 = v33;
    v35 = v16[1];
    v35(v22, v27);
    v36 = sub_1C047D76C(v32, v34, &v74);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    v37 = v61;
    sub_1C04F57B0();
    v38 = sub_1C04F5B50();
    v40 = v39;
    (*(v62 + 8))(v37, v63);
    v35(v20, v27);
    v41 = sub_1C047D76C(v38, v40, &v74);
    v6 = v60;

    *(v30 + 14) = v41;
    v42 = v57;
    _os_log_impl(&dword_1C0479000, v57, v58, "received rpc response with search status: %s, error detail: %s", v30, 0x16u);
    v43 = v59;
    swift_arrayDestroy();
    MEMORY[0x1C68DCEB0](v43, -1, -1);
    MEMORY[0x1C68DCEB0](v30, -1, -1);

    v44 = v27;
  }

  else
  {

    v45 = v16[1];
    v45(v20, v15);
    v45(v22, v15);
    v44 = v15;
    v31 = v67;
  }

  v46 = v71;
  sub_1C04F57A0();
  v47 = v68;
  v48 = v69;
  (*(v69 + 104))(v68, *MEMORY[0x1E69BCED0], v31);
  sub_1C04B71BC(&qword_1EDE41530, MEMORY[0x1E69BCEE0]);
  v49 = sub_1C04F6730();
  v50 = *(v48 + 8);
  v50(v47, v31);
  v50(v14, v31);
  if (v49)
  {
    *(v70 + qword_1EDE44718) = 19;
    sub_1C0483574();
    *v6 = 6;
  }

  else
  {
    *(v70 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v51 = sub_1C04F63E0();
    v52 = sub_1C04F6A40();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v6;
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1C0479000, v51, v52, "publishing successful rpc response", v54, 2u);
      v55 = v54;
      v6 = v53;
      MEMORY[0x1C68DCEB0](v55, -1, -1);
    }

    v65(v6, v46, v44);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04CE5D4(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D518, &qword_1C04F9EE8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = *a1;
  v37 = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v10 = v33;
    v11 = v34;
    v12 = v35;
    v13 = v36;
    sub_1C04B915C(v33, v34, v35, v36, a2);
    sub_1C0482080(v10, v11, v12, v13);
    goto LABEL_3;
  }

  v37 = v8;
  v14 = v8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = v8;
    v18 = v8;
    if (swift_dynamicCast())
    {
      v19 = v37;
      sub_1C04CED34();
      v20 = swift_allocError();
      *v21 = v19;
      sub_1C04B9574(v20, a2);

      *v7 = v19;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EBE0CA18 != -1)
    {
      swift_once();
    }

    v22 = sub_1C04F6400();
    __swift_project_value_buffer(v22, qword_1EBE0D490);
    v23 = v8;
    v24 = sub_1C04F63E0();
    v25 = sub_1C04F6A20();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v37 = v8;
      v28 = v8;
      v29 = sub_1C04F6790();
      v31 = sub_1C047D76C(v29, v30, &v33);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1C0479000, v24, v25, "search failure: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C68DCEB0](v27, -1, -1);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
    }

LABEL_3:
    *v7 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v15 = v33;
  v16 = v34;
  v17 = v35;
  sub_1C04B93C4(v33, v34, v35, a2);
  *v7 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v15, v16, v17);
}

uint64_t sub_1C04CE964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  v43 = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0) - 8) + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v36 = sub_1C04F65C0();
  v9 = OUTLINED_FUNCTION_0(v36);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1C04F6A80();
  v18 = OUTLINED_FUNCTION_0(v17);
  v41 = v19;
  v42 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D4E8, &qword_1C04F9DC8);
  OUTLINED_FUNCTION_0(v37);
  v40 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v35 - v29;
  v31 = sub_1C04CC1C0();
  v44 = sub_1C04CC268(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D4F0, &qword_1C04F9DD0);
  sub_1C047C1A4(&qword_1EBE0D4F8, &qword_1EBE0D4F0, &qword_1C04F9DD0);
  sub_1C04CED34();
  sub_1C04F6580();

  (*(v11 + 16))(v16, v38, v36);
  sub_1C04F6A90();
  v44 = v39;
  v32 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v32);
  sub_1C04ABCD8();
  sub_1C047C1A4(&qword_1EBE0D508, &qword_1EBE0D4E8, &qword_1C04F9DC8);
  sub_1C04B71BC(qword_1EDE41568, sub_1C04ABCD8);

  v33 = v37;
  sub_1C04F6550();

  sub_1C04A12B4(v8, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v41 + 8))(v24, v42);
  return (*(v40 + 8))(v30, v33);
}

unint64_t sub_1C04CED34()
{
  result = qword_1EBE0D500;
  if (!qword_1EBE0D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D500);
  }

  return result;
}

uint64_t sub_1C04CED88(uint64_t a1)
{
  v2 = sub_1C04CC1C0();
  v3 = sub_1C04CC268(a1, v2);

  return v3;
}

uint64_t PegasusProxyForLookup.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C04CEE0C()
{
  result = qword_1EBE0D510;
  if (!qword_1EBE0D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D510);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForLookup.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C04CEFF8(uint64_t a1)
{
  v3 = *(sub_1C04F5790() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04CCB04(a1);
}

uint64_t sub_1C04CF094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5790() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04CCF78(a1, v2 + v6, v10, v11, (v2 + v9), v12, a2);
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_once();
}

uint64_t sub_1C04CF194()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE44D60);
  __swift_project_value_buffer(v0, qword_1EDE44D60);
  OUTLINED_FUNCTION_0_12();
  return sub_1C04F63F0();
}

uint64_t sub_1C04CF1FC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0F6F0);
  __swift_project_value_buffer(v0, qword_1EBE0F6F0);
  return sub_1C04F63F0();
}

uint64_t sub_1C04CF278()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE44D90);
  __swift_project_value_buffer(v0, qword_1EDE44D90);
  OUTLINED_FUNCTION_0_12();
  return sub_1C04F63F0();
}

uint64_t sub_1C04CF324(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1C04F5460();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 256;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 81) = 0;
  sub_1C04D2E10();
  v44 = 0xD000000000000014;
  v45 = 0x80000001C04FCE10;
  v48 = 45;
  v49 = 0xE100000000000000;
  v46 = 95;
  v47 = 0xE100000000000000;
  sub_1C04D2E54();
  sub_1C04F6B90();
  *(v2 + 88) = sub_1C04F6B10();
  OUTLINED_FUNCTION_2();
  v24 = *(v23 + 136);
  v25 = sub_1C04F63D0();
  __swift_storeEnumTagSinglePayload(v3 + v24, 1, 1, v25);
  OUTLINED_FUNCTION_2();
  v27 = *(v26 + 152);
  type metadata accessor for Locker();
  v28 = swift_allocObject();
  v29 = OUTLINED_FUNCTION_44_0();
  *(v28 + 16) = v29;
  *v29 = 0;
  *(v3 + v27) = v28;
  LOBYTE(v27) = v43;
  sub_1C04F5450();
  OUTLINED_FUNCTION_2();
  (*(v17 + 32))(v3 + *(v30 + 144), v22, v14);
  swift_weakAssign();
  *(v3 + 80) = v27 & 1;
  v31 = *(v3 + 88);

  sub_1C04F63C0();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  OUTLINED_FUNCTION_2();
  v33 = *(v32 + 136);
  swift_beginAccess();
  sub_1C04D2EA8(v13, v3 + v33);
  swift_endAccess();
  v44 = v3;

  v34 = sub_1C04F6790();
  v36 = v35;
  v37 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v37);
  sub_1C04E786C(a1, v34, v36, v3, &off_1F3F85FC0);

  os_unfair_lock_unlock(v37);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v38 + 8))(v3, &off_1F3F85FC0, ObjectType, v38);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C04870FC(v3 + v33, v11);
  result = __swift_getEnumTagSinglePayload(v11, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = *(v3 + 88);
    sub_1C04F6AE0();
    sub_1C04F63B0();

    (*(*(v25 - 8) + 8))(v11, v25);
    return v3;
  }

  return result;
}

uint64_t sub_1C04CF79C(uint64_t a1, int a2)
{
  v3 = v2;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v33 = sub_1C04F5460();
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 256;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 81) = 0;
  sub_1C04D2E10();
  v36 = qword_1EDE44450;
  v37 = off_1EDE44458;
  v40 = 45;
  v41 = 0xE100000000000000;
  v38 = 95;
  v39 = 0xE100000000000000;
  sub_1C04D2E54();
  sub_1C04F6B90();

  *(v2 + 88) = sub_1C04F6B10();
  v15 = *(*v2 + 136);
  v16 = sub_1C04F63D0();
  __swift_storeEnumTagSinglePayload(v3 + v15, 1, 1, v16);
  v17 = *(*v3 + 19);
  type metadata accessor for Locker();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  *(v3 + v17) = v18;
  sub_1C04F5450();
  v20 = v14;
  LOBYTE(v14) = v34;
  (*(v11 + 32))(v3 + *(*v3 + 18), v20, v33);
  swift_weakAssign();
  *(v3 + 80) = v14 & 1;
  v21 = v3[11];

  sub_1C04F63C0();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  v22 = *(*v3 + 17);
  swift_beginAccess();
  sub_1C04D2EA8(v10, v3 + v22);
  swift_endAccess();
  v36 = v3;

  v23 = sub_1C04F6790();
  v25 = v24;
  v26 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v26);
  sub_1C04E786C(a1, v23, v25, v3, &off_1F3F85FC0);

  os_unfair_lock_unlock(v26);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v27 + 8))(v3, &off_1F3F85FC0, ObjectType, v27);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v29 = v35;
  sub_1C04870FC(v3 + v22, v35);
  result = __swift_getEnumTagSinglePayload(v29, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v3[11];
    sub_1C04F6AE0();
    sub_1C04F63B0();

    (*(*(v16 - 8) + 8))(v29, v16);
    return v3;
  }

  return result;
}

uint64_t *sub_1C04CFC5C()
{
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225();
  }

  return &qword_1EDE42878;
}

uint64_t sub_1C04CFC9C()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE42550);
  __swift_project_value_buffer(v0, qword_1EDE42550);
  return sub_1C04F63F0();
}

const char *sub_1C04CFD20(char a1)
{
  if (a1)
  {
    return "Fetch";
  }

  else
  {
    return "lifetime";
  }
}

uint64_t sub_1C04CFD4C()
{
  v0 = qword_1EDE44450;

  return v0;
}

uint64_t sub_1C04CFD84()
{
  v0 = *aContextvendor_0;

  return v0;
}

uint64_t sub_1C04CFDDC(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void *sub_1C04CFDEC()
{
  type metadata accessor for ContextVendor();
  v0 = swift_allocObject();
  result = ContextVendor.init()();
  qword_1EDE42878 = v0;
  return result;
}

uint64_t ContextVendor.__allocating_init()()
{
  OUTLINED_FUNCTION_3_12();
  v0 = swift_allocObject();
  ContextVendor.init()();
  return v0;
}

uint64_t static ContextVendor.shared.getter()
{
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225();
  }

  swift_beginAccess();
}

uint64_t static ContextVendor.shared.setter(uint64_t a1)
{
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225();
  }

  swift_beginAccess();
  qword_1EDE42878 = a1;
}

uint64_t (*static ContextVendor.shared.modify())()
{
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C04CFFAC@<X0>(void *a1@<X8>)
{
  sub_1C04CFC5C();
  swift_beginAccess();
  *a1 = qword_1EDE42878;
}

uint64_t sub_1C04D0000(uint64_t *a1)
{
  v1 = *a1;

  sub_1C04CFC5C();
  swift_beginAccess();
  qword_1EDE42878 = v1;
}

uint64_t ContextVendor.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void *ContextVendor.init()()
{
  v1 = v0;
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v0[2] = sub_1C04E72EC();
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D570, &qword_1C04F9F30);
  swift_allocObject();
  v0[4] = sub_1C047F5F0(0);
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D578, &qword_1C04F9F38);
  OUTLINED_FUNCTION_29_1(v3);

  v5 = sub_1C04CF79C(v4, 0);
  v6 = v1[3];
  v1[3] = v5;

  return v1;
}

void *ContextVendor.deinit()
{
  v1 = MEMORY[0x1C68DC7C0]();
  sub_1C04CFDDC(0);
  objc_autoreleasePoolPop(v1);
  v2 = v0[2];

  v3 = v0[3];

  v4 = v0[4];

  return v0;
}

uint64_t ContextVendor.__deallocating_deinit()
{
  ContextVendor.deinit();
  v0 = OUTLINED_FUNCTION_3_12();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C04D0244(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D598, &qword_1C04FA190);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5A0, &unk_1C04FA198);
  OUTLINED_FUNCTION_29_1(v14);

  sub_1C04F64C0();
  sub_1C047C1A4(&qword_1EDE40868, &qword_1EBE0D5A0, &unk_1C04FA198);

  sub_1C04F64D0();
  sub_1C047C1A4(&qword_1EDE40860, &qword_1EBE0D598, &qword_1C04FA190);
  v15 = sub_1C04F64E0();

  (*(v8 + 8))(v12, v5);
  return v15;
}

uint64_t sub_1C04D0438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C04F6200();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);

  sub_1C04F61D0();
  v15 = type metadata accessor for ResourceAccessSpan();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1C0482EFC(v14, 15, v13, 0, 1);
  if (qword_1EDE42548 != -1)
  {
    swift_once();
  }

  v19 = sub_1C04F6400();
  __swift_project_value_buffer(v19, qword_1EDE42550);
  v20 = sub_1C04F63E0();
  v21 = sub_1C04F6A10();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C0479000, v20, v21, "XPC Fetch start: fetch Query Context", v22, 2u);
    MEMORY[0x1C68DCEB0](v22, -1, -1);
  }

  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDE44DD0;
  v24 = swift_allocObject();
  v24[2] = v18;
  v24[3] = a1;
  v24[4] = a2;
  v25 = v23;

  sub_1C04A717C(a4, a5, 0, sub_1C04D2D68, v24);
}

uint64_t sub_1C04D0674(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v46 = a6;
  v47 = a5;
  v10 = sub_1C04F6300();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - v14;
  v16 = sub_1C04F54F0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5A8, &qword_1C04FA1A8);
  v21 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = (&v44 - v22);
  if (a3)
  {
    *(a4 + qword_1EDE44718) = 28;
    v24 = a3;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v25 = sub_1C04F6400();
    __swift_project_value_buffer(v25, qword_1EDE42550);
    v26 = a3;
    v27 = sub_1C04F63E0();
    v28 = sub_1C04F6A20();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v49[0] = v30;
      *v29 = 136315138;
      v48 = a3;
      v31 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v32 = sub_1C04F6790();
      v34 = sub_1C047D76C(v32, v33, v49);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1C0479000, v27, v28, "contextFetch failed: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1C68DCEB0](v30, -1, -1);
      MEMORY[0x1C68DCEB0](v29, -1, -1);
    }

    sub_1C04D2D74();
    v35 = swift_allocError();
    *v36 = 0;
    *v23 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v47(v23);
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v50 = 0;
      memset(v49, 0, sizeof(v49));
      sub_1C04A12A0(a1, a2);
      sub_1C048087C(a1, a2);
      sub_1C04F62F0();
      sub_1C04D2DC8(&qword_1EDE41558, 255, MEMORY[0x1E69BCB80]);
      sub_1C04F6340();
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
      (*(v17 + 32))(v20, v15, v16);
      *(a4 + qword_1EDE44718) = 3;
      sub_1C0483574();
      (*(v17 + 16))(v23, v20, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v47(v23);
      sub_1C047E0BC(a1, a2);
      sub_1C0482130(v23, &qword_1EBE0D5A8, &qword_1C04FA1A8);
      return (*(v17 + 8))(v20, v16);
    }

    *(a4 + qword_1EDE44718) = 18;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v37 = sub_1C04F6400();
    __swift_project_value_buffer(v37, qword_1EDE42550);
    v38 = sub_1C04F63E0();
    v39 = sub_1C04F6A20();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1C0479000, v38, v39, "contextFetch failed: invalidResponse", v40, 2u);
      MEMORY[0x1C68DCEB0](v40, -1, -1);
    }

    sub_1C04D2D74();
    v41 = swift_allocError();
    *v42 = 1;
    *v23 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v47(v23);
  }

  return sub_1C0482130(v23, &qword_1EBE0D5A8, &qword_1C04FA1A8);
}

uint64_t sub_1C04D0D20()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_81(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_226(v1);

  return sub_1C04D0E9C();
}

uint64_t sub_1C04D0DB8()
{
  OUTLINED_FUNCTION_144();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_49();
  *v3 = v2;

  OUTLINED_FUNCTION_150();

  return v4();
}

uint64_t sub_1C04D0E9C()
{
  OUTLINED_FUNCTION_144();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1C04F6200();
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04D0F28, 0, 0);
}

uint64_t sub_1C04D0F28()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[5] + 16);

  sub_1C04F61D0();
  v5 = type metadata accessor for ResourceAccessSpan();
  OUTLINED_FUNCTION_29_1(v5);
  v6 = sub_1C0482EFC(v4, 15, v1, 0, 1);
  v0[7] = v6;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v6;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_1C04F54F0();
  *v9 = v0;
  v9[1] = sub_1C04D107C;
  v11 = v0[2];

  return MEMORY[0x1EEE6DE38](v11, 0, 0, 0xD000000000000020, 0x80000001C04FDFE0, sub_1C04D2F18, v7, v10);
}

uint64_t sub_1C04D107C()
{
  OUTLINED_FUNCTION_144();
  v3 = *(*v1 + 72);
  v2 = *v1;
  OUTLINED_FUNCTION_49();
  *v4 = v2;
  *(v2 + 80) = v0;

  if (v0)
  {
    v5 = sub_1C04D11F0;
  }

  else
  {
    v6 = *(v2 + 64);

    v5 = sub_1C04D118C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C04D118C()
{
  OUTLINED_FUNCTION_144();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t sub_1C04D11F0()
{
  OUTLINED_FUNCTION_144();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  OUTLINED_FUNCTION_150();
  v5 = v0[10];

  return v4();
}

void sub_1C04D1260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  if (qword_1EDE42548 != -1)
  {
    swift_once();
  }

  v12 = sub_1C04F6400();
  __swift_project_value_buffer(v12, qword_1EDE42550);
  v13 = sub_1C04F63E0();
  v14 = sub_1C04F6A10();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = sub_1C04F6160();
    *(v15 + 12) = 2048;
    *(v15 + 14) = v21;
    _os_log_impl(&dword_1C0479000, v13, v14, "XPC Fetch start: fetch Query Context for client %lu proxy activity: %lu", v15, 0x16u);
    MEMORY[0x1C68DCEB0](v15, -1, -1);
  }

  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDE44DD0;
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  (*(v8 + 32))(v18 + v17, v11, v7);
  v19 = v16;

  sub_1C04A717C(a2, v21, 0, sub_1C04D2F24, v18);
}

void sub_1C04D14F0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v46[1] = a5;
  v9 = sub_1C04F6300();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v46 - v13;
  v15 = sub_1C04F54F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v46 - v21;
  if (a3)
  {
    *(a4 + qword_1EDE44718) = 28;
    v23 = a3;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v24 = sub_1C04F6400();
    __swift_project_value_buffer(v24, qword_1EDE42550);
    v25 = a3;
    v26 = sub_1C04F63E0();
    v27 = sub_1C04F6A20();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v47[0] = v29;
      *v28 = 136315138;
      v46[2] = a3;
      v30 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v31 = sub_1C04F6790();
      v33 = sub_1C047D76C(v31, v32, v47);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1C0479000, v26, v27, "contextFetch failed: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C68DCEB0](v29, -1, -1);
      MEMORY[0x1C68DCEB0](v28, -1, -1);
    }

    sub_1C04D2FB8();
    v34 = swift_allocError();
    *v35 = 2;
    *&v47[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
    sub_1C04F6950();
  }

  else if (a2 >> 60 == 15)
  {
    *(a4 + qword_1EDE44718) = 18;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v36 = sub_1C04F6400();
    __swift_project_value_buffer(v36, qword_1EDE42550);
    v37 = sub_1C04F63E0();
    v38 = sub_1C04F6A20();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1C0479000, v37, v38, "contextFetch failed: invalidResponse", v39, 2u);
      MEMORY[0x1C68DCEB0](v39, -1, -1);
    }

    sub_1C04D2FB8();
    v40 = swift_allocError();
    *v41 = 1;
    *&v47[0] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
    sub_1C04F6950();
  }

  else
  {
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    sub_1C04A12A0(a1, a2);
    sub_1C048087C(a1, a2);
    sub_1C04F62F0();
    sub_1C04D2DC8(&qword_1EDE41558, 255, MEMORY[0x1E69BCB80]);
    sub_1C04F6340();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    (*(v16 + 32))(v22, v14, v15);
    *(a4 + qword_1EDE44718) = 3;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v42 = sub_1C04F6400();
    __swift_project_value_buffer(v42, qword_1EDE42550);
    v43 = sub_1C04F63E0();
    v44 = sub_1C04F6A40();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1C0479000, v43, v44, "fulfilling request with valid context", v45, 2u);
      MEMORY[0x1C68DCEB0](v45, -1, -1);
    }

    (*(v16 + 16))(v20, v22, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
    sub_1C04F6960();
    sub_1C047E0BC(a1, a2);
    (*(v16 + 8))(v22, v15);
  }
}

uint64_t sub_1C04D1B90()
{
  v1 = *(v0 + 32);

  v2 = sub_1C04D309C();

  return v2;
}

uint64_t sub_1C04D1BCC()
{
  v1 = *(v0 + 32);

  sub_1C04D32BC();
}

BOOL sub_1C04D1C14()
{
  v1 = v0;
  v2 = sub_1C04F65C0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v84 = v4;
  v85 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v9 = (v8 - v7);
  v10 = sub_1C04F6630();
  v11 = OUTLINED_FUNCTION_0(v10);
  v82 = v12;
  v83 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v80 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = v79 - v17;
  v18 = sub_1C04F6200();
  v19 = OUTLINED_FUNCTION_2_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = sub_1C04F6130();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = [objc_opt_self() processInfo];
  v35 = [v34 processName];

  v36 = sub_1C04F6750();
  v38 = v37;

  (*(v28 + 104))(v33, *MEMORY[0x1E69BDAF0], v25);
  v39 = sub_1C04F6120();
  v41 = v40;
  (*(v28 + 8))(v33, v25);
  if (v36 == v39 && v38 == v41)
  {

    goto LABEL_12;
  }

  v43 = sub_1C04F6D80();

  if (v43)
  {
LABEL_12:
    if (qword_1EDE42548 != -1)
    {
      OUTLINED_FUNCTION_2_15();
    }

    v51 = sub_1C04F6400();
    __swift_project_value_buffer(v51, qword_1EDE42550);
    v45 = sub_1C04F63E0();
    v52 = sub_1C04F6A10();
    if (!OUTLINED_FUNCTION_19_1(v52))
    {
      goto LABEL_17;
    }

    v53 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_158(v53);
    v50 = "Attempting to fetch deviceSetupState from within parsecd, will bypass";
    goto LABEL_16;
  }

  if (sub_1C04D1B90() == 2)
  {
    if (qword_1EDE42548 != -1)
    {
      OUTLINED_FUNCTION_2_15();
    }

    v44 = sub_1C04F6400();
    __swift_project_value_buffer(v44, qword_1EDE42550);
    v45 = sub_1C04F63E0();
    v46 = sub_1C04F6A10();
    if (!OUTLINED_FUNCTION_19_1(v46))
    {
      goto LABEL_17;
    }

    v47 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_158(v47);
    v50 = "Inferred deviceSetupState: completed";
LABEL_16:
    OUTLINED_FUNCTION_13_5(&dword_1C0479000, v48, v49, v50);
    OUTLINED_FUNCTION_13();
LABEL_17:

    return 1;
  }

  v55 = *(v1 + 16);

  sub_1C04F61D0();
  v56 = type metadata accessor for ResourceAccessSpan();
  OUTLINED_FUNCTION_29_1(v56);
  v57 = sub_1C0482EFC(v55, 15, v24, 0, 1);
  v58 = dispatch_group_create();
  dispatch_group_enter(v58);
  if (qword_1EDE42548 != -1)
  {
    OUTLINED_FUNCTION_2_15();
  }

  v59 = sub_1C04F6400();
  v79[1] = __swift_project_value_buffer(v59, qword_1EDE42550);
  v60 = sub_1C04F63E0();
  v61 = sub_1C04F6A10();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_158(v62);
    _os_log_impl(&dword_1C0479000, v60, v61, "XPC Fetch start: fetch DeviceSetupComplete", v41, 2u);
    OUTLINED_FUNCTION_13();
  }

  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v63 = qword_1EDE44DD0;
  v64 = swift_allocObject();
  v64[2] = v58;
  v64[3] = v57;
  v64[4] = v1;
  v65 = v63;
  v66 = v58;

  sub_1C04A772C(0);

  v67 = v80;
  sub_1C04F6620();
  *v9 = 250;
  v69 = v84;
  v68 = v85;
  (*(v84 + 104))(v9, *MEMORY[0x1E69E7F38], v85);
  v70 = v81;
  MEMORY[0x1C68DBEE0](v67, v9);
  (*(v69 + 8))(v9, v68);
  v71 = v83;
  v72 = *(v82 + 8);
  v72(v67, v83);
  sub_1C04F6A50();
  v72(v70, v71);
  if (sub_1C04F65D0())
  {
    v73 = sub_1C04F63E0();
    v74 = sub_1C04F6A20();
    if (OUTLINED_FUNCTION_19_1(v74))
    {
      v75 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_158(v75);
      OUTLINED_FUNCTION_13_5(&dword_1C0479000, v76, v77, "device Setup State fetch timed out, returning");
      OUTLINED_FUNCTION_13();
    }

    return 0;
  }

  else
  {
    v78 = sub_1C04D1B90();

    return v78 == 2;
  }
}

void sub_1C04D2274(uint64_t a1, id a2, NSObject *a3, uint64_t a4)
{
  if (a2)
  {
    *(a4 + qword_1EDE44718) = 28;
    v6 = a2;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v7 = sub_1C04F6400();
    __swift_project_value_buffer(v7, qword_1EDE42550);
    v8 = a2;
    v9 = sub_1C04F63E0();
    v10 = sub_1C04F6A20();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      v13 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v14 = sub_1C04F6790();
      v16 = sub_1C047D76C(v14, v15, &v29);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1C0479000, v9, v10, "deviceSetupStatus fetch failed: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1C68DCEB0](v12, -1, -1);
      MEMORY[0x1C68DCEB0](v11, -1, -1);
    }

    else
    {
    }

LABEL_13:
    dispatch_group_leave(a3);
    return;
  }

  if (a1)
  {
    *(a4 + qword_1EDE44718) = 3;
    sub_1C0483574();
    if (qword_1EDE42548 != -1)
    {
      swift_once();
    }

    v17 = sub_1C04F6400();
    __swift_project_value_buffer(v17, qword_1EDE42550);
    v18 = sub_1C04F63E0();
    v19 = sub_1C04F6A40();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136446210;
      v22 = sub_1C04F6790();
      v24 = sub_1C047D76C(v22, v23, &v29);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1C0479000, v18, v19, "Got deviceSetupCompleteStatus: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C68DCEB0](v21, -1, -1);
      MEMORY[0x1C68DCEB0](v20, -1, -1);
    }

    sub_1C04D1BCC();
    goto LABEL_13;
  }

  *(a4 + qword_1EDE44718) = 18;
  sub_1C0483574();
  if (qword_1EDE42548 != -1)
  {
    swift_once();
  }

  v25 = sub_1C04F6400();
  __swift_project_value_buffer(v25, qword_1EDE42550);
  v26 = sub_1C04F63E0();
  v27 = sub_1C04F6A20();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C0479000, v26, v27, "deviceSetupStatus fetch failed: unknown state", v28, 2u);
    MEMORY[0x1C68DCEB0](v28, -1, -1);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1C04D2670()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C04D300C;

  return sub_1C04D0D20();
}

uint64_t sub_1C04D271C(char a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_44_0();
  *(v1 + 24) = v2;
  return OUTLINED_FUNCTION_12_5(v2);
}

uint64_t sub_1C04D2740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v4 = OUTLINED_FUNCTION_44_0();
  v3[5] = v4;
  return OUTLINED_FUNCTION_12_5(v4);
}

unint64_t sub_1C04D276C()
{
  result = qword_1EBE0D580;
  if (!qword_1EBE0D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D580);
  }

  return result;
}

uint64_t sub_1C04D27C0(uint64_t a1, uint64_t a2)
{
  result = sub_1C04D2DC8(&qword_1EBE0D588, a2, type metadata accessor for ContextVendor);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C04D2840()
{
  result = qword_1EBE0D590;
  if (!qword_1EBE0D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D590);
  }

  return result;
}

uint64_t dispatch thunk of QueryContextFetcher.fetchContext(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_81(v10);
  *v11 = v12;
  v11[1] = sub_1C04D300C;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContextVendor.fetchContext(for:)()
{
  v1 = *(*v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_81(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_226(v4);

  return v8(v6);
}

_BYTE *sub_1C04D2B38(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C04D2C18()
{
  result = qword_1EDE44440;
  if (!qword_1EDE44440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44440);
  }

  return result;
}

unint64_t sub_1C04D2C6C(uint64_t a1)
{
  *(a1 + 8) = sub_1C04D2C9C();
  result = sub_1C04D2CF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C04D2C9C()
{
  result = qword_1EDE44448;
  if (!qword_1EDE44448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44448);
  }

  return result;
}

unint64_t sub_1C04D2CF0()
{
  result = qword_1EDE44438;
  if (!qword_1EDE44438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44438);
  }

  return result;
}

unint64_t sub_1C04D2D74()
{
  result = qword_1EBE0D5B0;
  if (!qword_1EBE0D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D5B0);
  }

  return result;
}

uint64_t sub_1C04D2DC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1C04D2E10()
{
  result = qword_1EDE44770;
  if (!qword_1EDE44770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE44770);
  }

  return result;
}

unint64_t sub_1C04D2E54()
{
  result = qword_1EDE44788;
  if (!qword_1EDE44788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44788);
  }

  return result;
}

uint64_t sub_1C04D2EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C04D2F24(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
  OUTLINED_FUNCTION_2_1(v7);
  v9 = *(v3 + 16);
  v10 = v3 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  sub_1C04D14F0(a1, a2, a3, v9, v10);
}

unint64_t sub_1C04D2FB8()
{
  result = qword_1EBE0D5C0;
  if (!qword_1EBE0D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D5C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return swift_once();
}

uint64_t sub_1C04D3064()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v0);
  return v2;
}

uint64_t sub_1C04D309C()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);
  os_unfair_lock_unlock(v0);
  return v2;
}

id sub_1C04D30CC()
{
  v1 = v0[5];
  os_unfair_lock_lock(v1);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v2;

  os_unfair_lock_unlock(v1);
  return v5;
}

void *sub_1C04D3130()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock(v0);
  return v2;
}

void sub_1C04D3164()
{
  OUTLINED_FUNCTION_31_2();
  v4 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;

  os_unfair_lock_unlock(v3);
}

void sub_1C04D31AC()
{
  OUTLINED_FUNCTION_11_5();
  v3 = *(v1 + 16);
  *(v1 + 16) = v0;
  swift_unknownObjectRelease();

  os_unfair_lock_unlock(v2);
}

void sub_1C04D31F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  os_unfair_lock_lock(v7);
  v9 = v3[2];
  v8 = v3[3];
  v10 = v3[4];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  os_unfair_lock_unlock(v7);
}

void sub_1C04D3274()
{
  OUTLINED_FUNCTION_11_5();
  v3 = *(v1 + 16);
  *(v1 + 16) = v0;

  os_unfair_lock_unlock(v2);
}

void sub_1C04D32BC()
{
  OUTLINED_FUNCTION_11_5();
  *(v1 + 16) = v0;

  os_unfair_lock_unlock(v2);
}

uint64_t sub_1C04D32FC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D5C8);
  __swift_project_value_buffer(v0, qword_1EBE0D5C8);
  return sub_1C04F63F0();
}

double sub_1C04D3378()
{
  *&xmmword_1EBE0D5E0 = 0xD000000000000028;
  *(&xmmword_1EBE0D5E0 + 1) = 0x80000001C04FE060;
  strcpy(&xmmword_1EBE0D5F0, "LookupSearch");
  BYTE13(xmmword_1EBE0D5F0) = 0;
  HIWORD(xmmword_1EBE0D5F0) = -5120;
  result = 4.11941862e257;
  xmmword_1EBE0D600 = xmmword_1C04FA1C0;
  return result;
}

uint64_t sub_1C04D33CC()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v10 = sub_1C04F6250();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  qword_1EBE0D610 = v10;
  *algn_1EBE0D618 = v12;
  return result;
}

void *PegasusProxyForLookupSearch.__allocating_init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  swift_allocObject();
  if (qword_1EBE0CA58 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v6 = OUTLINED_FUNCTION_11();
  return sub_1C04B8AAC(v6, v7, 0, a1, a2, a3);
}

void *PegasusProxyForLookupSearch.init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EBE0CA58 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v6 = OUTLINED_FUNCTION_11();

  return sub_1C04B8AAC(v6, v7, 0, a1, a2, a3);
}

void sub_1C04D368C()
{
  OUTLINED_FUNCTION_7_0();
  v20 = v1;
  v2 = sub_1C04F54F0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_16();
  v8 = sub_1C04F5530();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v19 - v17;
  sub_1C04F5520();

  sub_1C04F5510();
  sub_1C04F57F0();
  (*(v11 + 16))(v16, v18, v8);
  sub_1C04F57D0();
  (*(v5 + 16))(v0, v20, v2);
  sub_1C04F57E0();
  (*(v11 + 8))(v18, v8);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04D3848(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C04D386C, 0, 0);
}

uint64_t sub_1C04D386C()
{
  OUTLINED_FUNCTION_144();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C04D3918;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  return sub_1C04D3A68();
}

uint64_t sub_1C04D3918()
{
  OUTLINED_FUNCTION_144();
  v2 = *(*v1 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v3 = v6;
  *(v6 + 88) = v0;

  sub_1C04D4ADC(v6 + 16);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C04D3A44, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_150();

    return v4();
  }
}

uint64_t sub_1C04D3A44()
{
  OUTLINED_FUNCTION_150();
  v1 = *(v0 + 88);
  return v2();
}

uint64_t sub_1C04D3A68()
{
  OUTLINED_FUNCTION_144();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v1[36] = *v0;
  v5 = sub_1C04F5B60();
  v1[37] = v5;
  OUTLINED_FUNCTION_66(v5);
  v1[38] = v6;
  v8 = *(v7 + 64) + 15;
  v1[39] = swift_task_alloc();
  v9 = sub_1C04F5BC0();
  v1[40] = v9;
  OUTLINED_FUNCTION_66(v9);
  v1[41] = v10;
  v12 = *(v11 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v13 = sub_1C04F5830();
  v1[44] = v13;
  OUTLINED_FUNCTION_66(v13);
  v1[45] = v14;
  v16 = *(v15 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v17 = sub_1C04F6130();
  v1[49] = v17;
  OUTLINED_FUNCTION_66(v17);
  v1[50] = v18;
  v20 = *(v19 + 64) + 15;
  v1[51] = swift_task_alloc();
  v21 = *(*(sub_1C04F6200() - 8) + 64) + 15;
  v1[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04D3C94, 0, 0);
}

uint64_t sub_1C04D3C94()
{
  if (qword_1EBE0CA58 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 392);
  v4 = *(v0 + 400);
  v5 = *(v0 + 280);
  v6 = qword_1EBE0D610;
  v7 = *algn_1EBE0D618;

  v8 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C049FB48(v6, v7, 0x6567612D72657375, 0xEA0000000000746ELL);
  sub_1C04B7390(v8);
  v9 = *(v5 + 16);
  (*(v4 + 104))(v2, *MEMORY[0x1E69BDAB8], v3);

  sub_1C04F6230();
  v10 = type metadata accessor for ResourceAccessSpan();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 424) = sub_1C0482EFC(v9, 28, v1, 0, 1);
  v13 = sub_1C04B7294();
  if (v13)
  {
    v14 = v13;
    *(v0 + 88) = &unk_1F3F85D90;
    v15 = sub_1C04B6FD4();
    *(v0 + 96) = v15;
    *(v0 + 64) = 3;
    v16 = sub_1C04F60E0();
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }

    v17 = sub_1C04F6740();
    v18 = [v14 configBoolForKey_];

    if (v18)
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_192();
    v28 = sub_1C04F6740();
    v29 = [v14 configBoolForKey_];

    if (v29 & 1) != 0 || (*(v0 + 128) = &unk_1F3F85D90, *(v0 + 136) = v15, *(v0 + 104) = 4, v30 = sub_1C04F60E0(), __swift_destroy_boxed_opaque_existential_1((v0 + 104)), (v30))
    {
      v31 = *(v0 + 280);
      v32 = sub_1C047ACAC();
      v33 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults;
      swift_beginAccess();
      v34 = *(v32 + v33);

      v35 = sub_1C04D30CC();
      v37 = v36;
      v42 = v38;
      OUTLINED_FUNCTION_237();
      sub_1C04D4C24(v39, v40, v41);

      sub_1C04D31F4(v35, v37, v42);

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  v19 = *(v0 + 280);
  *(v0 + 432) = sub_1C047ACAC();
  if (qword_1EBE0CA50 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 280);
  v22 = xmmword_1EBE0D5F0;
  v21 = xmmword_1EBE0D600;
  *(v0 + 16) = xmmword_1EBE0D5E0;
  *(v0 + 32) = v22;
  *(v0 + 48) = v21;
  *(v0 + 440) = sub_1C04B7354();
  v23 = swift_task_alloc();
  *(v0 + 448) = v23;
  *v23 = v0;
  v23[1] = sub_1C04D4060;
  v24 = *(v0 + 384);
  v25 = *(v0 + 264);
  v26 = *(v0 + 272);

  return sub_1C0489E38();
}

uint64_t sub_1C04D4060()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 440);
  v6 = *(v2 + 432);

  if (v0)
  {
    v7 = sub_1C04D46C4;
  }

  else
  {
    v7 = sub_1C04D41B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C04D41B0()
{
  v62 = v0;
  (*(v0[45] + 32))(v0[32], v0[48], v0[44]);
  if (qword_1EBE0CA48 != -1)
  {
    OUTLINED_FUNCTION_7_11();
  }

  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[32];
  v6 = sub_1C04F6400();
  __swift_project_value_buffer(v6, qword_1EBE0D5C8);
  v7 = *(v4 + 16);
  OUTLINED_FUNCTION_237();
  v7();
  OUTLINED_FUNCTION_237();
  v7();
  v8 = sub_1C04F63E0();
  v9 = sub_1C04F6A40();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[46];
  v11 = v0[47];
  v14 = v0[44];
  v13 = v0[45];
  if (v10)
  {
    log = v8;
    v15 = v0[43];
    v17 = v0[39];
    v16 = v0[40];
    v56 = v0[38];
    v57 = v0[37];
    v58 = v9;
    v18 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v18 = 136315394;
    sub_1C04F5820();
    v19 = sub_1C04F6790();
    v21 = v20;
    v22 = *(v13 + 8);
    v22(v11, v14);
    v23 = sub_1C047D76C(v19, v21, v61);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    sub_1C04F5810();
    v24 = sub_1C04F5B50();
    v26 = v25;
    (*(v56 + 8))(v17, v57);
    v22(v12, v14);
    v27 = sub_1C047D76C(v24, v26, v61);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1C0479000, log, v58, "received rpc response with search status: %s, error detail: %s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
    v22(v11, v14);
  }

  v28 = v0[53];
  v30 = v0[42];
  v29 = v0[43];
  v31 = v0[40];
  v32 = v0[41];
  v33 = v0[32];
  sub_1C04F5820();
  (*(v32 + 104))(v30, *MEMORY[0x1E69BCED0], v31);
  sub_1C04D7044(&qword_1EDE41530, MEMORY[0x1E69BCEE0]);
  v34 = sub_1C04F6730();
  v35 = *(v32 + 8);
  v35(v30, v31);
  v35(v29, v31);
  v36 = v0[53];
  if (v34)
  {
    v37 = v0[44];
    v38 = v0[45];
    v39 = v0[32];
    *(v28 + qword_1EDE44718) = 19;
    sub_1C0483574();
    sub_1C049FC7C();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_33_0(v40, 6);

    v22(v39, v37);
    v42 = v0[51];
    v41 = v0[52];
    OUTLINED_FUNCTION_32_2();

    OUTLINED_FUNCTION_150();
  }

  else
  {
    *(v28 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v44 = sub_1C04F63E0();
    v45 = sub_1C04F6A40();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1C0479000, v44, v45, "publishing successful rpc response", v46, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    v48 = v0[52];
    v47 = v0[53];
    v49 = v0[51];
    v51 = v0[47];
    v50 = v0[48];
    v52 = v0[46];
    v54 = v0[42];
    v53 = v0[43];
    v60 = v0[39];

    OUTLINED_FUNCTION_150();
  }

  return v43();
}

uint64_t sub_1C04D46C4()
{
  v62 = v0;
  v1 = *(v0 + 456);
  *(v0 + 224) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 456);
  if (v3)
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 288);

    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = OUTLINED_FUNCTION_26_2();
    sub_1C04B915C(v11, v12, v13, v14, v5);
    v15 = OUTLINED_FUNCTION_26_2();
    sub_1C0482080(v15, v16, v17, v18);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_33_0(v19, 7);

    v20 = *(v0 + 224);
LABEL_7:

    goto LABEL_8;
  }

  *(v0 + 232) = v4;
  v21 = v4;
  v22 = swift_dynamicCast();
  v23 = *(v0 + 456);
  if (v22)
  {
    v24 = *(v0 + 424);
    v25 = *(v0 + 288);

    v26 = *(v0 + 200);
    v27 = *(v0 + 208);
    v28 = *(v0 + 216);
    v29 = OUTLINED_FUNCTION_11();
    sub_1C04B93C4(v29, v30, v28, v24);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_33_0(v31, 5);

    v32 = OUTLINED_FUNCTION_11();
    sub_1C0482070(v32, v33, v28);
    v20 = *(v0 + 232);
    goto LABEL_7;
  }

  *(v0 + 240) = v23;
  v34 = v23;
  if (swift_dynamicCast())
  {
    v35 = *(v0 + 424);
    v36 = *(v0 + 288);

    v37 = *(v0 + 169);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_192();
    v38 = OUTLINED_FUNCTION_45();
    *v39 = v37;
    sub_1C04B9574(v38, v35);

    OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_45();
    *v40 = v37;
    swift_willThrow();

    v20 = *(v0 + 240);
    goto LABEL_7;
  }

  v45 = *(v0 + 424);

  *(v45 + qword_1EDE44718) = 51;
  sub_1C0483574();
  if (qword_1EBE0CA48 != -1)
  {
    OUTLINED_FUNCTION_7_11();
  }

  v46 = *(v0 + 456);
  v47 = sub_1C04F6400();
  __swift_project_value_buffer(v47, qword_1EBE0D5C8);
  v48 = v46;
  v49 = sub_1C04F63E0();
  v50 = sub_1C04F6A20();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 456);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v61 = v53;
    *v52 = 136315138;
    *(v0 + 248) = v51;
    v54 = v51;
    v55 = sub_1C04F6790();
    v57 = sub_1C047D76C(v55, v56, &v61);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_1C0479000, v49, v50, "search failure: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v58 = *(v0 + 456);
  v59 = *(v0 + 424);
  sub_1C049FC7C();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_33_0(v60, 1);

LABEL_8:
  v42 = *(v0 + 408);
  v41 = *(v0 + 416);
  OUTLINED_FUNCTION_32_2();

  OUTLINED_FUNCTION_150();

  return v43();
}

uint64_t sub_1C04D4ADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE40, &qword_1C04F8900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PegasusProxyForLookupSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C04D4B78(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C04D0DB8;

  return sub_1C04D3848(a1, a2);
}

BOOL sub_1C04D4C24(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C04F6E60();
  OUTLINED_FUNCTION_237();
  sub_1C04F67E0();
  v9 = sub_1C04F6E80();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1C04F6D80() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  v19 = OUTLINED_FUNCTION_192();
  sub_1C04D5DA8(v19, v20, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t dispatch thunk of LookupSearchResponseFetcher.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_81(v6);
  *v7 = v8;
  v7[1] = sub_1C04D300C;
  OUTLINED_FUNCTION_237();

  return v10();
}

uint64_t dispatch thunk of PegasusProxyForLookupSearch.send(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 552);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_81(v7);
  *v8 = v9;
  v8[1] = sub_1C04D300C;

  return v11(a1, a2);
}

uint64_t dispatch thunk of PegasusProxyForLookupSearch.send(_:observer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 560);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_81(v9);
  *v10 = v11;
  v10[1] = sub_1C04D0DB8;

  return v13(a1, a2, a3);
}

void sub_1C04D5174()
{
  OUTLINED_FUNCTION_7_0();
  v3 = sub_1C04F5DE0();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_16();
  v25 = v0;
  v7 = *v0;
  v8 = *(*v0 + 40);
  OUTLINED_FUNCTION_3_13();
  sub_1C04D7044(v9, v10);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_5_10();
  while (1)
  {
    OUTLINED_FUNCTION_9_6(v11);
    if (v12)
    {
      v16 = *v25;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = OUTLINED_FUNCTION_14_3();
      v18(v17);
      v19 = OUTLINED_FUNCTION_13_6();
      sub_1C04D5F10(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_12_6();
      v23(v22);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_8_6();
    v2(v13);
    OUTLINED_FUNCTION_3_13();
    sub_1C04D7044(&qword_1EDE41DF8, v14);
    OUTLINED_FUNCTION_23_3();
    v15 = OUTLINED_FUNCTION_19_2();
    v7(v15);
    if (v8)
    {
      break;
    }

    v11 = v1 + 1;
  }

  (v7)(v26, v3);
  v24 = OUTLINED_FUNCTION_15_4();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_6();
}

void sub_1C04D5308()
{
  OUTLINED_FUNCTION_7_0();
  v3 = sub_1C04F6010();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_16();
  v25 = v0;
  v7 = *v0;
  v8 = *(*v0 + 40);
  OUTLINED_FUNCTION_4_9();
  sub_1C04D7044(v9, v10);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_5_10();
  while (1)
  {
    OUTLINED_FUNCTION_9_6(v11);
    if (v12)
    {
      v16 = *v25;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = OUTLINED_FUNCTION_14_3();
      v18(v17);
      v19 = OUTLINED_FUNCTION_13_6();
      sub_1C04D61C0(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_12_6();
      v23(v22);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_8_6();
    v2(v13);
    OUTLINED_FUNCTION_4_9();
    sub_1C04D7044(&qword_1EDE414C8, v14);
    OUTLINED_FUNCTION_23_3();
    v15 = OUTLINED_FUNCTION_19_2();
    v7(v15);
    if (v8)
    {
      break;
    }

    v11 = v1 + 1;
  }

  (v7)(v26, v3);
  v24 = OUTLINED_FUNCTION_15_4();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04D549C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D628, &qword_1C04FA278);
  result = sub_1C04F6C10();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1C04CB6D8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1C04F6E60();
    sub_1C04F67E0();
    result = sub_1C04F6E80();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C04D56F8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C04F5DE0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE0D630, &unk_1C04FA280);
  result = sub_1C04F6C10();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C04CB6D8(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C04D7044(&qword_1EDE41E00, MEMORY[0x1E69BD6B0]);
    result = sub_1C04F6700();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C04D5A50(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C04F6010();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D620, &qword_1C04FA270);
  result = sub_1C04F6C10();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1C04CB6D8(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1C04D7044(&qword_1EDE414D0, MEMORY[0x1E69BDA38]);
    result = sub_1C04F6700();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C04D5DA8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C04D549C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C04D67E0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1C04F6E60();
      sub_1C04F67E0();
      result = sub_1C04F6E80();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1C04F6D80() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1C04D6470();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1C04F6DC0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1C04D5F10(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C04F5DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C04D56F8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C04D6A14(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1C04D7044(&qword_1EDE41E00, MEMORY[0x1E69BD6B0]);
      v15 = sub_1C04F6700();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C04D7044(&qword_1EDE41DF8, MEMORY[0x1E69BD6B0]);
        v17 = sub_1C04F6730();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1C04D65C8();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1C04F6DC0();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1C04D61C0(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1C04F6010();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C04D5A50(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1C04D6D2C(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1C04D7044(&qword_1EDE414D0, MEMORY[0x1E69BDA38]);
      v16 = sub_1C04F6700();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1C04D7044(&qword_1EDE414C8, MEMORY[0x1E69BDA38]);
        v18 = sub_1C04F6730();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1C04D65C8();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1C04F6DC0();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_1C04D6470()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D628, &qword_1C04FA278);
  v2 = *v0;
  v3 = sub_1C04F6C00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1C04D65C8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v32 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v15 = *v0;
  v16 = sub_1C04F6C00();
  v17 = v16;
  if (*(v15 + 16))
  {
    v33 = v5;
    v18 = (v16 + 56);
    v19 = ((1 << *(v17 + 32)) + 63) >> 6;
    if (v17 != v15 || v18 >= v15 + 56 + 8 * v19)
    {
      memmove(v18, (v15 + 56), 8 * v19);
    }

    v21 = 0;
    *(v17 + 16) = *(v15 + 16);
    v22 = 1 << *(v15 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v15 + 56);
    v25 = (v22 + 63) >> 6;
    v34 = v10 + 32;
    v35 = v10 + 16;
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      (*(v10 + 16))(v14, *(v15 + 48) + *(v10 + 72) * (v26 | (v21 << 6)), v7);
      v29 = *(v17 + 48);
      v30 = *(v10 + 32);
      OUTLINED_FUNCTION_237();
      v31();
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {

        v5 = v33;
        goto LABEL_21;
      }

      v28 = *(v15 + 56 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v17;
    OUTLINED_FUNCTION_6();
  }
}

uint64_t sub_1C04D67E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D628, &qword_1C04FA278);
  result = sub_1C04F6C10();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1C04F6E60();

        sub_1C04F67E0();
        result = sub_1C04F6E80();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C04D6A14(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C04F5DE0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE0D630, &unk_1C04FA280);
  v10 = sub_1C04F6C10();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1C04D7044(&qword_1EDE41E00, MEMORY[0x1E69BD6B0]);
        result = sub_1C04F6700();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C04D6D2C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C04F6010();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D620, &qword_1C04FA270);
  v10 = sub_1C04F6C10();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1C04D7044(&qword_1EDE414D0, MEMORY[0x1E69BDA38]);
        result = sub_1C04F6700();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C04D7044(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_5_10()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  v3 = ~(-1 << *(v0 + 32));
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_6()
{
  v4 = *(v2 + 16);
  v5 = *(*(v3 - 120) + 48) + *(v2 + 72) * v1;
  result = v0;
  v7 = *(v3 - 104);
  return result;
}

void OUTLINED_FUNCTION_11_5()
{
  v2 = *(v0 + 24);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_12_6()
{
  *v0 = *(v2 - 88);
  v3 = *(v1 + 32);
  return *(v2 - 136);
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  v6 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_4()
{
  v2 = *(*(v1 - 120) + 48) + v0;
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_4()
{
  *(v1 - 96) = v0;

  return sub_1C04F6700();
}

void OUTLINED_FUNCTION_22_5()
{
  v2 = *(v0 + 24);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_23_3()
{
  v2 = *(v0 - 96);

  return sub_1C04F6730();
}

void OUTLINED_FUNCTION_31_2()
{
  v2 = *(v0 + 32);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[39];
}

uint64_t OUTLINED_FUNCTION_33_0@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

void *BasePommesProxy.init(descriptor:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 160) = *(a1 + 32);
  v4 = sub_1C04D7460();
  v6 = v5;
  if (qword_1EDE44538 != -1)
  {
    OUTLINED_FUNCTION_7();
  }

  v7 = qword_1EDE44DC8;
  v8 = qword_1EDE44DC8;

  return sub_1C04B8AAC(v4, v6, 0, 0, 0xF000000000000000, v7);
}

void *BasePommesProxy.init(endpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = 0xD000000000000024;
  *(v2 + 136) = 0x80000001C04FC7D0;
  *(v2 + 144) = 0x7261655369726953;
  *(v2 + 152) = 0xEA00000000006863;
  *(v2 + 160) = xmmword_1C04F80E0;
  if (qword_1EDE44538 != -1)
  {
    OUTLINED_FUNCTION_7();
  }

  v5 = qword_1EDE44DC8;
  v6 = qword_1EDE44DC8;

  return sub_1C04B979C(a1, a2, 0, v5);
}

void *BasePommesProxy.deinit()
{
  v0 = BasePegasusProxy.deinit();
  v1 = v0[17];
  v2 = v0[19];
  v3 = v0[21];

  return v0;
}

uint64_t sub_1C04D7460()
{
  v0 = sub_1C04F6240();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C04F6260();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v16 = sub_1C04F6250();
  (*(v11 + 8))(v15, v8);
  return v16;
}

void sub_1C04D769C()
{
  OUTLINED_FUNCTION_0_14();

  v1 = *v0;
  v2 = sub_1C04F6EA0();
  MEMORY[0x1C68DC0D0](v2);

  OUTLINED_FUNCTION_2_17();
  __break(1u);
}

void sub_1C04D7744()
{
  OUTLINED_FUNCTION_0_14();

  v1 = *v0;
  v2 = sub_1C04F6EA0();
  MEMORY[0x1C68DC0D0](v2);

  OUTLINED_FUNCTION_2_17();
  __break(1u);
}

void sub_1C04D77EC()
{
  OUTLINED_FUNCTION_0_14();

  v1 = *v0;
  v2 = sub_1C04F6EA0();
  MEMORY[0x1C68DC0D0](v2);

  OUTLINED_FUNCTION_2_17();
  __break(1u);
}

uint64_t sub_1C04D7894()
{
  v1 = v0[17];
  v2 = v0[19];
  v3 = v0[21];
}

uint64_t BasePommesProxy.__deallocating_deinit()
{
  v0 = BasePommesProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_1C04F6CF0();
}

uint64_t type metadata accessor for CancellableStoreKey()
{
  result = qword_1EDE446E8;
  if (!qword_1EDE446E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C04D7A3C()
{
  result = sub_1C04F54B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C04D7AAC()
{
  sub_1C04F54B0();
  OUTLINED_FUNCTION_0_15();
  sub_1C04D7C60(v0, v1);

  return sub_1C04F6710();
}

uint64_t sub_1C04D7B20()
{
  sub_1C04F6E60();
  sub_1C04F54B0();
  OUTLINED_FUNCTION_0_15();
  sub_1C04D7C60(v0, v1);
  sub_1C04F6710();
  return sub_1C04F6E80();
}

uint64_t sub_1C04D7BA0()
{
  sub_1C04F6E60();
  sub_1C04F54B0();
  OUTLINED_FUNCTION_0_15();
  sub_1C04D7C60(v0, v1);
  sub_1C04F6710();
  return sub_1C04F6E80();
}

uint64_t sub_1C04D7C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C04D7D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6830];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C04D7D84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6820];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1C04D7DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6820];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C04D7E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6820];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C04D7F0C()
{
  v0 = sub_1C04855B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

_BYTE *sub_1C04D7F80(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C04D8034(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C04D80C8(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_1F3F86718 != a1);
  return v2 & 1;
}

uint64_t sub_1C04D80F0(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_1F3F86768 != a1);
  return v2 & 1;
}

void sub_1C04D8118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_2_18();
      sub_1C04F63A0();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_16(v25, xmmword_1C04F7BB0);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_0_16(v17, xmmword_1C04F7BA0);
      sub_1C04A61B0(v18, v19);
      v15 = OUTLINED_FUNCTION_4_10();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_0_16(v20, xmmword_1C04F8240);
      sub_1C04A61B0(v21, v22);
      v23 = OUTLINED_FUNCTION_4_10();
      sub_1C04A61B0(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_0_16(v10, xmmword_1C04F9620);
      sub_1C04A61B0(v11, v12);
      v13 = OUTLINED_FUNCTION_4_10();
      sub_1C04A61B0(v13, v14);
      sub_1C04A61B0(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_0_16(v26, xmmword_1C04FA4E0);
      sub_1C04A61B0(v27, v28);
      v29 = OUTLINED_FUNCTION_4_10();
      sub_1C04A61B0(v29, v30);
      sub_1C04A61B0(a10 + 112, &v26[7]);
      sub_1C04A61B0(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_1C04A61B0(v15, v16);
      OUTLINED_FUNCTION_2_18();
      sub_1C04F63A0();

      break;
    default:
      return;
  }
}

uint64_t sub_1C04D83F4()
{
  result = sub_1C04D841C(5);
  byte_1EDE44D78 = result & 1;
  return result;
}

uint64_t sub_1C04D841C(char a1)
{
  sub_1C04D84A8(a1);
  v1 = sub_1C04F6740();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1C04D84A8(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x48746375646F7250;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C04D85D0()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v53 = v2;
  v54 = v3;
  v51 = v4;
  v52 = v5;
  v55 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = sub_1C04F5460();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 256;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  sub_1C04B2C20(0, &qword_1EDE44770, 0x1E69E9BF8);
  v56 = 0xD000000000000010;
  v57 = 0x80000001C04FC670;
  v60 = 45;
  v61 = 0xE100000000000000;
  v58 = 95;
  v59 = 0xE100000000000000;
  v49 = sub_1C04D2E54();
  OUTLINED_FUNCTION_141();
  sub_1C04F6B90();
  *(v0 + 96) = sub_1C04F6B10();
  OUTLINED_FUNCTION_2();
  v29 = *(v28 + 136);
  v30 = sub_1C04F63D0();
  __swift_storeEnumTagSinglePayload(v1 + v29, 1, 1, v30);
  OUTLINED_FUNCTION_2();
  v32 = *(v31 + 152);
  type metadata accessor for Locker();
  v33 = swift_allocObject();
  v34 = swift_slowAlloc();
  *(v33 + 16) = v34;
  *v34 = 0;
  *(v1 + v32) = v33;
  sub_1C04F5450();
  OUTLINED_FUNCTION_2();
  v36 = v27;
  v37 = v55;
  (*(v22 + 32))(v1 + *(v35 + 144), v36, v19);
  swift_weakAssign();
  *(v1 + 80) = v37;
  v38 = *(v1 + 96);

  sub_1C04F63C0();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v30);
  OUTLINED_FUNCTION_2();
  v40 = *(v39 + 136);
  swift_beginAccess();
  sub_1C04D2EA8(v18, v1 + v40);
  swift_endAccess();
  v56 = v1;

  sub_1C04F6790();
  OUTLINED_FUNCTION_81_0();
  v41 = *(*(v8 + 32) + 16);
  os_unfair_lock_lock(v41);
  sub_1C04E786C(v8, v38, v18, v1, &off_1F3F85FC0);

  os_unfair_lock_unlock(v41);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v8 + 24);
    ObjectType = swift_getObjectType();
    (*(v42 + 8))(v1, &off_1F3F85FC0, ObjectType, v42);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C04A13B0(v1 + v40, v15, &qword_1EBE0CD58, &qword_1C04F8388);
  if (__swift_getEnumTagSinglePayload(v15, 1, v30) == 1)
  {
    __break(1u);
  }

  else
  {
    v44 = *(v1 + 96);
    v45 = sub_1C04F6AE0();
    v46 = sub_1C0482AB0(v37);
    LOBYTE(v49) = v51;
    sub_1C04D8118(v45, v44, v46, v47, v48, v15, v52, v53, v49, v54);

    (*(*(v30 - 8) + 8))(v15, v30);
    sub_1C04D8F88();

    OUTLINED_FUNCTION_6();
  }
}

uint64_t sub_1C04D8A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v46 = a4;
  v47 = a6;
  v44 = a5;
  v45 = a3;
  v48 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43[-v14];
  v16 = sub_1C04F5460();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 256;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = MEMORY[0x1E69E7CC0];
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  sub_1C04B2C20(0, &qword_1EDE44770, 0x1E69E9BF8);
  v49 = 0xD000000000000010;
  v50 = 0x80000001C04FC670;
  v53 = 45;
  v54 = 0xE100000000000000;
  v51 = 95;
  v52 = 0xE100000000000000;
  v42 = sub_1C04D2E54();
  sub_1C04F6B90();
  *(v6 + 96) = sub_1C04F6B10();
  v21 = *(*v6 + 136);
  v22 = sub_1C04F63D0();
  __swift_storeEnumTagSinglePayload(v7 + v21, 1, 1, v22);
  v23 = *(*v7 + 19);
  type metadata accessor for Locker();
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *(v24 + 16) = v25;
  *v25 = 0;
  *(v7 + v23) = v24;
  sub_1C04F5450();
  v26 = v20;
  v27 = v48;
  (*(v17 + 32))(v7 + *(*v7 + 18), v26, v16);
  swift_weakAssign();
  v7[10] = v27;
  v28 = v7[12];

  sub_1C04F63C0();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  v29 = *(*v7 + 17);
  swift_beginAccess();
  sub_1C04D2EA8(v15, v7 + v29);
  swift_endAccess();
  v49 = v7;

  v30 = sub_1C04F6790();
  v32 = v31;
  v33 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v33);
  sub_1C04E786C(a1, v30, v32, v7, &off_1F3F85FC0);

  os_unfair_lock_unlock(v33);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v34 + 8))(v7, &off_1F3F85FC0, ObjectType, v34);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C04A13B0(v7 + v29, v13, &qword_1EBE0CD58, &qword_1C04F8388);
  result = __swift_getEnumTagSinglePayload(v13, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = v7[12];
    v38 = sub_1C04F6AE0();
    v39 = sub_1C0482AB0(v27);
    LOBYTE(v42) = v44;
    sub_1C04D8118(v38, v37, v39, v40, v41, v13, v45, v46, v42, v47);

    (*(*(v22 - 8) + 8))(v13, v22);
    return v7;
  }

  return result;
}

uint64_t sub_1C04D8F88()
{
  v1 = *(v0 + 80);
  v5[3] = &type metadata for ResourceAccessActivity;
  v5[4] = &off_1F3F85C68;
  v5[0] = v1;
  v2 = __swift_project_boxed_opaque_existential_1(v5, &type metadata for ResourceAccessActivity);
  if (sub_1C04D90F4(*v2))
  {
    MEMORY[0x1C68DC0D0](46, 0xE100000000000000);

    MEMORY[0x1C68DC0D0](0x656372756F736572, 0xEE00737365636341);

    sub_1C0482AB0(v1);
    v3 = sub_1C04F6C50();
    MEMORY[0x1C68DC0D0](v3);

    MEMORY[0x1C68DC0D0](46, 0xE100000000000000);

    sub_1C04D9158(0xD000000000000010, 0x80000001C04FC670, v0);
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

BOOL sub_1C04D90F4(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && qword_1F3F86740 != a1);
  return (v2 & 1) == 0;
}

uint64_t sub_1C04D911C(uint64_t a1, uint64_t a2)
{
  v3 = os_transaction_create();
  v4 = *(a2 + 72);
  *(a2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C04D9158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v4 = os_transaction_create();
    v5 = *(a3 + 72);
    *(a3 + 72) = v4;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1C04F6C30();
  }
}

uint64_t sub_1C04D9ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7E0, &qword_1C04FA790);
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  sub_1C04DA284(a1, a2, a3, a4, a5, &unk_1EBE0D7F0, &unk_1C04FA798, MEMORY[0x1E69BD1E8], &unk_1EBE0D7F8, MEMORY[0x1E69BD1E8], MEMORY[0x1E69BD1E0], &unk_1F3F879D8, &unk_1F3F87A00, sub_1C04E1004, MEMORY[0x1E69BD2E8], sub_1C04E1868, &unk_1EBE0D808, v22, v23, v24, v25, v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, v30, v31);
  if (v5)
  {
    sub_1C04A13B0(a4, &v26, &qword_1EBE0CE40, &qword_1C04F8900);
    v17 = *(&v27 + 1);
    if (*(&v27 + 1))
    {
      v18 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      (*(v18 + 24))(v5, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      sub_1C04A12B4(&v26, &qword_1EBE0CE40, &qword_1C04F8900);
    }

    return swift_willThrow();
  }

  else
  {
    v30 = v16;
    v24 = v15;
    sub_1C04A13B0(a4, &v26, &qword_1EBE0CE40, &qword_1C04F8900);
    v19 = swift_allocObject();
    v20 = v27;
    *(v19 + 16) = v26;
    *(v19 + 32) = v20;
    *(v19 + 48) = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7C0, &qword_1C04FA788);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    sub_1C047C1A4(&qword_1EBE0D7C8, &qword_1EBE0D7C0, &qword_1C04FA788);
    sub_1C04F6560();

    sub_1C047C1A4(&qword_1EBE0D7E8, &qword_1EBE0D7E0, &qword_1C04FA790);
    sub_1C04F64E0();

    (*(v25 + 8))(v14, v11);
    return v24;
  }
}

void sub_1C04DA284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void (*a27)(void), uint64_t a28, unint64_t *a29)
{
  OUTLINED_FUNCTION_52_0();
  v344 = v31;
  v332 = v30;
  v317 = v32;
  v323 = v33;
  v35 = v34;
  v333 = v36;
  v38 = v37;
  v356 = *MEMORY[0x1E69E9840];
  v319 = v39;
  v320 = v40;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  OUTLINED_FUNCTION_0(v322);
  v321 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9_2(&v304 - v45);
  v329 = sub_1C04F62E0();
  v46 = OUTLINED_FUNCTION_0(v329);
  v328 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9_2(v51 - v50);
  v331 = sub_1C04F5230();
  v52 = OUTLINED_FUNCTION_0(v331);
  v330 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_1();
  v342 = v57 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  v59 = OUTLINED_FUNCTION_2_1(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v304 - v63;
  v341 = sub_1C04F5340();
  v65 = OUTLINED_FUNCTION_0(v341);
  v338 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_9_2(&v304 - v72);
  v73 = sub_1C04F54B0();
  v74 = OUTLINED_FUNCTION_0(v73);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_1();
  sub_1C04F54A0();
  v335 = sub_1C04F5470();
  v340 = v79;
  v80 = *(v76 + 8);
  v81 = OUTLINED_FUNCTION_238();
  v82(v81);
  v345 = v29;
  sub_1C04C9F04();
  OUTLINED_FUNCTION_81_0();
  v83 = sub_1C04F6740();
  LODWORD(v343) = [v29 BOOLForKey_];

  v85 = *(v38 + 16);
  v84 = *(v38 + 24);
  v336 = v38;
  v86 = v85 == 0x7261655369726953 && v84 == 0xEA00000000006863;
  if (v86 || (OUTLINED_FUNCTION_138(), (sub_1C04F6D80() & 1) != 0))
  {
    if (qword_1EDE41E20 != -1)
    {
      swift_once();
    }

    LODWORD(v343) = byte_1EDE44D78 | v343;
  }

  v87 = v341;
  v88 = v345;
  v89 = sub_1C047B774();
  v91 = v90;
  v92 = *(v336 + 8);
  *&v349 = *v336;
  *(&v349 + 1) = v92;

  MEMORY[0x1C68DC0D0](47, 0xE100000000000000);
  v93 = OUTLINED_FUNCTION_138();
  MEMORY[0x1C68DC0D0](v93);
  v94 = v349;
  *&v349 = v89;
  *(&v349 + 1) = v91;

  MEMORY[0x1C68DC0D0](v94, *(&v94 + 1));

  v95 = v349;
  sub_1C04F5330();
  if (__swift_getEnumTagSinglePayload(v64, 1, v87) == 1)
  {
    OUTLINED_FUNCTION_106_0();
    sub_1C04A12B4(v64, &qword_1EBE0CE60, &unk_1C04F9130);
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_45();
    *v96 = v95;
    *(v96 + 16) = 0;
    *(v96 + 24) = 0;
    swift_willThrow();
    goto LABEL_58;
  }

  v313 = a29;
  v312 = a28;
  v311 = a27;
  v310 = a25;
  v309 = a24;

  v97 = v338;
  v98 = v337;
  (*(v338 + 32))(v337, v64, v87);
  v99 = *(v97 + 16);
  v315 = v97 + 16;
  v314 = v99;
  v99(v334, v98, v87);
  OUTLINED_FUNCTION_49_0();
  sub_1C04F51F0();
  sub_1C04F51A0();
  sub_1C04F5210();
  sub_1C04F5210();
  v100 = (v344)(0);
  v101 = OUTLINED_FUNCTION_138();
  v103 = sub_1C04E0FBC(v101, v102);
  v326 = v100;
  sub_1C04F6320();
  sub_1C04F5210();

  sub_1C047BB00();
  sub_1C04F51E0();
  v324 = sub_1C04F66F0();

  v104 = sub_1C04C9DFC();
  v325 = v103;
  if (v105)
  {
    LOBYTE(v106) = v104;
    v107 = v105;
    OUTLINED_FUNCTION_88_0();
  }

  else
  {
    OUTLINED_FUNCTION_88_0();
    v108 = sub_1C04E9F48(a23, 0xEC00000074756F65, v35);
    if (v109)
    {
      LOBYTE(v106) = v108;
      v107 = v109;
    }

    else
    {
      v107 = 0xE300000000000000;
      LOBYTE(v106) = 49;
    }
  }

  v308 = a26;
  v110 = 0xED00006775626544;
  swift_isUniquelyReferenced_nonNull_native();
  *&v349 = v35;
  v111 = OUTLINED_FUNCTION_138();
  sub_1C049FB48(v111, v112, a23, 0xEC00000074756F65);
  p_cache = (v349 + 64);
  v114 = 1 << *(v349 + 32);
  v115 = -1;
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  v116 = v115 & *(v349 + 64);
  v117 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults;
  v344 = v349;

  v339 = v117;
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  v118 = 0;
  v119 = (v114 + 63) >> 6;
  while (v116)
  {
LABEL_24:
    v121 = __clz(__rbit64(v116));
    v116 &= v116 - 1;
    v122 = (v118 << 10) | (16 * v121);
    v123 = (*(v344 + 48) + v122);
    v88 = v123[1];
    v124 = (*(v344 + 56) + v122);
    v106 = *v124;
    v107 = v124[1];
    v125 = *v123 == 0x2D656C7070412D58 && v88 == v110;
    if (v125 || (v126 = *v123, v127 = v123[1], OUTLINED_FUNCTION_82_0(), (sub_1C04F6D80() & 1) != 0))
    {

      v88 = v110;
      v128 = *&v345[v339];

      *&v349 = sub_1C04D30CC();
      *(&v349 + 1) = v129;
      *&v350 = v130;
      v131 = OUTLINED_FUNCTION_138();
      sub_1C04A49C4(v131, v132);

      v114 = v128;
      sub_1C04D31F4(v349, *(&v349 + 1), v350);
      v110 = v88;
    }

    else
    {

      OUTLINED_FUNCTION_138();
      v114 = v342;
      sub_1C04F5210();
    }
  }

  while (1)
  {
    v120 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      __break(1u);
LABEL_97:
      v295 = __OFSUB__(HIDWORD(v120), v120);
      v296 = HIDWORD(v120) - v120;
      if (v295)
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
      }

      v246 = v296;
LABEL_100:
      *(v88 + 4) = v246;
      *(v88 + 12) = 2048;
      v299 = 0;
      v243 = v307;
      switch(v119 >> 62)
      {
        case 1uLL:
          LODWORD(v299) = HIDWORD(v307) - v307;
          if (__OFSUB__(HIDWORD(v307), v307))
          {
            goto LABEL_114;
          }

          v299 = v299;
LABEL_105:
          *(v88 + 14) = v299;
          sub_1C04A1144(v243, v119);
          _os_log_impl(&dword_1C0479000, v114, v106, "Request payload deflated in size from %ld to %ld", v88, 0x16u);
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          break;
        case 2uLL:
          v301 = *(v307 + 16);
          v300 = *(v307 + 24);
          v295 = __OFSUB__(v300, v301);
          v299 = v300 - v301;
          if (!v295)
          {
            goto LABEL_105;
          }

          goto LABEL_115;
        case 3uLL:
          goto LABEL_105;
        default:
          v299 = BYTE6(v119);
          goto LABEL_105;
      }

      goto LABEL_106;
    }

    if (v120 >= v119)
    {
      break;
    }

    v116 = p_cache[v120];
    ++v118;
    if (v116)
    {
      v118 = v120;
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_46_0();

  v133 = v345;
  sub_1C04C9F04();
  OUTLINED_FUNCTION_81_0();
  sub_1C04A4F08(v134, v135, v136);
  v138 = v137;

  p_cache = &OBJC_METACLASS____TtC10PegasusKit17ParsecdConnection.cache;
  if (v138)
  {
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v139 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v139, qword_1EDE44DB0);

    v140 = sub_1C04F63E0();
    v107 = sub_1C04F6A40();

    if (os_log_type_enabled(v140, v107))
    {
      OUTLINED_FUNCTION_145();
      v141 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v142 = swift_slowAlloc();
      *&v349 = v142;
      *v141 = 136315138;
      v143 = OUTLINED_FUNCTION_20_5();
      *(v141 + 4) = sub_1C047D76C(v143, v144, v145);
      OUTLINED_FUNCTION_25_5();
      _os_log_impl(v146, v147, v148, v149, v150, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v142);
      p_cache = &OBJC_METACLASS____TtC10PegasusKit17ParsecdConnection.cache;
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    v151 = v341;
    v152 = v343;
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_73_0();
    sub_1C04F5210();
    if (v152)
    {
      v153 = v324;
      swift_isUniquelyReferenced_nonNull_native();
      *&v349 = v153;
      v154 = OUTLINED_FUNCTION_20_5();
      sub_1C049FB48(v154, v155, v156, v157);
      v158 = v349;
      LODWORD(v343) = 1;
    }

    else
    {

      LODWORD(v343) = 0;
      v158 = v324;
    }

    v159 = v332;
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
    v151 = v341;
    v158 = v324;
    v159 = v332;
  }

  v160 = sub_1C04F6350();
  if (v159)
  {
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_34_1();
    v162(v107, v331);
    v163 = OUTLINED_FUNCTION_23_4();
    v164(v163, v151);

    OUTLINED_FUNCTION_46_0();

    goto LABEL_58;
  }

  v165 = v161;
  v354 = v160;
  v355 = v161;
  v353 = xmmword_1C04F83F0;
  v348 = 0;
  v339 = v160;
  sub_1C048087C(v160, v161);
  v166 = sub_1C04C9E9C();
  v332 = v165;
  if ((v166 & 1) == 0)
  {
LABEL_51:
    v107 = 0;
    v181 = 1;
    goto LABEL_52;
  }

  sub_1C04F5210();
  sub_1C04F5210();
  if (MEMORY[0x1C68DAC70](v354, v355) < 1501)
  {
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v172 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v172, qword_1EDE44DB0);
    v173 = sub_1C04F63E0();
    sub_1C04F6A10();
    v174 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v174, v175))
    {
      *OUTLINED_FUNCTION_25_0() = 0;
      OUTLINED_FUNCTION_25_5();
      _os_log_impl(v176, v177, v178, v179, v180, 2u);
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    goto LABEL_51;
  }

  v348 = 1;
  v107 = v355;
  v167 = OUTLINED_FUNCTION_238();
  sub_1C048087C(v167, v168);
  v169 = OUTLINED_FUNCTION_238();
  sub_1C04E2074(v169, v170);
  v119 = v171;
  v238 = OUTLINED_FUNCTION_238();
  v118 = v239;
  sub_1C04A1144(v238, v240);
  v307 = v118;
  v241 = MEMORY[0x1C68DAC70](v118, v119);
  if (v241 < 0)
  {
    __break(1u);
  }

  else
  {
    v107 = v241;
    v118 = v158;
    if (qword_1EDE44480 == -1)
    {
      goto LABEL_70;
    }
  }

  OUTLINED_FUNCTION_0_11();
LABEL_70:
  v242 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v242, qword_1EDE44DB0);
  v243 = v307;
  sub_1C048087C(v307, v119);
  v114 = sub_1C04F63E0();
  LOBYTE(v106) = sub_1C04F6A10();
  v244 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v244, v245))
  {
    v88 = OUTLINED_FUNCTION_74_0();
    *v88 = 134218240;
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    v120 = v354;
    v246 = 0;
    switch(v355 >> 62)
    {
      case 1uLL:
        goto LABEL_97;
      case 2uLL:
        v297 = *(v354 + 16);
        v298 = *(v354 + 24);
        v295 = __OFSUB__(v298, v297);
        v246 = v298 - v297;
        if (!v295)
        {
          goto LABEL_100;
        }

        goto LABEL_113;
      case 3uLL:
        goto LABEL_100;
      default:
        v246 = BYTE6(v355);
        goto LABEL_100;
    }
  }

  sub_1C04A1144(v243, v119);
LABEL_106:

  swift_beginAccess();
  v302 = v354;
  v303 = v355;
  v354 = v243;
  v355 = v119;
  sub_1C04A1144(v302, v303);
  v181 = 0;
  v158 = v118;
LABEL_52:
  sub_1C04F5380();
  swift_beginAccess();
  v182 = MEMORY[0x1C68DAC70](v354, v355);
  swift_endAccess();
  if ((v182 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v307 = v107;
    if (!HIDWORD(v182))
    {
      v306 = v181;
      v347 = bswap32(v182);
      sub_1C04F5380();
      v183 = v354;
      v184 = v355;
      sub_1C048087C(v354, v355);
      sub_1C04F53E0();
      sub_1C04A1144(v183, v184);
      v185 = *(&v353 + 1);
      v186 = OUTLINED_FUNCTION_238();
      sub_1C048087C(v186, v187);
      OUTLINED_FUNCTION_238();
      OUTLINED_FUNCTION_73_0();
      sub_1C04F5220();
      v188 = p_cache;
      if (sub_1C04F51D0())
      {
        v305 = sub_1C04F66E0();
        v333 = v189;
      }

      else
      {
        v305 = 0;
        v333 = 0xE000000000000000;
      }

      v190 = v329;
      v191 = OBJC_IVAR____TtC10PegasusKit10GRPCClient_jsonEncodingOptions;
      v192 = v345;
      OUTLINED_FUNCTION_141();
      swift_beginAccess();
      v193 = v328;
      v194 = &v192[v191];
      v195 = v327;
      (v328[2].isa)(v327, v194, v190);
      v197 = sub_1C04F6330();
      v199 = v198;
      (v193[1].isa)(v195, v190);
      v200 = v188[144];
      v324 = v158;
      v329 = v197;
      if (v343)
      {
        v181 = v345;
        if (v200 != -1)
        {
          OUTLINED_FUNCTION_0_11();
        }

        v201 = sub_1C04F6400();
        OUTLINED_FUNCTION_163(v201, qword_1EDE44DB0);
        OUTLINED_FUNCTION_91_0(&v346);
        OUTLINED_FUNCTION_36_0();
        v202();
        v203 = v340;

        v204 = v333;

        v328 = v197;
        v158 = sub_1C04F63E0();
        v205 = sub_1C04F6A40();

        if (os_log_type_enabled(v158, v205))
        {
          v206 = swift_slowAlloc();
          v327 = swift_slowAlloc();
          *&v349 = v327;
          *v206 = 136446978;
          LODWORD(v326) = v205;
          sub_1C04F52D0();
          OUTLINED_FUNCTION_81_0();
          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_87_0();
          v207();
          v208 = OUTLINED_FUNCTION_238();
          v211 = sub_1C047D76C(v208, v209, v210);
          OUTLINED_FUNCTION_73_0();

          v212 = OUTLINED_FUNCTION_55_0();
          v214 = sub_1C047D76C(v212, v203, v213);
          v215 = OUTLINED_FUNCTION_70_0(v214);
          sub_1C047D76C(v215, v204, v216);
          OUTLINED_FUNCTION_27_1();

          *(v206 + 24) = v211;
          *(v206 + 32) = v195;
          v217 = OUTLINED_FUNCTION_91_0(&v352);
          *(v206 + 34) = sub_1C047D76C(v217, v199, v218);
          _os_log_impl(&dword_1C0479000, v158, v326, "Querying %{public}s with request (requestId: %{public}s) : (headers: %{public}s) %{public}s", v206, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          v181 = v345;
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();

          p_cache = v203;
        }

        else
        {

          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_87_0();
          v247();
          p_cache = v203;
          v195 = v329;
        }

        v248 = *(v336 + 16);
        v349 = *v336;
        v350 = v248;
        v351 = *(v336 + 32);
        v249 = sub_1C04CA360(v185, &v349, v195, v199, v324);
        v107 = v250;

        if (v107)
        {

          v251 = sub_1C04F63E0();
          v252 = sub_1C04F6A40();

          if (os_log_type_enabled(v251, v252))
          {
            OUTLINED_FUNCTION_145();
            v253 = swift_slowAlloc();
            OUTLINED_FUNCTION_149();
            v158 = swift_slowAlloc();
            *&v349 = v158;
            *v253 = 136315138;
            v254 = sub_1C047D76C(v249, v107, &v349);

            *(v253 + 4) = v254;
            _os_log_impl(&dword_1C0479000, v251, v252, "Debug curl: %s", v253, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v158);
            OUTLINED_FUNCTION_134();
            MEMORY[0x1C68DCEB0]();
            p_cache = v340;
            OUTLINED_FUNCTION_134();
            MEMORY[0x1C68DCEB0]();
          }

          else
          {
          }

          v181 = v345;
        }

        else
        {
          v256 = sub_1C04F63E0();
          v107 = sub_1C04F6A20();
          v257 = OUTLINED_FUNCTION_143();
          if (os_log_type_enabled(v257, v258))
          {
            *OUTLINED_FUNCTION_25_0() = 0;
            OUTLINED_FUNCTION_25_5();
            _os_log_impl(v259, v260, v261, v262, v263, 2u);
            OUTLINED_FUNCTION_134();
            MEMORY[0x1C68DCEB0]();
          }
        }
      }

      else
      {
        v181 = v345;
        if (v200 != -1)
        {
          OUTLINED_FUNCTION_0_11();
        }

        v219 = sub_1C04F6400();
        OUTLINED_FUNCTION_163(v219, qword_1EDE44DB0);
        OUTLINED_FUNCTION_91_0(&v347);
        OUTLINED_FUNCTION_36_0();
        v220();
        v158 = v340;

        v107 = v333;

        v221 = sub_1C04F63E0();
        v222 = sub_1C04F6A40();

        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          v336 = swift_slowAlloc();
          *&v349 = v336;
          *v223 = 136446979;
          v328 = v221;
          sub_1C04F52D0();
          LODWORD(v327) = v222;
          v224 = v107;
          v107 = v225;
          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_87_0();
          v226();
          v227 = OUTLINED_FUNCTION_238();
          sub_1C047D76C(v227, v228, v229);

          v230 = OUTLINED_FUNCTION_55_0();
          v232 = sub_1C047D76C(v230, v158, v231);
          v233 = OUTLINED_FUNCTION_70_0(v232);
          v235 = sub_1C047D76C(v233, v224, v234);

          *(v223 + 24) = v235;
          *(v223 + 32) = 2085;
          v236 = sub_1C047D76C(v329, v199, &v349);

          *(v223 + 34) = v236;
          v237 = v328;
          _os_log_impl(&dword_1C0479000, v328, v327, "Querying %{public}s with request (requestId: %{public}s) : (headers: %{public}s) %{sensitive}s", v223, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          v181 = v345;
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
        }

        else
        {

          OUTLINED_FUNCTION_19_3();
          OUTLINED_FUNCTION_87_0();
          v255();
        }

        p_cache = v158;
      }

      if (qword_1EDE44480 == -1)
      {
        goto LABEL_85;
      }

      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_109:
  OUTLINED_FUNCTION_0_11();
LABEL_85:
  v264 = sub_1C04F6400();
  __swift_project_value_buffer(v264, qword_1EDE44DB0);
  OUTLINED_FUNCTION_27_1();

  v265 = sub_1C04F63E0();
  v266 = v181;
  v267 = sub_1C04F6A10();

  if (os_log_type_enabled(v265, v267))
  {
    OUTLINED_FUNCTION_74_0();
    v107 = OUTLINED_FUNCTION_75_0();
    *&v349 = v107;
    *v158 = 136315394;
    v268 = *(v266 + OBJC_IVAR____TtC10PegasusKit10GRPCClient_sharedSession);
    v269 = sub_1C047D6CC();
    v271 = p_cache;
    v272 = sub_1C047D76C(v269, v270, &v349);

    *(v158 + 4) = v272;
    *(v158 + 12) = 2080;
    *(v158 + 14) = sub_1C047D76C(v335, v271, &v349);
    OUTLINED_FUNCTION_46_0();

    _os_log_impl(&dword_1C0479000, v265, v267, "Using session %s for requestId: %s", v158, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {
    OUTLINED_FUNCTION_46_0();
  }

  OUTLINED_FUNCTION_73_0();
  v273 = v316;
  v274 = *(v266 + OBJC_IVAR____TtC10PegasusKit10GRPCClient_sharedSession);
  v275 = sub_1C04E3AA8(v107, 0, v317 & 1);
  v277 = v276;
  LODWORD(v278) = *MEMORY[0x1E696A9C8];
  [v275 setPriority_];
  sub_1C04A13B0(v323, &v349, &qword_1EBE0CE40, &qword_1C04F8900);
  if (*(&v350 + 1))
  {
    v345 = v277;
    v279 = v351;
    __swift_project_boxed_opaque_existential_1(&v349, *(&v350 + 1));
    sub_1C04F5200();
    v280 = v341;
    if (__swift_getEnumTagSinglePayload(v273, 1, v341))
    {
      sub_1C04A12B4(v273, &qword_1EBE0CE60, &unk_1C04F9130);
    }

    else
    {
      v283 = v334;
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_36_0();
      v284();
      sub_1C04A12B4(v273, &qword_1EBE0CE60, &unk_1C04F9130);
      sub_1C04F52D0();
      v343(v283, v280);
    }

    sub_1C04F51D0();
    v285 = *(v279 + 8);
    v281 = v340;
    v286 = OUTLINED_FUNCTION_138();
    v282 = v335;
    v287(v286);

    __swift_destroy_boxed_opaque_existential_1(&v349);
    v277 = v345;
  }

  else
  {

    sub_1C04A12B4(&v349, &qword_1EBE0CE40, &qword_1C04F8900);
    v281 = v340;
    v282 = v335;
  }

  v346 = v277;
  sub_1C04A13B0(v323, &v349, &qword_1EBE0CE40, &qword_1C04F8900);
  v288 = swift_allocObject();
  v289 = v350;
  *(v288 + 16) = v349;
  *(v288 + 32) = v289;
  *(v288 + 48) = v351;
  *(v288 + 56) = v275;
  *(v288 + 64) = v282;
  *(v288 + 72) = v281;
  v290 = swift_allocObject();
  *(v290 + 16) = v308;
  *(v290 + 24) = v288;
  v275;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D800, &unk_1C04FA7A8);
  v311(0);
  OUTLINED_FUNCTION_3();
  sub_1C047C1A4(v291, &qword_1EBE0D800, &unk_1C04FA7A8);
  v292 = v318;
  sub_1C04F6520();

  sub_1C047C1A4(v313, v319, v320);
  OUTLINED_FUNCTION_91_0(&v349);
  sub_1C04F64E0();
  OUTLINED_FUNCTION_96_0();

  (*(v321 + 8))(v292, v281);
  OUTLINED_FUNCTION_34_1();
  v293 = OUTLINED_FUNCTION_85_0();
  v294(v293);
  v343(v337, v341);
  sub_1C04A1144(v353, *(&v353 + 1));
  sub_1C04A1144(v354, v355);
LABEL_58:
  v196 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_53_0();
}

void sub_1C04DC064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t *a28, void (*a29)(uint64_t), uint64_t a30)
{
  OUTLINED_FUNCTION_52_0();
  v41 = OUTLINED_FUNCTION_26_3(v38, v39, v40);
  v42 = OUTLINED_FUNCTION_2_1(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_84_0();
  v170 = v30(0);
  OUTLINED_FUNCTION_0(v170);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v47);
  if (OUTLINED_FUNCTION_50_0() != 200)
  {
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v62 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v62, qword_1EDE44DB0);
    v63 = v33;
    v64 = sub_1C04F63E0();
    sub_1C04F6A20();
    v65 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_145();
      v67 = swift_slowAlloc();
      *v67 = 134217984;
      *(v67 + 4) = OUTLINED_FUNCTION_103_0();

      OUTLINED_FUNCTION_99_0(&dword_1C0479000, v68, v69, "Non 200 HTTP status %ld");
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    else
    {

      v64 = v63;
    }

    v70 = OUTLINED_FUNCTION_103_0();
    v71 = v63;
    v72 = [v71 description];
    v73 = sub_1C04F6750();
    v75 = v74;

    sub_1C04A0FF8();
    OUTLINED_FUNCTION_45();
    *v76 = v70;
    v76[1] = v73;
    v76[2] = v75;
    v77 = OUTLINED_FUNCTION_299(v76, 2);
    OUTLINED_FUNCTION_18_3(v77, v78, &qword_1EBE0CE40, &qword_1C04F8900);
    if (v174)
    {
      v79 = __swift_project_boxed_opaque_existential_1(v173, v174);
      MEMORY[0x1EEE9AC00](v79);
      OUTLINED_FUNCTION_3_15();
      v80 = OUTLINED_FUNCTION_29_2();
      v81(v80);
LABEL_31:
      sub_1C04A12B4(v175, &qword_1EBE0CB20, &unk_1C04F8B20);
      __swift_destroy_boxed_opaque_existential_1(v173);
LABEL_61:
      OUTLINED_FUNCTION_53_0();
      return;
    }

    goto LABEL_60;
  }

  v48 = OUTLINED_FUNCTION_42_1();
  v49 = OUTLINED_FUNCTION_57_0(v48);

  if (v49)
  {
    OUTLINED_FUNCTION_89_0();
    sub_1C04F6750();

    v50 = OUTLINED_FUNCTION_86_0();
    v52 = sub_1C048728C(v50, v51);
    if ((v53 & 1) == 0)
    {
      v54 = v52;
      if (v52)
      {
        v55 = OUTLINED_FUNCTION_51_0();
        v56 = OUTLINED_FUNCTION_46_0();
        v58 = [v56 v57];

        if (v58)
        {
          v59 = sub_1C04F6750();
          v61 = v60;
        }

        else
        {
          v59 = 0;
          v61 = 0xE000000000000000;
        }

        if (qword_1EDE44480 != -1)
        {
          OUTLINED_FUNCTION_0_11();
        }

        v89 = sub_1C04F6400();
        __swift_project_value_buffer(v89, qword_1EDE44DB0);
        OUTLINED_FUNCTION_27_1();

        v90 = sub_1C04F63E0();
        v91 = sub_1C04F6A20();

        if (os_log_type_enabled(v90, v91))
        {
          OUTLINED_FUNCTION_74_0();
          v173[0] = OUTLINED_FUNCTION_75_0();
          *v36 = 136315394;
          v92 = OUTLINED_FUNCTION_86_0();
          sub_1C047D76C(v92, v93, v94);

          *(v36 + 14) = OUTLINED_FUNCTION_67_0();
          OUTLINED_FUNCTION_95_0(&dword_1C0479000, v95, v96, "RPC error: %s: %s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
        }

        else
        {
        }

        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_45();
        *v97 = v54;
        v97[1] = v59;
        v97[2] = v61;
        v98 = OUTLINED_FUNCTION_299(v97, 3);
        OUTLINED_FUNCTION_18_3(v98, v99, &qword_1EBE0CE40, &qword_1C04F8900);
        if (v174)
        {
          goto LABEL_29;
        }

LABEL_60:
        sub_1C04A12B4(v175, &qword_1EBE0CB20, &unk_1C04F8B20);
        sub_1C04A12B4(v173, &qword_1EBE0CE40, &qword_1C04F8900);
        goto LABEL_61;
      }
    }
  }

  if (v31 >> 60 == 15)
  {
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_45();
    v82[1] = 0;
    v82[2] = 0;
    *v82 = 0;
    v83 = OUTLINED_FUNCTION_299(v82, 5);
    OUTLINED_FUNCTION_18_3(v83, v84, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v174)
    {
      goto LABEL_60;
    }

LABEL_29:
    __swift_project_boxed_opaque_existential_1(v173, v174);
    OUTLINED_FUNCTION_10_4();
    MEMORY[0x1EEE9AC00](v100);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_8_7();
LABEL_30:
    v101();
    goto LABEL_31;
  }

  v171 = v34;
  v172 = v31;
  sub_1C048087C(v34, v31);
  v85 = sub_1C049E6A8();
  if (v37)
  {
    v86 = sub_1C04A1144(v34, v31);
    OUTLINED_FUNCTION_18_3(v86, v87, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v174)
    {
      goto LABEL_60;
    }

    goto LABEL_29;
  }

  v88 = v85;
  sub_1C049E7E0();
  OUTLINED_FUNCTION_89_0();
  v103 = bswap32(v102);
  v104 = OUTLINED_FUNCTION_21_5();
  if (MEMORY[0x1C68DAC70](v104) != v103)
  {
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_68_0();
    sub_1C04F6D60();
    OUTLINED_FUNCTION_105_0();

    MEMORY[0x1C68DC0D0](v32 | 1, 0x80000001C04FCCB0);
    MEMORY[0x1C68DAC70](v171, v31);
    sub_1C04F6D60();
    OUTLINED_FUNCTION_105_0();

    v121 = v173[1];
    sub_1C04A0FF8();
    v122 = OUTLINED_FUNCTION_45();
    *v123 = v173[0];
    v123[1] = v121;
    OUTLINED_FUNCTION_31_3(v122, v123);
    v124 = sub_1C04A1144(v171, v172);
    OUTLINED_FUNCTION_18_3(v124, v125, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v174)
    {
      goto LABEL_60;
    }

LABEL_44:
    __swift_project_boxed_opaque_existential_1(v173, v174);
    OUTLINED_FUNCTION_10_4();
    MEMORY[0x1EEE9AC00](v130);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_93_0();
    goto LABEL_30;
  }

  if (!v88)
  {
    goto LABEL_58;
  }

  if (qword_1EDE44480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v105 = sub_1C04F6400();
  __swift_project_value_buffer(v105, qword_1EDE44DB0);
  v106 = sub_1C04F63E0();
  v107 = sub_1C04F6A10();
  if (os_log_type_enabled(v106, v107))
  {
    *OUTLINED_FUNCTION_25_0() = 0;
    OUTLINED_FUNCTION_94_0(&dword_1C0479000, v108, v109, "Response indicates compressed payload, attempting to inflate");
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  v110 = OUTLINED_FUNCTION_21_5();
  sub_1C048087C(v110, v111);
  v112 = OUTLINED_FUNCTION_102_0();
  v113 = OUTLINED_FUNCTION_21_5();
  sub_1C04A1144(v113, v114);
  if ((v112 & 1) == 0)
  {
    sub_1C04A0FF8();
    v126 = OUTLINED_FUNCTION_45();
    *v127 = 0xD000000000000043;
    v127[1] = 0x80000001C04FCCD0;
    OUTLINED_FUNCTION_31_3(v126, v127);
    v128 = sub_1C04A1144(v171, v172);
    OUTLINED_FUNCTION_18_3(v128, v129, &qword_1EBE0CE40, &qword_1C04F8900);
    OUTLINED_FUNCTION_49_0();
    if (!v174)
    {
      goto LABEL_60;
    }

    goto LABEL_44;
  }

  v115 = OUTLINED_FUNCTION_21_5();
  sub_1C048087C(v115, v116);
  v117 = OUTLINED_FUNCTION_21_5();
  sub_1C04E2498(v117, v118);
  OUTLINED_FUNCTION_49_0();
  v131 = v119;
  v132 = v120;
  v133 = OUTLINED_FUNCTION_21_5();
  sub_1C04A1144(v133, v134);
  v135 = OUTLINED_FUNCTION_20_5();
  sub_1C048087C(v135, v136);
  v137 = sub_1C04F63E0();
  sub_1C04F6A10();
  v138 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = OUTLINED_FUNCTION_74_0();
    *v140 = 134218240;
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    switch(v172 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v171), v171))
        {
          goto LABEL_63;
        }

        break;
      case 2uLL:
        if (__OFSUB__(*(v171 + 24), *(v171 + 16)))
        {
          goto LABEL_64;
        }

        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_92_0();
    v143 = 0;
    switch(v144)
    {
      case 1:
        LODWORD(v143) = HIDWORD(v131) - v131;
        if (__OFSUB__(HIDWORD(v131), v131))
        {
          goto LABEL_65;
        }

        v143 = v143;
        break;
      case 2:
        v146 = *(v131 + 16);
        v145 = *(v131 + 24);
        v147 = __OFSUB__(v145, v146);
        v143 = v145 - v146;
        if (v147)
        {
          goto LABEL_66;
        }

        break;
      case 3:
        break;
      default:
        v143 = BYTE6(v132);
        break;
    }

    *(v140 + 14) = v143;
    v148 = OUTLINED_FUNCTION_20_5();
    sub_1C04A1144(v148, v149);
    OUTLINED_FUNCTION_25_5();
    _os_log_impl(v150, v151, v152, v153, v154, 0x16u);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {
    v141 = OUTLINED_FUNCTION_20_5();
    sub_1C04A1144(v141, v142);
  }

  OUTLINED_FUNCTION_101_0();
  v171 = v131;
  v172 = v132;
  v155 = OUTLINED_FUNCTION_20_5();
  sub_1C048087C(v155, v156);
  v157 = OUTLINED_FUNCTION_238();
  sub_1C04A1144(v157, v158);
  v159 = OUTLINED_FUNCTION_20_5();
  v160 = MEMORY[0x1C68DAC70](v159);
  v161 = OUTLINED_FUNCTION_20_5();
  sub_1C04A1144(v161, v162);
  if ((v160 & 0x8000000000000000) == 0)
  {
LABEL_58:
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    OUTLINED_FUNCTION_69_0();
    sub_1C04F62F0();
    sub_1C04E0FBC(a28, a29);
    OUTLINED_FUNCTION_37_1();
    v174 = a30;
    __swift_allocate_boxed_opaque_existential_0(v173);
    OUTLINED_FUNCTION_59_0();
    v163();
    sub_1C04A12B4(v175, &qword_1EBE0CB20, &unk_1C04F8B20);
    v164 = OUTLINED_FUNCTION_47_0();
    v165(v164);
    v166 = sub_1C04A1144(v171, v172);
    OUTLINED_FUNCTION_18_3(v166, v167, &qword_1EBE0CE40, &qword_1C04F8900);
    v168 = v174;
    OUTLINED_FUNCTION_49_0();
    if (v168)
    {
      __swift_project_boxed_opaque_existential_1(v173, v168);
      OUTLINED_FUNCTION_10_4();
      MEMORY[0x1EEE9AC00](v169);
      OUTLINED_FUNCTION_0_17();
      OUTLINED_FUNCTION_40_0();
      goto LABEL_30;
    }

    goto LABEL_60;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_1C04DCD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21, void (*a22)(uint64_t), uint64_t a23)
{
  OUTLINED_FUNCTION_52_0();
  v34 = OUTLINED_FUNCTION_26_3(v31, v32, v33);
  v35 = OUTLINED_FUNCTION_2_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_84_0();
  v163 = v23(0);
  OUTLINED_FUNCTION_0(v163);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v40);
  if (OUTLINED_FUNCTION_50_0() != 200)
  {
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v55 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v55, qword_1EDE44DB0);
    v56 = v26;
    v57 = sub_1C04F63E0();
    sub_1C04F6A20();
    v58 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_145();
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = OUTLINED_FUNCTION_103_0();

      OUTLINED_FUNCTION_99_0(&dword_1C0479000, v61, v62, "Non 200 HTTP status %ld");
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    else
    {

      v57 = v56;
    }

    v63 = OUTLINED_FUNCTION_103_0();
    v64 = v56;
    v65 = [v64 description];
    v66 = sub_1C04F6750();
    v68 = v67;

    sub_1C04A0FF8();
    OUTLINED_FUNCTION_45();
    *v69 = v63;
    v69[1] = v66;
    v69[2] = v68;
    v70 = OUTLINED_FUNCTION_299(v69, 2);
    OUTLINED_FUNCTION_18_3(v70, v71, &qword_1EBE0CE40, &qword_1C04F8900);
    if (v167)
    {
      v72 = __swift_project_boxed_opaque_existential_1(v166, v167);
      MEMORY[0x1EEE9AC00](v72);
      OUTLINED_FUNCTION_3_15();
      v73 = OUTLINED_FUNCTION_29_2();
      v74(v73);
LABEL_31:
      sub_1C04A12B4(v168, &qword_1EBE0CB20, &unk_1C04F8B20);
      __swift_destroy_boxed_opaque_existential_1(v166);
LABEL_61:
      OUTLINED_FUNCTION_53_0();
      return;
    }

    goto LABEL_60;
  }

  v41 = OUTLINED_FUNCTION_42_1();
  v42 = OUTLINED_FUNCTION_57_0(v41);

  if (v42)
  {
    OUTLINED_FUNCTION_89_0();
    sub_1C04F6750();

    v43 = OUTLINED_FUNCTION_86_0();
    v45 = sub_1C048728C(v43, v44);
    if ((v46 & 1) == 0)
    {
      v47 = v45;
      if (v45)
      {
        v48 = OUTLINED_FUNCTION_51_0();
        v49 = OUTLINED_FUNCTION_46_0();
        v51 = [v49 v50];

        if (v51)
        {
          v52 = sub_1C04F6750();
          v54 = v53;
        }

        else
        {
          v52 = 0;
          v54 = 0xE000000000000000;
        }

        if (qword_1EDE44480 != -1)
        {
          OUTLINED_FUNCTION_0_11();
        }

        v82 = sub_1C04F6400();
        __swift_project_value_buffer(v82, qword_1EDE44DB0);
        OUTLINED_FUNCTION_27_1();

        v83 = sub_1C04F63E0();
        v84 = sub_1C04F6A20();

        if (os_log_type_enabled(v83, v84))
        {
          OUTLINED_FUNCTION_74_0();
          v166[0] = OUTLINED_FUNCTION_75_0();
          *v29 = 136315394;
          v85 = OUTLINED_FUNCTION_86_0();
          sub_1C047D76C(v85, v86, v87);

          *(v29 + 14) = OUTLINED_FUNCTION_67_0();
          OUTLINED_FUNCTION_95_0(&dword_1C0479000, v88, v89, "RPC error: %s: %s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
          OUTLINED_FUNCTION_134();
          MEMORY[0x1C68DCEB0]();
        }

        else
        {
        }

        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_45();
        *v90 = v47;
        v90[1] = v52;
        v90[2] = v54;
        v91 = OUTLINED_FUNCTION_299(v90, 3);
        OUTLINED_FUNCTION_18_3(v91, v92, &qword_1EBE0CE40, &qword_1C04F8900);
        if (v167)
        {
          goto LABEL_29;
        }

LABEL_60:
        sub_1C04A12B4(v168, &qword_1EBE0CB20, &unk_1C04F8B20);
        sub_1C04A12B4(v166, &qword_1EBE0CE40, &qword_1C04F8900);
        goto LABEL_61;
      }
    }
  }

  if (v24 >> 60 == 15)
  {
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_45();
    v75[1] = 0;
    v75[2] = 0;
    *v75 = 0;
    v76 = OUTLINED_FUNCTION_299(v75, 5);
    OUTLINED_FUNCTION_18_3(v76, v77, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v167)
    {
      goto LABEL_60;
    }

LABEL_29:
    __swift_project_boxed_opaque_existential_1(v166, v167);
    OUTLINED_FUNCTION_10_4();
    MEMORY[0x1EEE9AC00](v93);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_8_7();
LABEL_30:
    v94();
    goto LABEL_31;
  }

  v164 = v27;
  v165 = v24;
  sub_1C048087C(v27, v24);
  v78 = sub_1C049E6A8();
  if (v30)
  {
    v79 = sub_1C04A1144(v27, v24);
    OUTLINED_FUNCTION_18_3(v79, v80, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v167)
    {
      goto LABEL_60;
    }

    goto LABEL_29;
  }

  v81 = v78;
  sub_1C049E7E0();
  OUTLINED_FUNCTION_89_0();
  v96 = bswap32(v95);
  v97 = OUTLINED_FUNCTION_21_5();
  if (MEMORY[0x1C68DAC70](v97) != v96)
  {
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_68_0();
    sub_1C04F6D60();
    OUTLINED_FUNCTION_105_0();

    MEMORY[0x1C68DC0D0](v25 | 1, 0x80000001C04FCCB0);
    MEMORY[0x1C68DAC70](v164, v24);
    sub_1C04F6D60();
    OUTLINED_FUNCTION_105_0();

    v114 = v166[1];
    sub_1C04A0FF8();
    v115 = OUTLINED_FUNCTION_45();
    *v116 = v166[0];
    v116[1] = v114;
    OUTLINED_FUNCTION_31_3(v115, v116);
    v117 = sub_1C04A1144(v164, v165);
    OUTLINED_FUNCTION_18_3(v117, v118, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!v167)
    {
      goto LABEL_60;
    }

LABEL_44:
    __swift_project_boxed_opaque_existential_1(v166, v167);
    OUTLINED_FUNCTION_10_4();
    MEMORY[0x1EEE9AC00](v123);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_93_0();
    goto LABEL_30;
  }

  if (!v81)
  {
    goto LABEL_58;
  }

  if (qword_1EDE44480 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v98 = sub_1C04F6400();
  __swift_project_value_buffer(v98, qword_1EDE44DB0);
  v99 = sub_1C04F63E0();
  v100 = sub_1C04F6A10();
  if (os_log_type_enabled(v99, v100))
  {
    *OUTLINED_FUNCTION_25_0() = 0;
    OUTLINED_FUNCTION_94_0(&dword_1C0479000, v101, v102, "Response indicates compressed payload, attempting to inflate");
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  v103 = OUTLINED_FUNCTION_21_5();
  sub_1C048087C(v103, v104);
  v105 = OUTLINED_FUNCTION_102_0();
  v106 = OUTLINED_FUNCTION_21_5();
  sub_1C04A1144(v106, v107);
  if ((v105 & 1) == 0)
  {
    sub_1C04A0FF8();
    v119 = OUTLINED_FUNCTION_45();
    *v120 = 0xD000000000000043;
    v120[1] = 0x80000001C04FCCD0;
    OUTLINED_FUNCTION_31_3(v119, v120);
    v121 = sub_1C04A1144(v164, v165);
    OUTLINED_FUNCTION_18_3(v121, v122, &qword_1EBE0CE40, &qword_1C04F8900);
    OUTLINED_FUNCTION_49_0();
    if (!v167)
    {
      goto LABEL_60;
    }

    goto LABEL_44;
  }

  v108 = OUTLINED_FUNCTION_21_5();
  sub_1C048087C(v108, v109);
  v110 = OUTLINED_FUNCTION_21_5();
  sub_1C04E2498(v110, v111);
  OUTLINED_FUNCTION_49_0();
  v124 = v112;
  v125 = v113;
  v126 = OUTLINED_FUNCTION_21_5();
  sub_1C04A1144(v126, v127);
  v128 = OUTLINED_FUNCTION_20_5();
  sub_1C048087C(v128, v129);
  v130 = sub_1C04F63E0();
  sub_1C04F6A10();
  v131 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = OUTLINED_FUNCTION_74_0();
    *v133 = 134218240;
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    switch(v165 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v164), v164))
        {
          goto LABEL_63;
        }

        break;
      case 2uLL:
        if (__OFSUB__(*(v164 + 24), *(v164 + 16)))
        {
          goto LABEL_64;
        }

        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_92_0();
    v136 = 0;
    switch(v137)
    {
      case 1:
        LODWORD(v136) = HIDWORD(v124) - v124;
        if (__OFSUB__(HIDWORD(v124), v124))
        {
          goto LABEL_65;
        }

        v136 = v136;
        break;
      case 2:
        v139 = *(v124 + 16);
        v138 = *(v124 + 24);
        v140 = __OFSUB__(v138, v139);
        v136 = v138 - v139;
        if (v140)
        {
          goto LABEL_66;
        }

        break;
      case 3:
        break;
      default:
        v136 = BYTE6(v125);
        break;
    }

    *(v133 + 14) = v136;
    v141 = OUTLINED_FUNCTION_20_5();
    sub_1C04A1144(v141, v142);
    OUTLINED_FUNCTION_25_5();
    _os_log_impl(v143, v144, v145, v146, v147, 0x16u);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {
    v134 = OUTLINED_FUNCTION_20_5();
    sub_1C04A1144(v134, v135);
  }

  OUTLINED_FUNCTION_101_0();
  v164 = v124;
  v165 = v125;
  v148 = OUTLINED_FUNCTION_20_5();
  sub_1C048087C(v148, v149);
  v150 = OUTLINED_FUNCTION_238();
  sub_1C04A1144(v150, v151);
  v152 = OUTLINED_FUNCTION_20_5();
  v153 = MEMORY[0x1C68DAC70](v152);
  v154 = OUTLINED_FUNCTION_20_5();
  sub_1C04A1144(v154, v155);
  if ((v153 & 0x8000000000000000) == 0)
  {
LABEL_58:
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    OUTLINED_FUNCTION_69_0();
    sub_1C04F62F0();
    sub_1C04E0FBC(a21, a22);
    OUTLINED_FUNCTION_37_1();
    v167 = a23;
    __swift_allocate_boxed_opaque_existential_0(v166);
    OUTLINED_FUNCTION_59_0();
    v156();
    sub_1C04A12B4(v168, &qword_1EBE0CB20, &unk_1C04F8B20);
    v157 = OUTLINED_FUNCTION_47_0();
    v158(v157);
    v159 = sub_1C04A1144(v164, v165);
    OUTLINED_FUNCTION_18_3(v159, v160, &qword_1EBE0CE40, &qword_1C04F8900);
    v161 = v167;
    OUTLINED_FUNCTION_49_0();
    if (v161)
    {
      __swift_project_boxed_opaque_existential_1(v166, v161);
      OUTLINED_FUNCTION_10_4();
      MEMORY[0x1EEE9AC00](v162);
      OUTLINED_FUNCTION_0_17();
      OUTLINED_FUNCTION_40_0();
      goto LABEL_30;
    }

    goto LABEL_60;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_1C04DDAAC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE40950);
  __swift_project_value_buffer(v0, qword_1EDE40950);
  return sub_1C04F63F0();
}

uint64_t sub_1C04DDB34()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v10 = sub_1C04F6250();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  qword_1EDE41AC8 = v10;
  *algn_1EDE41AD0 = v12;
  return result;
}

uint64_t PegasusProxyForIntelligencePlatform.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void sub_1C04DDD50()
{
  *&xmmword_1EBE0D738 = 0xD000000000000024;
  *(&xmmword_1EBE0D738 + 1) = 0x80000001C04FE310;
  qword_1EBE0D748 = 0x6863726165534449;
  unk_1EBE0D750 = 0xE800000000000000;
  *&xmmword_1EBE0D758 = 0xD000000000000018;
  *(&xmmword_1EBE0D758 + 1) = 0x80000001C04FE340;
}

void *PegasusProxyForIntelligencePlatform.init()()
{
  if (qword_1EDE41AC0 != -1)
  {
    OUTLINED_FUNCTION_32_3();
  }

  OUTLINED_FUNCTION_141();

  return sub_1C04B8AAC(v0, v1, v2, v3, 0xF000000000000000, 0);
}

void *PegasusProxyForIntelligencePlatform.__allocating_init(endpoint:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_141();
  return sub_1C04B979C(v0, v1, v2, v3);
}

uint64_t sub_1C04DDEC0()
{
  v2 = sub_1C04F6130();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1C04F6200();
  v12 = OUTLINED_FUNCTION_2_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_84_0();
  v15 = *(v0 + 16);
  (*(v5 + 104))(v10, *MEMORY[0x1E69BDAD8], v2);

  sub_1C04F6230();
  v16 = type metadata accessor for ResourceAccessSpan();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  return sub_1C0482EFC(v15, 21, v1, 0, 1);
}

void sub_1C04DDFF8()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D788, &qword_1C04FA758);
  OUTLINED_FUNCTION_152(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D790, &qword_1C04FA760);
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v15);
  v16 = *v3;
  if (qword_1EDE40948 != -1)
  {
    OUTLINED_FUNCTION_35_1();
  }

  v17 = sub_1C04F6400();
  __swift_project_value_buffer(v17, qword_1EDE40950);
  v18 = sub_1C04F63E0();
  v19 = sub_1C04F6A20();
  v20 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_145();
    v22 = swift_slowAlloc();
    v37 = v10;
    v23 = v22;
    OUTLINED_FUNCTION_149();
    v35 = swift_slowAlloc();
    v36 = v1;
    v39 = v35;
    *v23 = 136315138;
    v38 = v16;
    v24 = sub_1C04F6790();
    v26 = v12;
    v27 = v16;
    v28 = sub_1C047D76C(v24, v25, &v39);

    *(v23 + 4) = v28;
    v16 = v27;
    v12 = v26;
    _os_log_impl(&dword_1C0479000, v18, v19, "Pegasus for Intelligence platform is disabled: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v1 = v36;
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  if (v16 == 1)
  {
    v29 = 34;
  }

  else
  {
    v29 = 47;
  }

  if (v16 == 1)
  {
    v30 = 3;
  }

  else
  {
    v30 = 4;
  }

  *(v1 + qword_1EDE44718) = v29;
  sub_1C0483574();
  *v9 = v30;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C047C1A4(&qword_1EBE0D798, &qword_1EBE0D790, &qword_1C04FA760);
  sub_1C04F64E0();
  v31 = *(v12 + 8);
  v32 = OUTLINED_FUNCTION_21_5();
  v33(v32);
  OUTLINED_FUNCTION_6();
}

void sub_1C04DE2C8()
{
  OUTLINED_FUNCTION_7_0();
  v39 = v0;
  v48 = v2;
  v43 = v3;
  v42 = sub_1C04F5CE0();
  v4 = OUTLINED_FUNCTION_0(v42);
  v6 = v5;
  v41 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_90_0();
  v40 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D038, &unk_1C04F8C60);
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_84_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D040, &qword_1C04F9540);
  OUTLINED_FUNCTION_0(v44);
  v47 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D780, &unk_1C04FA748);
  v45 = OUTLINED_FUNCTION_0(v21);
  v46 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  v28 = *(v0 + 120);
  v49 = BasePegasusProxy.EnabledState.statusPublisher.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1E0, &qword_1C04F9180);
  OUTLINED_FUNCTION_3();
  sub_1C047C1A4(v29, &qword_1EBE0D1E0, &qword_1C04F9180);
  sub_1C04F6570();

  sub_1C047C1A4(&qword_1EDE41650, &qword_1EBE0D038, &unk_1C04F8C60);
  sub_1C04F6510();
  (*(v11 + 8))(v1, v9);
  v30 = v40;
  v31 = v42;
  (*(v6 + 16))(v40, v43, v42);
  v32 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v33 = (v41 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v39;
  (*(v6 + 32))(v34 + v32, v30, v31);
  *(v34 + v33) = v48;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D770, &qword_1C04FA620);
  sub_1C047C1A4(&qword_1EDE408F8, &qword_1EBE0D040, &qword_1C04F9540);
  sub_1C047C1A4(&qword_1EDE40888, &qword_1EBE0D770, &qword_1C04FA620);
  v35 = v44;
  sub_1C04F65B0();

  (*(v47 + 8))(v20, v35);
  OUTLINED_FUNCTION_2_8();
  sub_1C047C1A4(v36, &qword_1EBE0D780, &unk_1C04FA748);
  v37 = v45;
  sub_1C04F64E0();
  (*(v46 + 8))(v27, v37);
  OUTLINED_FUNCTION_6();
}

void sub_1C04DE740(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if (qword_1EDE40948 != -1)
  {
    swift_once();
  }

  v8 = sub_1C04F6400();
  __swift_project_value_buffer(v8, qword_1EDE40950);
  v9 = sub_1C04F63E0();
  v10 = sub_1C04F6A10();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_1C04F6790();
    v15 = sub_1C047D76C(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1C0479000, v9, v10, "Retrying with enabledState status: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1C68DCEB0](v12, -1, -1);
    MEMORY[0x1C68DCEB0](v11, -1, -1);
  }

  if (v7 == 4)
  {
    v19 = 0;
LABEL_10:
    sub_1C04DDFF8();
    goto LABEL_11;
  }

  if (v7 != 5)
  {
    v18 = v7;
    goto LABEL_10;
  }

  v16 = sub_1C04DE914(a2, a3);
LABEL_11:
  *a4 = v16;
}

void sub_1C04DE914()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v52 = v4;
  v48 = *v0;
  v45 = sub_1C04F5CE0();
  v5 = OUTLINED_FUNCTION_0(v45);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_90_0();
  v46 = v11;
  v47 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7A0, &unk_1C04FA768);
  v13 = OUTLINED_FUNCTION_0(v12);
  v50 = v14;
  v51 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v44 - v18;
  if (qword_1EDE41AC0 != -1)
  {
    OUTLINED_FUNCTION_32_3();
  }

  v19 = qword_1EDE41AC8;
  v20 = *algn_1EDE41AD0;

  v21 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  v55 = v21;
  sub_1C049FB48(v19, v20, 0x6567612D72657375, 0xEA0000000000746ELL);
  sub_1C04B7390(v55);
  if (qword_1EDE40948 != -1)
  {
    OUTLINED_FUNCTION_35_1();
  }

  v22 = sub_1C04F6400();
  __swift_project_value_buffer(v22, qword_1EDE40950);

  v23 = sub_1C04F63E0();
  v24 = sub_1C04F6A10();

  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_145();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v26 = swift_slowAlloc();
    v55 = v26;
    *v25 = 136315138;
    v27 = *(v1[15] + 16);
    sub_1C04F6490();
    v53 = v54;
    v28 = sub_1C04F6790();
    v30 = sub_1C047D76C(v28, v29, &v55);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1C0479000, v23, v24, "Processing enabledState status: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  v31 = *(v1[15] + 16);
  sub_1C04F6490();
  if (v55 == 4)
  {
    sub_1C04DE2C8();
  }

  else if (v55 == 5)
  {
    v44 = v3;
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_141();
    swift_beginAccess();

    v32 = sub_1C04D0244(19, 0);

    v54 = v32;
    v33 = v47;
    v34 = v45;
    (*(v7 + 16))(v47, v52, v45);
    v35 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v36 = (v46 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v7 + 32))(v38 + v35, v33, v34);
    *(v38 + v36) = v1;
    *(v38 + v37) = v44;
    *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;

    sub_1C04F6410();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D770, &qword_1C04FA620);
    sub_1C047C1A4(&qword_1EDE40898, &qword_1EBE0D070, &qword_1C04F9350);
    sub_1C047C1A4(&qword_1EDE40888, &qword_1EBE0D770, &qword_1C04FA620);
    v39 = v49;
    sub_1C04F65B0();

    OUTLINED_FUNCTION_2_8();
    sub_1C047C1A4(v40, v41, v42);
    v43 = v51;
    sub_1C04F64E0();
    (*(v50 + 8))(v39, v43);
  }

  else
  {
    LOBYTE(v54) = v55;
    sub_1C04DDFF8();
  }

  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04DEE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v94 = a5;
  v95 = a3;
  v103 = a1;
  v107 = a6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D788, &qword_1C04FA758);
  v8 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v86 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D790, &qword_1C04FA760);
  v101 = *(v106 - 8);
  v10 = *(v101 + 8);
  MEMORY[0x1EEE9AC00](v106);
  v100 = &v86 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7B0, &qword_1C04FA778);
  v90 = *(v91 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v86 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7B8, &qword_1C04FA780);
  v92 = *(v93 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v102 = (&v86 - v18);
  v19 = sub_1C04F54F0();
  v97 = *(v19 - 8);
  v20 = v97[8];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v96 = &v86 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v86 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v86 - v30);
  v32 = sub_1C04F5CE0();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v37;
  v105 = v36;
  (*(v37 + 16))(v35, a2);
  sub_1C04A13B0(v103, v31, &qword_1EBE0D088, &qword_1C04F9370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v35;
    v39 = *v31;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EDE40948 != -1)
    {
      swift_once();
    }

    v40 = sub_1C04F6400();
    __swift_project_value_buffer(v40, qword_1EDE40950);
    v41 = v39;
    v42 = sub_1C04F63E0();
    v43 = sub_1C04F6A20();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v110[0] = v45;
      *v44 = 136315138;
      *&v108[0] = v39;
      v46 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v47 = sub_1C04F6790();
      v49 = sub_1C047D76C(v47, v48, v110);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1C0479000, v42, v43, "context fetch failure: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1C68DCEB0](v45, -1, -1);
      MEMORY[0x1C68DCEB0](v44, -1, -1);
    }

    v35 = v38;
    *v98 = 7;
    swift_storeEnumTagMultiPayload();
    v50 = v100;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D798, &qword_1EBE0D790, &qword_1C04FA760);
    v51 = v106;
    v52 = sub_1C04F64E0();

    (*(v101 + 1))(v50, v51);
  }

  else
  {
    v87 = a4;
    v53 = v97;
    v54 = v97[4];
    v54(v27, v31, v19);
    sub_1C04F5CC0();
    v55 = v102;
    sub_1C0482664(21, v23, v102);
    v56 = v53[1];
    v103 = v53 + 1;
    v56(v23, v19);
    if (__swift_getEnumTagSinglePayload(v55, 1, v19) == 1)
    {
      sub_1C04A12B4(v102, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v87 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EDE40948 != -1)
      {
        swift_once();
      }

      v57 = sub_1C04F6400();
      __swift_project_value_buffer(v57, qword_1EDE40950);
      v58 = sub_1C04F63E0();
      v59 = sub_1C04F6A20();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = v56;
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1C0479000, v58, v59, "unable to create unified query context", v61, 2u);
        v62 = v61;
        v56 = v60;
        MEMORY[0x1C68DCEB0](v62, -1, -1);
      }

      *v98 = 8;
      swift_storeEnumTagMultiPayload();
      v63 = v100;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EBE0D798, &qword_1EBE0D790, &qword_1C04FA760);
      v64 = v106;
      v52 = sub_1C04F64E0();
      (*(v101 + 1))(v63, v64);
      v56(v27, v19);
    }

    else
    {
      v86 = v56;
      v65 = v96;
      v54(v96, v102, v19);
      v66 = v97[2];
      v102 = v19;
      v66(v23, v65, v19);
      sub_1C04F5CD0();
      sub_1C047ACAC();
      if (qword_1EBE0CA68 != -1)
      {
        swift_once();
      }

      v110[0] = xmmword_1EBE0D738;
      v110[1] = *&qword_1EBE0D748;
      v110[2] = xmmword_1EBE0D758;
      v67 = sub_1C04B7354();
      v109 = 0;
      memset(v108, 0, sizeof(v108));
      v68 = sub_1C04D9ED0(v110, v35, v67, v108, 1);
      v69 = v87;
      v70 = v68;
      v72 = v71;
      sub_1C04A12B4(v108, &qword_1EBE0CE40, &qword_1C04F8900);

      v73 = v70;
      v101 = v27;
      v74 = v73;

      v75 = nw_activity_create();
      v76 = v74;
      sub_1C04E0B04(v76, v75, 0, 0xE000000000000000, v69);
      swift_unknownObjectRelease();

      *&v108[0] = v72;

      sub_1C04F6410();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D7C0, &qword_1C04FA788);
      sub_1C047C1A4(&qword_1EBE0D7C8, &qword_1EBE0D7C0, &qword_1C04FA788);
      sub_1C047C1A4(&qword_1EBE0D798, &qword_1EBE0D790, &qword_1C04FA760);
      v77 = v88;
      sub_1C04F6530();

      v78 = swift_allocObject();
      v79 = v94;
      *(v78 + 16) = v69;
      *(v78 + 24) = v79;
      sub_1C047C1A4(&qword_1EBE0D7D0, &qword_1EBE0D7B0, &qword_1C04FA778);

      v80 = v89;
      v81 = v91;
      sub_1C04F6500();

      (*(v90 + 8))(v77, v81);
      sub_1C047C1A4(&qword_1EBE0D7D8, &qword_1EBE0D7B8, &qword_1C04FA780);
      v82 = v93;
      v52 = sub_1C04F64E0();

      (*(v92 + 8))(v80, v82);
      v83 = v102;
      v84 = v86;
      v86(v96, v102);
      v84(v101, v83);
    }
  }

  result = (*(v104 + 8))(v35, v105);
  *v107 = v52;
  return result;
}

uint64_t sub_1C04DFDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D788, &qword_1C04FA758);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  *(a2 + qword_1EDE44718) = 2;
  sub_1C0483574();
  if (qword_1EDE40948 != -1)
  {
    swift_once();
  }

  v8 = sub_1C04F6400();
  __swift_project_value_buffer(v8, qword_1EDE40950);
  v9 = sub_1C04F63E0();
  v10 = sub_1C04F6A40();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C0479000, v9, v10, "publishing successful rpc response", v11, 2u);
    MEMORY[0x1C68DCEB0](v11, -1, -1);
  }

  v12 = sub_1C04F5D10();
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04DFFAC(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D788, &qword_1C04FA758);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = *a1;
  v37 = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v10 = v33;
    v11 = v34;
    v12 = v35;
    v13 = v36;
    sub_1C04B915C(v33, v34, v35, v36, a2);
    sub_1C0482080(v10, v11, v12, v13);
    goto LABEL_3;
  }

  v37 = v8;
  v14 = v8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = v8;
    v18 = v8;
    if (swift_dynamicCast())
    {
      v19 = v37;
      sub_1C04E06CC();
      v20 = swift_allocError();
      *v21 = v19;
      sub_1C04B9574(v20, a2);

      *v7 = v19;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EDE40948 != -1)
    {
      swift_once();
    }

    v22 = sub_1C04F6400();
    __swift_project_value_buffer(v22, qword_1EDE40950);
    v23 = v8;
    v24 = sub_1C04F63E0();
    v25 = sub_1C04F6A20();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v37 = v8;
      v28 = v8;
      v29 = sub_1C04F6790();
      v31 = sub_1C047D76C(v29, v30, &v33);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1C0479000, v24, v25, "search failure: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C68DCEB0](v27, -1, -1);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
    }

LABEL_3:
    *v7 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v15 = v33;
  v16 = v34;
  v17 = v35;
  sub_1C04B93C4(v33, v34, v35, a2);
  *v7 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v15, v16, v17);
}

void sub_1C04E033C()
{
  OUTLINED_FUNCTION_7_0();
  v40 = v0;
  v38 = v1;
  v43 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  OUTLINED_FUNCTION_2_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v36 = sub_1C04F65C0();
  v9 = OUTLINED_FUNCTION_0(v36);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1C04F6A80();
  v18 = OUTLINED_FUNCTION_0(v17);
  v41 = v19;
  v42 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D768, "b\");
  OUTLINED_FUNCTION_0(v37);
  v39 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v35 - v29;
  sub_1C04DDEC0();
  sub_1C04DE914();
  v44 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D770, &qword_1C04FA620);
  OUTLINED_FUNCTION_3();
  sub_1C047C1A4(v32, &qword_1EBE0D770, &qword_1C04FA620);
  sub_1C04E06CC();
  sub_1C04F6580();

  (*(v11 + 16))(v16, v38, v36);
  sub_1C04F6A90();
  v44 = v40;
  v33 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v33);
  sub_1C04B2C20(0, &qword_1EDE44168, 0x1E69E9610);
  sub_1C047C1A4(&qword_1EDE40918, &qword_1EBE0D768, "b\");
  sub_1C04B2C60();

  v34 = v37;
  sub_1C04F6550();

  sub_1C04A12B4(v8, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v41 + 8))(v24, v42);
  (*(v39 + 8))(v30, v34);
  OUTLINED_FUNCTION_6();
}

unint64_t sub_1C04E06CC()
{
  result = qword_1EDE40A48[0];
  if (!qword_1EDE40A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE40A48);
  }

  return result;
}

uint64_t sub_1C04E0720()
{
  sub_1C04DDEC0();
  sub_1C04DE914();
  v1 = v0;

  return v1;
}

uint64_t PegasusProxyForIntelligencePlatform.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C04E07A4()
{
  result = qword_1EBE0D778;
  if (!qword_1EBE0D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForIntelligencePlatform.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void sub_1C04E0990(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5CE0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1C04DE740(a1, v2 + v6, v7, a2);
}

uint64_t sub_1C04E0A40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5CE0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04DEE90(a1, v2 + v6, v9, v10, v11, a2);
}

uint64_t sub_1C04E0B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_unknownObjectRetain();

    v12 = sub_1C04E0BD8(v11, a5, a1, a2, a3, a4);
    v13 = *(a5 + qword_1EDE44DF8);
    *(a5 + qword_1EDE44DF8) = v12;
  }

  return result;
}

uint64_t sub_1C04E0BD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v56 = a6;
  v59 = a3;
  v60 = a4;
  v58 = a1;
  v7 = sub_1C04F6200();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a2 + 80);
  v12 = *(v8 + 16);
  v12(v11, a2 + qword_1EDE44DE8, v7);
  v61 = a2;
  v13 = *(a2 + qword_1EDE44DF0);
  v14 = *(a2 + qword_1EDE44DF0 + 8);
  v15 = type metadata accessor for ResourceAccessNetworkSpan();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = v18 + qword_1EDE44D58;
  *v19 = 0;
  *(v19 + 8) = 1;
  v12((v18 + qword_1EDE44D50), v11, v7);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C04F7BA0;
    v21 = sub_1C04F61E0();
    v23 = v22;
    v24 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1C0483A94();
    *(inited + 32) = v21;
    *(inited + 40) = v23;
    *(inited + 96) = v24;
    *(inited + 104) = v25;
    v27 = v55;
    v26 = v56;
    *(inited + 64) = v25;
    *(inited + 72) = v27;
    *(inited + 80) = v26;
    *(v18 + *(*v18 + 472)) = 0;
    v28 = *(*v18 + 480);
    *(v18 + v28) = 0;
    v29 = (v18 + *(*v18 + 464));
    v30 = v59;
    *v29 = v59;
    v29[1] = &off_1F3F85900;
    v31 = v30;
    v32 = v60;
    [v31 set:v60 nw:? activity:?];
    v33 = *(v18 + v28);
    *(v18 + v28) = v32;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v34 = "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s";
    v36 = v57;
    v35 = v58;
    v37 = 99;
  }

  else
  {
    *v19 = v13;
    *(v19 + 8) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C04F8240;
    v38 = sub_1C04F61E0();
    v40 = v39;
    v41 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    v42 = sub_1C0483A94();
    *(inited + 32) = v38;
    *(inited + 40) = v40;
    *(inited + 96) = v41;
    *(inited + 104) = v42;
    v43 = v55;
    v44 = v56;
    *(inited + 64) = v42;
    *(inited + 72) = v43;
    v45 = MEMORY[0x1E69E76D8];
    v46 = MEMORY[0x1E69E7738];
    *(inited + 80) = v44;
    *(inited + 136) = v45;
    *(inited + 144) = v46;
    *(inited + 112) = v13;
    *(v18 + *(*v18 + 472)) = 0;
    v47 = *(*v18 + 480);
    *(v18 + v47) = 0;
    v48 = (v18 + *(*v18 + 464));
    v30 = v59;
    *v48 = v59;
    v48[1] = &off_1F3F85900;
    v49 = v30;
    v50 = v60;
    [v49 set:v60 nw:? activity:?];
    v51 = *(v18 + v47);
    *(v18 + v47) = v50;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v34 = "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s, identifier=%{signpost.description:attribute,public}llu";
    v36 = v57;
    v35 = v58;
    v37 = 155;
  }

  v52 = sub_1C04D8A8C(v35, v36, v34, v37, 2, inited);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, v7);

  return v52;
}

uint64_t sub_1C04E0FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_30Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_33Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}