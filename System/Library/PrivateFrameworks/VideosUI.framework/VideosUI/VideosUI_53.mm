void sub_1E3A65E34(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v29 = a6;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  if (a3)
  {
    v16 = a3;
    v17 = sub_1E4205ED4();
    v18 = [v16 dataForKey_];

    if (v18)
    {
      v28 = v16;
      v19 = sub_1E41FE464();
      v21 = v20;

      sub_1E41FDE24();
      swift_allocObject();
      sub_1E41FDE14();
      a4(0);
      sub_1E3A66B68(a5, v29);
      sub_1E41FDE04();

      sub_1E38DCCB0(v19, v21);

      goto LABEL_8;
    }
  }

  sub_1E324FBDC();
  v22 = OUTLINED_FUNCTION_3_50();
  v23(v22);
  v24 = sub_1E41FFC94();
  v25 = sub_1E42067F4();
  if (os_log_type_enabled(v24, v25))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_71(&dword_1E323F000, v26, v25, "UserDefaults for metrics does not exist or decode data is nil");
    OUTLINED_FUNCTION_65_0();
  }

  (*(v11 + 8))(v14, v6);
LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

uint64_t MetricsDiskManager.sessionForEvent(_:)(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF8))();
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_126();
  OUTLINED_FUNCTION_17_60();

  OUTLINED_FUNCTION_4_104();
  sub_1E3A65E34(v2, v9, v3, v4, v5, type metadata accessor for MetricsRenderSession);
  v7 = v6;

  return v7;
}

void MetricsDiskManager.allSessions()()
{
  v3 = *(v0 + OBJC_IVAR___VUIMetricsDiskManager_sessionDefaults);
  if (v3)
  {
    v4 = [*(v0 + OBJC_IVAR___VUIMetricsDiskManager_sessionDefaults) dictionaryRepresentation];
    v5 = sub_1E4205C64();

    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_15_70();
    v6 = 0;
    while (v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_6_87();
      if (sub_1E4206124())
      {
        OUTLINED_FUNCTION_4_104();
        v8 = OUTLINED_FUNCTION_123_1();
        sub_1E3A65E34(v8, v9, v3, v10, &qword_1ECF315B8, v11);
        v13 = v12;

        if (v13)
        {
          v14 = v13;
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_14_79();
          if (v15)
          {
            OUTLINED_FUNCTION_10_71();
          }

          OUTLINED_FUNCTION_123_1();
          sub_1E4206324();
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v2)
      {

        return;
      }

      v1 = *(v5 + 64 + 8 * v7);
      ++v6;
      if (v1)
      {
        v6 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void MetricsDiskManager.allEvents()()
{
  v3 = *(v0 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults);
  if (v3)
  {
    v4 = [*(v0 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults) dictionaryRepresentation];
    v5 = sub_1E4205C64();

    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_15_70();
    v6 = 0;
    while (v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_6_87();
      if (sub_1E4206124())
      {
        OUTLINED_FUNCTION_3_104();
        v8 = OUTLINED_FUNCTION_123_1();
        sub_1E3A65E34(v8, v9, v3, v10, &qword_1ECF315C0, v11);
        v13 = v12;

        if (v13)
        {
          v14 = v13;
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_14_79();
          if (v15)
          {
            OUTLINED_FUNCTION_10_71();
          }

          OUTLINED_FUNCTION_123_1();
          sub_1E4206324();
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v2)
      {

        return;
      }

      v1 = *(v5 + 64 + 8 * v7);
      ++v6;
      if (v1)
      {
        v6 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

id sub_1E3A6676C(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v6 = a1;
  a3();

  a4(0);
  v7 = sub_1E42062A4();

  return v7;
}

Swift::Void __swiftcall MetricsDiskManager.clearAllData()()
{
  sub_1E3A66830(*(v0 + OBJC_IVAR___VUIMetricsDiskManager_sessionDefaults));
  v1 = *(v0 + OBJC_IVAR___VUIMetricsDiskManager_eventDefaults);

  sub_1E3A66830(v1);
}

void sub_1E3A66830(void *a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = [v8 dictionaryRepresentation];
    v10 = sub_1E4205C64();

    OUTLINED_FUNCTION_4_4();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;

    v16 = 0;
    if (!v13)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v13 &= v13 - 1;

      v18 = sub_1E4205ED4();
      [v8 removeObjectForKey_];
    }

    while (v13);
    while (1)
    {
LABEL_4:
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v17 >= v15)
      {
        break;
      }

      v13 = *(v10 + 64 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E324FBDC();
    v20 = OUTLINED_FUNCTION_3_50();
    v21(v20);
    v22 = sub_1E41FFC94();
    v23 = sub_1E42067F4();
    if (os_log_type_enabled(v22, v23))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_71(&dword_1E323F000, v24, v23, "UserDefaults for metrics does not exist or decode data is nil");
      OUTLINED_FUNCTION_65_0();
    }

    (*(v4 + 8))(v7, v1);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3A66B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3A66B68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3A66BB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons) = 0;
  }

  sub_1E37C3ADC(v1);
  return v2;
}

uint64_t sub_1E3A66BF4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons);
  *(v1 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons) = a1;
  return sub_1E37C3B04(v2);
}

uint64_t (*sub_1E3A66C0C(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3A66BB0();
  return sub_1E3A66C54;
}

uint64_t sub_1E3A66C54(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons);
  *(v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons) = *a1;
  if (a2)
  {

    sub_1E37C3B04(v3);
  }

  else
  {

    return sub_1E37C3B04(v3);
  }
}

void *sub_1E3A66CCC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount + 9) & 1) == 0)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v2;
    v5 = sub_1E3A675E4(v3);
    v6 = v5 == 0;
    if (v5)
    {
      v3 = sub_1E3A66DA4(v5);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *v1 = v3;
  v1[8] = v6;
  v1[9] = 0;
  return v3;
}

uint64_t sub_1E3A66DA4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1E4207384();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1E3A66DC4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E3A66DE4(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3A66CCC();
  *(a1 + 8) = v3 & 1;
  return sub_1E3A66E34;
}

uint64_t sub_1E3A66E34(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

uint64_t sub_1E3A66E5C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID + 5) & 1) == 0)
  {
    v19 = *v1;
    v20 = v1[1] & 1;
    return v19 | (v20 << 32);
  }

  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    goto LABEL_26;
  }

  v4 = v3;
  v5 = v2;
  result = sub_1E3A67784(v4);
  if (!v7)
  {

LABEL_26:
    v21 = 0;
    LOBYTE(v22) = 1;
LABEL_78:
    v19 = v21;
    v20 = v22 & 1;
    *v1 = v21;
    *(v1 + 2) = v22 & 1;
    return v19 | (v20 << 32);
  }

  v8 = v7;
  v9 = HIBYTE(v7) & 0xF;
  v10 = result & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_26;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v13 = sub_1E37C4D2C(result, v8, 10);

    v22 = (v13 >> 32) & 1;
LABEL_76:
    v21 = v13;
    if (v22)
    {
      v21 = 0;
    }

    goto LABEL_78;
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E4207524();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          LODWORD(v13) = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v15 & v14)
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_3_105();
              if (!v15)
              {
                goto LABEL_74;
              }

              LODWORD(v13) = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_132();
              if (v15)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_74;
      }

      goto LABEL_85;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        LODWORD(v13) = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_74;
            }

            v30 = 10 * v13;
            if (v30 != v30)
            {
              goto LABEL_74;
            }

            LODWORD(v13) = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_74;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_74:
      LODWORD(v13) = 0;
      v18 = 1;
      goto LABEL_75;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        LODWORD(v13) = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v15 & v14)
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_3_105();
            if (!v15)
            {
              goto LABEL_74;
            }

            LODWORD(v13) = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_132();
            if (v15)
            {
              goto LABEL_75;
            }
          }
        }

LABEL_65:
        v18 = 0;
LABEL_75:
        LOBYTE(v22) = v18;

        goto LABEL_76;
      }

      goto LABEL_74;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v9)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v15 & v14)
          {
            break;
          }

          OUTLINED_FUNCTION_3_105();
          if (!v15)
          {
            break;
          }

          LODWORD(v13) = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v15)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_4_105();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v15 & v14)
          {
            break;
          }

          OUTLINED_FUNCTION_3_105();
          if (!v15)
          {
            break;
          }

          LODWORD(v13) = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v15)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_74;
    }

    goto LABEL_84;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      OUTLINED_FUNCTION_4_105();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v15 & v14)
        {
          break;
        }

        OUTLINED_FUNCTION_3_105();
        if (!v15)
        {
          break;
        }

        LODWORD(v13) = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v15)
        {
          goto LABEL_75;
        }
      }
    }

    goto LABEL_74;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1E3A6717C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E3A6719C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = sub_1E3A66E5C();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_1E3A671EC;
}

uint64_t sub_1E3A671EC(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

uint64_t sub_1E3A672A0(uint64_t a1, uint64_t (*a2)(void))
{
  *(v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons) = 1;
  v3 = v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___episodeCount;
  *v3 = 0;
  *(v3 + 8) = 256;
  v4 = v2 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___storeID;
  *(v4 + 4) = 256;
  *v4 = 0;
  return a2();
}

uint64_t sub_1E3A672F0()
{
  v0 = sub_1E39406CC();
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandShowMediaEntity____lazy_storage___seasons));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E3A67434(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 480))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E3A674B4()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 512))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

void (*sub_1E3A67564(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 528))();
  return sub_1E37C55D4;
}

uint64_t sub_1E3A675E4(void *a1)
{
  v1 = [a1 episodes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3A677E8();
  sub_1E3A6782C(&qword_1ECF315E0, sub_1E3A677E8);
  v3 = sub_1E4206624();

  return v3;
}

uint64_t sub_1E3A67680(uint64_t a1)
{
  result = sub_1E3A6782C(&qword_1ECF315D8, type metadata accessor for LibSidebandShowMediaEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibSidebandShowMediaEntity()
{
  result = qword_1ECF54300;
  if (!qword_1ECF54300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A67784(void *a1)
{
  v1 = [a1 adamID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E3A677E8()
{
  result = qword_1ECF300D0;
  if (!qword_1ECF300D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF300D0);
  }

  return result;
}

uint64_t sub_1E3A6782C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3A67874()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for LeagueStandingsLegendItemLayout();
    v1 = sub_1E3D94C68();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3A67920(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_1E3A679D8(double a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_1E3A67A90()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v1 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 120) = 0x402C000000000000;
  return v1;
}

uint64_t sub_1E3A67ADC(uint64_t a1)
{
  if (a1 == 260)
  {
    type metadata accessor for LeagueStandingsLegendItemLayout();
    return sub_1E3D94C68();
  }

  else
  {

    return sub_1E3C35CA4(a1);
  }
}

uint64_t sub_1E3A67B30()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1E3A67B9C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___extrasURL;
  swift_beginAccess();
  sub_1E37E93E8(v1 + v13, v12, &qword_1ECF315E8);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) != 1)
  {
    return sub_1E327D738(v12, a1);
  }

  sub_1E325F6F0(v12, &qword_1ECF315E8);
  v14 = [*(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) vui_extrasURL];
  if (v14)
  {
    v15 = v14;
    sub_1E41FE3C4();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = sub_1E41FE414();
  __swift_storeEnumTagSinglePayload(v6, v16, 1, v18);
  sub_1E327D738(v6, a1);
  sub_1E37E93E8(a1, v9, &unk_1ECF363C0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
  swift_beginAccess();
  sub_1E3A67DDC(v9, v1 + v13);
  return swift_endAccess();
}

uint64_t sub_1E3A67DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A67E4C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF315E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1E327D738(a1, &v9 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___extrasURL;
  swift_beginAccess();
  sub_1E3A67DDC(v5, v1 + v7);
  return swift_endAccess();
}

void (*sub_1E3A67F2C(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  a1[2] = v4;
  sub_1E3A67B9C(v4);
  return sub_1E3A67FC8;
}

void sub_1E3A67FC8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1E37E93E8(*(a1 + 16), v2, &unk_1ECF363C0);
    sub_1E3A67E4C(v2);
    sub_1E325F6F0(v3, &unk_1ECF363C0);
  }

  else
  {
    sub_1E3A67E4C(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_1E3A68064()
{
  v1 = OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___isRental;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___isRental);
  if (v2 == 2)
  {
    LOBYTE(v2) = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) isRental];
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t (*sub_1E3A680C8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E3A68064() & 1;
  return sub_1E3A68114;
}

uint64_t sub_1E3A6812C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID + 9) & 1) == 0)
  {
    return *v1;
  }

  result = sub_1E3A28F90();
  *v1 = result;
  v1[8] = v3 & 1;
  v1[9] = 0;
  return result;
}

uint64_t sub_1E3A68190(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E3A681B0(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3A6812C();
  *(a1 + 8) = v3 & 1;
  return sub_1E3A68200;
}

uint64_t sub_1E3A68200(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

uint64_t sub_1E3A68274@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) *a1];
  if (v4)
  {
    v5 = v4;
    sub_1E41FE584();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1E41FE5D4();

  return __swift_storeEnumTagSinglePayload(a2, v6, 1, v7);
}

uint64_t sub_1E3A6833C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___extrasURL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___isRental) = 2;
  v5 = v1 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___rentalID;
  *v5 = 0;
  *(v5 + 8) = 256;

  return sub_1E39D8938(a1);
}

uint64_t sub_1E3A68400()
{
  v0 = sub_1E39D8B04();
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI21LibMPMovieMediaEntity____lazy_storage___extrasURL, &qword_1ECF315E8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3A68628(uint64_t a1)
{
  result = sub_1E3A68650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3A68650()
{
  result = qword_1ECF315F0;
  if (!qword_1ECF315F0)
  {
    type metadata accessor for LibMPMovieMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF315F0);
  }

  return result;
}

uint64_t type metadata accessor for LibMPMovieMediaEntity()
{
  result = qword_1ECF54390;
  if (!qword_1ECF54390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A686FC()
{
  sub_1E3A687A0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3A687A0()
{
  if (!qword_1ECF315F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF363C0);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF315F8);
    }
  }
}

uint64_t sub_1E3A68804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3A68884(a1, a2);
  v4 = sub_1E4203DA4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31600) + 36);
  sub_1E3A68F28(v2, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31608);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  return result;
}

uint64_t sub_1E3A68884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31610);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31618);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31620);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31628);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31630);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v21 = sub_1E4203D34();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v2;
  if (v25 == 11)
  {
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
LABEL_4:
    sub_1E325F6F0(v20, &qword_1ECF2A258);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31638);
    OUTLINED_FUNCTION_2();
    (*(v27 + 16))(v5, v49, v26);
    swift_storeEnumTagMultiPayload();
    sub_1E3A69664();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v28, &qword_1ECF31638);
    OUTLINED_FUNCTION_3_106();
    return sub_1E4201F44();
  }

  sub_1E41263A0(v25, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v45 = v22;
  (*(v22 + 32))(v24, v20, v21);
  if (v2[8])
  {
    v30 = sub_1E4202734();
    v31 = &v8[*(v47 + 36)];
    (*(v45 + 16))(v31, v24, v21);
    v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658) + 36)] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31638);
    OUTLINED_FUNCTION_2();
    (*(v32 + 16))(v8, v49);
    sub_1E37E93E8(v8, v11, &qword_1ECF31618);
    swift_storeEnumTagMultiPayload();
    sub_1E3A696F0();
    sub_1E3A697D4();
    sub_1E4201F44();
    v33 = v8;
    v34 = &qword_1ECF31618;
  }

  else
  {
    v35 = sub_1E3952BE8(v2[4], v2[5], v2[6], v2[7]);
    v36 = &v14[*(v48 + 36)];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A070);
    v38 = &v36[*(v37 + 52)];
    v44 = *(sub_1E4201534() + 20);
    v39 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v40 + 104))(v38 + v44, v39);
    *v38 = v35;
    v38[1] = v35;
    (*(v45 + 16))(v36, v24, v21);
    *&v36[*(v37 + 56)] = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31638);
    OUTLINED_FUNCTION_2();
    (*(v41 + 16))(v14, v49);
    sub_1E37E93E8(v14, v11, &qword_1ECF31628);
    swift_storeEnumTagMultiPayload();
    sub_1E3A696F0();
    sub_1E3A697D4();
    sub_1E4201F44();
    v33 = v14;
    v34 = &qword_1ECF31628;
  }

  sub_1E325F6F0(v33, v34);
  sub_1E37E93E8(v17, v5, &qword_1ECF31630);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31638);
  sub_1E3A69664();
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v42, &qword_1ECF31638);
  OUTLINED_FUNCTION_3_106();
  sub_1E4201F44();
  sub_1E325F6F0(v17, &qword_1ECF31630);
  return (*(v45 + 8))(v24, v21);
}

uint64_t sub_1E3A68F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32[-v10];
  v12 = *(a1 + 8);
  if (v12)
  {
    if (*(a1 + 64))
    {
      sub_1E3A694BC(a1, v33);
      v13 = 0.0;
    }

    else
    {
      v16 = *(a1 + 48);
      v15 = *(a1 + 56);
      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      sub_1E3A694BC(a1, v33);
      v13 = sub_1E3952BE8(v18, v17, v16, v15);
    }

    v19 = *(v4 + 20);
    v20 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v21 + 104))(v7 + v19, v20);
    *v7 = v13;
    v7[1] = v13;
    v22 = sub_1E38F08C4(v12);
    sub_1E4200BF4();
    sub_1E3A694F4(v7, v11);
    v23 = *v33 * 0.5;
    v24 = &v11[*(v8 + 68)];
    sub_1E3A694F4(v7, v24);
    *(v24 + *(sub_1E4201524() + 20)) = v23;
    v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0D8) + 36);
    v26 = v33[1];
    *v25 = v33[0];
    *(v25 + 16) = v26;
    *(v25 + 32) = v34;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0E0);
    *(v24 + *(v27 + 52)) = v22;
    *(v24 + *(v27 + 56)) = 256;
    sub_1E3A69558(v33, v32);

    v28 = sub_1E4203DA4();
    v30 = v29;
    sub_1E3A69348(a1);
    sub_1E3A695B4(v33);

    sub_1E3A69608(v7);
    v31 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0E8) + 36));
    *v31 = v28;
    v31[1] = v30;
    sub_1E32C1EC0(v11, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }
}

uint64_t sub_1E3A6929C(char a1, void *a2, uint64_t a3, char a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v9 = *a5;
  *&v13[23] = a5[1];
  *&v13[7] = v9;
  *(&__src[3] + 1) = *v13;
  v13[39] = *(a5 + 32);
  __dst[0] = a4 & 1;
  LOBYTE(__src[0]) = a1;
  __src[1] = a2;
  __src[2] = a3;
  LOBYTE(__src[3]) = a4 & 1;
  *(&__src[5] + 1) = *&v13[16];
  *(&__src[7] + 1) = *&v13[32];
  v10 = a2;
  MEMORY[0x1E690DE70](__src, a6, &type metadata for BackgroundMaterialViewModifier, a7);
  memcpy(__dst, __src, 0x41uLL);
  return sub_1E3A69348(__dst);
}

unint64_t sub_1E3A69378()
{
  result = qword_1EE293130[0];
  if (!qword_1EE293130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE293130);
  }

  return result;
}

uint64_t sub_1E3A693D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3A69428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E3A694F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4201534();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A69608(uint64_t a1)
{
  v2 = sub_1E4201534();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3A69664()
{
  result = qword_1EE288F40;
  if (!qword_1EE288F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31630);
    sub_1E3A696F0();
    sub_1E3A697D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F40);
  }

  return result;
}

unint64_t sub_1E3A696F0()
{
  result = qword_1EE289AB0;
  if (!qword_1EE289AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31628);
    sub_1E32752B0(&qword_1EE288948, &qword_1ECF31638);
    sub_1E32752B0(&qword_1EE288758, &qword_1ECF2A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AB0);
  }

  return result;
}

