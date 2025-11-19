uint64_t sub_233173BF8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_233173C84(v3);
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

uint64_t sub_233173C98(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_23328CC9C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_233173D7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27C0, &qword_2332990D0);
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

size_t sub_233173E80(size_t a1, int64_t a2, char a3)
{
  result = sub_233174550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s19LongTermLogsCommandVMa()
{
  result = qword_27DDF4300;
  if (!qword_27DDF4300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_233173EEC()
{
  result = qword_27DDF3D78[0];
  if (!qword_27DDF3D78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF3D78);
  }

  return result;
}

uint64_t sub_233173F40(uint64_t a1, uint64_t a2)
{
  v4 = _s19LongTermLogsCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_233173FA4()
{
  result = qword_27DDE2740;
  if (!qword_27DDE2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2740);
  }

  return result;
}

unint64_t sub_233173FFC()
{
  result = qword_27DDE2748;
  if (!qword_27DDE2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2748);
  }

  return result;
}

uint64_t sub_233174128(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_233174270()
{
  sub_233174300(319, &qword_27DDE2788, &_s19LongTermLogsCommandV7CommandON, MEMORY[0x277CEEA50]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_233174300(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_23317444C()
{
  result = qword_27DDF4710[0];
  if (!qword_27DDF4710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF4710);
  }

  return result;
}

unint64_t sub_2331744A4()
{
  result = qword_27DDF4820;
  if (!qword_27DDF4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF4820);
  }

  return result;
}

unint64_t sub_2331744FC()
{
  result = qword_27DDF4828[0];
  if (!qword_27DDF4828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF4828);
  }

  return result;
}

size_t sub_233174550(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27C8, &qword_2332990D8);
  v10 = *(sub_23328CC9C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23328CC9C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23317473C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27B8, &unk_2332990C0);
    v3 = sub_23328E22C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_23328D98C();
      sub_23328E61C();
      v29 = v7;
      sub_23328DA3C();
      v9 = sub_23328E66C();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_23328D98C();
        v20 = v19;
        if (v18 == sub_23328D98C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_23328E54C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_233174930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_233174994(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1938, &qword_2332990E0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v2[6] = v3;
  v2[2] = a1;
  v2[3] = sub_233174F64(0, 0, a1);
  return v2;
}

uint64_t sub_233174A10()
{
  v1 = v0[6];

  os_unfair_lock_lock(v1 + 4);

  v2 = sub_233174F64(0, 0, v0[2]);
  swift_beginAccess();
  v3 = v0[3];
  v0[3] = v2;

  v0[4] = 0;
  v0[5] = 0;
  v4 = v0[6];

  os_unfair_lock_unlock(v4 + 4);
}

void sub_233174AA4(void *a1, double a2)
{
  v5 = v2[6];

  os_unfair_lock_lock(v5 + 4);

  v6 = v2[5];
  swift_beginAccess();
  v7 = v2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_233174E1C(v7);
  v2[3] = v7;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= v7[2])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = &v7[2 * v6];
  v10 = *(v9 + 5);
  v9[4] = a2;
  *(v9 + 5) = a1;
  v2[3] = v7;
  v11 = a1;
  swift_endAccess();

  v12 = v2[5];
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v7[2];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = v13 % v14;
  v2[5] = v15;
  if (v15 == v2[4])
  {
    v2[4] = (v15 + 1) % v14;
  }

  v16 = v2[6];

  os_unfair_lock_unlock(v16 + 4);
}

void sub_233174BD8(void *a1, double a2)
{
  v4 = *(*v2 + 256);
  v5 = a1;
  v4(a2);
}

void sub_233174C5C(double a1, double a2)
{
  v16 = MEMORY[0x277D84F90];
  v5 = v2[6];

  os_unfair_lock_lock(v5 + 4);

  v6 = v2[4];
  swift_beginAccess();
  if (v6 == v2[5])
  {
LABEL_2:
    v7 = v2[6];

    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    v8 = v2[3];
    while ((v6 & 0x8000000000000000) == 0)
    {
      v9 = *(v8 + 16);
      if (v6 >= v9)
      {
        goto LABEL_17;
      }

      v10 = v8 + 16 * v6;
      v11 = *(v10 + 40);
      if (v11)
      {
        v12 = *(v10 + 32);
        if (v12 >= a1 && v12 <= a2)
        {
          v14 = v11;
          MEMORY[0x23839B920]();
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23328DC1C();
          }

          sub_23328DC4C();

          v8 = v2[3];
          v9 = *(v8 + 16);
          if (!v9)
          {
            goto LABEL_18;
          }
        }
      }

      v6 = (v6 + 1) % v9;
      if (v6 == v2[5])
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_233174DDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *sub_233174E30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27D0, &qword_233299178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27D8, &qword_233299180);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_233174F64(void *result, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27D8, &qword_233299180);
    v6 = sub_23328DC3C();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v5;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v5;
        *v9 = a2;
        v10 = a2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    v11 = a2;
    return v7;
  }

  return result;
}

id sub_23317503C()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession);
  }

  else
  {
    v4 = [objc_allocWithZone(TTSVBSiriTTSTrainerSession) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id TTSVBVoiceBankingManager.audioService.getter()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService);
  }

  else
  {
    v4 = v0;
    type metadata accessor for TTSVBAudioService();
    v5 = TTSVBAudioService.__allocating_init()();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_233175120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = TTSVBVoiceBankingManager.audioService.getter();
  *a2 = result;
  return result;
}

void sub_23317514C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService);
  *(*a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService) = *a1;
  v3 = v2;
}

uint64_t TTSVBVoiceBankingManager.audioService.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService);
  *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*TTSVBVoiceBankingManager.audioService.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TTSVBVoiceBankingManager.audioService.getter();
  return sub_2331751F8;
}

void sub_2331751F8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService);
  *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService) = v2;
}

uint64_t sub_233175210()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_23317527C();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_2331B9710(v4);
  }

  sub_2331BDE90(v2);
  return v3;
}

uint64_t sub_23317527C()
{
  v0 = sub_23328CC9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-v6];
  static TTSVBPath.longLivedLogsDirectoryURL()();
  (*(v1 + 56))(v7, 0, 1, v0);
  v8 = (*(v1 + 32))(&v14[-v3], v7, v0);
  MEMORY[0x28223BE20](v8);
  (*(v1 + 16))(&v14[-v3], &v14[-v3], v0);
  v9 = sub_23328D2EC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_23328D2DC();
  (*(v1 + 8))(&v14[-v3], v0);
  return v12;
}

id TTSVBVoiceBankingManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TTSVBVoiceBankingManager.init()()
{
  ObjectType = swift_getObjectType();
  v31 = type metadata accessor for TTSVBPath();
  v0 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_23328DEAC();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328DE7C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_23328D80C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue;
  v27 = sub_233144EEC(0, &qword_280D3A220, 0x277D85C78);
  sub_23328D7EC();
  v34 = MEMORY[0x277D84F90];
  v25[2] = sub_2331B2AAC(&qword_280D3A230, MEMORY[0x277D85230]);
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  v25[3] = sub_23315246C(&qword_280D3A250, &unk_27DDE2B80, qword_233290290);
  sub_23328E14C();
  v10 = *MEMORY[0x277D85260];
  v11 = v2 + 104;
  v12 = *(v2 + 104);
  v25[0] = v11;
  v12(v5, v10, v32);
  v13 = sub_23328DEDC();
  v14 = v26;
  *&v26[v28] = v13;
  v28 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue;
  sub_23328D7EC();
  v34 = MEMORY[0x277D84F90];
  sub_23328E14C();
  v12(v5, v10, v32);
  *&v14[v28] = sub_23328DEDC();
  *&v14[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore] = 0;
  *&v14[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession] = 0;
  *&v14[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService] = 0;
  *&v14[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger] = 1;
  v33.receiver = v14;
  v33.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v33, sel_init);
  IsVoicebankingd = TTSVBProcessIsVoicebankingd();
  type metadata accessor for TTSVBDataStore(0);
  LOBYTE(v34) = IsVoicebankingd;
  v17 = v30;
  swift_storeEnumTagMultiPayload();
  v18 = sub_23328CC9C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBPath.url.getter(v21);
  sub_2331BDC54(v17, type metadata accessor for TTSVBPath);
  v22 = sub_2331E3A34(&v34, v21);
  v23 = *&v15[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  *&v15[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore] = v22;

  return v15;
}

uint64_t sub_233175ADC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v6 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (v6)
  {
    v10 = result;
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v10;
    v11[4] = a2;
    v12 = v6;
    v13 = v5;

    a5(a4, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_233175B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v26[1] = a5;
  v27 = a3;
  v28 = a4;
  v26[0] = a1;
  v8 = sub_23328D7CC();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_23328D80C();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v32);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v20 = v26 - v19;
  v29 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  sub_233121D34(v26[0], v26 - v19, &unk_27DDE25D0, &unk_233290330);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 16) = v27;
  *(v22 + 24) = v23;
  sub_233121D9C(v20, v22 + v21, &unk_27DDE25D0, &unk_233290330);
  aBlock[4] = v30;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v31;
  v24 = _Block_copy(aBlock);

  sub_23328D7DC();
  v34 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v11, v24);
  _Block_release(v24);
  (*(v33 + 8))(v11, v8);
  (*(v12 + 8))(v15, v32);
}

void TTSVBVoiceBankingManager.dataStoreEventPublisher.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v1)
  {
    v2 = v1;
    TTSVBDataStore.eventPublisher.getter();
  }

  else
  {
    __break(1u);
  }
}

void TTSVBVoiceBankingManager.viewContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v1)
  {
    v3 = 0;
    v2 = v1;
    sub_2331E511C(&v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_233176034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23328D7CC();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23328D80C();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_233122608(a1);
  v17 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v16;
  aBlock[4] = sub_2331BE6E4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_608;
  v19 = _Block_copy(aBlock);

  sub_23328D7DC();
  v24 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v11, v19);
  _Block_release(v19);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TTSVBVoiceBankingManager.createVoice(named:localeID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = TTSVBProcessIsVoicebankingd();
  if (result)
  {
    v14 = swift_allocObject();
    v14[2] = v6;
    v14[3] = a1;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    v15 = v6;

    sub_233178950(sub_23317643C, v14, a5, a6, &unk_284875588, sub_2331BDEF0, &block_descriptor_590);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23317643C(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[2];
  sub_23317646C(v2, v3, v4, v5, a1);
}

void sub_23317646C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v44 = a1;
  v45 = a3;
  v8 = sub_23328D6EC();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D83C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v5;
  v17 = *(v5 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_23328D85C();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v19 = sub_233225440();
    v20 = *(v46 + 16);
    v41 = v8;
    v20(v11, v19, v8);

    v21 = sub_23328D6CC();
    v22 = sub_23328DE1C();

    v23 = a4;
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = a4;
      v26 = a2;
      v27 = v25;
      v47 = v25;
      *v24 = 136315394;
      v28 = v44;
      *(v24 + 4) = sub_23311A8F4(v44, v26, &v47);
      *(v24 + 12) = 2080;
      v29 = v45;
      *(v24 + 14) = sub_23311A8F4(v45, v40, &v47);
      _os_log_impl(&dword_233109000, v21, v22, "Will create voice datastore entry with name: %s (locale: %s)", v24, 0x16u);
      swift_arrayDestroy();
      v30 = v27;
      a2 = v26;
      v23 = v40;
      MEMORY[0x23839CFD0](v30, -1, -1);
      MEMORY[0x23839CFD0](v24, -1, -1);

      v31 = (*(v46 + 8))(v11, v41);
    }

    else
    {

      v31 = (*(v46 + 8))(v11, v41);
      v28 = v44;
      v29 = v45;
    }

    MEMORY[0x28223BE20](v31);
    *(&v39 - 4) = v28;
    *(&v39 - 3) = a2;
    *(&v39 - 2) = v29;
    *(&v39 - 1) = v23;
    v32 = v43;
    v33 = sub_233175210();
    if (v33)
    {
      MEMORY[0x28223BE20](v33);
      *(&v39 - 2) = sub_2331BC4B0;
      *(&v39 - 1) = (&v39 - 6);
      sub_23328D2BC();
    }

    v34 = *(v32 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v34)
    {
      v48 = 1;
      v35 = v34;
      v36 = sub_2331E511C(&v48);

      type metadata accessor for TTSVBLocalVoiceMO();
      v37 = static TTSVBLocalVoiceMO.voiceForNamePredicate(_:)(v28, a2);
      v38 = MEMORY[0x28223BE20](v37);
      *(&v39 - 6) = v36;
      *(&v39 - 5) = v38;
      *(&v39 - 4) = v28;
      *(&v39 - 3) = a2;
      *(&v39 - 2) = v29;
      *(&v39 - 1) = v23;
      sub_23328CE8C();
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_233176918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23328D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D80C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v16 = swift_allocObject();
  v16[2] = sub_2331B3A28;
  v16[3] = a1;
  v16[4] = v3;
  v16[5] = a2;
  v16[6] = a3;
  aBlock[4] = sub_2331BCA8C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_455;
  v17 = _Block_copy(aBlock);

  v18 = v3;

  sub_23328D7DC();
  v22 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_233176C48@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v50 = a5;
  v58 = a3;
  v52 = a7;
  v53 = type metadata accessor for TTSVBError.Reason(0);
  v10 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_23328D6EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = type metadata accessor for TTSVBLocalVoiceMO();
  v55 = a2;
  if (static DSO<>.count(in:configure:)(a1, sub_2331BC5A0, v54, v21, &protocol witness table for TTSVBLocalVoiceMO) < 1)
  {
    v49 = v18;
    v30 = v14;
    v31 = v52;
    v32 = sub_23328CE7C();
    MEMORY[0x28223BE20](v32);
    *(&v49 - 6) = v58;
    *(&v49 - 5) = a4;
    v33 = a4;
    v35 = v50;
    v34 = v51;
    *(&v49 - 4) = v31;
    *(&v49 - 3) = v35;
    *(&v49 - 2) = v34;
    static DSO<>.findOrCreate(in:matching:config:)(a1, a2, sub_2331BC5B0, (&v49 - 8), v21, &protocol witness table for TTSVBLocalVoiceMO);

    NSManagedObjectContext.trySave()();
    if (v37)
    {
      v38 = sub_23328CE8C();
      return (*(*(v38 - 8) + 8))(v52, v38);
    }

    else
    {
      v42 = v58;
      v43 = sub_233225440();
      v44 = v49;
      (*(v30 + 16))(v49, v43, v13);

      v45 = sub_23328D6CC();
      v46 = sub_23328DE1C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v56 = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_23311A8F4(v42, v33, &v56);
        _os_log_impl(&dword_233109000, v45, v46, "Did create voice datastore entry with name: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x23839CFD0](v48, -1, -1);
        MEMORY[0x23839CFD0](v47, -1, -1);

        return (*(v30 + 8))(v49, v13);
      }

      else
      {

        return (*(v30 + 8))(v44, v13);
      }
    }
  }

  else
  {
    v22 = sub_233225440();
    (*(v14 + 16))(v20, v22, v13);

    v23 = sub_23328D6CC();
    v24 = sub_23328DE1C();

    v25 = a4;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52 = v13;
      v28 = v27;
      *&v56 = v27;
      *v26 = 136315138;
      v29 = v58;
      *(v26 + 4) = sub_23311A8F4(v58, v25, &v56);
      _os_log_impl(&dword_233109000, v23, v24, "Datastore already contains voice with name: %s. Bailing on create voice", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23839CFD0](v28, -1, -1);
      MEMORY[0x23839CFD0](v26, -1, -1);

      (*(v14 + 8))(v20, v52);
    }

    else
    {

      (*(v14 + 8))(v20, v13);
      v29 = v58;
    }

    v56 = xmmword_2332991C0;
    v57 = 3;
    *v12 = v29;
    v12[1] = v25;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    v41 = v40;

    TTSVBError.init(_:_:_:)(&v56, v12, 0, v41);
    return swift_willThrow();
  }
}

void sub_2331771DC(uint64_t a1)
{
  v196 = type metadata accessor for TTSVBPath();
  v3 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v197 = v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23328D6EC();
  v206 = *(v5 - 8);
  v6 = v206[8];
  v7 = MEMORY[0x28223BE20](v5);
  v189 = v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v174 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v174 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v192 = v174 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v201 = v174 - v18;
  MEMORY[0x28223BE20](v17);
  v204 = v174 - v19;
  v20 = sub_23328D83C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v205 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_23328D85C();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v191 = v14;
  v190 = v11;
  v27 = sub_233225314();
  v28 = v206[2];
  v194 = v27;
  v195 = v206 + 2;
  v193 = v28;
  (v28)(v204);
  v29 = sub_23328CE8C();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x28223BE20](v29);
  v187 = v33;
  v202 = a1;
  v203 = v5;
  v34 = v32;
  v35 = v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v30[2];
  v36(v35, a1, v32);
  v37 = sub_23328D6CC();
  v38 = sub_23328DE4C();
  v39 = os_log_type_enabled(v37, v38);
  v188 = v30;
  v198 = v36;
  v199 = v30 + 2;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v209 = v41;
    *v40 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
    v42 = sub_23328E51C();
    v185 = v174;
    v44 = v43;
    v186 = v30[1];
    v186(v35, v34);
    v45 = sub_23311A8F4(v42, v44, &v209);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_233109000, v37, v38, "Will delete voice and all related data with VoiceID: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x23839CFD0](v41, -1, -1);
    MEMORY[0x23839CFD0](v40, -1, -1);
  }

  else
  {

    v186 = v30[1];
    v186(v35, v34);
  }

  v46 = v206[1];
  v47 = v46(v204, v203);
  MEMORY[0x28223BE20](v47);
  v48 = v202;
  v174[-2] = v202;
  v49 = sub_233175210();
  if (v49)
  {
    MEMORY[0x28223BE20](v49);
    v174[-2] = sub_2331BA284;
    v174[-1] = &v174[-4];
    sub_23328D2BC();
  }

  v50 = *(v205 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v50)
  {
    goto LABEL_33;
  }

  LOBYTE(v209) = 1;
  v51 = v50;
  v52 = sub_2331E511C(&v209);

  v205 = v174;
  MEMORY[0x28223BE20](v53);
  v174[-2] = v48;
  v174[-1] = v52;
  v54 = v200;
  sub_23328DF5C();
  v55 = v201;
  if (v54)
  {
  }

  else
  {
    v183 = v46;
    v204 = 0;
    v56 = sub_23328CC9C();
    v205 = v174;
    v184 = v56;
    v185 = *(v56 - 8);
    v57 = v185[8];
    MEMORY[0x28223BE20](v56);
    v182 = v58;
    v59 = v174 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = v197;
    v198(v197, v48, v34);
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(v59);
    sub_2331BDC54(v60, type metadata accessor for TTSVBPath);
    v61 = v203;
    v193(v55, v194, v203);
    v62 = sub_23328D6CC();
    v63 = sub_23328DE4C();
    v64 = os_log_type_enabled(v62, v63);
    v180 = v34;
    v181 = v52;
    v200 = v59;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v209 = v66;
      *v65 = 136315138;
      swift_beginAccess();
      v67 = sub_23328CC6C();
      v69 = sub_23311A8F4(v67, v68, &v209);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_233109000, v62, v63, "Deleting any staged trainings: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x23839CFD0](v66, -1, -1);
      v70 = v65;
      v59 = v200;
      MEMORY[0x23839CFD0](v70, -1, -1);
    }

    v183(v55, v61);
    v71 = sub_2331DEBE8();
    v210 = *v71;
    v72 = v210;
    v73 = swift_beginAccess();
    v201 = v174;
    v74 = v182;
    MEMORY[0x28223BE20](v73);
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
    v76 = v185;
    v78 = v185 + 2;
    v77 = v185[2];
    v79 = v184;
    v77(v174 - v75, v59, v184);
    v179 = xmmword_2332991D0;
    v207 = xmmword_2332991D0;
    v208 = 3;
    v80 = v72;
    v81 = v204;
    _TTSVBFileManager.removeItem(_:problem:)(v174 - v75, &v207);
    v204 = v81;
    if (v81)
    {

      v82 = v76[1];
      v82(v174 - v75, v79);

      v82(v200, v79);
    }

    else
    {
      v175 = v77;
      v174[1] = v78;
      v176 = v71;
      v83 = v76[1];
      v178 = v76 + 1;
      v177 = v83;
      v83(v174 - v75, v79);

      v84 = v197;
      v198(v197, v202, v180);
      v85 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v85);
      TTSVBPath.url.getter(v174 - v75);
      sub_2331BDC54(v84, type metadata accessor for TTSVBPath);
      v86 = v76[5];
      v87 = v200;
      v185 = v76 + 5;
      v201 = v86;
      (v86)(v200, v174 - v75, v79);
      v88 = v192;
      v89 = v203;
      v193(v192, v194, v203);
      v90 = sub_23328D6CC();
      v91 = sub_23328DE4C();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v207 = v93;
        *v92 = 136315138;
        v94 = sub_23328CC6C();
        v96 = sub_23311A8F4(v94, v95, &v207);

        *(v92 + 4) = v96;
        _os_log_impl(&dword_233109000, v90, v91, "Deleting user recordings: %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x23839CFD0](v93, -1, -1);
        MEMORY[0x23839CFD0](v92, -1, -1);
      }

      v97 = (v183)(v88, v89);
      v210 = *v176;
      v98 = v210;
      v99 = v182;
      MEMORY[0x28223BE20](v97);
      v100 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
      v101 = v174 - v100;
      v102 = v184;
      v175(v174 - v100, v87, v184);
      v207 = v179;
      v208 = 3;
      v103 = v98;
      v104 = v204;
      _TTSVBFileManager.removeItem(_:problem:)(v174 - v100, &v207);
      if (v104)
      {
        goto LABEL_21;
      }

      v204 = 0;
      v177(v174 - v100, v102);

      v105 = v197;
      v198(v197, v202, v180);
      v106 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v106);
      TTSVBPath.url.getter(v174 - v100);
      sub_2331BDC54(v105, type metadata accessor for TTSVBPath);
      (v201)(v87, v174 - v100, v102);
      v107 = v191;
      v108 = v203;
      v193(v191, v194, v203);
      v109 = sub_23328D6CC();
      v110 = sub_23328DE4C();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *&v207 = v112;
        *v111 = 136315138;
        v113 = sub_23328CC6C();
        v115 = sub_23311A8F4(v113, v114, &v207);

        *(v111 + 4) = v115;
        _os_log_impl(&dword_233109000, v109, v110, "Deleting created models: %s", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v112);
        MEMORY[0x23839CFD0](v112, -1, -1);
        MEMORY[0x23839CFD0](v111, -1, -1);

        v116 = v191;
      }

      else
      {

        v116 = v107;
      }

      v117 = (v183)(v116, v108);
      v210 = *v176;
      v118 = v210;
      v119 = v182;
      MEMORY[0x28223BE20](v117);
      v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF0;
      v101 = v174 - v120;
      v102 = v184;
      v175(v174 - v120, v87, v184);
      v207 = v179;
      v208 = 3;
      v121 = v118;
      v122 = v204;
      _TTSVBFileManager.removeItem(_:problem:)(v174 - v120, &v207);
      if (v122)
      {
LABEL_21:

        v123 = v101;
        v124 = v177;
        v177(v123, v102);

        v124(v87, v102);
      }

      else
      {
        v204 = 0;
        v177(v174 - v120, v102);

        v125 = v197;
        v198(v197, v202, v180);
        v126 = swift_storeEnumTagMultiPayload();
        MEMORY[0x28223BE20](v126);
        TTSVBPath.url.getter(v174 - v120);
        sub_2331BDC54(v125, type metadata accessor for TTSVBPath);
        (v201)(v87, v174 - v120, v102);
        v127 = v190;
        v128 = v203;
        v193(v190, v194, v203);
        v129 = sub_23328D6CC();
        v130 = sub_23328DE4C();
        v131 = v87;
        if (os_log_type_enabled(v129, v130))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *&v207 = v133;
          *v132 = 136315138;
          v134 = sub_23328CC6C();
          v136 = v127;
          v137 = sub_23311A8F4(v134, v135, &v207);

          *(v132 + 4) = v137;
          _os_log_impl(&dword_233109000, v129, v130, "Deleting exported items: %s", v132, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v133);
          MEMORY[0x23839CFD0](v133, -1, -1);
          MEMORY[0x23839CFD0](v132, -1, -1);

          v138 = v136;
        }

        else
        {

          v138 = v127;
        }

        v139 = (v183)(v138, v128);
        v192 = v174;
        v210 = *v176;
        v140 = v210;
        v141 = v182;
        MEMORY[0x28223BE20](v139);
        v142 = (v141 + 15) & 0xFFFFFFFFFFFFFFF0;
        v143 = v184;
        v144 = v175;
        v175(v174 - v142, v131, v184);
        v207 = v179;
        v208 = 3;
        v145 = v140;
        v146 = v204;
        _TTSVBFileManager.removeItem(_:problem:)(v174 - v142, &v207);
        if (v146)
        {
          goto LABEL_26;
        }

        v177(v174 - v142, v143);

        v204 = 0;
        v148 = v197;
        v198(v197, v202, v180);
        v149 = swift_storeEnumTagMultiPayload();
        MEMORY[0x28223BE20](v149);
        TTSVBPath.url.getter(v174 - v142);
        sub_2331BDC54(v148, type metadata accessor for TTSVBPath);
        v150 = (v201)(v131, v174 - v142, v143);
        v210 = *v176;
        v151 = v210;
        MEMORY[0x28223BE20](v150);
        v144(v174 - v142, v131, v143);
        v207 = v179;
        v208 = 3;
        v152 = v151;
        v153 = v204;
        _TTSVBFileManager.removeItem(_:problem:)(v174 - v142, &v207);
        if (v153)
        {
LABEL_26:

          v147 = v177;
          v177(v174 - v142, v143);

          v147(v131, v143);
        }

        else
        {
          v204 = 0;
          v154 = v177;
          v177(v174 - v142, v143);

          v155 = v189;
          v156 = v203;
          v157 = (v193)(v189, v194, v203);
          MEMORY[0x28223BE20](v157);
          v159 = v174 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
          v160 = v180;
          v198(v159, v202, v180);
          v161 = sub_23328D6CC();
          v162 = sub_23328DE4C();
          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *&v207 = v164;
            *v163 = 136315138;
            sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
            v165 = sub_23328E51C();
            v166 = v156;
            v168 = v167;
            v186(v159, v160);
            v169 = sub_23311A8F4(v165, v168, &v207);

            *(v163 + 4) = v169;
            _os_log_impl(&dword_233109000, v161, v162, "Finished deleting voice and all related data with VoiceID: %s", v163, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v164);
            MEMORY[0x23839CFD0](v164, -1, -1);
            v154 = v177;
            MEMORY[0x23839CFD0](v163, -1, -1);

            v170 = v189;
            v171 = v166;
          }

          else
          {

            v186(v159, v160);
            v170 = v155;
            v171 = v156;
          }

          v183(v170, v171);
          v172 = v181;
          v173 = [objc_opt_self() defaultCenter];
          [v173 postNotificationName:*sub_2331694E8() object:0];

          v154(v200, v184);
        }
      }
    }
  }
}

