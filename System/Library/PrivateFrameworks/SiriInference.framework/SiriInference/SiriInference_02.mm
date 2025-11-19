id sub_1DD3BA358@<X0>(Class *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(*a1) init];
  *a2 = result;
  return result;
}

uint64_t sub_1DD3BA390()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41[-1] - v8;
  v10 = sub_1DD63D078();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v41[-1] - v21;
  v23 = *(v0 + 96);
  v24 = *(v0 + 104);
  if ((v23(v20) & 1) == 0)
  {
    return 0;
  }

  v25 = *(v1 + 40);
  v26 = (*(v1 + 32))(v41);
  v27 = *(v1 + 88);
  (*(v1 + 80))(v26);
  v28 = *(v1 + 48);
  sub_1DD3B7B40(v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v29 = sub_1DD3ADFD0(v9, &qword_1ECCDEBC0, &qword_1DD6445A0);
  }

  else
  {
    (*(v13 + 32))(v18, v9, v10);
    sub_1DD63CF88();
    v31 = v30;
    v32 = *(v13 + 8);
    v29 = v32(v18, v10);
    if (v31 < v41[1])
    {
      v32(v22, v10);
      sub_1DD3BA6F8(v41);
      return 0;
    }
  }

  v33 = *(v1 + 72);
  v34 = (*(v1 + 64))(v29);
  sub_1DD3BA6F8(v41);
  if (v34 >= v41[0])
  {
    (*(v13 + 8))(v22, v10);
    return 0;
  }

  v35 = *(v13 + 16);
  v36 = OUTLINED_FUNCTION_4_5();
  v37(v36);
  v38 = 1;
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  sub_1DD3B7CF0(v6);
  (*(v13 + 8))(v22, v10);
  return v38;
}

void *sub_1DD3BA658()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();
  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return v0;
}

uint64_t sub_1DD3BA6A0()
{
  sub_1DD3BA658();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3BA74C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB40, &qword_1DD643EC0);
  result = sub_1DD63FC88();
  qword_1ECCDBAB8 = result;
  return result;
}

id sub_1DD3BA79C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setClientHourOfDay_];
  }

  return result;
}

id sub_1DD3BA7E8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDeviceClass_];
  }

  return result;
}

id sub_1DD3BA804(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingState_];
  }

  return result;
}

uint64_t sub_1DD3BA820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB38, &qword_1DD643EB8);
  result = sub_1DD63FC88();
  qword_1ECCDBAC0 = result;
  return result;
}

id sub_1DD3BA870(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage1Day_];
  }

  return result;
}

id sub_1DD3BA88C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage7Day_];
  }

  return result;
}

id sub_1DD3BA8A8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage14Day_];
  }

  return result;
}

id sub_1DD3BA8C4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount2Min_];
  }

  return result;
}

id sub_1DD3BA8E0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount10Min_];
  }

  return result;
}

id sub_1DD3BA8FC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount1Hr_];
  }

  return result;
}

id sub_1DD3BA918(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount6Hr_];
  }

  return result;
}

id sub_1DD3BA934(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount1Day_];
  }

  return result;
}

id sub_1DD3BA950(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount7Day_];
  }

  return result;
}

id sub_1DD3BA96C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount28Day_];
  }

  return result;
}

id sub_1DD3BA988(id result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return [result setSupportedMediaCategories_];
  }

  return result;
}

id sub_1DD3BA9A0(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsForegroundApp_];
}

id sub_1DD3BA9C8(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsLastForegroundApp_];
}

id sub_1DD3BA9F0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastForegroundAppStartInSec_];
  }

  return result;
}

id sub_1DD3BAA0C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastForegroundAppEndInSec_];
  }

  return result;
}

id sub_1DD3BAA28(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount2Min_];
  }

  return result;
}

id sub_1DD3BAA44(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount10Min_];
  }

  return result;
}

id sub_1DD3BAA60(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount1Hr_];
  }

  return result;
}

id sub_1DD3BAA7C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount6Hr_];
  }

  return result;
}

id sub_1DD3BAA98(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount1Day_];
  }

  return result;
}

id sub_1DD3BAAB4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount7Day_];
  }

  return result;
}

id sub_1DD3BAAD0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount28Day_];
  }

  return result;
}

id sub_1DD3BAAEC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount2Min_];
  }

  return result;
}

id sub_1DD3BAB08(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount10Min_];
  }

  return result;
}

id sub_1DD3BAB24(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount1Hr_];
  }

  return result;
}

id sub_1DD3BAB40(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount6Hr_];
  }

  return result;
}

id sub_1DD3BAB5C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount1Day_];
  }

  return result;
}

id sub_1DD3BAB78(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount7Day_];
  }

  return result;
}

id sub_1DD3BAB94(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount28Day_];
  }

  return result;
}

id sub_1DD3BABB0(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsNowPlayingApp_];
}

id sub_1DD3BABD8(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsLastNowPlayingApp_];
}

id sub_1DD3BAC00(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastNowPlayingAppStartInSec_];
  }

  return result;
}

id sub_1DD3BAC1C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastNowPlayingAppEndInSec_];
  }

  return result;
}

void sub_1DD3BAC38(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v35 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v35 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DD640D58();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v17 = sub_1DD3978DC();
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
      sub_1DD640A18();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v25 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v26 = (v25[6] + 16 * v17);
    *v26 = v7;
    v26[1] = v6;
    *(v25[7] + 8 * v17) = v8;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    v25[2] = v29;
    ++v4;
    a2 = 1;
  }

  sub_1DD4E62AC(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v32, v33, *v34, v34[4]);
  v22 = *a3;
  v23 = sub_1DD3978DC();
  if ((v21 & 1) != (v24 & 1))
  {
    goto LABEL_21;
  }

  v17 = v23;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001BLL, 0x80000001DD66A130);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](39, 0xE100000000000000);
  sub_1DD640A38();
  __break(1u);
}

void sub_1DD3BAF0C(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v7 = 0;
  v32 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v32 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DD640D58();
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *a3;

    v13 = v11;
    v14 = sub_1DD3978DC();
    OUTLINED_FUNCTION_7_5();
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = v15;
    if (v12[3] < v16 + v17)
    {
      break;
    }

    if (a2)
    {
      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      sub_1DD640A18();
      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v22 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v23 = (v22[6] + 16 * v14);
    *v23 = v9;
    v23[1] = v10;
    *(v22[7] + 8 * v14) = v13;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v22[2] = v26;
    ++v7;
    a2 = 1;
  }

  a4();
  v19 = *a3;
  v20 = sub_1DD3978DC();
  if ((v18 & 1) != (v21 & 1))
  {
    goto LABEL_21;
  }

  v14 = v20;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v27 = swift_allocError();
  swift_willThrow();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001BLL, 0x80000001DD66A130);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](39, 0xE100000000000000);
  sub_1DD640A38();
  __break(1u);
}

void sub_1DD3BB1E8(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_1DD640D58();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_1DD3978DC();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
      sub_1DD640A18();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v8;
    v21[1] = v7;
    *(v20[7] + 8 * v12) = v9;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_19;
    }

    v20[2] = v24;
    ++v5;
    a2 = 1;
  }

  sub_1DD4E6438(v15);
  v17 = *a3;
  v18 = sub_1DD3978DC();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_20;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001BLL, 0x80000001DD66A130);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](39, 0xE100000000000000);
  sub_1DD640A38();
  __break(1u);
}

void *sub_1DD3BB4C0(void *result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DD3BB50C(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  sub_1DD39638C(0, a3, a4);
  v5 = sub_1DD6400F8();

  [a2 setDependentSignals_];
}

unint64_t sub_1DD3BB588()
{
  result = qword_1ECCDBAE0;
  if (!qword_1ECCDBAE0)
  {
    sub_1DD63D0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDBAE0);
  }

  return result;
}

uint64_t sub_1DD3BB5E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF0, &qword_1DD643E78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3BB660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_11()
{
  v2 = *(v0 + 8);
  result = *(v1 - 128);
  v4 = *(v1 - 232);
  return result;
}

void OUTLINED_FUNCTION_12_5(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 112);
  v4 = *(v1 - 144);
}

uint64_t sub_1DD3BB774(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD3BB7AC()
{
  type metadata accessor for AppRankEvent(319);
  if (v0 <= 0x3F)
  {
    sub_1DD63D078();
    if (v1 <= 0x3F)
    {
      sub_1DD3BB974(319, &qword_1ECCDBB70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD3BB89C()
{
  sub_1DD63D0F8();
  if (v0 <= 0x3F)
  {
    sub_1DD63D078();
    if (v1 <= 0x3F)
    {
      sub_1DD3BB974(319, &qword_1EE1638D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1DD3BB9C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD3BB974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DD3BB9C4()
{
  if (!qword_1ECCDBB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBB90, qword_1DD643F18);
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDBB88);
    }
  }
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

unint64_t sub_1DD3BBA74()
{
  result = qword_1EE163810;
  if (!qword_1EE163810)
  {
    sub_1DD63D0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163810);
  }

  return result;
}

uint64_t sub_1DD3BBACC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD63D0F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_3_12@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t dispatch thunk of AppResolutionRule.resolve(features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DD3B5438;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DD3BBC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_seasAppUsageEnabledLocales) = &unk_1F58AAE60;
  sub_1DD3BCBE4(a1, v3 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_commsAppResolutionFeature);
  *(v3 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_trialConfigProviderPhone) = a2;
  *(v3 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_trialConfigProviderMessages) = a3;
  return v3;
}

__n128 *sub_1DD3BBCFC()
{
  CommsAppResolutionFeature.isPhone.getter();
  if (v0)
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v1 = sub_1DD63F9F8();
    v2 = OUTLINED_FUNCTION_11(v1, qword_1EE16EFB8);
    v3 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v3))
    {
      v4 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_13_4(v4);
      OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v5, v6, "#AppResolutionRulesProvider#getAppResolutionRules: Generating app resolution rules to use in phone request");
      OUTLINED_FUNCTION_8_2();
    }

    return sub_1DD3BC2DC();
  }

  else
  {
    CommsAppResolutionFeature.isMessage.getter();
    if (v8)
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v9 = sub_1DD63F9F8();
      v10 = OUTLINED_FUNCTION_11(v9, qword_1EE16EFB8);
      v11 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v11))
      {
        v12 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_13_4(v12);
        OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v13, v14, "#AppResolutionRulesProvider#getAppResolutionRules: Generating app resolution rules to use in message request");
        OUTLINED_FUNCTION_8_2();
      }

      return sub_1DD3BBE5C();
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }
}

__n128 *sub_1DD3BBE5C()
{
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_trialConfigProviderMessages);
  if (sub_1DD3C5200())
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v4 = sub_1DD63F9F8();
    v5 = OUTLINED_FUNCTION_11(v4, qword_1EE16EFB8);
    v6 = sub_1DD640368();
    if (OUTLINED_FUNCTION_2_4(v6))
    {
      v7 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_5_7(v7);
      OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v8, v9, "#AppResolutionRulesProvider#getMessagesAppResolutionRules: always1p rule is enabled");
      OUTLINED_FUNCTION_4_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
    v10 = OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_6_5(v10, xmmword_1DD643F90);
    type metadata accessor for Always1pRule();
    v11 = OUTLINED_FUNCTION_10_8();
    v12 = &protocol witness table for Always1pRule;
    goto LABEL_7;
  }

  if (sub_1DD3C5278())
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v13 = sub_1DD63F9F8();
    v14 = OUTLINED_FUNCTION_11(v13, qword_1EE16EFB8);
    v15 = sub_1DD640368();
    if (OUTLINED_FUNCTION_2_4(v15))
    {
      v16 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_5_7(v16);
      OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v17, v18, "#AppResolutionRulesProvider#getMessagesAppResolutionRules: app selection CoreML rule is enabled");
      OUTLINED_FUNCTION_4_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
    v10 = OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_6_5(v10, xmmword_1DD643F90);
    v5 = type metadata accessor for ModelBasedAppResolverRule();
    v11 = sub_1DD527F68();
    if (!v1)
    {
      v12 = &off_1F58BB7F0;
LABEL_7:
      v10[3].n128_u64[1] = v5;
      v10[4].n128_u64[0] = v12;
      v10[2].n128_u64[0] = v11;
      return v10;
    }

LABEL_16:
    v10[1].n128_u64[0] = 0;

    return v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_6_5(v10, xmmword_1DD643F80);
  v19 = type metadata accessor for SeasAppMatcherRule();
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  v20 = swift_allocObject();
  v21 = sub_1DD59C848(&v45);
  if (v1)
  {
    goto LABEL_16;
  }

  v10[3].n128_u64[1] = v19;
  v10[4].n128_u64[0] = &off_1F58BF7A0;
  v10[2].n128_u64[0] = v21;
  type metadata accessor for SeasContactInSingleAppRule();
  v23 = OUTLINED_FUNCTION_10_8();
  v10[6].n128_u64[0] = v20;
  v10[6].n128_u64[1] = &protocol witness table for SeasContactInSingleAppRule;
  v10[4].n128_u64[1] = v23;
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v24 = sub_1DD63F9F8();
  v25 = OUTLINED_FUNCTION_11(v24, qword_1EE16EFB8);
  v26 = sub_1DD640368();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_9();
    *v27 = 0;
    _os_log_impl(&dword_1DD38D000, v25, v26, "#AppResolutionRulesProvider#getMessagesAppResolutionRules: SeAS is enabled by default", v27, 2u);
    MEMORY[0x1E12B3DA0](v27, -1, -1);
  }

  v28 = *(v2 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_seasAppUsageEnabledLocales);
  v29 = v2 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_commsAppResolutionFeature;
  v30 = (v29 + *(type metadata accessor for CommsAppResolutionFeature(0) + 32));
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  *&v45 = v32;
  *(&v45 + 1) = v33;
  MEMORY[0x1EEE9AC00](v31);

  v34 = sub_1DD450388();

  if (v34)
  {
    v35 = sub_1DD63F9D8();
    v36 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v36))
    {
      v37 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_13_4(v37);
      OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v38, v39, "#AppResolutionRulesProvider#getMessagesAppResolutionRules: SeAS appUsageRule is enabled");
      OUTLINED_FUNCTION_8_2();
    }

    type metadata accessor for AppUsageProvider();
    v40 = swift_allocObject();
    v41 = type metadata accessor for SeasAppUsageRule();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    v43 = v10[1].n128_u64[0];
    if (v43 >= v10[1].n128_u64[1] >> 1)
    {
      sub_1DD3BE71C();
      v10 = v44;
    }

    *(&v46 + 1) = v41;
    v47 = &protocol witness table for SeasAppUsageRule;
    *&v45 = v42;
    v10[1].n128_u64[0] = v43 + 1;
    sub_1DD3AA4A8(&v45, &v10[2] + 40 * v43);
  }

  return v10;
}

