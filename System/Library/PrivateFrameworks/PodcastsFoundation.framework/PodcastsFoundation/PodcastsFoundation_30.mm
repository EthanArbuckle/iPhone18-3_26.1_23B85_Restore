unint64_t sub_1D8FE59F0()
{
  result = qword_1EDCD6270;
  if (!qword_1EDCD6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6270);
  }

  return result;
}

unint64_t sub_1D8FE5AC8()
{
  result = qword_1ECAB8900;
  if (!qword_1ECAB8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8900);
  }

  return result;
}

unint64_t sub_1D8FE5B20()
{
  result = qword_1EDCD6260;
  if (!qword_1EDCD6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6260);
  }

  return result;
}

unint64_t sub_1D8FE5B78()
{
  result = qword_1EDCD6268;
  if (!qword_1EDCD6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6268);
  }

  return result;
}

uint64_t sub_1D8FE5BCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D91D1D60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D1D80 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D91D1D40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616D6552656D6974 && a2 == 0xED0000676E696E69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D91D1D20 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D9179ACC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D8FE5E2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AdamID.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8FE6EA0(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

unsigned __int8 *AdamID.init(value:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D8FE6808(a1, a2);

  return v2;
}

uint64_t AdamID.longValue.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

id AdamID.numberValue.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedLongLong_];
}

unsigned __int8 *AdamID.init(_:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D8FE6808(a1, a2);

  return v2;
}

unint64_t AdamID.debugDescription.getter()
{
  sub_1D917946C();

  v0 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v0);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

unint64_t AdamID.ParseError.description.getter()
{
  result = 0xD000000000000026;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000027;
    }

    else
    {
      v3 = *v0;
      sub_1D917946C();
      MEMORY[0x1DA7298F0](0xD000000000000030, 0x80000001D91D1DA0);
      MEMORY[0x1DA7298F0](v3, v2);
      MEMORY[0x1DA7298F0](34, 0xE100000000000000);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8FE61E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8918, &qword_1D91A4B18);
  __swift_allocate_value_buffer(v0, qword_1EDCD5F30);
  __swift_project_value_buffer(v0, qword_1EDCD5F30);
  return sub_1D917715C();
}

void *sub_1D8FE631C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D8FE6F88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t AdamID.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  v5[6] = a2;
  sub_1D8E40D20();
  sub_1D917927C();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1D8FE6410(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  v5[6] = v2;
  sub_1D8E40D20();
  sub_1D917927C();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1D8FE64D8()
{
  v2 = *v0;
  sub_1D8E40D20();
  return sub_1D917927C();
}

unsigned __int8 *AdamID.init(metricsFieldValue:)(uint64_t *a1)
{
  sub_1D8CFAD1C(a1, v6);
  if (swift_dynamicCast())
  {
    v2 = sub_1D8FE6808(v4, v5);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v2;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }
}

uint64_t AdamID.metricsFieldRepresentation()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8E40D20();
  result = sub_1D917927C();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8FE6628@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v9);
  if (swift_dynamicCast())
  {
    v4 = sub_1D8FE6808(v7, v8);

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = 0;
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v4 = 0;
    v6 = 1;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1D8FE66E4@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  sub_1D8E40D20();
  result = sub_1D917927C();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v4;
  return result;
}

id AdamID.init(value:)(void *a1)
{
  v2 = [a1 unsignedLongLongValue];

  return v2;
}

unsigned __int8 *_sSS18PodcastsFoundationE6adamIDAA04AdamD0VSgvg_0(uint64_t a1, unint64_t a2)
{

  v4 = sub_1D8FE6808(a1, a2);

  return v4;
}

unsigned __int8 *sub_1D8FE6808(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8918, &qword_1D91A4B18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8920, &qword_1D91A4B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v44 - v12;
  v14 = HIBYTE(a2) & 0xF;
  v15 = v11 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    sub_1D8FE71C4();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0;
    goto LABEL_17;
  }

  if (v11 == 48 && a2 == 0xE100000000000000 || (v45 = v11, (sub_1D9179ACC() & 1) != 0))
  {
    sub_1D8FE71C4();
    swift_allocError();
    *v17 = xmmword_1D918F800;
LABEL_17:
    swift_willThrow();
    return v13;
  }

  v44 = a2;
  if (qword_1EDCD5F28 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EDCD5F30);
  sub_1D8FE70F8();
  sub_1D917714C();
  sub_1D91783EC();
  sub_1D917716C();
  if (v2)
  {

    (*(v5 + 8))(v8, v4);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8928, &qword_1D91A4B28);
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
LABEL_15:
    sub_1D8FE715C(v13);
    sub_1D8FE71C4();
    swift_allocError();
    *v21 = v45;
