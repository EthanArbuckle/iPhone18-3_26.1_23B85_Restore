unint64_t sub_1D8FD4374()
{
  result = qword_1ECAB8800;
  if (!qword_1ECAB8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8800);
  }

  return result;
}

uint64_t sub_1D8FD43C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8FD35F0(a1);
}

unint64_t sub_1D8FD43E4()
{
  result = qword_1EDCD5B00;
  if (!qword_1EDCD5B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD5B00);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_1D8FD447C(unsigned __int8 *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1D8FD3398(*(v1 + 16), a1);
}

uint64_t sub_1D8FD449C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_1D8FD3428(*(v0 + 16));
}

uint64_t TranscriptRequestInformation.episodeAdamId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TranscriptRequestInformation.episodeTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TranscriptRequestInformation.ttmlIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TranscriptRequestInformation.selectedTextTimeInterval.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  return result;
}

uint64_t TranscriptRequestInformation.selectedTextTimeInterval.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3 & 1;
  return result;
}

uint64_t TranscriptRequestInformation.showName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t TranscriptRequestInformation.showName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t TranscriptRequestInformation.init(episodeAdamId:episodeTitle:ttmlIdentifier:selectedTextTimeInterval:showName:source:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  v13 = *a13;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = v13;
  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

id MTInterest.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTInterest.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTInterest();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTInterest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTInterest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MTInterest.createFetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1D8FD495C(id *a1)
{
  v1 = [*a1 lastUpdatedDate];
  sub_1D9176DFC();
}

void sub_1D8FD49C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 unknownSyncProperties];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D9176C8C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1D8FD4A30(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  }

  v5 = v3;
  [v2 setUnknownSyncProperties_];
}

uint64_t MTInterest.state.getter()
{
  [v0 interestValue];
  if (v1 == -1.0)
  {
    return 0;
  }

  if (v1 == 0.0)
  {
    return 1;
  }

  if (v1 == 1.0)
  {
    return 2;
  }

  return 3;
}

uint64_t static MTInterest.predicateForInterest(withAdamID:)(uint64_t a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = 0x44496D616461;
  *(v2 + 40) = 0xE600000000000000;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  *(v2 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v2 + 104) = sub_1D8E96578();
  *(v2 + 72) = v3;
  return sub_1D9178C8C();
}

uint64_t sub_1D8FD4CE8(uint64_t a1, uint64_t a2)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  return sub_1D9178C8C();
}

id static MTInterest.predicateForDislikedInterestsChannels()()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189080;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0x6C656E6E616863;
  *(v0 + 40) = 0xE700000000000000;
  v3 = sub_1D9178C8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  strcpy((v4 + 32), "interestValue");
  *(v4 + 46) = -4864;
  v5 = sub_1D9178C8C();
  v6 = [v5 AND_];

  return v6;
}

uint64_t static MTInterest.predicateForInterests(excludingAdamIDs:)(uint64_t a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = 0x44496D616461;
  *(v2 + 40) = 0xE600000000000000;
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8808, &qword_1D91BDE40);
  *(v2 + 104) = sub_1D8FD53C8();
  *(v2 + 72) = a1;

  return sub_1D9178C8C();
}

uint64_t static MTInterest.predicateForNeutralInterests()()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918A530;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v1 = sub_1D8D34978();
  strcpy((v0 + 32), "interestValue");
  *(v0 + 46) = -4864;
  v2 = MEMORY[0x1E69E65A8];
  *(v0 + 96) = MEMORY[0x1E69E6530];
  *(v0 + 104) = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = 0;
  return sub_1D9178C8C();
}

id sub_1D8FD50E8()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189080;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 64) = v2;
  strcpy((v0 + 32), "interestValue");
  *(v0 + 46) = -4864;
  v3 = sub_1D9178C8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  *(v4 + 32) = 0x79726F6765746163;
  *(v4 + 40) = 0xE800000000000000;
  v5 = sub_1D9178C8C();
  v6 = [v3 AND_];

  return v6;
}

id _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189080;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 64) = v2;
  strcpy((v0 + 32), "interestValue");
  *(v0 + 46) = -4864;
  v3 = sub_1D9178C8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  *(v4 + 32) = 0x79726F6765746163;
  *(v4 + 40) = 0xE800000000000000;
  v5 = sub_1D9178C8C();
  v6 = [v5 NOT];

  v7 = [v3 AND_];
  return v7;
}

unint64_t sub_1D8FD53C8()
{
  result = qword_1ECAAFEC0;
  if (!qword_1ECAAFEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8808, &qword_1D91BDE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFEC0);
  }

  return result;
}

uint64_t RemoteInterestError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FD54C8()
{
  result = sub_1D8E2FE30(&unk_1F54610D8);
  qword_1ECAB8810 = &unk_1F5461088;
  return result;
}

uint64_t static RemoteInterest.allSyncKeys.getter()
{
  if (qword_1ECAB3690 != -1)
  {
    swift_once();
  }
}

uint64_t RemoteInterest.interestValueUpdatedDate.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t RemoteInterest.init(dictionary:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[2] && (v4 = sub_1D8D33C70(0x44496D616461, 0xE600000000000000), (v5 & 1) != 0) && (sub_1D8CFAD1C(a1[7] + 32 * v4, &v35), (swift_dynamicCast() & 1) != 0) && a1[2] && (v6 = sub_1D8D33C70(0x7473657265746E69, 0xED000065756C6156), (v7 & 1) != 0) && (sub_1D8CFAD1C(a1[7] + 32 * v6, &v35), (swift_dynamicCast() & 1) != 0))
  {
    if (a1[2] && (v8 = sub_1D8D33C70(0x616470557473616CLL, 0xEF65746144646574), (v9 & 1) != 0))
    {
      sub_1D8CFAD1C(a1[7] + 32 * v8, &v35);
      v10 = swift_dynamicCast();
      if (v10)
      {
        v11 = v34;
      }

      else
      {
        v11 = 0;
      }

      v12 = v10 ^ 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
    }

    v37 = v12;
    v14 = *aAdamid_22;
    v15 = unk_1F54610B0;

    v16 = sub_1D8D33C70(v14, v15);
    v18 = v17;

    if (v18)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_1D8F86F90();
      }

      v19 = *(a1[6] + 16 * v16 + 8);

      sub_1D8D65618((a1[7] + 32 * v16), &v35);
      sub_1D8F80C60(v16, a1);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    sub_1D8D64450(&v35);
    v20 = aInterestvalue_4[0];
    v21 = aInterestvalue_4[1];

    v22 = sub_1D8D33C70(v20, v21);
    v24 = v23;

    if (v24)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D8F86F90();
      }

      v25 = *(a1[6] + 16 * v22 + 8);

      sub_1D8D65618((a1[7] + 32 * v22), &v35);
      sub_1D8F80C60(v22, a1);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    sub_1D8D64450(&v35);
    v26 = qword_1F54610C8;
    v27 = unk_1F54610D0;

    v28 = sub_1D8D33C70(v26, v27);
    v30 = v29;

    if (v30)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D8F86F90();
      }

      v31 = *(a1[6] + 16 * v28 + 8);

      sub_1D8D65618((a1[7] + 32 * v28), &v35);
      sub_1D8F80C60(v28, a1);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    sub_1D8D64450(&v35);
    v32 = sub_1D8FD5948(a1);

    v33 = v37;
    *a2 = v34;
    *(a2 + 8) = v34;
    *(a2 + 16) = v11;
    *(a2 + 24) = v33;
    *(a2 + 32) = v32;
  }

  else
  {

    sub_1D8FD5BF0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D8FD5948(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_13:
    v20 = __clz(__rbit64(v6)) | (v9 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_1D8CFAD1C(*(a1 + 56) + 32 * v20, v38);
    *&v37 = v23;
    *(&v37 + 1) = v22;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_1D8CFAD1C(&v35, v29);

    sub_1D90F25C8(v29, v30);
    v33[0] = v35;
    v33[1] = v36;
    v32 = v34;
    v24 = *(v2 + 16);
    if (*(v2 + 24) <= v24)
    {
      sub_1D9003430(v24 + 1, 1);
      v2 = v39;
    }

    v10 = v32;
    v11 = *(v2 + 40);
    sub_1D9179DBC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    result = sub_1D9179E1C();
    v12 = v2 + 64;
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v2 + 64 + 8 * (v14 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v13) >> 6;
      while (++v15 != v26 || (v25 & 1) == 0)
      {
        v27 = v15 == v26;
        if (v15 == v26)
        {
          v15 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v15);
        if (v28 != -1)
        {
          v16 = __clz(__rbit64(~v28)) + (v15 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v2 + 64 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v6 &= v6 - 1;
    *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    *(*(v2 + 48) + 16 * v16) = v10;
    v17 = *(v2 + 56) + 40 * v16;
    v18 = v30[1];
    *v17 = v30[0];
    *(v17 + 16) = v18;
    *(v17 + 32) = v31;
    ++*(v2 + 16);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  while (1)
  {
    v19 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v19 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v19);
    ++v9;
    if (v6)
    {
      v9 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1D8FD5BF0()
{
  result = qword_1ECAB8818;
  if (!qword_1ECAB8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8818);
  }

  return result;
}

unint64_t sub_1D8FD5C48()
{
  result = qword_1ECAB8820;
  if (!qword_1ECAB8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8820);
  }

  return result;
}

uint64_t sub_1D8FD5CAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8FD5CF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MTBookmarksSyncType.description.getter(uint64_t a1)
{
  v1 = 0xD00000000000001DLL;
  v2 = 0xD00000000000001DLL;
  if (a1 == 1)
  {
    v2 = 5067332;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 5460818;
  }
}

uint64_t sub_1D8FD5DAC()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  v3 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v3 = 5067332;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 5460818;
  }
}

uint64_t MTSubscriptionSyncType.description.getter(uint64_t a1)
{
  v1 = 0xD00000000000001DLL;
  v2 = 0xD00000000000001DLL;
  if (a1 == 1)
  {
    v2 = 13174;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 12662;
  }
}

uint64_t sub_1D8FD5E68()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  v3 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v3 = 13174;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 12662;
  }
}

uint64_t RemoteSyncTypeWithUnknownSyncProperties.encodeUnknownSyncProperties()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D91765CC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D91765BC();
  (*(a2 + 8))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8828, qword_1D91A3B50);
  sub_1D8FD62C0(&qword_1ECAB0148, sub_1D8FD6000);
  v7 = sub_1D91765AC();

  return v7;
}

unint64_t sub_1D8FD6000()
{
  result = qword_1ECAB2B60;
  if (!qword_1ECAB2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B60);
  }

  return result;
}

uint64_t Dictionary<>.flatteningUnknownSyncProperties<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = v7(a3, a4);
  if (!*(a2 + 16))
  {

LABEL_6:

    return a2;
  }

  v10 = sub_1D8D33C70(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D8CFAD1C(*(a2 + 56) + 32 * v10, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v7(a3, a4);
  sub_1D8F7ECD4(v21);

  sub_1D8D64450(v21);
  v13 = sub_1D917656C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1D917655C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8828, qword_1D91A3B50);
  sub_1D8FD62C0(&qword_1ECAB0140, sub_1D8FD6344);
  sub_1D917654C();
  v17 = sub_1D8FD6398(*&v21[0]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v21[0] = a2;
  sub_1D8FD6580(v17, sub_1D8FD6534, 0, isUniquelyReferenced_nonNull_native, v21);

  sub_1D8D7567C(v19, v20);
  return *&v21[0];
}

uint64_t sub_1D8FD62C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8828, qword_1D91A3B50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8FD6344()
{
  result = qword_1ECAB2B58;
  if (!qword_1ECAB2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B58);
  }

  return result;
}

