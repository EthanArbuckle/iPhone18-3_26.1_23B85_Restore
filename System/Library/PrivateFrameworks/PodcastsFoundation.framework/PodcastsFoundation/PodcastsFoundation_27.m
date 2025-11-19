uint64_t ArtworkRequest.hashValue.getter()
{
  sub_1D9179DBC();
  ArtworkRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t ArtworkRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8430, &unk_1D91A0448);
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v14 - v7;
  v32 = 16;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v9 = a1[3];
  v10 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D8FABB38();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    return sub_1D8D7621C(v37);
  }

  else
  {
    v11 = v5;
    v17 = 0;
    sub_1D8FABCDC();
    v12 = v14;
    sub_1D91798FC();
    v29[8] = v26;
    v29[9] = v27;
    v29[10] = v28;
    v29[4] = v22;
    v29[5] = v23;
    v29[6] = v24;
    v29[7] = v25;
    v29[0] = v18;
    v29[1] = v19;
    v29[2] = v20;
    v29[3] = v21;
    type metadata accessor for CGSize(0);
    v15 = 1;
    sub_1D8D5C0D4(&qword_1ECAAFCB8, type metadata accessor for CGSize);
    sub_1D91798FC();
    v29[11] = v16;
    v15 = 2;
    sub_1D8FA7D30();
    sub_1D91798FC();
    v30 = v16;
    LOBYTE(v16) = 3;
    v31 = sub_1D91798CC() & 1;
    v15 = 4;
    sub_1D8FA461C();
    sub_1D917989C();
    v32 = v16;
    v15 = 5;
    sub_1D8FABD30();
    sub_1D91798FC();
    v33 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8428, &qword_1D91A0440);
    v15 = 6;
    sub_1D8FABD84(&qword_1ECAAFF78, sub_1D8FABDFC);
    sub_1D91798FC();
    v35 = v16;
    v15 = 7;
    sub_1D8FABE50();
    sub_1D917989C();
    v36 = v16;
    v15 = 8;
    sub_1D8ECF064();
    sub_1D91798FC();
    (*(v11 + 8))(v8, v12);
    v34 = v16;
    sub_1D8D41388(v29, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    return sub_1D8D58578(v29);
  }
}

uint64_t sub_1D8FAA6A0()
{
  sub_1D9179DBC();
  ArtworkRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FAA708@<X0>(uint64_t *a1@<X8>)
{
  result = ArtworkRequest.key.getter();
  *a1 = result;
  return result;
}

uint64_t ArtworkRequest.CodingError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t static ArtworkRequest.comparablePrefix(from:)(uint64_t a1, unint64_t a2)
{
  v10 = 45;
  v11 = 0xE100000000000000;
  v9[2] = &v10;

  v5 = sub_1D8FAB778(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D8D9E220, v9, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6 >= 2)
  {
    v6 = 2;
  }

  v10 = v5;
  v11 = v5 + 32;
  v12 = 0;
  v13 = (2 * v6) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8438, &qword_1D91A0458);
  sub_1D8CF48EC(&qword_1ECAAFBC0, &qword_1ECAB8438, &qword_1D91A0458);
  sub_1D8E7F724();
  v7 = sub_1D917851C();

  return v7;
}

uint64_t ArtworkRequest.encode(_:)(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtworkContent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E55148(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = [objc_opt_self() defaultManager];
    sub_1D9176BCC();
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v13 = [v11 contentsAtPath_];

    if (v13)
    {
      v14 = sub_1D9176C8C();

      (*(v3 + 8))(v6, v2);
      return v14;
    }

    else
    {
      sub_1D8FABEA4();
      swift_allocError();
      swift_willThrow();
      return (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    result = *v10;
    v16 = v10[1];
  }

  return result;
}

uint64_t ArtworkRequest.decode(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for ArtworkContent();
  swift_storeEnumTagMultiPayload();
  return sub_1D8D752C4(a1, a2);
}

uint64_t ArtworkRequest.inMemorySize.getter()
{
  result = sub_1D8E62904(*v0, v0[1]);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 32;
    do
    {
      v5 = *(result + v4);
      v6 = __OFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        __break(1u);
        return result;
      }

      v4 += 8;
      --v2;
    }

    while (v2);

    if ((v3 & 0x8000000000000000) == 0)
    {
      return v3;
    }

    __break(1u);
  }

  return 0;
}

uint64_t ArtworkRequest.remoteUrl.getter()
{
  if (*(v0 + 201) == 16)
  {
    v1 = *(v0 + 130);
  }

  v7 = *v0;
  v8 = v0[1];
  CropCode.rawValue.getter();
  sub_1D8D447DC();

  sub_1D917922C();

  sub_1D8D756D0();
  sub_1D9179A4C();
  sub_1D917922C();

  sub_1D8D75758();
  sub_1D9179A4C();
  sub_1D917922C();

  v2 = 1734701162;
  if (*(v0 + 152) != 2)
  {
    v2 = 1667851624;
  }

  v3 = 6778986;
  if (!*(v0 + 152))
  {
    v3 = 6778480;
  }

  if (*(v0 + 152) <= 1u)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (*(v0 + 152) <= 1u)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1DA7298F0](v4, v5);

  sub_1D917922C();

  sub_1D9176BFC();
}

PodcastsFoundation::ArtworkRequest::Destination_optional __swiftcall ArtworkRequest.Destination.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D917980C();

  if (v1 == 1)
  {
    v2.value = PodcastsFoundation_ArtworkRequest_Destination_unspecified;
  }

  else
  {
    v2.value = PodcastsFoundation_ArtworkRequest_Destination_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ArtworkRequest.Destination.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return 0x79616C70736964;
  }
}

uint64_t sub_1D8FAAF88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6669636570736E75;
  }

  else
  {
    v4 = 0x79616C70736964;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v6 = 0x6669636570736E75;
  }

  else
  {
    v6 = 0x79616C70736964;
  }

  if (*a2)
  {
    v7 = 0xEB00000000646569;
  }

  else
  {
    v7 = 0xE700000000000000;
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

uint64_t sub_1D8FAB038()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FAB0C4()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FAB13C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FAB1C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_1D8FAB224(uint64_t *a1@<X8>)
{
  v2 = 0x79616C70736964;
  if (*v1)
  {
    v2 = 0x6669636570736E75;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000646569;
  }

  *a1 = v2;
  a1[1] = v3;
}

PodcastsFoundation::ArtworkRequest::SubsampleFactor_optional __swiftcall ArtworkRequest.SubsampleFactor.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 2) >= 7)
  {
    return 3;
  }

  else
  {
    return (0x2030303010300uLL >> (8 * (rawValue - 2)));
  }
}

uint64_t sub_1D8FAB36C()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](qword_1D91A0E10[v1]);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FAB3F4()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](qword_1D91A0E10[v1]);
  return sub_1D9179E1C();
}

void *sub_1D8FAB440@<X0>(void *result@<X0>, char *a2@<X8>)
{
  v2 = *result - 2;
  if (v2 >= 7)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2030303010300uLL >> (8 * v2);
  }

  *a2 = v3;
  return result;
}

BOOL ArtworkRequest.Effect.init(rawValue:)()
{
  v0 = sub_1D917980C();

  return v0 != 0;
}

uint64_t sub_1D8FAB59C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FAB608()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FAB658@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_1D8FAB778@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D91783EC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D8ECD024(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D8ECD024((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D91783CC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D91782FC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D91782FC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D91783EC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D8ECD024(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D91783EC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D8ECD024(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D8ECD024((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D91782FC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8FABB38()
{
  result = qword_1ECAB26A8;
  if (!qword_1ECAB26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26A8);
  }

  return result;
}

unint64_t sub_1D8FABB8C()
{
  result = qword_1ECAB2A48;
  if (!qword_1ECAB2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A48);
  }

  return result;
}

unint64_t sub_1D8FABBE0()
{
  result = qword_1ECAB2690;
  if (!qword_1ECAB2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2690);
  }

  return result;
}

unint64_t sub_1D8FABC34()
{
  result = qword_1ECAB2660;
  if (!qword_1ECAB2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2660);
  }

  return result;
}

unint64_t sub_1D8FABC88()
{
  result = qword_1ECAB2678;
  if (!qword_1ECAB2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2678);
  }

  return result;
}

unint64_t sub_1D8FABCDC()
{
  result = qword_1ECAB2A40;
  if (!qword_1ECAB2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A40);
  }

  return result;
}

unint64_t sub_1D8FABD30()
{
  result = qword_1ECAB2680;
  if (!qword_1ECAB2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2680);
  }

  return result;
}

uint64_t sub_1D8FABD84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8428, &qword_1D91A0440);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8FABDFC()
{
  result = qword_1ECAB2658;
  if (!qword_1ECAB2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2658);
  }

  return result;
}

unint64_t sub_1D8FABE50()
{
  result = qword_1ECAB2670;
  if (!qword_1ECAB2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2670);
  }

  return result;
}

unint64_t sub_1D8FABEA4()
{
  result = qword_1ECAB8440;
  if (!qword_1ECAB8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8440);
  }

  return result;
}

unint64_t sub_1D8FABEFC()
{
  result = qword_1ECAB8448;
  if (!qword_1ECAB8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8448);
  }

  return result;
}

unint64_t sub_1D8FABF54()
{
  result = qword_1ECAB8450;
  if (!qword_1ECAB8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8450);
  }

  return result;
}

unint64_t sub_1D8FABFAC()
{
  result = qword_1ECAB8458;
  if (!qword_1ECAB8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8458);
  }

  return result;
}

unint64_t sub_1D8FAC004()
{
  result = qword_1ECAB8460;
  if (!qword_1ECAB8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8460);
  }

  return result;
}

unint64_t sub_1D8FAC0B4()
{
  result = qword_1ECAB8468;
  if (!qword_1ECAB8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8468);
  }

  return result;
}

unint64_t sub_1D8FAC10C()
{
  result = qword_1ECAB2698;
  if (!qword_1ECAB2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2698);
  }

  return result;
}

unint64_t sub_1D8FAC164()
{
  result = qword_1ECAB26A0;
  if (!qword_1ECAB26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26A0);
  }

  return result;
}

uint64_t sub_1D8FAC1B8()
{
  v0 = sub_1D917980C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D8FAC204()
{
  result = qword_1ECAB8470;
  if (!qword_1ECAB8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8470);
  }

  return result;
}

unint64_t sub_1D8FAC258()
{
  result = qword_1ECAB8478;
  if (!qword_1ECAB8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8478);
  }

  return result;
}

unint64_t sub_1D8FAC2AC()
{
  result = qword_1ECAB2688;
  if (!qword_1ECAB2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2688);
  }

  return result;
}

double ArtworkStyle.iconCornerRadius(for:)(unsigned __int8 a1, double a2, double a3)
{
  if (a1 > 1u)
  {
    result = 20.0;
    v8 = a3 * 0.5;
    if (a1 == 2)
    {
      return v8;
    }
  }

  else if (a1)
  {
    if (a2 >= a3)
    {
      a2 = a3;
    }

    return a2 * 0.5;
  }

  else
  {
    v3 = 3.0;
    if (a2 < 10.0 || a2 > 39.0)
    {
      v3 = 4.0;
      if (a2 < 40.0 || a2 > 99.0)
      {
        v6 = a2 > 279.0 || a2 < 99.0;
        v3 = 6.0;
        if (v6)
        {
          return 8.0;
        }
      }
    }

    return v3;
  }

  return result;
}

double static ArtworkStyle.iconHeight(for:width:)(char a1, double result)
{
  if (a1 == 2)
  {
    return result * 3.0 * 0.25;
  }

  return result;
}

double static ArtworkStyle.iconWidth(for:height:)(char a1, double result)
{
  if (a1 == 2)
  {
    return result * 4.0 / 3.0;
  }

  return result;
}