LABEL_16:
    v21[1] = v44;

    goto LABEL_17;
  }

  (*(v5 + 8))(v8, v4);

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8928, &qword_1D91A4B28);
  if ((*(*(v20 - 8) + 48))(v13, 1, v20) == 1)
  {
    goto LABEL_15;
  }

  result = sub_1D8FE715C(v13);
  v23 = v44;
  if ((v44 & 0x1000000000000000) != 0)
  {

    v40 = v45;
    v13 = sub_1D8FF6C8C(v45, v23, 10);
    v42 = v41;

    v24 = v40;
    if ((v42 & 1) == 0)
    {
      return v13;
    }

LABEL_79:
    v39 = v24;
    sub_1D8FE71C4();
    swift_allocError();
    *v21 = v39;
    goto LABEL_16;
  }

  v24 = v45;
  if ((v44 & 0x2000000000000000) == 0)
  {
    if ((v45 & 0x1000000000000000) != 0)
    {
      result = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1D917957C();
      v24 = v45;
      v15 = v43;
    }

    v25 = *result;
    if (v25 == 43)
    {
      if (v15 >= 1)
      {
        v26 = v15 - 1;
        if (v15 != 1)
        {
          v13 = 0;
          if (result)
          {
            v32 = result + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                goto LABEL_77;
              }

              if (!is_mul_ok(v13, 0xAuLL))
              {
                goto LABEL_77;
              }

              v29 = __CFADD__(10 * v13, v33);
              v13 = 10 * v13 + v33;
              if (v29)
              {
                goto LABEL_77;
              }

              ++v32;
              if (!--v26)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_76;
        }

        goto LABEL_77;
      }

      goto LABEL_85;
    }

    if (v25 != 45)
    {
      if (v15)
      {
        v13 = 0;
        if (result)
        {
          while (1)
          {
            v36 = *result - 48;
            if (v36 > 9)
            {
              goto LABEL_77;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              goto LABEL_77;
            }

            v29 = __CFADD__(10 * v13, v36);
            v13 = 10 * v13 + v36;
            if (v29)
            {
              goto LABEL_77;
            }

            ++result;
            if (!--v15)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_77:
      v13 = 0;
      LOBYTE(v26) = 1;
LABEL_78:
      v47 = v26;
      if ((v26 & 1) == 0)
      {
        return v13;
      }

      goto LABEL_79;
    }

    if (v15 >= 1)
    {
      v26 = v15 - 1;
      if (v15 != 1)
      {
        v13 = 0;
        if (result)
        {
          v27 = result + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_77;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              goto LABEL_77;
            }

            v29 = 10 * v13 >= v28;
            v13 = 10 * v13 - v28;
            if (!v29)
            {
              goto LABEL_77;
            }

            ++v27;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_76:
        LOBYTE(v26) = 0;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v46[0] = v45;
  v46[1] = v44 & 0xFFFFFFFFFFFFFFLL;
  if (v45 != 43)
  {
    if (v45 != 45)
    {
      if (v14)
      {
        v13 = 0;
        v37 = v46;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          if (!is_mul_ok(v13, 0xAuLL))
          {
            break;
          }

          v29 = __CFADD__(10 * v13, v38);
          v13 = 10 * v13 + v38;
          if (v29)
          {
            break;
          }

          ++v37;
          if (!--v14)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_77;
    }

    if (v14)
    {
      v26 = v14 - 1;
      if (v14 != 1)
      {
        v13 = 0;
        v30 = v46 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          if (!is_mul_ok(v13, 0xAuLL))
          {
            break;
          }

          v29 = 10 * v13 >= v31;
          v13 = 10 * v13 - v31;
          if (!v29)
          {
            break;
          }

          ++v30;
          if (!--v26)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_84;
  }

  if (v14)
  {
    v26 = v14 - 1;
    if (v14 != 1)
    {
      v13 = 0;
      v34 = v46 + 1;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v29 = __CFADD__(10 * v13, v35);
        v13 = 10 * v13 + v35;
        if (v29)
        {
          break;
        }

        ++v34;
        if (!--v26)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_77;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1D8FE6EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1D8FE70A4();
  sub_1D917968C();
  return v7[1];
}

void *sub_1D8FE6F88(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = sub_1D9179ADC();
    v4 = sub_1D8FE6808(v5, v6);

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation6AdamIDV10ParseErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D8FE70A4()
{
  result = qword_1ECAB8910;
  if (!qword_1ECAB8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8910);
  }

  return result;
}

unint64_t sub_1D8FE70F8()
{
  result = qword_1EDCD7600;
  if (!qword_1EDCD7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8918, &qword_1D91A4B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7600);
  }

  return result;
}

uint64_t sub_1D8FE715C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8920, &qword_1D91A4B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8FE71C4()
{
  result = qword_1ECAB1150;
  if (!qword_1ECAB1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1150);
  }

  return result;
}

uint64_t PodcastsURLEpisodeParameters.podcastUuid.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PodcastsURLEpisodeParameters.podcastUuid.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PodcastsURLEpisodeParameters.episodeUuid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PodcastsURLEpisodeParameters.episodeUuid.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PodcastsURLEpisodeParameters.storeCollectionId.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t PodcastsURLEpisodeParameters.storeCollectionId.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t PodcastsURLEpisodeParameters.storeTrackId.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t PodcastsURLEpisodeParameters.storeTrackId.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t PodcastsURLEpisodeParameters.init(podcastUuid:episodeUuid:storeCollectionId:storeTrackId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t PodcastsURLEpisodeCommand.episodeParameters.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 57);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1D8FE7470(v7, &v6);
}

uint64_t sub_1D8FE74D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
}

__n128 PodcastsURLPlayCommand.__allocating_init(params:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v2 + 57) = result;
  return result;
}

_OWORD *PodcastsURLPlayCommand.init(params:)(_OWORD *a1)
{
  v2 = a1[1];
  v1[1] = *a1;
  v1[2] = v2;
  v1[3] = a1[2];
  *(v1 + 57) = *(a1 + 41);
  return v1;
}

uint64_t sub_1D8FE7580()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1D8FE75B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

double static PodcastsURLScheme.commandType(for:)()
{
  v0 = sub_1D9176BAC();
  if (v1)
  {
    v3 = v0;
    v4 = v1;
    if (v0 == 0x6979616C50776F6ELL && v1 == 0xEA0000000000676ELL || (sub_1D9179ACC() & 1) != 0)
    {

      type metadata accessor for PodcastsURLNowPlayingCommand();
LABEL_6:
      swift_allocObject();
      return result;
    }

    if (v3 == 1852141679 && v4 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
    {

      type metadata accessor for PodcastsURLOpenCommand();
      goto LABEL_6;
    }

    if (v3 == 2003789939 && v4 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
    {

      sub_1D8FE7830(&v10);
      v5 = *(&v10 + 1);
      v6 = v10;
      v13 = v11;
      v14[0] = v12[0];
      result = *(v12 + 9);
      *(v14 + 9) = *(v12 + 9);
      if (*(&v10 + 1) == 1)
      {
        return result;
      }

      type metadata accessor for PodcastsURLShowCommand();
LABEL_17:
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      v8 = v14[0];
      *(v7 + 32) = v13;
      *(v7 + 48) = v8;
      result = *(v14 + 9);
      *(v7 + 57) = *(v14 + 9);
      return result;
    }

    if (v3 == 2036427888 && v4 == 0xE400000000000000)
    {
    }

    else
    {
      v9 = sub_1D9179ACC();

      if ((v9 & 1) == 0)
      {
        return result;
      }
    }

    sub_1D8FE7830(&v10);
    v5 = *(&v10 + 1);
    v6 = v10;
    v13 = v11;
    v14[0] = v12[0];
    result = *(v12 + 9);
    *(v14 + 9) = *(v12 + 9);
    if (*(&v10 + 1) != 1)
    {
      type metadata accessor for PodcastsURLPlayCommand();
      goto LABEL_17;
    }
  }

  return result;
}

double sub_1D8FE7830@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_1D9176B1C();
  v3 = [v2 pf_queryAsDictionary];

  if (v3)
  {
    v4 = sub_1D917805C();

    *&v33 = 0x5574736163646F70;
    *(&v33 + 1) = 0xEB00000000646975;
    sub_1D91793EC();
    if (*(v4 + 16) && (v5 = sub_1D8D6550C(&v36), (v6 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v4 + 56) + 32 * v5, &v33);
      sub_1D8D9A308(&v36);
      v7 = swift_dynamicCast();
      if (v7)
      {
        v8 = v31;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        v9 = v32;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      sub_1D8D9A308(&v36);
      v8 = 0;
      v9 = 0;
    }

    *&v33 = 0x4974736163646F70;
    *(&v33 + 1) = 0xE900000000000064;

    sub_1D91793EC();
    if (*(v4 + 16) && (v10 = sub_1D8D6550C(&v36), (v11 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v4 + 56) + 32 * v10, &v33);
      sub_1D8D9A308(&v36);
    }

    else
    {
      sub_1D8D9A308(&v36);
      v33 = 0u;
      v34 = 0u;
    }

    v12 = sub_1D8FE827C(&v33);
    v14 = v13;
    sub_1D8D64450(&v33);
    v47 = v14 & 1;
    *&v33 = 0x5565646F73697065;
    *(&v33 + 1) = 0xEB00000000646975;
    sub_1D91793EC();
    if (*(v4 + 16) && (v15 = sub_1D8D6550C(&v36), (v16 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v4 + 56) + 32 * v15, &v33);
      sub_1D8D9A308(&v36);
      v17 = swift_dynamicCast();
      if (v17)
      {
        v18 = v31;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v32;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      sub_1D8D9A308(&v36);
      v18 = 0;
      v19 = 0;
    }

    *&v33 = 0x4965646F73697065;
    *(&v33 + 1) = 0xE900000000000064;
    sub_1D91793EC();
    if (*(v4 + 16) && (v20 = sub_1D8D6550C(&v36), (v21 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v4 + 56) + 32 * v20, &v33);
      sub_1D8D9A308(&v36);
    }

    else
    {

      sub_1D8D9A308(&v36);
      v33 = 0u;
      v34 = 0u;
    }

    v22 = sub_1D8FE827C(&v33);
    v24 = v23;
    sub_1D8D64450(&v33);
    v45 = v24 & 1;
    if (v9)
    {
    }

    else if (v14 & 1) != 0 && !v19 && (v24)
    {
      *a1 = xmmword_1D918F800;
      a1[1] = 0u;
      a1[2] = 0u;
      *(a1 + 41) = 0u;
      v36 = v8;
      v37 = 0;
      v38 = v18;
      v39 = 0;
      v40 = v12;
      v41 = v47;
      *v42 = *v46;
      *&v42[3] = *&v46[3];
      v43 = v22;
      v44 = v45;
      goto LABEL_31;
    }

    *&v33 = v8;
    *(&v33 + 1) = v9;
    *&v34 = v18;
    *(&v34 + 1) = v19;
    *v35 = v12;
    v35[8] = v47;
    v25 = v47;
    *&v35[12] = *&v46[3];
    *&v35[9] = *v46;
    *&v35[16] = v22;
    v35[24] = v45;
    v26 = v45;
    v27 = v33;
    v28 = v34;
    v29 = *v35;
    *(a1 + 41) = *&v35[9];
    a1[1] = v28;
    a1[2] = v29;
    *a1 = v27;
    v36 = v8;
    v37 = v9;
    v38 = v18;
    v39 = v19;
    v40 = v12;
    v41 = v25;
    *&v42[3] = *&v46[3];
    *v42 = *v46;
    v43 = v22;
    v44 = v26;
    sub_1D8FE7470(&v33, &v31);
LABEL_31:
    sub_1D8FE89C4(&v36);
    return result;
  }

  result = 0.0;
  *a1 = xmmword_1D918F800;
  a1[1] = 0u;
  a1[2] = 0u;
  *(a1 + 41) = 0u;
  return result;
}

uint64_t static PodcastsURLScheme.buildURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D91767FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastsURLNowPlayingCommand();
  if (swift_dynamicCastClass())
  {
    sub_1D91767EC();
    sub_1D91767AC();
    v7 = 0x6979616C50776F6ELL;
    v8 = 0xEA0000000000676ELL;
LABEL_5:
    MEMORY[0x1DA727D30](v7, v8);
    sub_1D917674C();
    return (*(v3 + 8))(v6, v2);
  }

  type metadata accessor for PodcastsURLOpenCommand();
  if (swift_dynamicCastClass())
  {
    sub_1D91767EC();
    sub_1D91767AC();
    v7 = 1852141679;
    v8 = 0xE400000000000000;
    goto LABEL_5;
  }

  type metadata accessor for PodcastsURLShowCommand();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = 2003789939;
    return sub_1D8FE7F04(v10, v11);
  }

  type metadata accessor for PodcastsURLPlayCommand();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = 2036427888;
    return sub_1D8FE7F04(v10, v11);
  }

  v12 = sub_1D9176C2C();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 1, 1, v12);
}

uint64_t sub_1D8FE7F04(_OWORD *a1, uint64_t a2)
{
  v4 = sub_1D91767FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91767EC();
  sub_1D91767AC();
  MEMORY[0x1DA727D30](a2, 0xE400000000000000);
  v9 = a1[2];
  v16[0] = a1[1];
  v16[1] = v9;
  v11 = a1[1];
  v10 = a1[2];
  v17[0] = a1[3];
  *(v17 + 9) = *(a1 + 57);
  v13 = v11;
  v14 = v10;
  v15[0] = a1[3];
  *(v15 + 9) = *(a1 + 57);
  sub_1D8FE7470(v16, v18);
  sub_1D8FE85CC(&v13);
  v18[0] = v13;
  v18[1] = v14;
  v19[0] = v15[0];
  *(v19 + 9) = *(v15 + 9);
  sub_1D8FE89C4(v18);
  sub_1D917671C();
  sub_1D917674C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D8FE8088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D8FE80E4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8FE827C(uint64_t a1)
{
  sub_1D8FE89F4(a1, v31);
  if (!v31[3])
  {
    sub_1D8D64450(v31);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v30;
  v2 = HIBYTE(v30) & 0xF;
  v3 = v29 & 0xFFFFFFFFFFFFLL;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v4 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((v30 & 0x1000000000000000) == 0)
  {
    if ((v30 & 0x2000000000000000) != 0)
    {
      v31[0] = v29;
      v31[1] = v30 & 0xFFFFFFFFFFFFFFLL;
      if (v29 == 43)
      {
        if (v2)
        {
          v5 = (v2 - 1);
          if (v2 != 1)
          {
            v8 = 0;
            v19 = v31 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v5)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_76:
        __break(1u);
        return result;
      }

      if (v29 != 45)
      {
        if (v2)
        {
          v8 = 0;
          v24 = v31;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v2)
            {
LABEL_64:
              LOBYTE(v5) = 0;
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v2)
      {
        v5 = (v2 - 1);
        if (v2 != 1)
        {
          v8 = 0;
          v12 = v31 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v5)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v29 & 0x1000000000000000) != 0)
      {
        v5 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_1D917957C();
        result = v30;
      }

      v6 = *v5;
      if (v6 == 43)
      {
        if (v3 >= 1)
        {
          v15 = v3 - 1;
          if (v3 != 1)
          {
            v8 = 0;
            if (v5)
            {
              v16 = v5 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  goto LABEL_65;
                }

                v18 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_65;
                }

                v8 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  goto LABEL_65;
                }

                ++v16;
                if (!--v15)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_66;
          }

          goto LABEL_65;
        }

        goto LABEL_75;
      }

      if (v6 != 45)
      {
        if (v3)
        {
          v8 = 0;
          if (v5)
          {
            while (1)
            {
              v22 = *v5 - 48;
              if (v22 > 9)
              {
                goto LABEL_65;
              }

              v23 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_65;
              }

              v8 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_65;
              }

              ++v5;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_65:
        v8 = 0;
        LOBYTE(v5) = 1;
        goto LABEL_66;
      }

      if (v3 >= 1)
      {
        v7 = v3 - 1;
        if (v3 != 1)
        {
          v8 = 0;
          if (v5)
          {
            v9 = v5 + 1;
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_65;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_65;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_65;
              }

              ++v9;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_66:
          v27 = v5;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v8 = sub_1D8FF7E64(v29);
  v27 = v28;
LABEL_67:

  if (v27)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

char *sub_1D8FE85CC(uint64_t *a1)
{
  v2 = sub_1D91766EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  if (a1[1])
  {
    v16 = a1[3];
    v42 = a1[2];
    v17 = *a1;
    sub_1D91766BC();
    v18 = sub_1D8D8EDF4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1D8D8EDF4(v19 > 1, v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v23 = *(v3 + 32);
    v22 = v3 + 32;
    v21 = v23;
    v24 = (*(v22 + 48) + 32) & ~*(v22 + 48);
    v25 = *(v22 + 40);
    v23(&v18[v24 + v25 * v20], v15, v2);
    if (v16)
    {
      sub_1D91766BC();
      v27 = *(v18 + 2);
      v26 = *(v18 + 3);
      if (v27 >= v26 >> 1)
      {
        v18 = sub_1D8D8EDF4(v26 > 1, v27 + 1, 1, v18);
      }

      *(v18 + 2) = v27 + 1;
      v28 = &v18[v24 + v27 * v25];
      v29 = v12;
LABEL_8:
      v21(v28, v29, v2);
    }
  }

  else
  {
    if (a1[5])
    {
      return MEMORY[0x1E69E7CC0];
    }

    v30 = a1[4];
    v41 = a1[6];
    LODWORD(v42) = *(a1 + 56);
    v43 = v30;
    sub_1D9179A4C();
    sub_1D91766BC();

    v18 = sub_1D8D8EDF4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v32 = *(v18 + 2);
    v31 = *(v18 + 3);
    if (v32 >= v31 >> 1)
    {
      v18 = sub_1D8D8EDF4(v31 > 1, v32 + 1, 1, v18);
    }

    *(v18 + 2) = v32 + 1;
    v34 = *(v3 + 32);
    v33 = v3 + 32;
    v21 = v34;
    v35 = (*(v33 + 48) + 32) & ~*(v33 + 48);
    v36 = *(v33 + 40);
    v34(&v18[v35 + v36 * v32], v9, v2);
    if ((v42 & 1) == 0)
    {
      v43 = v41;
      sub_1D9179A4C();
      sub_1D91766BC();

      v39 = *(v18 + 2);
      v38 = *(v18 + 3);
      if (v39 >= v38 >> 1)
      {
        v18 = sub_1D8D8EDF4(v38 > 1, v39 + 1, 1, v18);
      }

      *(v18 + 2) = v39 + 1;
      v28 = &v18[v35 + v39 * v36];
      v29 = v6;
      goto LABEL_8;
    }
  }

  return v18;
}

uint64_t sub_1D8FE89F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D8FE8AB0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 adamID];
  if (v10)
  {
    v11 = v10 == 1000000000000;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  else
  {
    v12 = v10;
    v13 = [a1 lastUpdatedDate];
    sub_1D9176DFC();

    sub_1D9176DDC();
    v15 = v14;
    (*(v5 + 8))(v9, v4);

    *a2 = v12;
    *(a2 + 8) = floor(v15 * 1000.0);
    *(a2 + 16) = 0;
  }
}

uint64_t RecommendationsMetadata.Analytics.clientID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RecommendationsMetadata.Analytics.userID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall RecommendationsMetadata.Analytics.init(clientID:userID:userAllowsPersonalization:userIsManagedAccount:userIsUnder13:)(PodcastsFoundation::RecommendationsMetadata::Analytics *__return_ptr retstr, Swift::String_optional clientID, Swift::String_optional userID, Swift::Bool userAllowsPersonalization, Swift::Bool userIsManagedAccount, Swift::Bool userIsUnder13)
{
  retstr->clientID = clientID;
  retstr->userID = userID;
  retstr->userAllowsPersonalization = userAllowsPersonalization;
  retstr->userIsManagedAccount = userIsManagedAccount;
  retstr->userIsUnder13 = userIsUnder13;
}

__n128 RecommendationsMetadata.Analytics.init(from:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *&a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId + 8];
  v5 = a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization];
  v6 = a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount];
  v7 = *&a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId + 8];
  v8 = a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld];
  v12 = *&a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  v11 = *&a1[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];

  *&v9 = v11;
  result.n128_u64[0] = v12;
  *(&v9 + 1) = v4;
  result.n128_u64[1] = v7;
  *a2 = v9;
  *(a2 + 16) = result;
  *(a2 + 32) = v5;
  *(a2 + 33) = v6;
  *(a2 + 34) = v8;
  return result;
}

PodcastsFoundation::RecommendationsMetadata::Categories __swiftcall RecommendationsMetadata.Categories.init(liked:disliked:)(Swift::OpaquePointer liked, Swift::OpaquePointer disliked)
{
  v2->_rawValue = liked._rawValue;
  v2[1]._rawValue = disliked._rawValue;
  result.disliked = disliked;
  result.liked = liked;
  return result;
}

PodcastsFoundation::RecommendationsMetadata::Categories __swiftcall RecommendationsMetadata.Categories.init(from:dislikedInterests:)(Swift::OpaquePointer from, Swift::OpaquePointer dislikedInterests)
{
  v50 = v2;
  v52 = type metadata accessor for InterestModel();
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](from._rawValue);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v48 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = *(v16 + 16);
  rawValue = dislikedInterests._rawValue;
  if (v19)
  {
    v20 = *(v5 + 80);
    v48 = v16;
    v49 = v5;
    v21 = v16 + ((v20 + 32) & ~v20);
    v22 = *(v5 + 72);
    v53 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8FEE37C(v21, v18);
      sub_1D8FEE37C(v18, v11);
      v23 = *v11;
      if (*v11 == 1000000000000 || v23 == 0)
      {
        sub_1D8E28498(v11);
        sub_1D8E28498(v18);
      }

      else
      {
        v25 = v11 + *(v52 + 24);
        sub_1D9176DDC();
        v27 = v26;
        sub_1D8E28498(v11);
        sub_1D8E28498(v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1D8ECD5B4(0, *(v53 + 2) + 1, 1, v53);
        }

        v29 = *(v53 + 2);
        v28 = *(v53 + 3);
        if (v29 >= v28 >> 1)
        {
          v53 = sub_1D8ECD5B4((v28 > 1), v29 + 1, 1, v53);
        }

        v30 = v53;
        *(v53 + 2) = v29 + 1;
        v31 = &v30[16 * v29];
        *(v31 + 4) = v23;
        *(v31 + 5) = floor(v27 * 1000.0);
      }

      v21 += v22;
      --v19;
    }

    while (v19);

    dislikedInterests._rawValue = rawValue;
    v5 = v49;
    v32 = rawValue[2];
    if (v32)
    {
      goto LABEL_15;
    }

LABEL_29:

    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v53 = MEMORY[0x1E69E7CC0];
  v32 = *(dislikedInterests._rawValue + 2);
  if (!v32)
  {
    goto LABEL_29;
  }

LABEL_15:
  v33 = dislikedInterests._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v34 = *(v5 + 72);
  v35 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D8FEE37C(v33, v14);
    sub_1D8FEE37C(v14, v8);
    v36 = *v8;
    if (*v8 == 1000000000000 || v36 == 0)
    {
      sub_1D8E28498(v8);
      sub_1D8E28498(v14);
    }

    else
    {
      v38 = v8 + *(v52 + 24);
      sub_1D9176DDC();
      v40 = v39;
      sub_1D8E28498(v8);
      sub_1D8E28498(v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1D8ECD5B4(0, *(v35 + 2) + 1, 1, v35);
      }

      v42 = *(v35 + 2);
      v41 = *(v35 + 3);
      if (v42 >= v41 >> 1)
      {
        v35 = sub_1D8ECD5B4((v41 > 1), v42 + 1, 1, v35);
      }

      *(v35 + 2) = v42 + 1;
      v43 = &v35[16 * v42];
      *(v43 + 4) = v36;
      *(v43 + 5) = floor(v40 * 1000.0);
    }

    v33 += v34;
    --v32;
  }

  while (v32);

LABEL_30:
  v46 = v50;
  *v50 = v53;
  v46[1] = v35;
  result.disliked._rawValue = v45;
  result.liked._rawValue = v44;
  return result;
}

{
  v54 = v2;
  v53 = sub_1D9176E3C();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v53);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = from._rawValue & 0xFFFFFFFFFFFFFF8;
  if (from._rawValue >> 62)
  {
LABEL_55:
    v11 = sub_1D917935C();
  }

  else
  {
    v11 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = (v5 + 8);
  if (!v11)
  {
    v55 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v12 = 0;
  v5 = from._rawValue & 0xC000000000000001;
  v55 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = v12;
    while (1)
    {
      if (v5)
      {
        v15 = MEMORY[0x1DA72AA90](v13, from._rawValue, v7);
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_52;
        }

        v15 = *(from._rawValue + v13 + 4);
      }

      v16 = v15;
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v17 = [v15 category];
      if (v17)
      {
        break;
      }

      v14 = v16;
LABEL_7:

      ++v13;
      if (v12 == v11)
      {
        goto LABEL_27;
      }
    }

    v14 = v17;
    v18 = [v17 adamID];
    if (v18 == 1000000000000 || v18 == 0)
    {

      goto LABEL_7;
    }

    v51 = v18;
    v20 = [v16 lastUpdatedDate];
    sub_1D9176DFC();

    sub_1D9176DDC();
    v22 = v21;
    (*v52)(v9, v53);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = sub_1D8ECD5B4(0, *(v55 + 2) + 1, 1, v55);
    }

    v25 = *(v55 + 2);
    v24 = *(v55 + 3);
    v26 = v51;
    if (v25 >= v24 >> 1)
    {
      v55 = sub_1D8ECD5B4((v24 > 1), v25 + 1, 1, v55);
      v26 = v51;
    }

    v7.n128_f64[0] = floor(v22 * 1000.0);
    v27 = v55;
    *(v55 + 2) = v25 + 1;
    v28 = &v27[16 * v25];
    *(v28 + 4) = v26;
    *(v28 + 5) = v7.n128_u64[0];
  }

  while (v12 != v11);
LABEL_27:

  v10 = dislikedInterests._rawValue & 0xFFFFFFFFFFFFFF8;
  if (dislikedInterests._rawValue >> 62)
  {
    from._rawValue = sub_1D917935C();
    if (from._rawValue)
    {
      goto LABEL_29;
    }
  }

  else
  {
    from._rawValue = *((dislikedInterests._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (from._rawValue)
    {
LABEL_29:
      v29 = 0;
      v5 = MEMORY[0x1E69E7CC0];
LABEL_30:
      v30 = v29;
      while (1)
      {
        if ((dislikedInterests._rawValue & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1DA72AA90](v30, dislikedInterests._rawValue);
        }

        else
        {
          if (v30 >= *((dislikedInterests._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v32 = *(dislikedInterests._rawValue + v30 + 4);
        }

        v33 = v32;
        v29 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        v34 = [v32 category];
        if (v34)
        {
          v31 = v34;
          v35 = [v34 adamID];
          if (v35 != 1000000000000 && v35 != 0)
          {
            v51 = v35;
            v37 = [v33 lastUpdatedDate];
            sub_1D9176DFC();

            sub_1D9176DDC();
            v39 = v38;
            (*v52)(v9, v53);

            v40 = v5;
            v41 = swift_isUniquelyReferenced_nonNull_native();
            if ((v41 & 1) == 0)
            {
              v40 = sub_1D8ECD5B4(0, *(v5 + 16) + 1, 1, v5);
            }

            v43 = *(v40 + 2);
            v42 = *(v40 + 3);
            v44 = v51;
            if (v43 >= v42 >> 1)
            {
              v40 = sub_1D8ECD5B4((v42 > 1), v43 + 1, 1, v40);
              v44 = v51;
            }

            v5 = v40;
            *(v40 + 2) = v43 + 1;
            v45 = &v40[16 * v43];
            *(v45 + 4) = v44;
            *(v45 + 5) = floor(v39 * 1000.0);
            if (v29 != from._rawValue)
            {
              goto LABEL_30;
            }

            goto LABEL_58;
          }
        }

        else
        {
          v31 = v33;
        }

        ++v30;
        if (v29 == from._rawValue)
        {
          goto LABEL_58;
        }
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_58:

  v48 = v54;
  *v54 = v55;
  v48[1] = v5;
  result.disliked._rawValue = v47;
  result.liked._rawValue = v46;
  return result;
}

uint64_t RecommendationsMetadata.Categories.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = v3 == 1000000000000;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result = sub_1D8E28498(a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  else
  {
    v6 = a1 + *(type metadata accessor for InterestModel() + 24);
    sub_1D9176DDC();
    v8 = floor(v7 * 1000.0);
    result = sub_1D8E28498(a1);
    *a2 = v3;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t static RecommendationsMetadata.Categories.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return sub_1D8E89BF4(result, v6);
  }

  v8 = (v2 + 40);
  v9 = (v3 + 40);
  while (v4)
  {
    if (*(v8 - 1) != *(v9 - 1) || *v8 != *v9)
    {
      return 0;
    }

    v8 += 2;
    v9 += 2;
    if (!--v4)
    {
      return sub_1D8E89BF4(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FE9784()
{
  if (*v0)
  {
    result = 0x64656B696C736964;
  }

  else
  {
    result = 0x64656B696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D8FE97BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656B696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D8FE9894(uint64_t a1)
{
  v2 = sub_1D8FEE77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FE98D0(uint64_t a1)
{
  v2 = sub_1D8FEE77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FE990C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D8E89BF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D8E89BF4(v2, v3);
}

PodcastsFoundation::RecommendationsMetadata::Channels __swiftcall RecommendationsMetadata.Channels.init(subscribed:liked:disliked:)(Swift::OpaquePointer subscribed, Swift::OpaquePointer liked, Swift::OpaquePointer disliked)
{
  v3[1]._rawValue = liked._rawValue;
  v3[2]._rawValue = disliked._rawValue;
  v3->_rawValue = subscribed._rawValue;
  result.disliked = disliked;
  result.liked = liked;
  result.subscribed = subscribed;
  return result;
}

PodcastsFoundation::RecommendationsMetadata::Channels __swiftcall RecommendationsMetadata.Channels.init(from:favoritedChannels:dislikedChannels:)(Swift::OpaquePointer from, Swift::OpaquePointer favoritedChannels, Swift::OpaquePointer dislikedChannels)
{
  v36 = v3;
  rawValue = favoritedChannels._rawValue;
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(from._rawValue >> 62))
  {
    v13 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_27:
    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

LABEL_26:
  v25 = isUniquelyReferenced_nonNull_native;
  v13 = sub_1D917935C();
  isUniquelyReferenced_nonNull_native = v25;
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_3:
  v14 = 0;
  v33 = (v7 + 8);
  v34 = isUniquelyReferenced_nonNull_native;
  v38 = MEMORY[0x1E69E7CC0];
  v7 = 1000000000000;
  v35 = dislikedChannels._rawValue;
  do
  {
    dislikedChannels._rawValue = v14;
    while (1)
    {
      if ((from._rawValue & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1DA72AA90](dislikedChannels._rawValue, from._rawValue, v10);
      }

      else
      {
        if (dislikedChannels._rawValue >= *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        isUniquelyReferenced_nonNull_native = *(from._rawValue + dislikedChannels._rawValue + 4);
      }

      v15 = isUniquelyReferenced_nonNull_native;
      v14 = dislikedChannels._rawValue + 1;
      if (__OFADD__(dislikedChannels._rawValue, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = [isUniquelyReferenced_nonNull_native storeId];
      if ((v16 & 0x8000000000000000) == 0 && v16 != 1000000000000 && v16 != 0)
      {
        break;
      }

      ++dislikedChannels._rawValue;
      if (v14 == v13)
      {
        dislikedChannels._rawValue = v35;
        goto LABEL_28;
      }
    }

    v32 = v16;
    [v15 subscriptionEnabledDate];
    sub_1D9176CBC();
    sub_1D9176DDC();
    v19 = v18;
    (*v33)(v12, v34);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD5C8(0, *(v38 + 2) + 1, 1, v38);
      v38 = isUniquelyReferenced_nonNull_native;
    }

    v21 = *(v38 + 2);
    v20 = *(v38 + 3);
    v22 = v32;
    if (v21 >= v20 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD5C8((v20 > 1), v21 + 1, 1, v38);
      v38 = isUniquelyReferenced_nonNull_native;
      v22 = v32;
    }

    v10.n128_f64[0] = floor(v19 * 1000.0);
    v23 = v38;
    *(v38 + 2) = v21 + 1;
    v24 = &v23[16 * v21];
    *(v24 + 4) = v22;
    *(v24 + 5) = v10.n128_u64[0];
    dislikedChannels._rawValue = v35;
  }

  while (v14 != v13);
LABEL_28:

  v29 = v36;
  v30 = rawValue;
  v36->_rawValue = v38;
  v29[1]._rawValue = v30;
  v29[2]._rawValue = dislikedChannels._rawValue;
  result.disliked._rawValue = v28;
  result.liked._rawValue = v27;
  result.subscribed._rawValue = v26;
  return result;
}

uint64_t sub_1D8FE9C3C()
{
  v1 = 0x64656B696CLL;
  if (*v0 != 1)
  {
    v1 = 0x64656B696C736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t sub_1D8FE9C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FF00E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FE9CC0(uint64_t a1)
{
  v2 = sub_1D8FEE980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FE9CFC(uint64_t a1)
{
  v2 = sub_1D8FEE980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecommendationsMetadata.Episodes.Metadata.duration.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t RecommendationsMetadata.Episodes.Metadata.position.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

PodcastsFoundation::RecommendationsMetadata::Episodes __swiftcall RecommendationsMetadata.Episodes.init(from:)(Swift::OpaquePointer from)
{
  v3 = v1;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(from._rawValue >> 62))
  {
    v11 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_27:
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

LABEL_26:
  v29 = isUniquelyReferenced_nonNull_native;
  v11 = sub_1D917935C();
  isUniquelyReferenced_nonNull_native = v29;
  if (!v11)
  {
    goto LABEL_27;
  }

LABEL_3:
  v12 = 0;
  v33 = (v5 + 1);
  v34 = isUniquelyReferenced_nonNull_native;
  v13 = MEMORY[0x1E69E7CC0];
  v5 = &selRef_redirectURLForStoreCollectionId_;
  v35 = v3;
  do
  {
    v36 = v13;
    v14 = v12;
    while (1)
    {
      if ((from._rawValue & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1DA72AA90](v14, from._rawValue, v8);
      }

      else
      {
        if (v14 >= *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        isUniquelyReferenced_nonNull_native = *(from._rawValue + v14 + 4);
      }

      v3 = isUniquelyReferenced_nonNull_native;
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 = [isUniquelyReferenced_nonNull_native storeTrackId];
      if ((v15 & 0x8000000000000000) == 0 && v15 != 1000000000000 && v15 != 0)
      {
        break;
      }

      ++v14;
      if (v12 == v11)
      {
        v3 = v35;
        v13 = v36;
        goto LABEL_28;
      }
    }

    v32 = v15;
    [v3 lastDatePlayed];
    sub_1D9176CBC();
    sub_1D9176DDC();
    v18 = v17;
    (*v33)(v10, v34);
    HIDWORD(v31) = [v3 playState] == 0;
    [v3 duration];
    v20 = v19;
    [v3 playhead];
    v22 = v21;

    v23 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD5DC(0, *(v23 + 16) + 1, 1, v23);
      v23 = isUniquelyReferenced_nonNull_native;
    }

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    v26 = v23;
    v27 = v32;
    if (v25 >= v24 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D8ECD5DC((v24 > 1), v25 + 1, 1, v23);
      v26 = isUniquelyReferenced_nonNull_native;
      v27 = v32;
    }

    *(v26 + 16) = v25 + 1;
    v28 = v26 + 56 * v25;
    v13 = v26;
    *(v28 + 32) = v27;
    *(v28 + 40) = floor(v18 * 1000.0);
    *(v28 + 48) = BYTE4(v31);
    *(v28 + 56) = floor(v20 * 1000.0);
    v8.n128_f64[0] = floorf(v22 * 1000.0);
    *(v28 + 64) = 0;
    *(v28 + 72) = v8.n128_f64[0];
    *(v28 + 80) = 0;
    v3 = v35;
  }

  while (v12 != v11);
LABEL_28:

  *v3 = v13;
  return result;
}

uint64_t sub_1D8FEA0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x796C746E65636572 && a2 == 0xEE00646579616C50)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D8FEA178(uint64_t a1)
{
  v2 = sub_1D8FEEB84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEA1B4(uint64_t a1)
{
  v2 = sub_1D8FEEB84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

PodcastsFoundation::RecommendationsMetadata::Shows __swiftcall RecommendationsMetadata.Shows.init(followed:unfollowed:disliked:)(Swift::OpaquePointer followed, Swift::OpaquePointer unfollowed, Swift::OpaquePointer disliked)
{
  v3->_rawValue = followed._rawValue;
  v3[1]._rawValue = unfollowed._rawValue;
  v3[2]._rawValue = disliked._rawValue;
  result.disliked = disliked;
  result.unfollowed = unfollowed;
  result.followed = followed;
  return result;
}

PodcastsFoundation::RecommendationsMetadata::Shows __swiftcall RecommendationsMetadata.Shows.init(from:dislikedPodcasts:)(Swift::OpaquePointer from, Swift::OpaquePointer dislikedPodcasts)
{
  v5 = v2;
  v37 = sub_1D9176E3C();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v37);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (from._rawValue >> 62)
  {
    v8 = sub_1D917935C();
    v14 = v8;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_27:

    v16 = MEMORY[0x1E69E7CC0];
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v14 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v34 = v5;
  rawValue = dislikedPodcasts._rawValue;
  v15 = 0;
  v36 = (v6 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = &selRef_redirectURLForStoreCollectionId_;
  v38 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((from._rawValue & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA72AA90](v15, from._rawValue, v11);
    }

    else
    {
      v18 = *(from._rawValue + v15 + 4);
    }

    v19 = v18;
    v20 = [v18 v17[445]];
    if ((v20 & 0x8000000000000000) != 0 || (v21 = v20, v20 == 1000000000000) || !v20)
    {
    }

    else
    {
      [v19 addedDate];
      sub_1D9176CBC();
      sub_1D9176DDC();
      v23 = v22;
      (*v36)(v13, v37);
      v24 = floor(v23 * 1000.0);
      if ([v19 subscribed])
      {
        v25 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D8ECD6F4(0, *(v25 + 2) + 1, 1, v25);
        }

        v27 = *(v25 + 2);
        v26 = *(v25 + 3);
        v38 = v25;
        if (v27 >= v26 >> 1)
        {
          v38 = sub_1D8ECD6F4((v26 > 1), v27 + 1, 1, v38);
        }

        v28 = v38;
        *(v38 + 2) = v27 + 1;
        v29 = &v28[16 * v27];
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8ECD6F4(0, *(v16 + 2) + 1, 1, v16);
        }

        v31 = *(v16 + 2);
        v30 = *(v16 + 3);
        if (v31 >= v30 >> 1)
        {
          v16 = sub_1D8ECD6F4((v30 > 1), v31 + 1, 1, v16);
        }

        *(v16 + 2) = v31 + 1;
        v29 = &v16[16 * v31];
      }

      *(v29 + 4) = v21;
      *(v29 + 5) = v24;
      v17 = &selRef_redirectURLForStoreCollectionId_;
    }

    ++v15;
  }

  while (v14 != v15);

  v5 = v34;
  dislikedPodcasts._rawValue = rawValue;
  v32 = v38;
LABEL_28:
  v5->_rawValue = v32;
  v5[1]._rawValue = v16;
  v5[2]._rawValue = dislikedPodcasts._rawValue;
LABEL_30:
  result.disliked._rawValue = v10;
  result.unfollowed._rawValue = v9;
  result.followed._rawValue = v8;
  return result;
}

uint64_t sub_1D8FEA550(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(*a1 + 16);
  if (v5 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v8 = a1[2];
  v10 = a2[1];
  v11 = a2[2];
  if (v5)
  {
    v12 = v3 == v4;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_14:
    if (a3(result, v10))
    {

      return a3(v8, v11);
    }

    return 0;
  }

  v13 = (v3 + 40);
  v14 = (v4 + 40);
  while (v5)
  {
    if (*(v13 - 1) != *(v14 - 1) || *v13 != *v14)
    {
      return 0;
    }

    v13 += 2;
    v14 += 2;
    if (!--v5)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FEA630()
{
  v1 = 0x776F6C6C6F666E75;
  if (*v0 != 1)
  {
    v1 = 0x64656B696C736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465776F6C6C6F66;
  }
}

uint64_t sub_1D8FEA690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FF0200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FEA6B8(uint64_t a1)
{
  v2 = sub_1D8FEED88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEA6F4(uint64_t a1)
{
  v2 = sub_1D8FEED88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEA730(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a2[1];
  v8 = a2[2];
  if ((a5(*a1, *a2) & 1) == 0 || (a5(v5, v7) & 1) == 0)
  {
    return 0;
  }

  return a5(v6, v8);
}

uint64_t RecommendationsMetadata.analytics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v5 = *(v1 + 34);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 33) = v4;
  *(a1 + 34) = v5;
}

uint64_t RecommendationsMetadata.categories.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t RecommendationsMetadata.channels.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t RecommendationsMetadata.shows.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

void __swiftcall RecommendationsMetadata.init(analytics:categories:channels:episodes:shows:)(PodcastsFoundation::RecommendationsMetadata *__return_ptr retstr, PodcastsFoundation::RecommendationsMetadata::Analytics *analytics, PodcastsFoundation::RecommendationsMetadata::Categories categories, PodcastsFoundation::RecommendationsMetadata::Channels channels, PodcastsFoundation::RecommendationsMetadata::Episodes episodes, PodcastsFoundation::RecommendationsMetadata::Shows shows)
{
  userAllowsPersonalization = analytics->userAllowsPersonalization;
  userIsManagedAccount = analytics->userIsManagedAccount;
  userIsUnder13 = analytics->userIsUnder13;
  v9 = *(categories.disliked._rawValue + 2);
  v10 = *channels.subscribed._rawValue;
  v11 = *(channels.liked._rawValue + 2);
  userID = analytics->userID;
  retstr->analytics.clientID = analytics->clientID;
  retstr->analytics.userID = userID;
  retstr->analytics.userAllowsPersonalization = userAllowsPersonalization;
  retstr->analytics.userIsManagedAccount = userIsManagedAccount;
  retstr->analytics.userIsUnder13 = userIsUnder13;
  retstr->categories = *categories.liked._rawValue;
  *&retstr->channels.subscribed._rawValue = *categories.disliked._rawValue;
  retstr->channels.disliked._rawValue = v9;
  retstr->episodes.recentlyPlayed._rawValue = v10;
  *&retstr->shows.followed._rawValue = *channels.liked._rawValue;
  retstr->shows.disliked._rawValue = v11;
}

uint64_t sub_1D8FEA970()
{
  v1 = *v0;
  v2 = 0x636974796C616E61;
  v3 = 0x736C656E6E616863;
  v4 = 0x7365646F73697065;
  if (v1 != 3)
  {
    v4 = 0x73776F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69726F6765746163;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8FEAA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FF0320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FEAA38(uint64_t a1)
{
  v2 = sub_1D8FEEF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEAA74(uint64_t a1)
{
  v2 = sub_1D8FEEF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEAAC0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FEABB8()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FEAC9C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FEAD90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D8FF0098();
  *a2 = result;
  return result;
}

void sub_1D8FEADC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6449746E65696C63;
  v5 = 0x80000001D91C8650;
  v6 = 0xD000000000000019;
  v7 = 0xD000000000000014;
  v8 = 0x80000001D91C8670;
  if (v2 != 3)
  {
    v7 = 0x6E55734972657375;
    v8 = 0xED00003331726564;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x644972657375;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1D8FEAE74()
{
  v1 = *v0;
  v2 = 0x6449746E65696C63;
  v3 = 0xD000000000000019;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6E55734972657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x644972657375;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8FEAF24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8FF0098();
  *a1 = result;
  return result;
}

uint64_t sub_1D8FEAF4C(uint64_t a1)
{
  v2 = sub_1D8FEE5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEAF88(uint64_t a1)
{
  v2 = sub_1D8FEE5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecommendationsMetadata.Analytics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8930, &qword_1D91A4D10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  LODWORD(v10) = *(v1 + 32);
  v14[4] = *(v1 + 33);
  v14[5] = v10;
  v14[3] = *(v1 + 34);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE5D8();
  sub_1D9179F1C();
  v22 = 0;
  v12 = v17;
  sub_1D917994C();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = 1;
  sub_1D917994C();
  v20 = 2;
  sub_1D91799CC();
  v19 = 3;
  sub_1D91799CC();
  v18 = 4;
  sub_1D91799CC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RecommendationsMetadata.Analytics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8938, &qword_1D91A4D18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE5D8();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v29 = 0;
  v11 = sub_1D917984C();
  v13 = v12;
  v24 = v11;
  v28 = 1;
  v22 = sub_1D917984C();
  v23 = v14;
  v27 = 2;
  v21 = sub_1D91798CC();
  v26 = 3;
  v20 = sub_1D91798CC();
  v25 = 4;
  v16 = sub_1D91798CC();
  v21 &= 1u;
  v17 = v20 & 1;
  (*(v6 + 8))(v9, v5);
  v18 = v16 & 1;
  v19 = v23;
  *a2 = v24;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v19;
  *(a2 + 32) = v21;
  *(a2 + 33) = v17;
  *(a2 + 34) = v18;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D8FEB4E4(uint64_t a1)
{
  v2 = sub_1D8FEE62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEB520(uint64_t a1)
{
  v2 = sub_1D8FEE62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEB62C(uint64_t a1)
{
  v2 = sub_1D8FEE680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEB668(uint64_t a1)
{
  v2 = sub_1D8FEE680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEB768()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FEB850()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FEB924()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FEBA08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D8FF004C();
  *a2 = result;
  return result;
}

void sub_1D8FEBA38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x64496D616461;
  v5 = 0xEA00000000006574;
  v6 = 0x656C706D6F437369;
  v7 = 0x6E6F697461727564;
  if (v2 != 3)
  {
    v7 = 0x6E6F697469736F70;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D617473656D6974;
    v3 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1D8FEBADC()
{
  v1 = *v0;
  v2 = 0x64496D616461;
  v3 = 0x656C706D6F437369;
  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0x6E6F697469736F70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8FEBB7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8FF004C();
  *a1 = result;
  return result;
}

uint64_t sub_1D8FEBBA4(uint64_t a1)
{
  v2 = sub_1D8FEE6D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEBBE0(uint64_t a1)
{
  v2 = sub_1D8FEE6D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecommendationsMetadata.Episodes.Metadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8970, &qword_1D91A4D40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v17 = *(v1 + 16);
  v16 = v1[3];
  v15 = *(v1 + 32);
  v14 = v1[5];
  v13[3] = *(v1 + 48);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE6D4();
  sub_1D9179F1C();
  v23 = v9;
  v22 = 0;
  sub_1D8EF1720();
  sub_1D91799FC();
  if (!v2)
  {
    v21 = 1;
    sub_1D91799DC();
    v20 = 2;
    sub_1D917995C();
    v19 = 3;
    sub_1D917996C();
    v18 = 4;
    sub_1D917996C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RecommendationsMetadata.Episodes.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8978, &qword_1D91A4D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE6D4();
  sub_1D9179EEC();
  if (!v2)
  {
    v28 = 0;
    sub_1D8EF1774();
    sub_1D91798FC();
    v11 = v29;
    v27 = 1;
    sub_1D91798DC();
    v13 = v12;
    v26 = 2;
    v14 = sub_1D917985C();
    v25 = 3;
    v15 = sub_1D917986C();
    v23 = v16;
    v22 = v15;
    v24 = 4;
    v18 = sub_1D917986C();
    v19 = v9;
    v21 = v20;
    (*(v6 + 8))(v19, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v22;
    *(a2 + 32) = v23 & 1;
    *(a2 + 40) = v18;
    *(a2 + 48) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D8FEC104(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D617473656D6974;
  }

  else
  {
    v4 = 0x64496D616461;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE900000000000070;
  }

  if (*a2)
  {
    v6 = 0x6D617473656D6974;
  }

  else
  {
    v6 = 0x64496D616461;
  }

  if (*a2)
  {
    v7 = 0xE900000000000070;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D8FEC1AC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FEC230()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FEC2BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1D8FEC324@<X0>(char *a1@<X8>)
{
  v2 = sub_1D917980C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D8FEC384(uint64_t a1)
{
  v2 = sub_1D8FEE728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEC3C0(uint64_t a1)
{
  v2 = sub_1D8FEE728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEC440(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v16[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v16[0])();
  sub_1D9179F1C();
  v19 = v11;
  v18 = 0;
  sub_1D8EF1720();
  v14 = v16[1];
  sub_1D91799FC();
  if (!v14)
  {
    v17 = 1;
    sub_1D91799DC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D8FEC62C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  v20 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9179EEC();
  if (!v5)
  {
    v14 = v19;
    v13 = v20;
    v22 = 0;
    sub_1D8EF1774();
    sub_1D91798FC();
    v15 = v23;
    v21 = 1;
    sub_1D91798DC();
    v17 = v16;
    (*(v14 + 8))(v11, v8);
    *v13 = v15;
    v13[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t RecommendationsMetadata.Categories.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8990, &unk_1D91A4D60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE77C();

  sub_1D9179F1C();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8998, &unk_1D91A78E0);
  sub_1D8FEE7D0();
  sub_1D91799FC();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RecommendationsMetadata.Categories.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89A0, &qword_1D91A4D70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE77C();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8998, &unk_1D91A78E0);
  v16 = 0;
  sub_1D8FEE8A8();
  sub_1D91798FC();
  v11 = v17;
  v16 = 1;
  sub_1D91798FC();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t RecommendationsMetadata.Channels.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89B8, &qword_1D91A4D78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v15 = v1[2];
  v16 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE980();

  sub_1D9179F1C();
  v18 = v10;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89C0, &qword_1D91A4D80);
  sub_1D8FEE9D4();
  sub_1D91799FC();

  if (!v2)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    sub_1D91799FC();
    v18 = v12;
    v17 = 2;
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RecommendationsMetadata.Channels.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89C8, &qword_1D91A4D88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE980();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89C0, &qword_1D91A4D80);
  v18 = 0;
  sub_1D8FEEAAC();
  sub_1D91798FC();
  v16 = v19;
  v18 = 1;
  sub_1D91798FC();
  v15 = v19;
  v18 = 2;
  sub_1D91798FC();
  (*(v6 + 8))(v9, v5);
  v11 = v19;
  v12 = v17;
  v13 = v15;
  *v17 = v16;
  v12[1] = v13;
  v12[2] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t RecommendationsMetadata.Episodes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89E0, &qword_1D91A4D90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEEB84();

  sub_1D9179F1C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89E8, &qword_1D91A4D98);
  sub_1D8FEEBD8();
  sub_1D91799FC();

  return (*(v4 + 8))(v7, v3);
}

uint64_t RecommendationsMetadata.Episodes.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89F0, &qword_1D91A4DA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEEB84();
  sub_1D9179EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89E8, &qword_1D91A4D98);
    sub_1D8FEECB0();
    sub_1D91798FC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t RecommendationsMetadata.Shows.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A08, &qword_1D91A4DA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v15 = v1[2];
  v16 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEED88();

  sub_1D9179F1C();
  v18 = v10;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
  sub_1D8FEEDDC();
  sub_1D91799FC();

  if (!v2)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    sub_1D91799FC();
    v18 = v12;
    v17 = 2;
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RecommendationsMetadata.Shows.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A18, &qword_1D91A4DB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEED88();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
  v18 = 0;
  sub_1D8FEEEB4();
  sub_1D91798FC();
  v16 = v19;
  v18 = 1;
  sub_1D91798FC();
  v15 = v19;
  v18 = 2;
  sub_1D91798FC();
  (*(v6 + 8))(v9, v5);
  v11 = v19;
  v12 = v17;
  v13 = v15;
  *v17 = v16;
  v12[1] = v13;
  v12[2] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t RecommendationsMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A30, &qword_1D91A4DC0);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[3];
  v33 = v1[2];
  v43 = *(v1 + 32);
  v10 = *(v1 + 33);
  v31 = *(v1 + 34);
  v32 = v10;
  v11 = v1[6];
  v29 = v1[5];
  v30 = v11;
  v12 = v1[7];
  v27 = v1[8];
  v28 = v12;
  v13 = v1[9];
  v25 = v1[10];
  v26 = v13;
  v14 = v1[12];
  v22 = v1[11];
  v23 = v14;
  v24 = v1[13];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEEF8C();

  sub_1D9179F1C();
  v36 = v8;
  v37 = v7;
  v38 = v33;
  v39 = v9;
  v40 = v43;
  v41 = v32;
  v42 = v31;
  v44 = 0;
  sub_1D8FEEFE0();
  v16 = v34;
  sub_1D91799FC();
  if (v16)
  {

    return (*(v35 + 8))(v6, v3);
  }

  else
  {
    v18 = v27;
    v19 = v28;
    v20 = v26;
    v21 = v35;

    v36 = v29;
    v37 = v30;
    v44 = 1;
    sub_1D8FEF034();

    sub_1D91799FC();

    v36 = v19;
    v37 = v18;
    v38 = v20;
    v44 = 2;
    sub_1D8FEF088();

    sub_1D91799FC();

    v36 = v25;
    v44 = 3;
    sub_1D8FEF0DC();

    sub_1D91799FC();

    v36 = v22;
    v37 = v23;
    v38 = v24;
    v44 = 4;
    sub_1D8FEF130();

    sub_1D91799FC();

    return (*(v21 + 8))(0, v3);
  }
}

uint64_t RecommendationsMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A38, &qword_1D91A4DC8);
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v26 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEEF8C();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  v40 = a2;
  LOBYTE(v42) = 0;
  sub_1D8FEF184();
  v11 = v41;
  sub_1D91798FC();
  v38 = v49;
  v37 = v50;
  v39 = v51;
  v66 = v52;
  v12 = v53;
  v13 = v54;
  LOBYTE(v42) = 1;
  sub_1D8FEF1D8();
  sub_1D91798FC();
  v30 = v13;
  v31 = v12;
  v35 = *(&v49 + 1);
  v36 = v49;
  LOBYTE(v42) = 2;
  sub_1D8FEF22C();
  sub_1D91798FC();
  v34 = *(&v49 + 1);
  v32 = v49;
  v33 = v50;
  LOBYTE(v42) = 3;
  sub_1D8FEF280();
  sub_1D91798FC();
  v14 = v49;
  v67 = 4;
  sub_1D8FEF2D4();
  sub_1D91798FC();
  (*(v10 + 8))(v8, v11);
  v28 = *(&v65 + 1);
  v29 = v65;
  v15 = *(&v38 + 1);
  v41 = v64;
  v42 = v38;
  v16 = v36;
  *&v43 = v37;
  v17 = v39;
  *(&v43 + 1) = v39;
  LOBYTE(v44) = v66;
  BYTE1(v44) = v31;
  BYTE2(v44) = v30;
  v18 = v14;
  v27 = v14;
  v19 = v35;
  *(&v44 + 1) = v36;
  *&v45 = v35;
  v20 = v32;
  *(&v45 + 1) = v32;
  *&v46 = v34;
  *(&v46 + 1) = v33;
  *&v47 = v18;
  *(&v47 + 1) = v64;
  v48 = v65;
  v21 = v45;
  v22 = v40;
  v40[2] = v44;
  v22[3] = v21;
  v23 = v43;
  *v22 = v42;
  v22[1] = v23;
  v24 = v48;
  v22[5] = v47;
  v22[6] = v24;
  v22[4] = v46;
  sub_1D8FEF328(&v42, &v49);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *&v49 = v38;
  *(&v49 + 1) = v15;
  v50 = v37;
  v51 = v17;
  v52 = v66;
  v53 = v31;
  v54 = v30;
  v55 = v16;
  v56 = v19;
  v57 = v20;
  v58 = v34;
  v59 = v33;
  v60 = v27;
  v61 = v41;
  v62 = v29;
  v63 = v28;
  return sub_1D8FEF360(&v49);
}

uint64_t _s18PodcastsFoundation23RecommendationsMetadataV8EpisodesV0D0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    if (v4 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v9 == 2 || ((v9 ^ v4) & 1) != 0)
      {
        return result;
      }
    }

    if (v6)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v5 != *(a2 + 24))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    if (v8)
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v7 != *(a2 + 40))
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t _s18PodcastsFoundation23RecommendationsMetadataV9AnalyticsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a1 + 34);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 33);
  v14 = *(a2 + 34);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (!v11)
  {
    return 0;
  }

  if (v4 != v10 || v5 != v11)
  {
    v16 = sub_1D9179ACC();
    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }

LABEL_19:
    if ((v6 ^ v12))
    {
      return result;
    }

    goto LABEL_20;
  }

  result = 0;
  if (v6 != v12)
  {
    return result;
  }

LABEL_20:
  if (((v7 ^ v13) & 1) == 0)
  {
    return v8 ^ v14 ^ 1u;
  }

  return result;
}

uint64_t sub_1D8FEE37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterestModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s18PodcastsFoundation23RecommendationsMetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = *(a1 + 34);
  v7 = a1[5];
  v6 = a1[6];
  v30 = a1[7];
  v28 = a1[8];
  v26 = a1[9];
  v24 = a1[10];
  v22 = a1[11];
  v20 = a1[12];
  v18 = a1[13];
  v8 = *a2;
  v9 = a2[3];
  v10 = *(a2 + 32);
  v11 = *(a2 + 33);
  v12 = *(a2 + 34);
  v14 = a2[5];
  v13 = a2[6];
  v29 = a2[7];
  v27 = a2[8];
  v25 = a2[9];
  v23 = a2[10];
  v21 = a2[11];
  v19 = a2[12];
  v17 = a2[13];
  v37 = *a1;
  v38 = *(a1 + 1);
  v39 = v2;
  v40 = v3;
  v41 = v4;
  v42 = v5;
  v31 = v8;
  v32 = *(a2 + 1);
  v33 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v15 = _s18PodcastsFoundation23RecommendationsMetadataV9AnalyticsV2eeoiySbAE_AEtFZ_0(&v37, &v31);

  return (v15 & 1) != 0 && (sub_1D8E89BF4(v7, v14) & 1) != 0 && (sub_1D8E89BF4(v6, v13) & 1) != 0 && (sub_1D8E89BF4(v30, v29) & 1) != 0 && (sub_1D8E89BF4(v28, v27) & 1) != 0 && (sub_1D8E89BF4(v26, v25) & 1) != 0 && (sub_1D8E838F0(v24, v23) & 1) != 0 && (sub_1D8E89BF4(v22, v21) & 1) != 0 && (sub_1D8E89BF4(v20, v19) & 1) != 0 && (sub_1D8E89BF4(v18, v17) & 1) != 0;
}

unint64_t sub_1D8FEE5D8()
{
  result = qword_1ECAB19F0;
  if (!qword_1ECAB19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19F0);
  }

  return result;
}

unint64_t sub_1D8FEE62C()
{
  result = qword_1ECAB8948;
  if (!qword_1ECAB8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8948);
  }

  return result;
}

unint64_t sub_1D8FEE680()
{
  result = qword_1ECAB8960;
  if (!qword_1ECAB8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8960);
  }

  return result;
}

unint64_t sub_1D8FEE6D4()
{
  result = qword_1ECAB1A30;
  if (!qword_1ECAB1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A30);
  }

  return result;
}

unint64_t sub_1D8FEE728()
{
  result = qword_1ECAB1A98;
  if (!qword_1ECAB1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A98);
  }

  return result;
}

unint64_t sub_1D8FEE77C()
{
  result = qword_1ECAB1AD0;
  if (!qword_1ECAB1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AD0);
  }

  return result;
}

unint64_t sub_1D8FEE7D0()
{
  result = qword_1ECAAFF30;
  if (!qword_1ECAAFF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8998, &unk_1D91A78E0);
    sub_1D8FEE854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF30);
  }

  return result;
}

unint64_t sub_1D8FEE854()
{
  result = qword_1ECAB1AD8;
  if (!qword_1ECAB1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AD8);
  }

  return result;
}

unint64_t sub_1D8FEE8A8()
{
  result = qword_1ECAB89A8;
  if (!qword_1ECAB89A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8998, &unk_1D91A78E0);
    sub_1D8FEE92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89A8);
  }

  return result;
}

unint64_t sub_1D8FEE92C()
{
  result = qword_1ECAB89B0;
  if (!qword_1ECAB89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89B0);
  }

  return result;
}

unint64_t sub_1D8FEE980()
{
  result = qword_1ECAB1A50;
  if (!qword_1ECAB1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A50);
  }

  return result;
}

unint64_t sub_1D8FEE9D4()
{
  result = qword_1ECAAFF20;
  if (!qword_1ECAAFF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB89C0, &qword_1D91A4D80);
    sub_1D8FEEA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF20);
  }

  return result;
}

unint64_t sub_1D8FEEA58()
{
  result = qword_1ECAB1A58;
  if (!qword_1ECAB1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A58);
  }

  return result;
}

unint64_t sub_1D8FEEAAC()
{
  result = qword_1ECAB89D0;
  if (!qword_1ECAB89D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB89C0, &qword_1D91A4D80);
    sub_1D8FEEB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89D0);
  }

  return result;
}

unint64_t sub_1D8FEEB30()
{
  result = qword_1ECAB89D8;
  if (!qword_1ECAB89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89D8);
  }

  return result;
}

unint64_t sub_1D8FEEB84()
{
  result = qword_1ECAB1A10;
  if (!qword_1ECAB1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A10);
  }

  return result;
}

unint64_t sub_1D8FEEBD8()
{
  result = qword_1ECAAFF18;
  if (!qword_1ECAAFF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB89E8, &qword_1D91A4D98);
    sub_1D8FEEC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF18);
  }

  return result;
}

unint64_t sub_1D8FEEC5C()
{
  result = qword_1ECAB1A18;
  if (!qword_1ECAB1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A18);
  }

  return result;
}

unint64_t sub_1D8FEECB0()
{
  result = qword_1ECAB89F8;
  if (!qword_1ECAB89F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB89E8, &qword_1D91A4D98);
    sub_1D8FEED34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89F8);
  }

  return result;
}

unint64_t sub_1D8FEED34()
{
  result = qword_1ECAB8A00;
  if (!qword_1ECAB8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A00);
  }

  return result;
}

unint64_t sub_1D8FEED88()
{
  result = qword_1ECAB1A78;
  if (!qword_1ECAB1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A78);
  }

  return result;
}

unint64_t sub_1D8FEEDDC()
{
  result = qword_1ECAAFF28;
  if (!qword_1ECAAFF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
    sub_1D8FEEE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF28);
  }

  return result;
}

unint64_t sub_1D8FEEE60()
{
  result = qword_1ECAB1A80;
  if (!qword_1ECAB1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A80);
  }

  return result;
}