uint64_t sub_1D8FD6398(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
  result = sub_1D917977C();
  v3 = result;
  v4 = 0;
  v27 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = result + 64;
  v24 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v27 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_1D8FD68E4(*(v27 + 56) + 40 * v15, v26);

      AnyCodable.value.getter(v25);
      sub_1D8FD6940(v26);
      v3 = v24;
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (v24[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      result = sub_1D8D65618(v25, (v24[7] + 32 * v15));
      v20 = v24[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v24[2] = v22;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FD6534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1D8CFAD1C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_1D8FD6580(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_1D9026624(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_1D8D65618(v49, v47);
  v14 = *a5;
  result = sub_1D8D33C70(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_1D900C074(v20, a4 & 1);
    v22 = *a5;
    result = sub_1D8D33C70(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1D9179CFC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_1D8F86F90();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_1D8CFAD1C(*(*a5 + 56) + 32 * result, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);

    v26 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm((v26 + v25));
    sub_1D8D65618(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_1D8D65618(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_1D9026624(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_1D8D65618(v49, v47);
        v35 = *a5;
        result = sub_1D8D33C70(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_1D900C074(v39, 1);
          v40 = *a5;
          result = sub_1D8D33C70(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_1D8CFAD1C(*(*a5 + 56) + 32 * result, v46);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);

          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_1Tm((v34 + v33));
          sub_1D8D65618(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_1D8D65618(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_1D9026624(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_1D8D1B144();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1D8FD69F0()
{
  v1 = sub_1D9176A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 settings];
  if (!v7)
  {
    v11 = [objc_opt_self() falsePredicate];

    v12 = v11;
    return;
  }

  v8 = v7;
  v114 = v0;
  v9 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
  sub_1D9178C9C();
  sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v120)
  {
    v115 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        sub_1D8D65618(&v119, &v117);
        sub_1D8CF2154(0, &qword_1ECAB8830, off_1E8567650);
        if ((swift_dynamicCast() & 1) == 0 || !v118)
        {
          break;
        }

        MEMORY[0x1DA729B90]();
        if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        sub_1D917869C();
        v115 = v121;
        sub_1D91791DC();
        v9 = MEMORY[0x1E69E7CC0];
        if (!v120)
        {
          goto LABEL_16;
        }
      }

      sub_1D91791DC();
    }

    while (v120);
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v115 = v9;
  }

LABEL_16:

  (*(v2 + 8))(v6, v1);
  *&v119 = v9;
  v13 = v115;
  if (v115 >> 62)
  {
    goto LABEL_56;
  }

  v14 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v15 = v114;
    v16 = &selRef_allPlayedEpsWeight;
    v116 = v14;
    if (v14)
    {
      v17 = 0;
      v18 = v13 & 0xC000000000000001;
      v19 = v13 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v18)
        {
          v20 = MEMORY[0x1DA72AA90](v17);
        }

        else
        {
          if (v17 >= *(v19 + 16))
          {
            goto LABEL_53;
          }

          v20 = *(v13 + 8 * v17 + 32);
        }

        v21 = v20;
        v22 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v23 = [v20 integerForEpisodesToShow];
        v24 = [v15 defaultSettings];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 integerForEpisodesToShow];

          if (v23 == v26)
          {
            sub_1D917959C();
            v27 = *(v119 + 16);
            sub_1D91795DC();
            sub_1D91795EC();
            sub_1D91795AC();
          }

          else
          {
          }

          v15 = v114;
        }

        else
        {
        }

        ++v17;
        v13 = v115;
        if (v22 == v116)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_32:
    v28 = v119;
    if (qword_1ECAB1CC0 != -1)
    {
      swift_once();
    }

    v110 = OBJC_IVAR___PFRestrictionsController__state;
    v111 = qword_1ECAB1CD0;
    v29 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
    os_unfair_lock_lock((v29 + 24));
    v30 = *(v29 + 16);
    os_unfair_lock_unlock((v29 + 24));
    if (!v30)
    {
      goto LABEL_60;
    }

    *&v119 = v9;
    if ((v28 & 0x8000000000000000) == 0 && (v28 & 0x4000000000000000) == 0)
    {
      v31 = *(v28 + 16);
      if (!v31)
      {
        break;
      }

      goto LABEL_38;
    }

    v31 = sub_1D917935C();
    if (!v31)
    {
      break;
    }

LABEL_38:
    v32 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1DA72AA90](v32, v28);
      }

      else
      {
        if (v32 >= *(v28 + 16))
        {
          goto LABEL_55;
        }

        v33 = *(v28 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v36 = [v33 podcast];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 isExplicit];

        if (v38)
        {
        }

        else
        {
          sub_1D917959C();
          v39 = *(v119 + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
        }

        v16 = &selRef_allPlayedEpsWeight;
      }

      else
      {
      }

      ++v32;
      if (v35 == v31)
      {
        v40 = v119;
        goto LABEL_59;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v41 = v13;
    v14 = sub_1D917935C();
    v13 = v41;
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_59:

  v28 = v40;
LABEL_60:
  if (v28 >> 62)
  {
LABEL_81:
    v42 = sub_1D917935C();
    if (v42)
    {
      goto LABEL_62;
    }

    goto LABEL_82;
  }

  v42 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
LABEL_82:
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_83;
  }

LABEL_62:
  v43 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  do
  {
    v45 = v43;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1DA72AA90](v45, v28);
      }

      else
      {
        if (v45 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v46 = *(v28 + 8 * v45 + 32);
      }

      v47 = v46;
      v43 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v48 = [v46 podcast];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 uuid];

        v16 = &selRef_allPlayedEpsWeight;
        if (v50)
        {
          break;
        }
      }

      ++v45;
      if (v43 == v42)
      {
        goto LABEL_83;
      }
    }

    v51 = sub_1D917820C();
    v53 = v52;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_1D8D4241C(0, *(v44 + 2) + 1, 1, v44);
    }

    v56 = *(v44 + 2);
    v55 = *(v44 + 3);
    if (v56 >= v55 >> 1)
    {
      v44 = sub_1D8D4241C((v55 > 1), v56 + 1, 1, v44);
    }

    *(v44 + 2) = v56 + 1;
    v57 = &v44[16 * v56];
    *(v57 + 4) = v51;
    *(v57 + 5) = v53;
    v16 = &selRef_allPlayedEpsWeight;
  }

  while (v43 != v42);
LABEL_83:

  v58 = objc_opt_self();
  sub_1D8F60B24(v44);

  v59 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v60 = sub_1D91785DC();

  v61 = [v59 initWithArray_];

  v108 = v58;
  v62 = [v58 predicateForAllEpisodesOnPodcastUuids_];

  v63 = v114;
  v64 = [v114 defaultSettings];
  if (!v64)
  {
    v67 = v115;
    if (v116)
    {
      v113 = v62;
      goto LABEL_90;
    }

    goto LABEL_109;
  }

  v65 = v64;
  v66 = [v64 v16[501]];

  v67 = v115;
  if (v66 >= 1)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1D918A530;
    v69 = sub_1D917820C();
    v71 = v70;
    *(v68 + 56) = MEMORY[0x1E69E6158];
    v72 = sub_1D8D34978();
    *(v68 + 32) = v69;
    *(v68 + 40) = v71;
    *(v68 + 96) = MEMORY[0x1E69E6530];
    *(v68 + 104) = MEMORY[0x1E69E65A8];
    *(v68 + 64) = v72;
    *(v68 + 72) = v66;
    v73 = sub_1D9178C8C();
    v74 = [v62 AND_];

    v62 = v74;
  }

  if (!v116)
  {
LABEL_109:

    return;
  }

  v113 = v62;
  v16 = &selRef_allPlayedEpsWeight;
LABEL_90:
  v75 = 0;
  v76 = v67 & 0xC000000000000001;
  v112 = v67 & 0xFFFFFFFFFFFFFF8;
  v107 = @"episodeLevel";
  v106 = xmmword_1D918A530;
  v77 = v116;
  v109 = v67 & 0xC000000000000001;
  while (1)
  {
    if (v76)
    {
      v80 = MEMORY[0x1DA72AA90](v75, v67);
    }

    else
    {
      if (v75 >= *(v112 + 16))
      {
        goto LABEL_112;
      }

      v80 = *(v67 + 8 * v75 + 32);
    }

    v79 = v80;
    v81 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    v82 = [v80 v16[501]];
    v83 = [v63 defaultSettings];
    if (!v83 || (v84 = v83, v85 = [v83 v16[501]], v84, v86 = v82 == v85, v16 = &selRef_allPlayedEpsWeight, !v86))
    {
      v87 = [v79 podcast];
      if (v87)
      {
        v88 = v87;
        v89 = [v87 uuid];
        if (v89)
        {
          v90 = v89;
          v91 = *(v111 + v110);
          os_unfair_lock_lock((v91 + 24));
          v92 = *(v91 + 16);
          os_unfair_lock_unlock((v91 + 24));
          if (v92 && ([v88 isExplicit] & 1) != 0)
          {
            v78 = v79;
            v79 = v90;
            v76 = v109;
          }

          else
          {
            v93 = v16;
            v94 = [v108 predicateForAllEpisodesOnPodcastUuid_];

            v95 = [v79 v93 + 136];
            if (v95 >= 1)
            {
              v96 = v95;
              sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
              v97 = swift_allocObject();
              *(v97 + 16) = v106;
              v98 = sub_1D917820C();
              v100 = v99;
              *(v97 + 56) = MEMORY[0x1E69E6158];
              v101 = sub_1D8D34978();
              *(v97 + 32) = v98;
              *(v97 + 40) = v100;
              *(v97 + 96) = MEMORY[0x1E69E6530];
              *(v97 + 104) = MEMORY[0x1E69E65A8];
              *(v97 + 64) = v101;
              *(v97 + 72) = v96;
              v63 = v114;
              v67 = v115;
              v102 = sub_1D9178C8C();
              v103 = [v94 AND_];

              v94 = v103;
            }

            v76 = v109;
            v104 = v113;
            v105 = [v113 OR:v94];

            v78 = v104;
            v113 = v105;
            v16 = &selRef_allPlayedEpsWeight;
          }

          v77 = v116;
        }
      }
    }

    ++v75;
    if (v81 == v77)
    {
      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_112:
  __break(1u);
}

void __swiftcall MTPlaylist.unsafePredicateForStationEpisodesFromPodcast(podcastUuid:)(NSPredicate *__return_ptr retstr, Swift::String podcastUuid)
{
  v32 = podcastUuid;
  v3 = sub_1D9176A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 settings];
  if (!v9)
  {
    goto LABEL_37;
  }

  v10 = v9;
  v31 = v2;
  v11 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D9178C9C();
  sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v37)
  {
    v33 = v4;
    do
    {
      while (1)
      {
        sub_1D8D65618(&v36, &v34);
        sub_1D8CF2154(0, &qword_1ECAB8830, off_1E8567650);
        if ((swift_dynamicCast() & 1) == 0 || !v35)
        {
          break;
        }

        MEMORY[0x1DA729B90]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        sub_1D917869C();
        v11 = v38;
        sub_1D91791DC();
        v4 = v33;
        if (!v37)
        {
          goto LABEL_12;
        }
      }

      sub_1D91791DC();
    }

    while (v37);
    v4 = v33;
  }

LABEL_12:

  (*(v4 + 8))(v8, v3);
  if (v11 >> 62)
  {
LABEL_35:
    v33 = sub_1D917935C();
    if (v33)
    {
      goto LABEL_14;
    }

LABEL_36:

    goto LABEL_37;
  }

  v33 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_36;
  }

LABEL_14:
  v13 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1DA72AA90](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v17 = [v14 podcast];
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = v17;
    v19 = [v17 uuid];

    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = sub_1D917820C();
    v22 = v21;

    if (v20 == v32._countAndFlagsBits && v22 == v32._object)
    {
      break;
    }

    v24 = sub_1D9179ACC();

    if (v24)
    {
      countAndFlagsBits = v32._countAndFlagsBits;
      object = v32._object;
      goto LABEL_30;
    }

LABEL_15:

    ++v13;
    if (v16 == v33)
    {
      goto LABEL_36;
    }
  }

  countAndFlagsBits = v32._countAndFlagsBits;
  object = v32._object;

LABEL_30:

  v27 = [v15 podcast];
  if (v27)
  {
    v28 = v27;
    sub_1D8FD7974(countAndFlagsBits, object, [v27 isExplicit], objc_msgSend(v15, sel_integerForEpisodesToShow));

    return;
  }

LABEL_37:
  v29 = [objc_opt_self() falsePredicate];

  v30 = v29;
}

id sub_1D8FD7974(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECAB1CC0 != -1)
  {
    swift_once();
  }

  v6 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 24));
  if (v7 && (a3 & 1) != 0)
  {
    v8 = [objc_opt_self() falsePredicate];

    return v8;
  }

  else
  {
    v10 = objc_opt_self();
    v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v12 = [v10 predicateForAllEpisodesOnPodcastUuid_];

    if (a4 >= 1)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = sub_1D917820C();
      v16 = v15;
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v17 = sub_1D8D34978();
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      v18 = MEMORY[0x1E69E65A8];
      *(v13 + 96) = MEMORY[0x1E69E6530];
      *(v13 + 104) = v18;
      *(v13 + 64) = v17;
      *(v13 + 72) = a4;
      v19 = sub_1D9178C8C();
      v20 = [v12 AND_];

      v12 = v20;
    }

    v21 = sub_1D8D6CD58();
    v22 = [v12 AND_];

    v23 = v22;
    v24 = sub_1D8D6D430();
    v25 = [v23 AND_];

    return v25;
  }
}

unint64_t sub_1D8FD7BFC()
{
  result = qword_1ECAAFC60;
  if (!qword_1ECAAFC60)
  {
    sub_1D8CF2154(255, &qword_1EDCD5B00, off_1E85675C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFC60);
  }

  return result;
}

void sub_1D8FD7C64(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_1D917913C();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_1D917914C();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

uint64_t static MTPodcastPlaylistSettings.sortDescriptorsForGroupedStation(orderedBy:)(int a1)
{
  result = MEMORY[0x1E69E7CC0];
  if (a1 <= 2)
  {
    if (!a1)
    {

      return _sSo25MTPodcastPlaylistSettingsC18PodcastsFoundationE33sortDescriptorsForManualShowOrderSaySo16NSSortDescriptorCGyFZ_0();
    }

    if (a1 != 1)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D9189070;
    sub_1D917820C();
    v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v7 = [v5 initWithKey:v6 ascending:0];
LABEL_10:
    v9 = v7;

    result = v4;
    *(v4 + 32) = v9;
    return result;
  }

  switch(a1)
  {
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D9189070;
      sub_1D917820C();
      v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = [v8 initWithKey:v6 ascending:1];
      goto LABEL_10;
    case 4:
      v3 = 1;
      break;
    case 5:
      v3 = 0;
      break;
    default:
      return result;
  }

  return _sSo25MTPodcastPlaylistSettingsC18PodcastsFoundationE27sortDescriptorsForShowTitle9ascendingSaySo16NSSortDescriptorCGSb_tFZ_0(v3);
}

uint64_t sub_1D8FD7F90(uint64_t *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189070;
  v5 = *a1;
  sub_1D917820C();
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v8 = [v6 initWithKey:v7 ascending:a2 & 1];

  *(v4 + 32) = v8;
  return v4;
}

uint64_t _sSo25MTPodcastPlaylistSettingsC18PodcastsFoundationE33sortDescriptorsForManualShowOrderSaySo16NSSortDescriptorCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  MEMORY[0x1DA7298F0](46, 0xE100000000000000);
  v1 = sub_1D917820C();
  MEMORY[0x1DA7298F0](v1);

  v2 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v2 initWithKey:v3 ascending:0];

  *(v0 + 32) = v4;
  return v0;
}

uint64_t _sSo25MTPodcastPlaylistSettingsC18PodcastsFoundationE27sortDescriptorsForShowTitle9ascendingSaySo16NSSortDescriptorCGSb_tFZ_0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  MEMORY[0x1DA7298F0](46, 0xE100000000000000);
  v3 = sub_1D917820C();
  MEMORY[0x1DA7298F0](v3);

  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = [v4 initWithKey:v5 ascending:a1 & 1 selector:sel_localizedStandardCompare_];

  *(v2 + 32) = v6;
  return v2;
}

PodcastsFoundation::FeedURLComposerError_optional __swiftcall FeedURLComposerError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D8FD8284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8FD8B20();
  v5 = sub_1D8D32440();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1D8FD830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8840, &unk_1D91A3BB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  sub_1D8ECA48C(a1, &v21 - v13);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    if (a2)
    {
      return sub_1D8FD880C(a2, a3);
    }

    else
    {
      sub_1D8FD8574();
      swift_allocError();
      *v20 = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v22 = a3;
    v16 = *(v7 + 32);
    v16(v10, v14, v6);
    v17 = objc_opt_self();
    sub_1D9176ACC();
    v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    LODWORD(v17) = [v17 isSupportedUrlString_];

    if (v17)
    {
      return (v16)(v22, v10, v6);
    }

    else
    {
      sub_1D8FD8574();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      return (*(v7 + 8))(v10, v6);
    }
  }
}

unint64_t sub_1D8FD8574()
{
  result = qword_1ECAB8848;
  if (!qword_1ECAB8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8848);
  }

  return result;
}

uint64_t sub_1D8FD880C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  if (!a1)
  {
    goto LABEL_4;
  }

  v13[0] = 0x6C616E7265746E69;
  v13[1] = 0xEB000000002F2F3ALL;
  v13[3] = a1;
  v8 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v8);

  sub_1D9176BFC();

  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1D8E677CC(v7);
LABEL_4:
    sub_1D8FD8574();
    swift_allocError();
    *v11 = 2;
    return swift_willThrow();
  }

  return (*(v10 + 32))(a2, v7, v9);
}

id FeedURLComposer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedURLComposer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedURLComposer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeedURLComposer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedURLComposer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8FD8A5C()
{
  result = qword_1ECAB8850;
  if (!qword_1ECAB8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8850);
  }

  return result;
}

unint64_t sub_1D8FD8B20()
{
  result = qword_1ECAB8858;
  if (!qword_1ECAB8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8858);
  }

  return result;
}

uint64_t sub_1D8FD8B74(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_1D8FD9118(*a1, v4);
  sub_1D8FD8F88(v2, v4);

  return sub_1D8FD9104(v2, v4);
}

uint64_t MTPodcast.episodeUserFilter.setter(uint64_t a1, char a2)
{
  sub_1D8FD8F88(a1, a2);

  return sub_1D8FD9104(a1, a2);
}

void (*MTPodcast.episodeUserFilter.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = MTPodcast.episodeUserFilter.getter();
  *(v4 + 8) = v5;
  return sub_1D8FD8C98;
}

void sub_1D8FD8C98(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = (*a1)[4];
  if (a2)
  {
    sub_1D8FD9118(**a1, v4);
    [v5 willChangeValueForKey_];
    if (v4 == 255)
    {
      v15 = 0;
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    else
    {
      v6 = sub_1D91765CC();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      sub_1D8F95C9C(v3, v4);
      sub_1D91765BC();
      v2[2] = v3;
      *(v2 + 24) = v4;
      sub_1D8F993C0();
      v12 = sub_1D91765AC();
      v14 = v13;

      sub_1D8FD9104(v3, v4);
      sub_1D8D752C4(v12, v14);
      v15 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
      sub_1D8D7567C(v12, v14);
    }

    v16 = v2[4];
    [v16 setPrimitiveValue:v15 forKey:@"episodeUserFilter"];
    swift_unknownObjectRelease();
    [v16 didChangeValueForKey_];
    sub_1D8D75668(v12, v14);
    sub_1D8FD9104(v3, v4);
    v17 = *v2;
    v18 = *(v2 + 8);
  }

  else
  {
    [(*a1)[4] willChangeValueForKey_];
    if (v4 == 255)
    {
      v22 = 0;
      v19 = 0;
      v21 = 0xF000000000000000;
    }

    else
    {
      v9 = sub_1D91765CC();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      sub_1D8F95C9C(v3, v4);
      sub_1D91765BC();
      v2[2] = v3;
      *(v2 + 24) = v4;
      sub_1D8F993C0();
      v19 = sub_1D91765AC();
      v21 = v20;

      sub_1D8FD9104(v3, v4);
      sub_1D8D752C4(v19, v21);
      v22 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
      sub_1D8D7567C(v19, v21);
    }

    v23 = v2[4];
    [v23 setPrimitiveValue:v22 forKey:@"episodeUserFilter"];
    swift_unknownObjectRelease();
    [v23 didChangeValueForKey_];
    sub_1D8D75668(v19, v21);
    v17 = v3;
    v18 = v4;
  }

  sub_1D8FD9104(v17, v18);

  free(v2);
}

uint64_t sub_1D8FD8F88(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = ~a2;
  [v3 willChangeValueForKey_];
  if (v6)
  {
    v7 = sub_1D91765CC();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1D8F95C9C(a1, a2);
    sub_1D91765BC();
    sub_1D8F993C0();
    v10 = sub_1D91765AC();
    v12 = v11;

    sub_1D8FD9104(a1, a2);
    sub_1D8D752C4(v10, v12);
    v13 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    sub_1D8D7567C(v10, v12);
  }

  else
  {
    v13 = 0;
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  [v3 setPrimitiveValue:v13 forKey:@"episodeUserFilter"];
  swift_unknownObjectRelease();
  [v3 didChangeValueForKey_];
  return sub_1D8D75668(v10, v12);
}

uint64_t sub_1D8FD9104(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D8F95794(a1, a2);
  }

  return a1;
}

uint64_t sub_1D8FD9118(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D8F95C9C(a1, a2);
  }

  return a1;
}