unint64_t ArtworkStyle.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x526465646E756F72;
  v2 = 1819044208;
  if (a1 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = 0x646E756F72;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FAC474(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000746365;
  v3 = 0x526465646E756F72;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 1819044208;
  v7 = 0x80000001D91C7EF0;
  if (v4 != 2)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001D91C7EF0;
  }

  v8 = 0xE500000000000000;
  v9 = 0x646E756F72;
  if (!*a1)
  {
    v9 = 0x526465646E756F72;
    v8 = 0xEB00000000746365;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  v12 = 1819044208;
  if (*a2 == 2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xD000000000000012;
  }

  if (*a2)
  {
    v3 = 0x646E756F72;
    v2 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v7;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

uint64_t sub_1D8FAC59C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FAC660()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FAC710()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FAC7D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation12ArtworkStyleO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1D8FAC800(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000746365;
  v3 = 0x526465646E756F72;
  v4 = 0xE400000000000000;
  v5 = 1819044208;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001D91C7EF0;
  }

  if (*v1)
  {
    v3 = 0x646E756F72;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t _s18PodcastsFoundation12ArtworkStyleO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D917980C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D8FAC980()
{
  result = qword_1ECAB8480;
  if (!qword_1ECAB8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8480);
  }

  return result;
}

unint64_t sub_1D8FAC9E4()
{
  result = qword_1ECAB2A30;
  if (!qword_1ECAB2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A30);
  }

  return result;
}

uint64_t ArtworkTextColors.init(primary:secondary:tertiary:quaternary:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
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

double ArtworkTextColors.init(serverArtwork:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D8FACF9C(a1, v5);

  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v6[0];
  result = *(v6 + 9);
  *(a2 + 41) = *(v6 + 9);
  return result;
}

id ArtworkTextColors.primary.getter()
{
  v1 = *v0;
  sub_1D8FA7CC8(*v0, *(v0 + 8));
  return v1;
}

void *ArtworkTextColors.secondary.getter()
{
  v1 = *(v0 + 16);
  sub_1D8FA7CC8(v1, *(v0 + 24));
  return v1;
}

void *ArtworkTextColors.tertiary.getter()
{
  v1 = *(v0 + 32);
  sub_1D8FA7CC8(v1, *(v0 + 40));
  return v1;
}

void *ArtworkTextColors.quaternary.getter()
{
  v1 = *(v0 + 48);
  sub_1D8FA7CC8(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_1D8FACB90()
{
  v1 = 0x7972616D697270;
  v2 = 0x7972616974726574;
  if (*v0 != 2)
  {
    v2 = 0x616E726574617571;
  }

  if (*v0)
  {
    v1 = 0x7261646E6F636573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FACC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FAD178(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FACC3C(uint64_t a1)
{
  v2 = sub_1D8FAD124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FACC78(uint64_t a1)
{
  v2 = sub_1D8FAD124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkTextColors.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8488, &qword_1D91A0F50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FAD124();
  sub_1D9179F1C();
  v14 = *v3;
  v15 = *(v3 + 8);
  v13 = 0;
  sub_1D8FA804C();
  sub_1D917999C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = v3[2];
  v15 = *(v3 + 24);
  v13 = 1;
  sub_1D917999C();
  v14 = v3[4];
  v15 = *(v3 + 40);
  v13 = 2;
  sub_1D917999C();
  v14 = v3[6];
  v15 = *(v3 + 56);
  v13 = 3;
  sub_1D917999C();
  return (*(v6 + 8))(v9, v5);
}

double ArtworkTextColors.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D8FAD2EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

double sub_1D8FACF38@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D8FAD2EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1D8FACF9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[11];
  if (!v4)
  {
    v7 = -1;
    v8 = a1[13];
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_7:
    v11 = -1;
    v12 = a1[15];
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = a1[10];
  v6 = a1[11];

  v4 = sub_1D8D3707C(v5, v4);
  v7 = v9;
  v8 = a1[13];
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_6:
  v10 = a1[12];

  v8 = sub_1D8D3707C(v10, v8);
  v11 = v13;
  v12 = a1[15];
  if (v12)
  {
LABEL_10:
    v14 = a1[14];

    v12 = sub_1D8D3707C(v14, v12);
    v15 = v17;
    v16 = a1[17];
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = 0;
    v20 = -1;
    goto LABEL_16;
  }

LABEL_11:
  v15 = -1;
  v16 = a1[17];
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_14:
  v18 = a1[16];

  result = sub_1D8D3707C(v18, v16);
LABEL_16:
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v15;
  *(a2 + 48) = result;
  *(a2 + 56) = v20;
  return result;
}

unint64_t sub_1D8FAD124()
{
  result = qword_1ECAB2110;
  if (!qword_1ECAB2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2110);
  }

  return result;
}

uint64_t sub_1D8FAD178(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616974726574 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616E726574617571 && a2 == 0xEA00000000007972)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D8FAD2EC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8498, &qword_1D91A12D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FAD124();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v26) = 0;
  sub_1D8FA7DD8();
  sub_1D917989C();
  v25 = v29;
  v39 = v30;
  LOBYTE(v26) = 1;
  sub_1D917989C();
  v23 = v29;
  v24 = v30;
  LOBYTE(v26) = 2;
  sub_1D917989C();
  v21 = v29;
  v22 = v30;
  v40 = 3;
  sub_1D917989C();
  (*(v6 + 8))(v9, v5);
  v20 = v37;
  HIDWORD(v19) = v38;
  v11 = v25;
  *&v26 = v25;
  v12 = v39;
  BYTE8(v26) = v39;
  v13 = v23;
  *&v27 = v23;
  v14 = v24;
  BYTE8(v27) = v24;
  v15 = v21;
  *v28 = v21;
  v16 = v22;
  v28[8] = v22;
  *&v28[16] = v37;
  v28[24] = v38;
  sub_1D8D614F0(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = v20;
  v36 = BYTE4(v19);
  result = sub_1D8FAD8B8(&v29);
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  a2[2] = *v28;
  *(a2 + 41) = *&v28[9];
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8FAD6F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FAD73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

unint64_t sub_1D8FAD7B4()
{
  result = qword_1ECAB8490;
  if (!qword_1ECAB8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8490);
  }

  return result;
}

unint64_t sub_1D8FAD80C()
{
  result = qword_1ECAB2100;
  if (!qword_1ECAB2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2100);
  }

  return result;
}

unint64_t sub_1D8FAD864()
{
  result = qword_1ECAB2108;
  if (!qword_1ECAB2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2108);
  }

  return result;
}

id ArtworkURLScheme.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArtworkURLScheme.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkURLScheme();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ArtworkURLScheme.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkURLScheme();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Color.description.getter(CGColor *a1, char a2)
{
  if (!a2)
  {
    return HexColor.description.getter(a1);
  }

  if (a2 == 1)
  {
    sub_1D917946C();

    v3 = CGColorGetColorSpace(a1);
    if (v3)
    {
      v4 = v3;
      CGColorSpaceCopyName(v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84A0, &qword_1D91A1340);
    v9 = sub_1D917826C();
    MEMORY[0x1DA7298F0](v9);

    MEMORY[0x1DA7298F0](0x3A6168706C61202CLL, 0xE900000000000020);
    CGColorGetAlpha(a1);
    v10 = sub_1D9178A4C();
    MEMORY[0x1DA7298F0](v10);

    MEMORY[0x1DA7298F0](0x6E6F706D6F63202CLL, 0xEE00203A73746E65);
    sub_1D9178C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84A8, &qword_1D91A1348);
    v11 = sub_1D917826C();
    MEMORY[0x1DA7298F0](v11);

    return 0x28726F6C6F434743;
  }

  else
  {
    v6 = 0x756F72676B636162;
    v7 = 0xD000000000000012;
    v8 = 0x7261656C63;
    if (a1 != 3)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 <= 1)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }
}

unint64_t Color.debugDescription.getter(CGColor *a1, char a2)
{
  if (!a2)
  {
    sub_1D917946C();

    v7[0] = 0x65682E726F6C6F43;
    v7[1] = 0xEF28726F6C6F4378;
    v3 = HexColor.debugDescription.getter();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_1D917946C();

    strcpy(v7, "Color.cgColor(");
    HIBYTE(v7[1]) = -18;
    v3 = Color.description.getter(a1, 1);
LABEL_5:
    MEMORY[0x1DA7298F0](v3);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    return v7[0];
  }

  v5 = 0x6C632E726F6C6F43;
  if (a1 != 3)
  {
    v5 = 0xD000000000000016;
  }

  if (a1 == 2)
  {
    v5 = 0xD000000000000018;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v6 = 0xD000000000000019;
  }

  if (a1 <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t Color.init(from:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v3 = sub_1D9179ADC();
  v5 = sub_1D8D3707C(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t Color.encode(to:)(void *a1, void *a2, char a3)
{
  v6 = sub_1D917953C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  if (a3)
  {
    if (a3 != 1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      sub_1D9179B5C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    v12 = a2;
    sub_1D8FAFC7C(v12);
    if ((v13 & 0x100000000) != 0)
    {
      __swift_project_boxed_opaque_existential_1(v24, v25);
      sub_1D9179B4C();
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D917946C();
      MEMORY[0x1DA7298F0](0xD000000000000012, 0x80000001D91D0E90);
      v26 = v12;
      type metadata accessor for CGColor(0);
      v15 = v14;
      sub_1D917964C();
      MEMORY[0x1DA7298F0](0x20786568206F7420, 0xED0000726F6C6F63);
      sub_1D91794FC();
      v16 = sub_1D917954C();
      swift_allocError();
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B0, &qword_1D91A1350) + 48);
      *(v18 + 3) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B8, &qword_1D91A1358);
      *v18 = v15;
      (*(v7 + 16))(&v18[v19], v10, v6);
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B30], v16);
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      return __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    LODWORD(v22) = v13;
  }

  else
  {
    LODWORD(v22) = a2;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  sub_1D8FAE578();
  sub_1D9179BBC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t _s18PodcastsFoundation5ColorO2eeoiySbAC_ACtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        type metadata accessor for CGColor(0);
        sub_1D8FAE5DC();
        return sub_1D917711C() & 1;
      }

      return 0;
    }

    if (a1 <= 1)
    {
      if (a1)
      {
        return a4 == 2 && a3 == 1;
      }

      else
      {
        return a4 == 2 && !a3;
      }
    }

    else if (a1 == 2)
    {
      return a4 == 2 && a3 == 2;
    }

    else
    {
      if (a1 == 3)
      {
        return a4 == 2 && a3 == 3;
      }

      return a4 == 2 && a3 == 4;
    }
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return sub_1D8FDF1EC(a1, a3);
  }
}

unint64_t sub_1D8FAE578()
{
  result = qword_1ECAB10F8;
  if (!qword_1ECAB10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB10F8);
  }

  return result;
}

unint64_t sub_1D8FAE5DC()
{
  result = qword_1ECAB84C0;
  if (!qword_1ECAB84C0)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84C0);
  }

  return result;
}

unint64_t sub_1D8FAE640@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s18PodcastsFoundation11ContentModeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s18PodcastsFoundation11ContentModeO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