unint64_t sub_1D8FEEEB4()
{
  result = qword_1ECAB8A20;
  if (!qword_1ECAB8A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
    sub_1D8FEEF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A20);
  }

  return result;
}

unint64_t sub_1D8FEEF38()
{
  result = qword_1ECAB8A28;
  if (!qword_1ECAB8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A28);
  }

  return result;
}

unint64_t sub_1D8FEEF8C()
{
  result = qword_1ECAB1AB0;
  if (!qword_1ECAB1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AB0);
  }

  return result;
}

unint64_t sub_1D8FEEFE0()
{
  result = qword_1ECAB19D8;
  if (!qword_1ECAB19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19D8);
  }

  return result;
}

unint64_t sub_1D8FEF034()
{
  result = qword_1ECAB1AB8;
  if (!qword_1ECAB1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AB8);
  }

  return result;
}

unint64_t sub_1D8FEF088()
{
  result = qword_1ECAB1A38;
  if (!qword_1ECAB1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A38);
  }

  return result;
}

unint64_t sub_1D8FEF0DC()
{
  result = qword_1ECAB19F8;
  if (!qword_1ECAB19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19F8);
  }

  return result;
}

unint64_t sub_1D8FEF130()
{
  result = qword_1ECAB1A60;
  if (!qword_1ECAB1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A60);
  }

  return result;
}