uint64_t sub_233178950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v12 = sub_23328D7CC();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23328D80C();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&v7[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v7;
  v20[5] = a3;
  v20[6] = a4;
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);

  v22 = v7;

  sub_23328D7DC();
  v29 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v19, v15, v21);
  _Block_release(v21);
  (*(v28 + 8))(v15, v12);
  (*(v16 + 8))(v19, v27);
}

void sub_233178C40(uint64_t a1, void *a2)
{
  v39 = a2;
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = sub_23328D6EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_233225314();
  v37 = v4;
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v38 = a1;
  v14(v13, a1, v9);
  v15 = sub_23328D6CC();
  v16 = sub_23328DE4C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v17 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
    v18 = sub_23328E51C();
    v36 = v3;
    v20 = v19;
    (*(v10 + 8))(v13, v9);
    v21 = sub_23311A8F4(v18, v20, v40);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_233109000, v15, v16, "Will delete voice with ID from datastore: %s", v17, 0xCu);
    v22 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x23839CFD0](v22, -1, -1);
    MEMORY[0x23839CFD0](v17, -1, -1);

    (*(v37 + 8))(v7, v36);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    (*(v37 + 8))(v7, v3);
  }

  type metadata accessor for TTSVBLocalVoiceMO();
  v23 = static TTSVBLocalVoiceMO.batchDeleteRequest(forVoiceID:)();
  v40[0] = 0;
  v24 = v39;
  v25 = [v39 executeRequest:v23 error:v40];
  v26 = v40[0];
  if (!v25)
  {
    goto LABEL_8;
  }

  v27 = v25;
  v28 = v40[0];

  type metadata accessor for TTSVBCloudVoiceMO();
  v29 = static TTSVBCloudVoiceMO.batchDeleteRequest(forVoiceID:)();

  v40[0] = 0;
  v30 = [v24 executeRequest:v29 error:v40];
  v26 = v40[0];
  if (!v30)
  {
    v23 = v29;
LABEL_8:
    v33 = v26;
    sub_23328CA7C();

    swift_willThrow();
    goto LABEL_9;
  }

  v31 = v30;
  v32 = v40[0];

  NSManagedObjectContext.saveOrRollback()();
LABEL_9:
  v34 = *MEMORY[0x277D85DE8];
}