unint64_t sub_1D8FAE730()
{
  result = qword_1ECAB84C8;
  if (!qword_1ECAB84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8FAE8D4()
{
  result = qword_1ECAB2AC0;
  if (!qword_1ECAB2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AC0);
  }

  return result;
}

PodcastsFoundation::CropCode_optional __swiftcall CropCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8FAE998(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = CropCode.rawValue.getter();
  v4 = v3;
  if (v2 == CropCode.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

unint64_t sub_1D8FAEA38()
{
  result = qword_1ECAB84D0;
  if (!qword_1ECAB84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84D0);
  }

  return result;
}

uint64_t sub_1D8FAEA8C()
{
  v1 = *v0;
  sub_1D9179DBC();
  CropCode.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FAEAF4()
{
  v2 = *v0;
  CropCode.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FAEB58()
{
  v1 = *v0;
  sub_1D9179DBC();
  CropCode.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FAEBC8@<X0>(uint64_t *a1@<X8>)
{
  result = CropCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8FAECB8()
{
  sub_1D9179DBC();
  sub_1D9179DEC();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FAED00()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t HexColor.description.getter(unsigned int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189080;
  v3 = bswap32(a1);
  v4 = MEMORY[0x1E69E76D0];
  *(v2 + 56) = MEMORY[0x1E69E7668];
  *(v2 + 64) = v4;
  if (HIBYTE(a1) == 255)
  {
    v3 >>= 8;
  }

  *(v2 + 32) = v3;

  return sub_1D917823C();
}

uint64_t HexColor.debugDescription.getter()
{
  sub_1D917946C();

  strcpy(v5, "HexColor(red: ");
  v0 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v0);

  MEMORY[0x1DA7298F0](0x3A6E65657267202CLL, 0xE900000000000020);
  v1 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v1);

  MEMORY[0x1DA7298F0](0x203A65756C62202CLL, 0xE800000000000000);
  v2 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v2);

  MEMORY[0x1DA7298F0](0x3A6168706C61202CLL, 0xE900000000000020);
  v3 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v3);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return v5[0];
}

uint64_t sub_1D8FAF19C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s18PodcastsFoundation8HexColorV8rawValueACs6UInt32V_tcfC_0(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t HexColor.ParseError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](34, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

unint64_t sub_1D8FAF268()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](34, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1D8FAF2F4(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_1D917830C();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x1EEE68E00](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v2);
  }

  return result;
}

unsigned __int8 *HexColor.init(from:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v3 = sub_1D9179ADC();
  v5 = sub_1D8D3E514(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t sub_1D8FAF464@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = sub_1D9179ADC();
  v8 = sub_1D8D3E514(v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v8;
  return result;
}

uint64_t HexColor.encode(to:)(void *a1, unsigned int a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  HexColor.description.getter(a2);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1D8FAF5F0(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  HexColor.description.getter(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1D8FAF6AC@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s18PodcastsFoundation8HexColorV8rawValueACs6UInt32V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

CGColorSpaceRef sub_1D8FAF6D8()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_1ECAB84D8 = result;
  return result;
}

unsigned __int8 *sub_1D8FAF6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1D91783DC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D8FF6818();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
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

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void sub_1D8FAFC7C(CGColor *a1)
{
  v2 = CGColorGetColorSpace(a1);
  if (qword_1ECAB3680 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB84D8;
  if (v2 && (type metadata accessor for CGColorSpace(0), sub_1D8FAFFCC(), v4 = v3, v5 = sub_1D917711C(), v2, v4, (v5 & 1) != 0))
  {
    CopyByMatchingToColorSpace = a1;
  }

  else
  {
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v3, kCGRenderingIntentDefault, a1, 0);
    if (!CopyByMatchingToColorSpace)
    {

      return;
    }
  }

  v7 = CopyByMatchingToColorSpace;
  v8 = sub_1D9178C3C();

  if (!v8)
  {

    return;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v9 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < 3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = *(v8 + 32);
  v10 = *(v8 + 40);
  v12 = *(v8 + 48);

  Alpha = CGColorGetAlpha(a1);

  if (v11 * 255.0 <= -1.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v11 * 255.0 >= 256.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v10 * 255.0 <= -1.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v10 * 255.0 >= 256.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v12 * 255.0 <= -1.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v12 * 255.0 >= 256.0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = COERCE_UNSIGNED_INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v15 = COERCE_UNSIGNED_INT64(fabs(v10 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v16 = Alpha * 255.0;
  v17 = COERCE__INT64(fabs(Alpha * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE_UNSIGNED_INT64(fabs(v11 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL || v15 || v14 || v17)
  {
    goto LABEL_35;
  }

  if (v16 <= -1.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v16 >= 256.0)
  {
LABEL_37:
    __break(1u);
  }
}

unint64_t sub_1D8FAFF40()
{
  result = qword_1ECAB84E0;
  if (!qword_1ECAB84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84E0);
  }

  return result;
}

unint64_t sub_1D8FAFFCC()
{
  result = qword_1ECAB84E8;
  if (!qword_1ECAB84E8)
  {
    type metadata accessor for CGColorSpace(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84E8);
  }

  return result;
}

unint64_t sub_1D8FB0024()
{
  result = qword_1ECAB1100;
  if (!qword_1ECAB1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1100);
  }

  return result;
}

unint64_t static MTPodcast.importedShowArtworkURL(for:)(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  return 0xD000000000000016;
}

unint64_t MTCategory.hexColor.getter()
{
  v1 = [v0 color];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();
    v5 = v4;

    LODWORD(v2) = sub_1D8D3E514(v3, v5);

    v6 = 0;
    v7 = v2;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  return v7 | (v6 << 32);
}

__n128 MTCategory.artwork.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 color];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v14 = sub_1D8D3E514(v6, v8);

  v15 = [v2 artworkTemplateURL];
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  v17 = sub_1D917820C();
  v19 = v18;

  v20 = [v2 artworkWidthNumber];
  if (!v20 || (v21 = v20, [v20 doubleValue], v23 = v22, v21, (v24 = objc_msgSend(v2, sel_artworkHeightNumber)) == 0))
  {

LABEL_4:
    sub_1D8D39E08(&v34);
    goto LABEL_5;
  }

  v25 = v24;
  [v24 doubleValue];
  v27 = v26;

  v31 = v14;
  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v32 = word_1EDCD78A8;
  v33 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  *&v34 = v17;
  *(&v34 + 1) = v19;
  v35 = 0uLL;
  LOBYTE(v36) = -1;
  *(&v36 + 1) = v23;
  v37.n128_u64[0] = v27;
  v37.n128_u64[1] = v31;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = 0;
  LOBYTE(v39) = -1;
  *(&v39 + 1) = 0;
  LOBYTE(v40) = -1;
  *(&v40 + 1) = 0;
  LOBYTE(v41) = -1;
  *(&v41 + 1) = 0;
  LOWORD(v42) = 1279;
  BYTE2(v42) = v32;
  BYTE3(v42) = v33;
  *(&v42 + 1) = 0;
  *&v43 = 0;
  BYTE8(v43) = byte_1EDCD7898;
  *(&v43 + 9) = 0;
  v44 = 0uLL;
  nullsub_1(&v34, v28, v29, v30);
LABEL_5:
  v9 = v43;
  *(a1 + 128) = v42;
  *(a1 + 144) = v9;
  *(a1 + 160) = v44;
  v10 = v39;
  *(a1 + 64) = v38;
  *(a1 + 80) = v10;
  v11 = v41;
  *(a1 + 96) = v40;
  *(a1 + 112) = v11;
  v12 = v35;
  *a1 = v34;
  *(a1 + 16) = v12;
  result = v37;
  *(a1 + 32) = v36;
  *(a1 + 48) = result;
  return result;
}

id MTCategory.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTCategory.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTCategory();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTCategory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTCategory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MTCategory.followedShowsCount.getter()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D917935C())
  {
    sub_1D8FB181C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v12 = v1;
  v2 = [v0 children];
  type metadata accessor for MTCategory();
  sub_1D8FB2D14(&qword_1ECAB43E8, type metadata accessor for MTCategory);
  v3 = sub_1D9178A9C();

  sub_1D8FB0810(v3, &v12);

  v4 = [v0 podcasts];
  sub_1D8F46024();
  sub_1D8FB2D14(&qword_1ECAB72F8, sub_1D8F46024);
  v5 = sub_1D9178A9C();

  v6 = v0;
  v7 = sub_1D8FB1DC4(v5, v6);

  sub_1D8FB11F4(v8, v7);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_1D917935C();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  return v10;
}

id sub_1D8FB07AC(SEL *a1)
{
  result = [v1 *a1];
  v3 = result;
  if (result)
  {
    [result doubleValue];
    v5 = v4;

    return v5;
  }

  return result;
}

uint64_t sub_1D8FB0810(uint64_t a1, void **a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    type metadata accessor for MTCategory();
    sub_1D8FB2D14(&qword_1ECAB43E8, type metadata accessor for MTCategory);
    result = sub_1D9178B3C();
    v2 = v54;
    v4 = v55;
    v5 = v56;
    v6 = v57;
    v7 = v58;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v9 = ~v8;
    v10 = -v8;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 56);

    v5 = v9;
    v6 = 0;
  }

  v12 = (v5 + 64) >> 6;
  v13 = MEMORY[0x1E69E7C98];
  v14 = &selRef_redirectURLForStoreCollectionId_;
  v46 = v12;
  v47 = v4;
  v45 = v2;
  while (v2 < 0)
  {
    v23 = sub_1D917938C();
    if (!v23)
    {
      return sub_1D8D1B144();
    }

    v53 = v23;
    type metadata accessor for MTCategory();
    swift_dynamicCast();
    v15 = v59;
    v21 = v6;
    v22 = v7;
    if (!v59)
    {
      return sub_1D8D1B144();
    }

LABEL_19:
    v50 = *a2;
    v51 = v22;

    v24 = [v15 podcasts];
    sub_1D8F46024();
    sub_1D8FB2D14(&qword_1ECAB72F8, sub_1D8F46024);
    v25 = sub_1D9178A9C();

    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1E69E7CD0];
      v59 = MEMORY[0x1E69E7CD0];
      v48 = v15;
      v52 = v15;
      sub_1D917931C();
      for (; sub_1D917938C(); ++*(v59 + 16))
      {
        while (1)
        {
          swift_dynamicCast();
          if ([v53 v14[488]])
          {
            v27 = [v53 primaryCategory];
            if (v27)
            {
              v28 = v27;
              type metadata accessor for MTCategory();
              v29 = v14;
              v30 = v13;
              v31 = v52;
              v32 = sub_1D917914C();

              v13 = v30;
              v14 = v29;

              if (v32)
              {
                break;
              }
            }
          }

          if (!sub_1D917938C())
          {
            goto LABEL_8;
          }
        }

        v33 = *(v26 + 16);
        if (*(v26 + 24) <= v33)
        {
          sub_1D8EFC174(v33 + 1);
        }

        v26 = v59;
        v34 = *(v59 + 40);
        result = sub_1D917913C();
        v35 = v59 + 56;
        v36 = -1 << *(v59 + 32);
        v37 = result & ~v36;
        v38 = v37 >> 6;
        if (((-1 << v37) & ~*(v59 + 56 + 8 * (v37 >> 6))) != 0)
        {
          v39 = __clz(__rbit64((-1 << v37) & ~*(v59 + 56 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v40 = 0;
          v41 = (63 - v36) >> 6;
          do
          {
            if (++v38 == v41 && (v40 & 1) != 0)
            {
              __break(1u);
              goto LABEL_42;
            }

            v42 = v38 == v41;
            if (v38 == v41)
            {
              v38 = 0;
            }

            v40 |= v42;
            v43 = *(v35 + 8 * v38);
          }

          while (v43 == -1);
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
        }

        *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
        *(*(v59 + 48) + 8 * v39) = v53;
      }

LABEL_8:

      v15 = v48;
      v16 = a2;
      v2 = v45;
    }

    else
    {
      v44 = v15;
      v16 = a2;
      v26 = sub_1D8FB1AE8(v25, v44);
    }

    sub_1D8FB11F4(v26, v50);
    v17 = *v16;
    *v16 = v18;

    v6 = v21;
    v7 = v51;
    v12 = v46;
    v4 = v47;
  }

  v19 = v6;
  v20 = v7;
  v21 = v6;
  if (v7)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v15 = *(*(v2 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v15)
    {
      return sub_1D8D1B144();
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v12)
    {
      return sub_1D8D1B144();
    }

    v20 = *(v4 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_42:
  __break(1u);
  return result;
}

id static MTCategory.createFetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1D8FB0DEC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_1D917820C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1D8FB0E44(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D917820C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1D8FB0EA8(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

void sub_1D8FB0F18(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, unint64_t *a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_1D8FB2D14(a4, a5);
  v11 = sub_1D9178A9C();

  *a6 = v11;
}

void sub_1D8FB0FB8(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), SEL *a8)
{
  v11 = *a1;
  v12 = *a2;
  a5(0);
  sub_1D8FB2D14(a6, a7);
  v13 = sub_1D9178A8C();
  [v12 *a8];
}

id MTCategory.interestValueIsFavorited.getter()
{
  result = [v0 interest];
  if (result)
  {
    v2 = result;
    [result interestValue];
    v4 = v3;

    return (v4 == 1.0);
  }

  return result;
}

id MTCategory.interestValueIsSuggestLess.getter()
{
  result = [v0 interest];
  if (result)
  {
    v2 = result;
    [result interestValue];
    v4 = v3;

    return (v4 == -1.0);
  }

  return result;
}

uint64_t MTCategory.followedShows.getter()
{
  v1 = [v0 podcasts];
  sub_1D8F46024();
  sub_1D8FB2D14(&qword_1ECAB72F8, sub_1D8F46024);
  v2 = sub_1D9178A9C();

  v3 = v0;
  v4 = sub_1D8FB1DC4(v2, v3);

  return v4;
}

void sub_1D8FB11F4(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1D917931C();
    sub_1D8F46024();
    sub_1D8FB2D14(&qword_1ECAB72F8, sub_1D8F46024);
    sub_1D9178B3C();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1D8D1B144();
      return;
    }

    while (1)
    {
      sub_1D8EFAA50(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D917938C())
      {
        sub_1D8F46024();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D8FB13E8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1D8D19AFC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FB14EC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v18 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v2 + 48) + 24 * (v11 | (v10 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      sub_1D8D02FE4(*v12, v14, v15);
      sub_1D8EFB338(v16, v13, v14, v15);
      result = sub_1D8D02FCC(v16[0], v16[1], v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v18;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D8FB1634(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v25 = a1;
    v24 = a2;
    v8 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = a4;
    v26 = 0;
    v27 = a3;
    v13 = 0;
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v17 = v14 | (v13 << 6);
      v18 = *(*(a3 + 48) + 8 * v17);
      if ([v18 subscribed] && (v19 = objc_msgSend(v18, sel_primaryCategory)) != 0)
      {
        v20 = v19;
        type metadata accessor for MTCategory();
        v21 = v28;
        v22 = sub_1D917914C();

        a3 = v27;
        if (v22)
        {
          *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          if (__OFADD__(v26++, 1))
          {
            __break(1u);
LABEL_21:
            sub_1D90A7AC4(v25, v24, v26, a3);

            return;
          }
        }
      }

      else
      {
      }
    }

    v15 = v13;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_21;
      }

      v16 = *(v8 + 8 * v13);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D8FB181C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6850, &unk_1D9193790);
      v3 = sub_1D917942C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D917935C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1DA72AA90](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1D917913C();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1D8F46024();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1D917914C();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_1D917913C();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1D8F46024();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1D917914C();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1D8FB1AE8(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v33 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v33;
  v8 = a2;
  v37 = v8;
  v9 = v6 > 0xD;
  v10 = a1;
  if (v9)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v32[0] = v32;
    v32[1] = v3;
    MEMORY[0x1EEE9AC00](v8);
    v34 = v32 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v7);
    v35 = 0;
    v36 = v10;
    v11 = 0;
    v3 = v10 + 56;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v19 = v16 | (v11 << 6);
      v20 = *(*(v10 + 48) + 8 * v19);
      if ([v20 subscribed] && (v21 = objc_msgSend(v20, sel_primaryCategory)) != 0)
      {
        v22 = v21;
        type metadata accessor for MTCategory();
        v23 = v37;
        v7 = sub_1D917914C();

        v10 = v36;
        if (v7)
        {
          *&v34[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
          if (__OFADD__(v35++, 1))
          {
            __break(1u);
LABEL_19:
            v25 = sub_1D90A7AC4(v34, v33, v35, v10);

            goto LABEL_20;
          }
        }
      }

      else
      {
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v3 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = v10;
  v29 = swift_slowAlloc();
  v30 = v37;
  sub_1D8FB1634(v29, v33, v28, v30);
  v25 = v31;

  MEMORY[0x1DA72CB90](v29, -1, -1);

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t sub_1D8FB1DC4(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D8FB1AE8(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v21 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  sub_1D917931C();
  if (sub_1D917938C())
  {
    sub_1D8F46024();
    do
    {
      swift_dynamicCast();
      if ([v20 subscribed] && (v4 = objc_msgSend(v20, sel_primaryCategory)) != 0 && (v5 = v4, type metadata accessor for MTCategory(), v6 = v3, v7 = sub_1D917914C(), v6, v5, (v7 & 1) != 0))
      {
        v8 = *(v2 + 16);
        if (*(v2 + 24) <= v8)
        {
          sub_1D8EFC174(v8 + 1);
        }

        v2 = v21;
        v9 = *(v21 + 40);
        result = sub_1D917913C();
        v11 = v21 + 56;
        v12 = -1 << *(v21 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v14 == v17;
            if (v14 == v17)
            {
              v14 = 0;
            }

            v16 |= v18;
            v19 = *(v11 + 8 * v14);
          }

          while (v19 == -1);
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v21 + 48) + 8 * v15) = v20;
        ++*(v21 + 16);
      }

      else
      {
      }
    }

    while (sub_1D917938C());
  }

  return v2;
}

uint64_t sub_1D8FB208C(uint64_t a1)
{
  v2 = sub_1D9176FBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84F0, &qword_1D91A1A50);
    v10 = sub_1D917942C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D8FB2D14(&qword_1EDCD5910, MEMORY[0x1E6969AD0]);
      v18 = sub_1D917813C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_1D8FB2D14(&qword_1EDCD5908, MEMORY[0x1E6969AD0]);
          v25 = sub_1D91781BC();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D8FB23AC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1D917935C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8500, &qword_1D91A1A60);
      result = sub_1D917942C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1D917935C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x1DA72AA90](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_1D917786C();
    sub_1D8FB2D14(&qword_1ECAB8508, MEMORY[0x1E695BF10]);
    result = sub_1D917813C();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1D8FB2D14(&qword_1ECAB8510, MEMORY[0x1E695BF10]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_1D91781BC();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D8FB2640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6788, &unk_1D91B3630);
    v3 = sub_1D917942C();
    v4 = 0;
    v5 = v3 + 56;
    v37 = v1;
    v38 = a1 + 32;
    while (1)
    {
      v6 = v38 + 24 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v3 + 40);
      sub_1D9179DBC();
      if (v9 > 1)
      {
        break;
      }

      if (!v9)
      {
        v11 = 3;
LABEL_10:
        MEMORY[0x1DA72B390](v11);
        goto LABEL_12;
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_12:
      result = sub_1D9179E1C();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      v16 = *(v5 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v39 = v4;
        v18 = ~v13;
        v19 = v8 != 3;
        v20 = v8 != 2;
        v21 = v8 != 1;
        if (v7)
        {
          v19 = 1;
          v20 = 1;
          v21 = 1;
        }

        if (v9 != 3)
        {
          v19 = 1;
        }

        v43 = v19;
        v22 = v9 != 3 || v20;
        v42 = v22;
        v23 = v9 != 3 || v21;
        if (v7 | v8)
        {
          v24 = 0;
        }

        else
        {
          v24 = v9 == 3;
        }

        v40 = v24;
        v41 = v23;
        do
        {
          v26 = *(v3 + 48) + 24 * v14;
          v28 = *v26;
          v27 = *(v26 + 8);
          v29 = *(v26 + 16);
          if (v29 > 1)
          {
            if (v29 == 2)
            {
              if (v9 == 2)
              {
                sub_1D8D02FCC(*v26, *(v26 + 8), 2);
                v34 = v8;
                v35 = v7;
                v36 = 2;
                goto LABEL_3;
              }
            }

            else if (v28 > 1)
            {
              if (v28 ^ 2 | v27)
              {
                if (!v43)
                {
                  sub_1D8D02FCC(v28, v27, 3);
                  v34 = 3;
LABEL_57:
                  v35 = 0;
                  v36 = 3;
LABEL_3:
                  sub_1D8D02FCC(v34, v35, v36);
                  v1 = v37;
                  v4 = v39;
                  goto LABEL_4;
                }
              }

              else if ((v42 & 1) == 0)
              {
                sub_1D8D02FCC(v28, v27, 3);
                v34 = 2;
                goto LABEL_57;
              }
            }

            else if (v28 | v27)
            {
              if ((v41 & 1) == 0)
              {
                sub_1D8D02FCC(v28, v27, 3);
                v34 = 1;
                goto LABEL_57;
              }
            }

            else if (v40)
            {
              sub_1D8D02FCC(v28, v27, 3);
              v34 = 0;
              goto LABEL_57;
            }
          }

          else if (*(v26 + 16))
          {
            v25 = *(v26 + 8);
          }

          else if (!v9)
          {
            sub_1D8D02FCC(*v26, *(v26 + 8), 0);
            v34 = v8;
            v35 = v7;
            v36 = 0;
            goto LABEL_3;
          }

          sub_1D8D02FE4(v8, v7, v9);
          sub_1D8D02FCC(v28, v27, v29);
          result = sub_1D8D02FCC(v8, v7, v9);
          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
        }

        while ((v16 & (1 << v14)) != 0);
        v1 = v37;
        v4 = v39;
      }

      *(v5 + 8 * v15) = v16 | v17;
      v30 = *(v3 + 48) + 24 * v14;
      *v30 = v8;
      *(v30 + 8) = v7;
      *(v30 + 16) = v9;
      v31 = *(v3 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v33;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    if (v9 == 2)
    {
      v11 = 8;
    }

    else if (v8 > 1)
    {
      if (v8 ^ 2 | v7)
      {
        v11 = 6;
      }

      else
      {
        v11 = 4;
      }
    }

    else if (v8 | v7)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_10;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8FB29F4(uint64_t a1)
{
  v2 = sub_1D9179F4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84F8, &qword_1D91A1A58);
    v10 = sub_1D917942C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D8FB2D14(&qword_1EDCD5A90, MEMORY[0x1E696A1C0]);
      v18 = sub_1D917813C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_1D8FB2D14(&qword_1EDCD5A88, MEMORY[0x1E696A1C0]);
          v25 = sub_1D91781BC();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8FB2D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MTCategory.predicateForFavoritedCategories()()
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 32) = 0x7473657265746E69;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x7473657265746E69;
  *(v0 + 80) = 0xE800000000000000;
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  strcpy((v0 + 112), "interestValue");
  *(v0 + 126) = -4864;
  return sub_1D9178C8C();
}

uint64_t static MTCategory.predicateForCategory(withAdamID:)(uint64_t a1)
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v3 = sub_1D8D34978();
  *(v2 + 32) = 0x44496D616461;
  *(v2 + 40) = 0xE600000000000000;
  v4 = MEMORY[0x1E69E7738];
  *(v2 + 96) = MEMORY[0x1E69E76D8];
  *(v2 + 104) = v4;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
  return sub_1D9178C8C();
}

uint64_t static MTCategory.predicateForNonFavoritedCategories()()
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 32) = 0x7473657265746E69;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x7473657265746E69;
  *(v0 + 80) = 0xE800000000000000;
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  strcpy((v0 + 112), "interestValue");
  *(v0 + 126) = -4864;
  return sub_1D9178C8C();
}

uint64_t static MTCategory.predicateForCategoriesWithRelationshipToPodcast(withAdamID:)(uint64_t a1)
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189060;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1D8D34978();
  *(v2 + 64) = v4;
  *(v2 + 32) = 0x7374736163646F70;
  *(v2 + 40) = 0xE800000000000000;
  v5 = sub_1D917820C();
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  v6 = MEMORY[0x1E69E7360];
  *(v2 + 72) = v5;
  *(v2 + 80) = v7;
  v8 = MEMORY[0x1E69E73D8];
  *(v2 + 136) = v6;
  *(v2 + 144) = v8;
  *(v2 + 112) = a1;
  return sub_1D9178C8C();
}

uint64_t _s18PodcastsFoundation10MTCategoryC22predicateForCategories4withSo11NSPredicateCSayAA6AdamIDVG_tFZ_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = 0x44496D616461;
  *(v2 + 40) = 0xE600000000000000;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v3, 0);
    v4 = v15;
    v5 = (a1 + 32);
    sub_1D8E40D20();
    do
    {
      v6 = *v5++;
      v7 = sub_1D917927C();
      v16 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_1D8D41BE0((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v4 = v16;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      --v3;
    }

    while (v3);
  }

  sub_1D8D4D430();
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  *(v2 + 104) = sub_1D8D6E8B8();
  *(v2 + 72) = v4;
  return sub_1D9178C8C();
}

id _s18PodcastsFoundation10MTCategoryC37predicateForLibraryCategoriesMatchingySo11NSPredicateCSSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D8D34978();
  *(v4 + 32) = 1701667182;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  v23 = sub_1D9178C8C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D918A530;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  *(v7 + 96) = v5;
  *(v7 + 104) = v6;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;

  v8 = sub_1D9178C8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D918C190;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D918C190;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D9189060;
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  *(v11 + 32) = 0x7473657265746E69;
  *(v11 + 40) = 0xE800000000000000;
  *(v11 + 96) = v5;
  *(v11 + 104) = v6;
  *(v11 + 72) = 0x7473657265746E69;
  *(v11 + 80) = 0xE800000000000000;
  *(v11 + 136) = v5;
  *(v11 + 144) = v6;
  strcpy((v11 + 112), "interestValue");
  *(v11 + 126) = -4864;
  *(v10 + 32) = sub_1D9178C8C();
  *(v10 + 40) = _s18PodcastsFoundation10MTCategoryC034predicateForFollowedShowCategorieseH9InLibrarySo11NSPredicateCyFZ_0();
  v12 = sub_1D91785DC();

  v13 = objc_opt_self();
  v14 = [v13 orPredicateWithSubpredicates_];

  *(v9 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D918C190;
  *(v15 + 32) = v23;
  *(v15 + 40) = v8;
  v16 = v23;
  v17 = v8;
  v18 = sub_1D91785DC();

  v19 = [v13 orPredicateWithSubpredicates_];

  *(v9 + 40) = v19;
  v20 = sub_1D91785DC();

  v21 = [v13 andPredicateWithSubpredicates_];

  return v21;
}

uint64_t static MTCategory.sortDescriptorsForCategoriesInLibrary()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189070;
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = [v1 initWithKey:v2 ascending:1];

  *(v0 + 32) = v3;
  return v0;
}

uint64_t _s18PodcastsFoundation10MTCategoryC36sortDescriptorsForCategoriesInSearchSaySo16NSSortDescriptorCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  return v0;
}

id MTChapter.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTChapter.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTChapter();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTChapter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTChapter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MTChapter.timeframes.getter()
{
  v1 = [v0 timeframesData];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1D9176C8C();
  v5 = v4;

  v6 = sub_1D917656C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1D917655C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
  sub_1D8FB425C(&qword_1ECAB8528, &qword_1ECAB8530);
  sub_1D917654C();

  sub_1D8D7567C(v3, v5);
  return v10;
}

id MTChapter.chapterType.getter@<X0>(BOOL *a1@<X8>)
{
  result = [v1 chapterTypeIntValue];
  *a1 = result == 1;
  return result;
}

uint64_t MTChapter.FieldNames.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D917980C();

  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t MTChapter.FieldNames.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x486B726F77747261;
    v8 = 0xD000000000000016;
    if (v1 == 10)
    {
      v8 = 0xD000000000000012;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000013;
    if (v1 != 7)
    {
      v9 = 0x576B726F77747261;
    }

    if (v1 == 6)
    {
      v9 = 0x6D617266656D6974;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x657470616843544DLL;
    v3 = 0x65646F73697065;
    v4 = 25705;
    if (v1 != 4)
    {
      v4 = 0x656C746974;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x7372657470616863;
    if (v1 != 1)
    {
      v5 = 0x5372657470616863;
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
}

uint64_t sub_1D8FB3D5C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = MTChapter.FieldNames.rawValue.getter();
  v4 = v3;
  if (v2 == MTChapter.FieldNames.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

uint64_t sub_1D8FB3DF8()
{
  v1 = *v0;
  sub_1D9179DBC();
  MTChapter.FieldNames.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FB3E60()
{
  v2 = *v0;
  MTChapter.FieldNames.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FB3EC4()
{
  v1 = *v0;
  sub_1D9179DBC();
  MTChapter.FieldNames.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FB3F28@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return MTChapter.FieldNames.init(rawValue:)(a1);
}

unint64_t sub_1D8FB3F34@<X0>(unint64_t *a1@<X8>)
{
  result = MTChapter.FieldNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id static MTChapter.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1D8FB3FC8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 id];
  v4 = sub_1D917820C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1D8FB4020(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 timeframesData];
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

void sub_1D8FB4088(uint64_t *a1, void **a2)
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
  [v2 setTimeframesData_];
}

uint64_t MTChapter.timeframes.setter()
{
  v1 = v0;
  v2 = sub_1D91765CC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D91765BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
  sub_1D8FB425C(&qword_1ECAB7650, &qword_1ECAB7658);
  v5 = sub_1D91765AC();
  v7 = v6;

  sub_1D8D752C4(v5, v7);
  v8 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  sub_1D8D7567C(v5, v7);
  [v1 setTimeframesData_];

  return sub_1D8D75668(v5, v7);
}

uint64_t sub_1D8FB425C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7648, &qword_1D9197C90);
    sub_1D8FB42E4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8FB42E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ServerTimeframe();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*MTChapter.timeframes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MTChapter.timeframes.getter();
  return sub_1D8FB4370;
}

uint64_t sub_1D8FB4370(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    MTChapter.timeframes.setter();
  }

  else
  {
    v6 = *a1;
    return MTChapter.timeframes.setter();
  }
}

id (*MTChapter.chapterType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 chapterTypeIntValue] == 1;
  return sub_1D8FB4438;
}

__n128 MTChapter.artworkModel.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 artworkTemplateURL];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v9 = [v2 artworkWidth];
  if (!v9)
  {

LABEL_9:
    sub_1D8D39E08(&v37);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v2 artworkHeight];
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  sub_1D91770FC();
  v14 = v13;
  sub_1D91770FC();
  v16 = v15;
  v17 = [v2 artworkBackgroundColor];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1D917820C();
    v21 = v20;

    v22 = sub_1D8D3707C(v19, v21);
    v24 = v23;
    v36 = v22;
  }

  else
  {
    v36 = 0;
    v24 = -1;
  }

  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v25 = word_1EDCD78A8;
  v26 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  v27 = byte_1EDCD7898;

  *&v37 = v6;
  *(&v37 + 1) = v8;
  v38 = 0uLL;
  LOBYTE(v39) = -1;
  *(&v39 + 1) = v14;
  v40.n128_u64[0] = v16;
  v40.n128_u64[1] = v36;
  LOBYTE(v41) = v24;
  *(&v41 + 1) = 0;
  LOBYTE(v42) = -1;
  *(&v42 + 1) = 0;
  LOBYTE(v43) = -1;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = -1;
  *(&v44 + 1) = 0;
  LOWORD(v45) = 1279;
  BYTE2(v45) = v25;
  BYTE3(v45) = v26;
  *(&v45 + 1) = 0;
  *&v46 = 0;
  BYTE8(v46) = v27;
  *(&v46 + 9) = 0;
  v47 = 0uLL;
  nullsub_1(&v37, v28, v29, v30);
LABEL_15:
  v31 = v46;
  *(a1 + 128) = v45;
  *(a1 + 144) = v31;
  *(a1 + 160) = v47;
  v32 = v42;
  *(a1 + 64) = v41;
  *(a1 + 80) = v32;
  v33 = v44;
  *(a1 + 96) = v43;
  *(a1 + 112) = v33;
  v34 = v38;
  *a1 = v37;
  *(a1 + 16) = v34;
  result = v40;
  *(a1 + 32) = v39;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1D8FB46F4()
{
  result = qword_1ECAB8538;
  if (!qword_1ECAB8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8538);
  }

  return result;
}

void *sub_1D8FB47BC()
{
  v1 = [v0 entities];
  sub_1D8CF2154(0, &qword_1ECAB8540, 0x1E695D5B8);
  v2 = sub_1D91785FC();

  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA72AA90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 name];
      if (!v8)
      {
        sub_1D917820C();
LABEL_5:

        goto LABEL_6;
      }

      v9 = v8;
      v10 = sub_1D917820C();
      v12 = v11;

      v13 = sub_1D917820C();
      if (!v12)
      {
        goto LABEL_5;
      }

      if (v10 == v13 && v12 == v14)
      {

LABEL_21:

        return v6;
      }

      v16 = sub_1D9179ACC();

      if (v16)
      {
        goto LABEL_21;
      }

LABEL_6:

      ++v4;
      if (v7 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  return 0;
}

uint64_t sub_1D8FB49B0(unint64_t a1)
{
  v1 = a1;
  v51 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v45 = v1;
    v46 = v1 & 0xC000000000000001;
    v42 = v1 + 32;
    v43 = v1 & 0xFFFFFFFFFFFFFF8;
    v44 = v2;
    while (1)
    {
      if (v46)
      {
        v5 = MEMORY[0x1DA72AA90](v4, v1);
        v6 = __OFADD__(v4, 1);
        v7 = v4 + 1;
        if (v6)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v4 >= *(v43 + 16))
        {
          goto LABEL_44;
        }

        v5 = *(v42 + 8 * v4);
        v6 = __OFADD__(v4, 1);
        v7 = v4 + 1;
        if (v6)
        {
          goto LABEL_43;
        }
      }

      v47 = v5;
      v48 = v7;
      v50 = v3;
      v8 = [v5 elements];
      sub_1D8CF2154(0, &qword_1ECAB8550, 0x1E695D5D8);
      v9 = sub_1D91785FC();

      if (!(v9 >> 62))
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          break;
        }

        goto LABEL_34;
      }

      v10 = sub_1D917935C();
      if (v10)
      {
        break;
      }

LABEL_34:

      v34 = [v47 name];
      if (!v34)
      {
        sub_1D917820C();
        v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      }

      v35 = objc_allocWithZone(MEMORY[0x1E695D5D0]);
      v36 = sub_1D91785DC();

      v37 = [v35 initWithName:v34 elements:v36];

      v38 = [v47 partialIndexPredicate];
      [v37 setPartialIndexPredicate_];

      v39 = v37;
      MEMORY[0x1DA729B90]();
      v4 = v48;
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      sub_1D917869C();

      v1 = v45;
      v3 = MEMORY[0x1E69E7CC0];
      if (v48 == v44)
      {
        return v51;
      }
    }

    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA72AA90](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v2 = sub_1D917935C();
        goto LABEL_3;
      }

      v14 = [v12 propertyName];
      if (!v14)
      {
        goto LABEL_29;
      }

      v15 = v14;
      v16 = sub_1D917820C();
      v18 = v17;

      v19 = [v49 propertiesByName];
      sub_1D8CF2154(0, &unk_1EDCD0950, 0x1E695D6D8);
      v20 = sub_1D917805C();

      if (!*(v20 + 16))
      {
        break;
      }

      v21 = sub_1D8D33C70(v16, v18);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_28;
      }

      v24 = *(*(v20 + 56) + 8 * v21);

      v25 = v24;
      v26 = [v13 collationType];
      v27 = [objc_allocWithZone(MEMORY[0x1E695D5D8]) initWithProperty:v25 collationType:v26];

      [v27 setAscending_];
      v28 = v27;
      MEMORY[0x1DA729B90]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      sub_1D917869C();

