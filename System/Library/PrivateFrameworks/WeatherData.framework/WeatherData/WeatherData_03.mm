void WK2_Article.headlineOverride.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0xDu)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 12);
  v5 = v3 + 12;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_Article.locale.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v2 + v3) < 0xFu)
  {
    v8 = 0;
LABEL_6:
    if (!__OFADD__(v8, v1))
    {
      Table.directString(at:)(v8 + v1);
      return;
    }

    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 14);
  v7 = v3 + 14;
  if (!v4)
  {
    v8 = *(v2 + v7);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void static WK2_Article.startArticle(_:)(_BYTE *a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 56);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void sub_272B68E24()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v25 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    v17 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v2, v18);
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v19)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v21 & 1) == 0)
  {
    if (*(v20 + 32))
    {
      OUTLINED_FUNCTION_57(v20);
      *(v22 + 4) = 16;
    }

    OUTLINED_FUNCTION_33(v20, *(v20 + 72), xmmword_272B87CB0);
    if (v24 <= 0x10)
    {
      LOWORD(v24) = 16;
    }

    *(v23 + 64) = v24;
    goto LABEL_28;
  }

  __break(1u);
}

void sub_272B68FE8(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 25705, 0xE200000000000000, 1, sub_272B54784);
    sub_272B544C8(6, 0xD000000000000014, 0x8000000272B8B9C0, 1, sub_272B6A884);
    sub_272B544C8(8, 0x7364497472656C61, 0xE800000000000000, 1, sub_272B6A2AC);
    sub_272B544C8(10, 0x6E656D6F6E656870, 0xE900000000000061, 1, sub_272B6A884);
    sub_272B544C8(12, 0xD000000000000010, 0x8000000272B8B9E0, 0, sub_272B54784);
    sub_272B544C8(14, 0x656C61636F6CLL, 0xE600000000000000, 1, sub_272B54784);
    sub_272B544C8(16, 6386787, 0xE300000000000000, 0, sub_272B69C64);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

void static WK2_Article.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  if (!v8)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_91();
    sub_272B544C8(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_91();
    sub_272B544C8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_64();
    sub_272B544C8(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_232();
    OUTLINED_FUNCTION_91();
    sub_272B544C8(v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_67();
    sub_272B544C8(v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_91();
    sub_272B544C8(v34, v35, v36, v37, v38);
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v39, v40, v41, v42, v43);
    OUTLINED_FUNCTION_109();
    if (v53)
    {
      __break(1u);
    }

    else
    {
      v68 = v52;
      OUTLINED_FUNCTION_93(v44, v45, v46, v47, v48, v49, v50, v51, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
      sub_272B522C4(&v54);
    }
  }
}

void _s11WeatherData12WK2_LocationV8latitudeSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 5u)
  {
    return;
  }

  v3 = __OFADD__(v2, 4);
  v4 = v2 + 4;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void _s11WeatherData13WK2_PollutantV05startD0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(_BYTE *a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 24);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void sub_272B694A8()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      OUTLINED_FUNCTION_216();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_206();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t static WK2_Swell.createSwell(_:height:direction:timeIntervalSeconds:)()
{
  OUTLINED_FUNCTION_253();
  v1 = v0;
  v2 = static WK2_Pollutant.startPollutant(_:)();
  OUTLINED_FUNCTION_178();
  static WK2_Location.add(latitude:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_HourTide.add(height:_:)();
  OUTLINED_FUNCTION_154();
  static WK2_CurrentWeather.add(cloudCover:_:)();
  result = FlatBufferBuilder.endTable(at:)(v2);
  *v1 = result;
  return result;
}

void sub_272B69608(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_29;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_33;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          goto LABEL_11;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_33;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_29;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        goto LABEL_31;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
      if (v14)
      {
        goto LABEL_33;
      }

      v15 = *(__src[8] + 24);
      v16 = *(v15 + v4);
      if (*(v15 + v4))
      {
        v4 = __src[0] + v16;
        if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0;
        }

        if (v17 == 1)
        {
LABEL_11:
          *v27 = MEMORY[0x277D83A90];
          v10 = &unk_2808A3178;
          v11 = &unk_272B87CD0;
LABEL_32:
          __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
          v21 = sub_272B87730();
          v23 = v22;
          sub_272B5C86C();
          swift_allocError();
          *v24 = v4;
          *(v24 + 8) = v21;
          *(v24 + 16) = v23;
          v25 = *&v27[32];
          v26 = *&v27[16];
          *(v24 + 24) = *v27;
          *(v24 + 40) = v26;
          *(v24 + 56) = v25;
          *(v24 + 64) = 0;
          swift_willThrow();
          goto LABEL_33;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
        if (v18)
        {
LABEL_33:
          memcpy(v27, __src, sizeof(v27));
          sub_272B522C4(v27);
          return;
        }
      }

      if (v3 < 9)
      {
        goto LABEL_29;
      }

      v4 = __src[1] + 8;
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
        if (v19)
        {
          goto LABEL_33;
        }

        if (*(*(__src[8] + 24) + v4))
        {
          Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
          if (v20)
          {
            goto LABEL_33;
          }
        }

LABEL_29:
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
        goto LABEL_33;
      }
    }

LABEL_31:
    *v27 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_32;
  }
}

uint64_t _s11WeatherData011WK2_CurrentA0V8__bufferAA10ByteBufferVSgvg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
}

void WK2_CallToAction.label.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 5u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 4);
  v5 = v3 + 4;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_CallToAction.url.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v2 + v3) < 7u)
  {
    v8 = 0;
LABEL_6:
    if (!__OFADD__(v8, v1))
    {
      Table.directString(at:)(v8 + v1);
      return;
    }

    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 6);
  v7 = v3 + 6;
  if (!v4)
  {
    v8 = *(v2 + v7);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void sub_272B69C64(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_36;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_40;
      }

      v7 = __src[8];
      v8 = *(__src[8] + 24);
      v9 = *(v8 + v4);
      if (*(v8 + v4))
      {
        v4 = __src[0] + v9;
        if (((v8 + LOBYTE(__src[0]) + v9) & 3) != 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
LABEL_11:
          *__dst = MEMORY[0x277D84CC0];
          v11 = &qword_2808A3170;
          v12 = &unk_272B89910;
LABEL_38:
          __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
          v29 = sub_272B87730();
          v31 = v30;
          sub_272B5C86C();
          swift_allocError();
          *v32 = v4;
          *(v32 + 8) = v29;
          *(v32 + 16) = v31;
          v33 = *&__dst[32];
          v34 = *&__dst[16];
          *(v32 + 24) = *__dst;
          *(v32 + 40) = v34;
          *(v32 + 56) = v33;
          *(v32 + 64) = 0;
          goto LABEL_39;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v9, 4);
        if (v13)
        {
          goto LABEL_40;
        }

        v14 = v4 + *(*(v7 + 24) + v4);
        if (v14 < 0)
        {
          v14 = -v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_272B54784(&__src[3], v15);
      }

      if (v3 < 7)
      {
        goto LABEL_36;
      }

      v4 = __src[1] + 6;
      v16 = __src[3];
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (!v17)
        {
          v18 = __src[8];
          v19 = *(__src[8] + 24);
          v20 = *(v19 + v4);
          if (*(v19 + v4))
          {
            v4 = __src[0] + v20;
            if (((v19 + LOBYTE(__src[0]) + v20) & 3) != 0)
            {
              v21 = v16;
            }

            else
            {
              v21 = 0;
            }

            if ((v21 & 1) == 0)
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + v20, 4);
              if (!v22)
              {
                v23 = v4 + *(*(v18 + 24) + v4);
                if (v23 < 0)
                {
                  v23 = -v23;
                }

                if (v23 >= 0x7FFFFFFFFFFFFFFFLL)
                {
                  v24 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v24 = v23;
                }

                sub_272B54784(&__src[3], v24);
                if (__OFSUB__(__src[7], 1))
                {
                  __break(1u);
                  return;
                }

                --__src[7];
              }

              goto LABEL_40;
            }

            goto LABEL_11;
          }

LABEL_36:
          sub_272B5C86C();
          swift_allocError();
          *v25 = 6;
          v26 = v36;
          *(v25 + 6) = v37;
          *(v25 + 2) = v26;
          *(v25 + 8) = 7107189;
          *(v25 + 16) = 0xE300000000000000;
          v27 = *&__dst[32];
          v28 = *&__dst[16];
          *(v25 + 24) = *__dst;
          *(v25 + 40) = v28;
          *(v25 + 56) = v27;
          *(v25 + 64) = 3;
LABEL_39:
          swift_willThrow();
        }

LABEL_40:
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        return;
      }
    }

    *__dst = MEMORY[0x277D84C58];
    v11 = &qword_2808A3160;
    v12 = &unk_272B87CC0;
    goto LABEL_38;
  }
}

void static WK2_CallToAction.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  if (!v8)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_91();
    sub_272B544C8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_109();
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v43 = v27;
      OUTLINED_FUNCTION_93(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
      sub_272B522C4(&v29);
    }
  }
}

