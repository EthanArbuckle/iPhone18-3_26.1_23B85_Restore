uint64_t IntentStart.init(intent:timestamp:)(void *a1, uint64_t a2)
{
  v5 = [a1 _className];
  v6 = sub_222D8357C();
  v8 = v7;

  *(v2 + 16) = v6;
  *(v2 + 24) = v8;
  v9 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  v10 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v10);
  (*(v11 + 32))(v2 + v9, a2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_1()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, a1);
  *(v1 + 16) = v4;
  *(v1 + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 96);
  return result;
}

uint64_t type metadata accessor for IntentEventContent()
{
  result = qword_280FEAD90;
  if (!qword_280FEAD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  a1[2].n128_u64[0] = v11;
  a1[2].n128_u64[1] = v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_222D73124(v1, v0);
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_222D8375C();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_222D8370C();
}

uint64_t OUTLINED_FUNCTION_6_2@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return sub_222D8371C();
}

uint64_t sub_222D6ECB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for IntentStart()
{
  result = qword_280FEAB90;
  if (!qword_280FEAB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = result;
  *(v6 + 24) = a2;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return MEMORY[0x28211B658](va, v4, a1);
}

uint64_t sub_222D6EE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = sub_222D834DC();
    v10 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_222D6EF30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_222D834DC();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222D6F0EC()
{
  sub_222D8358C();
}

uint64_t sub_222D6F234(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_222D834DC();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_222D6F2BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_222D834DC();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222D6F3AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222D6F3E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t AppSelectionSignal.ValidationError.hashValue.getter()
{
  sub_222D837EC();
  MEMORY[0x223DCC740](0);
  return sub_222D8380C();
}

uint64_t sub_222D6F5E4()
{
  sub_222D837EC();
  MEMORY[0x223DCC740](0);
  return sub_222D8380C();
}

uint64_t static AppSelectionSignal.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_2();
  swift_beginAccess();
  return byte_27D044860;
}

uint64_t static AppSelectionSignal.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27D044860 = a1;
  return result;
}

uint64_t sub_222D6F750@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27D044860;
  return result;
}

uint64_t sub_222D6F79C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27D044860 = v1;
  return result;
}

uint64_t AppSelectionSignal.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name + 8);

  return v1;
}

uint64_t sub_222D6F840@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222D6F898();
  *a2 = result;
  return result;
}

uint64_t sub_222D6F86C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222D6F8DC(v4);
}

uint64_t sub_222D6F898()
{
  v1 = OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_info;
  OUTLINED_FUNCTION_2();
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_222D6F8DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_info;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AppSelectionSignal.init(name:version:timeElapsed:rows:info:signalTiming:test:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v9 = &v8[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name];
  *v9 = a1;
  v9[1] = a2;
  *&v8[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_version] = a3;
  *&v8[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_timeElapsed] = a8;
  *&v8[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_rows] = a4;
  *&v8[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_info] = a5;
  *&v8[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_signalTiming] = a6;
  v8[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_test] = a7;
  v11.receiver = v8;
  v11.super_class = type metadata accessor for AppSelectionSignal();
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_222D6FAD0(uint64_t a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_rows) + 16);
  v59 = *(a1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_rows);
  v60 = *(v1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_rows);
  if (v2 == *(v59 + 16))
  {
    v56 = v1;
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v73 = MEMORY[0x277D84F90];
      sub_222D71B60(0, v2, 0);
      v4 = 0;
      v58 = *(v60 + 16);
      v57 = v2;
      v3 = v73;
      while (v4 != v58)
      {
        if (v4 >= *(v60 + 16))
        {
          goto LABEL_37;
        }

        if (v4 >= *(v59 + 16))
        {
          goto LABEL_38;
        }

        v61 = v4;
        v62 = v3;
        v5 = *(v60 + 32 + 8 * v4);
        v6 = *(v59 + 32 + 8 * v4);
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v5;
        sub_222D71E78(v6, sub_222D70F6C, 0, v74);
        v7 = v74[1];
        v64 = v74[0];
        v8 = v74[3];
        v63 = v74[5];
        v9 = v74[4];
        v10 = (v74[2] + 64) >> 6;

        v66 = v5;
        for (i = v8; ; v8 = i)
        {
          v12 = v9;
          if (!v9)
          {
            v13 = v8;
            while (1)
            {
              i = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                break;
              }

              if (i >= v10)
              {
                goto LABEL_26;
              }

              v12 = *(v7 + 8 * i);
              ++v13;
              if (v12)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_13:
          v14 = __clz(__rbit64(v12)) | (i << 6);
          v15 = (*(v64 + 48) + 16 * v14);
          v17 = *v15;
          v16 = v15[1];
          sub_222D72058(*(v64 + 56) + 32 * v14, v67);
          *&v68 = v17;
          *(&v68 + 1) = v16;
          sub_222D720B4(v67, v69);
          v18 = v68;

          if (!*(&v18 + 1))
          {
            break;
          }

          v67[0] = v18;
          v67[1] = v69[0];
          v67[2] = v69[1];
          v63(&v70, v67);
          sub_222D721A0(v67, &unk_27D0448B8, &qword_222D83D68);
          v19 = *(&v70 + 1);
          if (!*(&v70 + 1))
          {
            goto LABEL_27;
          }

          v20 = v70;
          sub_222D720B4(v71, &v68);
          v22 = sub_222D719D0(v20, v19);
          v23 = *(v66 + 16);
          v24 = (v21 & 1) == 0;
          v25 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            goto LABEL_34;
          }

          v26 = v21;
          if (*(v66 + 24) >= v25)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448B0, &qword_222D83D60);
              sub_222D8368C();
            }
          }

          else
          {
            sub_222D7171C(v25, isUniquelyReferenced_nonNull_native & 1);
            v27 = sub_222D719D0(v20, v19);
            if ((v26 & 1) != (v28 & 1))
            {
              goto LABEL_39;
            }

            v22 = v27;
          }

          v29 = v72;
          v66 = v72;
          if (v26)
          {

            v30 = (*(v29 + 56) + 32 * v22);
            __swift_destroy_boxed_opaque_existential_0(v30);
            sub_222D720B4(&v68, v30);
          }

          else
          {
            OUTLINED_FUNCTION_6(v72 + 8 * (v22 >> 6));
            v32 = (v31 + 16 * v22);
            *v32 = v20;
            v32[1] = v19;
            sub_222D720B4(&v68, (*(v29 + 56) + 32 * v22));
            v33 = *(v29 + 16);
            v34 = __OFADD__(v33, 1);
            v35 = v33 + 1;
            if (v34)
            {
              goto LABEL_35;
            }

            *(v29 + 16) = v35;
          }

          v9 = (v12 - 1) & v12;
          isUniquelyReferenced_nonNull_native = 1;
        }

LABEL_26:
        memset(v71, 0, sizeof(v71));
        v70 = 0u;
LABEL_27:
        sub_222D720C4();

        v3 = v62;
        v73 = v62;
        v37 = *(v62 + 16);
        v36 = *(v62 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_222D71B60((v36 > 1), v37 + 1, 1);
          v3 = v73;
        }

        v4 = v61 + 1;
        *(v3 + 16) = v37 + 1;
        *(v3 + 8 * v37 + 32) = v66;
        if (v61 + 1 == v57)
        {
          goto LABEL_32;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_222D8379C();
      __break(1u);
    }

    else
    {
LABEL_32:
      v39 = *(v56 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_version);
      v40 = *(v56 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name);
      v41 = *(v56 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name + 8);
      v42 = *(v56 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_timeElapsed) + *(a1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_timeElapsed);
      v43 = OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_info;
      OUTLINED_FUNCTION_2();
      swift_beginAccess();
      v44 = *(v56 + v43);
      v45 = OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_info;
      OUTLINED_FUNCTION_2();
      swift_beginAccess();
      v46 = *(a1 + v45);

      v48 = sub_222D70084(v47, v44, sub_222D70F6C, sub_222D7124C);
      v49 = *(v56 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_signalTiming);
      v50 = *(a1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_signalTiming);

      v52 = sub_222D70084(v51, v49, sub_222D71E34, sub_222D70FA4);
      v53 = *(v56 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_test);
      v54 = objc_allocWithZone(type metadata accessor for AppSelectionSignal());
      return AppSelectionSignal.init(name:version:timeElapsed:rows:info:signalTiming:test:)(v40, v41, v39, v3, v48, v52, v53, v42);
    }
  }

  else
  {
    sub_222D72004();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_222D70084(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_222D7010C()
{
  v2 = v0;
  OUTLINED_FUNCTION_0_0();
  sub_222D72160(0, &qword_280FEA420, 0x277CCABB0);
  v3 = sub_222D8355C();
  if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_])
  {
    OUTLINED_FUNCTION_5();
    swift_isUniquelyReferenced_nonNull_native();
    sub_222D71CB0(0x277CCABB0, v1, 0xEF6C61746F547369);
  }

  else
  {
    OUTLINED_FUNCTION_1_0();
    sub_222D719D0(v1, v4);
    if (v5)
    {
      OUTLINED_FUNCTION_5();
      swift_isUniquelyReferenced_nonNull_native();
      v6 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448C8, &qword_222D83D70);
      sub_222D8367C();
      v7 = *(v3[6] + 16 * 0x277CCABB0 + 8);

      v8 = v2;
      v9 = *(v3[7] + 8 * 0x277CCABB0);
      sub_222D8369C();

      v2 = v8;
    }
  }

  v46 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_signalTiming);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v49 = v10;

  v16 = 0;
  v47 = v15;
  v48 = v11;
  if (v14)
  {
LABEL_12:
    while (1)
    {
      v18 = __clz(__rbit64(v14)) | (v16 << 6);
      v19 = (*(v49 + 48) + 16 * v18);
      v20 = *v19;
      v1 = v19[1];
      v21 = *(*(v49 + 56) + 8 * v18);

      swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_222D719D0(v20, v1);
      if (__OFADD__(v3[2], (v23 & 1) == 0))
      {
        break;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448C8, &qword_222D83D70);
      if (sub_222D8367C())
      {
        v26 = sub_222D719D0(v20, v1);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_26;
        }

        v24 = v26;
      }

      if (v25)
      {
        v28 = v3[7];
        v29 = *(v28 + 8 * v24);
        *(v28 + 8 * v24) = v21;

        v21 = v29;
      }

      else
      {
        OUTLINED_FUNCTION_6(&v3[v24 >> 6]);
        v31 = (v30 + 16 * v24);
        *v31 = v20;
        v31[1] = v1;
        *(v3[7] + 8 * v24) = v21;
        v32 = v3[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_25;
        }

        v3[2] = v34;
      }

      v14 &= v14 - 1;

      OUTLINED_FUNCTION_0_0();
      v15 = v47;
      v11 = v48;
      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448D0, &qword_222D83D78);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_222D83D30;
        *(inited + 32) = 1701667182;
        *(inited + 40) = 0xE400000000000000;
        v36 = *(v46 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name + 8);
        *(inited + 48) = *(v46 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name);
        *(inited + 56) = v36;
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 80) = 0x6E6F6973726576;
        *(inited + 88) = 0xE700000000000000;
        v37 = MEMORY[0x277D83B88];
        *(inited + 96) = *(v46 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_version);
        *(inited + 120) = v37;
        *(inited + 128) = v1;
        *(inited + 136) = 0xEA00000000007369;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448D8, &qword_222D83D80);
        *(inited + 144) = v3;
        *(inited + 168) = v38;
        *(inited + 176) = 1937207154;
        *(inited + 184) = 0xE400000000000000;
        v39 = *(v46 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_rows);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448E0, &qword_222D83D88);
        *(inited + 192) = v39;
        *(inited + 216) = v40;
        *(inited + 224) = 1868983913;
        *(inited + 232) = 0xE400000000000000;
        v41 = OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_info;
        OUTLINED_FUNCTION_2();
        swift_beginAccess();
        v42 = *(v46 + v41);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448E8, &qword_222D83D90);
        *(inited + 240) = v42;
        *(inited + 264) = v43;
        *(inited + 272) = 0x747365547369;
        *(inited + 280) = 0xE600000000000000;
        v44 = *(v46 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_test);
        *(inited + 312) = MEMORY[0x277D839B0];
        *(inited + 288) = v44;

        sub_222D8355C();
        OUTLINED_FUNCTION_5();

        return v39;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_222D8379C();
  __break(1u);
  return result;
}

void sub_222D70620(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name + 8);
  v5 = sub_222D8356C();
  v6 = sub_222D8356C();
  v7 = OUTLINED_FUNCTION_3_0();
  [v7 v8];

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v10 = sub_222D8356C();
  v11 = OUTLINED_FUNCTION_3_0();
  [v11 v12];

  v13 = *(v1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_timeElapsed);
  OUTLINED_FUNCTION_1_0();
  v14 = sub_222D8356C();
  [a1 encodeDouble:v14 forKey:v13];

  v15 = *(v1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_rows);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448E8, &qword_222D83D90);
  v16 = sub_222D835DC();
  v17 = sub_222D8356C();
  v18 = OUTLINED_FUNCTION_3_0();
  [v18 v19];

  v20 = OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_info;
  OUTLINED_FUNCTION_2();
  swift_beginAccess();
  v21 = *(v1 + v20);

  v22 = sub_222D8354C();

  v23 = sub_222D8356C();
  v24 = OUTLINED_FUNCTION_3_0();
  [v24 v25];

  v26 = *(v1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_signalTiming);
  sub_222D72160(0, &qword_280FEA420, 0x277CCABB0);
  v27 = sub_222D8354C();
  v28 = sub_222D8356C();
  v29 = OUTLINED_FUNCTION_3_0();
  [v29 v30];

  v31 = *(v1 + OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_test);
  v32 = OUTLINED_FUNCTION_7();
  [a1 encodeBool:v31 forKey:v32];
}

