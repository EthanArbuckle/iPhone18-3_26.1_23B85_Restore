void sub_27222291C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 4 * v16 + 32), (a2 + 4 * a3), 4 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_272222A30(uint64_t a1, float a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    while (1)
    {
      v16 = v15 + 3;
      if (__OFADD__(v15, 3))
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v15 < 0)
      {
        break;
      }

      if (v15 + 1 >= v14)
      {
        goto LABEL_23;
      }

      if (v15 + 2 >= v14)
      {
        goto LABEL_24;
      }

      v17 = (((*(a1 + 32 + 4 * v15) + 0.0) + *(a1 + 32 + 4 * (v15 + 1))) + *(a1 + 32 + 4 * (v15 + 2))) / 3.0;
      v18 = *(v2 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_speechInProgress);
      if (v18 == 1)
      {
        if (v17 > a2)
        {
          v25 = sub_2722C389C();
          (*(v6 + 16))(v13, v25, v5);
          v20 = sub_27237725C();
          v26 = sub_272377E7C();
          if (os_log_type_enabled(v20, v26))
          {
            v22 = swift_slowAlloc();
            *v22 = 134218240;
            *(v22 + 4) = v17;
            *(v22 + 12) = 2048;
            *(v22 + 14) = a2;
            _os_log_impl(&dword_2721E4000, v20, v26, "SpeechDetector: Pending Speech stopped, silence probability %f > %f", v22, 0x16u);
            v23 = 256;
LABEL_17:
            v24 = v18 ^ 1;
            MEMORY[0x2743C69C0](v22, -1, -1);
          }

          else
          {
            v24 = 0;
            v23 = 256;
          }

          goto LABEL_20;
        }
      }

      else if (v17 < a2)
      {
        v19 = sub_2722C389C();
        (*(v6 + 16))(v10, v19, v5);
        v20 = sub_27237725C();
        v21 = sub_272377E7C();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 134218240;
          *(v22 + 4) = v17;
          *(v22 + 12) = 2048;
          *(v22 + 14) = a2;
          _os_log_impl(&dword_2721E4000, v20, v21, "SpeechDetector: Speech started, silence probability %f < %f", v22, 0x16u);
          v23 = 0;
          v13 = v10;
          goto LABEL_17;
        }

        v23 = 0;
        v24 = 1;
        v13 = v10;
LABEL_20:

        (*(v6 + 8))(v13, v5);
        return v23 | v24;
      }

      v15 = v16;
      if (v16 >= v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_14:
    v23 = 0;
    v24 = 0;
    return v23 | v24;
  }

  return result;
}

uint64_t VASpeechDetector.deinit()
{
  sub_272216300(v0 + 16);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream, &qword_280881AC0, &qword_27237CB18);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder, &qword_280881AC8, &unk_27237CB20);

  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask);

  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask);

  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadModel);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_floatBuffer);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_stopProcessingActor);

  v6 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionBufferActor);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStream, &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder, &qword_280881AD0, &unk_27237CB30);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStream, &qword_2808819C0, &unk_27237C510);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStreamBuilder, &qword_280881AD8, &qword_27237CB40);
  return v0;
}

uint64_t VASpeechDetector.__deallocating_deinit()
{
  VASpeechDetector.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_272222F18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272222F60()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272211DBC;

  return sub_27221E398(v4, v5, v6, v2, v3);
}

unint64_t sub_272222FFC()
{
  result = qword_280881B00;
  if (!qword_280881B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B00);
  }

  return result;
}

uint64_t sub_272223060(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2722230A8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for E5RTTensorDescriptorComponentDatatype(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for E5RTTensorDescriptorComponentDatatype(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_272223244(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_272223258(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2722232A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_2722232F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_272223314(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27222335C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2722233D4()
{
  sub_272219478(319, &qword_280881B08, &qword_280881AA0, &qword_27237CAE8);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_272219478(319, &qword_280881B10, &qword_280881AA8, &unk_27237CAF0);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_272219478(319, &qword_280881A10, &qword_280881900, &qword_27237C4F0);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_272219478(319, &qword_280881B18, &qword_280881AB0, &unk_27237CB00);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_272219478(319, &qword_280881A18, &qword_280881908, &qword_27237C4F8);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_272219478(319, &qword_280881B20, &qword_280881AB8, &qword_27237CB10);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_27222378C()
{
  result = qword_280881B38;
  if (!qword_280881B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B38);
  }

  return result;
}

double sub_2722237E0(_OWORD *a1)
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

char *sub_2722237F8(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v10;
  if (__OFADD__(v7, v10))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 <= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v7;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v6 = a2;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v11;
  if (!result)
  {
    goto LABEL_8;
  }

  v13 = *(v11 + 24) >> 1;
  if (v13 < v8)
  {
    goto LABEL_19;
  }

  if (v9 == v5)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      if (v7 <= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = v7;
      }

LABEL_11:
      result = sub_2722005AC(result, v14, 1);
      v11 = *v4;
      v13 = *(*v4 + 24) >> 1;
      if (v9 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v11 + 16);
  if (v13 - v15 < v10)
  {
    __break(1u);
  }

  else
  {
    result = memcpy((v11 + 4 * v15 + 32), (v6 + 4 * v5), 4 * v10);
    if (v10 <= 0)
    {
LABEL_16:
      result = swift_unknownObjectRelease();
      *v4 = v11;
      return result;
    }

    v16 = *(v11 + 16);
    v17 = __OFADD__(v16, v10);
    v18 = v16 + v10;
    if (!v17)
    {
      *(v11 + 16) = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *sub_272223918(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 16);
    v4 = sub_272377B5C();
    *(v4 + 16) = v1;
    bzero((v4 + 32), 2 * v1);

    v19 = MEMORY[0x277D84F90];
    sub_272215F8C(0, v1, 0);
    v5 = v19;
    v6 = (a1 + 32);
    while (1)
    {
      v7 = *v6;
      if ((*v6 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v7 <= -32769.0)
      {
        goto LABEL_18;
      }

      if (v7 >= 32768.0)
      {
        goto LABEL_19;
      }

      v19 = v5;
      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        sub_272215F8C((v8 > 1), v9 + 1, 1);
        v5 = v19;
      }

      v5[2] = v9 + 1;
      *(v5 + v9 + 16) = v7;
      ++v6;
      if (!--v1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = MEMORY[0x277D84F90];

LABEL_11:
  v19 = 0x40CF400000000000;
  v20 = xmmword_27237C4D0;
  v21 = xmmword_27237C4E0;
  v10 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v5[2];
  if (HIDWORD(v11))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v12 = v10;
  v13 = objc_allocWithZone(MEMORY[0x277CB83C8]);
  v14 = [v13 initWithPCMFormat:v12 frameCapacity:v11, v19, v20, v21, v22];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v16 = [v14 int16ChannelData];
  if (v16)
  {
    v16 = *v16;
  }

  memcpy(v16, v5 + 4, 2 * v11);

  [v15 setFrameLength_];

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t sub_272223B5C()
{
  result = qword_280881B40;
  if (!qword_280881B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B40);
  }

  return result;
}

VoiceActions::TinyASRGatingMode_optional __swiftcall TinyASRGatingMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_272223C84()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_272223CD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_272223D58(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_272223DCC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_272223E0C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 89);
  return result;
}

uint64_t sub_272223E50(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 89) = v2;
  return result;
}

uint64_t sub_272223E90()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_272223EDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_272223F30()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_272223F7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t sub_272224004(char a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_272224078(char a1)
{
  result = swift_beginAccess();
  *(v1 + 145) = a1;
  return result;
}

uint64_t sub_2722240EC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 146) = a1;
  return result;
}

uint64_t sub_27222412C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 147);
  return result;
}

uint64_t sub_272224170(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 147) = v2;
  return result;
}

uint64_t sub_2722241B0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 148);
  return result;
}

uint64_t sub_2722241F4(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 148) = v2;
  return result;
}

uint64_t VATasrConfiguration.__allocating_init(tasrModelPath:labelModelPath:joinerModelPath:contextEncoderModelPath:vadModelFilename:silenceModelFeatureCount:useContext:vocabFilename:useEspressoV2:computeUnits:espressoV1ModelPrefix:timingEnabled:shouldWaitForAdditionalLoopForFinal:useTransducer:gatedMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char *a11, char a12, uint64_t a13, uint64_t a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19, char a20, char a21, char *a22)
{
  v24 = a14;
  v25 = swift_allocObject();
  v26 = *a11;
  v33 = *a16;
  v38 = *a22;
  *(v25 + 148) = 0;
  *(v25 + 32) = 0;
  *(v25 + 128) = 0u;
  *(v25 + 40) = 0;
  *(v25 + 112) = 0u;
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  swift_beginAccess();
  *(v25 + 112) = a3;
  *(v25 + 120) = a4;
  swift_beginAccess();
  *(v25 + 128) = a5;
  *(v25 + 136) = a6;
  swift_beginAccess();
  *(v25 + 32) = a7;
  *(v25 + 40) = a8;
  v27 = 0x2E454E415F444156;
  if (a10)
  {
    v27 = a9;
  }

  v28 = 0xEA00000000003565;
  if (a10)
  {
    v28 = a10;
  }

  *(v25 + 56) = v27;
  *(v25 + 64) = v28;
  *(v25 + 147) = v26;
  *(v25 + 48) = a12;
  *(v25 + 88) = a15;
  *(v25 + 89) = v33;
  *(v25 + 96) = a17;
  *(v25 + 104) = a18;
  if (!a14)
  {
    swift_bridgeObjectRetain_n();
    MEMORY[0x2743C4AD0](0x742E6261636F762FLL, 0xEA00000000007478);

    a13 = a1;
    v24 = a2;
  }

  *(v25 + 72) = a13;
  *(v25 + 80) = v24;
  *(v25 + 144) = a19 & 1;
  *(v25 + 145) = a20 & 1;
  *(v25 + 146) = a21 & 1;
  swift_beginAccess();
  *(v25 + 148) = v38;
  return v25;
}

uint64_t VATasrConfiguration.init(tasrModelPath:labelModelPath:joinerModelPath:contextEncoderModelPath:vadModelFilename:silenceModelFeatureCount:useContext:vocabFilename:useEspressoV2:computeUnits:espressoV1ModelPrefix:timingEnabled:shouldWaitForAdditionalLoopForFinal:useTransducer:gatedMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char *a11, char a12, uint64_t a13, uint64_t a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19, char a20, char a21, char *a22)
{
  v23 = v22;
  v27 = a14;
  v37 = *a11;
  v38 = *a16;
  v41 = *a22;
  *(v22 + 32) = 0;
  *(v22 + 148) = 0;
  v28 = v22 + 32;
  *(v22 + 128) = 0u;
  *(v22 + 40) = 0;
  *(v22 + 112) = 0u;
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  swift_beginAccess();
  *(v22 + 112) = a3;
  *(v22 + 120) = a4;
  swift_beginAccess();
  *(v22 + 128) = a5;
  *(v22 + 136) = a6;
  swift_beginAccess();
  v29 = *(v22 + 40);
  *v28 = a7;
  *(v28 + 8) = a8;

  v30 = 0x2E454E415F444156;
  if (a10)
  {
    v30 = a9;
  }

  v31 = 0xEA00000000003565;
  if (a10)
  {
    v31 = a10;
  }

  *(v28 + 24) = v30;
  *(v28 + 32) = v31;
  *(v28 + 115) = v37;
  *(v28 + 16) = a12;
  *(v28 + 56) = a15;
  *(v28 + 57) = v38;
  *(v28 + 64) = a17;
  *(v28 + 72) = a18;
  if (a14)
  {
  }

  else
  {

    MEMORY[0x2743C4AD0](0x742E6261636F762FLL, 0xEA00000000007478);

    a13 = a1;
    v27 = a2;
  }

  *(v23 + 72) = a13;
  *(v23 + 80) = v27;
  *(v23 + 144) = a19 & 1;
  *(v23 + 145) = a20 & 1;
  *(v23 + 146) = a21 & 1;
  swift_beginAccess();
  *(v23 + 148) = v41;
  return v23;
}

uint64_t static VATasrConfiguration.buildE23BSmallNoContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD00000000000001ELL;
  *(v2 + 24) = 0x8000000272389460;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 0;
  *(v2 + 88) = 257;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD000000000000028;
  *(v2 + 80) = 0x8000000272389480;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE23BSmallContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD00000000000001CLL;
  *(v2 + 24) = 0x80000002723894B0;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 32) = 0xD000000000000023;
  *(v2 + 40) = 0x80000002723894D0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 1;
  *(v2 + 88) = 257;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD000000000000026;
  *(v2 + 80) = 0x8000000272389500;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE13BSmallNoContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD000000000000011;
  *(v2 + 24) = 0x8000000272389530;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 0;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD00000000000001BLL;
  *(v2 + 80) = 0x8000000272389550;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE13BNoContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0x646F6D6C6D2E6233;
  *(v2 + 24) = 0xEB00000000636C65;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 0;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD000000000000015;
  *(v2 + 80) = 0x8000000272389570;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE13BSmallContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD000000000000019;
  *(v2 + 24) = 0x8000000272389590;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x80000002723895B0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 1;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD000000000000023;
  *(v2 + 80) = 0x80000002723895D0;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE13BContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD000000000000013;
  *(v2 + 24) = 0x8000000272389600;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x8000000272389620;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 1;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD00000000000001DLL;
  *(v2 + 80) = 0x8000000272389640;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE1Transducer(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD000000000000010;
  *(v2 + 24) = 0x8000000272389660;
  swift_beginAccess();
  *(v2 + 112) = 0xD000000000000016;
  *(v2 + 120) = 0x8000000272389680;
  swift_beginAccess();
  *(v2 + 128) = xmmword_27237CFA0;
  swift_beginAccess();
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0xD000000000000013;
  *(v2 + 64) = 0x80000002723896A0;
  *(v2 + 147) = 1;
  *(v2 + 48) = 0;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x6C65646F6DLL;
  *(v2 + 104) = 0xE500000000000000;
  *(v2 + 72) = 0xD00000000000001ALL;
  *(v2 + 80) = 0x80000002723896C0;
  *(v2 + 144) = a1;
  *(v2 + 145) = 256;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE1SmallTransducer(timingEnabled:shouldWaitForAdditionalLoopForFinal:gatedMode:)(char a1, char a2, char *a3)
{
  v7 = *a3;
  type metadata accessor for VATasrConfiguration();
  v3 = swift_allocObject();
  *(v3 + 148) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 16) = 0xD000000000000016;
  *(v3 + 24) = 0x80000002723896E0;
  swift_beginAccess();
  *(v3 + 112) = 0xD00000000000001CLL;
  *(v3 + 120) = 0x8000000272389700;
  swift_beginAccess();
  *(v3 + 128) = 0xD000000000000015;
  *(v3 + 136) = 0x8000000272389720;
  swift_beginAccess();
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0xD000000000000013;
  *(v3 + 64) = 0x80000002723896A0;
  *(v3 + 48) = 0;
  *(v3 + 88) = 256;
  *(v3 + 96) = 0x62382D6C65646F6DLL;
  *(v3 + 104) = 0xEA00000000007469;
  *(v3 + 72) = 0xD000000000000020;
  *(v3 + 80) = 0x8000000272389740;
  *(v3 + 144) = a1;
  *(v3 + 145) = a2;
  *(v3 + 146) = 257;
  swift_beginAccess();
  *(v3 + 148) = v7;
  return v3;
}