__n128 *sub_1DD3BC2DC()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v60 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_trialConfigProviderPhone);
  if ((sub_1DD3C53FC() & 1) == 0)
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v25 = sub_1DD63F9F8();
    v26 = OUTLINED_FUNCTION_11(v25, qword_1EE16EFB8);
    v27 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_2_4(v27))
    {
      goto LABEL_17;
    }

    v28 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_5_7(v28);
    v31 = "#AppResolutionRulesProvider#getPhoneAppResolutionRules: AppSelection is disabled, returning empty list of rules";
    goto LABEL_16;
  }

  if ((sub_1DD3C5418() & 1) == 0)
  {
    if (sub_1DD3C5450())
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v32 = sub_1DD63F9F8();
      v33 = OUTLINED_FUNCTION_11(v32, qword_1EE16EFB8);
      v34 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v34))
      {
        v35 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_5_7(v35);
        OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v36, v37, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: SeAS Model based resolution is enabled");
        OUTLINED_FUNCTION_4_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
      v12 = OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_6_5(v12, xmmword_1DD643F90);
      v38 = sub_1DD63EFC8();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v38);
      sub_1DD3BC8E0(&v60);
      type metadata accessor for AppUsageProvider();
      swift_allocObject();
      OUTLINED_FUNCTION_14();
      v39 = type metadata accessor for SeASModelAppResolverRule();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      swift_allocObject();
      v42 = sub_1DD59F13C(&v60, v33, v6);
      if (v1)
      {
        goto LABEL_24;
      }

      v49 = &off_1F58BF7E8;
      v12[3].n128_u64[1] = v39;
LABEL_40:
      v12[4].n128_u64[0] = v49;
      v12[2].n128_u64[0] = v42;
      return v12;
    }

    if (sub_1DD3C5438())
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v43 = sub_1DD63F9F8();
      v44 = OUTLINED_FUNCTION_11(v43, qword_1EE16EFB8);
      v45 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v45))
      {
        v46 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_5_7(v46);
        OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v47, v48, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: always1p rule is enabled");
        OUTLINED_FUNCTION_4_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
      v12 = OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_6_5(v12, xmmword_1DD643F90);
      type metadata accessor for Always1pRule();
      v42 = OUTLINED_FUNCTION_10_8();
      v49 = &protocol witness table for Always1pRule;
LABEL_31:
      v12[3].n128_u64[1] = v44;
      goto LABEL_40;
    }

    if (sub_1DD3C54E8())
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v50 = sub_1DD63F9F8();
      v51 = OUTLINED_FUNCTION_11(v50, qword_1EE16EFB8);
      v52 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v52))
      {
        v53 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_5_7(v53);
        OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v54, v55, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: people centric model rule is enabled");
        OUTLINED_FUNCTION_4_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
      v12 = OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_6_5(v12, xmmword_1DD643F90);
      v44 = type metadata accessor for ModelBasedAppResolverRule();
      v42 = sub_1DD527F68();
      if (v1)
      {
        goto LABEL_24;
      }

      v49 = &off_1F58BB7F0;
      goto LABEL_31;
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v57 = sub_1DD63F9F8();
    v26 = OUTLINED_FUNCTION_11(v57, qword_1EE16EFB8);
    v58 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_2_4(v58))
    {
LABEL_17:

      return MEMORY[0x1E69E7CC0];
    }

    v59 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_5_7(v59);
    v31 = "#AppResolutionRulesProvider#getPhoneAppResolutionRules: Returning empty list of app resolution rules";
LABEL_16:
    OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v29, v30, v31);
    OUTLINED_FUNCTION_4_6();
    goto LABEL_17;
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v8 = sub_1DD63F9F8();
  __swift_project_value_buffer(v8, qword_1EE16EFB8);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640368();
  if (OUTLINED_FUNCTION_2_4(v10))
  {
    v11 = OUTLINED_FUNCTION_9();
    *v11 = 0;
    _os_log_impl(&dword_1DD38D000, v9, v2, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: SeAS is enabled", v11, 2u);
    MEMORY[0x1E12B3DA0](v11, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_6_5(v12, xmmword_1DD643F80);
  v13 = type metadata accessor for SeasAppMatcherRule();
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v14 = swift_allocObject();
  v15 = sub_1DD59C848(&v60);
  if (v1)
  {
LABEL_24:
    v12[1].n128_u64[0] = 0;

    return v12;
  }

  v12[3].n128_u64[1] = v13;
  v12[4].n128_u64[0] = &off_1F58BF7A0;
  v12[2].n128_u64[0] = v15;
  type metadata accessor for SeasContactInSingleAppRule();
  v16 = OUTLINED_FUNCTION_10_8();
  v12[6].n128_u64[0] = v14;
  v12[6].n128_u64[1] = &protocol witness table for SeasContactInSingleAppRule;
  v12[4].n128_u64[1] = v16;
  if (sub_1DD3C53E0())
  {
    v17 = sub_1DD63F9D8();
    v18 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v18))
    {
      v19 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_13_4(v19);
      OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v20, v21, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: SeAS appUsageRule is enabled");
      OUTLINED_FUNCTION_8_2();
    }

    type metadata accessor for AppUsageProvider();
    swift_allocObject();
    OUTLINED_FUNCTION_14();
    v22 = type metadata accessor for SeasAppUsageRule();
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    sub_1DD3BE71C();
    v12 = v24;
    *(&v61 + 1) = v22;
    v62 = &protocol witness table for SeasAppUsageRule;
    *&v60 = v23;
    v24[1].n128_u64[0] = 3;
    sub_1DD3AA4A8(&v60, &v24[7]);
  }

  return v12;
}

uint64_t sub_1DD3BC8E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = [objc_opt_self() clientWithIdentifier_];
  OUTLINED_FUNCTION_14();
  type metadata accessor for TrialManager();
  v4 = swift_allocObject();
  sub_1DD5506B4(v1, 0xD000000000000032, 0x80000001DD66A220, v4);
  OUTLINED_FUNCTION_14();
  v5 = type metadata accessor for PhoneAppSelectionModelManager();
  swift_allocObject();
  result = sub_1DD550A50(v1, 0xD000000000000019, 0x80000001DD66A200);
  a1[3] = v5;
  a1[4] = &off_1F58BD290;
  *a1 = result;
  return result;
}

uint64_t sub_1DD3BC9B8()
{
  sub_1DD3BCB88(v0 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_commsAppResolutionFeature);
  v1 = *(v0 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_trialConfigProviderPhone);

  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_trialConfigProviderMessages);

  v3 = *(v0 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_seasAppUsageEnabledLocales);

  return v0;
}

uint64_t sub_1DD3BCA10()
{
  sub_1DD3BC9B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppResolutionRulesProvider()
{
  result = qword_1ECCDBBB8;
  if (!qword_1ECCDBBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD3BCABC()
{
  result = type metadata accessor for CommsAppResolutionFeature(319);
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

uint64_t sub_1DD3BCB88(uint64_t a1)
{
  v2 = type metadata accessor for CommsAppResolutionFeature(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3BCBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommsAppResolutionFeature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return swift_allocObject();
}

uint64_t AppResolver.init(appResolutionRules:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for PhoneAppSelectionModelCache();
  swift_initStackObject();
  sub_1DD54F83C();
  OUTLINED_FUNCTION_14();
  type metadata accessor for AppResolverTrialConfigProviderPhone();
  OUTLINED_FUNCTION_57();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_34();
  sub_1DD3C5350(v3);
  OUTLINED_FUNCTION_23_2();
  type metadata accessor for MessagesAppSelectionModelCache();
  swift_initStackObject();
  sub_1DD51E238();
  OUTLINED_FUNCTION_14();
  type metadata accessor for AppResolverTrialConfigProviderMessages();
  OUTLINED_FUNCTION_57();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_34();
  sub_1DD3C5170(v4);
  OUTLINED_FUNCTION_14();
  type metadata accessor for FallbackAppProvider();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_29();
  a2[1] = sub_1DD4BFE14(v5, v6);
  v7 = [objc_opt_self() sharedAnalytics];
  v8 = [v7 defaultMessageStream];

  v12 = sub_1DD3BDEF0();
  v13 = &off_1F58BAF68;
  *&v11 = v8;
  type metadata accessor for AppResolverLogEmitter();
  v9 = swift_allocObject();
  result = sub_1DD3AA4A8(&v11, v9 + 16);
  a2[2] = v9;
  return result;
}

uint64_t AppResolver.resolveApp(features:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD3BCDE8, 0, 0);
}

void sub_1DD3BCDE8()
{
  v3 = v1[20];
  v4 = *(v3 + 24);
  v5 = v4[2];
  if (v5)
  {
    if (v5 == 1)
    {
      v3 = v4[4];
      v0 = v4[5];
      v6 = qword_1EE162D98;

      if (v6 != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_4;
    }

    v21 = v1[21];
    v22 = *v21;
    if (!*(*v21 + 16))
    {
      v46 = v21[1];
      v45 = v21[2];
      v47 = *v21;

      v3 = 0;
      v2 = sub_1DD3BDDBC();
      v0 = v1[21];
      swift_bridgeObjectRelease_n();

      *v0 = v2;
      v5 = v4[2];
      v22 = v2;
    }

    v23 = 0;
    v66 = v22;
    v1[22] = v22;
    v24 = v4 + 5;
    v20 = MEMORY[0x1E69E7CC0];
    while (v5 != v23)
    {
      if (v23 >= v4[2])
      {
        __break(1u);
LABEL_42:
        OUTLINED_FUNCTION_0_4();
LABEL_4:
        v7 = sub_1DD63F9F8();
        __swift_project_value_buffer(v7, qword_1EE16EFB8);

        v8 = sub_1DD63F9D8();
        v9 = sub_1DD640368();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = OUTLINED_FUNCTION_54();
          v11 = OUTLINED_FUNCTION_62();
          v68 = v11;
          *v10 = 136315138;
          *(v10 + 4) = sub_1DD39565C(v3, v0, &v68);
          _os_log_impl(&dword_1DD38D000, v8, v9, "#AppResolver#resolveApp: got only one app, resolving to that app: %s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v11);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_8_2();
        }

        v12 = v1[19];
        *v12 = v3;
        *(v12 + 8) = v0;
        *(v12 + 16) = 0;
LABEL_38:
        v63 = v1[1];
        OUTLINED_FUNCTION_49();

        __asm { BRAA            X1, X16 }
      }

      v3 = *(v24 - 1);
      v25 = *v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v20 + 16);
        sub_1DD3BE2A4();
        v20 = v28;
      }

      v0 = *(v20 + 16);
      v2 = v0 + 1;
      if (v0 >= *(v20 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v20 = v29;
      }

      *(v20 + 16) = v2;
      v26 = v20 + 16 * v0;
      *(v26 + 32) = v3;
      *(v26 + 40) = v25;
      v24 += 3;
      ++v23;
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v30 = sub_1DD63F9F8();
    v1[23] = __swift_project_value_buffer(v30, qword_1EE16EFB8);

    v31 = sub_1DD63F9D8();
    v19 = sub_1DD640368();

    v17 = v66;
    if (os_log_type_enabled(v31, v19))
    {
      v2 = OUTLINED_FUNCTION_54();
      v4 = OUTLINED_FUNCTION_62();
      v68 = v4;
      *v2 = 136315138;
      v32 = MEMORY[0x1E12B2430](v20, MEMORY[0x1E69E6158]);
      v34 = v33;

      v20 = sub_1DD39565C(v32, v34, &v68);

      *(v2 + 4) = v20;
      _os_log_impl(&dword_1DD38D000, v31, v19, "#AppResolver#resolveApp: Found more than 1 app to resolve: %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_8_2();
    }

    else
    {
    }

    v35 = *(v66 + 16);
    v1[24] = v35;
    v1[25] = 0;
    if (v35)
    {
      v36 = v1[22];
      if (*(v36 + 16))
      {
        sub_1DD3C2388(v36 + 32, (v1 + 2));
        v37 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
        v38 = *(v37 + 8);
        OUTLINED_FUNCTION_56_0();
        v67 = v39 + *v39;
        v41 = *(v40 + 4);
        v42 = swift_task_alloc();
        v1[26] = v42;
        *v42 = v1;
        OUTLINED_FUNCTION_28_1(v42);
        OUTLINED_FUNCTION_49();

        __asm { BRAA            X4, X16 }
      }

      __break(1u);
      OUTLINED_FUNCTION_0_4();
      v48 = sub_1DD63F9F8();
      __swift_project_value_buffer(v48, qword_1EE16EFB8);
      v49 = v19;
      v50 = sub_1DD63F9D8();
      v51 = sub_1DD640378();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_54();
        v53 = OUTLINED_FUNCTION_62();
        v68 = v53;
        *v52 = 136315138;
        v1[18] = v19;
        v54 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
        v55 = sub_1DD63FE38();
        v57 = sub_1DD39565C(v55, v56, &v68);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_1DD38D000, v50, v51, "#AppResolver#resolveApp: got an exception during resolving app recommendation error: %s, returning noMatchFound", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_0_1();
      }

      v59 = v1[20];
      v58 = v1[21];
      v60 = v1[19];
      v61 = v58[1];
      v62 = v58[2];
      v68 = *v58;
      v69 = v61;
      v70 = v62;

      sub_1DD3BDC20(v59, v60);

      goto LABEL_37;
    }

    OUTLINED_FUNCTION_60_0();
  }

  else
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16EFB8);
    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640378();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_54();
      *v16 = 134217984;
      *(v16 + 4) = 0;
      _os_log_impl(&dword_1DD38D000, v14, v15, "#AppResolver#resolveApp: got app count of %ld which is not expected, returning noMatchFound", v16, 0xCu);
      OUTLINED_FUNCTION_0_1();
    }

    v17 = v1[20];
    v18 = v1[21];
    v19 = v1[19];

    v20 = *v18;
    v2 = v18[1];
    v4 = v18[2];
  }

  v68 = v20;
  v69 = v2;
  v70 = v4;

  sub_1DD3BDC20(v17, v19);

LABEL_37:

  goto LABEL_38;
}

uint64_t sub_1DD3BD530()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1DD3BDA38;
  }

  else
  {
    v3 = sub_1DD3BD644;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD3BD644()
{
  v51 = v0;
  v1 = *(v0 + 96);
  v2 = (v0 + 16);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  if (v4 < 3)
  {
    v5 = *(v0 + 184);
    v6 = OUTLINED_FUNCTION_20_2();
    sub_1DD3C240C(v6, v7, v4);
    v8 = OUTLINED_FUNCTION_20_2();
    sub_1DD3C23EC(v8, v9, v4);
    sub_1DD3C23EC(0, 0, 3u);
    sub_1DD3C2388(v0 + 16, v0 + 56);
    v10 = OUTLINED_FUNCTION_20_2();
    sub_1DD3C240C(v10, v11, v4);
    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640368();
    v14 = OUTLINED_FUNCTION_20_2();
    sub_1DD3C23EC(v14, v15, v4);
    if (os_log_type_enabled(v12, v13))
    {
      v16 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v16 = 136315394;
      v47 = v13;
      v50[0] = v48;
      v18 = *(v0 + 80);
      v17 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v18);
      log = v12;
      v19 = (*(v17 + 16))(v18, v17);
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      v22 = sub_1DD39565C(v19, v21, v50);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      *(v0 + 120) = v1;
      *(v0 + 128) = v3;
      *(v0 + 136) = v4;
      v23 = OUTLINED_FUNCTION_20_2();
      sub_1DD3C240C(v23, v24, v4);
      v25 = sub_1DD63FE38();
      v27 = sub_1DD39565C(v25, v26, v50);

      *(v16 + 14) = v27;
      v2 = (v0 + 16);
      _os_log_impl(&dword_1DD38D000, log, v47, "#AppResolver#resolveApp: rule %s returned a match: %s", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    }

    v33 = *(v0 + 152);
    *v33 = v1;
    *(v33 + 8) = v3;
    *(v33 + 16) = v4;
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_8:
    v34 = *(v0 + 8);
    OUTLINED_FUNCTION_49();

    __asm { BRAA            X1, X16 }
  }

  v28 = OUTLINED_FUNCTION_20_2();
  sub_1DD3C23EC(v28, v29, 3u);
  sub_1DD3C23EC(0, 0, 3u);
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v31 = *(v0 + 192);
  v32 = *(v0 + 200) + 1;
  *(v0 + 200) = v32;
  if (v32 == v31)
  {
    OUTLINED_FUNCTION_60_0();
    v50[0] = v1;
    v50[1] = v3;
    v50[2] = v4;

    sub_1DD3BDC20(v0 + 16, v0 + 96);

    goto LABEL_8;
  }

  v37 = *(v0 + 176);
  if (v32 < *(v37 + 16))
  {
    sub_1DD3C2388(v37 + 40 * v32 + 32, v0 + 16);
    v38 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v39 = *(v38 + 8);
    OUTLINED_FUNCTION_56_0();
    v49 = v40 + *v40;
    v42 = *(v41 + 4);
    v43 = swift_task_alloc();
    *(v0 + 208) = v43;
    *v43 = v0;
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_49();

    __asm { BRAA            X4, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3BDA38()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[27];
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EFB8);
  v3 = v1;
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_54();
    v7 = OUTLINED_FUNCTION_62();
    v19[0] = v7;
    *v6 = 136315138;
    v0[18] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v9 = sub_1DD63FE38();
    v11 = sub_1DD39565C(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DD38D000, v4, v5, "#AppResolver#resolveApp: got an exception during resolving app recommendation error: %s, returning noMatchFound", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_0_1();
  }

  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  v15 = v12[1];
  v16 = v12[2];
  v19[0] = *v12;
  v19[1] = v15;
  v19[2] = v16;

  sub_1DD3BDC20(v13, v14);

  v17 = v0[1];

  return v17();
}

void sub_1DD3BDC20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 8);
  sub_1DD4BFE5C(a1, &v17);
  v6 = v17;
  v7 = v18;
  v8 = v19;
  CommsAppResolutionFeature.isPhone.getter();
  if (v9)
  {
    v10 = 5;
  }

  else
  {
    v10 = 3;
  }

  if (v8 == 3)
  {
    if (!(v7 | v6))
    {
      goto LABEL_14;
    }
  }

  else if (!v8)
  {
    v17 = v6;
    v18 = v7;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    if (sub_1DD63FD48())
    {
      v11 = sub_1DD63FE58();
      v13 = v12;
      sub_1DD3C23EC(v6, v7, 0);
      if (v11 != 0xD000000000000012 || 0x80000001DD66A260 != v13)
      {
        v15 = sub_1DD640CD8();

        if (v15)
        {
          goto LABEL_17;
        }

LABEL_14:
        v16 = 6;
LABEL_18:
        sub_1DD3C2824(v16, v10);
        goto LABEL_19;
      }
    }

    else
    {
      sub_1DD3C23EC(v6, v7, 0);
    }

LABEL_17:
    v16 = 12;
    goto LABEL_18;
  }

LABEL_19:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
}

__n128 *sub_1DD3BDDBC()
{
  v1 = OUTLINED_FUNCTION_14();
  v2 = type metadata accessor for CommsAppResolutionFeature(v1);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DD3C24BC(v0, v5);
  type metadata accessor for PhoneAppSelectionModelCache();
  swift_initStackObject();
  sub_1DD54F83C();
  OUTLINED_FUNCTION_14();
  type metadata accessor for AppResolverTrialConfigProviderPhone();
  OUTLINED_FUNCTION_57();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_34();
  v7 = sub_1DD3C5350(v6);
  type metadata accessor for MessagesAppSelectionModelCache();
  inited = swift_initStackObject();
  sub_1DD51E238();
  OUTLINED_FUNCTION_14();
  type metadata accessor for AppResolverTrialConfigProviderMessages();
  OUTLINED_FUNCTION_57();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_34();
  sub_1DD3C5170(v9);
  OUTLINED_FUNCTION_14();
  v10 = type metadata accessor for AppResolutionRulesProvider();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1DD3BBC90(v5, v7, inited);
  v13 = sub_1DD3BBCFC();

  return v13;
}

unint64_t sub_1DD3BDEF0()
{
  result = qword_1EE160180;
  if (!qword_1EE160180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE160180);
  }

  return result;
}