void static MTPodcast.recalculateAvailabilityDates(in:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() predicateForEpisodesWithUnsatisfiedAvailabilityDate];
  sub_1D8FD43E4();
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v7 setPredicate_];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v7;
  v8[4] = a2;
  v8[5] = a3;
  v12[4] = sub_1D8FD946C;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8CF5F60;
  v12[3] = &block_descriptor_57;
  v9 = _Block_copy(v12);
  v10 = a1;
  v11 = v7;
  sub_1D8E8CDBC(a2);

  [v10 performBlock_];
  _Block_release(v9);
}

id sub_1D8FD9298(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v5 = sub_1D917908C();
  v6 = sub_1D8FBF204(v5);

  if (!v6)
  {
    goto LABEL_17;
  }

  v18 = a1;
  if (v6 >> 62)
  {
    result = sub_1D917935C();
    v8 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_4:
      if (v8 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v8; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1DA72AA90](i, v6);
        }

        else
        {
          v12 = *(v6 + 8 * i + 32);
        }

        v11 = v12;
        [v12 resolveAvailabilityDate];
        v13 = [v11 podcast];
        if (v13)
        {
          v14 = v13;
          [v13 latestEpisodeAvailabilityTime];
          v16 = v15;
          [v11 firstTimeAvailable];
          if (v16 < v17)
          {
            [v11 firstTimeAvailable];
            [v14 setLatestEpisodeAvailabilityTime_];
            v10 = v11;
            v11 = v14;
          }

          else
          {
            v10 = v14;
          }
        }
      }
    }
  }

  result = [v18 saveInCurrentBlock];
LABEL_17:
  if (a3)
  {
    return a3();
  }

  return result;
}

void MTPodcast.shouldBeDeleted.getter()
{
  v1 = v0;
  v2 = [v0 episodes];
  if (!v2)
  {
LABEL_25:
    [v1 subscribed];
    return;
  }

  v3 = v2;
  sub_1D8FD43E4();
  sub_1D8FD7BFC();
  v4 = sub_1D9178A9C();

  v19 = v0;
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D9178B3C();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v8 = 0;
    v6 = v4;
  }

  v18 = v7;
  v13 = (v7 + 64) >> 6;
  while (v6 < 0)
  {
    if (!sub_1D917938C() || (swift_dynamicCast(), (v16 = v20) == 0))
    {
LABEL_21:
      sub_1D8D1B144();

LABEL_24:
      v1 = v19;
      goto LABEL_25;
    }

LABEL_19:
    if ([v16 isBookmarked])
    {
      sub_1D8D1B144();

      goto LABEL_24;
    }

    v17 = [v16 isDownloaded];

    if (v17)
    {
      goto LABEL_21;
    }
  }

  v14 = v8;
  v15 = v9;
  if (v9)
  {
LABEL_15:
    v9 = (v15 - 1) & v15;
    v16 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_21;
    }

    v15 = *(v5 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall MTPodcast.calculateNewEpisodeCount(in:serialShowsUseExperimentalRules:)(NSManagedObjectContext *in, Swift::Bool serialShowsUseExperimentalRules)
{
  v5 = objc_opt_self();
  v6 = [v2 showTypeInFeed];
  v7 = [v5 showTypeFromString_];

  if (v7 != 1 && serialShowsUseExperimentalRules)
  {
    v8 = &selRef_calculateSerialNewEpisodeCountIn_;
  }

  else
  {
    v8 = &selRef_calculateEpisodicNewEpisodeCountIn_;
  }

  v9 = *v8;

  [v2 v9];
}

id sub_1D8FD98CC()
{
  v1 = v0;
  v2 = sub_1D9176E3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v83 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v83 - v12;
  v14 = [v1 uuid];
  if (!v14 || (v14, sub_1D9176CDC(), v16 = v15, v17 = &selRef_isBackCatalogItem, [v1 lastDatePlayed], v18 + 2592000.0 < v16))
  {
    [v1 setNewEpisodesCount_];

    return [v1 setNewTrailersCount_];
  }

  [v1 lastDatePlayed];
  sub_1D9176CBC();
  sub_1D9176E2C();
  v94 = v9;
  sub_1D9176D7C();
  v20 = *(v3 + 8);
  v92 = v3 + 8;
  v93 = v2;
  v91 = v20;
  v20(v6, v2);
  v21 = [v1 objectID];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D918A530;
  v23 = sub_1D917820C();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1D8D34978();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  *(v22 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  *(v22 + 104) = sub_1D8FDA6DC();
  *(v22 + 72) = v21;
  v26 = v21;
  v27 = sub_1D9178C8C();

  v28 = objc_opt_self();
  v29 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v30 = [v28 predicateForEpisodesPublishedAfterDate_];

  v90 = v27;
  v31 = [v27 AND_];

  v32 = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:@"firstTimeAvailable" ascending:0];
  v33 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v89 = v31;
  [v33 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D9189070;
  *(v34 + 32) = v32;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v35 = v32;
  v36 = sub_1D91785DC();

  [v33 setSortDescriptors_];

  [v33 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v37 = sub_1D917908C();
  v49 = v37;
  if (!(v37 >> 62))
  {
    v50 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v50;
    if (v50)
    {
      goto LABEL_12;
    }

LABEL_42:
    v53 = v89;
    goto LABEL_43;
  }

LABEL_41:
  v79 = sub_1D917935C();
  v80 = sub_1D917935C();
  v51 = v79;
  v50 = v80;
  if (!v80)
  {
    goto LABEL_42;
  }

LABEL_12:
  v84 = v51;
  if ((v49 & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x1DA72AA90](0, v49);
  }

  else
  {
    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_48;
    }

    v52 = *(v49 + 32);
  }

  v85 = v52;
  if (v84 <= 9)
  {
    v87 = v49 & 0xC000000000000001;
    v54 = v85;
    [v85 pubDate];
    v56 = v55;
    sub_1D9176CCC();
    v58 = v57;
    [v1 v17[84]];
    v60 = v59;
    [v54 pubDate];
    if (v61 < v60 || v56 < v58)
    {

      goto LABEL_44;
    }

    if (v84 < 1)
    {

      v77 = v93;
      v78 = v91;
      v91(v94, v93);
      v78(v13, v77);
      v72 = 0;
      v76 = 0;
      goto LABEL_38;
    }

    v88 = v35;
    v35 = 0;
    v95 = MEMORY[0x1E69E7CC0];
    v83 = v49 & 0xFFFFFFFFFFFFFF8;
    v17 = &selRef_isBackCatalogItem;
    v62 = v87;
    v86 = v1;
    do
    {
      if (v62)
      {
        v63 = MEMORY[0x1DA72AA90](v35, v49);
      }

      else
      {
        if (v35 >= *(v83 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v63 = *(v49 + 8 * v35 + 32);
      }

      v64 = v63;
      v65 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        swift_once();
        v38 = sub_1D917744C();
        __swift_project_value_buffer(v38, qword_1EDCD0F88);
        v39 = v50;
        v40 = sub_1D917741C();
        v41 = sub_1D9178CFC();

        v42 = os_log_type_enabled(v40, v41);
        v43 = v93;
        if (v42)
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          v46 = v50;
          v47 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 4) = v47;
          *v45 = v47;
          _os_log_impl(&dword_1D8CEC000, v40, v41, "Failed to fetch newest episodes with error: %@", v44, 0xCu);
          sub_1D8E262AC(v45);
          MEMORY[0x1DA72CB90](v45, -1, -1);
          MEMORY[0x1DA72CB90](v44, -1, -1);
        }

        v48 = v91;
        v91(v94, v43);
        v48(v13, v43);
        goto LABEL_45;
      }

      if ([v63 v17 + 1722])
      {
        sub_1D917959C();
        v66 = v49;
        v67 = v50;
        v68 = v33;
        v69 = v13;
        v70 = v17;
        v71 = *(v95 + 16);
        sub_1D91795DC();
        v17 = v70;
        v13 = v69;
        v33 = v68;
        v50 = v67;
        v49 = v66;
        v1 = v86;
        sub_1D91795EC();
        sub_1D91795AC();
        v62 = v87;
      }

      else
      {
      }

      ++v35;
    }

    while (v65 != v50);

    if ((v95 & 0x8000000000000000) == 0 && (v95 & 0x4000000000000000) == 0)
    {
      v72 = *(v95 + 16);
      goto LABEL_34;
    }

LABEL_48:
    v72 = sub_1D917935C();
LABEL_34:
    v73 = v93;
    v74 = v94;
    v75 = v91;

    v75(v74, v73);
    result = (v75)(v13, v73);
    if (v72 == v84)
    {
      v76 = 0;
      v72 = v84;
    }

    else
    {
      v76 = v84 - v72;
      if (__OFSUB__(v84, v72))
      {
        __break(1u);
        return result;
      }
    }

LABEL_38:
    [v1 setNewEpisodesCount_];
    return [v1 setNewTrailersCount_];
  }

  v53 = v35;
  v35 = v85;
LABEL_43:

LABEL_44:
  v81 = v93;
  v82 = v91;
  v91(v94, v93);
  v82(v13, v81);
LABEL_45:
  [v1 setNewEpisodesCount_];
  return [v1 setNewTrailersCount_];
}

id sub_1D8FDA2FC(void *a1)
{
  v2 = v1;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 uuid];
  if (v10)
  {
    v11 = v10;
    v30 = v4;
    [v2 lastDatePlayed];
    sub_1D9176CBC();
    v12 = objc_opt_self();
    v13 = [v12 predicateForAllEpisodesOnPodcastUuid_];

    v14 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v15 = [v12 predicateForEpisodesPublishedAfterDate_];

    v16 = [v13 AND_];
    v17 = [a1 countOfObjectsInEntity:@"MTEpisode" predicate:v16];
    [v2 lastDatePlayed];
    if (v18 == 0.0)
    {
      (*(v5 + 8))(v9, v30);

      [v2 setNewEpisodesCount_];
      return [v2 setNewTrailersCount_];
    }

    v28 = v17;
    v29 = a1;
    if (v17)
    {
      v20 = [v12 predicateForEpisodeType_];
      v21 = [v16 AND_];

      v22 = @"MTEpisode";
      v23 = v21;
      v24 = [v29 countOfObjectsInEntity:v22 predicate:v23];

      result = (*(v5 + 8))(v9, v30);
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_18;
      }

      v25 = v28;
      if (v24 != v28)
      {
        v26 = &v28[-v24];
        if (v28 >= v24)
        {
          if ((v26 & 0x8000000000000000) == 0)
          {
            v25 = v24;
LABEL_15:
            [v2 setNewEpisodesCount_];
            return [v2 setNewTrailersCount_];
          }

LABEL_19:
          __break(1u);
          return result;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      (*(v5 + 8))(v9, v30);

      v25 = 0;
    }

    v26 = 0;
    goto LABEL_15;
  }

  [v2 setNewEpisodesCount_];

  return [v2 setNewTrailersCount_];
}

unint64_t sub_1D8FDA6DC()
{
  result = qword_1ECAB87B8;
  if (!qword_1ECAB87B8)
  {
    sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87B8);
  }

  return result;
}

id MTPodcast.showType.getter()
{
  v1 = objc_opt_self();
  v2 = [v0 showTypeInFeed];
  v3 = [v1 showTypeFromString_];

  return v3;
}

id MTPodcast.applyDefaultFollowedShowSettings(for:)(uint64_t a1)
{
  [v1 setNotifications_];
  [v1 setShowTypeSetting_];
  [v1 setHidesPlayedEpisodes_];
  [v1 setEpisodeLimit_];
  [v1 setDeletePlayedEpisodes_];

  return [v1 setAdvancedPlaybackSettings_];
}

Swift::Void __swiftcall MTPodcast.applyDefaultUnfollowedShowSettings()()
{
  v1 = objc_opt_self();
  v2 = [v0 showTypeInFeed];
  v3 = [v1 showTypeFromString_];

  [v0 applyDefaultFollowedShowSettingsFor_];
  [v0 setEpisodeLimit_];

  [v0 setNotifications_];
}

uint64_t sub_1D8FDA958(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1D8FDA9B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

id static MTPodcast.sortDescriptor(newestToOldest:)(char a1)
{
  sub_1D917820C();
  v2 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v2 initWithKey:v3 ascending:(a1 & 1) == 0];

  return v4;
}

id sub_1D8FDAB8C(uint64_t *a1)
{
  v1 = *a1;
  sub_1D917820C();
  v2 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v2 initWithKey:v3 ascending:0];

  return v4;
}

id MTPodcast.syncType.getter()
{
  result = [v0 displayType];
  if (result)
  {
    v2 = result;
    v3 = MTDisplayTypeFromPersistentString(result);

    return (v3 == 1);
  }

  return result;
}

Swift::Int64_optional __swiftcall MTPodcast.seasonToShow(episodeToPlay:)(MTEpisode_optional *episodeToPlay)
{
  if ([v1 showTypeInFeedResolvedValue] != 2)
  {
    goto LABEL_25;
  }

  if (!episodeToPlay || (v3 = [(MTEpisode_optional *)episodeToPlay seasonNumber]) == 0)
  {
    v3 = [v1 seasonNumbers];
    if (!v3)
    {
LABEL_26:
      v4 = 1;
      goto LABEL_33;
    }

    v5 = v3;
    sub_1D8E93CA4();
    v6 = sub_1D91785FC();

    v7 = [v1 showTypeUserSetting];
    v8 = v6 >> 62;
    if (v7 == 4)
    {
      if (v8)
      {
        v3 = sub_1D917935C();
        if (v3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
LABEL_9:
          if ((v6 & 0xC000000000000001) == 0)
          {
            if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v9 = *(v6 + 32);
LABEL_19:
              v12 = v9;
LABEL_20:
              v13 = v12;

              v14 = [v13 longLongValue];

              v3 = v14;
              v4 = 0;
              goto LABEL_33;
            }

            goto LABEL_30;
          }

          v3 = 0;
          goto LABEL_28;
        }
      }

      goto LABEL_24;
    }

    if (v8)
    {
      v10 = sub_1D917935C();
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_14:
        v11 = __OFSUB__(v10, 1);
        v3 = v10 - 1;
        if (v11)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if ((v6 & 0xC000000000000001) == 0)
        {
          if ((v3 & 0x8000000000000000) == 0)
          {
            if (v3 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v9 = *(v6 + 8 * v3 + 32);
              goto LABEL_19;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_28:
        v12 = MEMORY[0x1DA72AA90](v3, v6);
        goto LABEL_20;
      }
    }

LABEL_24:

LABEL_25:
    v3 = 0;
    goto LABEL_26;
  }

  v4 = 0;
LABEL_33:
  result.value = v3;
  result.is_nil = v4;
  return result;
}

BOOL MTPodcast.shouldBeHiddenFromUpNext.getter()
{
  [v0 lastRemovedFromUpNextDate];
  result = 0;
  if (v1 != 0.0)
  {
    if (![v0 subscribed])
    {
      return 1;
    }

    [v0 latestEpisodeAvailabilityTime];
    v4 = v3;
    [v0 lastRemovedFromUpNextDate];
    if (v5 >= v4)
    {
      [v0 addedDate];
      v7 = v6;
      [v0 lastRemovedFromUpNextDate];
      if (v8 >= v7)
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_1D8FDAF80()
{
  result = qword_1ECAB8860;
  if (!qword_1ECAB8860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8868, &qword_1D91A3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8860);
  }

  return result;
}

uint64_t PodcastIdentifier.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = 0x2864697575;
    }

    else
    {
      v3 = 0x284C525564656566;
    }

    v6 = v3;
    MEMORY[0x1DA7298F0]();
  }

  else
  {
    v6 = 0x28444965726F7473;
    v4 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v4);
  }

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return v6;
}