uint64_t static VATasrConfiguration.buildE1SmallFastTransducer(timingEnabled:shouldWaitForAdditionalLoopForFinal:gatedMode:)(char a1, char a2, char *a3)
{
  v7 = *a3;
  type metadata accessor for VATasrConfiguration();
  v3 = swift_allocObject();
  *(v3 + 148) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 16) = 0xD00000000000001BLL;
  *(v3 + 24) = 0x8000000272389770;
  swift_beginAccess();
  *(v3 + 112) = 0xD000000000000021;
  *(v3 + 120) = 0x8000000272389790;
  swift_beginAccess();
  *(v3 + 128) = 0xD00000000000001ALL;
  *(v3 + 136) = 0x80000002723897C0;
  swift_beginAccess();
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0xD000000000000013;
  *(v3 + 64) = 0x80000002723896A0;
  *(v3 + 48) = 0;
  *(v3 + 88) = 256;
  *(v3 + 96) = 0x62382D6C65646F6DLL;
  *(v3 + 104) = 0xEA00000000007469;
  *(v3 + 72) = 0xD000000000000025;
  *(v3 + 80) = 0x80000002723897E0;
  *(v3 + 144) = a1;
  *(v3 + 145) = a2;
  *(v3 + 146) = 257;
  swift_beginAccess();
  *(v3 + 148) = v7;
  return v3;
}

uint64_t static VATasrConfiguration.buildE1SmallFast1000Transducer(timingEnabled:shouldWaitForAdditionalLoopForFinal:gatedMode:)(char a1, char a2, char *a3)
{
  v7 = *a3;
  type metadata accessor for VATasrConfiguration();
  v3 = swift_allocObject();
  *(v3 + 148) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 16) = 0xD000000000000020;
  *(v3 + 24) = 0x8000000272389810;
  swift_beginAccess();
  *(v3 + 112) = 0xD000000000000026;
  *(v3 + 120) = 0x8000000272389840;
  swift_beginAccess();
  *(v3 + 128) = 0xD00000000000001FLL;
  *(v3 + 136) = 0x8000000272389870;
  swift_beginAccess();
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0xD000000000000013;
  *(v3 + 64) = 0x80000002723896A0;
  *(v3 + 48) = 0;
  *(v3 + 88) = 256;
  *(v3 + 96) = 0x62382D6C65646F6DLL;
  *(v3 + 104) = 0xEA00000000007469;
  *(v3 + 72) = 0xD00000000000002ALL;
  *(v3 + 80) = 0x8000000272389890;
  *(v3 + 144) = a1;
  *(v3 + 145) = a2;
  *(v3 + 146) = 257;
  swift_beginAccess();
  *(v3 + 148) = v7;
  return v3;
}

uint64_t static VATasrConfiguration.buildE1SmallFast500Transducer(timingEnabled:shouldWaitForAdditionalLoopForFinal:gatedMode:)(char a1, char a2, char *a3)
{
  v7 = *a3;
  type metadata accessor for VATasrConfiguration();
  v3 = swift_allocObject();
  *(v3 + 148) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 16) = 0xD00000000000001FLL;
  *(v3 + 24) = 0x80000002723898C0;
  swift_beginAccess();
  *(v3 + 112) = 0xD000000000000025;
  *(v3 + 120) = 0x80000002723898E0;
  swift_beginAccess();
  *(v3 + 128) = 0xD00000000000001ELL;
  *(v3 + 136) = 0x8000000272389910;
  swift_beginAccess();
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0xD000000000000013;
  *(v3 + 64) = 0x80000002723896A0;
  *(v3 + 48) = 0;
  *(v3 + 88) = 256;
  *(v3 + 96) = 0x62382D6C65646F6DLL;
  *(v3 + 104) = 0xEA00000000007469;
  *(v3 + 72) = 0xD000000000000029;
  *(v3 + 80) = 0x8000000272389930;
  *(v3 + 144) = a1;
  *(v3 + 145) = a2;
  *(v3 + 146) = 257;
  swift_beginAccess();
  *(v3 + 148) = v7;
  return v3;
}

uint64_t sub_27222584C()
{
  v1 = (*(*v0 + 224))();
  if (v2)
  {
    v5 = v1;

    MEMORY[0x2743C4AD0](0xD000000000000010, 0x80000002723899A0);

    return v5;
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v4 = 0xD000000000000038;
    v4[1] = 0x8000000272389960;
    return swift_willThrow();
  }
}

uint64_t sub_272225930()
{
  v2 = (*(*v0 + 200))();

  MEMORY[0x2743C4AD0](0x2E6769666E6F632FLL, 0xEC0000006E6F736ALL);

  return v2;
}

unint64_t sub_2722259B8(char a1)
{
  result = 0x65646F4D72736174;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x65746E6F43657375;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6C69466261636F76;
      break;
    case 5:
      result = 0x6572707345657375;
      break;
    case 6:
      result = 0x55657475706D6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x646F4D6C6562616CLL;
      break;
    case 9:
      result = 0x6F4D72656E696F6ALL;
      break;
    case 10:
      result = 0x6E45676E696D6974;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0x736E617254657375;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x646F4D6465746167;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_272225C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2722271A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_272225C48(uint64_t a1)
{
  v2 = sub_272226414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272225C84(uint64_t a1)
{
  v2 = sub_272226414();

  return MEMORY[0x2821FE720](a1, v2);
}

void *VATasrConfiguration.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  return v0;
}

uint64_t VATasrConfiguration.__deallocating_deinit()
{
  VATasrConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_272225D44(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280881B60, &qword_27237CFB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272226414();
  v11 = sub_2723787CC();
  (*(*v3 + 200))(v11);
  LOBYTE(v30) = 0;
  sub_27237858C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    (*(*v3 + 224))(v12);
    LOBYTE(v30) = 1;
    sub_27237852C();

    (*(*v3 + 248))(v13);
    LOBYTE(v30) = 2;
    v14 = sub_27237859C();
    (*(*v3 + 272))(v14);
    LOBYTE(v30) = 3;
    sub_27237858C();

    (*(*v3 + 296))(v16);
    LOBYTE(v30) = 4;
    sub_27237858C();

    (*(*v3 + 320))(v17);
    LOBYTE(v30) = 5;
    v18 = sub_27237859C();
    (*(*v3 + 344))(&v30, v18);
    v29 = v30;
    v28 = 6;
    sub_272226468();
    v19 = sub_2723785DC();
    (*(*v3 + 368))(v19);
    LOBYTE(v30) = 7;
    sub_27237858C();

    (*(*v3 + 392))(v20);
    LOBYTE(v30) = 8;
    sub_27237852C();

    (*(*v3 + 416))(v21);
    LOBYTE(v30) = 9;
    sub_27237852C();

    (*(*v3 + 440))(v22);
    LOBYTE(v30) = 10;
    v23 = sub_27237859C();
    (*(*v3 + 464))(v23);
    LOBYTE(v30) = 11;
    v24 = sub_27237859C();
    (*(*v3 + 488))(v24);
    LOBYTE(v30) = 12;
    v25 = sub_27237859C();
    (*(*v3 + 512))(&v30, v25);
    v29 = v30;
    v28 = 13;
    sub_2722264BC();
    v26 = sub_2723785DC();
    (*(*v3 + 536))(&v30, v26);
    v29 = 14;
    sub_272226510();
    sub_2723785DC();
    return (*(v6 + 8))(v9, v5);
  }
}

unint64_t sub_272226414()
{
  result = qword_280886010[0];
  if (!qword_280886010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280886010);
  }

  return result;
}

unint64_t sub_272226468()
{
  result = qword_280881B68;
  if (!qword_280881B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B68);
  }

  return result;
}

unint64_t sub_2722264BC()
{
  result = qword_280881B70;
  if (!qword_280881B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B70);
  }

  return result;
}

unint64_t sub_272226510()
{
  result = qword_280881B78;
  if (!qword_280881B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B78);
  }

  return result;
}

uint64_t VATasrConfiguration.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  VATasrConfiguration.init(from:)(a1);
  return v2;
}

uint64_t VATasrConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280881B80, &qword_27237CFB8);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v43 = a1;
  v44 = v3;
  *(v3 + 128) = 0u;
  v9 = v3 + 128;
  *(v9 - 96) = 0;
  *(v9 - 16) = 0u;
  *(v9 + 20) = 0;
  *(v9 - 88) = 0;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272226414();
  v42 = v8;
  sub_2723787AC();
  if (v2)
  {
    v36 = v44;
    v13 = *(v44 + 40);

    v14 = *(v36 + 120);

    v15 = *(v36 + 136);

    type metadata accessor for VATasrConfiguration();
    swift_deallocPartialClassInstance();
    sub_2722039C8(v43);
  }

  else
  {
    v38 = (v9 + 20);
    v39 = v9 - 16;
    v11 = v40;
    v48 = 0;
    v12 = sub_2723784AC();
    v17 = v44;
    *(v44 + 16) = v12;
    *(v17 + 24) = v18;
    v48 = 1;
    v19 = sub_27237843C();
    v21 = v20;
    swift_beginAccess();
    v22 = *(v17 + 40);
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;

    v47 = 2;
    *(v17 + 48) = sub_2723784BC() & 1;
    v47 = 3;
    *(v17 + 56) = sub_2723784AC();
    *(v17 + 64) = v23;
    v47 = 4;
    *(v17 + 72) = sub_2723784AC();
    *(v17 + 80) = v24;
    v47 = 5;
    *(v17 + 88) = sub_2723784BC() & 1;
    v46 = 6;
    sub_272226BE4();
    sub_2723784FC();
    *(v17 + 89) = v47;
    v47 = 7;
    *(v17 + 96) = sub_2723784AC();
    *(v17 + 104) = v25;
    v47 = 8;
    v26 = sub_27237843C();
    v28 = v27;
    swift_beginAccess();
    v29 = *(v17 + 120);
    *(v17 + 112) = v26;
    *(v17 + 120) = v28;

    v46 = 9;
    v30 = sub_27237843C();
    v32 = v31;
    swift_beginAccess();
    v33 = v44;
    v34 = *(v44 + 136);
    *(v44 + 128) = v30;
    *(v33 + 136) = v32;

    v45 = 10;
    *(v44 + 144) = sub_2723784BC() & 1;
    v45 = 11;
    *(v44 + 145) = sub_2723784BC() & 1;
    v45 = 12;
    *(v44 + 146) = sub_2723784BC() & 1;
    v49 = 13;
    sub_272226C38();
    sub_2723784FC();
    *(v44 + 147) = v45;
    v45 = 14;
    sub_272226C8C();
    sub_2723784FC();
    (*(v11 + 8))(v42, v41);
    LOBYTE(v21) = v49;
    v35 = v38;
    swift_beginAccess();
    *v35 = v21;
    sub_2722039C8(v43);
    return v44;
  }

  return v36;
}

unint64_t sub_272226BE4()
{
  result = qword_280881B88;
  if (!qword_280881B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B88);
  }

  return result;
}

unint64_t sub_272226C38()
{
  result = qword_280881B90;
  if (!qword_280881B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B90);
  }

  return result;
}

unint64_t sub_272226C8C()
{
  result = qword_280881B98;
  if (!qword_280881B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B98);
  }

  return result;
}

unint64_t sub_272226CE4()
{
  result = qword_280881BA0;
  if (!qword_280881BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BA0);
  }

  return result;
}

uint64_t sub_272226D38@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 592))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of VATasrConfiguration.__allocating_init(tasrModelPath:labelModelPath:joinerModelPath:contextEncoderModelPath:vadModelFilename:silenceModelFeatureCount:useContext:vocabFilename:useEspressoV2:computeUnits:espressoV1ModelPrefix:timingEnabled:shouldWaitForAdditionalLoopForFinal:useTransducer:gatedMode:)()
{
  v2 = *(v0 + 560);

  return v2();
}

uint64_t getEnumTagSinglePayload for VATasrConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VATasrConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2722270A0()
{
  result = qword_2808864A0[0];
  if (!qword_2808864A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808864A0);
  }

  return result;
}

unint64_t sub_2722270F8()
{
  result = qword_2808865B0;
  if (!qword_2808865B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808865B0);
  }

  return result;
}

unint64_t sub_272227150()
{
  result = qword_2808865B8[0];
  if (!qword_2808865B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808865B8);
  }

  return result;
}

uint64_t sub_2722271A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D72736174 && a2 == 0xED0000687461506CLL;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000272389A00 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E6F43657375 && a2 == 0xEA00000000007478 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272389A30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C69466261636F76 && a2 == 0xED0000656D616E65 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572707345657375 && a2 == 0xED000032566F7373 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x55657475706D6F63 && a2 == 0xEC0000007374696ELL || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000272389A60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646F4D6C6562616CLL && a2 == 0xEE00687461506C65 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F4D72656E696F6ALL && a2 == 0xEF687461506C6564 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E45676E696D6974 && a2 == 0xED000064656C6261 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000272389AB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736E617254657375 && a2 == 0xED00007265637564 || (sub_27237865C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000272389AF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x646F4D6465746167 && a2 == 0xE900000000000065)
  {

    return 14;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_27222769C()
{
  v1 = *v0;
  if (v1 <= 2 && !*v0)
  {
    v3 = 1;
LABEL_10:

    return v3 & 1;
  }

  v2 = sub_27237865C();

  if ((v2 & 1) == 0)
  {
    if (v1 > 2 || v1 == 1)
    {
      v3 = sub_27237865C();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_10;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_2722278AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0x6148686365657073;
      v6 = 0xEE006465646E4573;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0x74756F656D6974;
      }

      else
      {
        v5 = 0x536863754D6F6F74;
      }

      if (v2 == 4)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v6 = 0xED00006863656570;
      }
    }
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000272389B40;
    if (a1 != 1)
    {
      v3 = 0x54676E696E726177;
      v4 = 0xEF7973696F4E6F6FLL;
    }

    if (a1)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v2)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x8000000272389B20;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0xEE006465646E4573;
      if (v5 != 0x6148686365657073)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0xE700000000000000;
      if (v5 != 0x74756F656D6974)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = 0xED00006863656570;
      if (v5 != 0x536863754D6F6F74)
      {
LABEL_39:
        v9 = sub_27237865C();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 0x54676E696E726177;
    }

    if (a2 == 1)
    {
      v8 = 0x8000000272389B40;
    }

    else
    {
      v8 = 0xEF7973696F4E6F6FLL;
    }

    if (v5 != v7)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0x8000000272389B20;
    if (v5 != 0xD000000000000015)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v8)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

VoiceActions::VASpeechCollectionState_optional __swiftcall VASpeechCollectionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VASpeechCollectionState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x54676E696E726177;
  v3 = 0x6148686365657073;
  v4 = 0x74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x536863754D6F6F74;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_272227C48()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_272227D84()
{
  *v0;
  *v0;
  sub_27237790C();
}

uint64_t sub_272227EB0()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

