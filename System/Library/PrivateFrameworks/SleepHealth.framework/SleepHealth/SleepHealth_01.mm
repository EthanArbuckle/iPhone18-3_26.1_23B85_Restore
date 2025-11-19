uint64_t sub_269BE1C4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_269BE1E78();
  result = sub_269BF8A48();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_269BF8C18();

      sub_269BF8818();
      result = sub_269BF8C58();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_269BE1E78()
{
  if (!qword_28034A848)
  {
    v0 = sub_269BF8A68();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A848);
    }
  }
}

void sub_269BE1ED0()
{
  if (!qword_28034A850)
  {
    sub_269BE1F2C();
    v0 = sub_269BF8A68();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A850);
    }
  }
}

unint64_t sub_269BE1F2C()
{
  result = qword_28034A858;
  if (!qword_28034A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A858);
  }

  return result;
}

uint64_t SleepScoreComponent.hashValue.getter()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

uint64_t SleepScoreComponent.localizedTitle.getter()
{
  v1 = sub_269BF87B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v0;
  sub_269BF8738();
  v6 = sub_269BDF7A8(v5);
  (*(v2 + 8))(v5, v1);
  return v6;
}

unint64_t sub_269BE2174()
{
  result = qword_28034A860;
  if (!qword_28034A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A860);
  }

  return result;
}

unint64_t sub_269BE21CC()
{
  result = qword_28034A868;
  if (!qword_28034A868)
  {
    sub_269BE2224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A868);
  }

  return result;
}

void sub_269BE2224()
{
  if (!qword_28034A870)
  {
    v0 = sub_269BF88B8();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A870);
    }
  }
}

SleepHealth::SleepScoreVisualizationModel __swiftcall SleepScoreVisualizationModel.init(durationFillFraction:bedtimeFillFraction:interruptionsFillFraction:totalPoints:)(Swift::Double durationFillFraction, Swift::Double bedtimeFillFraction, Swift::Double interruptionsFillFraction, Swift::Int totalPoints)
{
  *v4 = durationFillFraction;
  *(v4 + 8) = bedtimeFillFraction;
  *(v4 + 16) = interruptionsFillFraction;
  *(v4 + 24) = totalPoints;
  result.interruptionsFillFraction = interruptionsFillFraction;
  result.bedtimeFillFraction = bedtimeFillFraction;
  result.durationFillFraction = durationFillFraction;
  result.totalPoints = totalPoints;
  return result;
}