void sub_272B6A048(unsigned __int8 *a1, Swift::Int position)
{
  v4 = *a1;
  if (v4 == 1 && ((*(*(a1 + 5) + 24) + position) & 3) != 0)
  {
    *&v23 = MEMORY[0x277D84CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    v5 = sub_272B87730();
    v7 = v6;
    sub_272B5C86C();
    swift_allocError();
    *v8 = position;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7;
    *(v8 + 24) = v23;
    *(v8 + 40) = v24;
    *(v8 + 56) = v25;
    *(v8 + 64) = 0;
LABEL_4:
    swift_willThrow();
    return;
  }

  Verifier.rangeInBuffer(position:size:)(position, 4);
  if (!v9)
  {
    v10 = *(a1 + 5);
    v11 = *(*(v10 + 24) + position) + position;
    if (v11 < 0)
    {
      v11 = -v11;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3218, &unk_272B89870);
    if (swift_dynamicCastMetatype())
    {
      v13 = sub_272B54DD0(a1, v12);
      v15 = v13 + v14;
      if (v13 < v13 + v14)
      {
        v16 = v10;
        while (1)
        {
          if (v4)
          {
            v16 = v10;
          }

          if (__OFADD__(v13, 4))
          {
            v17 = v13 + 1;
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            if (v13 >= -1)
            {
              v17 = v13 + 1;
            }

            else
            {
              v17 = ~v13;
            }

            v13 += 4;
          }

          v18 = *(v16 + 32);
          if ((v18 & 0x8000000000000000) != 0 || v18 < v17)
          {
            v20 = *(a1 + 1);
            sub_272B5C86C();
            swift_allocError();
            *v21 = v17;
            *(v21 + 8) = v20;
            *(v21 + 16) = v23;
            *(v21 + 32) = v24;
            *(v21 + 48) = v25;
            v22 = 1;
            goto LABEL_32;
          }

          v19 = *(a1 + 4) + 1;
          *(a1 + 4) = v19;
          if (*(a1 + 16) < v19)
          {
            break;
          }

          if (v13 >= v15)
          {
            return;
          }
        }

        sub_272B5C86C();
        swift_allocError();
        *v21 = 6;
        *(v21 + 8) = 0u;
        *(v21 + 24) = 0u;
        *(v21 + 40) = 0u;
        *(v21 + 56) = 0;
        v22 = 7;
LABEL_32:
        *(v21 + 64) = v22;
        goto LABEL_4;
      }
    }

    else
    {
      sub_272B543C0(a1, v12);
    }
  }
}

void sub_272B6A2AC(uint64_t a1, Swift::Int a2)
{
  v4 = sub_272B54DD0(a1, a2);
  if (!v2)
  {
    v6 = v4;
    v7 = v4 + v5;
    if (v4 < v4 + v5)
    {
      do
      {
        v8 = v6 + 4;
        if (__OFADD__(v6, 4))
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          if ((*a1 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = v6 + 4;
          if (!*a1)
          {
            goto LABEL_9;
          }
        }

        if (((*(*(a1 + 40) + 24) + v6) & 3) != 0)
        {
          *&__src[0] = MEMORY[0x277D84CC0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
          v50 = sub_272B87730();
          v52 = v51;
          sub_272B5C86C();
          swift_allocError();
          *v53 = v6;
          *(v53 + 8) = v50;
          *(v53 + 16) = v52;
          v54 = *&__src[2];
          v55 = __src[1];
          *(v53 + 24) = __src[0];
          *(v53 + 40) = v55;
          *(v53 + 56) = v54;
          *(v53 + 64) = 0;
          goto LABEL_76;
        }

LABEL_9:
        if ((v8 & 0x8000000000000000) != 0)
        {
          v8 = -v8;
        }

        v10 = *(a1 + 40);
        v11 = *(v10 + 32);
        if ((v11 & 0x8000000000000000) != 0 || v11 < v8)
        {
          v41 = *(a1 + 8);
          sub_272B5C86C();
          swift_allocError();
          *v42 = v8;
          *(v42 + 8) = v41;
          v44 = __src[1];
          v43 = __src[2];
          *(v42 + 16) = __src[0];
          *(v42 + 32) = v44;
          *(v42 + 48) = v43;
          v45 = 1;
          goto LABEL_67;
        }

        v12 = *(a1 + 16) + 4;
        *(a1 + 16) = v12;
        if (*(a1 + 64) < v12)
        {
          sub_272B5C86C();
          swift_allocError();
          *v42 = 6;
          *(v42 + 8) = 0u;
          *(v42 + 24) = 0u;
          *(v42 + 40) = 0u;
          *(v42 + 56) = 0;
          v45 = 7;
LABEL_67:
          *(v42 + 64) = v45;
LABEL_76:
          swift_willThrow();
          return;
        }

        v13 = v6 + *(*(v10 + 24) + v6);
        if (v13 < 0)
        {
          v13 = -v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        Verifier.visitTable(at:)(v14, __src);
        if (*&__src[1] < 5)
        {
          goto LABEL_64;
        }

        v15 = *(&__src[0] + 1) + 4;
        v16 = BYTE8(__src[1]);
        if (BYTE8(__src[1]) == 1 && ((*(*&__src[4] + 24) + v15) & 1) != 0)
        {
          *__dst = MEMORY[0x277D84C58];
          v46 = &qword_2808A3160;
          v47 = &unk_272B87CC0;
LABEL_78:
          __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
          v56 = sub_272B87730();
          v58 = v57;
          sub_272B5C86C();
          swift_allocError();
          *v59 = v15;
          *(v59 + 8) = v56;
          *(v59 + 16) = v58;
          v60 = *&__dst[32];
          v61 = *&__dst[16];
          *(v59 + 24) = *__dst;
          *(v59 + 40) = v61;
          *(v59 + 56) = v60;
          *(v59 + 64) = 0;
          goto LABEL_73;
        }

        v17 = *(&__src[0] + 1) + 6;
        if (*(&__src[0] + 1) + 6 < 0)
        {
          v17 = -v17;
        }

        v18 = *&__src[4];
        v19 = *(*&__src[4] + 32);
        if ((v19 & 0x8000000000000000) != 0 || v19 < v17)
        {
          v35 = *&__src[2];
          sub_272B5C86C();
          swift_allocError();
          *v36 = v17;
          goto LABEL_71;
        }

        v20 = DWORD2(__src[2]);
        v21 = DWORD2(__src[5]);
        DWORD2(__src[2]) += 2;
        if (DWORD2(__src[5]) < DWORD2(__src[2]))
        {
          goto LABEL_63;
        }

        v22 = *(*&__src[4] + 24);
        v23 = *(v22 + v15);
        if (!*(v22 + v15))
        {
LABEL_64:
          sub_272B5C86C();
          swift_allocError();
          *v36 = 4;
          v38 = v64;
          *(v36 + 6) = v65;
          *(v36 + 2) = v38;
          *(v36 + 8) = 0x7365747962;
          *(v36 + 16) = 0xE500000000000000;
          v39 = *&__dst[32];
          v40 = *&__dst[16];
          *(v36 + 24) = *__dst;
          *(v36 + 40) = v40;
          *(v36 + 56) = v39;
          v37 = 3;
          goto LABEL_72;
        }

        v15 = *&__src[0] + v23;
        v24 = (v22 + *&__src[0] + v23);
        if ((v24 & 3) == 0)
        {
          v16 = 0;
        }

        if (v16 == 1)
        {
          *__dst = MEMORY[0x277D84CC0];
          v46 = &qword_2808A3170;
          v47 = &unk_272B89910;
          goto LABEL_78;
        }

        if (v15 + 4 >= 0)
        {
          v25 = v15 + 4;
        }

        else
        {
          v25 = -4 - v15;
        }

        if (v19 < v25)
        {
          v35 = *&__src[2];
          sub_272B5C86C();
          swift_allocError();
          *v36 = v25;
LABEL_71:
          *(v36 + 8) = v35;
          v48 = *&__dst[32];
          v49 = *&__dst[16];
          *(v36 + 16) = *__dst;
          *(v36 + 32) = v49;
          *(v36 + 48) = v48;
          v37 = 1;
LABEL_72:
          *(v36 + 64) = v37;
LABEL_73:
          swift_willThrow();
          memcpy(__dst, __src, sizeof(__dst));
          sub_272B522C4(__dst);
          return;
        }

        DWORD2(__src[2]) = v20 + 6;
        if (DWORD2(__src[5]) < v20 + 6)
        {
          goto LABEL_63;
        }

        v26 = v15 + *v24;
        if (v26 < 0)
        {
          v26 = -v26;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3218, &unk_272B89870);
        if (swift_dynamicCastMetatype())
        {
          v28 = sub_272B54DD0(&__src[1] + 8, v27);
          v30 = v28 + v29;
          if (v28 < v28 + v29)
          {
            v31 = *(v18 + 32);
            v32 = DWORD2(__src[2]);
            while (1)
            {
              v33 = ~v28;
              if (v28 >= -1)
              {
                v33 = v28 + 1;
              }

              if (__OFADD__(v28, 4))
              {
                v34 = v28 + 1;
              }

              else
              {
                v34 = v33;
              }

              if (__OFADD__(v28, 4))
              {
                v28 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 += 4;
              }

              if ((v31 & 0x8000000000000000) != 0 || v31 < v34)
              {
                DWORD2(__src[2]) = v32;
                v35 = *&__src[2];
                sub_272B5C86C();
                swift_allocError();
                *v36 = v34;
                goto LABEL_71;
              }

              if (v21 < ++v32)
              {
                break;
              }

              if (v28 >= v30)
              {
                DWORD2(__src[2]) = v32;
                goto LABEL_58;
              }
            }

            DWORD2(__src[2]) = v32;
LABEL_63:
            sub_272B5C86C();
            swift_allocError();
            *v36 = 6;
            *(v36 + 8) = 0u;
            *(v36 + 24) = 0u;
            *(v36 + 40) = 0u;
            *(v36 + 56) = 0;
            v37 = 7;
            goto LABEL_72;
          }
        }

        else
        {
          sub_272B543C0(&__src[1] + 8, v27);
        }

LABEL_58:
        if (__OFSUB__(*(&__src[3] + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&__src[3] + 1);
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        v6 = v9;
      }

      while (v9 < v7);
    }
  }
}

Swift::Int sub_272B6A884(unsigned __int8 *a1, Swift::Int a2)
{
  v5 = sub_272B87720();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  result = sub_272B54DD0(a1, a2);
  if (v2)
  {
    return result;
  }

  v15 = result;
  v56 = v6;
  v60 = v5;
  v16 = result + v14;
  if (result >= result + v14)
  {
    return result;
  }

  v17 = *a1;
  while (1)
  {
    v18 = v15 + 4;
    if (__OFADD__(v15, 4))
    {
      if (v17)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_9;
      }

      v20 = 0;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      v18 = -v18;
      goto LABEL_12;
    }

    v19 = v15 + 4;
    if (!v17)
    {
      v20 = 0;
      v19 = v15 + 4;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    if (((*(*(a1 + 5) + 24) + v15) & 3) != 0)
    {
      *&v57 = MEMORY[0x277D84CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
      v48 = sub_272B87730();
      v50 = v49;
      sub_272B5C86C();
      swift_allocError();
      *v51 = v15;
      goto LABEL_62;
    }

    v20 = 1;
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    v21 = *(a1 + 5);
    v22 = *(v21 + 32);
    if ((v22 & 0x8000000000000000) != 0 || v22 < v18)
    {
      v34 = *(a1 + 1);
      sub_272B5C86C();
      swift_allocError();
      *v35 = v18;
      goto LABEL_54;
    }

    v23 = *(a1 + 4);
    *(a1 + 4) = v23 + 4;
    v24 = *(a1 + 16);
    if (v24 < v23 + 4)
    {
      goto LABEL_47;
    }

    v25 = *(v21 + 24);
    v26 = v15 + *(v25 + v15);
    v27 = v26 >= 0 ? v15 + *(v25 + v15) : -v26;
    if ((v27 & 0x8000000000000000) == 0)
    {
      break;
    }

    v27 = 0x7FFFFFFFFFFFFFFFLL;
    if (v20)
    {
      goto LABEL_20;
    }

    v28 = 0x8000000000000003;
LABEL_22:
    v28 = -v28;
LABEL_23:
    if (v22 < v28)
    {
      goto LABEL_48;
    }

    v29 = v23 + 8;
    *(a1 + 4) = v29;
    if (v24 < v29)
    {
LABEL_47:
      sub_272B5C86C();
      swift_allocError();
      *v35 = 6;
      *(v35 + 8) = 0u;
      *(v35 + 24) = 0u;
      *(v35 + 40) = 0u;
      *(v35 + 56) = 0;
      v36 = 7;
      goto LABEL_56;
    }

    v30 = *(v25 + v27);
    result = -4 - v27;
    if (v27 + 4 >= 0)
    {
      v31 = v27 + 4;
    }

    else
    {
      v31 = -4 - v27;
    }

    if ((v31 & 0x8000000000000000) == 0)
    {
      v32 = v31 + v30;
      v28 = v31 + v30;
      if (v31 + v30 >= 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v32 = v30 + 0x7FFFFFFFFFFFFFFFLL;
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    if (v30 + 0x7FFFFFFFFFFFFFFFLL < 0)
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
      v28 = -v32;
      goto LABEL_31;
    }

    v31 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_31:
    if (v22 < v28)
    {
LABEL_48:
      v37 = *(a1 + 1);
      sub_272B5C86C();
      swift_allocError();
      *v35 = v28;
      *(v35 + 8) = v37;
      goto LABEL_55;
    }

    *(a1 + 4) = v30 + v29;
    if (v24 < v30 + v29)
    {
      goto LABEL_47;
    }

    v33 = v31 + v30;
    v34 = *(a1 + 1);
    if (v31 + v30 >= v34)
    {
      if (v33 >= 0)
      {
        v38 = v31 + v30;
      }

      else
      {
        v38 = -v33;
      }

      sub_272B5C86C();
      swift_allocError();
      *v35 = v38;
LABEL_54:
      *(v35 + 8) = v34;
LABEL_55:
      v40 = v58;
      v39 = v59;
      *(v35 + 16) = v57;
      *(v35 + 32) = v40;
      *(v35 + 48) = v39;
      v36 = 1;
LABEL_56:
      *(v35 + 64) = v36;
      return swift_willThrow();
    }

    if ((a1[76] & 1) == 0 && *(v25 + v33))
    {
      sub_272B87710();
      *&v57 = sub_272B51468((*(v21 + 24) + v31), v30);
      v41 = v56;
      v42 = v60;
      (*(v56 + 16))(v10, v12, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
      sub_272B549E8();
      v43 = sub_272B87700();
      v45 = v44;

      (*(v41 + 8))(v12, v42);
      sub_272B5C86C();
      swift_allocError();
      *v35 = v27;
      *(v35 + 8) = v43;
      *(v35 + 16) = v45;
      v46 = v59;
      v47 = v58;
      *(v35 + 24) = v57;
      *(v35 + 40) = v47;
      *(v35 + 56) = v46;
      v36 = 4;
      goto LABEL_56;
    }

    v15 = v19;
    if (v19 >= v16)
    {
      return result;
    }
  }

  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (((v25 + v27) & 3) == 0)
  {
LABEL_21:
    v28 = v27 + 4;
    if (v27 + 4 >= 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *&v57 = MEMORY[0x277D84CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
  v48 = sub_272B87730();
  v50 = v52;
  sub_272B5C86C();
  swift_allocError();
  *v51 = v27;
LABEL_62:
  *(v51 + 8) = v48;
  *(v51 + 16) = v50;
  v53 = v59;
  v54 = v58;
  *(v51 + 24) = v57;
  *(v51 + 40) = v54;
  *(v51 + 56) = v53;
  *(v51 + 64) = 0;
  return swift_willThrow();
}

void sub_272B6ADBC(uint64_t a1, Swift::Int a2)
{
  v4 = sub_272B54DD0(a1, a2);
  if (!v2)
  {
    v6 = v4;
    v7 = v4 + v5;
    if (v4 < v4 + v5)
    {
      do
      {
        v8 = v6 + 4;
        if (__OFADD__(v6, 4))
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          if ((*a1 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = v6 + 4;
          if (!*a1)
          {
            goto LABEL_9;
          }
        }

        if (((*(*(a1 + 40) + 24) + v6) & 3) != 0)
        {
          *__src = MEMORY[0x277D84CC0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
          v30 = sub_272B87730();
          v32 = v31;
          sub_272B5C86C();
          swift_allocError();
          *v33 = v6;
          *(v33 + 8) = v30;
          *(v33 + 16) = v32;
          v34 = *&__src[32];
          v35 = *&__src[16];
          *(v33 + 24) = *__src;
          *(v33 + 40) = v35;
          *(v33 + 56) = v34;
          *(v33 + 64) = 0;
          goto LABEL_44;
        }

LABEL_9:
        if ((v8 & 0x8000000000000000) != 0)
        {
          v8 = -v8;
        }

        v10 = *(a1 + 40);
        v11 = *(v10 + 32);
        if ((v11 & 0x8000000000000000) != 0 || v11 < v8)
        {
          v20 = *(a1 + 8);
          sub_272B5C86C();
          swift_allocError();
          *v21 = v8;
          *(v21 + 8) = v20;
          v22 = *&__src[32];
          v23 = *&__src[16];
          *(v21 + 16) = *__src;
          *(v21 + 32) = v23;
          *(v21 + 48) = v22;
          v24 = 1;
          goto LABEL_38;
        }

        v12 = *(a1 + 16) + 4;
        *(a1 + 16) = v12;
        if (*(a1 + 64) < v12)
        {
          sub_272B5C86C();
          swift_allocError();
          *v21 = 6;
          *(v21 + 8) = 0u;
          *(v21 + 24) = 0u;
          *(v21 + 40) = 0u;
          *(v21 + 56) = 0;
          v24 = 7;
LABEL_38:
          *(v21 + 64) = v24;
LABEL_44:
          swift_willThrow();
          return;
        }

        v13 = v6 + *(*(v10 + 24) + v6);
        if (v13 < 0)
        {
          v13 = -v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        Verifier.visitTable(at:)(v14, __src);
        if (*&__src[16] > 4)
        {
          v15 = *&__src[8] + 4;
          if (__src[24] == 1 && ((*(*&__src[64] + 24) + v15) & 1) != 0)
          {
            *v42 = MEMORY[0x277D84C58];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
            v36 = sub_272B87730();
            v38 = v37;
            sub_272B5C86C();
            swift_allocError();
            *v39 = v15;
            *(v39 + 8) = v36;
            *(v39 + 16) = v38;
            v40 = *&v42[32];
            v41 = *&v42[16];
            *(v39 + 24) = *v42;
            *(v39 + 40) = v41;
            *(v39 + 56) = v40;
            *(v39 + 64) = 0;
            goto LABEL_42;
          }

          v16 = *&__src[8] + 6;
          if (*&__src[8] + 6 < 0)
          {
            v16 = -v16;
          }

          v17 = *(*&__src[64] + 32);
          if ((v17 & 0x8000000000000000) != 0 || v17 < v16)
          {
LABEL_39:
            v25 = *&__src[32];
            sub_272B5C86C();
            swift_allocError();
            *v26 = v16;
            *(v26 + 8) = v25;
            v28 = *&v42[16];
            v27 = *&v42[32];
            *(v26 + 16) = *v42;
            *(v26 + 32) = v28;
            *(v26 + 48) = v27;
            v29 = 1;
            goto LABEL_41;
          }

          v18 = *&__src[40];
          *&__src[40] += 2;
          if (*&__src[88] < *&__src[40])
          {
            goto LABEL_40;
          }

          if (*(*(*&__src[64] + 24) + v15))
          {
            v19 = *__src + *(*(*&__src[64] + 24) + v15);
            if (v19 + 1 >= 0)
            {
              v16 = v19 + 1;
            }

            else
            {
              v16 = ~v19;
            }

            if (v17 < v16)
            {
              goto LABEL_39;
            }

            *&__src[40] = v18 + 3;
            if (*&__src[88] < (v18 + 3))
            {
LABEL_40:
              sub_272B5C86C();
              swift_allocError();
              *v26 = 6;
              *(v26 + 8) = 0u;
              *(v26 + 24) = 0u;
              *(v26 + 40) = 0u;
              *(v26 + 56) = 0;
              v29 = 7;
LABEL_41:
              *(v26 + 64) = v29;
LABEL_42:
              swift_willThrow();
              memcpy(v42, __src, sizeof(v42));
              sub_272B522C4(v42);
              return;
            }
          }
        }

        sub_272B53EA4(6, 0x73646F69726570, 0xE700000000000000, 1, sub_272B57734);
        if (__OFSUB__(*&__src[56], 1))
        {
          __break(1u);
          return;
        }

        --*&__src[56];
        memcpy(v42, __src, sizeof(v42));
        sub_272B522C4(v42);
        v6 = v9;
      }

      while (v9 < v7);
    }
  }
}

void sub_272B6B448(uint64_t a1, Swift::Int a2)
{
  v4 = sub_272B54DD0(a1, a2);
  if (!v2)
  {
    v6 = v4;
    v7 = v4 + v5;
    if (v4 < v4 + v5)
    {
      do
      {
        v8 = v6 + 4;
        if (__OFADD__(v6, 4))
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          if ((*a1 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = v6 + 4;
          if (!*a1)
          {
            goto LABEL_9;
          }
        }

        if (((*(*(a1 + 40) + 24) + v6) & 3) != 0)
        {
          *&__src[0] = MEMORY[0x277D84CC0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
          v43 = sub_272B87730();
          v45 = v44;
          sub_272B5C86C();
          swift_allocError();
          *v46 = v6;
          *(v46 + 8) = v43;
          *(v46 + 16) = v45;
          v47 = *&__src[2];
          v48 = __src[1];
          *(v46 + 24) = __src[0];
          *(v46 + 40) = v48;
          *(v46 + 56) = v47;
          *(v46 + 64) = 0;
          goto LABEL_74;
        }

LABEL_9:
        if ((v8 & 0x8000000000000000) != 0)
        {
          v8 = -v8;
        }

        v10 = *(a1 + 40);
        v11 = *(v10 + 32);
        if ((v11 & 0x8000000000000000) != 0 || v11 < v8)
        {
          v35 = *(a1 + 8);
          sub_272B5C86C();
          swift_allocError();
          *v36 = v8;
          *(v36 + 8) = v35;
          v38 = __src[1];
          v37 = __src[2];
          *(v36 + 16) = __src[0];
          *(v36 + 32) = v38;
          *(v36 + 48) = v37;
          v39 = 1;
          goto LABEL_71;
        }

        v12 = *(a1 + 16) + 4;
        *(a1 + 16) = v12;
        if (*(a1 + 64) < v12)
        {
          sub_272B5C86C();
          swift_allocError();
          *v36 = 6;
          *(v36 + 8) = 0u;
          *(v36 + 24) = 0u;
          *(v36 + 40) = 0u;
          *(v36 + 56) = 0;
          v39 = 7;
LABEL_71:
          *(v36 + 64) = v39;
LABEL_74:
          swift_willThrow();
          return;
        }

        v13 = v6 + *(*(v10 + 24) + v6);
        if (v13 < 0)
        {
          v13 = -v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        Verifier.visitTable(at:)(v14, __src);
        v15 = *&__src[1];
        if (*&__src[1] >= 5)
        {
          v16 = *(&__src[0] + 1) + 4;
          v17 = BYTE8(__src[1]);
          if (BYTE8(__src[1]) == 1 && ((*(*&__src[4] + 24) + v16) & 1) != 0)
          {
LABEL_76:
            *__dst = MEMORY[0x277D84C58];
            v49 = &qword_2808A3160;
            v50 = &unk_272B87CC0;
            goto LABEL_77;
          }

          v18 = *(&__src[0] + 1) + 6;
          if (*(&__src[0] + 1) + 6 < 0)
          {
            v18 = -v18;
          }

          v19 = *(*&__src[4] + 32);
          if ((v19 & 0x8000000000000000) != 0 || v19 < v18)
          {
LABEL_72:
            v42 = *&__src[2];
            sub_272B5C86C();
            swift_allocError();
            *v40 = v18;
LABEL_79:
            *(v40 + 8) = v42;
            v57 = *&__dst[32];
            v58 = *&__dst[16];
            *(v40 + 16) = *__dst;
            *(v40 + 32) = v58;
            *(v40 + 48) = v57;
            v41 = 1;
LABEL_80:
            *(v40 + 64) = v41;
            goto LABEL_81;
          }

          v20 = DWORD2(__src[2]);
          DWORD2(__src[2]) += 2;
          if (DWORD2(__src[5]) < DWORD2(__src[2]))
          {
            goto LABEL_69;
          }

          v21 = *(*&__src[4] + 24);
          v22 = *(v21 + v16);
          if (*(v21 + v16))
          {
            v16 = *&__src[0] + v22;
            v23 = (v21 + *&__src[0] + v22);
            if ((v23 & 3) == 0)
            {
              v17 = 0;
            }

            if (v17 == 1)
            {
LABEL_75:
              *__dst = MEMORY[0x277D84CC0];
              v49 = &qword_2808A3170;
              v50 = &unk_272B89910;
LABEL_77:
              __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
              v51 = sub_272B87730();
              v53 = v52;
              sub_272B5C86C();
              swift_allocError();
              *v54 = v16;
              *(v54 + 8) = v51;
              *(v54 + 16) = v53;
              v55 = *&__dst[32];
              v56 = *&__dst[16];
              *(v54 + 24) = *__dst;
              *(v54 + 40) = v56;
              *(v54 + 56) = v55;
              *(v54 + 64) = 0;
LABEL_81:
              swift_willThrow();
              memcpy(__dst, __src, sizeof(__dst));
              sub_272B522C4(__dst);
              return;
            }

            if (v16 + 4 >= 0)
            {
              v18 = v16 + 4;
            }

            else
            {
              v18 = -4 - v16;
            }

            if (v19 < v18)
            {
              goto LABEL_72;
            }

            DWORD2(__src[2]) = v20 + 6;
            if (DWORD2(__src[5]) < v20 + 6)
            {
              goto LABEL_69;
            }

            v24 = v16 + *v23;
            if (v24 < 0)
            {
              v24 = -v24;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v25 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v24;
            }

            sub_272B54784(&__src[1] + 8, v25);
          }

          if (v15 > 6)
          {
            v16 = *(&__src[0] + 1) + 6;
            v26 = BYTE8(__src[1]);
            if (BYTE8(__src[1]) == 1 && ((*(*&__src[4] + 24) + v16) & 1) != 0)
            {
              goto LABEL_76;
            }

            v27 = *(&__src[0] + 1) + 8;
            if (*(&__src[0] + 1) + 8 < 0)
            {
              v27 = -v27;
            }

            v28 = *(*&__src[4] + 32);
            if ((v28 & 0x8000000000000000) != 0 || v28 < v27)
            {
LABEL_78:
              v42 = *&__src[2];
              sub_272B5C86C();
              swift_allocError();
              *v40 = v27;
              goto LABEL_79;
            }

            v29 = DWORD2(__src[2]);
            DWORD2(__src[2]) += 2;
            if (DWORD2(__src[5]) < DWORD2(__src[2]))
            {
              goto LABEL_69;
            }

            v30 = *(*&__src[4] + 24);
            v31 = *(v30 + v16);
            if (*(v30 + v16))
            {
              v16 = *&__src[0] + v31;
              v32 = (v30 + *&__src[0] + v31);
              if ((v32 & 3) == 0)
              {
                v26 = 0;
              }

              if (v26 == 1)
              {
                goto LABEL_75;
              }

              if (v16 + 4 >= 0)
              {
                v27 = v16 + 4;
              }

              else
              {
                v27 = -4 - v16;
              }

              if (v28 < v27)
              {
                goto LABEL_78;
              }

              DWORD2(__src[2]) = v29 + 6;
              if (DWORD2(__src[5]) < v29 + 6)
              {
LABEL_69:
                sub_272B5C86C();
                swift_allocError();
                *v40 = 6;
                *(v40 + 8) = 0u;
                *(v40 + 24) = 0u;
                *(v40 + 40) = 0u;
                *(v40 + 56) = 0;
                v41 = 7;
                goto LABEL_80;
              }

              v33 = v16 + *v32;
              if (v33 < 0)
              {
                v33 = -v33;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v34 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v33;
              }

              sub_272B54784(&__src[1] + 8, v34);
            }
          }
        }

        if (__OFSUB__(*(&__src[3] + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&__src[3] + 1);
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        v6 = v9;
      }

      while (v9 < v7);
    }
  }
}

void sub_272B6B9C8(uint64_t a1, Swift::Int a2)
{
  v4 = sub_272B54DD0(a1, a2);
  if (!v2)
  {
    v6 = v4;
    v7 = v4 + v5;
    if (v4 < v4 + v5)
    {
      do
      {
        v8 = v6 + 4;
        if (__OFADD__(v6, 4))
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          if ((*a1 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = v6 + 4;
          if (!*a1)
          {
            goto LABEL_9;
          }
        }

        if (((*(*(a1 + 40) + 24) + v6) & 3) != 0)
        {
          *&__src[0] = MEMORY[0x277D84CC0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
          v30 = sub_272B87730();
          v32 = v31;
          sub_272B5C86C();
          swift_allocError();
          *v33 = v6;
          *(v33 + 8) = v30;
          *(v33 + 16) = v32;
          v34 = *&__src[2];
          v35 = __src[1];
          *(v33 + 24) = __src[0];
          *(v33 + 40) = v35;
          *(v33 + 56) = v34;
          *(v33 + 64) = 0;
          goto LABEL_42;
        }

LABEL_9:
        if ((v8 & 0x8000000000000000) != 0)
        {
          v8 = -v8;
        }

        v10 = *(a1 + 40);
        v11 = *(v10 + 32);
        if ((v11 & 0x8000000000000000) != 0 || v11 < v8)
        {
          v23 = *(a1 + 8);
          sub_272B5C86C();
          swift_allocError();
          *v24 = v8;
          *(v24 + 8) = v23;
          v26 = __src[1];
          v25 = __src[2];
          *(v24 + 16) = __src[0];
          *(v24 + 32) = v26;
          *(v24 + 48) = v25;
          v27 = 1;
          goto LABEL_39;
        }

        v12 = *(a1 + 16) + 4;
        *(a1 + 16) = v12;
        if (*(a1 + 64) < v12)
        {
          sub_272B5C86C();
          swift_allocError();
          *v24 = 6;
          *(v24 + 8) = 0u;
          *(v24 + 24) = 0u;
          *(v24 + 40) = 0u;
          *(v24 + 56) = 0;
          v27 = 7;
LABEL_39:
          *(v24 + 64) = v27;
LABEL_42:
          swift_willThrow();
          return;
        }

        v13 = v6 + *(*(v10 + 24) + v6);
        if (v13 < 0)
        {
          v13 = -v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        Verifier.visitTable(at:)(v14, __src);
        if (*&__src[1] > 4)
        {
          v15 = *(&__src[0] + 1) + 4;
          if (BYTE8(__src[1]) == 1 && ((*(*&__src[4] + 24) + v15) & 1) != 0)
          {
            *__dst = MEMORY[0x277D84C58];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
            v44 = sub_272B87730();
            v39 = v45;
            sub_272B5C86C();
            swift_allocError();
            *v40 = v15;
            *(v40 + 8) = v44;
            goto LABEL_49;
          }

          v16 = *(&__src[0] + 1) + 6;
          if (*(&__src[0] + 1) + 6 < 0)
          {
            v16 = -v16;
          }

          v17 = *(*&__src[4] + 32);
          if ((v17 & 0x8000000000000000) != 0 || v17 < v16)
          {
            v36 = *&__src[2];
            sub_272B5C86C();
            swift_allocError();
            *v28 = v16;
            *(v28 + 8) = v36;
            goto LABEL_46;
          }

          v18 = DWORD2(__src[2]);
          DWORD2(__src[2]) += 2;
          if (DWORD2(__src[5]) < DWORD2(__src[2]))
          {
            goto LABEL_40;
          }

          v19 = *(*&__src[4] + 24);
          v20 = *(v19 + v15);
          if (*(v19 + v15))
          {
            v21 = *&__src[0] + v20;
            if ((BYTE8(__src[1]) & (v19 + LODWORD(__src[0]) + v20)) == 1)
            {
              *__dst = MEMORY[0x277D84958];
              __swift_instantiateConcreteTypeFromMangledNameV2(qword_2808A3220, &qword_272B89920);
              v37 = sub_272B87730();
              v39 = v38;
              sub_272B5C86C();
              swift_allocError();
              *v40 = v21;
              *(v40 + 8) = v37;
LABEL_49:
              *(v40 + 16) = v39;
              v46 = *&__dst[32];
              v47 = *&__dst[16];
              *(v40 + 24) = *__dst;
              *(v40 + 40) = v47;
              *(v40 + 56) = v46;
              *(v40 + 64) = 0;
              goto LABEL_50;
            }

            if (v21 + 2 >= 0)
            {
              v22 = v21 + 2;
            }

            else
            {
              v22 = -2 - v21;
            }

            if (v17 < v22)
            {
              v41 = *&__src[2];
              sub_272B5C86C();
              swift_allocError();
              *v28 = v22;
              *(v28 + 8) = v41;
LABEL_46:
              v42 = *&__dst[32];
              v43 = *&__dst[16];
              *(v28 + 16) = *__dst;
              *(v28 + 32) = v43;
              *(v28 + 48) = v42;
              v29 = 1;
LABEL_47:
              *(v28 + 64) = v29;
LABEL_50:
              swift_willThrow();
              memcpy(__dst, __src, sizeof(__dst));
              sub_272B522C4(__dst);
              return;
            }

            DWORD2(__src[2]) = v18 + 4;
            if (DWORD2(__src[5]) < v18 + 4)
            {
LABEL_40:
              sub_272B5C86C();
              swift_allocError();
              *v28 = 6;
              *(v28 + 8) = 0u;
              *(v28 + 24) = 0u;
              *(v28 + 40) = 0u;
              *(v28 + 56) = 0;
              v29 = 7;
              goto LABEL_47;
            }
          }
        }

        sub_272B544C8(6, 0x74617265706D6574, 0xEB00000000657275, 1, sub_272B6C18C);
        if (__OFSUB__(*(&__src[3] + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&__src[3] + 1);
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        v6 = v9;
      }

      while (v9 < v7);
    }
  }
}

void sub_272B6BEC8(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_29;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v5)
      {
        goto LABEL_33;
      }

      if (*(*(__src[8] + 24) + v4))
      {
        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
        if (v6)
        {
          goto LABEL_33;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_29;
      }

      v4 = __src[1] + 6;
      v7 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v8)
        {
          goto LABEL_33;
        }

        v9 = *(__src[8] + 24);
        v10 = *(v9 + v4);
        if (*(v9 + v4))
        {
          v4 = __src[0] + v10;
          if (((v9 + LOBYTE(__src[0]) + v10) & 3) != 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = 0;
          }

          if (v11 == 1)
          {
            goto LABEL_17;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v10, 4);
          if (v14)
          {
            goto LABEL_33;
          }
        }

        if (v3 < 9)
        {
          goto LABEL_29;
        }

        v4 = __src[1] + 8;
        v15 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (!v16)
          {
            v17 = *(__src[8] + 24);
            v18 = *(v17 + v4);
            if (!*(v17 + v4))
            {
              goto LABEL_29;
            }

            v4 = __src[0] + v18;
            if (((v17 + LOBYTE(__src[0]) + v18) & 3) != 0)
            {
              v19 = v15;
            }

            else
            {
              v19 = 0;
            }

            if (v19 == 1)
            {
LABEL_17:
              *v27 = MEMORY[0x277D83A90];
              v12 = &unk_2808A3178;
              v13 = &unk_272B87CD0;
LABEL_32:
              __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
              v21 = sub_272B87730();
              v23 = v22;
              sub_272B5C86C();
              swift_allocError();
              *v24 = v4;
              *(v24 + 8) = v21;
              *(v24 + 16) = v23;
              v25 = *&v27[32];
              v26 = *&v27[16];
              *(v24 + 24) = *v27;
              *(v24 + 40) = v26;
              *(v24 + 56) = v25;
              *(v24 + 64) = 0;
              swift_willThrow();
              goto LABEL_33;
            }

            Verifier.rangeInBuffer(position:size:)(__src[0] + v18, 4);
            if (!v20)
            {
LABEL_29:
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
            }
          }

LABEL_33:
          memcpy(v27, __src, sizeof(v27));
          sub_272B522C4(v27);
          return;
        }
      }
    }

    *v27 = MEMORY[0x277D84C58];
    v12 = &qword_2808A3160;
    v13 = &unk_272B87CC0;
    goto LABEL_32;
  }
}

void sub_272B6C18C(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_33;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_37;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          goto LABEL_11;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_37;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_33;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v14)
        {
          goto LABEL_37;
        }

        v15 = *(__src[8] + 24);
        v16 = *(v15 + v4);
        if (*(v15 + v4))
        {
          v4 = __src[0] + v16;
          if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = 0;
          }

          if (v17 == 1)
          {
            goto LABEL_11;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
          if (v18)
          {
            goto LABEL_37;
          }
        }

        if (v3 < 9)
        {
LABEL_33:
          if (__OFSUB__(__src[7], 1))
          {
            __break(1u);
            return;
          }

          --__src[7];
          goto LABEL_37;
        }

        v4 = __src[1] + 8;
        v19 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (v20)
          {
            goto LABEL_37;
          }

          v21 = *(__src[8] + 24);
          v22 = *(v21 + v4);
          if (*(v21 + v4))
          {
            v4 = __src[0] + v22;
            if (((v21 + LOBYTE(__src[0]) + v22) & 3) != 0)
            {
              v23 = v19;
            }

            else
            {
              v23 = 0;
            }

            if (v23 != 1)
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + v22, 4);
              if (!v24)
              {
                goto LABEL_33;
              }

LABEL_37:
              memcpy(v31, __src, sizeof(v31));
              sub_272B522C4(v31);
              return;
            }

LABEL_11:
            *v31 = MEMORY[0x277D83A90];
            v10 = &unk_2808A3178;
            v11 = &unk_272B87CD0;
LABEL_36:
            __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
            v25 = sub_272B87730();
            v27 = v26;
            sub_272B5C86C();
            swift_allocError();
            *v28 = v4;
            *(v28 + 8) = v25;
            *(v28 + 16) = v27;
            v29 = *&v31[32];
            v30 = *&v31[16];
            *(v28 + 24) = *v31;
            *(v28 + 40) = v30;
            *(v28 + 56) = v29;
            *(v28 + 64) = 0;
            swift_willThrow();
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }
    }

    *v31 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_36;
  }
}

void sub_272B6C468(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_23;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_27;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          goto LABEL_11;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_27;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_23;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (!v14)
        {
          v15 = *(__src[8] + 24);
          v16 = *(v15 + v4);
          if (!*(v15 + v4))
          {
            goto LABEL_23;
          }

          v4 = __src[0] + v16;
          if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = 0;
          }

          if (v17 == 1)
          {
LABEL_11:
            *v25 = MEMORY[0x277D83A90];
            v10 = &unk_2808A3178;
            v11 = &unk_272B87CD0;
LABEL_26:
            __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
            v19 = sub_272B87730();
            v21 = v20;
            sub_272B5C86C();
            swift_allocError();
            *v22 = v4;
            *(v22 + 8) = v19;
            *(v22 + 16) = v21;
            v23 = *&v25[32];
            v24 = *&v25[16];
            *(v22 + 24) = *v25;
            *(v22 + 40) = v24;
            *(v22 + 56) = v23;
            *(v22 + 64) = 0;
            swift_willThrow();
            goto LABEL_27;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
          if (!v18)
          {
LABEL_23:
            if (__OFSUB__(__src[7], 1))
            {
              __break(1u);
              return;
            }

            --__src[7];
          }
        }

LABEL_27:
        memcpy(v25, __src, sizeof(v25));
        sub_272B522C4(v25);
        return;
      }
    }

    *v25 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_26;
  }
}

void sub_272B6C6B4(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    if (__src[2] >= 5)
    {
      v4 = __src[1] + 4;
      v5 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *v18 = MEMORY[0x277D84C58];
        v9 = &qword_2808A3160;
        v10 = &unk_272B87CC0;
        goto LABEL_10;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      v3 = v6;
      if (v6)
      {
LABEL_15:
        memcpy(v18, __src, sizeof(v18));
        sub_272B522C4(v18);
        return;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if ((v5 & (v7 + LODWORD(__src[0]) + v8)) == 1)
        {
          *v18 = MEMORY[0x277D84958];
          v9 = qword_2808A3220;
          v10 = &qword_272B89920;
LABEL_10:
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          v11 = sub_272B87730();
          v13 = v12;
          sub_272B5C86C();
          swift_allocError();
          *v14 = v4;
          *(v14 + 8) = v11;
          *(v14 + 16) = v13;
          v15 = *&v18[32];
          v16 = *&v18[16];
          *(v14 + 24) = *v18;
          *(v14 + 40) = v16;
          *(v14 + 56) = v15;
          *(v14 + 64) = 0;
          swift_willThrow();
          goto LABEL_15;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 2);
        v3 = v17;
        if (v17)
        {
          goto LABEL_15;
        }
      }
    }

    sub_272B544C8(6, 0x74617265706D6574, 0xEB00000000657275, 0, sub_272B6C468);
    if (!v3)
    {
      sub_272B544C8(8, 0x7469706963657270, 0xED00006E6F697461, 0, sub_272B6BEC8);
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
    }

    goto LABEL_15;
  }
}

void sub_272B6C900(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_54;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_58;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *v43 = MEMORY[0x277D84CC0];
          v10 = &qword_2808A3170;
          v11 = &unk_272B89910;
LABEL_57:
          __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
          v37 = sub_272B87730();
          v39 = v38;
          sub_272B5C86C();
          swift_allocError();
          *v40 = v4;
          *(v40 + 8) = v37;
          *(v40 + 16) = v39;
          v41 = *&v43[32];
          v42 = *&v43[16];
          *(v40 + 24) = *v43;
          *(v40 + 40) = v42;
          *(v40 + 56) = v41;
          *(v40 + 64) = 0;
          swift_willThrow();
          goto LABEL_58;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_58;
        }
      }

      if (v3 <= 6)
      {
        goto LABEL_54;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v14)
        {
          goto LABEL_58;
        }

        v15 = *(__src[8] + 24);
        v16 = *(v15 + v4);
        if (*(v15 + v4))
        {
          v4 = __src[0] + v16;
          if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = 0;
          }

          if (v17 == 1)
          {
            goto LABEL_22;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
          if (v18)
          {
            goto LABEL_58;
          }
        }

        if (v3 <= 8)
        {
          goto LABEL_54;
        }

        v4 = __src[1] + 8;
        v19 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (v20)
          {
            goto LABEL_58;
          }

          v21 = *(__src[8] + 24);
          v22 = *(v21 + v4);
          if (*(v21 + v4))
          {
            v4 = __src[0] + v22;
            if (((v21 + LOBYTE(__src[0]) + v22) & 3) != 0)
            {
              v23 = v19;
            }

            else
            {
              v23 = 0;
            }

            if (v23 == 1)
            {
              goto LABEL_22;
            }

            Verifier.rangeInBuffer(position:size:)(__src[0] + v22, 4);
            if (v24)
            {
              goto LABEL_58;
            }
          }

          if (v3 <= 0xA)
          {
            goto LABEL_54;
          }

          v4 = __src[1] + 10;
          v25 = LOBYTE(__src[3]);
          if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
            if (v26)
            {
              goto LABEL_58;
            }

            v27 = *(__src[8] + 24);
            v28 = *(v27 + v4);
            if (*(v27 + v4))
            {
              v4 = __src[0] + v28;
              if (((v27 + LOBYTE(__src[0]) + v28) & 3) != 0)
              {
                v29 = v25;
              }

              else
              {
                v29 = 0;
              }

              if (v29 == 1)
              {
                goto LABEL_22;
              }

              Verifier.rangeInBuffer(position:size:)(__src[0] + v28, 4);
              if (v30)
              {
                goto LABEL_58;
              }
            }

            if (v3 <= 0xC)
            {
LABEL_54:
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
              goto LABEL_58;
            }

            v4 = __src[1] + 12;
            v31 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
            {
              Verifier.rangeInBuffer(position:size:)(__src[1] + 12, 2);
              if (v32)
              {
                goto LABEL_58;
              }

              v33 = *(__src[8] + 24);
              v34 = *(v33 + v4);
              if (*(v33 + v4))
              {
                v4 = __src[0] + v34;
                if (((v33 + LOBYTE(__src[0]) + v34) & 3) != 0)
                {
                  v35 = v31;
                }

                else
                {
                  v35 = 0;
                }

                if (v35 != 1)
                {
                  Verifier.rangeInBuffer(position:size:)(__src[0] + v34, 4);
                  if (!v36)
                  {
                    goto LABEL_54;
                  }

LABEL_58:
                  memcpy(v43, __src, sizeof(v43));
                  sub_272B522C4(v43);
                  return;
                }

LABEL_22:
                *v43 = MEMORY[0x277D83A90];
                v10 = &unk_2808A3178;
                v11 = &unk_272B87CD0;
                goto LABEL_57;
              }

              goto LABEL_54;
            }
          }
        }
      }
    }

    *v43 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_57;
  }
}

void sub_272B6CD1C(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    if (__src[2] < 5)
    {
      goto LABEL_8;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
    {
      *v13 = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      v7 = sub_272B87730();
      v9 = v8;
      sub_272B5C86C();
      swift_allocError();
      *v10 = v4;
      *(v10 + 8) = v7;
      *(v10 + 16) = v9;
      v11 = *&v13[32];
      v12 = *&v13[16];
      *(v10 + 24) = *v13;
      *(v10 + 40) = v12;
      *(v10 + 56) = v11;
      *(v10 + 64) = 0;
      swift_willThrow();
    }

    else
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      v3 = v5;
      if (!v5)
      {
        if (!*(*(__src[8] + 24) + v4) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1), (v3 = v6) == 0))
        {
LABEL_8:
          sub_272B544C8(6, 0x74617265706D6574, 0xEB00000000657275, 0, sub_272B6C468);
          if (!v3)
          {
            sub_272B544C8(8, 0x7469706963657270, 0xED00006E6F697461, 0, sub_272B6BEC8);
            if (__OFSUB__(__src[7], 1))
            {
              __break(1u);
              return;
            }

            --__src[7];
          }
        }
      }
    }

    memcpy(v13, __src, sizeof(v13));
    sub_272B522C4(v13);
  }
}

void sub_272B6CF2C(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D54C(4, 0x7365747962, 0xE500000000000000, 1);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

void sub_272B6CFC4(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (v2)
  {
    return;
  }

  sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
  sub_272B544C8(6, 0x55736C6961746564, 0xEA00000000006C72, 0, sub_272B54784);
  if (__src[2] <= 8)
  {
    goto LABEL_12;
  }

  v3 = __src[1] + 8;
  v4 = LOBYTE(__src[3]);
  if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v3) & 1) != 0)
  {
    *__dst = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_14;
  }

  Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
  if (v5)
  {
    goto LABEL_17;
  }

  v6 = __src[8];
  v7 = *(__src[8] + 24);
  v8 = *(v7 + v3);
  if (!*(v7 + v3))
  {
LABEL_12:
    sub_272B5C86C();
    swift_allocError();
    *v12 = 8;
    *(v12 + 6) = v43;
    *(v12 + 2) = v42;
    *(v12 + 8) = 0x737472656C61;
    *(v12 + 16) = 0xE600000000000000;
    v13 = *&__dst[32];
    v14 = *&__dst[16];
    *(v12 + 24) = *__dst;
    *(v12 + 40) = v14;
    *(v12 + 56) = v13;
    *(v12 + 64) = 3;
    goto LABEL_16;
  }

  v3 = __src[0] + v8;
  if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    *__dst = MEMORY[0x277D84CC0];
    v10 = &qword_2808A3170;
    v11 = &unk_272B89910;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v15 = sub_272B87730();
    v17 = v16;
    sub_272B5C86C();
    swift_allocError();
    *v18 = v3;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    goto LABEL_15;
  }

  Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
  if (v21)
  {
    goto LABEL_17;
  }

  v22 = v3 + *(*(v6 + 24) + v3);
  if (v22 < 0)
  {
    v22 = -v22;
  }

  if (v22 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = v22;
  }

  v24 = sub_272B54DD0(&__src[3], v23);
  v26 = v24 + v25;
  if (v24 < v24 + v25)
  {
    do
    {
      v27 = v24 + 4;
      if (__OFADD__(v24, 4))
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
        if ((__src[3] & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = v24 + 4;
        if (!LOBYTE(__src[3]))
        {
          goto LABEL_32;
        }
      }

      if (((*(__src[8] + 24) + v24) & 3) != 0)
      {
        *__dst = MEMORY[0x277D84CC0];
        v38 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
        v39 = sub_272B87730();
        v41 = v40;
        sub_272B5C86C();
        swift_allocError();
        *v18 = v38;
        *(v18 + 8) = v39;
        *(v18 + 16) = v41;
LABEL_15:
        v19 = *&__dst[32];
        v20 = *&__dst[16];
        *(v18 + 24) = *__dst;
        *(v18 + 40) = v20;
        *(v18 + 56) = v19;
        *(v18 + 64) = 0;
LABEL_16:
        swift_willThrow();
LABEL_17:
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        return;
      }

LABEL_32:
      if ((v27 & 0x8000000000000000) != 0)
      {
        v27 = -v27;
      }

      v29 = *(__src[8] + 32);
      if ((v29 & 0x8000000000000000) != 0 || v29 < v27)
      {
        v32 = __src[4];
        v33 = v27;
        sub_272B5C86C();
        swift_allocError();
        *v34 = v33;
        *(v34 + 8) = v32;
        v36 = *&__dst[16];
        v35 = *&__dst[32];
        *(v34 + 16) = *__dst;
        *(v34 + 32) = v36;
        *(v34 + 48) = v35;
        v37 = 1;
LABEL_47:
        *(v34 + 64) = v37;
        goto LABEL_16;
      }

      LODWORD(__src[5]) += 4;
      if (LODWORD(__src[11]) < LODWORD(__src[5]))
      {
        sub_272B5C86C();
        swift_allocError();
        *v34 = 6;
        *(v34 + 8) = 0u;
        *(v34 + 24) = 0u;
        *(v34 + 40) = 0u;
        *(v34 + 56) = 0;
        v37 = 7;
        goto LABEL_47;
      }

      v30 = v24 + *(*(__src[8] + 24) + v24);
      if (v30 < 0)
      {
        v30 = -v30;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      sub_272B84900(&__src[3], v31);
      v24 = v28;
    }

    while (v28 < v26);
  }

  if (!__OFSUB__(__src[7], 1))
  {
    --__src[7];
    goto LABEL_17;
  }

  __break(1u);
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

unint64_t sub_272B6D4A0()
{
  result = qword_2808A3180;
  if (!qword_2808A3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3180);
  }

  return result;
}

unint64_t sub_272B6D510()
{
  result = qword_2808A3188;
  if (!qword_2808A3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3188);
  }

  return result;
}