LABEL_15:
      ++v11;
      if (v1 == v10)
      {
        goto LABEL_34;
      }
    }

LABEL_28:

LABEL_29:
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917744C();
    __swift_project_value_buffer(v29, qword_1EDCD0F88);
    v30 = sub_1D917741C();
    v31 = sub_1D9178CFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D8CEC000, v30, v31, "Missing property!", v32, 2u);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    goto LABEL_15;
  }

  return v3;
}

void *sub_1D8FB4F34()
{
  v0 = sub_1D917903C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5B8]) init];
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setName_];

  type metadata accessor for MTChapter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    sub_1D917820C();
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v2 setManagedObjectClassName_];

  v29 = v2;
  v30 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v30 setName_];

  sub_1D917901C();
  sub_1D917904C();
  [v30 setOptional_];
  v26 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v26 setName_];

  sub_1D917901C();
  sub_1D917904C();
  [v26 setOptional_];
  v8 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v8 setName_];

  sub_1D917902C();
  sub_1D917904C();
  v10 = sub_1D9179D9C();
  v28 = v8;
  [v8 setDefaultValue_];

  [v8 setOptional_];
  v27 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v27 setName_];

  sub_1D9178FFC();
  sub_1D917904C();
  [v27 setOptional_];
  v12 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v12 setName_];

  sub_1D917900C();
  sub_1D917904C();
  [v12 setOptional_];
  v14 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v14 setName_];

  sub_1D917900C();
  sub_1D917904C();
  v25 = v14;
  [v14 setOptional_];
  v16 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v16 setName_];

  sub_1D917901C();
  v18 = v16;
  sub_1D917904C();
  [v12 setOptional_];
  v19 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v19 setName_];

  sub_1D917901C();
  sub_1D917904C();
  [v19 setOptional_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D91A1B90;
  *(inited + 32) = v30;
  *(inited + 40) = v26;
  *(inited + 48) = v28;
  *(inited + 56) = v27;
  *(inited + 64) = v12;
  *(inited + 72) = v14;
  *(inited + 80) = v18;
  *(inited + 88) = v19;
  v22 = [v29 properties];
  sub_1D8CF2154(0, &unk_1EDCD0950, 0x1E695D6D8);
  sub_1D91785FC();

  sub_1D8E30038(inited);
  v23 = sub_1D91785DC();

  [v29 setProperties_];

  return v29;
}