void sub_272227FF4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7973696F4E6F6FLL;
  v4 = 0x54676E696E726177;
  v5 = 0xEE006465646E4573;
  v6 = 0x6148686365657073;
  v7 = 0xE700000000000000;
  v8 = 0x74756F656D6974;
  if (v2 != 4)
  {
    v8 = 0x536863754D6F6F74;
    v7 = 0xED00006863656570;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000272389B40;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000272389B20;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t (*sub_2722281B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_272228244;
}

uint64_t VASpeechCollector.__allocating_init(parameters:listener:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 24);
  v11 = a1[4];
  *(v5 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = v8;
  *(v5 + 36) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = v11;
  swift_beginAccess();
  *(v5 + 64) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t VASpeechCollector.init(parameters:listener:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 24);
  v10 = a1[4];
  *(v3 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  *(v3 + 32) = v7;
  *(v3 + 36) = v8;
  *(v3 + 40) = v9;
  *(v3 + 48) = v10;
  swift_beginAccess();
  *(v3 + 64) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2722283C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 36);
  v23 = *(v1 + 40);
  v6 = *(v1 + 48);
  v21 = *(*v1 + 120);
  v21();
  v8 = v7;
  v9 = type metadata accessor for VASpeechCollectionSessionImpl();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + 64) = 0;
  swift_unknownObjectWeakInit();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 72) = 0;
  *(v12 + 80) = v13;
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  sub_272376E4C();
  *(v12 + 16) = v2;
  *(v12 + 24) = v3;
  *(v12 + 32) = v4;
  *(v12 + 36) = v5;
  *(v12 + 40) = v23;
  *(v12 + 48) = v6;
  swift_beginAccess();
  *(v12 + 64) = v8;
  swift_unknownObjectWeakAssign();
  type metadata accessor for VAFixedLengthQueue();
  v14 = sub_272255908(v6);
  swift_unknownObjectRelease();
  *(v12 + OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl_squardAudioSamplesForVolumeCalculation) = v14;
  v15 = sub_272228F98();
  if (v24)
  {
  }

  result = (v21)(v15);
  if (result)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    v25[3] = v9;
    v25[4] = &off_28817DC88;
    v25[0] = v12;
    v20 = *(v18 + 8);

    v20(v25, ObjectType, v18);
    swift_unknownObjectRelease();
    result = sub_2722039C8(v25);
  }

  a1[3] = v9;
  a1[4] = &off_28817DC88;
  *a1 = v12;
  return result;
}

uint64_t sub_2722285C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  v8 = swift_allocObject();
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v13 = *(a1 + 24);
  v14 = a1[4];
  *(v8 + 64) = 0;
  swift_unknownObjectWeakInit();
  v15 = MEMORY[0x277D84F90];
  *(v8 + 72) = 0;
  *(v8 + 80) = v15;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  sub_272376E4C();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v11;
  *(v8 + 36) = v12;
  *(v8 + 40) = v13;
  *(v8 + 48) = v14;
  swift_beginAccess();
  *(v8 + 64) = a3;
  swift_unknownObjectWeakAssign();
  type metadata accessor for VAFixedLengthQueue();
  v16 = sub_272255908(v14);
  swift_unknownObjectRelease();
  *(v8 + OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl_squardAudioSamplesForVolumeCalculation) = v16;
  return v8;
}

uint64_t VASpeechCollector.__deallocating_deinit()
{
  sub_272216300(v0 + 56);

  return swift_deallocClassInstance();
}

double static VASpeechCollectionParameters.defaultForNameRecognition()@<D0>(uint64_t a1@<X8>)
{
  *&result = 32000;
  *a1 = xmmword_27237D2F0;
  *(a1 + 16) = 0xC15000003E99999ALL;
  *(a1 + 24) = 0;
  *(a1 + 32) = 16000;
  return result;
}

uint64_t VASpeechCollectionParameters.dbWarningThreshold.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

float sub_272228874@<S0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 32);
  v4 = *(v1 + 36);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  *(a1 + 20) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_2722288D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 24);
  v7 = a1[4];
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 36) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  return result;
}

uint64_t sub_272228950()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_27222898C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2722289EC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_27222C070;
}

void sub_272228A80(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_272228B38(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_272228B78()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_272228BB0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t sub_272228C48@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 88);
  return result;
}

uint64_t sub_272228C8C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 88) = v2;
  return result;
}