unint64_t sub_272B6D568()
{
  result = qword_2808A3190;
  if (!qword_2808A3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3190);
  }

  return result;
}

unint64_t sub_272B6D5C0()
{
  result = qword_2808A3198;
  if (!qword_2808A3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3198);
  }

  return result;
}

unint64_t sub_272B6D618()
{
  result = qword_2808A31A0;
  if (!qword_2808A31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31A0);
  }

  return result;
}

unint64_t sub_272B6D670()
{
  result = qword_2808A31A8;
  if (!qword_2808A31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31A8);
  }

  return result;
}

unint64_t sub_272B6D6C8()
{
  result = qword_2808A31B0;
  if (!qword_2808A31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31B0);
  }

  return result;
}

unint64_t sub_272B6D720()
{
  result = qword_2808A31B8;
  if (!qword_2808A31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31B8);
  }

  return result;
}

unint64_t sub_272B6D778()
{
  result = qword_2808A31C0;
  if (!qword_2808A31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31C0);
  }

  return result;
}

unint64_t sub_272B6D7D0()
{
  result = qword_2808A31C8;
  if (!qword_2808A31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31C8);
  }

  return result;
}

unint64_t sub_272B6D828()
{
  result = qword_2808A31D0;
  if (!qword_2808A31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31D0);
  }

  return result;
}