uint64_t PodcastIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x1DA72B390](v5);

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](a2);
  }
}

uint64_t PodcastIdentifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D9179DBC();
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x1DA72B390](v5);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8FDB1E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1DA72B390](v4);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8FDB280()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = v0[1];
    if (*(v0 + 16) == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    MEMORY[0x1DA72B390](v3);

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v1);
  }
}

uint64_t sub_1D8FDB314()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1DA72B390](v4);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

char *RemoteNonFollowedShow.prioritizedIDs.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  if ([objc_opt_self() isNotEmpty_])
  {
    v7 = sub_1D8ECD37C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1D8ECD37C((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[24 * v9];
    *(v10 + 4) = v2;
    *(v10 + 5) = 0;
    v10[48] = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v11 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v11 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D8ECD37C(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_1D8ECD37C((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[24 * v13];
    *(v14 + 4) = v1;
    *(v14 + 5) = v3;
    v14[48] = 2;
  }

  else if (!*(v7 + 2))
  {
    v15 = qword_1EDCD0F80;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0F88);

    v17 = sub_1D917741C();
    v18 = sub_1D9178D0C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v19 = 134218498;
      *(v19 + 4) = v2;

      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1D8CFA924(v1, v3, &v25);
      *(v19 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
      v20 = sub_1D917826C();
      v22 = sub_1D8CFA924(v20, v21, &v25);

      *(v19 + 24) = v22;

      _os_log_impl(&dword_1D8CEC000, v17, v18, "We shouldn't be here: RemoteNonFollowedShow must at least have a non empty feedURL. AdamID %lld, feedURL %s, lastDatePlayed %s.", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    else
    {
    }
  }

  return v7;
}

uint64_t _s18PodcastsFoundation17PodcastIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1D9179ACC();
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1D9179ACC();
    }

    return 0;
  }

  return !a6 && a1 == a4;
}

unint64_t sub_1D8FDB788()
{
  result = qword_1ECAB8870;
  if (!qword_1ECAB8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8870);
  }

  return result;
}

uint64_t sub_1D8FDB7EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEAC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9179A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D8E59848(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

id PodcastUpdateAverageCalculator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PodcastUpdateAverageCalculator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastUpdateAverageCalculator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PodcastUpdateAverageCalculator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastUpdateAverageCalculator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8FDBA74(uint64_t result)
{
  if (*(result + 16))
  {
    v7 = result;

    sub_1D8FDB7EC(&v7);
    v1 = *(v7 + 2);
    v2 = v1 >> 1;
    if (v1)
    {
      v6 = *&v7[8 * v2 + 32];
    }

    else if (v1 < 2)
    {
      __break(1u);

      __break(1u);
    }

    else
    {
      v3 = &v7[8 * v2];
      v4 = *(v3 + 3);
      v5 = *(v3 + 4);
    }
  }

  return result;
}

id sub_1D8FDBB24(void *a1, void *a2)
{
  result = [a1 uuid];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v34 = a1;
  v6 = objc_opt_self();
  v7 = @"MTEpisode";
  v8 = [v6 predicateForAllEpisodesOnPodcastUuid_];

  v9 = [v6 sortDescriptorsForPubDateAscending_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v10 = sub_1D91785FC();

  sub_1D8F61018(v10);

  v11 = sub_1D91785DC();

  v12 = [a2 objectsInEntity:v7 predicate:v8 sortDescriptors:v11 returnsObjectsAsFaults:0 limit:10];

  if (!v12 || (sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620), v13 = sub_1D91785FC(), v12, v14 = sub_1D8FBF084(v13), , !v14))
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v14 >> 62)
  {
LABEL_41:
    v15 = sub_1D917935C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_35:

    sub_1D8FDBA74(v18);
    v32 = v31;

    return [v34 setUpdateAvg_];
  }

  v16 = 0;
  v17 = v14 & 0xC000000000000001;
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v16;
    while (1)
    {
      if (v17)
      {
        v20 = MEMORY[0x1DA72AA90](v19, v14);
      }

      else
      {
        if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v20 = *(v14 + 8 * v19 + 32);
      }

      v21 = v20;
      v16 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v14 >> 62)
      {
        v22 = sub_1D917935C();
      }

      else
      {
        v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v22, 1))
      {
        goto LABEL_40;
      }

      if (v19 < v22 - 1)
      {
        break;
      }

      ++v19;
      if (v16 == v15)
      {
        goto LABEL_35;
      }
    }

    result = [v21 pubDate];
    v24 = v23;
    if (v17)
    {
      v25 = MEMORY[0x1DA72AA90](v19 + 1, v14);
      goto LABEL_27;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v25 = *(v14 + 32 + 8 * v16);
LABEL_27:
    v26 = v25;
    [v25 pubDate];
    v28 = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D8CF69F0(0, *(v18 + 2) + 1, 1, v18);
    }

    v30 = *(v18 + 2);
    v29 = *(v18 + 3);
    v33 = v18;
    if (v30 >= v29 >> 1)
    {
      v33 = sub_1D8CF69F0((v29 > 1), v30 + 1, 1, v18);
    }

    *(v33 + 2) = v30 + 1;
    v18 = v33;
    *&v33[8 * v30 + 32] = vabdd_f64(v24, v28);
    if (v16 == v15)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t RemoteNonFollowedShowError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FDBFF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  *(v0 + 32) = sub_1D917820C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D917820C();
  *(v0 + 56) = v2;
  result = sub_1D917820C();
  *(v0 + 64) = result;
  *(v0 + 72) = v4;
  off_1ECAB8878 = v0;
  return result;
}

uint64_t sub_1D8FDC0AC()
{
  result = sub_1D917820C();
  qword_1ECAB8880 = result;
  *algn_1ECAB8888 = v1;
  return result;
}

uint64_t static RemoteNonFollowedShow.unknownSyncKey.getter()
{
  if (qword_1ECAB36A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAB8880;

  return v0;
}

uint64_t sub_1D8FDC144()
{
  if (qword_1ECAB3698 != -1)
  {
    swift_once();
  }

  v0 = off_1ECAB8878;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  v2 = qword_1ECAB36A0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_1ECAB8888;
  *(inited + 32) = qword_1ECAB8880;
  *(inited + 40) = v3;

  result = sub_1D8E2FE30(inited);
  qword_1ECAB8890 = v0;
  return result;
}

uint64_t RemoteNonFollowedShow.feedURL.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RemoteNonFollowedShow.lastDatePlayed.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t RemoteNonFollowedShow.init(dictionary:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D917820C();
  if (!a1[2])
  {

LABEL_13:

    sub_1D8FDC640();
    swift_allocError();
    return swift_willThrow();
  }

  v6 = sub_1D8D33C70(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1D8CFAD1C(a1[7] + 32 * v6, v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = sub_1D917820C();
  if (!a1[2])
  {

    goto LABEL_13;
  }

  v11 = sub_1D8D33C70(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1D8CFAD1C(a1[7] + 32 * v11, v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = sub_1D917820C();
  if (a1[2])
  {
    v16 = sub_1D8D33C70(v14, v15);
    v18 = v17;

    if (v18)
    {
      sub_1D8CFAD1C(a1[7] + 32 * v16, v36);
      v19 = swift_dynamicCast();
      v20 = v34;
      if (!v19)
      {
        v20 = 0;
      }

      v33 = v20;
      v21 = v19 ^ 1;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v33 = 0;
  v21 = 1;
LABEL_17:
  v37 = v21;
  if (qword_1ECAB3698 != -1)
  {
    swift_once();
  }

  v23 = *(off_1ECAB8878 + 2);
  if (v23)
  {
    v24 = (off_1ECAB8878 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;

      v27 = sub_1D8D33C70(v25, v26);
      v29 = v28;

      if (v29)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D8F86F90();
        }

        v30 = *(a1[6] + 16 * v27 + 8);

        sub_1D8D65618((a1[7] + 32 * v27), v36);
        sub_1D8F80C60(v27, a1);
      }

      else
      {
        memset(v36, 0, sizeof(v36));
      }

      sub_1D8D64450(v36);
      v24 += 2;
      --v23;
    }

    while (v23);
  }

  v31 = sub_1D8FD5948(a1);

  v32 = v37;
  *a2 = v34;
  *(a2 + 8) = v34;
  *(a2 + 16) = v35;
  *(a2 + 24) = v33;
  *(a2 + 32) = v32;
  *(a2 + 40) = v31;
  return result;
}

uint64_t sub_1D8FDC5D8()
{
  if (qword_1ECAB36A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAB8880;

  return v0;
}

unint64_t sub_1D8FDC640()
{
  result = qword_1ECAB8898;
  if (!qword_1ECAB8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8898);
  }

  return result;
}

unint64_t sub_1D8FDC698()
{
  result = qword_1ECAB88A0;
  if (!qword_1ECAB88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88A0);
  }

  return result;
}

uint64_t sub_1D8FDC6FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8FDC744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8FDC7A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000019;
  v3 = "L01";
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = "ExcessiveDownloads";
    if (a1 != 2)
    {
      v13 = "DeletedSecureKeyWithAsset";
    }

    v14 = "DuplicateDownloads";
    if (!a1)
    {
      v14 = "L01";
    }

    if (a1 <= 1u)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v11 = 0xD000000000000019;
    }

    if (v4 <= 1)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = "DownloadediPodLibraryFile";
    v6 = 0xD000000000000015;
    v7 = "PotentialSyncDataLoss";
    v8 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v8 = 0xD000000000000017;
      v7 = "ReadOnlyDeviceMakingSyncChanges";
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = "MissingFairPlayOfflineKey";
    v10 = 0xD000000000000011;
    if (a1 != 4)
    {
      v10 = 0xD000000000000019;
      v9 = "KeyIntegrityError";
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "DownloadediPodLibraryFile";
        v2 = 0xD000000000000015;
      }

      else if (a2 == 7)
      {
        v3 = "PotentialSyncDataLoss";
        v2 = 0xD00000000000001FLL;
      }

      else
      {
        v3 = "ReadOnlyDeviceMakingSyncChanges";
        v2 = 0xD000000000000017;
      }

      goto LABEL_42;
    }

    if (a2 == 4)
    {
      v3 = "MissingFairPlayOfflineKey";
      v2 = 0xD000000000000011;
      goto LABEL_42;
    }

    v15 = "DownloadediPodLibraryFile";
LABEL_41:
    v3 = (v15 - 32);
    goto LABEL_42;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = "DeletedSecureKeyWithAsset";
    }

    else
    {
      v15 = "MissingFairPlayOfflineKey";
    }

    goto LABEL_41;
  }

  if (a2)
  {
    v3 = "DuplicateDownloads";
  }

  v2 = 0xD000000000000012;
LABEL_42:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1D9179ACC();
  }

  return v16 & 1;
}