uint64_t sub_272228CCC()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t sub_272228D04(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t sub_272228D4C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl_squardAudioSamplesForVolumeCalculation;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_272228D94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl_squardAudioSamplesForVolumeCalculation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272228E4C(void *a1)
{
  v3 = type metadata accessor for VAKeywordSpotterBase();
  v4 = [a1 format];
  static VAKeywordSpotterBase.checkSupportedAudioFormat(_:)(v4);

  if (!v1)
  {
    v5 = [a1 frameLength];
    if (v5)
    {
      v6 = v5;
      v7 = v5;
      v3 = sub_272377B5C();
      *(v3 + 16) = v7;
      bzero((v3 + 32), 2 * v6);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v8 = [a1 int16ChannelData];
    if (v8)
    {
      memcpy((v3 + 32), *v8, 2 * [a1 frameLength]);
    }

    else
    {

      v3 = 0x8000000272389B90;
      sub_2722032B4();
      swift_allocError();
      *v10 = 0xD000000000000048;
      v10[1] = 0x8000000272389B90;
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_272228F98()
{
  v2 = v0;
  v3 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v31 = &v27 - v10;
  type metadata accessor for VASpeechDetector();
  v11 = sub_27221A8BC();
  v13 = v12;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v32);
  v34 = v32[0];
  swift_unknownObjectRetain();
  result = VASpeechDetector.__allocating_init(modelFilename:featureCount:delegate:)(v11, v13, &v34, v0);
  if (!v1)
  {
    v15 = result;
    v27 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v7;
    v16 = *(*v0 + 272);

    v18 = v16(v17);
    (*(*v0 + 144))(v32, v18);
    v19.n128_u32[0] = v33;
    (*(*v15 + 672))(0, v19);
    v29 = 0;
    v20 = sub_272377C3C();
    v21 = v6;
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v22 = v30;
    v23 = v27;
    v24 = v28;
    (*(v30 + 16))(v27, v31, v28);
    v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    (*(v22 + 32))(v26 + v25, v23, v24);
    *(v26 + ((v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;

    sub_27222A1F0(0, 0, v21, &unk_27237D308, v26);

    return (*(v22 + 8))(v31, v24);
  }

  return result;
}

uint64_t sub_27222930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[96] = a5;
  v5[95] = a4;
  v6 = sub_272376E5C();
  v5[97] = v6;
  v7 = *(v6 - 8);
  v5[98] = v7;
  v8 = *(v7 + 64) + 15;
  v5[99] = swift_task_alloc();
  v9 = sub_27237728C();
  v5[100] = v9;
  v10 = *(v9 - 8);
  v5[101] = v10;
  v11 = *(v10 + 64) + 15;
  v5[102] = swift_task_alloc();
  v12 = sub_2721F065C(&qword_280881A80, &unk_27237D610);
  v5[103] = v12;
  v13 = *(v12 - 8);
  v5[104] = v13;
  v14 = *(v13 + 64) + 15;
  v5[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272229494, 0, 0);
}

uint64_t sub_272229494()
{
  v1 = v0[105];
  v2 = v0[95];
  sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  sub_272377C8C();
  v0[106] = 0;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[107] = v4;
  *v4 = v0;
  v4[1] = sub_272229564;
  v5 = v0[105];
  v6 = v0[103];

  return MEMORY[0x2822003E8](v0 + 34, 0, 0, v6);
}

uint64_t sub_272229564()
{
  v1 = *(*v0 + 856);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_272229660, 0, 0);
}

uint64_t sub_272229660()
{
  v98 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 352);
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  v3 = *(v0 + 368);
  v4 = *(v0 + 384);
  *(v0 + 240) = v3;
  *(v0 + 256) = v4;
  v5 = *(v0 + 272);
  v6 = *(v0 + 288);
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  v7 = *(v0 + 304);
  v8 = *(v0 + 320);
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  *(v0 + 112) = v3;
  *(v0 + 128) = v4;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  if (sub_272219874((v0 + 16)) != 1)
  {
    v9 = *(v0 + 848);
    v10 = *(v0 + 16);
    v11 = *(**(v0 + 768) + 320);
    v12 = *(v0 + 224);
    *(v0 + 464) = *(v0 + 208);
    *(v0 + 480) = v12;
    v13 = *(v0 + 256);
    *(v0 + 496) = *(v0 + 240);
    *(v0 + 512) = v13;
    v14 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v14;
    v15 = *(v0 + 192);
    *(v0 + 432) = *(v0 + 176);
    *(v0 + 448) = v15;
    sub_272218D40(v0 + 400, v0 + 528);
    v16 = v11(v10);
    if (v9)
    {
      v17 = *(v0 + 816);
      v18 = *(v0 + 808);
      v19 = *(v0 + 800);
      v20 = *(v0 + 768);
      (*(*(v0 + 832) + 8))(*(v0 + 840), *(v0 + 824));
      sub_2721F40F0(v0 + 144, &qword_280881A88, &qword_27237CA70);
      sub_2721F40F0(v0 + 144, &qword_280881A88, &qword_27237CA70);
      v21 = sub_2722C389C();
      (*(v18 + 16))(v17, v21, v19);

      v22 = v9;
      v23 = sub_27237725C();
      v24 = sub_272377E8C();

      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 816);
      v27 = *(v0 + 808);
      v28 = *(v0 + 800);
      if (v25)
      {
        v93 = *(v0 + 816);
        v95 = *(v0 + 800);
        v29 = *(v0 + 792);
        v30 = *(v0 + 784);
        v92 = v24;
        v31 = *(v0 + 776);
        v32 = *(v0 + 768);
        v33 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v97[0] = v90;
        *v33 = 136315394;
        (*(*v32 + 376))();
        sub_27222BB18();
        v34 = sub_27237862C();
        v36 = v35;
        (*(v30 + 8))(v29, v31);
        v37 = sub_2721FFD04(v34, v36, v97);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2112;
        v38 = v9;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v39;
        *v89 = v39;
        _os_log_impl(&dword_2721E4000, v23, v92, "Encountered error in VASpeechCollector id: %s  error: %@", v33, 0x16u);
        sub_2721F40F0(v89, &qword_280881A40, &unk_27237D620);
        MEMORY[0x2743C69C0](v89, -1, -1);
        sub_2722039C8(v90);
        MEMORY[0x2743C69C0](v90, -1, -1);
        MEMORY[0x2743C69C0](v33, -1, -1);

        v40 = (*(v27 + 8))(v93, v95);
      }

      else
      {

        v40 = (*(v27 + 8))(v26, v28);
      }

      if ((*(**(v0 + 768) + 168))(v40))
      {
        v53 = v52;
        ObjectType = swift_getObjectType();
        (*(v53 + 16))(v9, ObjectType, v53);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      goto LABEL_18;
    }

    v41 = v16;
    v42 = *(v0 + 768);
    v43 = sub_2721F40F0(v0 + 144, &qword_280881A88, &qword_27237CA70);
    v44 = *(*v42 + 240);
    v45 = (v44)(v43);
    v91 = *(v0 + 34);
    if ((v91 & 1) == 0 && *(v0 + 32) != 1)
    {
LABEL_27:
      v66 = *(v0 + 768);
      v44();
      if (*(v0 + 865) == 1)
      {
      }

      else
      {
        v68 = sub_27237865C();

        if ((v68 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if ((*(v0 + 33) & 1) != 0 || v91 != 1)
      {
        v72 = 3;
        goto LABEL_36;
      }

LABEL_32:
      v69 = *(v0 + 768);
      v70 = *((*(*v69 + 216))(v67) + 16);

      v67 = (*(*v69 + 144))(v97, v71);
      if (v70 < v97[0])
      {
        v72 = *(v0 + 864);
LABEL_37:
        v73 = *(v0 + 768);
        (v44)(v97, v67);
        if ((sub_2722278AC(v97[0], v72) & 1) == 0)
        {
          v74 = *(v0 + 768);
          LOBYTE(v97[0]) = v72;
          v75 = (*(*v74 + 248))(v97);
          v76 = (*(*v74 + 168))(v75);
          if (v76)
          {
            v78 = v77;
            v79 = *(v0 + 768);
            v80 = swift_getObjectType();
            *(v0 + 680) = type metadata accessor for VASpeechCollectionSessionImpl();
            *(v0 + 688) = &off_28817DC88;
            *(v0 + 656) = v79;
            v81 = v44;
            v82 = *(v78 + 8);

            v82(v0 + 656, v80, v78);
            v44 = v81;
            swift_unknownObjectRelease();
            v76 = sub_2722039C8((v0 + 656));
          }

          v83 = *(v0 + 768);
          v84 = (v44)(v97, v76);
          if (LOBYTE(v97[0]) - 3 <= 2)
          {
            v85 = (*(**(v0 + 768) + 264))(v84);
            if (v85)
            {
              (*(*v85 + 688))();
            }
          }
        }

        sub_2721F40F0(v0 + 144, &qword_280881A88, &qword_27237CA70);
        *(v0 + 848) = 0;
        v86 = *(MEMORY[0x277D85798] + 4);
        v87 = swift_task_alloc();
        *(v0 + 856) = v87;
        *v87 = v0;
        v87[1] = sub_272229564;
        v88 = *(v0 + 840);
        v48 = *(v0 + 824);
        v45 = (v0 + 272);
        v46 = 0;
        v47 = 0;

        return MEMORY[0x2822003E8](v45, v46, v47, v48);
      }

      v72 = 5;
LABEL_36:
      *(v0 + 864) = v72;
      goto LABEL_37;
    }

    v49 = *(v0 + 72);
    if (*(v0 + 80))
    {
      v50 = 0;
    }

    else
    {
      v50 = *(v0 + 72);
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (*(v0 + 112) == 1)
      {
        v51 = *(v41 + 16);
        goto LABEL_22;
      }

      v51 = *(v0 + 104);
      if ((v51 & 0x8000000000000000) == 0)
      {
LABEL_22:
        if (v51 >= v50)
        {
          v94 = v44;
          v96 = v51 - v50;
          if (*(v41 + 16) >= v51)
          {
            v60 = *(v0 + 768);
            v61 = (2 * v51) | 1;
            v62 = *(*v60 + 232);

            v63 = v62(v0 + 696);
            sub_27222A0DC(v41, v41 + 32, v50, v61);
            v63(v0 + 696, 0);
            v45 = (*(*v60 + 208))(v0 + 728);
            if (!__OFSUB__(*v46, v96))
            {
              v64 = *(v0 + 768);
              *v46 -= v96;
              v65 = v45(v0 + 728, 0);
              v44 = v94;
              (v94)(v97, v65);
              if (sub_27222769C())
              {
                *(v0 + 864) = 1;
              }

              goto LABEL_27;
            }

LABEL_50:
            __break(1u);
            return MEMORY[0x2822003E8](v45, v46, v47, v48);
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  (*(*(v0 + 832) + 8))(*(v0 + 840), *(v0 + 824));
LABEL_18:
  v55 = *(v0 + 840);
  v56 = *(v0 + 816);
  v57 = *(v0 + 792);

  v58 = *(v0 + 8);

  return v58();
}

void sub_27222A0DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_27222B82C(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 2 * v16 + 32), (a2 + 2 * a3), 2 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_27222A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_27222BF08(a3, v27 - v11);
  v13 = sub_272377C3C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2721F40F0(v12, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_272377BDC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2723778BC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_27222A4E0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 240);
  v3(v11);
  result = sub_2722278AC(v11[0], v2);
  if ((result & 1) == 0)
  {
    LOBYTE(v11[0]) = v2;
    v5 = (*(*v1 + 248))(v11);
    v6 = (*(*v1 + 168))(v5);
    if (v6)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      v11[3] = type metadata accessor for VASpeechCollectionSessionImpl();
      v11[4] = &off_28817DC88;
      v11[0] = v1;
      v10 = *(v8 + 8);

      v10(v11, ObjectType, v8);
      swift_unknownObjectRelease();
      v6 = sub_2722039C8(v11);
    }

    result = (v3)(v11, v6);
    if (LOBYTE(v11[0]) - 3 <= 2)
    {
      result = (*(*v1 + 264))(result);
      if (result)
      {
        (*(*result + 688))(result);
      }
    }
  }

  return result;
}

void (*sub_27222A704(void *a1, uint64_t a2))(uint64_t *, void)
{
  v4 = v3;
  v5 = v2;
  v45 = a2;
  v7 = sub_272376E5C();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_27237728C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = (*(*v2 + 360))(v44, v14);
  if (LOBYTE(v44[0]) - 3 <= 2)
  {
    v42 = v3;
    v18 = sub_2722C389C();
    (*(v12 + 16))(v16, v18, v11);

    v19 = sub_27237725C();
    v20 = sub_272377E8C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = a1;
      v22 = v21;
      v39 = v21;
      v40 = swift_slowAlloc();
      v44[0] = v40;
      *v22 = 136315138;
      v23 = *(*v5 + 376);
      v38 = v20;
      v23();
      sub_27222BB18();
      v24 = sub_27237862C();
      v26 = v25;
      (*(v43 + 8))(v10, v7);
      v27 = sub_2721FFD04(v24, v26, v44);
      a1 = v41;

      v28 = v39;
      *(v39 + 4) = v27;
      v29 = v28;
      _os_log_impl(&dword_2721E4000, v19, v38, "Adding audio to VASpeechCollectionSession %s when state is terminal", v28, 0xCu);
      v30 = v40;
      sub_2722039C8(v40);
      MEMORY[0x2743C69C0](v30, -1, -1);
      MEMORY[0x2743C69C0](v29, -1, -1);
    }

    v17 = (*(v12 + 8))(v16, v11);
    v4 = v42;
  }

  v31 = (*(*v5 + 192))(v17);
  v32 = (*(*v5 + 144))(v44);
  if (v44[1] >= v31)
  {
    v34 = (*(*v5 + 264))(v32);
    if (!v34 || ((*(*v34 + 680))(a1, v45), result = , !v4))
    {
      v35 = [a1 frameLength];
      result = (*(*v5 + 208))(v44);
      if (__OFADD__(*v36, v35))
      {
        __break(1u);
      }

      else
      {
        *v36 += v35;
        result(v44, 0);
        return (*(*v5 + 352))(a1);
      }
    }
  }

  else
  {
    LOBYTE(v44[0]) = 4;
    return sub_27222A4E0(v44);
  }

  return result;
}

void sub_27222ABF8(void *a1)
{
  v3 = v1;
  v88 = *MEMORY[0x277D85DE8];
  v5 = sub_27237728C();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v1 + 144);
  v10 = *v1 + 144;
  v11 = v9((v84 + 1), v7);
  if (v86)
  {
    goto LABEL_56;
  }

  v12 = v85;
  v13 = *(*v1 + 240);
  v80 = *v1 + 240;
  v81 = v13;
  (v13)((v84 + 1), v11);
  if ((sub_27222769C() & 1) == 0)
  {
    goto LABEL_56;
  }

  type metadata accessor for VAKeywordSpotterBase();
  v14 = [a1 format];
  static VAKeywordSpotterBase.checkSupportedAudioFormat(_:)(v14);

  if (v2)
  {
    goto LABEL_56;
  }

  v15 = [a1 int16ChannelData];
  if (!v15)
  {
    sub_2722032B4();
    swift_allocError();
    *v24 = 0xD000000000000042;
    v24[1] = 0x8000000272389BE0;
    swift_willThrow();
    goto LABEL_56;
  }

  v16 = v15;
  v76 = v10;
  v17 = &selRef_environment;
  v18 = [a1 frameLength];
  v19 = [a1 frameLength];
  if (v19)
  {
    v20 = v19;
    v21 = v18;
    v22 = v19;
    v23 = sub_272377B5C();
    *(v23 + 16) = v22;
    v18 = v21;
    v17 = &selRef_environment;
    bzero((v23 + 32), 4 * v20);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v25 = *v16;
  v26 = v18;
  vDSP_vflt16(v25, 1, (v23 + 32), 1, v18);

  v27 = v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_2721FF8B4(0, *(v23 + 16), 0, v23);
  }

  vDSP_vsdiv((v23 + 32), 1, flt_28817DC58, v27 + 8, 1, v26);

  v28 = [a1 v17[127]];
  if (v28)
  {
    v29 = v28;
    v30 = v28;
    v31 = sub_272377B5C();
    *(v31 + 16) = v30;
    bzero((v31 + 32), 4 * v29);
    v32 = v31;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v69 = v32 + 32;
  v33 = v32;
  MEMORY[0x2743C6C20](v27 + 32, 1);

  v83 = v33;
  v75 = *(v33 + 16);
  v35 = v9((v84 + 1), v34);
  v36 = v87;
  if (!v87)
  {
LABEL_62:
    __break(1u);
  }

  if (v87 < 1 || !v75)
  {
    goto LABEL_55;
  }

  v37 = 0;
  v70 = 0x8000000272389B40;
  v72 = "ureCount";
  v73 = v9;
  v74 = 0;
  v71 = v87;
  while (1)
  {
    v38 = __OFADD__(v37, v36);
    v39 = v37 + v36;
    v40 = ((v37 + v36) >> 63) ^ 0x8000000000000000;
    if (v38)
    {
      v39 = v40;
    }

    v82 = v39;
    v41 = v9((v84 + 1), v35);
    v42 = v37 + v87;
    if (__OFADD__(v37, v87))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v43 = *(v83 + 16);
    if (v43 >= v42)
    {
      v44 = v37 + v87;
    }

    else
    {
      v44 = *(v83 + 16);
    }

    v45 = (*v3 + 288);
    v46 = *v45;
    v47 = (*v45)(v41);
    v48 = v44 - v37;
    if (v44 < v37)
    {
      goto LABEL_58;
    }

    if (v37 < 0)
    {
      goto LABEL_59;
    }

    v49 = v47;
    v50 = *(v83 + 16);
    if (v50 < v37 || v50 < v44)
    {
      goto LABEL_60;
    }

    if (v42 < 0)
    {
      goto LABEL_61;
    }

    if (v50 == v48)
    {
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
      if (v44 != v37)
      {
        if (v48 < 1)
        {
          v61 = 4 * v48;
          v51 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_2721F065C(&qword_280881848, &unk_27237C250);
          v59 = swift_allocObject();
          v68 = 4 * v48;
          v51 = v59;
          v60 = j__malloc_size(v59);
          v61 = v68;
          v62 = v60 - 32;
          if (v60 < 32)
          {
            v62 = v60 - 29;
          }

          v51[2] = v48;
          v51[3] = 2 * (v62 >> 2);
        }

        memcpy(v51 + 4, (v69 + 4 * v37), v61);
      }
    }

    (*(*v49 + 152))(v51, v43);

    v53 = v46(v52);
    v54 = (*(*v53 + 168))(v53);

    *(v84 + 1) = 0;
    vDSP_meanv((v54 + 32), 1, (v84 + 1), *(v54 + 16));

    v55 = log10f(sqrtf(*(v84 + 1)));
    v81(v84);
    v56 = LOBYTE(v84[0]);
    if (LOBYTE(v84[0]) > 2u)
    {
      v9 = v73;
    }

    else
    {
      v9 = v73;
      if (!LOBYTE(v84[0]))
      {
        goto LABEL_41;
      }
    }

    v57 = sub_27237865C();

    if ((v57 & 1) == 0)
    {
      break;
    }

LABEL_43:
    if (v12 > (v55 * 20.0))
    {
      LOBYTE(v84[0]) = 0;
    }

    else
    {
      LOBYTE(v84[0]) = 2;
    }

    v35 = sub_27222A4E0(v84);
    v36 = v71;
    v37 = v82;
    if (v82 >= v75)
    {
      goto LABEL_55;
    }
  }

  if (v56 <= 2 && v56 != 1)
  {
LABEL_41:

    goto LABEL_43;
  }

  v58 = sub_27237865C();

  if (v58)
  {
    goto LABEL_43;
  }

  v63 = sub_2722C389C();
  (*(v78 + 16))(v77, v63, v79);
  v64 = sub_27237725C();
  v65 = sub_272377E8C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_2721E4000, v64, v65, "State changed from isWaiting", v66, 2u);
    MEMORY[0x2743C69C0](v66, -1, -1);
  }

  (*(v78 + 8))(v77, v79);
LABEL_55:

LABEL_56:
  v67 = *MEMORY[0x277D85DE8];
}

Class sub_27222B518()
{
  v1._rawValue = (*(*v0 + 216))();
  isa = convert(int16AudioBytes:)(v1).super.super.isa;

  return isa;
}

uint64_t sub_27222B574@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl__id;
  v4 = sub_272376E5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27222B5EC()
{
  sub_272216300((v0 + 56));
  v1 = *(v0 + 10);

  v2 = *(v0 + 12);

  v3 = OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl__id;
  v4 = sub_272376E5C();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl_squardAudioSamplesForVolumeCalculation];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VASpeechCollectionSessionImpl()
{
  result = qword_280886940;
  if (!qword_280886940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_27222B82C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881A78, &unk_27237CA50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_27222B928()
{
  v1 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_27222BA0C()
{
  v2 = *(sub_2721F065C(&qword_280881900, &qword_27237C4F0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272211DBC;

  return sub_27222930C(v5, v6, v7, v0 + v3, v4);
}

unint64_t sub_27222BB18()
{
  result = qword_280881BA8;
  if (!qword_280881BA8)
  {
    sub_272376E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BA8);
  }

  return result;
}

unint64_t sub_27222BB74()
{
  result = qword_280881BB0;
  if (!qword_280881BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BB0);
  }

  return result;
}

unint64_t sub_27222BBCC()
{
  result = qword_280881BB8;
  if (!qword_280881BB8)
  {
    sub_2721F214C(&qword_280881BC0, &qword_27237D408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BB8);
  }

  return result;
}

__n128 sub_27222BD54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27222BD68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27222BD88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_27222BDD4()
{
  result = sub_272376E5C();
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

unint64_t sub_27222BEB4()
{
  result = qword_280881BC8;
  if (!qword_280881BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BC8);
  }

  return result;
}

uint64_t sub_27222BF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27222BF78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27222BFB0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272211DBC;

  return sub_272215964(a1, v5);
}

uint64_t sub_27222C078()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C0BC(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C10C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C150(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C1A0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C1E4(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C234()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C278(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C2C8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C30C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C35C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C3A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C3F0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C484()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C4C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C518()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C55C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float sub_27222C5AC()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27222C5F4(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_27222C648()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27222C690(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_27222C6E4()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27222C72C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_27222C780()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C7C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C814()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C858(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float sub_27222C8A8()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27222C8F0(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_27222C944()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C988(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C9D8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222CA1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_27222CA6C(char a1)
{
  result = 0x5378614D656B6174;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 13:
      result = 0xD000000000000013;
      break;
    case 7:
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      return result;
    case 16:
      result = 0x6D61724674696177;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_27222CCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27222F908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27222CCD4(uint64_t a1)
{
  v2 = sub_27222E82C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27222CD10(uint64_t a1)
{
  v2 = sub_27222E82C();

  return MEMORY[0x2821FE720](a1, v2);
}

id static VAResultGeneratorConfiguration.buildForFixedSpotter(fixedConfig:waitFrames:)(void *a1, uint64_t a2)
{
  v20 = *sub_27226C778();
  v23 = *sub_27226C78C();
  v24 = *sub_27226C7A0();
  v3 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *a1) + 0x100))();
  v18 = (*((*v3 & *a1) + 0x118))();
  v29 = type metadata accessor for VAResultGeneratorConfiguration();
  v4 = objc_allocWithZone(v29);
  v5 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v6 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v7 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v8 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v9 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v10 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v11 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v12 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v13 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v16 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v17 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v19 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v22 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v14 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v25 = v14;
  v26 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v27 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v28 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  swift_beginAccess();
  v4[v5] = v20;
  swift_beginAccess();
  v4[v6] = v23;
  swift_beginAccess();
  v4[v7] = v24;
  swift_beginAccess();
  *&v4[v8] = v21;
  swift_beginAccess();
  *&v4[v9] = v18;
  swift_beginAccess();
  *&v4[v10] = 0;
  swift_beginAccess();
  *&v4[v11] = 5;
  swift_beginAccess();
  *&v4[v12] = 50;
  swift_beginAccess();
  *&v4[v13] = 25;
  swift_beginAccess();
  *&v4[v16] = 1056964608;
  swift_beginAccess();
  *&v4[v17] = 1056964608;
  swift_beginAccess();
  *&v4[v19] = 1056964608;
  swift_beginAccess();
  *&v4[v22] = 25;
  swift_beginAccess();
  *&v4[v25] = 10;
  swift_beginAccess();
  *&v4[v26] = 1056964608;
  swift_beginAccess();
  v4[v27] = 1;
  swift_beginAccess();
  *&v4[v28] = a2;
  v31.receiver = v4;
  v31.super_class = v29;
  return objc_msgSendSuper2(&v31, sel_init);
}

id sub_27222D16C(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  v22 = objc_allocWithZone(v17);
  v23 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v24 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v25 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v26 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v27 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v28 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v29 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v30 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v31 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v35 = &v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability];
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v36 = &v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio];
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v38 = &v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability];
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v39 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v41 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v43 = &v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability];
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v44 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v46 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  swift_beginAccess();
  v22[v23] = a1;
  swift_beginAccess();
  v22[v24] = a2;
  swift_beginAccess();
  v22[v25] = a3;
  swift_beginAccess();
  *&v22[v26] = a4;
  swift_beginAccess();
  *&v22[v27] = a5;
  swift_beginAccess();
  *&v22[v28] = a6;
  swift_beginAccess();
  *&v22[v29] = a7;
  swift_beginAccess();
  *&v22[v30] = a8;
  swift_beginAccess();
  *&v22[v31] = a13;
  swift_beginAccess();
  *v35 = a9;
  swift_beginAccess();
  *v36 = a10;
  swift_beginAccess();
  *v38 = a11;
  swift_beginAccess();
  *&v22[v39] = a14;
  swift_beginAccess();
  *&v22[v41] = a15;
  swift_beginAccess();
  *v43 = a12;
  swift_beginAccess();
  v22[v44] = a16;
  swift_beginAccess();
  *&v22[v46] = a17;
  v50.receiver = v22;
  v50.super_class = v49;
  return objc_msgSendSuper2(&v50, sel_init);
}

id sub_27222D564()
{
  v12 = *sub_2722D7170();
  v13 = *sub_2722D7184();
  v14 = *sub_2722D7198();
  v23 = type metadata accessor for VAResultGeneratorConfiguration();
  v0 = objc_allocWithZone(v23);
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v2 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v5 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v6 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v7 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v8 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v9 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v15 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v16 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v17 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v10 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v18 = v10;
  v19 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v20 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v21 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v22 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  swift_beginAccess();
  v0[v1] = v12;
  swift_beginAccess();
  v0[v2] = v13;
  swift_beginAccess();
  v0[v3] = v14;
  swift_beginAccess();
  *&v0[v4] = 126;
  swift_beginAccess();
  *&v0[v5] = 8;
  swift_beginAccess();
  *&v0[v6] = 5;
  swift_beginAccess();
  *&v0[v7] = 5;
  swift_beginAccess();
  *&v0[v8] = 6;
  swift_beginAccess();
  *&v0[v9] = 3;
  swift_beginAccess();
  *&v0[v15] = 1056964608;
  swift_beginAccess();
  *&v0[v16] = 1056964608;
  swift_beginAccess();
  *&v0[v17] = 1061997773;
  swift_beginAccess();
  *&v0[v18] = 6;
  swift_beginAccess();
  *&v0[v19] = 3;
  swift_beginAccess();
  *&v0[v20] = 1056964608;
  swift_beginAccess();
  v0[v21] = 1;
  swift_beginAccess();
  *&v0[v22] = 1;
  v24.receiver = v0;
  v24.super_class = v23;
  return objc_msgSendSuper2(&v24, sel_init);
}

id static VAResultGeneratorConfiguration.buildForA2AAttentionDetection()()
{
  v20 = type metadata accessor for VAResultGeneratorConfiguration();
  v0 = objc_allocWithZone(v20);
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v2 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v5 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v6 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v7 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v8 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v9 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v12 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v13 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v14 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v10 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v15 = v10;
  v16 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v17 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v18 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v19 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  swift_beginAccess();
  v0[v1] = 0;
  swift_beginAccess();
  v0[v2] = 0;
  swift_beginAccess();
  v0[v3] = 0;
  swift_beginAccess();
  *&v0[v4] = 182;
  swift_beginAccess();
  *&v0[v5] = 8;
  swift_beginAccess();
  *&v0[v6] = 0;
  swift_beginAccess();
  *&v0[v7] = 5;
  swift_beginAccess();
  *&v0[v8] = 6;
  swift_beginAccess();
  *&v0[v9] = 3;
  swift_beginAccess();
  *&v0[v12] = 1056964608;
  swift_beginAccess();
  *&v0[v13] = 1056964608;
  swift_beginAccess();
  *&v0[v14] = 1061997773;
  swift_beginAccess();
  *&v0[v15] = 6;
  swift_beginAccess();
  *&v0[v16] = 3;
  swift_beginAccess();
  *&v0[v17] = 1056964608;
  swift_beginAccess();
  v0[v18] = 0;
  swift_beginAccess();
  *&v0[v19] = 2;
  v21.receiver = v0;
  v21.super_class = v20;
  return objc_msgSendSuper2(&v21, sel_init);
}

unint64_t static VAResultGeneratorConfiguration.buildFromConfigFile(jsonFile:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VAResultGeneratorConfiguration();
  v5 = sub_27222F478(&qword_280881C58, v4, type metadata accessor for VAResultGeneratorConfiguration);
  sub_272254F78(v5, &v10);
  v6 = v10;
  if (v11)
  {
    if (v10 == 0x8000000000000000)
    {
      sub_27237820C();

      MEMORY[0x2743C4AD0](a1, a2);
      v6 = 0x8000000272389D30;
      sub_2722032B4();
      swift_allocError();
      *v7 = 0xD000000000000023;
      v7[1] = 0x8000000272389D30;
    }

    else
    {
      sub_272204304();
      swift_allocError();
      *v8 = v6;
    }

    swift_willThrow();
  }

  return v6;
}

void *VAResultGeneratorConfiguration.init(from:)(uint64_t *a1)
{
  v3 = sub_2721F065C(&qword_280881C60, &qword_27237D630);
  v4 = *(v3 - 8);
  v120 = v3;
  v121 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v103 - v6;
  v119 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v117 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v118 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v116 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v115 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v114 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v113 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v112 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v111 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v108 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v110 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v109 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v8 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v106 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  v107 = v8;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v9 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v10 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v11 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  v142 = v1;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  v12 = a1[3];
  v13 = a1[4];
  v123 = a1;
  v14 = sub_27220300C(a1, v12);
  sub_27222E82C();
  v15 = v122;
  sub_2723787AC();
  if (v15)
  {
    sub_2722039C8(v123);
    type metadata accessor for VAResultGeneratorConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v122 = v9;
    v104 = v11;
    v105 = v10;
    v141 = 0;
    v17 = v119;
    v16 = v120;
    v18 = sub_27237844C();
    v20 = v18;
    v21 = v142;
    if (v18 == 2)
    {
      swift_beginAccess();
      v20 = v21[v17];
    }

    swift_beginAccess();
    v21[v17] = v20 & 1;
    v140 = 1;
    v22 = sub_27237844C();
    v23 = v117;
    if (v22 == 2)
    {
      swift_beginAccess();
      v22 = v21[v23];
    }

    v24 = v118;
    swift_beginAccess();
    v21[v23] = v22 & 1;
    v139 = 2;
    v25 = sub_27237844C();
    v119 = v7;
    if (v25 == 2)
    {
      swift_beginAccess();
      v25 = v21[v24];
    }

    swift_beginAccess();
    v21[v24] = v25 & 1;
    v138 = 3;
    v26 = sub_27237847C();
    if (v27)
    {
      v28 = v116;
      swift_beginAccess();
      v29 = *&v21[v28];
    }

    else
    {
      v29 = v26;
      v28 = v116;
    }

    swift_beginAccess();
    *&v21[v28] = v29;
    v137 = 4;
    v30 = sub_27237847C();
    if (v31)
    {
      v32 = v115;
      swift_beginAccess();
      v33 = *&v21[v32];
    }

    else
    {
      v33 = v30;
      v32 = v115;
    }

    swift_beginAccess();
    *&v21[v32] = v33;
    v136 = 5;
    v34 = sub_27237847C();
    if (v35)
    {
      v36 = v114;
      swift_beginAccess();
      v37 = *&v21[v36];
    }

    else
    {
      v37 = v34;
      v36 = v114;
    }

    swift_beginAccess();
    *&v21[v36] = v37;
    v135 = 6;
    v38 = sub_27237847C();
    if (v39)
    {
      v40 = v113;
      swift_beginAccess();
      v41 = *&v21[v40];
    }

    else
    {
      v41 = v38;
      v40 = v113;
    }

    swift_beginAccess();
    *&v21[v40] = v41;
    v134 = 7;
    v42 = sub_27237847C();
    if (v43)
    {
      v44 = v112;
      swift_beginAccess();
      v45 = *&v21[v44];
    }

    else
    {
      v45 = v42;
      v44 = v112;
    }

    swift_beginAccess();
    *&v21[v44] = v45;
    v133 = 8;
    v46 = sub_27237847C();
    if (v47)
    {
      v48 = v142;
      v49 = v111;
      swift_beginAccess();
      v50 = *&v48[v49];
    }

    else
    {
      v50 = v46;
    }

    v51 = v142;
    v52 = v111;
    swift_beginAccess();
    *&v51[v52] = v50;
    v132 = 10;
    v53 = sub_27237846C();
    v54 = v53;
    if ((v53 & 0x100000000) != 0)
    {
      v55 = v142;
      v56 = v110;
      swift_beginAccess();
      v54 = *&v55[v56];
    }

    v57 = v142;
    v58 = v110;
    swift_beginAccess();
    *&v57[v58] = v54;
    v131 = 11;
    v59 = sub_27237846C();
    v60 = v59;
    if ((v59 & 0x100000000) != 0)
    {
      v61 = v142;
      v62 = v109;
      swift_beginAccess();
      v60 = *&v61[v62];
    }

    v63 = v142;
    v64 = v109;
    swift_beginAccess();
    *&v63[v64] = v60;
    v130 = 9;
    v65 = sub_27237846C();
    v66 = v65;
    if ((v65 & 0x100000000) != 0)
    {
      v67 = v142;
      v68 = v108;
      swift_beginAccess();
      v66 = *&v67[v68];
    }

    v69 = v142;
    v70 = v108;
    swift_beginAccess();
    *&v69[v70] = v66;
    v129 = 12;
    v71 = sub_27237847C();
    if (v72)
    {
      v73 = v142;
      v74 = v107;
      swift_beginAccess();
      v75 = *&v73[v74];
    }

    else
    {
      v75 = v71;
    }

    v76 = v142;
    v77 = v107;
    swift_beginAccess();
    *&v76[v77] = v75;
    v128 = 13;
    v78 = sub_27237847C();
    if (v79)
    {
      v80 = v142;
      v81 = v106;
      swift_beginAccess();
      v82 = *&v80[v81];
    }

    else
    {
      v82 = v78;
    }

    v83 = v142;
    v84 = v106;
    swift_beginAccess();
    *&v83[v84] = v82;
    v127 = 14;
    v85 = sub_27237846C();
    v86 = v85;
    if ((v85 & 0x100000000) != 0)
    {
      v87 = v122;
      v88 = v142;
      swift_beginAccess();
      v86 = *&v88[v87];
    }

    v89 = v122;
    v90 = v142;
    swift_beginAccess();
    *&v90[v89] = v86;
    v126 = 15;
    v91 = sub_27237844C();
    if (v91 == 2)
    {
      v92 = v105;
      v93 = v142;
      swift_beginAccess();
      v91 = v93[v92];
    }

    v94 = v105;
    v95 = v142;
    swift_beginAccess();
    v95[v94] = v91 & 1;
    v125 = 16;
    v96 = sub_27237849C();
    LOBYTE(v94) = v97;
    (*(v121 + 8))(v119, v16);
    if (v94)
    {
      v98 = v104;
      v99 = v142;
      swift_beginAccess();
      v96 = *&v99[v98];
    }

    v100 = v104;
    v101 = v142;
    swift_beginAccess();
    *&v101[v100] = v96;
    v102 = type metadata accessor for VAResultGeneratorConfiguration();
    v124.receiver = v101;
    v124.super_class = v102;
    v14 = objc_msgSendSuper2(&v124, sel_init);
    sub_2722039C8(v123);
  }

  return v14;
}

unint64_t sub_27222E82C()
{
  result = qword_280886950[0];
  if (!qword_280886950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280886950);
  }

  return result;
}

uint64_t sub_27222E880(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280881C68, &qword_27237D638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27222E82C();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0xD8))(v11);
  v31 = 0;
  v13 = sub_27237859C();
  if (!v2)
  {
    (*((*v12 & *v3) + 0xF0))(v13);
    v31 = 1;
    v14 = sub_27237859C();
    (*((*v12 & *v3) + 0x108))(v14);
    v31 = 2;
    v15 = sub_27237859C();
    (*((*v12 & *v3) + 0x120))(v15);
    v31 = 3;
    v16 = sub_2723785CC();
    (*((*v12 & *v3) + 0x138))(v16);
    v31 = 4;
    v17 = sub_2723785CC();
    (*((*v12 & *v3) + 0x150))(v17);
    v31 = 5;
    v18 = sub_2723785CC();
    (*((*v12 & *v3) + 0x168))(v18);
    v31 = 6;
    v19 = sub_2723785CC();
    (*((*v12 & *v3) + 0x180))(v19);
    v31 = 7;
    v20 = sub_2723785CC();
    (*((*v12 & *v3) + 0x198))(v20);
    v31 = 8;
    v21 = sub_2723785CC();
    (*((*v12 & *v3) + 0x1B0))(v21);
    v31 = 9;
    v22 = sub_2723785BC();
    (*((*v12 & *v3) + 0x1C8))(v22);
    v31 = 10;
    v23 = sub_2723785BC();
    (*((*v12 & *v3) + 0x1E0))(v23);
    v31 = 11;
    v24 = sub_2723785BC();
    (*((*v12 & *v3) + 0x210))(v24);
    v31 = 13;
    v25 = sub_2723785CC();
    (*((*v12 & *v3) + 0x228))(v25);
    v31 = 14;
    v26 = sub_2723785BC();
    (*((*v12 & *v3) + 0x240))(v26);
    v31 = 15;
    v27 = sub_27237859C();
    (*((*v12 & *v3) + 0x258))(v27);
    v31 = 16;
    v28 = sub_2723785EC();
    (*((*v12 & *v3) + 0x1F8))(v28);
    v31 = 12;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_27222F020(uint64_t a1, uint64_t a2)
{
  sub_27222F478(&qword_280881C58, a2, type metadata accessor for VAResultGeneratorConfiguration);
  result = sub_27222F0F8();
  if (v4)
  {
    if (result == 0x8000000000000000)
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      v5 = result;
      v6 = v3;
      sub_27237836C();
      sub_27222F3E8(v5, v6, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_27222F0F8()
{
  v0 = sub_27237788C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_272376AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_272376B3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_27237AF90;
  sub_272376ADC();
  sub_272376ACC();
  sub_27222F478(&qword_280881C78, 255, MEMORY[0x277CC8718]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VAResultGeneratorConfiguration();
  sub_27222F478(&qword_280881C90, v10, type metadata accessor for VAResultGeneratorConfiguration);
  v11 = sub_272376B1C();
  v13 = v12;
  sub_27237787C();
  v14 = sub_27237784C();
  if (v15)
  {
    v16 = v14;
    sub_2721F05C8(v11, v13);

    return v16;
  }

  else
  {
    sub_2721F05C8(v11, v13);

    return 0;
  }
}

void sub_27222F3E8(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_27222F3F8(a1);
  }

  else
  {
  }
}

void sub_27222F3F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

unint64_t sub_27222F414()
{
  result = qword_280881C88;
  if (!qword_280881C88)
  {
    sub_2721F214C(&qword_280881C80, qword_27237D8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881C88);
  }

  return result;
}

uint64_t sub_27222F478(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id VAResultGeneratorConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAResultGeneratorConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAResultGeneratorConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27222F588@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 632))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VAResultGeneratorConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VAResultGeneratorConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27222F804()
{
  result = qword_280886B60[0];
  if (!qword_280886B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280886B60);
  }

  return result;
}

unint64_t sub_27222F85C()
{
  result = qword_280886C70;
  if (!qword_280886C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280886C70);
  }

  return result;
}

unint64_t sub_27222F8B4()
{
  result = qword_280886C78;
  if (!qword_280886C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280886C78);
  }

  return result;
}

uint64_t sub_27222F908(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x8000000272389DF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000272389E10 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000272389E30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272389E50 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272389E70 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272389E90 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000272389EB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000272389ED0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000272389EF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000272389F10 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000272389F30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000272389F60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000272389F80 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000272389FA0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000272389FC0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5378614D656B6174 && a2 == 0xEC00000065726F63 || (sub_27237865C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6D61724674696177 && a2 == 0xEA00000000007365)
  {

    return 16;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_27222FE88(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_27222FF18(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_27222FF3C, v1, 0);
}

uint64_t sub_27222FF3C()
{
  (*(**(v0 + 16) + 104))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27222FFE0()
{
  v1 = (*(**(v0 + 16) + 96))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_272230064()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_2722300A0()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_2722300D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_272230154(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_2722301C8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_272230258()
{
  swift_beginAccess();
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t sub_272230290(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t sub_272230334()
{
  swift_beginAccess();
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t sub_27223036C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 168) = a1;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t sub_2722303F4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 177) = a1;
  return result;
}

uint64_t sub_2722304B8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 178) = a1;
  return result;
}

uint64_t sub_27223057C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

uint64_t sub_2722305BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions25IngestionAudioBufferActor_continuation;
  swift_beginAccess();
  return sub_2721F07F4(v1 + v3, a1, &qword_280881CA0, qword_27237D808);
}

uint64_t sub_272230644(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881CA0, qword_27237D808);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_272230714(void *a1, char a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_272238070(a1, a2, a3, a4 & 1);

  return v11;
}

uint64_t sub_272230784(char a1, uint64_t a2, char a3)
{
  *(v4 + 33) = a3;
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  *(v4 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2722307AC, v3, 0);
}

uint64_t sub_2722307AC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(*v1 + 304))(*(v0 + 16), *(v0 + 33) & 1);
  (*(*v1 + 328))(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_27223087C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2721F065C(&qword_280881C98, &qword_27237D800);
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = *(*(sub_2721F065C(&qword_280881CA0, qword_27237D808) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272230990, v2, 0);
}

uint64_t sub_272230990()
{
  v2 = v0[13];
  v3 = (*(*v2 + 200))();
  v4 = *v2;
  v6 = v0[13];
  if (v3)
  {
    v7 = *(v4 + 224);
    v5 = v0[12];
    if (v7() > v5)
    {
      v8 = v0[12];
      v9 = v0[13];
      v10 = v7();
      if (v10 >= v8)
      {
        v1 = (v10 - v8);
        if (qword_280886D00 == -1)
        {
LABEL_5:
          swift_beginAccess();
          v11 = v1 / *&qword_280893A08 / 1000000000.0 * 1000.0;
          sub_27237820C();
          MEMORY[0x2743C4AD0](0xD00000000000002BLL, 0x800000027238A150);
          sub_2721F065C(&qword_280881CB0, qword_27237D820);
          v12 = swift_allocObject();
          v13 = MEMORY[0x277D839F8];
          *(v12 + 16) = xmmword_27237AF80;
          v14 = MEMORY[0x277D83A80];
          *(v12 + 56) = v13;
          *(v12 + 64) = v14;
          *(v12 + 32) = v11;
          v15 = sub_27237786C();
          MEMORY[0x2743C4AD0](v15);

          MEMORY[0x2743C4AD0](0x6120736365736D20, 0xEA00000000006F67);
          sub_2722032B4();
LABEL_6:
          v17 = v0[17];
          v16 = v0[18];
          v18 = v0[16];
          swift_allocError();
          *v19 = 0;
          v19[1] = 0xE000000000000000;
          swift_willThrow();

          v20 = v0[1];
          goto LABEL_22;
        }

LABEL_27:
        swift_once();
        goto LABEL_5;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    (*(v4 + 208))(v0[12]);
  }

  v21 = v0[13];
  v22 = v0[11];
  (*(*v21 + 232))(v0[12]);
  v24 = (*(*v21 + 192))(v0 + 2);
  v25 = *(v22 + 16);
  v26 = *(*v23 + 24);
  v27 = v26 + v25;
  if (__OFADD__(v26, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v28 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v28;
  if (*(*v28 + 16) < v27 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2722374C0(isUniquelyReferenced_nonNull_native, v27);
    v30 = *v28;
  }

  sub_27223766C((v30 + 16), v30 + 40, (v0[11] + 32), v25);
  v31 = v0[13];
  v32 = v24(v0 + 2, 0);
  v33 = (*(*v31 + 296))(v32);
  if ((v34 & 1) == 0)
  {
    v35 = v33;
    v36 = *(*v0[13] + 176);
    v37 = *(v36() + 24);

    if (v35 < v37)
    {
      v38 = v0[13];
      sub_27237820C();
      v39 = MEMORY[0x2743C4AD0](0xD000000000000082, 0x800000027238A0C0);
      v40 = *((v36)(v39) + 24);

      v0[9] = v40;
      v41 = sub_27237862C();
      MEMORY[0x2743C4AD0](v41);

      MEMORY[0x2743C4AD0](0x203A78614D20, 0xE600000000000000);
      v0[10] = v35;
      v42 = sub_27237862C();
      MEMORY[0x2743C4AD0](v42);

      sub_2722381C0();
      goto LABEL_6;
    }
  }

  v43 = (*(*v0[13] + 272))(v33);
  if ((v44 & 1) == 0)
  {
    v45 = v43;
    v46 = *((*(*v0[13] + 176))() + 24);

    if (v46 >= v45)
    {
      v48 = v0[18];
      v49 = v0[14];
      v50 = v0[15];
      (*(*v0[13] + 392))(v47);
      v51 = (*(v50 + 48))(v48, 1, v49);
      v52 = v0[18];
      if (v51)
      {
        sub_2721F40F0(v0[18], &qword_280881CA0, qword_27237D808);
      }

      else
      {
        v54 = v0[15];
        v53 = v0[16];
        v55 = v0[14];
        (*(v54 + 16))(v53, v0[18], v55);
        sub_2721F40F0(v52, &qword_280881CA0, qword_27237D808);
        sub_272377BEC();
        (*(v54 + 8))(v53, v55);
      }

      v56 = v0[17];
      v57 = v0[13];
      (*(v0[15] + 56))(v56, 1, 1, v0[14]);
      (*(*v57 + 400))(v56);
      (*(*v57 + 280))(0, 1);
    }
  }

  v59 = v0[17];
  v58 = v0[18];
  v60 = v0[16];

  v20 = v0[1];
LABEL_22:

  return v20();
}

double sub_2722310BC(unint64_t a1)
{
  if (qword_280886D00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = a1;
  swift_beginAccess();
  return v1 / *&qword_280893A08 / 1000000000.0;
}

uint64_t sub_27223115C()
{
  v1[2] = v0;
  v2 = sub_27237728C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_2721F065C(&qword_280881CA0, qword_27237D808) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = sub_2721F065C(&qword_280881C98, &qword_27237D800);
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722312C8, v0, 0);
}

uint64_t sub_2722312C8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = (*(*v4 + 256))(1);
  (*(*v4 + 392))(v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2721F40F0(v0[7], &qword_280881CA0, qword_27237D808);
  }

  else
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v9 = sub_2722C389C();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_27237725C();
    v11 = sub_272377E7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v10, v11, "stop ingestion buffer", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[3];
    v19 = v0[4];
    v20 = v0[2];

    (*(v19 + 8))(v17, v18);
    sub_272377BEC();
    (*(v14 + 56))(v16, 1, 1, v15);
    (*(*v20 + 400))(v16);
    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[10];
  v22 = v0[6];
  v23 = v0[7];
  v24 = v0[5];

  v25 = v0[1];

  return v25();
}

uint64_t sub_272231580(char a1, uint64_t a2, char a3)
{
  *(v4 + 153) = a3;
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 152) = a1;
  v5 = sub_27237728C();
  *(v4 + 88) = v5;
  v6 = *(v5 - 8);
  *(v4 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272231648, v3, 0);
}

uint64_t sub_272231648()
{
  v1 = *(v0 + 80);
  *(v0 + 112) = (*(*v1 + 368))();
  v2 = *(*v1 + 248);
  v3 = (*v1 + 248) & 0xFFFFFFFFFFFFLL | 0xC7C5000000000000;
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  if ((v2() & 1) == 0)
  {
    v4 = 72;
    if (*(v0 + 153))
    {
      v4 = 112;
    }

    v5 = *(v0 + v4);
    v6 = *((*(**(v0 + 80) + 176))() + 24);

    if (v6 < v5)
    {
      if (((*(**(v0 + 80) + 344))(v7) & 1) == 0 || (v8 = *(v0 + 152), ((*(**(v0 + 80) + 320))() & 1) == 0) && !v8)
      {
        v9 = *(v0 + 80);
        v10 = 72;
        if (*(v0 + 153))
        {
          v10 = 112;
        }

        v11 = *(v0 + v10);
        sub_272238700(&qword_280881CB8, type metadata accessor for IngestionAudioBufferActor);
        v12 = swift_task_alloc();
        *(v0 + 136) = v12;
        *(v12 + 16) = v9;
        *(v12 + 24) = v11;
        v13 = *(MEMORY[0x277D859E0] + 4);
        v14 = swift_task_alloc();
        *(v0 + 144) = v14;
        *v14 = v0;
        v14[1] = sub_272231DB0;

        return MEMORY[0x2822007B8]();
      }

      v41 = *(v0 + 96);
      v40 = *(v0 + 104);
      v42 = *(v0 + 88);
      v43 = sub_2722C389C();
      (*(v41 + 16))(v40, v43, v42);
      v44 = sub_27237725C();
      v45 = sub_272377E8C();
      v46 = os_log_type_enabled(v44, v45);
      v48 = *(v0 + 96);
      v47 = *(v0 + 104);
      v49 = *(v0 + 88);
      if (v46)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2721E4000, v44, v45, "Not enough audio in buffer...nil", v50, 2u);
        MEMORY[0x2743C69C0](v50, -1, -1);
      }

      (*(v48 + 8))(v47, v49);
      goto LABEL_14;
    }
  }

  v15 = *(v0 + 128);
  v16 = *(v0 + 80);
  if (((*(v0 + 120))() & 1) == 0)
  {
    v22 = 72;
    if (*(v0 + 153))
    {
      v22 = 112;
    }

    v23 = *(v0 + v22);
    if (v23 < 0)
    {
      __break(1u);
    }

    else
    {
      v24 = (*(**(v0 + 80) + 176))();
      if (*(v24 + 24) >= v23)
      {
        v25 = v24;
        v26 = 72;
        if (*(v0 + 153))
        {
          v26 = 112;
        }

        v27 = *(v0 + v26);
        if (v27)
        {
          v17 = sub_27223743C(*(v0 + v26), 0);
          *(v0 + 48) = 0;
          *(v0 + 56) = v27;
          *(v0 + 64) = v25;
          v28 = swift_task_alloc();
          *(v28 + 16) = v17 + 4;
          *(v28 + 24) = v27;
          v29 = swift_task_alloc();
          v29[2] = v0 + 48;
          v29[3] = sub_272238214;
          v29[4] = v28;

          sub_272237D54(v25 + 2, (v25 + 5), sub_272238248);
          v31 = v30;
          v33 = v32;

          if ((v31 & 1) == 0)
          {
            v51 = 72;
            if (*(v0 + 153))
            {
              v51 = 112;
            }

            v52 = *(v0 + v51);

            if (v33 == v52)
            {
LABEL_46:

              v54 = *(v0 + 80);
              v55 = v54[18];
              v56 = MEMORY[0x277D85000];
              v57 = *((*MEMORY[0x277D85000] & *v55) + 0xD0);
              v58 = v57(v53);
              v59 = (*(*v54 + 192))(v0 + 16);
              if ((v58 & 0x8000000000000000) == 0)
              {
                v61 = v59;
                v62 = v60;
                if (*(*v60 + 24) >= v58)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_272237B98();
                  }

                  sub_272237C38((*v62 + 16), *v62 + 40, v58);
                  v63 = *(v0 + 80);
                  v64 = v61(v0 + 16, 0);
                  v65 = v57(v64);
                  v66 = v65 / (*((*v56 & *v55) + 0xA0))();
                  v67 = (*(*v63 + 200))();
                  v18 = sub_272238268(v67, v66);
                  (*(*v63 + 208))();
                  (*(*v63 + 352))(1);
                  goto LABEL_15;
                }

LABEL_54:
                __break(1u);
                return MEMORY[0x2822007B8]();
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            __break(1u);
LABEL_45:

            goto LABEL_46;
          }

          if (v25[3] >= 1)
          {
            v34 = 0;
            do
            {
              v35 = v34 + 1;
              v36 = (*(v0 + 153) & 1) != 0 ? 112 : 72;
              v37 = *(v0 + v36);
              v38 = v25[4];
              v39 = v34 + v38 >= v25[2] ? v25[2] : 0;
              *(v17 + v34 + 8) = *(v25 + v34 + v38 - v39 + 10);
              if (v35 == v37)
              {
                goto LABEL_45;
              }

              ++v34;
            }

            while (v35 < v25[3]);
          }

          __break(1u);
        }

        v17 = MEMORY[0x277D84F90];
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_14:
  v17 = 0;
  v18 = 0;
LABEL_15:
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20(v17, v18);
}

uint64_t sub_272231DB0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_272231EDC, v3, 0);
}

uint64_t sub_272231EDC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  if (((*(v0 + 120))() & 1) == 0)
  {
    v3 = 72;
    if (*(v0 + 153))
    {
      v3 = 112;
    }

    v4 = *(v0 + v3);
    v5 = *((*(**(v0 + 80) + 176))() + 24);

    if (v5 < v4)
    {
      if (((*(**(v0 + 80) + 344))(v6) & 1) == 0 || (v7 = *(v0 + 152), ((*(**(v0 + 80) + 320))() & 1) == 0) && !v7)
      {
        v8 = *(v0 + 80);
        v9 = 72;
        if (*(v0 + 153))
        {
          v9 = 112;
        }

        v10 = *(v0 + v9);
        sub_272238700(&qword_280881CB8, type metadata accessor for IngestionAudioBufferActor);
        v11 = swift_task_alloc();
        *(v0 + 136) = v11;
        *(v11 + 16) = v8;
        *(v11 + 24) = v10;
        v12 = *(MEMORY[0x277D859E0] + 4);
        v13 = swift_task_alloc();
        *(v0 + 144) = v13;
        *v13 = v0;
        v13[1] = sub_272231DB0;

        return MEMORY[0x2822007B8]();
      }

      v40 = *(v0 + 96);
      v39 = *(v0 + 104);
      v41 = *(v0 + 88);
      v42 = sub_2722C389C();
      (*(v40 + 16))(v39, v42, v41);
      v43 = sub_27237725C();
      v44 = sub_272377E8C();
      v45 = os_log_type_enabled(v43, v44);
      v47 = *(v0 + 96);
      v46 = *(v0 + 104);
      v48 = *(v0 + 88);
      if (v45)
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2721E4000, v43, v44, "Not enough audio in buffer...nil", v49, 2u);
        MEMORY[0x2743C69C0](v49, -1, -1);
      }

      (*(v47 + 8))(v46, v48);
      goto LABEL_14;
    }
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 80);
  if (((*(v0 + 120))() & 1) == 0)
  {
    v21 = 72;
    if (*(v0 + 153))
    {
      v21 = 112;
    }

    v22 = *(v0 + v21);
    if (v22 < 0)
    {
      __break(1u);
    }

    else
    {
      v23 = (*(**(v0 + 80) + 176))();
      if (*(v23 + 24) >= v22)
      {
        v24 = v23;
        v25 = 72;
        if (*(v0 + 153))
        {
          v25 = 112;
        }

        v26 = *(v0 + v25);
        if (v26)
        {
          v16 = sub_27223743C(*(v0 + v25), 0);
          *(v0 + 48) = 0;
          *(v0 + 56) = v26;
          *(v0 + 64) = v24;
          v27 = swift_task_alloc();
          *(v27 + 16) = v16 + 4;
          *(v27 + 24) = v26;
          v28 = swift_task_alloc();
          v28[2] = v0 + 48;
          v28[3] = sub_272238214;
          v28[4] = v27;

          sub_272237D54(v24 + 2, (v24 + 5), sub_272238248);
          v30 = v29;
          v32 = v31;

          if ((v30 & 1) == 0)
          {
            v50 = 72;
            if (*(v0 + 153))
            {
              v50 = 112;
            }

            v51 = *(v0 + v50);

            if (v32 == v51)
            {
LABEL_46:

              v53 = *(v0 + 80);
              v54 = v53[18];
              v55 = MEMORY[0x277D85000];
              v56 = *((*MEMORY[0x277D85000] & *v54) + 0xD0);
              v57 = v56(v52);
              v58 = (*(*v53 + 192))(v0 + 16);
              if ((v57 & 0x8000000000000000) == 0)
              {
                v60 = v58;
                v61 = v59;
                if (*(*v59 + 24) >= v57)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_272237B98();
                  }

                  sub_272237C38((*v61 + 16), *v61 + 40, v57);
                  v62 = *(v0 + 80);
                  v63 = v60(v0 + 16, 0);
                  v64 = v56(v63);
                  v65 = v64 / (*((*v55 & *v54) + 0xA0))();
                  v66 = (*(*v62 + 200))();
                  v17 = sub_272238268(v66, v65);
                  (*(*v62 + 208))();
                  (*(*v62 + 352))(1);
                  goto LABEL_15;
                }

LABEL_54:
                __break(1u);
                return MEMORY[0x2822007B8]();
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            __break(1u);
LABEL_45:

            goto LABEL_46;
          }

          if (v24[3] >= 1)
          {
            v33 = 0;
            do
            {
              v34 = v33 + 1;
              v35 = (*(v0 + 153) & 1) != 0 ? 112 : 72;
              v36 = *(v0 + v35);
              v37 = v24[4];
              v38 = v33 + v37 >= v24[2] ? v24[2] : 0;
              *(v16 + v33 + 8) = *(v24 + v33 + v37 - v38 + 10);
              if (v34 == v36)
              {
                goto LABEL_45;
              }

              ++v33;
            }

            while (v34 < v24[3]);
          }

          __break(1u);
        }

        v16 = MEMORY[0x277D84F90];
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_14:
  v16 = 0;
  v17 = 0;
LABEL_15:
  v18 = *(v0 + 104);

  v19 = *(v0 + 8);

  return v19(v16, v17);
}

uint64_t sub_2722325F0()
{
  v1 = (*(*v0 + 192))(v6);
  v3 = v2;
  v4 = *v2;

  *v3 = *sub_272376ECC();

  return v1(v6, 0);
}

uint64_t sub_27223267C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2721F065C(&qword_280881CA0, qword_27237D808);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_2721F065C(&qword_280881C98, &qword_27237D800);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  (*(*a2 + 400))(v9);
  return (*(*a2 + 280))(a3, 0);
}

uint64_t sub_272232800()
{
  v1 = *(v0 + 112);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions25IngestionAudioBufferActor_continuation, &qword_280881CA0, qword_27237D808);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_272232860@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_uuid;
  swift_beginAccess();
  v4 = sub_272376E5C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2722328E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_uuid;
  swift_beginAccess();
  v4 = sub_272376E5C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2722329D8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_results;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_272232AA0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_predictionWindow;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_272232B08(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_272232BC4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_checkerWindow;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_272232C0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_checkerWindow;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272232CC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_runtimeParameters;
  swift_beginAccess();
  return sub_272216374(v1 + v3, a1);
}

uint64_t sub_272232D3C(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_272232E00(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_272232E50(a1, a2);
  return v7;
}

void sub_272232E50(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_stopProcessingActor;
  type metadata accessor for StopProcessingActor();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *(v3 + v11) = v12;
  v34 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_checkerWindow;
  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_checkerWindow) = 0;
  sub_272376E4C();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_uuid, v10, v6);
  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_results) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration) = a1;
  v13 = MEMORY[0x277D85000];
  v14 = *((*MEMORY[0x277D85000] & *a1) + 0x88);
  v15 = a1;
  v16 = v14();
  LOBYTE(a1) = *(a2 + 49);
  v17 = *(a2 + 40);
  LOBYTE(v7) = *(a2 + 48);
  v18 = type metadata accessor for IngestionAudioBufferActor(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_272238070(v16, a1, v17, v7);

  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor) = v21;
  sub_272216374(a2, v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_runtimeParameters);
  type metadata accessor for VAFixedLengthQueue();
  v22 = v14();
  v23 = (*((*v13 & *v22) + 0x100))();

  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_predictionWindow) = sub_272255908(v23);
  if (*(a2 + 120))
  {
    sub_272216BD8(a2);

    v24 = 0;
LABEL_8:
    v32 = v34;
    swift_beginAccess();
    v33 = *(v3 + v32);
    *(v3 + v32) = v24;

    return;
  }

  v25 = *(a2 + 112);
  v26 = v14();
  v27 = (*((*v13 & *v26) + 0xA0))();

  v28 = v25 * v27;
  if (COERCE__INT64(fabs(v28)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = v28;
  v30 = v14();
  v31 = (*((*v13 & *v30) + 0x100))();

  if (!__OFADD__(v29, v31))
  {
    v24 = sub_272255908(v29 + v31);

    sub_272216BD8(a2);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_27223322C(uint64_t a1)
{
  v3 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for VARuntimeParameters();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_272216374(a1, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 320))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_272377C3C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_272216374(a1, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  sub_2722164B8(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_272233784(0, 0, v6, &unk_27237D848, v13);
}

uint64_t sub_272233440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_272233464, 0, 0);
}

uint64_t sub_272233464()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 56);
    v4 = *(Strong + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
    *(v0 + 72) = v4;

    v5 = *(v3 + 49);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v12 = (*v4 + 424);
    v13 = (*v12 + **v12);
    v8 = (*v12)[1];
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_272233644;

    return v13(v5, v6, v7);
  }

  else
  {
    **(v0 + 40) = 1;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_272233644()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_27223375C, 0, 0);
}

uint64_t sub_272233784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2721F07F4(a3, v27 - v11, &qword_2808819D8, &qword_27237CB50);
  v13 = sub_272377C3C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2721F40F0(v12, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_272377BDC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2723778BC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_2721F065C(&qword_280881D70, &qword_27237DD78);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_2721F065C(&qword_280881D70, &qword_27237DD78);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t sub_272233A98(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x416C6C4165766173;
    if (a1 != 2)
    {
      v6 = 0x6F696475416C6C61;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
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
    v1 = 0x7544776F646E6977;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73746C75736572;
    if (a1 != 4)
    {
      v3 = 0xD000000000000016;
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

uint64_t sub_272233BD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0x416C6C4165766173;
    v14 = 0xEC0000006F696475;
    if (a1 != 2)
    {
      v13 = 0x6F696475416C6C61;
      v14 = 0xE800000000000000;
    }

    if (a1)
    {
      v12 = 0xD000000000000011;
      v11 = 0x800000027238A020;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0x7544776F646E6977;
    v4 = 0xEE006E6F69746172;
    v5 = 0x800000027238A080;
    if (a1 == 7)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = 0x800000027238A0A0;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE700000000000000;
    v8 = 0x73746C75736572;
    if (a1 != 4)
    {
      v8 = 0xD000000000000016;
      v7 = 0x800000027238A050;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xEC0000006F696475;
        if (v9 != 0x416C6C4165766173)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x6F696475416C6C61)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    if (!a2)
    {
      v15 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v16 = "validatedKeywords";
    goto LABEL_49;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xEE006E6F69746172;
      if (v9 != 0x7544776F646E6977)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    if (a2 == 7)
    {
      v15 = 0x800000027238A080;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v16 = "runtimeParameters";
LABEL_49:
    v15 = (v16 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (a2 == 4)
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x73746C75736572)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v15 = 0x800000027238A050;
    if (v9 != 0xD000000000000016)
    {
LABEL_54:
      v17 = sub_27237865C();
      goto LABEL_55;
    }
  }

LABEL_52:
  if (v10 != v15)
  {
    goto LABEL_54;
  }

  v17 = 1;
LABEL_55:

  return v17 & 1;
}

uint64_t sub_272233EC8()
{
  v1 = *v0;
  sub_27237874C();
  sub_272233F18();
  return sub_27237878C();
}

uint64_t sub_272233F18()
{
  sub_27237790C();
}

uint64_t sub_27223407C()
{
  v1 = *v0;
  sub_27237874C();
  sub_272233F18();
  return sub_27237878C();
}

uint64_t sub_2722340C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_272238660();
  *a2 = result;
  return result;
}

unint64_t sub_2722340F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_272233A98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_272234138@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272238660();
  *a1 = result;
  return result;
}

uint64_t sub_27223416C(uint64_t a1)
{
  v2 = sub_2722386AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722341A8(uint64_t a1)
{
  v2 = sub_2722386AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722341E4()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_272234258()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_2722342AC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27237840C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_27223433C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_27237840C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2722343A0(uint64_t a1)
{
  v2 = sub_272238FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722343DC(uint64_t a1)
{
  v2 = sub_272238FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_272234418(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for VARuntimeParameters();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2721F065C(&qword_280881CC0, &qword_27237D850);
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v68 = &v63 - v9;
  v10 = sub_272376E5C();
  v69 = *(v10 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2721F065C(&qword_280881CC8, &qword_27237D858);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  v19 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722386AC();
  v20 = sub_2723787CC();
  (*(*v2 + 144))(v20);
  LOBYTE(v71) = 0;
  sub_272238700(&qword_280881CD8, MEMORY[0x277CC95F0]);
  v21 = v70;
  sub_2723785DC();
  if (v21)
  {
    (*(v69 + 8))(v13, v10);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v70 = v15;
    (*(v69 + 8))(v13, v10);
    v23 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration;
    v24 = *(v2 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration);
    v25 = MEMORY[0x277D85000];
    v26 = *((*MEMORY[0x277D85000] & *v24) + 0x88);
    v27 = v24;
    v28 = v26();

    (*((*v25 & *v28) + 0x1A8))();
    v71 = nullsub_1(v29);
    LOBYTE(v75) = 6;
    sub_272238748();
    sub_2723785DC();
    v30 = *(v2 + v23);
    v31 = v25;
    v32 = *((*v25 & *v30) + 0x88);
    v33 = v30;
    v34 = v32();

    (*((*v31 & *v34) + 0x1B0))();
    v71 = nullsub_1(v35);
    LOBYTE(v75) = 7;
    sub_2723785DC();
    LOBYTE(v71) = 5;
    sub_27223879C();
    v69 = v14;
    v64 = v18;
    v36 = sub_27237851C();
    v37 = *(*v2 + 312);
    v38 = v65;
    v63 = v2;
    v37(v36);
    v39 = VARuntimeParameters.keywordsToThresholds.getter();
    result = sub_272216BD8(v38);
    v40 = 0;
    v41 = v39 + 64;
    v42 = v39;
    v43 = 1 << *(v39 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v39 + 64);
    v46 = (v43 + 63) >> 6;
    for (i = v66; v45; v40 = v48)
    {
      v48 = v40;
LABEL_10:
      v49 = __clz(__rbit64(v45)) | (v48 << 6);
      v50 = (*(v42 + 48) + 16 * v49);
      v51 = *v50;
      v52 = v50[1];
      v53 = *(*(v42 + 56) + 4 * v49);

      v55 = nullsub_1(v54);
      v75 = LODWORD(v55);
      sub_272259130();
      v71 = v56;
      v72 = v57;
      v73 = v58;
      v74 = v59 & 1;
      sub_2722387F0();
      sub_2723785DC();
      v45 &= v45 - 1;
    }

    while (1)
    {
      v48 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v48 >= v46)
      {

        v71 = COERCE_DOUBLE((*(*v63 + 240))(v60));
        LOBYTE(v75) = 4;
        sub_2721F065C(&qword_280881CF8, qword_27237D860);
        sub_272238844();
        v61 = v69;
        v62 = v64;
        sub_2723785DC();

        (*(i + 8))(v68, v67);
        return (*(v70 + 8))(v62, v61);
      }

      v45 = *(v41 + 8 * v48);
      ++v40;
      if (v45)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_272234BC0()
{
  v1[2] = v0;
  v2 = sub_27237728C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272234C8C, 0, 0);
}

uint64_t sub_272234C8C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_2722C389C();
  v0[7] = v4;
  v5 = *(v3 + 16);
  v0[8] = v5;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_27237725C();
  v7 = sub_272377EAC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "RequestContext stop(): started", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  (*(v11 + 8))(v9, v10);
  v13 = *(v12 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_stopProcessingActor);
  v0[10] = v13;
  v14 = *(*v13 + 120);

  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_272234E90;

  return v18(1);
}

uint64_t sub_272234E90()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_272234FA8, 0, 0);
}

uint64_t sub_272234FA8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
  v0[12] = v1;
  v2 = *(*v1 + 440);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2722350E4;

  return v6();
}

uint64_t sub_2722350E4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2722351FC, 0, 0);
}

uint64_t sub_2722351FC()
{
  v1 = *(v0 + 72);
  (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
  v2 = sub_27237725C();
  v3 = sub_272377EAC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2721E4000, v2, v3, "RequestContext stop(): stopped", v4, 2u);
    MEMORY[0x2743C69C0](v4, -1, -1);
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  (*(v8 + 8))(v6, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_272235338()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12VoiceActions16VARequestContext_stopProcessingActor);
  v0[3] = v1;
  v2 = *(*v1 + 128);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_27223546C;

  return v6();
}

uint64_t sub_27223546C(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_272235584(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722355A8, 0, 0);
}

uint64_t sub_2722355A8()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
  v0[5] = v1;
  v2 = *(*v1 + 432);

  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2722356EC;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5);
}

uint64_t sub_2722356EC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_272235828, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_272235828()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_27223588C(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *(*(type metadata accessor for VARuntimeParameters() - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272235924, 0, 0);
}

uint64_t sub_272235924()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
  v2 = *(v0 + 80);
  *(v0 + 40) = v1;
  v3 = *(*v1 + 448);

  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_272235A70;
  v6 = *(v0 + 16);

  return (v8)(0, v6, v2 & 1);
}

uint64_t sub_272235A70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 48);
  v9 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v6 = sub_272235F48;
  }

  else
  {
    v7 = v4[5];

    v6 = sub_272235B90;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_272235B90(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    if ((*(v1 + 81) & 1) == 0)
    {
      v4 = *(v1 + 64);
      goto LABEL_11;
    }

    v3 = *(v1 + 56);

    v4 = *(v1 + 64);
  }

  else
  {
    v4 = 0;
    v2 = MEMORY[0x277D84F90];
    if ((*(v1 + 81) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(v1 + 32);
  (*(**(v1 + 24) + 312))(a1);
  v6 = sub_27234F188();
  sub_272216BD8(v5);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration;
    v34 = *(v1 + 24);
    v8 = *(v34 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration);
    v9 = MEMORY[0x277D85000];
    v10 = *((*MEMORY[0x277D85000] & *v8) + 0x88);
    v11 = v8;
    v12 = v10();

    v13 = (*((*v9 & *v12) + 0x100))();
    if (v13 >= 1)
    {
      v14 = *(v1 + 24);
      v15 = (*(*v14 + 264))();
      v16 = *(v34 + v7);
      v17 = *((*v9 & *v16) + 0x88);
      v18 = v16;
      v19 = v17();
      v20 = MEMORY[0x277D85000];
      v21 = v19;

      v22 = (*((*v20 & *v21) + 0xD0))();
      (*(*v15 + 152))(v2, v22);

      v24 = (*(*v14 + 288))(v23);
      if (v24)
      {
        v25 = v24;
        v26 = *(v34 + v7);
        v27 = *((*v20 & *v26) + 0x88);
        v28 = v26;
        v29 = v27();

        v30 = (*((*v20 & *v29) + 0xD0))();
        (*(*v25 + 152))(v2, v30);
      }
    }
  }

LABEL_11:
  v31 = *(v1 + 32);

  v32 = *(v1 + 8);

  return v32(v2, v4);
}

uint64_t sub_272235F48()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_272235FB4()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VARuntimeParameters();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 312))(v9);
  v12 = sub_27234F188();
  v13 = sub_272216BD8(v11);
  if ((v12 & 1) == 0)
  {
    v14 = sub_2722C389C();
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_27237725C();
    v16 = sub_272377E8C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2721E4000, v15, v16, "Attempted to look at prediction window. This is not maintained unless returnKeywordAudio is true.", v17, 2u);
      MEMORY[0x2743C69C0](v17, -1, -1);
    }

    v13 = (*(v3 + 8))(v6, v2);
  }

  v18 = (*(*v1 + 264))(v13);
  v19 = (*(*v18 + 168))(v18);

  return v19;
}

uint64_t sub_272236214()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VARuntimeParameters();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 312))(v9);
  v12 = sub_27234F188();
  v13 = sub_272216BD8(v11);
  if ((v12 & 1) == 0)
  {
    v14 = sub_2722C389C();
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_27237725C();
    v16 = sub_272377E8C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2721E4000, v15, v16, "Attempted to look at checker window. This is not maintained unless returnKeywordAudio is true.", v17, 2u);
      MEMORY[0x2743C69C0](v17, -1, -1);
    }

    v13 = (*(v3 + 8))(v6, v2);
  }

  v18 = (*(*v1 + 288))(v13);
  if (!v18)
  {
    return 0;
  }

  v19 = (*(*v18 + 168))(v18);

  return v19;
}

uint64_t sub_272236480(uint64_t a1)
{
  v4 = sub_27237728C();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v51 - v9;
  v11 = type metadata accessor for VARuntimeParameters();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v51 - v17;
  (*(*a1 + 208))(&v56, v16);
  v19 = v57;
  if (!v57)
  {
    v22 = 0x800000027238A1B0;
    sub_2722032B4();
    swift_allocError();
    v24 = 0xD000000000000029;
LABEL_19:
    *v23 = v24;
    v23[1] = v22;
    return swift_willThrow();
  }

  v51[0] = v4;
  v51[1] = v2;
  v20 = v58;
  if (v60)
  {
    v21 = v59;
    v19 = v60;
  }

  else
  {
    v21 = v56;
  }

  v25 = *(*v1 + 312);

  v54 = v1;
  v25(v26);
  v27 = VARuntimeParameters.keywordsToThresholds.getter();
  sub_272216BD8(v18);
  if (!*(v27 + 16) || (v28 = sub_27220038C(v21, v19), (v29 & 1) == 0))
  {
    sub_2721F40F0(&v56, &qword_2808819E0, &qword_27237D890);

    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_27237820C();

    strcpy(v55, "missing key ");
    BYTE5(v55[1]) = 0;
    HIWORD(v55[1]) = -5120;
    MEMORY[0x2743C4AD0](v21, v19);

    v46 = MEMORY[0x2743C4AD0](544106784, 0xE400000000000000);
    v25(v46);
    v47 = VARuntimeParameters.keywordsToThresholds.getter();
    sub_272216BD8(v15);
    v61 = v47;
    sub_2721F065C(&qword_280881D18, qword_27237D898);
    sub_2722199BC(&qword_280881D20, &qword_280881D18, qword_27237D898);
    sub_272203AC4();
    v48 = sub_272377A7C();
    v50 = v49;

    MEMORY[0x2743C4AD0](v48, v50);

    v24 = v55[0];
    v22 = v55[1];
    sub_2722032B4();
    swift_allocError();
    goto LABEL_19;
  }

  v30 = v28;

  v31 = *(*(v27 + 56) + 4 * v30);

  result = sub_2721F40F0(&v56, &qword_2808819E0, &qword_27237D890);
  if (v31 < v20)
  {
    v33 = v54;
    (*(*v54 + 144))(result);
    v34 = sub_272376E5C();
    (*(*(v34 - 8) + 56))(v10, 0, 1, v34);
    v35 = (*(*a1 + 336))(v10);
    v36 = (*(*v33 + 240))(v35);
    if (v36 >> 62)
    {
      v37 = sub_2723783AC();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFADD__(v37, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = (*(*a1 + 384))(v37 + 1);
      if ((*(*a1 + 496))(v38) == 2)
      {
        v39 = sub_2722C389C();
        (*(v53 + 16))(v52, v39, v51[0]);
        v40 = sub_27237725C();
        v41 = sub_272377E8C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_2721E4000, v40, v41, "How is this?", v42, 2u);
          MEMORY[0x2743C69C0](v42, -1, -1);
        }

        (*(v53 + 8))(v52, v51[0]);
      }

      v33 = (*(*v33 + 256))(v55);
      v44 = v43;

      MEMORY[0x2743C4C30](v45);
      if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }
    }

    sub_272377B2C();
LABEL_17:
    sub_272377B7C();
    return v33(v55, 0);
  }

  return result;
}