unint64_t sub_1E3A697D4()
{
  result = qword_1EE289AA8;
  if (!qword_1EE289AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31618);
    sub_1E32752B0(&qword_1EE288948, &qword_1ECF31638);
    sub_1E32752B0(&qword_1EE288890, &qword_1ECF2F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AA8);
  }

  return result;
}

unint64_t sub_1E3A698B8()
{
  result = qword_1EE289B08;
  if (!qword_1EE289B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31600);
    sub_1E3A69970();
    sub_1E32752B0(&qword_1EE2892F0, &qword_1ECF31608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B08);
  }

  return result;
}

unint64_t sub_1E3A69970()
{
  result = qword_1EE288BD0;
  if (!qword_1EE288BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31640);
    sub_1E3A69664();
    sub_1E32752B0(&qword_1EE288948, &qword_1ECF31638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BD0);
  }

  return result;
}

uint64_t sub_1E3A69A5C()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 112) = sub_1E3BD61D8();
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1704);

  v3 = v2();
  (*(*v3 + 208))(0x4034000000000000, 0);

  v5 = *(v2)(v4);
  (*(v5 + 312))(0x4034000000000000, 0);

  v7 = *(*v1 + 1728);
  v8 = *v7(v6);
  (*(v8 + 1736))(0x3FF547AE147AE148, 0);

  v10 = (v2)(v9);
  sub_1E3C37CBC(v10, 23);

  v12 = v7(v11);
  sub_1E3C37CBC(v12, 39);

  return v1;
}

uint64_t sub_1E3A69C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31648);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31650) + 36));
  *v8 = sub_1E3A69DC0;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31658) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_1E3A69E54;
  v10[3] = v9;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1E3A69DC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1E327F454(v3, v7);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v5 + 8))(v4, v5);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1E3A69E54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1E327F454(v3, v7);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v5 + 16))(v4, v5);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1E3A69EF0()
{
  v0 = sub_1E3E6CDC8();
  v1 = (*(*v0 + 464))(v0);

  if (v1)
  {
    result = sub_1E32AE9B0(v1);
    v3 = result;
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {
LABEL_32:

        return MEMORY[0x1E69E7CC0];
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v1);
        v5 = result;
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v5 = *(v1 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }

      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      if (v21 == v19 && v22 == v20)
      {
        break;
      }

      v7 = sub_1E42079A4();

      if (v7)
      {
        goto LABEL_16;
      }
    }

LABEL_16:

    v9 = (*(*v5 + 464))(v8);
    if (v9)
    {
      v10 = v9;
      result = sub_1E32AE9B0(v9);
      v11 = result;
      for (j = 0; ; ++j)
      {
        if (v11 == j)
        {

          goto LABEL_32;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E6911E60](j, v10);
        }

        else
        {
          if (j >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_42;
        }

        sub_1E4206254();
        sub_1E4206254();
        if (v21 == v19 && v22 == v20)
        {
          break;
        }

        v14 = sub_1E42079A4();

        if (v14)
        {
          goto LABEL_34;
        }
      }

LABEL_34:

      v15 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31660);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1E4297BE0;
        *(v18 + 56) = v15;
        *(v18 + 64) = &off_1F5D6D078;
        *(v18 + 32) = v17;

        return v18;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E3A6A380(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3A6A404()
{
  result = qword_1ECF31678;
  if (!qword_1ECF31678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31678);
  }

  return result;
}

uint64_t sub_1E3A6A468()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E3A6A4A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1E3A6A544()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A6A5B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3A6A650()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E3A6A6C0())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_8_70();
  v0[6] = sub_1E4200664();
  return sub_1E3846A58;
}

uint64_t sub_1E3A6A760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_8(v6, v10);
  v8(v7);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3A6A864())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3A6A970;
}

uint64_t sub_1E3A6A988()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A6A9FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3A6AA48(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t sub_1E3A6AA9C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E3A6AB0C())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_8_70();
  v0[6] = sub_1E4200664();
  return sub_1E3844B3C;
}

uint64_t sub_1E3A6ABAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31688);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_8(v6, v10);
  v8(v7);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31680);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3A6ACB0())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31688);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31680);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3A6ADBC;
}

void sub_1E3A6ADD4(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3A6AE9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31690);
  sub_1E32752B0(&qword_1ECF31698, &qword_1ECF31690);
  return sub_1E42006B4();
}

uint64_t sub_1E3A6AF30()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 280))(v4);
  v1 = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_34_7(v4, v5);
    v1 = (*(v2 + 88))(v1);
  }

  sub_1E325F7A8(v4, &qword_1ECF2A778);
  return v1;
}

uint64_t sub_1E3A6AFE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity;
  OUTLINED_FUNCTION_15_0();
  return sub_1E3A6B02C(v1 + v3, a1);
}

uint64_t sub_1E3A6B02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A6B09C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity;
  OUTLINED_FUNCTION_11_3();
  sub_1E3A6B0F4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E3A6B0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A778);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A6B1BC(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  sub_1E3A6B20C(a1, a2);
  return v4;
}

uint64_t sub_1E3A6B20C(uint64_t a1, int a2)
{
  v3 = v2;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31680);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33[-v15];
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v17 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__isFetchDone;
  LOBYTE(v38[0]) = 0;
  sub_1E4200634();
  (*(v13 + 32))(v3 + v17, v16, v11);
  v18 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__seasonViewModels;
  v19 = MEMORY[0x1E69E7CC0];
  v38[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB68);
  sub_1E4200634();
  (*(v7 + 32))(v3 + v18, v10, v5);
  v20 = v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_cancellables) = v19;
  *(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_seasons) = v19;
  v21 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_eventSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31690);
  swift_allocObject();
  *(v3 + v21) = sub_1E4200544();
  sub_1E3A6B02C(a1, &v35);
  if (v36)
  {
    sub_1E3251BE8(&v35, v38);
    v22 = v34;
    *(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly) = v34 & 1;
    sub_1E327F454(v38, &v35);
    v23 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity;
    OUTLINED_FUNCTION_11_3();
    sub_1E3A6B0F4(&v35, v3 + v23);
    swift_endAccess();
    sub_1E3A6BAD0();
    v24 = v39;
    v25 = v40;
    v26 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v36 = v24;
    v37 = *(v25 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    swift_weakInit();

    sub_1E41A3244(&v35, sub_1E3A6BCE0, v28);

    __swift_destroy_boxed_opaque_existential_1(&v35);
    if (v22)
    {
      v29 = [objc_opt_self() defaultCenter];
      [v29 addObserver:v3 selector:sel_handlePlaybackUIDidChangeNotification name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];
    }

    sub_1E325F7A8(a1, &qword_1ECF2A778);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_8_70();
    sub_1E325F7A8(v30, v31);
    sub_1E325F7A8(&v35, &qword_1ECF2A778);
  }

  return v3;
}

uint64_t sub_1E3A6B5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v21 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v14 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_1E3A6D740;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_49;
  v17 = _Block_copy(aBlock);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v13, v8, v17);
  _Block_release(v17);

  (*(v21 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_1E3A6B8F4()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 216))();
  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {
LABEL_17:
  }

  v4 = 0;
  v9 = result + 32;
  while (v4 < *(v2 + 16))
  {
    v5 = *(v9 + 32 * v4 + 24);
    if (v5 >> 62)
    {
      result = sub_1E4207384();
      v6 = result;
      if (!result)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    if (v6 < 1)
    {
      goto LABEL_21;
    }

    swift_bridgeObjectRetain_n();

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v7, v5);
      }

      else
      {
      }

      ++v7;
      OUTLINED_FUNCTION_8();
      (*(v8 + 1088))();
    }

    while (v6 != v7);

    result = swift_bridgeObjectRelease_n();
LABEL_13:
    if (++v4 == v3)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E3A6BAD0()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 280))(&v14);
  if (!v15)
  {
    return sub_1E325F7A8(&v14, &qword_1ECF2A778);
  }

  sub_1E3251BE8(&v14, v17);
  v2 = v18;
  OUTLINED_FUNCTION_34_7(v17, v18);
  (*(v3 + 32))(v2);
  OUTLINED_FUNCTION_111();
  (*(v4 + 152))();
  v5 = *(**sub_1E3B7B1C8() + 896);

  v5(&v12, v17);

  if (v13)
  {
    sub_1E3251BE8(&v12, &v14);
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    v8 = *(v0 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly);
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = *(v7 + 120);

    v10(v17, v8, sub_1E3A6D854, v9, v6, v7);

    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_1E325F7A8(&v12, &unk_1ECF2A740);
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1E3A6BCE8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_seasons);
  v43 = *(v2 + 16);
  if (!v43)
  {
LABEL_28:
    OUTLINED_FUNCTION_111();
    return (*(v40 + 224))();
  }

  v3 = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly;
  v41 = v2 + 32;

  v6 = 0;
  v44 = v3;
  v42 = result;
  while (v6 < *(result + 16))
  {
    v46 = v6;
    sub_1E327F454(v41 + 40 * v6, v49);
    OUTLINED_FUNCTION_34_7(v49, v50);
    v7 = OUTLINED_FUNCTION_9_72();
    v9 = v8(v7);
    v11 = v10;
    v12 = v50;
    OUTLINED_FUNCTION_34_7(v49, v50);
    v14 = (*(v13 + 32))(v12);
    v45 = sub_1E3A6C6EC(v9, v11, v14, v15);

    v16 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    v17 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v18 = OUTLINED_FUNCTION_9_72();
    v20 = v19(v18, v17);
    if (!v20)
    {
      v20 = v16;
    }

    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 32;
      do
      {
        sub_1E327F454(v22, v47);
        v23 = sub_1E3A6C640(v47, v49);
        v24 = __swift_destroy_boxed_opaque_existential_1(v47);
        if (v23)
        {
          if (*(v1 + v4) == 1)
          {
            v25 = (*(*v23 + 936))(v24);
            if (v25)
            {
              v26 = *(v25 + 280);

              sub_1E40A0988();

              OUTLINED_FUNCTION_4_0();
              v27 = swift_allocObject();
              swift_weakInit();
              v28 = swift_allocObject();
              *(v28 + 16) = v27;
              *(v28 + 24) = v1;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEB8);
              sub_1E32752B0(&qword_1EE28A1C0, &qword_1ECF2CEB8);
              sub_1E4200844();

              OUTLINED_FUNCTION_11_3();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580);
              sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580);
              sub_1E42004D4();
              swift_endAccess();
            }
          }

          MEMORY[0x1E6910BF0](v29);
          v30 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v30 >> 1)
          {
            OUTLINED_FUNCTION_35(v30);
            sub_1E42062F4();
          }

          sub_1E4206324();

          v16 = v48;
        }

        v22 += 40;
        --v21;
      }

      while (v21);
    }

    if (v16 >> 62)
    {
      if (sub_1E4207384())
      {
LABEL_18:
        OUTLINED_FUNCTION_34_7(v49, v50);
        v31 = OUTLINED_FUNCTION_9_72();
        v33 = v32(v31);
        v35 = v34;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = v44;
        }

        else
        {
          v36 = sub_1E3A6D1F4(0, v44[2] + 1, 1, v44);
        }

        v38 = v36[2];
        v37 = v36[3];
        if (v38 >= v37 >> 1)
        {
          v36 = sub_1E3A6D1F4((v37 > 1), v38 + 1, 1, v36);
        }

        v36[2] = v38 + 1;
        v44 = v36;
        v39 = &v36[4 * v38];
        v39[4] = v33;
        v39[5] = v35;
        v39[6] = v45;
        v39[7] = v16;
        goto LABEL_25;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_25:
    v6 = v46 + 1;
    __swift_destroy_boxed_opaque_existential_1(v49);
    result = v42;
    if (v46 + 1 == v43)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3A6C1E0(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly) == 1 && a2 == 0)
  {
    v4 = result;
    v5 = *(result + 312);
    OUTLINED_FUNCTION_34_7((result + 288), v5);
    result = (*(v6 + 128))(v5);
    if (result == 2 || (result & 1) != 0)
    {
      v7 = (*(*v2 + 216))();
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = (v7 + 56);
        v11 = MEMORY[0x1E69E7CC0];
        v38 = v4;
        while (1)
        {
          v12 = *(v10 - 2);
          v39 = *(v10 - 3);
          v13 = *(v10 - 1);
          v45 = *v10;
          v43 = v13;

          swift_bridgeObjectRetain_n();

          result = sub_1E3A6D324(&v45, v4);
          v14 = v45;
          v15 = v45 >> 62;
          if (v45 >> 62)
          {
            v34 = result;
            v16 = sub_1E4207384();
            result = v34;
          }

          else
          {
            v16 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = v16 - result;
          if (v16 < result)
          {
            break;
          }

          if (result < 0)
          {
            goto LABEL_68;
          }

          v44 = result;
          if (v15)
          {
            result = sub_1E4207384();
          }

          else
          {
            result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (result < v16)
          {
            goto LABEL_69;
          }

          v41 = v9;
          v18 = v8;
          v19 = -v17;
          if (__OFSUB__(0, v17))
          {
            goto LABEL_70;
          }

          v42 = v12;
          if (v15)
          {
            result = sub_1E4207384();
          }

          else
          {
            result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v20 = result - v17;
          if (__OFADD__(result, v19))
          {
            goto LABEL_71;
          }

          v40 = v11;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v15)
          {
            v22 = 0;
          }

          else
          {
            v22 = isUniquelyReferenced_nonNull_bridgeObject;
          }

          if (v22 != 1 || (v23 = v14 & 0xFFFFFFFFFFFFFF8, v20 > *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
          {
            if (v15)
            {
              sub_1E4207384();
            }

            v14 = sub_1E4207514();
            v23 = v14 & 0xFFFFFFFFFFFFFF8;
          }

          v24 = (v23 + 32 + 8 * v44);
          type metadata accessor for LibEpisodeViewModel();
          swift_arrayDestroy();
          v25 = v14 >> 62;
          if (v19)
          {
            if (v25)
            {
              result = sub_1E4207384();
            }

            else
            {
              result = *(v23 + 16);
            }

            v26 = result - v16;
            if (__OFSUB__(result, v16))
            {
              goto LABEL_72;
            }

            v27 = (v23 + 32 + 8 * v16);
            if (v16 != v44 || v24 >= &v27[8 * v26])
            {
              memmove(v24, v27, 8 * v26);
            }

            if (v25)
            {
              result = sub_1E4207384();
            }

            else
            {
              result = *(v23 + 16);
            }

            if (__OFADD__(result, v19))
            {
              goto LABEL_73;
            }

            *(v23 + 16) = result + v19;
          }

          if (v25)
          {
            v29 = sub_1E4207384();
          }

          else
          {
            v29 = *(v23 + 16);
          }

          v4 = v38;
          v30 = v18;
          v11 = v40;
          v9 = v41;
          if (v29)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_1E3A6D1F4(0, v40[2] + 1, 1, v40);
            }

            v32 = v11[2];
            v31 = v11[3];
            if (v32 >= v31 >> 1)
            {
              v35 = OUTLINED_FUNCTION_35(v31);
              v11 = sub_1E3A6D1F4(v35, v32 + 1, 1, v11);
            }

            v11[2] = v32 + 1;
            v33 = &v11[4 * v32];
            v33[4] = v39;
            v33[5] = v42;
            v33[6] = v43;
            v33[7] = v14;
          }

          else
          {
          }

          v10 += 4;
          v8 = v30 - 1;
          if (!v8)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
LABEL_61:

        if (v11[2])
        {
          OUTLINED_FUNCTION_8();
          v37 = *(v36 + 224);

          return v37(v11);
        }

        else
        {

          return sub_1E4200524();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E3A6C640(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LibEpisodeViewModel();
  sub_1E327F454(a1, v10);
  v5 = *(v2 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_showDownloadsOnly);
  sub_1E327F454(a2, v9);
  v6 = sub_1E3D95C0C(v10, v5, v9);
  if (v6)
  {
    OUTLINED_FUNCTION_8();
    (*(v7 + 1096))();
  }

  return v6;
}

uint64_t sub_1E3A6C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibViewModel();

  v9 = sub_1E3B76C80(138, a1, a2, 0, 0, 0, 0);
  v10 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E6158];
  v56[0] = a3;
  v56[1] = a4;
  type metadata accessor for TextViewModel();

  if (sub_1E3C27638(23, v56, v9, 0, 0))
  {
    MEMORY[0x1E6910BF0]();
    v11 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
    {
      OUTLINED_FUNCTION_35(v11);
      sub_1E42062F4();
    }

    sub_1E4206324();
    v10 = v59;
  }

  if ([objc_opt_self() isRemoteServerConnected])
  {
    type metadata accessor for ButtonLayout();
    v12 = j__OUTLINED_FUNCTION_18();
    v13 = sub_1E3B050E8();
    v14 = j__OUTLINED_FUNCTION_18();
    v15 = sub_1E3BBD964(5, v12 & 1, v13, v14 & 1);
    (*(*v4 + 280))(&v53);
    if (v54)
    {
      sub_1E3251BE8(&v53, v56);
      v16 = v57;
      OUTLINED_FUNCTION_34_7(v56, v57);
      v18 = (*(v17 + 88))(v16);
      if (v19)
      {
        v20 = v18;
        v21 = v19;

        v22 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v22 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (v22)
        {
          sub_1E3280A90(0, &qword_1EE23B140);
          v24 = v57;
          v23 = v58;
          v25 = __swift_project_boxed_opaque_existential_1(v56, v57);
          v54 = v24;
          v55 = *(v23 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
          (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v25, v24);

          v27 = sub_1E37FAFF8();

          v28 = sub_1E3B76C80(60, a1, a2, v9, v15, v27, 0);
          if (v28)
          {
            v29 = v28;
            v30 = *(*v28 + 472);

            v30(MEMORY[0x1E69E7CC0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4297BE0;
            *(inited + 32) = sub_1E3C7CCAC(0);
            *(inited + 40) = v32;
            *(inited + 72) = MEMORY[0x1E69E6158];
            *(inited + 48) = 0xD000000000000018;
            *(inited + 56) = 0x80000001E4265EA0;
            v33 = sub_1E4205CB4();
            type metadata accessor for ImageViewModel();

            if (sub_1E3F5321C(39, v33, v29))
            {
              v35 = (*(*v29 + 480))(&v53);
              if (*v34)
              {
                v36 = v34;

                MEMORY[0x1E6910BF0](v37);
                sub_1E38C5A18(*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10));
                sub_1E4206324();
              }

              v35(&v53, 0);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
            v38 = swift_initStackObject();
            *(v38 + 16) = xmmword_1E4297BD0;
            *(v38 + 32) = sub_1E4205F14();
            *(v38 + 40) = v39;
            *(v38 + 48) = sub_1E4205F14();
            *(v38 + 56) = v40;
            *(v38 + 64) = sub_1E4205F14();
            *(v38 + 72) = v41;
            *(v38 + 80) = sub_1E4205F14();
            *(v38 + 88) = v42;
            *(v38 + 96) = sub_1E4205F14();
            *(v38 + 104) = v43;
            *(v38 + 112) = sub_1E4205F14();
            *(v38 + 120) = v44;
            v45 = sub_1E4205CB4();
            if ((*(*v29 + 576))())
            {
              v46 = sub_1E3797720(v45);

              OUTLINED_FUNCTION_8();
              (*(v47 + 184))(v46);
            }

            else
            {
            }

            MEMORY[0x1E6910BF0](v48);
            v51 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v51 >> 1)
            {
              OUTLINED_FUNCTION_35(v51);
              sub_1E42062F4();
            }

            sub_1E4206324();
            v10 = v59;
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v56);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1E325F7A8(&v53, &qword_1ECF2A778);
  }

  if (!v9)
  {
LABEL_27:

    return v9;
  }

LABEL_21:
  OUTLINED_FUNCTION_111();
  v50 = *(v49 + 472);

  v50(v10);

  return v9;
}

uint64_t sub_1E3A6CD84()
{

  v1 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__isFetchDone;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel__seasonViewModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31680);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  sub_1E325F7A8(v0 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_libShowMediaEntity, &qword_1ECF2A778);

  return v0;
}

uint64_t sub_1E3A6CE78()
{
  sub_1E3A6CD84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3A6CED4()
{
  result = qword_1ECF316A0;
  if (!qword_1ECF316A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF316A0);
  }

  return result;
}

uint64_t sub_1E3A6CF28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LibShowDetailsViewModel();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LibShowDetailsViewModel()
{
  result = qword_1ECF545C0;
  if (!qword_1ECF545C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A6CFBC()
{
  sub_1E38C734C(319, &qword_1EE289F50, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1E3A6D0E4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3A6D0E4()
{
  if (!qword_1ECF316A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CB68);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF316A8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LibShowDetailsViewModel.Event(_BYTE *result, int a2, int a3)
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

void *sub_1E3A6D1F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3A6D324(unint64_t *a1, uint64_t a2)
{
  v4 = a1;
  v5 = *a1;

  result = sub_1E3A6D590(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_43;
  }

  if (v7)
  {
    v8 = sub_1E32AE9B0(v5);
LABEL_43:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      result = v5 >> 62 ? sub_1E4207384() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == result)
      {
        goto LABEL_43;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](v9, v5);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
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
          break;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      if (*(v10 + 264) == *(a2 + 264) && *(v10 + 272) == *(a2 + 272))
      {
      }

      else
      {
        v12 = sub_1E42079A4();

        if ((v12 & 1) == 0)
        {
          if (v8 != v9)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x1E6911E60](v8, v5);
              v14 = MEMORY[0x1E6911E60](v9, v5);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_49;
              }

              v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v15)
              {
                goto LABEL_50;
              }

              if (v9 >= v15)
              {
                goto LABEL_51;
              }

              v13 = *(v5 + 32 + 8 * v8);
              v14 = *(v5 + 32 + 8 * v9);
            }

            v16 = v4;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1E37EFA58(v5);
              v17 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v17) = 0;
            }

            v18 = v5 & 0xFFFFFFFFFFFFFF8;
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

            if ((v5 & 0x8000000000000000) != 0 || v17)
            {
              result = sub_1E37EFA58(v5);
              v5 = result;
              v18 = result & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v9 >= *(v18 + 16))
            {
              goto LABEL_48;
            }

            v4 = v16;
            *(v18 + 8 * v9 + 32) = v13;

            *v16 = v5;
          }

          v19 = __OFADD__(v8++, 1);
          if (v19)
          {
            goto LABEL_47;
          }
        }
      }

      v19 = __OFADD__(v9++, 1);
      if (v19)
      {
        goto LABEL_46;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3A6D590(unint64_t a1, uint64_t a2)
{
  result = sub_1E32AE9B0(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](v6, a1);
      goto LABEL_6;
    }

    if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v7 = *(a1 + 8 * v6 + 32);

LABEL_6:
    if (*(v7 + 264) == *(a2 + 264) && *(v7 + 272) == *(a2 + 272))
    {

LABEL_17:

      return v6;
    }

    v9 = sub_1E42079A4();

    if (v9)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E3A6D6A4(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      if (v1 == 4)
      {
        OUTLINED_FUNCTION_111();
        (*(v3 + 1088))();
      }
    }

    else
    {
      sub_1E3A6C1E0(result, 0);
    }
  }

  return result;
}

uint64_t sub_1E3A6D740()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_1E3A6B164();
    v6 = *(v4 + 24);
    if (v6)
    {
      v7 = *(v4 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
      v8 = *(v7 + 8);
      v9 = *(v8 + 96);

      v9(v1, v2, v6, v8);
    }

    (v5)(v11, 0);
    OUTLINED_FUNCTION_111();
    if ((*(v10 + 168))())
    {
      sub_1E3A6BCE8();
    }
  }

  return result;
}

uint64_t sub_1E3A6D854(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 176))(1);
  }

  OUTLINED_FUNCTION_5_0();
  v3 = swift_weakLoadStrong();
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC8VideosUI23LibShowDetailsViewModel_seasons) = a1;
  }

  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3A6BCE8();
  }

  return result;
}