unint64_t sub_269BE2358()
{
  v1 = 0x696F506C61746F74;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_269BE23E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269BE2D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269BE2424(uint64_t a1)
{
  v2 = sub_269BE2974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269BE2460(uint64_t a1)
{
  v2 = sub_269BE2974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SleepScoreVisualizationModel.encode(to:)(void *a1)
{
  sub_269BE2A0C(0, &qword_28034A878, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v16[-v8];
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269BE2974();
  sub_269BF8C78();
  v16[15] = 0;
  sub_269BF8B58();
  if (!v2)
  {
    v16[14] = 1;
    sub_269BF8B58();
    v16[13] = 2;
    sub_269BF8B58();
    v16[12] = 3;
    sub_269BF8B68();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SleepScoreVisualizationModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_269BE2A0C(0, &qword_28034A888, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269BE2974();
  sub_269BF8C68();
  if (!v2)
  {
    v20[15] = 0;
    sub_269BF8B38();
    v13 = v12;
    v20[14] = 1;
    sub_269BF8B38();
    v15 = v14;
    v20[13] = 2;
    sub_269BF8B38();
    v17 = v16;
    v20[12] = 3;
    v19 = sub_269BF8B48();
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

SleepHealth::SleepScoreVisualizationModel __swiftcall SleepScoreVisualizationModel.init(sleepScore:)(SleepHealth::SleepScore *sleepScore)
{
  deepSleepDurationPoints = sleepScore->deepSleepDurationPoints;
  v3 = sleepScore->sleepDurationPoints + deepSleepDurationPoints;
  if (__OFADD__(sleepScore->sleepDurationPoints, deepSleepDurationPoints))
  {
    __break(1u);
    goto LABEL_9;
  }

  remSleepDurationPoints = sleepScore->remSleepDurationPoints;
  v5 = __OFADD__(v3, remSleepDurationPoints);
  v6 = v3 + remSleepDurationPoints;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sleepStartPunctualityPoints = sleepScore->sleepStartPunctualityPoints;
  v8 = v6 + sleepStartPunctualityPoints;
  if (__OFADD__(v6, sleepStartPunctualityPoints))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  awakeInterruptionPoints = sleepScore->awakeInterruptionPoints;
  if (sleepScore->awakeDurationPoints < awakeInterruptionPoints)
  {
    awakeInterruptionPoints = sleepScore->awakeDurationPoints;
  }

  v5 = __OFADD__(v8, awakeInterruptionPoints);
  v10 = v8 + awakeInterruptionPoints;
  if (v5)
  {
    goto LABEL_11;
  }

  v11 = 20.0;
  v12 = sleepStartPunctualityPoints / 30.0;
  *v1 = v6 / 50.0;
  *(v1 + 8) = v12;
  v13 = awakeInterruptionPoints / 20.0;
  *(v1 + 16) = v13;
  *(v1 + 24) = v10;
LABEL_12:
  result.interruptionsFillFraction = v12;
  result.bedtimeFillFraction = v11;
  result.durationFillFraction = v13;
  result.totalPoints = sleepScore;
  return result;
}

unint64_t sub_269BE2974()
{
  result = qword_28034A880;
  if (!qword_28034A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A880);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_269BE2A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_269BE2974();
    v7 = a3(a1, &type metadata for SleepScoreVisualizationModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269BE2A70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269BE2A90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreVisualizationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepScoreVisualizationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_269BE2C20()
{
  result = qword_28034A890;
  if (!qword_28034A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A890);
  }

  return result;
}

unint64_t sub_269BE2C78()
{
  result = qword_28034A898;
  if (!qword_28034A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A898);
  }

  return result;
}

unint64_t sub_269BE2CD0()
{
  result = qword_28034A8A0;
  if (!qword_28034A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A8A0);
  }

  return result;
}

uint64_t sub_269BE2D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000269BFB480 == a2;
  if (v4 || (sub_269BF8BB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000269BFB4A0 == a2 || (sub_269BF8BB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000269BFB4C0 == a2 || (sub_269BF8BB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696F506C61746F74 && a2 == 0xEB0000000073746ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_269BF8BB8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void __swiftcall HKSHSleepScoreResultsNotificationBuilder.init(daySummaries:needsIntroduction:userFirstName:algorithmVersion:)(HKSHSleepScoreResultsNotificationBuilder *__return_ptr retstr, Swift::OpaquePointer_optional daySummaries, Swift::Bool needsIntroduction, Swift::String_optional userFirstName, Swift::Int algorithmVersion)
{
  object = userFirstName.value._object;
  countAndFlagsBits = userFirstName.value._countAndFlagsBits;
  is_nil = daySummaries.is_nil;
  if (!daySummaries.value._rawValue)
  {
    v8 = 0;
    if (userFirstName.value._countAndFlagsBits)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);
  v8 = sub_269BF8888();

  if (!countAndFlagsBits)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_269BF87D8();

LABEL_6:
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDaySummaries:v8 needsIntroduction:is_nil userFirstName:v9 algorithmVersion:object];
}

void HKSHSleepScoreResultsNotificationBuilder.init(daySummaries:needsIntroduction:userFirstName:algorithmVersion:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for SleepScoreDaySummary();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  if (a5 == 1)
  {
    v20 = 0;
    if (a1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (a5 == 2)
  {
    v20 = 1;
    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_6:
    v52 = v19;
    v21 = a1 >> 62;
    if (a1 >> 62)
    {
      v22 = sub_269BF8AD8();
      v23 = -v22;
      if (!__OFSUB__(0, v22))
      {
LABEL_8:
        v51 = v13;
        if ((v23 + 13) >= 0xE)
        {
          v24 = v22 - 14;
          if (__OFSUB__(v22, 14))
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          if (v22 < v24)
          {
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          if (!v21)
          {
LABEL_11:
            v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_20;
          }
        }

        else
        {
          if (v22 < 0)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v24 = 0;
          if (!v21)
          {
            goto LABEL_11;
          }
        }

        v25 = sub_269BF8AD8();
LABEL_20:
        if (v25 >= v24)
        {
          if ((v24 & 0x8000000000000000) == 0)
          {
            if (v21)
            {
              v29 = sub_269BF8AD8();
            }

            else
            {
              v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v29 >= v22)
            {
              if ((v22 & 0x8000000000000000) == 0)
              {
                v53 = v20;
                if ((a1 & 0xC000000000000001) == 0)
                {

                  goto LABEL_35;
                }

                v50 = v17;
                v30 = a2;
                v31 = v6;
                v32 = a3;
                if (v24 == v22)
                {
                  v33 = a4;

                  goto LABEL_34;
                }

                if (v24 < v22)
                {
                  v33 = a4;
                  sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);

                  v34 = v24;
                  do
                  {
                    v35 = v34 + 1;
                    sub_269BF8A98();
                    v34 = v35;
                  }

                  while (v22 != v35);
LABEL_34:
                  a4 = v33;
                  a3 = v32;
                  v6 = v31;
                  a2 = v30;
                  v17 = v50;
                  if (v21)
                  {

                    v36 = sub_269BF8AE8();
                    v37 = v39;
                    v24 = v40;
                    v38 = v41;

LABEL_37:
                    v55[0] = v36;
                    v55[1] = v37;
                    v55[2] = v24;
                    v55[3] = v38;
                    v55[4] = 13;
                    v42 = sub_269BD9668(v53);
                    sub_269BE57F4(v55, sub_269BDB228);
                    v43 = *(v42 + 16);
                    if (v43)
                    {
                      v44 = v52;
                      sub_269BE37CC(v42 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * (v43 - 1), v52);

                      sub_269BE3830(v44, v17);
                      v45 = type metadata accessor for SleepScoreResultsNotificationBuilder(0);
                      v46 = *(v45 + 48);
                      v47 = *(v45 + 52);
                      a1 = swift_allocObject();
                      sub_269BE3830(v17, a1 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary);
                      *(a1 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction) = a2 & 1;
                      v48 = (a1 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
                      *v48 = a3;
                      v48[1] = a4;
                    }

                    else
                    {

                      a1 = 0;
                    }

                    goto LABEL_40;
                  }

LABEL_35:

                  v36 = a1 & 0xFFFFFFFFFFFFFF8;
                  v37 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
                  v38 = (2 * v22) | 1;
                  goto LABEL_37;
                }

                goto LABEL_51;
              }

              goto LABEL_47;
            }

LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = -v22;
      if (!__OFSUB__(0, v22))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v26 = [objc_opt_self() sharedBehavior];
  if (!v26)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v27 = v26;
  v28 = [v26 features];

  if (v28)
  {
    v20 = [v28 sleepResultsNotificationsOnWatch];

    if (a1)
    {
      goto LABEL_6;
    }

LABEL_15:

LABEL_40:
    *&v6[OBJC_IVAR___HKSHSleepScoreResultsNotificationBuilder_builder] = a1;
    v54.receiver = v6;
    v54.super_class = HKSHSleepScoreResultsNotificationBuilder;
    objc_msgSendSuper2(&v54, sel_init);
    return;
  }

LABEL_53:
  __break(1u);
}

uint64_t SleepScoreResultsNotificationBuilder.__allocating_init(daySummaries:needsIntroduction:userFirstName:algorithmVersion:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v12 = type metadata accessor for SleepScoreDaySummary();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  result = MEMORY[0x28223BE20](v18);
  v22 = &v51 - v20;
  if (a1)
  {
    v23 = *a5;
    v24 = a1 >> 62;
    v54 = v21;
    if (a1 >> 62)
    {
      v49 = &v51 - v20;
      v50 = v23;
      result = sub_269BF8AD8();
      v23 = v50;
      v22 = v49;
      v25 = result;
      v26 = -result;
      if (!__OFSUB__(0, result))
      {
LABEL_4:
        v53 = v22;
        v55 = v23;
        if ((v26 + 13) >= 0xE)
        {
          v27 = v25 - 14;
          if (__OFSUB__(v25, 14))
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          if (v25 < v27)
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          if (!v24)
          {
LABEL_7:
            result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_12;
          }
        }

        else
        {
          if (v25 < 0)
          {
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v27 = 0;
          if (!v24)
          {
            goto LABEL_7;
          }
        }

        result = sub_269BF8AD8();
LABEL_12:
        if (result >= v27)
        {
          if ((v27 & 0x8000000000000000) == 0)
          {
            if (v24)
            {
              result = sub_269BF8AD8();
            }

            else
            {
              result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (result >= v25)
            {
              if ((v25 & 0x8000000000000000) == 0)
              {
                v52 = v13;
                if ((a1 & 0xC000000000000001) == 0)
                {

                  goto LABEL_27;
                }

                v51 = v17;
                v28 = v6;
                v29 = a2;
                v30 = a3;
                if (v27 == v25)
                {
                  v31 = a4;

                  goto LABEL_26;
                }

                if (v27 < v25)
                {
                  v31 = a4;
                  sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);

                  v32 = v27;
                  do
                  {
                    v33 = v32 + 1;
                    sub_269BF8A98();
                    v32 = v33;
                  }

                  while (v25 != v33);
LABEL_26:
                  a4 = v31;
                  a3 = v30;
                  a2 = v29;
                  v6 = v28;
                  v17 = v51;
                  if (v24)
                  {

                    v34 = sub_269BF8AE8();
                    v35 = v37;
                    v27 = v38;
                    v36 = v39;

                    goto LABEL_29;
                  }

LABEL_27:

                  v34 = a1 & 0xFFFFFFFFFFFFFF8;
                  v35 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
                  v36 = (2 * v25) | 1;
LABEL_29:
                  v56[0] = v34;
                  v56[1] = v35;
                  v56[2] = v27;
                  v56[3] = v36;
                  v56[4] = 13;
                  v40 = sub_269BD9668(v55);
                  sub_269BE57F4(v56, sub_269BDB228);
                  v41 = *(v40 + 16);
                  if (v41)
                  {
                    v42 = v54;
                    sub_269BE37CC(v40 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * (v41 - 1), v54);

                    v43 = v42;
                    v44 = v53;
                    sub_269BE3830(v43, v53);
                    sub_269BE3830(v44, v17);
                    v45 = *(v6 + 48);
                    v46 = *(v6 + 52);
                    v47 = swift_allocObject();
                    sub_269BE3830(v17, v47 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary);
                    result = v47;
                    *(v47 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction) = a2 & 1;
                    v48 = (v47 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
                    *v48 = a3;
                    v48[1] = a4;
                    return result;
                  }

                  goto LABEL_32;
                }

LABEL_44:
                __break(1u);
                return result;
              }

              goto LABEL_40;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = -v25;
      if (!__OFSUB__(0, v25))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_32:

  return 0;
}

uint64_t sub_269BE37CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreDaySummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BE3830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreDaySummary();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void SleepScoreResultsNotificationBuilder.buildNotification()()
{
  v1 = type metadata accessor for SleepScoreDaySummary();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v52 - v7;
  v9 = v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary;
  v10 = v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary + *(v6 + 24);
  if (*(v10 + 48))
  {
    return;
  }

  v11 = *v10;
  v55 = *(v10 + 8);
  v56 = v11;
  v12 = *(v10 + 16);
  v53 = *(v10 + 24);
  v54 = v12;
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = [objc_opt_self() sharedBehavior];
  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = v15;
  v17 = [v15 features];

  if (!v17)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v18 = [v17 sleepResultsNotificationsOnWatch];

  if ((v18 & 1) == 0)
  {
    v19 = &v55[v56];
    if (__OFADD__(v56, v55))
    {
      __break(1u);
    }

    else
    {
      v20 = __OFADD__(v19, v54);
      v21 = &v19[v54];
      if (!v20)
      {
        v20 = __OFADD__(v21, v53);
        v22 = &v21[v53];
        if (!v20)
        {
          if (v14 >= v13)
          {
            v23 = v13;
          }

          else
          {
            v23 = v14;
          }

          v24 = &v22[v23];
          if (!__OFADD__(v22, v23))
          {
            *(v9 + *(v1 + 28));
            swift_getKeyPath();
            sub_269BF180C(v24, &v66);
            if (LOBYTE(v66.sleepDurationPoints) < 4u)
            {
              return;
            }

            goto LABEL_14;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_14:
  sub_269BE37CC(v9, v8);
  v25 = *(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction);
  v26 = *(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName + 8);
  v55 = *(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
  v56 = type metadata accessor for SleepScoreResultsNotification(0);
  v27 = objc_allocWithZone(v56);
  LODWORD(v54) = v25;
  *(v27 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction) = v25;
  v28 = *(v1 + 20);
  v29 = OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex;
  v30 = sub_269BF8688();
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v53 = v29;
  v32(v27 + v29, &v8[v28], v30);
  *(v27 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion) = v8[*(v1 + 28)];
  sub_269BE37CC(v8, v5);

  SleepScoreNoteBuilder.init(sleepScoreDaySummary:firstName:)(v5, v55, v26, &v66);
  sleepDurationPoints = v66.sleepDurationPoints;
  deepSleepDurationPoints = v66.deepSleepDurationPoints;
  remSleepDurationPoints = v66.remSleepDurationPoints;
  sleepStartPunctualityPoints = v66.sleepStartPunctualityPoints;
  v73 = v67;
  v37 = v68;
  v71 = v69;
  v72 = v70;
  if (v68 == 1)
  {
    sub_269BE57F4(v8, type metadata accessor for SleepScoreDaySummary);
    (*(v31 + 8))(v27 + v53, v30);
    v38 = *((*MEMORY[0x277D85000] & *v27) + 0x30);
    v39 = *((*MEMORY[0x277D85000] & *v27) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v56;
    v55 = v8;
    v58 = v66;
    awakeInterruptionPoints = v66.awakeInterruptionPoints;
    awakeDurationPoints = v66.awakeDurationPoints;
    SleepScoreVisualizationModel.init(sleepScore:)(&v58);
    v43 = v64;
    v44 = v65;
    v45 = v27 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel;
    *v45 = v63;
    *(v45 + 2) = v43;
    *(v45 + 3) = v44;
    v58.sleepDurationPoints = sleepDurationPoints;
    v58.deepSleepDurationPoints = deepSleepDurationPoints;
    v58.remSleepDurationPoints = remSleepDurationPoints;
    v58.sleepStartPunctualityPoints = sleepStartPunctualityPoints;
    v58.awakeInterruptionPoints = awakeInterruptionPoints;
    v58.awakeDurationPoints = awakeDurationPoints;
    v59 = v73;
    v60 = v37;
    v61 = v71;
    v62 = v72;
    if (v54)
    {
      v46 = SleepScoreNoteBuilder.localizedIntroductionBodyParagraphs.getter();
      sub_269BE5854(&v66, &qword_28034A8D0, &type metadata for SleepScoreNoteBuilder);
      *&v63 = v46;
      sub_269BE7164(0, &qword_28034A8E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_269BE58C4();
      v47 = sub_269BF86E8();
      v49 = v48;
    }

    else
    {
      v47 = SleepScoreNoteBuilder.localizedDescription.getter();
      v49 = v50;
      sub_269BE5854(&v66, &qword_28034A8D0, &type metadata for SleepScoreNoteBuilder);
    }

    v51 = (v27 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription);
    *v51 = v47;
    v51[1] = v49;
    v57.receiver = v27;
    v57.super_class = v40;
    objc_msgSendSuper2(&v57, sel_init);
    sub_269BE57F4(v55, type metadata accessor for SleepScoreDaySummary);
  }
}

id sub_269BE3F98(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_269BF87D8();

  return v6;
}

id sub_269BE4078(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_269BE5A70(0xD000000000000014, 0x8000000269BFB690), (v5 & 1) != 0) && (v19 = *(*(a1 + 56) + 8 * v4), sub_269BE5A00(), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    v6 = sub_269BE5050(a1);

    v7 = _s11SleepHealth0A24ScoreResultsNotificationC4body8userInfoACSgSS_SDys11AnyHashableVypGtcfC_0(v17, v18, v6);
    if (v7)
    {
      v8 = v7;
      v9 = SleepScoreResultsNotification.localizedTitle.getter();
      v10 = &v2[OBJC_IVAR___HKSHSleepScoreResultsNotification_title];
      *v10 = v9;
      v10[1] = v11;
      v12 = *&v8[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription + 8];
      v13 = &v2[OBJC_IVAR___HKSHSleepScoreResultsNotification_body];
      *v13 = *&v8[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription];
      v13[1] = v12;
      v2[OBJC_IVAR___HKSHSleepScoreResultsNotification_isIntroduction] = v8[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction];

      v14 = SleepScoreResultsNotification.notificationUserInfo.getter();

      *&v2[OBJC_IVAR___HKSHSleepScoreResultsNotification_notificationUserInfo] = v14;
      v16.receiver = v2;
      v16.super_class = HKSHSleepScoreResultsNotification;
      return objc_msgSendSuper2(&v16, sel_init);
    }
  }

  else
  {
  }

  type metadata accessor for HKSHSleepScoreResultsNotification(v7);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t SleepScoreResultsNotification.localizedTitle.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction) == 1)
  {
    v1 = objc_opt_self();
    v2 = sub_269BF87D8();
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel + 24);
    *(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion);
    swift_getKeyPath();
    sub_269BF180C(v3, &v7);
    v1 = objc_opt_self();
    v2 = sub_269BF87D8();
  }

  v4 = [v1 localizedUserNotificationStringForKey:v2 arguments:0];

  v5 = sub_269BF87E8();
  return v5;
}

unint64_t SleepScoreResultsNotification.notificationUserInfo.getter()
{
  v1 = v0;
  sub_269BE5940();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269BFA440;
  strcpy((inited + 32), "targetDayIndex");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000269BFB640;
  if (*(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000269BFB480;
  v4 = v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x8000000269BFB4A0;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x8000000269BFB4C0;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 152) = 0x696F506C61746F74;
  *(inited + 160) = 0xEB0000000073746ELL;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = *MEMORY[0x277CCE4D0];
  *(inited + 176) = sub_269BF87E8();
  *(inited + 184) = v6;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_269BE6254(inited);
  swift_setDeallocating();
  sub_269BE5998();
  swift_arrayDestroy();
  return v7;
}

id sub_269BE4654()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t SleepScoreResultsNotificationBuilder.__allocating_init(sleepScoreDaySummary:needsIntroduction:userFirstName:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_269BE3830(a1, v11 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary);
  *(v11 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction) = a2;
  v12 = (v11 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
  *v12 = a3;
  v12[1] = a4;
  return v11;
}

uint64_t SleepScoreResultsNotificationBuilder.init(sleepScoreDaySummary:needsIntroduction:userFirstName:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_269BE3830(a1, v4 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary);
  *(v4 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction) = a2;
  v8 = (v4 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
  *v8 = a3;
  v8[1] = a4;
  return v4;
}

uint64_t SleepScoreResultsNotificationBuilder.deinit()
{
  sub_269BE57F4(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary, type metadata accessor for SleepScoreDaySummary);
  v1 = *(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName + 8);

  return v0;
}

uint64_t SleepScoreResultsNotificationBuilder.__deallocating_deinit()
{
  sub_269BE57F4(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary, type metadata accessor for SleepScoreDaySummary);
  v1 = *(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t SleepScoreResultsNotification.identifier.getter()
{
  v0 = HKSHSleepScoreResultsNotificationEventIdentifier();
  v1 = sub_269BF87E8();

  return v1;
}

uint64_t SleepScoreResultsNotification.localizedDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription);
  v2 = *(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription + 8);

  return v1;
}

uint64_t SleepScoreResultsNotification.targetDayIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex;
  v4 = sub_269BF8688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double SleepScoreResultsNotification.visualizationModel.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel + 16);
  v3 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel + 24);
  *a1 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel);
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  return result;
}

uint64_t SleepScoreResultsNotification.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_269BE634C(a1, v11);
  if (!v12)
  {
    sub_269BE5854(v11, &qword_28034A908, MEMORY[0x277D84F70] + 8);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v8 = 0;
    return v8 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription) == *&v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription] && *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription + 8) == *&v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription + 8];
  if (!v3 && (sub_269BF8BB8() & 1) == 0 || *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction) != v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction] || (sub_269BF8688(), sub_269BE63D8(qword_280B61430, MEMORY[0x277CCB6A8]), (sub_269BF8718() & 1) == 0) || (v4 = v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel, v5 = &v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel], *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel) != *&v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel]) || *(v4 + 8) != v5[1] || *(v4 + 16) != v5[2] || *(v4 + 24) != *(v5 + 3))
  {

    goto LABEL_17;
  }

  v6 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion);
  v7 = v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion];

  v8 = v6 ^ v7 ^ 1;
  return v8 & 1;
}

uint64_t SleepScoreResultsNotification.scoreLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel + 24);
  *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion);
  swift_getKeyPath();
  result = sub_269BF180C(v3, &v5);
  *a1 = v5;
  return result;
}

id SleepScoreResultsNotification.__allocating_init(localizedDescription:isIntroduction:targetDayIndex:visualizationModel:algorithmVersion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int128 *a5, char *a6)
{
  v13 = objc_allocWithZone(v6);
  v24 = *a5;
  v14 = *(a5 + 2);
  v15 = *(a5 + 3);
  v16 = *a6;
  v17 = &v13[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription];
  *v17 = a1;
  v17[1] = a2;
  v13[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction] = a3;
  v18 = OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex;
  v19 = sub_269BF8688();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v13[v18], a4, v19);
  v21 = &v13[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel];
  *v21 = v24;
  *(v21 + 2) = v14;
  *(v21 + 3) = v15;
  v13[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion] = v16;
  v25.receiver = v13;
  v25.super_class = v6;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  (*(v20 + 8))(a4, v19);
  return v22;
}

id SleepScoreResultsNotification.init(localizedDescription:isIntroduction:targetDayIndex:visualizationModel:algorithmVersion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int128 *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v24 = *a5;
  v14 = *(a5 + 2);
  v15 = *(a5 + 3);
  v16 = *a6;
  v17 = &v6[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription];
  *v17 = a1;
  v17[1] = a2;
  v6[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction] = a3;
  v18 = OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex;
  v19 = sub_269BF8688();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v6[v18], a4, v19);
  v21 = &v6[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel];
  *v21 = v24;
  *(v21 + 2) = v14;
  *(v21 + 3) = v15;
  v6[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion] = v16;
  v25.receiver = v6;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  (*(v20 + 8))(a4, v19);
  return v22;
}

uint64_t sub_269BE5050(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_269BE6E08();
    v2 = sub_269BF8B18();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_269BE5A00();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_269BE6E6C(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_269BE6E6C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_269BF89F8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_269BE6E6C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t SleepScoreResultsNotification.userInfo.getter()
{
  v1 = v0;
  sub_269BE5940();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269BFA450;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000269BFB690;
  v3 = *(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription);
  v4 = *(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription + 8);
  *(inited + 48) = sub_269BF87D8();
  strcpy((inited + 56), "isIntroduction");
  *(inited + 71) = -18;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 80), "targetDayIndex");
  *(inited + 95) = -18;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x8000000269BFB640;
  if (*(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x8000000269BFB480;
  v6 = v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x8000000269BFB4A0;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 176) = 0xD000000000000019;
  *(inited + 184) = 0x8000000269BFB4C0;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 200) = 0x696F506C61746F74;
  *(inited + 208) = 0xEB0000000073746ELL;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_269BE6254(inited);
  swift_setDeallocating();
  sub_269BE5998();
  swift_arrayDestroy();
  return v7;
}

id SleepScoreResultsNotification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepScoreResultsNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269BE57BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269BE57F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269BE5854(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_269BE7164(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_269BE58C4()
{
  result = qword_28034A8E8;
  if (!qword_28034A8E8)
  {
    sub_269BE7164(255, &qword_28034A8E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A8E8);
  }

  return result;
}

void sub_269BE5940()
{
  if (!qword_28034A8F0)
  {
    sub_269BE5998();
    v0 = sub_269BF8B98();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A8F0);
    }
  }
}

void sub_269BE5998()
{
  if (!qword_28034A8F8)
  {
    sub_269BE5A00();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A8F8);
    }
  }
}

unint64_t sub_269BE5A00()
{
  result = qword_28034A900;
  if (!qword_28034A900)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034A900);
  }

  return result;
}

unint64_t sub_269BE5A70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_269BF8C18();
  sub_269BF8818();
  v6 = sub_269BF8C58();

  return sub_269BE5C84(a1, a2, v6);
}

unint64_t sub_269BE5AE8(unsigned int a1)
{
  v3 = *(v1 + 40);
  sub_269BF8C18();
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 == 2)
    {
      MEMORY[0x26D64C450](2);
      v4 = a1;
    }

    else if (a1 == 49152)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }
  }

  else if (a1 >> 14)
  {
    MEMORY[0x26D64C450](1);
    MEMORY[0x26D64C450](a1);
    v4 = (a1 >> 8) & 0x3F;
  }

  else
  {
    MEMORY[0x26D64C450](0);
    v4 = a1;
  }

  MEMORY[0x26D64C450](v4);
  v5 = sub_269BF8C58();

  return sub_269BE5D3C(a1, v5);
}

unint64_t sub_269BE5BD4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_269BF8C18();
  MEMORY[0x26D64C450](a1);
  v4 = sub_269BF8C58();

  return sub_269BE5E1C(a1, v4);
}

unint64_t sub_269BE5C40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_269BF89F8();

  return sub_269BE5E8C(a1, v5);
}

unint64_t sub_269BE5C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_269BF8BB8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_269BE5D3C(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = a1 & 0xC000;
    do
    {
      v8 = *(*(v2 + 48) + 2 * result);
      v9 = v8 >> 14;
      if (v8 >> 14 > 1)
      {
        if (v9 == 2)
        {
          if (v7 != 0x8000)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }

        if (v8 == 49152)
        {
          if (a1 == 49152)
          {
            return result;
          }
        }

        else if (a1 == 49153)
        {
          return result;
        }
      }

      else
      {
        if (!v9)
        {
          if (a1 >> 14)
          {
            goto LABEL_4;
          }

LABEL_11:
          if (v8 == a1)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v7 == 0x4000 && ((v8 ^ a1) & 0x3FFF) == 0)
        {
          return result;
        }
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_269BE5E1C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_269BE5E8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_269BE6E7C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D64C230](v9, a1);
      sub_269BE6ED8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_269BE5F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269BD80DC();
    v3 = sub_269BF8B18();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_269BE5A70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_269BE604C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_269BE6F2C();
  v3 = sub_269BF8B18();
  LOWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_269BE5AE8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 2 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 4);
    v15 = *v10;

    v8 = sub_269BE5AE8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_269BE6150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_269BE7010();
  v3 = sub_269BF8B18();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_269BE5BD4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_269BE5BD4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_269BE6254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269BE70FC();
    v3 = sub_269BF8B18();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_269BE5A70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_269BE634C(uint64_t a1, uint64_t a2)
{
  sub_269BE7164(0, &qword_28034A908, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BE63D8(unint64_t *a1, void (*a2)(uint64_t))
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

id _s11SleepHealth0A24ScoreResultsNotificationC4body8userInfoACSgSS_SDys11AnyHashableVypGtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269BF8688();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v51, "isIntroduction");
  HIBYTE(v51[1]) = -18;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v11 = sub_269BE5C40(v52), (v12 & 1) == 0))
  {
    sub_269BE6ED8(v52);
    goto LABEL_6;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v11, v53);
  sub_269BE6ED8(v52);
  sub_269BDB1E0(0, &qword_28034AA38, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v13 = v51[0];
  v14 = [v51[0] BOOLValue];

LABEL_7:
  strcpy(v51, "targetDayIndex");
  HIBYTE(v51[1]) = -18;
  sub_269BF8A18();
  if (!*(a3 + 16))
  {
    goto LABEL_33;
  }

  v15 = sub_269BE5C40(v52);
  if ((v16 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v15, v53);
  sub_269BE6ED8(v52);
  sub_269BDB1E0(0, &qword_28034AA38, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v17 = v51[0];
  strcpy(v51, "totalPoints");
  HIDWORD(v51[1]) = -352321536;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v18 = sub_269BE5C40(v52), (v19 & 1) == 0))
  {

LABEL_34:

LABEL_35:
    sub_269BE6ED8(v52);
    return 0;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v18, v53);
  sub_269BE6ED8(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_31:

    return 0;
  }

  v49 = v51[0];
  v51[0] = 0xD000000000000014;
  v51[1] = 0x8000000269BFB480;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v20 = sub_269BE5C40(v52), (v21 & 1) == 0))
  {

LABEL_33:

    goto LABEL_34;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v20, v53);
  sub_269BE6ED8(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_38:

    goto LABEL_31;
  }

  v48 = v51[0];
  v51[0] = 0xD000000000000013;
  v51[1] = 0x8000000269BFB4A0;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v22 = sub_269BE5C40(v52), (v23 & 1) == 0))
  {

LABEL_40:

    goto LABEL_35;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v22, v53);
  sub_269BE6ED8(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_42:

    goto LABEL_38;
  }

  v47 = v51[0];
  v51[0] = 0xD000000000000019;
  v51[1] = 0x8000000269BFB4C0;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v24 = sub_269BE5C40(v52), (v25 & 1) == 0))
  {

LABEL_44:

    goto LABEL_40;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v24, v53);
  sub_269BE6ED8(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_46:

    goto LABEL_42;
  }

  v46 = v51[0];
  v51[0] = 0xD000000000000010;
  v51[1] = 0x8000000269BFB640;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v26 = sub_269BE5C40(v52), (v27 & 1) == 0))
  {

    goto LABEL_44;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v26, v53);
  sub_269BE6ED8(v52);

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_52:

    goto LABEL_46;
  }

  v45 = v51[0];
  v28 = [v51[0] integerValue];
  if (v28 == 1)
  {
    v44 = 0;
    goto LABEL_50;
  }

  if (v28 != 2)
  {

    goto LABEL_52;
  }

  v44 = 1;