id AppSelectionSignal.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_222D72160(0, &qword_27D0448F0, 0x277CCACA8);
  v5 = sub_222D8361C();
  if (!v5)
  {

LABEL_21:
    type metadata accessor for AppSelectionSignal();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  v7 = sub_222D8357C();
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448F8, &qword_222D83D98);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222D83D40;
  *(v10 + 32) = sub_222D72160(0, &qword_27D044900, 0x277CBEAC0);
  *(v10 + 40) = sub_222D72160(0, &qword_27D044908, 0x277CBEA60);
  *(v10 + 48) = v4;
  v11 = sub_222D72160(0, &qword_280FEA420, 0x277CCABB0);
  *(v10 + 56) = v11;
  sub_222D8362C();

  if (!v52)
  {

LABEL_17:

    sub_222D721A0(v51, &qword_27D044910, &qword_222D83DA0);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448E0, &qword_222D83D88);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_20:

    goto LABEL_21;
  }

  v12 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(v12, v13, v14, v15, v16, v17, v18, v19, v45, v7, v20);
  *(v21 + 48) = v4;
  *(v21 + 56) = v11;
  sub_222D8362C();

  if (!v52)
  {

LABEL_16:

    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448E8, &qword_222D83D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_19:

    goto LABEL_20;
  }

  v22 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(v22, v23, v24, v25, v26, v27, v28, v29, v7, v47, v30);
  OUTLINED_FUNCTION_0_0();
  *(v31 + 48) = v4;
  *(v31 + 56) = v11;
  sub_222D8362C();

  if (!v52)
  {

    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448D8, &qword_222D83D80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v32 = v7;
  v33 = v50;
  v34 = &v2[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_name];
  *v34 = v48;
  v34[1] = v9;
  v35 = sub_222D8361C();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 integerValue];
  }

  else
  {
    v37 = -1;
  }

  *&v2[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_version] = v37;
  OUTLINED_FUNCTION_1_0();
  v40 = sub_222D8356C();
  [a1 decodeDoubleForKey_];
  v42 = v41;

  *&v2[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_timeElapsed] = v42;
  *&v2[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_rows] = v46;
  *&v2[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_info] = v32;
  *&v2[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_signalTiming] = v33;
  v43 = OUTLINED_FUNCTION_7();
  v44 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC16SiriIntentEvents18AppSelectionSignal_test] = v44;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for AppSelectionSignal();
  v38 = objc_msgSendSuper2(&v49, sel_init);

  return v38;
}

id AppSelectionSignal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppSelectionSignal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSelectionSignal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222D70EE4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_222D70F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_222D72058(a4, a1);

  return a2;
}