void sub_1DD3BDF94()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_1DD3BF534();
    *v0 = v4;
  }
}

void sub_1DD3BE000()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_1DD3C0B0C();
    *v0 = v4;
  }
}

uint64_t sub_1DD3BE09C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1DD3BE158()
{
  OUTLINED_FUNCTION_58_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_1DD3BF534();
    *v0 = v4;
  }
}

uint64_t sub_1DD3BE1AC(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1DD640138();
  }

  return result;
}

void sub_1DD3BE1D8()
{
  OUTLINED_FUNCTION_58_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_1DD3C0B0C();
    *v0 = v4;
  }
}

uint64_t sub_1DD3BE25C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1DD3BE2A4()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
    v9 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v9);
    v9[2] = v2;
    v9[3] = 2 * (v10 / 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BE37C()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEC0, &unk_1DD649F60);
    v3 = 24;
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = OUTLINED_FUNCTION_20_2();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEC8, &qword_1DD6441E8);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BE460()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_7(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD48, &qword_1DD6440D8);
    v9 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_5();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_1DD3BE528()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBF38, &qword_1DD644230);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63C758();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E695A238], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BE648()
{
  OUTLINED_FUNCTION_14_8();
  if (v7)
  {
    OUTLINED_FUNCTION_5_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_15_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_35(v8);
  if (v3)
  {
    OUTLINED_FUNCTION_53(v11, v12, v13, v14, v15, v16);
    v4 = 24;
    v17 = OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_22_2(v17);
    OUTLINED_FUNCTION_48(v18);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_59();
  if (v1)
  {
    if (v17 != v0 || v5 + 24 * v2 <= v4)
    {
      v20 = OUTLINED_FUNCTION_36_0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_29();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_32_4();
  }
}

void sub_1DD3BE740()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBF28, &qword_1DD644220);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63F3D8();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E69D2A98], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BE850()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &unk_1ECCDBD18, &qword_1DD649F30);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63F148();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E69D29D0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BE928()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEF8, &qword_1DD6441F8);
    v9 = OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_3_13(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BE9E4()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_7(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD0, &qword_1DD644030);
    v9 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v9);
    OUTLINED_FUNCTION_18_6(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_1DD3BEAAC()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD30, &unk_1DD649DE0);
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BEB7C()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_7(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC88, &qword_1DD654E50);
    v9 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v9);
    OUTLINED_FUNCTION_18_6(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1DD3BEC68()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_7(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD38, &unk_1DD6522F0);
    v9 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_5();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_1DD3BED30()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBC60, &qword_1DD664BC0);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E69695A8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BEE1C()
{
  OUTLINED_FUNCTION_16_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_8();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_15_6();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v7 = v5;
  }

  OUTLINED_FUNCTION_12_7(v7);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC40, &unk_1DD647D60);
    v10 = OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_22_2(v10);
    v10[2] = v3;
    v10[3] = 2 * (v11 / v4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v10 != v0 || &v13[80 * v3] <= v12)
    {
      memmove(v12, v13, 80 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BEEF8()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD60, &unk_1DD649EC0);
    v3 = 88;
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = OUTLINED_FUNCTION_20_2();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD68, &qword_1DD6440E8);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BEFDC()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBD70, &qword_1DD649ED0);
  v9 = OUTLINED_FUNCTION_23_2();
  matched = type metadata accessor for ContactMatchRuntimeData(v9);
  OUTLINED_FUNCTION_1_5(matched);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(type metadata accessor for ContactMatchRuntimeData, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

char *sub_1DD3BF0B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE78, &qword_1DD6441B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DD3BF1BC()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF48, &unk_1DD649F20);
    v3 = 24;
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = OUTLINED_FUNCTION_20_2();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF50, &qword_1DD644240);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF2A0()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF58, &qword_1DD644248);
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF370()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE60, &qword_1DD644198);
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 80 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF440()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE68, &qword_1DD6441A0);
    v9 = OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_3_13(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF534()
{
  OUTLINED_FUNCTION_14_8();
  if (v7)
  {
    OUTLINED_FUNCTION_5_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_15_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  v12 = sub_1DD3C1774(v11, v8, v5, v6);
  v13 = OUTLINED_FUNCTION_29();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_1_5(v15);
  v17 = *(v16 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v3)
  {
    sub_1DD3C1F6C(v0 + v18, v11, v12 + v18, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF620()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEA0, &qword_1DD6441C8);
    v9 = OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_3_13(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF700()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBC80, &qword_1DD649E20);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63D078();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E6969530], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BF868()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBC38, &qword_1DD644058);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63FA38();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E69D2828], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BF964()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBC90, &qword_1DD644070);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63F028();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E69D29A8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BFA60()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF20, &qword_1DD644218);
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BFB78()
{
  OUTLINED_FUNCTION_14_8();
  if (v7)
  {
    OUTLINED_FUNCTION_5_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_15_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_35(v8);
  if (v3)
  {
    OUTLINED_FUNCTION_53(v11, v12, v13, v14, v15, v16);
    v17 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_13_5();
    v17[2] = v2;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_59();
  if (v1)
  {
    if (v17 != v0 || v5 + 8 * v2 <= v4)
    {
      v20 = OUTLINED_FUNCTION_36_0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_29();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_32_4();
  }
}

void sub_1DD3BFC48()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBD50, &qword_1DD6440E0);
  v9 = OUTLINED_FUNCTION_23_2();
  v10 = type metadata accessor for ContactResolverRunTimeData(v9);
  OUTLINED_FUNCTION_1_5(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(type metadata accessor for ContactResolverRunTimeData, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BFD44()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 264 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BFE14()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBD58, &unk_1DD649DD0);
  OUTLINED_FUNCTION_23_2();
  v9 = type metadata accessor for Contact();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(type metadata accessor for Contact, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BFEEC()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBF68, &unk_1DD645280);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E6969AD0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BFFD8()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_53(v9, v10, v11, v12, v13, v14);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v2;
    v15[3] = 2 * v16 - 64;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    if (v15 != v0 || &v18[v2] <= v17)
    {
      memmove(v17, v18, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, v2);
  }
}

void sub_1DD3C0098()
{
  OUTLINED_FUNCTION_16_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_8();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_15_6();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v7 = v5;
  }

  OUTLINED_FUNCTION_12_7(v7);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE8, &qword_1DD6440A8);
    v10 = OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_22_2(v10);
    v10[2] = v3;
    v10[3] = 2 * (v11 / v4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v10 != v0 || &v0[10 * v3 + 4] <= v10 + 4)
    {
      v13 = OUTLINED_FUNCTION_20_2();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C018C()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_7(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF8, &qword_1DD649E80);
    v9 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v9);
    OUTLINED_FUNCTION_18_6(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_1DD3C0254()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBEA8, &qword_1DD6441D0);
  OUTLINED_FUNCTION_23_2();
  v9 = type metadata accessor for LearnedDisambiguation();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(type metadata accessor for LearnedDisambiguation, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C032C()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD28, &qword_1DD6440C8);
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    if (v3 != v0 || &v11[168 * v2] <= v10)
    {
      memmove(v10, v11, 168 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0420()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE90, &qword_1DD6441C0);
    v3 = 720;
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = OUTLINED_FUNCTION_20_2();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE98, &unk_1DD656C70);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0504()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE0, &qword_1DD657080);
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 712 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C05D4()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBF40, &qword_1DD644238);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63D8D8();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E69D2C60], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C06AC()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBE80, &qword_1DD64A020);
  OUTLINED_FUNCTION_23_2();
  v9 = type metadata accessor for UnstitchedTask();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(type metadata accessor for UnstitchedTask, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C0784()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBE88, &qword_1DD6441B8);
  OUTLINED_FUNCTION_23_2();
  v9 = type metadata accessor for RunTimeDataRecord();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(type metadata accessor for RunTimeDataRecord, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C085C()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBE70, &qword_1DD6441A8);
  OUTLINED_FUNCTION_23_2();
  v9 = type metadata accessor for StitchableInteraction();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(type metadata accessor for StitchableInteraction, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C0958()
{
  OUTLINED_FUNCTION_14_8();
  if (v7)
  {
    OUTLINED_FUNCTION_5_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_15_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_35(v8);
  if (v3)
  {
    OUTLINED_FUNCTION_53(v11, v12, v13, v14, v15, v16);
    v4 = 48;
    v17 = OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_22_2(v17);
    OUTLINED_FUNCTION_48(v18);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_59();
  if (v1)
  {
    if (v17 != v0 || v5 + 48 * v2 <= v4)
    {
      v20 = OUTLINED_FUNCTION_36_0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_29();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_32_4();
  }
}

void sub_1DD3C0A2C()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE38, &qword_1DD644178);
    v9 = OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_3_13(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0B0C()
{
  OUTLINED_FUNCTION_14_8();
  if (v7)
  {
    OUTLINED_FUNCTION_5_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_15_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_35(v8);
  if (v3)
  {
    OUTLINED_FUNCTION_53(v11, v12, v13, v14, v15, v16);
    v4 = 40;
    v17 = OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_22_2(v17);
    OUTLINED_FUNCTION_48(v18);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_59();
  if (v1)
  {
    if (v17 != v0 || v5 + 40 * v2 <= v4)
    {
      v20 = OUTLINED_FUNCTION_36_0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_29();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_32_4();
  }
}

void sub_1DD3C0BE0()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDD8, &unk_1DD65AB80);
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0CB0()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE00, &qword_1DD644150);
    v9 = OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_3_13(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0D6C()
{
  OUTLINED_FUNCTION_16_1();
  if (v7)
  {
    OUTLINED_FUNCTION_5_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_15_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_6_6(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDF8, &qword_1DD644148);
    v11 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_13_5();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    if (v11 != v0 || v5 + 8 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_20_2();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    type metadata accessor for INPersonHandleLabel(0);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0E4C()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBDE0, &qword_1DD644140);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63F428();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E69D2AB8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

char *sub_1DD3C0F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDC0, &qword_1DD644128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DD3C1038()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCD8, &qword_1DD6440A0);
    v9 = OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_3_13(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C10F4()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCC8, &unk_1DD649E30);
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C11C4()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBCD0, &qword_1DD644098);
  OUTLINED_FUNCTION_23_2();
  v9 = sub_1DD63DE08();
  OUTLINED_FUNCTION_1_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(MEMORY[0x1E69D1740], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C129C()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_6(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA0, &qword_1DD644080);
    v3 = 104;
    v9 = OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_7(v9);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = OUTLINED_FUNCTION_20_2();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA8, &unk_1DD649E40);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C1380()
{
  OUTLINED_FUNCTION_16_1();
  if (v7)
  {
    OUTLINED_FUNCTION_5_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_15_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_6_6(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB0, &qword_1DD644088);
    v11 = OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_3_13(v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_20_2();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB8, &unk_1DD649E50);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C1470()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_7(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_53(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v15);
    OUTLINED_FUNCTION_18_6(v16);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v15 != v0 || &v18[2 * v3] <= v17)
    {
      memmove(v17, v18, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, 2 * v3);
  }
}

char *sub_1DD3C1528(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC98, &qword_1DD644078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DD3C163C()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  v3 = OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_22_2(v3);
  v3[2] = v2;
  v3[3] = 2 * (v4 / 16);
  return v3;
}

const void *sub_1DD3C16BC()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD30, &unk_1DD649DE0);
  v1 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_22_2(v1);
  OUTLINED_FUNCTION_33_0(v2);
  return v1;
}

size_t sub_1DD3C1774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_44(a1, a2, a3, a4);
  v5 = OUTLINED_FUNCTION_29();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v5, v6) - 8);
  OUTLINED_FUNCTION_56_0();
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      OUTLINED_FUNCTION_33_0(result - v11);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DD3C1858()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD40, &qword_1DD6440D0);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * v4 - 64;
  return v3;
}

const void *sub_1DD3C18EC()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_44(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_22_2(v5);
  OUTLINED_FUNCTION_33_0(v6);
  return v5;
}

const void *sub_1DD3C1940()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDE8, &qword_1DD649F00);
  v1 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_22_2(v1);
  OUTLINED_FUNCTION_33_0(v2);
  return v1;
}