LABEL_50:
  [v17 integerValue];
  sub_269BF8638();
  [v48 doubleValue];
  v31 = v30;
  [v47 doubleValue];
  v33 = v32;
  v34 = v46;
  [v46 doubleValue];
  v36 = v35;
  v43 = [v49 integerValue];
  v37 = type metadata accessor for SleepScoreResultsNotification(0);
  v38 = objc_allocWithZone(v37);
  v39 = &v38[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription];
  *v39 = a1;
  v39[1] = a2;
  v38[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction] = v14;
  (*(v7 + 16))(&v38[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex], v10, v6);
  v40 = &v38[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel];
  *v40 = v31;
  v40[1] = v33;
  v40[2] = v36;
  v40[3] = v43;
  v38[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion] = v44;
  v50.receiver = v38;
  v50.super_class = v37;
  v41 = objc_msgSendSuper2(&v50, sel_init);

  (*(v7 + 8))(v10, v6);
  return v41;
}

uint64_t sub_269BE6C54()
{
  result = type metadata accessor for SleepScoreDaySummary();
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

uint64_t sub_269BE6D2C()
{
  result = sub_269BF8688();
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

void sub_269BE6E08()
{
  if (!qword_28034AA30)
  {
    v0 = sub_269BF8B28();
    if (!v1)
    {
      atomic_store(v0, &qword_28034AA30);
    }
  }
}

_OWORD *sub_269BE6E6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_269BE6F2C()
{
  if (!qword_28034AA40)
  {
    sub_269BE7164(255, &qword_28034AA48, &type metadata for SleepScoreNote.Customization, MEMORY[0x277D83940]);
    sub_269BE6FBC();
    v0 = sub_269BF8B28();
    if (!v1)
    {
      atomic_store(v0, &qword_28034AA40);
    }
  }
}

unint64_t sub_269BE6FBC()
{
  result = qword_28034AA50;
  if (!qword_28034AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AA50);
  }

  return result;
}

void sub_269BE7010()
{
  if (!qword_28034AA58)
  {
    sub_269BE7164(255, &qword_28034AA60, &type metadata for SleepScoreNote.Contributor, MEMORY[0x277D83940]);
    sub_269BE70A8();
    v0 = sub_269BF8B28();
    if (!v1)
    {
      atomic_store(v0, &qword_28034AA58);
    }
  }
}

unint64_t sub_269BE70A8()
{
  result = qword_28034AA68;
  if (!qword_28034AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AA68);
  }

  return result;
}

void sub_269BE70FC()
{
  if (!qword_28034AA70)
  {
    sub_269BE5A00();
    v0 = sub_269BF8B28();
    if (!v1)
    {
      atomic_store(v0, &qword_28034AA70);
    }
  }
}

void sub_269BE7164(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269BE71F4(uint64_t a1, uint64_t a2)
{
  sub_269BD8758();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SleepScoreDaySummaryCollection.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreDaySummaryCollection() + 20);
  v4 = sub_269BF8508();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SleepScoreDaySummaryCollection()
{
  result = qword_28034AA90;
  if (!qword_28034AA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepScoreDaySummaryCollection.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreDaySummaryCollection() + 20);
  v4 = sub_269BF8508();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreDaySummaryCollection.daySummaries.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScoreDaySummaryCollection() + 24));
}

uint64_t SleepScoreDaySummaryCollection.daySummaries.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreDaySummaryCollection() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SleepScoreDaySummaryCollection.init(morningIndexRange:gregorianCalendar:daySummaries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_269BE9154(a1, a4, sub_269BD8758);
  v7 = type metadata accessor for SleepScoreDaySummaryCollection();
  v8 = *(v7 + 20);
  v9 = sub_269BF8508();
  result = (*(*(v9 - 8) + 32))(a4 + v8, a2, v9);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t static SleepScoreDaySummaryCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_269BF8688();
  sub_269BE910C(qword_280B61430, MEMORY[0x277CCB6A8]);
  if ((sub_269BF8718() & 1) == 0)
  {
    return 0;
  }

  sub_269BD8758();
  v5 = *(v4 + 36);
  if ((sub_269BF8718() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for SleepScoreDaySummaryCollection();
  if ((MEMORY[0x26D64BD10](a1 + *(v6 + 20), a2 + *(v6 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 24);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_269BE7664(v8, v9);
}

uint64_t sub_269BE7664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v101 = *(v4 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v87[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269BE9040(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v87[-v10];
  sub_269BE921C();
  v103 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v104 = &v87[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = sub_269BF8458();
  v14 = *(v106 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v106);
  v99 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v18 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v20 = &v87[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269BE92B0();
  v105 = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v107 = &v87[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = type metadata accessor for SleepScoreDaySummary();
  v24 = *(v108 - 1);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v108);
  v28 = &v87[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v30 = &v87[-v29];
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
LABEL_57:
    v84 = 0;
    return v84 & 1;
  }

  if (v31 && a1 != a2)
  {
    v32 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v33 = a1 + v32;
    v34 = a2 + v32;
    v35 = sub_269BE9314();
    v96 = v30;
    v97 = v35;
    v100 = (v14 + 48);
    v90 = (v14 + 32);
    v91 = (v14 + 8);
    v93 = *(v24 + 72);
    v94 = (v101 + 48);
    v36 = v33;
    v95 = v4;
    v92 = v7;
    while (1)
    {
      sub_269BE90A4(v36, v30, type metadata accessor for SleepScoreDaySummary);
      v101 = v36;
      v98 = v34;
      sub_269BE90A4(v34, v28, type metadata accessor for SleepScoreDaySummary);
      v37 = *v30;
      v38 = *v28;
      if ((sub_269BF8988() & 1) == 0)
      {
        break;
      }

      v39 = v108[5];
      v40 = v30 + v39;
      v41 = v28 + v39;
      sub_269BF8688();
      sub_269BE910C(qword_280B61430, MEMORY[0x277CCB6A8]);
      if ((sub_269BF8718() & 1) == 0)
      {
        break;
      }

      v42 = type metadata accessor for SleepScoreMetricsDaySummary(0);
      if ((MEMORY[0x26D64BD10](&v40[v42[5]], &v41[v42[5]]) & 1) == 0)
      {
        break;
      }

      v43 = v42[6];
      v44 = &v40[v43];
      v45 = v40[v43 + 8];
      v46 = &v41[v43];
      v47 = v41[v43 + 8];
      if (v45)
      {
        if (!v47)
        {
          break;
        }
      }

      else
      {
        if (*v44 != *v46)
        {
          LOBYTE(v47) = 1;
        }

        if (v47)
        {
          break;
        }
      }

      v48 = v42[7];
      v49 = &v40[v48];
      v50 = v40[v48 + 8];
      v51 = &v41[v48];
      v52 = v41[v48 + 8];
      if (v50)
      {
        if (!v52)
        {
          break;
        }
      }

      else
      {
        if (*v49 != *v51)
        {
          LOBYTE(v52) = 1;
        }

        if (v52)
        {
          break;
        }
      }

      v53 = v42[8];
      v54 = *(v105 + 48);
      v55 = v107;
      sub_269BE90A4(&v40[v53], v107, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      sub_269BE90A4(&v41[v53], &v55[v54], type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      v56 = *v100;
      v57 = v106;
      v58 = (*v100)(v55, 2, v106);
      if (v58)
      {
        if (v58 == 1)
        {
          v59 = v107;
          if (v56(&v107[v54], 2, v57) != 1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v59 = v107;
          if (v56(&v107[v54], 2, v57) != 2)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v59 = v107;
        sub_269BE90A4(v107, v20, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
        if (v56(&v59[v54], 2, v57))
        {
          (*v91)(v20, v57);
LABEL_54:
          v85 = sub_269BE92B0;
          goto LABEL_55;
        }

        v60 = *v90;
        v89 = v28;
        v61 = v20;
        v62 = v99;
        v60(v99, &v59[v54], v57);
        v88 = sub_269BF8438();
        v63 = *v91;
        v64 = v62;
        v20 = v61;
        v28 = v89;
        (*v91)(v64, v57);
        v63(v20, v57);
        if ((v88 & 1) == 0)
        {
          v85 = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline;
LABEL_55:
          sub_269BE91BC(v59, v85);
          v30 = v96;
          break;
        }
      }

      sub_269BE91BC(v59, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      v65 = v42[9];
      v66 = *(v103 + 48);
      v67 = &v40[v65];
      v68 = v104;
      sub_269BD31C8(v67, v104);
      sub_269BD31C8(&v41[v65], &v68[v66]);
      v69 = v95;
      v70 = *v94;
      if ((*v94)(v68, 1, v95) == 1)
      {
        v71 = v70(&v68[v66], 1, v69);
        v30 = v96;
        if (v71 != 1)
        {
          goto LABEL_52;
        }

        sub_269BE9360(v68);
      }

      else
      {
        v72 = v102;
        sub_269BD31C8(v68, v102);
        v73 = v70(&v68[v66], 1, v69);
        v74 = v92;
        v30 = v96;
        if (v73 == 1)
        {
          sub_269BE91BC(v72, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
LABEL_52:
          sub_269BE91BC(v68, sub_269BE921C);
          break;
        }

        sub_269BE9154(&v68[v66], v92, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        if (*v72 != *v74 || *(v72 + 1) != *(v74 + 8) || *(v72 + 2) != *(v74 + 16) || (v75 = v69[7], (sub_269BF8438() & 1) == 0) || *&v72[v69[8]] != *(v74 + v69[8]) || *&v72[v69[9]] != *(v74 + v69[9]))
        {
          sub_269BE91BC(v74, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
          sub_269BE91BC(v72, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
          sub_269BE9360(v68);
          break;
        }

        v76 = v69[10];
        v77 = *&v72[v76];
        v78 = *(v74 + v76);
        sub_269BE91BC(v74, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        sub_269BE91BC(v72, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        sub_269BE9360(v68);
        if (v77 != v78)
        {
          break;
        }
      }

      v79 = v108[6];
      v80 = (v30 + v79);
      v81 = *(v30 + v79 + 48);
      v82 = (v28 + v79);
      if (v81)
      {
        if ((v82[3].i8[0] & 1) == 0)
        {
          break;
        }
      }

      else if ((v82[3].i8[0] & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*v80, *v82), vceqq_s64(v80[1], v82[1])))) & 1) == 0 || v80[2].i64[0] != v82[2].i64[0] || v80[2].i64[1] != v82[2].i64[1])
      {
        break;
      }

      v83 = *(v30 + v108[7]) ^ *(v28 + v108[7]);
      sub_269BE91BC(v28, type metadata accessor for SleepScoreDaySummary);
      sub_269BE91BC(v30, type metadata accessor for SleepScoreDaySummary);
      if ((v83 & 1) == 0)
      {
        v34 = v98 + v93;
        v36 = v101 + v93;
        if (--v31)
        {
          continue;
        }
      }

      v84 = v83 ^ 1;
      return v84 & 1;
    }

    sub_269BE91BC(v28, type metadata accessor for SleepScoreDaySummary);
    sub_269BE91BC(v30, type metadata accessor for SleepScoreDaySummary);
    goto LABEL_57;
  }

  v84 = 1;
  return v84 & 1;
}

uint64_t SleepScoreDaySummaryCollection.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8]);
  sub_269BF86B8();
  sub_269BD8758();
  v5 = v1 + *(v4 + 36);
  sub_269BF86B8();
  v6 = type metadata accessor for SleepScoreDaySummaryCollection();
  v7 = *(v6 + 20);
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8]);
  sub_269BF86B8();
  v8 = *(v2 + *(v6 + 24));

  return sub_269BE8748(a1, v8);
}

uint64_t SleepScoreDaySummaryCollection.hashValue.getter()
{
  v1 = v0;
  sub_269BF8C18();
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8]);
  sub_269BF86B8();
  sub_269BD8758();
  v3 = v0 + *(v2 + 36);
  sub_269BF86B8();
  v4 = type metadata accessor for SleepScoreDaySummaryCollection();
  v5 = *(v4 + 20);
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8]);
  sub_269BF86B8();
  sub_269BE8748(v7, *(v1 + *(v4 + 24)));
  return sub_269BF8C58();
}

uint64_t sub_269BE82D4(uint64_t a1)
{
  v3 = v1;
  sub_269BF8C18();
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8]);
  sub_269BF86B8();
  sub_269BD8758();
  v5 = v1 + *(v4 + 36);
  sub_269BF86B8();
  v6 = *(a1 + 20);
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8]);
  sub_269BF86B8();
  sub_269BE8748(v8, *(v3 + *(a1 + 24)));
  return sub_269BF8C58();
}

uint64_t sub_269BE8400(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8]);
  sub_269BF86B8();
  sub_269BD8758();
  v7 = v2 + *(v6 + 36);
  sub_269BF86B8();
  v8 = *(a2 + 20);
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8]);
  sub_269BF86B8();
  v9 = *(v4 + *(a2 + 24));

  return sub_269BE8748(a1, v9);
}

uint64_t sub_269BE8520(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_269BF8C18();
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8]);
  sub_269BF86B8();
  sub_269BD8758();
  v6 = v2 + *(v5 + 36);
  sub_269BF86B8();
  v7 = *(a2 + 20);
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8]);
  sub_269BF86B8();
  sub_269BE8748(v9, *(v4 + *(a2 + 24)));
  return sub_269BF8C58();
}

