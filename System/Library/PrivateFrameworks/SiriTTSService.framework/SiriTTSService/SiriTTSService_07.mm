uint64_t sub_1B1B1C994(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B1C2CBC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v2[OBJC_IVAR____TtC14SiriTTSService28HTMLSpeakableStringExtractor__speakableString];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC14SiriTTSService28HTMLSpeakableStringExtractor_elements] = MEMORY[0x1E69E7CC0];
  v2[OBJC_IVAR____TtC14SiriTTSService28HTMLSpeakableStringExtractor_isInSpeakableRange] = 1;
  sub_1B1C2CBB8();
  result = sub_1B1C2CB78();
  if (v9)
  {
    v10 = &v2[OBJC_IVAR____TtC14SiriTTSService28HTMLSpeakableStringExtractor_htmlString];
    *v10 = result;
    v10[1] = v9;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for HTMLSpeakableStringExtractor();
    v11 = objc_msgSendSuper2(&v12, sel_init);
    sub_1B1A94524(a1, a2);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B1CAA0()
{
  v1 = (v0 + OBJC_IVAR____TtC14SiriTTSService28HTMLSpeakableStringExtractor__speakableString);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1[1] == 0xE000000000000000;
  }

  if (v3 || (v4 = *v1, v5 = v1[1], (sub_1B1C2D7A8() & 1) != 0))
  {
    v6 = [objc_allocWithZone(SiriTTSHTMLSAXParser) init];
    [v6 setDelegate_];
    v7 = *(v0 + OBJC_IVAR____TtC14SiriTTSService28HTMLSpeakableStringExtractor_htmlString);
    v8 = *(v0 + OBJC_IVAR____TtC14SiriTTSService28HTMLSpeakableStringExtractor_htmlString + 8);
    v9 = sub_1B1C2CB28();
    [v6 parse_];

    v2 = *v1;
    v10 = v1[1];
  }

  return v2;
}

uint64_t sub_1B1B1CBA0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14SiriTTSService28HTMLSpeakableStringExtractor_elements;
  swift_beginAccess();
  v3 = *(v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 1819112552;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 2036625250;
  *(inited + 56) = 0xE400000000000000;
  v5 = sub_1B1B8E83C(v3, inited);
  swift_setDeallocating();
  sub_1B1AC9708();
  if (v5)
  {
    return 0;
  }

  v6 = *(v1 + v2);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1B1C361C0;
  *(v7 + 32) = 1819112552;
  *(v7 + 40) = 0xE400000000000000;
  v8 = sub_1B1B8E83C(v6, v7);
  swift_setDeallocating();
  sub_1B1AC9708();
  if (v8)
  {
    return 0;
  }

  v9 = *(v1 + v2);
  if ((v10 = *(v9 + 16)) == 0)
  {
    return 0;
  }

  else
  {
    v31 = v9 + 32;

    v12 = 0;
    v13 = 1;
    v32 = result;
    while (1)
    {
      v14 = v13;
      if (v12 == v10)
      {

        return v14;
      }

      v15 = v12;
      if (v12 >= *(result + 16))
      {
        break;
      }

      v13 = 0;
      ++v12;
      if (v14)
      {
        v16 = (v31 + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = qword_1EB761508;

        if (v19 != -1)
        {
          swift_once();
        }

        v20 = qword_1EB772D68;
        if (*(qword_1EB772D68 + 16))
        {
          v21 = *(qword_1EB772D68 + 40);
          sub_1B1C2D888();
          sub_1B1C2CC48();
          sub_1B1C2D8E8();
          v22 = *(v20 + 32);
          OUTLINED_FUNCTION_1_6();
          v25 = ~v24;
          do
          {
            v26 = v23 & v25;
            v27 = (1 << (v23 & v25)) & *(v20 + 56 + (((v23 & v25) >> 3) & 0xFFFFFFFFFFFFFF8));
            v13 = v27 != 0;
            if (!v27)
            {
              break;
            }

            v28 = (*(v20 + 48) + 16 * v26);
            if (*v28 == v18 && v28[1] == v17)
            {
              break;
            }

            v30 = sub_1B1C2D7A8();
            v23 = v26 + 1;
          }

          while ((v30 & 1) == 0);
        }

        else
        {
          v13 = 0;
        }

        result = v32;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B1CE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC14SiriTTSService28HTMLSpeakableStringExtractor_elements;
  OUTLINED_FUNCTION_0();

  sub_1B1B36EEC();
  v7 = *(*(v3 + v6) + 16);
  sub_1B1B3DB8C(v7);
  v8 = *(v3 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v3 + v6) = v8;
  return swift_endAccess();
}

uint64_t sub_1B1B1CF5C()
{
  if (sub_1B1B1CBA0())
  {
    OUTLINED_FUNCTION_0();
    MEMORY[0x1B27381B0](10, 0xE100000000000000);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_0();
  sub_1B1B1CFE0();
  swift_endAccess();
}

void sub_1B1B1CFE0()
{
  if (*(*v0 + 16))
  {
    sub_1B1B201F0();
    if (!v1)
    {
      sub_1B1B1DE64(*(*v0 + 16) - 1);
    }
  }
}

uint64_t sub_1B1B1D08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1B1CBA0();
  if (result)
  {
    OUTLINED_FUNCTION_0();
    MEMORY[0x1B27381B0](a2, a3);
    return swift_endAccess();
  }

  return result;
}

uint64_t SpeakableStringExtractor.InputType.hashValue.getter()
{
  v1 = *v0;
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](v1);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B1D2B8()
{
  v1 = *v0;
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](v1);
  return sub_1B1C2D8E8();
}

uint64_t SpeakableStringExtractor.language.getter()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSSpeakableStringExtractor_language);
  v2 = *(v0 + OBJC_IVAR___SiriTTSSpeakableStringExtractor_language + 8);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t SpeakableStringExtractor.data.getter()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSSpeakableStringExtractor_data);
  v2 = *(v0 + OBJC_IVAR___SiriTTSSpeakableStringExtractor_data + 8);
  v3 = OUTLINED_FUNCTION_43_0();
  sub_1B1AA64DC(v3, v4);
  return OUTLINED_FUNCTION_43_0();
}

id SpeakableStringExtractor.init(language:data:inputType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *a5;
  v7 = &v5[OBJC_IVAR___SiriTTSSpeakableStringExtractor_language];
  *v7 = a1;
  v7[1] = a2;
  v5[OBJC_IVAR___SiriTTSSpeakableStringExtractor_inputType] = v6;
  v8 = &v5[OBJC_IVAR___SiriTTSSpeakableStringExtractor_data];
  *v8 = a3;
  v8[1] = a4;
  v10.receiver = v5;
  v10.super_class = type metadata accessor for SpeakableStringExtractor();
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1B1B1D46C()
{
  v1 = sub_1B1B1D694(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (sub_1B1C2CC68() < 1)
    {
    }

    else
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v6 = v0 + OBJC_IVAR___SiriTTSSpeakableStringExtractor_language;
      v7 = *(v0 + OBJC_IVAR___SiriTTSSpeakableStringExtractor_language);
      v8 = *(v6 + 8);
      v9 = sub_1B1C2CB28();
      [v5 setLanguage_];

      sub_1B1B1FF14(v3, v4, v5);
      v10 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v11 = sub_1B1C2CB28();
      [v10 setLanguage_];

      type metadata accessor for SentenceBreakException();
      swift_allocObject();

      v12 = sub_1B1BFB9B4(v7, v8);
      MEMORY[0x1EEE9AC00](v12);
      sub_1B1C2D038();
    }
  }
}

uint64_t sub_1B1B1D694(uint64_t a1)
{
  v2 = sub_1B1C2CBC8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = *(a1 + OBJC_IVAR___SiriTTSSpeakableStringExtractor_inputType);
  v5 = a1 + OBJC_IVAR___SiriTTSSpeakableStringExtractor_data;
  v6 = *(a1 + OBJC_IVAR___SiriTTSSpeakableStringExtractor_data);
  v7 = *(v5 + 8);
  if (v4)
  {
    objc_allocWithZone(type metadata accessor for HTMLSpeakableStringExtractor());
    sub_1B1AA64DC(v6, v7);
    v8 = sub_1B1B1C994(v6, v7);
    v9 = sub_1B1B1CAA0();
  }

  else
  {
    sub_1B1C2CBB8();
    return sub_1B1C2CB78();
  }

  return v9;
}

uint64_t sub_1B1B1D794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char *a8, uint64_t (*a9)(void), uint64_t a10)
{
  v34 = a6;
  v35 = a8;
  v33 = a7;
  v14 = sub_1B1C2BEA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B1C2CE08();
  v20 = MEMORY[0x1B27380D0](v19);
  v22 = v21;

  v36 = v20;
  v37 = v22;
  sub_1B1C2BE68();
  sub_1B1A8EDAC();
  v23 = sub_1B1C2D388();
  v25 = v24;
  (*(v15 + 8))(v18, v14);

  if (sub_1B1C2CC68() < 1)
  {

    v30 = 1;
  }

  else
  {
    sub_1B1B1FF14(v23, v25, v34);
    v36 = 0;
    v37 = 0xE000000000000000;
    MEMORY[0x1EEE9AC00](v26);
    *(&v32 - 12) = &v36;
    *(&v32 - 11) = v23;
    v27 = v33;
    *(&v32 - 10) = v25;
    *(&v32 - 9) = v27;
    *(&v32 - 8) = a1;
    *(&v32 - 7) = a2;
    *(&v32 - 6) = a4;
    *(&v32 - 5) = a5;
    v28 = v35;
    *(&v32 - 4) = v35;
    *(&v32 - 3) = a9;
    *(&v32 - 2) = a10;
    sub_1B1C2D038();

    v29 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v29 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v30 = a9();
      *v28 = v30 & 1;
    }

    else
    {
      v30 = *v28;
    }
  }

  return v30 & 1;
}

uint64_t sub_1B1B1DA10(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t (*a13)(uint64_t, uint64_t))
{
  v48 = a8;
  v18 = sub_1B1C2BEA8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a4[1];
  v24 = *a4 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v23) & 0xF;
  }

  if (!v24)
  {
    MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C4AA70);
  }

  v46 = a2;
  v47 = a5;
  v25 = sub_1B1C2CE08();
  v26 = MEMORY[0x1B27380D0](v25);
  v28 = v27;

  if (sub_1B1BFBCAC())
  {
    MEMORY[0x1B27381B0](v26, v28);
LABEL_20:

    return 1;
  }

  v49 = v26;
  v50 = v28;
  sub_1B1C2BE68();
  sub_1B1A8EDAC();
  v29 = sub_1B1C2D388();
  v31 = v30;
  (*(v19 + 8))(v22, v18);

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_20;
  }

  v33 = 0xEE005C303030313DLL;
  MEMORY[0x1B27381B0](v29, v31);

  if (v48 >> 14 || a1 >= 0x4000)
  {
    v34 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v34 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v46 >> 14 == 4 * v34)
    {
      v35 = sub_1B1C2CC68();
      v36 = 0xEE005C303532313DLL;
      if (v35 - 100 < 0xC8)
      {
        v36 = 0xEE005C303030313DLL;
      }

      if (v35 >= 0x64)
      {
        v33 = v36;
      }

      else
      {
        v33 = 0xED00005C3030363DLL;
      }
    }

    else
    {
      v38 = *a4;
      v39 = a4[1];

      v40 = sub_1B1C2CC68();

      v41 = 0xED00005C3035363DLL;
      if (v40 - 100 >= 0x64)
      {
        v41 = 0xED00005C3030383DLL;
      }

      if (v40 >= 0x64)
      {
        v33 = v41;
      }

      else
      {
        v33 = 0xED00005C3030343DLL;
      }
    }
  }

  MEMORY[0x1B27381B0](0x65737561705C1B20, v33);
  v42 = *a4;
  v43 = a4[1];

  LOBYTE(v42) = a13(v42, v43);

  *a12 = v42 & 1;
  v44 = a4[1];
  *a4 = 0;
  a4[1] = 0xE000000000000000;

  return *a12;
}

id SpeakableStringExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B1B1DDD8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1B1B1DE64(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B1C00CB4(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_1B1AC9DF0((v7 + 48), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

BOOL sub_1B1B1DEEC(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1B1C2CB58();
  sub_1B1C2D888();
  sub_1B1C2CC48();
  v6 = sub_1B1C2D8E8();

  v7 = *(v4 + 32);
  OUTLINED_FUNCTION_1_6();
  v9 = ~v8;
  while (1)
  {
    v10 = v6 & v9;
    v11 = (1 << (v6 & v9)) & *(v4 + 56 + (((v6 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      v19 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *v25;
      v21 = a2;
      sub_1B1B1EE14(v21, v10, isUniquelyReferenced_nonNull_native);
      *v25 = v27;
      *a1 = v21;
      return v11 == 0;
    }

    v12 = *(*(v4 + 48) + 8 * v10);
    v13 = sub_1B1C2CB58();
    v15 = v14;
    if (v13 == sub_1B1C2CB58() && v15 == v16)
    {

      goto LABEL_12;
    }

    v18 = sub_1B1C2D7A8();

    if (v18)
    {
      break;
    }

    v6 = v10 + 1;
  }

LABEL_12:
  v22 = *(*(v4 + 48) + 8 * v10);
  *a1 = v22;
  v23 = v22;
  return v11 == 0;
}

uint64_t sub_1B1B1E08C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B1C2D478();

    if (v9)
    {

      sub_1B1AF6328();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_1B1C2D468();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_1B1B1E290(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_1B1B1EB6C(v18 + 1);
        }

        v19 = v8;
        sub_1B1B1ED90(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_1B1AF6328();
    v11 = *(v6 + 40);
    v12 = sub_1B1C2D238();
    v13 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v6 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        v20 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v3;
        v19 = a2;
        sub_1B1B1EFE4(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v25;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_1B1C2D248();

      if (v16)
      {
        break;
      }

      v12 = v14 + 1;
    }

    v22 = *(*(v6 + 48) + 8 * v14);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  return result;
}

uint64_t sub_1B1B1E290(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762300, &qword_1B1C37918);
    v2 = sub_1B1C2D4E8();
    v16 = v2;
    sub_1B1C2D458();
    while (1)
    {
      if (!sub_1B1C2D488())
      {

        return v2;
      }

      sub_1B1AF6328();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1B1B1EB6C(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_1B1C2D238();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B1B1E44C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622E8, &qword_1B1C37900);
  result = sub_1B1C2D4D8();
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
      sub_1B1ADFF70(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_1B1C2D888();
    sub_1B1C2CC48();
    result = sub_1B1C2D8E8();
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

uint64_t sub_1B1B1E6A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622F8, &qword_1B1C37910);
  result = sub_1B1C2D4D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v29 = v2;
  v30 = v3;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1B1ADFF70(0, (v28 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1B1C2CB58();
    sub_1B1C2D888();
    sub_1B1C2CC48();
    v19 = sub_1B1C2D8E8();

    v20 = -1 << *(v6 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v17;
    ++*(v6 + 16);
    v3 = v30;
    if (!v11)
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
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B1B1E920(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622F0, &qword_1B1C37908);
  result = sub_1B1C2D4D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1B1ADFF70(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1B1C2D888();
    MEMORY[0x1B2738D60](v17);
    result = sub_1B1C2D8E8();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B1B1EB6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762300, &qword_1B1C37918);
  result = sub_1B1C2D4D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1B1ADFF70(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_1B1C2D238();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1B1B1ED90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1B1C2D238();
  v5 = -1 << *(a2 + 32);
  result = sub_1B1C2D448();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B1B1EE14(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B1B1E6A8(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1B1B1F898(v7 + 1);
LABEL_10:
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1B1C2CB58();
      sub_1B1C2D888();
      sub_1B1C2CC48();
      v15 = sub_1B1C2D8E8();

      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for URLResourceKey(0);
        v17 = *(*(v13 + 48) + 8 * a2);
        v18 = sub_1B1C2CB58();
        v20 = v19;
        if (v18 == sub_1B1C2CB58() && v20 == v21)
        {
          goto LABEL_19;
        }

        v23 = sub_1B1C2D7A8();

        if (v23)
        {
          goto LABEL_20;
        }

        v15 = a2 + 1;
      }
    }

    result = sub_1B1B1F284();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_1B1C2D808();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

uint64_t sub_1B1B1EFE4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B1B1EB6C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1B1B1FD04(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_1B1C2D238();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1B1AF6328();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_1B1C2D248();

        if (v16)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1B1B1F514();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1B1C2D808();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1B1B1F12C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622E8, &qword_1B1C37900);
  v2 = *v0;
  v3 = sub_1B1C2D4C8();
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

id sub_1B1B1F284()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622F8, &qword_1B1C37910);
  v2 = *v0;
  v3 = sub_1B1C2D4C8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_1B1B1F3D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622F0, &qword_1B1C37908);
  v2 = *v0;
  v3 = sub_1B1C2D4C8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_1B1B1F514()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762300, &qword_1B1C37918);
  v2 = *v0;
  v3 = sub_1B1C2D4C8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1B1B1F664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622E8, &qword_1B1C37900);
  result = sub_1B1C2D4D8();
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
        sub_1B1C2D888();

        sub_1B1C2CC48();
        result = sub_1B1C2D8E8();
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

uint64_t sub_1B1B1F898(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622F8, &qword_1B1C37910);
  result = sub_1B1C2D4D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_1B1C2CB58();
        sub_1B1C2D888();
        v19 = v17;
        sub_1B1C2CC48();
        v20 = sub_1B1C2D8E8();

        v21 = -1 << *(v6 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v6 + 48) + 8 * v24) = v19;
        ++*(v6 + 16);
        v3 = v30;
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
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
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

uint64_t sub_1B1B1FAE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622F0, &qword_1B1C37908);
  result = sub_1B1C2D4D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1B1C2D888();
        MEMORY[0x1B2738D60](v16);
        result = sub_1B1C2D8E8();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v26;
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

uint64_t sub_1B1B1FD04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762300, &qword_1B1C37918);
  result = sub_1B1C2D4D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_1B1C2D238();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v26;
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

void sub_1B1B1FF14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1C2CB28();
  [a3 setString_];
}

unint64_t sub_1B1B1FFA8()
{
  result = qword_1EB762258;
  if (!qword_1EB762258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762258);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeakableStringExtractor.InputType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SpeakableStringExtractor.InputType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1B1B201F0()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B1C00CB4(v1);
    v1 = v7;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = v1 + 16 * v3;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    *(v1 + 16) = v3;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void TTSAsset.download(reservation:useBattery:progress:then:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = 6;
  }

  v17 = a4;
  v18 = a5;
  OUTLINED_FUNCTION_0_7();
  v14 = 1107296256;
  v15 = sub_1B1B203B8;
  v16 = &block_descriptor_3;
  v11 = _Block_copy(&v13);

  v17 = a6;
  v18 = a7;
  OUTLINED_FUNCTION_0_7();
  v14 = 1107296256;
  v15 = sub_1B1B20428;
  v16 = &block_descriptor_3;
  v12 = _Block_copy(&v13);

  [v7 downloadWithOptions:v10 progress:v11 then:v12];
  _Block_release(v12);
  _Block_release(v11);
}

uint64_t sub_1B1B203B8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

void sub_1B1B20428(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t TTSAsset.download(options:progress:then:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a4)
  {
    return a4(v4);
  }

  return result;
}

void sub_1B1B206DC(uint64_t a1, void (**a2)(void, void))
{
  a2[2](a2, a1);

  _Block_release(a2);
}

uint64_t (*TTSAsset.purge(then:)(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result(0);
  }

  return result;
}

void *sub_1B1B20A50()
{
  type metadata accessor for InlineStreamingStorage();
  v0 = swift_allocObject();
  result = sub_1B1B20A8C();
  qword_1ED9A4FF8 = v0;
  return result;
}

void *sub_1B1B20A8C()
{
  v1 = sub_1B1C2D128();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  v7 = sub_1B1C2D118();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v9 = sub_1B1C2C9D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_16();
  v11 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762310, &unk_1B1C379A0);
  v0[3] = sub_1B1C2CAB8();
  v0[4] = v11;
  v0[5] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  sub_1B1AA7918();
  sub_1B1C2C9B8();
  sub_1B1ACD030(&qword_1ED9A4EC8, MEMORY[0x1E69E8030]);
  sub_1B1C2D958();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v1);
  v0[6] = sub_1B1C2D158();
  return v0;
}

uint64_t sub_1B1B20CF4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x1B2738320]();
  sub_1B1B3E0D4(*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  return swift_endAccess();
}

uint64_t sub_1B1B20D8C(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, void *))
{
  [a1 lock];
  a4(a2, a3);
  [a1 unlock];
}

uint64_t sub_1B1B20E18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 lock];
  sub_1B1B20ED0(a2, a3, a4, &v10);
  [a1 unlock];
  if (v4)
  {
  }

  else
  {

    a2 = v10;
  }

  return a2;
}

void sub_1B1B20ED0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = sub_1B1A9547C(v7);

  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      v11 = 0;
      goto LABEL_16;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B2738A20](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = &v10[OBJC_IVAR___SiriTTSInlineStreamingSignal_text];
    v13 = *&v10[OBJC_IVAR___SiriTTSInlineStreamingSignal_text];
    v14 = *v12 == a2 && *(v12 + 1) == a3;
    if (v14 || (sub_1B1C2D7A8() & 1) != 0)
    {

LABEL_16:
      *a4 = v11;
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1B1B21004()
{
  v1 = *(v0 + 40);

  [v1 lock];
  sub_1B1B2107C(v0);
  [v1 unlock];
}

void sub_1B1B2107C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762308, &qword_1B1C37998);
  sub_1B1C2CAC8();
  swift_endAccess();
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v5 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v5, qword_1ED9A9120);
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D098();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B1A8A000, v6, v7, "Cleared inline streaming object storage.", v8, 2u);
    MEMORY[0x1B2739FD0](v8, -1, -1);
  }
}