unint64_t sub_1D8FEF184()
{
  result = qword_1ECAB8A40;
  if (!qword_1ECAB8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A40);
  }

  return result;
}

unint64_t sub_1D8FEF1D8()
{
  result = qword_1ECAB8A48;
  if (!qword_1ECAB8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A48);
  }

  return result;
}

unint64_t sub_1D8FEF22C()
{
  result = qword_1ECAB8A50;
  if (!qword_1ECAB8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A50);
  }

  return result;
}

unint64_t sub_1D8FEF280()
{
  result = qword_1ECAB8A58;
  if (!qword_1ECAB8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A58);
  }

  return result;
}

unint64_t sub_1D8FEF2D4()
{
  result = qword_1ECAB8A60;
  if (!qword_1ECAB8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A60);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D8FEF3B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 35))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D8FEF410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8FEF498(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FEF4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1D8FEF600()
{
  result = qword_1ECAB8A68;
  if (!qword_1ECAB8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A68);
  }

  return result;
}

unint64_t sub_1D8FEF658()
{
  result = qword_1ECAB8A70;
  if (!qword_1ECAB8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A70);
  }

  return result;
}

unint64_t sub_1D8FEF6B0()
{
  result = qword_1ECAB8A78;
  if (!qword_1ECAB8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A78);
  }

  return result;
}