__n128 sub_1E3A6D93C@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_15_0();
  v3 = *(v1 + 152);
  result = *(v1 + 120);
  v5 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_1E3A6D980(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v4;
  *(v1 + 152) = *(a1 + 32);
  return result;
}

__n128 sub_1E3A6DA08@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_15_0();
  v3 = *(v1 + 192);
  result = *(v1 + 160);
  v5 = *(v1 + 176);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_1E3A6DA48(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v4;
  *(v1 + 192) = *(a1 + 32);
  return result;
}

void sub_1E3A6DACC(uint64_t a1@<X8>)
{
  if (*(v1 + 241))
  {
    v3 = v13;
    (*(*v1 + 176))(v13);
    if (v14)
    {
      v3 = MEMORY[0x1E69DDCE0];
      v4 = *(MEMORY[0x1E69DDCE0] + 8);
      v5 = *(MEMORY[0x1E69DDCE0] + 16);
      v6 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v4 = *&v13[1];
      v5 = v13[2];
      v6 = *&v13[3];
    }

    v9 = *v3;
    type metadata accessor for LayoutGrid();
    (*(*v1 + 1560))();
    sub_1E3A25914();
    v10 = 0;
    if (v4 > v11)
    {
      v8 = v4;
    }

    else
    {
      v8 = v11;
    }

    *(v1 + 208) = v9;
    *(v1 + 216) = v8;
    *(v1 + 224) = v5;
    if (v6 > v12)
    {
      v7 = v6;
    }

    else
    {
      v7 = v12;
    }

    *(v1 + 232) = v7;
    *(v1 + 240) = 0;
  }

  else
  {
    v7 = *(v1 + 232);
    v5 = *(v1 + 224);
    v8 = *(v1 + 216);
    v9 = *(v1 + 208);
    v10 = *(v1 + 240);
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v10 & 1;
}

__n128 sub_1E3A6DC14(uint64_t a1)
{
  v2 = *(a1 + 32) & 1;
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 208) = *a1;
  *(v1 + 224) = v4;
  *(v1 + 240) = v2;
  return result;
}