uint64_t sub_222D70F6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_222D70F2C((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_222D70FA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v48 = a5;
  sub_222D71E78(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v40 = v47[5];
  v41 = v47[0];
  v9 = (v47[2] + 64) >> 6;

  v39 = v6;
  if (v8)
  {
    while (1)
    {
      v42 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v41 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v41 + 56) + 8 * v12);
      v46[0] = *v13;
      v46[1] = v14;
      v46[2] = v15;

      v16 = v15;
      v40(&v43, v46);

      v17 = v43;
      v18 = v44;
      v19 = v45;
      v20 = *v48;
      v22 = sub_222D719D0(v43, v44);
      v23 = *(v20 + 16);
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (*(v20 + 24) >= v25)
      {
        if ((v42 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448C8, &qword_222D83D70);
          sub_222D8368C();
        }
      }

      else
      {
        v27 = v48;
        sub_222D7147C(v25, v42 & 1);
        v28 = *v27;
        v29 = sub_222D719D0(v17, v18);
        if ((v26 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v22 = v29;
      }

      v8 &= v8 - 1;
      v31 = *v48;
      if (v26)
      {

        v32 = v31[7];
        v33 = *(v32 + 8 * v22);
        *(v32 + 8 * v22) = v19;
      }

      else
      {
        v31[(v22 >> 6) + 8] |= 1 << v22;
        v34 = (v31[6] + 16 * v22);
        *v34 = v17;
        v34[1] = v18;
        *(v31[7] + 8 * v22) = v19;
        v35 = v31[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v31[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v6 = v39;
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
        sub_222D720C4();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v42 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_222D8379C();
  __break(1u);
  return result;
}

uint64_t sub_222D7124C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_222D71E78(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_222D71EB4(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_222D720C4();
    }

    v8 = v29;
    sub_222D720B4(v30, v28);
    v9 = *a5;
    v11 = sub_222D719D0(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448B0, &qword_222D83D60);
        sub_222D8368C();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_222D7171C(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_222D719D0(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_222D72058(v28, v27);
        __swift_destroy_boxed_opaque_existential_0(v28);

        v20 = (v19[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0(v20);
        sub_222D720B4(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_222D720B4(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_222D8379C();
  __break(1u);
  return result;
}

uint64_t sub_222D7147C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044990, "*%");
  v39 = a2;
  result = sub_222D836AC();
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
      sub_222D71AFC(0, (v36 + 63) >> 6, v10);
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
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    sub_222D837EC();
    sub_222D8358C();
    result = sub_222D8380C();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_222D7171C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044988, "&%");
  v36 = a2;
  result = sub_222D836AC();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
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
        goto LABEL_37;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_222D71AFC(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
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
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_222D720B4(v23, v37);
    }

    else
    {
      sub_222D72058(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_222D837EC();
    sub_222D8358C();
    result = sub_222D8380C();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_222D720B4(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
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
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_222D719D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_222D837EC();
  sub_222D8358C();
  v6 = sub_222D8380C();

  return sub_222D71A48(a1, a2, v6);
}

unint64_t sub_222D71A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_222D8378C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_222D71AFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_222D83D50;
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

void *sub_222D71B60(void *a1, int64_t a2, char a3)
{
  result = sub_222D71B80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222D71B80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044998, &unk_222D83ED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448E8, &qword_222D83D90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_222D71CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_222D719D0(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0448C8, &qword_222D83D70);
  if ((sub_222D8367C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_222D719D0(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_222D8379C();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_222D71DEC(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_222D71DEC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_222D71E34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_222D70EE4(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_222D71E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

uint64_t sub_222D71EB4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_222D72058(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_222D720B4(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_222D721A0(v19, &unk_27D0448B8, &qword_222D83D68);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_222D72004()
{
  result = qword_27D0448A8;
  if (!qword_27D0448A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0448A8);
  }

  return result;
}

uint64_t sub_222D72058(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_222D720B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_222D72160(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_222D721A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_222D72204()
{
  result = qword_27D044918;
  if (!qword_27D044918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppSelectionSignal.ValidationError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AppSelectionSignal.ValidationError(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_7()
{

  return sub_222D8356C();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return swift_allocObject();
}

uint64_t ConfirmationOffer.parameterName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t ConfirmationOffer.intentType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t ConfirmationOffer.multicardinalIndexValue.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t ConfirmationOffer.item.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = OUTLINED_FUNCTION_6_0();
  sub_222D72600(v3, v4);
  return OUTLINED_FUNCTION_6_0();
}

uint64_t sub_222D72600(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ConfirmationOffer.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriIntentEvents17ConfirmationOffer_timestamp;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ConfirmationOffer.__allocating_init(parameterName:intentType:multicardinalIndexValue:item:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v16 = OUTLINED_FUNCTION_5_0();
  ConfirmationOffer.init(parameterName:intentType:multicardinalIndexValue:item:timestamp:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8);
  return v16;
}

uint64_t ConfirmationOffer.init(parameterName:intentType:multicardinalIndexValue:item:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v29[1] = *MEMORY[0x277D85DE8];
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6 & 1;
  v11 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0Tm(a7, a7[3]);
  v29[0] = 0;
  v12 = [v11 archivedDataWithRootObject:sub_222D8377C() requiringSecureCoding:0 error:v29];
  swift_unknownObjectRelease();
  v13 = v29[0];
  if (v12)
  {
    v14 = sub_222D8348C();
    v16 = v15;

    __swift_destroy_boxed_opaque_existential_0(a7);
    *(v8 + 64) = v14;
    *(v8 + 72) = v16;
    v17 = OBJC_IVAR____TtC16SiriIntentEvents17ConfirmationOffer_timestamp;
    v18 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v18);
    (*(v19 + 32))(v8 + v17, a8);
  }

  else
  {
    v20 = v13;
    sub_222D8345C();

    swift_willThrow();
    v21 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v21);
    (*(v22 + 8))(a8);
    __swift_destroy_boxed_opaque_existential_0(a7);
    v23 = *(v8 + 24);

    v24 = *(v8 + 40);

    type metadata accessor for ConfirmationOffer();
    v25 = *(*v8 + 48);
    v26 = *(*v8 + 52);
    swift_deallocPartialClassInstance();
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t type metadata accessor for ConfirmationOffer()
{
  result = qword_280FEA878;
  if (!qword_280FEA878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmationOffer.__allocating_init(parameterName:intentType:multicardinalIndexValue:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = OUTLINED_FUNCTION_5_0();
  ConfirmationOffer.init(parameterName:intentType:multicardinalIndexValue:item:)(a1, a2, a3, a4, a5, a6 & 1, a7);
  return v14;
}

uint64_t ConfirmationOffer.init(parameterName:intentType:multicardinalIndexValue:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v15 = sub_222D834DC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v37 = v17;
  v38 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20]();
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6 & 1;
  v22 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0Tm(a7, a7[3]);
  v23 = sub_222D8377C();
  v39[0] = 0;
  v24 = [v22 archivedDataWithRootObject:v23 requiringSecureCoding:0 error:v39];
  swift_unknownObjectRelease();
  v25 = v39[0];
  if (v24)
  {
    v26 = sub_222D8348C();
    v28 = v27;

    *(v7 + 64) = v26;
    *(v7 + 72) = v28;
    sub_222D834CC();
    __swift_destroy_boxed_opaque_existential_0(a7);
    (*(v37 + 32))(v7 + OBJC_IVAR____TtC16SiriIntentEvents17ConfirmationOffer_timestamp, v21, v38);
  }

  else
  {
    v29 = v25;
    sub_222D8345C();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(a7);
    v30 = *(v7 + 24);

    v31 = *(v7 + 40);

    type metadata accessor for ConfirmationOffer();
    v32 = *(*v7 + 48);
    v33 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
  }

  v34 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_222D72C64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v4 || (sub_222D8378C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
    if (v6 || (sub_222D8378C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x8000000222D85FD0 == a2;
      if (v7 || (sub_222D8378C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1835365481 && a2 == 0xE400000000000000;
        if (v8 || (sub_222D8378C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
        {

          return 4;
        }

        else
        {
          v10 = sub_222D8378C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_222D72E64(unsigned __int8 a1)
{
  sub_222D837EC();
  MEMORY[0x223DCC740](a1);
  return sub_222D8380C();
}

unint64_t sub_222D72EB8(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0x7954746E65746E69;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 1835365481;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D72F80()
{
  v1 = *v0;
  sub_222D837EC();
  MEMORY[0x223DCC740](v1);
  return sub_222D8380C();
}

uint64_t sub_222D72FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D72C64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D73014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D72E24();
  *a1 = result;
  return result;
}

uint64_t sub_222D7303C(uint64_t a1)
{
  v2 = sub_222D73428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D73078(uint64_t a1)
{
  v2 = sub_222D73428();

  return MEMORY[0x2821FE720](a1, v2);
}

char *ConfirmationOffer.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  sub_222D73124(*(v0 + 8), *(v0 + 9));
  v3 = OBJC_IVAR____TtC16SiriIntentEvents17ConfirmationOffer_timestamp;
  v4 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(&v0[v3]);
  return v0;
}

uint64_t sub_222D73124(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ConfirmationOffer.__deallocating_deinit()
{
  ConfirmationOffer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D731D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044A00, &qword_222D83EE0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D73428();
  sub_222D8382C();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_3();
  sub_222D8374C();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    LOBYTE(v23) = 1;
    OUTLINED_FUNCTION_3();
    sub_222D8374C();
    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
    LOBYTE(v23) = 2;
    OUTLINED_FUNCTION_3();
    sub_222D8372C();
    v20 = *(v3 + 72);
    v23 = *(v3 + 64);
    v24 = v20;
    v22[15] = 3;
    sub_222D72600(v23, v20);
    sub_222D7347C();
    sub_222D8375C();
    sub_222D73124(v23, v24);
    LOBYTE(v23) = 4;
    sub_222D834DC();
    sub_222D73904(&qword_280FEADB0);
    sub_222D8375C();
  }

  return (*(v8 + 8))(v12, v5);
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_222D73428()
{
  result = qword_27D044A08;
  if (!qword_27D044A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A08);
  }

  return result;
}

unint64_t sub_222D7347C()
{
  result = qword_280FEADB8;
  if (!qword_280FEADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEADB8);
  }

  return result;
}

uint64_t ConfirmationOffer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_0();
  ConfirmationOffer.init(from:)(a1);
  return v2;
}

uint64_t ConfirmationOffer.init(from:)(uint64_t *a1)
{
  v3 = sub_222D834DC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044A10, &qword_222D83EE8);
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v15 = a1[3];
  v14 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v15);
  sub_222D73428();
  sub_222D8381C();
  if (v1)
  {
    v20 = v29;
    type metadata accessor for ConfirmationOffer();
    v17 = *(*v20 + 48);
    v18 = *(*v20 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v9;
    LOBYTE(v31) = 0;
    OUTLINED_FUNCTION_4_0();
    v16 = sub_222D836FC();
    v20 = v29;
    *(v29 + 16) = v16;
    *(v20 + 24) = v21;
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_4_0();
    *(v20 + 32) = sub_222D836FC();
    *(v20 + 40) = v22;
    LOBYTE(v31) = 2;
    OUTLINED_FUNCTION_4_0();
    *(v20 + 48) = sub_222D836DC();
    *(v20 + 56) = v23 & 1;
    v32 = 3;
    sub_222D738B0();
    sub_222D8370C();
    *(v20 + 64) = v31;
    LOBYTE(v31) = 4;
    sub_222D73904(&qword_280FEA4A0);
    v24 = v27;
    sub_222D8370C();
    v25 = OUTLINED_FUNCTION_2_0();
    v26(v25);
    (*(v28 + 32))(v20 + OBJC_IVAR____TtC16SiriIntentEvents17ConfirmationOffer_timestamp, v24, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  return v20;
}

unint64_t sub_222D738B0()
{
  result = qword_280FEA4A8;
  if (!qword_280FEA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEA4A8);
  }

  return result;
}

uint64_t sub_222D73904(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_222D834DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D73948@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ConfirmationOffer.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_222D739A0()
{
  result = sub_222D834DC();
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

uint64_t getEnumTagSinglePayload for ConfirmationOffer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D73C94()
{
  result = qword_27D044A18;
  if (!qword_27D044A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A18);
  }

  return result;
}

unint64_t sub_222D73CEC()
{
  result = qword_27D044A20;
  if (!qword_27D044A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A20);
  }

  return result;
}

unint64_t sub_222D73D44()
{
  result = qword_27D044A28;
  if (!qword_27D044A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_222D73DB4()
{
  v0 = sub_222D836BC();

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

uint64_t sub_222D73E08(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_222D73E58()
{
  v0 = sub_222D836BC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D73ECC()
{
  sub_222D837EC();
  MEMORY[0x223DCC740](0);
  return sub_222D8380C();
}

uint64_t sub_222D73F10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D73DB4();
  *a2 = result;
  return result;
}

uint64_t sub_222D73F40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D73E08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D73F74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D73DB4();
  *a1 = result;
  return result;
}

uint64_t sub_222D73FA8(uint64_t a1)
{
  v2 = sub_222D74214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D73FE4(uint64_t a1)
{
  v2 = sub_222D74214();

  return MEMORY[0x2821FE720](a1, v2);
}

void ConfirmationResolution.encode(to:)()
{
  OUTLINED_FUNCTION_10();
  v18 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044A30, &qword_222D84130);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_0Tm(v3, v3[3]);
  sub_222D74214();
  OUTLINED_FUNCTION_13();
  v15 = v13 >> 60;
  if (v13 >> 60 == 7)
  {
    LOBYTE(v19) = 0;
  }

  else if (v15 == 11)
  {
    LOBYTE(v19) = 0;
  }

  else if (v15 == 15)
  {
    LOBYTE(v19) = 0;
  }

  else
  {
    v19 = v12;
    v20 = v13;
    sub_222D7347C();
    v16 = v18;
    sub_222D8375C();
    if (v16)
    {
      goto LABEL_8;
    }

    LOBYTE(v19) = 0;
  }

  sub_222D8374C();
LABEL_8:
  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_11();
}

unint64_t sub_222D74214()
{
  result = qword_27D044A38;
  if (!qword_27D044A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A38);
  }

  return result;
}

void ConfirmationResolution.init(from:)()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044A40, &qword_222D84138);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_222D74214();
  sub_222D8381C();
  if (!v0)
  {
    LOBYTE(v21) = 0;
    sub_222D836FC();
    switch(sub_222D73E58())
    {
      case 1u:
        v19 = OUTLINED_FUNCTION_1_1();
        v20(v19);
        v14 = xmmword_222D84120;
        goto LABEL_8;
      case 2u:
        v15 = OUTLINED_FUNCTION_1_1();
        v16(v15);
        v14 = xmmword_222D84110;
        goto LABEL_8;
      case 3u:
        v17 = OUTLINED_FUNCTION_1_1();
        v18(v17);
        v14 = xmmword_222D84100;
        goto LABEL_8;
      case 4u:
        sub_222D74498();
        swift_allocError();
        swift_willThrow();
        v10 = OUTLINED_FUNCTION_1_1();
        v11(v10);
        break;
      default:
        sub_222D738B0();
        sub_222D8370C();
        v12 = OUTLINED_FUNCTION_1_1();
        v13(v12);
        v14 = v21;
LABEL_8:
        *v4 = v14;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_11();
}

unint64_t sub_222D74498()
{
  result = qword_27D044A48;
  if (!qword_27D044A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A48);
  }

  return result;
}

uint64_t ConfirmationResult.parameterName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationResult.multicardinalIndexValue.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t ConfirmationResult.intentType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ConfirmationResult.resolution.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  *a1 = v2;
  a1[1] = v3;
  return sub_222D74594(v2, v3);
}

uint64_t sub_222D74594(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 60) > 0xF || ((1 << (a2 >> 60)) & 0x8880) == 0)
  {
    return sub_222D72600(a1, a2);
  }

  return a1;
}

uint64_t ConfirmationResult.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriIntentEvents18ConfirmationResult_timestamp;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ConfirmationResult.__allocating_init(parameterName:intentType:multicardinalIndexValue:resolution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_2_1();
  v14 = swift_allocObject();
  ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:)(v12, v11, v10, v9, v8, v7 & 1, a7);
  return v14;
}

uint64_t ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  OUTLINED_FUNCTION_7_0();
  v14 = sub_222D834DC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_0();
  v22 = v21 - v20;
  *(v7 + 16) = v13;
  *(v7 + 24) = v12;
  *(v7 + 48) = v11;
  *(v7 + 56) = v10;
  *(v7 + 32) = v9;
  *(v7 + 40) = v8 & 1;
  *(v7 + 64) = *a7;
  sub_222D834CC();
  (*(v17 + 32))(v7 + OBJC_IVAR____TtC16SiriIntentEvents18ConfirmationResult_timestamp, v22, v14);
  return v7;
}

void ConfirmationResult.__allocating_init(parameterName:intentType:multicardinalIndexValue:confirmedValue:)()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:confirmedValue:)(v13, v11, v9, v7, v5, v3 & 1, v1);
  OUTLINED_FUNCTION_11();
}

uint64_t ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:confirmedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v15 = sub_222D834DC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v36 = v17;
  v37 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_0();
  v22 = v21 - v20;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6 & 1;
  v23 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0Tm(a7, a7[3]);
  v38[0] = 0;
  v24 = [v23 archivedDataWithRootObject:sub_222D8377C() requiringSecureCoding:0 error:v38];
  swift_unknownObjectRelease();
  v25 = v38[0];
  if (v24)
  {
    v26 = sub_222D8348C();
    v28 = v27;

    *(v7 + 64) = v26;
    *(v7 + 72) = v28;
    sub_222D834CC();
    __swift_destroy_boxed_opaque_existential_0(a7);
    (*(v36 + 32))(v7 + OBJC_IVAR____TtC16SiriIntentEvents18ConfirmationResult_timestamp, v22, v37);
  }

  else
  {
    v29 = v25;
    sub_222D8345C();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(a7);
    v30 = *(v7 + 24);

    v31 = *(v7 + 56);

    type metadata accessor for ConfirmationResult();
    v32 = *(*v7 + 48);
    v33 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
  }

  v34 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t type metadata accessor for ConfirmationResult()
{
  result = qword_280FEA790;
  if (!qword_280FEA790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmationResult.__allocating_init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_1();
  v16 = swift_allocObject();
  ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8);
  return v16;
}

uint64_t ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_9(a1, a2, a3, a4, a5, a6);
  *(v8 + 64) = *v10;
  v11 = OBJC_IVAR____TtC16SiriIntentEvents18ConfirmationResult_timestamp;
  v12 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v12);
  (*(v13 + 32))(v8 + v11, a8);
  return v8;
}

void ConfirmationResult.__allocating_init(parameterName:intentType:multicardinalIndexValue:confirmedValue:timestamp:)()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:confirmedValue:timestamp:)(v15, v13, v11, v9, v7, v5 & 1, v3, v1);
  OUTLINED_FUNCTION_11();
}

char *ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:confirmedValue:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v29[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2, a3, a4, a5, a6);
  v11 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0Tm(a7, a7[3]);
  v29[0] = 0;
  v12 = [v11 archivedDataWithRootObject:sub_222D8377C() requiringSecureCoding:0 error:v29];
  swift_unknownObjectRelease();
  v13 = v29[0];
  if (v12)
  {
    v14 = sub_222D8348C();
    v16 = v15;

    __swift_destroy_boxed_opaque_existential_0(a7);
    *(v8 + 8) = v14;
    *(v8 + 9) = v16;
    v17 = OBJC_IVAR____TtC16SiriIntentEvents18ConfirmationResult_timestamp;
    v18 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v18);
    (*(v19 + 32))(&v8[v17], a8);
  }

  else
  {
    v20 = v13;
    sub_222D8345C();

    swift_willThrow();
    v21 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v21);
    (*(v22 + 8))(a8);
    __swift_destroy_boxed_opaque_existential_0(a7);
    v23 = *(v8 + 3);

    v24 = *(v8 + 7);

    type metadata accessor for ConfirmationResult();
    v25 = *(*v8 + 48);
    v26 = *(*v8 + 52);
    swift_deallocPartialClassInstance();
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_222D74E08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v4 || (sub_222D8378C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x8000000222D85FD0 == a2;
    if (v6 || (sub_222D8378C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
      if (v7 || (sub_222D8378C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974756C6F736572 && a2 == 0xEA00000000006E6FLL;
        if (v8 || (sub_222D8378C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
        {

          return 4;
        }

        else
        {
          v10 = sub_222D8378C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_222D74FCC(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x7954746E65746E69;
      break;
    case 3:
      result = 0x6974756C6F736572;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D75090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D74E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D750B8(uint64_t a1)
{
  v2 = sub_222D7541C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D750F4(uint64_t a1)
{
  v2 = sub_222D7541C();

  return MEMORY[0x2821FE720](a1, v2);
}

char *ConfirmationResult.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 7);

  sub_222D751A0(*(v0 + 8), *(v0 + 9));
  v3 = OBJC_IVAR____TtC16SiriIntentEvents18ConfirmationResult_timestamp;
  v4 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(&v0[v3]);
  return v0;
}

uint64_t sub_222D751A0(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 60) > 0xF || ((1 << (a2 >> 60)) & 0x8880) == 0)
  {
    return sub_222D73124(a1, a2);
  }

  return a1;
}

uint64_t ConfirmationResult.__deallocating_deinit()
{
  ConfirmationResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D75220(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044A50, &qword_222D84140);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D7541C();
  OUTLINED_FUNCTION_13();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_3();
  sub_222D8374C();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    LOBYTE(v23) = 1;
    OUTLINED_FUNCTION_3();
    sub_222D8372C();
    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
    LOBYTE(v23) = 2;
    OUTLINED_FUNCTION_3();
    sub_222D8374C();
    v20 = *(v3 + 72);
    v23 = *(v3 + 64);
    v24 = v20;
    v22[15] = 3;
    sub_222D74594(v23, v20);
    sub_222D75470();
    sub_222D8375C();
    sub_222D751A0(v23, v24);
    LOBYTE(v23) = 4;
    sub_222D834DC();
    sub_222D73904(&qword_280FEADB0);
    sub_222D8375C();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_222D7541C()
{
  result = qword_27D044A58;
  if (!qword_27D044A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A58);
  }

  return result;
}

unint64_t sub_222D75470()
{
  result = qword_27D044A60;
  if (!qword_27D044A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A60);
  }

  return result;
}

uint64_t ConfirmationResult.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_2_1();
  v0 = swift_allocObject();
  ConfirmationResult.init(from:)();
  return v0;
}

void ConfirmationResult.init(from:)()
{
  OUTLINED_FUNCTION_10();
  v25 = v0;
  v3 = v2;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v24 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044A68, &qword_222D84148);
  OUTLINED_FUNCTION_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_0Tm(v3, v3[3]);
  sub_222D7541C();
  sub_222D8381C();
  if (v1)
  {
    type metadata accessor for ConfirmationResult();
    v17 = *(*v25 + 48);
    v18 = *(*v25 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    *(v25 + 16) = sub_222D836FC();
    *(v25 + 24) = v19;
    OUTLINED_FUNCTION_6_1();
    *(v25 + 32) = sub_222D836DC();
    *(v25 + 40) = v20 & 1;
    LOBYTE(v26) = 2;
    OUTLINED_FUNCTION_6_1();
    *(v25 + 48) = sub_222D836FC();
    *(v25 + 56) = v21;
    sub_222D75884();
    sub_222D8370C();
    *(v25 + 64) = v26;
    sub_222D73904(&qword_280FEA4A0);
    sub_222D8370C();
    v22 = OUTLINED_FUNCTION_2_0();
    v23(v22);
    (*(v24 + 32))(v25 + OBJC_IVAR____TtC16SiriIntentEvents18ConfirmationResult_timestamp, v11, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(v3);
  OUTLINED_FUNCTION_11();
}

unint64_t sub_222D75884()
{
  result = qword_27D044A70;
  if (!qword_27D044A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A70);
  }

  return result;
}

uint64_t sub_222D758D8@<X0>(uint64_t *a1@<X8>)
{
  result = ConfirmationResult.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriIntentEvents22ConfirmationResolutionO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222D75978(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA && *(a1 + 16))
  {
    return (*a1 + 10);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D759D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 10;
    if (a3 >= 0xA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((13 - a2) >> 2) | (4 * (13 - a2))) << 60;
    }
  }

  return result;
}

void *sub_222D75A28(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_222D75A70()
{
  result = sub_222D834DC();
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

_BYTE *storeEnumTagSinglePayload for ConfirmationResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmationResolution.DecoderError(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ConfirmationResolution.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ConfirmationResolution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D75F1C()
{
  result = qword_27D044A78;
  if (!qword_27D044A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A78);
  }

  return result;
}

unint64_t sub_222D75F74()
{
  result = qword_27D044A80;
  if (!qword_27D044A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A80);
  }

  return result;
}

unint64_t sub_222D75FCC()
{
  result = qword_27D044A88;
  if (!qword_27D044A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A88);
  }

  return result;
}

unint64_t sub_222D76024()
{
  result = qword_27D044A90;
  if (!qword_27D044A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A90);
  }

  return result;
}

unint64_t sub_222D7607C()
{
  result = qword_27D044A98;
  if (!qword_27D044A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044A98);
  }

  return result;
}

unint64_t sub_222D760D4()
{
  result = qword_27D044AA0;
  if (!qword_27D044AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044AA0);
  }

  return result;
}

unint64_t sub_222D7612C()
{
  result = qword_27D044AA8;
  if (!qword_27D044AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044AA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_222D8382C();
}

uint64_t CustomSignal.turnId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t CustomSignal.resultCandidateId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t CustomSignal.item.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_6_0();
  sub_222D72600(v3, v4);
  return OUTLINED_FUNCTION_6_0();
}

uint64_t CustomSignal.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomSignal() + 36);
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for CustomSignal()
{
  result = qword_280FEA9B8;
  if (!qword_280FEA9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomSignal.init(signalType:item:timestamp:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  *a4 = *a1;
  v19[0] = 0;
  v6 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v19];
  v7 = v19[0];
  if (v6)
  {
    v8 = sub_222D8348C();
    v10 = v9;
    swift_unknownObjectRelease();

    *(a4 + 48) = v8;
    *(a4 + 56) = v10;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 24) = 2;
    v11 = *(type metadata accessor for CustomSignal() + 36);
    v12 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v12);
    result = (*(v13 + 32))(a4 + v11, a3);
  }

  else
  {
    v15 = v7;
    sub_222D8345C();

    swift_willThrow();
    swift_unknownObjectRelease();
    v16 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v16);
    result = (*(v17 + 8))(a3);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CustomSignal.init(signalType:item:turnId:resultCandidateId:source:timestamp:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v28 = *a7;
  *a9 = *a1;
  v30[0] = 0;
  v14 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v30];
  if (v14)
  {
    v15 = v14;
    v16 = v30[0];
    v17 = sub_222D8348C();
    v19 = v18;
    swift_unknownObjectRelease();

    *(a9 + 48) = v17;
    *(a9 + 56) = v19;
    *(a9 + 8) = a3;
    *(a9 + 16) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 24) = v28;
    v20 = *(type metadata accessor for CustomSignal() + 36);
    v21 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v21);
    result = (*(v22 + 32))(a9 + v20, a8);
  }

  else
  {
    v24 = v30[0];

    sub_222D8345C();

    swift_willThrow();
    swift_unknownObjectRelease();
    v25 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v25);
    result = (*(v26 + 8))(a8);
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CustomSignal.init(signalType:itemData:timestamp:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = 2;
  v7 = *(type metadata accessor for CustomSignal() + 36);
  v8 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 32);

  return v10(a5 + v7, a4);
}

uint64_t CustomSignal.init(signalType:itemData:turnId:resultCandidateId:source:timestamp:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = *a8;
  *a9 = *a1;
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 24) = v11;
  v12 = *(type metadata accessor for CustomSignal() + 36);
  v13 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v13);
  v15 = *(v14 + 32);

  return v15(a9 + v12, a10);
}

uint64_t sub_222D767E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79546C616E676973 && a2 == 0xEA00000000006570;
  if (v4 || (sub_222D8378C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E727574 && a2 == 0xE600000000000000;
    if (v6 || (sub_222D8378C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_222D8378C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000222D86040 == a2;
        if (v8 || (sub_222D8378C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1835365481 && a2 == 0xE400000000000000;
          if (v9 || (sub_222D8378C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
          {

            return 5;
          }

          else
          {
            v11 = sub_222D8378C();

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

unint64_t sub_222D769F0(char a1)
{
  result = 0x79546C616E676973;
  switch(a1)
  {
    case 1:
      result = 0x64496E727574;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 1835365481;
      break;
    case 5:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D76AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D767E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D76AD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D769E8();
  *a1 = result;
  return result;
}

uint64_t sub_222D76AF8(uint64_t a1)
{
  v2 = sub_222D76DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D76B34(uint64_t a1)
{
  v2 = sub_222D76DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomSignal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044AB0, &qword_222D84680);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D76DA4();
  sub_222D8382C();
  LOBYTE(v22) = *v3;
  v24 = 0;
  sub_222D76DF8();
  OUTLINED_FUNCTION_1_2();
  sub_222D8375C();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    OUTLINED_FUNCTION_6_2(1);
    LOBYTE(v22) = *(v3 + 24);
    v24 = 2;
    sub_222D76E4C();
    OUTLINED_FUNCTION_1_2();
    sub_222D8373C();
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    OUTLINED_FUNCTION_6_2(3);
    v18 = *(v3 + 56);
    v22 = *(v3 + 48);
    v23 = v18;
    v24 = 4;
    sub_222D72600(v22, v18);
    sub_222D7347C();
    OUTLINED_FUNCTION_1_2();
    sub_222D8375C();
    sub_222D73124(v22, v23);
    v19 = *(type metadata accessor for CustomSignal() + 36);
    LOBYTE(v22) = 5;
    sub_222D834DC();
    sub_222D73904(&qword_280FEADB0);
    sub_222D8375C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D76DA4()
{
  result = qword_280FEA458;
  if (!qword_280FEA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEA458);
  }

  return result;
}

unint64_t sub_222D76DF8()
{
  result = qword_280FEA448;
  if (!qword_280FEA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEA448);
  }

  return result;
}

unint64_t sub_222D76E4C()
{
  result = qword_280FEA438;
  if (!qword_280FEA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEA438);
  }

  return result;
}

uint64_t CustomSignal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v35 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044AB8, &qword_222D84688);
  v12 = OUTLINED_FUNCTION_0(v11);
  v37 = v13;
  v38 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  v18 = type metadata accessor for CustomSignal();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v25 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v24);
  sub_222D76DA4();
  v39 = v17;
  sub_222D8381C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  v34 = v18;
  v26 = v10;
  v27 = v37;
  v42 = 0;
  sub_222D772A0();
  v28 = v38;
  sub_222D8370C();
  *v23 = v41;
  *(v23 + 1) = OUTLINED_FUNCTION_5_1(1);
  *(v23 + 2) = v29;
  v42 = 2;
  sub_222D772F4();
  OUTLINED_FUNCTION_3_1();
  sub_222D836EC();
  v23[24] = v41;
  *(v23 + 4) = OUTLINED_FUNCTION_5_1(3);
  *(v23 + 5) = v30;
  v42 = 4;
  sub_222D738B0();
  OUTLINED_FUNCTION_3_1();
  sub_222D8370C();
  *(v23 + 3) = v41;
  LOBYTE(v41) = 5;
  sub_222D73904(&qword_280FEA4A0);
  v31 = v39;
  sub_222D8370C();
  (*(v27 + 8))(v31, v28);
  (*(v35 + 32))(&v23[*(v34 + 36)], v26, v4);
  sub_222D77348(v23, v36);
  __swift_destroy_boxed_opaque_existential_0(v40);
  return sub_222D773AC(v23);
}

unint64_t sub_222D772A0()
{
  result = qword_27D044AC0;
  if (!qword_27D044AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044AC0);
  }

  return result;
}

unint64_t sub_222D772F4()
{
  result = qword_27D044AC8;
  if (!qword_27D044AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044AC8);
  }

  return result;
}

uint64_t sub_222D77348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D773AC(uint64_t a1)
{
  v2 = type metadata accessor for CustomSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222D77488()
{
  sub_222D7757C(319, &qword_280FEA4B0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_222D7757C(319, qword_280FEA6A0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_222D834DC();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_222D7757C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_222D8363C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CustomSignal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CustomSignal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D77730()
{
  result = qword_27D044AD0;
  if (!qword_27D044AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044AD0);
  }

  return result;
}

unint64_t sub_222D77788()
{
  result = qword_280FEA460;
  if (!qword_280FEA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEA460);
  }

  return result;
}

unint64_t sub_222D777E0()
{
  result = qword_280FEA468;
  if (!qword_280FEA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEA468);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_1@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  v3 = *(v1 - 112);

  return sub_222D836CC();
}

SiriIntentEvents::CustomSignalSource_optional __swiftcall CustomSignalSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222D836BC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CustomSignalSource.rawValue.getter()
{
  if (*v0)
  {
    return 0x746E65696C63;
  }

  else
  {
    return 0x726576726573;
  }
}

unint64_t sub_222D77910()
{
  result = qword_27D044AD8;
  if (!qword_27D044AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044AD8);
  }

  return result;
}

uint64_t sub_222D77988@<X0>(uint64_t *a1@<X8>)
{
  result = CustomSignalSource.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomSignalSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D77B40()
{
  result = qword_280FEA430;
  if (!qword_280FEA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEA430);
  }

  return result;
}

SiriIntentEvents::CustomSignalType_optional __swiftcall CustomSignalType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222D836BC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CustomSignalType.rawValue.getter()
{
  v1 = 0x63656C6553707061;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614C686365657073;
  }
}

uint64_t sub_222D77C64(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_222D796F4();
}

unint64_t sub_222D77C74()
{
  result = qword_27D044AE0;
  if (!qword_27D044AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044AE0);
  }

  return result;
}

uint64_t sub_222D77CEC@<X0>(uint64_t *a1@<X8>)
{
  result = CustomSignalType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomSignalType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomSignalType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D77F28()
{
  result = qword_280FEA440;
  if (!qword_280FEA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEA440);
  }

  return result;
}

uint64_t DisambiguationOffer.parameterName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t DisambiguationOffer.intentType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t DisambiguationOffer.multicardinalIndexValue.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t DisambiguationOffer.disambiguationItems.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = OUTLINED_FUNCTION_6_0();
  sub_222D72600(v3, v4);
  return OUTLINED_FUNCTION_6_0();
}

uint64_t DisambiguationOffer.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriIntentEvents19DisambiguationOffer_timestamp;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DisambiguationOffer.__allocating_init(parameterName:intentType:multicardinalIndexValue:disambiguationItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = OUTLINED_FUNCTION_5_0();
  DisambiguationOffer.init(parameterName:intentType:multicardinalIndexValue:disambiguationItems:)(a1, a2, a3, a4, a5, a6 & 1);
  return v12;
}

uint64_t DisambiguationOffer.init(parameterName:intentType:multicardinalIndexValue:disambiguationItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v13 = sub_222D834DC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v35 = v15;
  v36 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6 & 1;
  v20 = objc_opt_self();
  v21 = sub_222D835DC();

  v37[0] = 0;
  v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:0 error:v37];

  v23 = v37[0];
  if (v22)
  {
    v24 = sub_222D8348C();
    v26 = v25;

    *(v6 + 64) = v24;
    *(v6 + 72) = v26;
    sub_222D834CC();
    (*(v35 + 32))(v6 + OBJC_IVAR____TtC16SiriIntentEvents19DisambiguationOffer_timestamp, v19, v36);
  }

  else
  {
    v27 = v23;
    sub_222D8345C();

    swift_willThrow();
    v28 = *(v6 + 24);

    v29 = *(v6 + 40);

    type metadata accessor for DisambiguationOffer();
    v30 = *(*v6 + 48);
    v31 = *(*v6 + 52);
    swift_deallocPartialClassInstance();
  }

  v32 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t type metadata accessor for DisambiguationOffer()
{
  result = qword_280FEA690;
  if (!qword_280FEA690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DisambiguationOffer.__allocating_init(parameterName:intentType:multicardinalIndexValue:disambiguationItems:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = OUTLINED_FUNCTION_5_0();
  DisambiguationOffer.init(parameterName:intentType:multicardinalIndexValue:disambiguationItems:timestamp:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8);
  return v16;
}

uint64_t DisambiguationOffer.init(parameterName:intentType:multicardinalIndexValue:disambiguationItems:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v29[1] = *MEMORY[0x277D85DE8];
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6 & 1;
  v10 = objc_opt_self();
  v11 = sub_222D835DC();

  v29[0] = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:0 error:v29];

  v13 = v29[0];
  if (v12)
  {
    v14 = sub_222D8348C();
    v16 = v15;

    *(v8 + 64) = v14;
    *(v8 + 72) = v16;
    v17 = OBJC_IVAR____TtC16SiriIntentEvents19DisambiguationOffer_timestamp;
    v18 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v18);
    (*(v19 + 32))(v8 + v17, a8);
  }

  else
  {
    v20 = v13;
    sub_222D8345C();

    swift_willThrow();
    v21 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v21);
    (*(v22 + 8))(a8);
    v23 = *(v8 + 24);

    v24 = *(v8 + 40);

    type metadata accessor for DisambiguationOffer();
    v25 = *(*v8 + 48);
    v26 = *(*v8 + 52);
    swift_deallocPartialClassInstance();
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_222D785F8()
{
  v1 = v0;
  sub_222D8365C();
  MEMORY[0x223DCC4E0](0xD000000000000023, 0x8000000222D86060);
  MEMORY[0x223DCC4E0](v1[2], v1[3]);
  MEMORY[0x223DCC4E0](0x746E65746E69202CLL, 0xEE00203A65707954);
  MEMORY[0x223DCC4E0](v1[4], v1[5]);
  MEMORY[0x223DCC4E0](0xD00000000000001BLL, 0x8000000222D86090);
  if (*(v0 + 56))
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    v9 = *(v0 + 48);
    sub_222D78754();
    v3 = sub_222D8364C();
    v2 = v4;
  }

  MEMORY[0x223DCC4E0](v3, v2);

  MEMORY[0x223DCC4E0](0xD000000000000017, 0x8000000222D860B0);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = sub_222D8346C();
  MEMORY[0x223DCC4E0](v7);

  return 0;
}

unint64_t sub_222D78754()
{
  result = qword_27D044AE8;
  if (!qword_27D044AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044AE8);
  }

  return result;
}

uint64_t sub_222D787A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v4 || (sub_222D8378C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
    if (v6 || (sub_222D8378C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x8000000222D85FD0 == a2;
      if (v7 || (sub_222D8378C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000222D86110 == a2;
        if (v8 || (sub_222D8378C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
        {

          return 4;
        }

        else
        {
          v10 = sub_222D8378C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_222D78970(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0x7954746E65746E69;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D78A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D787A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D78A5C(uint64_t a1)
{
  v2 = sub_222D78DAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D78A98(uint64_t a1)
{
  v2 = sub_222D78DAC();

  return MEMORY[0x2821FE720](a1, v2);
}

char *DisambiguationOffer.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  sub_222D73124(*(v0 + 8), *(v0 + 9));
  v3 = OBJC_IVAR____TtC16SiriIntentEvents19DisambiguationOffer_timestamp;
  v4 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(&v0[v3]);
  return v0;
}

uint64_t DisambiguationOffer.__deallocating_deinit()
{
  DisambiguationOffer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D78B9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044AF0, &qword_222D84A80);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D78DAC();
  sub_222D8382C();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_3();
  sub_222D8374C();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    LOBYTE(v23) = 1;
    OUTLINED_FUNCTION_3();
    sub_222D8374C();
    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
    LOBYTE(v23) = 2;
    OUTLINED_FUNCTION_3();
    sub_222D8372C();
    v20 = *(v3 + 72);
    v23 = *(v3 + 64);
    v24 = v20;
    v22[15] = 3;
    sub_222D72600(v23, v20);
    sub_222D7347C();
    sub_222D8375C();
    sub_222D73124(v23, v24);
    LOBYTE(v23) = 4;
    sub_222D834DC();
    sub_222D73904(&qword_280FEADB0);
    sub_222D8375C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D78DAC()
{
  result = qword_27D044AF8;
  if (!qword_27D044AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044AF8);
  }

  return result;
}

uint64_t DisambiguationOffer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_0();
  DisambiguationOffer.init(from:)(a1);
  return v2;
}

uint64_t DisambiguationOffer.init(from:)(uint64_t *a1)
{
  v3 = sub_222D834DC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044B00, &qword_222D84A88);
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = a1[3];
  v14 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v15);
  sub_222D78DAC();
  sub_222D8381C();
  if (v1)
  {
    v20 = v29;
    type metadata accessor for DisambiguationOffer();
    v17 = *(*v20 + 48);
    v18 = *(*v20 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v9;
    LOBYTE(v31) = 0;
    OUTLINED_FUNCTION_4_0();
    v16 = sub_222D836FC();
    v20 = v29;
    *(v29 + 16) = v16;
    *(v20 + 24) = v21;
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_4_0();
    *(v20 + 32) = sub_222D836FC();
    *(v20 + 40) = v22;
    LOBYTE(v31) = 2;
    OUTLINED_FUNCTION_4_0();
    *(v20 + 48) = sub_222D836DC();
    *(v20 + 56) = v23 & 1;
    v32 = 3;
    sub_222D738B0();
    sub_222D8370C();
    *(v20 + 64) = v31;
    LOBYTE(v31) = 4;
    sub_222D73904(&qword_280FEA4A0);
    v24 = v27;
    sub_222D8370C();
    v25 = OUTLINED_FUNCTION_2_0();
    v26(v25);
    (*(v28 + 32))(v20 + OBJC_IVAR____TtC16SiriIntentEvents19DisambiguationOffer_timestamp, v24, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  return v20;
}

uint64_t sub_222D791E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DisambiguationOffer.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_222D7925C()
{
  result = sub_222D834DC();
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

_BYTE *storeEnumTagSinglePayload for DisambiguationOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D794E0()
{
  result = qword_27D044B08;
  if (!qword_27D044B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B08);
  }

  return result;
}

unint64_t sub_222D79538()
{
  result = qword_27D044B10;
  if (!qword_27D044B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B10);
  }

  return result;
}

unint64_t sub_222D79590()
{
  result = qword_27D044B18;
  if (!qword_27D044B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B18);
  }

  return result;
}

uint64_t sub_222D795E8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 1701869940;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222D8378C();
  }

  return v8 & 1;
}

uint64_t sub_222D7967C(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x746E65696C63;
  }

  else
  {
    v2 = 0x726576726573;
  }

  if (a2)
  {
    v3 = 0x746E65696C63;
  }

  else
  {
    v3 = 0x726576726573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_222D8378C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_222D796F4()
{
  OUTLINED_FUNCTION_6_3();
  v2 = 0x614C686365657073;
  if (v3)
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_16();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x614C686365657073;
    v10 = v0;
  }

  if (v1)
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_16();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v14;
    }

    if (v11 == 1)
    {
      v0 = v13;
    }

    else
    {
      v0 = v16;
    }
  }

  if (v9 == v2 && v10 == v0)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_222D8378C();
  }

  return v18 & 1;
}

uint64_t sub_222D797C4(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000747261;
  v3 = 0x7453746E65746E69;
  v4 = a1;
  v5 = 0x7453746E65746E69;
  v6 = 0xEB00000000747261;
  switch(v4)
  {
    case 1:
      v5 = 0x6552746E65746E69;
      v7 = 1953265011;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_14();
      v5 = v8 | 2;
      break;
    case 3:
      OUTLINED_FUNCTION_14();
      v5 = v9 + 3;
      break;
    case 4:
      v5 = 0xD000000000000011;
      v6 = 0x8000000222D85DD0;
      break;
    case 5:
      OUTLINED_FUNCTION_14();
      v5 = v10 + 1;
      break;
    case 6:
      v5 = 0x6552797469746E65;
      v6 = 0xEF6E6F697463656ALL;
      break;
    case 7:
      v5 = 0x69536D6F74737563;
      v7 = 1818324583;
LABEL_7:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6552746E65746E69;
      v11 = 1953265011;
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_1_3();
      v3 = v12 | 2;
      break;
    case 3:
      OUTLINED_FUNCTION_1_3();
      v3 = v13 + 3;
      break;
    case 4:
      OUTLINED_FUNCTION_10_0();
      break;
    case 5:
      OUTLINED_FUNCTION_1_3();
      v3 = v14 + 1;
      break;
    case 6:
      OUTLINED_FUNCTION_22();
      break;
    case 7:
      v3 = 0x69536D6F74737563;
      v11 = 1818324583;
LABEL_16:
      v2 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_222D8378C();
  }

  return v16 & 1;
}

uint64_t sub_222D799E0(unsigned __int8 a1, char a2)
{
  v2 = 0x64656C696166;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x64656C696166;
  switch(v4)
  {
    case 1:
      v6 = "completedWithinSiri";
      goto LABEL_6;
    case 2:
      v6 = "userPunchedOutToApp";
      goto LABEL_6;
    case 3:
      v3 = 0x8000000222D85E80;
      v5 = 0xD00000000000001ALL;
      goto LABEL_7;
    case 4:
      goto LABEL_7;
    default:
      v6 = "lt";
LABEL_6:
      v3 = v6 | 0x8000000000000000;
      v5 = 0xD000000000000013;
LABEL_7:
      v7 = 0xE600000000000000;
      switch(a2)
      {
        case 1:
          v8 = "completedWithinSiri";
          goto LABEL_12;
        case 2:
          v8 = "userPunchedOutToApp";
          goto LABEL_12;
        case 3:
          v7 = 0x8000000222D85E80;
          v2 = 0xD00000000000001ALL;
          goto LABEL_13;
        case 4:
          goto LABEL_13;
        default:
          v8 = "lt";
LABEL_12:
          v7 = v8 | 0x8000000000000000;
          v2 = 0xD000000000000013;
LABEL_13:
          if (v5 == v2 && v3 == v7)
          {
            v10 = 1;
          }

          else
          {
            v10 = sub_222D8378C();
          }

          return v10 & 1;
      }
  }
}

uint64_t sub_222D79B70(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_222D837EC();
  a2(v5, a1);
  return sub_222D8380C();
}

uint64_t sub_222D79BC0()
{
  sub_222D8358C();
}

uint64_t sub_222D79C10(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_23();
  }

  sub_222D8358C();
}

uint64_t sub_222D79C7C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
    case 5:
      OUTLINED_FUNCTION_1_3();
      break;
    case 4:
      OUTLINED_FUNCTION_10_0();
      break;
    case 6:
      OUTLINED_FUNCTION_22();
      break;
    default:
      break;
  }

  sub_222D8358C();
}

uint64_t sub_222D79DA8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_10_0();
      break;
  }

  sub_222D8358C();
}

uint64_t sub_222D79EA0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_222D837EC();
  a3(v6, a2);
  return sub_222D8380C();
}

uint64_t sub_222D79EEC(uint64_t a1, char a2)
{
  sub_222D837EC();
  if (a2)
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_23();
  }

  sub_222D8358C();

  return sub_222D8380C();
}

uint64_t sub_222D79F6C()
{
  sub_222D837EC();
  sub_222D8358C();

  return sub_222D8380C();
}

uint64_t sub_222D79FDC()
{
  sub_222D837EC();
  sub_222D8358C();

  return sub_222D8380C();
}

uint64_t sub_222D7A050()
{
  v0 = sub_222D836BC();

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

uint64_t sub_222D7A0A4()
{
  v0 = sub_222D836BC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D7A140@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D7A050();
  *a2 = result;
  return result;
}

uint64_t sub_222D7A170@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D7A050();
  *a1 = result;
  return result;
}

uint64_t sub_222D7A198(uint64_t a1)
{
  v2 = sub_222D7A3E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D7A1D4(uint64_t a1)
{
  v2 = sub_222D7A3E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void DisambiguationResolution.encode(to:)()
{
  OUTLINED_FUNCTION_10();
  v17 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044B20, &qword_222D84CE0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v13 = *v0;
  v12 = v0[1];
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_0Tm(v3, v3[3]);
  sub_222D7A3E8();
  OUTLINED_FUNCTION_13();
  v15 = (v12 >> 60) & 3;
  if (v15)
  {
    if (v15 != 1)
    {
      LOBYTE(v18) = 0;
      goto LABEL_8;
    }

    v18 = v13;
    v19 = v12 & 0xCFFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_24();
    sub_222D7347C();
    OUTLINED_FUNCTION_18();
    if (!v1)
    {
      LOBYTE(v18) = 0;
LABEL_8:
      sub_222D8374C();
    }
  }

  else
  {
    v18 = v13;
    v19 = v12;
    OUTLINED_FUNCTION_24();
    sub_222D7347C();
    OUTLINED_FUNCTION_18();
    if (!v1)
    {
      LOBYTE(v18) = 0;
      goto LABEL_8;
    }
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_11();
}

unint64_t sub_222D7A3E8()
{
  result = qword_27D044B28;
  if (!qword_27D044B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B28);
  }

  return result;
}

void DisambiguationResolution.init(from:)()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044B30, &qword_222D84CE8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_222D7A3E8();
  sub_222D8381C();
  if (!v0)
  {
    LOBYTE(v21) = 0;
    sub_222D836FC();
    v12 = sub_222D7A0A4();
    switch(v12)
    {
      case 1:
        OUTLINED_FUNCTION_24();
        sub_222D738B0();
        OUTLINED_FUNCTION_15();
        v19 = OUTLINED_FUNCTION_1_1();
        v20(v19);
        v15 = v21;
        v16 = v22 | 0x1000000000000000;
        goto LABEL_9;
      case 2:
        v17 = OUTLINED_FUNCTION_1_1();
        v18(v17);
        v15 = 0;
        v16 = 0x2000000000000000;
        goto LABEL_9;
      case 3:
        sub_222D7A654();
        swift_allocError();
        swift_willThrow();
        v10 = OUTLINED_FUNCTION_1_1();
        v11(v10);
        break;
      default:
        OUTLINED_FUNCTION_24();
        sub_222D738B0();
        OUTLINED_FUNCTION_15();
        v13 = OUTLINED_FUNCTION_1_1();
        v14(v13);
        v15 = v21;
        v16 = v22;
LABEL_9:
        *v4 = v15;
        v4[1] = v16;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_11();
}

unint64_t sub_222D7A654()
{
  result = qword_27D044B38;
  if (!qword_27D044B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B38);
  }

  return result;
}

uint64_t DisambiguationResult.parameterName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DisambiguationResult.multicardinalIndexValue.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t DisambiguationResult.intentType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t DisambiguationResult.resolution.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  *a1 = v2;
  a1[1] = v3;
  return sub_222D7A750(v2, v3);
}

uint64_t sub_222D7A750(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_222D72600(result, a2);
}

uint64_t DisambiguationResult.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriIntentEvents20DisambiguationResult_timestamp;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DisambiguationResult.__allocating_init(parameterName:intentType:multicardinalIndexValue:resolution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_2_1();
  v14 = swift_allocObject();
  DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:)(v12, v11, v10, v9, v8, v7 & 1, a7);
  return v14;
}

uint64_t DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  OUTLINED_FUNCTION_7_0();
  v14 = sub_222D834DC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_0();
  v22 = v21 - v20;
  *(v7 + 16) = v13;
  *(v7 + 24) = v12;
  *(v7 + 48) = v11;
  *(v7 + 56) = v10;
  *(v7 + 32) = v9;
  *(v7 + 40) = v8 & 1;
  *(v7 + 64) = *a7;
  sub_222D834CC();
  (*(v17 + 32))(v7 + OBJC_IVAR____TtC16SiriIntentEvents20DisambiguationResult_timestamp, v22, v14);
  return v7;
}

void DisambiguationResult.__allocating_init(parameterName:intentType:multicardinalIndexValue:resolvedValue:)()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolvedValue:)(v13, v11, v9, v7, v5, v3 & 1, v1);
  OUTLINED_FUNCTION_11();
}

uint64_t DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolvedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v15 = sub_222D834DC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v36 = v17;
  v37 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_0();
  v22 = v21 - v20;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6 & 1;
  v23 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0Tm(a7, a7[3]);
  v38[0] = 0;
  v24 = [v23 archivedDataWithRootObject:sub_222D8377C() requiringSecureCoding:0 error:v38];
  swift_unknownObjectRelease();
  v25 = v38[0];
  if (v24)
  {
    v26 = sub_222D8348C();
    v28 = v27;

    *(v7 + 64) = v26;
    *(v7 + 72) = v28;
    sub_222D834CC();
    __swift_destroy_boxed_opaque_existential_0(a7);
    (*(v36 + 32))(v7 + OBJC_IVAR____TtC16SiriIntentEvents20DisambiguationResult_timestamp, v22, v37);
  }

  else
  {
    v29 = v25;
    sub_222D8345C();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(a7);
    v30 = *(v7 + 24);

    v31 = *(v7 + 56);

    type metadata accessor for DisambiguationResult();
    v32 = *(*v7 + 48);
    v33 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
  }

  v34 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t type metadata accessor for DisambiguationResult()
{
  result = qword_280FEA5A0;
  if (!qword_280FEA5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DisambiguationResult.__allocating_init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_1();
  v16 = swift_allocObject();
  DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8);
  return v16;
}

uint64_t DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_9(a1, a2, a3, a4, a5, a6);
  *(v8 + 64) = *v10;
  v11 = OBJC_IVAR____TtC16SiriIntentEvents20DisambiguationResult_timestamp;
  v12 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v12);
  (*(v13 + 32))(v8 + v11, a8);
  return v8;
}

void DisambiguationResult.__allocating_init(parameterName:intentType:multicardinalIndexValue:resolvedValue:timestamp:)()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolvedValue:timestamp:)(v15, v13, v11, v9, v7, v5 & 1, v3, v1);
  OUTLINED_FUNCTION_11();
}

char *DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolvedValue:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v29[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2, a3, a4, a5, a6);
  v11 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0Tm(a7, a7[3]);
  v29[0] = 0;
  v12 = [v11 archivedDataWithRootObject:sub_222D8377C() requiringSecureCoding:0 error:v29];
  swift_unknownObjectRelease();
  v13 = v29[0];
  if (v12)
  {
    v14 = sub_222D8348C();
    v16 = v15;

    __swift_destroy_boxed_opaque_existential_0(a7);
    *(v8 + 8) = v14;
    *(v8 + 9) = v16;
    v17 = OBJC_IVAR____TtC16SiriIntentEvents20DisambiguationResult_timestamp;
    v18 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v18);
    (*(v19 + 32))(&v8[v17], a8);
  }

  else
  {
    v20 = v13;
    sub_222D8345C();

    swift_willThrow();
    v21 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v21);
    (*(v22 + 8))(a8);
    __swift_destroy_boxed_opaque_existential_0(a7);
    v23 = *(v8 + 3);

    v24 = *(v8 + 7);

    type metadata accessor for DisambiguationResult();
    v25 = *(*v8 + 48);
    v26 = *(*v8 + 52);
    swift_deallocPartialClassInstance();
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_222D7AFB8(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x7954746E65746E69;
      break;
    case 3:
      result = 0x6974756C6F736572;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D7B07C(uint64_t a1)
{
  v2 = sub_222D7B3D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D7B0B8(uint64_t a1)
{
  v2 = sub_222D7B3D4();

  return MEMORY[0x2821FE720](a1, v2);
}

char *DisambiguationResult.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 7);

  sub_222D7B164(*(v0 + 8), *(v0 + 9));
  v3 = OBJC_IVAR____TtC16SiriIntentEvents20DisambiguationResult_timestamp;
  v4 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(&v0[v3]);
  return v0;
}

uint64_t sub_222D7B164(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_222D73124(result, a2);
}

uint64_t DisambiguationResult.__deallocating_deinit()
{
  DisambiguationResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D7B1D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044B40, &qword_222D84CF0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D7B3D4();
  OUTLINED_FUNCTION_13();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_3();
  sub_222D8374C();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    LOBYTE(v23) = 1;
    OUTLINED_FUNCTION_3();
    sub_222D8372C();
    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
    LOBYTE(v23) = 2;
    OUTLINED_FUNCTION_3();
    sub_222D8374C();
    v20 = *(v3 + 72);
    v23 = *(v3 + 64);
    v24 = v20;
    v22[15] = 3;
    sub_222D7A750(v23, v20);
    sub_222D7B428();
    sub_222D8375C();
    sub_222D7B164(v23, v24);
    LOBYTE(v23) = 4;
    sub_222D834DC();
    sub_222D73904(&qword_280FEADB0);
    sub_222D8375C();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_222D7B3D4()
{
  result = qword_27D044B48;
  if (!qword_27D044B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B48);
  }

  return result;
}

unint64_t sub_222D7B428()
{
  result = qword_27D044B50;
  if (!qword_27D044B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B50);
  }

  return result;
}

uint64_t DisambiguationResult.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_2_1();
  v0 = swift_allocObject();
  DisambiguationResult.init(from:)();
  return v0;
}

void DisambiguationResult.init(from:)()
{
  OUTLINED_FUNCTION_10();
  v25 = v0;
  v3 = v2;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v24 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044B58, &qword_222D84CF8);
  OUTLINED_FUNCTION_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_0Tm(v3, v3[3]);
  sub_222D7B3D4();
  sub_222D8381C();
  if (v1)
  {
    type metadata accessor for DisambiguationResult();
    v17 = *(*v25 + 48);
    v18 = *(*v25 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    *(v25 + 16) = sub_222D836FC();
    *(v25 + 24) = v19;
    OUTLINED_FUNCTION_6_1();
    *(v25 + 32) = sub_222D836DC();
    *(v25 + 40) = v20 & 1;
    LOBYTE(v26) = 2;
    OUTLINED_FUNCTION_6_1();
    *(v25 + 48) = sub_222D836FC();
    *(v25 + 56) = v21;
    sub_222D7B83C();
    sub_222D8370C();
    *(v25 + 64) = v26;
    sub_222D73904(&qword_280FEA4A0);
    sub_222D8370C();
    v22 = OUTLINED_FUNCTION_2_0();
    v23(v22);
    (*(v24 + 32))(v25 + OBJC_IVAR____TtC16SiriIntentEvents20DisambiguationResult_timestamp, v11, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(v3);
  OUTLINED_FUNCTION_11();
}

unint64_t sub_222D7B83C()
{
  result = qword_27D044B60;
  if (!qword_27D044B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B60);
  }

  return result;
}

uint64_t sub_222D7B890@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationResult.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriIntentEvents24DisambiguationResolutionO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_222D7B900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if ((~*(a1 + 8) & 0x3000000000000000) != 0)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222D7B940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_222D84CD0;
    }
  }

  return result;
}