unint64_t sub_1D8FEF708()
{
  result = qword_1ECAB8A80;
  if (!qword_1ECAB8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A80);
  }

  return result;
}

unint64_t sub_1D8FEF760()
{
  result = qword_1ECAB8A88;
  if (!qword_1ECAB8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A88);
  }

  return result;
}

unint64_t sub_1D8FEF7B8()
{
  result = qword_1ECAB8A90;
  if (!qword_1ECAB8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A90);
  }

  return result;
}

unint64_t sub_1D8FEF810()
{
  result = qword_1ECAB8A98;
  if (!qword_1ECAB8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A98);
  }

  return result;
}

unint64_t sub_1D8FEF868()
{
  result = qword_1ECAB8AA0;
  if (!qword_1ECAB8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AA0);
  }

  return result;
}

unint64_t sub_1D8FEF8C0()
{
  result = qword_1ECAB8AA8;
  if (!qword_1ECAB8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AA8);
  }

  return result;
}

unint64_t sub_1D8FEF918()
{
  result = qword_1ECAB8AB0;
  if (!qword_1ECAB8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AB0);
  }

  return result;
}

unint64_t sub_1D8FEF970()
{
  result = qword_1ECAB1AA0;
  if (!qword_1ECAB1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AA0);
  }

  return result;
}