void (*sub_1E3A6DC30(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1E3A6DACC(v3);
  return sub_1E3A6DC94;
}

void sub_1E3A6DC94(void **a1)
{
  v1 = *a1;
  v2 = v1[5];
  v3 = *(v1 + 32);
  v4 = *(v1 + 1);
  *(v2 + 208) = *v1;
  *(v2 + 224) = v4;
  *(v2 + 240) = v3;
  free(v1);
}

void *sub_1E3A6DD04(uint64_t a1)
{
  v3 = (*(v1 + 1584))();
  swift_beginAccess();
  v3[25] = a1;

  OUTLINED_FUNCTION_9_2();
  v5 = (*(v4 + 1832))();
  if (!v5)
  {
    *v16 = 0u;
    v17 = 0u;
    goto LABEL_10;
  }

  (*(*v5 + 672))(v5);

  v14 = &type metadata for ViewModelKeys;
  v15 = &off_1F5D7BCA8;
  LOBYTE(v13) = 13;
  sub_1E3F9F164(&v13);

  __swift_destroy_boxed_opaque_existential_1(&v13);
  if (!*(&v17 + 1))
  {
LABEL_10:
    v10 = v16;
LABEL_11:
    sub_1E329505C(v10);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_1E39BD118(0x7470697263736564, 0xEB000000006E6F69, v13);

  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = sub_1E39BD118(0x74756F79616CLL, 0xE600000000000000, v6);

  if (!v7)
  {
    goto LABEL_12;
  }

  sub_1E3277E60(0x664F7265626D756ELL, 0xED000073656E694CLL, v7, &v13);

  if (!v14)
  {
    v10 = &v13;
    goto LABEL_11;
  }

  sub_1E3280A90(0, &qword_1EE23ADD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v9 = 5;
    goto LABEL_13;
  }

  v8 = v16[0];
  v9 = [v16[0] unsignedIntegerValue];

LABEL_13:
  v11 = (*(*v3 + 1736))();
  (*(*v11 + 2056))(v9, 0);

  return v3;
}

uint64_t sub_1E3A6E044()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 225) = 0u;
  *(v0 + 241) = 1;
  v1 = sub_1E3C2F9A0();
  v2 = *(* + 1736);
  v2();
  type metadata accessor for NSLineBreakMode();
  v4 = v3;
  sub_1E3C2FC98();
  v604[0] = v567[0];
  LOBYTE(v604[1]) = v567[1];
  sub_1E3C3DE00(v4);
  v598[0] = v601[0];
  LOBYTE(v598[1]) = v601[1];
  sub_1E3C3DE00(v4);
  LOBYTE(v589) = v595[1];
  sub_1E3C3DE00(v4);
  LOBYTE(v574[1]) = v579[1];
  v5 = sub_1E3C3DE00(v4);
  LOBYTE(v585) = v587;
  v13 = OUTLINED_FUNCTION_12_67(v5, v6, v7, v8, v9, v10, v11, v12, v427, v462, v496, v533, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v579[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v586, v585, v586, v587, v595[0], v589, v590, v591, v592, v593, 0);
  sub_1E3C2FCB8(v13, v14);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v23 = OUTLINED_FUNCTION_5_102(v15, v16, v17, v18, v19, v20, v21, v22, v428, v463, v497, v534, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v24(v23, 67);

  (v2)(v25);
  memset(__dst, 0, 32);
  LOBYTE(__dst[2]) = 1;
  LOBYTE(v569) = 0;
  *v604 = xmmword_1E42B5E00;
  *v605 = xmmword_1E42B5E20;
  LOBYTE(v606) = 0;
  v601[0] = 0x4049000000000000;
  v601[1] = 0;
  v602[1] = 0;
  v602[0] = 0;
  LOBYTE(v603) = 0;
  *v598 = xmmword_1E42B5E00;
  *v599 = xmmword_1E42B5E30;
  LOBYTE(v600) = 0;
  type metadata accessor for UIEdgeInsets();
  v27 = v26;
  sub_1E3C3DE00(v26);
  OUTLINED_FUNCTION_10_72();
  v36 = OUTLINED_FUNCTION_0_123(v28, v29, v30, v31, v32, v33, v34, v35, 0x4024000000000000, 0x4034000000000000, v498, v535, 0x4030000000000000, 0x4034000000000000, 0x4010000000000000, 0x4034000000000000, v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  sub_1E3C2FCB8(v36, v37);
  OUTLINED_FUNCTION_9_73(v38, v39, v40, v41, v42, v43, v44, v45, v429, v464, v499, v536, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v54 = OUTLINED_FUNCTION_5_102(v46, v47, v48, v49, v50, v51, v52, v53, v430, v465, v500, v537, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v55(v54, 0);

  (v2)(v56);
  LOBYTE(__dst[0]) = 4;
  LOBYTE(v567[0]) = 1;
  OUTLINED_FUNCTION_20_56();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_7_101();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00(&unk_1F5D99680);
  OUTLINED_FUNCTION_15_71();
  OUTLINED_FUNCTION_2_101(v57, v58, v59, v60, v61, v62, v63, v64, v431, v466, v501, v538, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v73 = OUTLINED_FUNCTION_5_102(v65, v66, v67, v68, v69, v70, v71, v72, v432, v467, v502, v539, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v74(v73, 12);

  (v2)(v75);
  LOBYTE(__dst[0]) = 5;
  LOBYTE(v567[0]) = 1;
  OUTLINED_FUNCTION_20_56();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_7_101();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00(&unk_1F5D54CA8);
  OUTLINED_FUNCTION_15_71();
  OUTLINED_FUNCTION_2_101(v76, v77, v78, v79, v80, v81, v82, v83, v433, v468, v503, v540, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v92 = OUTLINED_FUNCTION_5_102(v84, v85, v86, v87, v88, v89, v90, v91, v434, v469, v504, v541, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v93(v92, 59);

  (v2)(v94);
  LOBYTE(__dst[0]) = 27;
  LOBYTE(v567[0]) = 17;
  LOBYTE(v604[0]) = 17;
  LOBYTE(v601[0]) = 15;
  LOBYTE(v598[0]) = 3;
  v95 = OUTLINED_FUNCTION_21_51();
  v96 = sub_1E3C3DE00(v95);
  LOBYTE(v588) = v595[0];
  v104 = OUTLINED_FUNCTION_0_123(v96, v97, v98, v99, v100, v101, v102, v103, v435, v470, v505, v542, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  sub_1E3C2FCB8(v104, v105);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v114 = OUTLINED_FUNCTION_5_102(v106, v107, v108, v109, v110, v111, v112, v113, v436, v471, v506, v543, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v115(v114, 48);

  v116 = sub_1E39DFFC8();
  if (v116)
  {
    v2();
    LOBYTE(__dst[0]) = 5;
    LOBYTE(v567[0]) = 4;
    LOBYTE(v604[0]) = 4;
    sub_1E3C3DE00(&unk_1F5D54B88);
    LOBYTE(v598[0]) = v601[0];
    v117 = OUTLINED_FUNCTION_21_51();
    sub_1E3C3DE00(v117);
    LOBYTE(v588) = v595[0];
    v118 = sub_1E3C3DE00(&unk_1F5D54B88);
    LOBYTE(v574[0]) = v579[0];
    v126 = OUTLINED_FUNCTION_1_127(v118, v119, v120, v121, v122, v123, v124, v125, v437, v472, v507, v544, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
    sub_1E3C2FCB8(v126, v127);
    OUTLINED_FUNCTION_4_106();
    OUTLINED_FUNCTION_14();
    v136 = OUTLINED_FUNCTION_5_102(v128, v129, v130, v131, v132, v133, v134, v135, v438, v473, v508, v545, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
    v137(v136, 55);
  }

  v138 = (v2)(v116);
  v139 = *sub_1E3E5FD88();
  v140 = *(*v138 + 680);
  v141 = v139;
  v140(v139);

  (v2)(v142);
  OUTLINED_FUNCTION_2_1();
  (*(v143 + 1328))(1);

  OUTLINED_FUNCTION_9_2();
  v145 = *(v144 + 1760);
  v146 = v145();
  *(&__dst[0] + 1) = 0;
  __dst[1] = xmmword_1E4296C50;
  LOBYTE(__dst[2]) = 0;
  LOBYTE(v569) = 0;
  __asm { FMOV            V1.2D, #16.0 }

  *v604 = xmmword_1E42B5E60;
  *v605 = _Q1;
  LOBYTE(v606) = 0;
  *v601 = xmmword_1E4296CE0;
  *v602 = xmmword_1E42B5E70;
  LOBYTE(v603) = 0;
  *v598 = xmmword_1E42B5E80;
  *v599 = xmmword_1E42B5E90;
  LOBYTE(v600) = 0;
  *v595 = xmmword_1E429D540;
  v596 = xmmword_1E42B5EA0;
  LOBYTE(v597) = 0;
  v159 = OUTLINED_FUNCTION_0_123(v146, v152, v153, v154, v155, v156, v157, v158, v437, v472, 0x4024000000000000, 0, 0x4018000000000000, 0xC008000000000000, 0x4026000000000000, 0x4030000000000000, v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, 0);
  sub_1E3C2FCB8(v159, v160);
  OUTLINED_FUNCTION_9_73(v161, v162, v163, v164, v165, v166, v167, v168, v439, v474, v509, v546, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v177 = OUTLINED_FUNCTION_5_102(v169, v170, v171, v172, v173, v174, v175, v176, v440, v475, v510, v547, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v178(v177, 0);

  (v145)(v179);
  __dst[0] = 0uLL;
  __dst[1] = *v511;
  LOBYTE(__dst[2]) = 0;
  LOBYTE(v569) = 0;
  *v604 = xmmword_1E42B5EB0;
  v605[1] = 0;
  v605[0] = 0;
  LOBYTE(v606) = 0;
  *v601 = xmmword_1E42B5EB0;
  v602[1] = 0;
  v602[0] = 0;
  LOBYTE(v603) = 0;
  *v598 = xmmword_1E4297490;
  v599[1] = 0;
  v599[0] = 0;
  LOBYTE(v600) = 0;
  sub_1E3C3DE00(v27);
  OUTLINED_FUNCTION_10_72();
  v188 = OUTLINED_FUNCTION_1_127(v180, v181, v182, v183, v184, v185, v186, v187, v441, v476, v511[0], v511[1], 0, 0xC01C000000000000, 0, 0, v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  sub_1E3C2FCB8(v188, v189);
  OUTLINED_FUNCTION_9_73(v190, v191, v192, v193, v194, v195, v196, v197, v442, v477, v512, v548, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v206 = OUTLINED_FUNCTION_5_102(v198, v199, v200, v201, v202, v203, v204, v205, v443, v478, v513, v549, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v207(v206, 1);

  (v145)(v208);
  LOBYTE(__dst[0]) = 7;
  LOBYTE(v567[0]) = 1;
  OUTLINED_FUNCTION_20_56();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_7_101();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00(&unk_1F5D99680);
  OUTLINED_FUNCTION_15_71();
  OUTLINED_FUNCTION_2_101(v209, v210, v211, v212, v213, v214, v215, v216, v444, v479, v514, v550, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v225 = OUTLINED_FUNCTION_5_102(v217, v218, v219, v220, v221, v222, v223, v224, v445, v480, v515, v551, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v226(v225, 12);

  (v145)(v227);
  LOBYTE(__dst[0]) = 0;
  LOBYTE(v567[0]) = 1;
  OUTLINED_FUNCTION_20_56();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_7_101();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00(&unk_1F5D54CA8);
  OUTLINED_FUNCTION_15_71();
  OUTLINED_FUNCTION_2_101(v228, v229, v230, v231, v232, v233, v234, v235, v446, v481, v516, v552, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v244 = OUTLINED_FUNCTION_5_102(v236, v237, v238, v239, v240, v241, v242, v243, v447, v482, v517, v553, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v245(v244, 59);

  (v145)(v246);
  OUTLINED_FUNCTION_2_1();
  (*(v247 + 2056))(1, 0);

  (v145)(v248);
  OUTLINED_FUNCTION_2_1();
  (*(v249 + 2176))(4, 0);

  (v145)(v250);
  LOBYTE(__dst[0]) = 27;
  LOBYTE(v567[0]) = 21;
  LOBYTE(v604[0]) = 21;
  LOBYTE(v601[0]) = 15;
  LOBYTE(v598[0]) = 14;
  v251 = OUTLINED_FUNCTION_21_51();
  v252 = sub_1E3C3DE00(v251);
  LOBYTE(v588) = v595[0];
  v260 = OUTLINED_FUNCTION_0_123(v252, v253, v254, v255, v256, v257, v258, v259, v448, v483, v518, v554, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  sub_1E3C2FCB8(v260, v261);
  OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_14();
  v270 = OUTLINED_FUNCTION_5_102(v262, v263, v264, v265, v266, v267, v268, v269, v449, v484, v519, v555, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v271(v270, 48);

  (v145)(v272);
  *&__dst[0] = *sub_1E3E60364();
  v273 = *&__dst[0];
  v567[0] = *sub_1E3E5FDEC();
  v274 = sub_1E3280A90(0, &qword_1EE23AE20);
  v275 = v567[0];
  OUTLINED_FUNCTION_20_56();
  v601[0] = v604[0];
  sub_1E3C3DE00(v274);
  v595[0] = v598[0];
  sub_1E3C3DE00(v274);
  v276 = sub_1E3C3DE00(v274);
  OUTLINED_FUNCTION_2_101(v276, v277, v278, v279, v280, v281, v282, v283, v450, v485, v520, v556, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v588, v579[1], v580, v581, v582, v583, v584, v585, v574[0], v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v284 = __src[0];
  v285 = __src[1];
  v286 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v295 = OUTLINED_FUNCTION_5_102(v287, v288, v289, v290, v291, v292, v293, v294, v451, v486, v521, v557, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v296(v295, 21);

  *&__dst[0] = *sub_1E3E60548();
  v297 = *&__dst[0];
  sub_1E3C2FC98();
  v604[0] = v567[0];
  sub_1E3C3DE00(v274);
  v598[0] = v601[0];
  v298 = OUTLINED_FUNCTION_21_51();
  sub_1E3C3DE00(v298);
  v588 = v595[0];
  sub_1E3C3DE00(v274);
  v299 = sub_1E3C3DE00(v274);
  v307 = OUTLINED_FUNCTION_12_67(v299, v300, v301, v302, v303, v304, v305, v306, v452, v487, v522, v558, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v579[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v586, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  sub_1E3C2FCB8(v307, v308);
  v309 = __src[0];
  v310 = __src[1];
  v311 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v320 = OUTLINED_FUNCTION_5_102(v312, v313, v314, v315, v316, v317, v318, v319, v453, v488, v523, v559, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v321(v320, 24);

  memset(__dst, 0, 32);
  LOBYTE(__dst[2]) = 1;
  LOBYTE(v569) = 0;
  *v604 = xmmword_1E42B5EC0;
  *v605 = *v454;
  LOBYTE(v606) = 0;
  *v601 = xmmword_1E42B5ED0;
  *v602 = xmmword_1E42B5EE0;
  LOBYTE(v603) = 0;
  *v598 = xmmword_1E42A9D20;
  *v599 = xmmword_1E4298710;
  LOBYTE(v600) = 0;
  __asm { FMOV            V0.2D, #20.0 }

  *v595 = _Q0;
  v596 = _Q0;
  LOBYTE(v597) = 0;
  v331 = OUTLINED_FUNCTION_0_123(v323, v324, v325, v326, v327, v328, v329, v330, v454[0], v454[1], v524, v560, v454[0], v454[1], v454[0], v454[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, 0);
  sub_1E3C2FCB8(v331, v332);
  OUTLINED_FUNCTION_9_73(v333, v334, v335, v336, v337, v338, v339, v340, v455, v489, v525, v561, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v342 = *(v341 + 1600);
  v351 = OUTLINED_FUNCTION_5_102(v343, v344, v345, v346, v347, v348, v349, v350, v456, v490, v526, v562, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v352 = v342(v351, 1);
  memset(__dst, 0, 32);
  LOBYTE(__dst[2]) = 1;
  LOBYTE(v569) = 1;
  *v604 = 0u;
  *v605 = 0u;
  LOBYTE(v606) = 1;
  *v601 = 0u;
  *v602 = 0u;
  LOBYTE(v603) = 1;
  *v598 = *v527;
  *v599 = *v527;
  LOBYTE(v600) = 0;
  *v595 = 0u;
  v596 = 0u;
  LOBYTE(v597) = 1;
  v360 = OUTLINED_FUNCTION_0_123(v352, v353, v354, v355, v356, v357, v358, v359, v457, v491, v527[0], v527[1], 0, 0, 0, 0, v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, 0);
  sub_1E3C2FCB8(v360, v361);
  OUTLINED_FUNCTION_9_73(v362, v363, v364, v365, v366, v367, v368, v369, v458, v492, v528, v563, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, *&__dst[0]);
  v370 = OUTLINED_FUNCTION_18();
  v378 = OUTLINED_FUNCTION_5_102(v370, v371, v372, v373, v374, v375, v376, v377, v459, v493, v529, v564, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v342(v378, 0);
  if (sub_1E39DFFC8())
  {
    v379.n128_u64[0] = 26.0;
    v380 = j__OUTLINED_FUNCTION_7_78(v379);
  }

  else
  {
    sub_1E39537A8();
  }

  *v601 = v380;
  v601[1] = v381;
  v602[0] = v382;
  v602[1] = v383;
  LOBYTE(v603) = 0;
  sub_1E39537A8();
  v598[0] = v384;
  v598[1] = v385;
  v599[0] = v386;
  v599[1] = v387;
  LOBYTE(v600) = 0;
  if (sub_1E39DFFC8())
  {
    v388.n128_u64[0] = 26.0;
    v389 = j__OUTLINED_FUNCTION_7_78(v388);
  }

  else
  {
    sub_1E39537A8();
  }

  *__dst = v389;
  *(&__dst[0] + 1) = v390;
  *&__dst[1] = v391;
  *(&__dst[1] + 1) = v392;
  LOBYTE(__dst[2]) = 0;
  sub_1E3C2FC98();
  *v604 = *v567;
  *v605 = *v568;
  LOBYTE(v606) = v569;
  sub_1E3C3DE00(v27);
  OUTLINED_FUNCTION_10_72();
  sub_1E3C3DE00(v27);
  LOBYTE(v577) = v582;
  sub_1E3C2FCB8(v601, __src);
  OUTLINED_FUNCTION_9_73(v393, v394, v395, v396, v397, v398, v399, v400, v460, v494, v530, v565, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v579[0], v579[1], v580, v581, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, *&__dst[0]);
  v401 = OUTLINED_FUNCTION_18();
  v409 = OUTLINED_FUNCTION_5_102(v401, v402, v403, v404, v405, v406, v407, v408, v461, v495, v531, v566, v567[0], v567[1], v568[0], v568[1], v569, *(&v569 + 1), v570, v571, v572, v573, v574[0], v574[1], v575, v576, v577, v578, v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, __dst[0]);
  v342(v409, 17);
  OUTLINED_FUNCTION_9_2();
  (*(v410 + 552))(v604);
  v411 = v606;
  if (v606)
  {
    v412 = 0.0;
  }

  else
  {
    v412 = sub_1E3952BE8(*v604, *&v604[1], *v605, *&v605[1]);
  }

  (*(*v1 + 1304))(COERCE_DOUBLE(*&v412), v411 & 1);
  v413 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v414 = [objc_opt_self() blackColor];
  v415 = [v414 colorWithAlphaComponent_];

  [v413 setShadowColor_];
  [v413 setShadowOffset_];
  [v413 setShadowBlurRadius_];
  v416 = sub_1E3280A90(0, &unk_1EE23AD60);
  v532 = v413;
  sub_1E3C3DE00(v416);
  v588 = v595[0];
  sub_1E3C2FC98();
  v574[0] = v579[0];
  sub_1E3C3DE00(v416);
  v584 = v586;
  sub_1E3C3DE00(v416);
  v572 = v573;
  sub_1E3C3DE00(v416);
  v570 = v571;
  sub_1E3C2FCB8(&v588, __dst);
  v417 = __dst[0];
  v418 = __dst[1];
  v419 = __dst[2];
  *v567 = __dst[0];
  *v568 = __dst[1];
  v569 = __dst[2];
  v420 = OUTLINED_FUNCTION_18();
  (v342)(v567, 19, v420 & 1, v416);

  LOBYTE(v567[0]) = 4;
  LOBYTE(v595[0]) = 1;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_6_88();
  sub_1E3C3DE00(&unk_1F5D99680);
  OUTLINED_FUNCTION_15_71();
  sub_1E3C3DE00(&unk_1F5D99680);
  LOBYTE(v573) = v584;
  sub_1E3C3DE00(&unk_1F5D99680);
  LOBYTE(v571) = v572;
  sub_1E3C2FCB8(v567, __dst);
  LODWORD(v567[0]) = __dst[0];
  WORD2(v567[0]) = WORD2(__dst[0]);
  v421 = OUTLINED_FUNCTION_18();
  (v342)(v567, 12, v421 & 1, &unk_1F5D99680);
  __dst[0] = xmmword_1E42B5EF0;
  __dst[1] = xmmword_1E42B5EF0;
  LOBYTE(__dst[2]) = 0;
  (*(*v1 + 1792))(__dst);
  *v567 = xmmword_1E42B5F00;
  *v568 = xmmword_1E42B5F00;
  LOBYTE(v569) = 0;
  (*(*v1 + 1816))(v567);
  OUTLINED_FUNCTION_9_2();
  v423 = (*(v422 + 1760))();
  sub_1E3C37CBC(v423, 13);

  OUTLINED_FUNCTION_9_2();
  v425 = (*(v424 + 1736))();
  sub_1E3C37CBC(v425, 9);

  return v1;
}

uint64_t sub_1E3A6F398()
{
}

uint64_t sub_1E3A6F3D0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3A6F410()
{
  v0 = sub_1E3A6F3D0();

  return MEMORY[0x1EEE6BDC0](v0, 242, 7);
}

uint64_t sub_1E3A6F464()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for LeagueStandingsCardHeaderLayout();
    v1 = sub_1E37BD150();
    *(v0 + 104) = v1;
  }

  return v1;
}

id sub_1E3A6F4CC(uint64_t *a1)
{
  v1 = *a1;
  v16[0] = xmmword_1E42B5F70;
  v16[1] = xmmword_1E4298720;
  v17 = 0;
  (*(*v1 + 184))(v16);
  sub_1E39537A8();
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v15 = 0;
  v6 = *(*v1 + 560);
  v6(v14);
  result = [objc_opt_self() isIpadInterface];
  if (result)
  {
    sub_1E39537A8();
    v12[0] = v8;
    v12[1] = v9;
    v12[2] = v10;
    v12[3] = v11;
    v13 = 0;
    return (v6)(v12);
  }

  return result;
}

uint64_t sub_1E3A6F608(char a1)
{
  v2 = v1;
  *(v1 + 104) = 0;
  v4 = type metadata accessor for FlexibleGridLayout();
  v21[0] = sub_1E3B8B8C0();
  OUTLINED_FUNCTION_0_124();
  sub_1E41E1A64(v21, v5, v4, v23);

  *(v2 + 112) = *&v23[0];
  *(v2 + 120) = a1;
  v6 = sub_1E3C2F9A0();
  v7 = *(*v6 + 1712);
  swift_retain_n();
  v8 = v7();
  __asm { FMOV            V0.2D, #12.0 }

  v23[0] = _Q0;
  v23[1] = xmmword_1E4296C70;
  v24 = 0;
  (*(*v8 + 184))(v23);

  v15 = *(v7)(v14);
  (*(v15 + 312))(0x4046000000000000, 0);

  sub_1E3A6F8A8();
  sub_1E3952C94();
  v21[0] = v16;
  v21[1] = v17;
  v21[2] = v18;
  v21[3] = v19;
  v22 = 0;
  (*(*v6 + 184))(v21);

  return v6;
}

void sub_1E3A6F7F4()
{
  v1 = v0;
  *(v0 + 104) = 0;
  v2 = type metadata accessor for FlexibleGridLayout();
  v4 = sub_1E3B8B8C0();
  OUTLINED_FUNCTION_0_124();
  sub_1E41E1A64(&v4, v3, v2, &v5);

  *(v1 + 112) = v5;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3A6F8A8()
{
  v1 = (*(*v0 + 1712))();
  sub_1E3C37CBC(v1, 138);

  v2 = v0[14];

  return sub_1E3C37CBC(v2, 145);
}

uint64_t sub_1E3A6F940()
{
  v0 = sub_1E4207784();

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

uint64_t sub_1E3A6F994(char a1)
{
  if (a1)
  {
    return 0x746C7561666564;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_1E3A6F9D4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x746C7561666564;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x746C7561666564;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3A6FA8C()
{
  sub_1E4206014();
}

uint64_t sub_1E3A6FAFC()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3A6FB78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A6F940();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A6FBA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3A6F994(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3A6FBD4()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0();
  LOBYTE(__dst[0]) = 22;
  LOBYTE(v187[0]) = 25;
  LOBYTE(v215[0]) = 17;

  sub_1E3C2FC98();
  LOBYTE(v204[0]) = v209[0];
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v223) = v178;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v195) = LOBYTE(v217);
  sub_1E3C2FCB8(__dst, __src);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_7_102();
  v3(v2, 96);

  sub_1E3C8BE74();
  sub_1E3DEFBE8(1);

  *&__dst[0] = 0;

  v171 = sub_1E3E5FD88();
  *&v187[0] = *v171;
  v4 = sub_1E3755B54();
  v5 = *&v187[0];
  sub_1E3C2FC98();
  v209[0] = v215[0];
  sub_1E3C3DE00(v4);
  v6 = OUTLINED_FUNCTION_15_72();
  sub_1E3C3DE00(v6);
  v217 = *&v223;
  sub_1E3C3DE00(v4);
  v193[0] = *&v195;
  sub_1E3C2FCB8(__dst, __src);
  v7 = __src[0];
  v8 = __src[1];
  v9 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v10 = OUTLINED_FUNCTION_7_102();
  v11(v10, 29);

  OUTLINED_FUNCTION_5_0();
  if (*(v0 + 98))
  {
    sub_1E42079A4();
  }

  v217 = sub_1E3952CA4();
  v218 = v12;
  v219 = v13;
  v220 = v14;
  v221 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
  }

  *&__dst[0] = sub_1E3952CA4();
  *(&__dst[0] + 1) = v15;
  *&__dst[1] = v16;
  *(&__dst[1] + 1) = v17;
  LOBYTE(__dst[2]) = 0;
  sub_1E3952CA4();
  *(&v187[0] + 1) = v18;
  *&v187[1] = v19;
  *(&v187[1] + 1) = v20;
  LOBYTE(v187[2]) = 0;
  v215[0] = sub_1E3952CA4();
  v215[1] = v21;
  v215[2] = v22;
  v215[3] = v23;
  LOBYTE(v215[4]) = 0;
  v209[0] = sub_1E3952CA4();
  v209[1] = v24;
  v209[2] = v25;
  v209[3] = v26;
  LOBYTE(v209[4]) = 0;
  type metadata accessor for UIEdgeInsets();
  v28 = v27;
  sub_1E3C3DE00(v27);
  v178 = v204[0];
  v179 = v204[1];
  LOBYTE(v180) = v204[2];
  OUTLINED_FUNCTION_13_78();
  sub_1E3C2FCB8(v29, v30);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v31 = OUTLINED_FUNCTION_7_102();
  v32(v31, 0);

  LOBYTE(v215[0]) = 10;
  LOBYTE(v209[0]) = 11;
  LOBYTE(v204[0]) = 6;
  LOBYTE(v178) = 5;

  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v195) = v223;
  sub_1E3C2FCB8(&v195, __dst);
  OUTLINED_FUNCTION_3_107();
  OUTLINED_FUNCTION_14();
  v41 = OUTLINED_FUNCTION_9_74(v33, v34, v35, v36, v37, v38, v39, v40, v165, v171, v178, *(&v178 + 1), v179, *(&v179 + 1), v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, 10);
  v42(v41, 54);

  v213 = 2;
  v214 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_10_73();

    if ((&qword_1F5D54AF8 & 1) == 0)
    {
      v43 = 2;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v43 = 1;
LABEL_10:
  v211 = v43;
  v212 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_11_74();
    if ((&qword_1F5D54AF8 & 1) == 0)
    {
      v44 = 2;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v44 = 1;
LABEL_15:
  *&__dst[0] = v44;
  BYTE8(__dst[0]) = 0;
  *&v187[0] = 1;
  BYTE8(v187[0]) = 0;
  v209[0] = 1;
  LOBYTE(v209[1]) = 0;
  type metadata accessor for SymbolScale(0);
  v46 = v45;
  sub_1E3C3DE00(v45);
  *&v178 = *&v204[0];
  BYTE8(v178) = BYTE8(v204[0]);
  OUTLINED_FUNCTION_13_78();
  sub_1E3C2FCB8(v47, v48);
  memcpy(__dst, v215, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v49 = OUTLINED_FUNCTION_7_102();
  v50(v49, 91);

  OUTLINED_FUNCTION_5_0();
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_10_73();

    if (v46)
    {
      v51 = 22;
    }

    else
    {
      v51 = 19;
    }
  }

  else
  {

    v51 = 22;
  }

  LOBYTE(v187[0]) = v51;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_11_74();
    if (v46)
    {
      v52 = 22;
    }

    else
    {
      v52 = 19;
    }
  }

  else
  {

    v52 = 22;
  }

  LOBYTE(v209[0]) = v52;
  LOBYTE(v204[0]) = 25;
  LOBYTE(v178) = 15;
  LOBYTE(v223) = 19;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v193[0]) = LOBYTE(v195);
  sub_1E3C2FCB8(v193, __dst);
  OUTLINED_FUNCTION_3_107();
  OUTLINED_FUNCTION_14();
  v61 = OUTLINED_FUNCTION_9_74(v53, v54, v55, v56, v57, v58, v59, v60, v166, v172, v178, *(&v178 + 1), v179, *(&v179 + 1), v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187[0]);
  v62(v61, 48);

  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_10_73();

    if (&qword_1F5D549D8)
    {
      v63 = 5;
    }

    else
    {
      v63 = 3;
    }
  }

  else
  {

    v63 = 5;
  }

  LOBYTE(v187[0]) = v63;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_1_128();
    OUTLINED_FUNCTION_11_74();
    if (&qword_1F5D549D8)
    {
      v64 = 5;
    }

    else
    {
      v64 = 3;
    }
  }

  else
  {

    v64 = 5;
  }

  LOBYTE(v209[0]) = v64;
  sub_1E3C3DE00(&unk_1F5D54B88);
  LOBYTE(v178) = v204[0];
  sub_1E3C3DE00(&unk_1F5D54B88);
  LOBYTE(v195) = v223;
  sub_1E3C3DE00(&unk_1F5D54B88);
  LOBYTE(v190) = v193[0];
  sub_1E3C3DE00(&unk_1F5D54B88);
  LOBYTE(v210) = v188[0];
  sub_1E3C2FCB8(&v178, __dst);
  OUTLINED_FUNCTION_3_107();
  OUTLINED_FUNCTION_14();
  v73 = OUTLINED_FUNCTION_9_74(v65, v66, v67, v68, v69, v70, v71, v72, v167, v173, v178, *(&v178 + 1), v179, *(&v179 + 1), v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187[0]);
  v74(v73, 55);

  LOBYTE(v187[0]) = 5;

  sub_1E3C2FC98();
  LOBYTE(v204[0]) = v209[0];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v223) = v178;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v193[0]) = LOBYTE(v195);
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v188[0]) = v190;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v207) = v210;
  sub_1E3C2FCB8(v187, __dst);
  OUTLINED_FUNCTION_3_107();
  OUTLINED_FUNCTION_14();
  v83 = OUTLINED_FUNCTION_9_74(v75, v76, v77, v78, v79, v80, v81, v82, v168, v174, v178, *(&v178 + 1), v179, *(&v179 + 1), v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187[0]);
  v84(v83, 54);

  sub_1E3C8BE74();
  sub_1E3DEFBE8(1);

  *&v187[0] = 0;
  v209[0] = *v175;
  v85 = v209[0];

  v86 = v85;
  sub_1E3C2FC98();
  v87 = OUTLINED_FUNCTION_15_72();
  sub_1E3C3DE00(v87);
  v195 = *&v223;
  sub_1E3C3DE00(v4);
  *&v190 = v193[0];
  sub_1E3C3DE00(v4);
  v210 = *&v188[0];
  sub_1E3C2FCB8(v187, __dst);
  v88 = __dst[0];
  v89 = __dst[1];
  v90 = __dst[2];
  v187[0] = __dst[0];
  v187[1] = __dst[1];
  v187[2] = __dst[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v99 = OUTLINED_FUNCTION_9_74(v91, v92, v93, v94, v95, v96, v97, v98, v169, v175, v178, *(&v178 + 1), v179, *(&v179 + 1), v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187[0]);
  v100(v99, 29);

  OUTLINED_FUNCTION_5_0();
  v207 = 0x4010000000000000;
  v208 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_12_68();
    sub_1E42079A4();
    OUTLINED_FUNCTION_10_73();

    if ((BYTE8(v90) & 1) == 0)
    {
      v101 = 0x4010000000000000;
      goto LABEL_40;
    }
  }

  else
  {

    OUTLINED_FUNCTION_12_68();
  }

  v101 = 0x4008000000000000;
LABEL_40:
  v205 = v101;
  v206 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
    OUTLINED_FUNCTION_11_74();
    if ((BYTE8(v90) & 1) == 0)
    {
      v102 = 0x4010000000000000;
      goto LABEL_45;
    }
  }

  else
  {
  }

  v102 = 0x4008000000000000;
LABEL_45:
  *&__dst[0] = v102;
  BYTE8(__dst[0]) = 0;
  *&v187[0] = 0x4018000000000000;
  BYTE8(v187[0]) = 0;
  *&v204[0] = 0x4008000000000000;
  BYTE8(v204[0]) = 0;
  v103 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  *&v223 = v178;
  BYTE8(v223) = BYTE8(v178);
  OUTLINED_FUNCTION_13_78();
  sub_1E3C2FCB8(v104, v105);
  memcpy(__dst, v209, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v106 = OUTLINED_FUNCTION_7_102();
  v107(v106, 6);

  v202 = 0x403A000000000000;
  v203 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
    OUTLINED_FUNCTION_10_73();

    if ((v103 & 1) == 0)
    {
      v108 = 0x403A000000000000;
      goto LABEL_50;
    }
  }

  else
  {
  }

  v108 = 0x4036000000000000;
LABEL_50:
  v200 = v108;
  v201 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
    OUTLINED_FUNCTION_11_74();
    if ((v103 & 1) == 0)
    {
      v109 = 0x403A000000000000;
      goto LABEL_55;
    }
  }

  else
  {
  }

  v109 = 0x4036000000000000;
LABEL_55:
  *&__dst[0] = v109;
  BYTE8(__dst[0]) = 0;
  *&v187[0] = 0x4041000000000000;
  BYTE8(v187[0]) = 0;
  *&v178 = 0x4032000000000000;
  BYTE8(v178) = 0;
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v195 = *&v223;
  LOBYTE(v196) = BYTE8(v223);
  OUTLINED_FUNCTION_13_78();
  sub_1E3C2FCB8(v110, v111);
  memcpy(__dst, v204, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v112 = OUTLINED_FUNCTION_7_102();
  v113(v112, 2);

  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
    OUTLINED_FUNCTION_10_73();
  }

  else
  {
  }

  v195 = sub_1E3952CA4();
  v196 = v114;
  v197 = v115;
  v198 = v116;
  v199 = 0;
  if (*(v0 + 98))
  {
    OUTLINED_FUNCTION_2_102();
  }

  *&v187[0] = sub_1E3952CA4();
  *(&v187[0] + 1) = v117;
  *&v187[1] = v118;
  *(&v187[1] + 1) = v119;
  LOBYTE(v187[2]) = 0;
  v178 = 0uLL;
  v179 = xmmword_1E42B5FC0;
  LOBYTE(v180) = 0;
  *&v223 = sub_1E3952CA4();
  *(&v223 + 1) = v120;
  *&v224 = v121;
  *(&v224 + 1) = v122;
  v225 = 0;
  v193[0] = COERCE_ID(sub_1E3952CA4());
  v193[1] = v123;
  v193[2] = v124;
  v193[3] = v125;
  v194 = 0;
  sub_1E3C3DE00(v28);
  v188[0] = v190;
  v188[1] = v191;
  v189 = v192;
  sub_1E3C2FCB8(v188, __dst);
  memcpy(v187, __dst, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v134 = OUTLINED_FUNCTION_9_74(v126, v127, v128, v129, v130, v131, v132, v133, v170, v176, v178, *(&v178 + 1), v179, *(&v179 + 1), v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187[0]);
  v135(v134, 0);

  v136 = *(v0 + 120);
  v137 = *(MEMORY[0x1E69DDCE0] + 16);
  v223 = *MEMORY[0x1E69DDCE0];
  v224 = v137;
  v225 = 0;
  v138 = *(*v136 + 184);

  v138(&v223);

  *&v178 = *sub_1E3E60364();
  v139 = v178;
  v193[0] = *sub_1E3E5FDEC();
  v140 = v193[0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_17_61();
  v141 = OUTLINED_FUNCTION_14_80();
  sub_1E3C3DE00(v141);
  OUTLINED_FUNCTION_16_65();
  OUTLINED_FUNCTION_8_72();
  sub_1E3C2FCB8(v142, v143);
  v144 = v187[0];
  v145 = v187[1];
  v146 = v187[2];
  v178 = v187[0];
  v179 = v187[1];
  v180 = v187[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v147 + 1600))(&v178, 21, v148 & 1, v4);

  *&v178 = 0;
  v193[0] = *v177;
  v149 = v193[0];

  v150 = v149;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_17_61();
  v151 = OUTLINED_FUNCTION_14_80();
  sub_1E3C3DE00(v151);
  OUTLINED_FUNCTION_16_65();
  OUTLINED_FUNCTION_8_72();
  sub_1E3C2FCB8(v152, v153);
  v154 = v187[0];
  v155 = v187[1];
  v156 = v187[2];
  v178 = v187[0];
  v179 = v187[1];
  v180 = v187[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v157 + 1600))(&v178, 29, v158 & 1, v4);

  v159 = *(v1 + 120);

  v160 = *sub_1E3E603B8();
  v161 = *(*v159 + 752);
  v162 = v160;
  v161(v160);

  v163 = *(**(v1 + 120) + 1728);

  v163(0);
}

uint64_t sub_1E3A70DC8(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 98);
  *(v1 + 98) = a1 & 1;
  OUTLINED_FUNCTION_5_0();
  if (*(v1 + 98))
  {
    v4 = 0x746C7561666564;
  }

  else
  {
    v4 = 0x6C6C616D73;
  }

  if (*(v1 + 98))
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (v3)
  {
    v6 = 0x746C7561666564;
  }

  else
  {
    v6 = 0x6C6C616D73;
  }

  if (v3)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      return sub_1E3A6FBD4();
    }
  }

  return result;
}

uint64_t sub_1E3A70EF8(char a1)
{
  *(v1 + 98) = 1;
  type metadata accessor for ImageLayout();
  *(v1 + 104) = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  *(v1 + 112) = sub_1E383BCC0();
  type metadata accessor for ProgressLayout();
  *(v1 + 120) = sub_1E3FB3220();
  v3 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_14_0();
  *(v3 + 98) = a1 & 1;

  sub_1E3A6FBD4();
  sub_1E3A70FA8();

  return v3;
}

uint64_t sub_1E3A70FA8()
{
  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v0, 39);

  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v1, 23);

  OUTLINED_FUNCTION_15_0();

  sub_1E3C37CBC(v2, 115);
}

uint64_t sub_1E3A71074()
{
  *(v0 + 98) = 1;
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  *(v0 + 112) = sub_1E383BCC0();
  type metadata accessor for ProgressLayout();
  *(v0 + 120) = sub_1E3FB3220();
  v1 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 98) = 1;

  sub_1E3A6FBD4();
  sub_1E3A70FA8();

  return v1;
}

uint64_t sub_1E3A7111C()
{
  v0 = sub_1E37DB800();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1E3A71150()
{
  result = qword_1ECF316C0;
  if (!qword_1ECF316C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF316C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaybackStatusLayout.Size(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E3A712A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 528);

  v6(v7);

  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_40_13();
  sub_1E32752B0(v8, v9);
  OUTLINED_FUNCTION_45_26();

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_35_30();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A71434()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 336);

  v6(v7);

  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_40_13();
  sub_1E32752B0(v8, v9);
  OUTLINED_FUNCTION_45_26();

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_35_30();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A715C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = (v3 ^ 1) & v1;
  v20 = sub_1E324FBDC();
  (*(v14 + 16))(v18, v20, v12);
  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();
  if (os_log_type_enabled(v21, v22))
  {
    v29 = v11;
    v23 = v9;
    v24 = v7;
    v25 = v5;
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = v19 & 1;
    _os_log_impl(&dword_1E323F000, v21, v22, "LibDocumentViewInteractor:: showAccountSettingsButton: %{BOOL}d", v26, 8u);
    v27 = v26;
    v5 = v25;
    v7 = v24;
    v9 = v23;
    v11 = v29;
    MEMORY[0x1E69143B0](v27, -1, -1);
  }

  (*(v14 + 8))(v18, v12);

  sub_1E3B705C4(v11, v9, v7, v5, v19 & 1);
  OUTLINED_FUNCTION_8();
  (*(v28 + 200))();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A717B0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_27_33();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarTitle);
    OUTLINED_FUNCTION_8();
    v4 = *(v3 + 312);

    v4(v5);
    OUTLINED_FUNCTION_36_28();
    OUTLINED_FUNCTION_33_35();
    sub_1E3A715C4();

    sub_1E324FBDC();
    v6 = OUTLINED_FUNCTION_30_37();
    v7(v6);
    v8 = sub_1E41FFC94();
    v9 = sub_1E4206814();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      v10[1] = v2;
      OUTLINED_FUNCTION_44_28(&dword_1E323F000, v11, v12, "LibDocumentViewInteractor:: on receive isLibraryOnlyCountry %{BOOL}d");
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    else
    {
    }

    v13 = OUTLINED_FUNCTION_13_8();
    v14(v13);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A719A8()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_27_33();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarTitle);
    OUTLINED_FUNCTION_8();
    v4 = *(v3 + 504);

    v4(v5);
    OUTLINED_FUNCTION_36_28();
    OUTLINED_FUNCTION_33_35();
    sub_1E3A715C4();

    sub_1E324FBDC();
    v6 = OUTLINED_FUNCTION_30_37();
    v7(v6);
    v8 = sub_1E41FFC94();
    v9 = sub_1E4206814();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      v10[1] = v2;
      OUTLINED_FUNCTION_44_28(&dword_1E323F000, v11, v12, "LibDocumentViewInteractor:: on receive isOffline %{BOOL}d");
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    else
    {
    }

    v13 = OUTLINED_FUNCTION_13_8();
    v14(v13);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A71BD0()
{
}

uint64_t sub_1E3A71C5C()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3A71D24()
{
  OUTLINED_FUNCTION_31_1();
  v64 = v0;
  v66 = v1;
  v77 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __dst = v11;
  type metadata accessor for Router();
  OUTLINED_FUNCTION_6_89();
  sub_1E3A74D3C(v12, v13);
  v14 = sub_1E4201754();
  v75 = v15;
  v76 = v14;
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_5_103();
  sub_1E3A74D3C(v16, v17);
  v74 = sub_1E4201754();
  v62 = v18;
  v81 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316D0);
  sub_1E42038E4();
  v57 = v115;
  v58 = v114;
  type metadata accessor for LibDataSourceManager();
  OUTLINED_FUNCTION_15_73();
  sub_1E3A74D3C(v19, v20);

  v70 = sub_1E42010C4();
  v73 = v21;
  type metadata accessor for LibMenuItem();
  sub_1E3A74D3C(&qword_1ECF316C8, type metadata accessor for LibMenuItem);

  v22 = sub_1E42010C4();
  v71 = v23;
  v72 = v22;
  if (sub_1E38BBD0C())
  {
    type metadata accessor for CollectionEditableModel(0);
    v24 = OUTLINED_FUNCTION_51_1();
    sub_1E3845488(v24 & 1);
    j__OUTLINED_FUNCTION_18();
    sub_1E3AC5824();
    v60 = v26;
    v61 = v25;
    v55 = v27;
    v59 = v28;
  }

  else
  {
    v29 = sub_1E3AC5818();
    v30 = v29[1];
    v61 = *v29;
    v55 = *(v29 + 16);
    v59 = v29[3];

    v60 = v30;
  }

  if (v6)
  {
    v68 = v6;
    v69 = sub_1E3A7697C;
  }

  else
  {

    v68 = v8;
    v69 = sub_1E3A724B0;
  }

  v113 = 0;
  type metadata accessor for LibCommons();

  v31 = sub_1E41A3164();
  v33 = v32;
  type metadata accessor for Metrics();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v35;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v31;
  *(inited + 56) = v33;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v37;
  *(inited + 120) = v36;
  *(inited + 96) = v31;
  *(inited + 104) = v33;

  v38 = sub_1E4205CB4();
  v56 = sub_1E3BA5560(v38, 1);
  if (v77)
  {
    v39 = v4;
  }

  else
  {
    v40 = (*(*v8 + 200))();
    v77 = v41;
    if (v41)
    {
      v39 = v40;
    }

    else
    {
      v39 = v8[5];
      v77 = v8[6];
    }
  }

  v65 = v64 & 1;
  v67 = v66 & 1;
  v42 = v8;
  v43 = v8[9];
  v44 = v42[10];
  type metadata accessor for LibDocumentViewInteractor();
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_showcaseValue;
  type metadata accessor for ShowcaseValue();

  *(v45 + v46) = sub_1E40AAAB8();
  v47 = OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_viewMetricsRecorder;
  type metadata accessor for ViewMetricsRecorder();
  *(v45 + v47) = sub_1E3FEFA68();
  v48 = OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarTitle;
  *(v45 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_cancellables) = MEMORY[0x1E69E7CD0];
  v49 = OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarId;
  *(v45 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_dataSourceManager) = v10;
  v50 = (v45 + v49);
  *v50 = v43;
  v50[1] = v44;
  v51 = (v45 + v48);
  *v51 = v39;
  v51[1] = v77;
  type metadata accessor for NavigationBarObservableModel(0);

  *(v45 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarObservableModel) = sub_1E39EE6D8();
  v52 = sub_1E3B500B4();

  sub_1E3A712A4();
  sub_1E3A71434();

  v111 = 0;
  v114 = v70;
  v115 = v73;
  v116 = v72;
  v117 = v71;
  v118 = v76;
  v119 = v75;
  v120 = v74;
  v121 = v62;
  v122 = v69;
  v123 = v68;
  v78 = v113;
  v124 = v113;
  *v125 = *v112;
  *&v125[3] = *&v112[3];
  v126 = v58;
  v127 = v57;
  v128 = sub_1E38074D0;
  v129 = v52;
  v130 = 0;
  *&v131[3] = *&v110[3];
  *v131 = *v110;
  v132 = v61;
  v133 = v60;
  v134 = v55 & 1;
  *v135 = *v109;
  *&v135[3] = *&v109[3];
  v136 = v59;
  v137 = v65;
  *&v138[3] = *&v108[3];
  *v138 = *v108;
  v139 = v56;
  v140 = v67;
  v141 = v57;
  v142 = v58;

  sub_1E3A7254C();
  sub_1E42038E4();

  sub_1E325F6F0(&v142, &qword_1ECF316D0);
  sub_1E325F6F0(&v141, &qword_1ECF316D8);
  v53 = v81;
  v54 = v82;
  __src[0] = v70;
  __src[1] = v73;
  __src[2] = v72;
  __src[3] = v71;
  __src[4] = v76;
  __src[5] = v75;
  __src[6] = v74;
  __src[7] = v62;
  __src[8] = v69;
  __src[9] = v68;
  LOBYTE(__src[10]) = v78;
  HIDWORD(__src[10]) = *&v112[3];
  *(&__src[10] + 1) = *v112;
  __src[11] = v81;
  __src[12] = v82;
  __src[13] = sub_1E38074D0;
  __src[14] = v52;
  LOBYTE(__src[15]) = 0;
  HIDWORD(__src[15]) = *&v110[3];
  *(&__src[15] + 1) = *v110;
  __src[16] = v61;
  __src[17] = v60;
  LOBYTE(__src[18]) = v55 & 1;
  HIDWORD(__src[18]) = *&v109[3];
  *(&__src[18] + 1) = *v109;
  __src[19] = v59;
  LOBYTE(__src[20]) = v65;
  HIDWORD(__src[20]) = *&v108[3];
  *(&__src[20] + 1) = *v108;
  __src[21] = v56;
  LOBYTE(__src[22]) = v67;
  v81 = v70;
  v82 = v73;
  v83 = v72;
  v84 = v71;
  v85 = v76;
  v86 = v75;
  v87 = v74;
  v88 = v62;
  v89 = v69;
  v90 = v68;
  v91 = v78;
  *&v92[3] = *&v112[3];
  *v92 = *v112;
  v93 = v53;
  v94 = v54;
  v95 = sub_1E38074D0;
  v96 = v52;
  v97 = 0;
  *&v98[3] = *&v110[3];
  *v98 = *v110;
  v99 = v61;
  v100 = v60;
  v101 = v55 & 1;
  *&v102[3] = *&v109[3];
  *v102 = *v109;
  v103 = v59;
  v104 = v65;
  *&v105[3] = *&v108[3];
  *v105 = *v108;
  v106 = v56;
  v107 = v67;
  sub_1E37DABC0(__src, v79);
  sub_1E3A72A50(&v81);
  memcpy(__dst, __src, 0xB1uLL);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A724B0()
{
  type metadata accessor for Route(0);

  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_67_0();
  return sub_1E3F4C85C();
}

uint64_t type metadata accessor for LibDocumentViewInteractor()
{
  result = qword_1EE296490;
  if (!qword_1EE296490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E3A7254C()
{
  v1 = v0;
  OUTLINED_FUNCTION_111();
  if ((*(v2 + 504))() & 1) != 0 || (OUTLINED_FUNCTION_111(), ((*(v3 + 312))()) || (OUTLINED_FUNCTION_111(), ((*(v4 + 552))()))
  {
    OUTLINED_FUNCTION_111();
    v6 = (*(v5 + 456))();
    v7 = sub_1E32AE9B0(v6);

    if (v7 <= 1)
    {
      v8 = *(v0 + 24);
      if (sub_1E38BBD0C())
      {
        OUTLINED_FUNCTION_12_6();
        if (((*(v9 + 256))() & 1) != 0 || (OUTLINED_FUNCTION_12_6(), (*(v10 + 312))(), v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158), OUTLINED_FUNCTION_0_32(), sub_1E32752B0(v12, v13), v14 = sub_1E4149048(v11), , (v14 & 1) == 0))
        {
          OUTLINED_FUNCTION_12_6();
          (*(v21 + 208))(0, 0);
        }

        else
        {
          result = [objc_opt_self() sharedInstance];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v16 = result;
          v17 = sub_1E3741090(0x5952415242494CLL, 0xE700000000000000, result);
          v19 = v18;

          OUTLINED_FUNCTION_12_6();
          (*(v20 + 208))(v17, v19);
        }

        OUTLINED_FUNCTION_12_6();
        v23 = (*(v22 + 200))();
        if (v24)
        {
          v25 = v23;
          v26 = v24;
        }

        else
        {
          v25 = v8[5];
          v26 = v8[6];
        }

        type metadata accessor for LibDocumentViewInteractor();
        OUTLINED_FUNCTION_3_108();
        sub_1E3A74D3C(v27, v28);
        v29 = sub_1E4200BC4();
        v31 = v8[9];
        v30 = v8[10];
        v32 = (v29 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarId);
        *v32 = v31;
        v32[1] = v30;

        v33 = (v29 + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarTitle);
        *v33 = v25;
        v33[1] = v26;

        OUTLINED_FUNCTION_36();
        v35 = *(v34 + 504);

        v35(v36);

        OUTLINED_FUNCTION_36();
        v38 = *(v37 + 312);

        v38(v39);

        sub_1E3A715C4();
      }
    }
  }

  type metadata accessor for LibMenuItem();
  v40 = *(v1 + 24);
  if (sub_1E3A8BA7C(v40[32]))
  {
    v41 = (*(*v40 + 312))();
    v42 = v41 ? v41 : MEMORY[0x1E69E7CC0];
    v43 = sub_1E32AE9B0(v42);

    if (!v43)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_111();
  (*(v44 + 696))();
  OUTLINED_FUNCTION_67_0();
  sub_1E3B70934();
  v46 = v45;

  return v46;
}

uint64_t sub_1E3A72A80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v93 - v4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v114 = v7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v115 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF316F8);
  OUTLINED_FUNCTION_0_10();
  v96 = v11;
  v97 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v95 = v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v99 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31708);
  OUTLINED_FUNCTION_0_10();
  v102 = v17;
  v103 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v101 = v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31710);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v106 = v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31718);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v104 = v23;
  v24 = sub_1E4202314();
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_5();
  v27 = (v26 - v25);
  v94 = type metadata accessor for NavigationBarItems(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = *(v2 + 104);
  v33 = *(v2 + 112);
  v34 = *(v2 + 120);
  v35 = type metadata accessor for LibDocumentViewInteractor();
  OUTLINED_FUNCTION_3_108();
  sub_1E3A74D3C(v36, v37);
  v108 = v32;
  v109 = v35;
  v111 = v33;
  v110 = v34;
  sub_1E4200BC4();

  if ([objc_opt_self() isPad] && (*(v2 + 176) & 1) != 0)
  {
    sub_1E42022D4();
  }

  else if (*(v2 + 160))
  {
    sub_1E42022E4();
  }

  else
  {
    sub_1E42022F4();
  }

  j__OUTLINED_FUNCTION_18();
  v113 = v31;
  sub_1E39EFBA8();
  *v5 = sub_1E4201D44();
  *(v5 + 1) = 0;
  v5[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31728);
  sub_1E3A73CA0();
  OUTLINED_FUNCTION_13_79();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_47_24(v38);
  v39 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31730) + 36)];
  *v39 = sub_1E3A74774;
  v39[1] = v27;
  v39[2] = 0;
  v39[3] = 0;
  OUTLINED_FUNCTION_13_79();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_47_24(v40);
  v41 = &v5[*(v117 + 36)];
  *v41 = 0;
  *(v41 + 1) = 0;
  *(v41 + 2) = sub_1E3A7477C;
  *(v41 + 3) = v27;
  v42 = *(v2 + 32);
  if (v42)
  {
    OUTLINED_FUNCTION_50_20();
    OUTLINED_FUNCTION_50_20();
    type metadata accessor for Route(0);
    v117 = v2;
    OUTLINED_FUNCTION_12_69();
    sub_1E3A74D3C(v43, v44);
    v45 = v42;
    v46 = sub_1E4200BC4();
    sub_1E4200BC4();

    v47 = sub_1E379D97C(v45, v46);
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v5;
    v55 = v114;
    sub_1E3741EA0(v54, v114, &qword_1ECF316E0);
    v56 = (v55 + *(v112 + 36));
    *v56 = v47;
    v56[1] = v49;
    v56[2] = v51;
    v56[3] = v53;
    v57 = v117;
    v58 = sub_1E4203DA4();
    v112 = v59;
    v60 = v115 + *(v116 + 36);
    *v60 = sub_1E4203DA4();
    *(v60 + 8) = v61;
    v62 = *(v57 + 24);
    v63 = v62[32];
    v118[0] = v63;
    LOBYTE(v120[0]) = 13;
    sub_1E37DA4B8();
    if (OUTLINED_FUNCTION_49_23())
    {
      goto LABEL_9;
    }

    v118[0] = v63;
    LOBYTE(v120[0]) = 0;
    if (OUTLINED_FUNCTION_49_23())
    {
      OUTLINED_FUNCTION_8();
      if (((*(v89 + 216))() & 1) == 0)
      {
LABEL_9:
        v64 = 0.0;
        if ((*(*v62 + 464))())
        {
          v65 = 1.0;
        }

        else
        {
          v65 = 0.0;
        }

        goto LABEL_12;
      }
    }

    else if (((*(*v62 + 464))() & 1) == 0 || ((*(*v62 + 256))() & 1) == 0)
    {
      goto LABEL_9;
    }

    v65 = 0.0;
    v64 = 1.0;
LABEL_12:
    v66 = objc_opt_self();
    v67 = [v66 sharedInstance];
    if (v67)
    {
      v68 = v67;
      v111 = v58;
      v69 = sub_1E3741090(0xD000000000000015, 0x80000001E4267120, v67);
      v71 = v70;

      v72 = [v66 sharedInstance];
      if (v72)
      {
        v73 = v72;
        v74 = sub_1E3741090(0xD000000000000017, 0x80000001E4267100, v72);
        v76 = v75;

        sub_1E39FA1A8(v69, v71, v74, v76, v121);
        v77 = v121[0];
        v78 = v121[1];
        v79 = v121[2];
        v80 = v121[3];
        LOBYTE(v76) = v122;
        memset(v120, 0, 40);
        OUTLINED_FUNCTION_8();
        v82 = v62[32];
        v83 = (*(v81 + 312))();
        OUTLINED_FUNCTION_36();
        v85 = (*(v84 + 872))();
        sub_1E414B880(v120, v82, v83 & 1, v85 & 1, v118);
        v119 = v65;
        sub_1E3743538(v118, v120, &qword_1ECF31798);
        *(v60 + 16) = v77;
        *(v60 + 24) = v78;
        *(v60 + 32) = v79;
        *(v60 + 40) = v80;
        *(v60 + 48) = v76;
        *(v60 + 56) = v64;
        sub_1E3743538(v120, v60 + 64, &qword_1ECF31798);

        sub_1E380E99C();
        sub_1E325F6F0(v118, &qword_1ECF31798);
        sub_1E325F6F0(v120, &qword_1ECF31798);

        sub_1E3264CE0();
        *(v60 + 160) = sub_1E4202744();
        v86 = v112;
        *(v60 + 168) = v111;
        *(v60 + 176) = v86;
        sub_1E3741EA0(v114, v115, &qword_1ECF316E8);
        v87 = sub_1E3A748F4();
        v88 = sub_1E3A74D3C(qword_1EE2770F0, type metadata accessor for NavigationBarItems);
        sub_1E39EF294(v113, v116, v94, v87, v88);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_50_20();
  type metadata accessor for Router();
  OUTLINED_FUNCTION_6_89();
  sub_1E3A74D3C(v90, v91);
  result = sub_1E4201744();
  __break(1u);
  return result;
}

void sub_1E3A73850()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0D8);
  OUTLINED_FUNCTION_0_10();
  v19 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = v2[3];
  OUTLINED_FUNCTION_8();
  v7 = (*(v6 + 856))(v5);
  (*(*v5 + 440))(v7);
  v8 = v2[4];
  if (v8)
  {
    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_12_69();
    sub_1E3A74D3C(v9, v10);
    v11 = v8;
    sub_1E4200BC4();
    (*((*MEMORY[0x1E69E7D40] & *v11) + 0x198))();

    (*(*v5 + 336))(v12);
    OUTLINED_FUNCTION_13_79();
    v13 = swift_allocObject();
    memcpy((v13 + 16), v2, 0xB1uLL);
    sub_1E37DABC0(v2, &v21);
    OUTLINED_FUNCTION_11_9();
    sub_1E32752B0(v14, v15);
    sub_1E42006A4();

    (*(v19 + 8))(v0, v20);
    OUTLINED_FUNCTION_36();
    (*(v16 + 296))();
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for Router();
    OUTLINED_FUNCTION_6_89();
    sub_1E3A74D3C(v17, v18);
    OUTLINED_FUNCTION_6_46();
    __break(1u);
  }
}

uint64_t sub_1E3A73B90(unint64_t *a1, unint64_t *a2)
{
  if (*a2 && (v2 = *a1) != 0 && (v3 = sub_1E32AE9B0(*a2), v3 < sub_1E32AE9B0(v2)) && (v4 = sub_1E38BBD0C(), (v4 & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](v4);
    sub_1E4203E44();
    sub_1E4200FE4();
  }

  else
  {
    sub_1E3A7254C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790);
    return sub_1E4203904();
  }
}

void sub_1E3A73CA0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v109 = v2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317A0);
  OUTLINED_FUNCTION_0_10();
  v100 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v5);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317A8);
  OUTLINED_FUNCTION_0_10();
  v104 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317C0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317C8);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v86 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v86 - v26;
  v111 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790);
  sub_1E42038F4();
  v28 = v114;
  if (v114)
  {
    v92 = v24;
    v94 = v15;
    v95 = v23;
    v96 = v20;
    v97 = v27;
    v98 = v13;
    v99 = v18;
    v29 = *(v1 + 136);
    v90 = *(v1 + 128);
    v89 = v29;
    v88 = *(v1 + 144);
    v87 = *(v1 + 152);
    v93 = v1;
    type metadata accessor for LibDocumentViewInteractor();
    OUTLINED_FUNCTION_3_108();
    sub_1E3A74D3C(v30, v31);
    v32 = *(OUTLINED_FUNCTION_18_51() + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_showcaseValue);

    v33 = *(OUTLINED_FUNCTION_18_51() + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_navBarObservableModel);

    v34 = *(OUTLINED_FUNCTION_18_51() + OBJC_IVAR____TtC8VideosUIP33_E9634F7CD16D56446818D5104BADD44725LibDocumentViewInteractor_viewMetricsRecorder);

    v35 = v102;
    v36 = v87;
    sub_1E3E85A74(v28, v90, v89, v88, v87, v32, v33, v34, v102, 0);

    v38 = v28;
    v39 = v36;
    if (v36)
    {
      v40 = (*(*v36 + 456))(v37);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB08);
      OUTLINED_FUNCTION_46_24();
      OUTLINED_FUNCTION_19_58(&qword_1ECF317E8, &qword_1ECF317A0);
      v40 = OUTLINED_FUNCTION_34_35();
      v49 = OUTLINED_FUNCTION_13_8();
      v50(v49);
    }

    v51 = v106;
    v52 = swift_allocObject();
    *(v52 + 16) = v38;
    v53 = v93;
    memcpy((v52 + 24), v93, 0xB1uLL);
    (*(v104 + 32))(v51, v35, v105);
    v54 = v103;
    *(v51 + *(v103 + 52)) = v40;
    v55 = (v51 + *(v54 + 56));
    *v55 = sub_1E3A753FC;
    v55[1] = v52;
    v56 = v110;
    v91 = v38;
    if (v39)
    {
      v57 = *(*v39 + 496);

      v58 = OUTLINED_FUNCTION_51_20();
      v59 = v57(v58);
    }

    else
    {

      OUTLINED_FUNCTION_51_20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB08);
      OUTLINED_FUNCTION_46_24();
      OUTLINED_FUNCTION_19_58(&qword_1ECF317E8, &qword_1ECF317A0);
      v59 = OUTLINED_FUNCTION_34_35();
      v60 = OUTLINED_FUNCTION_13_8();
      v61(v60);
    }

    OUTLINED_FUNCTION_13_79();
    v62 = swift_allocObject();
    memcpy((v62 + 16), v53, 0xB1uLL);
    v63 = v107;
    sub_1E3741EA0(v51, v107, &qword_1ECF317B0);
    *(v63 + *(v56 + 52)) = v59;
    v64 = (v63 + *(v56 + 56));
    *v64 = sub_1E3A75BF8;
    v64[1] = v62;
    OUTLINED_FUNCTION_8();
    v66 = *(v65 + 312);
    v67 = OUTLINED_FUNCTION_51_20();
    v68 = v66(v67);
    if (v68)
    {
      v69 = v68;
    }

    else
    {
      v69 = MEMORY[0x1E69E7CC0];
    }

    v114 = v69;
    OUTLINED_FUNCTION_13_79();
    v70 = swift_allocObject();
    memcpy((v70 + 16), v53, 0xB1uLL);
    OUTLINED_FUNCTION_51_20();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8);
    OUTLINED_FUNCTION_1_33();
    v73 = sub_1E32752B0(v72, &qword_1ECF317B8);
    v74 = sub_1E3A74C88();
    v75 = v108;
    sub_1E4203524();

    sub_1E325F6F0(v63, &qword_1ECF317B8);
    v76 = *(*v91 + 320);

    v76(v77);

    OUTLINED_FUNCTION_31_34();
    *(v78 - 256) = v71;
    v112 = v73;
    v113 = v74;
    v79 = OUTLINED_FUNCTION_17_62();
    v80 = v95;
    v81 = v98;
    sub_1E40A802C();

    (*(v94 + 8))(v75, v81);
    v82 = v96;
    v83 = v99;
    (*(v96 + 16))(v97, v80, v99);
    swift_storeEnumTagMultiPayload();
    v84 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v84);
    *&v111 = v81;
    *(&v111 + 1) = v79;
    OUTLINED_FUNCTION_16_66();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v85, &qword_1ECF317D8);
    OUTLINED_FUNCTION_38_24();
    sub_1E4201F44();

    (*(v82 + 8))(v80, v83);
  }

  else
  {
    *v27 = sub_1E4201B84();
    *(v27 + 1) = 0;
    v27[16] = 1;
    *(v27 + 3) = 0;
    v27[32] = 1;
    *(v27 + 5) = 0;
    v27[48] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317D8);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFF8);
    OUTLINED_FUNCTION_1_33();
    v44 = sub_1E32752B0(v42, v43);
    sub_1E3A74C88();
    OUTLINED_FUNCTION_31_34();
    *(v45 - 256) = v41;
    v112 = v44;
    v113 = v46;
    v47 = OUTLINED_FUNCTION_17_62();
    *&v111 = v13;
    *(&v111 + 1) = v47;
    OUTLINED_FUNCTION_16_66();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v48, &qword_1ECF317D8);
    OUTLINED_FUNCTION_38_24();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A747C4(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for LibLockupViewModel();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_1E3A748F4()
{
  result = qword_1ECF31738;
  if (!qword_1ECF31738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF316F0);
    sub_1E3A749AC();
    sub_1E32752B0(&qword_1EE289330, &qword_1ECF31768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31738);
  }

  return result;
}

unint64_t sub_1E3A749AC()
{
  result = qword_1ECF31740;
  if (!qword_1ECF31740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF316E8);
    sub_1E3A74A38();
    sub_1E389B90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31740);
  }

  return result;
}

unint64_t sub_1E3A74A38()
{
  result = qword_1ECF31748;
  if (!qword_1ECF31748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF316E0);
    sub_1E3A74AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31748);
  }

  return result;
}

unint64_t sub_1E3A74AC4()
{
  result = qword_1ECF31750;
  if (!qword_1ECF31750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31730);
    sub_1E32752B0(&qword_1ECF31758, &qword_1ECF31760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31750);
  }

  return result;
}