void _s18PodcastsFoundation9MTChapterC20addChapterPropertiesyySo20NSManagedObjectModelCFZ_0(void *a1)
{
  v2 = sub_1D917903C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD0F88);
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "Adding chapter properties.", v7, 2u);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  v8 = sub_1D8FB47BC();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D8FB4F34();
    v11 = [a1 entities];
    sub_1D8CF2154(0, &qword_1ECAB8540, 0x1E695D5B8);
    v12 = sub_1D91785FC();

    MEMORY[0x1DA729B90]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v36 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D917863C();
    }

    sub_1D917869C();
    v13 = sub_1D91785DC();

    [a1 setEntities_];

    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v10 setVersionHashModifier_];

    v15 = [objc_allocWithZone(MEMORY[0x1E695D6E8]) init];
    v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v15 setName_];

    [v15 setDestinationEntity_];
    [v15 setOptional_];
    [v15 setMaxCount_];
    v17 = [objc_allocWithZone(MEMORY[0x1E695D6E8]) init];
    [v17 setDestinationEntity_];
    v18 = v17;
    v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v18 setName_];

    [v18 setOrdered_];
    [v18 setOptional_];

    [v18 setDeleteRule_];
    [v15 setInverseRelationship_];
    [v18 setInverseRelationship_];
    v20 = [v10 properties];
    sub_1D8CF2154(0, &unk_1EDCD0950, 0x1E695D6D8);
    v21 = sub_1D91785FC();

    MEMORY[0x1DA729B90]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D917863C();
    }

    sub_1D917869C();
    v22 = sub_1D91785DC();

    [v10 setProperties_];

    v23 = [v9 indexes];
    sub_1D8CF2154(0, &qword_1ECAB8548, 0x1E695D5D0);
    v24 = sub_1D91785FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D918C190;
    *(inited + 32) = v18;
    v26 = objc_allocWithZone(MEMORY[0x1E695D530]);
    v27 = v18;
    v28 = [v26 init];
    sub_1D917901C();
    sub_1D917904C();
    v29 = v28;
    v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v29 setName_];

    [v29 setOptional_];
    *(inited + 40) = v29;
    v31 = [v9 properties];
    sub_1D91785FC();

    sub_1D8E30038(inited);
    v32 = sub_1D91785DC();

    [v9 setProperties_];

    sub_1D8FB49B0(v24);

    v33 = sub_1D91785DC();

    [v9 setIndexes_];
  }

  else
  {
    v38 = sub_1D917741C();
    v34 = sub_1D9178CFC();
    if (os_log_type_enabled(v38, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8CEC000, v38, v34, "Unable to create chapter relationship. No chapter or episode entity found.", v35, 2u);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSManagedObjectContext.unsafeDelete(chapters:)(NSOrderedSet chapters)
{
  v2 = v1;
  v3 = sub_1D9176A7C();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9178C9C();
  v7 = sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v33)
  {
    v9 = &selRef_allPlayedEpsWeight;
    v10 = &unk_1ECAB0000;
    *&v8 = 136446210;
    v27 = v8;
    do
    {
      sub_1D8D65618(&v32, v31);
      sub_1D8CFAD1C(v31, v30);
      type metadata accessor for MTChapter();
      if (swift_dynamicCast())
      {
        v11 = v34;
        [v2 v9[212]];
      }

      else
      {
        if (v10[395] != -1)
        {
          swift_once();
        }

        v12 = sub_1D917744C();
        __swift_project_value_buffer(v12, qword_1ECAB0C60);
        sub_1D8CFAD1C(v31, v30);
        v13 = sub_1D917741C();
        v14 = sub_1D9178D0C();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v34 = v28;
          *v15 = v27;
          __swift_project_boxed_opaque_existential_1(v30, v30[3]);
          DynamicType = swift_getDynamicType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4450, &qword_1D91891C0);
          v16 = sub_1D917826C();
          v17 = v6;
          v18 = v7;
          v19 = v3;
          v20 = v2;
          v22 = v21;
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          v23 = sub_1D8CFA924(v16, v22, &v34);
          v2 = v20;
          v3 = v19;
          v7 = v18;
          v6 = v17;
          v9 = &selRef_allPlayedEpsWeight;

          *(v15 + 4) = v23;
          _os_log_impl(&dword_1D8CEC000, v13, v14, "Unexpected type %{public}s encountered while deleting chapters.", v15, 0xCu);
          v24 = v28;
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          MEMORY[0x1DA72CB90](v24, -1, -1);
          v25 = v15;
          v10 = &unk_1ECAB0000;
          MEMORY[0x1DA72CB90](v25, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v30);
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      sub_1D91791DC();
    }

    while (v33);
  }

  (*(v26 + 8))(v6, v3);
}

uint64_t sub_1D8FB5F94(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NSManagedObjectContext.unsafeDelete(chapters:)(v4);

  return 1;
}

id static CoreDataFetcher.contextProvider.getter()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

void sub_1D8FB6074(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = [a1 objectInEntity:@"MTPodcast" predicate:a2];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {

      v4 = 0;
    }
  }

  v6 = v4;
  a3();
}

void sub_1D8FB6120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  sub_1D8FB6074(*(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t static CoreDataFetcher.performAndPublishOnPodcast<A>(with:queue:block:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a4;
  v14[7] = a5;
  v15 = v13;

  v16 = NSManagedObjectContext.performAndPublish<A>(queue:_:)(a3, sub_1D8FB635C, v14, a6);

  return v16;
}

void sub_1D8FB6234(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = objc_opt_self();
  v7 = @"MTPodcast";
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [v6 predicateForPodcastUUID_];

  v10 = [a1 objectInEntity:v7 predicate:v9];
  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_5:
  v12 = v11;
  a4();
}

void sub_1D8FB638C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14[2] = a4;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  NSManagedObjectContext.performAndWait<A>(_:)(a5, v14, a4, a6);
}

void sub_1D8FB6448()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v5 = [v1 channelForStoreId_];
  v4();
}

void static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14[2] = a5;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  NSManagedObjectContext.performAndWait<A>(_:)(sub_1D8FB667C, v14, a5, a6);
}

void sub_1D8FB65E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [a1 episodeForUuid_];

  a4(v7);
}

void static CoreDataFetcher.performAndWaitWithSaveOnEpisode(with:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 mainOrPrivateContext];

  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  v14[4] = sub_1D8FB68DC;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_18_0;
  v12 = _Block_copy(v14);

  v13 = v10;

  [v13 performBlockAndWaitWithSave_];
  _Block_release(v12);
}

void sub_1D8FB682C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [a2 episodeForUuid_];

  swift_beginAccess();
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;

  v11 = v9;
  a5(v9);
}

void sub_1D8FB691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 privateQueueContext];

  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v18[4] = a6;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D8CF5F60;
  v18[3] = a7;
  v16 = _Block_copy(v18);
  v17 = v14;

  [v17 performBlock_];
  _Block_release(v16);
}

void sub_1D8FB6A68(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, SEL *a6)
{
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [a1 *a6];

  a4(v10);
}

void static CoreDataFetcher.fetchStationShow(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 privateQueueContext];

  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = v10;
  v11[6] = a3;
  v11[7] = a4;
  v14[4] = sub_1D8FB6DFC;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_30_0;
  v12 = _Block_copy(v14);

  v13 = v10;

  [v13 performBlock_];
  _Block_release(v12);
}

void sub_1D8FB6C5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *))
{
  v15 = 0;
  v9 = swift_allocObject();
  v9[2] = &v15;
  v9[3] = a4;
  v9[4] = a2;
  v9[5] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8FBA214;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_189;
  v11 = _Block_copy(aBlock);
  v12 = a4;

  [v12 performBlockAndWait_];

  _Block_release(v11);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    a5(v13);
  }
}

uint64_t static CoreDataFetcher.fetchStationShow(stationShowUuid:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = 0;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v7 = [objc_opt_self() sharedInstance];
    v6 = [v7 mainOrPrivateContext];
  }

  v8 = swift_allocObject();
  v8[2] = &v17;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D8FB707C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_39_0;
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = v6;

  [v12 performBlockAndWait_];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
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

void sub_1D8FB7004(void **a1, void *a2)
{
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [a2 podcastPlaylistSettingsForUuid_];

  v6 = *a1;
  *a1 = v5;
}

void sub_1D8FB707C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1D8FB7004(*(v0 + 16), *(v0 + 24));
}

void static CoreDataFetcher.fetchPodcast(adamId:feedUrl:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 privateQueueContext];

  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = v12;
  v13[7] = a4;
  v13[8] = a5;
  v16[4] = sub_1D8FB71E4;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D8CF5F60;
  v16[3] = &block_descriptor_45_0;
  v14 = _Block_copy(v16);

  v15 = v12;

  [v15 performBlock_];
  _Block_release(v14);
}

void sub_1D8FB71E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = _s18PodcastsFoundation15CoreDataFetcherC12fetchPodcast6adamId7feedUrl4withSo9MTPodcastCSgs5Int64V_SSSgSo22NSManagedObjectContextCtFZ_0(v1, v2, v3, v4);
  v5();
}

uint64_t static CoreDataFetcher.performAndWaitOnPodcast<A>(adamId:feedUrl:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 mainOrPrivateContext];

  (*(*(a6 - 8) + 56))(a7, 1, 1, a6);
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = v7;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = v16;
  v17[8] = a7;
  v17[9] = a4;
  v17[10] = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D8FB8FD4;
  *(v18 + 24) = v17;
  v22[4] = sub_1D8EDCFE0;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D8D24488;
  v22[3] = &block_descriptor_55;
  v19 = _Block_copy(v22);

  v20 = v16;

  [v20 performBlockAndWait_];

  _Block_release(v19);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8FB7458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v22 = a6;
  v14 = sub_1D91791BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  v19 = _s18PodcastsFoundation15CoreDataFetcherC12fetchPodcast6adamId7feedUrl4withSo9MTPodcastCSgs5Int64V_SSSgSo22NSManagedObjectContextCtFZ_0(a2, a3, a4, a5);
  a7();

  (*(*(a9 - 8) + 56))(v18, 0, 1, a9);
  return (*(v15 + 40))(v22, v18, v14);
}

uint64_t sub_1D8FB75B4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v4 = sub_1D917908C();
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = v4;
  v8 = sub_1D917935C();
  v4 = v7;
  if (v8 >= 1)
  {
LABEL_3:
    v5 = *a3;
    *a3 = v4;
  }

LABEL_4:
}

void static CoreDataFetcher.fetchEpisode(contentId:guid:title:pubDate:podcastUuid:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a5;
  v32 = a3;
  v33 = a4;
  HIDWORD(v31) = a2;
  v37 = a11;
  v38 = a8;
  v36 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v31 - v17;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 privateQueueContext];

  sub_1D8CF6B1C(a7, v18);
  v21 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v34;
  *(v24 + 24) = a1;
  *(v24 + 32) = BYTE4(v31) & 1;
  v25 = v33;
  *(v24 + 40) = v32;
  *(v24 + 48) = v25;
  *(v24 + 56) = v35;
  *(v24 + 64) = a6;
  sub_1D8E964A4(v18, v24 + v21);
  v26 = (v24 + v22);
  v27 = v37;
  *v26 = v38;
  v26[1] = a9;
  *(v24 + v23) = v20;
  v28 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v36;
  v28[1] = v27;
  aBlock[4] = sub_1D8FB900C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_61;
  v29 = _Block_copy(aBlock);

  v30 = v20;

  [v30 performBlock_];
  _Block_release(v29);
}

uint64_t static CoreDataFetcher.fetchEpisodes(for:sortDescriptors:fetchLimit:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v19 = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v9 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v10 = sub_1D91785DC();
  [v9 setSortDescriptors_];

  if ((a4 & 1) == 0)
  {
    [v9 setFetchLimit_];
  }

  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = v9;
  v11[4] = &v19;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D8FBA0CC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_71;
  v13 = _Block_copy(aBlock);
  v14 = a5;
  v15 = v9;

  [v14 performBlockAndWait_];

  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v17 = v19;

    return v17;
  }

  return result;
}

uint64_t static CoreDataFetcher.fetchEpisodes(fromSeason:newerThanEpisodeNumber:inPodcastWithUUID:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 privateQueueContext];

  v6 = objc_opt_self();
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v8 = [v6 predicateForAllEpisodesOnPodcastUuid_];

  v9 = [v6 predicateForSeasonNumber_];
  v10 = [v6 predicateForEpisodesWithEpisodeNumbersGreaterThan_];
  v11 = [v8 AND_];
  v12 = [v11 AND_];

  v23 = 0;
  v13 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v13 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v14 = sub_1D91785DC();
  [v13 setSortDescriptors_];

  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v13;
  v15[4] = &v23;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D8FBA218;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_82_0;
  v17 = _Block_copy(aBlock);
  v18 = v5;
  v19 = v13;

  [v18 performBlockAndWait_];

  _Block_release(v17);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v21 = v23;

    if (v21)
    {
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v21;
  }

  return result;
}

uint64_t static CoreDataFetcher.fetchEpisodes(newerThan:inPodcastWithUUID:)()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = objc_opt_self();
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v2 predicateForAllEpisodesOnPodcastUuid_];

  v5 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v6 = [v2 predicateForEpisodesPublishedAfterDate_];

  v7 = [v4 AND_];
  v18 = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v8 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v9 = sub_1D91785DC();
  [v8 setSortDescriptors_];

  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v8;
  v10[4] = &v18;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8FBA218;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_93;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = v8;

  [v13 performBlockAndWait_];

  _Block_release(v12);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v18;

    if (v16)
    {
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v16;
  }

  return result;
}

uint64_t sub_1D8FB819C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v4 = sub_1D917908C();
  if (v4 >> 62)
  {
    v6 = v4;
    v7 = sub_1D917935C();
    v4 = v6;
    if (v7 >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v5 = *a3;
    *a3 = v4;
    goto LABEL_6;
  }

  v8 = *a3;
  *a3 = MEMORY[0x1E69E7CC0];
LABEL_6:
}