uint64_t sub_269BE8648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269BF8688();
  sub_269BE910C(qword_280B61430, MEMORY[0x277CCB6A8]);
  if ((sub_269BF8718() & 1) == 0)
  {
    return 0;
  }

  sub_269BD8758();
  v7 = *(v6 + 36);
  if ((sub_269BF8718() & 1) == 0 || (MEMORY[0x26D64BD10](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return sub_269BE7664(v9, v10);
}

uint64_t sub_269BE8748(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v81 = *(v3 - 1);
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BE9040(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v61 - v8;
  v10 = sub_269BF8458();
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v10);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v14 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SleepScoreDaySummary();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = a2;
  v22 = *(a2 + 16);
  result = MEMORY[0x26D64C450](v22);
  if (v22)
  {
    v24 = v21 + v17[5];
    v25 = type metadata accessor for SleepScoreMetricsDaySummary(0);
    v26 = v25[5];
    v78 = &v24[v25[6]];
    v79 = v26;
    v27 = v25[8];
    v76 = &v24[v25[7]];
    v77 = v27;
    v28 = v25[9];
    v29 = v17[6];
    v74 = v17[7];
    v75 = v28;
    v30 = v24;
    v73 = v21 + v29;
    result = v72 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v72 = (v80 + 48);
    v63 = (v80 + 32);
    v62 = (v80 + 8);
    v31 = *(v18 + 72);
    v70 = (v81 + 48);
    v71 = v31;
    v65 = v9;
    do
    {
      v80 = result;
      sub_269BE90A4(result, v21, type metadata accessor for SleepScoreDaySummary);
      v34 = *v21;
      sub_269BF8998();
      sub_269BF8688();
      sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8]);
      sub_269BF86B8();
      sub_269BF8508();
      sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8]);
      sub_269BF86B8();
      v35 = v78[8];
      v81 = v22;
      if (v35 == 1)
      {
        sub_269BF8C38();
      }

      else
      {
        v36 = *v78;
        sub_269BF8C38();
        if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x26D64C470](v37);
      }

      if (v76[8] == 1)
      {
        sub_269BF8C38();
      }

      else
      {
        v38 = *v76;
        sub_269BF8C38();
        if ((v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v38;
        }

        else
        {
          v39 = 0;
        }

        MEMORY[0x26D64C470](v39);
      }

      sub_269BE90A4(&v30[v77], v16, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      v40 = (*v72)(v16, 2, v10);
      if (v40)
      {
        MEMORY[0x26D64C450](v40 != 1);
      }

      else
      {
        v41 = v64;
        (*v63)(v64, v16, v10);
        MEMORY[0x26D64C450](2);
        sub_269BE910C(&qword_28034AAA8, MEMORY[0x277CC9578]);
        sub_269BF86B8();
        (*v62)(v41, v10);
      }

      sub_269BD31C8(&v30[v75], v9);
      if ((*v70)(v9, 1, v3) == 1)
      {
        sub_269BF8C38();
      }

      else
      {
        v42 = v66;
        sub_269BE9154(v9, v66, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        sub_269BF8C38();
        v43 = *v42;
        if (*v42 == 0.0)
        {
          v43 = 0.0;
        }

        MEMORY[0x26D64C470](*&v43);
        MEMORY[0x26D64C450](*(v42 + 8));
        v44 = *(v42 + 16);
        if (v44 == 0.0)
        {
          v44 = 0.0;
        }

        MEMORY[0x26D64C470](*&v44);
        v45 = v3[7];
        sub_269BE910C(&qword_28034AAA8, MEMORY[0x277CC9578]);
        sub_269BF86B8();
        v46 = *(v42 + v3[8]);
        if (v46 == 0.0)
        {
          v46 = 0.0;
        }

        MEMORY[0x26D64C470](*&v46);
        v47 = *(v42 + v3[9]);
        if (v47 == 0.0)
        {
          v47 = 0.0;
        }

        MEMORY[0x26D64C470](*&v47);
        v48 = *(v42 + v3[10]);
        if (v48 == 0.0)
        {
          v48 = 0.0;
        }

        MEMORY[0x26D64C470](*&v48);
        sub_269BE91BC(v42, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
      }

      if (v73[48] == 1)
      {
        sub_269BF8C38();
      }

      else
      {
        v49 = *(v73 + 5);
        v68 = *(v73 + 4);
        v69 = v49;
        v67 = *(v73 + 3);
        v50 = v21;
        v51 = v3;
        v52 = v30;
        v53 = v16;
        v55 = *(v73 + 1);
        v54 = *(v73 + 2);
        v56 = v10;
        v57 = *v73;
        sub_269BF8C38();
        v58 = v57;
        v10 = v56;
        MEMORY[0x26D64C450](v58);
        v59 = v55;
        v16 = v53;
        v30 = v52;
        MEMORY[0x26D64C450](v59);
        v60 = v54;
        v3 = v51;
        v21 = v50;
        MEMORY[0x26D64C450](v60);
        MEMORY[0x26D64C450](v67);
        v9 = v65;
        MEMORY[0x26D64C450](v68);
        MEMORY[0x26D64C450](v69);
      }

      v32 = v81;
      if (*(v21 + v74))
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      MEMORY[0x26D64C450](v33);
      sub_269BE91BC(v21, type metadata accessor for SleepScoreDaySummary);
      result = v80 + v71;
      v22 = v32 - 1;
    }

    while (v22);
  }

  return result;
}

void sub_269BE8F74()
{
  sub_269BD8758();
  if (v0 <= 0x3F)
  {
    sub_269BF8508();
    if (v1 <= 0x3F)
    {
      sub_269BE9040(319, &qword_28034AAA0, type metadata accessor for SleepScoreDaySummary, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269BE9040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_269BE90A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BE910C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269BE9154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BE91BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269BE921C()
{
  if (!qword_28034AAB0)
  {
    sub_269BE9040(255, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034AAB0);
    }
  }
}

void sub_269BE92B0()
{
  if (!qword_28034AAB8)
  {
    type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034AAB8);
    }
  }
}

unint64_t sub_269BE9314()
{
  result = qword_28034AAC0;
  if (!qword_28034AAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034AAC0);
  }

  return result;
}

uint64_t sub_269BE9360(uint64_t a1)
{
  sub_269BE9040(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SleepScoreDaySummary.init(sleepDaySummary:sleepScoreMetrics:algorithmVersion:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  *a4 = a1;
  v13 = type metadata accessor for SleepScoreDaySummary();
  sub_269BE9768(a2, a4 + v13[5], type metadata accessor for SleepScoreMetricsDaySummary);
  sub_269BE9768(a2, v11, type metadata accessor for SleepScoreMetricsDaySummary);
  sub_269BD246C(v11, v18);
  sub_269BD3290(a2, type metadata accessor for SleepScoreMetricsDaySummary);
  v14 = v20;
  v15 = a4 + v13[6];
  v16 = v18[1];
  *v15 = v18[0];
  *(v15 + 1) = v16;
  result = *&v19;
  *(v15 + 2) = v19;
  v15[48] = v14;
  *(a4 + v13[7]) = v12;
  return result;
}

uint64_t type metadata accessor for SleepScoreDaySummary()
{
  result = qword_280B61778;
  if (!qword_280B61778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepScoreDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreDaySummary() + 20);
  v4 = sub_269BF8688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreDaySummary.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreDaySummary() + 20);
  v4 = *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 20);
  v5 = sub_269BF8508();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t SleepScoreDaySummary.sleepDurationGoal.getter()
{
  v1 = v0 + *(type metadata accessor for SleepScoreDaySummary() + 20);
  v2 = (v1 + *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 24));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t SleepScoreDaySummary.usualSleepStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreDaySummary() + 20);
  v4 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  return sub_269BE9768(v3 + *(v4 + 32), a1, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
}

uint64_t SleepScoreDaySummary.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreDaySummary() + 20);
  v4 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  return sub_269BE9768(v3 + *(v4 + 36), a1, sub_269BD3170);
}

uint64_t sub_269BE9768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 SleepScoreDaySummary.score.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreDaySummary() + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t SleepScoreDaySummary.algorithmVersion.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SleepScoreDaySummary();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t SleepScoreDaySummary.sleepStartTimeSinceUsualSleepStartTime.getter()
{
  sub_269BD3170();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269BF8458();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v14 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0 + *(type metadata accessor for SleepScoreDaySummary() + 20);
  v18 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  sub_269BE9768(v17 + *(v18 + 32), v16, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  if ((*(v6 + 48))(v16, 2, v5))
  {
    return 0;
  }

  (*(v6 + 32))(v12, v16, v5);
  sub_269BE9768(v17 + *(v18 + 36), v4, sub_269BD3170);
  v19 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  if ((*(*(v19 - 8) + 48))(v4, 1, v19) == 1)
  {
    (*(v6 + 8))(v12, v5);
    sub_269BD3290(v4, sub_269BD3170);
    return 0;
  }

  (*(v6 + 16))(v10, &v4[*(v19 + 28)], v5);
  sub_269BD3290(v4, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  sub_269BF8418();
  v22 = v21;
  v23 = *(v6 + 8);
  v23(v10, v5);
  v23(v12, v5);
  return v22;
}

uint64_t SleepScoreDaySummary.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD3170();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269BF8458();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v15 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v0;
  sub_269BF8998();
  v47 = type metadata accessor for SleepScoreDaySummary();
  v48 = v1;
  v19 = v1 + *(v47 + 20);
  sub_269BF8688();
  sub_269BEA2D0(&qword_28034AA78, MEMORY[0x277CCB6A8]);
  sub_269BF86B8();
  v20 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v21 = v20[5];
  sub_269BF8508();
  sub_269BEA2D0(&qword_28034AA80, MEMORY[0x277CC99E8]);
  sub_269BF86B8();
  v22 = &v19[v20[6]];
  if (v22[8] == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v23 = *v22;
    sub_269BF8C38();
    if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    MEMORY[0x26D64C470](v24);
  }

  v25 = &v19[v20[7]];
  if (v25[8] == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v26 = *v25;
    sub_269BF8C38();
    if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x26D64C470](v27);
  }

  sub_269BE9768(&v19[v20[8]], v17, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v28 = (*(v10 + 48))(v17, 2, v9);
  if (v28)
  {
    MEMORY[0x26D64C450](v28 != 1);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    MEMORY[0x26D64C450](2);
    sub_269BEA2D0(&qword_28034AAA8, MEMORY[0x277CC9578]);
    sub_269BF86B8();
    (*(v10 + 8))(v13, v9);
  }

  v29 = v48;
  v31 = v45;
  v30 = v46;
  sub_269BE9768(&v19[v20[9]], v8, sub_269BD3170);
  if ((*(v31 + 48))(v8, 1, v30) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v32 = v44;
    sub_269BD322C(v8, v44);
    sub_269BF8C38();
    SleepScoreMetricsDaySummary.Metrics.hash(into:)();
    sub_269BD3290(v32, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  }

  v33 = v47;
  v34 = (v29 + *(v47 + 24));
  if (*(v34 + 48) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v36 = v34[4];
    v35 = v34[5];
    v38 = v34[2];
    v37 = v34[3];
    v40 = *v34;
    v39 = v34[1];
    sub_269BF8C38();
    MEMORY[0x26D64C450](v40);
    MEMORY[0x26D64C450](v39);
    MEMORY[0x26D64C450](v38);
    MEMORY[0x26D64C450](v37);
    MEMORY[0x26D64C450](v36);
    MEMORY[0x26D64C450](v35);
  }

  if (*(v29 + *(v33 + 28)))
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  return MEMORY[0x26D64C450](v41);
}

uint64_t SleepScoreDaySummary.hashValue.getter()
{
  sub_269BF8C18();
  SleepScoreDaySummary.hash(into:)();
  return sub_269BF8C58();
}

uint64_t sub_269BEA0E4()
{
  sub_269BF8C18();
  SleepScoreDaySummary.hash(into:)();
  return sub_269BF8C58();
}

uint64_t sub_269BEA128()
{
  sub_269BF8C18();
  SleepScoreDaySummary.hash(into:)();
  return sub_269BF8C58();
}

uint64_t _s11SleepHealth0A15ScoreDaySummaryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_269BDB1E0(0, &qword_28034AAC0, 0x277D82BB8);
  v4 = *a1;
  v5 = *a2;
  if ((sub_269BF8988() & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = type metadata accessor for SleepScoreDaySummary();
  if (!_s11SleepHealth0A22ScoreMetricsDaySummaryV2eeoiySbAC_ACtFZ_0(a1 + v6[5], a2 + v6[5]))
  {
    goto LABEL_9;
  }

  v7 = v6[6];
  v8 = (a2 + v7);
  v9 = *(a2 + v7 + 16);
  v34[0] = *(a2 + v7);
  v10 = a1 + v7;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = *(v10 + 3);
  v15 = *(v10 + 4);
  v16 = *(v10 + 5);
  v17 = v10[48];
  v18 = v8[3].i8[0];
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34[1] = v9;
  v34[2] = v8[2];
  v35 = v18;
  if (v17)
  {
    if ((v18 & 1) == 0)
    {
LABEL_9:
      v19 = 0;
      return v19 & 1;
    }
  }

  else
  {
    v21.i64[0] = v11;
    v21.i64[1] = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = 0;
    if ((v18 & 1) != 0 || !_s11SleepHealth0A5ScoreV2eeoiySbAC_ACtFZ_0(&v21, v34))
    {
      goto LABEL_9;
    }
  }

  v19 = *(a1 + v6[7]) ^ *(a2 + v6[7]) ^ 1;
  return v19 & 1;
}

uint64_t sub_269BEA2D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269BEA340()
{
  sub_269BDB1E0(319, &qword_280B61580, 0x277CCD9B0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SleepScoreMetricsDaySummary(319);
    if (v1 <= 0x3F)
    {
      sub_269BEA3F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269BEA3F4()
{
  if (!qword_280B61590[0])
  {
    v0 = sub_269BF89A8();
    if (!v1)
    {
      atomic_store(v0, qword_280B61590);
    }
  }
}

uint64_t sub_269BEA444@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269BF82A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 segments];
  sub_269BEA930();
  v10 = sub_269BF8898();

  v21 = v5;
  v22 = v4;
  if (v10 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269BF8AD8())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26D64C2D0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 category];
      if (_HKCategoryValueSleepAnalysisIsAsleep())
      {

        v16 = [v14 dateInterval];

        sub_269BF8278();
        sub_269BF8288();
        (*(v21 + 8))(v8, v22);
        v17 = sub_269BF8458();
        return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v19 = sub_269BF8458();
  v20 = *(*(v19 - 8) + 56);

  return v20(a1, 1, 1, v19);
}

uint64_t sub_269BEA6F4(double a1)
{
  v2 = v1;
  v28 = sub_269BF82A8();
  v4 = *(v28 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 segments];
  sub_269BEA930();
  v9 = sub_269BF8898();

  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_18:
    v11 = sub_269BF8AD8();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = 0;
  v14 = v9 & 0xC000000000000001;
  v27 = v4 + 1;
  v15 = &off_279C82000;
  while (v11 != v12)
  {
    if (v14)
    {
      v18 = MEMORY[0x26D64C2D0](v12, v9);
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_16;
      }

      v18 = *(v9 + 8 * v12 + 32);
    }

    v4 = v18;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v18 v15[270]] == 2)
    {
      v19 = v11;
      v20 = v9;
      v21 = v10;
      v22 = v15;
      v23 = [v4 dateInterval];
      sub_269BF8278();

      v15 = v22;
      v10 = v21;
      v9 = v20;
      v11 = v19;
      sub_269BF8298();
      v25 = v24;

      (*v27)(v7, v28);
      v16 = v25 >= a1;
    }

    else
    {

      v16 = 0;
    }

    ++v12;
    v17 = __OFADD__(v13, v16);
    v13 += v16;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  return v13;
}

unint64_t sub_269BEA930()
{
  result = qword_280B61408;
  if (!qword_280B61408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B61408);
  }

  return result;
}

uint64_t sub_269BEA9DC()
{
  sub_269BF8C18();
  MEMORY[0x26D64C450](1);
  return sub_269BF8C58();
}

uint64_t sub_269BEAA48()
{
  sub_269BF8C18();
  MEMORY[0x26D64C450](1);
  return sub_269BF8C58();
}

uint64_t SleepHealthNotificationSettingsProvider.__allocating_init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v0)
  {
    v1 = v0;
    result = swift_allocObject();
    *(result + 16) = v1;
  }

  else
  {
    sub_269BF8A88();
    MEMORY[0x26D64C060](0xD000000000000029, 0x8000000269BFB970);
    v3 = sub_269BF87E8();
    MEMORY[0x26D64C060](v3);

    MEMORY[0x26D64C060](0xD00000000000001CLL, 0x8000000269BFB9A0);
    result = sub_269BF8AC8();
    __break(1u);
  }

  return result;
}