uint64_t sub_272236BC0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
  v0[3] = v1;
  v2 = *v1 + 456;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x7C21000000000000;

  return MEMORY[0x2822009F8](sub_272236C64, v1, 0);
}

uint64_t sub_272236C64()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))();

  v3 = *(v0 + 8);

  return v3();
}

char *sub_272236CD0()
{
  v1 = v0;
  v2 = sub_27237788C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_272376AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_272376B3C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  v12 = *(v7 + 72);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_27237AFB0;
  sub_272376ADC();
  sub_272376ACC();
  sub_272376AEC();
  v25 = v14;
  sub_272238700(&qword_280881C78, MEMORY[0x277CC8718]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_2722199BC(&qword_280881C88, &qword_280881C80, qword_27237D8B0);
  sub_27237815C();
  sub_272376B0C();
  v25 = v1;
  type metadata accessor for VARequestContext(0);
  sub_272238700(&qword_280881D28, type metadata accessor for VARequestContext);
  v15 = v24[1];
  v16 = sub_272376B1C();
  if (!v15)
  {
    v18 = v16;
    v19 = v17;
    sub_27237787C();
    v20 = sub_27237784C();
    if (v21)
    {
      v5 = v20;
      sub_2721F05C8(v18, v19);

      return v5;
    }

    v5 = 0x800000027238A1E0;
    sub_2722032B4();
    swift_allocError();
    *v23 = 0xD00000000000001CLL;
    v23[1] = 0x800000027238A1E0;
    swift_willThrow();
    sub_2721F05C8(v18, v19);
  }

  return v5;
}

uint64_t sub_27223702C(uint64_t a1)
{
  v3 = type metadata accessor for VARuntimeParameters();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 312))(v5);
  (*(*a1 + 216))(v7);
  return sub_272216BD8(v7);
}