void static CoreDataFetcher.episodeUuid(for:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else if ([objc_opt_self() isNotEmpty_])
  {
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 privateQueueContext];

    v8 = [objc_opt_self() predicateForEpisodeStoreTrackId_];
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = a2;
    v9[5] = a3;
    v13[4] = sub_1D8FBA0D8;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1D8CF5F60;
    v13[3] = &block_descriptor_99_1;
    v10 = _Block_copy(v13);
    v11 = v7;
    v12 = v8;

    [v11 performBlock_];
    _Block_release(v10);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1D8FB844C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = [a1 objectInEntity:@"MTEpisode" predicate:a2];
  if (!v4)
  {
    return a3(0, 0);
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = [v6 uuid]) == 0)
  {

    return a3(0, 0);
  }

  v8 = v7;
  v9 = sub_1D917820C();
  v11 = v10;

  a3(v9, v11);
}

void static CoreDataFetcher.fetchEpisode(for:on:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    goto LABEL_6;
  }

  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = objc_opt_self();
    v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v13 = [v10 predicateForEpisodeGuid:v11 onFeedURL:v12];
  }

  else
  {
LABEL_6:
    v14 = objc_opt_self();
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v13 = [v14 predicateForEpisodeGuid_];
  }

  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 sharedInstance];
  v18 = [v17 privateQueueContext];

  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = v16;
  v19[4] = v18;
  v19[5] = a5;
  v19[6] = a6;
  v22[4] = sub_1D8FBA0E4;
  v22[5] = v19;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D8CF5F60;
  v22[3] = &block_descriptor_105_0;
  v20 = _Block_copy(v22);
  v21 = v18;

  [v21 performBlock_];

  _Block_release(v20);
}

void sub_1D8FB8764(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *))
{
  v18 = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v7 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v8 = sub_1D91785DC();
  [v7 setSortDescriptors_];

  [v7 setFetchLimit_];
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = v7;
  v9[4] = &v18;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8FBA218;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_124;
  v11 = _Block_copy(aBlock);
  v12 = a3;
  v13 = v7;

  [v12 performBlockAndWait_];

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    if (sub_1D917935C())
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  isEscapingClosureAtFileLocation = v18;

  if (!isEscapingClosureAtFileLocation)
  {
LABEL_12:
    a4(0);
    return;
  }

  v13 = (isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8);
  if (isEscapingClosureAtFileLocation >> 62)
  {
    goto LABEL_10;
  }

  if (!*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA72AA90](0, isEscapingClosureAtFileLocation);
    goto LABEL_8;
  }

  if (v13[2])
  {
    v15 = *(isEscapingClosureAtFileLocation + 32);
LABEL_8:
    v16 = v15;

    a4(v16);

    return;
  }

  __break(1u);
}

id MTPropertyChangeQueryObserver.firstResult.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = (v1 + 16);
  v7[4] = sub_1D8FBA0F4;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D8FB8BE4;
  v7[3] = &block_descriptor_111_0;
  v3 = _Block_copy(v7);

  [v0 results_];
  _Block_release(v3);
  swift_beginAccess();
  v4 = *v2;
  v5 = *v2;

  return v4;
}

void sub_1D8FB8B30(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA72AA90](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_7:
    v3 = v4;
LABEL_10:
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v3;

    return;
  }

  __break(1u);
}

uint64_t sub_1D8FB8BE4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v2 = sub_1D91785FC();
  }

  v4(v2);
}

uint64_t _s18PodcastsFoundation15CoreDataFetcherC05fetchA03for2by4withSaySo9MTPodcastCGSgSo11NSPredicateC_SaySo16NSSortDescriptorCGSo22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v5 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v6 = sub_1D91785DC();
  [v5 setSortDescriptors_];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8FBA138;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_178;
  v9 = _Block_copy(aBlock);
  v10 = a3;
  v11 = v5;

  [v10 performBlockAndWait_];

  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

unint64_t _s18PodcastsFoundation15CoreDataFetcherC12fetchPodcast6adamId7feedUrl4withSo9MTPodcastCSgs5Int64V_SSSgSo22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  if (a3)
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(MTStoreIdentifier) initWithFeedUrl:v7 storeIdentifier:v6];

  v9 = [objc_opt_self() predicateForIdentifer_];
  result = _s18PodcastsFoundation15CoreDataFetcherC05fetchA03for2by4withSaySo9MTPodcastCGSgSo11NSPredicateC_SaySo16NSSortDescriptorCGSo22NSManagedObjectContextCtFZ_0(v9, MEMORY[0x1E69E7CC0], a4);
  if (!result)
  {
    goto LABEL_13;
  }

  v11 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v14 = result;
    v15 = sub_1D917935C();
    result = v14;
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

LABEL_13:

    return 0;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1DA72AA90](0);
    goto LABEL_10;
  }

  if (*(v11 + 16))
  {
    v12 = *(result + 32);
LABEL_10:
    v13 = v12;

    return v13;
  }

  __break(1u);
  return result;
}

void sub_1D8FB900C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = sub_1D8FB922C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4));
  v7();
}

id sub_1D8FB9108(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = sub_1D917935C();
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  result = sub_1D9176CCC();
  v6 = v5;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1DA72AA90](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    result = *(a2 + 32);
  }

  v7 = result;
  if (v3 >= 1)
  {
    v8 = 0;
    v9 = 1.79769313e308;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA72AA90](v8, a2);
      }

      else
      {
        v10 = *(a2 + 8 * v8 + 32);
      }

      v11 = v10;
      ++v8;
      [v10 pubDate];
      v13 = vabdd_f64(v12, v6);
      if (v13 >= v9)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }

      if (v13 < v9)
      {
        v9 = v13;
        v7 = v11;
      }
    }

    while (v3 != v8);
    return v7;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D8FB922C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  v106 = a6;
  v107 = a7;
  v105 = a5;
  v108 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v104 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v100 - v21);
  v23 = sub_1D9176E3C();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v100 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v100 - v32;
  if (!a9)
  {
    goto LABEL_78;
  }

  v34 = HIBYTE(a9) & 0xF;
  if ((a9 & 0x2000000000000000) == 0)
  {
    v34 = a8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
LABEL_78:
    if ((a2 & 1) != 0 || ![objc_opt_self() isNotEmpty_])
    {
      return 0;
    }

    v49 = [objc_opt_self() predicateForEpisodeStoreTrackId_];
    v115 = 0;
    v55 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    [v55 setPredicate_];
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v56 = sub_1D91785DC();
    [v55 setSortDescriptors_];

    v22 = swift_allocObject();
    v57 = v108;
    v22[2] = v108;
    v22[3] = v55;
    v22[4] = &v115;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1D8FBA218;
    *(v58 + 24) = v22;
    v113 = sub_1D8EDCFE0;
    v114 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v110 = 1107296256;
    v111 = sub_1D8D24488;
    v112 = &block_descriptor_135_0;
    v59 = _Block_copy(&aBlock);
    v60 = v57;
    v61 = v55;

    [v60 performBlockAndWait_];

    _Block_release(v59);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      isEscapingClosureAtFileLocation = v115;

      if (!isEscapingClosureAtFileLocation)
      {
LABEL_56:

        return 0;
      }

      v22 = (isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8);
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        if (!*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_55:

          goto LABEL_56;
        }

LABEL_21:
        if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x1DA72AA90](0, isEscapingClosureAtFileLocation);
        }

        else
        {
          if (!v22[2])
          {
            __break(1u);
            goto LABEL_62;
          }

          v62 = *(isEscapingClosureAtFileLocation + 32);
        }

        v63 = v62;

        return v63;
      }

LABEL_54:
      if (!sub_1D917935C())
      {
        goto LABEL_55;
      }

      goto LABEL_21;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v103 = v29;
  if (a4)
  {
    v35 = v30;
    v36 = objc_opt_self();
    v37 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    isEscapingClosureAtFileLocation = [v36 predicateForEpisodeGuid:v37 onPodcastUuid:v38];

    v115 = 0;
    v40 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    [v40 setPredicate_];
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v41 = sub_1D91785DC();
    [v40 setSortDescriptors_];

    v42 = swift_allocObject();
    v43 = v108;
    v42[2] = v108;
    v42[3] = v40;
    v42[4] = &v115;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1D8FBA218;
    *(v44 + 24) = v42;
    v113 = sub_1D8EDCFE0;
    v114 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v110 = 1107296256;
    v111 = sub_1D8D24488;
    v112 = &block_descriptor_168;
    v45 = _Block_copy(&aBlock);
    v46 = v114;
    v47 = v43;
    v48 = v40;

    [v47 performBlockAndWait_];

    _Block_release(v45);
    v49 = swift_isEscapingClosureAtFileLocation();

    if ((v49 & 1) == 0)
    {
      v49 = v115;

      if (v49)
      {
        sub_1D8CF6B1C(v107, v22);
        v50 = v103;
        if ((*(v35 + 48))(v22, 1, v103) != 1)
        {
          (*(v35 + 32))(v33, v22, v50);
          v82 = sub_1D8FB9108(v33, v49);

          (*(v35 + 8))(v33, v50);
          return v82;
        }

        sub_1D8CF5EF8(v22);
        v51 = (v49 & 0xFFFFFFFFFFFFFF8);
        if (!(v49 >> 62))
        {
          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_11;
          }

          goto LABEL_59;
        }

LABEL_58:
        if (sub_1D917935C())
        {
LABEL_11:
          if ((v49 & 0xC000000000000001) == 0)
          {
            if (v51[2])
            {
              v52 = *(v49 + 32);
LABEL_14:
              v53 = v52;

              return v53;
            }

            __break(1u);
            goto LABEL_64;
          }

LABEL_62:
          v52 = MEMORY[0x1DA72AA90](0, v49);
          goto LABEL_14;
        }

LABEL_59:

LABEL_67:

        return 0;
      }

      return 0;
    }

    __break(1u);
    goto LABEL_53;
  }

  if ((a2 & 1) == 0)
  {
    v101 = v31;
    v102 = v30;
    v64 = [objc_opt_self() isNotEmpty_];
    v31 = v101;
    v30 = v102;
    if (v64)
    {
      v65 = objc_opt_self();
      v66 = [v65 predicateForEpisodeStoreTrackId_];
      v67 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v68 = [v65 predicateForAllEpisodesOnPodcastUuid_];

      v69 = [v66 AND_];
      v115 = 0;
      v70 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
      v71 = v69;
      v100 = v71;
      v72 = [v70 initWithEntityName_];
      [v72 setPredicate_];
      sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
      v73 = sub_1D91785DC();
      [v72 setSortDescriptors_];

      v74 = swift_allocObject();
      v75 = v108;
      v74[2] = v108;
      v74[3] = v72;
      v74[4] = &v115;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_1D8FBA218;
      *(isEscapingClosureAtFileLocation + 24) = v74;
      v113 = sub_1D8EDCFE0;
      v114 = isEscapingClosureAtFileLocation;
      aBlock = MEMORY[0x1E69E9820];
      v110 = 1107296256;
      v111 = sub_1D8D24488;
      v112 = &block_descriptor_157;
      v76 = _Block_copy(&aBlock);
      v51 = v75;
      v77 = v72;

      v46 = v100;

      [v51 performBlockAndWait_];

      _Block_release(v76);
      v49 = swift_isEscapingClosureAtFileLocation();

      if (v49)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v49 = v115;

      if (v49)
      {
        sub_1D8CF6B1C(v107, v19);
        v79 = v102;
        v78 = v103;
        if ((*(v102 + 48))(v19, 1, v103) != 1)
        {
          (*(v79 + 32))(v27, v19, v78);
          v99 = sub_1D8FB9108(v27, v49);

          (*(v79 + 8))(v27, v78);
          return v99;
        }

        sub_1D8CF5EF8(v19);
        v51 = (v49 & 0xFFFFFFFFFFFFFF8);
        if (!(v49 >> 62))
        {
          result = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
LABEL_73:

            return 0;
          }

LABEL_32:
          if ((v49 & 0xC000000000000001) != 0)
          {
            v80 = MEMORY[0x1DA72AA90](0, v49);
          }

          else
          {
            if (!v51[2])
            {
              __break(1u);
              return result;
            }

            v80 = *(v49 + 32);
          }

          v81 = v80;

          return v81;
        }

LABEL_72:
        result = sub_1D917935C();
        if (!result)
        {
          goto LABEL_73;
        }

        goto LABEL_32;
      }

      v31 = v101;
      v30 = v102;
    }
  }

  if (v106)
  {
    v83 = v31;
    v84 = v30;
    v85 = objc_opt_self();
    v86 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v87 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v51 = [v85 predicateForEpisodeTitle:v86 onPodcastUuid:v87];

    v115 = 0;
    v88 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    [v88 setPredicate_];
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v89 = sub_1D91785DC();
    [v88 setSortDescriptors_];

    v90 = swift_allocObject();
    v91 = v108;
    v90[2] = v108;
    v90[3] = v88;
    v90[4] = &v115;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_1D8FBA218;
    *(isEscapingClosureAtFileLocation + 24) = v90;
    v113 = sub_1D8EDCFE0;
    v114 = isEscapingClosureAtFileLocation;
    aBlock = MEMORY[0x1E69E9820];
    v110 = 1107296256;
    v111 = sub_1D8D24488;
    v112 = &block_descriptor_146;
    v92 = _Block_copy(&aBlock);
    v46 = v91;
    v93 = v88;

    [v46 performBlockAndWait_];

    _Block_release(v92);
    v49 = swift_isEscapingClosureAtFileLocation();

    if (v49)
    {
      __break(1u);
      goto LABEL_58;
    }

    v49 = v115;

    v94 = v104;
    if (v49)
    {
      sub_1D8CF6B1C(v107, v104);
      v95 = v103;
      if ((*(v84 + 48))(v94, 1, v103) != 1)
      {
        (*(v84 + 32))(v83, v94, v95);
        v98 = sub_1D8FB9108(v83, v49);

        (*(v84 + 8))(v83, v95);
        return v98;
      }

      sub_1D8CF5EF8(v94);
      isEscapingClosureAtFileLocation = v49 & 0xFFFFFFFFFFFFFF8;
      if (!(v49 >> 62))
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_66:

          goto LABEL_67;
        }

        goto LABEL_45;
      }

LABEL_65:
      if (!sub_1D917935C())
      {
        goto LABEL_66;
      }

LABEL_45:
      if ((v49 & 0xC000000000000001) != 0)
      {
        v96 = MEMORY[0x1DA72AA90](0, v49);
        goto LABEL_48;
      }

      if (*(isEscapingClosureAtFileLocation + 16))
      {
        v96 = *(v49 + 32);
LABEL_48:
        v97 = v96;

        return v97;
      }

      __break(1u);
      goto LABEL_72;
    }
  }

  return 0;
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