uint64_t sub_1D8FDC9C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE300000000000000;
  v6 = 6515555;
  v7 = 0x6974617269707865;
  v8 = 0xEF656D69742D6E6FLL;
  if (a1 != 4)
  {
    v7 = 0x762D776F6C2D7369;
    v8 = 0xEC00000065756C61;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x737574617473;
  if (a1 != 1)
  {
    v10 = 0x66612D77656E6572;
    v9 = 0xEB00000000726574;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE300000000000000;
      if (v11 != 6515555)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEF656D69742D6E6FLL;
      if (v11 != 0x6974617269707865)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xEC00000065756C61;
      if (v11 != 0x762D776F6C2D7369)
      {
LABEL_33:
        v14 = sub_1D9179ACC();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x737574617473)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xEB00000000726574;
      if (v11 != 0x66612D77656E6572)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_1D8FDCBC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000737365;
  v3 = 0x4C74736567677573;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x657469726F766166;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C61727475656ELL;
    }

    else
    {
      v5 = 0x4C74736567677573;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB00000000737365;
    }
  }

  v7 = 0x657469726F766166;
  v8 = 0xE900000000000064;
  if (a2 != 2)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8FDCD10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000737470;
  v5 = 0x7372657470616863;
  if (a1 == 2)
  {
    v5 = 0x697263736E617274;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v6 = 0x74736163646F70;
  }

  else
  {
    v3 = 0x80000001D91C8050;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x697263736E617274;
    }

    else
    {
      v11 = 0x7372657470616863;
    }

    if (a2 == 2)
    {
      v10 = 0xEB00000000737470;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x74736163646F70;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (a2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0x80000001D91C8050;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1D9179ACC();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1D8FDCE68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x80000001D91C87D0;
    v13 = 0xD000000000000016;
    if (a1 != 2)
    {
      v13 = 0x6143656E696C6E69;
      v12 = 0xEE0079726F676574;
    }

    v14 = 0xD000000000000014;
    if (a1)
    {
      v11 = 0x80000001D91C87B0;
    }

    else
    {
      v14 = 0x6C656E6E616863;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
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
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 2003789939;
    v5 = 0x4865646F73697065;
    v6 = 0xEB000000006F7265;
    if (a1 != 7)
    {
      v5 = 0x6F726548776F6873;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x6F77537265776F70;
    v8 = 0xEB0000000068736FLL;
    if (a1 != 4)
    {
      v7 = 0x6867696C68676968;
      v8 = 0xEF6D657449646574;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0x80000001D91C87D0;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v17 = 0xEE0079726F676574;
        if (v9 != 0x6143656E696C6E69)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v17 = 0x80000001D91C87B0;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      if (v9 != 0x6C656E6E616863)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v17 = 0xE400000000000000;
        if (v9 != 2003789939)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      if (a2 != 7)
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x6F726548776F6873)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x4865646F73697065;
      v16 = 7303781;
      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v15 = 0x6F77537265776F70;
      v16 = 6845295;
LABEL_39:
      v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v9 != v15)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v17 = 0xEF6D657449646574;
    if (v9 != 0x6867696C68676968)
    {
LABEL_52:
      v18 = sub_1D9179ACC();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v17)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_1D8FDD174(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6F65646976;
    }

    else
    {
      v3 = 0x6F69647561;
    }

    v2 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x6567616D69;
  }

  else
  {
    v2 = 0xE800000000000000;
    if (a1 == 3)
    {
      v3 = 0x746E656D75636F64;
    }

    else
    {
      v3 = 0x6C616E7265747865;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6F65646976;
    }

    else
    {
      v7 = 0x6F69647561;
    }

    v6 = 0xE500000000000000;
    if (v3 != v7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x746E656D75636F64;
    if (a2 != 3)
    {
      v4 = 0x6C616E7265747865;
    }

    if (a2 == 2)
    {
      v5 = 0x6567616D69;
    }

    else
    {
      v5 = v4;
    }

    if (a2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v6)
  {
LABEL_28:
    v8 = sub_1D9179ACC();
    goto LABEL_29;
  }

  v8 = 1;
LABEL_29:

  return v8 & 1;
}

uint64_t sub_1D8FDD2E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006465696E65;
  v3 = 0x645F737365636361;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0x80000001D91C8720;
    v14 = 0xD000000000000016;
    v15 = 0x80000001D91C8740;
    v16 = 0xD000000000000019;
    if (a1 != 8)
    {
      v16 = 0x5F64696C61766E69;
      v15 = 0xED000065706F6373;
    }

    if (a1 != 7)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0x80000001D91C86E0;
    v18 = 0xD000000000000017;
    if (a1 != 5)
    {
      v18 = 0xD000000000000013;
      v17 = 0x80000001D91C8700;
    }

    if (a1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 6)
    {
      v12 = v17;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x5F64696C61766E69;
    v6 = 0xEE00746E65696C63;
    v7 = 0x5F64696C61766E69;
    v8 = 0xED0000746E617267;
    if (a1 != 3)
    {
      v7 = 0x655F726576726573;
      v8 = 0xEC000000726F7272;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x5F64696C61766E69;
    v10 = 0xEF74736575716572;
    if (!a1)
    {
      v9 = 0x645F737365636361;
      v10 = 0xED00006465696E65;
    }

    if (a1 <= 1u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001D91C86E0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0x80000001D91C8700;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v2 = 0x80000001D91C8720;
      if (v11 != 0xD000000000000016)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v2 = 0x80000001D91C8740;
      if (v11 != 0xD000000000000019)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v3 = 0x5F64696C61766E69;
    v2 = 0xED000065706F6373;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEE00746E65696C63;
        if (v11 != 0x5F64696C61766E69)
        {
          goto LABEL_54;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xED0000746E617267;
        if (v11 != 0x5F64696C61766E69)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xEC000000726F7272;
        if (v11 != 0x655F726576726573)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xEF74736575716572;
      if (v11 != 0x5F64696C61766E69)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v19 = sub_1D9179ACC();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

uint64_t sub_1D8FDD680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x644972657375;
    }

    else
    {
      v3 = 0x6449746E65696C63;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001D91C8650;
    v3 = 0xD000000000000019;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001D91C8670;
  }

  else
  {
    v3 = 0x6E55734972657375;
    v4 = 0xED00003331726564;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x644972657375;
    }

    else
    {
      v6 = 0x6449746E65696C63;
    }

    if (a2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001D91C8650;
    if (v3 != 0xD000000000000019)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D91C8670;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00003331726564;
    if (v3 != 0x6E55734972657375)
    {
LABEL_31:
      v7 = sub_1D9179ACC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D8FDD844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6D617473656D6974;
    }

    else
    {
      v5 = 0x64496D616461;
    }

    if (v2)
    {
      v3 = 0xE900000000000070;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x656C706D6F437369;
    v3 = 0xEA00000000006574;
  }

  else
  {
    v3 = 0xE800000000000000;
    if (a1 == 3)
    {
      v4 = 1634891108;
    }

    else
    {
      v4 = 1769172848;
    }

    v5 = v4 | 0x6E6F697400000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D617473656D6974;
    }

    else
    {
      v9 = 0x64496D616461;
    }

    if (a2)
    {
      v8 = 0xE900000000000070;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v5 != v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x6E6F697461727564;
    if (a2 != 3)
    {
      v6 = 0x6E6F697469736F70;
    }

    if (a2 == 2)
    {
      v7 = 0x656C706D6F437369;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEA00000000006574;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v5 != v7)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v8)
  {
LABEL_34:
    v10 = sub_1D9179ACC();
    goto LABEL_35;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_1D8FDD9D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6778480;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 1734701162;
    if (a1 != 2)
    {
      v12 = 1667851624;
    }

    v13 = 6778986;
    if (!a1)
    {
      v13 = 6778480;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }

    if (v3 <= 1)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    v4 = 0x69736D617A616873;
    v5 = 0xEF65727574616E67;
    v6 = 0xE400000000000000;
    v7 = 1819112564;
    if (a1 != 7)
    {
      v7 = 7105912;
      v6 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0xE300000000000000;
    v9 = 7633012;
    if (a1 != 4)
    {
      v9 = 0x7473696C70;
      v8 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v14 = 0xE400000000000000;
      if (a2 == 2)
      {
        if (v10 != 1734701162)
        {
          goto LABEL_50;
        }
      }

      else if (v10 != 1667851624)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (a2)
      {
        v2 = 6778986;
      }

      v14 = 0xE300000000000000;
      if (v10 != v2)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE300000000000000;
      if (v10 != 7633012)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v10 != 0x7473696C70)
      {
LABEL_50:
        v15 = sub_1D9179ACC();
        goto LABEL_51;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xEF65727574616E67;
    if (v10 != 0x69736D617A616873)
    {
      goto LABEL_50;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE400000000000000;
    if (v10 != 1819112564)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v14 = 0xE300000000000000;
    if (v10 != 7105912)
    {
      goto LABEL_50;
    }
  }

  if (v11 != v14)
  {
    goto LABEL_50;
  }

  v15 = 1;
LABEL_51:

  return v15 & 1;
}

uint64_t sub_1D8FDDC1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073747361;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xEB00000000747361;
    }

    else
    {
      v5 = 0xEC00000073747361;
    }

    v4 = 0x63646F5079616C70;
  }

  else if (a1 == 2)
  {
    v4 = 0x7461745379616C70;
    v5 = 0xEB000000006E6F69;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x6269726373627573;
    }

    else
    {
      v4 = 0x6D65744979616C70;
    }

    if (v3 == 3)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0x7461745379616C70;
  v7 = 0xEB000000006E6F69;
  v8 = 0x6269726373627573;
  v9 = 0xE900000000000065;
  if (a2 != 3)
  {
    v8 = 0x6D65744979616C70;
    v9 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  if (a2)
  {
    v2 = 0xEB00000000747361;
  }

  if (a2 <= 1u)
  {
    v10 = 0x63646F5079616C70;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D9179ACC();
  }

  return v12 & 1;
}

uint64_t sub_1D8FDDDA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x636973756DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 30324;
    }

    else
    {
      v4 = 0x6C616E7265747865;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1937204590;
    }

    else
    {
      v4 = 0x636973756DLL;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (a2 != 2)
  {
    v8 = 0x6C616E7265747865;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 1937204590;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8FDDEC0(char a1, char a2)
{
  if (*&aStdq_8[8 * a1] == *&aStdq_8[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D9179ACC();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1D8FDDF28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x5379616C70736964;
    v13 = 0xEC000000656C6163;
    if (a1 != 2)
    {
      v12 = 0xD000000000000011;
      v13 = 0x80000001D91C8270;
    }

    v14 = 0x6953746567726174;
    if (a1)
    {
      v11 = 0xEA0000000000657ALL;
    }

    else
    {
      v14 = 0x6C65646F6DLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x73746365666665;
    v5 = 0x6C706D6173627573;
    v6 = 0xEF726F7463614665;
    if (a1 != 7)
    {
      v5 = 0x797469726F697270;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xD000000000000010;
    v8 = 0x80000001D91C8290;
    if (a1 != 4)
    {
      v7 = 0x74616E6974736564;
      v8 = 0xEB000000006E6F69;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xEC000000656C6163;
        if (v9 != 0x5379616C70736964)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0x80000001D91C8270;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xEA0000000000657ALL;
      if (v9 != 0x6953746567726174)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x6C65646F6DLL)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0x80000001D91C8290;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEB000000006E6F69;
      if (v9 != 0x74616E6974736564)
      {
LABEL_52:
        v16 = sub_1D9179ACC();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x73746365666665)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEF726F7463614665;
    if (v9 != 0x6C706D6173627573)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x797469726F697270)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1D8FDE23C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x63646F507377656ELL;
  v3 = 0xEC00000073747361;
  v4 = a1;
  v5 = 0x69726F6765746163;
  v6 = 0xEA00000000007365;
  if (a1 != 5)
  {
    v5 = 0x7372657470616863;
    v6 = 0xE800000000000000;
  }

  v7 = 0x697263736E617274;
  v8 = 0xEB00000000737470;
  if (a1 != 3)
  {
    v7 = 0x6E79536E61656C63;
    v8 = 0xE900000000000063;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6D656C7469746E65;
  if (a1 == 1)
  {
    v10 = 0xEC00000073746E65;
  }

  else
  {
    v9 = 0x726566664F707061;
    v10 = 0xE900000000000073;
  }

  if (!a1)
  {
    v9 = 0x63646F507377656ELL;
    v10 = 0xEC00000073747361;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0xEC00000073746E65;
        if (v11 != 0x6D656C7469746E65)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = 0xE900000000000073;
        if (v11 != 0x726566664F707061)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v3 = 0xEA00000000007365;
        if (v11 != 0x69726F6765746163)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = 0xE800000000000000;
        if (v11 != 0x7372657470616863)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v3 = 0xEB00000000737470;
      if (v11 != 0x697263736E617274)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0x6E79536E61656C63;
    v3 = 0xE900000000000063;
  }

  if (v11 != v2)
  {
LABEL_37:
    v13 = sub_1D9179ACC();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v3)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1D8FDE488(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x656C75646F6DLL;
    }

    if (v2)
    {
      v4 = 0x80000001D91C81C0;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x6C725564656566;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6449636E7973;
    }

    else
    {
      v3 = 0x4B79616C70736964;
    }

    if (v2 == 3)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xEC00000073646E69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0x656C75646F6DLL;
    }

    if (a2)
    {
      v5 = 0x80000001D91C81C0;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6C725564656566)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x6449636E7973)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000073646E69;
    if (v3 != 0x4B79616C70736964)
    {
LABEL_34:
      v7 = sub_1D9179ACC();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1D8FDE630(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x7365646F73697065;
    }

    if (v2)
    {
      v4 = 0x80000001D91C7F20;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x2D74736163646F70;
    v4 = 0xEF736E6F73616573;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x697263736E617274;
    }

    else
    {
      v3 = 0x7372657470616863;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000737470;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x7365646F73697065;
    }

    if (a2)
    {
      v5 = 0x80000001D91C7F20;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEF736E6F73616573;
    if (v3 != 0x2D74736163646F70)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000737470;
    if (v3 != 0x697263736E617274)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x7372657470616863)
    {
LABEL_34:
      v7 = sub_1D9179ACC();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1D8FDE7FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "e";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000053;
    }

    else
    {
      v5 = 0xD000000000000040;
    }

    if (v3)
    {
      v4 = "m.apple.podcasts";
    }

    else
    {
      v4 = "e";
    }
  }

  else if (a1 == 2)
  {
    v4 = "/CELLULAR_DOWNLOADS";
    v5 = 0xD000000000000048;
  }

  else if (a1 == 3)
  {
    v4 = "m.apple.podcasts/FORWARD";
    v5 = 0xD000000000000049;
  }

  else
  {
    v4 = "m.apple.podcasts/BACKWARD";
    v5 = 0xD000000000000055;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000053;
    }

    else
    {
      v6 = 0xD000000000000040;
    }

    if (a2)
    {
      v2 = "m.apple.podcasts";
    }
  }

  else if (a2 == 2)
  {
    v2 = "/CELLULAR_DOWNLOADS";
    v6 = 0xD000000000000048;
  }

  else
  {
    v2 = "m.apple.podcasts/FORWARD";
    if (a2 == 3)
    {
      v6 = 0xD000000000000049;
    }

    else
    {
      v6 = 0xD000000000000055;
    }

    if (a2 != 3)
    {
      v2 = "m.apple.podcasts/BACKWARD";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

uint64_t sub_1D8FDE964(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368801;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746567646977;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0x80000001D91C7E50;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1769105779;
    }

    else
    {
      v4 = 7368801;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x746567646977;
  v8 = 0x80000001D91C7E50;
  if (a2 == 2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 1769105779;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8FDEA88(char a1, char a2)
{
  v12 = a1;
  v11 = a2;
  Podcasts.rawValue.getter(&v10);
  Podcasts.rawValue.getter(&v9);
  v2 = sub_1D917949C();
  v4 = v3;
  if (v2 == sub_1D917949C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

uint64_t sub_1D8FDEB50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEE00676E69646E65;
  v5 = 0x6C61756E616DLL;
  if (a1 == 5)
  {
    v5 = 0x6373416465646461;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v6 = 0xD000000000000010;
  v7 = 0x80000001D91C7900;
  if (a1 != 3)
  {
    v6 = 0x6465646461;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
  }

  else
  {
    v6 = v5;
  }

  v8 = 0x637341656C746974;
  v9 = 0xEE00676E69646E65;
  if (a1 != 1)
  {
    v8 = 0x64657461647075;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656C746974)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (a2 != 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64657461647075)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    v13 = 0x41656C746974;
    goto LABEL_30;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000001D91C7900;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6465646461)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_39;
  }

  if (a2 == 5)
  {
    v13 = 0x416465646461;
LABEL_30:
    v12 = 0xEE00676E69646E65;
    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x6373000000000000))
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v12 = 0xE600000000000000;
  if (v10 != 0x6C61756E616DLL)
  {
LABEL_41:
    v14 = sub_1D9179ACC();
    goto LABEL_42;
  }

LABEL_39:
  if (v11 != v12)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t ShowsSortType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C746974;
  v2 = 0x6373416465646461;
  if (a1 != 5)
  {
    v2 = 0x6C61756E616DLL;
  }

  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0x6465646461;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x637341656C746974;
  if (a1 != 1)
  {
    v4 = 0x64657461647075;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ShowsSortType.ascendingType.getter(unsigned int a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 2)
  {
    v1 = 3;
  }

  else
  {
    v1 = a1;
  }

  if (a1 == 4)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t ShowsSortType.baseSortType.getter(int a1)
{
  if (a1 == 5)
  {
    v1 = 4;
  }

  else
  {
    v1 = a1;
  }

  if (a1 == 3)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

Swift::Bool __swiftcall ShowsSortType.baseSortTypeMatches(otherSort:)(PodcastsFoundation::ShowsSortType otherSort)
{
  if (v1 == 5)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if (v1 == 3)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  if (otherSort == PodcastsFoundation_ShowsSortType_addedAscending)
  {
    v5 = PodcastsFoundation_ShowsSortType_added;
  }

  else
  {
    v5 = otherSort;
  }

  if (otherSort == PodcastsFoundation_ShowsSortType_updatedAscending)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  if (otherSort == PodcastsFoundation_ShowsSortType_titleAscending)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return sub_1D8FDEB50(v4, v7);
}

uint64_t sub_1D8FDEF3C()
{
  v1 = *v0;
  sub_1D9179DBC();
  ShowsSortType.rawValue.getter(v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FDEFA0()
{
  ShowsSortType.rawValue.getter(*v0);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FDEFF4()
{
  v1 = *v0;
  sub_1D9179DBC();
  ShowsSortType.rawValue.getter(v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FDF054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_1D8FDF084@<X0>(uint64_t *a1@<X8>)
{
  result = ShowsSortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8FDF0B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ShowsSortType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ShowsSortType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D917980C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D8FDF188()
{
  result = qword_1ECAB88A8;
  if (!qword_1ECAB88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88A8);
  }

  return result;
}

unint64_t sub_1D8FDF21C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FDF360(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PodcastsStateChangeOrigin.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0xD000000000000011;
    }

    if (a1 == 1)
    {
      return 0x6B72616D6B6F6F62;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0xD000000000000014;
      case 3:
        return 0x536D6F7246746F6ELL;
      case 4:
        return 0x6E776F6E6B6E75;
    }
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

unint64_t sub_1D8FDF360(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D8FDF374()
{
  result = qword_1ECAB88B0;
  if (!qword_1ECAB88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88B0);
  }

  return result;
}

unint64_t sub_1D8FDF3CC()
{
  result = qword_1ECAB88B8;
  if (!qword_1ECAB88B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB88C0, &qword_1D91A42D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88B8);
  }

  return result;
}

uint64_t PodcastPlayerItem.feedURL.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PodcastPlayerItem.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PodcastPlayerItem.displayType.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PodcastPlayerItem.init(adamID:feedURL:title:displayType:isSubscribeable:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t EpisodePlayerItem.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t EpisodePlayerItem.subtitle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t EpisodePlayerItem.guid.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t EpisodePlayerItem.pubDate.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t EpisodePlayerItem.init(adamID:title:subtitle:guid:pubDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  return result;
}

uint64_t PlayerItem.podcast.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1D8FDF608(v7, &v6);
}

uint64_t PlayerItem.episode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v9 = *(v1 + 96);
  v10 = v2;
  v11 = *(v1 + 128);
  v3 = v11;
  v4 = *(v1 + 80);
  v8[0] = *(v1 + 64);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D8FDF68C(v8, v7);
}

__n128 PlayerItem.init(podcast:episode:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = a1[2];
  *(a3 + 41) = *(a1 + 41);
  v4 = *(a2 + 48);
  *(a3 + 96) = *(a2 + 32);
  *(a3 + 112) = v4;
  *(a3 + 128) = *(a2 + 64);
  result = *(a2 + 16);
  *(a3 + 64) = *a2;
  *(a3 + 80) = result;
  return result;
}

uint64_t PodcastsStateCoordinatorPersistentStore.__allocating_init(syncKeysRepository:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(type metadata accessor for FeedURLComposer()) init];
  *(v2 + 24) = a1;
  return v2;
}

uint64_t PodcastsStateCoordinatorPersistentStore.insertPodcastInStoreState(in:for:)(uint64_t a1, uint64_t *a2)
{
  v56 = a1;
  v4 = sub_1D9176C2C();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13;
  v15 = *a2;
  v48[0] = a2[1];
  v16 = a2[3];
  v50 = a2[2];
  v48[1] = v16;
  v17 = a2[4];
  v48[2] = a2[5];
  v18 = a2[6];
  v53 = v17;
  v54 = v18;
  v51 = v2;
  v19 = *(v2 + 24);
  v20 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  if (isRunningUnitTests() & 1) == 0 && ([objc_opt_self() isRunningOnHomepod] & 1) != 0 && (v58 = &type metadata for Podcasts, v59 = sub_1D8CF0F2C(), LOBYTE(v57[0]) = 13, v21 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v57), (v21))
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    sub_1D8CFD9D8(v19 + v20, v57);
    v23 = v58;
    v24 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    LOBYTE(v22) = (*(v24 + 80))(0, v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }

  v55 = v15;
  v25 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1D8ECD4B4((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[16 * v27];
    *(v28 + 4) = 0;
    v28[40] = v22 & 1;
    if (isRunningUnitTests() & 1) == 0 && [objc_opt_self() isRunningOnHomepod] && (v58 = &type metadata for Podcasts, v59 = sub_1D8CF0F2C(), LOBYTE(v57[0]) = 13, v29 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v57), (v29))
    {
      v30 = 0;
    }

    else
    {
      sub_1D8CFD9D8(v19 + v20, v57);
      v32 = v58;
      v31 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v30 = (*(v31 + 80))(1, v32, v31);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
    }

    v20 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D8ECD4B4(0, *(v25 + 2) + 1, 1, v25);
    }

    v34 = *(v25 + 2);
    v33 = *(v25 + 3);
    if (v34 >= v33 >> 1)
    {
      v25 = sub_1D8ECD4B4((v33 > 1), v34 + 1, 1, v25);
    }

    *(v25 + 2) = v34 + 1;
    v35 = &v25[16 * v34];
    *(v35 + 4) = 1;
    v35[40] = v30 & 1;
    v36 = v52;
    (*(v52 + 56))(v14, 1, 1, v4);
    if (v50)
    {
      sub_1D9176BFC();
      sub_1D8E677CC(v14);
      sub_1D8D5DE80(v11, v14);
    }

    v37 = *(v51 + 16);
    v38 = v55;
    sub_1D8FD830C(v14, v55, v7);
    sub_1D9176ACC();
    (*(v36 + 8))(v7, v4);
    v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v39 = objc_opt_self();
    v40 = [v39 defaultShowType];
    v7 = v53 ? _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0() : 0;
    v49 = v14;
    v41 = v54 ? _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0() : 0;
    v42 = [v39 insertNewPodcastInManagedObjectContext:v20 subscribed:0 feedUrl:v22 showType:v40 showTypeInFeed:0 title:v7 author:0 provider:0 imageUrl:0 description:0 adamId:v38 displayType:v41 showSpecificUpsellCopy:0];

    [v42 setHidden_];
    v56 = v42;
    [v42 setImporting_];
    v4 = *(v25 + 2);
    v14 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
    swift_beginAccess();
    if (!v4)
    {
      break;
    }

    v43 = 0;
    v11 = (v25 + 40);
    while (v43 < *(v25 + 2))
    {
      v22 = *(v11 - 1);
      v7 = *v11;
      if ((isRunningUnitTests() & 1) != 0 || ([objc_opt_self() isRunningOnHomepod] & 1) == 0 || (v58 = &type metadata for Podcasts, v59 = sub_1D8CF0F2C(), LOBYTE(v57[0]) = 13, v20 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v57), (v20 & 1) == 0))
      {
        sub_1D8CFD9D8(&v14[v19], v57);
        v20 = v58;
        v44 = v59;
        v45 = __swift_project_boxed_opaque_existential_1(v57, v58);
        v46 = v22;
        LOBYTE(v22) = v45;
        (*(v44 + 88))(v7, v46, v20, v44);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }

      ++v43;
      v11 += 16;
      if (v4 == v43)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    v25 = sub_1D8ECD4B4(0, *(v25 + 2) + 1, 1, v25);
  }

LABEL_35:

  sub_1D8E677CC(v49);
  return v56;
}

id PodcastsStateCoordinatorPersistentStore.insertPodcastInStoreState(in:for:)(unint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v34 = a2[1];
  v5 = a2[2];
  v6 = *(v2 + 24);
  v7 = &qword_1ECABA000;
  v8 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  if (isRunningUnitTests() & 1) == 0 && ([objc_opt_self() isRunningOnHomepod] & 1) != 0 && (v37 = &type metadata for Podcasts, v38 = sub_1D8CF0F2C(), LOBYTE(v36[0]) = 13, v9 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v36), (v9))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    sub_1D8CFD9D8(v6 + v8, v36);
    v11 = v37;
    v12 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    LOBYTE(v10) = (*(v12 + 80))(0, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1D8ECD4B4((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = 0;
    v16[40] = v10 & 1;
    if (isRunningUnitTests() & 1) == 0 && [objc_opt_self() isRunningOnHomepod] && (v37 = &type metadata for Podcasts, v38 = sub_1D8CF0F2C(), LOBYTE(v36[0]) = 13, v17 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v36), (v17))
    {
      v18 = 0;
    }

    else
    {
      sub_1D8CFD9D8(v6 + v8, v36);
      v19 = v37;
      v20 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v18 = (*(v20 + 80))(1, v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
    }

    v21 = a1;
    v22 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1D8ECD4B4(0, *(v13 + 2) + 1, 1, v13);
    }

    v24 = *(v13 + 2);
    v23 = *(v13 + 3);
    if (v24 >= v23 >> 1)
    {
      v13 = sub_1D8ECD4B4((v23 > 1), v24 + 1, 1, v13);
    }

    *(v13 + 2) = v24 + 1;
    v25 = &v13[16 * v24];
    *(v25 + 4) = 1;
    v25[40] = v18 & 1;
    v26 = objc_opt_self();
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v10 = [v26 insertNewPodcastInManagedObjectContext:v21 subscribed:0 feedUrl:v4 showType:objc_msgSend(v26 showTypeInFeed:sel_defaultShowType) title:0 author:0 provider:0 imageUrl:0 description:0 adamId:0 displayType:v22 showSpecificUpsellCopy:{0, 0}];

    [v10 setHidden_];
    v35 = v10;
    [v10 setImporting_];
    v8 = *(v13 + 2);
    v27 = v7[415];
    swift_beginAccess();
    if (!v8)
    {
      break;
    }

    a1 = 0;
    v7 = (v13 + 40);
    while (a1 < *(v13 + 2))
    {
      v10 = *(v7 - 1);
      v4 = *v7;
      if ((isRunningUnitTests() & 1) != 0 || ([objc_opt_self() isRunningOnHomepod] & 1) == 0 || (v37 = &type metadata for Podcasts, v38 = sub_1D8CF0F2C(), LOBYTE(v36[0]) = 13, v32 = sub_1D917710C(), __swift_destroy_boxed_opaque_existential_1Tm(v36), (v32 & 1) == 0))
      {
        sub_1D8CFD9D8(v6 + v27, v36);
        v28 = v37;
        v29 = v38;
        v30 = __swift_project_boxed_opaque_existential_1(v36, v37);
        v31 = v10;
        LOBYTE(v10) = v30;
        (*(v29 + 88))(v4, v31, v28, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
      }

      ++a1;
      v7 += 2;
      if (v8 == a1)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    v13 = sub_1D8ECD4B4(0, *(v13 + 2) + 1, 1, v13);
  }

LABEL_27:

  return v35;
}

uint64_t PodcastsStateCoordinatorPersistentStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id _s18PodcastsFoundation0A31StateCoordinatorPersistentStoreC13insertEpisode2in3for8asPartOfSo9MTEpisodeCSo22NSManagedObjectContextC_AA0H10PlayerItemVSo9MTPodcastCSgtF_0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v12 = *(a2 + 7);
  v19 = *(a2 + 64);
  v13 = objc_opt_self();
  v14 = [v13 insertNewEpisodeInManagedObjectContext:a1 canSendNotifications:_s18PodcastsFoundation20NotificationSettingsC07canSendC0SbyFZ_0() & 1];
  [v14 setPodcast_];
  [v14 setStoreTrackId_];
  if (v8)
  {
    v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v15 = 0;
  }

  [v14 setTitle_];

  if (v10)
  {
    v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v16 = 0;
  }

  [v14 setItunesSubtitle_];

  if (v11)
  {
    v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v17 = 0;
  }

  [v14 setGuid_];

  if ((v19 & 1) == 0)
  {
    [v14 setPubDate_];
  }

  return v14;
}

uint64_t sub_1D8FE0494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D8FE04F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8FE0564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D8FE05C0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D8FE066C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D8FE06C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertPodcastInStoreState(in:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))();
}

{
  return (*(a4 + 16))();
}

uint64_t dispatch thunk of PodcastsStateCoordinatorProtocol.downloadEpisodes(with:isFromSaving:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 96);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1D8D58924;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t static MTEpisode.listenNowWidgetEpisodes<A>(fetchLimit:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_1D9177FFC();
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a1;
  v10[4] = v9;
  v10[5] = &v17;
  v10[6] = a2;
  v10[7] = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8FE10E8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_58;
  v12 = _Block_copy(aBlock);
  v13 = v9;

  [v13 performBlockAndWait_];

  _Block_release(v12);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = v17;

    return v15;
  }

  return result;
}

uint64_t sub_1D8FE0C80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v27 = a3;
  v7 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v8 = objc_opt_self();
  v9 = [v8 predicateForListenNow];
  [v7 setPredicate_];

  v10 = [v8 sortDescriptorsForListenNow];
  if (!v10)
  {
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    sub_1D91785FC();
    v10 = sub_1D91785DC();
  }

  [v7 setSortDescriptors_];

  [v7 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = sub_1D917908C();
  v12 = v11;
  if (v11 >> 62)
  {
    v13 = sub_1D917935C();
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v21 = [v8 predicateForListenNowLatestEpisodes];
  [v20 setPredicate_];

  v22 = [v8 sortDescriptorsForListenNowLatestEpisodes];
  if (!v22)
  {
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    sub_1D91785FC();
    v22 = sub_1D91785DC();
  }

  [v20 setSortDescriptors_];

  [v20 setFetchLimit_];
  v12 = sub_1D917908C();

LABEL_5:
  v28 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v23[2] = v26;
  v23[3] = v24;
  v23[4] = v25;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D0, &qword_1D91B62F0);
  v15 = sub_1D8FE1194();
  v17 = sub_1D8D175AC(sub_1D8FE1160, v23, v14, v26, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);

  v18 = *v27;
  *v27 = v17;
}

unint64_t sub_1D8FE10F8()
{
  result = qword_1ECAB88C8;
  if (!qword_1ECAB88C8)
  {
    sub_1D8CF2154(255, &qword_1ECAAFC88, 0x1E696ABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB88C8);
  }

  return result;
}

uint64_t sub_1D8FE1160(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1);
}

unint64_t sub_1D8FE1194()
{
  result = qword_1ECAAFEC8;
  if (!qword_1ECAAFEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB44D0, &qword_1D91B62F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFEC8);
  }

  return result;
}

id WidgetNowPlayingInfo.currentEpisodeID.getter()
{
  v1 = *v0;
  sub_1D8FE1240(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

id sub_1D8FE1240(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D8D5055C(result, a2, a3);
  }

  return result;
}

void WidgetNowPlayingInfo.currentEpisodeID.setter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D8FE1298(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

void sub_1D8FE1298(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1D8DA8564(a1, a2, a3);
  }
}

uint64_t WidgetNowPlayingInfo.predictedStartDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetNowPlayingInfo() + 24);

  return sub_1D8CF6C70(a1, v3);
}

uint64_t WidgetNowPlayingInfo.predictedCompletionDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetNowPlayingInfo() + 28);

  return sub_1D8CF6C70(a1, v3);
}

uint64_t WidgetNowPlayingInfo.timeRemaining.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetNowPlayingInfo() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WidgetNowPlayingInfo.timeRemaining.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for WidgetNowPlayingInfo();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t WidgetNowPlayingInfo.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetNowPlayingInfo() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WidgetNowPlayingInfo.duration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for WidgetNowPlayingInfo();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t WidgetNowPlayingInfo.showPlayerArtworkUntilDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetNowPlayingInfo() + 40);

  return sub_1D8CF6C70(a1, v3);
}

uint64_t WidgetNowPlayingInfo.init(currentEpisodeID:isPlaying:predictedStartDate:predictedCompletionDate:timeRemaining:duration:showPlayerArtworkUntilDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v14 = type metadata accessor for WidgetNowPlayingInfo();
  v15 = v14[6];
  v16 = sub_1D9176E3C();
  v17 = *(*(v16 - 8) + 56);
  v17(a9 + v15, 1, 1, v16);
  v18 = v14[7];
  v17(a9 + v18, 1, 1, v16);
  v19 = a9 + v14[8];
  v20 = a9 + v14[9];
  v21 = v14[10];
  v17(a9 + v21, 1, 1, v16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_1D8CF6C70(a5, a9 + v15);
  sub_1D8CF6C70(a6, a9 + v18);
  *v19 = a7;
  *(v19 + 8) = a8 & 1;
  *v20 = a10;
  *(v20 + 8) = a11 & 1;

  return sub_1D8CF6C70(a12, a9 + v21);
}

uint64_t WidgetNowPlayingInfo.shouldTriggerWidgetUpdateFrom(oldInfo:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D0, &qword_1D91A45C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v96 - v5;
  v7 = type metadata accessor for WidgetNowPlayingInfo();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v96 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  sub_1D8D088B4(a1, v6, &qword_1ECAB88D0, &qword_1D91A45C8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D8D08A50(v6, &qword_1ECAB88D0, &qword_1D91A45C8);
    return 1;
  }

  sub_1D8FE4F98(v6, v19);
  v20 = *(v1 + 16);
  v21 = v19[16];
  if (v20 == 255)
  {
    if (v21 == 255)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v35 = sub_1D917744C();
    __swift_project_value_buffer(v35, qword_1EDCD5E48);
    sub_1D8FE4FFC(v1, v16);
    v24 = sub_1D917741C();
    v36 = sub_1D9178D1C();
    if (!os_log_type_enabled(v24, v36))
    {

      sub_1D8FE5060(v16);
      goto LABEL_19;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v101 = v38;
    *v37 = 136446210;
    v39 = *(v16 + 1);
    v40 = v16[16];
    v98 = *v16;
    v99 = v39;
    v100 = v40;
    sub_1D8FE1240(v98, v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
    v41 = sub_1D917826C();
    v43 = v42;
    sub_1D8FE5060(v16);
    v44 = sub_1D8CFA924(v41, v43, &v101);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_1D8CEC000, v24, v36, "WidgetNowPlayingInfo: currentEpisodeID has changed %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1DA72CB90](v38, -1, -1);
    v34 = v37;
    goto LABEL_16;
  }

  if (v21 == 255)
  {
    goto LABEL_12;
  }

  v47 = *v1;
  v49 = *v19;
  v48 = *(v19 + 1);
  if (*(v1 + 16))
  {
    v50 = *(v1 + 8);
    if (v20 == 1)
    {
      if (v21 != 1)
      {
        goto LABEL_12;
      }

      sub_1D8D6F530();
      sub_1D8FE1240(v49, v48, 1);
      sub_1D8FE1240(v47, v50, 1);
      v96 = v1;
      v51 = sub_1D917914C();
      v1 = v96;
      v52 = v51;
      sub_1D8FE1298(v49, v48, 1);
      sub_1D8FE1298(v47, v50, 1);
      if ((v52 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v21 != 2)
      {
        goto LABEL_12;
      }

      if (v47 != v49 || v50 != v48)
      {
        v59 = *v1;
        v60 = *(v1 + 8);
        v61 = *v19;
        v62 = *(v19 + 1);
        if ((sub_1D9179ACC() & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

  else
  {
    if (v19[16])
    {
      goto LABEL_12;
    }

    if (v47 != v49)
    {
      sub_1D8FE1240(*v19, *(v19 + 1), 0);
      goto LABEL_12;
    }

    sub_1D8FE1240(*v1, *(v19 + 1), 0);
  }

LABEL_5:
  v22 = *(v1 + 17);
  if (v22 != v19[17])
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v23 = sub_1D917744C();
    __swift_project_value_buffer(v23, qword_1EDCD5E48);
    sub_1D8FE4FFC(v1, v13);
    v24 = sub_1D917741C();
    v25 = sub_1D9178D1C();
    if (!os_log_type_enabled(v24, v25))
    {
      sub_1D8FE5060(v13);
      goto LABEL_17;
    }

    v26 = swift_slowAlloc();
    *v26 = 67109120;
    v27 = v19;
    v28 = v13[17];
    sub_1D8FE5060(v13);
    *(v26 + 4) = v28;
    v19 = v27;
    v29 = "WidgetNowPlayingInfo: isPlaying has changed %{BOOL}d";
    v30 = v25;
    v31 = v24;
    v32 = v26;
    v33 = 8;
    goto LABEL_10;
  }

  if (*(v1 + 17) && (sub_1D8FE2240(0xD000000000000017, 0x80000001D91D1D40, v1 + v7[7], &v19[v7[7]]) & 1) != 0 || (sub_1D8FE2240(0xD00000000000001ALL, 0x80000001D91D1D20, v1 + v7[10], &v19[v7[10]]) & 1) != 0)
  {
    goto LABEL_19;
  }

  v53 = v7[8];
  v54 = (v1 + v53);
  v55 = *(v1 + v53 + 8);
  v56 = &v19[v53];
  if ((v55 & 1) == 0)
  {
    v57 = v97;
    if (v56[8])
    {
      goto LABEL_45;
    }

    v72 = *v56;
    v73 = *v54;
    v74 = v7[9];
    v75 = 0x20000;
    if (*v54 >= 0.0)
    {
      v76 = (v1 + v74);
      if ((*(v1 + v74 + 8) & 1) == 0)
      {
        v77 = *v76;
        if (*v76 > 0.0)
        {
          v78 = v19;
          v79 = v77 >= 240.0;
          v80 = sub_1D916F0C0(v77 < 240.0, v73);
          v75 = v80 | (sub_1D916F1C4(v80, v73) << 8) | (v79 << 16);
          v19 = v78;
          v74 = v7[9];
        }
      }
    }

    v81 = 0x20000;
    if (v72 >= 0.0)
    {
      v82 = &v19[v74];
      if ((v82[8] & 1) == 0)
      {
        v83 = *v82;
        if (*v82 > 0.0)
        {
          v84 = v19;
          v85 = v83 >= 240.0;
          v86 = sub_1D916F0C0(v83 < 240.0, v72);
          v81 = v86 | (sub_1D916F1C4(v86, v72) << 8) | (v85 << 16);
          v19 = v84;
        }
      }
    }

    v87 = v75 & 0x30000;
    v88 = v81 & 0x30000;
    if ((v81 & 0x30000) == 0x20000)
    {
      v89 = 3;
    }

    else
    {
      v89 = v81;
    }

    if (v87 == 0x20000 || v75 == 3)
    {
      if (v89 != 3)
      {
LABEL_74:
        if (qword_1EDCD5E40 != -1)
        {
          swift_once();
        }

        v91 = sub_1D917744C();
        __swift_project_value_buffer(v91, qword_1EDCD5E48);
        v24 = sub_1D917741C();
        v92 = sub_1D9178D1C();
        if (!os_log_type_enabled(v24, v92))
        {
          goto LABEL_17;
        }

        v26 = swift_slowAlloc();
        *v26 = 0;
        v29 = "WidgetNowPlayingInfo: format is changing";
        v30 = v92;
        v31 = v24;
        v32 = v26;
        v33 = 2;
        goto LABEL_10;
      }
    }

    else if (v89 != v75)
    {
      goto LABEL_74;
    }

    v90 = v81 >> 8;
    if (v88 == 0x20000)
    {
      LOBYTE(v90) = 6;
    }

    if (v87 == 0x20000 || BYTE1(v75) == 6)
    {
      if (v90 != 6)
      {
        goto LABEL_74;
      }
    }

    else if (v90 != BYTE1(v75))
    {
      goto LABEL_74;
    }

    if (v22)
    {
      goto LABEL_32;
    }

    v93 = vabdd_f64(v73, v72);
    if (v93 <= 1.0)
    {
      goto LABEL_32;
    }

    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v94 = sub_1D917744C();
    __swift_project_value_buffer(v94, qword_1EDCD5E48);
    v24 = sub_1D917741C();
    v95 = sub_1D9178D1C();
    if (!os_log_type_enabled(v24, v95))
    {
      goto LABEL_17;
    }

    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = v93;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v73;
    v29 = "WidgetNowPlayingInfo: timeRemaining has changed by %f seconds %f";
    v30 = v95;
    v31 = v24;
    v32 = v26;
    v33 = 22;
LABEL_10:
    _os_log_impl(&dword_1D8CEC000, v31, v30, v29, v32, v33);
    v34 = v26;
LABEL_16:
    MEMORY[0x1DA72CB90](v34, -1, -1);
LABEL_17:

    goto LABEL_19;
  }

  v57 = v97;
  if ((v56[8] & 1) == 0)
  {
LABEL_45:
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v63 = sub_1D917744C();
    __swift_project_value_buffer(v63, qword_1EDCD5E48);
    sub_1D8FE4FFC(v1, v57);
    v64 = sub_1D917741C();
    v65 = sub_1D9178D1C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      v67 = v57 + v7[8];
      v68 = *v67;
      v69 = v19;
      v70 = *(v67 + 8);
      sub_1D8FE5060(v57);
      v71 = 0.0;
      if (!v70)
      {
        v71 = v68;
      }

      *(v66 + 4) = v71;
      _os_log_impl(&dword_1D8CEC000, v64, v65, "WidgetNowPlayingInfo: timeRemaining has changed %f", v66, 0xCu);
      MEMORY[0x1DA72CB90](v66, -1, -1);

      v45 = v69;
      goto LABEL_20;
    }

    sub_1D8FE5060(v57);
LABEL_19:
    v45 = v19;
LABEL_20:
    sub_1D8FE5060(v45);
    return 1;
  }

LABEL_32:
  sub_1D8FE5060(v19);
  return 0;
}

uint64_t sub_1D8FE2240(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v64 = a2;
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v58 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v14 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v58 - v22;
  v25 = *(v24 + 56);
  sub_1D8D088B4(a3, &v58 - v22, &qword_1ECAB75C0, &unk_1D9188A50);
  sub_1D8D088B4(a4, &v23[v25], &qword_1ECAB75C0, &unk_1D9188A50);
  v26 = *(v7 + 48);
  LODWORD(a4) = v26(v23, 1, v6);
  v27 = v26(&v23[v25], 1, v6);
  if (a4 == 1)
  {
    if (v27 != 1)
    {
      sub_1D8D08A50(&v23[v25], &qword_1ECAB75C0, &unk_1D9188A50);
LABEL_6:
      v28 = v64;
      if (qword_1EDCD5E40 != -1)
      {
        swift_once();
      }

      v29 = sub_1D917744C();
      __swift_project_value_buffer(v29, qword_1EDCD5E48);
      sub_1D8D088B4(a3, v19, &qword_1ECAB75C0, &unk_1D9188A50);

      v30 = sub_1D917741C();
      v31 = sub_1D9178D1C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65 = v33;
        *v32 = 136446466;
        *(v32 + 4) = sub_1D8CFA924(v63, v28, &v65);
        *(v32 + 12) = 2082;
        sub_1D8D088B4(v19, v16, &qword_1ECAB75C0, &unk_1D9188A50);
        v34 = sub_1D917826C();
        v36 = v35;
        sub_1D8D08A50(v19, &qword_1ECAB75C0, &unk_1D9188A50);
        v37 = sub_1D8CFA924(v34, v36, &v65);

        *(v32 + 14) = v37;
        _os_log_impl(&dword_1D8CEC000, v30, v31, "WidgetNowPlayingInfo: %{public}s has changed %{public}s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v33, -1, -1);
        MEMORY[0x1DA72CB90](v32, -1, -1);
      }

      else
      {

        sub_1D8D08A50(v19, &qword_1ECAB75C0, &unk_1D9188A50);
      }

      return 1;
    }

    return 0;
  }

  if (v27 == 1)
  {
    (*(v7 + 8))(v23, v6);
    goto LABEL_6;
  }

  v39 = *(v7 + 32);
  v40 = v61;
  v39(v61, v23, v6);
  v41 = v62;
  v39(v62, &v23[v25], v6);
  sub_1D9176E1C();
  v43 = fabs(v42);
  if (v43 <= 1.0)
  {
    v56 = *(v7 + 8);
    v56(v41, v6);
    v56(v40, v6);
    return 0;
  }

  if (qword_1EDCD5E40 != -1)
  {
    swift_once();
  }

  v44 = sub_1D917744C();
  __swift_project_value_buffer(v44, qword_1EDCD5E48);
  v45 = v59;
  (*(v7 + 16))(v59, v40, v6);
  v46 = v64;

  v47 = sub_1D917741C();
  v48 = sub_1D9178D1C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v65 = v60;
    *v49 = 136446722;
    *(v49 + 4) = sub_1D8CFA924(v63, v46, &v65);
    *(v49 + 12) = 2048;
    *(v49 + 14) = v43;
    *(v49 + 22) = 2082;
    sub_1D8FE5E2C(&qword_1EDCD5930, MEMORY[0x1E6969530]);
    v50 = sub_1D9179A4C();
    v52 = v51;
    v53 = *(v7 + 8);
    v53(v45, v6);
    v54 = sub_1D8CFA924(v50, v52, &v65);

    *(v49 + 24) = v54;
    _os_log_impl(&dword_1D8CEC000, v47, v48, "WidgetNowPlayingInfo: %{public}s has changed by %f seconds %{public}s", v49, 0x20u);
    v55 = v60;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v55, -1, -1);
    MEMORY[0x1DA72CB90](v49, -1, -1);

    v53(v62, v6);
    v53(v40, v6);
  }

  else
  {

    v57 = *(v7 + 8);
    v57(v45, v6);
    v57(v41, v6);
    v57(v40, v6);
  }

  return 1;
}

uint64_t sub_1D8FE29C8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v2 dataForKey_];

  if (v4)
  {
    v5 = sub_1D9176C8C();
    v7 = v6;

    v8 = sub_1D917656C();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1D8D752C4(v5, v7);
    sub_1D917655C();
    type metadata accessor for WidgetNowPlayingInfo();
    sub_1D8FE5E2C(&unk_1EDCD6230, type metadata accessor for WidgetNowPlayingInfo);
    sub_1D917654C();

    sub_1D8D7567C(v5, v7);

    return sub_1D8D7567C(v5, v7);
  }

  else
  {
    if (qword_1EDCD6240 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for WidgetNowPlayingInfo();
    v13 = __swift_project_value_buffer(v12, qword_1EDCD6248);
    sub_1D8FE4FFC(v13, a1);

    return sub_1D8D75668(0, 0xF000000000000000);
  }
}

Swift::Void __swiftcall WidgetNowPlayingInfo.logInfo()()
{
  v1 = sub_1D9176D6C();
  v73 = *(v1 - 8);
  v2 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v72 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v63 - v8;
  v9 = type metadata accessor for WidgetNowPlayingInfo();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v22 = v0 + *(v21 + 36);
  if (*(v22 + 8))
  {
    v23 = 0xE300000000000000;
    v69 = 7104878;
  }

  else
  {
    v24 = *v22;
    v69 = sub_1D9178A4C();
    v23 = v25;
  }

  v26 = v0 + v9[8];
  if (*(v26 + 8))
  {
    v27 = 0xE300000000000000;
    v68 = 7104878;
  }

  else
  {
    v28 = *v26;
    v68 = sub_1D9178A4C();
    v27 = v29;
  }

  if (qword_1EDCD5E40 != -1)
  {
    swift_once();
  }

  v30 = sub_1D917744C();
  __swift_project_value_buffer(v30, qword_1EDCD5E48);
  sub_1D8FE4FFC(v0, v20);
  sub_1D8FE4FFC(v0, v17);
  sub_1D8FE4FFC(v0, v14);
  v31 = v74;
  sub_1D8FE4FFC(v0, v74);

  v32 = sub_1D917741C();
  v33 = sub_1D9178D1C();

  if (os_log_type_enabled(v32, v33))
  {
    v65 = v33;
    v66 = v32;
    v67 = v1;
    v34 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v78 = v64;
    *v34 = 136447490;
    v35 = *(v20 + 1);
    v36 = v20[16];
    v75 = *v20;
    v76 = v35;
    v77 = v36;
    sub_1D8FE1240(v75, v35, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
    v37 = sub_1D917826C();
    v39 = v38;
    sub_1D8FE5060(v20);
    v40 = sub_1D8CFA924(v37, v39, &v78);

    *(v34 + 4) = v40;
    *(v34 + 12) = 1024;
    LODWORD(v40) = v17[17];
    sub_1D8FE5060(v17);
    *(v34 + 14) = v40;
    *(v34 + 18) = 2082;
    v41 = sub_1D8CFA924(v69, v23, &v78);

    *(v34 + 20) = v41;
    *(v34 + 28) = 2082;
    v42 = sub_1D8CFA924(v68, v27, &v78);

    *(v34 + 30) = v42;
    *(v34 + 38) = 2082;
    v43 = v9[6];
    v69 = v14;
    v44 = &v14[v43];
    v45 = v70;
    sub_1D8D088B4(v44, v70, &qword_1ECAB75C0, &unk_1D9188A50);
    v46 = sub_1D9176E3C();
    v47 = *(v46 - 8);
    v48 = *(v47 + 48);
    if (v48(v45, 1, v46) == 1)
    {
      sub_1D8D08A50(v45, &qword_1ECAB75C0, &unk_1D9188A50);
      v49 = 0xE300000000000000;
      v50 = 7104878;
    }

    else
    {
      v51 = v72;
      sub_1D8FE4B10(v72);
      v50 = sub_1D9176CFC();
      v49 = v52;
      (*(v73 + 8))(v51, v67);
      (*(v47 + 8))(v45, v46);
    }

    sub_1D8FE5060(v69);
    v53 = sub_1D8CFA924(v50, v49, &v78);

    *(v34 + 40) = v53;
    *(v34 + 48) = 2082;
    v54 = v74;
    v55 = v71;
    sub_1D8D088B4(v74 + v9[7], v71, &qword_1ECAB75C0, &unk_1D9188A50);
    if (v48(v55, 1, v46) == 1)
    {
      sub_1D8D08A50(v55, &qword_1ECAB75C0, &unk_1D9188A50);
      v56 = 0xE300000000000000;
      v57 = 7104878;
    }

    else
    {
      v58 = v72;
      sub_1D8FE4B10(v72);
      v57 = sub_1D9176CFC();
      v56 = v59;
      (*(v73 + 8))(v58, v67);
      (*(v47 + 8))(v55, v46);
    }

    sub_1D8FE5060(v54);
    v60 = sub_1D8CFA924(v57, v56, &v78);

    *(v34 + 50) = v60;
    v61 = v66;
    _os_log_impl(&dword_1D8CEC000, v66, v65, "WidgetNowPlayingInfo: %{public}s, isPlaying: %{BOOL}d, duration %{public}s, timeRemaining %{public}s, start %{public}s, end %{public}s", v34, 0x3Au);
    v62 = v64;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v62, -1, -1);
    MEMORY[0x1DA72CB90](v34, -1, -1);
  }

  else
  {
    sub_1D8FE5060(v17);

    sub_1D8FE5060(v31);
    sub_1D8FE5060(v14);
    sub_1D8FE5060(v20);
  }
}

uint64_t sub_1D8FE33F8()
{
  v0 = type metadata accessor for WidgetNowPlayingInfo();
  __swift_allocate_value_buffer(v0, qword_1EDCD6248);
  v1 = __swift_project_value_buffer(v0, qword_1EDCD6248);
  return sub_1D8FE3444(v1);
}

uint64_t sub_1D8FE3444@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v21 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = sub_1D9176E3C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v13(v8, 1, 1, v12);
  v13(v5, 1, 1, v12);
  v14 = type metadata accessor for WidgetNowPlayingInfo();
  v15 = v14[6];
  v13((a1 + v15), 1, 1, v12);
  v16 = v14[7];
  v13((a1 + v16), 1, 1, v12);
  v17 = a1 + v14[8];
  v18 = a1 + v14[9];
  v19 = v14[10];
  v13((a1 + v19), 1, 1, v12);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 255;
  sub_1D8CF6C70(v11, a1 + v15);
  sub_1D8CF6C70(v21, a1 + v16);
  *v17 = 0;
  *(v17 + 8) = 1;
  *v18 = 0;
  *(v18 + 8) = 1;
  return sub_1D8CF6C70(v22, a1 + v19);
}

uint64_t static WidgetNowPlayingInfo.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCD6240 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for WidgetNowPlayingInfo();
  v3 = __swift_project_value_buffer(v2, qword_1EDCD6248);

  return sub_1D8FE4FFC(v3, a1);
}

uint64_t static WidgetNowPlayingInfo.saveToDefaults(info:)()
{
  v0 = type metadata accessor for WidgetNowPlayingInfo();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1D91765CC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D91765BC();
  sub_1D8FE5E2C(&qword_1ECAB1D68, type metadata accessor for WidgetNowPlayingInfo);
  v6 = sub_1D91765AC();
  v8 = v7;

  v9 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v10 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v9 setValue:v10 forKey:v11];

  return sub_1D8D7567C(v6, v8);
}

unint64_t sub_1D8FE3A84()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6E6979616C507369;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0x6E6F697461727564;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0x616D6552656D6974;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D8FE3B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FE5BCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FE3BB4(uint64_t a1)
{
  v2 = sub_1D8FE59F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FE3BF0(uint64_t a1)
{
  v2 = sub_1D8FE59F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetNowPlayingInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88E0, &qword_1D91A45E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FE59F0();
  sub_1D9179F1C();
  v11 = *(v3 + 16);
  v24 = *v3;
  v25 = v11;
  v26 = 0;
  sub_1D8D93C80();
  sub_1D917999C();
  if (!v2)
  {
    v13 = *(v3 + 17);
    LOBYTE(v24) = 1;
    sub_1D91799CC();
    v14 = type metadata accessor for WidgetNowPlayingInfo();
    v15 = v14[6];
    LOBYTE(v24) = 2;
    sub_1D9176E3C();
    sub_1D8FE5E2C(&qword_1ECAB2C80, MEMORY[0x1E6969530]);
    sub_1D917999C();
    v16 = v14[7];
    LOBYTE(v24) = 3;
    sub_1D917999C();
    v17 = (v3 + v14[8]);
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v24) = 4;
    sub_1D917996C();
    v20 = (v3 + v14[9]);
    v21 = *v20;
    v22 = *(v20 + 8);
    LOBYTE(v24) = 5;
    sub_1D917996C();
    v23 = v14[10];
    LOBYTE(v24) = 6;
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WidgetNowPlayingInfo.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D9176E3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = *(v0 + 16);
  v41 = v3;
  if (v15 == 255)
  {
    sub_1D9179DDC();
  }

  else
  {
    v16 = *v0;
    v17 = v0[1];
    sub_1D9179DDC();
    if (v15)
    {
      if (v15 == 1)
      {
        MEMORY[0x1DA72B390](1);
        sub_1D917915C();
      }

      else
      {
        MEMORY[0x1DA72B390](2);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }
    }

    else
    {
      MEMORY[0x1DA72B390](0);
      MEMORY[0x1DA72B3C0](v16);
    }

    v3 = v41;
  }

  v18 = *(v0 + 17);
  sub_1D9179DDC();
  v19 = type metadata accessor for WidgetNowPlayingInfo();
  sub_1D8D088B4(v0 + v19[6], v14, &qword_1ECAB75C0, &unk_1D9188A50);
  v20 = *(v3 + 48);
  if (v20(v14, 1, v2) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v21 = *(v3 + 32);
    v38 = v20;
    v22 = v40;
    v21(v40, v14, v2);
    sub_1D9179DDC();
    sub_1D8FE5E2C(&qword_1ECAB88E8, MEMORY[0x1E6969530]);
    sub_1D917814C();
    v23 = v22;
    v20 = v38;
    (*(v3 + 8))(v23, v2);
  }

  sub_1D8D088B4(v0 + v19[7], v11, &qword_1ECAB75C0, &unk_1D9188A50);
  if (v20(v11, 1, v2) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v24 = v41;
    v25 = v20;
    v26 = v40;
    (*(v41 + 32))(v40, v11, v2);
    sub_1D9179DDC();
    sub_1D8FE5E2C(&qword_1ECAB88E8, MEMORY[0x1E6969530]);
    sub_1D917814C();
    v27 = v26;
    v20 = v25;
    (*(v24 + 8))(v27, v2);
  }

  v28 = (v0 + v19[8]);
  if (*(v28 + 8) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v29 = *v28;
    sub_1D9179DDC();
    if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    MEMORY[0x1DA72B3C0](v30);
  }

  v31 = (v0 + v19[9]);
  if (*(v31 + 8) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v32 = *v31;
    sub_1D9179DDC();
    if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    MEMORY[0x1DA72B3C0](v33);
  }

  v34 = v39;
  sub_1D8D088B4(v1 + v19[10], v39, &qword_1ECAB75C0, &unk_1D9188A50);
  if (v20(v34, 1, v2) == 1)
  {
    return sub_1D9179DDC();
  }

  v36 = v40;
  v37 = v41;
  (*(v41 + 32))(v40, v34, v2);
  sub_1D9179DDC();
  sub_1D8FE5E2C(&qword_1ECAB88E8, MEMORY[0x1E6969530]);
  sub_1D917814C();
  return (*(v37 + 8))(v36, v2);
}

uint64_t WidgetNowPlayingInfo.hashValue.getter()
{
  sub_1D9179DBC();
  WidgetNowPlayingInfo.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t WidgetNowPlayingInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = v44 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v48 = v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88F0, &qword_1D91A45E8);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v44 - v12;
  v14 = type metadata accessor for WidgetNowPlayingInfo();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 24);
  v20 = sub_1D9176E3C();
  v21 = *(*(v20 - 8) + 56);
  v53 = v19;
  v21(&v17[v19], 1, 1, v20);
  v22 = v14[7];
  v21(&v17[v22], 1, 1, v20);
  v54 = v14[10];
  v21(&v17[v54], 1, 1, v20);
  v23 = a1[3];
  v24 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D8FE59F0();
  v51 = v13;
  v25 = v52;
  sub_1D9179EEC();
  if (v25)
  {
    v26 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    sub_1D8FE1298(0, 0, 255);
    sub_1D8D08A50(&v17[v26], &qword_1ECAB75C0, &unk_1D9188A50);
    sub_1D8D08A50(&v17[v22], &qword_1ECAB75C0, &unk_1D9188A50);
    return sub_1D8D08A50(&v17[v54], &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    v59 = 0;
    sub_1D8D93BD8();
    sub_1D917989C();
    v27 = v22;
    v28 = v57;
    v29 = v58;
    v44[2] = v57;
    v44[3] = v56;
    *v17 = v56;
    *(v17 + 1) = v28;
    LODWORD(v52) = v29;
    v17[16] = v29;
    LOBYTE(v56) = 1;
    v30 = sub_1D91798CC();
    v31 = v53;
    v17[17] = v30 & 1;
    LOBYTE(v56) = 2;
    v32 = sub_1D8FE5E2C(&unk_1EDCD7610, MEMORY[0x1E6969530]);
    v33 = v48;
    v44[1] = v32;
    sub_1D917989C();
    sub_1D8CF6C70(v33, &v17[v31]);
    LOBYTE(v56) = 3;
    sub_1D917989C();
    sub_1D8CF6C70(v47, &v17[v27]);
    LOBYTE(v56) = 4;
    v34 = sub_1D917986C();
    v35 = &v17[v14[8]];
    *v35 = v34;
    v35[8] = v36 & 1;
    LOBYTE(v56) = 5;
    v37 = sub_1D917986C();
    v39 = &v17[v14[9]];
    *v39 = v37;
    v39[8] = v40 & 1;
    LOBYTE(v56) = 6;
    v41 = v46;
    v43 = v50;
    v42 = v51;
    sub_1D917989C();
    (*(v49 + 8))(v42, v43);
    sub_1D8CF6C70(v41, &v17[v54]);
    sub_1D8FE4FFC(v17, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    return sub_1D8FE5060(v17);
  }
}

uint64_t sub_1D8FE4A8C()
{
  sub_1D9179DBC();
  WidgetNowPlayingInfo.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FE4AD0()
{
  sub_1D9179DBC();
  WidgetNowPlayingInfo.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FE4B10@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8908, &unk_1D91A4830);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = &v31 - v3;
  v35 = sub_1D917701C();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D9176D5C();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176D3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9176D1C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9176D2C();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  (*(v25 + 104))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360], v23);
  v26 = v16;
  v27 = v35;
  (*(v17 + 104))(v20, *MEMORY[0x1E6969358], v26);
  v28 = v10;
  v29 = v36;
  (*(v12 + 104))(v15, *MEMORY[0x1E6969370], v11);
  (*(v7 + 104))(v28, *MEMORY[0x1E6969380], v34);
  sub_1D9176FEC();
  result = (*(v4 + 48))(v29, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v32, v29, v27);
    return sub_1D9176D4C();
  }

  return result;
}

uint64_t sub_1D8FE4F68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D8FE4F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetNowPlayingInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8FE4FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetNowPlayingInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8FE5060(uint64_t a1)
{
  v2 = type metadata accessor for WidgetNowPlayingInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s18PodcastsFoundation20WidgetNowPlayingInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v84 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v84 - v27;
  v29 = *(a1 + 16);
  v30 = *(a2 + 16);
  if (v29 == 255)
  {
    v92 = v12;
    v93 = v15;
    if (v30 != 255)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v30 == 255)
  {
    return 0;
  }

  v92 = v12;
  v93 = v15;
  v40 = *a1;
  v41 = *a2;
  if (v29)
  {
    v42 = *(a2 + 8);
    if (v29 == 1)
    {
      if (v30 != 1)
      {
        return 0;
      }

      v88 = v25;
      v90 = v26;
      v91 = v42;
      v89 = sub_1D8D6F530();
      v43 = v41;
      v44 = sub_1D917914C();
      sub_1D8FE1298(v41, v91, 1);
      v26 = v90;
      v25 = v88;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v30 != 2)
      {
        return 0;
      }

      if (v40 != v41 || *(a1 + 8) != v42)
      {
        v47 = *a1;
        v48 = v25;
        v49 = *a2;
        v50 = v26;
        v51 = sub_1D9179ACC();
        v26 = v50;
        v25 = v48;
        if ((v51 & 1) == 0)
        {
          return 0;
        }
      }
    }

LABEL_3:
    if (*(a1 + 17) == *(a2 + 17))
    {
      v88 = v25;
      v86 = v8;
      v31 = v26;
      v32 = type metadata accessor for WidgetNowPlayingInfo();
      v90 = v31;
      v91 = v4;
      v33 = v5;
      v87 = v32;
      v34 = *(v32 + 24);
      v35 = *(v31 + 48);
      sub_1D8D088B4(a1 + v34, v28, &qword_1ECAB75C0, &unk_1D9188A50);
      v36 = a2 + v34;
      v37 = v91;
      sub_1D8D088B4(v36, &v28[v35], &qword_1ECAB75C0, &unk_1D9188A50);
      v89 = v33;
      v38 = *(v33 + 48);
      if (v38(v28, 1, v37) == 1)
      {
        if (v38(&v28[v35], 1, v37) == 1)
        {
          v85 = v38;
          sub_1D8D08A50(v28, &qword_1ECAB75C0, &unk_1D9188A50);
          v39 = v86;
LABEL_25:
          v54 = v87[7];
          v55 = *(v90 + 48);
          sub_1D8D088B4(a1 + v54, v23, &qword_1ECAB75C0, &unk_1D9188A50);
          sub_1D8D088B4(a2 + v54, &v23[v55], &qword_1ECAB75C0, &unk_1D9188A50);
          v56 = v85;
          if (v85(v23, 1, v37) == 1)
          {
            if (v56(&v23[v55], 1, v37) == 1)
            {
              sub_1D8D08A50(v23, &qword_1ECAB75C0, &unk_1D9188A50);
LABEL_35:
              v61 = v87[8];
              v62 = (a1 + v61);
              v63 = *(a1 + v61 + 8);
              v64 = (a2 + v61);
              v65 = *(a2 + v61 + 8);
              if (v63)
              {
                v66 = v88;
                v67 = v90;
                if (!v65)
                {
                  return 0;
                }
              }

              else
              {
                if (*v62 != *v64)
                {
                  LOBYTE(v65) = 1;
                }

                v66 = v88;
                v67 = v90;
                if (v65)
                {
                  return 0;
                }
              }

              v68 = v87[9];
              v69 = (a1 + v68);
              v70 = *(a1 + v68 + 8);
              v71 = (a2 + v68);
              v72 = *(a2 + v68 + 8);
              if (v70)
              {
                if (!v72)
                {
                  return 0;
                }
              }

              else
              {
                if (*v69 != *v71)
                {
                  LOBYTE(v72) = 1;
                }

                if (v72)
                {
                  return 0;
                }
              }

              v73 = v87[10];
              v74 = *(v67 + 48);
              v75 = a1 + v73;
              v76 = v66;
              sub_1D8D088B4(v75, v66, &qword_1ECAB75C0, &unk_1D9188A50);
              sub_1D8D088B4(a2 + v73, v76 + v74, &qword_1ECAB75C0, &unk_1D9188A50);
              v77 = v85;
              if (v85(v76, 1, v37) == 1)
              {
                if (v77(v76 + v74, 1, v37) == 1)
                {
                  sub_1D8D08A50(v76, &qword_1ECAB75C0, &unk_1D9188A50);
                  return 1;
                }
              }

              else
              {
                v78 = v77;
                v79 = v92;
                sub_1D8D088B4(v76, v92, &qword_1ECAB75C0, &unk_1D9188A50);
                if (v78(v76 + v74, 1, v37) != 1)
                {
                  v80 = v89;
                  (*(v89 + 32))(v39, v76 + v74, v37);
                  sub_1D8FE5E2C(&qword_1ECAB75C8, MEMORY[0x1E6969530]);
                  v81 = v79;
                  v82 = sub_1D91781BC();
                  v83 = *(v80 + 8);
                  v83(v39, v37);
                  v83(v81, v37);
                  sub_1D8D08A50(v76, &qword_1ECAB75C0, &unk_1D9188A50);
                  return (v82 & 1) != 0;
                }

                (*(v89 + 8))(v79, v37);
              }

              v45 = v76;
              goto LABEL_31;
            }
          }

          else
          {
            v57 = v93;
            sub_1D8D088B4(v23, v93, &qword_1ECAB75C0, &unk_1D9188A50);
            if (v56(&v23[v55], 1, v37) != 1)
            {
              v58 = v89;
              (*(v89 + 32))(v39, &v23[v55], v37);
              sub_1D8FE5E2C(&qword_1ECAB75C8, MEMORY[0x1E6969530]);
              v59 = sub_1D91781BC();
              v60 = *(v58 + 8);
              v60(v39, v37);
              v60(v57, v37);
              sub_1D8D08A50(v23, &qword_1ECAB75C0, &unk_1D9188A50);
              if ((v59 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_35;
            }

            (*(v89 + 8))(v57, v37);
          }

          v45 = v23;
LABEL_31:
          sub_1D8D08A50(v45, &qword_1ECAB75B8, &qword_1D9197C80);
          return 0;
        }

LABEL_15:
        v45 = v28;
        goto LABEL_31;
      }

      sub_1D8D088B4(v28, v18, &qword_1ECAB75C0, &unk_1D9188A50);
      if (v38(&v28[v35], 1, v37) == 1)
      {
        (*(v89 + 8))(v18, v37);
        goto LABEL_15;
      }

      v85 = v38;
      v39 = v86;
      (*(v89 + 32))(v86, &v28[v35], v37);
      sub_1D8FE5E2C(&qword_1ECAB75C8, MEMORY[0x1E6969530]);
      v52 = sub_1D91781BC();
      v53 = *(v89 + 8);
      v53(v39, v91);
      v53(v18, v91);
      v37 = v91;
      sub_1D8D08A50(v28, &qword_1ECAB75C0, &unk_1D9188A50);
      if (v52)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  result = 0;
  if (!v30 && v40 == v41)
  {
    goto LABEL_3;
  }

  return result;
}