void *sub_222D7B994(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_222D7B9D4()
{
  result = sub_222D834DC();
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

_BYTE *storeEnumTagSinglePayload for DisambiguationResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationResolution.DecoderError(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for DisambiguationResolution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D7BDEC()
{
  result = qword_27D044B68;
  if (!qword_27D044B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B68);
  }

  return result;
}

unint64_t sub_222D7BE44()
{
  result = qword_27D044B70;
  if (!qword_27D044B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B70);
  }

  return result;
}

unint64_t sub_222D7BE9C()
{
  result = qword_27D044B78;
  if (!qword_27D044B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B78);
  }

  return result;
}

unint64_t sub_222D7BEF4()
{
  result = qword_27D044B80;
  if (!qword_27D044B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B80);
  }

  return result;
}

unint64_t sub_222D7BF4C()
{
  result = qword_27D044B88;
  if (!qword_27D044B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B88);
  }

  return result;
}

unint64_t sub_222D7BFA4()
{
  result = qword_27D044B90;
  if (!qword_27D044B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B90);
  }

  return result;
}

unint64_t sub_222D7BFFC()
{
  result = qword_27D044B98;
  if (!qword_27D044B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044B98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_222D8370C();
}

uint64_t OUTLINED_FUNCTION_18()
{
  v2 = *(v0 - 104);

  return sub_222D8375C();
}

uint64_t EntityRejection.parameterName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_6_0();
}