void FetchedResultsCountPublisher.init(identifier:entityName:predicate:managedObjectContext:fetchLimit:receiveOn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, char a6@<W7>, void *a7@<X8>, uint64_t a8)
{
  v14 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v16 = [v14 initWithEntityName_];

  [v16 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v17 = sub_1D91785DC();
  [v16 setSortDescriptors_];

  [v16 setFetchBatchSize_];
  [v16 setIncludesSubentities_];
  [v16 setIncludesPropertyValues_];
  [v16 setReturnsObjectsAsFaults_];
  if ((a6 & 1) == 0)
  {
    [v16 setFetchLimit_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4438, &qword_1D91891A0);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;

  v18[14] = v19;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v16;
  v18[5] = a4;
  v18[6] = a8;
  v18[7] = sub_1D8D23164;
  v18[8] = 0;
  v18[9] = sub_1D8E3B050;
  v18[10] = 0;
  v18[11] = sub_1D8D38B78;
  v18[12] = 0;
  *a7 = v18;
}

void static FetchedResultsListPublisher.unsafeUnlimitedListPublisher(identifier:entityName:predicate:sortDescriptors:managedObjectContext:receiveOn:transform:updateRequiredComparator:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, void *a4@<X6>, void *a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  v16 = a3;

  v17 = a4;
  v18 = a5;

  sub_1D8D28C14(a1, a2, v16, 0x7FFFFFFFFFFFFFFFLL, v17, a6, v18, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_1D8FBA574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  result = type metadata accessor for FRPSectionInfo();
  *(a4 + *(result + 44)) = a2;
  return result;
}

uint64_t FRPOutput.init(content:hasMore:totalCount:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for FRPOutput();
  *(a5 + *(result + 28)) = a2;
  *(a5 + *(result + 32)) = a3;
  return result;
}

void FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8558, &qword_1D91A1BF0);
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = sub_1D8D28E48();
  [v16 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v17 = sub_1D91785DC();
  [v16 setSortDescriptors_];

  [v16 setFetchBatchSize_];
  [v16 setFetchLimit_];
  type metadata accessor for FetchedResultsPublisherImplementation();
  v18 = swift_allocObject();
  *(v18 + 16) = a11;
  *(v18 + 24) = a12;
  swift_allocObject();
  *(&v20 + 1) = sub_1D8E29C9C;
  *&v20 = a10;
  v19 = sub_1D8D28EA0(a1, a2, v16, a4, a5, a6, a8, a9, v20, v18);

  *a7 = v19;
}

uint64_t FetchedResultsSingleItemPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v20 = a1;
  v6 = *(a2 + 24);
  v21 = *(a2 + 16);
  v5 = v21;
  v22 = MEMORY[0x1E69E6530];
  v23 = v6;
  v24 = MEMORY[0x1E69E6550];
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher();
  v17 = sub_1D91791BC();
  swift_getWitnessTable();
  v7 = sub_1D917768C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *v4;
  v13 = sub_1D8D12EBC();
  v21 = v13;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = v6;
  v15 = v19;
  v14[4] = v18;
  v14[5] = v15;
  sub_1D9177B9C();

  sub_1D917767C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D8FBAB54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  type metadata accessor for FRPSectionInfo();
  sub_1D91786FC();
  swift_getWitnessTable();
  sub_1D9178BDC();
  if (!v6)
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  sub_1D91786FC();
  swift_getWitnessTable();
  sub_1D9178BDC();
}

void FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8558, &qword_1D91A1BF0);
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_1D8D28E48();
  [v15 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v16 = sub_1D91785DC();

  [v15 setSortDescriptors_];

  if (a4 >= 100)
  {
    v17 = 100;
  }

  else
  {
    v17 = a4;
  }

  [v15 setFetchBatchSize_];
  type metadata accessor for FetchedResultsPublisherImplementation();
  swift_allocObject();
  v18 = sub_1D8D28EA0(a1, a2, v15, a5, a7, a8, a9, a10, a11, a12);

  *a6 = v18;
}

void FetchedResultsSectionedPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v14 = sub_1D8D12EBC();
  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  v10 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher();
  WitnessTable = swift_getWitnessTable();
  PFProducer.receive<A>(subscriber:)(a1, v10, a3, WitnessTable, a4);
}

uint64_t sub_1D8FBAEE8()
{
  result = sub_1D8FBB1E0();
  if (result)
  {
    v1 = result;
    v2 = sub_1D8D42180();
    v4 = v3;
    v6 = v5;

    return v2 < v4 && v2 < v6;
  }

  return result;
}

uint64_t sub_1D8FBAF38()
{
  result = sub_1D8FBB1E0();
  if (result)
  {
    v1 = result;
    v2 = sub_1D8D42180();
    v4 = v3;
    v6 = v5;

    return v2 < v6 && v2 >= v4;
  }

  return result;
}

void sub_1D8FBAF90()
{
  v0 = sub_1D8FBB1E0();
  if (v0)
  {
    v1 = v0;
    sub_1D8FBAFEC();
  }
}

void sub_1D8FBAFEC()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v23 = 0;
  v3 = qword_1ECAB8638;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v15 = v0;
  v16 = &v23;
  v5 = *((v2 & v1) + 0x50);
  v6 = *((v2 & v1) + 0x58);
  v7 = *((v2 & v1) + 0x60);
  v8 = *((v2 & v1) + 0x68);

  aBlock = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v9 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging();
  Synchronized.modify(_:)(sub_1D8FBD904, &v14, v4, v9);

  if (v23 == 1)
  {
    v10 = *(v0 + qword_1ECAB8608);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = v6;
    v12[4] = v7;
    v12[5] = v8;
    v12[6] = v11;
    v21 = sub_1D8FBD90C;
    v22 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1D8CF5F60;
    v20 = &block_descriptor_102;
    v13 = _Block_copy(&aBlock);

    [v10 performBlock_];
    _Block_release(v13);
  }
}

uint64_t sub_1D8FBB1E0()
{
  v1 = v0[14];
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 96);
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher();
  v2 = sub_1D91791BC();
  sub_1D8D0566C(sub_1D8FBD830, v0, v1, v2);
  return v4;
}

uint64_t sub_1D8FBB284@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_1D8FBAB54(a1, v2[2], a2);
}

uint64_t sub_1D8FBB33C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_1ECAB8648 + 16);
  *a1 = *(v1 + qword_1ECAB8648);
  *(a1 + 16) = v2;
}

uint64_t sub_1D8FBB360(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + qword_1ECAB8648;
  v4 = *(v1 + qword_1ECAB8648);
  *v3 = *a1;
  *(v3 + 16) = v2;

  return sub_1D8D4BF5C();
}

uint64_t sub_1D8FBB3AC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCD15F8;
  swift_beginAccess();
  return sub_1D8D088B4(v1 + v3, a1, &qword_1ECAB6DE0, &qword_1D9195250);
}

uint64_t sub_1D8FBB414(uint64_t a1)
{
  v2 = *(v1 + qword_1EDCD1620);
  *(v1 + qword_1EDCD1620) = a1;
}

uint64_t sub_1D8FBB46C(uint64_t a1, unint64_t a2, char *a3)
{
  v93 = a3;
  v88 = a1;
  v99 = *MEMORY[0x1E69E9840];
  v87 = sub_1D91773AC();
  v86 = *(v87 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D917734C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = sub_1D917739C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB1078 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, qword_1ECAB1080);
  v89 = v18;
  (*(v18 + 16))(v21, v22, v17);
  sub_1D917737C();
  sub_1D917731C();

  v92 = v21;
  v23 = sub_1D917737C();
  v24 = sub_1D9178F5C();

  v25 = sub_1D917918C();
  v90 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = v16;
    v28 = v7;
    v29 = swift_slowAlloc();
    *&v97[0] = v29;
    *v26 = 136446210;
    *(v26 + 4) = sub_1D8CFA924(v88, a2, v97);
    v30 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v23, v24, v30, "FetchedResultsPublisher Initial Load", "id: %{name=FRPIdentifier,public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v31 = v29;
    v7 = v28;
    v16 = v27;
    MEMORY[0x1DA72CB90](v31, -1, -1);
    MEMORY[0x1DA72CB90](v26, -1, -1);
  }

  v32 = v6;
  (*(v7 + 16))(v13, v16, v6);
  v33 = sub_1D91773FC();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_1D91773EC();
  v37 = *&v93[qword_1ECAB8630];
  *&v97[0] = 0;
  if (([v37 performFetch_] & 1) == 0)
  {
    v71 = *&v97[0];
    v72 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1EDCD0F80 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v73 = sub_1D917744C();
      __swift_project_value_buffer(v73, qword_1EDCD0F88);
      v74 = v93;
      v75 = v72;
      v76 = sub_1D917741C();
      v77 = sub_1D9178D0C();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v97[0] = v80;
        *v78 = 138412546;
        v81 = [v37 fetchRequest];
        *(v78 + 4) = v81;
        *v79 = v81;
        *(v78 + 12) = 2080;
        *&v94 = v72;
        v82 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        v83 = sub_1D917826C();
        v85 = sub_1D8CFA924(v83, v84, v97);

        *(v78 + 14) = v85;
        _os_log_impl(&dword_1D8CEC000, v76, v77, "Failed to start FetchedResultsPublisher FRC: request: %@\nerror: %s", v78, 0x16u);
        sub_1D8D08A50(v79, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v79, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x1DA72CB90](v80, -1, -1);
        MEMORY[0x1DA72CB90](v78, -1, -1);

        __break(1u);
      }

      __break(1u);
LABEL_24:
      swift_once();
    }
  }

  v38 = *&v97[0];
  v39 = [v37 fetchedObjects];
  v40 = v10;
  if (v39)
  {
    v41 = v39;
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v42 = sub_1D91785FC();
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v43 = v91;
  v88 = v16;
  v44 = v7;
  if (v42 >> 62)
  {
    v45 = sub_1D917935C();
  }

  else
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D8D32440();
  sub_1D8D3852C();
  sub_1D8D15664(v46);
  v47 = sub_1D917737C();
  v91 = v36;
  sub_1D91773DC();
  v48 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    v49 = v86;
    v50 = v87;
    if ((*(v86 + 88))(v43, v87) == *MEMORY[0x1E69E93E8])
    {
      v51 = 0;
      v52 = "[Error] Interval already ended";
    }

    else
    {
      (*(v49 + 8))(v43, v50);
      v52 = "Loaded %{name=ResultCount,public}ld model ids";
      v51 = 1;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    *(v53 + 1) = v51;
    *(v53 + 2) = 2050;
    *(v53 + 4) = v45;
    v54 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v47, v48, v54, "FetchedResultsPublisher Initial Load", v52, v53, 0xCu);
    MEMORY[0x1DA72CB90](v53, -1, -1);
  }

  v55 = *(v44 + 8);
  v55(v40, v32);
  v56 = v93;
  v57 = *&v93[qword_1ECAB8600];
  v58 = qword_1ECAB8638;
  swift_beginAccess();
  v59 = *&v56[v58];
  os_unfair_lock_lock((v59 + 40));
  *(v59 + 16) = 0;
  *(v59 + 24) = v57;
  *(v59 + 32) = 0;
  os_unfair_lock_unlock((v59 + 40));
  swift_endAccess();
  *&v94 = MEMORY[0x1E69E7CD0];
  *(&v94 + 1) = MEMORY[0x1E69E7CD0];
  v95 = 0u;
  memset(v96, 0, 25);
  v60 = v32;
  if (qword_1EDCD06D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v61 = qword_1EDCD06D8;
  v62 = v56;
  v63 = v61;
  sub_1D917730C();
  sub_1D9178F5C();
  v64 = qword_1EDCD06D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1D9189080;
  v67 = *&v62[qword_1ECAB85F8];
  v66 = *&v62[qword_1ECAB85F8 + 8];
  *(v65 + 56) = MEMORY[0x1E69E6158];
  *(v65 + 64) = sub_1D8D34978();
  *(v65 + 32) = v67;
  *(v65 + 40) = v66;
  v68 = v64;

  sub_1D91772EC();

  sub_1D8D50C90(&v94);
  v97[0] = v94;
  v97[1] = v95;
  v98[0] = v96[0];
  *(v98 + 9) = *(v96 + 9);
  sub_1D8D39084("FetchedResultsPublisher Initial Page", 36, 2, v13, v97);
  sub_1D8D08A50(v97, &unk_1ECAB8698, &qword_1D91A2240);

  v55(v13, v60);
  v55(v88, v60);
  result = (*(v89 + 8))(v92, v90);
  v70 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8FBBEF0(uint64_t a1, unint64_t a2, NSObject *a3)
{
  v3 = a3;
  v92 = a1;
  v107 = *MEMORY[0x1E69E9840];
  v96 = (*MEMORY[0x1E69E7D40] & a3->isa);
  v89 = sub_1D91773AC();
  v88 = *(v89 - 8);
  v5 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v95 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v86 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v86 - v15;
  v17 = sub_1D917739C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB1078 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, qword_1ECAB1080);
  v93 = v18;
  v23 = *(v18 + 16);
  v94 = v17;
  v23(v21, v22, v17);
  sub_1D917737C();
  sub_1D917731C();

  v24 = sub_1D917737C();
  v25 = sub_1D9178F5C();

  v26 = sub_1D917918C();
  v97 = v21;
  if (v26)
  {
    v27 = v13;
    v28 = swift_slowAlloc();
    v29 = v16;
    v30 = v8;
    v31 = swift_slowAlloc();
    *&v105[0] = v31;
    *v28 = 136446210;
    *(v28 + 4) = sub_1D8CFA924(v92, a2, v105);
    v32 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v24, v25, v32, "FetchedResultsPublisher Initial Load", "id: %{name=FRPIdentifier,public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v33 = v31;
    v8 = v30;
    v16 = v29;
    MEMORY[0x1DA72CB90](v33, -1, -1);
    v34 = v28;
    v13 = v27;
    MEMORY[0x1DA72CB90](v34, -1, -1);
  }

  (*(v8 + 16))(v13, v16, v7);
  v35 = sub_1D91773FC();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_1D91773EC();
  v39 = *(&v3->isa + qword_1ECAB8630);
  *&v105[0] = 0;
  if (![v39 performFetch_])
  {
    v72 = *&v105[0];
    v73 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1EDCD0F80 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v74 = sub_1D917744C();
      __swift_project_value_buffer(v74, qword_1EDCD0F88);
      v75 = v3;
      v76 = v73;
      v3 = sub_1D917741C();
      v77 = sub_1D9178D0C();

      if (os_log_type_enabled(v3, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v105[0] = v80;
        *v78 = 138412546;
        v81 = [v39 fetchRequest];
        *(v78 + 4) = v81;
        *v79 = v81;
        *(v78 + 12) = 2080;
        *&v98 = v73;
        v82 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        v83 = sub_1D917826C();
        v85 = sub_1D8CFA924(v83, v84, v105);

        *(v78 + 14) = v85;
        _os_log_impl(&dword_1D8CEC000, v3, v77, "Failed to start FetchedResultsPublisher FRC: request: %@\nerror: %s", v78, 0x16u);
        sub_1D8D08A50(v79, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v79, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x1DA72CB90](v80, -1, -1);
        MEMORY[0x1DA72CB90](v78, -1, -1);

        __break(1u);
      }

      __break(1u);
LABEL_19:
      swift_once();
    }
  }

  v91 = v13;
  v40 = *&v105[0];
  v41 = [v39 fetchedObjects];
  v42 = v96[12];
  if (v41)
  {
    v43 = v41;
    sub_1D91785FC();
  }

  else
  {
    sub_1D917866C();
  }

  v92 = v16;
  v90 = v42;
  v44 = sub_1D91786AC();

  sub_1D8D32440();
  sub_1D8D3852C();
  sub_1D8D15664(v45);
  v46 = sub_1D917737C();
  v47 = v95;
  sub_1D91773DC();
  v48 = v38;
  v49 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    v50 = v87;
    sub_1D917740C();
    v86[1] = v48;

    v51 = v88;
    v52 = v89;
    if ((*(v88 + 88))(v50, v89) == *MEMORY[0x1E69E93E8])
    {
      v53 = v8;
      v54 = 0;
      v55 = "[Error] Interval already ended";
    }

    else
    {
      v56 = v50;
      v53 = v8;
      (*(v51 + 8))(v56, v52);
      v55 = "Loaded %{name=ResultCount,public}ld model ids";
      v54 = 1;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    *(v57 + 1) = v54;
    *(v57 + 2) = 2050;
    *(v57 + 4) = v44;
    v58 = v95;
    v59 = sub_1D917732C();
    v60 = v55;
    v47 = v58;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v46, v49, v59, "FetchedResultsPublisher Initial Load", v60, v57, 0xCu);
    MEMORY[0x1DA72CB90](v57, -1, -1);
    v8 = v53;
  }

  v61 = *(v8 + 8);
  v61(v47, v7);
  v62 = *(&v3->isa + qword_1ECAB8600);
  v63 = v96[10];
  v64 = v96[11];
  v65 = v7;
  v66 = v96[13];
  sub_1D8D3859C(0, v62, 0);
  memset(v100, 0, 25);
  v99 = 0u;
  *&v98 = MEMORY[0x1E69E7CD0];
  *(&v98 + 1) = MEMORY[0x1E69E7CD0];
  v67 = v91;
  sub_1D8D32494();
  sub_1D8D13AD8(&v98);
  v105[0] = v98;
  v105[1] = v99;
  *v106 = v100[0];
  *&v106[9] = *(v100 + 9);
  v68 = v90;
  sub_1D8D39084("FetchedResultsPublisher Initial Page", 36, 2, v67, v105);
  v101 = v63;
  v102 = v64;
  v103 = v68;
  v104 = v66;
  v69 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
  (*(*(v69 - 8) + 8))(v105, v69);

  v61(v67, v65);
  v61(v92, v65);
  result = (*(v93 + 8))(v97, v94);
  v71 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D8FBC8E4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    sub_1D8D13AD8(a2 + 1);
    swift_endAccess();
    swift_beginAccess();
    v15 = a2[2];
    v19[0] = a2[1];
    v19[1] = v15;
    v20[0] = a2[3];
    *(v20 + 9) = *(a2 + 57);
    v18[0] = a4;
    v18[1] = a5;
    v18[2] = a6;
    v18[3] = a7;
    v16 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v18, v19, v16);
    sub_1D8D39084("FetchedResultsPublisher FRC Update", 34, 2, a3, v19);
    (*(v17 + 8))(v19, v16);
  }
}