void sub_1B1B21254(void *a1, void *a2)
{
  v4 = sub_1B1C2C988();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1C2C9D8();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B1B22AF4(a2);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    swift_beginAccess();
    v16 = a1[3];

    v17 = sub_1B1A9EC94(v14, v15, v16);
    v19 = v18;

    if (v17)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v19;
      v21 = a1[6];
      v22 = swift_allocObject();
      v22[2] = a2;
      v22[3] = sub_1B1B18A3C;
      v22[4] = v20;
      aBlock[4] = sub_1B1B22B88;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B1A95870;
      aBlock[3] = &block_descriptor_23;
      v23 = _Block_copy(aBlock);
      v24 = a2;

      sub_1B1C2C9A8();
      aBlock[10] = MEMORY[0x1E69E7CC0];
      sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
      sub_1B1AA6F40();
      sub_1B1C2D418();
      MEMORY[0x1B2738610](0, v11, v7, v23);
      _Block_release(v23);

      (*(v41 + 8))(v7, v4);
      (*(v39 + 8))(v11, v40);

      return;
    }

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v25 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v25, qword_1ED9A9120);
    v26 = a2;
    v27 = sub_1B1C2C888();
    v28 = sub_1B1C2D098();
    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_10;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v29 = 136315394;
    v32 = sub_1B1B22AF4(v26);
    v34 = v33;

    if (v34)
    {
      v35 = sub_1B1A930E4(v32, v34, aBlock);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v30 = v26;
      v36 = v26;
      _os_log_impl(&dword_1B1A8A000, v27, v28, "Notification for %s has not started. Cache object %@", v29, 0x16u);
      sub_1B1B1AF0C(v30);
      MEMORY[0x1B2739FD0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1B2739FD0](v31, -1, -1);
      MEMORY[0x1B2739FD0](v29, -1, -1);
LABEL_10:

      swift_beginAccess();
      v37 = v26;
      MEMORY[0x1B2738320]();
      sub_1B1B3E0D4(*((a1[2] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1C2CEC8();
      swift_endAccess();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B1B21778(void *a1, void (*a2)(id))
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = a1;
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D098();
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_7;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v16 = v10;
  *v8 = 136315394;
  v11 = sub_1B1B22AF4(v5);
  v13 = v12;

  if (v13)
  {
    v14 = sub_1B1A930E4(v11, v13, &v16);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v15 = v5;
    _os_log_impl(&dword_1B1A8A000, v6, v7, "Notification for %s is on-going. Posting object immediately %@", v8, 0x16u);
    sub_1B1B1AF0C(v9);
    MEMORY[0x1B2739FD0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2739FD0](v10, -1, -1);
    MEMORY[0x1B2739FD0](v8, -1, -1);
LABEL_7:

    a2(v5);
    return;
  }

  __break(1u);
}

void sub_1B1B21958(void *a1)
{
  v2 = *(v1 + 40);
  v7 = a1;

  [v2 lock];
  OUTLINED_FUNCTION_1_8();
  sub_1B1B219F8(v3, v4, v5, v6);
  [v2 unlock];
}

uint64_t sub_1B1B219F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a3;
  v74 = a4;
  v69 = sub_1B1C2C988();
  v7 = *(v69 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B1C2C9D8();
  v10 = *(v67 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v13 = sub_1B1C2C8A8();
  v14 = __swift_project_value_buffer(v13, qword_1ED9A9120);
  v15 = a1;
  v65 = v14;
  v16 = sub_1B1C2C888();
  v17 = sub_1B1C2D0D8();

  v18 = os_log_type_enabled(v16, v17);
  v59 = v10;
  v19 = v7;
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1B1A930E4(*&v15[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier], *&v15[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8], aBlock);
    _os_log_impl(&dword_1B1A8A000, v16, v17, "Start streaming for %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1B2739FD0](v21, -1, -1);
    MEMORY[0x1B2739FD0](v20, -1, -1);
  }

  v22 = *&v15[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  v23 = *&v15[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8];
  v24 = swift_allocObject();
  v25 = v74;
  *(v24 + 16) = v73;
  *(v24 + 24) = v25;
  swift_beginAccess();

  v26 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a2 + 24);
  v28 = v24;
  v29 = v23;
  sub_1B1B37380(sub_1B1B18A74, v28, v22, v23, isUniquelyReferenced_nonNull_native);
  *(a2 + 24) = v79;
  swift_endAccess();
  swift_beginAccess();
  v72 = *(a2 + 16);
  result = sub_1B1A9547C(v72);
  if (result)
  {
    v71 = result;
    if (result >= 1)
    {
      v57[1] = v4;
      v70 = a2;
      v31 = v72;
      v75 = v72 & 0xC000000000000001;
      v61 = v78;
      v60 = (v19 + 8);
      ++v59;

      v32 = 0;
      *&v33 = 138412290;
      v58 = v33;
      v34 = v71;
      v64 = v15;
      v63 = v22;
      v62 = v23;
      while (1)
      {
        if (v75)
        {
          v35 = MEMORY[0x1B2738A20](v32, v31);
        }

        else
        {
          v35 = *(v31 + 8 * v32 + 32);
        }

        v36 = v35;
        v37 = sub_1B1B22AF4(v35);
        if (v38)
        {
          if (v37 == v22 && v38 == v29)
          {

LABEL_19:
            v41 = v36;
            v42 = sub_1B1C2C888();
            v43 = sub_1B1C2D098();

            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              *v44 = v58;
              *(v44 + 4) = v41;
              *v45 = v41;
              v46 = v41;
              _os_log_impl(&dword_1B1A8A000, v42, v43, "Found cached objects %@", v44, 0xCu);
              sub_1B1B1AF0C(v45);
              MEMORY[0x1B2739FD0](v45, -1, -1);
              MEMORY[0x1B2739FD0](v44, -1, -1);
            }

            v47 = *(v70 + 48);
            v48 = swift_allocObject();
            v49 = v74;
            v48[2] = v73;
            v48[3] = v49;
            v48[4] = v41;
            v78[2] = sub_1B1B22B58;
            v78[3] = v48;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            v78[0] = sub_1B1A95870;
            v78[1] = &block_descriptor_4;
            v50 = _Block_copy(aBlock);

            v51 = v41;
            v52 = v66;
            sub_1B1C2C9A8();
            v76 = MEMORY[0x1E69E7CC0];
            sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
            sub_1B1AA6F40();
            v53 = v68;
            v54 = v69;
            sub_1B1C2D418();
            MEMORY[0x1B2738610](0, v52, v53, v50);
            _Block_release(v50);

            (*v60)(v53, v54);
            (*v59)(v52, v67);

            v15 = v64;
            v22 = v63;
            v29 = v62;
            v34 = v71;
            v31 = v72;
            goto LABEL_22;
          }

          v40 = sub_1B1C2D7A8();

          if (v40)
          {
            goto LABEL_19;
          }
        }

LABEL_22:
        if (v34 == ++v32)
        {

          a2 = v70;
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
LABEL_24:
    swift_beginAccess();
    sub_1B1B225D8((a2 + 16), v15);
    v56 = v55;
    result = sub_1B1A9547C(*(a2 + 16));
    if (result >= v56)
    {
      sub_1B1C00ADC(v56, result);
      return swift_endAccess();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B22138(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  v5 = *&a2[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8];
  swift_beginAccess();
  v6 = sub_1B1B70654();
  swift_endAccess();
  sub_1B1A949B4(v6);
  swift_beginAccess();
  sub_1B1B22874((a1 + 32), a2);
  v8 = v7;
  result = sub_1B1A9547C(*(a1 + 32));
  if (result < v8)
  {
    __break(1u);
  }

  else
  {
    sub_1B1C00B7C(v8, result);
    return swift_endAccess();
  }

  return result;
}

uint64_t InlineStreamingStorage.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return v0;
}

uint64_t InlineStreamingStorage.__deallocating_deinit()
{
  InlineStreamingStorage.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1B1B2236C(uint64_t a1, char *a2)
{
  v4 = sub_1B1A9547C(a1);
  v5 = 0;
  v6 = &a2[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  while (1)
  {
    if (v4 == v5)
    {
LABEL_12:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2738A20](v5, a1);
      goto LABEL_6;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v7 = *(a1 + 8 * v5 + 32);
LABEL_6:
    v8 = v7;
    v9 = sub_1B1B22AF4(v7);
    if (v10)
    {
      if (v9 == *v6 && v10 == *(v6 + 1))
      {

        return;
      }

      v12 = sub_1B1C2D7A8();

      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B1B224B0(uint64_t a1, char *a2)
{
  v4 = sub_1B1A9547C(a1);
  v5 = 0;
  v6 = &a2[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  while (1)
  {
    if (v4 == v5)
    {
LABEL_17:
      v8 = a2;
      goto LABEL_18;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v7 = MEMORY[0x1B2738A20](v5, a1);
LABEL_6:
    v8 = v7;
    v9 = &v7[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
    v10 = *&v7[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
    if (*v9 == *v6 && *(v9 + 1) == *(v6 + 1))
    {

LABEL_18:
      return;
    }

    v12 = sub_1B1C2D7A8();

    if (v12)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_20;
    }
  }

  if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a1 + 8 * v5 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1B1B225D8(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_1B1B2236C(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_48;
  }

  if (v7)
  {
    sub_1B1A9547C(v4);
LABEL_48:

    return;
  }

  v29 = v5;
  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_57;
  }

  v10 = &v5[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  while (1)
  {
    if (v4 >> 62)
    {
      v11 = sub_1B1C2D468();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == v11)
    {
      goto LABEL_47;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B2738A20](v9, v4);
      goto LABEL_13;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v12 = *(v4 + 8 * v9 + 32);
LABEL_13:
    v13 = v12;
    v14 = sub_1B1B22AF4(v12);
    if (v15)
    {
      if (v14 == *v10 && v15 == *(v10 + 1))
      {

        goto LABEL_40;
      }

      v17 = sub_1B1C2D7A8();

      if (v17)
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

    if (v8 != v9)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B2738A20](v8, v4);
        v19 = MEMORY[0x1B2738A20](v9, v4);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8 >= v20)
        {
          goto LABEL_55;
        }

        if (v9 >= v20)
        {
          goto LABEL_56;
        }

        v21 = *(v4 + 32 + 8 * v9);
        v18 = *(v4 + 32 + 8 * v8);
        v19 = v21;
      }

      v22 = v19;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_1B1C00F10(v4);
        v23 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v23) = 0;
      }

      v24 = v4 & 0xFFFFFFFFFFFFFF8;
      v25 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v22;

      if ((v4 & 0x8000000000000000) != 0 || v23)
      {
        v4 = sub_1B1C00F10(v4);
        v24 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_46:
          __break(1u);
LABEL_47:
          v5 = v29;
          goto LABEL_48;
        }
      }

      else if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v9 >= *(v24 + 16))
      {
        goto LABEL_53;
      }

      v26 = v24 + 8 * v9;
      v27 = *(v26 + 32);
      *(v26 + 32) = v18;

      *a1 = v4;
    }

    v28 = __OFADD__(v8++, 1);
    if (v28)
    {
      goto LABEL_52;
    }

LABEL_40:
    v28 = __OFADD__(v9++, 1);
    if (v28)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

void sub_1B1B22874(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_1B1B224B0(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_45;
  }

  if (v7)
  {
    sub_1B1A9547C(v4);
LABEL_45:

    return;
  }

  v30 = a1;
  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_54;
  }

  v29 = v5;
  v10 = &v5[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  while (1)
  {
    if (v4 >> 62)
    {
      v11 = sub_1B1C2D468();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == v11)
    {
      goto LABEL_44;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B2738A20](v9, v4);
      goto LABEL_13;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v12 = *(v4 + 8 * v9 + 32);
LABEL_13:
    v13 = v12;
    v14 = &v12[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
    v15 = *&v12[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
    if (*v14 == *v10 && *(v14 + 1) == *(v10 + 1))
    {
    }

    else
    {
      v17 = sub_1B1C2D7A8();

      if ((v17 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1B2738A20](v8, v4);
            v19 = MEMORY[0x1B2738A20](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v20)
            {
              goto LABEL_52;
            }

            if (v9 >= v20)
            {
              goto LABEL_53;
            }

            v21 = *(v4 + 32 + 8 * v9);
            v18 = *(v4 + 32 + 8 * v8);
            v19 = v21;
          }

          v22 = v19;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = sub_1B1C00F10(v4);
            v23 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v23) = 0;
          }

          v24 = v4 & 0xFFFFFFFFFFFFFF8;
          v25 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v22;

          if ((v4 & 0x8000000000000000) != 0 || v23)
          {
            v4 = sub_1B1C00F10(v4);
            v24 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
LABEL_44:
              v5 = v29;
              goto LABEL_45;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v9 >= *(v24 + 16))
          {
            goto LABEL_50;
          }

          v26 = v24 + 8 * v9;
          v27 = *(v26 + 32);
          *(v26 + 32) = v18;

          *v30 = v4;
        }

        v28 = __OFADD__(v8++, 1);
        if (v28)
        {
          goto LABEL_49;
        }
      }
    }

    v28 = __OFADD__(v9++, 1);
    if (v28)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_1B1B22AF4(void *a1)
{
  v1 = [a1 streamId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CB58();

  return v3;
}

unint64_t sub_1B1B22C04()
{
  result = qword_1EB760F90;
  if (!qword_1EB760F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB760F90);
  }

  return result;
}

void sub_1B1B22C48(void *a1, void *a2, uint64_t a3)
{
  [a1 lock];
  if (!a2)
  {
    v7 = *(a3 + 32);
    *(a3 + 32) = 0;
LABEL_10:

    goto LABEL_11;
  }

  if (*(a3 + 24) > 0)
  {
    v6 = a2;
LABEL_9:
    v7 = *(a3 + 32);
    *(a3 + 32) = a2;
    goto LABEL_10;
  }

  v8 = qword_1EB7612A8;
  v9 = a2;
  if (v8 != -1)
  {
    swift_once();
  }

  if ((byte_1EB7612B0 & 1) == 0)
  {
    goto LABEL_9;
  }

  a2 = v9;
LABEL_11:
  [a1 unlock];
}

void *sub_1B1B22D30()
{
  type metadata accessor for EngineCachingService();
  v0 = swift_allocObject();
  result = EngineCachingService.init()();
  qword_1ED9A5090 = v0;
  return result;
}

uint64_t EngineCachingService.__allocating_init()()
{
  v0 = swift_allocObject();
  EngineCachingService.init()();
  return v0;
}

uint64_t sub_1B1B22DA4()
{
  v1 = *(v0 + 16);

  [v1 lock];
  v2 = *(v0 + 24);
  [v1 unlock];

  return v2;
}

uint64_t sub_1B1B22E04(uint64_t a1)
{
  v3 = *(v1 + 16);

  [v3 lock];
  sub_1B1B22E84(v1, a1);
  [v3 unlock];
}

void sub_1B1B22E84(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2 & ~(a2 >> 63);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2 <= 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v5 = qword_1EB7612A8;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    if (byte_1EB7612B0 == 1)
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v7 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v7, qword_1ED9A9120);
      v8 = v6;
      v9 = sub_1B1C2C888();
      v10 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = v17;
        *v11 = 136315138;
        v12 = [v8 voicePath];
        v13 = sub_1B1C2CB58();
        v15 = v14;

        v16 = sub_1B1A930E4(v13, v15, &v18);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_1B1A8A000, v9, v10, "No active session now, unloading cached engine with path %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1B2739FD0](v17, -1, -1);
        MEMORY[0x1B2739FD0](v11, -1, -1);
      }

      else
      {
      }

      v6 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

uint64_t (*sub_1B1B23098(uint64_t a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_9(a1);
  [v3 lock];
  v4 = *(v2 + 24);
  [v3 unlock];

  *v1 = v4;
  return sub_1B1B2310C;
}

void sub_1B1B23130(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1B1B231C4(v2);
}

void *sub_1B1B23160()
{
  v1 = *(v0 + 16);

  [v1 lock];
  v2 = *(v0 + 32);
  v3 = v2;
  [v1 unlock];

  return v2;
}

void sub_1B1B231C4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1;

  sub_1B1B22C48(v3, a1, v1);
}

void (*sub_1B1B23230(uint64_t a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0_9(a1);
  [v3 lock];
  v4 = *(v2 + 32);
  v5 = v4;
  [v3 unlock];

  *v1 = v4;
  return sub_1B1B232A8;
}

void sub_1B1B232A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    sub_1B1B231C4(v2);
  }

  else
  {
    sub_1B1B231C4(*a1);
  }
}

void *EngineCachingService.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t EngineCachingService.__deallocating_deinit()
{
  EngineCachingService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id sub_1B1B23504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B1C2CB28();

  if (a4)
  {
    v7 = sub_1B1C2CB28();
  }

  else
  {
    v7 = 0;
  }

  v13[0] = 0;
  v8 = [v4 initWithVoicePath:v6 resourcePath:v7 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_1B1C2C058();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1B1B23658()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1B1A91B08(v0);
  v3 = static WorkoutConfig.isClientAllowed(_:)(v1, v2);

  byte_1EB772CF1 = v3;
  return result;
}

BOOL static WorkoutConfig.isClientAllowed(_:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (qword_1EB7612E0 != -1)
  {
    a1 = swift_once();
  }

  v7[0] = v3;
  v7[1] = a2;
  MEMORY[0x1EEE9AC00](a1);
  v6[2] = v7;
  return sub_1B1ABAA5C(sub_1B1ABAB38, v6, v4);
}

uint64_t getEnumTagSinglePayload for WorkoutConfig(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for WorkoutConfig(_BYTE *result, int a2, int a3)
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

uint64_t SignpostHandler.__allocating_init(notificationCenter:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SignpostHandler.init(notificationCenter:)();
  return v3;
}

uint64_t sub_1B1B238CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1B23964();
  }

  return result;
}

void sub_1B1B23964()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B1C2C838();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v14 = sub_1B1C2C7F8();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_engineSelectionInterval))
  {
    v28 = v4;

    v18 = sub_1B1C2C818();
    sub_1B1C2C848();
    v27 = sub_1B1C2D178();

    if (sub_1B1C2D278())
    {

      sub_1B1C2C878();

      if ((*(v8 + 88))(v13, v5) == *MEMORY[0x1E69E93E8])
      {
        v19 = 0;
        v20 = 0;
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v8 + 8))(v13, v5);
        v26 = "engineTag=%s";
        v20 = 2;
        v19 = 1;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = v20;
      *(v21 + 1) = v19;
      *(v21 + 2) = 2080;
      *(v21 + 4) = sub_1B1A930E4(v28, v2, &v29);
      v23 = sub_1B1C2C7D8();
      _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v18, v27, v23, "TTSEngineSelect", v26, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    v24 = OUTLINED_FUNCTION_9_5();
    v25(v24);
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B23C04()
{
  v1 = sub_1B1C2C7F8();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  sub_1B1C2C7E8();
  v7 = sub_1B1C2C818();
  v8 = sub_1B1C2D198();
  if (sub_1B1C2D278())
  {
    v9 = OUTLINED_FUNCTION_20_0();
    *v9 = 0;
    v10 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v7, v8, v10, "TTSServerFirstPacket", "", v9, 2u);
    OUTLINED_FUNCTION_11();
  }

  return (*(v4 + 8))(v0, v1);
}

uint64_t sub_1B1B23DD4()
{
  result = sub_1B1C2C828();
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

id sub_1B1B23EBC(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 lock];
  sub_1B1B25D9C(a2, a3);
  return [a1 unlock];
}

id sub_1B1B23F3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserPreferences();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B1B23F94()
{
  result = sub_1B1C2CB28();
  qword_1EB772D70 = result;
  return result;
}

uint64_t sub_1B1B23FCC()
{
  result = sub_1B1C2CB28();
  qword_1EB772D78 = result;
  return result;
}

uint64_t sub_1B1B24004()
{
  result = sub_1B1C2CB28();
  qword_1EB772D80 = result;
  return result;
}

uint64_t sub_1B1B2403C()
{
  result = sub_1B1C2CB28();
  qword_1EB772D88 = result;
  return result;
}

uint64_t sub_1B1B2407C()
{
  result = sub_1B1C2CB28();
  qword_1EB772D90 = result;
  return result;
}

uint64_t sub_1B1B240B4()
{
  result = sub_1B1C2CB28();
  qword_1EB772D98 = result;
  return result;
}

void static UserPreferences.setSpokenLanguageIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v5 = static UserPreferences.getSpokenLanguageIdentifier()();
  if (v6)
  {
    if (a2)
    {
      v7 = v5 == a1 && v6 == a2;
      if (v7 || (OUTLINED_FUNCTION_7_7() & 1) != 0)
      {

        return;
      }

      v14 = OUTLINED_FUNCTION_7_7();

      if (v14)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_1EB761538 != -1)
  {
    OUTLINED_FUNCTION_4_6();
  }

  v8 = qword_1EB772D98;
  if (a2)
  {
    v9 = sub_1B1C2CB28();
  }

  else
  {
    v9 = 0;
  }

  if (qword_1EB761530 != -1)
  {
    OUTLINED_FUNCTION_3_9();
  }

  v10 = qword_1EB772D90;
  CFPreferencesSetAppValue(v8, v9, qword_1EB772D90);
  CFPreferencesAppSynchronize(v10);
  swift_unknownObjectRelease();
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v11 = qword_1EB772DB0;

  v12 = v11;
  [v12 lock];
  sub_1B1B243F4(v2, a1, a2);
  [v12 unlock];

  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  OUTLINED_FUNCTION_8_5();
  v15 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_9_6(v15, v15);
}

uint64_t static UserPreferences.getSpokenLanguageIdentifier()()
{
  sub_1B1B244C8();
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v0 = qword_1EB772DB0;
  [v0 lock];
  v1 = sub_1B1B24574();
  [v0 unlock];

  return v1;
}

uint64_t sub_1B1B243F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  qword_1EB772DA0 = a2;
  qword_1EB772DA8 = a3;

  if (__OFADD__(qword_1EB772E08, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EB772E08;
  }

  return result;
}

void sub_1B1B244C8()
{
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v0 = qword_1EB772DB0;
  [v0 lock];
  if (qword_1EB761550 != -1)
  {
    swift_once();
  }

  [v0 unlock];
}

uint64_t sub_1B1B24574()
{
  v0 = sub_1B1C2C1C8();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = sub_1B1C2C4D8();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!qword_1EB772DA8)
  {
    if (qword_1EB761538 != -1)
    {
      OUTLINED_FUNCTION_4_6();
    }

    v19 = qword_1EB772D98;
    if (qword_1EB761530 != -1)
    {
      OUTLINED_FUNCTION_3_9();
    }

    v20 = CFPreferencesCopyAppValue(v19, qword_1EB772D90);
    if (v20)
    {
      v38 = v20;
      v21 = swift_dynamicCast();
      v22 = v36;
      v23 = v37;
      if (!v21)
      {
        v22 = 0;
        v23 = 0;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    qword_1EB772DA0 = v22;
    qword_1EB772DA8 = v23;

    if (!qword_1EB772DA8)
    {
      if (qword_1EB772DC0)
      {
        goto LABEL_23;
      }

      sub_1B1C2C4C8();
      v24 = sub_1B1B24ED8();
      if (v25)
      {
        v26 = v25;
        v35 = v24;
        if (qword_1EB761568 != -1)
        {
          OUTLINED_FUNCTION_2_10();
          v24 = v35;
        }

        if (sub_1B1A93A00(v24, v26, qword_1EB772E18))
        {
          qword_1EB772DB8 = v35;
          qword_1EB772DC0 = v26;

LABEL_22:
          (*(v14 + 8))(v18, v11);
LABEL_23:
          qword_1EB772DA0 = qword_1EB772DB8;
          qword_1EB772DA8 = qword_1EB772DC0;

          if (!qword_1EB772DA8)
          {
            qword_1EB772DA0 = sub_1B1B25314();
            qword_1EB772DA8 = v30;
          }

          goto LABEL_25;
        }
      }

      if (qword_1EB761560 != -1)
      {
        swift_once();
      }

      v35 = qword_1EB772E10;
      v27 = sub_1B1C2CB28();
      v33 = v27;
      v34 = sub_1B1C2CB28();
      v28 = [v35 URLForResource:v27 withExtension:0 subdirectory:v34];

      if (v28)
      {
        sub_1B1C2C168();

        (*(v3 + 32))(v10, v8, v0);
        qword_1EB772DB8 = sub_1B1B2513C(v18, v10);
        qword_1EB772DC0 = v29;

        (*(v3 + 8))(v10, v0);
      }

      goto LABEL_22;
    }
  }

LABEL_25:
  v31 = qword_1EB772DA0;

  return v31;
}

uint64_t static UserPreferences.getAvailableLanguageIdentifiers()()
{
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v0 = qword_1EB772DB0;
  [v0 lock];
  if (qword_1EB761568 != -1)
  {
    OUTLINED_FUNCTION_2_10();
  }

  v1 = qword_1EB772E18;

  [v0 unlock];

  return v1;
}

uint64_t static UserPreferences.defaultOutputLanguageIdentifier()()
{
  sub_1B1B244C8();
  v3[0] = 0;
  v3[1] = 0;
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = qword_1EB772DB0;
  [v1 lock];
  sub_1B1B24B48(v0, v3);
  [v1 unlock];

  return v3[0];
}

uint64_t sub_1B1B24B48(uint64_t a1, void *a2)
{
  v5 = sub_1B1C2C1C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v32 - v11;
  v13 = sub_1B1C2C4D8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_1EB772DD0;
  if (qword_1EB772DD0)
  {
    goto LABEL_15;
  }

  v33 = v6;
  v34 = v15;
  v35 = v2;
  sub_1B1C2C4C8();
  v32[1] = a1;
  v19 = sub_1B1B24ED8();
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = v19;
  v22 = v20;
  if (qword_1EB761570 != -1)
  {
    swift_once();
  }

  if (!sub_1B1A93A00(v21, v22, qword_1EB772E20))
  {

LABEL_8:
    if (qword_1EB761560 != -1)
    {
      swift_once();
    }

    v23 = qword_1EB772E10;
    v24 = sub_1B1C2CB28();
    v25 = sub_1B1C2CB28();
    v26 = [v23 URLForResource:v24 withExtension:0 subdirectory:v25];

    if (v26)
    {
      sub_1B1C2C168();

      v27 = v33;
      (*(v33 + 32))(v12, v10, v5);
      qword_1EB772DC8 = sub_1B1B2513C(v17, v12);
      qword_1EB772DD0 = v28;

      (*(v27 + 8))(v12, v5);
    }

    goto LABEL_12;
  }

  qword_1EB772DC8 = v21;
  qword_1EB772DD0 = v22;

LABEL_12:
  if (!qword_1EB772DD0)
  {
    qword_1EB772DC8 = sub_1B1B25314();
    qword_1EB772DD0 = v29;
  }

  (*(v34 + 8))(v17, v13);
  v18 = qword_1EB772DD0;
LABEL_15:
  v30 = a2[1];
  *a2 = qword_1EB772DC8;
  a2[1] = v18;
}

uint64_t sub_1B1B24ED8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762328, &unk_1B1C37AB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v23 - v2;
  v4 = sub_1B1B25D08();
  v7 = v6;
  v9 = v8;
  if (v5)
  {
    v10 = v4;
    v11 = v5;

    sub_1B1C2C4B8();
    v12 = sub_1B1C2C4A8();
    if (__swift_getEnumTagSinglePayload(v3, 1, v12) == 1)
    {

      sub_1B1A90C78(v3, &qword_1EB762328, &unk_1B1C37AB0);
LABEL_4:

      return v7;
    }

    v13 = sub_1B1C2C498();
    v15 = v14;
    (*(*(v12 - 8) + 8))(v3, v12);
    if (v9)
    {
      v16 = v7 == 0x42472D6E65 && v9 == 0xE500000000000000;
      if (!v16 && (sub_1B1C2D7A8() & 1) == 0)
      {

        swift_bridgeObjectRelease_n();
        return v7;
      }

      v17 = v13 == 21825 && v15 == 0xE200000000000000;
      if (v17 || ((v18 = sub_1B1C2D7A8(), v13 == 23118) ? (v19 = v15 == 0xE200000000000000) : (v19 = 0), !v19 ? (v20 = 0) : (v20 = 1), (v18 & 1) != 0 || (v20 & 1) != 0))
      {
      }

      else
      {
        v21 = sub_1B1C2D7A8();

        if ((v21 & 1) == 0)
        {

          goto LABEL_4;
        }
      }
    }

    v23[0] = v10;
    v23[1] = v11;
    MEMORY[0x1B27381B0](45, 0xE100000000000000);
    MEMORY[0x1B27381B0](v13, v15);

    return v23[0];
  }

  return v7;
}

uint64_t sub_1B1B2513C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1C2C1C8();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  v10 = objc_allocWithZone(MEMORY[0x1E695DF90]);
  v11 = sub_1B1B267A4(v8);
  if (v11)
  {
    v23 = 0;
    v14 = v11;
    sub_1B1C2CA88();

    v15 = v23;
    if (v23)
    {
      v16 = sub_1B1B24ED8();
      if (v17)
      {
        v12 = sub_1B1A945F4(v16, v17, v15);
        v19 = v18;

        if (v19)
        {
LABEL_13:

          return v12;
        }
      }

      else
      {
        v12 = 0;
      }

      v20 = sub_1B1B25D08();
      v22 = v21;

      if (v22)
      {

        v12 = sub_1B1A945F4(v20, v22, v15);
      }

      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t sub_1B1B25314()
{
  v0 = sub_1B1C2C488();
  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1B1B25388(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  if (v4)
  {
    v5 = sub_1B1C2CB28();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t static UserPreferences.setLogging(_:)(char a1)
{
  if (a1)
  {
    v1 = 6;
  }

  else
  {
    v1 = -1;
  }

  if (qword_1EB761520 != -1)
  {
    OUTLINED_FUNCTION_6_7();
  }

  v2 = qword_1EB772D80;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (qword_1EB761518 != -1)
  {
    OUTLINED_FUNCTION_5_6();
  }

  v4 = qword_1EB772D78;
  v5 = sub_1B1C2CB28();
  v6 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(v2, v3, v4, v5, *MEMORY[0x1E695E898]);

  if (qword_1EB761528 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB772D88;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v9 = sub_1B1C2CB28();
  CFPreferencesSetValue(v7, v8, v4, v9, v6);

  v10 = sub_1B1C2CB28();
  CFPreferencesSynchronize(v4, v10, v6);

  return notify_post("com.apple.AppSupport.loggingDefaultsChanged");
}

uint64_t static UserPreferences.getLogging()()
{
  if (qword_1EB761520 != -1)
  {
    OUTLINED_FUNCTION_6_7();
  }

  v0 = qword_1EB772D80;
  if (qword_1EB761518 != -1)
  {
    OUTLINED_FUNCTION_5_6();
  }

  v1 = qword_1EB772D78;
  v2 = sub_1B1C2CB28();
  v3 = CFPreferencesCopyValue(v0, v1, v2, *MEMORY[0x1E695E898]);

  if (!v3)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v5 > 0;
  }

  return result;
}

id UserPreferences.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserPreferences();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B1B25714()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EB772DB0 = result;
  return result;
}

id sub_1B1B25748()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EB772E00 = result;
  return result;
}

void sub_1B1B25780()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_1B1C2CB28();
  CFNotificationCenterAddObserver(v0, 0, sub_1B1B25950, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v2 = CFNotificationCenterGetLocalCenter();
  if (*MEMORY[0x1E695E6E0])
  {
    v3 = v2;
    CFNotificationCenterAddObserver(v2, 0, sub_1B1B25968, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B2585C()
{
  v4 = 0;
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = qword_1EB772DB0;
  [v1 lock];
  sub_1B1B25980(v0, &v4);
  [v1 unlock];

  if (v4 == 1)
  {
    v2 = CFNotificationCenterGetLocalCenter();
    OUTLINED_FUNCTION_8_5();
    v3 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_9_6(v3, v3);
  }
}

void sub_1B1B25980(uint64_t a1, _BYTE *a2)
{
  if (qword_1EB772E08 >= 1)
  {
    --qword_1EB772E08;
    return;
  }

  *a2 = 1;
  if (qword_1EB761530 != -1)
  {
    swift_once();
  }

  CFPreferencesAppSynchronize(qword_1EB772D90);
  qword_1EB772DB8 = 0;
  qword_1EB772DC0 = 0;

  qword_1EB772DC8 = 0;
  qword_1EB772DD0 = 0;

  v3 = qword_1EB772DA8;
  if (qword_1EB772DA8)
  {
    v4 = qword_1EB772DA0;
    qword_1EB772DA0 = 0;
    qword_1EB772DA8 = 0;
    v5 = sub_1B1B24574();
    if (!v6)
    {

      return;
    }

    if (v4 == v5 && v3 == v6)
    {

LABEL_16:
      *a2 = 0;
      return;
    }

    v8 = sub_1B1C2D7A8();

    if (v8)
    {
      goto LABEL_16;
    }
  }
}

void sub_1B1B25AC4()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = v0;
  if (qword_1EB761510 != -1)
  {
    swift_once();
    v0 = v1;
  }

  CFNotificationCenterAddObserver(v0, 0, sub_1B1B25C4C, qword_1EB772D70, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_1B1B25B60()
{
  if (qword_1EB761548 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB772E00;
  [v0 lock];
  sub_1B1B25C00();
  [v0 unlock];

  type metadata accessor for UserPreferences();
  return sub_1B1B2585C();
}

uint64_t sub_1B1B25C00()
{
  qword_1EB772DD8 = 0;
  qword_1EB772DE0 = 0;

  xmmword_1EB772DF0 = 0uLL;
}

void sub_1B1B25C64(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t, void *, uint64_t, void *))
{
  v12 = a1;
  v13 = a3;
  v14 = a5;
  a6(a1, a2, a3, a4, a5);
}

uint64_t sub_1B1B25D08()
{
  memset(v3, 0, sizeof(v3));
  if (qword_1EB761548 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB772E00;
  sub_1B1B23EBC(v1, v0, v3);

  return *&v3[0];
}

uint64_t sub_1B1B25D9C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v32 - v5;
  if (!qword_1EB772DE0)
  {
    if (qword_1EB761558 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C488();
    if (!v7[2])
    {
      goto LABEL_15;
    }

    v9 = v7[4];
    v8 = v7[5];

    v32[2] = v9;
    v32[3] = v8;
    v32[0] = 45;
    v32[1] = 0xE100000000000000;
    v10 = sub_1B1C2C4D8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    sub_1B1A8EDAC();
    sub_1B1C2D3C8();
    v12 = v11;
    v14 = v13;
    sub_1B1A90C78(v6, &qword_1EB762320, &unk_1B1C39760);
    if (v14)
    {
      qword_1EB772DD8 = v9;
      qword_1EB772DE0 = v8;

      goto LABEL_16;
    }

    v15 = sub_1B1C2CC98();
    if ((v16 & 1) != 0 || (v15 ^ v12) >> 14)
    {
      if ((sub_1B1C2CDA8() & 1) == 0)
      {
LABEL_14:
        v17 = sub_1B1C2CE08();
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v24 = MEMORY[0x1B27380D0](v17, v19, v21, v23);
        v26 = v25;

        qword_1EB772DD8 = v24;
        qword_1EB772DE0 = v26;
LABEL_15:

        goto LABEL_16;
      }

      xmmword_1EB772DF0 = xmmword_1B1C37A70;
    }

    else
    {
      *&xmmword_1EB772DF0 = v9;
      *(&xmmword_1EB772DF0 + 1) = v8;
    }

    goto LABEL_14;
  }

LABEL_16:
  v27 = qword_1EB772DE0;
  v28 = xmmword_1EB772DF0;
  v29 = *(a2 + 8);
  *a2 = qword_1EB772DD8;
  *(a2 + 8) = v27;

  v30 = *(a2 + 24);
  *(a2 + 16) = v28;
}

id sub_1B1B26090()
{
  sub_1B1B268F0();
  result = sub_1B1B26C98();
  if (result)
  {
    qword_1EB772E10 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B260E4()
{
  result = sub_1B1B26128();
  qword_1EB772E18 = result;
  return result;
}

uint64_t sub_1B1B26128()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v37 - v2;
  v4 = sub_1B1C2C1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1E69E7CD0];
  if (qword_1EB761560 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB772E10;
  v10 = sub_1B1C2CB28();
  v11 = sub_1B1B26934(7235938, 0xE300000000000000, v10, v9);

  if (!v11)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v12 = *(v11 + 16);
  if (!v12)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v14 = *(v5 + 16);
  v13 = v5 + 16;
  v15 = *(v13 + 64);
  v37 = v11;
  v38 = v3;
  v16 = v11 + ((v15 + 32) & ~v15);
  v40 = *(v13 + 56);
  v41 = v14;
  v39 = (v13 - 8);
  do
  {
    v41(v8, v16, v4);
    v17 = sub_1B1C2C0F8();
    v19 = v18;
    (*v39)(v8, v4);
    v44[0] = v17;
    v44[1] = v19;
    v42 = 46;
    v43 = 0xE100000000000000;
    v20 = sub_1B1C2C4D8();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v20);
    sub_1B1A8EDAC();
    v21 = sub_1B1C2D3C8();
    v23 = v22;
    sub_1B1A90C78(v3, &qword_1EB762320, &unk_1B1C39760);
    if ((v23 & 1) == 0 && v21 >= 0x4000)
    {
      v24 = sub_1B1C2CE08();
      v26 = v25;
      v28 = v27;
      v29 = v13;
      v30 = v4;
      v32 = v31;

      v33 = MEMORY[0x1B27380D0](v24, v26, v28, v32);
      v35 = v34;
      v4 = v30;
      v13 = v29;
      v3 = v38;

      sub_1B1ACB778(v44, v33, v35);
    }

    v16 += v40;
    --v12;
  }

  while (v12);

  return v45;
}

uint64_t sub_1B1B2647C()
{
  result = sub_1B1B2649C();
  qword_1EB772E20 = result;
  return result;
}

uint64_t sub_1B1B2649C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v26 - v2;
  v4 = sub_1B1C2C1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1E69E7CD0];
  if (qword_1EB761560 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB772E10;
  v10 = sub_1B1C2CB28();
  v11 = [v9 URLsForResourcesWithExtension:0 subdirectory:v10];

  if (!v11)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v12 = sub_1B1C2CE78();

  v13 = *(v12 + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v14 = v5 + 16;
  v15 = *(v5 + 16);
  v16 = *(v5 + 80);
  v26[1] = v12;
  v17 = v12 + ((v16 + 32) & ~v16);
  v27 = *(v14 + 56);
  v28 = v15;
  v29 = v14;
  v18 = (v14 - 8);
  do
  {
    v28(v8, v17, v4);
    v19 = sub_1B1C2C0F8();
    v21 = v20;
    (*v18)(v8, v4);
    v32[0] = v19;
    v32[1] = v21;
    v30 = 45;
    v31 = 0xE100000000000000;
    v22 = sub_1B1C2C4D8();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v22);
    sub_1B1A8EDAC();
    sub_1B1C2D3C8();
    v24 = v23;
    sub_1B1A90C78(v3, &qword_1EB762320, &unk_1B1C39760);
    if ((v24 & 1) == 0)
    {
      sub_1B1ACB778(v32, v19, v21);
    }

    v17 += v27;
    --v13;
  }

  while (v13);

  return v33;
}

id sub_1B1B267A4(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B1C2C118();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1B1C2C1C8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1B1C2C058();

    swift_willThrow();
    v11 = sub_1B1C2C1C8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

unint64_t sub_1B1B268F0()
{
  result = qword_1ED9A9810;
  if (!qword_1ED9A9810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A9810);
  }

  return result;
}

uint64_t sub_1B1B26934(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1B1C2CB28();

  v7 = [a4 URLsForResourcesWithExtension:v6 subdirectory:a3];

  if (!v7)
  {
    return 0;
  }

  sub_1B1C2C1C8();
  v8 = sub_1B1C2CE78();

  return v8;
}

uint64_t sub_1B1B269CC(int a1)
{
  v2 = 0;
  while (v2 != 32)
  {
    v3 = *(&unk_1F28B84F8 + v2 + 32);
    if (v3 < -32)
    {
      goto LABEL_12;
    }

    v4 = a1 >> 31;
    if (v3 <= 32)
    {
      if (v3 < 0)
      {
        if (v3 == -32)
        {
LABEL_12:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
          v5 = swift_allocObject();
          v6 = MEMORY[0x1E69E72F0];
          v7 = MEMORY[0x1E69E7358];
          *(v5 + 16) = xmmword_1B1C361C0;
          *(v5 + 56) = v6;
          *(v5 + 64) = v7;
          *(v5 + 32) = a1;
          return sub_1B1C2CB98();
        }

        v4 = a1 << -v3;
      }

      else
      {
        v4 = a1 >> 31;
        if (v3 != 32)
        {
          v4 = a1 >> v3;
        }
      }
    }

    v2 += 8;
    if (v4 - 32 >= 0x5F)
    {
      goto LABEL_12;
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1B1B2F958(0, 4, 0);
  for (i = 0; i != 32; i += 8)
  {
    v9 = *(&unk_1F28B8538 + i + 32);
    v10 = sub_1B1C2CC38();
    v12 = v11;
    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1B1B2F958(v13 > 1, v14 + 1, 1);
    }

    *(v18 + 16) = v14 + 1;
    v15 = v18 + 16 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7623D8, &qword_1B1C37B78);
  sub_1B1B27C48();
  v16 = sub_1B1C2CDE8();
  MEMORY[0x1B27381B0](v16);

  MEMORY[0x1B27381B0](39, 0xE100000000000000);
  return 39;
}

id sub_1B1B26C98()
{
  v0 = sub_1B1C2CB28();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

id sub_1B1B26CFC()
{
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  result = sub_1B1B26C98();
  if (result)
  {
    qword_1ED9AA640 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B1B26D9C()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_1EB762331 = deviceClassNumber == 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B26E10()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_1EB762332 = deviceClassNumber == 2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B26E84()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_1EB762333 = deviceClassNumber == 3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B26F0C(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B1B26F88()
{
  result = SiriTTSService_DiagnosticLogSubmissionEnabled();
  byte_1ED9A7AD5 = result;
  return result;
}

void sub_1B1B26FD4()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_buildVersion_obj();

    if (v2)
    {
      v3 = sub_1B1C2CB58();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0xE000000000000000;
    }

    qword_1EB762338 = v3;
    unk_1EB762340 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MobileGestalt.buildVersion.getter()
{
  if (qword_1EB761590 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB762338;

  return v0;
}

uint64_t sub_1B1B2710C()
{
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](0);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B27158()
{
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](0);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B271A0()
{
  v2[3] = &type metadata for Features.Flags;
  v2[4] = sub_1B1B27BF4();
  v0 = sub_1B1C2C4E8();
  result = __swift_destroy_boxed_opaque_existential_0(v2);
  byte_1EB7612B0 = v0 & 1;
  return result;
}

uint64_t sub_1B1B2721C(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t sub_1B1B273A4(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  if (*a2 != -1)
  {
    result = swift_once();
  }

  *a4 = *a3;
  return result;
}

id sub_1B1B27490(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = sub_1B1C2CB28();
  v6 = [v4 *a3];

  return v6;
}

id static NeuralUtils.compileANEModel(voicePath:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1B1C2CB28();
  v6[0] = 0;
  v2 = [v0 compileANEModel:v1 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1B1C2C058();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1B1B275F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSRangeUtil();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NSRangeUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSRangeUtil();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1B276E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1B1C2CD98();
    OUTLINED_FUNCTION_5_7(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1B2738200](15, a1 >> 16);
    OUTLINED_FUNCTION_5_7(v3);
    return v4 | 8;
  }
}

uint64_t sub_1B1B2777C(uint64_t a1)
{
  result = sub_1B1A8E474(319, &qword_1EB7623D0, 0x1E696AD10);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B1B27814(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1B1B27994(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1B1B27BF4()
{
  result = qword_1EB761298;
  if (!qword_1EB761298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761298);
  }

  return result;
}

unint64_t sub_1B1B27C48()
{
  result = qword_1EB7623E0;
  if (!qword_1EB7623E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7623D8, &qword_1B1C37B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7623E0);
  }

  return result;
}

uint64_t sub_1B1B27CAC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_53();
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

_BYTE *sub_1B1B27CF8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1B27DA8()
{
  result = qword_1EB7623E8;
  if (!qword_1EB7623E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7623E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TTSFeatureFlags(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TTSFeatureFlags.FFKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TTSFeatureFlags.FFKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1B28030()
{
  result = qword_1EB7623F0;
  if (!qword_1EB7623F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7623F0);
  }

  return result;
}

uint64_t RetryTextModificationAction.__allocating_init(pool:)()
{
  swift_allocObject();
  v0 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v0;
}

uint64_t RetryTextModificationAction.init(pool:)()
{
  v0 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v0;
}

void sub_1B1B28100()
{
  v0 = sub_1B1AA95C4();
  if (v0)
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    type metadata accessor for Localization();
    v3 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    v4 = &v3[OBJC_IVAR___SiriTTSSynthesisVoice_language];
    swift_beginAccess();
    v6 = *v4;
    v5 = v4[1];

    sub_1B1B63794(v6, v5);

    MEMORY[0x1B27381B0](32, 0xE100000000000000);

    v7 = SynthesizingRequestProtocol.text.getter();
    v9 = v8;

    MEMORY[0x1B27381B0](v7, v9);

    SynthesizingRequestProtocol.text.setter();
    sub_1B1AA81A8();
  }

  else
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v10 = 1;
    *(v10 + 8) = 0xD000000000000036;
    *(v10 + 16) = 0x80000001B1C4B190;
    swift_willThrow();
  }
}

uint64_t RetryTextModificationAction.__deallocating_deinit()
{
  v0 = Buffer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1B2830C@<X0>(uint64_t *a1@<X8>)
{
  result = RetryTextModificationAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

id sub_1B1B283BC(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  ObjectType = swift_getObjectType();
  v4 = v2;
  v5 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v6 = &v5[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  OUTLINED_FUNCTION_1_11();
  v8 = *v6;
  v7 = *(v6 + 1);

  v9 = sub_1B1C2CB28();

  [v4 setLanguage_];

  v10 = SynthesizingRequestProtocol.text.getter();
  sub_1B1AD55EC(v10, v11, v4, &selRef_setText_);
  v12 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v13 = &v12[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  swift_beginAccess();
  v15 = *v13;
  v14 = *(v13 + 1);

  if (v14)
  {
    v16 = sub_1B1C2CB28();
  }

  else
  {
    v16 = 0;
  }

  [v4 setVoiceName_];

  v17 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  sub_1B1AD55EC(v18, v19, v4, &selRef_setAppId_);
  *&v20 = SynthesizingRequestProtocol.pitch.getter(ObjectType);
  [v4 setPitch_];
  *&v21 = SynthesizingRequestProtocol.rate.getter(ObjectType);
  [v4 setRate_];
  *&v22 = SynthesizingRequestProtocol.volume.getter(ObjectType);
  [v4 setVolume_];
  v23 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v24 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  swift_beginAccess();
  v25 = *&v23[v24];

  SynthesisVoice.VoiceType.description.getter(v25);
  v26 = sub_1B1C2CB28();

  [v4 setPreferredType_];

  [v4 setRequestCreatedTime_];
  v27 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  v28 = &v27[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentencePitch];
  OUTLINED_FUNCTION_1_11();
  v29 = *v28;

  OUTLINED_FUNCTION_3_10(v31, v30, sel_setNeuralSentencePitch_);
  v32 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  v33 = &v32[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentencePitchRange];
  OUTLINED_FUNCTION_1_11();
  v34 = *v33;

  OUTLINED_FUNCTION_3_10(v36, v35, sel_setNeuralSentencePitchRange_);
  v37 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  v38 = &v37[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceDuration];
  OUTLINED_FUNCTION_1_11();
  v39 = *v38;

  OUTLINED_FUNCTION_3_10(v41, v40, sel_setNeuralSentenceDuration_);
  v42 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  v43 = &v42[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceEnergy];
  OUTLINED_FUNCTION_1_11();
  v44 = *v43;

  OUTLINED_FUNCTION_3_10(v46, v45, sel_setNeuralSentenceEnergy_);
  v47 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  v48 = &v47[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentenceTilt];
  OUTLINED_FUNCTION_1_11();
  v49 = *v48;

  OUTLINED_FUNCTION_3_10(v51, v50, sel_setNeuralSentenceTilt_);
  v52 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  v53 = &v52[OBJC_IVAR___SiriTTSProsodyProperties_neuralSentencePitch];
  swift_beginAccess();
  v54 = *v53;

  OUTLINED_FUNCTION_3_10(v56, v55, sel_setNeuralSentencePitch_);
  return v4;
}

uint64_t sub_1B1B287C0()
{
  v0 = sub_1B1C2CBE8();
  v2 = v1;
  v3 = v0 == 0x746361706D6F63 && v1 == 0xE700000000000000;
  if (v3 || (v4 = v0, (OUTLINED_FUNCTION_3() & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = v4 == 0x6D75696D657270 && v2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      return 2;
    }

    else if (v4 == 0x686D75696D657270 && v2 == 0xEB00000000686769)
    {

      return 3;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3();

      if (v8)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_1B1B288C0()
{
  v1 = sub_1B1C2CBE8();
  v3 = v2;
  v4 = v1 == 0x657A696C61636F76 && v2 == 0xE900000000000072;
  if (v4 || (OUTLINED_FUNCTION_5_4(), (OUTLINED_FUNCTION_3() & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = v0 == 0x6D6F74737563 && v3 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      return 2;
    }

    else
    {
      v7 = v0 == 0x6E6F6870797267 && v3 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_3() & 1) != 0)
      {

        return 3;
      }

      else
      {
        v8 = v0 == 0x6C617275656ELL && v3 == 0xE600000000000000;
        if (v8 || (OUTLINED_FUNCTION_3() & 1) != 0)
        {

          return 4;
        }

        else if (v0 == 0x6C61727574616ELL && v3 == 0xE700000000000000)
        {

          return 6;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_3();

          if (v10)
          {
            return 6;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t sub_1B1B28A30()
{
  v1 = sub_1B1C2CBE8();
  v3 = v2;
  v4 = v1 == 0x656C616D6566 && v2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_4(), (OUTLINED_FUNCTION_3() & 1) != 0))
  {

    return 2;
  }

  else if (v0 == 1701601645 && v3 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3();

    return v7 & 1;
  }
}

char *sub_1B1B28AE0()
{
  v1 = v0;
  v2 = [v0 voiceLanguage];
  sub_1B1C2CB58();

  v3 = [v1 voiceName];
  sub_1B1C2CB58();

  v4 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  OUTLINED_FUNCTION_5_4();
  v5 = SynthesisVoice.init(language:name:)();
  v6 = [v1 voiceFootprint];
  sub_1B1C2CB58();

  v7 = sub_1B1B287C0();

  v8 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_66_0();
  *&v5[v8] = v7;
  v9 = [v1 voiceType];
  sub_1B1C2CB58();

  v10 = sub_1B1B288C0();

  v11 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_66_0();
  *&v5[v11] = v10;
  v12 = [v1 voiceVersion];
  v13 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  OUTLINED_FUNCTION_66_0();
  *(v13 + v5) = v12;
  v14 = [v1 voiceGender];
  sub_1B1C2CB58();

  v15 = sub_1B1B28A30();

  v16 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  OUTLINED_FUNCTION_66_0();
  *&v5[v16] = v15;
  return v5;
}

char *sub_1B1B28CE8()
{
  v1 = v0;
  v2 = [v0 resourceLanguage];
  sub_1B1C2CB58();
  v4 = v3;

  v5 = objc_allocWithZone(type metadata accessor for SynthesisResource());
  v6 = OUTLINED_FUNCTION_5_4();
  v7 = SynthesisResource.init(language:)(v6, v4);
  v8 = [v1 resourceVersion];
  v9 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  OUTLINED_FUNCTION_66_0();
  *&v7[v9] = v8;
  return v7;
}

char *sub_1B1B28D94()
{
  type metadata accessor for AudioData();
  v1 = [v0 audioData];
  v2 = sub_1B1C2C2B8();
  v4 = v3;

  [v0 asbd];
  return AudioData.__allocating_init(serverOpusBytes:asbd:)(v2, v4, v6);
}

uint64_t sub_1B1B28E3C()
{
  v1 = [v0 timingInfos];
  sub_1B1A8E474(0, &qword_1ED9A4C68, off_1E7AF1A48);
  v2 = sub_1B1C2CE78();

  v3 = sub_1B1A9547C(v2);
  if (v3)
  {
    v4 = v3;
    v11 = MEMORY[0x1E69E7CC0];
    result = sub_1B1C2D5B8();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B2738A20](v6, v2);
        }

        else
        {
          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        [v7 timestamp];
        [v8 textRange];
        v9 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
        WordTimingInfo.init(startTiming:textRange:)();

        sub_1B1C2D588();
        v10 = *(v11 + 16);
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }

      while (v4 != v6);

      return v11;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B1B28FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_1B1C2C1C8();
  __swift_allocate_value_buffer(v4, qword_1EB772E30);
  v5 = __swift_project_value_buffer(v4, qword_1EB772E30);
  sub_1B1C2C188();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B290F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_1B1C2C1C8();
  __swift_allocate_value_buffer(v4, qword_1EB772CB8);
  v5 = __swift_project_value_buffer(v4, qword_1EB772CB8);
  sub_1B1C2C188();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B29204()
{
  v0 = type metadata accessor for OspreyClient();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1B1B29480();
  qword_1ED9A51F0 = v3;
  return result;
}

uint64_t sub_1B1B29244()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_1B1C2C1C8();
  __swift_allocate_value_buffer(v4, qword_1ED9AA4E0);
  v5 = __swift_project_value_buffer(v4, qword_1ED9AA4E0);
  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  sub_1B1B551CC();
  if (v6)
  {
    sub_1B1C2C188();

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      return (*(*(v4 - 8) + 32))(v5, v3, v4);
    }

    sub_1B1B29E6C(v3);
  }

  if (qword_1ED9A96E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED9A9738 == 1)
  {
    if (qword_1EB761220 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB772CB8;
  }

  else
  {
    if (qword_1EB761598 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB772E30;
  }

  v8 = __swift_project_value_buffer(v4, v7);
  return (*(*(v4 - 8) + 16))(v5, v8, v4);
}

uint64_t sub_1B1B29480()
{
  v1 = v0;
  v2 = sub_1B1C2C478();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1C2C1C8();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() defaultSessionConfiguration];
  [v18 setTimeoutIntervalForRequest_];
  [v18 setTimeoutIntervalForResource_];
  if (qword_1ED9A5200 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_1ED9AA4E0);
  (*(v13 + 16))(v17, v19, v10);
  v20 = objc_allocWithZone(SiriTTSOspreyChannel);
  v21 = v18;
  *(v1 + 16) = sub_1B1B29C94(v17, v21);
  sub_1B1C2C468();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC14SiriTTSService12OspreyClient_speechId, v9, v2);
  return v1;
}

void sub_1B1B29698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B1A8E474(0, &qword_1ED9A4C70, off_1E7AF1A40);
  v14 = sub_1B1B283BC(a1);
  v15 = sub_1B1C2C438();
  sub_1B1AD55EC(v15, v16, v14, &selRef_setSpeechId_);
  [v14 setExperimentId_];
  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  sub_1B1B53A3C();
  [v14 setServerLogs_];
  v18 = *(v7 + 16);
  OUTLINED_FUNCTION_2_11();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v30 = sub_1B1B29D2C;
  v31 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B1B18B50;
  v29 = &block_descriptor_5;
  v20 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_2_11();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v30 = sub_1B1B29D34;
  v31 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B1B18B50;
  v29 = &block_descriptor_6;
  v22 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_2_11();
  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  *(v23 + 24) = a7;
  v30 = sub_1B1B29D3C;
  v31 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B1A955E0;
  v29 = &block_descriptor_12;
  v24 = _Block_copy(&aBlock);

  [v18 streamTTS:v14 beginHandler:v20 chunkHandler:v22 completion:v24];
  _Block_release(v24);
  _Block_release(v22);
  _Block_release(v20);
}

void sub_1B1B29978(void *a1, void (*a2)(char *, char *, _BYTE *, double))
{
  v4 = sub_1B1B28AE0();
  v7 = sub_1B1B28CE8();
  [a1 bufferDuration];
  v6 = v5;
  [a1 asbd];
  a2(v4, v7, v8, v6);
}

char *sub_1B1B29A24(uint64_t a1, void (*a2)(char *, uint64_t))
{
  result = sub_1B1B28D94();
  if (result)
  {
    v4 = result;
    v5 = sub_1B1B28E3C();
    a2(v4, v5);
  }

  return result;
}

void sub_1B1B29AB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  [v5 preconnect];
  OUTLINED_FUNCTION_2_11();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1B1B29EE4;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B1A955E0;
  v8[3] = &block_descriptor_18;
  v7 = _Block_copy(v8);

  [v5 initializeDeviceAuthenticationSessionWithCompletion_];
  _Block_release(v7);
}

uint64_t OspreyClient.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService12OspreyClient_speechId;
  v2 = sub_1B1C2C478();
  OUTLINED_FUNCTION_7_0(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t OspreyClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService12OspreyClient_speechId;
  v2 = sub_1B1C2C478();
  OUTLINED_FUNCTION_7_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

id sub_1B1B29C94(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1B1C2C118();
  v7 = [v3 initWithURL:v6 configuration:a2];

  v8 = sub_1B1C2C1C8();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_1B1B29D3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B1B29D6C()
{
  result = sub_1B1C2C478();
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

uint64_t sub_1B1B29E6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1B1B29EE8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_67_1();
  }

  v2 = sub_1B1B36DD0();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_67_1();
  }

  v4 = OUTLINED_FUNCTION_27_3(v2);

  sub_1B1A93378(v4, v5);
  return result;
}

double sub_1B1B29F40(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_67_1();
  }

  v2 = sub_1B1AE3960(a1);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_67_1();
  }

  v4 = OUTLINED_FUNCTION_27_3(v2);

  sub_1B1A93378(v4, v5);
  return result;
}

uint64_t sub_1B1B29F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_1B1A8EB10(), (v5 & 1) != 0))
  {
    v6 = (*(a3 + 56) + 24 * v4);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1B2A000(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] && (v4 = sub_1B1A8EB10(), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_28_1(v4);
    v6 = a3;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1B2A044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1B1A8EB10();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70_0(v3);
}

uint64_t sub_1B1B2A090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B1A8EB10();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 56) + 20 * v4;
  result = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  return result;
}

void *sub_1B1B2A104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B1A8EB10();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1B1B2A14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1B1A8EB10();
  if (v4)
  {
    return OUTLINED_FUNCTION_70_0(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B2A1A0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B1A8EB10(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    OUTLINED_FUNCTION_45(v8);
    sub_1B1AA101C(v7 + *(v9 + 72) * v6, a2, &qword_1EB7624A8, &unk_1B1C38120);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

void *sub_1B1B2A278(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1B1A954B0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1B1B2A2C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1B1AB2870(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_28_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }

  return OUTLINED_FUNCTION_43_0();
}

double sub_1B1B2A308@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_1B1A8EB10(), (v5 & 1) != 0))
  {
    sub_1B1A93378(*(v3 + 56) + 32 * v4, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1B1B2A370()
{
  v1 = sub_1B1C2CAB8();
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

void sub_1B1B2A3B8()
{
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = qword_1ED9AA610;
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
  v4 = sub_1B1C2CB28();
  v5 = OUTLINED_FUNCTION_11_6();
  v10 = [v1 levelForFactor:v4 withNamespaceName:v5];

  if (v10)
  {
    sub_1B1AE6FEC(v10);
  }

  else
  {
    v6 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12();
    }

    v7 = qword_1ED9AA668;
    if (os_log_type_enabled(qword_1ED9AA668, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1B1A930E4(v2, v3, &v11);
      _os_log_impl(&dword_1B1A8A000, v7, v6, "Unable to get level for factor name '%{public}s'", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }
  }
}

void sub_1B1B2A5B0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  OUTLINED_FUNCTION_72();
  sub_1B1AB9288();

  sub_1B1AA101C(v36, v34, &qword_1EB761DE0, &qword_1B1C352C0);
  v0 = MEMORY[0x1E69E7CA0];
  if (v35)
  {
    if (OUTLINED_FUNCTION_73_2())
    {
      sub_1B1A90C20(v36, &qword_1EB761DE0, &qword_1B1C352C0);
      return;
    }
  }

  else
  {
    sub_1B1A90C20(v34, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  sub_1B1AA101C(v36, v34, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v35)
  {
    sub_1B1A90C20(v36, &qword_1EB761DE0, &qword_1B1C352C0);
    v19 = v34;
LABEL_27:
    sub_1B1A90C20(v19, &qword_1EB761DE0, &qword_1B1C352C0);
    return;
  }

  v1 = OUTLINED_FUNCTION_73_2();
  if ((v1 & 1) == 0)
  {
    v19 = v36;
    goto LABEL_27;
  }

  v9 = OUTLINED_FUNCTION_44_0(v1, v2, v3, v4, v5, v6, v7, v8, v33);
  if (!v10)
  {
LABEL_77:
    sub_1B1A90C20(v36, &qword_1EB761DE0, &qword_1B1C352C0);

    return;
  }

  if ((v0 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(v9, v0, 10);
    goto LABEL_77;
  }

  if ((v0 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v11 = OUTLINED_FUNCTION_57_1();
    }

    else
    {
      v11 = sub_1B1C2D578();
    }

    v12 = OUTLINED_FUNCTION_56_1(v11);
    if (v15)
    {
      if (v13 >= 1)
      {
        if (v13 != 1 && v12)
        {
          OUTLINED_FUNCTION_72_1();
          do
          {
            OUTLINED_FUNCTION_6_0();
            if (!v15 & v16)
            {
              break;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v15)
            {
              break;
            }

            if (__OFADD__(v25, v24))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
          }

          while (!v15);
        }

        goto LABEL_77;
      }

      goto LABEL_82;
    }

    if (v14 != 45)
    {
      if (v13 && v12)
      {
        do
        {
          if (*v12 - 48 > 9)
          {
            break;
          }

          OUTLINED_FUNCTION_66_2();
          if (!v15)
          {
            break;
          }

          if (__OFADD__(v30, v29))
          {
            break;
          }

          v12 = OUTLINED_FUNCTION_65_1(v28);
        }

        while (!v15);
      }

      goto LABEL_77;
    }

    if (v13 >= 1)
    {
      if (v13 != 1 && v12)
      {
        OUTLINED_FUNCTION_72_1();
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v15 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v15)
          {
            break;
          }

          if (__OFSUB__(v18, v17))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v15);
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_68_1();
  if (!v15)
  {
    if (v21 != 45)
    {
      if (v20)
      {
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v15 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v15)
          {
            break;
          }

          if (__OFADD__(v32, v31))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v15);
      }

      goto LABEL_77;
    }

    if (v20)
    {
      if (v20 != 1)
      {
        OUTLINED_FUNCTION_10();
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v15 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v15)
          {
            break;
          }

          if (__OFSUB__(v23, v22))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v15);
      }

      goto LABEL_77;
    }

    goto LABEL_81;
  }

  if (v20)
  {
    if (v20 != 1)
    {
      OUTLINED_FUNCTION_10();
      do
      {
        OUTLINED_FUNCTION_6_0();
        if (!v15 & v16)
        {
          break;
        }

        OUTLINED_FUNCTION_3_0();
        if (!v15)
        {
          break;
        }

        if (__OFADD__(v27, v26))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
      }

      while (!v15);
    }

    goto LABEL_77;
  }

LABEL_83:
  __break(1u);
}

void sub_1B1B2A950()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

  sub_1B1AB9288();

  v2 = v3[3];
  sub_1B1A90C20(v3, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v2)
  {
    OUTLINED_FUNCTION_64();
  }

  sub_1B1B2A5B0();
}

uint64_t sub_1B1B2AA14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr;
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

  sub_1B1AB9288();

  if (v7 || (sub_1B1A90C20(&v6, &qword_1EB761DE0, &qword_1B1C352C0), v4 = *(v1 + v2), , OUTLINED_FUNCTION_64(), sub_1B1AB9288(), , v7))
  {
    sub_1B1A9EEE0(&v6, v8);
    *&v6 = 0;
    *(&v6 + 1) = 0xE000000000000000;
    MEMORY[0x1B27381B0](2119235, 0xE300000000000000);
    sub_1B1C2D618();
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1B1A90C20(&v6, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return OUTLINED_FUNCTION_43_0();
}

void sub_1B1B2ABA4()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  sub_1B1AB9288();

  if (v10)
  {
    if ((OUTLINED_FUNCTION_51_1() & 1) != 0 && v8)
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      goto LABEL_11;
    }
  }

  else
  {
    sub_1B1A90C20(v9, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v1 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v1, qword_1ED9A9120);
  v2 = v0;
  v3 = sub_1B1C2C888();
  v4 = sub_1B1C2D0B8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1B1A8A000, v3, v4, "Unknown Trial download size for %@", v5, 0xCu);
    sub_1B1A90C20(v6, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  sub_1B1C2D228();
LABEL_11:
  OUTLINED_FUNCTION_76_2();
}

void sub_1B1B2ADDC()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  sub_1B1AB9288();

  if (!v47)
  {
    sub_1B1A90C20(v46, &qword_1EB761DE0, &qword_1B1C352C0);
    return;
  }

  OUTLINED_FUNCTION_9_7(v1, v2, v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v44);
  v8 = swift_dynamicCast();
  if (v8)
  {
    v16 = OUTLINED_FUNCTION_44_0(v8, v9, v10, v11, v12, v13, v14, v15, v45);
    if (!v17)
    {

      return;
    }

    if ((v0 & 0x1000000000000000) != 0)
    {
      sub_1B1B2EFF0(v16, v0, 10);
      v23 = v42;
      v41 = v43;
LABEL_74:

      if ((v41 & 1) == 0)
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      }

      return;
    }

    if ((v0 & 0x2000000000000000) != 0)
    {
      OUTLINED_FUNCTION_68_1();
      if (v22)
      {
        if (v28)
        {
          if (v28 != 1)
          {
            OUTLINED_FUNCTION_10();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v22 & v24)
              {
                break;
              }

              OUTLINED_FUNCTION_3_0();
              if (!v22)
              {
                break;
              }

              v23 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              OUTLINED_FUNCTION_16_2();
              if (v22)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_83:
        __break(1u);
        return;
      }

      if (v29 != 45)
      {
        if (v28)
        {
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v22 & v24)
            {
              break;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v22)
            {
              break;
            }

            v23 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
            if (v22)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if (v28)
      {
        if (v28 != 1)
        {
          OUTLINED_FUNCTION_10();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v22 & v24)
            {
              break;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v22)
            {
              break;
            }

            v23 = v31 - v30;
            if (__OFSUB__(v31, v30))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
            if (v22)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        v18 = OUTLINED_FUNCTION_57_1();
      }

      else
      {
        v18 = sub_1B1C2D578();
      }

      v19 = OUTLINED_FUNCTION_56_1(v18);
      if (v22)
      {
        if (v20 >= 1)
        {
          if (v20 != 1)
          {
            v23 = 0;
            if (v19)
            {
              OUTLINED_FUNCTION_72_1();
              while (1)
              {
                OUTLINED_FUNCTION_6_0();
                if (!v22 & v24)
                {
                  goto LABEL_72;
                }

                OUTLINED_FUNCTION_3_0();
                if (!v22)
                {
                  goto LABEL_72;
                }

                v23 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  goto LABEL_72;
                }

                OUTLINED_FUNCTION_16_2();
                if (v22)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_72;
        }

        goto LABEL_82;
      }

      if (v21 != 45)
      {
        if (v20)
        {
          v23 = 0;
          if (v19)
          {
            while (*v19 - 48 <= 9)
            {
              OUTLINED_FUNCTION_66_2();
              if (!v22)
              {
                break;
              }

              v23 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              v19 = OUTLINED_FUNCTION_65_1(v36);
              if (v22)
              {
                goto LABEL_63;
              }
            }

            goto LABEL_72;
          }

          goto LABEL_63;
        }

LABEL_72:
        v23 = 0;
        v27 = 1;
        goto LABEL_73;
      }

      if (v20 >= 1)
      {
        if (v20 != 1)
        {
          v23 = 0;
          if (v19)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v22 & v24)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_3_0();
              if (!v22)
              {
                goto LABEL_72;
              }

              v23 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_16_2();
              if (v22)
              {
                goto LABEL_73;
              }
            }
          }

LABEL_63:
          v27 = 0;
LABEL_73:
          v41 = v27;
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }
}

id sub_1B1B2B138()
{
  if (!*(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path + 8))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path);
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);

  return sub_1B1AE7720();
}

uint64_t sub_1B1B2B1E4()
{
  if ([v0 locallyAvailable])
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken;
  swift_beginAccess();
  if (!*&v0[v2])
  {
    sub_1B1B2B368(nullsub_1, 0, nullsub_1, 0);
  }

  return v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading];
}

id sub_1B1B2B2BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path);
    v3 = objc_opt_self();

    v4 = [v3 defaultManager];
    v5 = sub_1B1C2CB28();

    v1 = [v4 isDeletableFileAtPath_];
  }

  return v1;
}

uint64_t sub_1B1B2B368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED9A92A8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED9AA608;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B1B301E0;
  *(v11 + 24) = v10;
  v16[4] = sub_1B1AF77FC;
  v16[5] = v11;
  OUTLINED_FUNCTION_13_8();
  v16[1] = 1107296256;
  v16[2] = sub_1B1AAC018;
  v16[3] = &block_descriptor_156;
  v12 = _Block_copy(v16);
  v13 = v4;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1B1B2B500(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken;
  swift_beginAccess();
  v9 = *&a1[v8];
  if (v9)
  {
    v10 = qword_1ED9A92B0;
    v11 = *&a1[v8];
    swift_unknownObjectRetain();
    if (v10 != -1)
    {
      swift_once();
    }

    [qword_1ED9AA610 removeDownloadStatusHandlersWithToken_];
    swift_unknownObjectRelease();
  }

  if (qword_1ED9A92B0 != -1)
  {
    swift_once();
  }

  v25 = qword_1ED9AA610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B1C361C0;
  v13 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
  *(v12 + 32) = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
  *(v12 + 40) = v13;

  v24 = sub_1B1C2CE68();

  v14 = sub_1B1C2CB28();
  if (qword_1ED9A92A8 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED9AA608;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v33 = sub_1B1B301F0;
  v34 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1B1B2BBC0;
  v32 = &block_descriptor_162;
  v16 = _Block_copy(&aBlock);
  v17 = a1;

  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = a5;
  v33 = sub_1B1B301FC;
  v34 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1B1B302B8;
  v32 = &block_descriptor_168;
  v19 = _Block_copy(&aBlock);
  v20 = v17;

  swift_beginAccess();
  v28 = *&a1[v8];
  v21 = [v25 statusOfDownloadForFactors:v24 withNamespace:v14 token:&v28 queue:v23 progress:v16 completion:v19];
  *&a1[v8] = v28;
  swift_unknownObjectRetain();
  swift_endAccess();
  _Block_release(v19);
  _Block_release(v16);
  swift_unknownObjectRelease();

  if ((v21 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v20[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading] = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B1B2B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_1B1C2C988();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B1C2C9D8();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_progressQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a1;
  aBlock[4] = sub_1B1B3023C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_180;
  v20 = _Block_copy(aBlock);
  v21 = v18;

  sub_1B1C2C9A8();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA624C(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v17, v13, v20);
  _Block_release(v20);

  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

uint64_t sub_1B1B2BBC0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_1B1B2BC24(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v9 = sub_1B1C2C988();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B1C2C9D8();
  v13 = *(v28 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading) = 0;
  if (qword_1ED9A92B0 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED9AA610;
  v18 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken;
  swift_beginAccess();
  [v17 removeDownloadStatusHandlersWithToken_];
  v19 = *(a3 + v18);
  *(a3 + v18) = 0;
  swift_unknownObjectRelease();
  v20 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_progressQueue);
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  *(v21 + 24) = a5;
  *(v21 + 32) = a1 & 1;
  *(v21 + 40) = a2;
  aBlock[4] = sub_1B1B30208;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_174;
  v22 = _Block_copy(aBlock);
  v23 = v20;

  v24 = a2;
  sub_1B1C2C9A8();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA624C(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v16, v12, v22);
  _Block_release(v22);

  (*(v29 + 8))(v12, v9);
  (*(v13 + 8))(v16, v28);
}

void sub_1B1B2BFB4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v53 = a2;
  v54 = a3;
  v59 = sub_1B1C2C428();
  v7 = OUTLINED_FUNCTION_7(v59);
  v55 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = objc_allocWithZone(MEMORY[0x1E69DB528]);
  if (a1)
  {
    v15 = 1;
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  v17 = [v14 initWithAllowsCellular:v15 discretionaryBehavior:v16];
  sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B1C36280;
  v20 = *&v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
  v19 = *&v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1B1AC9204();
  *(v18 + 32) = v20;
  *(v18 + 40) = v19;
  *(v18 + 96) = sub_1B1A8E474(0, &unk_1ED9A5298, 0x1E69DB528);
  *(v18 + 104) = sub_1B1B2F9A4();
  *(v18 + 72) = v17;
  swift_bridgeObjectRetain_n();
  v58 = v17;
  sub_1B1C2C7C8();

  sub_1B1B2ABA4();
  if (!v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  v23 = [v21 integerValue];

  v24 = v13;
  if (v23 < 1)
  {
    v49 = 500000000;
    goto LABEL_11;
  }

  sub_1B1B2ABA4();
  if (!v25)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v26 = v25;
  v49 = [v25 integerValue];

LABEL_11:
  sub_1B1C2C418();
  v51 = swift_allocObject();
  *(v51 + 16) = 0xBFF0000000000000;
  v50 = swift_allocObject();
  *(v50 + 16) = -1;
  v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading] = 1;
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v27 = qword_1ED9AA610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  OUTLINED_FUNCTION_38_1();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B1C361C0;
  *(v28 + 32) = v20;
  *(v28 + 40) = v19;
  v29 = sub_1B1C2CE68();

  v30 = OUTLINED_FUNCTION_11_6();
  v31 = v58;
  [v27 downloadLevelsForFactors:v29 withNamespace:v30 queue:0 options:? progress:? completion:?];

  v32 = v55;
  v33 = *(v55 + 16);
  v34 = v52;
  v48 = v24;
  v35 = v59;
  v33(v52, v24, v59);
  v36 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v37 = (v10 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v49;
  (*(v32 + 32))(v39 + v36, v34, v35);
  v40 = v50;
  *(v39 + v37) = v51;
  *(v39 + v38) = v40;
  v41 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  v42 = v53;
  v43 = v54;
  *v41 = v53;
  v41[1] = v43;
  OUTLINED_FUNCTION_66();
  v44 = swift_allocObject();
  v46 = v56;
  v45 = v57;
  v44[2] = v5;
  v44[3] = v46;
  v44[4] = v45;

  sub_1B1A94514(v42);
  v47 = v5;
  sub_1B1A94514(v46);
  sub_1B1B2B368(sub_1B1B2FA0C, v39, sub_1B1B2FAD8, v44);

  (*(v32 + 8))(v48, v59);
}

uint64_t sub_1B1B2C4A4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, double), uint64_t a8)
{
  v32[1] = a8;
  v14 = sub_1B1C2C428();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0.0;
  v20 = a1 != 4 && a3 < 1.0;
  v21 = a2;
  if (v20)
  {
    if (a3 <= 0.0)
    {
      v21 = 0;
      v19 = 300.0;
    }

    else
    {
      sub_1B1C2C418();
      sub_1B1C2C408();
      v23 = v22;
      result = (*(v15 + 8))(v18, v14);
      v25 = a2 * a3;
      if (COERCE__INT64(fabs(v25)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v25 <= -9.22337204e18)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= 9.22337204e18)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v19 = (1.0 - a3) * v23 / a3;
      v21 = v25;
    }
  }

  swift_beginAccess();
  if (v19 == *(a5 + 16))
  {
    result = swift_beginAccess();
    if (v21 == *(a6 + 16))
    {
      return result;
    }
  }

  sub_1B1C2D0A8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B1C364E0;
  v26 = a3 * 100.0;
  if (COERCE__INT64(fabs(a3 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = MEMORY[0x1E69E6530];
  v28 = MEMORY[0x1E69E65A8];
  *(result + 56) = MEMORY[0x1E69E6530];
  *(result + 64) = v28;
  *(result + 32) = v26;
  v29 = MEMORY[0x1E69E6438];
  *(result + 96) = MEMORY[0x1E69E63B0];
  *(result + 104) = v29;
  *(result + 72) = v19;
  *(result + 136) = v27;
  *(result + 144) = v28;
  v30 = MEMORY[0x1E69E6810];
  *(result + 112) = v21;
  v31 = MEMORY[0x1E69E6870];
  *(result + 176) = v30;
  *(result + 184) = v31;
  *(result + 152) = a1;
  sub_1B1C2C7C8();

  if (a7)
  {
    a7(v21, a2, v19);
  }

  swift_beginAccess();
  *(a5 + 16) = v19;
  result = swift_beginAccess();
  *(a6 + 16) = v21;
  return result;
}

uint64_t sub_1B1B2C80C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading) = 0;
  if ((a1 & 1) == 0)
  {
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B1C36280;
    v14 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
    v13 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
    v15 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1B1AC9204();
    v17 = v16;
    *(v12 + 64) = v16;
    *(v12 + 32) = v14;
    *(v12 + 40) = v13;
    if (a2)
    {
      swift_getErrorValue();

      v18 = sub_1B1C2D828();
      v20 = (v12 + 72);
      *(v12 + 96) = v15;
      *(v12 + 104) = v17;
      if (v19)
      {
        *v20 = v18;
LABEL_13:
        *(v12 + 80) = v19;
        sub_1B1C2C7C8();

        if (!a4)
        {
          return result;
        }

        v10 = 0;
        return a4(v10);
      }
    }

    else
    {
      v20 = (v12 + 72);
      *(v12 + 96) = v15;
      *(v12 + 104) = v16;
    }

    *v20 = 63;
    v19 = 0xE100000000000000;
    goto LABEL_13;
  }

  sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B1C361C0;
  v7 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
  v8 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1B1AC9204();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;

  sub_1B1C2C7C8();

  sub_1B1B2A3B8();
  type metadata accessor for TTSAsset();
  result = sub_1B1B7693C();
  if (a4)
  {
    v10 = a3;
    return a4(v10);
  }

  return result;
}

void sub_1B1B2CC00(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if ([a1 downloading])
  {
    if (qword_1ED9A92B0 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED9AA610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B1C361C0;
    v7 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
    *(v6 + 32) = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
    *(v6 + 40) = v7;

    v8 = sub_1B1C2CE68();

    v9 = sub_1B1C2CB28();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = sub_1B1B20A10;
    v10[4] = v4;
    v20[4] = sub_1B1B30290;
    v20[5] = v10;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1B1B302B8;
    v20[3] = &block_descriptor_138;
    v11 = _Block_copy(v20);
    v12 = a1;

    [v5 removeLevelsForFactors:v8 withNamespace:v9 queue:0 completion:v11];
    _Block_release(v11);

    _Block_release(a2);
  }

  else
  {
    v13 = [a1 locallyAvailable];
    sub_1B1C2D0D8();
    if (v13)
    {
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1B1C361C0;
      v16 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
      v15 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1B1AC9204();
      *(v14 + 32) = v16;
      *(v14 + 40) = v15;

      sub_1B1C2C7C8();

      (a2)[2](a2, a1);
    }

    else
    {
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1B1C361C0;
      v19 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
      v18 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1B1AC9204();
      *(v17 + 32) = v19;
      *(v17 + 40) = v18;

      sub_1B1C2C7C8();

      a2[2](a2, 0);
    }

    _Block_release(a2);
  }
}

uint64_t sub_1B1B2D024(char a1, id a2, char *a3, uint64_t (*a4)(char *))
{
  if (a1)
  {
    sub_1B1C2D0D8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B1C361C0;
    v8 = *&a3[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
    v7 = *&a3[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1B1AC9204();
    *(v6 + 32) = v8;
    *(v6 + 40) = v7;

    sub_1B1C2C7C8();
  }

  else if (a2)
  {
    v10 = a2;
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v19 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B1C36280;
    v12 = *&a3[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
    v13 = *&a3[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1B1AC9204();
    *(v11 + 64) = v14;
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    swift_getErrorValue();

    v15 = sub_1B1C2D828();
    *(v11 + 96) = MEMORY[0x1E69E6158];
    *(v11 + 104) = v14;
    *(v11 + 72) = v15;
    *(v11 + 80) = v16;
    sub_1B1C2C7C8();
  }

  if ([a3 locallyAvailable])
  {
    v17 = a3;
  }

  else
  {
    v17 = 0;
  }

  return a4(v17);
}

void sub_1B1B2D294(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1B1B2D370()
{
  OUTLINED_FUNCTION_62();
  type metadata accessor for TTSAssetTrialAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C37D90;
  *(inited + 32) = v1;
  v3 = v1;
  v4 = OUTLINED_FUNCTION_33();
  static TTSAssetTrialAsset.purge(assets:then:)(v4, v5, v0);
  swift_setDeallocating();
  return sub_1B1B2EFA8();
}

void static TTSAssetTrialAsset.purge(assets:then:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1A9547C(a1);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v23 = a2;
    v24 = a3;
    v9 = 0;
    v7 = aBlock[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1B2738A20](v9, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = *&v10[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
      v13 = *&v10[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];

      aBlock[0] = v7;
      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        sub_1B1AC9FA8();
        v7 = aBlock[0];
      }

      ++v9;
      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v13;
    }

    while (v8 != v9);
    a2 = v23;
    a3 = v24;
  }

  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v16 = qword_1ED9AA610;
  v17 = sub_1B1C2CE68();
  v18 = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_66();
  v19 = swift_allocObject();
  v19[2] = v7;
  v19[3] = a2;
  v19[4] = a3;
  aBlock[4] = sub_1B1B2FAF0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_14_8();
  aBlock[2] = v20;
  aBlock[3] = &block_descriptor_16;
  v21 = _Block_copy(aBlock);
  v22 = OUTLINED_FUNCTION_72();
  sub_1B1A94514(v22);

  [v16 removeLevelsForFactorsImmediately:v17 withNamespace:v18 queue:0 completion:v21];
  _Block_release(v21);

  type metadata accessor for TTSAsset();
  sub_1B1B7693C();
}

uint64_t sub_1B1B2D6E4(char a1, id a2, uint64_t a3, uint64_t (*a4)(id))
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v8 = a2;
      sub_1B1C2D0B8();
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1B1C36280;
      *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      *(v9 + 64) = sub_1B1AA624C(&unk_1EB7624B8, &unk_1EB761F10, &unk_1B1C37DA0);
      *(v9 + 32) = a3;
      swift_getErrorValue();

      v10 = sub_1B1C2D828();
      v12 = v11;
      *(v9 + 96) = MEMORY[0x1E69E6158];
      *(v9 + 104) = sub_1B1AC9204();
      *(v9 + 72) = v10;
      *(v9 + 80) = v12;
      sub_1B1C2C7C8();
    }

    goto LABEL_8;
  }

  sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1B1C361C0;
    *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    *(v7 + 64) = sub_1B1AA624C(&unk_1EB7624B8, &unk_1EB761F10, &unk_1B1C37DA0);
    *(v7 + 32) = a3;

    sub_1B1C2C7C8();

LABEL_8:
    if (qword_1ED9A92A8 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED9AA608;
    aBlock[4] = sub_1B1B2BFB0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1AAC018;
    aBlock[3] = &block_descriptor_147;
    v14 = _Block_copy(aBlock);

    dispatch_sync(v13, v14);
    _Block_release(v14);
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  if (a4)
  {
    return a4(a2);
  }

  return result;
}

void sub_1B1B2DA8C(uint64_t a1)
{
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = qword_1ED9AA610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762448, &unk_1B1C37DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v5 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
  v6 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 48) = [v7 initWithInteger_];
  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  OUTLINED_FUNCTION_33();
  sub_1B1C2CAB8();
  v8 = sub_1B1C2CA78();

  v9 = OUTLINED_FUNCTION_11_6();
  [v3 setPurgeabilityLevelsForFactors:v8 withNamespaceName:v9];
}

uint64_t sub_1B1B2DC70()
{
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = qword_1ED9AA610;
  v2 = OUTLINED_FUNCTION_11_6();
  v3 = [v1 purgeabilityLevelsForFactorsWithNamespaceName_];

  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  v4 = sub_1B1C2CA98();

  v5 = sub_1B1B2A104(*(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName), *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8), v4);

  if (!v5)
  {
    return 3;
  }

  v6 = [v5 integerValue];

  return v6;
}

id TTSAssetTrialAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B1B2DDEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);

  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path + 8);

  v4 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_progressQueue);
}

id sub_1B1B2DF78(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

unint64_t sub_1B1B2DFE8()
{
  v2 = v0;
  sub_1B1AE7964();
  v3 = qword_1ED9A9978;
  v5 = v4;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v6 = qword_1ED9A9980;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v7 = v6;
  v8 = sub_1B1C2D248();

  if (v8)
  {
    goto LABEL_7;
  }

  v9 = qword_1ED9A98D0;
  v10 = v5;
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_23_0();
  }

  v11 = qword_1ED9A98D8;
  v12 = sub_1B1C2D248();

  if (v12)
  {
LABEL_7:

    v13 = 0x80000001B1C4B5A0;
    type metadata accessor for TTSAsset();
    sub_1B1AEC7A0();
    v14 = sub_1B1C2CBE8();

    sub_1B1B19BF8(v14);
    OUTLINED_FUNCTION_58();

    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    sub_1B1AF1B80();
    v16 = v15;
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v17 = qword_1ED9A9830;
    v18 = OUTLINED_FUNCTION_74_0();

    if (v18)
    {
      v19 = 0x746361706D6F632ELL;
    }

    else
    {
      v19 = 0x6D75696D6572702ELL;
    }

    v20 = 0xD00000000000002DLL;
    goto LABEL_13;
  }

  v24 = qword_1ED9A98A8;
  v25 = v10;
  if (v24 != -1)
  {
    OUTLINED_FUNCTION_21();
  }

  v26 = qword_1ED9A98B0;
  v27 = sub_1B1C2D248();

  if ((v27 & 1) == 0)
  {
    if (qword_1ED9A9850 != -1)
    {
      OUTLINED_FUNCTION_22();
    }

    v35 = qword_1ED9A97E0;
    v36 = sub_1B1C2D248();

    if ((v36 & 1) == 0)
    {
      sub_1B1AE7964();
      v44 = v43;
      v45 = [v43 string];

      v46 = sub_1B1C2CB58();
      v48 = v47;

      v64 = v46;
      v65 = v48;

      MEMORY[0x1B27381B0](46, 0xE100000000000000);

      v20 = v46;
      v13 = v48;
      sub_1B1AEC7A0();
      OUTLINED_FUNCTION_58();
      v49 = *(v2 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

      OUTLINED_FUNCTION_35_5();

      if (v66)
      {
        OUTLINED_FUNCTION_9_7(v50, v51, v52, MEMORY[0x1E69E6158], v53, v54, v55, v56, v62);
        if (swift_dynamicCast())
        {
          MEMORY[0x1B27381B0](v63);

          v19 = 46;
          v21 = 0xE100000000000000;
          goto LABEL_14;
        }
      }

      else
      {
        sub_1B1A90C20(&v64, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      v19 = 0;
      v21 = 0xE000000000000000;
      goto LABEL_14;
    }

    v13 = 0x80000001B1C4B570;
    sub_1B1AEC7A0();
    sub_1B1C2CBE8();
    OUTLINED_FUNCTION_58();

    sub_1B1AF1B80();
    v37 = qword_1ED9A97D8;
    v39 = v38;
    if (v37 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v20 = 0xD000000000000021;
    v40 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v41 = v40;
    v42 = sub_1B1C2D248();

    if (v42)
    {
      v19 = 0x746361706D6F632ELL;
    }

    else
    {
      v57 = qword_1ED9A9100;
      v39 = v39;
      if (v57 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v19 = 0x6D75696D6572702ELL;
      v58 = qword_1ED9A90A8;
      v59 = sub_1B1C2D248();

      if ((v59 & 1) == 0)
      {
        if (qword_1ED9A9628 != -1)
        {
          OUTLINED_FUNCTION_14_0();
        }

        v60 = qword_1ED9A9598;
        v61 = sub_1B1C2D248();

        v32 = (v61 & 1) == 0;
        v33 = 0xE800000000000000;
        v34 = 0xEC00000068676968;
        goto LABEL_24;
      }
    }

LABEL_13:
    v21 = 0xE800000000000000;
    goto LABEL_14;
  }

  v13 = 0x80000001B1C4B570;
  sub_1B1AEC7A0();
  sub_1B1C2CBE8();
  OUTLINED_FUNCTION_58();

  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  sub_1B1AF1B80();
  v29 = v28;
  if (qword_1ED9A97D8 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v20 = 0xD000000000000021;
  v30 = qword_1ED9A9830;
  v31 = OUTLINED_FUNCTION_74_0();

  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v19 = 0x746361706D6F632ELL;
  }

  else
  {
    v19 = 0;
  }

  v33 = 0xE000000000000000;
  v34 = 0xE800000000000000;
LABEL_24:
  if (v32)
  {
    v21 = v33;
  }

  else
  {
    v21 = v34;
  }

LABEL_14:
  v64 = v20;
  v65 = v13;

  v22 = OUTLINED_FUNCTION_33();
  MEMORY[0x1B27381B0](v22);

  MEMORY[0x1B27381B0](v19, v21);

  return v64;
}

uint64_t sub_1B1B2E65C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr;
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

  sub_1B1AB9288();

  if (v12)
  {
    sub_1B1A9EEE0(&v11, &v13);
  }

  else
  {
    v4 = *(v1 + v2);

    sub_1B1AB9288();
  }

  if (!v14)
  {
    sub_1B1A90C20(&v13, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }

  if (!OUTLINED_FUNCTION_51_1())
  {
    return 0;
  }

  v5 = v11;
  v6 = v11 == 1701601645 && *(&v11 + 1) == 0xE400000000000000;
  if (v6 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    return 1;
  }

  v8 = v5 == 0x656C616D6566 && *(&v5 + 1) == 0xE600000000000000;
  if (v8 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    return 2;
  }

  if (v5 != 0x6C61727475656ELL || *(&v5 + 1) != 0xE700000000000000)
  {
    v10 = OUTLINED_FUNCTION_3();

    if (v10)
    {
      return 3;
    }

    return 0;
  }

  return 3;
}

uint64_t sub_1B1B2E86C()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  sub_1B1AB9288();

  if (v3)
  {
    sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    if (OUTLINED_FUNCTION_51_1())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B1A90C20(v2, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }
}

uint64_t sub_1B1B2E934()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);
  v0 = sub_1B1B42CD8();

  v1 = sub_1B1AE0B90(v0);

  return v1;
}

id sub_1B1B2E9AC(void *a1)
{
  v1 = a1;
  v2 = sub_1B1AEBC74(v1);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    sub_1B1B2E9FC();
  }

  return v3;
}

uint64_t sub_1B1B2E9FC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
  v12 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
  v13 = v2;
  v14 = MEMORY[0x1E69E7CC0];

  if (sub_1B1AE6D1C())
  {
    v3 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr;
    v4 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

    sub_1B1AB9288();

    if (v11)
    {

      return sub_1B1A90C20(v10, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    else
    {
      sub_1B1A90C20(v10, &qword_1EB761DE0, &qword_1B1C352C0);
      v6 = *(v1 + v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
      OUTLINED_FUNCTION_38_1();
      result = swift_allocObject();
      *(result + 16) = xmmword_1B1C361C0;
      if (v14[2] < 6uLL)
      {
        __break(1u);
      }

      else
      {
        v7 = result;
        v9 = v14[14];
        v8 = v14[15];

        *(v7 + 32) = v9;
        *(v7 + 40) = v8;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
        v10[0] = v7;
        sub_1B1AC965C(v10);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1B1B2ED5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);

  return OUTLINED_FUNCTION_43_0();
}

id sub_1B1B2EDC4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CA78();

  return v5;
}

uint64_t sub_1B1B2EE40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001B1C41EA0;
  v2 = [v0 primaryLanguage];
  v3 = sub_1B1C2CB58();
  v5 = v4;

  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  strcpy((inited + 80), "VoiceVersion");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  sub_1B1B2A950();
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = v7;
  return sub_1B1C2CAB8();
}

id sub_1B1B2EF64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B1B2EFA8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B1B2EFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_1B1C2CDF8();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_72();
    v5 = sub_1B1BE2064();
    v48 = v47;

    if ((v48 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v6 = OUTLINED_FUNCTION_57_1();
    }

    else
    {
      OUTLINED_FUNCTION_72();
      v6 = sub_1B1C2D578();
    }

    OUTLINED_FUNCTION_56_1(v6);
    if (v9)
    {
      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          OUTLINED_FUNCTION_7_8();
          if (v24 ^ v25 | v23)
          {
            v28 = 65;
          }

          if (!(v24 ^ v25 | v23))
          {
            v29 = 58;
          }

          if (v26)
          {
            v30 = 0;
            v31 = (v26 + 1);
            while (1)
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v29)
              {
                if (v32 < 0x41 || v32 >= v28)
                {
                  OUTLINED_FUNCTION_15_9();
                  if (!v21 || v32 >= v34)
                  {
                    goto LABEL_137;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v30 * a3;
              if ((v30 * a3) >> 64 == (v30 * a3) >> 63)
              {
                v30 = v35 + (v32 + v33);
                if (!__OFADD__(v35, (v32 + v33)))
                {
                  ++v31;
                  if (--v27)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_137;
            }
          }
        }

        goto LABEL_137;
      }

      goto LABEL_141;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        OUTLINED_FUNCTION_47_2();
        if (v37 ^ v38 | v36)
        {
          v40 = v43;
        }

        if (v37 ^ v38 | v36)
        {
          v41 = 65;
        }

        if (!(v37 ^ v38 | v36))
        {
          v42 = 58;
        }

        if (v39)
        {
          v44 = 0;
          while (1)
          {
            v45 = *v39;
            if (v45 < 0x30 || v45 >= v42)
            {
              if (v45 < 0x41 || v45 >= v41)
              {
                if (v45 < 0x61 || v45 >= v40)
                {
                  goto LABEL_137;
                }

                v46 = -87;
              }

              else
              {
                v46 = -55;
              }
            }

            else
            {
              v46 = -48;
            }

            if ((v44 * a3) >> 64 == (v44 * a3) >> 63 && !__OFADD__(v44 * a3, (v45 + v46)))
            {
              v39 = OUTLINED_FUNCTION_65_1(v39);
              if (!v9)
              {
                continue;
              }
            }

            goto LABEL_137;
          }
        }
      }

      goto LABEL_137;
    }

    if (v7 >= 1)
    {
      if (v7 != 1)
      {
        OUTLINED_FUNCTION_7_8();
        if (v10 ^ v11 | v9)
        {
          v14 = 65;
        }

        if (!(v10 ^ v11 | v9))
        {
          v15 = 58;
        }

        if (v12)
        {
          v16 = 0;
          v17 = (v12 + 1);
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v15)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                OUTLINED_FUNCTION_15_9();
                if (!v21 || v18 >= v20)
                {
                  break;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v22 = v16 * a3;
            if ((v16 * a3) >> 64 == (v16 * a3) >> 63)
            {
              v16 = v22 - (v18 + v19);
              if (!__OFSUB__(v22, (v18 + v19)))
              {
                ++v17;
                if (--v13)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_137:

      return;
    }

    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_43_3();
  if (!v9)
  {
    if (v50 != 45)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_2_12();
        while (1)
        {
          OUTLINED_FUNCTION_31_2();
          if (v21 && v66 < v65)
          {
            v67 = -48;
          }

          else if (v66 < 0x41 || v66 >= v64)
          {
            OUTLINED_FUNCTION_15_9();
            if (!v21 || v66 >= v68)
            {
              goto LABEL_137;
            }

            v67 = -87;
          }

          else
          {
            v67 = -55;
          }

          if ((v63 * a3) >> 64 == (v63 * a3) >> 63 && !__OFADD__(v63 * a3, (v66 + v67)))
          {
            OUTLINED_FUNCTION_30_3();
            if (!v9)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    if (v49)
    {
      if (v49 != 1)
      {
        OUTLINED_FUNCTION_2_12();
        OUTLINED_FUNCTION_20_4();
        while (1)
        {
          OUTLINED_FUNCTION_31_2();
          if (v21 && v54 < v53)
          {
            v55 = -48;
          }

          else if (v54 < 0x41 || v54 >= v52)
          {
            OUTLINED_FUNCTION_15_9();
            if (!v21 || v54 >= v56)
            {
              goto LABEL_137;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }

          if ((v51 * a3) >> 64 == (v51 * a3) >> 63 && !__OFSUB__(v51 * a3, (v54 + v55)))
          {
            OUTLINED_FUNCTION_30_3();
            if (!v9)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    goto LABEL_140;
  }

  if (v49)
  {
    if (v49 != 1)
    {
      OUTLINED_FUNCTION_2_12();
      OUTLINED_FUNCTION_20_4();
      while (1)
      {
        OUTLINED_FUNCTION_31_2();
        if (v21 && v60 < v59)
        {
          v61 = -48;
        }

        else if (v60 < 0x41 || v60 >= v58)
        {
          OUTLINED_FUNCTION_15_9();
          if (!v21 || v60 >= v62)
          {
            goto LABEL_137;
          }

          v61 = -87;
        }

        else
        {
          v61 = -55;
        }

        if ((v57 * a3) >> 64 == (v57 * a3) >> 63 && !__OFADD__(v57 * a3, (v60 + v61)))
        {
          OUTLINED_FUNCTION_30_3();
          if (!v9)
          {
            continue;
          }
        }

        goto LABEL_137;
      }
    }

    goto LABEL_137;
  }

LABEL_142:
  __break(1u);
}