uint64_t sub_1E3A74B7C()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 256))();
  if (result)
  {
    return (*(*v1 + 472))(0, 0);
  }

  return result;
}

unint64_t sub_1E3A74C04()
{
  result = qword_1ECF31778;
  if (!qword_1ECF31778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D158);
    sub_1E3A74C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31778);
  }

  return result;
}

unint64_t sub_1E3A74C88()
{
  result = qword_1ECF31780;
  if (!qword_1ECF31780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFF8);
    sub_1E3A74D3C(qword_1EE277BC8, type metadata accessor for LibLockupViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31780);
  }

  return result;
}

uint64_t sub_1E3A74D3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3A74D84()
{
  result = sub_1E38BBD0C();
  if (result)
  {
    sub_1E3A7254C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790);
    return sub_1E4203904();
  }

  return result;
}

uint64_t sub_1E3A74DF8(uint64_t a1)
{
  v2 = type metadata accessor for NavigationBarItems(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3A74E54(unint64_t *a1)
{
  if (*(v1 + 64))
  {
    v2 = *a1;
    OUTLINED_FUNCTION_12_6();
    v4 = *(v3 + 216);

    v6 = v4(v5);

    v7 = objc_opt_self();
    if (([v7 isPad] & 1) != 0 && (sub_1E3A24FDC(v6) & 1) != 0 || objc_msgSend(v7, sel_isPhone)) && (sub_1E38BBD0C())
    {
      v8 = sub_1E32AE9B0(v2);
      for (i = 0; v8 != i; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](i, v2);
        }

        else
        {
          if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        sub_1E37D4BA4();
        sub_1E4206254();
        sub_1E4206254();
        if (v19 == v17 && v20 == v18)
        {

          return;
        }

        v11 = sub_1E42079A4();

        if (v11)
        {
          return;
        }
      }

      v12 = [objc_opt_self() currentNavigationController];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 popViewControllerAnimated_];
      }
    }
  }

  else
  {
LABEL_25:
    type metadata accessor for AppEnvironment();
    OUTLINED_FUNCTION_5_103();
    sub_1E3A74D3C(v15, v16);
    OUTLINED_FUNCTION_6_46();
    __break(1u);
  }
}