unint64_t sub_1D8FEF9C8()
{
  result = qword_1ECAB1AA8;
  if (!qword_1ECAB1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AA8);
  }

  return result;
}

unint64_t sub_1D8FEFA20()
{
  result = qword_1ECAB1A68;
  if (!qword_1ECAB1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A68);
  }

  return result;
}

unint64_t sub_1D8FEFA78()
{
  result = qword_1ECAB1A70;
  if (!qword_1ECAB1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A70);
  }

  return result;
}

unint64_t sub_1D8FEFAD0()
{
  result = qword_1ECAB1A00;
  if (!qword_1ECAB1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A00);
  }

  return result;
}

unint64_t sub_1D8FEFB28()
{
  result = qword_1ECAB1A08;
  if (!qword_1ECAB1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A08);
  }

  return result;
}

unint64_t sub_1D8FEFB80()
{
  result = qword_1ECAB1A40;
  if (!qword_1ECAB1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A40);
  }

  return result;
}

unint64_t sub_1D8FEFBD8()
{
  result = qword_1ECAB1A48;
  if (!qword_1ECAB1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A48);
  }

  return result;
}

unint64_t sub_1D8FEFC30()
{
  result = qword_1ECAB1AC0;
  if (!qword_1ECAB1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AC0);
  }

  return result;
}

unint64_t sub_1D8FEFC88()
{
  result = qword_1ECAB1AC8;
  if (!qword_1ECAB1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AC8);
  }

  return result;
}

unint64_t sub_1D8FEFCE0()
{
  result = qword_1ECAB1A88;
  if (!qword_1ECAB1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A88);
  }

  return result;
}

unint64_t sub_1D8FEFD38()
{
  result = qword_1ECAB1A90;
  if (!qword_1ECAB1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A90);
  }

  return result;
}

unint64_t sub_1D8FEFD90()
{
  result = qword_1ECAB1A20;
  if (!qword_1ECAB1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A20);
  }

  return result;
}

unint64_t sub_1D8FEFDE8()
{
  result = qword_1ECAB1A28;
  if (!qword_1ECAB1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A28);
  }

  return result;
}

unint64_t sub_1D8FEFE40()
{
  result = qword_1ECAB8AB8;
  if (!qword_1ECAB8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AB8);
  }

  return result;
}

unint64_t sub_1D8FEFE98()
{
  result = qword_1ECAB8AC0;
  if (!qword_1ECAB8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AC0);
  }

  return result;
}

unint64_t sub_1D8FEFEF0()
{
  result = qword_1ECAB8AC8;
  if (!qword_1ECAB8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AC8);
  }

  return result;
}

unint64_t sub_1D8FEFF48()
{
  result = qword_1ECAB8AD0;
  if (!qword_1ECAB8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AD0);
  }

  return result;
}

unint64_t sub_1D8FEFFA0()
{
  result = qword_1ECAB19E0;
  if (!qword_1ECAB19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19E0);
  }

  return result;
}

unint64_t sub_1D8FEFFF8()
{
  result = qword_1ECAB19E8;
  if (!qword_1ECAB19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19E8);
  }

  return result;
}