uint64_t TTSVBVoiceBankingManager.recordedPhraseCount(forVoice:validDataOnly:trainingDataSource:)(uint64_t a1, int a2, char *a3)
{
  v40 = a2;
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for TTSVBPath();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_23328D83C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a3;
  v17 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v15 = v17;
  (*(v11 + 104))(v15, *MEMORY[0x277D85200], v10, v13);
  v18 = v17;
  LOBYTE(v17) = sub_23328D85C();
  result = (*(v11 + 8))(v15, v10);
  if ((v17 & 1) == 0)
  {
    __break(1u);
  }

  if (v16)
  {
    v20 = sub_23328CC9C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = &v39[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v25 = sub_23328CE8C();
    (*(*(v25 - 8) + 16))(v9, a1, v25);
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(v24);
    sub_2331BDC54(v9, type metadata accessor for TTSVBPath);
    v26 = [objc_opt_self() defaultManager];
    v27 = sub_23328CBCC();
    v42[0] = 0;
    v28 = [v26 contentsOfDirectoryAtURL:v27 includingPropertiesForKeys:0 options:0 error:v42];

    v29 = v42[0];
    if (v28)
    {
      v30 = sub_23328DBFC();
      v31 = v29;

      (*(v21 + 8))(v24, v20);
      v32 = *(v30 + 16);
    }

    else
    {
      v32 = v42[0];
      sub_23328CA7C();

      swift_willThrow();
      (*(v21 + 8))(v24, v20);
    }

LABEL_10:
    v38 = *MEMORY[0x277D85DE8];
    return v32;
  }

  v33 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v33)
  {
    LOBYTE(v42[0]) = 1;
    v34 = v33;
    v35 = sub_2331E511C(v42);

    MEMORY[0x28223BE20](v36);
    *&v39[-32] = a1;
    *&v39[-24] = v35;
    v39[-16] = v40 & 1;
    v37 = v41;
    sub_23328DF5C();
    v32 = v37;

    if (!v37)
    {
      v32 = v42[0];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_233179498(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23328E2DC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23311B0C0(i, v6);
    type metadata accessor for TTSVBLocalVoiceSampleMO();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23328E2BC();
    v4 = *(v7 + 16);
    sub_23328E2EC();
    sub_23328E2FC();
    sub_23328E2CC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void TTSVBVoiceBankingManager.durationOfRecordingData(forVoice:validDataOnly:)(uint64_t a1, char a2)
{
  v5 = sub_23328D83C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x277D85200], v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_23328D85C();
  (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v13 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v13)
    {
      v18 = 1;
      v14 = v13;
      v15 = sub_2331E511C(&v18);

      MEMORY[0x28223BE20](v16);
      *(&v17 - 4) = a1;
      *(&v17 - 3) = v15;
      *(&v17 - 16) = a2 & 1;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_233179780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v5 = sub_23328D7CC();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23328D80C();
  v43 = *(v45 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for TTSVBVoiceModel();
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x28223BE20](v14);
  v51 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTSVBLocalVoiceModelMO();
  v18 = sub_2331F88A8(v17, &protocol witness table for TTSVBLocalVoiceModelMO);
  v20 = static DSO<>.fetch(in:config:)(a1, v18, v19, v17, &protocol witness table for TTSVBLocalVoiceModelMO);

  if (v20 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
  {
    v22 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v23 = 0;
    v50 = v20 & 0xC000000000000001;
    v24 = (v49 + 48);
    v48 = v14;
    while (1)
    {
      if (v50)
      {
        v25 = MEMORY[0x23839BFC0](v23, v20);
      }

      else
      {
        if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v25 = *(v20 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      (*((*MEMORY[0x277D85000] & *v25) + 0x58))(0);

      if ((*v24)(v13, 1, v14) == 1)
      {
        sub_233121E04(v13, &qword_27DDE2388, &qword_233297728);
      }

      else
      {
        sub_2331BDDC4(v13, v51, type metadata accessor for TTSVBVoiceModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2331B3130(0, v22[2] + 1, 1, v22, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v29 = v22[2];
        v28 = v22[3];
        if (v29 >= v28 >> 1)
        {
          v22 = sub_2331B3130(v28 > 1, v29 + 1, 1, v22, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v22[2] = v29 + 1;
        sub_2331BDDC4(v51, v22 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v29, type metadata accessor for TTSVBVoiceModel);
        v14 = v48;
      }

      ++v23;
      if (v27 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:

  v30 = *(v39 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v31 = swift_allocObject();
  v32 = v41;
  v31[2] = v40;
  v31[3] = v32;
  v31[4] = v22;
  aBlock[4] = sub_2331BE6E4;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_566;
  v33 = _Block_copy(aBlock);

  v34 = v42;
  sub_23328D7DC();
  v52 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v35 = v44;
  v36 = v47;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v34, v35, v33);
  _Block_release(v33);
  (*(v46 + 8))(v35, v36);
  (*(v43 + 8))(v34, v45);
}

void sub_233179DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (v6)
  {
    v9 = v5;
    LOBYTE(v18[0]) = 1;
    v12 = v6;
    v13 = sub_2331E511C(v18);

    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v9;
    v14[4] = a1;
    v14[5] = a2;
    v18[4] = a4;
    v18[5] = v14;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2331221F8;
    v18[3] = a5;
    v15 = _Block_copy(v18);
    v16 = v13;
    v17 = v9;

    [v16 performBlock_];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_233179F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v71 = a3;
  v70 = a2;
  v5 = type metadata accessor for TTSVBInstalledVoiceModel();
  v68 = *(v5 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D7CC();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v8);
  v75 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_23328D80C();
  v74 = *(v76 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v67 - v15;
  v86 = type metadata accessor for TTSVBVoiceModel();
  v17 = *(v86 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v86);
  v85 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v84 = &v67 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v80 = &v67 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v67 - v26;
  MEMORY[0x28223BE20](v25);
  v83 = &v67 - v28;
  v29 = type metadata accessor for TTSVBLocalVoiceModelMO();
  v30 = sub_2331F88A8(v29, &protocol witness table for TTSVBLocalVoiceModelMO);
  v32 = static DSO<>.fetch(in:config:)(a1, v30, v31, v29, &protocol witness table for TTSVBLocalVoiceModelMO);

  if (v32 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
  {
    v34 = 0;
    v81 = v32 & 0xFFFFFFFFFFFFFF8;
    v82 = v32 & 0xC000000000000001;
    v35 = MEMORY[0x277D84F90];
    v79 = v32;
    while (1)
    {
      if (v82)
      {
        v36 = MEMORY[0x23839BFC0](v34, v32);
      }

      else
      {
        if (v34 >= *(v81 + 16))
        {
          goto LABEL_18;
        }

        v36 = *(v32 + 8 * v34 + 32);
      }

      v37 = v36;
      v38 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      (*((*MEMORY[0x277D85000] & *v36) + 0x58))(0);

      if ((*(v17 + 48))(v16, 1, v86) == 1)
      {
        sub_233121E04(v16, &qword_27DDE2388, &qword_233297728);
      }

      else
      {
        sub_2331BDDC4(v16, v83, type metadata accessor for TTSVBVoiceModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_2331B3130(0, v35[2] + 1, 1, v35, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v40 = v35[2];
        v39 = v35[3];
        if (v40 >= v39 >> 1)
        {
          v35 = sub_2331B3130(v39 > 1, v40 + 1, 1, v35, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v35[2] = v40 + 1;
        sub_2331BDDC4(v83, v35 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v40, type metadata accessor for TTSVBVoiceModel);
        v32 = v79;
      }

      ++v34;
      if (v38 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_21:

  v42 = v35[2];
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v44 = 0;
    v83 = v17;
    while (v44 < v35[2])
    {
      v45 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v46 = *(v17 + 72);
      sub_2331BDBEC(v35 + v45 + v46 * v44, v27, type metadata accessor for TTSVBVoiceModel);
      if (*&v27[*(v86 + 52)] == 7 && v27[*(v86 + 76)] == 1)
      {
        sub_2331BDDC4(v27, v80, type metadata accessor for TTSVBVoiceModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2331B4058(0, *(v43 + 16) + 1, 1);
          v43 = aBlock[0];
        }

        v49 = *(v43 + 16);
        v48 = *(v43 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_2331B4058(v48 > 1, v49 + 1, 1);
          v43 = aBlock[0];
        }

        *(v43 + 16) = v49 + 1;
        result = sub_2331BDDC4(v80, v43 + v45 + v49 * v46, type metadata accessor for TTSVBVoiceModel);
        v17 = v83;
      }

      else
      {
        result = sub_2331BDC54(v27, type metadata accessor for TTSVBVoiceModel);
      }

      if (v42 == ++v44)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_33:

    v50 = *(v43 + 16);
    if (v50)
    {
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2331B4014(0, v50, 0);
      v51 = aBlock[0];
      v52 = v43 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v53 = *(v17 + 72);
      v54 = v68;
      v55 = v69;
      do
      {
        v56 = v84;
        sub_2331BDBEC(v52, v84, type metadata accessor for TTSVBVoiceModel);
        v57 = v85;
        sub_2331BDBEC(v56, v85, type metadata accessor for TTSVBVoiceModel);
        TTSVBInstalledVoiceModel.init(model:)(v57, v55);
        sub_2331BDC54(v56, type metadata accessor for TTSVBVoiceModel);
        aBlock[0] = v51;
        v59 = *(v51 + 16);
        v58 = *(v51 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_2331B4014(v58 > 1, v59 + 1, 1);
          v55 = v69;
          v51 = aBlock[0];
        }

        *(v51 + 16) = v59 + 1;
        sub_2331BDDC4(v55, v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, type metadata accessor for TTSVBInstalledVoiceModel);
        v52 += v53;
        --v50;
      }

      while (v50);
    }

    else
    {

      v51 = MEMORY[0x277D84F90];
    }

    v60 = *(v70 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
    v61 = swift_allocObject();
    v62 = v72;
    v61[2] = v71;
    v61[3] = v62;
    v61[4] = v51;
    aBlock[4] = sub_2331BDE2C;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_560;
    v63 = _Block_copy(aBlock);

    v64 = v73;
    sub_23328D7DC();
    v87 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v65 = v75;
    v66 = v78;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v64, v65, v63);
    _Block_release(v63);
    (*(v77 + 8))(v65, v66);
    (*(v74 + 8))(v64, v76);
  }

  return result;
}

void TTSVBVoiceBankingManager.fetchPersonalVoiceSystemRepresentation(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (TTSVBProcessIsVoicebankingd())
  {
    v6 = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
    if (v6)
    {
      LOBYTE(v13[0]) = 1;
      v7 = v6;
      v8 = sub_2331E511C(v13);

      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = v3;
      v9[4] = a1;
      v9[5] = a2;
      v13[4] = sub_2331B2A7C;
      v13[5] = v9;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_2331221F8;
      v13[3] = &block_descriptor_34;
      v10 = _Block_copy(v13);
      v11 = v8;
      v12 = v3;

      [v11 performBlock_];
      _Block_release(v10);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23317AA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v92 = a3;
  v91 = a2;
  v5 = type metadata accessor for TTSVBVoice();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v98 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTSVBPersonalVoiceSystemRepresentation();
  v97 = *(v8 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTSVBInstalledVoiceModel();
  v114 = *(v11 - 8);
  v12 = *(v114 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v111 = &v85 - v17;
  v18 = type metadata accessor for TTSVBVoiceModel();
  v115 = *(v18 - 8);
  v116 = v18;
  v19 = *(v115 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v112 = &v85 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v107 = &v85 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v106 = &v85 - v27;
  MEMORY[0x28223BE20](v26);
  v110 = &v85 - v28;
  v90 = sub_23328D7CC();
  v89 = *(v90 - 8);
  v29 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_23328D80C();
  v86 = *(v88 - 8);
  v31 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TTSVBLocalVoiceMO();
  v34 = sub_2331F88A8(v33, &protocol witness table for TTSVBLocalVoiceMO);
  v96 = v33;
  v36 = static DSO<>.fetch(in:config:)(a1, v34, v35, v33, &protocol witness table for TTSVBLocalVoiceMO);

  v99 = v36;
  if (v36 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
  {
    v38 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v39 = 0;
    v101 = v99 & 0xC000000000000001;
    v95 = v99 & 0xFFFFFFFFFFFFFF8;
    v94 = v99 + 32;
    v108 = v14;
    v109 = (v115 + 48);
    v40 = MEMORY[0x277D84F90];
    v100 = i;
    while (1)
    {
      if (v101)
      {
        v41 = MEMORY[0x23839BFC0](v39, v99);
      }

      else
      {
        if (v39 >= *(v95 + 16))
        {
          goto LABEL_62;
        }

        v41 = *(v94 + 8 * v39);
      }

      v42 = v41;
      v43 = __OFADD__(v39, 1);
      v44 = v39 + 1;
      if (v43)
      {
        break;
      }

      v104 = v40;
      v105 = v44;
      v45 = (*((*MEMORY[0x277D85000] & *v41) + 0x70))();
      v46 = v45;
      if (v45 >> 62)
      {
        v47 = sub_23328E19C();
        v103 = v42;
        if (v47)
        {
LABEL_14:
          v48 = 0;
          while (1)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x23839BFC0](v48, v46);
            }

            else
            {
              if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_59;
              }

              v49 = *(v46 + 8 * v48 + 32);
            }

            v50 = v49;
            v51 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              break;
            }

            v52 = v14;
            v53 = v111;
            (*((*MEMORY[0x277D85000] & *v49) + 0x58))(0);

            if ((*v109)(v53, 1, v116) == 1)
            {
              sub_233121E04(v53, &qword_27DDE2388, &qword_233297728);
              v14 = v52;
            }

            else
            {
              sub_2331BDDC4(v53, v110, type metadata accessor for TTSVBVoiceModel);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = sub_2331B3130(0, v38[2] + 1, 1, v38, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
              }

              v55 = v38[2];
              v54 = v38[3];
              if (v55 >= v54 >> 1)
              {
                v38 = sub_2331B3130(v54 > 1, v55 + 1, 1, v38, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
              }

              v38[2] = v55 + 1;
              sub_2331BDDC4(v110, v38 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v55, type metadata accessor for TTSVBVoiceModel);
              v14 = v108;
            }

            ++v48;
            if (v51 == v47)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      else
      {
        v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v103 = v42;
        if (v47)
        {
          goto LABEL_14;
        }
      }

LABEL_29:

      v56 = v38[2];
      if (v56)
      {
        v57 = 0;
        v58 = MEMORY[0x277D84F90];
        v59 = v106;
        while (v57 < v38[2])
        {
          v60 = (*(v115 + 80) + 32) & ~*(v115 + 80);
          v61 = *(v115 + 72);
          sub_2331BDBEC(v38 + v60 + v61 * v57, v59, type metadata accessor for TTSVBVoiceModel);
          if (*(v59 + *(v116 + 52)) == 7 && *(v59 + *(v116 + 76)) == 1)
          {
            sub_2331BDDC4(v59, v107, type metadata accessor for TTSVBVoiceModel);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2331B4058(0, *(v58 + 16) + 1, 1);
              v58 = aBlock[0];
            }

            v64 = *(v58 + 16);
            v63 = *(v58 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_2331B4058(v63 > 1, v64 + 1, 1);
              v58 = aBlock[0];
            }

            *(v58 + 16) = v64 + 1;
            sub_2331BDDC4(v107, v58 + v60 + v64 * v61, type metadata accessor for TTSVBVoiceModel);
            v14 = v108;
            v59 = v106;
          }

          else
          {
            sub_2331BDC54(v59, type metadata accessor for TTSVBVoiceModel);
          }

          if (v56 == ++v57)
          {
            goto LABEL_42;
          }
        }

LABEL_60:
        __break(1u);
        break;
      }

      v58 = MEMORY[0x277D84F90];
LABEL_42:

      v65 = *(v58 + 16);
      if (v65)
      {
        aBlock[0] = MEMORY[0x277D84F90];
        sub_2331B4014(0, v65, 0);
        v66 = aBlock[0];
        v67 = v58 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
        v68 = *(v115 + 72);
        do
        {
          v69 = v112;
          sub_2331BDBEC(v67, v112, type metadata accessor for TTSVBVoiceModel);
          v70 = v113;
          sub_2331BDBEC(v69, v113, type metadata accessor for TTSVBVoiceModel);
          TTSVBInstalledVoiceModel.init(model:)(v70, v14);
          sub_2331BDC54(v69, type metadata accessor for TTSVBVoiceModel);
          aBlock[0] = v66;
          v72 = *(v66 + 16);
          v71 = *(v66 + 24);
          if (v72 >= v71 >> 1)
          {
            sub_2331B4014(v71 > 1, v72 + 1, 1);
            v66 = aBlock[0];
          }

          *(v66 + 16) = v72 + 1;
          sub_2331BDDC4(v14, v66 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v72, type metadata accessor for TTSVBInstalledVoiceModel);
          v67 += v68;
          --v65;
        }

        while (v65);
      }

      else
      {

        v66 = MEMORY[0x277D84F90];
      }

      v40 = v104;
      v39 = v105;
      v73 = v103;
      if (*(v66 + 16))
      {
        v74 = v98;
        TTSVBCommonVoiceMO.immutableVoice()(v96, &protocol witness table for TTSVBLocalVoiceMO, v98);
        sub_2331D2BEC(v74, v66, v102);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_2331B3130(0, v40[2] + 1, 1, v40, &qword_27DDE2A80, &unk_233299B80, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
        }

        v38 = MEMORY[0x277D84F90];
        v76 = v40[2];
        v75 = v40[3];
        if (v76 >= v75 >> 1)
        {
          v40 = sub_2331B3130(v75 > 1, v76 + 1, 1, v40, &qword_27DDE2A80, &unk_233299B80, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
        }

        v40[2] = v76 + 1;
        sub_2331BDDC4(v102, v40 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v76, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
      }

      else
      {

        v38 = MEMORY[0x277D84F90];
      }

      if (v39 == v100)
      {

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_57:
  v77 = *(v91 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v78 = swift_allocObject();
  v79 = v93;
  v78[2] = v92;
  v78[3] = v79;
  v78[4] = v40;
  aBlock[4] = sub_2331BDD94;
  aBlock[5] = v78;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_554;
  v80 = _Block_copy(aBlock);

  v81 = v85;
  sub_23328D7DC();
  v117 = v38;
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v82 = v87;
  v83 = v90;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v81, v82, v80);
  _Block_release(v80);
  (*(v89 + 8))(v82, v83);
  (*(v86 + 8))(v81, v88);
}

void sub_23317B838(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v69 = a6;
  v63 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v58 - v15;
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v66);
  v64 = v66;
  v65 = v67;
  v17 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v64);
  sub_2331220AC(v64, *(&v64 + 1), v65);
  if (!v7)
  {
    v68 = a4;
    v58 = a7;
    v59 = v16;
    v18 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v61 = a2;
    v62 = v18;
    v19 = NSManagedObjectContext.insertDSO<A>(_:)(v18, v18, &protocol witness table for TTSVBLocalVoiceModelMO);
    [v19 setVoice_];
    v20 = sub_23328CE8C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23328CE7C();
    v25 = sub_23328CE4C();
    (*(v21 + 8))(v24, v20);
    [v19 setModelID_];

    v60 = v17;
    v26 = [v17 localeID];
    [v19 setTrainingLocaleID_];

    v27 = sub_23328CE1C();
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23328CE0C();
    v32 = sub_23328CD9C();
    (*(v28 + 8))(v31, v27);
    [v19 setCreationDate_];

    v33 = [objc_opt_self() processInfo];
    v34 = [v33 operatingSystemVersionString];

    if (!v34)
    {
      sub_23328D98C();
      v34 = sub_23328D95C();
    }

    [v19 setCreationOSBuild_];

    v35 = MobileGestalt_get_current_device();
    v37 = v62;
    v36 = v63;
    v38 = v68;
    if (v35)
    {
      v39 = v35;
      v40 = MobileGestalt_copy_computerName_obj();

      if (v40)
      {
        sub_23328D98C();

        v40 = sub_23328D95C();
      }
    }

    else
    {
      v40 = 0;
    }

    [v19 setCreationDeviceName_];

    v41 = MobileGestalt_get_current_device();
    if (v41)
    {
      v42 = v41;
      v43 = MobileGestalt_copy_uniqueDeviceID_obj();

      if (v43)
      {
        sub_23328D98C();

        v43 = sub_23328D95C();
      }
    }

    else
    {
      v43 = 0;
    }

    [v19 setCreationDeviceUDID_];

    v44 = MobileGestalt_get_current_device();
    if (v44)
    {
      v45 = v44;
      v46 = MobileGestalt_copy_hwModelStr_obj();

      if (v46)
      {
        sub_23328D98C();

        v46 = sub_23328D95C();
      }
    }

    else
    {
      v46 = 0;
    }

    [v19 setCreationDeviceModel_];

    if (v38)
    {
      v47 = 0;
    }

    else
    {
      v47 = a3;
    }

    v48 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
    TTSVBCommonVoiceModelMO.status.setter(v47, v37, v48);
    if (v36 == 2 || v36 == 1 || !v36)
    {
      v49 = sub_23328D95C();

      [v19 setTrainingMode_];

      if (v36 > 1)
      {
        v50 = sub_233167B90();
      }

      else
      {
        v50 = sub_233167DE4();
      }

      v52 = *v50;
      v51 = v50[1];

      v53 = sub_23328D95C();

      [v19 setVersion_];

      LODWORD(v66) = v69;
      TTSVBCommonVoiceModelMO.flags.setter(&v66, v37, v48);
      sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
      v54 = sub_23328DFBC();
      [v19 setIsDownloaded_];

      NSManagedObjectContext.trySave()();
      if (v55)
      {

        return;
      }

      v56 = v59;
      (*((*MEMORY[0x277D85000] & *v19) + 0x58))(0);
      v57 = type metadata accessor for TTSVBVoiceModel();
      if ((*(*(v57 - 8) + 48))(v56, 1, v57) != 1)
      {

        sub_2331BDDC4(v56, v58, type metadata accessor for TTSVBVoiceModel);
        return;
      }

      __break(1u);
    }

    sub_23328E31C();
    __break(1u);
  }
}

uint64_t TTSVBVoiceBankingManager.refreshModels(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23328D80C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = TTSVBProcessIsVoicebankingd();
  if (result)
  {
    v21 = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = sub_2331B2AA0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_40;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    sub_23328D7DC();
    v22 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    v20 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v14, v9, v17);
    _Block_release(v17);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23317C2D0(char *a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v83 = a3;
  v84 = a1;
  v85 = type metadata accessor for TTSVBVoiceModel();
  v79 = *(v85 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v85);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D7CC();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v75 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_23328D80C();
  v74 = *(v76 - 8);
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D6EC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v72 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v71 - v18;
  v20 = sub_233225514();
  v21 = v12[2];
  v21(v19, v20, v11);
  v22 = sub_23328D6CC();
  v23 = sub_23328DE1C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_233109000, v22, v23, "Request training status refresh for models", v24, 2u);
    MEMORY[0x23839CFD0](v24, -1, -1);
  }

  v25 = v12[1];
  v25(v19, v11);
  v26 = *&v84[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (v26)
  {
    LOBYTE(aBlock) = 1;
    v27 = v26;
    v28 = sub_2331E511C(&aBlock);

    MEMORY[0x28223BE20](v29);
    *(&v71 - 2) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A58, &qword_233299B60);
    v81 = v28;
    sub_23328DF5C();
    v30 = aBlock;
    if (*(aBlock + 2))
    {
      v31 = v80;
      v21(v80, v20, v11);

      v32 = sub_23328D6CC();
      v33 = sub_23328DE1C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = *(v30 + 2);

        _os_log_impl(&dword_233109000, v32, v33, "%ld models exist that require refresh. requesting getTasksByIDs for them now.", v34, 0xCu);
        v35 = v34;
        v31 = v80;
        MEMORY[0x23839CFD0](v35, -1, -1);
      }

      else
      {
      }

      v47 = v83;
      v25(v31, v11);
      v48 = sub_23317503C();
      v49 = v48;
      v50 = *(v30 + 2);
      if (v50)
      {
        v78 = v48;
        aBlock = MEMORY[0x277D84F90];
        sub_23312676C(0, v50, 0);
        v51 = aBlock;
        v52 = *(v79 + 80);
        v80 = v30;
        v53 = &v30[(v52 + 32) & ~v52];
        v54 = *(v79 + 72);
        do
        {
          sub_2331BDBEC(v53, v5, type metadata accessor for TTSVBVoiceModel);
          v55 = &v5[*(v85 + 24)];
          v56 = sub_23328CE3C();
          v58 = v57;
          sub_2331BDC54(v5, type metadata accessor for TTSVBVoiceModel);
          aBlock = v51;
          v60 = *(v51 + 2);
          v59 = *(v51 + 3);
          if (v60 >= v59 >> 1)
          {
            sub_23312676C((v59 > 1), v60 + 1, 1);
            v51 = aBlock;
          }

          *(v51 + 2) = v60 + 1;
          v61 = &v51[16 * v60];
          *(v61 + 4) = v56;
          *(v61 + 5) = v58;
          v53 += v54;
          --v50;
        }

        while (v50);
        v47 = v83;
        v30 = v80;
        v49 = v78;
      }

      v62 = sub_23328DBDC();

      v63 = v84;
      v64 = *&v84[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
      v65 = swift_allocObject();
      v65[2] = v63;
      v65[3] = v30;
      v67 = v81;
      v66 = v82;
      v65[4] = v81;
      v65[5] = v66;
      v65[6] = v47;
      v91 = sub_2331BDBD4;
      v92 = v65;
      aBlock = MEMORY[0x277D85DD0];
      v88 = 1107296256;
      v89 = sub_23317E0C8;
      v90 = &block_descriptor_542;
      v68 = _Block_copy(&aBlock);

      v69 = v63;
      v70 = v67;

      [v49 getTasksByIDs:v62 replyOnQueue:v64 statusHandler:v68];

      _Block_release(v68);
    }

    else
    {

      v36 = v72;
      v21(v72, v20, v11);
      v37 = sub_23328D6CC();
      v38 = sub_23328DE1C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_233109000, v37, v38, "No models exist that require refresh. completing successfully", v39, 2u);
        MEMORY[0x23839CFD0](v39, -1, -1);
      }

      v25(v36, v11);
      v40 = *&v84[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue];
      v41 = swift_allocObject();
      v42 = v83;
      *(v41 + 16) = v82;
      *(v41 + 24) = v42;
      v91 = sub_2331BDBE4;
      v92 = v41;
      aBlock = MEMORY[0x277D85DD0];
      v88 = 1107296256;
      v89 = sub_2331221F8;
      v90 = &block_descriptor_548;
      v43 = _Block_copy(&aBlock);

      v44 = v73;
      sub_23328D7DC();
      v86 = MEMORY[0x277D84F90];
      sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v45 = v75;
      v46 = v78;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v44, v45, v43);
      _Block_release(v43);

      (*(v77 + 8))(v45, v46);
      (*(v74 + 8))(v44, v76);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23317CC04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v40 - v5;
  v44 = type metadata accessor for TTSVBVoiceModel();
  v42 = *(v44 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTSVBLocalVoiceModelMO();
  v10 = sub_2331F88A8(v9, &protocol witness table for TTSVBLocalVoiceModelMO);
  v12 = static DSO<>.fetch(in:config:)(a1, v10, v11, v9, &protocol witness table for TTSVBLocalVoiceModelMO);

  v45 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
  {
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    v16 = v12 & 0xFFFFFFFFFFFFFF8;
    v41 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v15)
      {
        v23 = MEMORY[0x23839BFC0](v14, v12);
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_15;
        }

        v23 = *(v12 + 8 * v14 + 32);
      }

      v24 = v23;
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v26 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
      v27 = TTSVBCommonVoiceModelMO.status.getter(v9, v26);
      if (TTSVBVoiceStatus.isFinal.getter(v27))
      {
      }

      else
      {
        sub_23328E2BC();
        v17 = v15;
        v18 = i;
        v19 = v12;
        v20 = v6;
        v21 = v9;
        v22 = *(v45 + 16);
        sub_23328E2EC();
        v9 = v21;
        v6 = v20;
        v12 = v19;
        i = v18;
        v15 = v17;
        v16 = v41;
        sub_23328E2FC();
        sub_23328E2CC();
      }

      ++v14;
      if (v25 == i)
      {
        v28 = v45;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_18:

  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  for (j = *(v28 + 16); j; j = sub_23328E19C())
  {
    v30 = 0;
    v31 = (v42 + 48);
    v32 = MEMORY[0x277D84F90];
    v33 = MEMORY[0x277D85000];
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x23839BFC0](v30, v28);
      }

      else
      {
        if (v30 >= *(v28 + 16))
        {
          goto LABEL_36;
        }

        v34 = *(v28 + 8 * v30 + 32);
      }

      v35 = v34;
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      (*((*v33 & *v34) + 0x58))(0);

      if ((*v31)(v6, 1, v44) == 1)
      {
        sub_233121E04(v6, &qword_27DDE2388, &qword_233297728);
      }

      else
      {
        sub_2331BDDC4(v6, v43, type metadata accessor for TTSVBVoiceModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_2331B3130(0, v32[2] + 1, 1, v32, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v38 = v32[2];
        v37 = v32[3];
        if (v38 >= v37 >> 1)
        {
          v32 = sub_2331B3130(v37 > 1, v38 + 1, 1, v32, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v32[2] = v38 + 1;
        sub_2331BDDC4(v43, v32 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38, type metadata accessor for TTSVBVoiceModel);
        v33 = MEMORY[0x277D85000];
      }

      ++v30;
      if (v36 == j)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_39:

  *v40 = v32;
  return result;
}

uint64_t sub_23317D0E0(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A60, &qword_233299B68);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  *(&v7 - v4) = MEMORY[0x277D84F90];
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_233121E04(v5, &qword_27DDE2A60, &qword_233299B68);
}

uint64_t sub_23317D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v38 = a6;
  v39 = a5;
  v40 = a3;
  v41 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A60, &qword_233299B68);
  v8 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v10 = (&v36 - v9);
  v11 = type metadata accessor for TTSVBVoiceModelStateTransition();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = sub_23328D83C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  LOBYTE(v24) = sub_23328D85C();
  result = (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v41 = sub_23317D644(v40, a1, v41);
    *&v42 = v41;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A68, &qword_233299B70);
    v28 = sub_23315246C(&qword_27DDE2A70, &qword_27DDE2A68, &qword_233299B70);
    v40 = v27;
    v36 = v28;
    result = Sequence<>.transitionsToFinished.getter(v27);
    v29 = result;
    v30 = *(result + 16);
    if (v30)
    {
      v31 = 0;
      while (v31 < *(v29 + 16))
      {
        sub_2331BDBEC(v29 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v31, v18, type metadata accessor for TTSVBVoiceModelStateTransition);
        sub_23317D7F8(v18);
        ++v31;
        result = sub_2331BDC54(v18, type metadata accessor for TTSVBVoiceModelStateTransition);
        if (v30 == v31)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:

      v32 = v41;
      *&v42 = v41;
      result = Sequence<>.transitionsToAnyFinalState.getter(v40);
      v33 = result;
      v34 = *(result + 16);
      if (!v34)
      {
LABEL_10:

        *v10 = v32;
        swift_storeEnumTagMultiPayload();
        v39(v10);
        return sub_233121E04(v10, &qword_27DDE2A60, &qword_233299B68);
      }

      v35 = 0;
      while (v35 < *(v33 + 16))
      {
        sub_2331BDBEC(v33 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v35, v16, type metadata accessor for TTSVBVoiceModelStateTransition);
        sub_23317DD4C(v16);
        ++v35;
        result = sub_2331BDC54(v16, type metadata accessor for TTSVBVoiceModelStateTransition);
        if (v34 == v35)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23317D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_23328D83C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v12 = v14;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v15 = v14;
  LOBYTE(v14) = sub_23328D85C();
  result = (*(v9 + 8))(v12, v8);
  if ((v14 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  v16[-4] = a1;
  v16[-3] = a3;
  v16[-2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A68, &qword_233299B70);
  result = sub_23328DF5C();
  if (!v4)
  {
    return v16[1];
  }

  return result;
}

uint64_t sub_23317D7F8(uint64_t a1)
{
  v40 = type metadata accessor for TTSVBVoiceModel();
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23328D6EC();
  v7 = *(v44 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v44);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D83C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v41 = a1;
  v42 = v1;
  v43 = v2;
  v17 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v15 = v17;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v18 = v17;
  v19 = sub_23328D85C();
  result = (*(v12 + 8))(v15, v11);
  if ((v19 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v20 = sub_233225314();
  v21 = v44;
  (*(v7 + 16))(v10, v20, v44);
  v22 = sub_23328D6CC();
  v23 = sub_23328DE4C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_233109000, v22, v23, "Voice model has moved to 'finished' status. Performing cleanup tasks", v24, 2u);
    MEMORY[0x23839CFD0](v24, -1, -1);
  }

  (*(v7 + 8))(v10, v21);
  v25 = type metadata accessor for TTSVBVoiceModelStateTransition();
  v26 = v6;
  sub_2331BDBEC(v41 + *(v25 + 20), v6, type metadata accessor for TTSVBVoiceModel);
  sub_23317EAEC();
  v27 = TTSVBVoiceModel.trainingDuration.getter();
  if ((v28 & 1) == 0)
  {
    static TTSVBAnalytics.modelTrained(version:duration:trainingLocaleID:)(*&v6[*(v40 + 48)], *&v6[*(v40 + 48) + 8], *&v6[*(v40 + 56)], *&v6[*(v40 + 56) + 8], *&v27);
  }

  v29 = sub_23328CC9C();
  v44 = &v40;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v40 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2331DEBE8();
  v48 = *v33;
  MEMORY[0x28223BE20](v33);
  v35 = v34;
  TTSVBVoiceModel.url.getter(v32);
  v45 = 0;
  v46 = 0;
  v47 = -1;
  v36 = v43;
  _TTSVBFileManager.getOrCreateFile(in:named:problem:)(v32, 0xD000000000000012, 0x80000002332A8E70, &v45, v32);
  if (v36)
  {
    (*(v30 + 8))(v32, v29);
  }

  else
  {
    v43 = *(v30 + 8);
    v43(v32, v29);

    v48 = *v33;
    v37 = v48;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v38 = sub_2331B2AAC(&qword_27DDE1980, type metadata accessor for TTSVBVoiceModel);
    v39 = v37;
    _TTSVBFileManager.write<A>(item:toFile:problem:)(v26, v32, &v45, v40, v38);

    v43(v32, v29);
  }

  return sub_2331BDC54(v26, type metadata accessor for TTSVBVoiceModel);
}

uint64_t sub_23317DD4C(uint64_t a1)
{
  v3 = type metadata accessor for TTSVBVoiceModelStateTransition();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D6EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D83C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v16 = v18;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v19 = v18;
  LOBYTE(v18) = sub_23328D85C();
  result = (*(v13 + 8))(v16, v12);
  if ((v18 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v20 = sub_233225314();
  (*(v8 + 16))(v11, v20, v7);
  sub_2331BDBEC(a1, v6, type metadata accessor for TTSVBVoiceModelStateTransition);
  v21 = sub_23328D6CC();
  v22 = sub_23328DE4C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315138;
    v25 = &v6[*(v3 + 20)];
    v26 = *&v25[*(type metadata accessor for TTSVBVoiceModel() + 60)];
    v27 = TTSVBVoiceTrainingStatus.localizedTitle.getter();
    v29 = v28;
    sub_2331BDC54(v6, type metadata accessor for TTSVBVoiceModelStateTransition);
    v30 = sub_23311A8F4(v27, v29, &v32);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_233109000, v21, v22, "Voice model has moved to '%s' status. Performing cleanup tasks", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x23839CFD0](v24, -1, -1);
    MEMORY[0x23839CFD0](v23, -1, -1);
  }

  else
  {

    sub_2331BDC54(v6, type metadata accessor for TTSVBVoiceModelStateTransition);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23317E0C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_233144EEC(0, &qword_27DDE29C8, off_2789C3130);
  v3 = sub_23328DBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  v4 = sub_23328DBFC();

  v2(v3, v4);
}

void sub_23317E18C(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v74 = a2;
  v70 = a3;
  v6 = type metadata accessor for TTSVBVoiceModelStateTransition();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v57 - v11;
  v76 = type metadata accessor for TTSVBVoiceModel();
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v76);
  v62 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v57 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v67 = &v57 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v58 = a4;
    v77 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v23 = 0;
    v24 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v71 = MEMORY[0x277D84F90];
    v73 = *(v12 + 72);
    v66 = (v12 + 48);
    do
    {
      sub_2331BDBEC(v24, v21, type metadata accessor for TTSVBVoiceModel);
      v25 = static TTSVBLocalVoiceModelMO.findOrFetch(modelID:moc:)(&v21[*(v76 + 24)], v74);
      if (v25)
      {
        v26 = v25;
        MEMORY[0x28223BE20](v25);
        *(&v57 - 2) = v21;
        v27 = v75;
        v28 = sub_23317E9D8(sub_2331BDCD4, (&v57 - 4), v70);
        v75 = v27;
        if (v28)
        {
          v29 = v28;
          v30 = [v28 status];
          v31 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
          TTSVBCommonVoiceModelMO.status.setter(v30, v77, v31);
          v32 = [v29 status];
          v72 = v23;
          if (v32 == 7)
          {
            v65 = v31;
            v33 = [v26 trainingFinishedDate];
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
            v64 = &v57;
            v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v34 - 8);
            v37 = &v57 - v36;
            if (v33)
            {
              sub_23328CDDC();

              v38 = sub_23328CE1C();
              (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
              sub_233121E04(v37, &qword_27DDE1A18, &unk_233297730);
            }

            else
            {
              v39 = sub_23328CE1C();
              v40 = *(v39 - 8);
              v59 = v39;
              v60 = v40;
              (*(v40 + 56))(v37, 1, 1, v39);
              v41 = sub_233121E04(v37, &qword_27DDE1A18, &unk_233297730);
              v42 = *(v40 + 64);
              MEMORY[0x28223BE20](v41);
              v44 = &v57 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_23328CE0C();
              v45 = sub_23328CD9C();
              (*(v60 + 8))(v44, v59);
              [v26 setTrainingFinishedDate_];
            }

            v23 = v72;
            v31 = v65;
          }

          if ([v29 status] == 7)
          {
            v46 = 4;
          }

          else
          {
            v46 = [v29 trainingStatus];
          }

          TTSVBCommonVoiceModelMO.trainingStatus.setter(v46, v77, v31);
          [v29 normalizedProgressValue];
          [v26 setTrainingTaskProgress_];
          v47 = v68;
          (*((*MEMORY[0x277D85000] & *v26) + 0x58))(0);
          if ((*v66)(v47, 1, v76) == 1)
          {
            sub_233121E04(v47, &qword_27DDE2388, &qword_233297728);
          }

          else
          {
            v48 = v67;
            sub_2331BDDC4(v47, v67, type metadata accessor for TTSVBVoiceModel);
            v49 = v61;
            sub_2331BDBEC(v21, v61, type metadata accessor for TTSVBVoiceModel);
            v50 = v48;
            v51 = v62;
            sub_2331BDBEC(v50, v62, type metadata accessor for TTSVBVoiceModel);
            TTSVBVoiceModelStateTransition.init(previous:current:)(v49, v51, v69);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_2331B3130(0, v71[2] + 1, 1, v71, &qword_27DDE2A78, &qword_233299B78, type metadata accessor for TTSVBVoiceModelStateTransition);
            }

            v53 = v71[2];
            v52 = v71[3];
            v23 = v72;
            if (v53 >= v52 >> 1)
            {
              v71 = sub_2331B3130(v52 > 1, v53 + 1, 1, v71, &qword_27DDE2A78, &qword_233299B78, type metadata accessor for TTSVBVoiceModelStateTransition);
            }

            sub_2331BDC54(v67, type metadata accessor for TTSVBVoiceModel);
            v54 = v71;
            v71[2] = v53 + 1;
            sub_2331BDDC4(v69, v54 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v53, type metadata accessor for TTSVBVoiceModelStateTransition);
          }

          v55 = [v26 hasPersistentChangedValues];

          v23 |= v55;
        }

        else
        {
        }
      }

      sub_2331BDC54(v21, type metadata accessor for TTSVBVoiceModel);
      v24 += v73;
      --v22;
    }

    while (v22);
    if (v23)
    {
      NSManagedObjectContext.trySave()();
      a4 = v58;
      v75 = v56;
      if (v56)
      {

        return;
      }
    }

    else
    {
      a4 = v58;
    }
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
  }

  *a4 = v71;
}

void *sub_23317E9D8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23839BFC0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_23317EAEC()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v11 = v13;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  result = (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = sub_233225440();
  (*(v3 + 16))(v6, v15, v2);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "Will mirror local voices into cloud datastore", v18, 2u);
    MEMORY[0x23839CFD0](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = sub_233175210();
  if (result)
  {
    sub_23328D2BC();
  }

  v19 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v19)
  {
    goto LABEL_13;
  }

  LOBYTE(aBlock[0]) = 1;
  v20 = v19;
  v21 = sub_2331E511C(aBlock);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2331BCE74;
  *(v23 + 24) = v22;
  aBlock[4] = sub_2331BE574;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_519;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v1;

  [v25 performBlockAndWait_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_23317EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23328CE8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  (*(v11 + 32))(v14 + v13, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = v5;
  sub_233178950(a5, v14, a2, a3, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

void sub_23317F068(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23328D83C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!TTSVBProcessIsVoicebankingd())
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_23328D85C();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v11)
  {
    v16 = 1;
    v12 = v11;
    v13 = sub_2331E511C(&v16);

    MEMORY[0x28223BE20](v14);
    *(&v15 - 4) = a1;
    *(&v15 - 3) = v13;
    *(&v15 - 2) = v2;
    sub_23328DF5C();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_23317F254(unsigned int (**a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = v1;
  v52 = sub_23328D83C();
  v4 = *(v52 - 8);
  v5 = *(v4 + 8);
  MEMORY[0x28223BE20](v52);
  v51 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for TTSVBVoiceModel();
  v57 = *(v11 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v56 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = a1;
  v50 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore;
  v14 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v14)
  {
    v61 = 1;
    v15 = v14;
    v16 = sub_2331E511C(&v61);

    v17 = type metadata accessor for TTSVBCloudVoiceModelMO();
    v18 = sub_2331F88A8(v17, &protocol witness table for TTSVBCloudVoiceModelMO);
    v46 = v16;
    v20 = static DSO<>.fetch(in:config:)(v16, v18, v19, v17, &protocol witness table for TTSVBCloudVoiceModelMO);

    if (v20 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
    {
      v48 = v4;
      v58 = v2;
      if (i)
      {
        v22 = 0;
        v54 = v20 & 0xFFFFFFFFFFFFFF8;
        v55 = v20 & 0xC000000000000001;
        v2 = (v57 + 48);
        v23 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v55)
          {
            v24 = v23;
            v25 = MEMORY[0x23839BFC0](v22, v20);
          }

          else
          {
            if (v22 >= *(v54 + 16))
            {
              goto LABEL_31;
            }

            v24 = v23;
            v25 = *(v20 + 8 * v22 + 32);
          }

          v26 = v25;
          v4 = (v22 + 1);
          if (__OFADD__(v22, 1))
          {
            break;
          }

          (*((*MEMORY[0x277D85000] & *v25) + 0x60))(0);

          if ((*v2)(v10, 1, v11) == 1)
          {
            sub_233121E04(v10, &qword_27DDE2388, &qword_233297728);
            v23 = v24;
          }

          else
          {
            sub_2331BDDC4(v10, v56, type metadata accessor for TTSVBVoiceModel);
            v27 = v24;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_2331B3130(0, v24[2] + 1, 1, v24, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
            }

            v29 = v27[2];
            v28 = v27[3];
            v30 = v27;
            if (v29 >= v28 >> 1)
            {
              v30 = sub_2331B3130(v28 > 1, v29 + 1, 1, v27, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
            }

            *(v30 + 16) = v29 + 1;
            v23 = v30;
            sub_2331BDDC4(v56, v30 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v29, type metadata accessor for TTSVBVoiceModel);
          }

          ++v22;
          if (v4 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
LABEL_20:

        v55 = v23[2];
        if (!v55)
        {
LABEL_28:

          return;
        }

        v31 = 0;
        v54 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue;
        v59 = *MEMORY[0x277D85200];
        v32 = (v48 + 13);
        ++v48;
        v49 = v32;
        v47 = v23;
        while (v31 < v23[2])
        {
          v33 = v23 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v31;
          v10 = *(v11 + 24);
          v34 = sub_23328CE8C();
          v2 = &v45;
          v35 = *(v34 - 8);
          v36 = *(v35 + 64);
          MEMORY[0x28223BE20](v34);
          v4 = &v45 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v35 + 16))(v4, v33 + v10, v34);
          if (!TTSVBProcessIsVoicebankingd())
          {
            goto LABEL_33;
          }

          v56 = &v45;
          v20 = v11;
          v2 = v53;
          v38 = *(v53 + v54);
          v11 = v51;
          v10 = v52;
          *v51 = v38;
          (*v49)(v11, v59, v10);
          v39 = v38;
          LOBYTE(v38) = sub_23328D85C();
          (*v48)(v11, v10);
          if ((v38 & 1) == 0)
          {
            goto LABEL_34;
          }

          v40 = *(v2 + v50);
          if (!v40)
          {
            __break(1u);
            goto LABEL_37;
          }

          v60 = 1;
          v41 = v40;
          v42 = sub_2331E511C(&v60);

          v10 = &v45;
          MEMORY[0x28223BE20](v43);
          *(&v45 - 4) = v4;
          *(&v45 - 3) = v42;
          *(&v45 - 2) = v2;
          v44 = v58;
          sub_23328DF5C();
          v58 = v44;
          if (v44)
          {

            (*(v35 + 8))(v4, v34);
            return;
          }

          v11 = v20;
          ++v31;

          (*(v35 + 8))(v4, v34);
          v23 = v47;
          if (v55 == v31)
          {
            goto LABEL_28;
          }
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }
  }

LABEL_37:
  __break(1u);
}

void sub_23317F95C(uint64_t a1, void *a2, uint64_t a3)
{
  v217 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v234 = &v190 - v7;
  v235 = sub_23328D6EC();
  v219 = *(v235 - 8);
  v8 = *(v219 + 64);
  v9 = MEMORY[0x28223BE20](v235);
  v11 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v190 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v190 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v190 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v190 - v21;
  v23 = type metadata accessor for TTSVBCloudVoiceModelMO();
  v24 = a1;
  v25 = a1;
  v26 = a2;
  v27 = v236;
  v28 = static TTSVBCloudVoiceModelMO.requireModelWithID(_:moc:)(v25, a2);
  if (v27)
  {
    return;
  }

  v29 = v28;
  v232 = v20;
  v233 = v22;
  v230 = v24;
  v231 = v17;
  v206 = v14;
  v209 = v26;
  v207 = v11;
  v215 = 0;
  v30 = sub_2331B2AAC(&qword_27DDE2358, type metadata accessor for TTSVBCloudVoiceModelMO);
  v31 = v29;
  if ((TTSVBCommonVoiceModelMO.supportsFileBackedFutureSync.getter(v23, v30) & 1) == 0)
  {
    v212 = v29;
    v48 = sub_233225440();
    v49 = v219;
    v50 = v233;
    v51 = v235;
    (*(v219 + 16))(v233, v48, v235);
    v52 = sub_23328CE8C();
    v53 = *(v52 - 8);
    v54 = *(v53 + 64);
    MEMORY[0x28223BE20](v52);
    v56 = &v190 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v56, v230, v52);
    v57 = sub_23328D6CC();
    v58 = sub_23328DE1C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      v240 = v236;
      *v59 = 136315138;
      v60 = sub_23328CE3C();
      v62 = v61;
      (*(v53 + 8))(v56, v52);
      v63 = sub_23311A8F4(v60, v62, &v240);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_233109000, v57, v58, "Skipping file-backed future sync for model: %s. Model version does not use file backed futures", v59, 0xCu);
      v64 = v236;
      __swift_destroy_boxed_opaque_existential_0(v236);
      MEMORY[0x23839CFD0](v64, -1, -1);
      MEMORY[0x23839CFD0](v59, -1, -1);

      (*(v219 + 8))(v233, v235);
    }

    else
    {

      (*(v53 + 8))(v56, v52);
      (*(v49 + 8))(v50, v51);
    }

    sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
    v87 = sub_23328DFBC();
    v88 = v212;
    [v212 setIsDownloaded_];

    if ([v88 hasPersistentChangedValues])
    {
      NSManagedObjectContext.trySave()();
    }

    return;
  }

  v32 = sub_23328CC9C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v190 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v190 - v38;
  v40 = *((*MEMORY[0x277D85000] & *v29) + 0x60);
  v41 = v234;
  v42 = ((*MEMORY[0x277D85000] & *v31) + 96) & 0xFFFFFFFFFFFFLL | 0x7049000000000000;
  v40(0);
  v43 = type metadata accessor for TTSVBVoiceModel();
  if ((*(*(v43 - 8) + 48))(v41, 1, v43) == 1)
  {
    sub_233121E04(v41, &qword_27DDE2388, &qword_233297728);
    v240 = 0;
    v241 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000030, 0x80000002332A9130);
    v44 = sub_23328CE3C();
    MEMORY[0x23839B7E0](v44);

    MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332A9170);
    v45 = v240;
    v46 = v241;
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v45, v46, 0, 0, 0, v47);
    swift_willThrow();

    return;
  }

  v198 = &v190;
  v212 = v31;
  TTSVBVoiceModel.url.getter(v39);
  sub_2331BDC54(v41, type metadata accessor for TTSVBVoiceModel);
  v200 = v33;
  v65 = *(v33 + 32);
  v205 = v37;
  v229 = v32;
  v211 = v33 + 32;
  v210 = v65;
  v65(v37, v39, v32);
  v66 = sub_233225440();
  v67 = *(v219 + 16);
  v222 = v66;
  v223 = v219 + 16;
  v68 = v235;
  v221 = v67;
  (v67)(v232);
  v69 = sub_23328CE8C();
  v236 = &v190;
  v70 = *(v69 - 8);
  v71 = v70[8];
  MEMORY[0x28223BE20](v69);
  v72 = &v190 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v70[2];
  v192(v72, v230, v69);
  v73 = sub_23328D6CC();
  v74 = sub_23328DE1C();
  v75 = os_log_type_enabled(v73, v74);
  v197 = v69;
  v196 = v70;
  v195 = v71;
  v194 = v70 + 2;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v240 = v77;
    *v76 = 136315138;
    v78 = sub_23328CE3C();
    v80 = v79;
    v193 = v70[1];
    v193(v72, v69);
    v81 = sub_23311A8F4(v78, v80, &v240);
    v82 = v230;

    *(v76 + 4) = v81;
    _os_log_impl(&dword_233109000, v73, v74, "Beginning file-backed future sync for model: %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    v83 = v77;
    v84 = v235;
    MEMORY[0x23839CFD0](v83, -1, -1);
    MEMORY[0x23839CFD0](v76, -1, -1);

    v220 = *(v219 + 8);
    v85 = v220(v232, v84);
    v86 = v212;
  }

  else
  {

    v193 = v70[1];
    v193(&v190 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0), v69);
    v220 = *(v219 + 8);
    v85 = v220(v232, v68);
    v86 = v212;
    v84 = v68;
    v82 = v230;
  }

  MEMORY[0x28223BE20](v85);
  *(&v190 - 2) = v82;
  v89 = sub_233175210();
  v90 = v229;
  v91 = v231;
  if (v89)
  {
    MEMORY[0x28223BE20](v89);
    *(&v190 - 2) = sub_2331BD8F4;
    *(&v190 - 1) = (&v190 - 4);
    sub_23328D2BC();
  }

  v92 = *((*MEMORY[0x277D85000] & *v86) + 0x58);
  v93 = (v92)();
  if (v93 >> 62)
  {
LABEL_65:
    v191 = sub_23328E19C();
  }

  else
  {
    v191 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v242 = 0;
  v238 = 0;
  v239 = 0;
  v237 = 0;
  v95 = (v92)(v94);
  v92 = v95;
  if (v95 >> 62)
  {
    v97 = sub_23328E19C();
    if (v97)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v97 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v97)
    {
LABEL_21:
      v86 = 0;
      v201 = 0;
      v199 = 0;
      v204 = 0;
      v232 = 0;
      v227 = v92 & 0xC000000000000001;
      v213 = v92 & 0xFFFFFFFFFFFFFF8;
      v226 = (v200 + 56);
      v216 = (v200 + 48);
      v208 = (v200 + 8);
      v218 = v219 + 8;
      *&v96 = 136315138;
      v214 = v96;
      v224 = v97;
      v225 = v92;
      while (1)
      {
        if (v227)
        {
          v98 = MEMORY[0x23839BFC0](v86, v92);
        }

        else
        {
          if (v86 >= *(v213 + 16))
          {
            goto LABEL_64;
          }

          v98 = *(v92 + 8 * v86 + 32);
        }

        v236 = v98;
        if (__OFADD__(v86, 1))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v233 = v86 + 1;
        v99 = v84;
        v234 = &v190;
        MEMORY[0x28223BE20](v98);
        v101 = &v190 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
        v103 = (*(*(v102 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v102 - 8);
        v104 = &v190 - v103;
        v105 = [v236 fileFuture];
        if (!v105)
        {
          break;
        }

        v106 = [v105 fileURL];
        v107 = swift_unknownObjectRelease();
        MEMORY[0x28223BE20](v107);
        if (v106)
        {
          sub_23328CC4C();

          v108 = 0;
        }

        else
        {
          v108 = 1;
        }

        v90 = v229;
        (*v226)(&v190 - v103, v108, 1, v229);
        sub_233121D9C(&v190 - v103, &v190 - v103, &qword_27DDE19A0, &unk_233290360);
        v109 = (*v216)(&v190 - v103, 1, v90);
        v84 = v235;
        v91 = v231;
        if (v109 == 1)
        {
          goto LABEL_33;
        }

        v210(v101, v104, v90);
        v110 = sub_2331DEBE8();
        v240 = *v110;
        v111 = v240;
        v112 = _TTSVBFileManager.fileExists(_:)();

        if ((v112 & 1) == 0 || (v113 = [v236 relativePath]) == 0)
        {
          (*v208)(v101, v90);
          v84 = v235;
          v91 = v231;
          goto LABEL_41;
        }

        v114 = v113;
        v115 = sub_23328D98C();
        v117 = v116;

        v202 = &v190;
        MEMORY[0x28223BE20](v118);
        v120 = &v190 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
        v240 = v115;
        v241 = v117;
        v121 = sub_23328CB3C();
        v203 = &v190;
        v122 = *(v121 - 8);
        v123 = *(v122 + 64);
        MEMORY[0x28223BE20](v121);
        v125 = &v190 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v122 + 104))(v125, *MEMORY[0x277CC91E0], v121);
        sub_23311A294();
        sub_23328CC8C();
        (*(v122 + 8))(v125, v121);

        v240 = *v110;
        v126 = v240;
        LOBYTE(v114) = _TTSVBFileManager.fileExists(_:)();

        v127 = *v110;
        if (v114)
        {
          v240 = *v110;
          v128 = v127;
          v129 = _TTSVBFileManager.filesAtURLsAreEqual(_:_:)();

          v130 = *v208;
          v131 = v120;
          v90 = v229;
          (*v208)(v131, v229);
          v130(v101, v90);
          v82 = v230;
          if (v129)
          {
            v132 = v199 + 1;
            v84 = v235;
            v91 = v231;
            if (__OFADD__(v199, 1))
            {
              goto LABEL_87;
            }

            ++v199;
            v238 = v132;
          }

          else
          {
            v151 = v201 + 1;
            v84 = v235;
            v91 = v231;
            if (__OFADD__(v201, 1))
            {
              goto LABEL_86;
            }

            ++v201;
            v237 = v151;
          }

          v92 = v225;
        }

        else
        {
          v240 = *v110;
          v146 = v127;
          v147 = v215;
          _TTSVBFileManager.cloneFile(from:to:)(v101, v120);
          v215 = v147;
          v82 = v230;
          if (v147)
          {

            v154 = *v208;
            v155 = v229;
            (*v208)(v120, v229);
            v154(v101, v155);
            v154(v205, v155);
            return;
          }

          v148 = *v208;
          v149 = v120;
          v90 = v229;
          (*v208)(v149, v229);
          v148(v101, v90);
          v150 = v204 + 1;
          v92 = v225;
          if (__OFADD__(v204, 1))
          {
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            return;
          }

          ++v204;
          v239 = v150;
          v84 = v235;
          v91 = v231;
        }

        v145 = v224;
LABEL_49:
        ++v86;
        if (v233 == v145)
        {

          if (v232)
          {
            v152 = 0;
            v86 = v212;
            v153 = v201;
            goto LABEL_69;
          }

          v86 = v212;
          v153 = v201;
          goto LABEL_68;
        }
      }

      (*v226)(&v190 - v103, 1, 1, v90);
      v84 = v99;
LABEL_33:
      sub_233121E04(v104, &qword_27DDE19A0, &unk_233290360);
LABEL_41:
      v221(v91, v222, v84);
      v133 = v236;
      v134 = sub_23328D6CC();
      v135 = sub_23328DE2C();

      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v240 = v137;
        *v136 = v214;
        v138 = [v133 relativePath];
        if (v138)
        {
          v139 = v138;
          v140 = sub_23328D98C();
          v142 = v141;
        }

        else
        {
          v142 = 0xE600000000000000;
          v140 = 0x3E656E6F6E3CLL;
        }

        v143 = sub_23311A8F4(v140, v142, &v240);

        *(v136 + 4) = v143;
        _os_log_impl(&dword_233109000, v134, v135, "Future not downloaded: %s", v136, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v137);
        MEMORY[0x23839CFD0](v137, -1, -1);
        MEMORY[0x23839CFD0](v136, -1, -1);

        v91 = v231;
        v84 = v235;
        v220(v231, v235);
        v90 = v229;
        v82 = v230;
      }

      else
      {

        v220(v91, v84);
        v82 = v230;
      }

      v144 = v232 + 1;
      v145 = v224;
      v92 = v225;
      if (__OFADD__(v232, 1))
      {
        goto LABEL_63;
      }

      ++v232;
      v242 = v144;
      goto LABEL_49;
    }
  }

  v153 = 0;
  v199 = 0;
  v204 = 0;
LABEL_68:
  v232 = 0;
  v152 = v191 > 0;
LABEL_69:
  v156 = sub_23328DC6C();
  [v86 setIsDownloaded_];

  if ([v86 hasPersistentChangedValues] && (NSManagedObjectContext.trySave()(), (v215 = v157) != 0))
  {
    (*(v200 + 8))(v205, v90);
  }

  else
  {
    v201 = v153;
    v158 = v84;
    v159 = v207;
    v160 = v206;
    if (v204 > 0 && v152)
    {
      v221(v206, v222, v158);
      v161 = sub_23328D6CC();
      v162 = sub_23328DE1C();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 0;
        _os_log_impl(&dword_233109000, v161, v162, "Finished downloading all model files.", v163, 2u);
        MEMORY[0x23839CFD0](v163, -1, -1);
      }

      v220(v160, v158);
      v164 = *(v217 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);
      if (v164)
      {
        v165 = *(v217 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);

        sub_23328D2BC();
        sub_2331B9710(v164);
      }
    }

    v166 = (v221)(v159, v222, v158);
    v236 = &v190;
    MEMORY[0x28223BE20](v166);
    v168 = &v190 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
    v169 = v82;
    v170 = v82;
    v171 = v197;
    v192(v168, v170, v197);
    v172 = sub_23328D6CC();
    v173 = sub_23328DE1C();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v240 = v175;
      *v174 = 136316162;
      v176 = sub_23328CE3C();
      v178 = v177;
      v193(v168, v171);
      v179 = sub_23311A8F4(v176, v178, &v240);

      *(v174 + 4) = v179;
      *(v174 + 12) = 2048;
      *(v174 + 14) = v232;
      *(v174 + 22) = 2048;
      *(v174 + 24) = v204;
      *(v174 + 32) = 2048;
      *(v174 + 34) = v199;
      *(v174 + 42) = 2048;
      *(v174 + 44) = v201;
      _os_log_impl(&dword_233109000, v172, v173, "Finished file-backed future sync for model: %s. undownloaded=%ld cloned=%ld existingEqual=%ld existingUnequal=%ld", v174, 0x34u);
      __swift_destroy_boxed_opaque_existential_0(v175);
      v180 = v175;
      v90 = v229;
      MEMORY[0x23839CFD0](v180, -1, -1);
      MEMORY[0x23839CFD0](v174, -1, -1);

      v181 = v159;
      v182 = v235;
      v169 = v230;
    }

    else
    {

      v193(v168, v171);
      v181 = v159;
      v182 = v158;
    }

    v183 = v220(v181, v182);
    v184 = MEMORY[0x28223BE20](v183);
    *(&v190 - 6) = v169;
    *(&v190 - 5) = &v242;
    *(&v190 - 4) = &v239;
    *(&v190 - 3) = &v238;
    *(&v190 - 2) = &v237;
    v186 = *(v185 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);
    v187 = v212;
    v188 = v205;
    if (v186)
    {
      MEMORY[0x28223BE20](v184);
      *(&v190 - 2) = sub_2331BD974;
      *(&v190 - 1) = v189;

      sub_23328D2BC();
      sub_2331B9710(v186);
    }

    else
    {
    }

    (*(v200 + 8))(v188, v90);
  }
}

uint64_t sub_233181398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = v4;
  sub_233178950(a4, v8, a1, a2, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

void sub_23318143C(unint64_t a1)
{
  v2 = v1;
  v44 = sub_23328D83C();
  v4 = *(v44 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TTSVBVoice();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v45);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore;
  v11 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v11)
  {
    v51 = 1;
    v12 = v11;
    v13 = sub_2331E511C(&v51);

    v14 = type metadata accessor for TTSVBCloudVoiceMO();
    v15 = sub_2331F88A8(v14, &protocol witness table for TTSVBCloudVoiceMO);
    v36 = v13;
    v48 = v14;
    v17 = static DSO<>.fetch(in:config:)(v13, v15, v16, v14, &protocol witness table for TTSVBCloudVoiceMO);

    if (v17 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
    {
      v39 = v4;
      v42 = a1;
      v49 = v2;
      if (i)
      {
        v19 = 0;
        v46 = v17 & 0xFFFFFFFFFFFFFF8;
        v47 = v17 & 0xC000000000000001;
        v20 = MEMORY[0x277D84F90];
        v4 = i;
        while (1)
        {
          if (v47)
          {
            v2 = v17;
            v21 = MEMORY[0x23839BFC0](v19, v17);
          }

          else
          {
            if (v19 >= *(v46 + 16))
            {
              goto LABEL_29;
            }

            v2 = v17;
            v21 = *(v17 + 8 * v19 + 32);
          }

          v17 = v21;
          v22 = (v19 + 1);
          if (__OFADD__(v19, 1))
          {
            break;
          }

          TTSVBCommonVoiceMO.immutableVoice()(v48, &protocol witness table for TTSVBCloudVoiceMO, v10);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2331B3130(0, v20[2] + 1, 1, v20, &qword_27DDE19C8, &qword_233299AD0, type metadata accessor for TTSVBVoice);
          }

          a1 = v20[2];
          v23 = v20[3];
          if (a1 >= v23 >> 1)
          {
            v20 = sub_2331B3130(v23 > 1, a1 + 1, 1, v20, &qword_27DDE19C8, &qword_233299AD0, type metadata accessor for TTSVBVoice);
          }

          v20[2] = a1 + 1;
          sub_2331BDDC4(v10, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1, type metadata accessor for TTSVBVoice);
          ++v19;
          v17 = v2;
          if (v22 == v4)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
LABEL_18:

        v48 = v20[2];
        if (!v48)
        {
LABEL_26:

          return;
        }

        a1 = 0;
        v47 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue;
        LODWORD(v46) = *MEMORY[0x277D85200];
        v24 = (v39 + 13);
        ++v39;
        v40 = v24;
        v37 = v7;
        v38 = v20;
        while (a1 < v20[2])
        {
          v17 = v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1;
          v4 = *(v45 + 20);
          v25 = sub_23328CE8C();
          v2 = *(v25 - 8);
          v26 = *(v2 + 64);
          MEMORY[0x28223BE20](v25);
          v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v2 + 16))(v28, v4 + v17, v25);
          if (!TTSVBProcessIsVoicebankingd())
          {
            goto LABEL_31;
          }

          v7 = v42;
          v10 = v43;
          v29 = *(v42 + v47);
          *v43 = v29;
          v4 = v44;
          (*v40)(v10, v46, v44);
          v30 = v29;
          v17 = sub_23328D85C();
          (*v39)(v10, v4);
          if ((v17 & 1) == 0)
          {
            goto LABEL_32;
          }

          v31 = *(v7 + v41);
          if (!v31)
          {
            __break(1u);
            goto LABEL_35;
          }

          v50 = 1;
          v32 = v31;
          v17 = sub_2331E511C(&v50);

          v4 = &v36;
          MEMORY[0x28223BE20](v33);
          *(&v36 - 4) = v28;
          *(&v36 - 3) = v17;
          *(&v36 - 2) = v7;
          v34 = v49;
          sub_23328DF5C();
          v49 = v34;
          if (v34)
          {

            (*(v2 + 8))(v28, v25);
            return;
          }

          ++a1;

          v35 = *(v2 + 8);
          v2 += 8;
          v35(v28, v25);
          v7 = v37;
          v20 = v38;
          if (v48 == a1)
          {
            goto LABEL_26;
          }
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_233181A58(uint64_t a1, void *a2, uint64_t a3)
{
  v195 = a3;
  v5 = sub_23328D6EC();
  v211 = *(v5 - 8);
  v212 = v5;
  v6 = v211[8];
  v7 = MEMORY[0x28223BE20](v5);
  v194 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v185 = &v178 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v184 = &v178 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v178 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v178 - v16;
  v18 = type metadata accessor for TTSVBPath();
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v24 = (&v178 - v23);
  type metadata accessor for TTSVBCloudVoiceMO();
  v25 = v213;
  v26 = static TTSVBCloudVoiceMO.requireVoiceWithID(_:moc:)(a1, a2);
  if (!v25)
  {
    v209 = v24;
    v210 = v18;
    v207 = v17;
    v208 = v22;
    v192 = v15;
    v190 = a1;
    v191 = a2;
    v27 = *((*MEMORY[0x277D85000] & *v26) + 0x58);
    v28 = (*MEMORY[0x277D85000] & *v26) + 88;
    v183 = v26;
    v29 = *(v27() + 16);

    if (v29)
    {
      v206 = v28;
      v213 = 0;
      v205 = sub_2331DEBE8();
      v215[0] = *v205;
      v31 = v215[0];
      v32 = v209;
      swift_storeEnumTagMultiPayload();
      v33 = sub_23328CC9C();
      v34 = *(v33 - 8);
      v35 = *(v34 + 64);
      MEMORY[0x28223BE20](v33);
      v36 = v31;
      TTSVBPath.url.getter(&v178 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2331BDC54(v32, type metadata accessor for TTSVBPath);
      LOBYTE(v31) = _TTSVBFileManager.directoryExists(_:)();
      v209 = *(v34 + 8);
      v209(&v178 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v33);

      v37 = v192;
      v38 = v211;
      if (v31)
      {
        v39 = v213;
      }

      else
      {
        v204 = v33;
        v203 = v27;
        v40 = sub_233225440();
        v41 = v207;
        (v38[2])(v207, v40, v212);
        v42 = sub_23328D6CC();
        v43 = sub_23328DE1C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_233109000, v42, v43, "Recordings directory in container does not exist. Creating.", v44, 2u);
          MEMORY[0x23839CFD0](v44, -1, -1);
        }

        (v38[1])(v41, v212);
        v214 = *v205;
        v45 = v214;
        v46 = v208;
        v47 = swift_storeEnumTagMultiPayload();
        MEMORY[0x28223BE20](v47);
        v48 = &v178 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        v49 = v45;
        TTSVBPath.url.getter(v48);
        sub_2331BDC54(v46, type metadata accessor for TTSVBPath);
        v215[0] = 0;
        v215[1] = 0;
        v216 = -1;
        v50 = sub_233126E60();
        v51 = v213;
        _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v48, 0, v50 & 1, v215);
        v39 = v51;
        if (v51)
        {

          v209(v48, v204);
          return;
        }

        v209(v48, v204);

        v27 = v203;
      }
    }

    else
    {
      v37 = v192;
      v38 = v211;
      v39 = 0;
    }

    v52 = (v27)(v30);
    v54 = v52;
    v55 = v212;
    v188 = *(v52 + 16);
    if (v188)
    {
      v56 = 0;
      v181 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
      v208 = (v38 + 1);
      v209 = (v38 + 2);
      v57 = (v52 + 40);
      *&v53 = 136315138;
      v186 = v53;
      *&v53 = 136316162;
      v178 = v53;
      v189 = v52;
      do
      {
        if (v56 >= *(v54 + 16))
        {
          __break(1u);
          return;
        }

        v202 = v56;
        v59 = *(v57 - 1);
        v58 = *v57;
        v201 = v57;
        ObjectType = swift_getObjectType();
        v61 = *(v58 + 208);
        swift_unknownObjectRetain();
        v206 = v59;
        v210 = v61(ObjectType, v58);
        if (!v62)
        {

          type metadata accessor for TTSVBError(0);
          sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
          swift_allocError();
          TTSVBError.init(_:_:_:)(0xD000000000000052, 0x80000002332A8F80, v210, 0, 0, v170);
          swift_willThrow();
          swift_unknownObjectRelease();

          return;
        }

        v63 = v62;
        v64 = sub_233225440();
        v65 = *v209;
        v204 = v64;
        v205 = v65;
        (v65)(v37);

        v66 = sub_23328D6CC();
        v67 = sub_23328DE1C();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v221 = v69;
          *v68 = v186;
          v70 = v210;
          *(v68 + 4) = sub_23311A8F4(v210, v63, &v221);
          _os_log_impl(&dword_233109000, v66, v67, "Beginning file-backed future sync for sample: %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x23839CFD0](v69, -1, -1);
          MEMORY[0x23839CFD0](v68, -1, -1);

          v203 = *v208;
          v71 = (v203)(v37, v55);
        }

        else
        {

          v203 = *v208;
          v71 = (v203)(v37, v55);
          v70 = v210;
        }

        MEMORY[0x28223BE20](v71);
        *(&v178 - 2) = v70;
        *(&v178 - 1) = v63;
        v72 = sub_233175210();
        if (v72)
        {
          MEMORY[0x28223BE20](v72);
          *(&v178 - 2) = sub_2331BD498;
          *(&v178 - 1) = &v178 - 2;
          sub_23328D2BC();
        }

        v221 = 0;
        v219 = 0;
        v220 = 0;
        v218 = 0;
        v73 = type metadata accessor for TTSVBCloudVoiceSampleMO();
        v74 = static TTSVBCloudVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(v70, v63, v190, v191);
        if (v39)
        {
          swift_unknownObjectRelease();

          goto LABEL_73;
        }

        v75 = v74;
        v187 = v73;
        v207 = v63;
        v213 = 0;
        v76 = sub_23328CC9C();
        v198 = &v178;
        v77 = *(v76 - 8);
        v78 = *(v77 + 64);
        MEMORY[0x28223BE20](v76);
        v193 = &v178 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
        v196 = &v178;
        v80 = *(*(v79 - 8) + 64);
        v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v79 - 8);
        v211 = v75;
        v82 = [v75 audioFuture];
        v199 = v76;
        v200 = v77;
        v197 = v80;
        if (!v82)
        {

          v210 = *(v77 + 56);
          v210(&v178 - v81, 1, 1, v76);
          goto LABEL_28;
        }

        v83 = [v82 fileURL];
        v84 = swift_unknownObjectRelease();
        MEMORY[0x28223BE20](v84);
        if (v83)
        {
          sub_23328CC4C();

          v85 = 0;
        }

        else
        {
          v85 = 1;
        }

        v86 = v199;
        v87 = v200;
        v88 = *(v200 + 56);
        v88(&v178 - v81, v85, 1, v199);
        sub_233121D9C(&v178 - v81, &v178 - v81, &qword_27DDE19A0, &unk_233290360);
        v89 = *(v87 + 48);
        if (v89(&v178 - v81, 1, v86) == 1)
        {
          v210 = v88;

LABEL_28:
          sub_233121E04(&v178 - v81, &qword_27DDE19A0, &unk_233290360);
LABEL_29:
          v90 = v211;
          v55 = v212;
          v91 = v194;
          v92 = v197;
          (v205)(v194, v204, v212);
          v93 = v90;
          v94 = sub_23328D6CC();
          v95 = sub_23328DE2C();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v217 = v97;
            *v96 = v186;
            MEMORY[0x28223BE20](v97);
            v98 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
            v99 = &v178 - v98;
            v100 = [v93 audioFuture];
            if (!v100)
            {
              goto LABEL_47;
            }

            v207 = &v178;
            v211 = v97;
            v101 = [v100 fileURL];
            v102 = swift_unknownObjectRelease();
            v205 = &v178;
            MEMORY[0x28223BE20](v102);
            v103 = &v178 - v98;
            if (v101)
            {
              sub_23328CC4C();

              v104 = 0;
            }

            else
            {
              v104 = 1;
            }

            v137 = v200;
            v138 = v199;
            v210(v103, v104, 1, v199);
            sub_233121D9C(v103, v99, &qword_27DDE19A0, &unk_233290360);
            if ((*(v137 + 48))(v99, 1, v138) == 1)
            {
              sub_233121E04(v99, &qword_27DDE19A0, &unk_233290360);
              v97 = v211;
LABEL_47:
              v139 = 0xE600000000000000;
              v140 = 0x3E656E6F6E3CLL;
              v141 = v194;
            }

            else
            {
              v142 = sub_23328CB1C();
              v139 = v143;
              (*(v137 + 8))(v99, v138);
              v140 = v142;
              v141 = v194;
              v97 = v211;
            }

            v144 = sub_23311A8F4(v140, v139, &v217);

            *(v96 + 4) = v144;
            _os_log_impl(&dword_233109000, v94, v95, "Future not downloaded: %s", v96, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v97);
            MEMORY[0x23839CFD0](v97, -1, -1);
            MEMORY[0x23839CFD0](v96, -1, -1);

            swift_unknownObjectRelease();
            v105 = v141;
            v55 = v212;
          }

          else
          {

            swift_unknownObjectRelease();
            v105 = v91;
          }

          (v203)(v105, v55);
          v39 = v213;
          v37 = v192;
          v54 = v189;
          v145 = v202;
          goto LABEL_51;
        }

        v106 = v193;
        v182 = *(v87 + 32);
        v182(v193, &v178 - v81, v86);
        v196 = sub_2331DEBE8();
        v217 = *v196;
        v107 = v217;
        v108 = _TTSVBFileManager.fileExists(_:)();

        if ((v108 & 1) == 0)
        {
          v210 = v88;

          (*(v87 + 8))(v106, v86);
          goto LABEL_29;
        }

        v180 = &v178;
        v110 = MEMORY[0x28223BE20](v109);
        v111 = &v178 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v110);
        v113 = v86;
        v114 = &v178 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
        v115 = sub_2331B2AAC(&qword_27DDE2370, type metadata accessor for TTSVBCloudVoiceSampleMO);
        TTSVBCommonVoiceSampleMO.url.getter(v187, v115, v114);
        if (v89(v114, 1, v113) == 1)
        {
          swift_unknownObjectRelease();

          sub_233121E04(v114, &qword_27DDE19A0, &unk_233290360);
          (*(v200 + 8))(v193, v113);
          return;
        }

        v182(v111, v114, v113);
        v116 = v196;
        v217 = *v196;
        v117 = v217;
        v118 = _TTSVBFileManager.fileExists(_:)();

        v55 = v212;
        v120 = v213;
        v121 = v193;
        v179 = v111;
        if (v118)
        {
          v217 = *v116;
          v122 = v217;
          v123 = _TTSVBFileManager.filesAtURLsAreEqual(_:_:)();

          v125 = v195;
          if (v123)
          {
            v126 = v121;
            v127 = v184;
            (v205)(v184, v204, v55);
            v128 = sub_23328D6CC();
            v129 = sub_23328DE1C();
            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              *v130 = 0;
              _os_log_impl(&dword_233109000, v128, v129, "Will not clone audio-file futureURL to localURL. Files are equal", v130, 2u);
              MEMORY[0x23839CFD0](v130, -1, -1);
            }

            (v203)(v127, v55);
            v131 = *(v125 + v181);
            if (v131)
            {
              v132 = *(v125 + v181);

              sub_23328D2BC();
              sub_2331B9710(v131);
            }

            swift_beginAccess();
            v133 = 0;
            v134 = 0;
            v219 = 1;
            v135 = 1;
            v136 = v211;
            v121 = v126;
            goto LABEL_61;
          }

          v150 = MEMORY[0x28223BE20](v124);
          *(&v178 - 2) = v121;
          *(&v178 - 1) = v111;
          v151 = *(v125 + v181);
          if (v151)
          {
            MEMORY[0x28223BE20](v150);
            *(&v178 - 2) = sub_2331BD804;
            *(&v178 - 1) = v152;

            sub_23328D2BC();
            sub_2331B9710(v151);
          }

          swift_beginAccess();
          v135 = 0;
          v134 = 0;
          v218 = 1;
          v133 = 1;
        }

        else
        {
          v146 = MEMORY[0x28223BE20](v119);
          *(&v178 - 2) = v121;
          *(&v178 - 1) = v111;
          v147 = *(v195 + v181);
          if (v147)
          {
            MEMORY[0x28223BE20](v146);
            *(&v178 - 2) = sub_2331BD514;
            *(&v178 - 1) = v148;

            sub_23328D2BC();
            sub_2331B9710(v147);
          }

          v217 = *v116;
          v149 = v217;
          _TTSVBFileManager.cloneFile(from:to:)(v121, v111);
          if (v120)
          {
            v171 = v217;

            swift_unknownObjectRelease();
            v172 = *(v200 + 8);
            v173 = v121;
            v174 = v199;
            v172(v179, v199);
            v172(v173, v174);
            return;
          }

          v213 = 0;

          swift_beginAccess();
          v133 = 0;
          v135 = 0;
          v220 = 1;
          v134 = 1;
        }

        v136 = v211;
LABEL_61:
        if ([v136 hasPersistentChangedValues])
        {
          NSManagedObjectContext.trySave()();
          v213 = v153;
          if (v153)
          {
            swift_unknownObjectRelease();

            v175 = *(v200 + 8);
            v176 = v121;
            v177 = v199;
            v175(v179, v199);
            v175(v176, v177);
            return;
          }
        }

        v154 = v185;
        (v205)(v185, v204, v55);
        v155 = v207;

        v156 = sub_23328D6CC();
        v157 = sub_23328DE1C();

        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          v205 = v133;
          v159 = v158;
          v160 = swift_slowAlloc();
          v217 = v160;
          *v159 = v178;
          v161 = v210;
          *(v159 + 4) = sub_23311A8F4(v210, v155, &v217);
          *(v159 + 12) = 2048;
          *(v159 + 14) = 0;
          *(v159 + 22) = 2048;
          *(v159 + 24) = v134;
          *(v159 + 32) = 2048;
          *(v159 + 34) = v135;
          *(v159 + 42) = 2048;
          *(v159 + 44) = v205;
          _os_log_impl(&dword_233109000, v156, v157, "Finished file-backed future sync for sample: %s. undownloaded=%ld cloned=%ld existingEqual=%ld existingUnequal=%ld", v159, 0x34u);
          __swift_destroy_boxed_opaque_existential_0(v160);
          v162 = v160;
          v55 = v212;
          MEMORY[0x23839CFD0](v162, -1, -1);
          MEMORY[0x23839CFD0](v159, -1, -1);

          v163 = (v203)(v154, v55);
          v39 = v213;
        }

        else
        {

          v163 = (v203)(v154, v55);
          v39 = v213;
          v161 = v210;
        }

        v164 = MEMORY[0x28223BE20](v163);
        *(&v178 - 6) = v161;
        *(&v178 - 5) = v155;
        *(&v178 - 4) = &v221;
        *(&v178 - 3) = &v220;
        *(&v178 - 2) = &v219;
        *(&v178 - 1) = &v218;
        v165 = *(v195 + v181);
        v37 = v192;
        if (v165)
        {
          MEMORY[0x28223BE20](v164);
          *(&v178 - 2) = sub_2331BD5E0;
          *(&v178 - 1) = v166;

          sub_23328D2BC();

          swift_unknownObjectRelease();
          sub_2331B9710(v165);
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v54 = v189;
        v145 = v202;
        v167 = v193;
        v168 = *(v200 + 8);
        v169 = v199;
        v168(v179, v199);
        v168(v167, v169);
LABEL_51:
        v56 = v145 + 1;
        v57 = v201 + 2;
      }

      while (v188 != v56);
    }

LABEL_73:
  }
}

void sub_23318342C(void *a1)
{
  v167 = a1;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v2 = *(*(v163 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v163);
  v153 = v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v157 = (v137 - v5);
  v6 = type metadata accessor for TTSVBPath();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_23328D6EC();
  v10 = *(v168 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v168);
  v151 = v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v137 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  *&v156 = v137 - v18;
  MEMORY[0x28223BE20](v17);
  v166 = v137 - v19;
  v20 = sub_23328D83C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_23328D85C();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
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

  v154 = v6;
  v152 = v16;
  v27 = sub_233225314();
  v28 = *(v10 + 16);
  v159 = v27;
  v160 = v10 + 16;
  v158 = v28;
  (v28)(v166);
  v29 = sub_23328CE8C();
  v30 = *(v29 - 8);
  v31 = v30[8];
  MEMORY[0x28223BE20](v29);
  v147 = v32;
  v33 = v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v30[2];
  v146 = v30 + 2;
  v145 = v34;
  v34(v33, v167, v29);
  v35 = sub_23328D6CC();
  v36 = v10;
  v37 = sub_23328DE4C();
  v38 = os_log_type_enabled(v35, v37);
  v150 = v29;
  v149 = v30;
  v155 = v9;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v144 = v137;
    v40 = v39;
    v41 = swift_slowAlloc();
    v162 = v36;
    v42 = v41;
    v172 = v41;
    *v40 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
    v43 = sub_23328E51C();
    v45 = v44;
    v148 = v30[1];
    v148(v33, v29);
    v46 = sub_23311A8F4(v43, v45, &v172);
    v47 = v168;

    *(v40 + 4) = v46;
    _os_log_impl(&dword_233109000, v35, v37, "Will delete model and all related data with ID: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x23839CFD0](v42, -1, -1);
    MEMORY[0x23839CFD0](v40, -1, -1);

    v36 = v162;
    v48 = *(v162 + 8);
    v49 = v166;
    v50 = v47;
  }

  else
  {

    v148 = v30[1];
    v148(v33, v29);
    v48 = *(v36 + 8);
    v49 = v166;
    v50 = v168;
  }

  v161 = v48;
  v51 = (v48)(v49, v50);
  MEMORY[0x28223BE20](v51);
  v52 = v167;
  v137[-2] = v167;
  v53 = v165;
  v54 = sub_233175210();
  if (v54)
  {
    MEMORY[0x28223BE20](v54);
    v137[-2] = sub_2331BD338;
    v137[-1] = &v137[-4];
    sub_23328D2BC();
  }

  v55 = *(v53 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v55)
  {
    goto LABEL_26;
  }

  LOBYTE(v172) = 1;
  v56 = v55;
  v57 = sub_2331E511C(&v172);

  v58 = swift_allocBox();
  v60 = v59;
  v61 = type metadata accessor for TTSVBVoiceModel();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 56))(v60, 1, 1, v61);
  MEMORY[0x28223BE20](v63);
  v137[-4] = v52;
  v137[-3] = v57;
  v137[-2] = v58;
  v64 = v164;
  sub_23328DF5C();
  if (v64)
  {

    return;
  }

  v144 = v57;
  v165 = 0;
  v162 = v36;
  v166 = sub_23328CC9C();
  v163 = *(v166 - 1);
  v65 = *(v163 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = v66;
  v67 = v60;
  v68 = v137 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v141 = v67;
  v69 = v67;
  v70 = v157;
  sub_233121D34(v69, v157, &qword_27DDE2388, &qword_233297728);
  v73 = *(v62 + 48);
  v72 = v62 + 48;
  v71 = v73;
  if (v73(v70, 1, v61) == 1)
  {
    goto LABEL_27;
  }

  v142 = v58;
  v74 = v70;
  v75 = v155;
  sub_2331BDDC4(v74, v155, type metadata accessor for TTSVBVoiceModel);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v68);
  sub_2331BDC54(v75, type metadata accessor for TTSVBPath);
  v76 = v156;
  v158(v156, v159, v168);
  v77 = sub_23328D6CC();
  v78 = sub_23328DE4C();
  v79 = os_log_type_enabled(v77, v78);
  v143 = v137;
  v140 = v71;
  v139 = v72;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v171 = v81;
    *v80 = 136315138;
    swift_beginAccess();
    v82 = sub_23328CC6C();
    v84 = sub_23311A8F4(v82, v83, &v171);

    *(v80 + 4) = v84;
    _os_log_impl(&dword_233109000, v77, v78, "Deleting any staged trainings: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x23839CFD0](v81, -1, -1);
    MEMORY[0x23839CFD0](v80, -1, -1);
  }

  v161(v76, v168);
  v85 = sub_2331DEBE8();
  v173 = *v85;
  v86 = v173;
  v87 = swift_beginAccess();
  v157 = v137;
  MEMORY[0x28223BE20](v87);
  v89 = v137 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v163;
  v91 = v163 + 16;
  v92 = *(v163 + 16);
  v92(v89, v68, v166);
  v156 = xmmword_2332991D0;
  v169 = xmmword_2332991D0;
  v170 = 3;
  v93 = v86;
  v94 = v165;
  _TTSVBFileManager.removeItem(_:problem:)(v89, &v169);
  if (v94)
  {

    v95 = *(v90 + 8);
    v96 = v166;
    v95(v89, v166);

    v95(v68, v96);

    return;
  }

  v137[0] = v92;
  v137[1] = v91;
  v155 = v68;
  v165 = 0;
  v97 = *(v90 + 8);
  v154 = v90 + 8;
  v138 = v97;
  v97(v89, v166);

  v98 = v153;
  sub_233121D34(v141, v153, &qword_27DDE2388, &qword_233297728);
  v99 = v140(v98, 1, v61);
  if (v99 == 1)
  {
    goto LABEL_28;
  }

  v100 = v164;
  MEMORY[0x28223BE20](v99);
  TTSVBVoiceModel.url.getter(v137 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2331BDC54(v98, type metadata accessor for TTSVBVoiceModel);
  v101 = v155;
  (*(v90 + 40))(v155, v137 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0), v166);
  v102 = v152;
  v158(v152, v159, v168);
  v103 = sub_23328D6CC();
  v104 = sub_23328DE4C();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v169 = v106;
    *v105 = 136315138;
    v107 = sub_23328CC6C();
    v109 = sub_23311A8F4(v107, v108, &v169);

    *(v105 + 4) = v109;
    v110 = v168;
    _os_log_impl(&dword_233109000, v103, v104, "Deleting model: %s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v106);
    MEMORY[0x23839CFD0](v106, -1, -1);
    v111 = v105;
    v100 = v164;
    MEMORY[0x23839CFD0](v111, -1, -1);

    v112 = v102;
    v113 = v110;
  }

  else
  {

    v112 = v102;
    v113 = v168;
  }

  v114 = (v161)(v112, v113);
  v173 = *v85;
  v115 = v173;
  MEMORY[0x28223BE20](v114);
  v116 = v137 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117(v116, v101, v166);
  v169 = v156;
  v170 = 3;
  v118 = v115;
  v119 = v165;
  _TTSVBFileManager.removeItem(_:problem:)(v116, &v169);
  v120 = v138;
  if (v119)
  {

    v121 = v166;
    v120(v116, v166);

    v120(v101, v121);
  }

  else
  {
    v165 = 0;
    v138(v116, v166);

    v122 = v151;
    v123 = (v158)(v151, v159, v168);
    MEMORY[0x28223BE20](v123);
    v125 = v137 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
    v126 = v150;
    v145(v125, v167, v150);
    v127 = sub_23328D6CC();
    v128 = sub_23328DE4C();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v167 = v137;
      v131 = v130;
      *&v169 = v130;
      *v129 = 136315138;
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
      v132 = sub_23328E51C();
      v133 = v122;
      v135 = v134;
      v148(v125, v126);
      v136 = sub_23311A8F4(v132, v135, &v169);

      *(v129 + 4) = v136;
      _os_log_impl(&dword_233109000, v127, v128, "Finished deleting model and all related data with ModelID: %s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x23839CFD0](v131, -1, -1);
      MEMORY[0x23839CFD0](v129, -1, -1);

      v161(v133, v168);
      v138(v155, v166);
    }

    else
    {

      v148(v125, v126);
      v161(v122, v168);
      v120(v155, v166);
    }
  }
}

void sub_23318459C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_23328D6EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v38 = a3;
  v19 = swift_projectBox();
  type metadata accessor for TTSVBLocalVoiceModelMO();
  v20 = static TTSVBLocalVoiceModelMO.requireModelWithID(_:moc:)(a1, a2);
  if (!v3)
  {
    v21 = v20;
    v37 = 0;
    (*((*MEMORY[0x277D85000] & *v20) + 0x58))(0);
    swift_beginAccess();
    sub_2331BD410(v18, v19, &qword_27DDE2388, &qword_233297728);
    v22 = sub_233225314();
    (*(v8 + 16))(v11, v22, v7);

    v23 = sub_23328D6CC();
    v24 = sub_23328DE4C();
    if (os_log_type_enabled(v23, v24))
    {
      v35 = v7;
      v36 = v11;
      v34 = v8;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      v27 = v25;
      *v25 = 136315138;
      swift_beginAccess();
      sub_233121D34(v19, v16, &qword_27DDE2388, &qword_233297728);
      v28 = type metadata accessor for TTSVBVoiceModel();
      v29 = (*(*(v28 - 8) + 48))(v16, 1, v28);

      if (v29 == 1)
      {
        __break(1u);
        return;
      }

      v30 = *v16;
      v31 = v16[1];

      sub_2331BDC54(v16, type metadata accessor for TTSVBVoiceModel);
      v32 = sub_23311A8F4(v30, v31, &v39);

      *(v27 + 1) = v32;
      _os_log_impl(&dword_233109000, v23, v24, "Deleting model for voice=%s from store", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23839CFD0](v26, -1, -1);
      MEMORY[0x23839CFD0](v27, -1, -1);

      (*(v34 + 8))(v36, v35);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    [a2 deleteObject_];
    NSManagedObjectContext.trySave()();
  }
}

uint64_t TTSVBVoiceBankingManager.importModel(fromDirectory:overrideLocaleID:addingToVoice:completion:)(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v98 = a4;
  v102 = a1;
  v11 = sub_23328D7CC();
  v103 = *(v11 - 8);
  v12 = *(v103 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_23328D80C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v82[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_23328D6EC();
  v100 = *(v20 - 8);
  v101 = v20;
  v21 = *(v100 + 8);
  MEMORY[0x28223BE20](v20);
  v99 = &v82[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (TTSVBIsInternalUIBuild())
  {
    v96 = a2;
    v97 = v6;
    v95 = a6;
    v23 = sub_233225314();
    (*(v100 + 2))(v99, v23, v101);
    v24 = sub_23328CE8C();
    v86 = v82;
    v25 = *(v24 - 8);
    v26 = v25[8];
    MEMORY[0x28223BE20](v24);
    v92 = v27;
    v28 = &v82[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v29 = v25[2];
    v30 = v98;
    v85 = v31;
    v90 = v29;
    v91 = v25 + 2;
    (v29)(v28, v98);
    v32 = sub_23328CC9C();
    v84 = v82;
    v33 = *(v32 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x28223BE20](v32);
    v89 = v35;
    v36 = &v82[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v37 = *(v33 + 16);
    v88 = v33 + 16;
    v87 = v37;
    v37(v36, v102, v32);

    v38 = sub_23328D6CC();
    v39 = sub_23328DE4C();

    v40 = os_log_type_enabled(v38, v39);
    v103 = a3;
    v93 = v25;
    v94 = a5;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315650;
      v83 = v39;
      v43 = sub_23328CE3C();
      v45 = v44;
      v46 = v25[1];
      v47 = v85;
      v46(v28, v85);
      v48 = sub_23311A8F4(v43, v45, aBlock);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2080;
      v49 = v96;
      if (v103)
      {
        v50 = v96;
      }

      else
      {
        v50 = 0x3E6C696E3CLL;
      }

      if (v103)
      {
        v51 = v103;
      }

      else
      {
        v51 = 0xE500000000000000;
      }

      v52 = sub_23311A8F4(v50, v51, aBlock);

      *(v41 + 14) = v52;
      *(v41 + 22) = 2080;
      v53 = sub_23328CC6C();
      v55 = v54;
      (*(v33 + 8))(v36, v32);
      v56 = sub_23311A8F4(v53, v55, aBlock);

      *(v41 + 24) = v56;
      _os_log_impl(&dword_233109000, v38, v83, "Will import model, adding to voice '%s' overrideLocaleID=%s with data from: %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v42, -1, -1);
      v57 = v41;
      v30 = v98;
      a3 = v103;
      MEMORY[0x23839CFD0](v57, -1, -1);

      v58 = (*(v100 + 1))(v99, v101);
      v59 = v47;
    }

    else
    {

      (*(v33 + 8))(v36, v32);
      v59 = v85;
      (v25[1])(v28, v85);
      v58 = (*(v100 + 1))(v99, v101);
      v49 = v96;
    }

    v101 = v33;
    MEMORY[0x28223BE20](v58);
    *&v82[-32] = v30;
    *&v82[-24] = v49;
    v63 = v102;
    *&v82[-16] = a3;
    *&v82[-8] = v63;
    v64 = sub_233175210();
    if (v64)
    {
      MEMORY[0x28223BE20](v64);
      *&v82[-16] = sub_2331B345C;
      *&v82[-8] = &v82[-48];
      sub_23328D2BC();
    }

    v100 = v82;
    v65 = v89;
    MEMORY[0x28223BE20](v64);
    v66 = &v82[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v67 = v87(v66, v63, v32);
    v102 = v82;
    v99 = v32;
    v68 = v92;
    MEMORY[0x28223BE20](v67);
    v69 = &v82[-((v68 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v90(v69, v30, v59);
    v70 = v101;
    v71 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v72 = v65 + v71 + 7;
    v73 = v59;
    v74 = v72 & 0xFFFFFFFFFFFFFFF8;
    v75 = v93;
    v76 = (*(v93 + 80) + (v72 & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v93 + 80);
    v77 = swift_allocObject();
    v78 = v97;
    *(v77 + 16) = v97;
    (*(v70 + 32))(v77 + v71, v66, v99);
    v79 = (v77 + v74);
    v80 = v103;
    *v79 = v96;
    v79[1] = v80;
    (v75[4])(v77 + v76, v69, v73);

    v81 = v78;
    sub_233178950(sub_2331B358C, v77, v94, v95, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
  }

  else
  {
    v102 = *&v6[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue];
    v60 = swift_allocObject();
    *(v60 + 16) = a5;
    *(v60 + 24) = a6;
    aBlock[4] = sub_2331B3430;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_58;
    v61 = _Block_copy(aBlock);

    sub_23328D7DC();
    v104 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v19, v14, v61);
    _Block_release(v61);
    (*(v103 + 8))(v14, v11);
    (*(v16 + 8))(v19, v15);
  }
}

void sub_233185384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v63 = a2;
  v64 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v55 - v11;
  v13 = sub_23328D83C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  v20 = sub_23328D85C();
  (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v21)
  {
LABEL_13:
    __break(1u);
    (*(a1 + 8))(v17, v20);
    __break(1u);
    return;
  }

  LOBYTE(v65[0]) = 1;
  v22 = v21;
  v23 = sub_2331E511C(v65);

  v24 = sub_2331DEBE8();
  v65[0] = *v24;
  v25 = v65[0];
  sub_2331E143C(a1);
  v26 = v65[0];
  if (v5)
  {
  }

  else
  {
    v56 = v12;
    v59 = v23;
    v60 = v6;
    v62 = a3;

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v58 = v55;
    v28 = *(*(v27 - 8) + 64);
    MEMORY[0x28223BE20](v27 - 8);
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
    v65[0] = *v24;
    v30 = v65[0];
    v61 = a1;
    _TTSVBFileManager.getFileIfExists(in:named:)(0xD000000000000012, 0x80000002332A8E70, v55 - v29);

    MEMORY[0x28223BE20](v31);
    v57 = v55 - v29;
    sub_233121D34(v55 - v29, v55 - v29, &qword_27DDE19A0, &unk_233290360);
    v32 = sub_23328CC9C();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 48))(v55 - v29, 1, v32);
    if (v34 == 1)
    {
      v35 = type metadata accessor for TTSVBVoiceModel();
      v36 = v56;
      v37 = (*(*(v35 - 8) + 56))(v56, 1, 1, v35);
    }

    else
    {
      v55[0] = v55;
      v55[1] = v55;
      v40 = *(v33 + 64);
      MEMORY[0x28223BE20](v34);
      v42 = v55 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 32))(v42, v55 - v29, v32);
      v43 = *sub_2331DEBE8();
      v67 = v43;
      v44 = type metadata accessor for TTSVBVoiceModel();
      v65[0] = 0;
      v65[1] = 0;
      v66 = -1;
      v45 = sub_2331B2AAC(&qword_27DDE1978, type metadata accessor for TTSVBVoiceModel);
      v46 = v43;
      v36 = v56;
      _TTSVBFileManager.load<A>(_:fromFile:problem:)(v44, v42, v65, v44, v45, v56);

      (*(*(v44 - 8) + 56))(v36, 0, 1, v44);
      v37 = (*(v33 + 8))(v42, v32);
    }

    v38 = v62;
    v39 = v63;
    v47 = v61;
    if (v62)
    {
      v48 = type metadata accessor for TTSVBVoiceModel();
      v37 = (*(*(v48 - 8) + 48))(v36, 1, v48);
      if (!v37)
      {
        v49 = (v36 + *(v48 + 56));
        v50 = v49[1];
        *v49 = v39;
        v49[1] = v38;
      }
    }

    MEMORY[0x28223BE20](v37);
    v51 = v59;
    v55[-6] = v64;
    v55[-5] = v51;
    v55[-4] = v36;
    v55[-3] = v39;
    v55[-2] = v38;
    v55[-1] = v47;
    v52 = v51;
    sub_23328DF5C();
    sub_23317EAEC();
    v53 = [objc_opt_self() defaultCenter];
    v54 = *sub_23316943C();
    [v53 postNotificationName:v54 object:0];

    sub_233121E04(v57, &qword_27DDE19A0, &unk_233290360);
    sub_233121E04(v36, &qword_27DDE2388, &qword_233297728);
  }
}

void sub_233185A3C(uint64_t a1, void *a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v132 = a4;
  v133 = a6;
  v136 = a3;
  v137 = a5;
  v8 = sub_23328D6EC();
  v9 = *(v8 - 8);
  v139 = v8;
  v140 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v131 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v138 = &v119 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v119 - v15;
  v17 = type metadata accessor for TTSVBVoiceModel();
  v134 = *(v17 - 8);
  v135 = v17;
  v18 = v134[8];
  MEMORY[0x28223BE20](v17);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = (&v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v119 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v119 - v29;
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v143);
  v141 = v143;
  v142 = v144;
  v31 = a2;
  v32 = v145;
  v33 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v141);
  if (v32)
  {
    sub_2331220AC(v141, *(&v141 + 1), v142);
  }

  else
  {
    v34 = v33;
    v129 = v25;
    v130 = v20;
    v127 = v16;
    v128 = 0;
    sub_2331220AC(v141, *(&v141 + 1), v142);
    v35 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v126 = v31;
    v36 = NSManagedObjectContext.insertDSO<A>(_:)(v35, v35, &protocol witness table for TTSVBLocalVoiceModelMO);
    v145 = v34;
    [v36 setVoice_];
    v37 = v136;
    sub_233121D34(v136, v30, &qword_27DDE2388, &qword_233297728);
    v38 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
    TTSVBCommonVoiceModelMO.update(withInfo:)(v30, v35, v38);
    sub_233121E04(v30, &qword_27DDE2388, &qword_233297728);
    sub_233121D34(v37, v28, &qword_27DDE2388, &qword_233297728);
    v39 = v135;
    v136 = v134[6];
    v40 = (v136)(v28, 1, v135);
    sub_233121E04(v28, &qword_27DDE2388, &qword_233297728);
    if (v40 == 1 && v137)
    {
      v41 = sub_23328D95C();
      [v36 setTrainingLocaleID_];
    }

    TTSVBCommonVoiceModelMO.status.setter(7, v35, v38);
    TTSVBCommonVoiceModelMO.trainingStatus.setter(4, v35, v38);
    sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
    v42 = sub_23328DFBC();
    [v36 setIsDownloaded_];

    v43 = v129;
    (*((*MEMORY[0x277D85000] & *v36) + 0x58))(0);
    v44 = (v136)(v43, 1, v39);
    v45 = v139;
    v46 = v140;
    v47 = v138;
    if (v44 == 1)
    {
      sub_233121E04(v43, &qword_27DDE2388, &qword_233297728);
      v48 = sub_233225314();
      v49 = v127;
      (*(v46 + 16))(v127, v48, v45);
      v50 = sub_23328D6CC();
      v51 = sub_23328DE4C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_233109000, v50, v51, "Cannot import model. url could not be determined", v52, 2u);
        MEMORY[0x23839CFD0](v52, -1, -1);
      }

      (*(v46 + 8))(v49, v45);
      type metadata accessor for TTSVBError(0);
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(0xD000000000000030, 0x80000002332A8E90, 0, 0, 0, v53);
      swift_willThrow();
    }

    else
    {
      v134 = v36;
      sub_2331BDDC4(v43, v130, type metadata accessor for TTSVBVoiceModel);
      v54 = v45;
      v55 = sub_23328CC9C();
      v136 = &v119;
      v56 = *(v55 - 8);
      isa = v56[8].isa;
      MEMORY[0x28223BE20](v55);
      v58 = &v119 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBVoiceModel.url.getter(v58);
      v59 = sub_233225314();
      v60 = *(v46 + 16);
      v122 = v59;
      v123 = (v46 + 16);
      v121 = v60;
      v61 = (v60)(v47);
      v129 = &v119;
      v127 = isa;
      MEMORY[0x28223BE20](v61);
      v62 = v47;
      v63 = v58;
      v64 = v56[2].isa;
      v137 = v58;
      v65 = v55;
      v125 = v56 + 2;
      v124 = v64;
      v64(v58, v58, v55);
      v66 = sub_23328D6CC();
      v67 = sub_23328DE4C();
      v68 = os_log_type_enabled(v66, v67);
      v132 = v56;
      if (v68)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v143 = v70;
        *v69 = 136315138;
        v71 = sub_23328CC6C();
        v73 = v72;
        v135 = v56[1].isa;
        v135(v63, v65);
        v74 = sub_23311A8F4(v71, v73, &v143);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_233109000, v66, v67, "Will create target directory for new model '%s'", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x23839CFD0](v70, -1, -1);
        v75 = v69;
        v76 = v139;
        MEMORY[0x23839CFD0](v75, -1, -1);

        v77 = v138;
        v138 = *(v140 + 8);
        (v138)(v77, v76);
        v78 = v65;
      }

      else
      {

        v135 = v56[1].isa;
        v135(v63, v55);
        v138 = *(v140 + 8);
        (v138)(v62, v54);
        v78 = v55;
        v76 = v54;
      }

      v79 = sub_2331DEBE8();
      *&v141 = *v79;
      v143 = 0uLL;
      v144 = -1;
      v80 = v141;
      v81 = sub_233126E60();
      v82 = v137;
      v83 = v128;
      _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v137, 0, v81 & 1, &v143);
      if (v83)
      {

        v135(v82, v78);
        sub_2331BDC54(v130, type metadata accessor for TTSVBVoiceModel);
      }

      else
      {
        v128 = 0;
        v129 = v79;

        v84 = v131;
        v85 = v121(v131, v122, v76);
        v123 = &v119;
        v86 = v127;
        MEMORY[0x28223BE20](v85);
        v87 = &v119 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
        v88 = v124;
        v89 = (v124)(v87);
        v122 = &v119;
        MEMORY[0x28223BE20](v89);
        v90 = v82;
        v91 = v87;
        v88(v87, v90, v78);
        v92 = v84;
        v93 = sub_23328D6CC();
        v94 = v76;
        v95 = sub_23328DE4C();
        v96 = os_log_type_enabled(v93, v95);
        v120 = v78;
        if (v96)
        {
          v97 = swift_slowAlloc();
          v125 = v93;
          v98 = v97;
          v127 = swift_slowAlloc();
          *&v143 = v127;
          *v98 = 136315394;
          v99 = sub_23328CC6C();
          v101 = v100;
          v102 = v87;
          v103 = v135;
          v135(v102, v78);
          v104 = sub_23311A8F4(v99, v101, &v143);

          *(v98 + 4) = v104;
          *(v98 + 12) = 2080;
          v105 = sub_23328CC6C();
          v107 = v106;
          v103(v91, v78);
          v108 = sub_23311A8F4(v105, v107, &v143);
          v109 = v133;

          *(v98 + 14) = v108;
          v110 = v125;
          _os_log_impl(&dword_233109000, v125, v95, "Will copy import model '%s' to '%s'", v98, 0x16u);
          v111 = v127;
          swift_arrayDestroy();
          MEMORY[0x23839CFD0](v111, -1, -1);
          MEMORY[0x23839CFD0](v98, -1, -1);

          (v138)(v131, v139);
        }

        else
        {

          v112 = v135;
          v135(v87, v78);
          v112(v87, v78);
          (v138)(v92, v94);
          v109 = v133;
        }

        *&v141 = *v129;
        v143 = 0uLL;
        v144 = -1;
        v113 = v141;
        v114 = v137;
        v115 = v128;
        _TTSVBFileManager.copyContentsOf(_:to:problem:)(v109, v137, &v143);
        v116 = v130;
        v117 = v134;
        if (v115)
        {

          v118 = v114;
        }

        else
        {

          NSManagedObjectContext.trySave()();
          v118 = v137;
        }

        v135(v118, v120);
        sub_2331BDC54(v116, type metadata accessor for TTSVBVoiceModel);
      }
    }
  }
}

void sub_2331867A4()
{
  v1 = sub_23328D6EC();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = sub_23328D83C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v0;
  v13 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_23328D85C();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = sub_233225314();
  v35 = v2[2];
  v35(v7, v16, v1);
  v17 = sub_23328D6CC();
  v18 = sub_23328DE4C();
  v19 = v1;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_233109000, v17, v18, "Will attempt to repair local datastore with on-disk models if needed", v20, 2u);
    MEMORY[0x23839CFD0](v20, -1, -1);
  }

  v21 = v2[1];
  v21(v7, v19);
  v41 = *sub_2331DEBE8();
  v22 = v41;
  v23 = sub_2331DFDEC();

  v40 = 0;
  if (!v23[2])
  {

    goto LABEL_9;
  }

  v24 = *(v37 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v24)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v39 = 1;
  v25 = v24;
  v26 = sub_2331E511C(&v39);

  MEMORY[0x28223BE20](v27);
  *(&v34 - 4) = v23;
  *(&v34 - 3) = v26;
  *(&v34 - 2) = &v40;
  v28 = v38;
  sub_23328DF5C();

  if (v28)
  {
    return;
  }

  v38 = 0;
LABEL_9:
  v29 = v36;
  v35(v36, v16, v19);
  v30 = sub_23328D6CC();
  v31 = sub_23328DE4C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_233109000, v30, v31, "Finished repairing datastore with on-disk models", v32, 2u);
    MEMORY[0x23839CFD0](v32, -1, -1);
  }

  v21(v29, v19);
  if (v40 == 1)
  {
    sub_23317EAEC();
    v33 = [objc_opt_self() defaultCenter];
    [v33 postNotificationName:*sub_23316943C() object:0];
  }
}

void sub_233186C18(uint64_t a1, void *a2, _BYTE *a3)
{
  v122 = a3;
  v137 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v121 = &v118[-v6];
  v154 = sub_23328D6EC();
  v7 = *(v154 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v154);
  v134 = &v118[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v118[-v12];
  MEMORY[0x28223BE20](v11);
  v139 = &v118[-v14];
  v120 = type metadata accessor for TTSVBVoiceModel();
  v15 = *(v120 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v120);
  v133 = &v118[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v132 = &v118[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v131 = &v118[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v118[-v23];
  v123 = type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation(0);
  v25 = *(v123 - 1);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v123);
  v130 = &v118[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v129 = &v118[-v29];
  v30 = *(a1 + 16);
  if (v30)
  {
    v31 = v123[7];
    v128 = v123[6];
    v127 = v31;
    v136 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v32 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v126 = *(v25 + 72);
    v149 = (v7 + 8);
    v150 = (v7 + 16);
    v119 = (v15 + 56);
    *&v33 = 136315394;
    v125 = v33;
    v138 = v24;
    v135 = v13;
    do
    {
      v147 = v32;
      v36 = v129;
      sub_2331BDBEC(v32, v129, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
      sub_2331BDBEC(v36, v24, type metadata accessor for TTSVBVoiceModel);
      v37 = sub_23328CE8C();
      v146 = v118;
      v38 = *(*(v37 - 8) + 64);
      MEMORY[0x28223BE20](v37);
      v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
      v151 = v40;
      v42 = (v40 + 16);
      v41 = *(v40 + 16);
      v145 = &v118[-v39];
      v43 = v41();
      v144 = v118;
      MEMORY[0x28223BE20](v43);
      v152 = v37;
      v153 = &v118[-v39];
      v141 = v41;
      v142 = v42;
      v41();
      v44 = sub_233225314();
      v45 = *v150;
      v46 = v139;
      v140 = v44;
      v45(v139);
      v47 = v131;
      sub_2331BDBEC(v24, v131, type metadata accessor for TTSVBVoiceModel);
      v48 = v130;
      sub_2331BDDC4(v36, v130, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
      v49 = sub_23328D6CC();
      v50 = sub_23328DE4C();
      v51 = os_log_type_enabled(v49, v50);
      v148 = v30;
      if (v51)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v155 = v53;
        *v52 = v125;
        v124 = v45;
        v54 = *v47;
        v55 = v47[1];

        sub_2331BDC54(v47, type metadata accessor for TTSVBVoiceModel);
        v56 = sub_23311A8F4(v54, v55, &v155);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        v57 = &v48[v123[5]];
        v58 = sub_23328CC6C();
        v60 = v59;
        sub_2331BDC54(v48, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
        v61 = sub_23311A8F4(v58, v60, &v155);
        v45 = v124;

        *(v52 + 14) = v61;
        _os_log_impl(&dword_233109000, v49, v50, "Found on-disk model: %s - %s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v53, -1, -1);
        v62 = v52;
        v24 = v138;
        MEMORY[0x23839CFD0](v62, -1, -1);

        v63 = *v149;
        v64 = v139;
      }

      else
      {

        sub_2331BDC54(v48, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
        sub_2331BDC54(v47, type metadata accessor for TTSVBVoiceModel);
        v63 = *v149;
        v64 = v46;
      }

      v143 = v63;
      v63(v64, v154);
      v65 = v134;
      v66 = v133;
      v67 = v132;
      v68 = v153;
      v69 = static TTSVBLocalVoiceModelMO.findOrFetch(modelID:moc:)(v153, v137);
      v70 = v140;
      if (v69)
      {

        (v45)(v135, v70, v154);
        v71 = sub_2331BDBEC(v24, v67, type metadata accessor for TTSVBVoiceModel);
        MEMORY[0x28223BE20](v71);
        v72 = &v118[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v73 = v152;
        v141(v72, v68, v152);
        v74 = sub_23328D6CC();
        v75 = v67;
        v76 = sub_23328DE4C();
        if (os_log_type_enabled(v74, v76))
        {
          v77 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v155 = v141;
          *v77 = v125;
          v142 = v118;
          v78 = *v67;
          v79 = v67[1];

          sub_2331BDC54(v67, type metadata accessor for TTSVBVoiceModel);
          v80 = sub_23311A8F4(v78, v79, &v155);

          *(v77 + 4) = v80;
          *(v77 + 12) = 2080;
          v81 = sub_23328CE3C();
          v83 = v82;
          v34 = *(v151 + 8);
          v34(v72, v152);
          v84 = sub_23311A8F4(v81, v83, &v155);

          *(v77 + 14) = v84;
          _os_log_impl(&dword_233109000, v74, v76, "Model '%s' UDID=%s already in local datastore. Moving on", v77, 0x16u);
          v85 = v141;
          swift_arrayDestroy();
          MEMORY[0x23839CFD0](v85, -1, -1);
          v86 = v77;
          v73 = v152;
          MEMORY[0x23839CFD0](v86, -1, -1);
        }

        else
        {

          v34 = *(v151 + 8);
          v34(v72, v73);
          sub_2331BDC54(v75, type metadata accessor for TTSVBVoiceModel);
        }

        v143(v135, v154);
        v34(v153, v73);
        v24 = v138;
        v35 = v145;
      }

      else
      {
        (v45)(v65, v140, v154);
        v87 = sub_2331BDBEC(v24, v66, type metadata accessor for TTSVBVoiceModel);
        v140 = v118;
        MEMORY[0x28223BE20](v87);
        v88 = &v118[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v89 = v68;
        v90 = v152;
        v141(v88, v89, v152);
        v91 = sub_23328D6CC();
        v92 = sub_23328DE4C();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v155 = v94;
          *v93 = v125;
          v95 = *v66;
          v96 = v66[1];

          sub_2331BDC54(v66, type metadata accessor for TTSVBVoiceModel);
          v97 = sub_23311A8F4(v95, v96, &v155);

          *(v93 + 4) = v97;
          *(v93 + 12) = 2080;
          v98 = sub_23328CE3C();
          v100 = v99;
          v101 = *(v151 + 8);
          v141 = ((v151 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v142 = v101;
          (v101)(v88, v90);
          v102 = sub_23311A8F4(v98, v100, &v155);

          *(v93 + 14) = v102;
          _os_log_impl(&dword_233109000, v91, v92, "Adding model '%s' UDID=%s back to local datastore.", v93, 0x16u);
          swift_arrayDestroy();
          v103 = v94;
          v104 = v90;
          MEMORY[0x23839CFD0](v103, -1, -1);
          MEMORY[0x23839CFD0](v93, -1, -1);

          v143(v134, v154);
        }

        else
        {

          v105 = *(v151 + 8);
          v141 = ((v151 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v142 = v105;
          (v105)(&v118[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)], v90);
          sub_2331BDC54(v66, type metadata accessor for TTSVBVoiceModel);
          v143(v65, v154);
          v104 = v90;
        }

        v106 = type metadata accessor for TTSVBLocalVoiceMO();
        v35 = v145;
        v107 = static TTSVBLocalVoiceMO.voiceForIDPredicate(_:)();
        MEMORY[0x28223BE20](v107);
        v108 = v137;
        v109 = v138;
        *&v118[-16] = v35;
        *&v118[-8] = v109;
        static DSO<>.findOrCreate(in:matching:config:)(v108, v107, sub_2331BD288, &v118[-32], v106, &protocol witness table for TTSVBLocalVoiceMO);
        v111 = v110;

        v112 = v136;
        v24 = v109;
        v113 = NSManagedObjectContext.insertDSO<A>(_:)(v136, v136, &protocol witness table for TTSVBLocalVoiceModelMO);
        v114 = v121;
        sub_2331BDBEC(v109, v121, type metadata accessor for TTSVBVoiceModel);
        (*v119)(v114, 0, 1, v120);
        v115 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
        TTSVBCommonVoiceModelMO.update(withInfo:)(v114, v112, v115);
        sub_233121E04(v114, &qword_27DDE2388, &qword_233297728);
        [v113 setVoice_];
        v116 = v153;
        v117 = sub_23328CE4C();
        [v113 setModelID_];

        v34 = v142;
        (v142)(v116, v104);
        *v122 = 1;
        v73 = v104;
      }

      v34(v35, v73);
      sub_2331BDC54(v24, type metadata accessor for TTSVBVoiceModel);
      v32 = v147 + v126;
      v30 = v148 - 1;
    }

    while (v148 != 1);
  }

  NSManagedObjectContext.trySave()();
}

void sub_233187ABC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for TTSVBError.Reason(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  v13 = sub_2331DEBE8();
  v31 = *v13;
  v14 = v31;
  v27 = xmmword_2332991E0;
  v29 = xmmword_2332991E0;
  v30 = 3;
  (*(v5 + 56))(v12, 1, 1, v4);
  v15 = v14;
  _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(a1, &v29, v12);
  sub_233121E04(v12, &qword_27DDE2A08, &qword_23329B0C0);

  if (!v2)
  {
    v16 = v28;
    v26[0] = v8;
    v26[1] = v4;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v17 - 8);
    v20 = v26 - v19;
    *&v29 = *v13;
    v21 = v29;
    _TTSVBFileManager.getFileIfExists(in:named:)(0xD000000000000012, 0x80000002332A8B70, v20);

    v22 = sub_23328CC9C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v20, 1, v22) == 1)
    {
      sub_233121E04(v20, &qword_27DDE19A0, &unk_233290360);
      v29 = v27;
      v30 = 3;
      v24 = v26[0];
      sub_23328CBEC();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(&v29, v24, 0, v25);
      swift_willThrow();
    }

    else
    {
      (*(v23 + 32))(v16, v20, v22);
    }
  }
}

uint64_t TTSVBVoiceBankingManager.availableTrainingLocales(forTrainingVersion:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23328D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23328D80C();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v3[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v3;
  v16[5] = a1;
  aBlock[4] = sub_2331B3694;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_71;
  v17 = _Block_copy(aBlock);

  v18 = v3;
  v19 = a1;
  sub_23328D7DC();
  v23 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v22);
}

uint64_t TTSVBVoiceBankingManager.installAsset(localeID:name:type:progress:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a5;
  v32 = a6;
  v14 = sub_23328D7CC();
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23328D80C();
  v18 = *(v34 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v34);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *&v8[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v22 = swift_allocObject();
  v22[2] = v8;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v24 = v30;
  v23 = v31;
  v22[6] = a4;
  v22[7] = v24;
  v22[8] = a8;
  v22[9] = v23;
  v22[10] = v32;
  aBlock[4] = sub_2331B3730;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_77;
  v25 = _Block_copy(aBlock);
  v26 = v8;

  v27 = a3;

  sub_23328D7DC();
  v36 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v21, v17, v25);
  _Block_release(v25);
  (*(v35 + 8))(v17, v14);
  (*(v18 + 8))(v21, v34);
}

void sub_233188458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t (*a8)(void *a1), uint64_t a9)
{
  v32 = a8;
  v33 = a6;
  v13 = type metadata accessor for TTSVBError.Reason(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  v21 = sub_23317503C();
  v22 = sub_23328D95C();
  v23 = [v21 installableTrainingAssetsForLocaleID:v22 name:a4 type:a5];

  sub_233144EEC(0, &qword_27DDE2A28, off_2789C3138);
  v24 = sub_23328DBFC();

  if (v24 >> 62)
  {
    if (sub_23328E19C())
    {
      goto LABEL_3;
    }

LABEL_8:

    aBlock = xmmword_2332991F0;
    LOBYTE(v35) = 3;
    sub_233113B28();
    TTSVBError.init(_:_:_:)(&aBlock, v16, 0, v20);
    swift_storeEnumTagMultiPayload();
    v33(v20);
    sub_233121E04(v20, &unk_27DDE25D0, &unk_233290330);
    return;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x23839BFC0](0, v24);
    goto LABEL_6;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);
LABEL_6:
    v26 = v25;

    v27 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession);
    v37 = v32;
    v38 = a9;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v35 = sub_233188970;
    v36 = &block_descriptor_503;
    v28 = _Block_copy(&aBlock);
    v29 = v27;

    v30 = swift_allocObject();
    *(v30 + 16) = v33;
    *(v30 + 24) = a7;
    v37 = sub_2331BCE38;
    v38 = v30;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v35 = sub_2331889C4;
    v36 = &block_descriptor_509;
    v31 = _Block_copy(&aBlock);

    [v29 installAsset:v26 progress:v28 completion:v31];
    _Block_release(v31);
    _Block_release(v28);

    return;
  }

  __break(1u);
}

uint64_t sub_2331887E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2828, &qword_233299268);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = sub_23328E15C();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v14 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = sub_2331B64D0(v7, v9, *(a1 + 36), 0, a1);
    sub_2331BDDC4(v7, a2, type metadata accessor for TTSVBVoice);
    *(a2 + *(v4 + 48)) = v12;
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_233188970(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v5, a2);
}

void sub_2331889C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t TTSVBVoiceBankingManager.trainingAssetIsInstalled(localeID:name:type:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_23328D7CC();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23328D80C();
  v27 = *(v17 - 8);
  v28 = v17;
  v18 = *(v27 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *&v6[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = v6;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  aBlock[4] = sub_2331B3768;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_83;
  v22 = _Block_copy(aBlock);

  v23 = v6;

  v24 = a3;
  sub_23328D7DC();
  v30 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v20, v16, v22);
  _Block_release(v22);
  (*(v29 + 8))(v16, v13);
  (*(v27 + 8))(v20, v28);
}

uint64_t TTSVBVoiceBankingManager.fetchTrainingScriptItems(localeID:scriptType:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_23328D7CC();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23328D80C();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v25);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  aBlock[4] = sub_2331B3874;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_89;
  v20 = _Block_copy(aBlock);
  v21 = v5;

  v22 = a3;

  sub_23328D7DC();
  v27 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v18, v14, v20);
  _Block_release(v20);
  (*(v26 + 8))(v14, v11);
  (*(v15 + 8))(v18, v25);
}

void TTSVBVoiceBankingManager.queue_fetchTrainingScriptItems(localeID:scriptType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23328D83C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_23328D85C();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = sub_23317503C();
    v17 = sub_23328D95C();
    v18 = swift_allocObject();
    v18[2] = v5;
    v18[3] = a4;
    v18[4] = a5;
    aBlock[4] = sub_2331B38A4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_233189B88;
    aBlock[3] = &block_descriptor_95;
    v19 = _Block_copy(aBlock);
    v20 = v5;

    [v16 fetchTrainingScriptsWithLocaleID:v17 scriptType:a3 replyOnQueue:0 completion:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_233189254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a2;
  v10 = sub_23328D7CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D80C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v18;
  if (a3)
  {
    v41 = *(a4 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = a6;
    v48 = sub_2331BCE30;
    v49 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2331221F8;
    v47 = &block_descriptor_500;
    v22 = _Block_copy(&aBlock);

    sub_23328D7DC();
    v43 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v20, v14, v22);
    _Block_release(v22);
    (*(v11 + 8))(v14, v10);
    (*(v16 + 8))(v20, v42);
  }

  v37 = a6;
  v38 = v14;
  v39 = v16;
  v40 = v11;
  v23 = sub_23328CC9C();
  v36[1] = v36;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  result = MEMORY[0x28223BE20](v23);
  v28 = v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v41)
  {
    sub_23328CB7C();
    static TTSVBTrainingScript.parseScript(fromMetadatFile:)(v28, &aBlock);
    v29 = v10;
    v30 = v38;
    (*(v24 + 8))(v28, v23);
    v31 = aBlock;
    v32 = *(a4 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
    v33 = swift_allocObject();
    v34 = v37;
    v33[2] = a5;
    v33[3] = v34;
    v33[4] = v31;
    v48 = sub_2331BCE00;
    v49 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2331221F8;
    v47 = &block_descriptor_494;
    v35 = _Block_copy(&aBlock);

    sub_23328D7DC();
    v43 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v20, v30, v35);
    _Block_release(v35);
    (*(v40 + 8))(v30, v29);
    (*(v39 + 8))(v20, v42);
  }

  __break(1u);
  return result;
}

uint64_t sub_233189970(void (*a1)(char *))
{
  v2 = type metadata accessor for TTSVBError.Reason(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29E8, &unk_233299AD8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  v11 = xmmword_2332991F0;
  v12 = 3;
  swift_storeEnumTagMultiPayload();
  TTSVBError.init(_:_:_:)(&v11, v5, 0, v9);
  swift_storeEnumTagMultiPayload();
  a1(v9);
  return sub_233121E04(v9, &qword_27DDE29E8, &unk_233299AD8);
}

uint64_t sub_233189AC0(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  *(&v14 - v11) = a3;
  swift_storeEnumTagMultiPayload();

  a1(v12);
  return sub_233121E04(v12, a4, a5);
}

uint64_t sub_233189B88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23328D98C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t TTSVBVoiceBankingManager.fetchTrainingScriptItemsAsync(localeID:scriptType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_233189C44, 0, 0);
}

uint64_t sub_233189C44()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2810, &qword_233299248);
  *v6 = v0;
  v6[1] = sub_233189D58;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000033, 0x80000002332A7F90, sub_2331B38B0, v3, v7);
}

uint64_t sub_233189D58()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_233189E74;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2331BE6DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_233189E74()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_233189ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A20, &qword_233299B38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  TTSVBVoiceBankingManager.fetchTrainingScriptItems(localeID:scriptType:_:)(a3, a4, a5, sub_2331BCD20, v15);
}

uint64_t sub_23318A040(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29E8, &unk_233299AD8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - v8);
  sub_233121D34(a1, &v13 - v8, &qword_27DDE29E8, &unk_233299AD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v9, v5, type metadata accessor for TTSVBError);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_2331BDBEC(v5, v11, type metadata accessor for TTSVBError);
    v14 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A20, &qword_233299B38);
    sub_23328DC8C();
    return sub_2331BDC54(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    v14 = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A20, &qword_233299B38);
    return sub_23328DC9C();
  }
}

void TTSVBVoiceBankingManager.fetchTrainingMetadata(voiceID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (TTSVBProcessIsVoicebankingd())
  {
    v25 = a2;
    v26 = a3;
    v8 = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
    if (v8)
    {
      LOBYTE(aBlock[0]) = 1;
      v9 = v8;
      v10 = sub_2331E511C(aBlock);

      v11 = sub_23328CE8C();
      v24[1] = v24;
      v12 = *(v11 - 8);
      v13 = *(v12 + 64);
      MEMORY[0x28223BE20](v11);
      v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v14, a1, v11);
      v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      (*(v12 + 32))(v18 + v15, v14, v11);
      *(v18 + v16) = v10;
      *(v18 + v17) = v4;
      v19 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
      v20 = v26;
      *v19 = v25;
      v19[1] = v20;
      aBlock[4] = sub_2331B38BC;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2331221F8;
      aBlock[3] = &block_descriptor_103_0;
      v21 = _Block_copy(aBlock);
      v22 = v10;
      v23 = v4;

      [v22 performBlock_];
      _Block_release(v21);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

size_t sub_23318A4A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v56 = a5;
  v8 = type metadata accessor for TTSVBVoiceSample();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_23328D7CC();
  v13 = *(v57 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D80C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&aBlock);
  v64 = aBlock;
  v65 = v60;
  v21 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v64);
  v54 = v16;
  v51 = a3;
  v52 = v20;
  v22 = v57;
  v23 = v21;
  v24 = sub_2331220AC(v64, *(&v64 + 1), v65);
  v25 = *((*MEMORY[0x277D85000] & *v23) + 0x68);
  v49 = v23;
  v26 = v25(v24);
  v58 = v26;
  if (v26 >> 62)
  {
    v27 = sub_23328E19C();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v51;
  v28 = v52;
  v31 = v55;
  v30 = v56;
  v50 = v13;
  if (!v27)
  {

    v35 = MEMORY[0x277D84F90];
    v44 = v22;
LABEL_14:
    v45 = *(v29 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
    v46 = swift_allocObject();
    v46[2] = v31;
    v46[3] = v30;
    v46[4] = v35;
    v62 = sub_2331BCC6C;
    v63 = v46;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v60 = sub_2331221F8;
    v61 = &block_descriptor_479;
    v47 = _Block_copy(&aBlock);

    sub_23328D7DC();
    *&v64 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v48 = v53;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v28, v48, v47);
    _Block_release(v47);

    (*(v50 + 8))(v48, v44);
    (*(v17 + 8))(v28, v54);
  }

  *&aBlock = MEMORY[0x277D84F90];
  result = sub_2331B409C(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = v58;
    v35 = aBlock;
    v36 = v58 & 0xC000000000000001;
    v37 = v17;
    do
    {
      if (v36)
      {
        v38 = MEMORY[0x23839BFC0](v33, v34);
      }

      else
      {
        v38 = *(v34 + 8 * v33 + 32);
      }

      v39 = v38;
      v40 = type metadata accessor for TTSVBLocalVoiceSampleMO();
      v41 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO);
      TTSVBCommonVoiceSampleMO.immutableSample()(v40, v41, v12);

      *&aBlock = v35;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_2331B409C(v42 > 1, v43 + 1, 1);
        v35 = aBlock;
      }

      ++v33;
      *(v35 + 16) = v43 + 1;
      sub_2331BDDC4(v12, v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v43, type metadata accessor for TTSVBVoiceSample);
      v34 = v58;
    }

    while (v27 != v33);
    v17 = v37;

    v30 = v56;
    v44 = v57;
    v29 = v51;
    v28 = v52;
    v31 = v55;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_23318ABE8(void (*a1)(char *), uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  sub_2331524CC(&v16);
  v14 = v16;
  v15 = v17;
  static TTSVBError.map(_:_:)(a3, &v14, v12);
  sub_2331220AC(v14, *(&v14 + 1), v15);
  swift_storeEnumTagMultiPayload();
  a1(v12);
  return sub_233121E04(v12, a4, a5);
}

uint64_t TTSVBVoiceBankingManager.samplesExist(forVoiceID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23328CE8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v8 + 32))(v11 + v10, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12 = v3;
  sub_233176918(v11, a2, a3);
}

uint64_t sub_23318AE30(uint64_t a1)
{
  v4 = sub_23328D83C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_23328D85C();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v19 = 1;
  v13 = v12;
  v14 = sub_2331E511C(&v19);

  MEMORY[0x28223BE20](v15);
  *(&v17 - 2) = a1;
  *(&v17 - 1) = v14;
  sub_23328DF5C();

  if (!v2)
  {
    v16 = v18;
  }

  return v16 & 1;
}

uint64_t sub_23318AFF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v16);
  v14 = v16;
  v15 = v17;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v14);
  result = sub_2331220AC(v14, *(&v14 + 1), v15);
  if (!v3)
  {
    v9 = type metadata accessor for TTSVBLocalVoiceSampleMO();
    *&v16 = &unk_284873AF0;
    MEMORY[0x28223BE20](v9);
    v13[2] = v7;
    v11 = static DSO<>.fetch(properties:in:config:)(&v16, a2, sub_2331BCAFC, v13, v10, &protocol witness table for TTSVBLocalVoiceSampleMO);

    v12 = *(v11 + 16);

    *a3 = v12 != 0;
  }

  return result;
}

uint64_t TTSVBVoiceBankingManager.loadSamplesFromTrainingScripts(forVoiceID:scriptItems:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v10 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  (*(v10 + 32))(v13 + v12, &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = v4;

  sub_233178950(sub_2331B3AAC, v13, a3, a4, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

void sub_23318B2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_23328D85C();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v13 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v13)
    {
      v18 = 1;
      v14 = v13;
      v15 = sub_2331E511C(&v18);

      MEMORY[0x28223BE20](v16);
      *&v17[-32] = a1;
      *&v17[-24] = v15;
      *&v17[-16] = a2;
      *&v17[-8] = v3;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23318B490(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v51);
  v42 = v51;
  LOBYTE(v43) = v52;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v42);
  sub_2331220AC(v42, *(&v42 + 1), v43);
  if (v3)
  {
    return;
  }

  v40 = a3;
  v8 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  *&v51 = &unk_284873B20;
  MEMORY[0x28223BE20](v8);
  v59 = v7;
  v36 = v7;
  v41 = a2;
  v10 = static DSO<>.fetch(properties:in:config:)(&v51, a2, sub_2331BE680, v35, v9, &protocol witness table for TTSVBLocalVoiceSampleMO);

  v11 = *(v10 + 16);
  if (!v11)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v39 = v11 - 1;
  do
  {
    v14 = v12;
    while (1)
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        return;
      }

      v15 = *(v10 + 32 + 8 * v14);
      if (*(v15 + 16))
      {
        break;
      }

LABEL_6:
      if (v11 == ++v14)
      {
        goto LABEL_19;
      }
    }

    v16 = *(v10 + 32 + 8 * v14);

    v17 = sub_2331B42BC(0x4449656C706D6173, 0xE800000000000000, sub_2331443DC);
    if ((v18 & 1) == 0)
    {

      goto LABEL_6;
    }

    sub_23311B0C0(*(v15 + 56) + 32 * v17, &v51);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v19 = *(&v42 + 1);
    if (!*(&v42 + 1))
    {
      goto LABEL_6;
    }

    v38 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_233143EE0(0, *(v13 + 2) + 1, 1, v13);
    }

    v21 = *(v13 + 2);
    v20 = *(v13 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v37 = v21 + 1;
      v24 = v13;
      v25 = v21;
      v26 = sub_233143EE0((v20 > 1), v21 + 1, 1, v24);
      v22 = v37;
      v21 = v25;
      v13 = v26;
    }

    v12 = v14 + 1;
    *(v13 + 2) = v22;
    v23 = &v13[16 * v21];
    *(v23 + 4) = v38;
    *(v23 + 5) = v19;
  }

  while (v39 != v14);
LABEL_19:

  v28 = *(v40 + 16);
  if (v28)
  {
    v29 = v40 + 32;
    v30 = v28 - 1;
    v31 = v41;
    while (1)
    {
      v32 = *(v29 + 80);
      v55 = *(v29 + 64);
      v56 = v32;
      v57 = *(v29 + 96);
      v58 = *(v29 + 112);
      v33 = *(v29 + 16);
      v51 = *v29;
      v52 = v33;
      v34 = *(v29 + 48);
      v53 = *(v29 + 32);
      v54 = v34;
      v50 = v51;
      MEMORY[0x28223BE20](v27);
      v36 = &v50;
      sub_2331B4B78(&v51, &v42);
      if ((sub_2331ACD54(sub_2331BC314, v35, v13) & 1) == 0)
      {
        v46 = v55;
        v47 = v56;
        v48 = v57;
        v49 = v58;
        v42 = v51;
        v43 = v52;
        v44 = v53;
        v45 = v54;
        sub_2331B65FC(v59, &v42, v31);
      }

      v27 = sub_2331B4CC8(&v51);
      if (!v30)
      {
        break;
      }

      --v30;
      v29 += 120;
    }
  }

  NSManagedObjectContext.trySave()();
}

void sub_23318B8A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a2 + 80);
  v21[4] = *(a2 + 64);
  v21[5] = v11;
  v21[6] = *(a2 + 96);
  v22 = *(a2 + 112);
  v12 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v12;
  v13 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v13;
  v14 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v10 = v14;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v15 = v14;
  LOBYTE(v14) = sub_23328D85C();
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    v16 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v16)
    {
      LOBYTE(v20) = 1;
      v17 = v16;
      v18 = sub_2331E511C(&v20);

      MEMORY[0x28223BE20](v19);
      *(&v20 - 4) = a1;
      *(&v20 - 3) = v18;
      *(&v20 - 2) = v3;
      *(&v20 - 1) = v21;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23318BAA4(char *a1, __int128 *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  v41 = a1;
  if (a5 == 1)
  {
    v39 = sub_23328CC9C();
    v40 = &v39;
    v9 = *(v39 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v39);
    v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = a2;
    v43 = a3;

    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    v13 = sub_2331C464C();
    v14 = *(v13 + 1);
    LOWORD(v45) = *v13;
    v46 = v14;
    v15 = TTSVBAudioDescriptor.fileExtension.getter();
    MEMORY[0x23839B7E0](v15);

    v16 = sub_23328CB3C();
    v17 = *(v16 - 8);
    v18 = *(v17 + 64);
    v19 = MEMORY[0x28223BE20](v16);
    v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 104))(v21, *MEMORY[0x277CC91E0], v16, v19);
    sub_23311A294();
    sub_23328CC8C();
    (*(v17 + 8))(v21, v16);

    v45 = *sub_2331DEBE8();
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v22 = v45;
    _TTSVBFileManager.copyItem(_:to:problem:)(v41, v12, &v42);

    return (*(v9 + 8))(v12, v39);
  }

  else
  {
    v26 = a4 >> 8;
    v27 = sub_23328CC9C();
    v40 = &v39;
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    LOBYTE(v42) = a4;
    BYTE1(v42) = v26;
    v43 = a5;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v39 = &v39;
    v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v34 = MEMORY[0x28223BE20](v32 - 8);
    v36 = &v39 - v35;
    (*(v28 + 16))(&v39 - v35, a6, v27, v34);
    (*(v28 + 56))(v36, 0, 1, v27);
    v37 = a5;
    v38 = v47;
    static TTSVBAudioTools.convertAudioFileAtURL(_:audioOverrides:saveTo:filename:)(v41, &v42, v36, a2, a3, v31);
    sub_233121E04(v36, &qword_27DDE19A0, &unk_233290360);
    if (!v38)
    {
      (*(v28 + 8))(v31, v27);
    }

    return sub_2331BB2A0(a4, a5);
  }
}

id sub_23318BF18(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23328CBCC();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_23328CC9C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_23328CA7C();

    swift_willThrow();
    v9 = sub_23328CC9C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_23318C070(uint64_t a1, void *a2, uint64_t a3, int a4, unint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, unint64_t a13, void *a14, uint64_t a15)
{
  v16 = v15;
  LODWORD(v17) = a8;
  LODWORD(v18) = a7;
  v126 = a6;
  v133 = a5;
  v132 = a4;
  v124 = a3;
  v21 = sub_23328D6EC();
  v22 = *(v21 - 8);
  v23 = v22[8];
  MEMORY[0x28223BE20](v21);
  v127 = v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v122 = v101 - v26;
  MEMORY[0x28223BE20](v27);
  v103 = v101 - v28;
  type metadata accessor for TTSVBLocalVoiceMO();
  v116 = a2;
  v29 = static TTSVBLocalVoiceMO.findOrFetch(voiceID:moc:)(a1, a2);
  if (!v29)
  {
    return;
  }

  v30 = *((*MEMORY[0x277D85000] & *v29) + 0x68);
  v104 = v29;
  v31 = v30();
  v120 = v31;
  v105 = v31 >> 62;
  if (v31 >> 62)
  {
LABEL_53:
    v123 = sub_23328E19C();
    if (v123)
    {
      goto LABEL_4;
    }

LABEL_54:

LABEL_55:

    return;
  }

  v123 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v123)
  {
    goto LABEL_54;
  }

LABEL_4:
  v108 = a15;
  v107 = a14;
  v106 = a13;
  v115 = a12;
  v114 = a11;
  v32 = v120;
  v125 = v120 & 0xC000000000000001;
  v113 = a10;
  v112 = a9;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v34 = v32 & 0xFFFFFFFFFFFFFF8;
  v35 = v32;
  v36 = 0;
  v117 = v18 ^ 1 | v17;
  v118 = (v22 + 1);
  v119 = (v22 + 2);
  v110 = v34;
  if (v35 < 0)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  v101[1] = v37;
  *&v33 = 134218240;
  v109 = v33;
  *&v33 = 136315394;
  v102 = v33;
  v38 = v122;
  v17 = v123;
  v111 = v21;
  while (1)
  {
    if (v125)
    {
      v40 = v35;
      v41 = MEMORY[0x23839BFC0](v36);
    }

    else
    {
      if (v36 >= *(v110 + 16))
      {
        goto LABEL_51;
      }

      v40 = v35;
      v41 = *(v35 + 8 * v36 + 32);
    }

    v22 = v41;
    v18 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if ((v132 & 1) == 0 && *(v133 + 16) == v124)
    {

      v96 = sub_233225514();
      (*v119)(v103, v96, v21);
      v97 = sub_23328D6CC();
      v98 = sub_23328DE4C();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 134217984;
        *(v99 + 4) = v124;
        _os_log_impl(&dword_233109000, v97, v98, "Did write out required number of audio samples (%ld). Exiting write-out routine", v99, 0xCu);
        MEMORY[0x23839CFD0](v99, -1, -1);
        v100 = v22;
      }

      else
      {
        v100 = v97;
        v97 = v22;
      }

      (*v118)(v103, v21);
      return;
    }

    v134 = v36;
    v135 = MEMORY[0x23839C610]();
    if ((v126 & 1) == 0)
    {
      v42 = type metadata accessor for TTSVBLocalVoiceSampleMO();
      v43 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO);
      if ((TTSVBCommonVoiceSampleMO.hasVoiceRecording.getter(v42, v43) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v139 = v22;
    if (v117)
    {
      break;
    }

    v44 = type metadata accessor for TTSVBLocalVoiceSampleMO();
    v45 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO);
    TTSVBCommonVoiceSampleMO.trainingValidity.getter(v44, v45, &v138);
    if (TTSVBVoiceSampleTrainingValidity.isValid.getter())
    {
      break;
    }

    v131 = v44;
    v62 = sub_233225514();
    (*v119)(v38, v62, v21);
    v63 = v139;
    v64 = sub_23328D6CC();
    LODWORD(v130) = sub_23328DE3C();
    if (!os_log_type_enabled(v64, v130))
    {

      (*v118)(v38, v21);
      v17 = v123;
      v22 = v139;
LABEL_9:
      v39 = v134;
      goto LABEL_10;
    }

    v128 = v18;
    v129 = v16;
    v121 = v64;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v138.id._countAndFlagsBits = v66;
    *v65 = v102;
    v67 = [v63 sampleID];

    if (!v67)
    {
      goto LABEL_60;
    }

    v68 = sub_23328D98C();
    v70 = v69;

    v71 = sub_23311A8F4(v68, v70, &v138.id._countAndFlagsBits);

    *(v65 + 4) = v71;
    *(v65 + 12) = 2080;
    TTSVBCommonVoiceSampleMO.trainingValidity.getter(v131, v45, &v137);
    v72 = TTSVBVoiceSampleTrainingValidity.stringValue.getter();
    v74 = sub_23311A8F4(v72, v73, &v138.id._countAndFlagsBits);

    *(v65 + 14) = v74;
    v75 = v121;
    _os_log_impl(&dword_233109000, v121, v130, "Skipping sample %s. Not valid for training: %s and trainWithLowQualityData=false", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v66, -1, -1);
    MEMORY[0x23839CFD0](v65, -1, -1);

    v38 = v122;
    (*v118)(v122, v21);
    v40 = v120;
    v17 = v123;
    v22 = v139;
    v39 = v134;
    v18 = v128;
    v16 = v129;
LABEL_10:
    objc_autoreleasePoolPop(v135);

    v36 = v39 + 1;
    v35 = v40;
    if (v18 == v17)
    {
      goto LABEL_54;
    }
  }

  v128 = v18;
  v46 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  v130 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO);
  v131 = v46;
  TTSVBCommonVoiceSampleMO.trainingScriptItem.getter(v46, v130, &v137);
  v138 = v137;
  v136 = v137;
  sub_2331BB920();
  v47 = sub_23328C89C();
  LODWORD(v17) = v16;
  if (v16)
  {
    goto LABEL_61;
  }

  v49 = v47;
  v50 = v48;
  v51 = sub_23328CCBC();
  v16 = v115;
  [v115 writeData_];

  v22 = sub_23328CCBC();
  [v16 writeData_];

  sub_233121870(v49, v50);
  sub_2331B4CC8(&v138);
  v52 = sub_233225514();
  (*v119)(v127, v52, v21);
  v18 = v133;

  v53 = sub_23328D6CC();
  v54 = sub_23328DE4C();
  v55 = os_log_type_enabled(v53, v54);
  v129 = 0;
  if (v55)
  {
    v56 = swift_slowAlloc();
    *v56 = v109;
    v57 = *(v18 + 16);
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_52;
    }

    v60 = v56;
    *(v56 + 4) = v59;

    *(v60 + 12) = 2048;
    v61 = v124;
    if (v132)
    {
      if (v105)
      {
        v61 = sub_23328E19C();
      }

      else
      {
        v61 = *(v110 + 16);
      }
    }

    *(v60 + 14) = v61;

    _os_log_impl(&dword_233109000, v53, v54, "Writing out audio sample %ld of %ld", v60, 0x16u);
    MEMORY[0x23839CFD0](v60, -1, -1);
  }

  else
  {
  }

  (*v118)(v127, v21);
  v76 = *sub_2331DEBE8();
  v137.id._countAndFlagsBits = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v80 = v101 - v79;
  v81 = v76;
  TTSVBCommonVoiceSampleMO.url.getter(v131, v130, v80);
  v82 = sub_23328CC9C();
  v83 = *(v82 - 8);
  v84 = *(v83 + 48);
  if (v84(v80, 1, v82) != 1)
  {
    v85 = _TTSVBFileManager.fileExists(_:)();

    v121 = *(v83 + 8);
    v86 = (v121)(v80, v82);
    if (v85)
    {
      MEMORY[0x28223BE20](v86);
      v87 = v101 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
      v88 = v139;
      TTSVBCommonVoiceSampleMO.url.getter(v131, v130, v87);
      if (v84(v87, 1, v82) == 1)
      {
        goto LABEL_58;
      }

      v89 = [v88 sampleID];
      v16 = v129;
      if (!v89)
      {
        goto LABEL_59;
      }

      v90 = v89;
      v91 = sub_23328D98C();
      v93 = v92;

      sub_23318BAA4(v87, v91, v93, v106, v107, v108);
      if (v16)
      {

        (v121)(v87, v82);
        objc_autoreleasePoolPop(v135);

        goto LABEL_55;
      }

      (v121)(v87, v82);
    }

    else
    {
      v16 = v129;
    }

    v38 = v122;
    v17 = v123;
    v40 = v120;
    v18 = v128;
    v39 = v134;
    v94 = *(v133 + 16);
    v58 = __OFADD__(v94, 1);
    v95 = v94 + 1;
    v21 = v111;
    v22 = v139;
    if (v58)
    {
      goto LABEL_50;
    }

    *(v133 + 16) = v95;
    [v116 refreshAllObjects];
    goto LABEL_10;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_unexpectedError();
  __break(1u);
}

void sub_23318CC78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v35[1] = a5;
  v36 = a4;
  v37 = sub_23328D6EC();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v37);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29E8, &unk_233299AD8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v35 - v17);
  v19 = swift_projectBox();
  sub_233121D34(a1, v18, &qword_27DDE29E8, &unk_233299AD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v18, v14, type metadata accessor for TTSVBError);
    v20 = type metadata accessor for TTSVBError(0);
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
    swift_beginAccess();
    sub_2331BD410(v14, v19, &qword_27DDE1B38, &unk_2332909A0);
  }

  else
  {
    v21 = *v18;
    swift_beginAccess();
    v22 = *(a2 + 16);
    *(a2 + 16) = v21;
  }

  v23 = sub_233225514();
  v24 = v37;
  (*(v7 + 16))(v10, v23, v37);
  v25 = v36;
  v26 = sub_23328D6CC();
  v27 = sub_23328DE1C();
  if (!os_log_type_enabled(v26, v27))
  {

    goto LABEL_8;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v38 = v29;
  *v28 = 136315138;
  v30 = [v25 localeID];

  if (v30)
  {
    v31 = sub_23328D98C();
    v33 = v32;

    v34 = sub_23311A8F4(v31, v33, &v38);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_233109000, v26, v27, "Did fetch training script items with localeID=%s scriptType=default (signaling blocking call)", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x23839CFD0](v29, -1, -1);
    MEMORY[0x23839CFD0](v28, -1, -1);

LABEL_8:
    (*(v7 + 8))(v10, v24);
    sub_23328DF4C();
    return;
  }

  __break(1u);
}

uint64_t TTSVBVoiceBankingManager.exportTrainingData(forVoice:shouldCompressResult:includeEntireScript:completion:)(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v30 = a3;
  v31 = a2;
  v36 = sub_23328D7CC();
  v38 = *(v36 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_23328D80C();
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v13 = sub_23328CE8C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v16);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v18, v17, v13);
  v21 = v20 + v19;
  *v21 = v5;
  v22 = v31;
  *(v21 + 8) = v30;
  *(v21 + 9) = v22;
  v23 = (v20 + ((v19 + 17) & 0xFFFFFFFFFFFFFFF8));
  v24 = v33;
  *v23 = v32;
  v23[1] = v24;
  aBlock[4] = sub_2331B3B44;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_115;
  v25 = _Block_copy(aBlock);
  v26 = v5;

  sub_23328D7DC();
  v39 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v27 = v36;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v12, v9, v25);
  _Block_release(v25);
  (*(v38 + 8))(v9, v27);
  (*(v35 + 8))(v12, v37);
}

_DWORD *sub_23318D418(uint64_t a1, char *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v224 = a6;
  v225 = a5;
  v208 = a4;
  v209 = a3;
  v223 = sub_23328D7CC();
  v222 = *(v223 - 8);
  v8 = *(v222 + 8);
  MEMORY[0x28223BE20](v223);
  v219 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_23328D80C();
  v220 = *(v221 - 8);
  v10 = *(v220 + 64);
  MEMORY[0x28223BE20](v221);
  v218 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_23328D83C();
  v214 = *(v215 - 1);
  v12 = v214[8];
  MEMORY[0x28223BE20](v215);
  v213 = (&v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = type metadata accessor for TTSVBPath();
  v14 = *(*(v233 - 1) + 64);
  MEMORY[0x28223BE20](v233);
  v232 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D6EC();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v206 = &v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v212 = &v203 - v21;
  MEMORY[0x28223BE20](v22);
  *&v241 = &v203 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v203 - v25;
  v27 = sub_233225314();
  v28 = v17[2];
  v229 = v27;
  v236 = v28;
  v237 = (v17 + 2);
  v28(v26);
  v29 = sub_23328CE8C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v203 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v30 + 16);
  v234 = a1;
  v231 = (v30 + 16);
  v230 = v35;
  v35(v34, a1, v29, v32);
  v36 = sub_23328D6CC();
  v37 = sub_23328DE4C();
  v38 = os_log_type_enabled(v36, v37);
  v239 = v16;
  v217 = v17;
  v240 = a2;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&aBlock = v40;
    *v39 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
    v41 = sub_23328E51C();
    v43 = v42;
    (*(v30 + 8))(v34, v29);
    v44 = sub_23311A8F4(v41, v43, &aBlock);
    v17 = v217;

    *(v39 + 4) = v44;
    _os_log_impl(&dword_233109000, v36, v37, "Beginning export for voice: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x23839CFD0](v40, -1, -1);
    v45 = v39;
    v16 = v239;
    MEMORY[0x23839CFD0](v45, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v34, v29);
  }

  v238 = v17[1];
  v238(v26, v16);
  v46 = sub_23328CC9C();
  v227 = &v203;
  v47 = *(v46 - 8);
  v48 = v47[8];
  v49 = MEMORY[0x28223BE20](v46);
  v50 = &v203 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v232;
  v207 = v29;
  v230(v232, v234, v29, v49);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v50);
  sub_2331BDC54(v51, type metadata accessor for TTSVBPath);
  v52 = v241;
  v53 = v236(v241, v229, v16);
  v226 = &v203;
  v216 = v48;
  v54 = MEMORY[0x28223BE20](v53);
  v55 = v50;
  v56 = v47[2];
  v210 = v47 + 2;
  v211 = v56;
  v56(v50, v50, v46, v54);
  v57 = sub_23328D6CC();
  v58 = sub_23328DE4C();
  v59 = os_log_type_enabled(v57, v58);
  v228 = v47;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v235 = v50;
    v61 = v60;
    v62 = v46;
    v63 = swift_slowAlloc();
    *&aBlock = v63;
    *v61 = 136315138;
    v64 = sub_23328CC6C();
    v66 = v65;
    v67 = v47[1];
    v67(v55, v62);
    v68 = sub_23311A8F4(v64, v66, &aBlock);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_233109000, v57, v58, "Using %s for export", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v69 = v63;
    v46 = v62;
    MEMORY[0x23839CFD0](v69, -1, -1);
    v50 = v235;
    MEMORY[0x23839CFD0](v61, -1, -1);

    v70 = v241;
    v71 = v239;
  }

  else
  {

    v67 = v47[1];
    v67(v50, v46);
    v70 = v52;
    v71 = v16;
  }

  v238(v70, v71);
  v72 = v240;
  v73 = sub_2331DEBE8();
  v242 = *v73;
  v241 = xmmword_233299200;
  aBlock = xmmword_233299200;
  LOBYTE(v246) = 3;
  v74 = v242;
  _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v50, 0, 1, &aBlock);
  v235 = v50;

  result = sub_233167A00();
  v76 = *&v72[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v76)
  {
    goto LABEL_24;
  }

  v77 = result;
  v204 = *result;
  LOBYTE(aBlock) = 1;
  v78 = v76;
  v205 = sub_2331E511C(&aBlock);

  v79 = TTSVBVoiceBankingManager.audioService.getter();
  v80 = *&v72[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v81 = v213;
  *v213 = v80;
  v82 = v214;
  v83 = v215;
  (v214[13])(v81, *MEMORY[0x277D85200], v215);
  v84 = v80;
  LOBYTE(v80) = sub_23328D85C();
  result = (v82[1])(v81, v83);
  if ((v80 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v214 = v73;
  v215 = v67;
  v226 = v46;
  v85 = sub_23328D9DC();
  v86 = *(v85 - 8);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  v89 = &v203 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D9CC();
  v213 = sub_23328D99C();
  v91 = v90;
  result = (*(v86 + 8))(v89, v85);
  if (v91 >> 60 == 15)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v92 = sub_23328C8BC();
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  v95 = sub_23328C8AC();
  LODWORD(aBlock) = *v77;
  v96 = v204;
  LODWORD(v242) = v204;
  sub_233156AF4();
  v203 = sub_23328E0EC();
  LODWORD(aBlock) = *sub_233167A18();
  LODWORD(v242) = v96;
  v204 = sub_23328E0EC();
  v97 = sub_233225514();
  v98 = v212;
  v99 = v239;
  v236(v212, v97, v239);
  v100 = sub_23328D6CC();
  v101 = sub_23328DE4C();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *&aBlock = v103;
    *v102 = 136315138;
    *(v102 + 4) = sub_23311A8F4(7105633, 0xE300000000000000, &aBlock);
    _os_log_impl(&dword_233109000, v100, v101, "Writing out metadata.json and %s audio files", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x23839CFD0](v103, -1, -1);
    MEMORY[0x23839CFD0](v102, -1, -1);
  }

  v104 = (v238)(v98, v99);
  v105 = v216;
  MEMORY[0x28223BE20](v104);
  v106 = &v203 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = *v214;
  aBlock = 0uLL;
  LOBYTE(v246) = -1;
  v107 = v242;
  _TTSVBFileManager.getOrCreateFile(in:named:problem:)(v235, 0xD000000000000012, 0x80000002332A8B70, &aBlock, v106);

  v108 = sub_233144EEC(0, &qword_27DDE29D8, 0x277CCA9F8);
  v109 = MEMORY[0x28223BE20](v108);
  v211(v106, v106, v226, v109);
  sub_23318BF18(v106);
  sub_23328DDFC();
  LOBYTE(v105) = v203 ^ 1;
  v110 = swift_allocObject();
  *(v110 + 16) = 0;
  MEMORY[0x28223BE20](v110);
  v111 = v205;
  *(&v203 - 14) = v234;
  *(&v203 - 13) = v111;
  *(&v203 - 12) = 0;
  *(&v203 - 88) = 1;
  *(&v203 - 10) = v112;
  *(&v203 - 72) = v209 & 1;
  *(&v203 - 71) = v105 & 1;
  *(&v203 - 70) = v204 & 1;
  v113 = v213;
  *(&v203 - 8) = v95;
  *(&v203 - 7) = v113;
  *(&v203 - 6) = v91;
  *(&v203 - 5) = v114;
  v115 = v114;
  *(&v203 - 2) = xmmword_2332987A0;
  *(&v203 - 2) = v235;
  sub_23328DF5C();

  [v115 closeFile];

  sub_23312185C(v113, v91);

  v116 = v228;
  v117 = v106;
  v118 = v226;
  v119 = v215;
  v120 = (v215)(v117, v226);
  v213 = v116 + 1;
  if (v208)
  {
    v121 = v216;
    v122 = MEMORY[0x28223BE20](v120);
    v123 = v232;
    v124 = v234;
    v230(v232, v234, v207, v122);
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(&v203 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2331BDC54(v123, type metadata accessor for TTSVBPath);
    v242 = *v214;
    aBlock = v241;
    LOBYTE(v246) = 3;
    v125 = v242;
    _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(&v203 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 0, &aBlock);
    v233 = &v203 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v241 = &v203;

    aBlock = 0uLL;
    MEMORY[0x28223BE20](v136);
    *(&v203 - 4) = &aBlock;
    *(&v203 - 3) = v124;
    *(&v203 - 2) = v205;
    v137 = sub_23328DF5C();
    v232 = &v203;
    MEMORY[0x28223BE20](v137);
    v138 = &v203 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
    v139 = sub_23328C8EC();
    v231 = &v203;
    v223 = *(v139 - 8);
    v140 = *(v223 + 64);
    MEMORY[0x28223BE20](v139);
    v142 = &v203 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2331BC7FC(&qword_27DDE2A10, MEMORY[0x28220B560]);
    sub_23328E13C();
    v244 = 47;
    sub_23328E10C();
    v244 = 58;
    sub_23328E10C();
    v244 = 96;
    v230 = v139;
    sub_23328E10C();
    v143 = *(&aBlock + 1);
    v222 = v142;
    v221 = *(&aBlock + 1);
    if (*(&aBlock + 1))
    {
      v144 = aBlock;
      v145 = sub_23328D95C();
      v146 = TTSVBSupportLocString(v145);

      v234 = sub_23328D98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_233297B30;
      v242 = v144;
      v243 = v143;
      sub_23311A294();
      v148 = MEMORY[0x277D837D0];
      v242 = sub_23328E02C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
      sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
      v149 = sub_23328D8FC();
      v151 = v150;

      *(v147 + 56) = v148;
      *(v147 + 64) = sub_2331527DC();
      *(v147 + 32) = v149;
      *(v147 + 40) = v151;
      v152 = sub_23328D9BC();
      v154 = v153;

      v242 = v152;
      v243 = v154;
      MEMORY[0x23839B7E0](1885960750, 0xE400000000000000);
      v155 = sub_23328CB3C();
      v156 = *(v155 - 8);
      v157 = *(v156 + 64);
      v158 = MEMORY[0x28223BE20](v155);
      v160 = &v203 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v156 + 104))(v160, *MEMORY[0x277CC91E0], v155, v158);
      sub_23328CC8C();
      (*(v156 + 8))(v160, v155);
    }

    else
    {
      v242 = 0;
      v243 = 0xE000000000000000;
      sub_23328E24C();
      v161 = sub_23328CE3C();
      v163 = v162;

      v242 = v161;
      v243 = v163;
      MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A8D60);
      v164 = sub_23328CB3C();
      v165 = *(v164 - 8);
      v166 = *(v165 + 64);
      v167 = MEMORY[0x28223BE20](v164);
      v169 = &v203 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v165 + 104))(v169, *MEMORY[0x277CC91E0], v164, v167);
      sub_23311A294();
      sub_23328CC8C();
      (*(v165 + 8))(v169, v164);
    }

    v170 = v211;
    v171 = v206;
    v172 = v239;
    v173 = v236(v206, v229, v239);
    v174 = MEMORY[0x28223BE20](v173);
    v176 = &v203 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
    v237 = v138;
    v177 = v226;
    v170(v176, v138, v226, v174);
    v178 = sub_23328D6CC();
    v179 = sub_23328DE4C();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v242 = v181;
      *v180 = 136315138;
      v182 = sub_23328CC6C();
      v184 = v183;
      (v215)(v176, v177);
      v185 = sub_23311A8F4(v182, v184, &v242);

      *(v180 + 4) = v185;
      _os_log_impl(&dword_233109000, v178, v179, "Creating archive at: %s", v180, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v181);
      MEMORY[0x23839CFD0](v181, -1, -1);
      MEMORY[0x23839CFD0](v180, -1, -1);

      v186 = v206;
      v187 = v239;
    }

    else
    {

      (v215)(v176, v177);
      v186 = v171;
      v187 = v172;
    }

    v188 = (v238)(v186, v187);
    v239 = &v203;
    v242 = *v214;
    v189 = v242;
    v190 = v216;
    v191 = MEMORY[0x28223BE20](v188);
    v192 = &v203 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
    v193 = v237;
    v211(v192, v237, v177, v191);
    v194 = v228;
    v195 = (*(v228 + 80) + 40) & ~*(v228 + 80);
    v196 = swift_allocObject();
    v197 = v240;
    v198 = v225;
    *(v196 + 2) = v240;
    *(v196 + 3) = v198;
    *(v196 + 4) = v224;
    (v194[4])(&v196[v195], v192, v177);
    v199 = v189;
    v200 = v197;

    v201 = v235;
    _TTSVBFileManager.createCompressedArchive(from:to:completion:)(v235, v193, sub_2331BC928, v196);

    (*(v223 + 8))(v222, v230);
    v202 = v215;
    (v215)(v193, v177);
    v202(v233, v177);
    v202(v201, v177);
  }

  else
  {
    *&v241 = &v203;
    v240 = *&v240[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue];
    v126 = v216;
    v127 = MEMORY[0x28223BE20](v120);
    v128 = v235;
    v211(&v203 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0), v235, v118, v127);
    v129 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v130 = swift_allocObject();
    v131 = v224;
    *(v130 + 16) = v225;
    *(v130 + 24) = v131;
    (v116[4])(v130 + v129, &v203 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0), v118);
    v248 = sub_2331BC6F4;
    v249 = v130;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v246 = sub_2331221F8;
    v247 = &block_descriptor_440;
    v132 = _Block_copy(&aBlock);

    v133 = v218;
    sub_23328D7DC();
    v242 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v134 = v219;
    v135 = v223;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v133, v134, v132);

    _Block_release(v132);
    (*(v222 + 1))(v134, v135);
    (*(v220 + 8))(v133, v221);
    v119(v128, v118);
  }
}