uint64_t sub_1E3A751A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_1E3A751E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3A75264()
{
  sub_1E3A7254C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790);
  return sub_1E4203904();
}

uint64_t sub_1E3A752C8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v8 = v2;
  v9 = v1;
  v6 = v1;
  v7 = v2;
  sub_1E3743538(&v9, &v5, &qword_1ECF316D0);
  sub_1E3743538(&v8, &v5, &qword_1ECF316D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790);
  sub_1E42038F4();
  if (v5)
  {
    sub_1E325F6F0(&v9, &qword_1ECF316D0);
    sub_1E325F6F0(&v8, &qword_1ECF316D8);
  }

  else
  {
    v4 = sub_1E3A7254C();
    v6 = v1;
    v7 = v2;
    v5 = v4;
    sub_1E4203904();
    sub_1E325F6F0(&v9, &qword_1ECF316D0);
    return sub_1E325F6F0(&v8, &qword_1ECF316D8);
  }
}

void sub_1E3A753FC(uint64_t *a1)
{
  v4 = v1;
  v5 = *(v1 + 16);
  v6 = *a1;
  OUTLINED_FUNCTION_8();
  v8 = (*(v7 + 464))();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v59 = v4;
  v10 = MEMORY[0x1E69E7CC0];
  v74[0] = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(v8);
  OUTLINED_FUNCTION_42_33();
  v62 = v10;
  while (v4 != v5)
  {
    if (v2)
    {
      MEMORY[0x1E6911E60](v5, v9);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_104;
      }
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_103;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_53();
      sub_1E4206324();
      v62 = v74[0];
      ++v5;
    }

    else
    {

      ++v5;
    }
  }

  v11 = 0;
  v60 = v62 & 0xC000000000000001;
  v61 = sub_1E32AE9B0(v62);
  v65 = v10;
  v63 = v6;