size_t sub_1DD3C19A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_44(a1, a2, a3, a4);
  v8 = OUTLINED_FUNCTION_23_2();
  v9 = *(a5(v8) - 8);
  OUTLINED_FUNCTION_56_0();
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = v5;
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

void *sub_1DD3C1AB8()
{
  OUTLINED_FUNCTION_40_0();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_44(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_42();
  _swift_stdlib_malloc_size(v6);
  OUTLINED_FUNCTION_13_5();
  v6[2] = v0;
  v6[3] = v7;
  return v6;
}

void *sub_1DD3C1B08()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v3 = OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_22_2(v3);
  v3[2] = v2;
  v3[3] = (2 * (v4 / 8)) | 1;
  return v3;
}

char *sub_1DD3C1B90(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1BC8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1C2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1C98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1CF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1D6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1DCC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[264 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1E64(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[728 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1E8C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[712 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1EFC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[128 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1F1C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[136 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1DD3C1F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_55();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_19_4();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_19_4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_1DD3C203C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C207C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[136 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1DD3C20A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_55();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_19_4();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_19_4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_1DD3C2160(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1DD3C21B0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1DD39565C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1DD3C220C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF30, &qword_1DD644228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1DD3C2300(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1DD3C2310(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_1DD3C2358@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DD3C2388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DD3C23EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1DD3C240C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1DD3C242C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DD3C246C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD3C24BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommsAppResolutionFeature(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t OUTLINED_FUNCTION_3_13(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_12_7(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t result)
{
  *(result + 8) = sub_1DD3BD530;
  v2 = *(v1 + 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_allocObject();
}

size_t OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DD3C19A8(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_51_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void OUTLINED_FUNCTION_60_0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_allocObject();
}

uint64_t sub_1DD3C2824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v47 - v8;
  v10 = sub_1DD63D0F8();
  v11 = OUTLINED_FUNCTION_0(v10);
  v50 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  sub_1DD3C2CD4(&v47 - v18);
  v20 = objc_opt_self();
  v21 = sub_1DD63D0B8();
  v22 = [v20 derivedIdentifierForComponentName:27 fromSourceIdentifier:v21];

  if (v22)
  {
    sub_1DD63D0D8();

    v23 = sub_1DD3C2E1C(a1, a2, v17);
    v49 = v10;
    if (v23)
    {
      v24 = v23;
      v25 = sub_1DD3C3188(v17, v19);
      if (v25)
      {
        v26 = v25;
        v27 = v3[5];
        v28 = v3[6];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v27);
        v48 = v26;
        v29 = *(v50 + 16);
        v29(v9, v17, v49);
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v49);
        (*(v28 + 8))(v24, v9, v27, v28);
        sub_1DD3C34AC(v9);
        v30 = v3[5];
        v31 = v3[6];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v30);
        v29(v9, v17, v49);
        v32 = v48;
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v49);
        (*(v31 + 8))(v32, v9, v30, v31);
        sub_1DD3C34AC(v9);
        if (qword_1EE162D98 != -1)
        {
          OUTLINED_FUNCTION_0_4();
        }

        v33 = sub_1DD63F9F8();
        __swift_project_value_buffer(v33, qword_1EE16EFB8);
        v34 = sub_1DD63F9D8();
        v35 = sub_1DD640358();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = OUTLINED_FUNCTION_9();
          *v36 = 0;
          _os_log_impl(&dword_1DD38D000, v34, v35, "AppResolverLogEmitter#emitAppSelectionExecutionPath: Execution path emitted.", v36, 2u);
          OUTLINED_FUNCTION_0_1();
        }

LABEL_19:
        v45 = v49;
        v46 = *(v50 + 8);
        v46(v17, v49);
        return (v46)(v19, v45);
      }
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v42 = sub_1DD63F9F8();
    __swift_project_value_buffer(v42, qword_1EE16EFB8);
    v34 = sub_1DD63F9D8();
    v43 = sub_1DD640378();
    if (os_log_type_enabled(v34, v43))
    {
      v44 = OUTLINED_FUNCTION_9();
      *v44 = 0;
      _os_log_impl(&dword_1DD38D000, v34, v43, "AppResolverLogEmitter#emitAppSelectionExecutionPath: Error generating log message Skipping Emission.", v44, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_19;
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v37 = sub_1DD63F9F8();
  __swift_project_value_buffer(v37, qword_1EE16EFB8);
  v38 = sub_1DD63F9D8();
  v39 = sub_1DD640378();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_9();
    *v40 = 0;
    _os_log_impl(&dword_1DD38D000, v38, v39, "AppResolverLogEmitter#emitAppSelectionExecutionPath: No inferenceUUID, not emitting SELF.", v40, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  return (*(v50 + 8))(v19, v10);
}

uint64_t sub_1DD3C2CD4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F448();

    sub_1DD63F738();
    v7 = v6;

    if (v7)
    {
      sub_1DD63D088();

      v8 = sub_1DD63D0F8();
      if (__swift_getEnumTagSinglePayload(v5, 1, v8) != 1)
      {
        return (*(*(v8 - 8) + 32))(a1, v5, v8);
      }

      sub_1DD3C34AC(v5);
    }
  }

  return sub_1DD63D0E8();
}

void *sub_1DD3C2E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63D0F8();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69CEBD8]) init];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(MEMORY[0x1E69CEBE0]) init];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(MEMORY[0x1E69CECD8]) init];
      if (v18)
      {
        v19 = v18;
        sub_1DD3C3468();
        (*(v9 + 16))(v13, a3, v6);
        v20 = sub_1DD5A5500(v13);
        [v17 setInferenceId_];

        [v15 setEventMetadata_];
        [v19 setExecutionPath_];
        [v19 setProjectIntent_];
        [v15 setSeasExecutionPathReported_];
        if (qword_1EE162D98 != -1)
        {
          OUTLINED_FUNCTION_0_4();
        }

        v21 = sub_1DD63F9F8();
        __swift_project_value_buffer(v21, qword_1EE16EFB8);
        v22 = v19;
        v23 = sub_1DD63F9D8();
        v24 = sub_1DD640368();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v37 = v26;
          *v25 = 136315138;
          [v22 executionPath];
          v27 = sub_1DD640518();
          v29 = sub_1DD39565C(v27, v28, &v37);

          *(v25 + 4) = v29;
          _os_log_impl(&dword_1DD38D000, v23, v24, "AppResolverLogEmitter#generateSelfMessage: generated SELF message for SeAS execution path: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();
        }

        else
        {
        }

        return v15;
      }
    }

    else
    {
      v17 = v15;
    }
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v30 = sub_1DD63F9F8();
  __swift_project_value_buffer(v30, qword_1EE16EFB8);
  v31 = sub_1DD63F9D8();
  v32 = sub_1DD640378();
  if (os_log_type_enabled(v31, v32))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v33, v34, "AppResolverLogEmitter#generateSelfMessage: failed to generate top-level SELF message");
    OUTLINED_FUNCTION_0_1();
  }

  return 0;
}

void *sub_1DD3C3188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D0F8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
      if (v16)
      {
        v17 = v16;
        [v16 setComponent_];
        sub_1DD3C3468();
        v18 = *(v7 + 16);
        v18(v11, a1, v4);
        v19 = sub_1DD5A5500(v11);
        [v17 setUuid_];

        [v15 setComponent_];
        v18(v11, a2, v4);
        v20 = sub_1DD5A5500(v11);
        [v15 setUuid_];

        [v13 setSource_];
        [v13 setTarget_];

        return v13;
      }
    }

    else
    {
      v15 = v13;
    }
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v21 = sub_1DD63F9F8();
  __swift_project_value_buffer(v21, qword_1EE16EFB8);
  v22 = sub_1DD63F9D8();
  v23 = sub_1DD640378();
  if (os_log_type_enabled(v22, v23))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v24, v25, "AppResolverLogEmitter#generateRequestLink: Failed to create RequestLink SELF message templates.");
    OUTLINED_FUNCTION_0_1();
  }

  return 0;
}

uint64_t sub_1DD3C340C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1DD3C3468()
{
  result = qword_1EE1638C0;
  if (!qword_1EE1638C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1638C0);
  }

  return result;
}

uint64_t sub_1DD3C34AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AppResolverResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_23;
      }

      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_1_8();
        v10 = sub_1DD640CD8();
        v33 = OUTLINED_FUNCTION_5_9();
        v35 = OUTLINED_FUNCTION_0_13(v33, v34, 1u);
        v37 = OUTLINED_FUNCTION_0_13(v35, v36, 1u);
        sub_1DD3C23EC(v37, v38, 1u);
        v17 = OUTLINED_FUNCTION_5_9();
        v19 = 1;
        goto LABEL_22;
      }

      v48 = 1;
      v49 = OUTLINED_FUNCTION_1_8();
      v51 = OUTLINED_FUNCTION_0_13(v49, v50, 1u);
      v53 = OUTLINED_FUNCTION_0_13(v51, v52, 1u);
      sub_1DD3C23EC(v53, v54, 1u);
      v55 = OUTLINED_FUNCTION_1_8();
      sub_1DD3C23EC(v55, v56, 1u);
      return v48;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_23;
      }

      v10 = sub_1DD3C3778(*a1, *a2);
      v20 = OUTLINED_FUNCTION_5_9();
      v22 = OUTLINED_FUNCTION_0_13(v20, v21, 2u);
      v24 = OUTLINED_FUNCTION_0_13(v22, v23, 2u);
      sub_1DD3C23EC(v24, v25, 2u);
      v17 = OUTLINED_FUNCTION_5_9();
      v19 = 2;
      goto LABEL_22;
    case 3u:
      if (v7 != 3 || (v5 | v6) != 0)
      {
        goto LABEL_23;
      }

      v27 = OUTLINED_FUNCTION_1_8();
      sub_1DD3C23EC(v27, v28, 3u);
      v29 = 0;
      v30 = 0;
      v31 = 3;
      goto LABEL_26;
    default:
      if (*(a2 + 16))
      {
LABEL_23:
        v40 = OUTLINED_FUNCTION_5_9();
        v42 = OUTLINED_FUNCTION_0_13(v40, v41, v7);
        v44 = OUTLINED_FUNCTION_0_13(v42, v43, v4);
        sub_1DD3C23EC(v44, v45, v4);
        v46 = OUTLINED_FUNCTION_5_9();
        sub_1DD3C23EC(v46, v47, v7);
        return 0;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v57 = OUTLINED_FUNCTION_0_13(v8, v2, 0);
        v59 = OUTLINED_FUNCTION_0_13(v57, v58, 0);
        sub_1DD3C23EC(v59, v60, 0);
        v29 = OUTLINED_FUNCTION_1_8();
        v31 = 0;
LABEL_26:
        sub_1DD3C23EC(v29, v30, v31);
        return 1;
      }

      v10 = sub_1DD640CD8();
      v11 = OUTLINED_FUNCTION_5_9();
      v13 = OUTLINED_FUNCTION_0_13(v11, v12, 0);
      v15 = OUTLINED_FUNCTION_0_13(v13, v14, 0);
      sub_1DD3C23EC(v15, v16, 0);
      v17 = OUTLINED_FUNCTION_5_9();
      v19 = 0;