uint64_t sub_27223711C()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2722C389C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27237725C();
  v9 = sub_272377EAC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2721E4000, v8, v9, "deinit VARequestContext", v10, 2u);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_uuid;
  v12 = sub_272376E5C();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v13 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_stopProcessingActor);

  v14 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);

  v15 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_results);

  v16 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_predictionWindow);

  v17 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_checkerWindow);

  sub_272216BD8(v1 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_runtimeParameters);
  return v1;
}

uint64_t sub_27223732C()
{
  sub_27223711C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_272237384()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  mach_timebase_info(v4);
  LODWORD(v0) = v4[0].denom;
  LODWORD(v1) = v4[0].numer;
  result = v0 / v1;
  qword_280893A08 = *&result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_27223743C(uint64_t a1, uint64_t a2)
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

  sub_2721F065C(&qword_280881848, &unk_27237C250);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_2722374C0(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    sub_2721F065C(&qword_280881D78, &qword_27237DD88);
    v9 = swift_allocObject();
    v12 = *(v3 + 24);
    *(v9 + 16) = v5;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_272237A38(v9 + 16, (v9 + 40), v4, (v3 + 40));
    }
  }

  else
  {
    v7 = *v2;
    sub_272376EDC();
    if (a1)
    {
      v8 = *(v3 + 24);
      sub_2721F065C(&qword_280881D78, &qword_27237DD88);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 37;
      }

      *(v9 + 16) = v11 >> 2;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_272237818(v9 + 16, (v9 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      sub_2721F065C(&qword_280881D78, &qword_27237DD88);
      v9 = swift_allocObject();
      v13 = j__malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 37;
      }

      v15 = *(v3 + 24);
      *(v9 + 16) = v14 >> 2;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_272237940(v9 + 16, (v9 + 40), v4, (v3 + 40));
      }
    }
  }

  *v2 = v9;
  return result;
}