LABEL_15:
  if (v11 == v61)
  {

    v75 = v10;
    v44 = sub_1E32AE9B0(v65);
    v45 = 0;
    for (i = v44; ; v44 = i)
    {
      while (1)
      {
        if (v45 == v44)
        {

          v55 = sub_1E3A747C4(v75);

          if (v55)
          {
            OUTLINED_FUNCTION_13_79();
            v56 = swift_allocObject();
            memcpy((v56 + 16), (v59 + 24), 0xB1uLL);
            OUTLINED_FUNCTION_36();
            v58 = *(v57 + 456);
            sub_1E37DABC0(v59 + 24, v74);
            v58(v55, sub_1E3A768C4, v56);
          }

          return;
        }

        if ((v65 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1E6911E60](v45, v65);
        }

        else
        {
          if (v45 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_107;
          }

          v46 = *(v65 + 32 + 8 * v45);
        }

        v12 = __OFADD__(v45++, 1);
        if (v12)
        {
          goto LABEL_106;
        }

        if (*(v6 + 16))
        {
          break;
        }

LABEL_88:
      }

      v47 = *(v46 + 16);
      v48 = *(v46 + 24);
      sub_1E4207B44();
      sub_1E4207B64();
      if (v48)
      {

        OUTLINED_FUNCTION_40_13();
        sub_1E4206014();
      }

      sub_1E4207BA4();
      OUTLINED_FUNCTION_21_52();
      if ((v49 & 1) == 0)
      {

        goto LABEL_88;
      }

      v50 = *(v6 + 48);
      while (1)
      {
        v51 = (v50 + 16 * v74);
        v52 = v51[1];
        if (!v52)
        {
          if (!v48)
          {
            goto LABEL_90;
          }

          goto LABEL_85;
        }

        if (v48)
        {
          v53 = *v51 == v47 && v52 == v48;
          if (v53 || (sub_1E42079A4() & 1) != 0)
          {
            break;
          }
        }

LABEL_85:
        OUTLINED_FUNCTION_24_37();
        if ((v54 & 1) == 0)
        {

          goto LABEL_91;
        }
      }

LABEL_90:
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_53();
      sub_1E4207594();
      sub_1E4207554();
LABEL_91:
      v6 = v63;
    }
  }

  sub_1E34AF4E4(v11, v60 == 0, v62);
  if (v60)
  {
    MEMORY[0x1E6911E60](v11, v62);
  }

  else
  {
  }

  v12 = __OFADD__(v11++, 1);
  if (v12)
  {
    goto LABEL_105;
  }

  OUTLINED_FUNCTION_8();
  v14 = (*(v13 + 1040))();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  v16 = sub_1E32AE9B0(v15);
  v17 = 0;
  v68 = v15 & 0xFFFFFFFFFFFFFF8;
  v69 = v15 & 0xC000000000000001;
  v64 = v15;
  v18 = v10;
  v66 = v16;
  while (1)
  {
    if (v17 == v16)
    {

      v74[0] = v65;

      sub_1E379738C(v18);

      v65 = v74[0];
      v6 = v63;
      goto LABEL_15;
    }

    if (v69)
    {
      MEMORY[0x1E6911E60](v17, v64);
    }

    else
    {
      if (v17 >= *(v68 + 16))
      {
        goto LABEL_97;
      }
    }

    v12 = __OFADD__(v17++, 1);
    if (v12)
    {
      break;
    }

    v73 = v18;
    OUTLINED_FUNCTION_111();
    v20 = (*(v19 + 872))();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v10;
    }

    v22 = v21 >> 62;
    if (v21 >> 62)
    {
      v23 = sub_1E4207384();
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v18 >> 62;
    if (v18 >> 62)
    {
      v25 = OUTLINED_FUNCTION_52_20();
    }

    else
    {
      v25 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v25 + v23;
    if (__OFADD__(v25, v23))
    {
      goto LABEL_98;
    }

    v72 = v23;

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if (v28 == 1 && (v29 = v73 & 0xFFFFFFFFFFFFFF8, v30 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1, v30 >= v26))
    {
      v18 = v73;
    }

    else
    {
      if (v24)
      {
        OUTLINED_FUNCTION_52_20();
      }

      v18 = sub_1E4207514();
      v29 = v18 & 0xFFFFFFFFFFFFFF8;
      v30 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v31 = *(v29 + 16);
    if (v22)
    {
      v36 = v29;
      v37 = sub_1E4207384();
      v29 = v36;
      v32 = v37;
      if (!v37)
      {
        goto LABEL_51;
      }

LABEL_47:
      v33 = v30 - v31;
      v34 = v72;
      if (v33 < v72)
      {
        goto LABEL_100;
      }

      v70 = v18;
      v35 = v29 + 8 * v31 + 32;
      v67 = v29;
      if (v22)
      {
        if (v32 < 1)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_0_32();
        sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
        for (j = 0; j != v32; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
          v39 = sub_1E3797EB0(v74, j, v21);
          v41 = *v40;

          (v39)(v74, 0);
          *(v35 + 8 * j) = v41;
        }

        v34 = v72;
        v10 = MEMORY[0x1E69E7CC0];
        v16 = v66;
      }

      else
      {
        type metadata accessor for ViewModel();
        swift_arrayInitWithCopy();
      }

      v18 = v70;
      if (v34 > 0)
      {
        v42 = *(v67 + 16);
        v12 = __OFADD__(v42, v34);
        v43 = v42 + v34;
        if (v12)
        {
          goto LABEL_101;
        }

        *(v67 + 16) = v43;
        v18 = v70;
      }
    }

    else
    {
      v32 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_47;
      }

LABEL_51:

      if (v72 > 0)
      {
        goto LABEL_99;
      }
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
}

void sub_1E3A75BF8(uint64_t *a1)
{
  v4 = v1;
  v5 = *a1;
  *v103 = *(v1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31790);
  sub_1E42038F4();
  v6 = v102[0];
  if (!v102[0])
  {
    return;
  }

  v84 = v5;
  v80 = v4;
  OUTLINED_FUNCTION_8();
  v7 += 58;
  v8 = *v7;
  v9 = v7;

  v11 = v8(v10);

  if (!v11)
  {
    goto LABEL_129;
  }

  v12 = MEMORY[0x1E69E7CC0];
  v103[0] = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(v11);
  OUTLINED_FUNCTION_42_33();
  v83 = v12;
  while (v9 != v6)
  {
    if (v2)
    {
      MEMORY[0x1E6911E60](v6, v11);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_134;
      }
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_133;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_53();
      sub_1E4206324();
      v83 = v103[0];
      ++v6;
    }

    else
    {

      ++v6;
    }
  }

  v13 = 0;
  v81 = v83 & 0xC000000000000001;
  v82 = sub_1E32AE9B0(v83);
  v14 = v12;
LABEL_16:
  v86 = v14;
  if (v13 == v82)
  {

    v102[0] = v12;
    v48 = sub_1E32AE9B0(v14);
    v49 = v14;
    v50 = v48;
    v51 = 0;
    v52 = v49 & 0xC000000000000001;
    v53 = v49 & 0xFFFFFFFFFFFFFF8;
    v98 = v48;
    v100 = v49 + 32;
    v95 = v49 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v51 == v50)
          {

            v64 = sub_1E3A747C4(v102[0]);

            if (v64)
            {
              v65 = sub_1E32AE9B0(v64);
              if (!v65)
              {
LABEL_126:
                v67 = 0;
                goto LABEL_127;
              }

              v66 = v65;
              v67 = 0;
              v68 = 0;
              v69 = v64 & 0xC000000000000001;
              v101 = v64 & 0xFFFFFFFFFFFFFF8;
              v94 = v65;
              v96 = v64;
              v92 = v64 & 0xC000000000000001;
              while (1)
              {
                if (v69)
                {
                  MEMORY[0x1E6911E60](v68, v64);
                }

                else
                {
                  if (v68 >= *(v101 + 16))
                  {
                    goto LABEL_142;
                  }
                }

                v15 = __OFADD__(v68++, 1);
                if (v15)
                {
                  goto LABEL_140;
                }

                OUTLINED_FUNCTION_8();
                (*(v70 + 1496))(v103);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  break;
                }

                __swift_destroy_boxed_opaque_existential_1(v102);
                OUTLINED_FUNCTION_8();
                v72 = *(v71 + 464);

                v74 = v72(v73);

                if (!v74)
                {
                  break;
                }

                v75 = sub_1E32AE9B0(v74);
                for (i = 0; ; ++i)
                {
                  if (v75 == i)
                  {

                    v66 = v94;
                    v64 = v96;
                    v69 = v92;
LABEL_116:
                    v15 = __OFADD__(v67++, 1);
                    if (v15)
                    {
                      goto LABEL_141;
                    }

                    goto LABEL_117;
                  }

                  if ((v74 & 0xC000000000000001) != 0)
                  {
                    v77 = MEMORY[0x1E6911E60](i, v74);
                  }

                  else
                  {
                    if (i >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_136;
                    }

                    v77 = *(v74 + 8 * i + 32);
                  }

                  if (__OFADD__(i, 1))
                  {
                    goto LABEL_135;
                  }

                  if (*v77 == _TtC8VideosUI31LibDownloadingEpisodesViewModel)
                  {
                    break;
                  }
                }

                swift_beginAccess();
                v78 = *(v77 + 288);

                v15 = __OFADD__(v67, v78);
                v67 += v78;
                if (v15)
                {
                  goto LABEL_143;
                }

                v66 = v94;
                v64 = v96;
                v69 = v92;
LABEL_117:
                if (v68 == v66)
                {
LABEL_127:

                  if (*(v80 + 168))
                  {
                    OUTLINED_FUNCTION_8();
                    (*(v79 + 560))(v67);
                  }

                  goto LABEL_129;
                }
              }

              goto LABEL_116;
            }

LABEL_129:

            return;
          }

          if (v52)
          {
            v54 = MEMORY[0x1E6911E60](v51, v86);
          }

          else
          {
            if (v51 >= *(v53 + 16))
            {
              goto LABEL_139;
            }

            v54 = *(v100 + 8 * v51);
          }

          v15 = __OFADD__(v51++, 1);
          if (v15)
          {
            goto LABEL_138;
          }

          if (*(v84 + 16))
          {
            break;
          }
        }

        v55 = *(v54 + 16);
        v56 = *(v54 + 24);
        sub_1E4207B44();
        sub_1E4207B64();
        if (v56)
        {

          OUTLINED_FUNCTION_40_13();
          sub_1E4206014();
        }

        sub_1E4207BA4();
        OUTLINED_FUNCTION_21_52();
        if (v58)
        {
          break;
        }
      }

      v59 = *(v57 + 48);
      while (1)
      {
        v60 = (v59 + 16 * v103);
        v61 = v60[1];
        if (!v61)
        {
          if (!v56)
          {
            goto LABEL_91;
          }

          goto LABEL_87;
        }

        if (v56)
        {
          v62 = *v60 == v55 && v61 == v56;
          if (v62 || (sub_1E42079A4() & 1) != 0)
          {
            break;
          }
        }

LABEL_87:
        OUTLINED_FUNCTION_24_37();
        if ((v63 & 1) == 0)
        {

          goto LABEL_92;
        }
      }

LABEL_91:
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_53();
      sub_1E4207594();
      sub_1E4207554();
LABEL_92:
      v53 = v95;
      v50 = v98;
    }
  }

  sub_1E34AF4E4(v13, v81 == 0, v83);
  if (v81)
  {
    MEMORY[0x1E6911E60](v13, v83);
  }

  else
  {
  }

  v15 = __OFADD__(v13++, 1);
  if (v15)
  {
    goto LABEL_137;
  }

  OUTLINED_FUNCTION_8();
  v17 = (*(v16 + 1040))();
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v12;
  }

  v19 = sub_1E32AE9B0(v18);
  v90 = v18 & 0xFFFFFFFFFFFFFF8;
  v91 = v18 & 0xC000000000000001;
  v85 = v18;
  v89 = v18 + 32;
  v20 = 0;
  v21 = v12;
  v87 = v19;
  while (1)
  {
    do
    {
      while (1)
      {
        if (v20 == v19)
        {

          v103[0] = v86;

          sub_1E379738C(v21);

          v14 = v103[0];
          goto LABEL_16;
        }

        if (v91)
        {
          v23 = MEMORY[0x1E6911E60](v20, v85);
          v22 = v23;
        }

        else
        {
          if (v20 >= *(v90 + 16))
          {
            goto LABEL_122;
          }

          v22 = *(v89 + 8 * v20);
        }

        v15 = __OFADD__(v20++, 1);
        if (v15)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        v99 = v21;
        v24 = (*(*v22 + 872))(v23);
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v12;
        }

        v26 = v25 >> 62;
        if (v25 >> 62)
        {
          v27 = sub_1E4207384();
        }

        else
        {
          v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v28 = v21 >> 62;
        if (v21 >> 62)
        {
          v29 = OUTLINED_FUNCTION_52_20();
        }

        else
        {
          v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = v29 + v27;
        if (__OFADD__(v29, v27))
        {
          goto LABEL_123;
        }

        v97 = v27;

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v32 = v28 ? 0 : isUniquelyReferenced_nonNull_bridgeObject;
        if (v32 == 1 && (v33 = v99 & 0xFFFFFFFFFFFFFF8, v34 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1, v34 >= v30))
        {
          v21 = v99;
        }

        else
        {
          if (v28)
          {
            OUTLINED_FUNCTION_52_20();
          }

          v21 = sub_1E4207514();
          v33 = v21 & 0xFFFFFFFFFFFFFF8;
          v34 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        }

        v35 = *(v33 + 16);
        if (v26)
        {
          break;
        }

        v36 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          goto LABEL_48;
        }

LABEL_52:

        if (v97 > 0)
        {
          goto LABEL_124;
        }
      }

      v40 = v33;
      v41 = sub_1E4207384();
      v33 = v40;
      v36 = v41;
      if (!v41)
      {
        goto LABEL_52;
      }

LABEL_48:
      v37 = v34 - v35;
      v38 = v97;
      if (v37 < v97)
      {
        goto LABEL_125;
      }

      v93 = v21;
      v39 = v33 + 8 * v35 + 32;
      v88 = v33;
      if (v26)
      {
        if (v36 < 1)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_0_32();
        sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
        for (j = 0; j != v36; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
          v43 = sub_1E3797EB0(v103, j, v25);
          v45 = *v44;

          (v43)(v103, 0);
          *(v39 + 8 * j) = v45;
        }

        v38 = v97;
        v12 = MEMORY[0x1E69E7CC0];
        v19 = v87;
      }

      else
      {
        type metadata accessor for ViewModel();
        swift_arrayInitWithCopy();
      }

      v21 = v93;
    }

    while (v38 <= 0);
    v46 = *(v88 + 16);
    v15 = __OFADD__(v46, v38);
    v47 = v46 + v38;
    if (v15)
    {
      break;
    }

    *(v88 + 16) = v47;
    v21 = v93;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_1E3A76690(uint64_t a1, unint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  if ((sub_1E38BBD0C() & 1) != 0 && !sub_1E32AE9B0(v4))
  {
    v5 = *(v3 + 64);
    if (v5)
    {
      v6 = *(*v5 + 216);

      v8 = v6(v7);

      if ([objc_opt_self() isPad] & 1) == 0 || (sub_1E3A2511C(v8) & 1) == 0 || (OUTLINED_FUNCTION_8(), ((*(v9 + 864))()))
      {
        v10 = [objc_opt_self() currentNavigationController];
        if (v10)
        {
          v11 = v10;
          v14 = [v10 popViewControllerAnimated_];
        }
      }
    }

    else
    {
      type metadata accessor for AppEnvironment();
      OUTLINED_FUNCTION_5_103();
      sub_1E3A74D3C(v12, v13);
      OUTLINED_FUNCTION_6_46();
      __break(1u);
    }
  }
}

uint64_t objectdestroyTm_21()
{

  sub_1E3264CE0();

  sub_1E3264CE0();

  OUTLINED_FUNCTION_13_79();

  return swift_deallocObject();
}

uint64_t sub_1E3A768C4()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 312))();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1E32AE9B0(v4);

  if (!v5)
  {
    return (*(*v1 + 264))(1);
  }

  return result;
}

uint64_t sub_1E3A76980(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE90) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  OUTLINED_FUNCTION_5_0();
  v19 = *(v14 + 56);
  sub_1E329E324(v3 + v18, v17);
  sub_1E329E324(a1, &v17[v19]);
  OUTLINED_FUNCTION_23_25(v17);
  if (v21)
  {
    OUTLINED_FUNCTION_23_25(&v17[v19]);
    if (v21)
    {
      return sub_1E325F6F0(v17, &unk_1ECF28E20);
    }

    goto LABEL_9;
  }

  sub_1E329E324(v17, v2);
  OUTLINED_FUNCTION_23_25(&v17[v19]);
  if (v21)
  {
    (*(v7 + 8))(v2, v5);
LABEL_9:
    sub_1E325F6F0(v17, &qword_1ECF2CE90);
    return sub_1E3A76C24();
  }

  (*(v7 + 32))(v11, &v17[v19], v5);
  sub_1E3274AF8(&qword_1EE28A458, MEMORY[0x1E6969530]);
  v22 = sub_1E4205E84();
  v23 = *(v7 + 8);
  v23(v11, v5);
  v23(v2, v5);
  result = sub_1E325F6F0(v17, &unk_1ECF28E20);
  if ((v22 & 1) == 0)
  {
    return sub_1E3A76C24();
  }

  return result;
}

uint64_t sub_1E3A76C24()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring) == 1)
  {
    sub_1E3A77CF8();

    return sub_1E3A7756C();
  }

  return result;
}

uint64_t sub_1E3A76C68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  OUTLINED_FUNCTION_5_0();
  return sub_1E329E324(v1 + v3, a1);
}

uint64_t sub_1E3A76CB8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_27_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  v7 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  OUTLINED_FUNCTION_5_0();
  sub_1E329E324(v1 + v7, v2);
  OUTLINED_FUNCTION_11_3();
  sub_1E329EFA0(a1, v1 + v7);
  swift_endAccess();
  sub_1E3A76980(v2);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v8, v9);
  OUTLINED_FUNCTION_77();
  return sub_1E325F6F0(v10, v11);
}

void (*sub_1E3A76D90(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  OUTLINED_FUNCTION_5_0();
  sub_1E329E324(v1 + v8, v7);
  return sub_1E3A76E5C;
}

void sub_1E3A76E5C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1E329E324(v4, v3);
    sub_1E3A76CB8(v3);
    sub_1E325F6F0(v4, &unk_1ECF28E20);
  }

  else
  {
    sub_1E3A76CB8(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3A76EE8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  OUTLINED_FUNCTION_5_0();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3A76F38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  OUTLINED_FUNCTION_3_0();
  v7 = *v5;
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  v8 = (v2 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  OUTLINED_FUNCTION_5_0();
  v9 = v8[1];
  if (!v9)
  {
    if (!v6)
    {
    }

LABEL_10:
    sub_1E3A76C24();
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v10 = *v8 == v7 && v9 == v6;
  if (!v10 && (sub_1E42079A4() & 1) == 0)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1E3A76FF4(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  OUTLINED_FUNCTION_5_0();
  v5 = v4[1];
  v3[3] = *v4;
  v3[4] = v5;

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A77074(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_1E3A76F38(v3, v4);
  }

  else
  {
    sub_1E3A76F38(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t sub_1E3A770EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A77160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1E3A771FC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3A77280()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F8);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3A772EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31800);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_77();
  v1();
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F8);
  sub_1E4200654();
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_27_0();
  return v3(v2);
}

uint64_t sub_1E3A77404()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  OUTLINED_FUNCTION_5_0();
  return *(v0 + v1);
}

uint64_t sub_1E3A77440(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  result = OUTLINED_FUNCTION_5_0();
  if (v4 != *(v1 + v5))
  {
    return sub_1E3A76C24();
  }

  return result;
}

void (*sub_1E3A774B4(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 32) = *(v1 + v4);
  return sub_1E3A7752C;
}

void sub_1E3A7752C(uint64_t a1)
{
  v1 = *a1;
  sub_1E3A77440(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1E3A7756C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v68 = v10;
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v61 - v13;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v65 = (v16 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  v21 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  (*(*v0 + 152))();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
  {
    (*(v23 + 32))(v27, v20, v21);
    v33 = [objc_opt_self() sharedInstance];
    v34 = v33;
    if ((*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isContentAvailable) & 1) == 0)
    {
      if (v33)
      {
        v33 = sub_1E3741090(0x494156415F544F4ELL, 0xED0000454C42414CLL, v33);
      }

      goto LABEL_26;
    }

    v35 = type metadata accessor for RentalExpirationPresenter();
    v36 = (*(*v0 + 176))(v35);
    sub_1E3A7851C(v27, v36, v37);
    v64 = v38;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    if (v34)
    {
      v45 = OUTLINED_FUNCTION_8_73();
      v33 = sub_1E3741090(v45, v46, v34);
      if (*(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isForDownload))
      {
        if (v47)
        {
          if (v64 == v33 && v47 == v40)
          {
          }

          else
          {
            v49 = sub_1E42079A4();
            v63 = v40;
            v50 = v49;

            if ((v50 & 1) == 0)
            {
              v40 = v63;
              goto LABEL_23;
            }
          }

          v33 = sub_1E3741090(0x57454E4552, 0xE500000000000000, v34);
          v64 = v33;
          v40 = v51;
        }

LABEL_23:
        if (v42 >= 1 && *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring) == 1)
        {
          sub_1E3A77CF8();
          v52 = swift_allocObject();
          swift_weakInit();
          aBlock[4] = sub_1E3A78D38;
          aBlock[5] = v52;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1E378AEA4;
          aBlock[3] = &block_descriptor_50;
          v61 = _Block_copy(aBlock);
          v70 = MEMORY[0x1E69E7CC0];
          sub_1E3274AF8(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
          v63 = v40;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
          sub_1E378AD28();
          v62 = v44;
          sub_1E42072E4();
          sub_1E4204054();
          swift_allocObject();
          v53 = sub_1E4204024();

          *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator) = v53;

          sub_1E3280A90(0, &qword_1EE23B1D0);
          v54 = sub_1E4206A04();
          v55 = v66;
          sub_1E4204004();
          v65 = v34;
          v56 = v67;
          sub_1E4204074();
          v57 = *(v68 + 8);
          v58 = v55;
          v59 = v69;
          v57(v58, v69);
          sub_1E4206994();

          v60 = v56;
          v34 = v65;
          v33 = (v57)(v60, v59);
        }

LABEL_26:
        (*(*v1 + 248))(v33);
        sub_1E3A771FC();

        return (*(v23 + 8))(v27, v21);
      }
    }

    else if (*(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isForDownload))
    {
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  sub_1E325F6F0(v20, &unk_1ECF28E20);
  v28 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v28, v2);
  v29 = sub_1E41FFC94();
  v30 = sub_1E42067F4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1E323F000, v29, v30, "RentalExpirationPresenter::expiration date is invalid.", v31, 2u);
    MEMORY[0x1E69143B0](v31, -1, -1);
  }

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1E3A77CF8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator))
  {

    sub_1E4204034();
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1E3A77D64(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring);
  *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring) = result;
  if (v2 != *(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring))
  {
    if (*(v1 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring))
    {
      return sub_1E3A7756C();
    }

    else
    {
      return sub_1E3A77CF8();
    }
  }

  return result;
}