unint64_t sub_272B6D880()
{
  result = qword_2808A31D8;
  if (!qword_2808A31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31D8);
  }

  return result;
}

unint64_t sub_272B6D8D8()
{
  result = qword_2808A31E0;
  if (!qword_2808A31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31E0);
  }

  return result;
}

unint64_t sub_272B6D930()
{
  result = qword_2808A31E8;
  if (!qword_2808A31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31E8);
  }

  return result;
}

unint64_t sub_272B6D988()
{
  result = qword_2808A31F0;
  if (!qword_2808A31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31F0);
  }

  return result;
}

unint64_t sub_272B6D9E0()
{
  result = qword_2808A31F8;
  if (!qword_2808A31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31F8);
  }

  return result;
}

unint64_t sub_272B6DA38()
{
  result = qword_2808A3200;
  if (!qword_2808A3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3200);
  }

  return result;
}

unint64_t sub_272B6DA90()
{
  result = qword_2808A3208;
  if (!qword_2808A3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_ConditionCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDF)
  {
    if (a2 + 33 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 33) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 34;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v5 = v6 - 34;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_ConditionCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDE)
  {
    v6 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
          *result = a2 + 33;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_Placement(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_ComparisonCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
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

_BYTE *storeEnumTagSinglePayload for WK2_ComparisonCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_Deviation(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WK2_Deviation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WK2_ComparisonBaselineType(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for WK2_ComparisonBaselineType(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WK2_PrecipitationType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WK2_PrecipitationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_MoonPhase(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WK2_MoonPhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_272B6E400(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_215(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_215(v8);
}

_BYTE *sub_272B6E484(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_214(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_212(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_213(result, v6);
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
          result = OUTLINED_FUNCTION_182(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_272B6E54C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_215(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_215(v8);
}

uint64_t sub_272B6E5D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_215(-1);
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
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 13);
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

      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 13);
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

  return OUTLINED_FUNCTION_215(v8);
}

_BYTE *sub_272B6E654(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_214(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_212(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_213(result, v6);
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
          result = OUTLINED_FUNCTION_182(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_272B6E71C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_215(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_215(v8);
}

_BYTE *sub_272B6E7A0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_214(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_212(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_213(result, v6);
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
          result = OUTLINED_FUNCTION_182(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_TimeOfDay(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_TimeOfDay(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_StatementParameterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_StatementParameterType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
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

void static WK2_PeriodicForecasts.add(metadata:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_PeriodicForecasts.addVectorOf(forecasts:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_PeriodicForecast.addVectorOf(periods:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_News.add(metadata:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_News.addVectorOf(placements:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_WeatherChanges.add(forecastStart:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_HistoricalComparisons.add(metadata:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_HistoricalComparisons.addVectorOf(comparisons:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_LocationInfo.add(preciseName:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_LocationInfo.add(secondaryName:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(news:_:)();
}

void static WK2_HourlyMarineConditions.add(metadata:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_HourlyMarineConditions.addVectorOf(hours:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_HourlyMarineConditions.add(closestWaterLocation:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastDaily:_:)();
}

void static WK2_TideEvents.add(metadata:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_TideEvents.addVectorOf(events:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_TideEvents.addVectorOf(hours:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastDaily:_:)();
}

void static WK2_TideEvents.add(tideStationName:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastHourly:_:)();
}

void static WK2_TideEvents.add(closestWaterLocation:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastNextHour:_:)();
}

void static WK2_PrecipitationRange.add(precipitationType:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Pollutant.add(pollutantType:_:)();
}

void static WK2_PrecipitationRange.add(expected:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_HourTide.add(height:_:)();
}

void static WK2_DayWeatherConditions.add(forecastEnd:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_DayWeatherConditions.add(humidityMin:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(cloudCoverMidAltPct:_:)();
}

void static WK2_AirQuality.add(previousDayComparison:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_HourWeatherConditions.add(conditionCode:_:)();
}

void static WK2_HourWeatherConditions.add(precipitationIntensity:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(precipitationAmount1h:_:)();
}

void static WK2_HourWeatherConditions.add(pressure:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(precipitationAmountNext1h:_:)();
}

void static WK2_HourWeatherConditions.add(snowfallIntensity:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(precipitationAmountNext24h:_:)();
}

void static WK2_ForecastPeriodSummary.add(startTime:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_ForecastPeriodSummary.add(endTime:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_ForecastCondition.add(endTime:_:)();
}

void static WK2_ForecastPeriodSummary.add(condition:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(conditionCode:_:)();
}

void static WK2_ForecastPeriodSummary.add(precipitationChance:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
}

void static WK2_ForecastPeriodSummary.add(precipitationIntensity:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_PrecipitationRange.add(expectedSnow:_:)();
}

void static WK2_PrecipitationRange.add(minimumSnow:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_ForecastMinute.add(precipitationIntensity:_:)();
}

void static WK2_PrecipitationRange.add(maximumSnow:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_ForecastMinute.add(perceivedPrecipitationIntensity:_:)();
}

void static WK2_PeriodicForecast.add(periodLength:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_NewsPlacement.add(priority:_:)();
}

void static WK2_NewsPlacement.addVectorOf(articles:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_NewsPlacement.add(placement:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(conditionCode:_:)();
}

void static WK2_TrendDeviation.add(forecastStart:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_TrendDeviation.add(forecastEnd:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_TrendDeviation.add(maxTemperatureChange:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(conditionCode:_:)();
}

void static WK2_TrendDeviation.add(nightPrecipitationChange:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_HourWeatherConditions.add(conditionCode:_:)();
}

void static WK2_HistoricalComparison.add(condition:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Pollutant.add(pollutantType:_:)();
}

void static WK2_HistoricalComparison.add(currentValue:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_HourTide.add(height:_:)();
}

void static WK2_HistoricalComparison.add(baselineValue:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_ForecastMinute.add(precipitationIntensity:_:)();
}

void static WK2_HistoricalComparison.add(deviation:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_TrendDeviation.add(minTemperatureChange:_:)();
}

void static WK2_HourMarineConditions.add(date:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_HourMarineConditions.add(primarySwell:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_HourMarineConditions.add(waterTemperature:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_ForecastMinute.add(precipitationIntensity:_:)();
}

void static WK2_TideEvent.add(date:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_TideEvent.add(height:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_HourTide.add(height:_:)();
}

void static WK2_TideEvent.add(eventType:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Pollutant.add(units:_:)();
}

void static WK2_HourTide.add(date:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_Location.add(longitude:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_HourTide.add(height:_:)();
}

void static WK2_DayPartForecast.add(forecastStart:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_DayPartForecast.add(forecastEnd:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_DayPartForecast.add(humidity:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_HourWeatherConditions.add(humidity:_:)();
}

void static WK2_DayPartForecast.add(precipitationAmount:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(precipitationAmount1h:_:)();
}

void static WK2_DayPartForecast.add(temperatureMax:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(precipitationAmountNext24h:_:)();
}

void static WK2_DayPartForecast.add(temperatureMin:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_HourWeatherConditions.add(snowfallAmount:_:)();
}

void static WK2_DayPartForecast.add(precipitationIntensityMax:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(pressure:_:)();
}

void static WK2_DayPartForecast.add(perceivedPrecipitationIntensityMax:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_DayWeatherConditions.add(temperatureMax:_:)();
}

void static WK2_DayPartForecast.add(temperatureApparentMin:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(snowfallAmount24h:_:)();
}

void static WK2_DayPartForecast.add(temperatureApparentMax:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(snowfallAmountNext1h:_:)();
}

void static WK2_PrecipitationConditionParameter.add(date:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_Article.add(id:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_Article.addVectorOf(supportedStorefronts:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_Article.addVectorOf(alertIds:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastDaily:_:)();
}

void static WK2_Article.addVectorOf(phenomena:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastHourly:_:)();
}

void static WK2_Article.add(headlineOverride:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(forecastNextHour:_:)();
}

void static WK2_Article.add(locale:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(news:_:)();
}

void static WK2_Article.add(cta:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(weatherAlerts:_:)();
}

void static WK2_Swell.add(height:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Location.add(latitude:_:)();
}

void static WK2_Swell.add(direction:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_HourTide.add(height:_:)();
}

void static WK2_Swell.add(timeIntervalSeconds:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(cloudCover:_:)();
}

void static WK2_CallToAction.add(label:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_CallToAction.add(url:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_Weather.add(currentWeather:_:)();
}

__n128 OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __n128 a10, uint64_t a11)
{
  *(a2 + 16) = v11;
  result = a10;
  *(a2 + 24) = a9;
  *(a2 + 40) = a10;
  *(a2 + 56) = a11;
  *(a2 + 64) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __n128 a10, uint64_t a11)
{
  result = a10;
  *(a2 + 24) = a9;
  *(a2 + 40) = a10;
  *(a2 + 56) = a11;
  *(a2 + 64) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __n128 a11, uint64_t a12)
{
  result = a11;
  *(a2 + 24) = a10;
  *(a2 + 40) = a11;
  *(a2 + 56) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, a5);
}

void OUTLINED_FUNCTION_37(uint64_t a1@<X1>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  *(a1 + 24) = a4;
  *(a1 + 40) = a3;
  *(a1 + 56) = a2;
  *(a1 + 64) = 3;
}

uint64_t OUTLINED_FUNCTION_68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  *(v2 + 56) = v3;
  return result;
}

void OUTLINED_FUNCTION_74(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
}

void OUTLINED_FUNCTION_88()
{

  sub_272B52E68(v0);
}

void OUTLINED_FUNCTION_90()
{

  Verifier.rangeInBuffer(position:size:)(v0, 4);
}

void OUTLINED_FUNCTION_94()
{

  sub_272B52E68(v0);
}

void OUTLINED_FUNCTION_126(uint64_t a1, void *a2)
{
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;
}

void OUTLINED_FUNCTION_162(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{

  Verifier.rangeInBuffer(position:size:)(v23, 2);
}

double OUTLINED_FUNCTION_167(uint64_t a1, uint64_t a2)
{
  *a2 = 6;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  return result;
}

void OUTLINED_FUNCTION_174(Swift::Int a1)
{

  Verifier.rangeInBuffer(position:size:)(a1, 1);
}

unint64_t OUTLINED_FUNCTION_185()
{

  return sub_272B5C86C();
}

uint64_t OUTLINED_FUNCTION_195()
{

  return sub_272B87730();
}

void OUTLINED_FUNCTION_209()
{

  JUMPOUT(0x2743D4FD0);
}

void OUTLINED_FUNCTION_224(uint64_t a1, void *a2)
{
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;
}

void *OUTLINED_FUNCTION_236(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char __src)
{

  return memcpy(&__dst, &__src, 0x65uLL);
}

void OUTLINED_FUNCTION_279()
{

  static WK2_ForecastCondition.add(endTime:_:)();
}

uint64_t OUTLINED_FUNCTION_280()
{
  result = *v0;
  v2 = *(*(*v0 + 24) + v0[6]);
  return result;
}

uint64_t static Verifiable.verifyRange<A>(_:at:of:)(uint64_t a1, Swift::Int position)
{
  v2 = position;
  if (*a1 == 1 && ((*(*(a1 + 40) + 24) + position) & 3) != 0)
  {
    v12.n128_u64[0] = MEMORY[0x277D84CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    v4 = sub_272B87730();
    v6 = v5;
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v7 = v2;
    v7[1] = v4;
    v7[2] = v6;
    OUTLINED_FUNCTION_21(v7, v14, v13, v12);
    swift_willThrow();
  }

  else
  {
    Verifier.rangeInBuffer(position:size:)(position, 4);
    if (!v8)
    {
      v9 = *(*(*(a1 + 40) + 24) + v2);
      v10 = v2 + 4;
      if (v2 + 4 < 0)
      {
        v10 = -4 - v2;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v2 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v2 = v10;
      }

      Verifier.isAligned<A>(position:type:)(v2);
      Verifier.rangeInBuffer(position:size:)(v2, v9);
    }
  }

  return v2;
}

uint64_t static Vector.verify<A>(_:at:of:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ForwardOffset();
  if (!swift_dynamicCastMetatype())
  {
    return static Verifiable.verifyRange<A>(_:at:of:)(a1, a2);
  }

  type metadata accessor for Vector();
  result = static Verifiable.verifyRange<A>(_:at:of:)(a1, a2);
  if (!v7)
  {
    v14 = result;
    v15 = result + v13;
    if (result < result + v13)
    {
      v16 = *(a7 + 8);
      do
      {
        result = v16(a1, v14, a4, a4, a7, a4, a7);
        if (__OFADD__(v14, 4))
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 += 4;
        }
      }

      while (v14 < v15);
    }
  }

  return result;
}

void static UnionVector.verify(_:keyPosition:fieldPosition:unionKeyName:fieldName:completion:)(unsigned __int8 *a1, Swift::Int a2, Swift::Int a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void (*a8)(unsigned __int8 *, char *, Swift::Int), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v74 = a5;
  v75 = a7;
  v72 = a4;
  v73 = a6;
  v15 = *(a11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v76 = &v63 - v17;
  v18 = sub_272B878A0();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = *(*(a10 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v27 = *a1;
  if (v27 == 1 && ((*(*(a1 + 5) + 24) + a2) & 3) != 0)
  {
    v77.n128_u64[0] = MEMORY[0x277D84CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    v28 = sub_272B87730();
    v30 = v29;
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v31 = a2;
    goto LABEL_10;
  }

  v68 = v26;
  v69 = v25;
  v70 = a11;
  v71 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v24;
  v67 = v22;
  Verifier.rangeInBuffer(position:size:)(a2, 4);
  if (v32)
  {
    return;
  }

  v65 = a8;
  v33 = *(a1 + 5);
  v34 = *(v33 + 24);
  if (((v34 + a3) & 3) != 0)
  {
    v35 = v27;
  }

  else
  {
    v35 = 0;
  }

  if (v35 == 1)
  {
    v77.n128_u64[0] = MEMORY[0x277D84CC0];
    v36 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    v28 = sub_272B87730();
    v30 = v37;
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v31 = v36;
LABEL_10:
    v31[1] = v28;
    v31[2] = v30;
    OUTLINED_FUNCTION_21(v31, v79, v78, v77);
LABEL_11:
    swift_willThrow();
    return;
  }

  v38 = *(v34 + a2);
  Verifier.rangeInBuffer(position:size:)(a3, 4);
  if (!v39)
  {
    v40 = *(*(v33 + 24) + a3);
    v41 = static Verifiable.verifyRange<A>(_:at:of:)(a1, v38 + a2);
    v43 = v42;
    v44 = sub_272B6EC90(a1, v40 + a3);
    v46 = v45;
    if (v43 == v45)
    {
      v47 = 0;
      v48 = 0;
      v72 = v70 + 16;
      v73 = v41;
      v63 = a9;
      v64 = (v68 + 4);
      ++v68;
      v74 = v43 & ~(v43 >> 63);
      while (v74 != v48)
      {
        if ((v16 * v48) >> 64 != (v16 * v48) >> 63)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v75 = v48;
        v49 = v70;
        if (__OFADD__(v73, v16 * v48))
        {
          goto LABEL_26;
        }

        v50 = v44;
        v51 = v47;
        v52 = *(*(a1 + 5) + 24);
        v53 = v76;
        sub_272B878B0();
        v54 = v69;
        (*(v49 + 16))(v53, a10, v49);
        if (__swift_getEnumTagSinglePayload(v54, 1, a10) == 1)
        {
          (*(v66 + 8))(v54, v67);
          sub_272B5C86C();
          OUTLINED_FUNCTION_177();
          *v62 = 5;
          *(v62 + 8) = 0u;
          *(v62 + 24) = 0u;
          *(v62 + 40) = 0u;
          *(v62 + 56) = 0;
          *(v62 + 64) = 7;
          goto LABEL_11;
        }

        (*v64)(v71, v54, a10);
        if (v75 == 0x2000000000000000)
        {
          goto LABEL_27;
        }

        v55 = v50 + v51;
        if (__OFADD__(v50, v51))
        {
          goto LABEL_28;
        }

        v56 = v51;
        v57 = v71;
        v65(a1, v71, v55);
        (*v68)(v57, a10);
        v48 = v75 + 1;
        v47 = v56 + 4;
        v44 = v50;
      }
    }

    else
    {
      sub_272B5C86C();
      OUTLINED_FUNCTION_177();
      v58->n128_u64[0] = v43;
      v58->n128_u64[1] = v46;
      v59 = v73;
      v61 = v74;
      v60 = v75;
      v58[1].n128_u64[0] = v72;
      v58[1].n128_u64[1] = v61;
      v58[2].n128_u64[0] = v59;
      v58[2].n128_u64[1] = v60;
      v58[3] = v77;
      v58[4].n128_u8[0] = 6;
      swift_willThrow();
    }
  }
}

_BYTE *sub_272B719C8(_BYTE *result, int a2, int a3)
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

uint64_t WK2_HourlyWeatherStatistics.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v4 + v7) < 5u)
  {
    v9 = 0;
LABEL_6:
    v6 = __OFADD__(v9, v3);
    v10 = v9 + v3;
    if (!v6)
    {
      if (!__OFADD__(v10, *(v4 + v10)))
      {
        return OUTLINED_FUNCTION_56(result, a1, *(v1 + 8));
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v8 = v7 + 4;
  if (!v6)
  {
    v9 = *(v4 + v8);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.baselineStart.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 7u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 6);
    v6 = v5 + 6;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.hasHours.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 9u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 8);
    v6 = v5 + 8;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.hoursCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 9u)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v5, 8);
  v6 = v5 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.hours(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 9u)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 8);
  v12 = v10 + 8;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t static WK2_HourlyWeatherStatistics.startHourlyWeatherStatistics(_:)(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 24)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 24;
    *(v2 + 48) = 0;
    *(v2 + 56) = 24;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_HourlyWeatherStatistics.add(metadata:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58(v3, v4);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v9))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v5 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v12)
    {
LABEL_27:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v14);
  if (!v12 & v15)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 4)
    {
      LOWORD(v20) = 4;
    }

    *(v19 + 64) = v20;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_HourlyWeatherStatistics.add(baselineStart:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  v22 = *MEMORY[0x277D85DE8];
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_20:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = v3[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = -*(v3 + 4);
  OUTLINED_FUNCTION_22();
  if (v11 != v12)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, v3[3]);
  }

  v3[2] = v1;
  v13 = v1 + 4;
  v14 = *(v0 + 32);
  if (v14 < (v1 + 4))
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v0 + 32);
  }

  *(*(v0 + 24) + v14 - v1 - 4) = v5;
  v3[2] = v13;
  if (v1 > 0xFFFFFFFB)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    v17 = *(v15 + 32);
    if (v17)
    {
      v18 = v17 + *(v15 + 80);
      *v18 = v13;
      *(v18 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v20 <= 6)
    {
      LOWORD(v20) = 6;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_HourlyWeatherStatistics.addVectorOf(hours:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58(v3, v4);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v9))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v5 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v12)
    {
LABEL_27:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v14);
  if (!v12 & v15)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 8)
    {
      LOWORD(v20) = 8;
    }

    *(v19 + 64) = v20;
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t static WK2_HourlyWeatherStatistics.endHourlyWeatherStatistics(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

void static WK2_HourlyWeatherStatistics.createHourlyWeatherStatistics(_:metadataOffset:baselineStart:hoursVectorOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = *v2;
  v5 = *v4;
  v7 = static WK2_HourlyWeatherStatistics.startHourlyWeatherStatistics(_:)(v6);
  static WK2_HourlyWeatherStatistics.add(metadata:_:)();
  static WK2_HourlyWeatherStatistics.add(baselineStart:_:)();
  static WK2_HourlyWeatherStatistics.addVectorOf(hours:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v7);
  OUTLINED_FUNCTION_218();
}

void static WK2_HourlyWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D67C(4, 0x617461646174656DLL, 0xE800000000000000, 1);
    v3 = 0;
    if (__src[2] >= 7)
    {
      v4 = __src[1] + 6;
      v5 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *v20 = MEMORY[0x277D84C58];
        v9 = &qword_2808A3160;
        v10 = &unk_272B87CC0;
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_76();
      v3 = 0;
      v6 = *(__src[8] + 24);
      v7 = *(v6 + v4);
      if (*(v6 + v4))
      {
        if (((v6 + LOBYTE(__src[0]) + v7) & 3) != 0)
        {
          v8 = v5;
        }

        else
        {
          v8 = 0;
        }

        if (v8 == 1)
        {
          *v20 = MEMORY[0x277D84CC0];
          v9 = &qword_2808A3170;
          v10 = &unk_272B89910;
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          sub_272B87730();
          sub_272B5C86C();
          v11 = swift_allocError();
          OUTLINED_FUNCTION_7(v11, v12, v13, v14, v15, v16, v17, v18, *v20, *&v20[16], *&v20[32]);
LABEL_3:
          memcpy(v20, __src, sizeof(v20));
          sub_272B522C4(v20);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v7, 4);
        v3 = v19;
        if (v19)
        {
          goto LABEL_3;
        }
      }
    }

    sub_272B5DD98(8, 0x7372756F68, 0xE500000000000000, 1);
    if (!v3)
    {
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
    }

    goto LABEL_3;
  }
}

uint64_t WK2_HourOfYearWeatherStatistics.hourOfYear.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_HourOfYearWeatherStatistics.temperature.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v4 + v7) < 7u)
  {
    v9 = 0;
LABEL_6:
    v6 = __OFADD__(v9, v3);
    v10 = v9 + v3;
    if (!v6)
    {
      if (!__OFADD__(v10, *(v4 + v10)))
      {
        return OUTLINED_FUNCTION_56(result, a1, *(v1 + 8));
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 6);
  v8 = v7 + 6;
  if (!v6)
  {
    v9 = *(v4 + v8);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t static WK2_HourOfYearWeatherStatistics.startHourOfYearWeatherStatistics(_:)(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 16)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 16;
    *(v2 + 48) = 0;
    *(v2 + 56) = 16;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_HourOfYearWeatherStatistics.add(hourOfYear:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  v21 = *MEMORY[0x277D85DE8];
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_20:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 1)
  {
    v3[8] = 2;
    v3[3] = 2;
  }

  v7 = v3[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_22();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, v3[3]);
  }

  v3[2] = v1;
  v12 = v1 + 2;
  v13 = *(v0 + 32);
  if (v13 < (v1 + 2))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(2, v1, v3[3]);
    v13 = *(v0 + 32);
  }

  *(*(v0 + 24) + v13 - v1 - 2) = v5;
  v3[2] = v12;
  if (v1 > 0xFFFFFFFD)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    v16 = *(v14 + 32);
    if (v16)
    {
      v17 = v16 + *(v14 + 80);
      *v17 = v12;
      *(v17 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v19 <= 4)
    {
      LOWORD(v19) = 4;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_HourOfYearWeatherStatistics.add(temperature:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58(v3, v4);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v9))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v5 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v12)
    {
LABEL_27:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v14 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v14);
  if (!v12 & v15)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 6)
    {
      LOWORD(v20) = 6;
    }

    *(v19 + 64) = v20;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_HourOfYearWeatherStatistics.createHourOfYearWeatherStatistics(_:hourOfYear:temperatureOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = *v2;
  v5 = static WK2_HourOfYearWeatherStatistics.startHourOfYearWeatherStatistics(_:)(v4);
  static WK2_HourOfYearWeatherStatistics.add(hourOfYear:_:)();
  static WK2_HourOfYearWeatherStatistics.add(temperature:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v5);
  OUTLINED_FUNCTION_218();
}

void static WK2_HourOfYearWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    if (__src[2] >= 5)
    {
      v3 = __src[1] + 4;
      v4 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v3) & 1) != 0)
      {
        *v16 = MEMORY[0x277D84C58];
        v6 = &qword_2808A3160;
        v7 = &unk_272B87CC0;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_76();
      v5 = *(__src[8] + 24);
      if (*(v5 + v3))
      {
        if ((v4 & (v5 + LODWORD(__src[0]) + *(v5 + v3))) == 1)
        {
          *v16 = MEMORY[0x277D84958];
          v6 = qword_2808A3220;
          v7 = &qword_272B89920;
LABEL_9:
          __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
          sub_272B87730();
          sub_272B5C86C();
          v8 = swift_allocError();
          OUTLINED_FUNCTION_7(v8, v9, v10, v11, v12, v13, v14, v15, *v16, *&v16[16], *&v16[32]);
LABEL_13:
          memcpy(v16, __src, sizeof(v16));
          sub_272B522C4(v16);
          return;
        }

        OUTLINED_FUNCTION_76();
      }
    }

    sub_272B5DD40(6, 0x74617265706D6574, 0xEB00000000657275, 1);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
      return;
    }

    --__src[7];
    goto LABEL_13;
  }
}

Swift::Int static String.verify<A>(_:at:of:)(Swift::Int a1, Swift::Int a2)
{
  v6 = sub_272B87720();
  v7 = OUTLINED_FUNCTION_2_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  result = sub_272B6A030(a1, a2);
  if (!v3)
  {
    v19 = result;
    v20 = v18;
    v38 = v9;
    v21 = result + v18;
    v22 = *(a1 + 8);
    if (result + v18 >= v22)
    {
      if (v21 >= 0)
      {
        v32 = result + v18;
      }

      else
      {
        v32 = -v21;
      }

      sub_272B5C86C();
      swift_allocError();
      *v28 = v32;
      *(v28 + 8) = v22;
      v34 = v36;
      v33 = v37;
      *(v28 + 16) = v35;
      *(v28 + 32) = v34;
      *(v28 + 48) = v33;
      v31 = 1;
      goto LABEL_10;
    }

    if ((*(a1 + 76) & 1) == 0)
    {
      v23 = *(a1 + 40);
      if (*(*(v23 + 24) + v21))
      {
        sub_272B87710();
        *&v35 = sub_272B51468((*(v23 + 24) + v19), v20);
        v24 = v38;
        (*(v38 + 16))(v14, v16, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
        sub_272B549E8();
        v25 = sub_272B87700();
        v27 = v26;
        (*(v24 + 8))(v16, v2);

        sub_272B5C86C();
        swift_allocError();
        *v28 = a2;
        *(v28 + 8) = v25;
        *(v28 + 16) = v27;
        v29 = v37;
        v30 = v36;
        *(v28 + 24) = v35;
        *(v28 + 40) = v30;
        *(v28 + 56) = v29;
        v31 = 4;
LABEL_10:
        *(v28 + 64) = v31;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t String.init(_:o:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_272B87720();
  v8 = OUTLINED_FUNCTION_2_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - v16;
  v18 = *(*(a1 + 24) + a4);
  sub_272B87710();
  v23[1] = sub_272B51468((*(a1 + 24) + a4 + 4), v18);
  (*(v10 + 16))(v15, v17, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
  sub_272B549E8();
  v19 = sub_272B87700();
  v21 = v20;
  (*(v10 + 8))(v17, v4);

  if (v21)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_272B72DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  result = String.init(_:o:)(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

void static String.pack(_:obj:)(void *a1@<X0>, unint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2[1];
  if (v3)
  {
    v4[0] = *a2;
    v4[1] = v3;
    static String.pack(_:obj:)(a1, v4, a3);
  }

  else
  {
    *a3 = 0;
  }
}

void static String.pack(_:obj:)(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v37[3] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x1000000000000000) != 0)
  {
LABEL_62:
    v8 = sub_272B87760();
  }

  else if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (a1[8] <= 3)
  {
    a1[8] = 4;
    a1[3] = 4;
  }

  v9 = a1[2];
  if (v9 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (((v9 | (v8 + 1)) & 0x8000000000000000) != 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if ((v8 + 1) > 0xFFFFFFFFLL)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v36 = a3;
  v10 = (~(v9 + v8) & 3) + v9;
  a3 = a1[1];
  if (*(a3 + 32) >= v10)
  {
  }

  else
  {
    v11 = a1[3];

    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(~(v9 + v8) & 3, v9, v11);
  }

  a1[2] = v10;
  v12 = v10 + 1;
  if (*(a3 + 32) <= v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v10, a1[3]);
  }

  a1[2] = v12;
  if (*(a3 + 32) < (v12 + v8))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v10 + 1, a1[3]);
  }

  if (sub_272B46F44(v6, v5, a1 + 1, v8) != 2)
  {
    goto LABEL_51;
  }

  v13 = (v5 & 0x2000000000000000) != 0 ? v7 : v6 & 0xFFFFFFFFFFFFLL;
  if (!v13)
  {
    goto LABEL_51;
  }

  v14 = (v6 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LODWORD(v14) = 1;
  }

  v15 = 11;
  if (v14)
  {
    v15 = 7;
  }

  v16 = v15 | (v13 << 16);
  v7 = 4 << v14;

  while (1)
  {
    if ((v16 & 0xC) != v7)
    {
      if ((v5 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    v17 = OUTLINED_FUNCTION_1();
    v20 = sub_272B73308(v17, v18, v19);
    if (v20 < 0x4000)
    {
      break;
    }

    v16 = v20;
    if ((v5 & 0x1000000000000000) == 0)
    {
LABEL_29:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_34;
    }

LABEL_32:
    if (v13 < v16 >> 16)
    {
      __break(1u);
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_1();
    v16 = sub_272B87770();
LABEL_34:
    v21 = v16;
    if ((v16 & 0xC) == v7)
    {
      v27 = OUTLINED_FUNCTION_1();
      v21 = sub_272B73308(v27, v28, v29);
    }

    v22 = v21 >> 16;
    if (v21 >> 16 >= v13)
    {
      goto LABEL_49;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v24 = sub_272B87790();
    }

    else if ((v5 & 0x2000000000000000) != 0)
    {
      v37[0] = v6;
      v37[1] = v5 & 0xFFFFFFFFFFFFFFLL;
      v24 = *(v37 + v22);
    }

    else
    {
      v23 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v6 & 0x1000000000000000) == 0)
      {
        v23 = sub_272B878E0();
      }

      v24 = *(v23 + v22);
    }

    v25 = a1[2];
    v26 = *(a3 + 32);
    if (v26 < v25 + 1)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, a1[2], a1[3]);
      v26 = *(a3 + 32);
    }

    *(*(a3 + 24) + v26 + ~v25) = v24;
    a1[2] = v25 + 1;
    if (!(v16 >> 14))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:

LABEL_51:

  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_66;
  }

  if (HIDWORD(v8))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v30 = a1[2];
  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (HIDWORD(v30))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v31 = -*(a1 + 16) & 3;
  v32 = v31 + v30;
  if (*(a3 + 32) < (v31 + v30))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v31, v30, a1[3]);
  }

  a1[2] = v32;
  v33 = v32 + 4;
  v34 = *(a3 + 32);
  if (v34 < (v32 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v32, a1[3]);
    v34 = *(a3 + 32);
  }

  *(*(a3 + 24) + v34 - v32 - 4) = v8;
  a1[2] = v33;
  if (v32 > 0xFFFFFFFB)
  {
LABEL_70:
    __break(1u);
  }

  *v36 = v33;
  v35 = *MEMORY[0x277D85DE8];
}

Swift::String __swiftcall String.unpack()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_272B73260@<X0>(Swift::String *a1@<X8>)
{
  v3 = String.unpack()();
  result = v3._countAndFlagsBits;
  *a1 = v3;
  return result;
}

uint64_t sub_272B73308(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_272B877A0();
    OUTLINED_FUNCTION_3_0(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x2743D4AD0](15, a1 >> 16);
    OUTLINED_FUNCTION_3_0(v3);
    return v4 | 8;
  }
}

uint64_t static FlatbuffersErrors.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_272B5C86C();
  v3 = sub_272B879A0();
  v5 = v4;
  memcpy(v10, a2, sizeof(v10));
  if (v3 == sub_272B879A0() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_272B87980();
  }

  return v8 & 1;
}

uint64_t get_enum_tag_for_layout_string_11WeatherData17FlatbuffersErrorsO(uint64_t a1)
{
  if ((*(a1 + 64) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 64) & 7;
  }
}

uint64_t sub_272B73474(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 65))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 7)
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

uint64_t sub_272B734B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_272B7350C(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_272B735FC(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return a2 != 0;
  }

  result = (*(a5 + 8))(a3, a5);
  v9 = *(*(a4 - 8) + 64);
  if ((v9 & 0x8000000000000000) == 0)
  {
    memcpy((*(result + 24) + a2), a1, v9);

    return a2 != 0;
  }

  __break(1u);
  return result;
}

void Mutable<>.mutate<A>(_:index:)(uint64_t a1, int a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_0_1();
    v6 = __OFADD__(v4, v5);
    v7 = v4 + v5;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      sub_272B735FC(v2, v7, &type metadata for Table, v3, &protocol witness table for Table);
    }
  }
}

uint64_t Mutable<>.directMutate<A>(_:index:)()
{
  return sub_272B737B0() & 1;
}

{
  return sub_272B737B0() & 1;
}

void Mutable<>.mutate<A>(_:index:)()
{
  OUTLINED_FUNCTION_0_1();
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_272B735FC(v0, v5, &type metadata for Struct, v1, &protocol witness table for Struct);
  }
}

uint64_t static FlatBufferDecodable<>.decode(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __dst[0] = a1;
  __dst[1] = a2;
  sub_272B5226C(a1, a2);
  v12 = MEMORY[0x2743D49D0](a1, a2);
  type metadata accessor for ByteBuffer.Storage();
  swift_allocObject();
  v13 = ByteBuffer.Storage.init(count:alignment:)(v12);
  __src[0] = v13;
  v14 = *(v13 + 32);
  sub_272B5226C(a1, a2);
  sub_272B52318(__dst, __src, a1, a2);
  sub_272B52DF8(__dst[0], __dst[1]);
  v46[0] = v13;
  v46[1] = v14;
  v46[2] = 1;
  __src[0] = 0xF424080000000;
  LODWORD(__src[1]) = 64;
  BYTE4(__src[1]) = 0;
  getCheckedRoot<A>(byteBuffer:fileId:options:)(v46, 0, 0, __src, a3, a5, a6);
  if (!v6)
  {
  }

  v47 = v6;
  MEMORY[0x2743D4EE0](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3328, &qword_272B89C30);
  if (swift_dynamicCast())
  {
    MEMORY[0x2743D4ED0](v6);
    memcpy(__dst, __src, 0x41uLL);
    v15 = __dst[2];
    if (LOBYTE(__dst[8]) == 3)
    {
      v31 = __dst[1];

      OUTLINED_FUNCTION_1_1();
      v32 = sub_272B73B74();
      v34 = v33;
      sub_272B73BA4();
      OUTLINED_FUNCTION_177();
      *v35 = v32;
      *(v35 + 8) = v34;
      *(v35 + 16) = v31;
      *(v35 + 24) = v15;
      *(v35 + 64) = 0x80;
    }

    else
    {
      v16 = __dst[3];
      v17 = __dst[7];
      if (LOBYTE(__dst[8]) != 5)
      {
        v43 = __dst[2];
        if (LOBYTE(__dst[8]) == 7)
        {
          v19 = __dst[4];
          v18 = __dst[5];
          v20 = __dst[0];
          if (!(__dst[5] | __dst[4] | __dst[0] | __dst[1] | __dst[2] | __dst[3] | __dst[6] | __dst[7]))
          {
            OUTLINED_FUNCTION_1_1();
            v38 = sub_272B73B74();
            v40 = v39;
            sub_272B73BA4();
            OUTLINED_FUNCTION_177();
            *v41 = v38;
            *(v41 + 8) = v40;
            *(v41 + 64) = 64;
            goto LABEL_14;
          }

          v21 = __dst[1];
          v22 = __dst[6];
          v42 = __dst[7];
        }

        else
        {
          v21 = __dst[1];
          v22 = __dst[6];
          v42 = __dst[7];
          v20 = __dst[0];
          v19 = __dst[4];
          v18 = __dst[5];
        }

        v36 = __dst[8] & 7 | 0xC0;
        sub_272B73BA4();
        OUTLINED_FUNCTION_177();
        *v37 = v20;
        *(v37 + 8) = v21;
        *(v37 + 16) = v43;
        *(v37 + 24) = v16;
        *(v37 + 32) = v19;
        *(v37 + 40) = v18;
        *(v37 + 48) = v22;
        *(v37 + 56) = v42;
        *(v37 + 64) = v36;
LABEL_14:
        swift_willThrow();
        goto LABEL_15;
      }

      v24 = __dst[6];

      OUTLINED_FUNCTION_1_1();
      v25 = sub_272B73B74();
      v27 = v26;
      sub_272B73BA4();
      OUTLINED_FUNCTION_177();
      *v28 = v25;
      *(v28 + 8) = v27;
      *&v29 = v15;
      *(&v29 + 1) = v16;
      *&v30 = v24;
      *(&v30 + 1) = v17;
      *(v28 + 16) = v29;
      *(v28 + 32) = v30;
      *(v28 + 64) = 0;
    }

    swift_willThrow();
    sub_272B73BF8(__dst);
  }

LABEL_15:

  return MEMORY[0x2743D4ED0](v47);
}

unint64_t sub_272B73BA4()
{
  result = qword_2808A3330;
  if (!qword_2808A3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3330);
  }

  return result;
}

uint64_t sub_272B73C58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1D && *(a1 + 65))
    {
      v2 = *a1 + 28;
    }

    else
    {
      v2 = ((*(a1 + 64) >> 1) & 0x1C | (*(a1 + 64) >> 6)) ^ 0x1F;
      if (v2 >= 0x1C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_272B73CA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 29;
    if (a3 >= 0x1D)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t WK2_Quantiles.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void WK2_PrecipitationAmount.probability.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v0 + v2) < 5u)
  {
    return;
  }

  v3 = __OFADD__(v2, 4);
  v4 = v2 + 4;
  if (v3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      v7 = *(v0 + v6);
      return;
    }

    goto LABEL_10;
  }
}

void static WK2_PrecipitationAmount.add(probability:_:)(char a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_19:
      v15 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  if (a2[8] <= 0)
  {
    a2[8] = 1;
    a2[3] = 1;
  }

  v5 = a2[2];
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = a2[1];
  if (*(v6 + 32) < v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, a2[2], a2[3]);
  }

  a2[2] = v5;
  v7 = v5 + 1;
  v8 = *(v6 + 32);
  if (v8 <= v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v5, a2[3]);
    v8 = *(v6 + 32);
  }

  *(*(v6 + 24) + v8 + ~v5) = a1;
  a2[2] = v7;
  if (v5 == 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v10 & 1) == 0)
  {
    v11 = *(v9 + 32);
    if (v11)
    {
      v12 = v11 + *(v9 + 80);
      *v12 = v7;
      *(v12 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v9, *(v9 + 72), xmmword_272B87CB0);
    if (v14 <= 4)
    {
      LOWORD(v14) = 4;
    }

    *(v13 + 64) = v14;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t static WK2_PrecipitationAmount.createPrecipitationAmount(_:probability:averageAmount:averageSnowfallAmount:)@<X0>(void *a1@<X0>, char a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = static WK2_Quantiles.startQuantiles(_:)();
  static WK2_PrecipitationAmount.add(probability:_:)(a2, a1);
  static WK2_Quantiles.add(p50:_:)();
  static WK2_Quantiles.add(p90:_:)();
  result = FlatBufferBuilder.endTable(at:)(v6);
  *a3 = result;
  return result;
}

void static WK2_PrecipitationAmount.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  if (!v8)
  {
    v18 = v84;
    if (v84 < 5)
    {
      goto LABEL_28;
    }

    v19 = v83 + 4;
    if (v85 != 1 || (OUTLINED_FUNCTION_42(v10, v11, v12, v13, v14, v15, v16, v17, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90), (v20 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      if (*(*(v90 + 24) + v19))
      {
        Verifier.rangeInBuffer(position:size:)(v82 + *(*(v90 + 24) + v19), 1);
        if (v21)
        {
          goto LABEL_32;
        }
      }

      if (v18 <= 6)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_18();
      if (!v30 || (OUTLINED_FUNCTION_42(v22, v23, v24, v25, v26, v27, v28, v29, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90), (v31 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53(v32, v33, v34, v35, v36, v37, v38, v39, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
        if (v40)
        {
          OUTLINED_FUNCTION_23();
          if (v30)
          {
            v41 = 0;
          }

          else
          {
            v41 = v9;
          }

          if (v41 == 1)
          {
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_66();
        }

        if (v18 <= 8)
        {
LABEL_28:
          if (__OFSUB__(v89, 1))
          {
            __break(1u);
            return;
          }

          --v89;
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_19_1();
        if (!v30 || (OUTLINED_FUNCTION_42(v44, v45, v46, v47, v48, v49, v50, v51, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90), (v52 & 1) == 0))
        {
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_53(v53, v54, v55, v56, v57, v58, v59, v60, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
          if (v61)
          {
            OUTLINED_FUNCTION_23();
            if (v30)
            {
              v62 = 0;
            }

            else
            {
              v62 = v18;
            }

            if (v62 == 1)
            {
LABEL_16:
              *&v71 = MEMORY[0x277D83A90];
              v42 = &unk_2808A3178;
              v43 = &unk_272B87CD0;
LABEL_31:
              __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
              sub_272B87730();
              sub_272B5C86C();
              v63 = swift_allocError();
              LODWORD(v10) = OUTLINED_FUNCTION_7(v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
LABEL_32:
              OUTLINED_FUNCTION_93(v10, v11, v12, v13, v14, v15, v16, v17, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
              sub_272B522C4(&v71);
              return;
            }

            OUTLINED_FUNCTION_66();
          }

          goto LABEL_28;
        }
      }
    }

    *&v71 = MEMORY[0x277D84C58];
    v42 = &qword_2808A3160;
    v43 = &unk_272B87CC0;
    goto LABEL_31;
  }
}

unint64_t sub_272B74194(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 24)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 24;
    *(v2 + 48) = 0;
    *(v2 + 56) = 24;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_Quantiles.add(p10:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v3 = *MEMORY[0x277D85DE8];

  sub_272B74758(v1, v2);
}

void static WK2_Quantiles.add(p50:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v3 = *MEMORY[0x277D85DE8];

  sub_272B74864(v1, v2);
}

void static WK2_Quantiles.add(p90:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v3 = *MEMORY[0x277D85DE8];

  sub_272B74320(v1, v2);
}

void sub_272B74320(void *a1, float a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 == 0.0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  if (a1[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = a1[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = OUTLINED_FUNCTION_3(a1, v5);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, a1[3]);
  }

  OUTLINED_FUNCTION_20_0();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_15_2();
    v10 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v10);
  if (!v4 & v11)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v13 & 1) == 0)
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_48(v12);
      *(v14 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    if (v16 <= 8)
    {
      LOWORD(v16) = 8;
    }

    *(v15 + 64) = v16;
    goto LABEL_21;
  }

  __break(1u);
}

uint64_t static WK2_Quantiles.endQuantiles(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_Quantiles.createQuantiles(_:p10:p50:p90:)@<X0>(_DWORD *a1@<X8>)
{
  v2 = static WK2_Quantiles.startQuantiles(_:)();
  static WK2_Quantiles.add(p10:_:)();
  static WK2_Quantiles.add(p50:_:)();
  static WK2_Quantiles.add(p90:_:)();
  result = FlatBufferBuilder.endTable(at:)(v2);
  *a1 = result;
  return result;
}

void static WK2_Quantiles.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  if (!v8)
  {
    v18 = v100;
    if (v100 < 5)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_18();
    if (!v27 || (OUTLINED_FUNCTION_42(v19, v20, v21, v22, v23, v24, v25, v26, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106), (v28 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_53(v29, v30, v31, v32, v33, v34, v35, v36, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
      if (v37)
      {
        OUTLINED_FUNCTION_23();
        if (v27)
        {
          v38 = 0;
        }

        else
        {
          v38 = v9;
        }

        if (v38 == 1)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_66();
      }

      if (v18 <= 6)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_18();
      if (!v27 || (OUTLINED_FUNCTION_42(v41, v42, v43, v44, v45, v46, v47, v48, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106), (v49 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53(v50, v51, v52, v53, v54, v55, v56, v57, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
        if (v58)
        {
          OUTLINED_FUNCTION_23();
          if (v27)
          {
            v59 = 0;
          }

          else
          {
            v59 = v9;
          }

          if (v59 == 1)
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_66();
        }

        if (v18 <= 8)
        {
LABEL_33:
          if (__OFSUB__(v105, 1))
          {
            __break(1u);
            return;
          }

          --v105;
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_19_1();
        if (!v27 || (OUTLINED_FUNCTION_42(v60, v61, v62, v63, v64, v65, v66, v67, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106), (v68 & 1) == 0))
        {
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_53(v69, v70, v71, v72, v73, v74, v75, v76, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
          if (v77)
          {
            OUTLINED_FUNCTION_23();
            if (v27)
            {
              v78 = 0;
            }

            else
            {
              v78 = v18;
            }

            if (v78 != 1)
            {
              OUTLINED_FUNCTION_66();
              goto LABEL_33;
            }

LABEL_11:
            *&v87 = MEMORY[0x277D83A90];
            v39 = &unk_2808A3178;
            v40 = &unk_272B87CD0;
LABEL_36:
            __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
            sub_272B87730();
            sub_272B5C86C();
            v79 = swift_allocError();
            v10 = OUTLINED_FUNCTION_7(v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
LABEL_37:
            OUTLINED_FUNCTION_93(v10, v11, v12, v13, v14, v15, v16, v17, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
            sub_272B522C4(&v87);
            return;
          }

          goto LABEL_33;
        }
      }
    }

    *&v87 = MEMORY[0x277D84C58];
    v39 = &qword_2808A3160;
    v40 = &unk_272B87CC0;
    goto LABEL_36;
  }
}

unint64_t static WK2_Range.startRange(_:)(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 16)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 16;
    *(v2 + 48) = 0;
    *(v2 + 56) = 16;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_272B74758(void *a1, float a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 == 0.0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  if (a1[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = a1[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = OUTLINED_FUNCTION_3(a1, v5);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, a1[3]);
  }

  OUTLINED_FUNCTION_20_0();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_15_2();
    v10 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v10);
  if (!v4 & v11)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v13 & 1) == 0)
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_48(v12);
      *(v14 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    if (v16 <= 4)
    {
      LOWORD(v16) = 4;
    }

    *(v15 + 64) = v16;
    goto LABEL_21;
  }

  __break(1u);
}

void sub_272B74864(void *a1, float a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 == 0.0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  if (a1[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = a1[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = OUTLINED_FUNCTION_3(a1, v5);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, a1[3]);
  }

  OUTLINED_FUNCTION_20_0();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_15_2();
    v10 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v10);
  if (!v4 & v11)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v13 & 1) == 0)
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_48(v12);
      *(v14 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    if (v16 <= 6)
    {
      LOWORD(v16) = 6;
    }

    *(v15 + 64) = v16;
    goto LABEL_21;
  }

  __break(1u);
}

uint64_t static WK2_Range.createRange(_:min:max:)@<X0>(_BYTE *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = static WK2_Range.startRange(_:)(a1);
  static WK2_Quantiles.add(p10:_:)();
  static WK2_Quantiles.add(p50:_:)();
  result = FlatBufferBuilder.endTable(at:)(v3);
  *a2 = result;
  return result;
}

void static WK2_Range.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  if (!v8)
  {
    v18 = v74;
    if (v74 < 5)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_18();
    if (!v27 || (OUTLINED_FUNCTION_42(v19, v20, v21, v22, v23, v24, v25, v26, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80), (v28 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_53(v29, v30, v31, v32, v33, v34, v35, v36, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      if (v37)
      {
        OUTLINED_FUNCTION_23();
        if (v27)
        {
          v38 = 0;
        }

        else
        {
          v38 = v9;
        }

        if (v38 == 1)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_66();
      }

      if (v18 <= 6)
      {
LABEL_22:
        if (__OFSUB__(v79, 1))
        {
          __break(1u);
          return;
        }

        --v79;
        goto LABEL_26;
      }

      v41 = v75;
      if (v75 != 1 || (OUTLINED_FUNCTION_42(v10, v11, v12, v13, v14, v15, v16, v17, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80), (v42 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53(v43, v44, v45, v46, v47, v48, v49, v50, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
        if (v51)
        {
          OUTLINED_FUNCTION_23();
          if (v27)
          {
            v52 = 0;
          }

          else
          {
            v52 = v41;
          }

          if (v52 == 1)
          {
LABEL_11:
            *&v61 = MEMORY[0x277D83A90];
            v39 = &unk_2808A3178;
            v40 = &unk_272B87CD0;
LABEL_25:
            __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
            sub_272B87730();
            sub_272B5C86C();
            v53 = swift_allocError();
            LODWORD(v10) = OUTLINED_FUNCTION_7(v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
LABEL_26:
            OUTLINED_FUNCTION_93(v10, v11, v12, v13, v14, v15, v16, v17, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
            sub_272B522C4(&v61);
            return;
          }

          OUTLINED_FUNCTION_66();
        }

        goto LABEL_22;
      }
    }

    *&v61 = MEMORY[0x277D84C58];
    v39 = &qword_2808A3160;
    v40 = &unk_272B87CC0;
    goto LABEL_25;
  }
}