char *sub_27223766C(char *result, uint64_t a2, char *a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return result;
  }

  v7 = result;
  result = *(result + 1);
  v8 = &result[a4];
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7[1] = v8;
  if (v8 < result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_272237B20(result, v8, v7, a2, &v12);
  v9 = v13;
  v10 = v14;
  if (v14)
  {
    v11 = v15;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v9 = 0;
  }

  if (v15)
  {
    v10 = 0;
  }

  v16 = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  return sub_272237720(a3, a4);
}

char *sub_272237720(char *__src, uint64_t a2)
{
  v3 = __src;
  if ((*(v2 + 32) & 1) == 0)
  {
    v5 = *(v2 + 8);
    if (v5 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (__src && v5)
      {
        v7 = *v2;
        v8 = a2;
        __src = memcpy(v7, v3, 4 * v5);
        a2 = v8;
      }

      v9 = a2;
      if (!__OFADD__(v5, a2 - v5))
      {
        if (a2 >= v5)
        {
          if (!v3)
          {
            return __src;
          }

          a2 -= v5;
          if (v9 == v5)
          {
            return __src;
          }

          if (v6 >= a2)
          {
            v3 += 4 * v5;
            goto LABEL_17;
          }

LABEL_24:
          __break(1u);
          return __src;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!__src || !a2)
  {
    return __src;
  }

  if (*(v2 + 8) < a2)
  {
    goto LABEL_23;
  }

  v4 = *v2;
LABEL_17:

  return memcpy(v4, v3, 4 * a2);
}

void sub_272237818(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[4 * v4];
  if (v12 != __dst || &v12[4 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 4 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[4 * v8];
  if (v16 != v11 || v16 >= &v11[4 * v7])
  {

    memmove(v16, v11, 4 * v7);
  }
}

void sub_272237940(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[4 * v4], 4 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[4 * v9], v10, 4 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_272237A38(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[4 * v4], &__src[4 * v4], 4 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 4 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_272237B20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 4 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272237B98()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_2721F065C(&qword_280881D78, &qword_27237DD88);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_272237A38(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t *sub_272237C38(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = result;
    result = sub_272237B20(0, a3, result, a2, v10);
    v5 = v4[2];
    v7 = __OFADD__(v5, a3);
    v6 = v5 + a3;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v7 = __OFSUB__(v6, *v4);
      if (v6 >= *v4)
      {
        v6 -= *v4;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      v4[2] = v6;
      v8 = v4[1];
      v7 = __OFSUB__(v8, a3);
      v9 = v8 - a3;
      if (!v7)
      {
        v4[1] = v9;
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

char *sub_272237CD4(char *__src, uint64_t a2, void *__dst, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = __src;
    memcpy(__dst, __src, 4 * v4);
    return &v5[4 * v4];
  }

  return __src;
}

void *sub_272237D54(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 4 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_272237DE8@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, char *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = result + 4 * v6;
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t sub_272237E68(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_272237F5C;

  return v6(v2 + 32);
}

uint64_t sub_272237F5C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_272238070(void *a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  v10 = *sub_272376ECC();
  *(v5 + 152) = 0;
  *(v5 + 136) = 0;
  *(v5 + 112) = v10;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 160) = 1;
  *(v5 + 168) = 0;
  *(v5 + 176) = 1;
  *(v5 + 178) = 0;
  v11 = OBJC_IVAR____TtC12VoiceActions25IngestionAudioBufferActor_continuation;
  v12 = sub_2721F065C(&qword_280881C98, &qword_27237D800);
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + 144) = a1;
  swift_beginAccess();
  *(v5 + 168) = a3;
  *(v5 + 176) = a4 & 1;
  *(v5 + 177) = a2;
  v13 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);

  v14 = a1;
  *(v5 + 184) = v13();
  return v5;
}

unint64_t sub_2722381C0()
{
  result = qword_280881CA8;
  if (!qword_280881CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CA8);
  }

  return result;
}

char *sub_272238214@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_272237CD4(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_272238268(uint64_t a1, double a2)
{
  v4 = a2 * 1000000000.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 1.84467441e19)
  {
    v2 = a1;
    v3 = v4;
    if (qword_280886D00 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  swift_once();
LABEL_5:
  result = swift_beginAccess();
  v6 = *&qword_280893A08 * v3;
  if (COERCE__INT64(fabs(*&qword_280893A08 * v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = v2 + v6;
  if (__CFADD__(v2, v6))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2722383D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VARuntimeParameters();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27223843C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272238474()
{
  v1 = (type metadata accessor for VARuntimeParameters() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 64);

  v9 = *(v0 + v3 + 80);

  v10 = v1[29];
  v11 = sub_272376EBC();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27223857C(uint64_t a1)
{
  v4 = *(type metadata accessor for VARuntimeParameters() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_272211DBC;

  return sub_272233440(a1, v7, v8, v6, v1 + v5);
}

uint64_t sub_272238660()
{
  v0 = sub_27237840C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2722386AC()
{
  result = qword_280881CD0;
  if (!qword_280881CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CD0);
  }

  return result;
}

uint64_t sub_272238700(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_272238748()
{
  result = qword_280881CE0;
  if (!qword_280881CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CE0);
  }

  return result;
}

unint64_t sub_27223879C()
{
  result = qword_280881CE8;
  if (!qword_280881CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CE8);
  }

  return result;
}

unint64_t sub_2722387F0()
{
  result = qword_280881CF0;
  if (!qword_280881CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CF0);
  }

  return result;
}

unint64_t sub_272238844()
{
  result = qword_280881D00;
  if (!qword_280881D00)
  {
    sub_2721F214C(&qword_280881CF8, qword_27237D860);
    sub_272238700(&qword_280881D08, type metadata accessor for VAInstrumentedKeywordResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D00);
  }

  return result;
}

unint64_t sub_27223891C()
{
  result = qword_280881D30;
  if (!qword_280881D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D30);
  }

  return result;
}

unint64_t sub_272238974()
{
  result = qword_280881D38;
  if (!qword_280881D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D38);
  }

  return result;
}

unint64_t sub_2722389CC()
{
  result = qword_280881D40;
  if (!qword_280881D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D40);
  }

  return result;
}

unint64_t sub_272238A24()
{
  result = qword_280881D48;
  if (!qword_280881D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D48);
  }

  return result;
}

unint64_t sub_272238A7C()
{
  result = qword_280881D50;
  if (!qword_280881D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D50);
  }

  return result;
}

unint64_t sub_272238AD4()
{
  result = qword_280881D58;
  if (!qword_280881D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D58);
  }

  return result;
}

void sub_272238B40()
{
  sub_272238C24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_272238C24()
{
  if (!qword_280881D60)
  {
    sub_2721F214C(&qword_280881C98, &qword_27237D800);
    v0 = sub_27237801C();
    if (!v1)
    {
      atomic_store(v0, &qword_280881D60);
    }
  }
}

uint64_t sub_272238C90()
{
  result = sub_272376E5C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for VARuntimeParameters();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VARequestContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VARequestContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VARequestContext.KeywordsCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for VARequestContext.KeywordsCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_272238FC0()
{
  result = qword_280881D68;
  if (!qword_280881D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D68);
  }

  return result;
}