uint64_t sub_1D8FF004C()
{
  v0 = sub_1D917980C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8FF0098()
{
  v0 = sub_1D917980C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8FF00E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269726373627573 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656B696CLL && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D8FF0200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465776F6C6C6F66 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C6F666E75 && a2 == 0xEA00000000006465 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D8FF0320(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636974796C616E61 && a2 == 0xE900000000000073;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365646F73697065 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73776F6873 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id ContentKeyRequest.__allocating_init(from:adamId:requestType:offlineRequest:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v11 = [v9 initFrom:a1 adamId:v10 requestType:a4 offlineRequest:a5 & 1];

  return v11;
}

id ContentKeyRequest.init(from:adamId:requestType:offlineRequest:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v41 = a5;
  v42 = a4;
  v40[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v40 - v10;
  v12 = sub_1D9176C2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 identifier])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
    v18 = v46;
    v19 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v44 = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v19, v18);
    sub_1D8D65618(v43, &v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  v21 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    sub_1D8D08A50(&v49, &qword_1ECAB8AD8, &qword_1D91A6048);
    v51 = 0u;
    v52 = 0u;
    goto LABEL_9;
  }

  v22 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  *(&v52 + 1) = v21;
  v23 = __swift_allocate_boxed_opaque_existential_0(&v51);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  if (!*(&v52 + 1))
  {
LABEL_9:
    sub_1D8D08A50(&v51, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v53 = 0;
    v54 = 0;
  }

  if ([a1 identifier])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
    v24 = v46;
    v25 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v44 = v24;
    v26 = __swift_allocate_boxed_opaque_existential_0(v43);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    sub_1D8D65618(v43, &v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  v27 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    sub_1D8D08A50(&v49, &qword_1ECAB8AD8, &qword_1D91A6048);
    v51 = 0u;
    v52 = 0u;
    goto LABEL_20;
  }

  v28 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  *(&v52 + 1) = v27;
  v29 = __swift_allocate_boxed_opaque_existential_0(&v51);
  (*(*(v27 - 8) + 16))(v29, v28, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  if (!*(&v52 + 1))
  {
LABEL_20:
    sub_1D8D08A50(&v51, &qword_1ECAB57F0, &unk_1D9190AA0);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_21:
    sub_1D8D08A50(v11, &unk_1ECAB5910, &qword_1D9188C90);
    if (!v54)
    {
      goto LABEL_18;
    }

LABEL_22:

    v37 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v36 = [v6 initWithKeyIdentifier:v37 adamId:v38 requestType:v42 offlineRequest:v41 & 1 secureInvalidationDsid:0];

    return v36;
  }

  v30 = swift_dynamicCast();
  (*(v13 + 56))(v11, v30 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_21;
  }

  (*(v13 + 32))(v17, v11, v12);
  v31 = sub_1D9176ACC();
  v33 = v32;
  (*(v13 + 8))(v17, v12);
  v53 = v31;
  v54 = v33;

  if (v54)
  {
    goto LABEL_22;
  }

LABEL_18:

  swift_getObjectType();
  v34 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x30);
  v35 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1D8FF0C0C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___MTContentKeyRequest_requestData);
  swift_beginAccess();
  v3 = v2[1];
  v4 = MEMORY[0x1E69E7CC8];
  if (v3 >> 60 != 15)
  {
    v5 = MEMORY[0x1E69E6158];
    v6 = *v2;
    sub_1D8D752C4(v6, v3);
    v7 = sub_1D9176C7C();
    v9 = v8;
    sub_1D8D75668(v6, v3);
    sub_1D91793EC();
    v23 = v5;
    *&v22 = v7;
    *(&v22 + 1) = v9;
    sub_1D8D65618(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F509E8(v21, v24, isUniquelyReferenced_nonNull_native);
    sub_1D8D9A308(v24);
  }

  *&v22 = 25705;
  *(&v22 + 1) = 0xE200000000000000;
  v11 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v12 = *(v1 + OBJC_IVAR___MTContentKeyRequest_requestID);
  v23 = MEMORY[0x1E69E6530];
  *&v22 = v12;
  sub_1D8D65618(&v22, v21);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F509E8(v21, v24, v13);
  sub_1D8D9A308(v24);
  if (*(v1 + OBJC_IVAR___MTContentKeyRequest_requestType) != 3)
  {
    *&v22 = 6910581;
    *(&v22 + 1) = 0xE300000000000000;
    sub_1D91793EC();
    v14 = *(v1 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier);
    v15 = *(v1 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier + 8);
    v23 = v11;
    *&v22 = v14;
    *(&v22 + 1) = v15;
    sub_1D8D65618(&v22, v21);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F509E8(v21, v24, v16);
    sub_1D8D9A308(v24);
  }

  *&v22 = 0x64692D6D616461;
  *(&v22 + 1) = 0xE700000000000000;
  sub_1D91793EC();
  v17 = *(v1 + OBJC_IVAR___MTContentKeyRequest_adamId);
  v18 = *(v1 + OBJC_IVAR___MTContentKeyRequest_adamId + 8);
  v23 = v11;
  *&v22 = v17;
  *(&v22 + 1) = v18;
  sub_1D8D65618(&v22, v21);

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F509E8(v21, v24, v19);
  sub_1D8D9A308(v24);
  return v4;
}

uint64_t sub_1D8FF0ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B38, &qword_1D91A61C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF23DC();
  sub_1D9179F1C();
  LOBYTE(v16) = 0;
  sub_1D91799EC();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8AF0, &qword_1D91A61A8);
    sub_1D8FF2C00(&qword_1ECAB8B40, sub_1D8FF2C78);
    sub_1D917999C();
    v16 = a4;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B08, &qword_1D91A61B0);
    sub_1D8FF2484(&qword_1ECAB8B50, sub_1D8FF2CCC);
    sub_1D917999C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D8FF1128(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x80000001D91C8780;
  if (v2 == 1)
  {
    v5 = 0x80000001D91C8780;
  }

  else
  {
    v3 = 0x65722D65636E6F6ELL;
    v5 = 0xEF7365736E6F7073;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E6F6973726576;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x65722D65636E6F6ELL;
    v4 = 0xEF7365736E6F7073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F6973726576;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8FF123C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FF12F0()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FF1390()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FF1440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D8FF20A8();
  *a2 = result;
  return result;
}

void sub_1D8FF1470(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001D91C8780;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x65722D65636E6F6ELL;
    v4 = 0xEF7365736E6F7073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F6973726576;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D8FF14E0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x65722D65636E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1D8FF154C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8FF20A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D8FF1574(uint64_t a1)
{
  v2 = sub_1D8FF23DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FF15B0(uint64_t a1)
{
  v2 = sub_1D8FF23DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FF15EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8FF2140(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1D8FF163C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8BA0, &qword_1D91A64F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF3010();
  sub_1D9179F1C();
  v17 = 0;
  sub_1D91799EC();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v16 = 1;
  sub_1D91799EC();
  v15 = 2;
  sub_1D917994C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D8FF17F4()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x65636E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D8FF183C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FF2550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FF1864(uint64_t a1)
{
  v2 = sub_1D8FF3010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FF18A0(uint64_t a1)
{
  v2 = sub_1D8FF3010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FF18DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8FF2658(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D8FF192C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B30, &qword_1D91A61C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF2B44();
  sub_1D9179F1C();
  v11 = *v3;
  v21[15] = 0;
  sub_1D91799EC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v21[14] = 1;
  sub_1D91799EC();
  v13 = v3[2];
  v14 = *(v3 + 24);
  v21[13] = 2;
  sub_1D917996C();
  v15 = v3[4];
  v16 = v3[5];
  v21[12] = 3;
  sub_1D917994C();
  v17 = v3[6];
  v18 = *(v3 + 56);
  v21[11] = 4;
  sub_1D917996C();
  v20 = *(v3 + 57);
  v21[10] = 5;
  sub_1D917995C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D8FF1B48()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FF1C44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D8FF20F4();
  *a2 = result;
  return result;
}

void sub_1D8FF1C74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE300000000000000;
  v6 = 6515555;
  v7 = 0xEF656D69742D6E6FLL;
  v8 = 0x6974617269707865;
  if (v2 != 4)
  {
    v8 = 0x762D776F6C2D7369;
    v7 = 0xEC00000065756C61;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x737574617473;
  if (v2 != 1)
  {
    v10 = 0x66612D77656E6572;
    v9 = 0xEB00000000726574;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D8FF1D38()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 6515555;
  v4 = 0x6974617269707865;
  if (v1 != 4)
  {
    v4 = 0x762D776F6C2D7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737574617473;
  if (v1 != 1)
  {
    v5 = 0x66612D77656E6572;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1D8FF1DF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8FF20F4();
  *a1 = result;
  return result;
}

uint64_t sub_1D8FF1E20(uint64_t a1)
{
  v2 = sub_1D8FF2B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FF1E5C(uint64_t a1)
{
  v2 = sub_1D8FF2B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D8FF1E98@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D8FF2834(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8FF1F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1D8FF1F74(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8FF1FE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D8FF2044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8FF20A8()
{
  v0 = sub_1D917980C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8FF20F4()
{
  v0 = sub_1D917980C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8FF2140(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8AE0, &qword_1D91A61A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF23DC();
  sub_1D9179EEC();
  LOBYTE(v11) = 0;
  v8 = sub_1D91798EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8AF0, &qword_1D91A61A8);
  HIBYTE(v10) = 1;
  sub_1D8FF2C00(&qword_1ECAB8AF8, sub_1D8FF2430);
  sub_1D917989C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B08, &qword_1D91A61B0);
  HIBYTE(v10) = 2;
  sub_1D8FF2484(&qword_1ECAB8B10, sub_1D8FF24FC);
  sub_1D917989C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_1D8FF23DC()
{
  result = qword_1ECAB8AE8;
  if (!qword_1ECAB8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AE8);
  }

  return result;
}

unint64_t sub_1D8FF2430()
{
  result = qword_1ECAB8B00;
  if (!qword_1ECAB8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B00);
  }

  return result;
}

uint64_t sub_1D8FF2484(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8B08, &qword_1D91A61B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8FF24FC()
{
  result = qword_1ECAB8B18;
  if (!qword_1ECAB8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B18);
  }

  return result;
}

uint64_t sub_1D8FF2550(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D8FF2658(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B90, &qword_1D91A64F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D8FF3010();
  sub_1D9179EEC();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_1D91798EC();
    v12 = 1;
    sub_1D91798EC();
    v11 = 2;
    sub_1D917984C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_1D8FF2834@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B20, &qword_1D91A61B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF2B44();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1D91798EC();
  LOBYTE(v34[0]) = 1;
  v12 = sub_1D91798EC();
  LOBYTE(v34[0]) = 2;
  v13 = sub_1D917986C();
  v41 = v14 & 1;
  LOBYTE(v34[0]) = 3;
  *&v30 = sub_1D917984C();
  *(&v30 + 1) = v15;
  LOBYTE(v34[0]) = 4;
  v29 = sub_1D917986C();
  v40 = v16 & 1;
  v42 = 5;
  v17 = sub_1D917985C();
  v18 = *(v6 + 8);
  v25 = v17;
  v18(v9, v5);
  v28 = v11;
  *&v31 = v11;
  *(&v31 + 1) = v12;
  v27 = v12;
  v26 = v13;
  *&v32 = v13;
  LOBYTE(v11) = v41;
  BYTE8(v32) = v41;
  v19 = v30;
  *v33 = v30;
  v20 = v29;
  *&v33[16] = v29;
  v21 = v40;
  v33[24] = v40;
  LOBYTE(v12) = v25;
  v33[25] = v25;
  sub_1D8FF2B98(&v31, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v34[0] = v28;
  v34[1] = v27;
  v34[2] = v26;
  v35 = v11;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v12;
  result = sub_1D8FF2BD0(v34);
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  a2[2] = *v33;
  *(a2 + 42) = *&v33[10];
  return result;
}

unint64_t sub_1D8FF2B44()
{
  result = qword_1ECAB8B28;
  if (!qword_1ECAB8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B28);
  }

  return result;
}

uint64_t sub_1D8FF2C00(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8AF0, &qword_1D91A61A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8FF2C78()
{
  result = qword_1ECAB8B48;
  if (!qword_1ECAB8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B48);
  }

  return result;
}

unint64_t sub_1D8FF2CCC()
{
  result = qword_1ECAB8B58;
  if (!qword_1ECAB8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B58);
  }

  return result;
}

uint64_t sub_1D8FF2D40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D8FF2D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1D8FF2E04()
{
  result = qword_1ECAB8B60;
  if (!qword_1ECAB8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B60);
  }

  return result;
}

unint64_t sub_1D8FF2E5C()
{
  result = qword_1ECAB8B68;
  if (!qword_1ECAB8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B68);
  }

  return result;
}

unint64_t sub_1D8FF2EB4()
{
  result = qword_1ECAB8B70;
  if (!qword_1ECAB8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B70);
  }

  return result;
}

unint64_t sub_1D8FF2F0C()
{
  result = qword_1ECAB8B78;
  if (!qword_1ECAB8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B78);
  }

  return result;
}

unint64_t sub_1D8FF2F64()
{
  result = qword_1ECAB8B80;
  if (!qword_1ECAB8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B80);
  }

  return result;
}

unint64_t sub_1D8FF2FBC()
{
  result = qword_1ECAB8B88;
  if (!qword_1ECAB8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B88);
  }

  return result;
}

unint64_t sub_1D8FF3010()
{
  result = qword_1ECAB8B98;
  if (!qword_1ECAB8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B98);
  }

  return result;
}

unint64_t sub_1D8FF3078()
{
  result = qword_1ECAB8BA8;
  if (!qword_1ECAB8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8BA8);
  }

  return result;
}

unint64_t sub_1D8FF30D0()
{
  result = qword_1ECAB8BB0;
  if (!qword_1ECAB8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8BB0);
  }

  return result;
}

unint64_t sub_1D8FF3128()
{
  result = qword_1ECAB8BB8;
  if (!qword_1ECAB8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8BB8);
  }

  return result;
}

id CoreDataKeyRequestStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8FF31C8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D917957C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1D8FF72DC(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_1D8FF34C8(unsigned __int8 *result)
{
  if (result)
  {
    v2 = result;
    v3 = *&result[OBJC_IVAR___MTContentKeyResponse_request];
    if (!v3)
    {
      return 0;
    }

    v4 = *&v3[OBJC_IVAR___MTContentKeyRequest_adamId];
    v5 = *&v3[OBJC_IVAR___MTContentKeyRequest_adamId + 8];
    v6 = HIBYTE(v5) & 0xF;
    v7 = v4 & 0xFFFFFFFFFFFFLL;
    if (!((v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : v4 & 0xFFFFFFFFFFFFLL))
    {
      return 0;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v31 = v3;
      v32 = v2;

      v10 = sub_1D8FF72DC(v4, v5, 10);
      v34 = v33;

      if (v34)
      {
        goto LABEL_65;
      }

LABEL_68:
      v35 = swift_allocObject();
      *(v35 + 16) = 1;
      v36 = [objc_opt_self() sharedInstance];
      v37 = [v36 mainOrPrivateContext];

      v38 = swift_allocObject();
      v38[2] = v1;
      v38[3] = v10;
      v38[4] = v37;
      v38[5] = v2;
      v38[6] = v35;
      v38[7] = v3;
      v51 = sub_1D8FF7210;
      v52 = v38;
      aBlock = MEMORY[0x1E69E9820];
      v48 = 1107296256;
      v49 = sub_1D8CF5F60;
      v50 = &block_descriptor_59;
      v39 = _Block_copy(&aBlock);
      v40 = v3;
      v41 = v2;
      v42 = v1;
      v43 = v37;

      [v43 performBlockAndWaitWithSave_];

      _Block_release(v39);
      swift_beginAccess();
      v44 = *(v35 + 16);

      return v44;
    }

    if ((v5 & 0x2000000000000000) != 0)
    {
      aBlock = *&v3[OBJC_IVAR___MTContentKeyRequest_adamId];
      v48 = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v6)
        {
          if (--v6)
          {
            v10 = 0;
            v20 = &aBlock + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                break;
              }

              v10 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (v4 != 45)
      {
        if (v6)
        {
          v10 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v26 = *p_aBlock - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++p_aBlock;
            if (!--v6)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v6)
      {
        if (--v6)
        {
          v10 = 0;
          v14 = &aBlock + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v6)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v45 = *&v3[OBJC_IVAR___MTContentKeyRequest_adamId];
        v46 = *&v3[OBJC_IVAR___MTContentKeyRequest_adamId + 8];
        result = sub_1D917957C();
      }

      v9 = *result;
      if (v9 == 43)
      {
        if (v7 >= 1)
        {
          v6 = v7 - 1;
          if (v7 != 1)
          {
            v10 = 0;
            if (result)
            {
              v17 = result + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_63;
                }

                v19 = 10 * v10;
                if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                {
                  goto LABEL_63;
                }

                v10 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  goto LABEL_63;
                }

                ++v17;
                if (!--v6)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v9 != 45)
      {
        if (v7)
        {
          v10 = 0;
          if (result)
          {
            while (1)
            {
              v23 = *result - 48;
              if (v23 > 9)
              {
                goto LABEL_63;
              }

              v24 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_63;
              }

              v10 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v7)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v10 = 0;
        LOBYTE(v6) = 1;
LABEL_64:
        v53 = v6;
        v28 = v6;
        v29 = v3;
        v30 = v2;
        if (v28)
        {
LABEL_65:

          return 0;
        }

        goto LABEL_68;
      }

      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v10 = 0;
          if (result)
          {
            v11 = result + 1;
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_63;
              }

              v13 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_63;
              }

              v10 = v13 - v12;
              if (__OFSUB__(v13, v12))
              {
                goto LABEL_63;
              }

              ++v11;
              if (!--v6)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v6) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  return result;
}

void sub_1D8FF3974(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v51 = a5;
  v9 = sub_1D917744C();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v49 - v15;
  v17 = sub_1D9176E3C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v52 = a2;
  v25 = sub_1D8FF7868(a2, a3);
  if (!v25)
  {
    v26 = [objc_opt_self() insertNewObjectForEntityForName:@"MTOfflineKeyData" inManagedObjectContext:a3];
    objc_opt_self();
    v25 = swift_dynamicCastObjCClassUnconditional();
  }

  v27 = v25;
  sub_1D8CF6B1C(a4 + OBJC_IVAR___MTContentKeyResponse_renewalDate, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D8CF5EF8(v16);
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v9, qword_1ECAAFBE8);
    swift_beginAccess();
    v29 = v49;
    (*(v49 + 16))(v12, v28, v9);
    v30 = sub_1D917741C();
    v31 = sub_1D9178CFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v52;
      _os_log_impl(&dword_1D8CEC000, v30, v31, "Failed to save offline key data! Renewal date is required %lld", v32, 0xCu);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    (*(v29 + 8))(v12, v9);
    v33 = v51;
    swift_beginAccess();
    *(v33 + 16) = 0;
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    v34 = v50;
    v35 = *(v50 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier);
    v36 = *(v50 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier + 8);
    v37 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v27 setKeyUri_];

    [v27 setStoreTrackId_];
    v38 = (a4 + OBJC_IVAR___MTContentKeyResponse_keyData);
    swift_beginAccess();
    v39 = 0;
    v40 = v38[1];
    if (v40 >> 60 != 15)
    {
      v41 = *v38;
      sub_1D8D752C4(v41, v40);
      v39 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
      sub_1D8D75668(v41, v40);
    }

    [v27 setData_];

    (*(v18 + 16))(v21, v34 + OBJC_IVAR___MTContentKeyRequest_requestDate, v17);
    sub_1D9176CCC();
    v43 = v42;
    v44 = *(v18 + 8);
    v44(v21, v17);
    [v27 setLastRenewedDate_];
    sub_1D9176CCC();
    [v27 setExpirationDate_];
    v45 = [objc_opt_self() ams_sharedAccountStore];
    v46 = [v45 ams_activeiTunesAccount];

    if (v46)
    {
      v47 = [v46 ams_DSID];

      if (v47)
      {
        v48 = [v47 longLongValue];

        [v27 setSecureInvalidationDsid_];
      }

      v44(v24, v17);
    }

    else
    {
      v44(v24, v17);
    }
  }
}

void sub_1D8FF3F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v38 = a2;
  v39 = a7;
  v34 = a5;
  v35 = a4;
  v36 = a3;
  v37 = a1;
  v41 = a10;
  v42 = a8;
  v40 = a9;
  v13 = sub_1D9176E3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 privateQueueContext];
  v33 = v18;

  (*(v14 + 16))(v16, a6, v13);
  v19 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v23 = v36;
  v22 = v37;
  *(v21 + 2) = v10;
  *(v21 + 3) = v23;
  *(v21 + 4) = v18;
  v24 = v35;
  *(v21 + 5) = v35;
  *(v21 + 6) = a5;
  v25 = v38;
  *(v21 + 7) = v22;
  *(v21 + 8) = v25;
  *(v21 + 9) = v39;
  (*(v14 + 32))(&v21[v19], v16, v13);
  v26 = v42;
  *&v21[v20] = v42;
  v27 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  aBlock[4] = sub_1D8FF7220;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_9_1;
  v29 = _Block_copy(aBlock);
  v30 = v10;
  v31 = v33;
  sub_1D8D752C4(v24, v34);

  v32 = v26;

  [v31 performBlock_];
  _Block_release(v29);
}

uint64_t sub_1D8FF4228(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a12;
  v32 = a8;
  v33 = a11;
  v37 = a10;
  v31[1] = a7;
  v31[2] = a9;
  v14 = sub_1D9177E0C();
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D9177E9C();
  v18 = *(v35 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D8FF7868(a2, a3);
  if (!v22)
  {
    v23 = [objc_opt_self() insertNewObjectForEntityForName:@"MTOfflineKeyData" inManagedObjectContext:a3];
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
  }

  v24 = v22;
  v25 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  [v24 setData_];

  v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v24 setKeyUri_];

  [v24 setStoreTrackId_];
  [v24 setSecureInvalidationDsid_];
  sub_1D9176CCC();
  [v24 setExpirationDate_];
  LOBYTE(v26) = [a3 saveInCurrentBlock];
  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v33;
  *(v27 + 24) = v28;
  *(v27 + 32) = v26;
  aBlock[4] = sub_1D8E92A40;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_77;
  v29 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v21, v17, v29);
  _Block_release(v29);

  (*(v36 + 8))(v17, v14);
  (*(v18 + 8))(v21, v35);
}

void sub_1D8FF47A4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + OBJC_IVAR___MTContentKeyResponse_request);
    if (v2)
    {
      v3 = *&v2[OBJC_IVAR___MTContentKeyRequest_adamId];
      v4 = *&v2[OBJC_IVAR___MTContentKeyRequest_adamId + 8];
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v3 & 0xFFFFFFFFFFFFLL)
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v31 = v2;

          v10 = sub_1D8FF72DC(v3, v4, 10);
          v33 = v32;

          if (v33)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        if ((v4 & 0x2000000000000000) != 0)
        {
          aBlock = *&v2[OBJC_IVAR___MTContentKeyRequest_adamId];
          v42 = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                v10 = 0;
                v20 = &aBlock + 1;
                while (1)
                {
                  v21 = *v20 - 48;
                  if (v21 > 9)
                  {
                    break;
                  }

                  v22 = 10 * v10;
                  if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                  {
                    break;
                  }

                  v10 = v22 + v21;
                  if (__OFADD__(v22, v21))
                  {
                    break;
                  }

                  ++v20;
                  if (!--v5)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_74:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              v10 = 0;
              p_aBlock = &aBlock;
              while (1)
              {
                v26 = *p_aBlock - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v10;
                if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                {
                  break;
                }

                v10 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++p_aBlock;
                if (!--v5)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v5)
          {
            if (--v5)
            {
              v10 = 0;
              v14 = &aBlock + 1;
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  break;
                }

                v16 = 10 * v10;
                if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                {
                  break;
                }

                v10 = v16 - v15;
                if (__OFSUB__(v16, v15))
                {
                  break;
                }

                ++v14;
                if (!--v5)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v39 = *&v2[OBJC_IVAR___MTContentKeyRequest_adamId];
            v40 = *&v2[OBJC_IVAR___MTContentKeyRequest_adamId + 8];
            v8 = sub_1D917957C();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                v10 = 0;
                if (v8)
                {
                  v17 = v8 + 1;
                  while (1)
                  {
                    v18 = *v17 - 48;
                    if (v18 > 9)
                    {
                      goto LABEL_63;
                    }

                    v19 = 10 * v10;
                    if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v10 = v19 + v18;
                    if (__OFADD__(v19, v18))
                    {
                      goto LABEL_63;
                    }

                    ++v17;
                    if (!--v5)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_73;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              v10 = 0;
              if (v8)
              {
                while (1)
                {
                  v23 = *v8 - 48;
                  if (v23 > 9)
                  {
                    goto LABEL_63;
                  }

                  v24 = 10 * v10;
                  if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v10 = v24 + v23;
                  if (__OFADD__(v24, v23))
                  {
                    goto LABEL_63;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            v10 = 0;
            LOBYTE(v5) = 1;
LABEL_64:
            v47 = v5;
            v28 = v5;
            v29 = v2;
            if (v28)
            {
LABEL_65:
              v30 = v2;
LABEL_68:

              return;
            }

LABEL_67:
            v34 = [objc_opt_self() sharedInstance];
            v35 = [v34 mainOrPrivateContext];

            v36 = swift_allocObject();
            v36[2] = v1;
            v36[3] = v10;
            v36[4] = v35;
            v45 = sub_1D8FF72D0;
            v46 = v36;
            aBlock = MEMORY[0x1E69E9820];
            v42 = 1107296256;
            v43 = sub_1D8CF5F60;
            v44 = &block_descriptor_15_3;
            v37 = _Block_copy(&aBlock);
            v38 = v1;
            v30 = v35;

            [v30 performBlockAndWaitWithSave_];
            _Block_release(v37);

            goto LABEL_68;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              v10 = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_63;
                  }

                  v13 = 10 * v10;
                  if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v10 = v13 - v12;
                  if (__OFSUB__(v13, v12))
                  {
                    goto LABEL_63;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v5) = 0;
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }
  }
}

void sub_1D8FF4C38(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 privateQueueContext];

  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v4;
  v9[4] = sub_1D8FF7E68;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8CF5F60;
  v9[3] = &block_descriptor_22_0;
  v6 = _Block_copy(v9);
  v7 = v1;
  v8 = v4;

  [v8 performBlockAndWaitWithSave_];
  _Block_release(v6);
}

unint64_t sub_1D8FF4DB8(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &unk_1EDCD5B60, off_1E8567630);
  result = sub_1D917908C();
  v16 = result;
  v27 = v10;
  v28 = v9;
  v29 = v5;
  if (result >> 62)
  {
    result = sub_1D917935C();
    v17 = result;
  }

  else
  {
    v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v14;
  if (!v17)
  {
LABEL_10:

    v21 = [a1 saveInCurrentBlock];
    sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
    v22 = sub_1D9178E1C();
    v23 = swift_allocObject();
    v24 = v32;
    *(v23 + 16) = v31;
    *(v23 + 24) = v24;
    *(v23 + 32) = v21;
    aBlock[4] = sub_1D8FF7E6C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_71_0;
    v25 = _Block_copy(aBlock);

    sub_1D9177E4C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v13, v8, v25);
    _Block_release(v25);

    (*(v29 + 8))(v8, v4);
    return (*(v27 + 8))(v13, v28);
  }

  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA72AA90](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      v20 = v19;
      [a1 deleteObject_];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1D8FF5368(NSObject *a1)
{
  v3 = sub_1D917744C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v65 - v10;
  if (!a1)
  {
    return;
  }

  v12 = *(&a1->isa + OBJC_IVAR___MTContentKeyRequest_adamId);
  v13 = *(&a1[1].isa + OBJC_IVAR___MTContentKeyRequest_adamId);
  v14 = HIBYTE(v13) & 0xF;
  v15 = v12 & 0xFFFFFFFFFFFFLL;
  if (!((v13 & 0x2000000000000000) != 0 ? HIBYTE(v13) & 0xF : v12 & 0xFFFFFFFFFFFFLL))
  {
    return;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v39 = a1;

    v19 = sub_1D8FF72DC(v12, v13, 10);
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_64:
  }

  else
  {
    if ((v13 & 0x2000000000000000) == 0)
    {
      if ((v12 & 0x1000000000000000) == 0)
      {
        goto LABEL_78;
      }

      for (i = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1D917957C())
      {
        v18 = *i;
        if (v18 == 43)
        {
          if (v15 < 1)
          {
            goto LABEL_81;
          }

          v14 = v15 - 1;
          if (v15 != 1)
          {
            v19 = 0;
            if (!i)
            {
              goto LABEL_54;
            }

            v26 = i + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                break;
              }

              v19 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v14)
              {
                goto LABEL_63;
              }
            }
          }
        }

        else if (v18 == 45)
        {
          if (v15 < 1)
          {
            __break(1u);
            goto LABEL_80;
          }

          v14 = v15 - 1;
          if (v15 != 1)
          {
            v19 = 0;
            if (!i)
            {
              goto LABEL_54;
            }

            v20 = i + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                break;
              }

              v19 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v14)
              {
                goto LABEL_63;
              }
            }
          }
        }

        else if (v15)
        {
          v19 = 0;
          if (!i)
          {
LABEL_54:
            LOBYTE(v14) = 0;
            goto LABEL_63;
          }

          while (1)
          {
            v32 = *i - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++i;
            if (!--v15)
            {
              goto LABEL_54;
            }
          }
        }

LABEL_62:
        v19 = 0;
        LOBYTE(v14) = 1;
LABEL_63:
        v71 = v14;
        v37 = v14;
        v38 = a1;
        if (v37)
        {
          goto LABEL_64;
        }

LABEL_66:
        v68 = v11;
        v69 = v4;
        v67 = xmmword_1D9190380;
        v80 = xmmword_1D9190380;
        v78 = 0;
        v79 = 1;
        v42 = [objc_opt_self() sharedInstance];
        v43 = [v42 mainOrPrivateContext];

        v44 = swift_allocObject();
        *(v44 + 2) = isEscapingClosureAtFileLocation;
        *(v44 + 3) = v19;
        *(v44 + 4) = v43;
        *(v44 + 5) = &v80;
        *(v44 + 6) = &v78;
        v4 = swift_allocObject();
        v4[2] = sub_1D8FF7BF4;
        v4[3] = v44;
        v76 = sub_1D8D24508;
        v77 = v4;
        aBlock = MEMORY[0x1E69E9820];
        v73 = 1107296256;
        v74 = sub_1D8D24488;
        v75 = &block_descriptor_31_1;
        v11 = _Block_copy(&aBlock);
        v45 = isEscapingClosureAtFileLocation;
        v46 = v43;

        [v46 performBlockAndWait:v11];
        _Block_release(v11);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v47 = *(&v80 + 1);
          if (*(&v80 + 1) >> 60 == 15 || (v79 & 1) != 0)
          {
            if (qword_1ECAAFBE0 != -1)
            {
              swift_once();
            }

            v48 = __swift_project_value_buffer(v3, qword_1ECAAFBE8);
            swift_beginAccess();
            v49 = v69;
            (v69[2])(v7, v48, v3);
            v50 = sub_1D917741C();
            v51 = sub_1D9178D1C();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 134217984;
              *(v52 + 4) = v19;
              _os_log_impl(&dword_1D8CEC000, v50, v51, "Offline key data not present for episode %lld", v52, 0xCu);
              MEMORY[0x1DA72CB90](v52, -1, -1);
              v53 = v46;
              v46 = a1;
            }

            else
            {
              v53 = v50;
              v50 = a1;
            }

            v49[1](v7, v3);
            sub_1D8D75668(v80, *(&v80 + 1));
          }

          else
          {
            v54 = v80;
            sub_1D8DA04B0(v80, *(&v80 + 1));
            v69 = a1;
            sub_1D8DA04B0(v54, v47);
            v55 = v68;
            sub_1D9176CBC();
            v56 = sub_1D9176E3C();
            (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
            v66 = type metadata accessor for ContentKeyResponse(0);
            v57 = objc_allocWithZone(v66);
            v58 = OBJC_IVAR___MTContentKeyResponse_error;
            *&v57[OBJC_IVAR___MTContentKeyResponse_error] = 0;
            v59 = &v57[OBJC_IVAR___MTContentKeyResponse_keyData];
            *&v57[OBJC_IVAR___MTContentKeyResponse_keyData] = v67;
            *&v57[OBJC_IVAR___MTContentKeyResponse_request] = a1;
            swift_beginAccess();
            v61 = *v59;
            v60 = v59[1];
            *v59 = v54;
            v59[1] = v47;
            v62 = v69;
            sub_1D8DA04B0(v54, v47);
            sub_1D8D75668(v61, v60);
            v63 = v68;
            sub_1D8CF6B1C(v68, &v57[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
            swift_beginAccess();
            v64 = *&v57[v58];
            *&v57[v58] = 0;

            v70.receiver = v57;
            v70.super_class = v66;
            [&v70 init];
            sub_1D8D75668(v54, v47);

            sub_1D8D75668(v54, v47);
            sub_1D8CF5EF8(v63);
            sub_1D8D75668(v80, *(&v80 + 1));
          }

          return;
        }

        __break(1u);
LABEL_78:
        ;
      }
    }

    aBlock = *(&a1->isa + OBJC_IVAR___MTContentKeyRequest_adamId);
    v73 = v13 & 0xFFFFFFFFFFFFFFLL;
    if (v12 == 43)
    {
      if (v14)
      {
        if (--v14)
        {
          v19 = 0;
          v29 = &aBlock + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v14)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v12 != 45)
      {
        if (v14)
        {
          v19 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v35 = *p_aBlock - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++p_aBlock;
            if (!--v14)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v14)
      {
        if (--v14)
        {
          v19 = 0;
          v23 = &aBlock + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v14)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1D8FF5BF0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_1D917744C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D8FF7868(a2, a3);
  if (v14)
  {
    v15 = v14;
    v16 = [v14 data];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1D9176C8C();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xF000000000000000;
    }

    v25 = *a4;
    v26 = a4[1];
    *a4 = v18;
    a4[1] = v20;
    sub_1D8D75668(v25, v26);
    [v15 expirationDate];
    v28 = v27;

    *a5 = v28;
    *(a5 + 8) = 0;
  }

  else
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v9, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v10 + 16))(v13, v21, v9);
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a2;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Failed to retrieve offline key data, no key data found for storeTrackId %lld", v24, 0xCu);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1D8FF5EA0(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v13 = 0;
  v5 = swift_allocObject();
  v5[2] = &v13;
  v5[3] = v1;
  v5[4] = a1;
  v5[5] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D8FF7C04;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_41_1;
  v7 = _Block_copy(aBlock);
  v8 = v1;
  v9 = v4;

  [v9 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

void sub_1D8FF6090(uint64_t a1, char a2)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;
  *(v7 + 32) = v6;
  *(v7 + 40) = a2;
  v11[4] = sub_1D8FF7C4C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8CF5F60;
  v11[3] = &block_descriptor_47;
  v8 = _Block_copy(v11);
  v9 = v2;
  v10 = v6;

  [v10 performBlockAndWaitWithSave_];
  _Block_release(v8);
}

void *sub_1D8FF61C8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D8FF7868(a2, a3);
  if (result)
  {
    v13 = result;
    [result setPendingDeletion_];
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v7, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v8 + 16))(v11, v14, v7);
    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 134218242;
      *(v17 + 4) = a2;
      *(v17 + 12) = 2080;
      if (a4)
      {
        v19 = 1702195828;
      }

      else
      {
        v19 = 0x65736C6166;
      }

      if (a4)
      {
        v20 = 0xE400000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      v21 = sub_1D8CFA924(v19, v20, &v22);

      *(v17 + 14) = v21;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Key data for storeTrackId %lld set to pendingDeletion %s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

void sub_1D8FF6490(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1D917744C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = sub_1D8FF7868(a2, a3);
  if (v13)
  {
    v14 = v13;
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v5, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v6 + 16))(v12, v15, v5);
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a2;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Removed offline key data for storeTrackId %lld", v18, 0xCu);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    [a3 deleteObject_];
  }

  else
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v5, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v6 + 16))(v9, v19, v5);
    v20 = sub_1D917741C();
    v21 = sub_1D9178D1C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = a2;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Failed to remove offline key data, no key data found for %lld", v22, 0xCu);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

id CoreDataKeyRequestStorage.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataKeyRequestStorage();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CoreDataKeyRequestStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataKeyRequestStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8FF6818()
{
  v0 = sub_1D91783EC();
  v4 = sub_1D8FF6898(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D8FF6898(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D91782CC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1D91791CC();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1D8CF4E20(v9, 0);
  v12 = sub_1D8FF69F0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1D91782CC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1D917957C();
LABEL_4:

  return sub_1D91782CC();
}

unint64_t sub_1D8FF69F0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D8FF6C10(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D917837C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D917957C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D8FF6C10(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D917835C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D8FF6C10(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D917838C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA729930](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1D8FF6C8C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1D91783DC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D8FF6818();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D917957C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D8FF7220()
{
  v1 = *(sub_1D9176E3C() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D8FF4228(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unsigned __int8 *sub_1D8FF72DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1D91783DC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D8FF6818();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D917957C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}