uint64_t EntityRejection.intentType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t EntityRejection.entityType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t EntityRejection.entityId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t EntityRejection.bundleId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_6_0();
}

uint64_t EntityRejection.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EntityRejection() + 36);
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for EntityRejection()
{
  result = qword_280FEA918;
  if (!qword_280FEA918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EntityRejection.init(parameterName:intentType:entityType:entityId:timestamp:bundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;

  MEMORY[0x223DCC4E0](0x6552797469746E45, 0xEF6E6F697463656ALL);

  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  v17 = *(type metadata accessor for EntityRejection() + 36);
  v18 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v18);
  result = (*(v19 + 32))(&a9[v17], a10);
  *(a9 + 8) = a11;
  *(a9 + 9) = a12;
  return result;
}

uint64_t sub_222D7C3B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v4 || (sub_222D8378C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
    if (v6 || (sub_222D8378C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
      if (v7 || (sub_222D8378C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
        if (v8 || (sub_222D8378C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
          if (v9 || (sub_222D8378C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
          {

            return 5;
          }

          else
          {
            v11 = sub_222D8378C();

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

uint64_t sub_222D7C5BC(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      v3 = 0x746E65746E69;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
    case 2:
      v3 = 0x797469746E65;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
    case 3:
      v4 = 0x797469746E65;
      goto LABEL_7;
    case 4:
      v4 = 0x656C646E7562;
LABEL_7:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 5:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D7C680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D7C3B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D7C6A8(uint64_t a1)
{
  v2 = sub_222D7C930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D7C6E4(uint64_t a1)
{
  v2 = sub_222D7C930();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EntityRejection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044BA0, &qword_222D852C0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D7C930();
  sub_222D8382C();
  v14 = *v3;
  v15 = v3[1];
  v26[15] = 0;
  OUTLINED_FUNCTION_1_4();
  sub_222D8374C();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v26[14] = 1;
    OUTLINED_FUNCTION_1_4();
    sub_222D8374C();
    v18 = v3[4];
    v19 = v3[5];
    v26[13] = 2;
    OUTLINED_FUNCTION_1_4();
    sub_222D8374C();
    v20 = v3[6];
    v21 = v3[7];
    v26[12] = 3;
    OUTLINED_FUNCTION_1_4();
    sub_222D8374C();
    v22 = v3[8];
    v23 = v3[9];
    v26[11] = 4;
    OUTLINED_FUNCTION_1_4();
    sub_222D8371C();
    v24 = *(type metadata accessor for EntityRejection() + 36);
    v26[10] = 5;
    sub_222D834DC();
    sub_222D73904(&qword_280FEADB0);
    sub_222D8375C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D7C930()
{
  result = qword_27D044BA8;
  if (!qword_27D044BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044BA8);
  }

  return result;
}

uint64_t EntityRejection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v32 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044BB0, &qword_222D852C8);
  v11 = OUTLINED_FUNCTION_0(v34);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = type metadata accessor for EntityRejection();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v35 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = a1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D7C930();
  sub_222D8381C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v36);
  }

  v31 = v10;
  v42 = 0;
  OUTLINED_FUNCTION_3_2();
  v20 = sub_222D836FC();
  v21 = v35;
  *v35 = v20;
  v21[1] = v22;
  v41 = 1;
  OUTLINED_FUNCTION_3_2();
  v21[2] = sub_222D836FC();
  v21[3] = v23;
  v40 = 2;
  OUTLINED_FUNCTION_3_2();
  v21[4] = sub_222D836FC();
  v21[5] = v24;
  v39 = 3;
  OUTLINED_FUNCTION_3_2();
  v21[6] = sub_222D836FC();
  v21[7] = v25;
  v38 = 4;
  OUTLINED_FUNCTION_3_2();
  v21[8] = sub_222D836CC();
  v21[9] = v26;
  v37 = 5;
  sub_222D73904(&qword_280FEA4A0);
  v27 = v31;
  OUTLINED_FUNCTION_3_2();
  sub_222D8370C();
  v28 = OUTLINED_FUNCTION_0_1();
  v29(v28);
  (*(v32 + 32))(v21 + *(v14 + 36), v27, v4);
  sub_222D7CE04(v21, v33);
  __swift_destroy_boxed_opaque_existential_0(v36);
  return sub_222D7CE68(v21);
}

uint64_t sub_222D7CE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityRejection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D7CE68(uint64_t a1)
{
  v2 = type metadata accessor for EntityRejection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_222D7CF1C()
{
  sub_222D7CFB4();
  if (v0 <= 0x3F)
  {
    sub_222D834DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222D7CFB4()
{
  if (!qword_280FEA4B0)
  {
    v0 = sub_222D8363C();
    if (!v1)
    {
      atomic_store(v0, &qword_280FEA4B0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EntityRejection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D7D0E4()
{
  result = qword_27D044BB8;
  if (!qword_27D044BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044BB8);
  }

  return result;
}

unint64_t sub_222D7D13C()
{
  result = qword_27D044BC0;
  if (!qword_27D044BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044BC0);
  }

  return result;
}

unint64_t sub_222D7D194()
{
  result = qword_27D044BC8;
  if (!qword_27D044BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044BC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

uint64_t IntentEvent.intentId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IntentEvent.eventData.getter()
{
  v1 = *(v0 + 40);
  sub_222D72600(v1, *(v0 + 48));
  return v1;
}

uint64_t IntentEvent.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriIntentEvents11IntentEvent_createdAt;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_222D7D2E8@<X0>(uint64_t a1@<X8>)
{
  v5 = type metadata accessor for IntentEventContent();
  v6 = OUTLINED_FUNCTION_4_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044BD0, &qword_222D85470);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v20[-v16];
  v18 = OBJC_IVAR____TtC16SiriIntentEvents11IntentEvent__content;
  swift_beginAccess();
  sub_222D7D4BC(v1 + v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    sub_222D7D52C(v17);
    v20[0] = *(v1 + 32);
    sub_222D72600(*(v1 + 40), *(v1 + 48));
    result = sub_222D7FF68(v20, v10);
    if (v2)
    {
      return result;
    }

    sub_222D7D594(v10, v15);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
    swift_beginAccess();
    sub_222D7D5F8(v15, v1 + v18);
    swift_endAccess();
  }

  else
  {
    v10 = v17;
  }

  return sub_222D7D668(v10, a1);
}

uint64_t sub_222D7D4BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044BD0, &qword_222D85470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D7D52C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044BD0, &qword_222D85470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222D7D594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentEventContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D7D5F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044BD0, &qword_222D85470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D7D668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentEventContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IntentEvent()
{
  result = qword_280FEACD8;
  if (!qword_280FEACD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222D7D770()
{
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_18_0();
  v0(v2);
  return v1;
}

void IntentEvent.init(intentId:entityRejection:createdAt:)()
{
  OUTLINED_FUNCTION_22_0();
  v2 = type metadata accessor for IntentEventContent();
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 32) = 6;
  v3 = *(sub_222D834DC() - 8);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_3_3();
  v6(v5);
  v7 = sub_222D8344C();
  OUTLINED_FUNCTION_21(v7);
  sub_222D8343C();
  type metadata accessor for EntityRejection();
  v8 = sub_222D6ECB0(&qword_27D044BF8, type metadata accessor for EntityRejection);
  v9 = OUTLINED_FUNCTION_20(v8);
  if (v1)
  {

    v11 = *(v3 + 8);
    v12 = OUTLINED_FUNCTION_11_0();
    v11(v12);
    OUTLINED_FUNCTION_14_0();
    v13 = *(v0 + 24);

    v22 = OUTLINED_FUNCTION_8_1(v14, v15, v16, v17, v18, v19, v20, v21, v31, v32);
    v11(v22);
    sub_222D7D52C(v0 + OBJC_IVAR____TtC16SiriIntentEvents11IntentEvent__content);
    type metadata accessor for IntentEvent();
    OUTLINED_FUNCTION_7_1();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v9;
    v27 = v10;

    v28 = *(v3 + 8);
    v29 = OUTLINED_FUNCTION_11_0();
    v30(v29);
    OUTLINED_FUNCTION_14_0();
    *(v0 + 40) = v26;
    *(v0 + 48) = v27;
  }

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_12_1();
}

uint64_t sub_222D7E254()
{
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_18_0();
  v0(v2);
  return v1;
}

void IntentEvent.init(intentId:customSignal:createdAt:)()
{
  OUTLINED_FUNCTION_22_0();
  v2 = type metadata accessor for IntentEventContent();
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 32) = 7;
  v3 = *(sub_222D834DC() - 8);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_3_3();
  v6(v5);
  v7 = sub_222D8344C();
  OUTLINED_FUNCTION_21(v7);
  sub_222D8343C();
  type metadata accessor for CustomSignal();
  v8 = sub_222D6ECB0(&qword_280FEA450, type metadata accessor for CustomSignal);
  v9 = OUTLINED_FUNCTION_20(v8);
  if (v1)
  {

    v11 = *(v3 + 8);
    v12 = OUTLINED_FUNCTION_11_0();
    v11(v12);
    OUTLINED_FUNCTION_13_0();
    v13 = *(v0 + 24);

    v22 = OUTLINED_FUNCTION_8_1(v14, v15, v16, v17, v18, v19, v20, v21, v31, v32);
    v11(v22);
    sub_222D7D52C(v0 + OBJC_IVAR____TtC16SiriIntentEvents11IntentEvent__content);
    type metadata accessor for IntentEvent();
    OUTLINED_FUNCTION_7_1();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v9;
    v27 = v10;

    v28 = *(v3 + 8);
    v29 = OUTLINED_FUNCTION_11_0();
    v30(v29);
    OUTLINED_FUNCTION_13_0();
    *(v0 + 40) = v26;
    *(v0 + 48) = v27;
  }

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_12_1();
}

uint64_t sub_222D7E460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_222D7E4B8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = OBJC_IVAR____TtC16SiriIntentEvents11IntentEvent__content;
  v14 = type metadata accessor for IntentEventContent();
  __swift_storeEnumTagSinglePayload(v6 + v13, 1, 1, v14);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v12;
  v15 = OBJC_IVAR____TtC16SiriIntentEvents11IntentEvent_createdAt;
  v16 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v16);
  (*(v17 + 32))(v6 + v15, a6);
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  return v6;
}

char *IntentEvent.deinit()
{
  v1 = *(v0 + 3);

  sub_222D73124(*(v0 + 5), *(v0 + 6));
  v2 = OBJC_IVAR____TtC16SiriIntentEvents11IntentEvent_createdAt;
  v3 = sub_222D834DC();
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(&v0[v2]);
  sub_222D7D52C(&v0[OBJC_IVAR____TtC16SiriIntentEvents11IntentEvent__content]);
  return v0;
}

uint64_t IntentEvent.__deallocating_deinit()
{
  IntentEvent.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_222D7E64C()
{
  v0 = sub_222D834DC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_222D7E8C8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_222D7E8C8()
{
  if (!qword_280FEAD60)
  {
    type metadata accessor for IntentEventContent();
    v0 = sub_222D8363C();
    if (!v1)
    {
      atomic_store(v0, &qword_280FEAD60);
    }
  }
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return sub_222D7E460(v0, type metadata accessor for CustomSignal);
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return sub_222D7E460(v0, type metadata accessor for EntityRejection);
}

uint64_t OUTLINED_FUNCTION_17()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1)
{

  return MEMORY[0x28211B658](v2, v1, a1);
}

uint64_t sub_222D7EAA4(uint64_t a1, int a2)
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

uint64_t sub_222D7EAE4(uint64_t result, int a2, int a3)
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

uint64_t IntentEventStore.init()@<X0>(void *a1@<X8>)
{
  v2 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v3 = [v2 Remembers];
  swift_unknownObjectRelease();
  v4 = [v3 Intent];
  result = swift_unknownObjectRelease();
  *a1 = v4;
  return result;
}

void static IntentEventStore.temporary()(void *a1@<X8>)
{
  v2 = sub_222D8350C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222D834FC();
  v7 = sub_222D834EC();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_222D8365C();

  v27 = 0xD00000000000001BLL;
  v28 = 0x8000000222D861C0;
  MEMORY[0x223DCC4E0](v7, v9);
  v10 = sub_222D8356C();

  v11 = NSTemporaryDirectory();
  v12 = sub_222D8357C();
  v14 = v13;

  v27 = v12;
  v28 = v14;
  MEMORY[0x223DCC4E0](47, 0xE100000000000000);
  MEMORY[0x223DCC4E0](v7, v9);
  v15 = v27;
  v16 = v28;
  v17 = objc_opt_self();
  v18 = sub_222D7FCC0(v15, v16, v17);
  v19 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
  v20 = sub_222D7F9C4(1886217588, 0xE400000000000000, MEMORY[0x277D84F90]);
  if (v20)
  {
    v21 = v20;

    sub_222D72160(0, &qword_27D044C00, 0x277CF1B48);
    v22 = sub_222D72160(0, &qword_27D044C08, 0x277CF1498);
    v23 = v10;
    v24 = v18;
    v25 = sub_222D7EE9C(v23, v22, v24);
    v26 = [objc_allocWithZone(MEMORY[0x277CF1B38]) initWithIdentifier:v23 schema:v21 configuration:v25];

    *a1 = v26;
  }

  else
  {
    __break(1u);
  }
}

id sub_222D7EE9C(void *a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = [v5 initWithStreamIdentifier:a1 eventClass:swift_getObjCClassFromMetadata() storeConfig:a3];

  return v6;
}

void IntentEventStore.log(event:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = 0xEB00000000747261;
  v6 = 0x7453746E65746E69;
  switch(*(a1 + 32))
  {
    case 1:
      v5 = 0xEC000000746C7573;
      v8 = 0x746E65746E69;
      goto LABEL_9;
    case 2:
      OUTLINED_FUNCTION_0_3();
      v6 = v9 | 2;
      break;
    case 3:
      OUTLINED_FUNCTION_0_3();
      v6 = v10 + 3;
      break;
    case 4:
      v6 = 0xD000000000000011;
      v5 = 0x8000000222D85DD0;
      break;
    case 5:
      OUTLINED_FUNCTION_0_3();
      v6 = v11 + 1;
      break;
    case 6:
      v5 = 0xEF6E6F697463656ALL;
      v8 = 0x797469746E65;
LABEL_9:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      break;
    case 7:
      v5 = 0xEC0000006C616E67;
      v6 = 0x69536D6F74737563;
      break;
    default:
      break;
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = objc_allocWithZone(MEMORY[0x277CF1498]);

  sub_222D72600(v12, v13);
  v15 = sub_222D7FA70(v3, v4, v6, v5, v12, v13);
  sub_222D834AC();
  v17 = v16;
  v18 = [v2 source];
  [v18 sendEvent:v15 timestamp:v17];
}

uint64_t IntentEventStore.findEvents(intentId:eventType:startDate:endDate:limit:reversed:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v37 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044C10, &qword_222D855B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v35[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v35[-v21];
  v36 = *a3;
  v23 = *v8;
  if (a7)
  {
    v24 = 0;
  }

  else
  {
    v24 = a6;
  }

  sub_222D7FD08(a4, &v35[-v21]);
  sub_222D7FD08(a5, v20);
  v25 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v26 = sub_222D7FB58(v22, v20, v24, 0, a8);
  v27 = [v23 publisherWithOptions_];
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x277D84F90];
  v42 = nullsub_1;
  v43 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_222D7FF50;
  v41 = &block_descriptor;
  v29 = _Block_copy(&aBlock);
  v30 = swift_allocObject();
  *(v30 + 16) = v37;
  *(v30 + 24) = a2;
  *(v30 + 32) = v36;
  *(v30 + 40) = v28;
  v42 = sub_222D7FD90;
  v43 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_222D7FF50;
  v41 = &block_descriptor_6;
  v31 = _Block_copy(&aBlock);

  v32 = [v27 sinkWithCompletion:v29 receiveInput:v31];

  _Block_release(v31);
  _Block_release(v29);

  swift_beginAccess();
  v33 = *(v28 + 16);

  return v33;
}

void sub_222D7F3F0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_222D834DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = [a1 eventBody];
  if (!v18)
  {
    if (qword_280FEA428 != -1)
    {
      swift_once();
    }

    v28 = sub_222D8353C();
    __swift_project_value_buffer(v28, qword_280FEADC0);
    v54 = sub_222D8351C();
    v29 = sub_222D8360C();
    if (os_log_type_enabled(v54, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_222D6D000, v54, v29, "found BMStoreEvent<BMSiriIntent> with no body", v30, 2u);
      MEMORY[0x223DCCB70](v30, -1, -1);
    }

    goto LABEL_11;
  }

  v53 = a5;
  v54 = v18;
  v19 = sub_222D7FE70(v18, &selRef_eventType);
  if (!v20)
  {
LABEL_11:
    v31 = v54;

    return;
  }

  v21 = v19;
  v22 = v20;
  v52 = v11;
  v23 = sub_222D7FE70(v54, &selRef_intentID);
  if (!v24)
  {
LABEL_10:

    goto LABEL_11;
  }

  v25 = v24;
  v51 = v23;
  v26 = sub_222D7FED0(v54);
  if (v27 >> 60 == 15)
  {

    goto LABEL_10;
  }

  v49 = v26;
  v50 = v27;
  if (!a3 || (v51 == a2 ? (v32 = v25 == a3) : (v32 = 0), v32 || (sub_222D8378C() & 1) != 0))
  {
    v33 = 0xEB00000000747261;
    v34 = 0x7453746E65746E69;
    switch(a4)
    {
      case 1:
        v33 = 0xEC000000746C7573;
        v35 = 0x746E65746E69;
        goto LABEL_25;
      case 2:
        v33 = 0x8000000222D85D90;
        v34 = 0xD000000000000013;
        goto LABEL_29;
      case 3:
        v33 = 0x8000000222D85DB0;
        v34 = 0xD000000000000014;
        goto LABEL_29;
      case 4:
        v34 = 0xD000000000000011;
        v33 = 0x8000000222D85DD0;
        goto LABEL_29;
      case 5:
        v33 = 0x8000000222D85DF0;
        v34 = 0xD000000000000012;
        goto LABEL_29;
      case 6:
        v33 = 0xEF6E6F697463656ALL;
        v35 = 0x797469746E65;
LABEL_25:
        v34 = v35 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
        goto LABEL_29;
      case 7:
        v33 = 0xEC0000006C616E67;
        v34 = 0x69536D6F74737563;
        goto LABEL_29;
      case 8:
        goto LABEL_38;
      default:
LABEL_29:
        if (v34 == v21 && v22 == v33)
        {
        }

        else
        {
          v37 = sub_222D8378C();

          if ((v37 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        v38._countAndFlagsBits = v21;
        v38._object = v22;
        IntentEventType.init(rawValue:)(v38);
        v39 = v55[0];
        if (v55[0] == 8)
        {
          sub_222D7FF34(v49, v50);
        }

        else
        {
          [a1 timestamp];
          sub_222D8349C();
          v55[0] = v39;
          v40 = v52;
          (*(v52 + 16))(v15, v17, v10);
          v41 = type metadata accessor for IntentEvent();
          v42 = *(v41 + 48);
          v43 = *(v41 + 52);
          swift_allocObject();
          v44 = v50;
          v45 = v49;
          sub_222D7E4B8(v51, v25, v55, v49, v50, v15);
          v46 = v53;
          swift_beginAccess();
          v47 = sub_222D72600(v45, v44);
          MEMORY[0x223DCC510](v47);
          sub_222D7FC94(*((*(v46 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_222D835FC();
          swift_endAccess();

          sub_222D7FF34(v45, v44);
          (*(v40 + 8))(v17, v10);
        }

        break;
    }
  }

  else
  {
LABEL_34:
    sub_222D7FF34(v49, v50);
  }
}

void sub_222D7F95C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_222D7F9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = sub_222D8356C();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_222D72160(0, &qword_27D044C18, 0x277CF1A80);
  v6 = sub_222D835DC();

LABEL_6:
  v7 = [v3 initWithTableName:v5 columns:v6];

  return v7;
}

id sub_222D7FA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {
    v10 = sub_222D8356C();

    if (a4)
    {
LABEL_3:
      v11 = sub_222D8356C();

      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  if (a6 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_222D8347C();
    sub_222D7FF34(a5, a6);
  }

  v13 = [v6 initWithIntentID:v10 eventType:v11 eventData:v12];

  return v13;
}

id sub_222D7FB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_222D834DC();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_222D834BC();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_222D834BC();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_222D7FC94(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

id sub_222D7FCC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222D8356C();
  v5 = [a3 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  return v5;
}

uint64_t sub_222D7FD08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044C10, &qword_222D855B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222D7FDAC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_222D7FDEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_222D7FE70(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_222D8357C();

  return v4;
}

uint64_t sub_222D7FED0(void *a1)
{
  v1 = [a1 eventData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222D8348C();

  return v3;
}

uint64_t sub_222D7FF34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_222D73124(a1, a2);
  }

  return a1;
}

uint64_t sub_222D7FF68@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for CustomSignal();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EntityRejection();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = sub_222D8341C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  sub_222D8340C();
  switch(v16)
  {
    case 1:
      type metadata accessor for IntentResult();
      sub_222D80A24(&qword_280FEA470, type metadata accessor for IntentResult);
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_5_2();
      result = OUTLINED_FUNCTION_4_3();
      if (!v20)
      {
        goto LABEL_13;
      }

      return result;
    case 2:
      type metadata accessor for DisambiguationOffer();
      sub_222D80A24(&qword_27D044C58, type metadata accessor for DisambiguationOffer);
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_5_2();
      result = OUTLINED_FUNCTION_4_3();
      if (!v20)
      {
        goto LABEL_13;
      }

      return result;
    case 3:
      type metadata accessor for DisambiguationResult();
      sub_222D80A24(&qword_27D044C50, type metadata accessor for DisambiguationResult);
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_5_2();
      result = OUTLINED_FUNCTION_4_3();
      if (!v20)
      {
        goto LABEL_13;
      }

      return result;
    case 4:
      type metadata accessor for ConfirmationOffer();
      sub_222D80A24(&qword_27D044C48, type metadata accessor for ConfirmationOffer);
      OUTLINED_FUNCTION_0_4();
      if (v2)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 5:
      type metadata accessor for ConfirmationResult();
      sub_222D80A24(&qword_27D044C40, type metadata accessor for ConfirmationResult);
      OUTLINED_FUNCTION_0_4();
      if (v2)
      {
        goto LABEL_17;
      }

LABEL_5:

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_2_4();
      return swift_storeEnumTagMultiPayload();
    case 6:
      sub_222D80A24(&qword_27D044C38, type metadata accessor for EntityRejection);
      v23 = v25;
      sub_222D833FC();
      if (v23)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_4_3();
      sub_222D809C4(v15, v24, type metadata accessor for EntityRejection);
      type metadata accessor for IntentEventContent();
      OUTLINED_FUNCTION_2_4();
      return swift_storeEnumTagMultiPayload();
    case 7:
      sub_222D80A24(&qword_27D044C30, type metadata accessor for CustomSignal);
      v22 = v25;
      sub_222D833FC();
      if (v22)
      {
LABEL_17:

        return OUTLINED_FUNCTION_4_3();
      }

      else
      {

        OUTLINED_FUNCTION_4_3();
        sub_222D809C4(v9, v24, type metadata accessor for CustomSignal);
        type metadata accessor for IntentEventContent();
        OUTLINED_FUNCTION_2_4();
        return swift_storeEnumTagMultiPayload();
      }

    default:
      type metadata accessor for IntentStart();
      sub_222D80A24(&qword_280FEA480, type metadata accessor for IntentStart);
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_5_2();
      result = OUTLINED_FUNCTION_4_3();
      if (v20)
      {
        return result;
      }

LABEL_13:
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_2_4();
      return swift_storeEnumTagMultiPayload();
  }
}

SiriIntentEvents::IntentEventType_optional __swiftcall IntentEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222D836BC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222D80498()
{
  result = 0x7453746E65746E69;
  switch(*v0)
  {
    case 1:
      v2 = 0x746E65746E69;
      goto LABEL_9;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      v2 = 0x797469746E65;
LABEL_9:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      break;
    case 7:
      result = 0x69536D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222D805C4()
{
  result = qword_27D044C20;
  if (!qword_27D044C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044C20);
  }

  return result;
}

uint64_t sub_222D806F0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentEventType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentEventType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_222D80884()
{
  result = type metadata accessor for IntentStart();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IntentResult();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DisambiguationOffer();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for DisambiguationResult();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ConfirmationOffer();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ConfirmationResult();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for EntityRejection();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for CustomSignal();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_222D80970()
{
  result = qword_27D044C28;
  if (!qword_27D044C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044C28);
  }

  return result;
}

uint64_t sub_222D809C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_222D80A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_4()
{
  v2 = *(v0 - 88);

  return sub_222D833FC();
}

uint64_t OUTLINED_FUNCTION_1_6()
{
  **(v0 - 96) = *(v0 - 72);

  return type metadata accessor for IntentEventContent();
}

uint64_t OUTLINED_FUNCTION_5_2()
{
}

SiriIntentEvents::IntentResultType_optional __swiftcall IntentResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222D836BC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t IntentResultType.rawValue.getter()
{
  result = 0x64656C696166;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      return result;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_222D80BFC@<X0>(unint64_t *a1@<X8>)
{
  result = IntentResultType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t IntentResult.intentType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IntentResult.intentData.getter()
{
  v1 = *(v0 + 40);
  sub_222D72600(v1, *(v0 + 48));
  return v1;
}

uint64_t IntentResult.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriIntentEvents12IntentResult_timestamp;
  v4 = sub_222D834DC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t IntentResult.__allocating_init(intentType:type:intent:)(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v8 = OUTLINED_FUNCTION_5_0();
  IntentResult.init(intentType:type:intent:)(a1, a2, a3, a4);
  return v8;
}

uint64_t IntentResult.init(intentType:type:intent:)(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = sub_222D834DC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v15) = *a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v15;
  v17 = objc_opt_self();
  v29[0] = 0;
  v18 = [v17 archivedDataWithRootObject:a4 requiringSecureCoding:0 error:v29];
  v19 = v29[0];
  if (v18)
  {
    v20 = sub_222D8348C();
    v22 = v21;

    *(v4 + 40) = v20;
    *(v4 + 48) = v22;
    sub_222D834CC();

    (*(v12 + 32))(v4 + OBJC_IVAR____TtC16SiriIntentEvents12IntentResult_timestamp, v16, v9);
  }

  else
  {
    v23 = v19;
    sub_222D8345C();

    swift_willThrow();
    v24 = *(v4 + 24);

    type metadata accessor for IntentResult();
    v25 = *(*v4 + 48);
    v26 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  v27 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t type metadata accessor for IntentResult()
{
  result = qword_280FEAAA0;
  if (!qword_280FEAAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntentResult.__allocating_init(intentType:type:intent:timestamp:)(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5)
{
  v10 = OUTLINED_FUNCTION_5_0();
  IntentResult.init(intentType:type:intent:timestamp:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t IntentResult.init(intentType:type:intent:timestamp:)(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = *a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = v8;
  v25[0] = 0;
  v9 = [objc_opt_self() archivedDataWithRootObject:a4 requiringSecureCoding:0 error:v25];
  v10 = v25[0];
  if (v9)
  {
    v11 = sub_222D8348C();
    v13 = v12;

    *(v5 + 40) = v11;
    *(v5 + 48) = v13;
    v14 = OBJC_IVAR____TtC16SiriIntentEvents12IntentResult_timestamp;
    v15 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v15);
    (*(v16 + 32))(v5 + v14, a5);
  }

  else
  {
    v17 = v10;
    sub_222D8345C();

    swift_willThrow();
    v18 = sub_222D834DC();
    OUTLINED_FUNCTION_1(v18);
    (*(v19 + 8))(a5);
    v20 = *(v5 + 24);

    type metadata accessor for IntentResult();
    v21 = *(*v5 + 48);
    v22 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_222D81274()
{
  BYTE8(v6) = 0;
  sub_222D8365C();
  MEMORY[0x223DCC4E0](0xD000000000000019, 0x8000000222D86210);
  MEMORY[0x223DCC4E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x223DCC4E0](0x203A65707974202CLL, 0xE800000000000000);
  *&v6 = *(v0 + 32);
  sub_222D8366C();
  MEMORY[0x223DCC4E0](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_222D834DC();
  sub_222D73904(&qword_280FEA498);
  v1 = sub_222D8376C();
  MEMORY[0x223DCC4E0](v1);

  MEMORY[0x223DCC4E0](0x746E65746E69202CLL, 0xEE00203A61746144);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = sub_222D8346C();
  MEMORY[0x223DCC4E0](v4);

  MEMORY[0x223DCC4E0](41, 0xE100000000000000);
  return *(&v6 + 1);
}