uint64_t sub_1E3A77D94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v14 = swift_allocObject();
  sub_1E3A77E1C(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_1E3A77E1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v35 = a6;
  v36 = a7;
  v37 = a5;
  v34 = a4;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F8);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  v17 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate;
  v18 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v7 + v17, 1, 1, v18);
  v19 = (v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_localizedStringPrefix);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter__rentalExpirationInfo;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F0);
  sub_1E4200634();
  (*(v15 + 32))(v7 + v20, v8, v13);
  v21 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_useWarningColor) = 0;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isMonitoring) = 0;
  v22 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isForDownload;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isForDownload) = 0;
  v23 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isContentAvailable;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_isContentAvailable) = 0;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator) = 0;
  v24 = *(v18 - 8);
  v25 = v31;
  (*(v24 + 16))(v12, v31, v18);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  OUTLINED_FUNCTION_11_3();
  sub_1E32ABDC0(v12, v7 + v17);
  swift_endAccess();
  OUTLINED_FUNCTION_3_0();
  v26 = v33;
  *v19 = v32;
  v19[1] = v26;

  OUTLINED_FUNCTION_3_0();
  v27 = v35;
  *(v7 + v21) = v34;
  *(v7 + v22) = v27;
  v28 = v37;
  *(v7 + v23) = v36;
  *(v7 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_shouldCheckIfExpiringSoon) = v28;
  sub_1E3A7756C();
  (*(v24 + 8))(v25, v18);
  return v7;
}

uint64_t sub_1E3A780C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - v4;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_shouldCheckIfExpiringSoon) != 1)
  {
    return 1;
  }

  (*(*v0 + 152))(v3);
  v6 = sub_1E41FE5D4();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    v7 = sub_1E41FE514();
    v8 = OUTLINED_FUNCTION_27_0();
    v9(v8);
  }

  v10 = [objc_opt_self() shouldShowLabelForDownloadExpirationDate_];

  return v10;
}

uint64_t sub_1E3A781FC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationEvaluator))
  {

    sub_1E4204034();
  }

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter_expirationDate, &unk_1ECF28E20);

  v2 = OBJC_IVAR____TtC8VideosUI25RentalExpirationPresenter__rentalExpirationInfo;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317F8);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v1 + v2);

  return v1;
}

uint64_t sub_1E3A782CC()
{
  sub_1E3A781FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3A78334@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RentalExpirationPresenter();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for RentalExpirationPresenter()
{
  result = qword_1EE295FB0;
  if (!qword_1EE295FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A783C8()
{
  sub_1E3273C28();
  if (v0 <= 0x3F)
  {
    sub_1E3A784B8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3A784B8()
{
  if (!qword_1EE289FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF317F0);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289FB0);
    }
  }
}

void sub_1E3A7851C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E41FE094();
  OUTLINED_FUNCTION_0_10();
  v88 = v10;
  v89 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E41FE6D4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1E41FE734();
  OUTLINED_FUNCTION_0_10();
  v86 = v22;
  v87 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  (*(v16 + 104))(v20, *MEMORY[0x1E6969868], v14);
  sub_1E41FE6E4();
  (*(v16 + 8))(v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31808);
  v26 = sub_1E41FE724();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  v30 = *(v29 + 72);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1E4298AD0;
  v33 = v32 + v31;
  v34 = *(v28 + 104);
  v34(v33, *MEMORY[0x1E6969A48], v26);
  v34(v33 + v30, *MEMORY[0x1E6969A58], v26);
  v34(v33 + 2 * v30, *MEMORY[0x1E6969A88], v26);
  v34(v33 + 3 * v30, *MEMORY[0x1E6969A98], v26);
  v35 = v13;
  sub_1E3A78D84(v32);
  sub_1E41FE5C4();
  v85 = v25;
  sub_1E41FE6F4();

  (*(v4 + 8))(v8, v90);
  v36 = sub_1E41FE044();
  v37 = v36;
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

  v40 = sub_1E41FE054();
  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  v43 = sub_1E41FE074();
  v44 = v43;
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v43;
  }

  v47 = sub_1E41FE084();
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  v50 = 0x544E554F43;
  if (a3)
  {
    v50 = a2;
  }

  v93 = v50;
  if (a3)
  {
    v51 = a3;
  }

  else
  {
    v51 = 0xE500000000000000;
  }

  sub_1E41FE554();
  if (v52 <= 0.0)
  {
    v53 = [objc_opt_self() sharedInstance];
    if (v53)
    {
      v54 = v53;
      v55 = OUTLINED_FUNCTION_8_73();
      sub_1E3741090(v55, v56, v54);
      v58 = v57;

      if (v58)
      {
LABEL_21:

        v60 = v88;
        v59 = v89;
        v62 = v86;
        v61 = v87;
        v63 = v85;
LABEL_63:
        (*(v60 + 8))(v35, v59);
        (*(v62 + 8))(v63, v61);
        return;
      }

      goto LABEL_85;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v39 >= 2)
  {
    if ((v42 * 60) >> 64 == (60 * v42) >> 63)
    {
      v71 = 3600 * v42;
      if ((60 * v42 * 60) >> 64 == (3600 * v42) >> 63)
      {
        v72 = 60 * v46;
        if ((v46 * 60) >> 64 == (60 * v46) >> 63)
        {
          v67 = __OFADD__(v71, v72);
          v73 = v71 + v72;
          if (!v67)
          {
            if (v39 <= 5)
            {
              if (__OFADD__(v49, 5))
              {
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
                goto LABEL_81;
              }

              if (__OFADD__(v73, v49 + 5))
              {
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
                goto LABEL_84;
              }
            }

            v70 = 0x535941445FLL;
            if (v42 <= 0 && v46 <= 0 && v49 < 1)
            {
              v69 = 0xE500000000000000;
              goto LABEL_60;
            }

            v37 = v39 + 1;
            if (!__OFADD__(v39, 1))
            {
              v69 = 0xE500000000000000;
LABEL_49:
              if (v37 < 1)
              {
                goto LABEL_21;
              }

LABEL_60:

              MEMORY[0x1E69109E0](v70, v69);
              v76 = [objc_opt_self() sharedInstance];
              if (v76)
              {
                v77 = v76;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
                v78 = swift_allocObject();
                *(v78 + 16) = xmmword_1E4298880;
                *(v78 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
                sub_1E3A790C8(v93, v51, v78, v77);
                v80 = v79;

                if (v80)
                {

                  v60 = v88;
                  v59 = v89;
                  v62 = v86;
                  v61 = v87;
                  v63 = v85;
                  goto LABEL_63;
                }

                goto LABEL_87;
              }

LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_72;
  }

  if (v39 == 1 || v42 >= 1)
  {
    v65 = 24 * v39;
    if ((v39 * 24) >> 64 == (24 * v39) >> 63)
    {
      v37 = v42 + v65;
      if (!__OFADD__(v42, v65))
      {
        v66 = 60 * v46;
        if ((v46 * 60) >> 64 == (60 * v46) >> 63)
        {
          v67 = __OFADD__(v66, v49);
          v68 = v66 + v49;
          if (!v67)
          {
            if (!__OFADD__(v68, 5))
            {
              v69 = 0xE600000000000000;
              v70 = 0x5352554F485FLL;
              goto LABEL_49;
            }

            goto LABEL_78;
          }

LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v46 > 0 || (TVAppFeature.isEnabled.getter(10) & 1) != 0 && v49 >= 1)
  {
    if (!__OFADD__(v49, 5))
    {
      if (v46 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v44;
      }

      v70 = 0x534554554E494D5FLL;
      v69 = 0xE800000000000000;
      goto LABEL_60;
    }

    goto LABEL_82;
  }

  if (v49 < 1)
  {
    goto LABEL_21;
  }

  v81 = [objc_opt_self() sharedInstance];
  if (!v81)
  {
    goto LABEL_88;
  }

  v82 = v81;
  sub_1E3741090(0xD000000000000019, 0x80000001E426EA90, v81);
  v84 = v83;

  if (v84)
  {
    if (!__OFADD__(v49, 5))
    {
      goto LABEL_21;
    }

    goto LABEL_83;
  }

LABEL_89:
  __break(1u);
}

uint64_t sub_1E3A78D38()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3A7756C();
  }

  return result;
}

uint64_t sub_1E3A78D84(uint64_t a1)
{
  v2 = sub_1E41FE724();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31810);
  result = sub_1E4207464();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_1E3274AF8(&qword_1ECF31818, MEMORY[0x1E6969AD0]);
    v14 = sub_1E4205DA4();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v4, *(v8 + 48) + v16 * v12, v2);
      sub_1E3274AF8(&qword_1ECF31820, MEMORY[0x1E6969AD0]);
      v21 = sub_1E4205E84();
      v22 = *v11;
      (*v11)(v4, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E3A790C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1E4205ED4();
  sub_1E3280A90(0, &qword_1EE23ADD0);
  v6 = sub_1E42062A4();

  v7 = [a4 localizedStringForKey:v5 withCounts:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1E4205F14();

  return v8;
}

double sub_1E3A79184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = 0.0;
  if (!sub_1E3A79350())
  {
    sub_1E3A793BC(a5);
    v9 = v10;
    v11 = sub_1E3A7992C();
    MEMORY[0x1EEE9AC00](v11);
    v22[2] = a5;
    v23 = a7 & 1;
    v14 = sub_1E3A79A28(sub_1E3A79E20, v22, v12, v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 32);
      v17 = 0.0;
      do
      {
        v18 = *v16++;
        v17 = v17 + v18;
        --v15;
      }

      while (v15);
    }

    else
    {
      v17 = 0.0;
    }

    v19 = sub_1E4202714();
    if (v19 == sub_1E4202714())
    {
      sub_1E4201044();
      sub_1E3960028();
      sub_1E42066B4();
      sub_1E4206724();
      v9 = v17 + v9 * sub_1E4206714();
    }

    v20 = sub_1E4202714();
    if (v20 != sub_1E4202714())
    {
      sub_1E4201044();
      sub_1E3960028();
      OUTLINED_FUNCTION_27_0();
      sub_1E42066B4();
      OUTLINED_FUNCTION_27_0();
      sub_1E4206724();
      sub_1E4206714();
    }
  }

  return v9;
}

BOOL sub_1E3A79350()
{
  sub_1E4201044();
  sub_1E3960028();
  sub_1E42066B4();
  sub_1E4206724();
  return v2 == v1;
}

uint64_t sub_1E3A793BC(uint64_t a1)
{
  v24 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_12();
  sub_1E4201044();
  sub_1E3960028();
  v6 = sub_1E42066D4();
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1E3A79F84(0, v6 & ~(v6 >> 63), 0);
    v7 = v26;
    result = sub_1E42066B4();
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v10 = sub_1E4206764();
      (*(v4 + 16))(v1);
      v10(v25, 0);
      sub_1E4201504();
      v25[0] = v11 & 1;
      sub_1E4200EF4();
      v13 = v12;
      v15 = v14;
      (*(v4 + 8))(v1, v24);
      v26 = v7;
      v16 = a1;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E3A79F84((v17 > 1), v18 + 1, 1);
        v7 = v26;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      sub_1E4206734();
      --v8;
      a1 = v16;
    }

    while (v8);
  }

  v20 = *(v7 + 16);
  if (v20)
  {
    v21 = (v7 + 32);
    v22 = 0uLL;
    do
    {
      v23 = *v21++;
      v22 = vbslq_s8(vcgeq_f64(v23, v22), v23, v22);
      --v20;
    }

    while (v20);
  }
}

void sub_1E3A7962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v46 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_12();
  if (!sub_1E3A79350())
  {
    sub_1E3A793BC(a5);
    v14 = v13;
    v16 = v15;
    v17 = sub_1E3A7992C();
    MEMORY[0x1EEE9AC00](v17);
    v44[2] = a5;
    v45 = a7 & 1;
    v20 = sub_1E3A79A28(sub_1E3A7A0A4, v44, v18, v19);
    v21 = sub_1E4202714();
    sub_1E4202714();
    v22 = OUTLINED_FUNCTION_2_0();
    if (v21 == v26)
    {
      MidX = v14 * 0.5 + CGRectGetMinX(*&v22);
    }

    else
    {
      MidX = CGRectGetMidX(*&v22);
    }

    v28 = sub_1E4202714();
    sub_1E4202714();
    v29 = OUTLINED_FUNCTION_2_0();
    if (v28 == v33)
    {
      MidY = CGRectGetMidY(*&v29);
    }

    else
    {
      MidY = v16 * 0.5 + CGRectGetMinY(*&v29);
    }

    v35 = sub_1E3A7992C();
    if (v35 == v36)
    {
LABEL_21:
    }

    else
    {
      v37 = v35;
      v38 = v36;
      if (v36 < v35)
      {
        goto LABEL_27;
      }

      if (v35 < v36)
      {
        v39 = (v11 + 8);
        while (1)
        {
          sub_1E4201054();
          sub_1E4203F64();
          v48 = 0;
          v47 = 0;
          sub_1E4200F04();
          (*v39)(v7, v46);
          v40 = sub_1E4202714();
          v41 = v40 == sub_1E4202714();
          v42 = v20 + 8 * v37;
          if (v41)
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              break;
            }

            if (v37 >= *(v20 + 16))
            {
              goto LABEL_26;
            }

            MidX = MidX + v14 + *(v42 + 32);
            v49.origin.x = OUTLINED_FUNCTION_2_0();
            MidY = CGRectGetMidY(v49);
          }

          else
          {
            v50.origin.x = OUTLINED_FUNCTION_2_0();
            v43 = CGRectGetMidX(v50);
            if ((v37 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            if (v37 >= *(v20 + 16))
            {
              goto LABEL_25;
            }

            MidX = v43;
            MidY = MidY + v16 + *(v42 + 32);
          }

          if (v38 == ++v37)
          {
            goto LABEL_21;
          }
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1E3A7992C()
{
  sub_1E4201044();
  sub_1E3960028();
  sub_1E42066B4();
  sub_1E4206724();
  result = v2;
  if (v1 < v2)
  {
    __break(1u);
  }

  return result;
}

void (*sub_1E3A799B4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3A79A28(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1E3887DC4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v18;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v16 = a3 + v9;
      a1(&v17, &v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1E3887DC4((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_1E3A79B94@<X0>(uint64_t *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v29 = a2;
  v32 = a3;
  sub_1E4200C74();
  OUTLINED_FUNCTION_0_10();
  v30 = v5;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = *a1;
  sub_1E4201044();
  sub_1E3960028();
  OUTLINED_FUNCTION_27_0();
  sub_1E42066B4();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206724();
  result = sub_1E4206714();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v21 = 0;
    if (v19 < result - 1)
    {
      sub_1E4201054();
      sub_1E4200F14();
      v22 = *(v12 + 8);
      v22(v18, v10);
      sub_1E4201054();
      v23 = v28;
      sub_1E4200F14();
      v22(v15, v10);
      sub_1E4200C54();
      v21 = v24;
      v25 = v31;
      v26 = *(v30 + 8);
      v26(v23, v31);
      result = (v26)(v9, v25);
    }

    *v32 = v21;
  }

  return result;
}

unint64_t sub_1E3A79E54()
{
  result = qword_1ECF31828;
  if (!qword_1ECF31828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31828);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EqualWidthStack(_BYTE *result, unsigned int a2, unsigned int a3)
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

char *sub_1E3A79F84(char *a1, int64_t a2, char a3)
{
  result = sub_1E3A79FA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3A79FA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31EC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1E3A7A0E8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 424) = a1;
  return result;
}

uint64_t sub_1E3A7A128()
{
  v1 = *(v0 + 432);
  if (!v1)
  {
    v1 = sub_1E3C60BB0();
  }

  return v1;
}

uint64_t sub_1E3A7A16C()
{
  v1 = *(v0 + 440);
  if (!v1)
  {
    v1 = sub_1E39BE330();
  }

  return v1;
}

uint64_t sub_1E3A7A1F0(uint64_t a1)
{
  swift_beginAccess();
  sub_1E37D1384(a1, v1 + 448);
  return swift_endAccess();
}

uint64_t sub_1E3A7A290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0);
  return sub_1E42006B4();
}

uint64_t sub_1E3A7A398(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 432) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *(v6 + 488) = sub_1E4200544();
  *(v6 + 408) = a2;
  *(v6 + 416) = a3;
  *(v6 + 424) = a4;
  *(v6 + 432) = a5;

  *(v6 + 440) = a6;

  v12 = sub_1E40B1BB0();

  if (v12)
  {
  }

  return v12;
}

uint64_t sub_1E3A7A490(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = *(*v1 + 1040);
  v15 = v14(v11);
  if (v15 && (v16 = sub_1E3A7B2F4(a1, v15), , (v16 & 1) != 0))
  {
    v17 = sub_1E324FBDC();
    (*(v6 + 16))(v9, v17, v4);

    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_6_21();
      v21 = OUTLINED_FUNCTION_100();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1E3270FC8(*(v2 + 408), *(v2 + 416), &v31);
      _os_log_impl(&dword_1E323F000, v18, v19, "LibCollectionViewModel:: Collection id = %s. Ignore replacing collection group as they are the same", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    return (*(v6 + 8))(v9, v4);
  }

  else
  {
    v31 = (v14)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580);
    OUTLINED_FUNCTION_0_125(&qword_1EE23B578, &unk_1ECF3F4C0);
    LOBYTE(v23) = sub_1E4149048(v23);

    result = sub_1E40B4174(a1);
    if ((v23 & 1) == 0)
    {
      v24 = sub_1E324FBDC();
      (*(v6 + 16))(v13, v24, v4);

      v25 = sub_1E41FFC94();
      v26 = sub_1E4206814();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_6_21();
        v28 = OUTLINED_FUNCTION_100();
        v31 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1E3270FC8(*(v2 + 408), *(v2 + 416), &v31);
        _os_log_impl(&dword_1E323F000, v25, v26, "LibCollectionViewModel:: replaced collection groups. Trigger children update. Collection id = %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v13, v4);

      v29 = OUTLINED_FUNCTION_27_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v29);
      sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0);
      sub_1E4200624();
    }
  }

  return result;
}