LABEL_22:
      sub_1DD3C23EC(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_1DD3C371C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3C3778(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_5(a1, a2);
  if (v7)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 40);
    for (i = (v4 + 40); ; i += 2)
    {
      v7 = *(v5 - 1) == *(i - 1) && *v5 == *i;
      if (!v7 && (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      v5 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD3C37FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_5(a1, a2);
  if (!v9)
  {
    return 0;
  }

  if (v2 && v3 != v4)
  {
    v5 = (v3 + 48);
    v6 = (v4 + 48);
    do
    {
      v7 = *v5;
      v8 = *v6;
      v9 = *(v5 - 2) == *(v6 - 2) && *(v5 - 1) == *(v6 - 1);
      if (v9)
      {
        if (v7 != v8)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if ((v11 & 1) == 0 || v7 != v8)
        {
          return result;
        }
      }

      v5 += 3;
      v6 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1DD3C38A8()
{
  OUTLINED_FUNCTION_18_7();
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v3 = OUTLINED_FUNCTION_6_7(matched);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_10();
  v73 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_6();
  v10 = *(v1 + 16);
  if (v10 != *(v0 + 16))
  {
LABEL_62:
    v54 = 0;
    return v54 & 1;
  }

  if (!v10 || v1 == v0)
  {
    v54 = 1;
    return v54 & 1;
  }

  v11 = 0;
  OUTLINED_FUNCTION_8_4(v9);
  v56 = v10;
  v57 = *(v12 + 72);
  v69 = v2;
  while (1)
  {
    OUTLINED_FUNCTION_3_3();
    result = sub_1DD3C4CFC();
    if (v11 == v10)
    {
      break;
    }

    v58 = v11;
    OUTLINED_FUNCTION_3_3();
    v14 = v73;
    sub_1DD3C4CFC();
    OUTLINED_FUNCTION_14_9();
    static Contact.== infix(_:_:)();
    if ((v15 & 1) == 0)
    {
      goto LABEL_61;
    }

    result = static ContactResolver.SignalSet.== infix(_:_:)((v69 + matched[5]), (v73 + matched[5]));
    if ((result & 1) == 0)
    {
      goto LABEL_61;
    }

    v16 = matched[6];
    v17 = v69 + v16;
    v18 = *(v69 + v16);
    v19 = *(v69 + v16 + 8);
    v20 = (v73 + v16);
    v21 = v18 == *v20 && v19 == v20[1];
    if (!v21 || (v61 = *(v20 + 2), v62 = *(v17 + 16), v22 = *(v62 + 16), v22 != *(v61 + 16)))
    {
LABEL_61:
      OUTLINED_FUNCTION_2_8();
      sub_1DD3C4D54(v73, v55);
      sub_1DD3C4D54(v69, v14);
      goto LABEL_62;
    }

    if (v22)
    {
      v23 = v62 == v61;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v30 = 0;
      while (v22)
      {
        v31 = *(v62 + v30 + 48);
        v32 = *(v62 + v30 + 56);
        v33 = *(v62 + v30 + 64);
        v34 = *(v62 + v30 + 72);
        v14 = *(v62 + v30 + 80);
        v68 = *(v62 + v30 + 88);
        v67 = *(v62 + v30 + 96);
        v64 = *(v62 + v30 + 104);
        v71 = *(v62 + v30 + 105);
        v35 = *(v62 + v30 + 112);
        v36 = *(v61 + v30 + 48);
        v37 = *(v61 + v30 + 56);
        v38 = *(v61 + v30 + 64);
        v40 = *(v61 + v30 + 72);
        v39 = *(v61 + v30 + 80);
        v66 = *(v61 + v30 + 88);
        v65 = *(v61 + v30 + 96);
        v63 = *(v61 + v30 + 104);
        v70 = *(v61 + v30 + 105);
        v41 = *(v62 + v30 + 32) == *(v61 + v30 + 32) && *(v62 + v30 + 40) == *(v61 + v30 + 40);
        v42 = *(v61 + v30 + 112);
        if (!v41)
        {
          v59 = v30;
          v60 = *(v61 + v30 + 80);
          v43 = *(v61 + v30 + 72);
          v44 = *(v62 + v30 + 80);
          v45 = *(v62 + v30 + 72);
          v46 = *(v62 + v30 + 56);
          v47 = sub_1DD640CD8();
          v32 = v46;
          v34 = v45;
          v14 = v44;
          v40 = v43;
          v30 = v59;
          v39 = v60;
          if ((v47 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        if (v31 != v36)
        {
          goto LABEL_61;
        }

        if (v32 != v37 || v33 != v38)
        {
          v49 = v34;
          v50 = sub_1DD640CD8();
          v34 = v49;
          if ((v50 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        v51 = v34 == v40 && v14 == v39;
        if (!v51 && (sub_1DD640CD8() & 1) == 0)
        {
          goto LABEL_61;
        }

        result = v68;
        if (v68 == v66 && v67 == v65)
        {
          if (v64 != v63)
          {
            goto LABEL_61;
          }
        }

        else
        {
          result = sub_1DD640CD8();
          if (result & 1) == 0 || ((v64 ^ v63))
          {
            goto LABEL_61;
          }
        }

        if (v71 == 2)
        {
          if (v70 != 2 || v35 != v42)
          {
            goto LABEL_61;
          }
        }

        else if (v70 == 2 || ((v70 ^ v71) & 1) != 0 || v35 != v42)
        {
          goto LABEL_61;
        }

        v30 += 88;
        if (!--v22)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      break;
    }

LABEL_19:
    sub_1DD4747FC(*(v69 + matched[7]), *(v73 + matched[7]));
    if ((v24 & 1) == 0 || *(v69 + matched[8]) != *(v73 + matched[8]))
    {
      goto LABEL_61;
    }

    v25 = *(v69 + matched[9]) ^ *(v73 + matched[9]);
    OUTLINED_FUNCTION_2_8();
    sub_1DD3C4D54(v26, v27);
    v28 = OUTLINED_FUNCTION_14_9();
    sub_1DD3C4D54(v28, v29);
    v10 = v56;
    if ((v25 & 1) == 0)
    {
      v11 = v58 + 1;
      if (v58 + 1 != v56)
      {
        continue;
      }
    }

    v54 = v25 ^ 1;
    return v54 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3C3CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_10_10();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_8_4(v10);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v18 = *(v17 + 72);
      do
      {
        sub_1DD3C4CFC();
        sub_1DD3C4CFC();
        OUTLINED_FUNCTION_1_8();
        static Contact.== infix(_:_:)();
        v20 = v19;
        sub_1DD3C4D54(v8, type metadata accessor for Contact);
        sub_1DD3C4D54(v12, type metadata accessor for Contact);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v16 += v18;
        v15 += v18;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1DD3C3E7C(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      return 1;
    }

    v11 = 0;
    v33 = a1;
    while (1)
    {
      OUTLINED_FUNCTION_11_8(a1);
      v13 = *(v12 + 104);
      v14 = *(v12 + 105);
      v15 = *(v12 + 112);
      OUTLINED_FUNCTION_4_8();
      v36 = v19;
      v37 = v20;
      v34 = *(v18 + 105);
      v35 = v21;
      v24 = v22 == v23 && v16 == v17;
      v25 = *(v18 + 112);
      if (v24)
      {
        if (v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if ((v27 & 1) == 0 || v6 != v7)
        {
          return result;
        }
      }

      if (v2 != v4 || v3 != v5)
      {
        OUTLINED_FUNCTION_15_0();
        if ((sub_1DD640CD8() & 1) == 0)
        {
          break;
        }
      }

      v29 = v43 == v8 && v42 == v9;
      if (!v29 && (OUTLINED_FUNCTION_16_4() & 1) == 0)
      {
        break;
      }

      if (v41 == v39 && v40 == v38)
      {
        if (v37 != v36)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if (v31 & 1) == 0 || ((v37 ^ v36))
        {
          return result;
        }
      }

      if (v35 == 2)
      {
        if (v34 != 2 || v15 != v25)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v34 == 2 || ((v34 ^ v35) & 1) != 0 || v15 != v25)
        {
          return result;
        }
      }

      v11 += 88;
      --v10;
      a1 = v33;
      if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD3C4024(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 136)
    {
      memcpy(__dst, v3, 0x81uLL);
      memcpy(v9, v3, 0x81uLL);
      memcpy(v11, i, 0x81uLL);
      memcpy(__src, i, 0x81uLL);
      sub_1DD3C4DAC(__dst, v7);
      sub_1DD3C4DAC(v11, v7);
      v5 = static SportsPersonalizationEntity.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, 0x81uLL);
      sub_1DD3C4E08(v12);
      memcpy(v13, v9, 0x81uLL);
      sub_1DD3C4E08(v13);
      if (!v5)
      {
        break;
      }

      v3 += 136;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD3C4134(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(a1, a2);
  if (v12)
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (OUTLINED_FUNCTION_16_4() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (OUTLINED_FUNCTION_17_6() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD3C4228(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      return 1;
    }

    v11 = 0;
    v30 = a1;
    while (1)
    {
      OUTLINED_FUNCTION_11_8(a1);
      v13 = *(v12 + 104);
      v14 = *(v12 + 105);
      OUTLINED_FUNCTION_4_8();
      v33 = v19;
      v34 = v20;
      v23 = v21 == v22 && v15 == v16;
      v31 = *(v17 + 105);
      v32 = v18;
      if (v23)
      {
        if (v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if ((v25 & 1) == 0 || v6 != v7)
        {
          return result;
        }
      }

      if (v2 != v4 || v3 != v5)
      {
        OUTLINED_FUNCTION_15_0();
        if ((sub_1DD640CD8() & 1) == 0)
        {
          break;
        }
      }

      v27 = v40 == v8 && v39 == v9;
      if (!v27 && (OUTLINED_FUNCTION_16_4() & 1) == 0)
      {
        break;
      }

      if (v38 == v36 && v37 == v35)
      {
        if (v34 != v33)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if (v29 & 1) == 0 || ((v34 ^ v33))
        {
          return result;
        }
      }

      if (v32 == 2)
      {
        if (v31 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v31 == 2 || ((v31 ^ v32) & 1) != 0)
        {
          return result;
        }
      }

      v11 += 80;
      --v10;
      a1 = v30;
      if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD3C43B4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3C4410(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD78, &unk_1DD644390);
  v6 = OUTLINED_FUNCTION_6_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_10();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_6();
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
LABEL_15:
    v21 = 0;
    return v21 & 1;
  }

  if (v14 && a1 != a2)
  {
    OUTLINED_FUNCTION_8_4(v13);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v19 = *(v18 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_5_9();
      sub_1DD3C4EB4();
      OUTLINED_FUNCTION_19_5();
      v20 = *v2 == *v11 && *(v2 + 1) == *(v11 + 1);
      if (!v20 && (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      v21 = static PrivatizedHandleSignalSet.== infix(_:_:)(&v2[*(v5 + 36)], &v11[*(v5 + 36)]);
      sub_1DD390754(v11, &qword_1ECCDBD78, &unk_1DD644390);
      sub_1DD390754(v2, &qword_1ECCDBD78, &unk_1DD644390);
      if (v21)
      {
        v17 += v19;
        v16 += v19;
        if (--v14)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    v22 = OUTLINED_FUNCTION_1_8();
    sub_1DD390754(v22, v23, &unk_1DD644390);
    v24 = OUTLINED_FUNCTION_14_9();
    sub_1DD390754(v24, v25, &unk_1DD644390);
    goto LABEL_15;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1DD3C45E4(uint64_t a1, uint64_t a2)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v5 = OUTLINED_FUNCTION_6_7(v51);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_10();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_6();
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_39:
    v40 = 0;
    return v40 & 1;
  }

  if (v13 && a1 != a2)
  {
    OUTLINED_FUNCTION_8_4(v12);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v50 = *(v17 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_5_9();
      sub_1DD3C4EB4();
      v52 = v15;
      OUTLINED_FUNCTION_19_5();
      v18 = *(v2 + 16);
      v20 = *(v2 + 24);
      v19 = *(v2 + 32);
      v21 = *(v2 + 40);
      v22 = *(v2 + 48);
      v57 = *(v2 + 64);
      v58 = *(v2 + 56);
      v60 = *(v2 + 73);
      v23 = *(v10 + 16);
      v24 = *(v10 + 24);
      v25 = *(v10 + 32);
      v27 = *(v10 + 40);
      v26 = *(v10 + 48);
      v56 = *(v10 + 56);
      v55 = *(v10 + 64);
      v53 = *(v10 + 72);
      v54 = *(v2 + 72);
      v28 = *v2 == *v10 && *(v2 + 8) == *(v10 + 8);
      v59 = *(v10 + 73);
      if (!v28)
      {
        v48 = *(v10 + 48);
        v49 = v13;
        v46 = *(v2 + 48);
        v47 = *(v10 + 40);
        v29 = v16;
        v30 = *(v2 + 40);
        v31 = *(v2 + 32);
        v32 = *(v10 + 24);
        v33 = *(v10 + 32);
        v34 = sub_1DD640CD8();
        v25 = v33;
        v24 = v32;
        v19 = v31;
        v21 = v30;
        v16 = v29;
        v22 = v46;
        v27 = v47;
        v26 = v48;
        v13 = v49;
        if ((v34 & 1) == 0)
        {
          break;
        }
      }

      if (v18 != v23)
      {
        break;
      }

      if (v20 != v24 || v19 != v25)
      {
        v36 = v21;
        v37 = sub_1DD640CD8();
        v21 = v36;
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      v38 = v21 == v27 && v22 == v26;
      if (!v38 && (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      if (v58 == v56 && v57 == v55)
      {
        if (v54 != v53)
        {
          break;
        }
      }

      else if (sub_1DD640CD8() & 1) == 0 || ((v54 ^ v53))
      {
        break;
      }

      if (v60 == 2)
      {
        if (v59 != 2)
        {
          break;
        }
      }

      else if (v59 == 2 || ((v59 ^ v60) & 1) != 0)
      {
        break;
      }

      v40 = static ContactResolver.HandleSignalSet.== infix(_:_:)((v2 + *(v51 + 36)), (v10 + *(v51 + 36)));
      sub_1DD390754(v10, &qword_1ECCDBBD8, &unk_1DD645A90);
      sub_1DD390754(v2, &qword_1ECCDBBD8, &unk_1DD645A90);
      if (v40)
      {
        v16 += v50;
        v15 = v52 + v50;
        if (--v13)
        {
          continue;
        }
      }

      return v40 & 1;
    }

    v41 = OUTLINED_FUNCTION_1_8();
    sub_1DD390754(v41, v42, &unk_1DD645A90);
    v43 = OUTLINED_FUNCTION_14_9();
    sub_1DD390754(v43, v44, &unk_1DD645A90);
    goto LABEL_39;
  }

  v40 = 1;
  return v40 & 1;
}

uint64_t sub_1DD3C4934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D0F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v26 = *(v16 + 56);
  v27 = v17;
  while (1)
  {
    v19 = v27;
    result = (v27)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1DD3C4E5C();
    OUTLINED_FUNCTION_14_9();
    v22 = sub_1DD63FD98();
    v23 = *v18;
    v24 = OUTLINED_FUNCTION_15_0();
    v23(v24);
    (v23)(v11, v4);
    if (v22)
    {
      v15 += v26;
      v14 += v26;
      v25 = v12-- == 1;
      v16 = v21;
      if (!v25)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3C4B10(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_5(a1, a2);
  if (!v9)
  {
    return 0;
  }

  if (v2 && v3 != v4)
  {
    v5 = (v4 + 48);
    v6 = (v3 + 48);
    do
    {
      v7 = *v6;
      v8 = *v5;
      v9 = *(v6 - 2) == *(v5 - 2) && *(v6 - 1) == *(v5 - 1);
      if (v9)
      {
        if (v7 != v8)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if ((v11 & 1) == 0 || v7 != v8)
        {
          return result;
        }
      }

      v6 += 24;
      v5 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1DD3C4BBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (v4)
    {
      OUTLINED_FUNCTION_18_7();
      if (v5 != v6)
      {
        v7 = 0;
        do
        {
          v8 = v3 + v7;
          v9 = v2 + v7;
          if (*(v3 + v7 + 32) != *(v2 + v7 + 32))
          {
            break;
          }

          v10 = *(v8 + 56);
          v11 = *(v8 + 64);
          v12 = *(v8 + 72);
          v13 = *(v9 + 56);
          v14 = *(v9 + 64);
          v15 = *(v9 + 72);
          v16 = *(v8 + 40) == *(v9 + 40) && *(v8 + 48) == *(v9 + 48);
          if (!v16 && (sub_1DD640CD8() & 1) == 0)
          {
            break;
          }

          if (v10 == v13 && v11 == v14)
          {
            if (v12 != v15)
            {
              return;
            }
          }

          else
          {
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_12_8();
            if ((v18 & 1) == 0 || v12 != v15)
            {
              return;
            }
          }

          v7 += 48;
          --v4;
        }

        while (v4);
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13SiriInference17AppResolverResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD3C4CE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DD3C4CFC()
{
  OUTLINED_FUNCTION_18_7();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v0;
}

uint64_t sub_1DD3C4D54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DD3C4E5C()
{
  result = qword_1ECCDBF70;
  if (!qword_1ECCDBF70)
  {
    sub_1DD63D0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDBF70);
  }

  return result;
}

uint64_t sub_1DD3C4EB4()
{
  OUTLINED_FUNCTION_18_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_15_0();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1)
{
  v2 = a1 + v1;
  result = *(a1 + v1 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v10 = *(v2 + 80);
  v11 = *(v2 + 72);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_1DD3C4EB4();
}

uint64_t sub_1DD3C4F88(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0 && *(a1 + 8) == 1)
  {
    v1 = *(a1 + 24);
    v2 = *(v1 + 16);
    if (!v2)
    {
      return 0;
    }

    sub_1DD3B52B8();
    sub_1DD3B530C();
    v3 = 0;
    v4 = 0;
    v5 = (v1 + 48);
    v15 = 0;
    while (1)
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      OUTLINED_FUNCTION_0_14();

      if (OUTLINED_FUNCTION_1_9())
      {
        if (v8)
        {
          v9 = __OFADD__(v4++, 1);
          if (v9)
          {
            break;
          }
        }
      }

      OUTLINED_FUNCTION_0_14();
      if (OUTLINED_FUNCTION_1_9() & 1) != 0 || ((v8 ^ 1))
      {
      }

      else
      {

        v9 = __OFADD__(v3++, 1);
        if (v9)
        {
          goto LABEL_21;
        }

        v15 = v6;
      }

      v5 += 24;
      if (!--v2)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (qword_1EE162D98 != -1)
  {
LABEL_22:
    swift_once();
  }

  v11 = sub_1DD63F9F8();
  __swift_project_value_buffer(v11, qword_1EE16EFB8);
  v12 = sub_1DD63F9D8();
  v13 = sub_1DD640378();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DD38D000, v12, v13, "#SeasRulesHelper contacts is not equal 1, return default values", v14, 2u);
    MEMORY[0x1E12B3DA0](v14, -1, -1);
  }

  return 0;
}

uint64_t sub_1DD3C5170(void *a1)
{
  if (!a1)
  {
    v2 = [objc_opt_self() clientWithIdentifier_];
    type metadata accessor for TrialManager();
    v3 = swift_allocObject();
    a1 = sub_1DD5506B4(v2, 0xD000000000000031, 0x80000001DD66A320, v3);
  }

  *(v1 + 16) = a1;
  return v1;
}

id sub_1DD3C5200()
{
  v1 = *(v0 + 16);
  v2 = sub_1DD5FFDD8();
  v3 = sub_1DD59B690(0x7031737961776C61, 0xE800000000000000, v2);

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 BOOLeanValue];

  return v4;
}

id sub_1DD3C5278()
{
  v1 = *(v0 + 16);
  v2 = sub_1DD5FFDD8();
  v3 = sub_1DD59B690(0xD000000000000017, 0x80000001DD66A300, v2);

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 BOOLeanValue];

  return v4;
}

uint64_t sub_1DD3C52F4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3C5350(void *a1)
{
  if (!a1)
  {
    v2 = [objc_opt_self() clientWithIdentifier_];
    type metadata accessor for TrialManager();
    v3 = swift_allocObject();
    a1 = sub_1DD5506B4(v2, 0xD000000000000032, 0x80000001DD66A220, v3);
  }

  *(v1 + 16) = a1;
  return v1;
}

id sub_1DD3C546C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = sub_1DD5FFDD8();
  v7 = sub_1DD59B690(a1, a2, v6);

  if (!v7)
  {
    return 0;
  }

  v8 = [v7 BOOLeanValue];

  return v8;
}

id sub_1DD3C54E8()
{
  v1 = *(v0 + 16);
  v2 = sub_1DD5FFDD8();
  v3 = sub_1DD59B690(0xD000000000000012, 0x80000001DD66A3A0, v2);

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 BOOLeanValue];

  return v4;
}

id sub_1DD3C5588()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  [v0 setComputeUnits_];
  return v0;
}

void sub_1DD3C55D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 8))();
  v6 = sub_1DD5FFDD8();

  v7 = (*(a2 + 16))(a1, a2);
  v10 = sub_1DD59B690(v7, v8, v6);

  if (v10)
  {
    sub_1DD5FF528(a3);
  }

  else
  {
    v9 = sub_1DD63CE68();

    __swift_storeEnumTagSinglePayload(a3, 1, 1, v9);
  }
}

uint64_t sub_1DD3C56E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v51 - v7;
  v9 = sub_1DD63CE68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  sub_1DD3C55D4(a1, a2, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1DD3ADFD0(v8, &qword_1ECCDBF78, &unk_1DD644440);
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16EFB8);
    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DD38D000, v21, v22, "AppSelectionModelManaging#model: No Trial override, using default model", v23, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    v24 = OUTLINED_FUNCTION_1_10();
    return v25(v24);
  }

  else
  {
    (*(v10 + 32))(v19, v8, v9);
    v27 = sub_1DD3C5588();
    (*(a2 + 32))(&v57, v19, v27, a1, a2);

    if (v58)
    {
      sub_1DD3AA4A8(&v57, v59);
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v28 = sub_1DD63F9F8();
      __swift_project_value_buffer(v28, qword_1EE16EFB8);
      (*(v10 + 16))(v16, v19, v9);
      v29 = sub_1DD63F9D8();
      v30 = sub_1DD640368();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v57 = v55;
        *v31 = 136446210;
        sub_1DD3C5CC8();
        v32 = sub_1DD640CB8();
        v34 = v33;
        v35 = *(v10 + 8);
        v35(v16, v9);
        v36 = sub_1DD39565C(v32, v34, &v57);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_1DD38D000, v29, v30, "AppSelectionModelManaging#model: Loaded model from Trial-override; %{public}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();

        v35(v19, v9);
      }

      else
      {

        v47 = *(v10 + 8);
        v47(v16, v9);
        v47(v19, v9);
      }

      return sub_1DD3AA4A8(v59, v56);
    }

    else
    {
      sub_1DD3ADFD0(&v57, &qword_1ECCDBF80, &unk_1DD657A00);
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v37 = sub_1DD63F9F8();
      __swift_project_value_buffer(v37, qword_1EE16EFB8);
      (*(v10 + 16))(v13, v19, v9);
      v38 = sub_1DD63F9D8();
      v39 = sub_1DD640378();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v53 = v40;
        v55 = swift_slowAlloc();
        *&v59[0] = v55;
        *v40 = 136446210;
        sub_1DD3C5CC8();
        v54 = v39;
        v51 = sub_1DD640CB8();
        v52 = v38;
        v42 = v41;
        v43 = OUTLINED_FUNCTION_2_9();
        (v38)(v43);
        v44 = sub_1DD39565C(v51, v42, v59);

        v46 = v52;
        v45 = v53;
        *(v53 + 1) = v44;
        _os_log_impl(&dword_1DD38D000, v46, v54, "AppSelectionModelManaging#model: Failed to load Trial-overridden model from %{public}s, reverting to default model", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        v48 = OUTLINED_FUNCTION_2_9();
        (v38)(v48);
      }

      v49 = OUTLINED_FUNCTION_1_10();
      v50(v49);
      return (v38)(v19, v9);
    }
  }
}

unint64_t sub_1DD3C5CC8()
{
  result = qword_1EE165CE0;
  if (!qword_1EE165CE0)
  {
    sub_1DD63CE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165CE0);
  }

  return result;
}

void sub_1DD3C5D20(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 40;
  v5 = MEMORY[0x1E69E7CC0];
  v15 = a1 + 40;
LABEL_2:
  for (i = (v4 + 16 * v2); ; i += 2)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v9 = sub_1DD56CE00(v16, v8, v7);

    if (v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = *(v5 + 16);
        sub_1DD42A2D4();
        v5 = v17;
      }

      v12 = *(v5 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v5 + 24) >> 1)
      {
        sub_1DD42A2D4();
        v13 = v12 + 1;
        v5 = v17;
      }

      ++v2;
      *(v5 + 16) = v13;
      v14 = v5 + 16 * v12;
      *(v14 + 32) = v8;
      *(v14 + 40) = v7;
      v4 = v15;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

uint64_t sub_1DD3C5E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = 0;
  v11 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v10)
    {

      return v23;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = *(v3 + 72);
    sub_1DD3C68F8(a1 + v12 + v13 * v10, v9);
    sub_1DD40F728();
    if (sub_1DD56DEC0(&v24, v14))
    {
      sub_1DD3C69D0(v9, v22);
      v15 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = *(v15 + 16);
        OUTLINED_FUNCTION_0_16();
        sub_1DD42B4F8();
        v15 = v25;
      }

      v18 = *(v15 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v15 + 24) >> 1)
      {
        v23 = v18 + 1;
        v21 = v18;
        sub_1DD42B4F8();
        v19 = v23;
        v18 = v21;
        v15 = v25;
      }

      ++v10;
      *(v15 + 16) = v19;
      v23 = v15;
      result = sub_1DD3C69D0(v22, v15 + v12 + v18 * v13);
    }

    else
    {
      result = sub_1DD3C6968(v9);
      ++v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3C6080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v21 - v8);
  v10 = 0;
  v11 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v10)
    {

      return v23;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = *(v3 + 72);
    sub_1DD3C68F8(a1 + v12 + v13 * v10, v9);
    v15 = *v9;
    v14 = v9[1];

    LOBYTE(v14) = sub_1DD56CE00(v24, v15, v14);

    if (v14)
    {
      sub_1DD3C69D0(v9, v22);
      v16 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = *(v16 + 16);
        sub_1DD42B4F8();
        v16 = v25;
      }

      v19 = *(v16 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v16 + 24) >> 1)
      {
        v23 = v19 + 1;
        v21 = v19;
        sub_1DD42B4F8();
        v20 = v23;
        v19 = v21;
        v16 = v25;
      }

      ++v10;
      *(v16 + 16) = v20;
      v23 = v16;
      result = sub_1DD3C69D0(v22, v16 + v12 + v19 * v13);
    }

    else
    {
      result = sub_1DD3C6968(v9);
      ++v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3C62A4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = 80 * v2 + 32; ; i += 80)
  {
    if (v3 == v2)
    {

      return v4;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    memcpy(__dst, (v1 + i), 0x4AuLL);
    v6 = __dst[7];
    v7 = __dst[8];
    sub_1DD3C6A40(__dst, v11);

    LOBYTE(v6) = sub_1DD56CE00(v11, v6, v7);

    if (v6)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = *(v4 + 16);
        OUTLINED_FUNCTION_0_16();
        sub_1DD42B518();
        v4 = v13;
      }

      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_1DD42B518();
        v4 = v13;
      }

      ++v2;
      *(v4 + 16) = v10 + 1;
      result = memcpy((v4 + 80 * v10 + 32), __dst, 0x4AuLL);
      goto LABEL_2;
    }

    result = sub_1DD3C6A9C(__dst);
    ++v2;
  }

  __break(1u);
  return result;
}

void sub_1DD3C640C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v40 = sub_1DD63D0F8();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v30 - v7;
  v8 = sub_1DD63F8F8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = 0;
  v42 = *(v12 + 16);
  v35 = (v3 + 8);
  v36 = v17 + 16;
  v34 = (v17 + 8);
  v37 = v17;
  v31 = (v17 + 32);
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v42 == v16)
    {

      return;
    }

    if (v16 >= *(v12 + 16))
    {
      break;
    }

    v18 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v19 = *(v37 + 72);
    v20 = v12;
    (*(v37 + 16))(v15, v12 + v18 + v19 * v16, v8, v13);
    sub_1DD63F8D8();
    v21 = v38;
    sub_1DD56E9E0();
    v23 = v22;
    (*v35)(v21, v40);
    if (v23)
    {
      v24 = *v31;
      (*v31)(v32, v15, v8);
      v25 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42BE34(0, *(v25 + 16) + 1, 1);
        v25 = v43;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v33 = v28 + 1;
        sub_1DD42BE34(v27 > 1, v28 + 1, 1);
        v29 = v33;
        v25 = v43;
      }

      ++v16;
      *(v25 + 16) = v29;
      v33 = v25;
      v24((v25 + v18 + v28 * v19), v32, v8);
      v12 = v20;
    }

    else
    {
      (*v34)(v15, v8);
      ++v16;
      v12 = v20;
    }
  }

  __break(1u);
}

uint64_t sub_1DD3C6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v4 = a1;
  if (*(a1 + 16) > 1uLL)
  {
    v8 = MEMORY[0x1E12B2590]();

    v4 = a4(v6, &v8);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1DD3C67E4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) > 1uLL)
  {
    MEMORY[0x1E12B2590]();

    v1 = sub_1DD3C6080(v2);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1DD3C6868(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    v3 = sub_1DD63D0F8();
    v4 = sub_1DD3BBA74();
    v8 = MEMORY[0x1E12B2590](v2, v3, v4);

    sub_1DD3C640C(v5, &v8);
    v1 = v6;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1DD3C68F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3C6968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3C69D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AsrE3CandidateExpander()
{
  result = qword_1EE161918;
  if (!qword_1EE161918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD3C6B70()
{
  type metadata accessor for StringTokenizer();
  if (v0 <= 0x3F)
  {
    sub_1DD3C6C14();
    if (v1 <= 0x3F)
    {
      sub_1DD3C6C70();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DD3C6C14()
{
  result = qword_1EE163290;
  if (!qword_1EE163290)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE163290);
  }

  return result;
}

void sub_1DD3C6C70()
{
  if (!qword_1EE162FE0)
  {
    type metadata accessor for E3Orchestrator();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE162FE0);
    }
  }
}

uint64_t sub_1DD3C6D0C(const void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v210 = sub_1DD63CD18();
  v201 = *(v210 - 8);
  v10 = v201[8];
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v213 = *(v12 - 8);
  v13 = *(v213 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  *&v206 = &v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v207 = &v195 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  *&v203 = &v195 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v202 = (&v195 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v211 = (&v195 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v212 = &v195 - v24;
  memcpy(v220, a1, sizeof(v220));
  v219 = a2;
  v25 = v220[3];
  v26 = v220[4];
  v27 = v220[4] & 0x2000000000000000;
  v28 = HIBYTE(v220[4]) & 0xFLL;
  v29 = v220[3] & 0xFFFFFFFFFFFFLL;
  if ((v220[4] & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v220[4]) & 0xFLL;
  }

  else
  {
    v30 = v220[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    v25 = v220[7];
    v26 = v220[8];
    v27 = v220[8] & 0x2000000000000000;
    v28 = HIBYTE(v220[8]) & 0xFLL;
    v29 = v220[7] & 0xFFFFFFFFFFFFLL;
    if (!((v220[8] & 0x2000000000000000) != 0 ? HIBYTE(v220[8]) & 0xFLL : v220[7] & 0xFFFFFFFFFFFFLL))
    {
      v25 = v220[11];
      v26 = v220[12];
      v27 = v220[12] & 0x2000000000000000;
      v28 = HIBYTE(v220[12]) & 0xFLL;
      v29 = v220[11] & 0xFFFFFFFFFFFFLL;
    }
  }

  if (v27)
  {
    v32 = v28;
  }

  else
  {
    v32 = v29;
  }

  if (!v32 || (v208 = a2, v33 = type metadata accessor for AsrE3CandidateExpander(), (v34 = *(a3 + *(v33 + 28))) == 0))
  {

    return v219;
  }

  v205 = v33;
  v217 = v25;
  v218 = v26;
  v215 = 31868;
  v216 = 0xE200000000000000;
  sub_1DD3B7F10();

  v35 = sub_1DD6406D8();
  v204 = a3;
  v198 = a4;
  v199 = v34;
  if (v35)
  {
    v217 = v25;
    v218 = v26;
    v36 = sub_1DD6406E8();

    v37 = *(v36 + 16);
    if (v37)
    {
      v214 = v5;
      v217 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v38 = v217;
      v200 = v36;
      v39 = (v36 + 56);
      do
      {
        v41 = *(v39 - 3);
        v40 = *(v39 - 2);
        v42 = *(v39 - 1);
        v43 = *v39;

        v44 = MEMORY[0x1E12B2190](v41, v40, v42, v43);
        v46 = v45;

        v217 = v38;
        v47 = *(v38 + 16);
        if (v47 >= *(v38 + 24) >> 1)
        {
          sub_1DD42A2D4();
          v38 = v217;
        }

        *(v38 + 16) = v47 + 1;
        v48 = v38 + 16 * v47;
        *(v48 + 32) = v44;
        *(v48 + 40) = v46;
        v39 += 4;
        --v37;
      }

      while (v37);

      v5 = v214;
    }

    else
    {

      v38 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1DD643F90;
    *(v38 + 32) = v25;
    *(v38 + 40) = v26;
  }

  v49 = v204 + *(v205 + 6);
  v51 = *(v49 + 8);
  v50 = *(v49 + 16);

  v52 = sub_1DD607064();
  if (v52 == 3)
  {
    goto LABEL_26;
  }

  v54 = v52;
  v55 = &qword_1DD643000;
  if (sub_1DD6070B0(v52))
  {
    v56 = v204;
    v57 = sub_1DD3C82CC(v38);

    MEMORY[0x1EEE9AC00](v58);
    *(&v195 - 2) = v56;
    *(&v195 - 1) = v220;
    v59 = sub_1DD5E7B34(sub_1DD3C976C, (&v195 - 2), v57);
    if (!v5)
    {
      v70 = v59;
      v205 = v57;
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v71 = sub_1DD63F9F8();
      v200 = __swift_project_value_buffer(v71, qword_1EE16F068);
      v72 = sub_1DD63F9D8();
      v73 = sub_1DD640368();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1DD38D000, v72, v73, "[UCG][ASR-E3] Candidates:", v74, 2u);
        MEMORY[0x1E12B3DA0](v74, -1, -1);
      }

      v207 = v70;
      v76 = *(v70 + 16);
      v214 = 0;
      v77 = v212;
      *&v206 = v76;
      if (v76)
      {
        v78 = v207 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
        v79 = *(v213 + 72);
        v196 = v201 + 1;
        *&v75 = 136315138;
        v195 = v75;
        v80 = v206;
        v197 = v79;
        do
        {
          sub_1DD3C68F8(v78, v77);
          v81 = sub_1DD63F9D8();
          v82 = sub_1DD640368();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            v217 = v201;
            *v83 = v195;
            v84 = v209;
            Contact.nameComponents.getter();
            v85 = sub_1DD63CCF8();
            v87 = v86;
            v88 = v84;
            v79 = v197;
            (*v196)(v88, v210);
            sub_1DD390754(v212, &qword_1ECCDBBE8, &qword_1DD644470);
            v89 = sub_1DD39565C(v85, v87, &v217);
            v77 = v212;

            *(v83 + 4) = v89;
            _os_log_impl(&dword_1DD38D000, v81, v82, "%s", v83, 0xCu);
            v90 = v201;
            __swift_destroy_boxed_opaque_existential_1(v201);
            MEMORY[0x1E12B3DA0](v90, -1, -1);
            MEMORY[0x1E12B3DA0](v83, -1, -1);
          }

          else
          {

            sub_1DD390754(v77, &qword_1ECCDBBE8, &qword_1DD644470);
          }

          v78 += v79;
          --v80;
        }

        while (v80);
      }

      v91 = v208;
      v92 = v208[2];
      v5 = MEMORY[0x1E69E7CC0];
      if (v92)
      {
        v217 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4();
        v5 = v217;
        v93 = v91 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
        v212 = *(v213 + 72);
        v94 = v202;
        do
        {
          v95 = v211;
          sub_1DD3C68F8(v93, v211);
          v96 = *v95;
          v97 = v95[1];

          sub_1DD390754(v95, &qword_1ECCDBBE8, &qword_1DD644470);
          v217 = v5;
          v98 = *(v5 + 16);
          if (v98 >= *(v5 + 24) >> 1)
          {
            sub_1DD42A2D4();
            v94 = v202;
            v5 = v217;
          }

          *(v5 + 16) = v98 + 1;
          v99 = v5 + 16 * v98;
          *(v99 + 32) = v96;
          *(v99 + 40) = v97;
          v93 += v212;
          --v92;
        }

        while (v92);
      }

      else
      {
        v94 = v202;
      }

      v105 = 0;
      v212 = MEMORY[0x1E69E7CC0];
      v55 = &v217;
LABEL_61:
      v38 = v207;
      while (v206 != v105)
      {
        if (v105 >= *(v38 + 16))
        {
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v106 = (*(v213 + 80) + 32) & ~*(v213 + 80);
        v107 = *(v213 + 72);
        v108 = sub_1DD3C68F8(v38 + v106 + v107 * v105, v94);
        v109 = v94[1];
        v217 = *v94;
        v218 = v109;
        MEMORY[0x1EEE9AC00](v108);
        *(&v195 - 2) = &v217;
        v110 = v214;
        v111 = sub_1DD450388();
        v214 = v110;
        if (v111)
        {
          sub_1DD390754(v94, &qword_1ECCDBBE8, &qword_1DD644470);
          ++v105;
          goto LABEL_61;
        }

        sub_1DD3C69D0(v94, v203);
        v112 = v212;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v215 = v112;
        if (isUniquelyReferenced_nonNull_native)
        {
          v114 = v112;
        }

        else
        {
          v115 = *(v112 + 16);
          sub_1DD42B4F8();
          v94 = v202;
          v114 = v215;
        }

        v38 = v207;
        v116 = *(v114 + 16);
        v117 = v116 + 1;
        if (v116 >= *(v114 + 24) >> 1)
        {
          v211 = *(v114 + 16);
          v212 = v116 + 1;
          sub_1DD42B4F8();
          v116 = v211;
          v117 = v212;
          v94 = v202;
          v114 = v215;
        }

        ++v105;
        *(v114 + 16) = v117;
        v212 = v114;
        sub_1DD3C69D0(v203, v114 + v106 + v116 * v107);
      }

      v38 = 0;
      v118 = v205;
      v213 = v205[2];
      v211 = MEMORY[0x1E69E7CC0];
LABEL_73:
      v119 = 5 * v38;
      while (v213 != v38)
      {
        if (v38 >= v118[2])
        {
          goto LABEL_122;
        }

        v55 = &v195;
        v120 = v118[v119 + 4];
        v121 = v118[v119 + 5];
        v122 = v118[v119 + 6];
        v123 = v118[v119 + 7];
        v124 = v118[v119 + 8];
        v217 = v121;
        v218 = v122;
        MEMORY[0x1EEE9AC00](v118);
        *(&v195 - 2) = &v217;

        v125 = v214;
        v126 = sub_1DD450388();
        v214 = v125;
        if (!v126)
        {
          v127 = v211;
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v215 = v127;
          if ((v128 & 1) == 0)
          {
            v129 = v127[2];
            sub_1DD42B4BC();
            v127 = v215;
          }

          v118 = v205;
          v55 = v127[2];
          v130 = (v55 + 1);
          if (v55 >= v127[3] >> 1)
          {
            v211 = (v55 + 1);
            sub_1DD42B4BC();
            v130 = v211;
            v118 = v205;
            v127 = v215;
          }

          ++v38;
          v127[2] = v130;
          v211 = v127;
          v131 = &v127[5 * v55];
          v131[4] = v120;
          v131[5] = v121;
          v131[6] = v122;
          *(v131 + 14) = v123;
          v131[8] = v124;
          goto LABEL_73;
        }

        v119 += 5;
        ++v38;
        v118 = v205;
      }

      v132 = v212;

      sub_1DD60782C();

      v133 = sub_1DD63F9D8();
      v134 = sub_1DD640368();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 134217984;
        v136 = *(v132 + 16);

        *(v135 + 4) = v136;

        _os_log_impl(&dword_1DD38D000, v133, v134, "[UCG][ASR-E3] Generated new (%ld) candidates from Euclid match and appending it in CRR since triggering condition is set to always", v135, 0xCu);
        MEMORY[0x1E12B3DA0](v135, -1, -1);
      }

      else
      {
      }

      sub_1DD3C8668(v199, v211, MEMORY[0x1E69E7CC0], v198);

      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if ((sub_1DD607F98(v54) & 1) == 0)
  {
    if (sub_1DD60801C(v54))
    {
      v66 = v204;
      v67 = sub_1DD3C82CC(v38);

      MEMORY[0x1EEE9AC00](v68);
      *(&v195 - 2) = v66;
      *(&v195 - 1) = v220;
      v69 = sub_1DD5E7B34(sub_1DD3C94F4, (&v195 - 2), v67);
      if (!v5)
      {
        v137 = v69;
        if (qword_1EE165FB0 != -1)
        {
          swift_once();
        }

        v197 = v49;
        v200 = v67;
        v214 = 0;
        v138 = sub_1DD63F9F8();
        v139 = __swift_project_value_buffer(v138, qword_1EE16F068);
        v140 = sub_1DD63F9D8();
        v141 = sub_1DD640368();
        v142 = os_log_type_enabled(v140, v141);
        v211 = v139;
        if (v142)
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_1DD38D000, v140, v141, "[UCG][ASR-E3] Candidates:", v143, 2u);
          MEMORY[0x1E12B3DA0](v143, -1, -1);
        }

        v202 = v137;
        v145 = v137[2];
        if (v145)
        {
          v146 = v202 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
          v147 = *(v213 + 72);
          v205 = v201 + 1;
          *&v144 = 136315138;
          v203 = v144;
          v207 = v147;
          do
          {
            v148 = v206;
            sub_1DD3C68F8(v146, v206);
            v149 = sub_1DD63F9D8();
            v150 = sub_1DD640368();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              v213 = swift_slowAlloc();
              v217 = v213;
              *v151 = v203;
              v152 = v209;
              Contact.nameComponents.getter();
              v212 = sub_1DD63CCF8();
              v153 = v148;
              v155 = v154;
              (*v205)(v152, v210);
              sub_1DD390754(v153, &qword_1ECCDBBE8, &qword_1DD644470);
              v156 = sub_1DD39565C(v212, v155, &v217);

              *(v151 + 4) = v156;
              _os_log_impl(&dword_1DD38D000, v149, v150, "%s", v151, 0xCu);
              v157 = v213;
              __swift_destroy_boxed_opaque_existential_1(v213);
              MEMORY[0x1E12B3DA0](v157, -1, -1);
              v158 = v151;
              v147 = v207;
              MEMORY[0x1E12B3DA0](v158, -1, -1);
            }

            else
            {

              sub_1DD390754(v148, &qword_1ECCDBBE8, &qword_1DD644470);
            }

            v146 += v147;
            --v145;
          }

          while (v145);
        }

        v159 = v202;

        v160 = sub_1DD63F9D8();
        v161 = sub_1DD640368();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 134217984;
          v163 = v159[2];

          *(v162 + 4) = v163;

          _os_log_impl(&dword_1DD38D000, v160, v161, "[UCG][ASR-E3] Generated (%ld) candidates from Euclid match and not passing any to CRR since triggering condition is set to None", v162, 0xCu);
          MEMORY[0x1E12B3DA0](v162, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v187 = v200;
        if (*(v197 + 56) == 1)
        {
          sub_1DD3BEE08();
          v189 = v188;
          v190 = *(v188 + 16);
          v191 = v190 + 1;
          if (v190 >= *(v188 + 24) >> 1)
          {
            sub_1DD3BEE08();
            v189 = v193;
          }

          *(v189 + 16) = v191;
          *(v189 + v190 + 32) = 0;
          if (!v208[2])
          {
            v192 = v190 + 2;
            if (v192 > *(v189 + 24) >> 1)
            {
              sub_1DD3BEE08();
              v189 = v194;
            }

            *(v189 + 16) = v192;
            *(v189 + v191 + 32) = 1;
          }
        }

        else
        {
          v189 = MEMORY[0x1E69E7CC0];
        }

        sub_1DD3C8668(v199, v187, v189, v198);

        goto LABEL_27;
      }

      goto LABEL_31;
    }

LABEL_26:

LABEL_27:

    return v219;
  }

  if (qword_1EE165FB0 != -1)
  {
LABEL_123:
    swift_once();
  }

  v60 = sub_1DD63F9F8();
  v61 = __swift_project_value_buffer(v60, qword_1EE16F068);
  v62 = v208;

  v212 = v61;
  v63 = sub_1DD63F9D8();
  v64 = sub_1DD640368();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 134217984;
    *(v65 + 4) = v62[2];

    _os_log_impl(&dword_1DD38D000, v63, v64, "[UCG][ASR-E3] Candidate count to CRR pre ASR-E3: %ld", v65, 0xCu);
    MEMORY[0x1E12B3DA0](v65, -1, -1);
  }

  else
  {
  }

  v100 = v207;
  if (v62[2])
  {
    goto LABEL_26;
  }

  v101 = v204;
  v102 = sub_1DD3C82CC(v38);

  MEMORY[0x1EEE9AC00](v103);
  *(&v195 - 2) = v101;
  *(&v195 - 1) = v220;
  v104 = sub_1DD5E7B34(sub_1DD3C976C, (&v195 - 2), v102);
  if (!v5)
  {
    v164 = v104;
    *&v203 = v102;
    v214 = 0;
    v165 = sub_1DD63F9D8();
    v166 = sub_1DD640368();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&dword_1DD38D000, v165, v166, "[UCG][ASR-E3] Candidates:", v167, 2u);
      v168 = v167;
      v100 = v207;
      MEMORY[0x1E12B3DA0](v168, -1, -1);
    }

    v205 = v164;
    v170 = v164[2];
    if (v170)
    {
      v171 = v205 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
      v213 = *(v213 + 72);
      v208 = v201 + 1;
      *&v169 = *(v55 + 2704);
      v206 = v169;
      do
      {
        sub_1DD3C68F8(v171, v100);
        v172 = sub_1DD63F9D8();
        v173 = sub_1DD640368();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          v217 = v211;
          *v174 = v206;
          v175 = v209;
          Contact.nameComponents.getter();
          v176 = sub_1DD63CCF8();
          v178 = v177;
          (*v208)(v175, v210);
          sub_1DD390754(v207, &qword_1ECCDBBE8, &qword_1DD644470);
          v179 = sub_1DD39565C(v176, v178, &v217);

          *(v174 + 4) = v179;
          _os_log_impl(&dword_1DD38D000, v172, v173, "%s", v174, 0xCu);
          v180 = v211;
          __swift_destroy_boxed_opaque_existential_1(v211);
          MEMORY[0x1E12B3DA0](v180, -1, -1);
          v181 = v174;
          v100 = v207;
          MEMORY[0x1E12B3DA0](v181, -1, -1);
        }

        else
        {

          sub_1DD390754(v100, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        v171 += v213;
        --v170;
      }

      while (v170);
    }

    v182 = v205;

    sub_1DD60782C();

    v183 = sub_1DD63F9D8();
    v184 = sub_1DD640368();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 134217984;
      v186 = v182[2];

      *(v185 + 4) = v186;

      _os_log_impl(&dword_1DD38D000, v183, v184, "[UCG][ASR-E3] Generated (%ld) candidates from Euclid match and appending it in CRR since triggering condition is set to noCandidatesInCrr", v185, 0xCu);
      MEMORY[0x1E12B3DA0](v185, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_1DD3C8668(v199, v203, MEMORY[0x1E69E7CC0], v198);

    goto LABEL_27;
  }

LABEL_31:
}

unint64_t sub_1DD3C82CC(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F068);

  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1E12B2430](a1, MEMORY[0x1E69E6158]);
    v11 = sub_1DD39565C(v9, v10, v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DD38D000, v5, v6, "[UCG][ASR-E3] Running Euclid embedding on queries: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
    MEMORY[0x1E12B3DA0](v7, -1, -1);
  }

  v12 = type metadata accessor for AsrE3CandidateExpander();
  if (!*(v2 + *(v12 + 28)))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = (v2 + *(v12 + 24));
  v15 = v13[5];
  v14 = v13[6];
  v17 = *(v13 + 3);
  v16 = *(v13 + 4);
  v21[3] = type metadata accessor for StringTokenizer();
  v21[4] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1DD3C96F0(v2, boxed_opaque_existential_1, type metadata accessor for StringTokenizer);

  v19 = sub_1DD4B822C(a1, v16, v17, v21, v14, v15);

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v19;
}

uint64_t sub_1DD3C8668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a4;
  v8 = sub_1DD63D0F8();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v56 - v18;
  v19 = type metadata accessor for InferenceEuclidLog(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4B8C28(a2, v23);
  v24 = *(v20 + 28);
  v59 = v23;
  v25 = &v23[v24];
  v56 = type metadata accessor for InferenceEuclidDebugMetrics(0);
  v26 = &v25[*(v56 + 28)];
  if (*(v26 + 1) != 1)
  {
    v27 = *(v5 + *(type metadata accessor for AsrE3CandidateExpander() + 24) + 48);
    *(v26 + 4) = v27;
    v26[20] = 0;
  }

  v57 = v25;
  v60 = v5;
  v28 = *(a3 + 16);
  if (v28)
  {
    v29 = (a3 + 32);
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v65;
    v32 = (v64 + 32);
    v63 = (v64 + 32);
    do
    {
      v33 = *v29++;
      sub_1DD63D088();
      if (__swift_getEnumTagSinglePayload(v17, 1, v31) == 1)
      {
        sub_1DD390754(v17, &qword_1ECCDBAC8, &qword_1DD643E60);
      }

      else
      {
        v34 = *v32;
        (*v32)(v66, v17, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = *(v30 + 16);
          sub_1DD3BED30();
          v30 = v38;
        }

        v35 = *(v30 + 16);
        if (v35 >= *(v30 + 24) >> 1)
        {
          sub_1DD3BED30();
          v30 = v39;
        }

        *(v30 + 16) = v35 + 1;
        v32 = v63;
        v36 = v30 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v35;
        v31 = v65;
        v34(v36, v66, v65);
      }

      --v28;
    }

    while (v28);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v65;
  }

  v40 = v57;
  v41 = *(v56 + 20);
  v42 = *(v57 + v41);

  *(v40 + v41) = v30;
  v43 = v60 + *(type metadata accessor for AsrE3CandidateExpander() + 24);
  v44 = *(v43 + 8);
  v45 = *(v43 + 16);

  if (sub_1DD607064() == 3)
  {
    v46 = v58;
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v31);
  }

  else
  {
    v46 = v58;
    sub_1DD6080A0();
  }

  v48 = v61;
  v47 = v62;
  v49 = v59;
  sub_1DD3C9510(v46, v40);
  v50 = *(v47 + 8);
  v51 = *(v47 + 16);
  sub_1DD5AC168();
  v52 = *v49;
  v53 = v49[8];
  v54 = *(v49 + 1);
  sub_1DD5AC8AC();
  sub_1DD390754(v48, &qword_1ECCDBAC8, &qword_1DD643E60);
  return sub_1DD3C9638(v49, type metadata accessor for InferenceEuclidLog);
}

uint64_t sub_1DD3C8AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v32 = *(a1 + 16);
  v31 = *(a2 + 16);
  if (v31 >= v32)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1DD42B404(0, v5, 0);
  v6 = v38;
  v30 = a1;
  v28 = a2;
  if (v5)
  {
    v29 = a1 + 32;
    v27 = a2 + 32;

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (v8)
      {
        sub_1DD3C94EC(__src);
        memcpy(__dst, __src, 0x110uLL);
        v8 = 1;
        v11 = v34;
      }

      else
      {
        v12 = v32;
        v11 = v34;
        if (v10 == v32)
        {
          goto LABEL_12;
        }

        if (v10 >= v32)
        {
          goto LABEL_45;
        }

        result = memcpy(__src, (v29 + 264 * v10), 0x108uLL);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_46;
        }

        if (v9 == v31)
        {
LABEL_12:
          sub_1DD3C94EC(__src);
          memcpy(__dst, __src, 0x110uLL);
          v8 = 1;
        }

        else
        {
          if (v9 >= v31)
          {
            goto LABEL_47;
          }

          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_48;
          }

          v14 = *(v27 + 8 * v9);
          memcpy(__dst, (v29 + 264 * v10), 0x108uLL);
          __dst[33] = v14;
          nullsub_1(__dst);
          sub_1DD3C9478(__src, v35);

          v8 = 0;
          v9 = v13;
        }

        v10 = v12;
      }

      memcpy(__src, __dst, sizeof(__src));
      result = sub_1DD3C94D4(__src);
      if (result == 1)
      {
        goto LABEL_49;
      }

      v15 = a3(__dst, __dst[33]);
      if (v11)
      {
        break;
      }

      v16 = v15;
      v34 = 0;
      v17 = v10;
      memcpy(v35, __dst, sizeof(v35));
      result = sub_1DD390754(v35, &qword_1ECCDBF88, &qword_1DD644468);
      v38 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1DD42B404((v18 > 1), v19 + 1, 1);
        v6 = v38;
      }

      *(v6 + 16) = v19 + 1;
      *(v6 + 8 * v19 + 32) = v16;
      --v5;
      v10 = v17;
      if (!v5)
      {
        goto LABEL_24;
      }
    }

    memcpy(v35, __dst, sizeof(v35));
    sub_1DD390754(v35, &qword_1ECCDBF88, &qword_1DD644468);
    return v6;
  }

  else
  {

    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_24:
    for (i = 264 * v10 + 32; ; i += 264)
    {
      if ((v8 & 1) != 0 || v32 == v10)
      {
LABEL_38:

        return v6;
      }

      if (v10 >= v32)
      {
        break;
      }

      result = memcpy(v35, (v30 + i), 0x108uLL);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_42;
      }

      if (v31 == v9)
      {
        goto LABEL_38;
      }

      if (v9 >= v31)
      {
        goto LABEL_43;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_44;
      }

      v21 = *(v28 + 32 + 8 * v9);
      memcpy(__dst, (v30 + i), 0x108uLL);
      __dst[33] = v21;
      sub_1DD3C9478(v35, __src);

      v22 = a3(__dst, v21);
      if (v34)
      {
        memcpy(__src, __dst, sizeof(__src));
        sub_1DD390754(__src, &qword_1ECCDBF88, &qword_1DD644468);

        return v6;
      }

      v23 = v22;
      v34 = 0;
      v24 = v10;
      memcpy(__src, __dst, sizeof(__src));
      result = sub_1DD390754(__src, &qword_1ECCDBF88, &qword_1DD644468);
      v38 = v6;
      v26 = *(v6 + 16);
      v25 = *(v6 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1DD42B404((v25 > 1), v26 + 1, 1);
        v6 = v38;
      }

      v8 = 0;
      *(v6 + 16) = v26 + 1;
      *(v6 + 8 * v26 + 32) = v23;
      ++v9;
      v10 = v24 + 1;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
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
  }

  return result;
}