uint64_t SleepHealthNotificationSettingsProvider.__allocating_init(defaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.getter()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277CCC158];
  v11[0] = 0;
  v3 = [v1 hk:v2 safeNumberIfExistsForKeyPath:v11 error:?];
  if (v3)
  {
    v4 = v3;
    v5 = v11[0];
    v6 = [v4 BOOLValue];
  }

  else
  {
    v7 = v11[0];
    v8 = sub_269BF83E8();

    swift_willThrow();
    v6 = 2;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.setter(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_269BF8458();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BEB064();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = *(v1 + 16);
  if (v2 != 2)
  {
    v12 = sub_269BF88C8();
  }

  [v13 setObject:v12 forKey:*MEMORY[0x277CCC158]];
  swift_unknownObjectRelease();
  sub_269BEB0BC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269BF9B40;
  *(inited + 32) = sub_269BF87E8();
  *(inited + 40) = v15;
  v16 = sub_269BECA28(inited);
  swift_setDeallocating();
  sub_269BECB84(inited + 32);
  v27[8] = v16;
  if (v2 == 2)
  {
    v17 = sub_269BF87D8();
    [v13 setURL:0 forKey:v17];
LABEL_7:

    sub_269BE0F00(v27, 0xD00000000000002DLL, 0x8000000269BFB230);

    goto LABEL_8;
  }

  SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsFirstUpdated.getter(v11);
  v18 = (*(v4 + 48))(v11, 1, v3);
  sub_269BECBD8(v11);
  if (v18 == 1)
  {
    sub_269BF8448();
    sub_269BF8408();
    v20 = v19;
    (*(v4 + 8))(v7, v3);
    v17 = sub_269BF87D8();
    [v13 setDouble:v17 forKey:v20];
    goto LABEL_7;
  }

LABEL_8:
  sub_269BF8448();
  sub_269BF8408();
  v22 = v21;
  (*(v4 + 8))(v7, v3);
  v23 = sub_269BF87D8();
  [v13 setDouble:v23 forKey:v22];

  v24 = *MEMORY[0x277CCE378];
  v25 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void sub_269BEB064()
{
  if (!qword_280B61578)
  {
    sub_269BF8458();
    v0 = sub_269BF89A8();
    if (!v1)
    {
      atomic_store(v0, &qword_280B61578);
    }
  }
}

void sub_269BEB0BC()
{
  if (!qword_28034A7E8)
  {
    v0 = sub_269BF8B98();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A7E8);
    }
  }
}

uint64_t SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsFirstUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v13[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v13 error:?];

  if (v5)
  {
    v6 = v13[0];
    [v5 doubleValue];
    sub_269BF83F8();

    v7 = 0;
  }

  else
  {
    v8 = v13[0];
    v9 = sub_269BF83E8();

    swift_willThrow();
    v7 = 1;
  }

  v10 = sub_269BF8458();
  result = (*(*(v10 - 8) + 56))(a1, v7, 1, v10);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void (*SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.getter();
  return sub_269BEB29C;
}

id SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.getter()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 isAppleInternalInstall];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(v0 + 16);
  v5 = sub_269BF87D8();
  v13[0] = 0;
  v6 = [v4 hk:v5 safeNumberIfExistsForKeyPath:v13 error:?];

  if (!v6)
  {
    v10 = v13[0];
    v11 = sub_269BF83E8();

    swift_willThrow();
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  v7 = v13[0];
  v8 = [v6 integerValue];

  result = v8;
LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.setter(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_269BF88F8();
  }

  v5 = sub_269BF87D8();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96D68);
  sub_269BECB84(&unk_287A96D88);
  v7 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void (*SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.getter();
  *(a1 + 8) = v3 & 1;
  return sub_269BEB560;
}

uint64_t SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCount.getter()
{
  result = SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.getter();
  if (v1)
  {
    return 2;
  }

  return result;
}