void sub_1D8FBCA60(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  sub_1D8FBD76C();
}

id sub_1D8FBCAC8()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t sub_1D8FBCB40(uint64_t a1)
{
  v2 = *(a1 + qword_1ECAB85F8 + 8);

  v3 = *(a1 + qword_1ECAB8618 + 8);

  v4 = *(a1 + qword_1ECAB8620 + 8);

  v5 = *(a1 + qword_1ECAB8628 + 8);

  v6 = *(a1 + qword_1ECAB8638);

  v7 = *(a1 + qword_1ECAB8640);

  v8 = *(a1 + qword_1ECAB8648);

  v9 = *(a1 + qword_1ECAB8650 + 8);
  v10 = *(a1 + qword_1ECAB8650 + 16);
  v11 = *(a1 + qword_1ECAB8650 + 24);
  v12 = *(a1 + qword_1ECAB8650 + 32);
  v13 = *(a1 + qword_1ECAB8650 + 40);
  v14 = *(a1 + qword_1ECAB8650 + 48);
  v15 = *(a1 + qword_1ECAB8650 + 56);
  sub_1D8D4F5BC(*(a1 + qword_1ECAB8650));
  sub_1D8D08A50(a1 + qword_1EDCD15F8, &qword_1ECAB6DE0, &qword_1D9195250);
  v16 = *(a1 + qword_1EDCD1620);

  v17 = *(a1 + qword_1EDCD1628);

  v18 = *(a1 + qword_1EDCD1600);
}

uint64_t *sub_1D8FBCC90(uint64_t *result, uint64_t a2, _BYTE *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = result[2];
  if (*result < v5)
  {
    v7 = __OFSUB__(v4, v3);
    v6 = v4 - v3 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 != v7)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v9 = __OFSUB__(v4, v5);
    v8 = v4 - v5 < 0;
  }

  if (v8 != v9)
  {
    v10 = *(a2 + qword_1ECAB8600);
    v7 = __OFADD__(v3, v10);
    v11 = v3 + v10;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      if (v11 < v5)
      {
        v5 = v11;
      }

      result[1] = v5;
      *a3 = 1;
    }
  }

  return result;
}

void sub_1D8FBCCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_1D8D42180();
    if (v16 >= v18 || v16 >= v17)
    {
    }

    else
    {
      memset(v23, 0, 25);
      v22 = 0u;
      *&v21 = MEMORY[0x1E69E7CD0];
      *(&v21 + 1) = MEMORY[0x1E69E7CD0];
      sub_1D8D32494();
      sub_1D8D13AD8(&v21);
      v24[0] = v21;
      v24[1] = v22;
      v25[0] = v23[0];
      *(v25 + 9) = *(v23 + 9);
      sub_1D8D39084("FetchedResultsPublisher Load Next Page", 38, 2, v13, v24);
      v20[1] = a2;
      v20[2] = a3;
      v20[3] = a4;
      v20[4] = a5;
      v19 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
      (*(*(v19 - 8) + 8))(v24, v19);

      (*(v10 + 8))(v13, v9);
    }
  }
}

uint64_t sub_1D8FBCEEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v21[0] = *MEMORY[0x1E69E7D40] & *v1;
  v24 = sub_1D9177E0C();
  v26 = *(v24 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D9177E9C();
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9176EAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v21[1] = *(v1 + qword_1ECAB8610);
  (*(v11 + 16))(v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v13);
  v14 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *((v4 & v3) + 0x50);
  *(v15 + 24) = *(v21[0] + 88);
  *(v15 + 40) = *((v4 & v3) + 0x68);
  *(v15 + 48) = v1;
  (*(v11 + 32))(v15 + v14, v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1D8FBD6A8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_53;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  sub_1D9177E4C();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v18 = v22;
  v19 = v24;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v18, v16);
  _Block_release(v16);
  (*(v26 + 8))(v18, v19);
  (*(v23 + 8))(v9, v25);
}

uint64_t sub_1D8FBD308(uint64_t *a1)
{
  v1 = *a1;
  v2 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1D9176EAC();
  v3 = *((v2 & v1) + 0x50);
  v4 = *((v2 & v1) + 0x58);
  v5 = *((v2 & v1) + 0x68);
  type metadata accessor for FRPSectionInfo();
  sub_1D91786FC();
  type metadata accessor for FRPOutput();
  swift_getFunctionTypeMetadata1();
  sub_1D8CFBDA8(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
  sub_1D91780DC();
  sub_1D917807C();
  swift_endAccess();
  return sub_1D8D15664(v7);
}

uint64_t sub_1D8FBD488(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8FBD4C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t sub_1D8FBD600()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8FBD654()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8FBD6A8()
{
  v1 = *(*(sub_1D9176EAC() - 8) + 80);
  v2 = *(v0 + 48);

  return sub_1D8FBD308(v2);
}

unint64_t sub_1D8FBD718()
{
  result = qword_1ECAB8688;
  if (!qword_1ECAB8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8688);
  }

  return result;
}

void sub_1D8FBD79C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(sub_1D917734C() - 8);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  sub_1D8FBC8E4(v6, v7, v8, v1, v2, v3, v4);
}

uint64_t sub_1D8FBD830@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_56Tm_0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroy_72Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return swift_deallocObject();
}

unint64_t sub_1D8FBD930()
{
  result = qword_1ECAB86A8;
  if (!qword_1ECAB86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86A8);
  }

  return result;
}

uint64_t NSManagedObjectContext.playlist(for:)(void *a1, uint64_t a2, id a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46E8, &unk_1D9192140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  sub_1D8D5055C(a1, a2, a3);
  v8 = NSManagedObjectContext.playlists(for:sortDescriptors:limit:)(inited, MEMORY[0x1E69E7CC0], 1, 0);
  swift_setDeallocating();
  sub_1D8FBDC88(inited + 32);
  if (v3)
  {
    return a3;
  }

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1DA72AA90](0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_7:
    a3 = v10;

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t NSManagedObjectContext.playlists(for:sortDescriptors:limit:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v9 = Array<A>.playlistPredicate()(a1);
  [v8 setPredicate_];

  if (!(a2 >> 62))
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_1D917935C())
  {
LABEL_3:
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v10 = sub_1D91785DC();
    [v8 setSortDescriptors_];
  }

LABEL_4:
  if ((a4 & 1) == 0)
  {
    [v8 setFetchLimit_];
  }

  sub_1D8CF2154(0, &qword_1EDCD0A28, off_1E8567638);
  v11 = sub_1D917908C();

  return v11;
}

uint64_t sub_1D8FBDD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  swift_unknownObjectRetain();
  v7 = sub_1D8D2A908(a3, v6);

  return v7;
}

void sub_1D8FBDDC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
}

uint64_t DatabaseAccessError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D8FBDEAC()
{
  result = qword_1ECAB86B0;
  if (!qword_1ECAB86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86B0);
  }

  return result;
}

id sub_1D8FBDF10()
{
  v1 = [*(v0 + 24) mainQueueContext];

  return v1;
}

id sub_1D8FBDF48()
{
  v1 = [*(v0 + 24) privateQueueContext];

  return v1;
}

id sub_1D8FBDFC4(SEL *a1)
{
  result = [v1 podcast];
  if (result)
  {
    v4 = result;
    v5 = [result channel];

    if (v5 && (v6 = [v5 *a1], v5, v6))
    {
      v7 = sub_1D917820C();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MTEpisode.episodeTypeResolvedValue.setter(char a1)
{
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = sub_1D9179ACC();

    if (v2)
    {
      v3 = 0;
      [v1 setEpisodeType_];
      goto LABEL_7;
    }

    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v1 setEpisodeType_];
LABEL_7:
}

void (*MTEpisode.episodeTypeResolvedValue.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = v1;
  *a1 = v2;
  if ([v2 isTrailer])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v2 isBonus] ^ 1;
  }

  *(a1 + 8) = v4;
  return sub_1D8FBE274;
}

id sub_1D8FBE2B4(SEL *a1)
{
  if ([v1 *a1] < 1)
  {
    return 0;
  }

  else
  {
    return [v1 *a1];
  }
}

uint64_t sub_1D8FBE3B0()
{
  v1 = *v0;
  if ([*v0 isTrailer])
  {
    return 2;
  }

  else
  {
    return [v1 isBonus] ^ 1;
  }
}

uint64_t sub_1D8FBE400()
{
  v1 = *v0;
  if ([*v0 isVideo])
  {
    return 1;
  }

  if ([v1 isExternalType])
  {
    return 2;
  }

  return 0;
}

id sub_1D8FBE47C()
{
  v1 = [*v0 podcast];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isSerialShowTypeInFeed];

  return v3;
}

id sub_1D8FBE51C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *v3;
  if ([v5 *a3] < 1)
  {
    return 0;
  }

  else
  {
    return [v5 *a3];
  }
}

uint64_t sub_1D8FBE57C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  [v3 pubDate];
  if (v4 <= 0.0)
  {
    v5 = 1;
  }

  else
  {
    [v3 pubDate];
    sub_1D9176CBC();
    v5 = 0;
  }

  v6 = sub_1D9176E3C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void NSManagedObjectContext.unsafeCategory(forAdamID:)(uint64_t a1)
{
  v2 = v1;
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D918A530;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D8D34978();
  *(v5 + 32) = 0x44496D616461;
  *(v5 + 40) = 0xE600000000000000;
  v7 = MEMORY[0x1E69E7738];
  *(v5 + 96) = MEMORY[0x1E69E76D8];
  *(v5 + 104) = v7;
  *(v5 + 64) = v6;
  *(v5 + 72) = a1;
  v8 = sub_1D9178C8C();
  v9 = [v2 objectsInEntity:v4 predicate:v8 sortDescriptors:0 returnsObjectsAsFaults:1 limit:1];

  if (!v9)
  {
    goto LABEL_14;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v10 = sub_1D91785FC();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v11 = MEMORY[0x1DA72AA90](0, v10);
LABEL_7:
  v12 = v11;

  type metadata accessor for MTCategory();
  if (!swift_dynamicCastClass())
  {
  }
}

uint64_t sub_1D8FBE858(uint64_t a1)
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_1D917935C();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1D8E31404(0, v8 & ~(v8 >> 63), 0);
    v49 = v54;
    if (v48)
    {
      result = sub_1D917930C();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_1D91792DC();
      v10 = *(a1 + 36);
    }

    v51 = result;
    v52 = v10;
    v53 = v48 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v45 = v7;
      v12 = 0;
      v43 = v8;
      v44 = v47 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v41 = a1 + 56;
      v42 = v13;
      v39 = v1;
      v40 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v51;
        v17 = v52;
        v18 = v53;
        v19 = a1;
        sub_1D9109330(v51, v52, v53, a1);
        v21 = v20;
        v22 = [v20 objectID];
        v23 = [v22 URIRepresentation];

        v24 = v45;
        sub_1D9176B9C();

        v25 = v49;
        v54 = v49;
        v27 = *(v49 + 16);
        v26 = *(v49 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D8E31404(v26 > 1, v27 + 1, 1);
          v25 = v54;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v49 = v25;
        result = (*(v47 + 32))(v25 + v28 + *(v47 + 72) * v27, v24, v46);
        if (v48)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_1D917932C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB86B8, &qword_1D91A2410);
          v14 = sub_1D9178AFC();
          sub_1D91793AC();
          result = v14(v50, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_1D8D9B144(v51, v52, v53);
            return v49;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v29 = 1 << *(v19 + 32);
          if (v16 >= v29)
          {
            goto LABEL_38;
          }

          v30 = v16 >> 6;
          v31 = *(v41 + 8 * (v16 >> 6));
          if (((v31 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v32 = v31 & (-2 << (v16 & 0x3F));
          if (v32)
          {
            v29 = __clz(__rbit64(v32)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v33 = v30 << 6;
            v34 = v30 + 1;
            v35 = (v40 + 8 * v30);
            while (v34 < (v29 + 63) >> 6)
            {
              v37 = *v35++;
              v36 = v37;
              v33 += 64;
              ++v34;
              if (v37)
              {
                result = sub_1D8D9B144(v16, v17, 0);
                v29 = __clz(__rbit64(v36)) + v33;
                goto LABEL_33;
              }
            }

            result = sub_1D8D9B144(v16, v17, 0);
          }

LABEL_33:
          v38 = *(v19 + 36);
          v51 = v29;
          v52 = v38;
          v53 = 0;
          v8 = v43;
          if (v12 == v43)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}