uint64_t SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsLastUpdatedLocally.getter@<X0>(uint64_t a1@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v13[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v13 error:?];

  if (v5)
  {
    v6 = v13[0];
    [v5 doubleValue];
    sub_269BF83F8();

    v7 = 0;
  }

  else
  {
    v8 = v13[0];
    v9 = sub_269BF83E8();

    swift_willThrow();
    v7 = 1;
  }

  v10 = sub_269BF8458();
  result = (*(*(v10 - 8) + 56))(a1, v7, 1, v10);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.getter(BOOL *a1@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v12[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v12 error:?];

  if (v5)
  {
    v6 = v12[0];
    v7 = [v5 integerValue];

    v8 = v7 != 1;
  }

  else
  {
    v9 = v12[0];
    v10 = sub_269BF83E8();

    swift_willThrow();
    v8 = 1;
  }

  *a1 = v8;
  v11 = *MEMORY[0x277D85DE8];
}

void SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.setter(_BYTE *a1)
{
  v3 = sub_269BF8458();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *a1;
  v8 = *(v1 + 16);
  if (v6)
  {
    v9 = sub_269BF87D8();
    [v8 setObject:0 forKey:v9];

    v10 = 0;
  }

  else
  {
    v16[1] = 1;
    v11 = sub_269BF8BA8();
    v12 = sub_269BF87D8();
    [v8 setObject:v11 forKey:v12];
    swift_unknownObjectRelease();

    sub_269BF8448();
    sub_269BF8408();
    (*(v4 + 8))(v7, v3);
    v10 = sub_269BF88D8();
  }

  v13 = sub_269BF87D8();
  [v8 setObject:v10 forKey:v13];
  swift_unknownObjectRelease();

  v14 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96D98);
  swift_arrayDestroy();
  v15 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void (*SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.getter((a1 + 8));
  return sub_269BEBAB8;
}

void sub_269BEBAB8(uint64_t *a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    v5 = *(a1 + 8);
    v4 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.setter(v4);
}

uint64_t SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v13[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v13 error:?];

  if (v5)
  {
    v6 = v13[0];
    [v5 doubleValue];
    sub_269BF83F8();

    v7 = 0;
  }

  else
  {
    v8 = v13[0];
    v9 = sub_269BF83E8();

    swift_willThrow();
    v7 = 1;
  }

  v10 = sub_269BF8458();
  result = (*(*(v10 - 8) + 56))(a1, v7, 1, v10);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void SleepHealthNotificationSettingsProvider.enabledSleepScoreNotificationLevels(sleepSettingsFallback:)(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  SleepHealthNotificationSettingsProvider._enabledSleepScoreNotificationLevels.getter(&v6);
  if (v7)
  {
    v4 = a1();
    v5 = 31;
    if ((v4 & 1) == 0)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = v6;
  }

  *a2 = v5;
}

void SleepHealthNotificationSettingsProvider._enabledSleepScoreNotificationLevels.getter(uint64_t a1@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v11[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v11 error:?];

  if (v5)
  {
    v6 = v11[0];
    v7 = [v5 integerValue];
  }

  else
  {
    v8 = v11[0];
    v9 = sub_269BF83E8();

    swift_willThrow();
    v7 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v5 == 0;
  v10 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall SleepHealthNotificationSettingsProvider.setEnabledSleepScoreNotificationLevels(_:)(SleepHealth::SleepScoreLevels_optional a1)
{
  v2 = *(v1 + 16);
  if (*(a1.value.rawValue + 8))
  {
    v3 = 0;
  }

  else
  {
    v7 = *a1.value.rawValue;
    v3 = sub_269BF8BA8();
  }

  v4 = sub_269BF87D8();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96DD8);
  sub_269BECB84(&unk_287A96DF8);
  v6 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void SleepHealthNotificationSettingsProvider.sleepScoreAlgorithmVersion.getter(unsigned __int8 *a1@<X8>)
{
  v2 = SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.getter();
  if (v3)
  {
    v4 = [objc_opt_self() sharedBehavior];
    if (!v4)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v5 = v4;
    v6 = [v4 features];

    if (v6)
    {
LABEL_11:
      v7 = [v6 sleepResultsNotificationsOnWatch];

      goto LABEL_12;
    }

    __break(1u);
  }

  if (v2 == 1)
  {
    v7 = 0;
    goto LABEL_12;
  }

  if (v2 == 2)
  {
    v7 = 1;
LABEL_12:
    *a1 = v7;
    return;
  }

  v8 = [objc_opt_self() sharedBehavior];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v6 = [v8 features];

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

id SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.getter()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_269BF87D8();
  v10[0] = 0;
  v3 = [v1 hk:v2 safeNumberIfExistsForKeyPath:v10 error:?];

  if (v3)
  {
    v4 = v10[0];
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = v10[0];
    v7 = sub_269BF83E8();

    swift_willThrow();
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.setter(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_269BF88F8();
  }

  v5 = sub_269BF87D8();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96E08);
  sub_269BECB84(&unk_287A96E28);
  v7 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void (*SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.getter();
  *(a1 + 8) = v3 & 1;
  return sub_269BEC238;
}

BOOL SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.getter()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_269BF87D8();
  v10[0] = 0;
  v3 = [v1 hk:v2 safeNumberIfExistsForKeyPath:v10 error:?];

  if (v3)
  {
    v4 = v10[0];
    v5 = [v3 integerValue];

    result = v5 > 0;
  }

  else
  {
    v7 = v10[0];
    v8 = sub_269BF83E8();

    swift_willThrow();
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.setter(char a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v3 = sub_269BF8BD8();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269BF87D8();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96E38);
  sub_269BECB84(&unk_287A96E58);
  v6 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void (*SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.getter();
  return sub_269BEC4BC;
}

Swift::Void __swiftcall SleepHealthNotificationSettingsProvider.resetAll()()
{
  v8 = 1;
  SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.setter(&v8);
  v1 = *(v0 + 16);
  v2 = sub_269BF87D8();
  [v1 setObject:0 forKey:v2];

  v3 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96E68);
  sub_269BECB84(&unk_287A96E88);
  v4 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();

  SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.setter(2u);
  v5 = sub_269BF87D8();
  [v1 setObject:0 forKey:v5];

  v6 = v3;
  sub_269BECA28(&unk_287A96E98);
  sub_269BECB84(&unk_287A96EB8);
  v7 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

uint64_t SleepHealthNotificationSettingsProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void (*sub_269BEC728(uint64_t a1))(uint64_t *a1)
{
  *a1 = *v1;
  *(a1 + 8) = SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.getter();
  return sub_269BEB29C;
}

void sub_269BEC774(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  SleepHealthNotificationSettingsProvider._enabledSleepScoreNotificationLevels.getter(&v8);
  if (v9)
  {
    v6 = a1();
    v7 = 31;
    if ((v6 & 1) == 0)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v8;
  }

  *a2 = v7;
}

unint64_t SleepHealthNotificationSettingsProvider.ObservableKey.keyPath.getter()
{
  if (*v0)
  {
    result = 0xD000000000000023;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t SleepHealthNotificationSettingsProvider.ObservableKey.hashValue.getter()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

uint64_t sub_269BECA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269BE1E78();
    v3 = sub_269BF8A58();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_269BF8C18();

      sub_269BF8818();
      result = sub_269BF8C58();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_269BF8BB8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_269BECBD8(uint64_t a1)
{
  sub_269BEB064();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269BECC34()
{
  result = qword_28034AAD0;
  if (!qword_28034AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AAD0);
  }

  return result;
}

unint64_t sub_269BECC8C()
{
  result = qword_28034AAD8;
  if (!qword_28034AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AAD8);
  }

  return result;
}

uint64_t keypath_get_8Tm@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t CurrentUserModel.__allocating_init()()
{
  v0 = swift_allocObject();
  CurrentUserModel.init()();
  return v0;
}

uint64_t CurrentUserModel.init()()
{
  v19[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  greenTeaDeviceCapability = MobileGestalt_get_greenTeaDeviceCapability();

  if (greenTeaDeviceCapability)
  {
    goto LABEL_6;
  }

  sub_269BECFC8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269BFA9B0;
  v5 = *MEMORY[0x277CBD000];
  v6 = *MEMORY[0x277CBD078];
  *(v4 + 32) = *MEMORY[0x277CBD000];
  *(v4 + 40) = v6;
  v7 = *(v0 + 16);
  sub_269BED01C();
  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = sub_269BF8888();

  v19[0] = 0;
  v12 = [v10 _ios_meContactWithKeysToFetch_error_];

  v13 = v19[0];
  if (!v12)
  {
    v15 = v19[0];
    v16 = sub_269BF83E8();

    swift_willThrow();
LABEL_6:
    *(v0 + 24) = 0;
    goto LABEL_7;
  }

  *(v0 + 24) = v12;
  v14 = v13;
LABEL_7:
  v17 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_269BECFC8()
{
  if (!qword_28034AAE0)
  {
    v0 = sub_269BF8B98();
    if (!v1)
    {
      atomic_store(v0, &qword_28034AAE0);
    }
  }
}

unint64_t sub_269BED01C()
{
  result = qword_28034AAE8;
  if (!qword_28034AAE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034AAE8);
  }

  return result;
}

uint64_t CurrentUserModel.firstName.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 nickname];
    sub_269BF87E8();

    v4 = sub_269BF8828();

    if (v4 >= 1)
    {
      v5 = [v2 nickname];
LABEL_6:
      v8 = v5;
      v9 = sub_269BF87E8();

      return v9;
    }

    v6 = [v2 givenName];
    sub_269BF87E8();

    v7 = sub_269BF8828();

    if (v7 >= 1)
    {
      v5 = [v2 givenName];
      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t CurrentUserModel.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t SleepScoreDaySummaryCollectionQueryProvider.makeQuery(morningIndexRange:gregorianCalendar:debugIdentifier:algorithmVersion:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v74 = a7;
  v76 = a6;
  v77 = a2;
  v82 = a3;
  v83 = a4;
  v80 = a1;
  sub_269BEE474(0, &qword_28034A570, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v61 - v11;
  sub_269BD86F0();
  v73 = v12;
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v61 - v16;
  v79 = sub_269BF8688();
  v69 = *(v79 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD8758();
  v81 = v19;
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v66 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - v23;
  Descriptor = type metadata accessor for SleepScoreDaySummaryQueryDescriptor();
  v26 = *(*(Descriptor - 8) + 64);
  MEMORY[0x28223BE20](Descriptor);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_269BF8508();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *a5;
  v33 = *(v30 + 16);
  v33(v32, a2, v29);
  v34 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v35 = swift_allocObject();
  v72 = v30;
  (*(v30 + 32))(v35 + v34, v32, v29);
  sub_269BEE344(v80, v24, sub_269BD8758);
  v33(v32, v77, v29);
  *&v28[*(Descriptor + 24)] = 13;
  v67 = v32;
  v65 = v30 + 16;
  v64 = v33;
  v33(v28, v32, v29);
  v77 = Descriptor;
  v36 = *(Descriptor + 20);
  v37 = v78;
  v38 = &v28[v36];
  v39 = v83;
  *v38 = v82;
  *(v38 + 1) = v39;

  sub_269BF8658();
  v40 = *(v81 + 36);
  sub_269BED980();
  v80 = v24;
  v41 = v79;
  result = sub_269BF86F8();
  if (result)
  {
    v63 = v35;
    v43 = v68;
    v44 = v69;
    v61 = v28;
    v62 = v29;
    v45 = *(v69 + 32);
    v45(v68, v37, v41);
    v46 = v71;
    v47 = v73;
    (*(v44 + 16))(v43 + *(v73 + 48), &v80[v40], v41);
    sub_269BEE344(v43, v46, sub_269BD86F0);
    v48 = *(v47 + 48);
    v49 = v66;
    v45(v66, v46, v41);
    v50 = *(v44 + 8);
    v50(v46 + v48, v41);
    sub_269BEE40C(v43, v46, sub_269BD86F0);
    v45(&v49[*(v81 + 36)], (v46 + *(v47 + 48)), v41);
    v50(v46, v41);
    MEMORY[0x26D64C180](v49);
    v51 = v77;
    v52 = *(v77 + 32);
    v53 = v61;
    sub_269BF85C8();
    v54 = sub_269BF85A8();

    sub_269BF8598();
    v54(v84, 0);
    v55 = v75;
    v56 = v67;
    v57 = v62;
    v64(v75, v67, v62);
    v58 = v72;
    (*(v72 + 56))(v55, 0, 1, v57);
    sub_269BF85B8();
    (*(v58 + 8))(v56, v57);
    sub_269BEE3AC(v80, sub_269BD8758);
    *(v53 + *(v51 + 28)) = v70;
    v59 = swift_allocObject();
    v59[2] = v76;
    v59[3] = v74;
    v59[4] = sub_269BEE240;
    v59[5] = v63;

    v60 = SleepScoreDaySummaryQueryDescriptor.makeQuery(completion:)(sub_269BEE2B0, v59);

    sub_269BEE3AC(v53, type metadata accessor for SleepScoreDaySummaryQueryDescriptor);
    return v60;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_269BED980()
{
  result = qword_28034A4C0;
  if (!qword_28034A4C0)
  {
    sub_269BF8688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A4C0);
  }

  return result;
}

uint64_t sub_269BED9D8(void *a1, uint64_t a2)
{
  v85 = a2;
  v92 = sub_269BF8508();
  v3 = *(v92 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v92);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD86F0();
  v84 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v83 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &v62 - v11;
  sub_269BD8758();
  v81 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v91 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for SleepScoreDaySummary();
  v15 = *(v86 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v86);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  v22 = type metadata accessor for SleepScoreDaySummaryCollection();
  v79 = *(v22 - 8);
  v80 = v22;
  v23 = *(v79 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v78 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v24);
  v28 = &v62 - v27;
  v29 = a1[2];
  if (v29)
  {
    v30 = 0;
    v31 = 0;
    v63 = *(v15 + 80);
    v64 = (v63 + 32) & ~v63;
    v77 = a1 + v64;
    v71 = (v3 + 16);
    v67 = (v3 + 32);
    v70 = -v29;
    v32 = 7;
    v94 = MEMORY[0x277D84F90];
    v76 = a1;
    v72 = v6;
    v69 = v15;
    v75 = v28;
    v68 = v29;
    v74 = v19;
    v73 = v21;
    while (1)
    {
      v35 = v29 >= v32 ? v32 : v29;
      v34 = v30 + 7;
      if (__OFADD__(v30, 7))
      {
        break;
      }

      if (v29 >= v34)
      {
        v36 = v30 + 7;
      }

      else
      {
        v36 = v29;
      }

      if (v36 < v30)
      {
        goto LABEL_33;
      }

      if (v30 != v36)
      {
        if (v30 >= v36)
        {
          goto LABEL_34;
        }

        v88 = v30 + 7;
        v89 = v32;
        v93 = v31;
        v37 = *(v15 + 72);
        v90 = v30;
        v38 = v77;
        v66 = v77 + v37 * v30;
        sub_269BEE344(v66, v21, type metadata accessor for SleepScoreDaySummary);
        v65 = v37;
        sub_269BEE344(v38 + v37 * (v36 - 1), v19, type metadata accessor for SleepScoreDaySummary);
        v39 = *(v86 + 20);
        v40 = sub_269BF8688();
        sub_269BED980();

        result = sub_269BF86F8();
        if ((result & 1) == 0)
        {
          goto LABEL_35;
        }

        v87 = v35 + v93;
        v41 = *(v40 - 8);
        v42 = v41[2];
        v43 = v82;
        v42(v82, &v21[v39], v40);
        v44 = v84;
        v42((v43 + *(v84 + 48)), &v19[v39], v40);
        v45 = v83;
        sub_269BEE344(v43, v83, sub_269BD86F0);
        v46 = *(v44 + 48);
        v47 = v41[4];
        v48 = v91;
        v47(v91, v45, v40);
        v49 = v41[1];
        v49(v45 + v46, v40);
        sub_269BEE40C(v43, v45, sub_269BD86F0);
        v47(v48 + *(v81 + 36), v45 + *(v44 + 48), v40);
        v50 = v87;
        v49(v45, v40);
        v51 = v72;
        (*v71)(v72, v85, v92);
        if (v70 + v50)
        {
          v21 = v73;
          v19 = v74;
          v52 = v75;
          if (v50 < 1)
          {
            v53 = MEMORY[0x277D84F90];
            v15 = v69;
          }

          else
          {
            sub_269BEE474(0, &qword_28034A478, type metadata accessor for SleepScoreDaySummary, MEMORY[0x277D84560]);
            v58 = v64;
            v59 = v65;
            v53 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v53);
            if (!v59)
            {
              goto LABEL_36;
            }

            v60 = result - v58;
            v61 = result - v58 == 0x8000000000000000;
            v15 = v69;
            if (v61 && v59 == -1)
            {
              goto LABEL_37;
            }

            v53[2] = v50;
            v53[3] = 2 * (v60 / v59);
          }

          swift_arrayInitWithCopy();
          sub_269BEE3AC(v19, type metadata accessor for SleepScoreDaySummary);
          sub_269BEE3AC(v21, type metadata accessor for SleepScoreDaySummary);
        }

        else
        {
          v19 = v74;
          sub_269BEE3AC(v74, type metadata accessor for SleepScoreDaySummary);
          v21 = v73;
          sub_269BEE3AC(v73, type metadata accessor for SleepScoreDaySummary);
          v52 = v75;
          v53 = v76;
          v15 = v69;
        }

        v54 = v78;
        sub_269BEE40C(v91, v78, sub_269BD8758);
        v55 = v80;
        (*v67)(v54 + *(v80 + 20), v51, v92);
        *(v54 + *(v55 + 24)) = v53;
        sub_269BEE40C(v54, v52, type metadata accessor for SleepScoreDaySummaryCollection);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_269BF269C(0, v94[2] + 1, 1, v94);
        }

        v57 = v94[2];
        v56 = v94[3];
        if (v57 >= v56 >> 1)
        {
          v94 = sub_269BF269C(v56 > 1, v57 + 1, 1, v94);
        }

        v33 = v94;
        v94[2] = v57 + 1;
        result = sub_269BEE40C(v52, v33 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v57, type metadata accessor for SleepScoreDaySummaryCollection);
        v29 = v68;
        v32 = v89;
        v30 = v90;
        v31 = v93;
        v34 = v88;
      }

      v32 += 7;
      v31 -= 7;
      v30 += 7;
      if (v34 >= v29)
      {
        return v94;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_269BEE240(void *a1)
{
  v3 = *(sub_269BF8508() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_269BED9D8(a1, v4);
}

uint64_t sub_269BEE2B0(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    v5 = *(v2 + 24);
    return v4(a1, 1);
  }

  else
  {
    v7 = *(v2 + 40);
    v8 = (*(v2 + 32))();
    v4(v8, 0);
  }
}

uint64_t sub_269BEE344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BEE3AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269BEE40C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269BEE474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t SleepScoreNoteBuilder.init(sleepScoreDaySummary:firstName:)@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v7 = sub_269BF8458();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v67 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_269BF82A8();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269BF1380(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v55[-v16];
  v18 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for SleepScoreDaySummary();
  v24 = a1 + *(v23 + 24);
  if (v24[48] == 1)
  {

    result = sub_269BEEEFC(a1, type metadata accessor for SleepScoreDaySummary);
LABEL_5:
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = xmmword_269BFAA40;
    *(a4 + 80) = 0;
    return result;
  }

  v26 = v23;
  v27 = *(v24 + 1);
  v63 = *v24;
  v64 = a3;
  v28 = *(v24 + 3);
  v61 = *(v24 + 2);
  v62 = v27;
  v60 = v28;
  v29 = *(v24 + 4);
  v58 = *(v24 + 5);
  v59 = v29;
  v30 = a1 + *(v23 + 20);
  v31 = *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 36);
  v57 = v30;
  sub_269BD31C8(&v30[v31], v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    sub_269BEEEFC(a1, type metadata accessor for SleepScoreDaySummary);
    result = sub_269BE9360(v17);
    goto LABEL_5;
  }

  sub_269BD322C(v17, v22);
  v32 = COERCE_DOUBLE(SleepScoreDaySummary.sleepStartTimeSinceUsualSleepStartTime.getter());
  if (v33)
  {
    v56 = 2;
  }

  else
  {
    v56 = v32 > 0.0;
  }

  v34 = *(v18 + 28);
  v35 = *a1;
  v36 = [*a1 dateInterval];
  sub_269BF8278();

  v37 = v67;
  sub_269BF8288();
  (*(v65 + 8))(v13, v66);
  sub_269BF8418();
  v39 = v38;
  (*(v68 + 8))(v37, v69);
  v40 = sub_269BF8678();
  LOBYTE(v35) = [v35 containsPeriodsWithAppleSleepTrackingData];
  sub_269BEEEFC(v22, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v41 = *(a1 + *(v26 + 28));
  sub_269BEEEFC(a1, type metadata accessor for SleepScoreDaySummary);
  v43 = v62;
  v42 = v63;
  *&v72 = v63;
  *(&v72 + 1) = v62;
  v45 = v60;
  v44 = v61;
  *&v73 = v61;
  *(&v73 + 1) = v60;
  v47 = v58;
  v46 = v59;
  *&v74 = v59;
  *(&v74 + 1) = v58;
  v48 = v56;
  LOBYTE(v75) = v56;
  BYTE1(v75) = v39 >= 36000.0;
  *(&v75 + 2) = v88;
  WORD3(v75) = v89;
  v49 = v70;
  v50 = v64;
  *(&v75 + 1) = v70;
  *&v76 = v64;
  *(&v76 + 1) = v40;
  LOBYTE(v77) = v35;
  HIBYTE(v77) = v41;
  v51 = v73;
  *a4 = v72;
  *(a4 + 16) = v51;
  v52 = v74;
  v53 = v75;
  v54 = v76;
  *(a4 + 80) = v77;
  *(a4 + 48) = v53;
  *(a4 + 64) = v54;
  *(a4 + 32) = v52;
  v78[0] = v42;
  v78[1] = v43;
  v78[2] = v44;
  v78[3] = v45;
  v78[4] = v46;
  v78[5] = v47;
  v79 = v48;
  v80 = v39 >= 36000.0;
  v82 = v89;
  v81 = v88;
  v83 = v49;
  v84 = v50;
  v85 = v40;
  v86 = v35;
  v87 = v41;
  sub_269BEEF5C(&v72, &v71);
  return sub_269BEEF94(v78);
}

uint64_t SleepScoreNoteBuilder.localizedIntroductionBodyParagraphs.getter()
{
  v1 = sub_269BF84C8();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  LOBYTE(v3) = *(v0 + 48);
  v11 = *(v0 + 49);
  *v34 = *(v0 + 50);
  *&v34[14] = *(v0 + 4);
  v12 = *(v0 + 80);
  v13 = *(v0 + 81);
  v26 = v5;
  v27 = v6;
  v28 = v8;
  v29 = v7;
  v30 = v9;
  v31 = v10;
  v32 = v3;
  v33 = v11;
  v35 = v12;
  v36 = v13;
  result = sub_269BEF9BC();
  v15 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = __OFADD__(v15, v8);
  v17 = v15 + v8;
  if (v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = __OFADD__(v17, v7);
  v18 = v17 + v7;
  if (v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 >= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v10;
  }

  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = result;
    sub_269BF8488();
    v22 = sub_269BDCFEC(v20, v12 & 1, v4, v21, 1, v11 & 1);
    (*(v24 + 8))(v4, v25);
    return v22;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SleepScoreNoteBuilder.localizedDescription.getter()
{
  v1 = sub_269BF87B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269BF8798();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_269BF84C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v0;
  v15 = v0[1];
  v16 = *v0 + v15;
  if (__OFADD__(*v0, v15))
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v0[2];
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v0[3];
  v18 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (v18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v22 = v0[4];
  v23 = v0[5];
  if (v23 >= v22)
  {
    v24 = v0[4];
  }

  else
  {
    v24 = v0[5];
  }

  v25 = v21 + v24;
  if (__OFADD__(v21, v24))
  {
    goto LABEL_18;
  }

  v37[0] = v1;
  v26 = *(v0 + 49);
  v28 = v0[7];
  v27 = v0[8];
  if (v25 > 99)
  {
    v36 = (v2 + 8);
    if (v27)
    {
      sub_269BF8788();
      sub_269BF8778();
      sub_269BF8768();
      sub_269BF8778();
      sub_269BF87A8();
    }

    else
    {
      sub_269BF8738();
    }

    v35 = sub_269BDF7A8(v5);
    (*v36)(v5, v37[0]);
  }

  else
  {
    v29 = *(v0 + 48);
    v37[1] = v14;
    v37[2] = v15;
    v37[3] = v17;
    v37[4] = v20;
    v37[5] = v22;
    v37[6] = v23;
    v38 = v29;
    v39 = v26;
    v40 = *(v0 + 50);
    v41 = *(v0 + 27);
    v42 = v28;
    v43 = v27;
    v44 = v0[9];
    v45 = *(v0 + 40);
    v30 = sub_269BEFB54();
    v32 = v31;
    v34 = v33;
    sub_269BF8488();
    v35 = sub_269BDB4F8(v25, v28, v27, v13, v30, v32, v34 & 0xFF01FF);
    (*(v9 + 8))(v13, v8);
  }

  return v35;
}

uint64_t sub_269BEEEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 SleepScoreNoteBuilder.score.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 SleepScoreNoteBuilder.score.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t SleepScoreNoteBuilder.firstName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t SleepScoreNoteBuilder.firstName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_269BEF1D4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *v1 + v3;
  if (__OFADD__(*v1, v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v1 + 16);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 24);
  v6 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = *(v1 + 32);
  if (*(v1 + 40) < v10)
  {
    v10 = *(v1 + 40);
  }

  v11 = v9 + v10;
  if (!__OFADD__(v9, v10))
  {
    *(v1 + 81);
    swift_getKeyPath();
    result = sub_269BF180C(v11, &v13);
    *a1 = v13;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_269BEF304(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v9 = *v4++;
      v8 = v9;
      if ((v9 - 1) > 1 || *(v2 + 48) != 2)
      {
        v14[0] = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_269BF2B68(0, *(v5 + 16) + 1, 1);
          v5 = v14[0];
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_269BF2B68((v6 > 1), v7 + 1, 1);
          v5 = v14[0];
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + v7 + 32) = v8;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v15 = v5;
  sub_269BEEF5C(v2, v14);
  sub_269BEEF5C(v2, v14);

  sub_269BF1288(&v15, v2);
  sub_269BEEF94(v2);

  sub_269BEEF94(v2);
  v10 = v15;
  if (!*(v15 + 2))
  {
    __break(1u);
LABEL_20:
    v10 = sub_269BF3114(v10);
    v11 = *(v10 + 2);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

  v11 = *(v10 + 2);
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_15:
  v12 = v10[v11 + 31];
  *(v10 + 2) = v11 - 1;
  if ((v12 - 3) > 1)
  {
LABEL_18:

    return v12;
  }

  if (v11 != 1)
  {
    v12 = v10[v11 + 30];
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  sub_269BEEF94(v10);

  __break(1u);
  return result;
}

uint64_t sub_269BEF4D4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(v3[6] + (v12 | (v9 << 6)));
    if ((v13 - 1) > 1 || v2[48] != 2)
    {
      v22[0] = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_269BF2B68(0, *(v10 + 16) + 1, 1);
        v10 = v22[0];
      }

      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v20 = *(v10 + 16);
        v21 = v14 + 1;
        sub_269BF2B68((v15 > 1), v14 + 1, 1);
        v14 = v20;
        v16 = v21;
        v10 = v22[0];
      }

      *(v10 + 16) = v16;
      *(v10 + v14 + 32) = v13;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  v23 = v10;
  sub_269BEEF5C(v2, v22);
  sub_269BEEF5C(v2, v22);

  v3 = 0;
  sub_269BF1288(&v23, v2);
  sub_269BEEF94(v2);

  sub_269BEEF94(v2);
  v2 = v23;
  if (!*(v23 + 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    v2 = sub_269BF3114(v2);
    v17 = *(v2 + 2);
    if (!v17)
    {
      goto LABEL_26;
    }

LABEL_19:
    v18 = v2[v17 + 31];
    *(v2 + 2) = v17 - 1;
    if ((v18 - 3) <= 1)
    {
      if (v17 == 1)
      {
        goto LABEL_27;
      }

      v18 = v2[v17 + 30];
    }

    return v18;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(v2 + 2);
  if (v17)
  {
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  sub_269BEEF94(v2);

  __break(1u);
  return result;
}

BOOL sub_269BEF710(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = *v2;
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = 30.0;
  v8 = 20.0;
  if (a1 == 3)
  {
    v9 = v2[4];
  }

  else
  {
    v9 = v2[5];
  }

  v10 = 40.0;
  if (a1 - 1 >= 2)
  {
    v11 = *v2;
  }

  else
  {
    v11 = v2[3];
  }

  if (a1 - 1 < 2)
  {
    v10 = 30.0;
  }

  if (a1 <= 2u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (a1 > 2u)
  {
    v10 = 20.0;
  }

  if (a2 != 3)
  {
    v5 = v2[5];
  }

  if (a2 - 1 >= 2)
  {
    v7 = 40.0;
  }

  else
  {
    v3 = v2[3];
  }

  if (a2 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v3 = v5;
  }

  v13 = v12 / v10;
  v14 = v3 / v8;
  if (v13 == v14)
  {
    return a1 < a2;
  }

  else
  {
    return v13 < v14;
  }
}

uint64_t sub_269BEF7B0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84F90];
    v6 = (a1 + 32);
    while (1)
    {
      v10 = *v6++;
      v9 = v10;
      if (v10 > 2 || v9 == 0)
      {
        break;
      }

      if (v9 == 1)
      {
        v12 = *(v2 + 48);
        if (v12 != 2 && (v12 & 1) == 0)
        {
          break;
        }
      }

      else if (*(v2 + 48))
      {
        break;
      }

LABEL_6:
      if (!--v3)
      {
        v14 = *(v5 + 16);
        if (!v14)
        {

          return *v4;
        }

LABEL_26:
        v15 = *(v5 + 32);
        v16 = v14 - 1;
        if (v16)
        {
          v17 = (v5 + 33);
          do
          {
            v19 = *v17++;
            v18 = v19;
            v20 = *v2;
            v21 = *(v2 + 24);
            v22 = *(v2 + 32);
            v23 = *(v2 + 40);
            if (v19 == 3)
            {
              v24 = *(v2 + 32);
            }

            else
            {
              v24 = *(v2 + 40);
            }

            v25 = 40.0;
            if ((v18 - 1) >= 2)
            {
              v26 = *v2;
            }

            else
            {
              v26 = *(v2 + 24);
            }

            if ((v18 - 1) < 2)
            {
              v25 = 30.0;
            }

            if (v18 > 2)
            {
              v25 = 20.0;
            }

            else
            {
              v24 = v26;
            }

            v27 = v24 / v25;
            if (v15 != 3)
            {
              v22 = *(v2 + 40);
            }

            v28 = 40.0;
            if (v15 - 1 < 2)
            {
              v20 = *(v2 + 24);
              v28 = 30.0;
            }

            if (v15 > 2u)
            {
              v20 = v22;
              v28 = 20.0;
            }

            v29 = v20 / v28;
            v30 = v18 < v15;
            if (v27 != v29)
            {
              v30 = v27 < v29;
            }

            if (v30)
            {
              v15 = v18;
            }

            else
            {
              v15 = v15;
            }

            --v16;
          }

          while (v16);
        }

        return v15;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_269BF2B68(0, *(v5 + 16) + 1, 1);
    }

    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_269BF2B68((v7 > 1), v8 + 1, 1);
    }

    *(v5 + 16) = v8 + 1;
    *(v5 + v8 + 32) = v9;
    goto LABEL_6;
  }

  v5 = MEMORY[0x277D84F90];
  v14 = *(MEMORY[0x277D84F90] + 16);
  if (v14)
  {
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_269BEF9BC()
{
  v1 = v0[3];
  v2 = v0[1];
  v20 = v0[2];
  v21 = v1;
  v3 = v0[3];
  v22 = v0[4];
  v4 = v0[1];
  v18 = *v0;
  v19 = v4;
  v14 = v20;
  v15 = v3;
  v16 = v0[4];
  v23 = *(v0 + 40);
  v17 = *(v0 + 40);
  v12 = v18;
  v13 = v2;
  sub_269BEF1D4(&v11);
  if (v11 <= 1u)
  {
    if (v11)
    {
      return 49152;
    }

    else
    {
      return 49153;
    }
  }

  else if (v11 == 2)
  {
    return sub_269BEF7B0(&unk_287A96D18) | 0xFFFF8000;
  }

  else if (v11 == 3)
  {
    v5 = sub_269BE6150(&unk_287A96C68);
    sub_269BF07B0(0, &qword_28034AB88, &qword_28034AA60);
    swift_arrayDestroy();
    result = sub_269BEF4D4(v5);
    if (v5[2])
    {
      v7 = result;
      result = sub_269BE5BD4(result);
      if (v8)
      {
        v9 = *(v5[7] + 8 * result);

        v10 = sub_269BEF7B0(v9);

        return v7 | (v10 << 8) | 0x4000u;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    return sub_269BEF304(&unk_287A96D40);
  }

  return result;
}

uint64_t sub_269BEFB54()
{
  v29 = *v0;
  v30 = v0[1];
  v31 = v0[2];
  v32 = *(v0 + 48);
  *&v33 = *(v0 + 50);
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v28 = *(v0 + 49);
  *(&v33 + 6) = *(v0 + 7);
  v34 = *(v0 + 40);
  v3 = sub_269BEF9BC();
  v4 = sub_269BE604C(&unk_287A96A78);
  sub_269BF07B0(0, &qword_28034AB80, &qword_28034AA48);
  swift_arrayDestroy();
  if (v4[2] && (v5 = sub_269BE5AE8(v3), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = *(v7 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v3;
  v10 = (v7 + 42);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v15 = *(v10 - 1);
    if (v15 != 1 || v1 != 0)
    {
      v17 = *(v10 - 10);
      v18 = *(v10 - 2);
      v19 = *v10;
      if (*(v10 - 2))
      {
        if (v18 == 1 && (v28 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v28)
      {
        goto LABEL_10;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_269BF2B88(0, *(v11 + 16) + 1, 1);
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_269BF2B88((v12 > 1), v13 + 1, 1);
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11 + 16 * v13;
      *(v14 + 32) = v17;
      *(v14 + 40) = v18;
      *(v14 + 41) = v15;
      *(v14 + 42) = v19;
    }

LABEL_10:
    v10 += 16;
    --v9;
  }

  while (v9);

  v20 = *(v11 + 16);
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v2 % v20;
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = v11 + 16 * v21;
    v23 = *(v22 + 32);
    v24 = *(v22 + 40);
    v25 = *(v22 + 41);
    v26 = *(v22 + 42);

    return v27;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_269BEFDB4()
{
  result = qword_28034AB50;
  if (!qword_28034AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AB50);
  }

  return result;
}

unint64_t sub_269BEFE3C()
{
  result = qword_28034AB68;
  if (!qword_28034AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AB68);
  }

  return result;
}

uint64_t sub_269BEFEC0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_269BF0820(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_269BEFF34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 82))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269BEFF90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_269BF002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *(a5 + 48);
  *(v10 + 48) = *(a5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a5 + 64);
  *(v10 + 96) = *(a5 + 80);
  v12 = *(a5 + 16);
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  if (a3 == a2)
  {
    sub_269BEEF5C(a5, v29);
LABEL_3:

    return sub_269BEEF94(a5);
  }

  else
  {
    v14 = *a4;
    sub_269BEEF5C(a5, v29);
    v15 = *(a5 + 40) / 20.0;
    v16 = *(a5 + 32) / 20.0;
    v17 = *(a5 + 24) / 30.0;
    v18 = (v14 + a3);
    v19 = a1 - a3;
    v20 = *a5 / 40.0;
LABEL_6:
    v21 = *(v14 + a3);
    v22 = v19;
    v23 = v18;
    while (1)
    {
      if (v21 > 2)
      {
        v24 = v16;
        if (v21 != 3)
        {
          v24 = v15;
        }
      }

      else
      {
        v24 = v20;
        if ((v21 - 1) < 2)
        {
          v24 = v17;
        }
      }

      v25 = *(v23 - 1);
      if (v25 > 2)
      {
        v26 = v16;
        if (v25 != 3)
        {
          v26 = v15;
        }
      }

      else
      {
        v26 = v20;
        if (v25 - 1 < 2)
        {
          v26 = v17;
        }
      }

      v27 = v21 < v25;
      if (v24 != v26)
      {
        v27 = v24 < v26;
      }

      if (!v27)
      {
LABEL_5:
        ++a3;
        ++v18;
        --v19;
        if (a3 == a2)
        {
          goto LABEL_3;
        }

        goto LABEL_6;
      }

      if (!v14)
      {
        break;
      }

      *v23 = v25;
      *--v23 = v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    result = sub_269BEEF94(a5);
    __break(1u);
  }

  return result;
}

uint64_t sub_269BF01F8(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *(a5 + 48);
  *(v10 + 48) = *(a5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a5 + 64);
  *(v10 + 96) = *(a5 + 80);
  v12 = *(a5 + 16);
  v13 = a2 - a1;
  v14 = a3 - a2;
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  if (a2 - a1 >= a3 - a2)
  {
    if (a4 >= a2 && a4 < a3 && a4 == a2)
    {
      sub_269BEEF5C(a5, v44);
    }

    else
    {
      sub_269BEEF5C(a5, v44);
      memmove(a4, a2, a3 - a2);
    }

    v15 = &a4[v14];
    if (v14 >= 1 && a2 > a1)
    {
      do
      {
        v27 = a2 - 1;
        --a3;
        v28 = v15;
        while (1)
        {
          v15 = v28;
          v30 = *--v28;
          v29 = v30;
          v31 = *v27;
          v32 = *a5;
          v33 = *(a5 + 24);
          v34 = *(a5 + 32);
          v35 = *(a5 + 40);
          if (v30 == 3)
          {
            v36 = *(a5 + 32);
          }

          else
          {
            v36 = *(a5 + 40);
          }

          if ((v29 - 1) >= 2)
          {
            v37 = *a5;
          }

          else
          {
            v37 = *(a5 + 24);
          }

          if ((v29 - 1) >= 2)
          {
            v38 = 40.0;
          }

          else
          {
            v38 = 30.0;
          }

          if (v29 > 2)
          {
            v38 = 20.0;
          }

          else
          {
            v36 = v37;
          }

          v39 = v36 / v38;
          if (v31 != 3)
          {
            v34 = *(a5 + 40);
          }

          if (v31 - 1 >= 2)
          {
            v40 = 40.0;
          }

          else
          {
            v32 = *(a5 + 24);
            v40 = 30.0;
          }

          if (*v27 > 2u)
          {
            v32 = v34;
            v40 = 20.0;
          }

          v41 = v32 / v40;
          v42 = v29 < v31;
          if (v39 != v41)
          {
            v42 = v39 < v41;
          }

          if (v42)
          {
            break;
          }

          if ((a3 + 1) < v15 || a3 >= v15)
          {
            *a3 = v29;
          }

          --a3;
          if (v28 <= a4)
          {
            v15 = v28;
            goto LABEL_76;
          }
        }

        if (a3 + 1 < a2 || a3 >= a2)
        {
          *a3 = v31;
        }

        if (v15 <= a4)
        {
          break;
        }

        --a2;
      }

      while (v27 > a1);
      a2 = v27;
      if (v27 == a4)
      {
        goto LABEL_77;
      }

      goto LABEL_78;
    }

LABEL_76:
    if (a2 != a4)
    {
LABEL_78:
      memmove(a2, a4, v15 - a4);
      goto LABEL_79;
    }
  }

  else
  {
    if (a4 >= a1 && a4 < a2 && a4 == a1)
    {
      sub_269BEEF5C(a5, v44);
    }

    else
    {
      sub_269BEEF5C(a5, v44);
      memmove(a4, a1, a2 - a1);
    }

    v15 = &a4[v13];
    if (v13 >= 1 && a2 < a3)
    {
      v16 = *(a5 + 40) / 20.0;
      v17 = *(a5 + 32) / 20.0;
      v18 = *(a5 + 24) / 30.0;
      v19 = *a5 / 40.0;
      while (1)
      {
        v20 = *a2;
        if (v20 > 2)
        {
          v21 = v17;
          if (v20 != 3)
          {
            v21 = v16;
          }
        }

        else
        {
          v21 = v19;
          if (v20 - 1 < 2)
          {
            v21 = v18;
          }
        }

        v22 = *a4;
        if (v22 > 2)
        {
          v23 = v17;
          if (v22 != 3)
          {
            v23 = v16;
          }
        }

        else
        {
          v23 = v19;
          if (v22 - 1 < 2)
          {
            v23 = v18;
          }
        }

        v24 = v20 < v22;
        if (v21 != v23)
        {
          v24 = v21 < v23;
        }

        if (v24)
        {
          v25 = a2 + 1;
          if (a1 >= a2 && a1 < v25)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v26 = a4 + 1;
          LOBYTE(v20) = *a4;
          v25 = a2;
          if (a1 < a4)
          {
            ++a4;
          }

          else
          {
            ++a4;
            if (a1 < v26)
            {
              goto LABEL_30;
            }
          }
        }

        *a1 = v20;
LABEL_30:
        ++a1;
        if (a4 < v15)
        {
          a2 = v25;
          if (v25 < a3)
          {
            continue;
          }
        }

        break;
      }
    }

    a2 = a1;
    if (a1 != a4)
    {
      goto LABEL_78;
    }
  }

LABEL_77:
  if (a2 >= v15)
  {
    goto LABEL_78;
  }

LABEL_79:

  sub_269BEEF94(a5);
  return 1;
}

uint64_t sub_269BF05C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_269BF064C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_269BF0660(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF1380(0, &qword_28034AB90, sub_269BF13E4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_269BF07B0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_269BF0820(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269BF0820(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269BF88B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_269BF086C(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v10 = *(a5 + 48);
  *(v9 + 48) = *(a5 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(a5 + 64);
  *(v9 + 96) = *(a5 + 80);
  v11 = *(a5 + 16);
  *(v9 + 16) = *a5;
  *(v9 + 32) = v11;
  v123 = a5;
  v124 = a3;
  v12 = a3[1];
  if (v12 < 1)
  {
    sub_269BEEF5C(a5, v125);
    sub_269BEEF5C(a5, v125);
    sub_269BEEF5C(a5, v125);
    v14 = MEMORY[0x277D84F90];
LABEL_120:
    v122 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    v108 = swift_allocObject();
    v109 = *(v123 + 48);
    *(v108 + 48) = *(v123 + 32);
    *(v108 + 64) = v109;
    *(v108 + 80) = *(v123 + 64);
    *(v108 + 96) = *(v123 + 80);
    v110 = *(v123 + 16);
    *(v108 + 16) = *v123;
    *(v108 + 32) = v110;
    sub_269BEEF5C(v123, v125);
    sub_269BEEF5C(v123, v125);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_153:
      v14 = sub_269BF064C(v14);
    }

    v127 = v14;
    v111 = *(v14 + 2);
    if (v111 >= 2)
    {
      do
      {
        v112 = *v124;
        if (!*v124)
        {
          goto LABEL_157;
        }

        v113 = *&v14[16 * v111];
        v114 = &v14[16 * v111 - 16];
        v115 = *(v114 + 4);
        v116 = *(v114 + 5);
        sub_269BEEF5C(v123, v125);
        sub_269BF01F8((v112 + v113), (v112 + v115), (v112 + v116), v122, v123);
        if (v5)
        {
          break;
        }

        if (v116 < v113)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_269BF064C(v14);
        }

        if (v111 - 2 >= *(v14 + 2))
        {
          goto LABEL_147;
        }

        v117 = &v14[16 * v111];
        *v117 = v113;
        *(v117 + 1) = v116;
        v127 = v14;
        sub_269BF05C0(v111 - 1);
        v14 = v127;
        v111 = *(v127 + 2);
      }

      while (v111 > 1);
    }

    v107 = v123;
    sub_269BEEF94(v123);
LABEL_131:

    sub_269BEEF94(v107);
    return sub_269BEEF94(v107);
  }

  sub_269BEEF5C(a5, v125);
  sub_269BEEF5C(a5, v125);
  sub_269BEEF5C(a5, v125);
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v119 = a4;
  while (1)
  {
    v15 = v13 + 1;
    if (v13 + 1 < v12)
    {
      v16 = *v124;
      v17 = *(*v124 + v13);
      v18 = *(*v124 + v15);
      v19 = v123;
      v20 = *(v123 + 48);
      v125[2] = *(v123 + 32);
      v125[3] = v20;
      v125[4] = *(v123 + 64);
      v126 = *(v123 + 80);
      v21 = *(v123 + 16);
      v125[0] = *v123;
      v125[1] = v21;
      v22 = sub_269BEF710(v18, v17);
      v23 = v13;
      while (v12 - 2 != v23)
      {
        v24 = *(v16 + v23 + 2);
        v25 = *(v16 + v23 + 1);
        v26 = *v123;
        v27 = *(v123 + 24);
        v28 = *(v123 + 32);
        v29 = *(v123 + 40);
        if (v24 == 3)
        {
          v30 = *(v123 + 32);
        }

        else
        {
          v30 = *(v123 + 40);
        }

        v31 = 40.0;
        if (v24 - 1 >= 2)
        {
          v32 = *v123;
        }

        else
        {
          v32 = *(v123 + 24);
        }

        if (v24 - 1 < 2)
        {
          v31 = 30.0;
        }

        if (*(v16 + v23 + 2) > 2u)
        {
          v31 = 20.0;
        }

        else
        {
          v30 = v32;
        }

        v33 = v30 / v31;
        if (v25 != 3)
        {
          v28 = *(v123 + 40);
        }

        v34 = 40.0;
        if (v25 - 1 < 2)
        {
          v26 = *(v123 + 24);
          v34 = 30.0;
        }

        if (*(v16 + v23 + 1) > 2u)
        {
          v26 = v28;
          v34 = 20.0;
        }

        v35 = v26 / v34;
        v36 = v24 >= v25;
        if (v33 != v35)
        {
          v36 = v33 >= v35;
        }

        ++v23;
        if (v22 == v36)
        {
          v12 = v23 + 1;
          break;
        }
      }

      if (v22)
      {
        if (v12 < v13)
        {
          goto LABEL_150;
        }

        if (v13 < v12)
        {
          v37 = v12 - 1;
          v38 = v13;
          do
          {
            if (v38 != v37)
            {
              v41 = *v124;
              if (!*v124)
              {
                goto LABEL_156;
              }

              v39 = *(v41 + v38);
              *(v41 + v38) = *(v41 + v37);
              *(v41 + v37) = v39;
            }
          }

          while (++v38 < v37--);
        }
      }

      v15 = v12;
    }

    v42 = v124[1];
    if (v15 < v42)
    {
      if (__OFSUB__(v15, v13))
      {
        goto LABEL_149;
      }

      if (v15 - v13 < a4)
      {
        if (__OFADD__(v13, a4))
        {
          goto LABEL_151;
        }

        if (v13 + a4 < v42)
        {
          v42 = v13 + a4;
        }

        if (v42 < v13)
        {
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (v15 != v42)
        {
          break;
        }
      }
    }

LABEL_68:
    if (v15 < v13)
    {
      goto LABEL_148;
    }

    v121 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_269BF2314(0, *(v14 + 2) + 1, 1, v14);
    }

    v59 = *(v14 + 2);
    v58 = *(v14 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v14 = sub_269BF2314((v58 > 1), v59 + 1, 1, v14);
    }

    *(v14 + 2) = v60;
    v61 = &v14[16 * v59];
    *(v61 + 4) = v13;
    *(v61 + 5) = v15;
    v122 = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    if (v59)
    {
      while (1)
      {
        v62 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v63 = *(v14 + 4);
          v64 = *(v14 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_88:
          if (v66)
          {
            goto LABEL_137;
          }

          v79 = &v14[16 * v60];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_140;
          }

          v85 = &v14[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_143;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_144;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v60 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v89 = &v14[16 * v60];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_102:
        if (v84)
        {
          goto LABEL_139;
        }

        v92 = &v14[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_142;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_109:
        v100 = v62 - 1;
        if (v62 - 1 >= v60)
        {
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v101 = *v124;
        if (!*v124)
        {
          goto LABEL_155;
        }

        v102 = *&v14[16 * v100 + 32];
        v103 = &v14[16 * v62 + 32];
        v104 = *v103;
        v105 = *(v103 + 1);
        sub_269BEEF5C(v123, v125);
        sub_269BF01F8((v101 + v102), (v101 + v104), (v101 + v105), v122, v123);
        if (v5)
        {
          v107 = v123;
          goto LABEL_131;
        }

        if (v105 < v102)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_269BF064C(v14);
        }

        if (v100 >= *(v14 + 2))
        {
          goto LABEL_134;
        }

        v106 = &v14[16 * v100];
        *(v106 + 4) = v102;
        *(v106 + 5) = v105;
        v127 = v14;
        sub_269BF05C0(v62);
        v14 = v127;
        v60 = *(v127 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v14[16 * v60 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_135;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_136;
      }

      v74 = &v14[16 * v60];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_138;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_141;
      }

      if (v78 >= v70)
      {
        v96 = &v14[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_145;
        }

        if (v65 < v99)
        {
          v62 = v60 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v12 = v124[1];
    v13 = v121;
    a4 = v119;
    if (v121 >= v12)
    {
      goto LABEL_120;
    }
  }

  v43 = *v124;
  v44 = *(v123 + 40) / 20.0;
  v45 = *(v123 + 32) / 20.0;
  v46 = *(v123 + 24) / 30.0;
  v47 = (*v124 + v15);
  v48 = v13 - v15;
  v49 = *v123 / 40.0;
LABEL_49:
  v50 = *(v43 + v15);
  v51 = v48;
  v52 = v47;
  while (1)
  {
    if (v50 > 2)
    {
      v53 = v45;
      if (v50 != 3)
      {
        v53 = v44;
      }
    }

    else
    {
      v53 = v49;
      if ((v50 - 1) < 2)
      {
        v53 = v46;
      }
    }

    v54 = *(v52 - 1);
    if (v54 > 2)
    {
      v55 = v45;
      if (v54 != 3)
      {
        v55 = v44;
      }
    }

    else
    {
      v55 = v49;
      if (v54 - 1 < 2)
      {
        v55 = v46;
      }
    }

    v56 = v50 < v54;
    if (v53 != v55)
    {
      v56 = v53 < v55;
    }

    if (!v56)
    {
LABEL_48:
      ++v15;
      ++v47;
      --v48;
      if (v15 != v42)
      {
        goto LABEL_49;
      }

      v15 = v42;
      goto LABEL_68;
    }

    if (!v43)
    {
      break;
    }

    *v52 = v54;
    *--v52 = v50;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_48;
    }
  }

  sub_269BEEF94(v123);
  sub_269BEEF94(v123);
  sub_269BEEF94(v123);
  __break(1u);
LABEL_155:
  v19 = v123;
  sub_269BEEF94(v123);
  sub_269BEEF94(v123);
  sub_269BEEF94(v123);
  __break(1u);
LABEL_156:
  sub_269BEEF94(v19);
  sub_269BEEF94(v19);
  sub_269BEEF94(v19);
  __break(1u);
LABEL_157:
  sub_269BEEF94(v123);
  __break(1u);
LABEL_158:
  sub_269BEEF94(v123);
  sub_269BEEF94(v123);
  sub_269BEEF94(v123);
  __break(1u);
LABEL_159:
  sub_269BEEF94(v123);
  sub_269BEEF94(v123);
  result = sub_269BEEF94(v123);
  __break(1u);
  return result;
}

uint64_t sub_269BF10F8(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = *(a2 + 80);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = a1[1];
  sub_269BEEF5C(a2, v13);
  sub_269BEEF5C(a2, v13);
  result = sub_269BF8B78();
  if (result >= v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7)
      {
        sub_269BEEF5C(a2, v13);
        sub_269BF002C(0, v7, 1, a1, a2);
      }

      return sub_269BEEF94(a2);
    }
  }

  else
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v11 = sub_269BF88A8();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;
      sub_269BEEF5C(a2, v13);
      sub_269BF086C(v12, v13, a1, v9, a2);
      sub_269BEEF94(a2);
      *(v11 + 16) = 0;

      return sub_269BEEF94(a2);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_269BF1288(char **a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = *(a2 + 80);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *a1;
  sub_269BEEF5C(a2, v11);
  sub_269BEEF5C(a2, v11);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_269BF079C(v7);
  }

  v8 = *(v7 + 2);
  v10[0] = (v7 + 32);
  v10[1] = v8;
  sub_269BEEF5C(a2, v11);
  sub_269BF10F8(v10, a2);
  sub_269BEEF94(a2);
  *a1 = v7;

  return sub_269BEEF94(a2);
}

void sub_269BF1380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_269BF13E4()
{
  if (!qword_28034AB98)
  {
    v0 = sub_269BF8938();
    if (!v1)
    {
      atomic_store(v0, &qword_28034AB98);
    }
  }
}

uint64_t sub_269BF1458()
{
  v0 = sub_269BF8588();
  __swift_allocate_value_buffer(v0, qword_28034CE20);
  __swift_project_value_buffer(v0, qword_28034CE20);
  return sub_269BF8578();
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

SleepHealth::SleepScoreLevel_optional __swiftcall SleepScoreLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_269BF15EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_269BF314C(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269BF16A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = v2 - 1;
  v7 = 2 * v2;
  v8 = 2 * (v2 >> 1);
  v18 = v8;
  while (1)
  {
    if (v5 == v6)
    {
      goto LABEL_5;
    }

    v11 = *(v1 + 16);
    if (v5 >= v11)
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_12;
    }

    v12 = *(v1 + v3 + 32);
    v13 = *(v1 + v3 + 33);
    v14 = v7;
    v15 = v1 + v7 + v4;
    v16 = *(v15 + 30);
    v17 = *(v15 + 31);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_269BF3184(v1);
      v1 = result;
    }

    v9 = v1 + v3;
    *(v9 + 32) = v16;
    *(v9 + 33) = v17;
    v7 = v14;
    v10 = v1 + v14 + v4;
    *(v10 + 30) = v12;
    *(v10 + 31) = v13;
    v8 = v18;
LABEL_5:
    --v6;
    v4 -= 2;
    v3 += 2;
    ++v5;
    if (!(v8 + v4))
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269BF180C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 > 0x64)
  {
    __break(1u);
  }

  else
  {
    swift_getAtKeyPath();
    if (v5 >= a1)
    {

      *a2 = 0;
      return result;
    }

    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
  }

  result = sub_269BF8AC8();
  __break(1u);
  return result;
}

uint64_t SleepScoreLevelRange.chartingDisplayRange.getter()
{
  v1 = v0[1];
  *v0;
  *v0;
  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 + 1 >= 100)
    {
      v3 = 100;
    }

    else
    {
      v3 = v4 + 1;
    }

    if (v3 >= v4)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t SleepScoreLevelRange.lowerPointBound.getter()
{
  v1 = *v0;
  v2 = v0[1];
  swift_getKeyPath();
  swift_getAtKeyPath();

  return v4;
}

uint64_t SleepScoreLevelRange.upperPointBound.getter()
{
  v1 = *v0;
  v2 = v0[1];
  swift_getKeyPath();
  swift_getAtKeyPath();

  return v4;
}

uint64_t static SleepScoreLevelRange.allCasesDescendingOrder(algorithmVersion:)(char *a1)
{
  v3 = *a1;
  v1 = _s11SleepHealth0A15ScoreLevelRangeV8allCases16algorithmVersionSayACGAA0ac9AlgorithmI0O_tFZ_0(&v3);

  return sub_269BF16A4(v1);
}

uint64_t SleepScoreLevelRange.hash(into:)()
{
  v1 = v0[1];
  if (*v0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x26D64C450](v2);
  return MEMORY[0x26D64C450](v1);
}

uint64_t SleepScoreLevelRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269BF8C18();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t sub_269BF1CAC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269BF8C18();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t sub_269BF1D14()
{
  v1 = v0[1];
  if (*v0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x26D64C450](v2);
  return MEMORY[0x26D64C450](v1);
}

uint64_t sub_269BF1D60()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269BF8C18();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t SleepScoreLevel.localizedTitle.getter()
{
  v1 = sub_269BF87B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v0;
  sub_269BF8738();
  v6 = sub_269BDF7A8(v5);
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t SleepScoreLevel.localizedDescription.getter()
{
  v1 = sub_269BF87B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v0;
  sub_269BF8738();
  v6 = sub_269BDF7A8(v5);
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t SleepScoreLevelRange.localizedRange.getter()
{
  v1 = sub_269BF87B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269BF8798();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *v0;
  v9 = v0[1];
  sub_269BF8788();
  sub_269BF8778();
  swift_getKeyPath();
  v13 = v9;
  swift_getAtKeyPath();

  sub_269BF8758();
  sub_269BF8778();
  swift_getKeyPath();
  v13 = v9;
  swift_getAtKeyPath();

  sub_269BF8758();
  sub_269BF8778();
  sub_269BF87A8();
  v10 = sub_269BDF7A8(v5);
  (*(v2 + 8))(v5, v1);
  return v10;
}

char *sub_269BF2314(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF3630(0, &qword_28034AB90, sub_269BF13E4);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_269BF245C(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_280B61400, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_269BF2578(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034A470, &type metadata for SleepScoreMetricsDaySummaryBuilder.SleepStart, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_269BF26D0(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_269BF3630(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_269BF28B0(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_269BF35E0(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_269BF29B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034ABC0, &type metadata for SleepScoreLevelRange, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_269BF2AC8(size_t a1, int64_t a2, char a3)
{
  result = sub_269BF2BFC(a1, a2, a3, *v3, &qword_28034ABE8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A70]);
  *v3 = result;
  return result;
}

size_t sub_269BF2B18(size_t a1, int64_t a2, char a3)
{
  result = sub_269BF2BFC(a1, a2, a3, *v3, &qword_28034A478, type metadata accessor for SleepScoreDaySummary, type metadata accessor for SleepScoreDaySummary);
  *v3 = result;
  return result;
}

char *sub_269BF2B68(char *a1, int64_t a2, char a3)
{
  result = sub_269BF2DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269BF2B88(char *a1, int64_t a2, char a3)
{
  result = sub_269BF2EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269BF2BA8(char *a1, int64_t a2, char a3)
{
  result = sub_269BF3000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_269BF2BFC(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_269BF3630(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_269BF2DDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034ABE0, &type metadata for SleepScoreNote.Contributor, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_269BF2EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034ABD8, &type metadata for SleepScoreNote.Customization, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_269BF3000(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034ABC0, &type metadata for SleepScoreLevelRange, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t _s11SleepHealth0A15ScoreLevelRangeV8allCases16algorithmVersionSayACGAA0ac9AlgorithmI0O_tFZ_0(char *a1)
{
  v1 = *a1;
  v19 = MEMORY[0x277D84F90];
  sub_269BF2BA8(0, 5, 0);
  v2 = v19;
  v4 = *(v19 + 16);
  v3 = *(v19 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    sub_269BF2BA8((v3 > 1), v4 + 1, 1);
    v2 = v19;
    v3 = *(v19 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = v2 + 2 * v4;
  *(v7 + 32) = v1;
  *(v7 + 33) = 0;
  v8 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    sub_269BF2BA8((v3 > 1), v4 + 2, 1);
    v2 = v19;
  }

  *(v2 + 16) = v8;
  v9 = v2 + 2 * v6;
  *(v9 + 32) = v1;
  *(v9 + 33) = 1;
  v10 = *(v2 + 24);
  v11 = v4 + 3;
  if ((v4 + 3) > (v10 >> 1))
  {
    sub_269BF2BA8((v10 > 1), v4 + 3, 1);
  }

  result = v19;
  *(v19 + 16) = v11;
  v13 = v19 + 2 * v8;
  *(v13 + 32) = v1;
  *(v13 + 33) = 2;
  v14 = *(v19 + 24);
  v15 = v4 + 4;
  if ((v4 + 4) > (v14 >> 1))
  {
    sub_269BF2BA8((v14 > 1), v4 + 4, 1);
    result = v19;
  }

  *(result + 16) = v15;
  v16 = result + 2 * v11;
  *(v16 + 32) = v1;
  *(v16 + 33) = 3;
  v17 = *(result + 24);
  if ((v4 + 5) > (v17 >> 1))
  {
    sub_269BF2BA8((v17 > 1), v4 + 5, 1);
    result = v19;
  }

  *(result + 16) = v4 + 5;
  v18 = result + 2 * v15;
  *(v18 + 32) = v1;
  *(v18 + 33) = 4;
  return result;
}

unint64_t sub_269BF3350()
{
  result = qword_28034ABA0;
  if (!qword_28034ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034ABA0);
  }

  return result;
}

unint64_t sub_269BF33A8()
{
  result = qword_28034ABA8;
  if (!qword_28034ABA8)
  {
    sub_269BF35E0(255, &qword_28034ABB0, &type metadata for SleepScoreLevel, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034ABA8);
  }

  return result;
}

unint64_t sub_269BF3428()
{
  result = qword_28034ABB8;
  if (!qword_28034ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034ABB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreLevelRange(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for SleepScoreLevelRange(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}