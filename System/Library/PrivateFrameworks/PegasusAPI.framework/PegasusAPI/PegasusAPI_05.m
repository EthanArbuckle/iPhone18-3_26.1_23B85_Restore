uint64_t sub_1B8D575E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C90, &qword_1B964D030);
  result = sub_1B964C9E0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_1B964CA70();

    v34 = v21;
    sub_1B964C8A0();
    result = sub_1B964CA90();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B8D5781C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B964C9F0() & 1;
  }
}

BOOL sub_1B8D57860(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

char *sub_1B8D57910(char *a1, int64_t a2, char a3)
{
  result = sub_1B8D57930(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8D57930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8C88, &qword_1B964D028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B8D57A30(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1B964C950();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1B8D57A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8D57AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8D57B44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B8D57BA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8()
{
  v2 = *(*(v0 + 328) + *(v0 + 320));

  return type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
}

uint64_t OUTLINED_FUNCTION_10_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 - 240));
}

uint64_t OUTLINED_FUNCTION_12_1()
{
}

uint64_t OUTLINED_FUNCTION_13()
{
  v2 = *(*(v0 + 328) + *(v0 + 320));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_14()
{
  __swift_destroy_boxed_opaque_existential_0((v0 - 240));
}

uint64_t OUTLINED_FUNCTION_16_0()
{
  v3 = *(v0 + v1);

  return type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
}

uint64_t OUTLINED_FUNCTION_17()
{
  v3 = *(v0 + v1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_0()
{
  v2 = *(*(v0 + 328) + *(v0 + 320));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_22_1()
{
}

uint64_t OUTLINED_FUNCTION_24()
{
  v3 = *(v0 + v1);

  return type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  v3 = *(v0 + v1);

  return type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
}

uint64_t OUTLINED_FUNCTION_26()
{
  v3 = *(v0 + v1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_29_0()
{
  v3 = *(v1 + v0);

  return type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
}

id OUTLINED_FUNCTION_30_0(uint64_t a1, const char *a2)
{
  v4 = *(v2 + 352);

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_31()
{
  v2 = *(*(v0 + 328) + *(v0 + 320));

  return type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  v3 = *(v0 + 224);

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_1B8D53D4C(v1 - 240, v0 + 928);
}

unint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xC;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8D57F28@<X0>(uint64_t *a1@<X8>)
{
  result = Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D57F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8D5C918();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL sub_1B8D57FD0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964E438[a1];
  }

  if (a4)
  {
    a3 = qword_1B964E438[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D57FF4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964E070[a1];
  }

  if (a4)
  {
    a3 = qword_1B964E070[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D58018(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964E118[a1];
  }

  if (a4)
  {
    a3 = qword_1B964E118[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D5803C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DAE8[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DAE8[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D58060(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964E3F8[a1];
  }

  if (a4)
  {
    a3 = qword_1B964E3F8[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D58084(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964E328[a1];
  }

  if (a4)
  {
    a3 = qword_1B964E328[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D580A8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DB10[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DB10[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D580CC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = 10 * a1;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = 10 * a3;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_1B8D580F8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DB88[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DB88[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D58134(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DF98[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DF98[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D58158(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DCD0[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DCD0[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D581AC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964E3B0[a1];
  }

  if (a4)
  {
    a3 = qword_1B964E3B0[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D581D0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DCF8[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DCF8[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D581F4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = 2 * (a1 != 0);
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = 2 * (a3 != 0);
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_1B8D58228(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DD28[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DD28[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D58264(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DD60[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DD60[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D58288(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DE10[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DE10[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D582AC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DE28[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DE28[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D582E8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DEA8[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DEA8[a3];
  }

  return a1 == a3;
}

BOOL sub_1B8D5833C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1B964DF58[a1];
  }

  if (a4)
  {
    a3 = qword_1B964DF58[a3];
  }

  return a1 == a3;
}

uint64_t static Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAB8CA0 = a1;
}

uint64_t (*static Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8D584CC@<X0>(uint64_t *a1@<X8>)
{
  result = static Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.suggestionImpactInfo.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(v0) + 20);
  return nullsub_1;
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.clientMusicSuggestionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.clientMusicSuggestionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.impact.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.impact.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(v0) + 24);
  return nullsub_1;
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8D5892C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB8CA8);
  __swift_project_value_buffer(v0, qword_1EBAB8CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MUSIC_RANKING_INFLUENCE_IMPACT_UNSPECIFIED";
  *(v6 + 8) = 42;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MUSIC_RANKING_INFLUENCE_IMPACT_SHADOW_TOP_RESULT";
  *(v10 + 8) = 48;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MUSIC_RANKING_INFLUENCE_IMPACT_SLOTTED_TOP_RESULT";
  *(v12 + 1) = 49;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MUSIC_RANKING_INFLUENCE_IMPACT_BOOSTED_TOP_RESULT";
  *(v14 + 1) = 49;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MUSIC_RANKING_INFLUENCE_IMPACT_BOOSTED_NOT_TOP_RESULT";
  *(v16 + 1) = 53;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "MUSIC_RANKING_INFLUENCE_IMPACT_SHADOW_BOOSTED_TOP_RESULT";
  *(v18 + 1) = 56;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "MUSIC_RANKING_INFLUENCE_IMPACT_SHADOW_BOOSTED_NOT_TOP_RESULT";
  *(v20 + 1) = 60;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "MUSIC_RANKING_INFLUENCE_IMPACT_IGNORED_CRITERIA_NOT_MET";
  *(v22 + 1) = 55;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "MUSIC_RANKING_INFLUENCE_IMPACT_IGNORED_PARTIAL_MATCH";
  *(v24 + 1) = 52;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "MUSIC_RANKING_INFLUENCE_IMPACT_IGNORED_ADAMID_NOT_VALID";
  *(v26 + 1) = 55;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "MUSIC_RANKING_INFLUENCE_IMPACT_IGNORED_ALREADY_TOP_RESULT";
  *(v28 + 1) = 57;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "MUSIC_RANKING_INFLUENCE_IMPACT_IGNORED_OTHER";
  *(v30 + 1) = 44;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B8D58DD4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB8CC0);
  __swift_project_value_buffer(v0, qword_1EBAB8CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "suggestion_impact_info";
  *(v5 + 8) = 22;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_193();
      sub_1B8D58FB4();
    }
  }

  return result;
}

uint64_t sub_1B8D58FB4()
{
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(0);
  sub_1B8D5C8D0(&qword_1EBAB8D00, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo);
  return sub_1B964C570();
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(0), sub_1B8D5C8D0(&qword_1EBAB8D00, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v4 = v2 + *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0) + 20);
    OUTLINED_FUNCTION_220();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  sub_1B8D5C668();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_2();
  sub_1B8D5C8D0(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t (*sub_1B8D59218(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1B8D5926C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8D5C8D0(&qword_1EBAB8D78, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D592EC(uint64_t a1)
{
  v2 = sub_1B8D5C8D0(&qword_1EBAB8D50, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D5935C()
{
  sub_1B8D5C8D0(&qword_1EBAB8D50, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D593DC()
{
  result = MEMORY[0x1BFADC850](0xD000000000000020, 0x80000001B96E97B0);
  qword_1EBAB8CD8 = 0xD000000000000038;
  unk_1EBAB8CE0 = 0x80000001B96E9740;
  return result;
}

uint64_t static Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.protoMessageName.getter()
{
  if (qword_1EBAB5E08 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8D594B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB8CE8);
  __swift_project_value_buffer(v0, qword_1EBAB8CE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "client_music_suggestion_id";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "impact";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8D596A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B964C780();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_193();
      sub_1B8D597AC();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_221();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = *v1;
  v5 = v1[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (v2 = v0, result = sub_1B964C700(), !v0))
  {
    if (!*(v3 + 16) || (v9 = *(v3 + 16), v10 = *(v3 + 24), sub_1B8D5C918(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v2))
    {
      v8 = v3 + *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(0) + 24);
      OUTLINED_FUNCTION_220();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v4 = *(v1 + 8);
  OUTLINED_FUNCTION_428();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 16);
  v9 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    switch(v9)
    {
      case 1:
        if (v8 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v8 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v8 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v8 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v8 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v8 == 6)
        {
          goto LABEL_11;
        }

        return 0;
      case 7:
        if (v8 == 7)
        {
          goto LABEL_11;
        }

        return 0;
      case 8:
        if (v8 == 8)
        {
          goto LABEL_11;
        }

        return 0;
      case 9:
        if (v8 == 9)
        {
          goto LABEL_11;
        }

        return 0;
      case 10:
        if (v8 == 10)
        {
          goto LABEL_11;
        }

        return 0;
      case 11:
        if (v8 == 11)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v8)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v8 != v9)
  {
    return 0;
  }

LABEL_11:
  v11 = *(type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_2();
  sub_1B8D5C8D0(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8D59A88(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8D5C8D0(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t (*sub_1B8D59B1C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1B8D59B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8D5C8D0(&qword_1EBAB8D70, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D59BF0(uint64_t a1)
{
  v2 = sub_1B8D5C8D0(&qword_1EBAB8D00, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D59C60()
{
  sub_1B8D5C8D0(&qword_1EBAB8D00, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D59CDC()
{
  sub_1B964CA70();
  sub_1B964C7E0();
  return sub_1B964CA90();
}

void sub_1B8D59D34()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_64();
  v103 = type metadata accessor for Apple_Parsec_Search_Error();
  v4 = OUTLINED_FUNCTION_59_1(v103);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_46(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v105 = v15;
  v16 = OUTLINED_FUNCTION_201();
  v112 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(v16);
  v17 = OUTLINED_FUNCTION_59_1(v112);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_457(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9198, &unk_1B964D980);
  OUTLINED_FUNCTION_183(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_185();
  v106 = v25;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A0, &unk_1B966C690);
  OUTLINED_FUNCTION_59_1(v107);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_104(v29, v98);
  v109 = sub_1B964C1C0();
  v30 = OUTLINED_FUNCTION_30_1(v109);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_608(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_158(v40);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1(v108);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_103();
  v113 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult(v44);
  v45 = OUTLINED_FUNCTION_19_0(v113);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_168_0();
  v50 = *(v1 + 16);
  if (v50 != *(v0 + 16) || !v50 || v1 == v0)
  {
    goto LABEL_55;
  }

  v99 = v3;
  OUTLINED_FUNCTION_60_0(v49);
  v114 = v1 + v51;
  v52 = v0 + v51;
  v100 = (v32 + 32);
  v101 = (v32 + 8);
  v102 = *(v53 + 72);
  v54 = v110;
  while (1)
  {
    sub_1B8D745A4();
    OUTLINED_FUNCTION_676();
    sub_1B8D745A4();
    v55 = *(v113 + 20);
    v56 = *(v108 + 48);
    OUTLINED_FUNCTION_271();
    sub_1B8D92024();
    OUTLINED_FUNCTION_576();
    v57 = OUTLINED_FUNCTION_602();
    OUTLINED_FUNCTION_178(v57, v58, v109);
    if (v61)
    {
      OUTLINED_FUNCTION_90(v2 + v56);
      if (!v61)
      {
        goto LABEL_46;
      }

      v59 = OUTLINED_FUNCTION_196();
      sub_1B8D9207C(v59, v60, &qword_1B964D720);
    }

    else
    {
      OUTLINED_FUNCTION_195();
      OUTLINED_FUNCTION_576();
      OUTLINED_FUNCTION_90(v2 + v56);
      if (v61)
      {
        (*v101)(v54, v109);
LABEL_46:
        v95 = &qword_1EBAB8F28;
        v96 = &unk_1B9683B20;
        v97 = v2;
        goto LABEL_53;
      }

      (*v100)(v104, v2 + v56, v109);
      OUTLINED_FUNCTION_25_1();
      sub_1B8D5C8D0(&qword_1EBAB8F40, v62);
      v63 = sub_1B964C850();
      v64 = *v101;
      v54 = v110;
      (*v101)(v104, v109);
      v64(v110, v109);
      sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
      if ((v63 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    v65 = *(v113 + 24);
    v66 = *(v107 + 48);
    sub_1B8D92024();
    OUTLINED_FUNCTION_631();
    v67 = OUTLINED_FUNCTION_256();
    OUTLINED_FUNCTION_98(v67, v68);
    if (v61)
    {
      v69 = OUTLINED_FUNCTION_535();
      OUTLINED_FUNCTION_57(v69);
      if (!v61)
      {
        goto LABEL_48;
      }

      sub_1B8D9207C(v115, &qword_1EBAB9198, &unk_1B964D980);
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_631();
    OUTLINED_FUNCTION_57(v115 + v66);
    if (v70)
    {
      OUTLINED_FUNCTION_465();
      sub_1B8D745F8();
LABEL_48:
      v95 = &qword_1EBAB91A0;
      v96 = &unk_1B966C690;
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_535();
    sub_1B8D920D4();
    v71 = *v106;
    v72 = *v111;
    if (*(v111 + 8) == 1)
    {
      v73 = v112;
      if (v72)
      {
        if (v72 == 1)
        {
          if (v71 != 1)
          {
            goto LABEL_51;
          }
        }

        else if (v71 != 2)
        {
          goto LABEL_51;
        }
      }

      else if (v71)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v73 = v112;
      if (v71 != v72)
      {
        goto LABEL_51;
      }
    }

    v74 = *(v73 + 28);
    v75 = *(v99 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v105, 1, v103);
    if (v61)
    {
      OUTLINED_FUNCTION_90(v105 + v75);
      v76 = v105;
      if (!v61)
      {
        goto LABEL_50;
      }

      sub_1B8D9207C(v105, &qword_1EBAB9188, &qword_1B964D970);
      v77 = v106;
      goto LABEL_35;
    }

    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v105 + v75);
    if (v78)
    {
      break;
    }

    OUTLINED_FUNCTION_541();
    sub_1B8D920D4();
    v79 = OUTLINED_FUNCTION_461();
    v81 = static Apple_Parsec_Search_Error.== infix(_:_:)(v79, v80);
    sub_1B8D745F8();
    sub_1B8D745F8();
    sub_1B8D9207C(v105, &qword_1EBAB9188, &qword_1B964D970);
    v77 = v106;
    if ((v81 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_35:
    v82 = v77[2];
    v83 = v77[3];
    OUTLINED_FUNCTION_357(v111);
    if (v61)
    {
      v86 = v84 == v85;
    }

    else
    {
      v86 = 0;
    }

    if (!v86 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_51;
    }

    v87 = *(v112 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v88);
    v89 = sub_1B964C850();
    sub_1B8D745F8();
    v54 = v110;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_600();
    sub_1B8D9207C(v90, v91, v92);
    if ((v89 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_41:
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v93);
    OUTLINED_FUNCTION_676();
    v94 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_672();
    sub_1B8D745F8();
    if (v94)
    {
      v52 += v102;
      v114 += v102;
      if (--v50)
      {
        continue;
      }
    }

    goto LABEL_55;
  }

  OUTLINED_FUNCTION_222();
  sub_1B8D745F8();
  v76 = v105;
LABEL_50:
  sub_1B8D9207C(v76, &qword_1EBAB9190, &qword_1B964D978);
LABEL_51:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_629();
  v95 = &qword_1EBAB9198;
  v96 = &unk_1B964D980;
LABEL_52:
  v97 = v115;
LABEL_53:
  sub_1B8D9207C(v97, v95, v96);
LABEL_54:
  sub_1B8D745F8();
  sub_1B8D745F8();
LABEL_55:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D5AAE8()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_280();
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_484(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_84(v15, v86);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_59_1(v93);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_171(v19);
  v20 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_235(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9138, &unk_1B964D920);
  OUTLINED_FUNCTION_183(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_137();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9140, &unk_1B967FE00);
  OUTLINED_FUNCTION_59_1(v96);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_173();
  v98 = type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(0);
  v32 = OUTLINED_FUNCTION_19_0(v98);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_31_0(v35, v36, v37, v38, v39, v40, v41, v42, v87);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_351();
  v45 = *(v1 + 16);
  if (v45 == *(v0 + 16) && v45 && v1 != v0)
  {
    v89 = v2;
    v90 = v6;
    OUTLINED_FUNCTION_60_0(v44);
    v47 = v1 + v46;
    v48 = v0 + v46;
    v92 = *(v49 + 72);
    v95 = v20;
    v88 = v3;
    while (1)
    {
      OUTLINED_FUNCTION_492();
      sub_1B8D745A4();
      sub_1B8D745A4();
      v50 = *v4;
      v51 = v4[1];
      OUTLINED_FUNCTION_268();
      v54 = v54 && v52 == v53;
      if (!v54 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v55 = *(v98 + 24);
      OUTLINED_FUNCTION_500();
      OUTLINED_FUNCTION_643();
      OUTLINED_FUNCTION_643();
      v56 = OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_110(v56, v57);
      if (v54)
      {
        OUTLINED_FUNCTION_75(v3 + v100);
        if (!v54)
        {
          goto LABEL_41;
        }

        sub_1B8D9207C(v3, &qword_1EBAB9138, &unk_1B964D920);
      }

      else
      {
        OUTLINED_FUNCTION_353();
        OUTLINED_FUNCTION_643();
        OUTLINED_FUNCTION_75(v3 + v100);
        if (v58)
        {
          OUTLINED_FUNCTION_464();
          sub_1B8D745F8();
LABEL_41:
          v82 = &qword_1EBAB9140;
          v83 = &unk_1B967FE00;
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_596();
        sub_1B8D920D4();
        v59 = *v2;
        v60 = v2[1];
        OUTLINED_FUNCTION_268();
        v63 = v54 && v61 == v62;
        if (!v63 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_46;
        }

        v64 = v2[2];
        v65 = v2[3];
        OUTLINED_FUNCTION_357(v99);
        v68 = v54 && v66 == v67;
        if (!v68 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_46;
        }

        v69 = *(v95 + 28);
        v70 = *(v93 + 48);
        sub_1B8D92024();
        sub_1B8D92024();
        v71 = OUTLINED_FUNCTION_538();
        OUTLINED_FUNCTION_110(v71, v72);
        if (v54)
        {
          v73 = OUTLINED_FUNCTION_673();
          OUTLINED_FUNCTION_75(v73);
          if (!v54)
          {
            goto LABEL_43;
          }

          sub_1B8D9207C(v97, &qword_1EBAB8E30, &qword_1B964D630);
          v74 = v95;
          v3 = v88;
        }

        else
        {
          sub_1B8D92024();
          OUTLINED_FUNCTION_75(v97 + v70);
          if (v75)
          {
            OUTLINED_FUNCTION_345();
            sub_1B8D745F8();
LABEL_43:
            v84 = &qword_1EBAB8E38;
            v85 = &qword_1B96CD870;
LABEL_45:
            sub_1B8D9207C(v97, v84, v85);
            v3 = v88;
LABEL_46:
            sub_1B8D745F8();
            OUTLINED_FUNCTION_195();
            sub_1B8D745F8();
            v82 = &qword_1EBAB9138;
            v83 = &unk_1B964D920;
LABEL_47:
            sub_1B8D9207C(v3, v82, v83);
            break;
          }

          OUTLINED_FUNCTION_673();
          sub_1B8D920D4();
          if (*v94 != *v91)
          {
            sub_1B8D745F8();
            sub_1B8D745F8();
            v84 = &qword_1EBAB8E30;
            v85 = &qword_1B964D630;
            goto LABEL_45;
          }

          OUTLINED_FUNCTION_565(v90);
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v76);
          OUTLINED_FUNCTION_277();
          OUTLINED_FUNCTION_365();
          sub_1B8D745F8();
          sub_1B8D745F8();
          sub_1B8D9207C(v97, &qword_1EBAB8E30, &qword_1B964D630);
          v74 = v95;
          v3 = v88;
          if ((v91 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        v77 = *(v74 + 24);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v78);
        v79 = sub_1B964C850();
        v2 = v89;
        sub_1B8D745F8();
        OUTLINED_FUNCTION_257();
        sub_1B8D745F8();
        sub_1B8D9207C(v3, &qword_1EBAB9138, &unk_1B964D920);
        if ((v79 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_565(v98);
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v80);
      v81 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_677();
      sub_1B8D745F8();
      if (v81)
      {
        v48 += v92;
        v47 += v92;
        OUTLINED_FUNCTION_659();
        if (!v54)
        {
          continue;
        }
      }

      goto LABEL_49;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_427();
    sub_1B8D745F8();
  }

LABEL_49:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D5B224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v25;
  a20 = v26;
  v27 = OUTLINED_FUNCTION_165();
  v28 = type metadata accessor for Searchfoundation_RFShowMoreOnTap(v27);
  v29 = OUTLINED_FUNCTION_59_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE8, &qword_1B96E0CB0);
  OUTLINED_FUNCTION_183(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_173();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF0, &unk_1B964D5F0);
  OUTLINED_FUNCTION_59_1(v118);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_164();
  v125 = type metadata accessor for Searchfoundation_RFFormattedText(0);
  v39 = OUTLINED_FUNCTION_30_1(v125);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_66();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v46 = OUTLINED_FUNCTION_657_0();
  v47 = type metadata accessor for Searchfoundation_RFTextElement(v46);
  v48 = OUTLINED_FUNCTION_30_1(v47);
  v119 = v49;
  v120 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44_0();
  v124 = v52;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_266_0();
  v123 = v54;
  v55 = OUTLINED_FUNCTION_201();
  v117 = type metadata accessor for Searchfoundation_RFTextProperty(v55);
  v56 = OUTLINED_FUNCTION_19_0(v117);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_33_1();
  v122 = v59;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_249();
  v121 = v61;
  v62 = *(v22 + 16);
  OUTLINED_FUNCTION_260();
  if (v99 && v64 && v22 != v20)
  {
    OUTLINED_FUNCTION_60_0(v63);
    v65 = 0;
    v67 = *(v66 + 72);
    v115 = v28;
    v109 = v23;
    v114 = v24;
    v116 = v68;
    v110 = v67;
    while (1)
    {
      v69 = v67 * v65;
      v70 = v65;
      v71 = v121;
      sub_1B8D745A4();
      if (v70 == v116)
      {
        break;
      }

      OUTLINED_FUNCTION_592();
      sub_1B8D745A4();
      v72 = *v121;
      v73 = *v69;
      v74 = *(*v121 + 16);
      v75 = v123;
      if (v74 != *(*v69 + 16))
      {
        goto LABEL_46;
      }

      if (v74 && v72 != v73)
      {
        v76 = 0;
        OUTLINED_FUNCTION_93(v119);
        v112 = v73;
        v113 = v72;
        v111 = v77;
        while (v76 < *(v72 + 16))
        {
          v78 = *(v119 + 72) * v76;
          OUTLINED_FUNCTION_24_0();
          OUTLINED_FUNCTION_589();
          if (v76 >= *(v73 + 16))
          {
            goto LABEL_50;
          }

          OUTLINED_FUNCTION_24_0();
          OUTLINED_FUNCTION_591();
          sub_1B8D745A4();
          v79 = *v75;
          v80 = *(*v75 + 16);
          if (v80 != *(*v78 + 16))
          {
            goto LABEL_45;
          }

          if (v80 && v79 != *v78)
          {
            OUTLINED_FUNCTION_96();
            v83 = v81 + v82;
            v85 = v84 + v82;
            v87 = *(v86 + 72);
            while (1)
            {
              OUTLINED_FUNCTION_23_0();
              OUTLINED_FUNCTION_461();
              sub_1B8D745A4();
              OUTLINED_FUNCTION_23_0();
              OUTLINED_FUNCTION_202();
              sub_1B8D745A4();
              v88 = *(v125 + 20);
              v89 = *(v21 + v88);
              if (v89 != *(v44 + v88))
              {
                v90 = *(v21 + v88);

                OUTLINED_FUNCTION_542();
                sub_1B95D2DA8();
                v92 = v91;

                if ((v92 & 1) == 0)
                {
                  break;
                }
              }

              sub_1B964C2B0();
              OUTLINED_FUNCTION_0_2();
              sub_1B8D5C8D0(&qword_1EBAB3B38, v93);
              OUTLINED_FUNCTION_294();
              sub_1B964C850();
              OUTLINED_FUNCTION_361();
              sub_1B8D745F8();
              OUTLINED_FUNCTION_449();
              sub_1B8D745F8();
              if ((v89 & 1) == 0)
              {
                goto LABEL_45;
              }

              v85 += v87;
              v83 += v87;
              if (!--v80)
              {
                goto LABEL_21;
              }
            }

            OUTLINED_FUNCTION_129_0();
            sub_1B8D745F8();
            OUTLINED_FUNCTION_571();
            goto LABEL_45;
          }

LABEL_21:
          if (*(v123 + 2) != *(v124 + 8))
          {
            goto LABEL_45;
          }

          v94 = *(v120 + 28);
          v69 = *(v118 + 48);
          sub_1B8D92024();
          OUTLINED_FUNCTION_720();
          v95 = OUTLINED_FUNCTION_355();
          OUTLINED_FUNCTION_166(v95, v96);
          if (v99)
          {
            OUTLINED_FUNCTION_117(v114 + v69);
            if (!v99)
            {
              goto LABEL_43;
            }

            v97 = OUTLINED_FUNCTION_242_0();
            sub_1B8D9207C(v97, v98, &qword_1B96E0CB0);
          }

          else
          {
            OUTLINED_FUNCTION_655(&a17);
            sub_1B8D92024();
            OUTLINED_FUNCTION_117(v114 + v69);
            if (v99)
            {
              OUTLINED_FUNCTION_127();
              sub_1B8D745F8();
LABEL_43:
              v107 = &qword_1EBAB8DF0;
              v108 = &unk_1B964D5F0;
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_128_0();
            sub_1B8D920D4();
            v100 = *v109 == 0x700065666 && v109[1] == 0x70007717ALL;
            if (!v100 && (sub_1B964C9F0() & 1) == 0)
            {
              OUTLINED_FUNCTION_332();
              sub_1B8D745F8();
              OUTLINED_FUNCTION_197();
              sub_1B8D745F8();
              v107 = &qword_1EBAB8DE8;
              v108 = &qword_1B96E0CB0;
LABEL_44:
              sub_1B8D9207C(v114, v107, v108);
LABEL_45:
              OUTLINED_FUNCTION_126_0();
              sub_1B8D745F8();
              OUTLINED_FUNCTION_662();
              sub_1B8D745F8();
              goto LABEL_46;
            }

            v101 = *(v115 + 20);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_2();
            sub_1B8D5C8D0(&qword_1EBAB3B38, v102);
            OUTLINED_FUNCTION_519();
            OUTLINED_FUNCTION_363();
            sub_1B8D745F8();
            OUTLINED_FUNCTION_275();
            sub_1B8D745F8();
            sub_1B8D9207C(v114, &qword_1EBAB8DE8, &qword_1B96E0CB0);
            if ((v69 & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          v103 = *(v120 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v104);
          v75 = v123;
          OUTLINED_FUNCTION_519();
          OUTLINED_FUNCTION_135_1();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_275();
          sub_1B8D745F8();
          v71 = v121;
          v73 = v112;
          v72 = v113;
          if ((v69 & 1) == 0)
          {
            goto LABEL_46;
          }

          if (++v76 == v111)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
        break;
      }

LABEL_36:
      if (*(v71 + 8) != *(v122 + 8))
      {
LABEL_46:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_47;
      }

      v105 = *(v117 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v106);
      OUTLINED_FUNCTION_519();
      OUTLINED_FUNCTION_362();
      sub_1B8D745F8();
      sub_1B8D745F8();
      if (v69)
      {
        v65 = v70 + 1;
        v67 = v110;
        if (v70 + 1 != v116)
        {
          continue;
        }
      }

      goto LABEL_47;
    }

    __break(1u);
  }

  else
  {
LABEL_47:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D5BA08()
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_94();
  v8 = type metadata accessor for Searchfoundation_RFShowMoreOnTap(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE8, &qword_1B96E0CB0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_79();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF0, &unk_1B964D5F0);
  OUTLINED_FUNCTION_46(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_173();
  v73 = type metadata accessor for Searchfoundation_RFFormattedText(0);
  v20 = OUTLINED_FUNCTION_30_1(v73);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_211();
  v71 = type metadata accessor for Searchfoundation_RFTextElement(0);
  v24 = OUTLINED_FUNCTION_19_0(v71);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33_1();
  v72 = v27;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_189_0();
  if (v56 && v30 && v1 != v0)
  {
    v67 = v5;
    v68 = v3;
    v31 = 0;
    OUTLINED_FUNCTION_60_0(v29);
    v33 = *(v32 + 72);
    v70 = v34;
    v66 = v33;
    while (1)
    {
      v35 = v33 * v31;
      OUTLINED_FUNCTION_24_0();
      sub_1B8D745A4();
      if (v31 == v70)
      {
        break;
      }

      v69 = v31;
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_704();
      v36 = *(*v4 + 16);
      if (v36 != *(*v35 + 16))
      {
        goto LABEL_36;
      }

      if (v36 && *v4 != *v35)
      {
        OUTLINED_FUNCTION_96();
        v39 = v37 + v38;
        v41 = v40 + v38;
        v43 = *(v42 + 72);
        while (1)
        {
          OUTLINED_FUNCTION_23_0();
          sub_1B8D745A4();
          OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_610();
          sub_1B8D745A4();
          v44 = *(v73 + 20);
          if (*(v2 + v44) != *(v6 + v44))
          {
            v45 = *(v2 + v44);

            v46 = OUTLINED_FUNCTION_288();
            v47 = sub_1B95D2DA8(v46);

            if ((v47 & 1) == 0)
            {
              break;
            }
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v48);
          OUTLINED_FUNCTION_603();
          v49 = sub_1B964C850();
          OUTLINED_FUNCTION_129_0();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_200();
          sub_1B8D745F8();
          if ((v49 & 1) == 0)
          {
            goto LABEL_36;
          }

          v41 += v43;
          v39 += v43;
          if (!--v36)
          {
            goto LABEL_15;
          }
        }

        sub_1B8D745F8();
        OUTLINED_FUNCTION_195();
        sub_1B8D745F8();
        goto LABEL_36;
      }

LABEL_15:
      if (v4[2] != *(v72 + 8))
      {
        goto LABEL_36;
      }

      v50 = *(v71 + 28);
      v51 = *(v67 + 48);
      sub_1B8D92024();
      OUTLINED_FUNCTION_479();
      sub_1B8D92024();
      v52 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_81(v52, v53);
      if (v56)
      {
        OUTLINED_FUNCTION_37_0(v68 + v51);
        if (!v56)
        {
          goto LABEL_34;
        }

        v54 = OUTLINED_FUNCTION_246();
        sub_1B8D9207C(v54, v55, &qword_1B96E0CB0);
      }

      else
      {
        OUTLINED_FUNCTION_397();
        sub_1B8D92024();
        OUTLINED_FUNCTION_37_0(v68 + v51);
        if (v56)
        {
          OUTLINED_FUNCTION_127();
          sub_1B8D745F8();
LABEL_34:
          v64 = &qword_1EBAB8DF0;
          v65 = &unk_1B964D5F0;
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_128_0();
        sub_1B8D920D4();
        OUTLINED_FUNCTION_74_0();
        if (v56)
        {
          v59 = v57 == v58;
        }

        else
        {
          v59 = 0;
        }

        if (!v59 && (sub_1B964C9F0() & 1) == 0)
        {
          OUTLINED_FUNCTION_332();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_182();
          sub_1B8D745F8();
          v64 = &qword_1EBAB8DE8;
          v65 = &qword_1B96E0CB0;
LABEL_35:
          sub_1B8D9207C(v68, v64, v65);
LABEL_36:
          OUTLINED_FUNCTION_126_0();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_218();
          sub_1B8D745F8();
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_711();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v60);
        v61 = OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_331();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_526();
        sub_1B8D9207C(v68, &qword_1EBAB8DE8, &qword_1B96E0CB0);
        if ((v61 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      OUTLINED_FUNCTION_524(v71);
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v62);
      OUTLINED_FUNCTION_613();
      v63 = OUTLINED_FUNCTION_518();
      OUTLINED_FUNCTION_126_0();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_218();
      sub_1B8D745F8();
      if (v63)
      {
        v31 = v69 + 1;
        v33 = v66;
        if (v69 + 1 != v70)
        {
          continue;
        }
      }

      goto LABEL_37;
    }

    __break(1u);
  }

  else
  {
LABEL_37:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D5BFE8()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_252();
  v5 = OUTLINED_FUNCTION_301(*MEMORY[0x1E69E9840]);
  v6 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult(v5);
  v7 = OUTLINED_FUNCTION_19_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43();
  if (!v15 || !v0 || v4 == v1)
  {
    goto LABEL_90;
  }

  v99 = 0;
  v100 = v6;
  OUTLINED_FUNCTION_60_0(v11);
  OUTLINED_FUNCTION_324(v12);
  while (2)
  {
    OUTLINED_FUNCTION_257();
    sub_1B8D745A4();
    if (!v0)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
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

    OUTLINED_FUNCTION_275();
    sub_1B8D745A4();
    OUTLINED_FUNCTION_154();
    v15 = v15 && v13 == v14;
    if (!v15 && (sub_1B964C9F0() & 1) == 0)
    {
LABEL_89:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
LABEL_90:
      v96 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
    }

    v16 = *(v3 + 16);
    v17 = *(v3 + 24);
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    OUTLINED_FUNCTION_161();
    if (!v15)
    {
      switch(v23)
      {
        case 1:
          if (!__OFSUB__(v22, v21))
          {
            goto LABEL_27;
          }

          goto LABEL_95;
        case 2:
          OUTLINED_FUNCTION_250();
          if (!v25)
          {
            goto LABEL_27;
          }

          goto LABEL_94;
        default:
          goto LABEL_27;
      }
    }

    if (!v21)
    {
      v24 = v17 == 0xC000000000000000 && v20 >= 3;
      if (v24 && !v19 && v18 == 0xC000000000000000)
      {
        goto LABEL_84;
      }
    }

LABEL_27:
    OUTLINED_FUNCTION_160();
    switch(v31)
    {
      case 1:
        LODWORD(v32) = v28 - v19;
        if (__OFSUB__(v28, v19))
        {
          goto LABEL_93;
        }

        v32 = v32;
LABEL_36:
        if (v30 != v32)
        {
          goto LABEL_89;
        }

        if (v30 < 1)
        {
          goto LABEL_84;
        }

        break;
      case 2:
        OUTLINED_FUNCTION_420();
        if (!v25)
        {
          goto LABEL_36;
        }

        goto LABEL_92;
      case 3:
        if (v30)
        {
          goto LABEL_89;
        }

        goto LABEL_84;
      default:
        v32 = v26;
        goto LABEL_36;
    }

    v33 = v19 >> 32;
    switch(v29)
    {
      case 1:
        OUTLINED_FUNCTION_290();
        if (v63 != v25)
        {
          goto LABEL_96;
        }

        v98 = v62;
        v64 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v64, v65);
        v66 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v66, v67);
        v68 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v68, v69);
        if (sub_1B964C070())
        {
          sub_1B964C090();
          OUTLINED_FUNCTION_497();
          if (v25)
          {
            goto LABEL_99;
          }
        }

        else
        {
          v70 = v98;
        }

        v47 = v19 - v70;
LABEL_68:
        sub_1B964C080();
        OUTLINED_FUNCTION_22_2();
        v71 = OUTLINED_FUNCTION_2();
        sub_1B8D538A0(v71, v72);
        v73 = OUTLINED_FUNCTION_2();
        sub_1B8D538A0(v73, v74);
        v75 = OUTLINED_FUNCTION_2();
        sub_1B8D538A0(v75, v76);
        v99 = v47;
        if (v47)
        {
          goto LABEL_112;
        }

        v6 = v100;
        if ((v101 & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_84;
      case 2:
        v47 = *(v27 + 16);
        v97 = *(v27 + 24);
        v48 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v48, v49);
        v50 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v50, v51);
        v52 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v52, v53);
        if (sub_1B964C070() && __OFSUB__(v47, sub_1B964C090()))
        {
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_453();
        if (!v25)
        {
          goto LABEL_68;
        }

        goto LABEL_97;
      case 3:
        OUTLINED_FUNCTION_434();
        if (!v54)
        {
          goto LABEL_64;
        }

        if (v54 == 2)
        {
          v55 = *(v19 + 16);
          v56 = *(v19 + 24);
          v57 = OUTLINED_FUNCTION_2();
          sub_1B8D91FCC(v57, v58);
          v59 = sub_1B964C070();
          if (v59)
          {
            v60 = sub_1B964C090();
            if (__OFSUB__(v55, v60))
            {
              goto LABEL_104;
            }

            v59 += v55 - v60;
          }

          if (__OFSUB__(v56, v55))
          {
            goto LABEL_102;
          }

          v61 = sub_1B964C080();
          v6 = v100;
          if (!v59)
          {
            goto LABEL_111;
          }

          goto LABEL_83;
        }

        if (v33 < v19)
        {
          goto LABEL_100;
        }

        v77 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v77, v78);
        v45 = sub_1B964C070();
        if (v45)
        {
          v79 = sub_1B964C090();
          if (__OFSUB__(v19, v79))
          {
            goto LABEL_107;
          }

          v45 += v19 - v79;
        }

        sub_1B964C080();
        if (!v45)
        {
          goto LABEL_109;
        }

        goto LABEL_76;
      default:
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_478();
        OUTLINED_FUNCTION_291();
        if (!v42)
        {
LABEL_64:
          v6 = v100;
          if (OUTLINED_FUNCTION_9_1(v34, v35, v36, v37, v38, v39, v40, v41))
          {
            goto LABEL_89;
          }

          goto LABEL_84;
        }

        if (v42 == 1)
        {
          if (v33 < v19)
          {
            goto LABEL_101;
          }

          v43 = OUTLINED_FUNCTION_2();
          sub_1B8D91FCC(v43, v44);
          v45 = sub_1B964C070();
          if (v45)
          {
            v46 = sub_1B964C090();
            if (__OFSUB__(v19, v46))
            {
              goto LABEL_106;
            }

            v45 += v19 - v46;
          }

          sub_1B964C080();
          if (!v45)
          {
            goto LABEL_110;
          }

LABEL_76:
          v80 = OUTLINED_FUNCTION_92();
          v82 = memcmp(v80, v45, v81);
          v83 = OUTLINED_FUNCTION_2();
          sub_1B8D538A0(v83, v84);
          v6 = v100;
          if (v82)
          {
            goto LABEL_89;
          }

LABEL_84:
          v0 = *(v6 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v94);
          OUTLINED_FUNCTION_509();
          v95 = OUTLINED_FUNCTION_552();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_253();
          sub_1B8D745F8();
          if ((v95 & 1) == 0)
          {
            goto LABEL_90;
          }

          OUTLINED_FUNCTION_619();
          if (v15)
          {
            goto LABEL_90;
          }

          continue;
        }

        v85 = *(v19 + 16);
        v86 = *(v19 + 24);
        v87 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v87, v88);
        v89 = sub_1B964C070();
        if (v89)
        {
          v90 = sub_1B964C090();
          if (__OFSUB__(v85, v90))
          {
            goto LABEL_105;
          }

          v89 += v85 - v90;
        }

        if (__OFSUB__(v86, v85))
        {
          goto LABEL_103;
        }

        v61 = sub_1B964C080();
        v6 = v100;
        if (v89)
        {
LABEL_83:
          v91 = OUTLINED_FUNCTION_710(v61);
          v92 = OUTLINED_FUNCTION_2();
          sub_1B8D538A0(v92, v93);
          if (v91)
          {
            goto LABEL_89;
          }

          goto LABEL_84;
        }

        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        MEMORY[0x1BFADCCF0](v99);
        __break(1u);
        return;
    }
  }
}

void sub_1B8D5C668()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_64();
  v5 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(v4);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v13 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_3_2(v10);
    while (1)
    {
      OUTLINED_FUNCTION_186();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_196();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_74_0();
      v13 = v13 && v11 == v12;
      if (!v13 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_618();
      if (*(v1 + 24) == 1)
      {
        switch(v15)
        {
          case 1:
            if (v14 != 1)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 2:
            if (v14 != 2)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 3:
            if (v14 != 3)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 4:
            if (v14 != 4)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 5:
            if (v14 != 5)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 6:
            if (v14 != 6)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 7:
            if (v14 != 7)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 8:
            if (v14 != 8)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 9:
            if (v14 != 9)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 10:
            if (v14 != 10)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          case 11:
            if (v14 != 11)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
          default:
            if (v14)
            {
              goto LABEL_41;
            }

            goto LABEL_16;
        }
      }

      if (v14 != v15)
      {
        break;
      }

LABEL_16:
      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v16);
      v17 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v17)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_42;
    }

LABEL_41:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_42:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8D5C8D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8D5C918()
{
  result = qword_1EBAB8D10;
  if (!qword_1EBAB8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB8D10);
  }

  return result;
}

unint64_t sub_1B8D5C970()
{
  result = qword_1EBAB8D20;
  if (!qword_1EBAB8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB8D20);
  }

  return result;
}

unint64_t sub_1B8D5C9C8()
{
  result = qword_1EBAB8D28;
  if (!qword_1EBAB8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB8D28);
  }

  return result;
}

unint64_t sub_1B8D5CA20()
{
  result = qword_1EBAB8D30;
  if (!qword_1EBAB8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB8D30);
  }

  return result;
}

unint64_t sub_1B8D5CA78()
{
  result = qword_1EBAB8D38;
  if (!qword_1EBAB8D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAB8D40, &qword_1B964D158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB8D38);
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8D5CD98(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1B8D5CDEC()
{
  sub_1B8D5CE70();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8D5CE70()
{
  if (!qword_1ED9CF540)
  {
    type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo(255);
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9CF540);
    }
  }
}

uint64_t sub_1B8D5CEF0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8D5CF74()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  v6 = type metadata accessor for Searchfoundation_RFVisualProperty(v5);
  v7 = OUTLINED_FUNCTION_6_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_1();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_3_2(v11);
    while (1)
    {
      OUTLINED_FUNCTION_186();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_196();
      sub_1B8D745A4();
      v13 = *v2;
      v14 = *v1;
      sub_1B8D5D124();
      if ((v15 & 1) == 0 || *(v2 + 8) != *(v1 + 8))
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v16);
      v17 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v17)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_14:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D5D124()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_105();
  v59 = type metadata accessor for Searchfoundation_RFImageElement(v6);
  v7 = OUTLINED_FUNCTION_59_1(v59);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_473();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_211();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E60, &unk_1B964D660);
  OUTLINED_FUNCTION_59_1(v61);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_170(v14);
  v15 = type metadata accessor for Searchfoundation_RFVisualElement.OneOf_Element(0);
  v16 = OUTLINED_FUNCTION_59_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_54();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E68, &qword_1B96E2810);
  OUTLINED_FUNCTION_183(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_185();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E70, &unk_1B964D670);
  OUTLINED_FUNCTION_36(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_151();
  v64 = type metadata accessor for Searchfoundation_RFVisualElement(v27);
  v28 = OUTLINED_FUNCTION_19_0(v64);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_33_1();
  v63 = v31;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_107();
  v33 = *(v4 + 16);
  OUTLINED_FUNCTION_411();
  if (!v42 || !v33 || v4 == v1)
  {
    goto LABEL_23;
  }

  v56 = v3;
  v57 = v0;
  v58 = v2;
  OUTLINED_FUNCTION_60_0(v34);
  v36 = v4 + v35;
  v37 = v1 + v35;
  v62 = *(v38 + 72);
  v66 = v5;
  v55 = v15;
  while (1)
  {
    sub_1B8D745A4();
    OUTLINED_FUNCTION_677();
    sub_1B8D745A4();
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_601();
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v5);
    if (!v42)
    {
      break;
    }

    OUTLINED_FUNCTION_90(v5 + v1);
    if (!v42)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_271();
    sub_1B8D9207C(v39, v40, v41);
LABEL_14:
    OUTLINED_FUNCTION_551(v64);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v53);
    v1 = OUTLINED_FUNCTION_722();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_196();
    sub_1B8D745F8();
    if (v1)
    {
      v37 += v62;
      v36 += v62;
      OUTLINED_FUNCTION_423();
      v5 = v66;
      if (!v42)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_425();
  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v5 + v1);
  if (v42)
  {
    OUTLINED_FUNCTION_297();
    sub_1B8D745F8();
LABEL_20:
    sub_1B8D9207C(v5, &qword_1EBAB8E70, &unk_1B964D670);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_471();
  sub_1B8D920D4();
  v43 = *(v61 + 48);
  sub_1B8D745A4();
  sub_1B8D745A4();
  sub_1B8D920D4();
  sub_1B8D920D4();
  sub_1B8D5D6F4(*v56, *v58, v44, v45, v46, v47, v48, v49, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  if (v50)
  {
    OUTLINED_FUNCTION_551(v59);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v51);
    OUTLINED_FUNCTION_395();
    v52 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_243_0();
    sub_1B8D745F8();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_246();
    sub_1B8D745F8();
    sub_1B8D9207C(v66, &qword_1EBAB8E68, &qword_1B96E2810);
    if ((v52 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  sub_1B8D745F8();
  OUTLINED_FUNCTION_629();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_311();
  sub_1B8D745F8();
  sub_1B8D9207C(v5, &qword_1EBAB8E68, &qword_1B96E2810);
LABEL_22:
  sub_1B8D745F8();
  sub_1B8D745F8();
LABEL_23:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D5D6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v25;
  a20 = v26;
  v27 = OUTLINED_FUNCTION_280();
  v28 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(v27);
  v29 = OUTLINED_FUNCTION_59_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DD8, &qword_1B964D5D8);
  OUTLINED_FUNCTION_59_1(v73);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_185();
  v70 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v37 = OUTLINED_FUNCTION_183(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v40);
  v41 = OUTLINED_FUNCTION_68();
  v74 = type metadata accessor for Searchfoundation_RFImageSource(v41);
  v42 = OUTLINED_FUNCTION_19_0(v74);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_33_1();
  v75 = v45;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_584();
  if (!v61 || !v24 || v21 == v20)
  {
    goto LABEL_22;
  }

  v72 = v22;
  OUTLINED_FUNCTION_60_0(v47);
  v49 = v21 + v48;
  v50 = v20 + v48;
  v71 = *(v51 + 72);
  v52 = v70;
  v69 = v23;
  while (1)
  {
    OUTLINED_FUNCTION_253();
    sub_1B8D745A4();
    sub_1B8D745A4();
    v53 = *(v74 + 20);
    v54 = *(v23 + v53);
    v55 = *(v75 + v53);
    if (v54 == v55)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_515();
    OUTLINED_FUNCTION_521();
    v56 = *(v73 + 48);
    OUTLINED_FUNCTION_113();
    sub_1B8D92024();
    OUTLINED_FUNCTION_479();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v52);
    if (v61)
    {

      v57 = OUTLINED_FUNCTION_243_0();
      sub_1B8D9207C(v57, v58, &unk_1B964D5E0);
      OUTLINED_FUNCTION_50(v52 + v56);
      v23 = v69;
      if (!v61)
      {
        goto LABEL_19;
      }

      v59 = OUTLINED_FUNCTION_246();
      sub_1B8D9207C(v59, v60, &unk_1B964D5E0);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_694(&a17);
    OUTLINED_FUNCTION_515();
    OUTLINED_FUNCTION_50(v52 + v56);
    if (v61)
    {
      break;
    }

    OUTLINED_FUNCTION_430();
    OUTLINED_FUNCTION_513(&a16);
    sub_1B8D920D4();

    OUTLINED_FUNCTION_243_0();
    static Searchfoundation_RFImageSource.OneOf_Value.== infix(_:_:)();
    v63 = v62;
    v52 = v70;
    sub_1B8D745F8();
    sub_1B8D9207C(v72, &qword_1EBAB8DE0, &unk_1B964D5E0);
    OUTLINED_FUNCTION_218();
    sub_1B8D745F8();
    v64 = OUTLINED_FUNCTION_303();
    sub_1B8D9207C(v64, v65, &unk_1B964D5E0);
    v23 = v69;
    if ((v63 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    v66 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
    OUTLINED_FUNCTION_521();
    LODWORD(v66) = *(v54 + v66);
    v67 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
    OUTLINED_FUNCTION_521();
    LODWORD(v67) = *(v55 + v67);

    if (v66 != v67)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v68);
    if ((sub_1B964C850() & 1) == 0)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_399();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_218();
    sub_1B8D745F8();
    v50 += v71;
    v49 += v71;
    if (!--v24)
    {
      goto LABEL_22;
    }
  }

  sub_1B8D9207C(v72, &qword_1EBAB8DE0, &unk_1B964D5E0);
  OUTLINED_FUNCTION_465();
  sub_1B8D745F8();
LABEL_19:
  sub_1B8D9207C(v52, &qword_1EBAB8DD8, &qword_1B964D5D8);
LABEL_20:

LABEL_21:
  OUTLINED_FUNCTION_399();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_218();
  sub_1B8D745F8();
LABEL_22:
  OUTLINED_FUNCTION_283();
}

void sub_1B8D5DBD8()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_252();
  v5 = OUTLINED_FUNCTION_301(*MEMORY[0x1E69E9840]);
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v5);
  v7 = OUTLINED_FUNCTION_19_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43();
  if (!v14 || !v0 || v4 == v1)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_51_0(v11);
  v97 = v6;
  while (1)
  {
    OUTLINED_FUNCTION_236();
    sub_1B8D745A4();
    OUTLINED_FUNCTION_275();
    sub_1B8D745A4();
    OUTLINED_FUNCTION_154();
    v14 = v14 && v12 == v13;
    if (!v14 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_582();
    if (!v14)
    {
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_581();
    if (!v14)
    {
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_580();
    if (!v14)
    {
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_579();
    if (!v14)
    {
      goto LABEL_141;
    }

    v15 = v3[6];
    v16 = *(v2 + 48);
    if (*(v2 + 56) == 1)
    {
      switch(v16)
      {
        case 1:
          if (v15 != 1)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 2:
          if (v15 != 2)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 3:
          if (v15 != 3)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 4:
          if (v15 != 4)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 5:
          if (v15 != 5)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 6:
          if (v15 != 6)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 7:
          if (v15 != 7)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 8:
          if (v15 != 8)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 9:
          if (v15 != 9)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 10:
          if (v15 != 10)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 11:
          if (v15 != 11)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        case 12:
          if (v15 != 12)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
        default:
          if (v15)
          {
            goto LABEL_141;
          }

          goto LABEL_24;
      }
    }

    if (v15 != v16)
    {
LABEL_141:
      OUTLINED_FUNCTION_143();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
LABEL_142:
      v95 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
    }

LABEL_24:
    OUTLINED_FUNCTION_578();
    if (!v14)
    {
      goto LABEL_141;
    }

    v17 = v3[8];
    v18 = *(v2 + 64);
    if (*(v2 + 72) == 1)
    {
      switch(v18)
      {
        case 1:
          if (v17 != 1)
          {
            goto LABEL_141;
          }

          goto LABEL_31;
        case 2:
          if (v17 != 2)
          {
            goto LABEL_141;
          }

          goto LABEL_31;
        case 3:
          if (v17 != 3)
          {
            goto LABEL_141;
          }

          goto LABEL_31;
        case 4:
          if (v17 != 4)
          {
            goto LABEL_141;
          }

          goto LABEL_31;
        case 5:
          if (v17 != 5)
          {
            goto LABEL_141;
          }

          goto LABEL_31;
        case 6:
          if (v17 != 6)
          {
            goto LABEL_141;
          }

          goto LABEL_31;
        default:
          if (v17)
          {
            goto LABEL_141;
          }

          goto LABEL_31;
      }
    }

    if (v17 != v18)
    {
      goto LABEL_141;
    }

LABEL_31:
    v19 = v3[10];
    v20 = v3[11];
    v22 = *(v2 + 80);
    v21 = *(v2 + 88);
    OUTLINED_FUNCTION_161();
    if (!v14)
    {
      switch(v25)
      {
        case 1:
          if (!__OFSUB__(v24, v23))
          {
            goto LABEL_46;
          }

          goto LABEL_145;
        case 2:
          OUTLINED_FUNCTION_250();
          if (!v29)
          {
            goto LABEL_46;
          }

          goto LABEL_146;
        default:
          goto LABEL_46;
      }
    }

    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_421();
    v28 = v14 && v26 >= 3;
    if (!v28 || v22 || v21 != v27)
    {
      break;
    }

LABEL_136:
    v93 = *(v97 + 52);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v94);
    OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_360();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_253();
    sub_1B8D745F8();
    if (v1)
    {
      OUTLINED_FUNCTION_56();
      if (!v14)
      {
        continue;
      }
    }

    goto LABEL_142;
  }

LABEL_46:
  OUTLINED_FUNCTION_160();
  switch(v35)
  {
    case 1:
      LODWORD(v36) = v32 - v22;
      if (__OFSUB__(v32, v22))
      {
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
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
      }

      v36 = v36;
LABEL_55:
      if (v34 != v36)
      {
        goto LABEL_141;
      }

      if (v34 < 1)
      {
        goto LABEL_136;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_420();
      if (!v29)
      {
        goto LABEL_55;
      }

      goto LABEL_144;
    case 3:
      if (v34)
      {
        goto LABEL_141;
      }

      goto LABEL_136;
    default:
      v36 = v30;
      goto LABEL_55;
  }

  v37 = v22 >> 32;
  switch(v33)
  {
    case 1:
      OUTLINED_FUNCTION_290();
      if (v65 != v29)
      {
        goto LABEL_147;
      }

      v66 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v66, v67);
      v68 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v68, v69);
      v70 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v70, v71);
      if (!sub_1B964C070())
      {
        goto LABEL_121;
      }

      sub_1B964C090();
      OUTLINED_FUNCTION_497();
      if (!v29)
      {
        goto LABEL_121;
      }

      goto LABEL_150;
    case 2:
      v51 = *(v31 + 16);
      v96 = *(v31 + 24);
      v52 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v52, v53);
      v54 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v54, v55);
      v56 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v56, v57);
      if (sub_1B964C070() && __OFSUB__(v51, sub_1B964C090()))
      {
        goto LABEL_149;
      }

      OUTLINED_FUNCTION_453();
      if (v29)
      {
        goto LABEL_148;
      }

LABEL_121:
      LOBYTE(v1) = v20;
      sub_1B964C080();
      OUTLINED_FUNCTION_22_2();
      v72 = OUTLINED_FUNCTION_2();
      sub_1B8D538A0(v72, v73);
      v74 = OUTLINED_FUNCTION_2();
      sub_1B8D538A0(v74, v75);
      v76 = OUTLINED_FUNCTION_2();
      sub_1B8D538A0(v76, v77);
      if ((v98 & 1) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_136;
    case 3:
      OUTLINED_FUNCTION_434();
      if (!v58)
      {
        goto LABEL_95;
      }

      if (v58 == 2)
      {
        v59 = *(v22 + 16);
        v60 = *(v22 + 24);
        v61 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v61, v62);
        v63 = sub_1B964C070();
        if (v63)
        {
          v64 = sub_1B964C090();
          if (__OFSUB__(v59, v64))
          {
            goto LABEL_156;
          }

          v63 += v59 - v64;
        }

        if (__OFSUB__(v60, v59))
        {
          goto LABEL_153;
        }

        sub_1B964C080();
        if (!v63)
        {
          goto LABEL_160;
        }

LABEL_134:
        v82 = OUTLINED_FUNCTION_102_0();
        goto LABEL_135;
      }

      if (v37 < v22)
      {
        goto LABEL_152;
      }

      v78 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v78, v79);
      v80 = sub_1B964C070();
      if (v80)
      {
        v81 = sub_1B964C090();
        if (__OFSUB__(v22, v81))
        {
          goto LABEL_157;
        }

        v80 += v22 - v81;
      }

      sub_1B964C080();
      if (v80)
      {
LABEL_128:
        v82 = OUTLINED_FUNCTION_80_0();
LABEL_135:
        LODWORD(v1) = memcmp(v82, v83, v84);
        v91 = OUTLINED_FUNCTION_2();
        sub_1B8D538A0(v91, v92);
        if (v1)
        {
          goto LABEL_141;
        }

        goto LABEL_136;
      }

      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      return;
    default:
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_291();
      if (!v46)
      {
LABEL_95:
        if (OUTLINED_FUNCTION_9_1(v38, v39, v40, v41, v42, v43, v44, v45))
        {
          goto LABEL_141;
        }

        goto LABEL_136;
      }

      if (v46 == 1)
      {
        if (v37 < v22)
        {
          goto LABEL_151;
        }

        v47 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v47, v48);
        v49 = sub_1B964C070();
        if (v49)
        {
          v50 = sub_1B964C090();
          if (__OFSUB__(v22, v50))
          {
            goto LABEL_158;
          }

          v49 += v22 - v50;
        }

        sub_1B964C080();
        if (!v49)
        {
          goto LABEL_162;
        }

        goto LABEL_128;
      }

      v85 = *(v22 + 16);
      v86 = *(v22 + 24);
      v87 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v87, v88);
      v89 = sub_1B964C070();
      if (v89)
      {
        v90 = sub_1B964C090();
        if (__OFSUB__(v85, v90))
        {
          goto LABEL_155;
        }

        v89 += v85 - v90;
      }

      if (__OFSUB__(v86, v85))
      {
        goto LABEL_154;
      }

      sub_1B964C080();
      if (!v89)
      {
        goto LABEL_161;
      }

      goto LABEL_134;
  }
}

void sub_1B8D5E328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v150 = *MEMORY[0x1E69E9840];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90A8, &qword_1B964D898);
  OUTLINED_FUNCTION_59_1(v145);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_185();
  v146 = v30;
  v31 = OUTLINED_FUNCTION_201();
  v32 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(v31);
  v33 = OUTLINED_FUNCTION_59_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_183(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_116();
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B8, &qword_1B9685F70);
  OUTLINED_FUNCTION_59_1(v148);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_164();
  v147 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0);
  v43 = OUTLINED_FUNCTION_19_0(v147);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_63_0();
  v47 = *(v26 + 16);
  OUTLINED_FUNCTION_231_0();
  if (!v56 || !v47 || v26 == v24)
  {
    goto LABEL_114;
  }

  OUTLINED_FUNCTION_60_0(v48);
  v50 = v26 + v49;
  v51 = v24 + v49;
  v144 = *(v52 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_472();
    sub_1B8D745A4();
    sub_1B8D745A4();
    v53 = *(v148 + 48);
    OUTLINED_FUNCTION_199();
    sub_1B8D92024();
    OUTLINED_FUNCTION_684();
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v20);
    if (v56)
    {
      OUTLINED_FUNCTION_99_0(v20 + v53);
      if (!v56)
      {
        goto LABEL_111;
      }

      v54 = OUTLINED_FUNCTION_502();
      sub_1B8D9207C(v54, v55, &unk_1B964D8A0);
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_684();
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v20 + v53);
    if (v56)
    {
      OUTLINED_FUNCTION_523();
LABEL_111:
      v131 = &qword_1EBAB90B8;
      v132 = &qword_1B9685F70;
      goto LABEL_112;
    }

    sub_1B8D920D4();
    v57 = (v146 + *(v145 + 48));
    sub_1B8D745A4();
    OUTLINED_FUNCTION_481();
    sub_1B8D745A4();
    v58 = *v146 == *v57 && v146[1] == v57[1];
    if (!v58 && (sub_1B964C9F0() & 1) == 0)
    {
LABEL_109:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_182();
      sub_1B8D745F8();
      sub_1B8D745F8();
      sub_1B8D745F8();
      v131 = &qword_1EBAB90B0;
      v132 = &unk_1B964D8A0;
LABEL_112:
      sub_1B8D9207C(v20, v131, v132);
LABEL_113:
      sub_1B8D745F8();
      sub_1B8D745F8();
LABEL_114:
      v133 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
    }

    v59 = v146[2];
    v60 = v146[3];
    v62 = v57[2];
    v61 = v57[3];
    OUTLINED_FUNCTION_558();
    if (!v56)
    {
      break;
    }

    v68 = 0;
    if (v64)
    {
      goto LABEL_33;
    }

    if (v60 != 0xC000000000000000 || v63 < 3)
    {
      goto LABEL_33;
    }

    v68 = 0;
    if (v62 || v61 != 0xC000000000000000)
    {
      goto LABEL_33;
    }

LABEL_93:
    v124 = v146[4] == v57[4] && v146[5] == v57[5];
    if (!v124 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_109;
    }

    v125 = v146[6] == v57[6] && v146[7] == v57[7];
    if (!v125 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_109;
    }

    v126 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0) + 32);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v127);
    v128 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_461();
    sub_1B8D745F8();
    sub_1B8D745F8();
    sub_1B8D745F8();
    sub_1B8D9207C(v20, &qword_1EBAB90B0, &unk_1B964D8A0);
    if ((v128 & 1) == 0)
    {
      goto LABEL_113;
    }

LABEL_104:
    OUTLINED_FUNCTION_551(v147);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v129);
    v130 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_461();
    sub_1B8D745F8();
    if (v130)
    {
      v51 += v144;
      v50 += v144;
      OUTLINED_FUNCTION_237_0();
      if (!v56)
      {
        continue;
      }
    }

    goto LABEL_114;
  }

  v68 = 0;
  switch(v66)
  {
    case 1:
      if (__OFSUB__(v65, v64))
      {
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
      }

      v68 = v65 - v64;
      break;
    case 2:
      OUTLINED_FUNCTION_250();
      if (!v69)
      {
        break;
      }

      goto LABEL_117;
    case 3:
      break;
    default:
      v68 = BYTE6(v60);
      break;
  }

LABEL_33:
  switch(v63)
  {
    case 1uLL:
      LODWORD(v70) = HIDWORD(v62) - v62;
      if (__OFSUB__(HIDWORD(v62), v62))
      {
        goto LABEL_115;
      }

      v70 = v70;
LABEL_42:
      if (v68 != v70)
      {
        goto LABEL_109;
      }

      if (v68 < 1)
      {
        goto LABEL_93;
      }

      break;
    case 2uLL:
      v72 = *(v62 + 16);
      v71 = *(v62 + 24);
      v69 = __OFSUB__(v71, v72);
      v70 = v71 - v72;
      if (!v69)
      {
        goto LABEL_42;
      }

      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    case 3uLL:
      if (v68)
      {
        goto LABEL_109;
      }

      goto LABEL_93;
    default:
      v70 = BYTE6(v61);
      goto LABEL_42;
  }

  v73 = v62 >> 32;
  switch(v66)
  {
    case 1:
      if (v64 >> 32 < v64)
      {
        goto LABEL_118;
      }

      v138 = v64;
      v93 = OUTLINED_FUNCTION_205();
      sub_1B8D91FCC(v93, v94);
      v95 = OUTLINED_FUNCTION_205();
      sub_1B8D91FCC(v95, v96);
      v97 = OUTLINED_FUNCTION_205();
      sub_1B8D91FCC(v97, v98);
      v99 = sub_1B964C070();
      v143 = v61;
      if (!v99)
      {
        goto LABEL_71;
      }

      v100 = OUTLINED_FUNCTION_719(v99, &a18);
      if (__OFSUB__(v138, v100))
      {
        goto LABEL_121;
      }

      OUTLINED_FUNCTION_611(v138 - v100);
      goto LABEL_71;
    case 2:
      v136 = *(v64 + 24);
      v140 = *(v64 + 16);
      v78 = OUTLINED_FUNCTION_205();
      sub_1B8D91FCC(v78, v79);
      v80 = OUTLINED_FUNCTION_205();
      sub_1B8D91FCC(v80, v81);
      v82 = OUTLINED_FUNCTION_205();
      sub_1B8D91FCC(v82, v83);
      v84 = sub_1B964C070();
      v143 = v61;
      if (v84)
      {
        v85 = OUTLINED_FUNCTION_719(v84, &a18);
        if (__OFSUB__(v140, v85))
        {
          goto LABEL_120;
        }

        OUTLINED_FUNCTION_611(v140 - v85);
      }

      else
      {
        v86 = v140;
      }

      if (__OFSUB__(v136, v86))
      {
        goto LABEL_119;
      }

LABEL_71:
      sub_1B964C080();
      OUTLINED_FUNCTION_609();
      OUTLINED_FUNCTION_460();
      sub_1B8D91D0C(v101, v62, v143, v149);
      v102 = OUTLINED_FUNCTION_375();
      sub_1B8D538A0(v102, v103);
      v104 = OUTLINED_FUNCTION_375();
      sub_1B8D538A0(v104, v105);
      v106 = OUTLINED_FUNCTION_375();
      sub_1B8D538A0(v106, v107);
      if ((v149[0] & 1) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_93;
    case 3:
      memset(v149, 0, 14);
      if (!v63)
      {
        goto LABEL_65;
      }

      if (v63 == 2)
      {
        v137 = *(v62 + 24);
        v141 = *(v62 + 16);
        v87 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v87, v88);
        v89 = sub_1B964C070();
        if (v89)
        {
          v90 = v89;
          v91 = sub_1B964C090();
          v92 = v141;
          if (__OFSUB__(v141, v91))
          {
            goto LABEL_127;
          }

          v134 = (v141 - v91 + v90);
        }

        else
        {
          v134 = 0;
          v92 = v141;
        }

        v119 = v137 - v92;
        if (__OFSUB__(v137, v92))
        {
          goto LABEL_125;
        }

        v120 = sub_1B964C080();
        v112 = v134;
        if (!v134)
        {
          goto LABEL_131;
        }

LABEL_89:
        if (v120 >= v119)
        {
          v111 = v119;
        }

        else
        {
          v111 = v120;
        }

        goto LABEL_92;
      }

      if (v73 < v62)
      {
        goto LABEL_122;
      }

      v108 = OUTLINED_FUNCTION_205();
      sub_1B8D91FCC(v108, v109);
      v76 = sub_1B964C070();
      if (v76)
      {
        v110 = sub_1B964C090();
        if (__OFSUB__(v62, v110))
        {
          goto LABEL_128;
        }

        v76 += v62 - v110;
      }

      sub_1B964C080();
      if (v76)
      {
LABEL_78:
        OUTLINED_FUNCTION_241();
        v112 = v76;
LABEL_92:
        v121 = memcmp(v149, v112, v111);
        v122 = OUTLINED_FUNCTION_205();
        sub_1B8D538A0(v122, v123);
        if (v121)
        {
          goto LABEL_109;
        }

        goto LABEL_93;
      }

      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      return;
    default:
      v149[0] = v64;
      LOBYTE(v149[1]) = BYTE2(v64);
      HIBYTE(v149[1]) = BYTE3(v64);
      LOBYTE(v149[2]) = v65;
      HIBYTE(v149[2]) = BYTE5(v64);
      LOBYTE(v149[3]) = BYTE6(v64);
      HIBYTE(v149[3]) = HIBYTE(v64);
      v149[4] = v60;
      LOBYTE(v149[5]) = BYTE2(v60);
      HIBYTE(v149[5]) = BYTE3(v60);
      LOBYTE(v149[6]) = BYTE4(v60);
      HIBYTE(v149[6]) = BYTE5(v60);
      if (!v63)
      {
LABEL_65:
        if (OUTLINED_FUNCTION_152(SBYTE1(v61), SHIBYTE(v62), BYTE6(v61), SBYTE6(v62), SBYTE5(v62), SBYTE3(v62), SBYTE2(v62), SBYTE1(v62)))
        {
          goto LABEL_109;
        }

        goto LABEL_93;
      }

      if (v63 == 1)
      {
        if (v73 < v62)
        {
          goto LABEL_123;
        }

        v74 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v74, v75);
        v76 = sub_1B964C070();
        if (v76)
        {
          v77 = sub_1B964C090();
          if (__OFSUB__(v62, v77))
          {
            goto LABEL_129;
          }

          v76 += v62 - v77;
        }

        sub_1B964C080();
        if (!v76)
        {
          goto LABEL_133;
        }

        goto LABEL_78;
      }

      v139 = *(v62 + 24);
      v142 = *(v62 + 16);
      v113 = OUTLINED_FUNCTION_205();
      sub_1B8D91FCC(v113, v114);
      v115 = sub_1B964C070();
      if (v115)
      {
        v116 = v115;
        v117 = sub_1B964C090();
        v118 = v142;
        if (__OFSUB__(v142, v117))
        {
          goto LABEL_126;
        }

        v135 = (v142 - v117 + v116);
      }

      else
      {
        v135 = 0;
        v118 = v142;
      }

      v119 = v139 - v118;
      if (__OFSUB__(v139, v118))
      {
        goto LABEL_124;
      }

      v120 = sub_1B964C080();
      v112 = v135;
      if (!v135)
      {
        goto LABEL_132;
      }

      goto LABEL_89;
  }
}

void sub_1B8D5EDF8()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_94();
  v38 = type metadata accessor for Domainresultpb_DomainResult(v4);
  v5 = OUTLINED_FUNCTION_30_1(v38);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_68();
  v10 = type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse(v9);
  v11 = OUTLINED_FUNCTION_19_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v15 = *(v1 + 16);
  OUTLINED_FUNCTION_312();
  if (v17 && v15 && v1 != v0)
  {
    v32 = v15;
    v18 = 0;
    OUTLINED_FUNCTION_60_0(v16);
    OUTLINED_FUNCTION_506();
    v33 = v19;
    OUTLINED_FUNCTION_681(v20);
    v37 = v2;
    while (1)
    {
      OUTLINED_FUNCTION_470(v35);
      sub_1B8D745A4();
      if (v18 == v15)
      {
        break;
      }

      OUTLINED_FUNCTION_640();
      v21 = *v3;
      if (*(v3 + 8) == 1)
      {
        v21 = qword_1B964E438[v21];
      }

      v22 = *v2;
      v36 = v18;
      if (*(v2 + 8))
      {
        switch(v22)
        {
          case 1:
            if (v21 != 1)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 2:
            if (v21 != 2)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 3:
            if (v21 != 7)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 4:
            if (v21 != 8)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 5:
            if (v21 != 10)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 6:
            if (v21 != 13)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 7:
            if (v21 != 14)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 8:
            if (v21 != 16)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 9:
            if (v21 != 22)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 10:
            if (v21 != 23)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 11:
            if (v21 != 27)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          case 12:
            if (v21 != 42)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
          default:
            if (v21)
            {
              goto LABEL_53;
            }

            goto LABEL_14;
        }
      }

      if (v21 != v22)
      {
        goto LABEL_53;
      }

LABEL_14:
      v23 = v3[2];
      OUTLINED_FUNCTION_190(v37[2]);
      if (!v17)
      {
        goto LABEL_53;
      }

      if (v34 * v18 && v25 != v24)
      {
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_456();
        while (1)
        {
          OUTLINED_FUNCTION_380();
          OUTLINED_FUNCTION_227();
          sub_1B8D745A4();
          OUTLINED_FUNCTION_380();
          OUTLINED_FUNCTION_303();
          sub_1B8D745A4();
          OUTLINED_FUNCTION_226(v38);
          if (!v17)
          {

            v26 = OUTLINED_FUNCTION_542();
            sub_1B8E0BCD4(v26, v27);
            OUTLINED_FUNCTION_647();

            if ((v15 & 1) == 0)
            {
              break;
            }
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v28);
          OUTLINED_FUNCTION_186();
          v29 = sub_1B964C850();
          v15 = type metadata accessor for Domainresultpb_DomainResult;
          sub_1B8D745F8();
          OUTLINED_FUNCTION_253();
          sub_1B8D745F8();
          if ((v29 & 1) == 0)
          {
            goto LABEL_53;
          }

          OUTLINED_FUNCTION_455();
          if (v17)
          {
            goto LABEL_24;
          }
        }

        sub_1B8D745F8();
        OUTLINED_FUNCTION_202();
        sub_1B8D745F8();
LABEL_53:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_197();
        sub_1B8D745F8();
        goto LABEL_54;
      }

LABEL_24:
      OUTLINED_FUNCTION_524(v33);
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v30);
      OUTLINED_FUNCTION_310();
      v2 = v37;
      v31 = OUTLINED_FUNCTION_525();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_245();
      sub_1B8D745F8();
      if (v31)
      {
        v18 = (v18 + 1);
        v15 = v32;
        if ((v36 + 1) != v32)
        {
          continue;
        }
      }

      goto LABEL_54;
    }

    __break(1u);
  }

  else
  {
LABEL_54:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D5F240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v26;
  a20 = v27;
  OUTLINED_FUNCTION_252();
  v28 = OUTLINED_FUNCTION_533(*MEMORY[0x1E69E9840]);
  v29 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(v28);
  v30 = OUTLINED_FUNCTION_59_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
  OUTLINED_FUNCTION_183(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_247_0(v38);
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F08, &qword_1B96B57B0);
  OUTLINED_FUNCTION_59_1(v335);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_185();
  v333 = v42;
  v43 = OUTLINED_FUNCTION_201();
  v344 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(v43);
  v44 = OUTLINED_FUNCTION_30_1(v344);
  v337 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44_0();
  v334 = v48;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v49);
  v50 = OUTLINED_FUNCTION_657_0();
  v336 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(v50);
  v51 = OUTLINED_FUNCTION_59_1(v336);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_381(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F10, &unk_1B964D710);
  OUTLINED_FUNCTION_183(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_185();
  v341 = v59;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F18, &unk_1B96B57A0);
  OUTLINED_FUNCTION_59_1(v332);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_185();
  v338 = v63;
  OUTLINED_FUNCTION_201();
  v331 = sub_1B964C1C0();
  v64 = OUTLINED_FUNCTION_30_1(v331);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_247_0(v74);
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1(v330);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_164();
  v343 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
  v78 = OUTLINED_FUNCTION_59_1(v343);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_484(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F30, &qword_1B964D730);
  OUTLINED_FUNCTION_183(v82);
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_185();
  v339 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F38, &qword_1B964D738);
  OUTLINED_FUNCTION_59_1(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_185();
  v342 = v91;
  v92 = OUTLINED_FUNCTION_201();
  v347 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v92);
  v93 = OUTLINED_FUNCTION_30_1(v347);
  v340 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_44_0();
  v348 = v97;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_441();
  v99 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering(0);
  v100 = OUTLINED_FUNCTION_19_0(v99);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_55();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_675();
  v104 = *(v22 + 16);
  OUTLINED_FUNCTION_260();
  if (!v117 || !v107 || v22 == v20)
  {
    goto LABEL_280;
  }

  v323 = v105;
  OUTLINED_FUNCTION_60_0(v106);
  v317 = (v66 + 8);
  v329 = v21;
  v110 = v338;
  v318 = v23;
  v327 = v111;
  v322 = *(v109 + 72);
  while (1)
  {
    v112 = v108;
    OUTLINED_FUNCTION_494();
    sub_1B8D745A4();
    v325 = v112;
    if (v112 == v327)
    {
      goto LABEL_283;
    }

    OUTLINED_FUNCTION_244(&v349);
    sub_1B8D745A4();
    v113 = *v25;
    v114 = *(v25 + 8);
    OUTLINED_FUNCTION_670();
    v117 = v117 && v115 == v116;
    if (!v117 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_279;
    }

    v118 = *(v25 + 16) == *(v24 + 16) && *(v25 + 24) == *(v24 + 24);
    if (!v118 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_279;
    }

    v119 = *(v25 + 32);
    v120 = *(v24 + 32);
    v121 = *(v119 + 16);
    if (v121 != *(v120 + 16))
    {
      goto LABEL_279;
    }

    if (v121 && v119 != v120)
    {
      break;
    }

LABEL_261:
    if (*(v25 + 40) != *(v24 + 40))
    {
      goto LABEL_279;
    }

    OUTLINED_FUNCTION_621(v323);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v309);
    OUTLINED_FUNCTION_594();
    v310 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_622();
    if (v310)
    {
      v108 = v325 + 1;
      if (v325 + 1 != v327)
      {
        continue;
      }
    }

    goto LABEL_280;
  }

  v122 = 0;
  OUTLINED_FUNCTION_93(v340);
  v324 = v87;
  v321 = v119;
  v320 = v120;
  v319 = v121;
  while (1)
  {
    if (v122 >= *(v119 + 16))
    {
      goto LABEL_284;
    }

    v123 = *(v340 + 72) * v122;
    OUTLINED_FUNCTION_356();
    OUTLINED_FUNCTION_244(&v348);
    OUTLINED_FUNCTION_599(&a15);
    sub_1B8D745A4();
    if (v122 >= *(v120 + 16))
    {
      goto LABEL_285;
    }

    v326 = v122;
    OUTLINED_FUNCTION_356();
    OUTLINED_FUNCTION_244(&v347);
    OUTLINED_FUNCTION_489();
    sub_1B8D745A4();
    v124 = *(v347 + 28);
    v125 = *(v87 + 48);
    v126 = v342;
    sub_1B8D92024();
    OUTLINED_FUNCTION_644();
    v127 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_81(v127, v128);
    if (!v117)
    {
      v129 = v339;
      OUTLINED_FUNCTION_644();
      OUTLINED_FUNCTION_37_0(v125 + v126);
      if (v130)
      {
        OUTLINED_FUNCTION_523();
LABEL_271:
        v311 = &qword_1EBAB8F38;
        v312 = &qword_1B964D738;
        v313 = v126;
        goto LABEL_277;
      }

      v131 = v345;
      sub_1B8D920D4();
      v132 = *v129;
      v133 = *v131;
      v134 = *(v131 + 8);
      v135 = v134 == 1;
      if (v134 == 1)
      {
        v87 = v324;
        v136 = v318;
        switch(v133)
        {
          case 1:
            v135 = v132 == 1;
            if (v132 != 1)
            {
              goto LABEL_276;
            }

            goto LABEL_34;
          case 2:
            v135 = v132 == 2;
            if (v132 != 2)
            {
              goto LABEL_276;
            }

            goto LABEL_34;
          case 3:
            v135 = v132 == 3;
            if (v132 != 3)
            {
              goto LABEL_276;
            }

            goto LABEL_34;
          case 4:
            v135 = v132 == 4;
            if (v132 != 4)
            {
              goto LABEL_276;
            }

            goto LABEL_34;
          case 5:
            v135 = v132 == 5;
            if (v132 != 5)
            {
              goto LABEL_276;
            }

            goto LABEL_34;
          case 6:
            v135 = v132 == 6;
            if (v132 != 6)
            {
              goto LABEL_276;
            }

            goto LABEL_34;
          case 7:
            v135 = v132 == 7;
            if (v132 != 7)
            {
              goto LABEL_276;
            }

            goto LABEL_34;
          case 8:
            v135 = v132 == 8;
            if (v132 != 8)
            {
              goto LABEL_276;
            }

            goto LABEL_34;
          default:
            if (v132)
            {
              goto LABEL_276;
            }

            goto LABEL_34;
        }
      }

      v135 = v132 == v133;
      v87 = v324;
      v136 = v318;
      if (v132 != v133)
      {
        goto LABEL_276;
      }

LABEL_34:
      v137 = v129[2];
      v138 = v129[3];
      v139 = v138 >> 62;
      v141 = v345[2];
      v140 = v345[3];
      v142 = v140 >> 62;
      if (v135)
      {
        v144 = 0;
        if (!v137)
        {
          if (v138 == 0xC000000000000000)
          {
            v143 = v140 >> 62 == 3;
            v135 = v142 == 3;
          }

          else
          {
            v143 = 0;
            v135 = 0;
          }

          if (v143)
          {
            v144 = 0;
            if (!v141)
            {
              v135 = v140 == 0xC000000000000000;
              if (v140 == 0xC000000000000000)
              {
                goto LABEL_70;
              }
            }
          }
        }
      }

      else
      {
        v144 = 0;
        switch(v139)
        {
          case 0uLL:
            v144 = BYTE6(v138);
            break;
          case 1uLL:
            LODWORD(v144) = HIDWORD(v137) - v137;
            v135 = HIDWORD(v137) == v137;
            if (__OFSUB__(HIDWORD(v137), v137))
            {
              goto LABEL_290;
            }

            v144 = v144;
            break;
          case 2uLL:
            v146 = *(v137 + 16);
            v145 = *(v137 + 24);
            v147 = __OFSUB__(v145, v146);
            v144 = v145 - v146;
            v135 = v144 == 0;
            if (!v147)
            {
              break;
            }

            goto LABEL_291;
          case 3uLL:
            break;
          default:
LABEL_296:
            JUMPOUT(0);
        }
      }

      switch(v142)
      {
        case 1uLL:
          LODWORD(v148) = HIDWORD(v141) - v141;
          if (__OFSUB__(HIDWORD(v141), v141))
          {
            goto LABEL_287;
          }

          v148 = v148;
LABEL_59:
          if (v144 != v148)
          {
            goto LABEL_276;
          }

          v135 = v144 == 1;
          if (v144 >= 1)
          {
            switch(v139)
            {
              case 1:
                v177 = v137 >> 32;
                if (v137 >> 32 < v137)
                {
                  goto LABEL_294;
                }

                v178 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v178, v179);
                v180 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v180, v181);
                v182 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v182, v183);
                OUTLINED_FUNCTION_236();
                OUTLINED_FUNCTION_426();
                OUTLINED_FUNCTION_436();
                v184 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v184, v185);
                v186 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v186, v187);
                v129 = v339;
                if (v177)
                {
                  goto LABEL_70;
                }

                goto LABEL_276;
              case 2:
                v158 = *(v137 + 16);
                v157 = *(v137 + 24);
                v159 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v159, v160);
                v161 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v161, v162);
                v163 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v163, v164);
                OUTLINED_FUNCTION_246();
                OUTLINED_FUNCTION_426();
                OUTLINED_FUNCTION_436();
                v129 = v339;
                v165 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v165, v166);
                v167 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v167, v168);
                if ((v158 & 1) == 0)
                {
                  goto LABEL_276;
                }

                goto LABEL_70;
              case 3:
                *(v350 + 6) = 0;
                v350[0] = 0;
                v169 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v169, v170);
                v171 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v171, v172);
                v155 = OUTLINED_FUNCTION_664();
                goto LABEL_66;
              default:
                OUTLINED_FUNCTION_213();
                v151 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v151, v152);
                v153 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v153, v154);
                v155 = OUTLINED_FUNCTION_664();
LABEL_66:
                OUTLINED_FUNCTION_709(v155, v156);
                v129 = v339;
                v173 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v173, v174);
                v175 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v175, v176);
                if ((v349 & 0x100000000000000) == 0)
                {
                  goto LABEL_276;
                }

                goto LABEL_70;
            }
          }

          break;
        case 2uLL:
          v150 = *(v141 + 16);
          v149 = *(v141 + 24);
          v147 = __OFSUB__(v149, v150);
          v148 = v149 - v150;
          if (!v147)
          {
            goto LABEL_59;
          }

          goto LABEL_286;
        case 3uLL:
          if (v144)
          {
            goto LABEL_276;
          }

          break;
        default:
          v148 = BYTE6(v140);
          goto LABEL_59;
      }

LABEL_70:
      v188 = v129[4];
      v189 = v129[5];
      v190 = v189 >> 62;
      v192 = v345[4];
      v191 = v345[5];
      if (v135)
      {
        v194 = 0;
        if (!v188 && v189 == 0xC000000000000000 && v191 >> 62 == 3)
        {
          v194 = 0;
          if (!v192 && v191 == 0xC000000000000000)
          {
LABEL_106:
            v237 = *(v343 + 32);
            OUTLINED_FUNCTION_447(&a13);
            v126 = &qword_1EBAB8F20;
            sub_1B8D92024();
            OUTLINED_FUNCTION_549();
            v238 = OUTLINED_FUNCTION_355();
            OUTLINED_FUNCTION_98(v238, v239);
            if (v117)
            {
              OUTLINED_FUNCTION_57(v136 + v189);
              if (!v117)
              {
                goto LABEL_275;
              }

              OUTLINED_FUNCTION_466();
              sub_1B8D9207C(v240, v241, v242);
              v243 = v339;
LABEL_113:
              v251 = *(v343 + 28);
              sub_1B964C2B0();
              OUTLINED_FUNCTION_0_2();
              sub_1B8D5C8D0(&qword_1EBAB3B38, v252);
              v253 = OUTLINED_FUNCTION_712();
              v125 = v243;
              sub_1B8D745F8();
              OUTLINED_FUNCTION_514();
              sub_1B8D745F8();
              sub_1B8D9207C(v342, &qword_1EBAB8F30, &qword_1B964D730);
              v110 = v338;
              OUTLINED_FUNCTION_293();
              if ((v253 & 1) == 0)
              {
                goto LABEL_278;
              }

              goto LABEL_114;
            }

            OUTLINED_FUNCTION_549();
            OUTLINED_FUNCTION_57(v136 + v189);
            if (!v244)
            {
              OUTLINED_FUNCTION_422(&v333);
              v245(v328, v136 + v189, v331);
              OUTLINED_FUNCTION_25_1();
              sub_1B8D5C8D0(&qword_1EBAB8F40, v246);
              OUTLINED_FUNCTION_257();
              v247 = sub_1B964C850();
              v126 = v317;
              v248 = *v317;
              v249 = OUTLINED_FUNCTION_246();
              v248(v249);
              v250 = OUTLINED_FUNCTION_196();
              v248(v250);
              sub_1B8D9207C(v136, &qword_1EBAB8F20, &qword_1B964D720);
              v243 = v339;
              if ((v247 & 1) == 0)
              {
                goto LABEL_276;
              }

              goto LABEL_113;
            }

            OUTLINED_FUNCTION_422(&v334);
            v314 = OUTLINED_FUNCTION_196();
            v315(v314);
LABEL_275:
            sub_1B8D9207C(v136, &qword_1EBAB8F28, &unk_1B9683B20);
LABEL_276:
            sub_1B8D745F8();
            OUTLINED_FUNCTION_571();
            v311 = &qword_1EBAB8F30;
            v312 = &qword_1B964D730;
            v313 = v342;
LABEL_277:
            sub_1B8D9207C(v313, v311, v312);
            OUTLINED_FUNCTION_293();
            goto LABEL_278;
          }
        }
      }

      else
      {
        v194 = 0;
        switch(v190)
        {
          case 0uLL:
            v194 = BYTE6(v189);
            break;
          case 1uLL:
            LODWORD(v194) = HIDWORD(v188) - v188;
            if (__OFSUB__(HIDWORD(v188), v188))
            {
              goto LABEL_293;
            }

            v194 = v194;
            break;
          case 2uLL:
            v196 = *(v188 + 16);
            v195 = *(v188 + 24);
            v147 = __OFSUB__(v195, v196);
            v194 = v195 - v196;
            if (!v147)
            {
              break;
            }

            goto LABEL_292;
          case 3uLL:
            break;
          default:
            goto LABEL_296;
        }
      }

      switch(v191 >> 62)
      {
        case 1uLL:
          LODWORD(v197) = HIDWORD(v192) - v192;
          if (__OFSUB__(HIDWORD(v192), v192))
          {
            goto LABEL_289;
          }

          v197 = v197;
LABEL_95:
          if (v194 != v197)
          {
            goto LABEL_276;
          }

          if (v194 >= 1)
          {
            switch(v190)
            {
              case 1:
                v226 = v188 >> 32;
                if (v188 >> 32 < v188)
                {
                  goto LABEL_295;
                }

                v227 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v227, v228);
                v229 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v229, v230);
                v231 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v231, v232);
                OUTLINED_FUNCTION_236();
                OUTLINED_FUNCTION_426();
                OUTLINED_FUNCTION_436();
                v233 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v233, v234);
                v235 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v235, v236);
                if (v226)
                {
                  goto LABEL_106;
                }

                goto LABEL_276;
              case 2:
                v206 = *(v188 + 16);
                v207 = *(v188 + 24);
                v208 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v208, v209);
                v210 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v210, v211);
                v212 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v212, v213);
                OUTLINED_FUNCTION_236();
                OUTLINED_FUNCTION_426();
                OUTLINED_FUNCTION_436();
                v214 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v214, v215);
                v216 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v216, v217);
                if ((v207 & 1) == 0)
                {
                  goto LABEL_276;
                }

                goto LABEL_106;
              case 3:
                *(v350 + 6) = 0;
                v350[0] = 0;
                v218 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v218, v219);
                v220 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v220, v221);
                v204 = OUTLINED_FUNCTION_664();
                goto LABEL_102;
              default:
                OUTLINED_FUNCTION_213();
                v200 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v200, v201);
                v202 = OUTLINED_FUNCTION_200();
                sub_1B8D91FCC(v202, v203);
                v204 = OUTLINED_FUNCTION_664();
LABEL_102:
                OUTLINED_FUNCTION_709(v204, v205);
                v222 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v222, v223);
                v224 = OUTLINED_FUNCTION_200();
                sub_1B8D538A0(v224, v225);
                if ((v349 & 0x100000000000000) == 0)
                {
                  goto LABEL_276;
                }

                goto LABEL_106;
            }
          }

          break;
        case 2uLL:
          v199 = *(v192 + 16);
          v198 = *(v192 + 24);
          v147 = __OFSUB__(v198, v199);
          v197 = v198 - v199;
          if (!v147)
          {
            goto LABEL_95;
          }

          goto LABEL_288;
        case 3uLL:
          if (v194)
          {
            goto LABEL_276;
          }

          goto LABEL_106;
        default:
          v197 = BYTE6(v191);
          goto LABEL_95;
      }

      goto LABEL_106;
    }

    OUTLINED_FUNCTION_37_0(v125 + v126);
    if (!v117)
    {
      goto LABEL_271;
    }

    sub_1B8D9207C(v126, &qword_1EBAB8F30, &qword_1B964D730);
    v87 = v324;
    OUTLINED_FUNCTION_293();
LABEL_114:
    v254 = *v126;
    v255 = v126[1];
    OUTLINED_FUNCTION_598(v348);
    v258 = v117 && v256 == v257;
    if (!v258 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_278;
    }

    v259 = *(v347 + 32);
    OUTLINED_FUNCTION_447(&a18);
    OUTLINED_FUNCTION_240();
    sub_1B8D92024();
    OUTLINED_FUNCTION_534();
    OUTLINED_FUNCTION_479();
    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v110);
    if (v117)
    {
      OUTLINED_FUNCTION_90(v125 + v110);
      if (!v117)
      {
        goto LABEL_273;
      }

      v260 = OUTLINED_FUNCTION_246();
      sub_1B8D9207C(v260, v261, &unk_1B964D710);
      goto LABEL_173;
    }

    v262 = v341;
    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v125 + v110);
    if (v263)
    {
      sub_1B8D745F8();
LABEL_273:
      sub_1B8D9207C(v110, &qword_1EBAB8F18, &unk_1B96B57A0);
      goto LABEL_278;
    }

    OUTLINED_FUNCTION_430();
    sub_1B8D920D4();
    v264 = *v262;
    v265 = v262[1];
    OUTLINED_FUNCTION_428();
    v268 = v117 && v266 == v267;
    v269 = v333;
    v24 = v334;
    if (!v268 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_269;
    }

    v270 = v262[2];
    if (*(v262 + 24) == 1)
    {
      v270 = qword_1B964E438[v270];
    }

    v271 = *(v346 + 16);
    if (*(v346 + 24))
    {
      switch(v271)
      {
        case 1:
          if (v270 != 1)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 2:
          if (v270 != 2)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 3:
          if (v270 != 7)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 4:
          if (v270 != 8)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 5:
          if (v270 != 10)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 6:
          if (v270 != 13)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 7:
          if (v270 != 14)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 8:
          if (v270 != 16)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 9:
          if (v270 != 22)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 10:
          if (v270 != 23)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 11:
          if (v270 != 27)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        case 12:
          if (v270 != 42)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
        default:
          if (v270)
          {
            goto LABEL_269;
          }

          goto LABEL_137;
      }
    }

    if (v270 != v271)
    {
      goto LABEL_269;
    }

LABEL_137:
    v272 = v262[4];
    if (*(v262 + 40) == 1)
    {
      v272 = qword_1B964DF98[v272];
    }

    v273 = *(v346 + 32);
    if (*(v346 + 40))
    {
      switch(v273)
      {
        case 7:
          if (v272 != 7)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 8:
          if (v272 != 8)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 9:
          if (v272 != 9)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 10:
          if (v272 != 10)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 11:
          if (v272 != 11)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 12:
          if (v272 != 12)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 13:
          if (v272 != 13)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 14:
          if (v272 != 14)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 15:
          if (v272 != 15)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 16:
          if (v272 != 16)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 17:
          if (v272 != 17)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 18:
          if (v272 != 26)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 19:
          if (v272 != 18)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 20:
          if (v272 != 19)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 21:
          if (v272 != 20)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 22:
          if (v272 != 21)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 23:
          if (v272 != 22)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 24:
          if (v272 != 23)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 25:
          if (v272 != 24)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        case 26:
          if (v272 != 25)
          {
            goto LABEL_269;
          }

          goto LABEL_142;
        default:
          break;
      }
    }

    if (v272 != v273)
    {
      goto LABEL_269;
    }

LABEL_142:
    v274 = v262[6] == *(v346 + 48) && v262[7] == *(v346 + 56);
    if (!v274 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_269;
    }

    v275 = v262[8];
    v276 = *(v346 + 64);
    if (*(v275 + 16) != *(v276 + 16))
    {
      goto LABEL_269;
    }

    OUTLINED_FUNCTION_499();
    if (v277)
    {
      v278 = v329;
      if (v275 != v276)
      {
        break;
      }
    }

LABEL_172:
    v299 = *(v336 + 36);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v300);
    OUTLINED_FUNCTION_509();
    v126 = v346;
    v301 = OUTLINED_FUNCTION_552();
    v87 = v324;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_246();
    sub_1B8D745F8();
    v110 = v338;
    sub_1B8D9207C(v338, &qword_1EBAB8F10, &unk_1B964D710);
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_668();
    if ((v301 & 1) == 0)
    {
      goto LABEL_278;
    }

LABEL_173:
    v302 = v126[2];
    v303 = v126[3];
    OUTLINED_FUNCTION_357(v348);
    v306 = v117 && v304 == v305;
    if (!v306 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_278;
    }

    OUTLINED_FUNCTION_524(v347);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v307);
    OUTLINED_FUNCTION_296();
    v308 = OUTLINED_FUNCTION_627();
    sub_1B8D745F8();
    sub_1B8D745F8();
    v119 = v321;
    v120 = v320;
    if ((v308 & 1) == 0)
    {
      goto LABEL_279;
    }

    v122 = v326 + 1;
    if (v326 + 1 == v319)
    {
      goto LABEL_261;
    }
  }

  v25 = 0;
  OUTLINED_FUNCTION_93(v337);
  while (1)
  {
    if (v25 >= *(v275 + 16))
    {
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
    }

    v279 = *(v337 + 72) * v25;
    OUTLINED_FUNCTION_349();
    OUTLINED_FUNCTION_448(&v346);
    sub_1B8D745A4();
    if (v25 >= *(v276 + 16))
    {
      goto LABEL_282;
    }

    OUTLINED_FUNCTION_349();
    OUTLINED_FUNCTION_448(&v345);
    sub_1B8D745A4();
    v280 = *v278;
    v281 = v278[1];
    OUTLINED_FUNCTION_670();
    v284 = v117 && v282 == v283;
    if (!v284 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_268;
    }

    v285 = v278[2] == *(v24 + 16) && v278[3] == *(v24 + 24);
    if (!v285 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_268;
    }

    v286 = *(v344 + 24);
    v287 = *(v335 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v288 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_98(v288, v289);
    if (!v117)
    {
      break;
    }

    OUTLINED_FUNCTION_57(v269 + v287);
    if (!v117)
    {
      goto LABEL_267;
    }

    v290 = OUTLINED_FUNCTION_198();
    sub_1B8D9207C(v290, v291, &unk_1B964D700);
    OUTLINED_FUNCTION_660();
LABEL_170:
    OUTLINED_FUNCTION_642(v344);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v297);
    sub_1B964C850();
    OUTLINED_FUNCTION_304();
    sub_1B8D745F8();
    sub_1B8D745F8();
    if ((v287 & 1) == 0)
    {
      goto LABEL_269;
    }

    ++v25;
    OUTLINED_FUNCTION_499();
    v278 = v329;
    if (v298 == v25)
    {
      goto LABEL_172;
    }
  }

  OUTLINED_FUNCTION_599(&a17);
  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v269 + v287);
  if (!v292)
  {
    OUTLINED_FUNCTION_694(&a16);
    sub_1B8D920D4();
    OUTLINED_FUNCTION_233();
    static Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity.== infix(_:_:)();
    LOBYTE(v287) = v293;
    OUTLINED_FUNCTION_347();
    v269 = v333;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_376();
    sub_1B8D745F8();
    v294 = OUTLINED_FUNCTION_163();
    sub_1B8D9207C(v294, v295, v296);
    v24 = v334;
    OUTLINED_FUNCTION_660();
    if ((v287 & 1) == 0)
    {
      goto LABEL_268;
    }

    goto LABEL_170;
  }

  OUTLINED_FUNCTION_348();
  sub_1B8D745F8();
LABEL_267:
  sub_1B8D9207C(v269, &qword_1EBAB8F08, &qword_1B96B57B0);
  OUTLINED_FUNCTION_660();
LABEL_268:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_287();
  sub_1B8D745F8();
LABEL_269:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_432();
  sub_1B8D745F8();
  sub_1B8D9207C(v338, &qword_1EBAB8F10, &unk_1B964D710);
  OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_668();
LABEL_278:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_526();
LABEL_279:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_425();
  sub_1B8D745F8();
LABEL_280:
  v316 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D60B60()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_214();
  v54 = sub_1B964C1C0();
  v7 = OUTLINED_FUNCTION_30_1(v54);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_104(v16, v46);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1(v50);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_35();
  v53 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem(v20);
  v21 = OUTLINED_FUNCTION_19_0(v53);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_86_0();
  if (v33 && v2 && v4 != v0)
  {
    v47 = v1;
    OUTLINED_FUNCTION_60_0(v25);
    v27 = v4 + v26;
    v28 = v0 + v26;
    v48 = (v9 + 8);
    v30 = *(v29 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_672();
      sub_1B8D745A4();
      v51 = v27;
      OUTLINED_FUNCTION_491();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_210();
      v33 = v33 && v31 == v32;
      if (!v33 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_569();
      v36 = v33 && v34 == v35;
      if (!v36 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v37 = *(v53 + 32);
      OUTLINED_FUNCTION_272(v50);
      sub_1B8D92024();
      OUTLINED_FUNCTION_501();
      sub_1B8D92024();
      OUTLINED_FUNCTION_42(v3);
      if (v33)
      {
        OUTLINED_FUNCTION_42(v3 + v0);
        if (!v33)
        {
          goto LABEL_30;
        }

        v38 = OUTLINED_FUNCTION_246();
        sub_1B8D9207C(v38, v39, &qword_1B964D720);
      }

      else
      {
        OUTLINED_FUNCTION_520();
        OUTLINED_FUNCTION_42(v3 + v0);
        if (v40)
        {
          (*v48)(v52, v54);
LABEL_30:
          sub_1B8D9207C(v3, &qword_1EBAB8F28, &unk_1B9683B20);
          break;
        }

        OUTLINED_FUNCTION_674();
        v41(v47);
        OUTLINED_FUNCTION_25_1();
        sub_1B8D5C8D0(&qword_1EBAB8F40, v42);
        OUTLINED_FUNCTION_485();
        v49 = sub_1B964C850();
        v43 = *v48;
        v44 = OUTLINED_FUNCTION_375();
        v43(v44);
        (v43)(v52, v54);
        sub_1B8D9207C(v3, &qword_1EBAB8F20, &qword_1B964D720);
        if ((v49 & 1) == 0)
        {
          break;
        }
      }

      if ((sub_1B8D5A714(*(v6 + 32), *(v5 + 32)) & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_642(v53);
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v45);
      v0 = OUTLINED_FUNCTION_232();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_243_0();
      sub_1B8D745F8();
      if (v0)
      {
        v28 += v30;
        v27 = v51 + v30;
        OUTLINED_FUNCTION_423();
        if (!v33)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_218();
    sub_1B8D745F8();
  }

LABEL_32:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6100C()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_64();
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v3);
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_1();
  if (v12 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_3_2(v9);
    while (1)
    {
      OUTLINED_FUNCTION_186();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_196();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_74_0();
      v12 = v12 && v10 == v11;
      if (!v12 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_532();
      sub_1B8D72448();
      if ((v13 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v14);
      v15 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v15)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_18:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8D6123C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1B8D612C8()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_94();
  v34 = type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(v4);
  v5 = OUTLINED_FUNCTION_30_1(v34);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_68();
  v10 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult(v9);
  v11 = OUTLINED_FUNCTION_19_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v15 = *(v1 + 16);
  OUTLINED_FUNCTION_192();
  if (v25 && v15 && v1 != v0)
  {
    v29 = v15;
    v17 = 0;
    OUTLINED_FUNCTION_60_0(v16);
    OUTLINED_FUNCTION_506();
    v30 = v10;
    OUTLINED_FUNCTION_681(v18);
    v33 = v2;
    while (1)
    {
      OUTLINED_FUNCTION_336();
      OUTLINED_FUNCTION_626();
      if (v17 == v15)
      {
        break;
      }

      v32 = v17;
      OUTLINED_FUNCTION_336();
      OUTLINED_FUNCTION_640();
      v19 = *v3;
      OUTLINED_FUNCTION_190(*v2);
      if (!v25)
      {
        goto LABEL_27;
      }

      if (v31 * v17 && v21 != v20)
      {
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_456();
        while (1)
        {
          OUTLINED_FUNCTION_334();
          OUTLINED_FUNCTION_227();
          sub_1B8D745A4();
          OUTLINED_FUNCTION_334();
          OUTLINED_FUNCTION_303();
          sub_1B8D745A4();
          OUTLINED_FUNCTION_226(v34);
          if (!v25)
          {

            v22 = OUTLINED_FUNCTION_542();
            sub_1B90AEEEC(v22);
            OUTLINED_FUNCTION_647();

            if ((v10 & 1) == 0)
            {
              break;
            }
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v23);
          OUTLINED_FUNCTION_186();
          v24 = sub_1B964C850();
          v10 = type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult;
          sub_1B8D745F8();
          OUTLINED_FUNCTION_253();
          sub_1B8D745F8();
          if ((v24 & 1) == 0)
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_455();
          if (v25)
          {
            goto LABEL_17;
          }
        }

        sub_1B8D745F8();
        OUTLINED_FUNCTION_202();
        sub_1B8D745F8();
LABEL_27:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_197();
        sub_1B8D745F8();
        goto LABEL_28;
      }

LABEL_17:
      v25 = v3[1] == v33[1] && v3[2] == v33[2];
      if (!v25 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_27;
      }

      LOBYTE(v10) = v30;
      v26 = *(v30 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v27);
      OUTLINED_FUNCTION_310();
      v2 = v33;
      v28 = OUTLINED_FUNCTION_525();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_245();
      sub_1B8D745F8();
      if (v28)
      {
        ++v17;
        v15 = v29;
        if (v32 + 1 != v29)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D61774()
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_191_0();
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(v7);
  v9 = OUTLINED_FUNCTION_49(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9200, &qword_1B9667750);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_172(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9208, &unk_1B964D9F0);
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_35();
  v84 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(v21);
  v22 = OUTLINED_FUNCTION_59_1(v84);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
  OUTLINED_FUNCTION_183(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_136(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9218, &unk_1B964DA00);
  OUTLINED_FUNCTION_36(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_91();
  v36 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(v35);
  v37 = OUTLINED_FUNCTION_18_0(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v42 = *(v0 + 16);
  if (v42 != *(v1 + 16) || !v42 || v0 == v1)
  {
LABEL_47:
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_283();
    return;
  }

  v78 = *(v0 + 16);
  v75 = v3;
  v76 = v6;
  v43 = 0;
  OUTLINED_FUNCTION_60_0(v41);
  v79 = *(v44 + 72);
  v45 = v85;
  v77 = v5;
  while (1)
  {
    OUTLINED_FUNCTION_330();
    sub_1B8D745A4();
    if (v43 == v42)
    {
      goto LABEL_51;
    }

    v80 = v43;
    OUTLINED_FUNCTION_330();
    OUTLINED_FUNCTION_626();
    if (*v6 != *v5)
    {
      goto LABEL_46;
    }

    v46 = v45[7];
    v47 = *(v83 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v48 = OUTLINED_FUNCTION_256();
    OUTLINED_FUNCTION_81(v48, v49);
    if (v50)
    {
      OUTLINED_FUNCTION_37_0(v47 + v2);
      if (!v50)
      {
        goto LABEL_43;
      }

      sub_1B8D9207C(v2, &qword_1EBAB9210, &qword_1B9667740);
      v42 = v78;
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(v47 + v2);
      if (v50)
      {
        OUTLINED_FUNCTION_222();
        sub_1B8D745F8();
LABEL_43:
        v72 = &qword_1EBAB9218;
        v73 = &unk_1B964DA00;
LABEL_44:
        v74 = v2;
LABEL_45:
        sub_1B8D9207C(v74, v72, v73);
LABEL_46:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_218();
        sub_1B8D745F8();
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_714();
      if (*v81 != *v47 || v81[1] != v47[1] || v81[2] != v47[2] || v81[3] != v47[3])
      {
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        v72 = &qword_1EBAB9210;
        v73 = &qword_1B9667740;
        goto LABEL_44;
      }

      v51 = *(v84 + 32);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v52);
      OUTLINED_FUNCTION_612();
      LOBYTE(v51) = OUTLINED_FUNCTION_552();
      v45 = v85;
      sub_1B8D745F8();
      OUTLINED_FUNCTION_200();
      sub_1B8D745F8();
      v53 = OUTLINED_FUNCTION_449();
      sub_1B8D9207C(v53, v54, &qword_1B9667740);
      v42 = v78;
      if ((v51 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v55 = v45[8];
    v56 = *(v17 + 48);
    sub_1B8D92024();
    OUTLINED_FUNCTION_646();
    v57 = OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_81(v57, v58);
    if (v50)
    {
      OUTLINED_FUNCTION_37_0(v4 + v56);
      if (!v50)
      {
        goto LABEL_49;
      }

      sub_1B8D9207C(v4, &qword_1EBAB9200, &qword_1B9667750);
      v6 = v76;
      v5 = v77;
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_646();
    OUTLINED_FUNCTION_37_0(v4 + v56);
    if (v59)
    {
      OUTLINED_FUNCTION_222();
      sub_1B8D745F8();
LABEL_49:
      sub_1B8D9207C(v4, &qword_1EBAB9208, &unk_1B964D9F0);
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_430();
    sub_1B8D920D4();
    v60 = *v82;
    v61 = *v75;
    OUTLINED_FUNCTION_125();
    v6 = v76;
    v5 = v77;
    if (!v50)
    {
LABEL_40:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_182();
      sub_1B8D745F8();
      v72 = &qword_1EBAB9200;
      v73 = &qword_1B9667750;
      v74 = v4;
      goto LABEL_45;
    }

    if (v62 && v63 != v64)
    {
      break;
    }

LABEL_34:
    OUTLINED_FUNCTION_711();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v66);
    OUTLINED_FUNCTION_296();
    v67 = OUTLINED_FUNCTION_552();
    v45 = v85;
    sub_1B8D745F8();
    sub_1B8D745F8();
    v68 = OUTLINED_FUNCTION_512();
    sub_1B8D9207C(v68, v69, &qword_1B9667750);
    if ((v67 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (*(v6 + 4) != *(v5 + 4))
    {
      goto LABEL_46;
    }

    v70 = v45[6];
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v71);
    OUTLINED_FUNCTION_613();
    OUTLINED_FUNCTION_435();
    LOBYTE(v70) = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_629();
    if (v70)
    {
      ++v43;
      if (v80 + 1 != v42)
      {
        continue;
      }
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_480();
  while (v65)
  {
    OUTLINED_FUNCTION_559();
    if (!v50)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_437();
    if (v50)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
}

void sub_1B8D61F08()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_64();
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(v3);
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_1();
  if (v10 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_3_2(v9);
    while (1)
    {
      OUTLINED_FUNCTION_186();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_196();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_150();
      if (v10)
      {
        switch(v11)
        {
          case 10:
            if (v12 != 10)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 11:
            if (v12 != 11)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 12:
            if (v12 != 12)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 13:
            if (v12 != 13)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 14:
            if (v12 != 14)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 15:
            if (v12 != 15)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 16:
            if (v12 != 16)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 17:
            if (v12 != 17)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 18:
            if (v12 != 18)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 19:
            if (v12 != 19)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 20:
            if (v12 != 20)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 21:
            if (v12 != 21)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 22:
            if (v12 != 22)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 23:
            if (v12 != 23)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 24:
            if (v12 != 24)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 25:
            if (v12 != 25)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          default:
            break;
        }
      }

      if (v12 != v11)
      {
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_188_0();
      if (!v10)
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v13);
      v14 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v14)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_48;
    }

LABEL_47:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_48:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D621E4()
{
  OUTLINED_FUNCTION_284();
  v18 = v5;
  v6 = OUTLINED_FUNCTION_82_0();
  v17 = v7(v6);
  v8 = OUTLINED_FUNCTION_19_0(v17);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_65();
  if (v13 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_58(v12);
    OUTLINED_FUNCTION_607(v14);
    while (1)
    {
      OUTLINED_FUNCTION_163();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_205();
      sub_1B8D745A4();
      if (*v2 != *v1 || (v18(*(v2 + 8), *(v1 + 8)) & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_633();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v15);
      v16 = OUTLINED_FUNCTION_277();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_197();
      sub_1B8D745F8();
      if (v16)
      {
        OUTLINED_FUNCTION_112_0();
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_14:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D62360()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_462();
  v7 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(v6);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_235(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9200, &qword_1B9667750);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9208, &unk_1B964D9F0);
  OUTLINED_FUNCTION_59_1(v54);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_35();
  v20 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(v19);
  v21 = OUTLINED_FUNCTION_19_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_78();
  v25 = *(v5 + 16);
  OUTLINED_FUNCTION_260();
  if (!v36 || !v27 || v5 == v0)
  {
LABEL_34:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
    return;
  }

  v28 = 0;
  OUTLINED_FUNCTION_60_0(v26);
  v51 = v4;
  v52 = v0 + v29;
  OUTLINED_FUNCTION_681(v30);
  v53 = v31;
  while (1)
  {
    OUTLINED_FUNCTION_589();
    if (v28 == v53)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_505(v52);
    sub_1B8D745A4();
    v32 = *(v20 + 24);
    v33 = *(v54 + 48);
    sub_1B8D92024();
    OUTLINED_FUNCTION_248();
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v2);
    if (v36)
    {
      OUTLINED_FUNCTION_48(v33 + v2);
      if (!v36)
      {
        goto LABEL_31;
      }

      v34 = OUTLINED_FUNCTION_511();
      sub_1B8D9207C(v34, v35, &qword_1B9667750);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_248();
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v33 + v2);
    if (v36)
    {
      OUTLINED_FUNCTION_222();
      sub_1B8D745F8();
LABEL_31:
      v49 = &qword_1EBAB9208;
      v50 = &unk_1B964D9F0;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_596();
    sub_1B8D920D4();
    v37 = *v1;
    v38 = *v33;
    OUTLINED_FUNCTION_125();
    if (!v36)
    {
LABEL_29:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_182();
      sub_1B8D745F8();
      v49 = &qword_1EBAB9200;
      v50 = &qword_1B9667750;
LABEL_32:
      sub_1B8D9207C(v2, v49, v50);
LABEL_33:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_197();
      sub_1B8D745F8();
      goto LABEL_34;
    }

    if (v39 && v40 != v41)
    {
      break;
    }

LABEL_23:
    v43 = *(v7 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v44);
    v45 = sub_1B964C850();
    v4 = v51;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_610();
    sub_1B8D745F8();
    sub_1B8D9207C(v2, &qword_1EBAB9200, &qword_1B9667750);
    if ((v45 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_24:
    if (*v4 != *v3)
    {
      goto LABEL_33;
    }

    v46 = *(v20 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v47);
    v48 = OUTLINED_FUNCTION_707();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_507();
    sub_1B8D745F8();
    if ((v48 & 1) != 0 && ++v28 != v53)
    {
      continue;
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_480();
  while (v42)
  {
    OUTLINED_FUNCTION_559();
    if (!v36)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_437();
    if (v36)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1B8D627E8()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  v6 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(v5);
  v7 = OUTLINED_FUNCTION_6_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_1();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_3_2(v11);
    while (1)
    {
      OUTLINED_FUNCTION_186();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_196();
      sub_1B8D745A4();
      v13 = *v2;
      if (*(v2 + 8) == 1)
      {
        v13 = qword_1B964E070[v13];
      }

      v14 = *v1;
      if (*(v1 + 8))
      {
        v15 = *v1;
        switch(v14)
        {
          case 2:
            if (v13 != 11)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 3:
            v14 = 2;
            break;
          case 4:
            v14 = 3;
            break;
          case 5:
            v14 = 4;
            break;
          case 6:
            if (v13 != 5)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 7:
            if (v13 != 14)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 8:
            if (v13 != 6)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 9:
            if (v13 != 7)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 10:
            if (v13 != 8)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 11:
            if (v13 != 9)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 12:
            if (v13 != 12)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 13:
            if (v13 != 13)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 14:
            if (v13 != 15)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 15:
            if (v13 != 10)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 16:
            if (v13 != 16)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 17:
            if (v13 != 17)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 18:
            if (v13 != 18)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 19:
            if (v13 != 19)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          case 20:
            if (v13 != 20)
            {
              goto LABEL_51;
            }

            goto LABEL_34;
          default:
            break;
        }
      }

      if (v13 != v14)
      {
        break;
      }

LABEL_34:
      OUTLINED_FUNCTION_188_0();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v16);
      v17 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v17)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

LABEL_51:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_52:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D62AF8()
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_82_0();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v7);
  v9 = OUTLINED_FUNCTION_46(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_295(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_88();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9010, &unk_1B964D800);
  OUTLINED_FUNCTION_49(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_139();
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(0);
  v21 = OUTLINED_FUNCTION_19_0(v42);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_556();
  if (!v28 || !v2 || v6 == v1)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_58(v25);
  OUTLINED_FUNCTION_439(v26);
  while (1)
  {
    OUTLINED_FUNCTION_234();
    sub_1B8D745A4();
    sub_1B8D745A4();
    v27 = *(v42 + 24);
    OUTLINED_FUNCTION_490();
    OUTLINED_FUNCTION_550();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_550();
    OUTLINED_FUNCTION_32(v0);
    if (v28)
    {
      OUTLINED_FUNCTION_32(v0 + v1);
      if (v28)
      {
        sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_317();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_200();
LABEL_30:
      sub_1B8D745F8();
      sub_1B8D9207C(v0, &qword_1EBAB9010, &unk_1B964D800);
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_466();
    sub_1B8D92024();
    OUTLINED_FUNCTION_32(v0 + v1);
    if (v28)
    {
      OUTLINED_FUNCTION_317();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_200();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_121();
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_123();
    OUTLINED_FUNCTION_591();
    sub_1B8D920D4();
    OUTLINED_FUNCTION_264_0();
    v31 = v28 && v29 == v30;
    if (!v31 && (sub_1B964C9F0() & 1) == 0)
    {
      break;
    }

    v32 = *(v3 + 16);
    v33 = *(v3 + 24);
    OUTLINED_FUNCTION_357(v41);
    v36 = v28 && v34 == v35;
    if (!v36 && (sub_1B964C9F0() & 1) == 0)
    {
      break;
    }

    v37 = *(v40 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v38);
    OUTLINED_FUNCTION_508();
    OUTLINED_FUNCTION_527();
    OUTLINED_FUNCTION_114();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_512();
    sub_1B8D745F8();
    sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
    if ((v1 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_23:
    if (*v4 != *v5)
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_639(v42);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v39);
    v1 = OUTLINED_FUNCTION_705();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_371();
    sub_1B8D745F8();
    if (v1)
    {
      OUTLINED_FUNCTION_263();
      OUTLINED_FUNCTION_659();
      if (!v28)
      {
        continue;
      }
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_318();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_526();
  sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_32:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_195();
  sub_1B8D745F8();
LABEL_33:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8D62F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 2:
            if (v5 != 2)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 3:
            if (v5 != 3)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          default:
            if (v5)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_10:
      if (!--v2)
      {
        return OUTLINED_FUNCTION_229();
      }
    }

    return OUTLINED_FUNCTION_228();
  }

  return OUTLINED_FUNCTION_229();
}

uint64_t sub_1B8D62FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 2:
            if (v5 != 2)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 3:
            if (v5 != 3)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 4:
            if (v5 != 4)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          default:
            if (v5)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_10:
      if (!--v2)
      {
        return OUTLINED_FUNCTION_229();
      }
    }

    return OUTLINED_FUNCTION_228();
  }

  return OUTLINED_FUNCTION_229();
}

void sub_1B8D63090()
{
  OUTLINED_FUNCTION_284();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0);
  v9 = OUTLINED_FUNCTION_30_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_68();
  v16 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail(v15);
  v17 = OUTLINED_FUNCTION_19_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_78();
  v21 = *(v7 + 16);
  OUTLINED_FUNCTION_312();
  if (v27 && v21 && v7 != v5)
  {
    OUTLINED_FUNCTION_60_0(v22);
    v23 = 0;
    v56 = v8;
    v58 = v11;
    v54 = v21;
    v55 = v16;
    v53 = *(v24 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_316();
      sub_1B8D745A4();
      if (v23 == v21)
      {
        break;
      }

      v57 = v23;
      OUTLINED_FUNCTION_316();
      OUTLINED_FUNCTION_640();
      OUTLINED_FUNCTION_155();
      v27 = v27 && v25 == v26;
      if (!v27 && (sub_1B964C9F0() & 1) == 0 || (v28 = *(v3 + 16), v29 = *(v2 + 16), v30 = *(v28 + 16), v30 != *(v29 + 16)))
      {
LABEL_63:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_197();
        sub_1B8D745F8();
        goto LABEL_64;
      }

      if (v30 && v28 != v29)
      {
        v31 = 0;
        v32 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        while (v31 < *(v28 + 16))
        {
          v33 = *(v11 + 72) * v31;
          OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_535();
          sub_1B8D745A4();
          if (v31 >= *(v29 + 16))
          {
            goto LABEL_66;
          }

          OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_673();
          sub_1B8D745A4();
          OUTLINED_FUNCTION_154();
          v36 = v27 && v34 == v35;
          if (!v36 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_62;
          }

          if (*(v1 + 16) != *(v0 + 16))
          {
            goto LABEL_62;
          }

          v37 = *(v1 + 24);
          v38 = *(v0 + 24);
          OUTLINED_FUNCTION_125();
          if (!v27)
          {
            goto LABEL_62;
          }

          if (v39 && v40 != v41)
          {
            v42 = (v40 + 32);
            v43 = (v41 + 40);
            while (1)
            {
              v45 = *v42;
              v42 += 2;
              v44 = v45;
              v46 = *(v43 - 1);
              if (*v43 == 1)
              {
                switch(v46)
                {
                  case 1:
                    if (v44 != 1)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_34;
                  case 2:
                    if (v44 != 2)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_34;
                  case 3:
                    if (v44 != 3)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_34;
                  case 4:
                    if (v44 != 4)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_34;
                  case 5:
                    if (v44 != 5)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_34;
                  case 6:
                    if (v44 != 6)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_34;
                  case 7:
                    if (v44 != 7)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_34;
                  default:
                    if (v44)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_34;
                }
              }

              if (v44 != v46)
              {
                break;
              }

LABEL_34:
              v43 += 16;
              if (!--v39)
              {
                goto LABEL_50;
              }
            }

LABEL_62:
            OUTLINED_FUNCTION_314();
            sub_1B8D745F8();
            OUTLINED_FUNCTION_202();
            sub_1B8D745F8();
            goto LABEL_63;
          }

LABEL_50:
          if (*(v1 + 32) != *(v0 + 32))
          {
            goto LABEL_62;
          }

          v47 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
          if (!v47 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_62;
          }

          v48 = *(v56 + 36);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v49);
          OUTLINED_FUNCTION_706();
          OUTLINED_FUNCTION_366();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_511();
          v11 = v58;
          sub_1B8D745F8();
          if ((v33 & 1) == 0)
          {
            goto LABEL_63;
          }

          if (++v31 == v30)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        break;
      }

LABEL_58:
      v50 = *(v55 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v51);
      v52 = OUTLINED_FUNCTION_279_0();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_507();
      sub_1B8D745F8();
      if (v52)
      {
        v11 = v58;
        v23 = v57 + 1;
        v21 = v54;
        if (v57 + 1 != v54)
        {
          continue;
        }
      }

      goto LABEL_64;
    }

    __break(1u);
  }

  else
  {
LABEL_64:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D63518()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  v7 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(v6);
  v8 = OUTLINED_FUNCTION_6_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_0();
  if (v16 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_45(v12);
    OUTLINED_FUNCTION_289(v13);
    while (1)
    {
      OUTLINED_FUNCTION_120();
      sub_1B8D745A4();
      if (v5 == v4)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_74_0();
      v16 = v16 && v14 == v15;
      if (!v16 && (sub_1B964C9F0() & 1) == 0 || (OUTLINED_FUNCTION_477(), !v16) || (v17 = v2[3], v18 = v1[3], OUTLINED_FUNCTION_125(), !v16))
      {
LABEL_53:
        OUTLINED_FUNCTION_314();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_54;
      }

      if (v19)
      {
        v22 = v20 == v21;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v25 = (v20 + 32);
        v26 = (v21 + 40);
        while (v19)
        {
          v28 = *v25;
          v25 += 2;
          v27 = v28;
          v29 = *(v26 - 1);
          if (*v26 == 1)
          {
            switch(v29)
            {
              case 1:
                if (v27 != 1)
                {
                  goto LABEL_53;
                }

                goto LABEL_38;
              case 2:
                if (v27 != 2)
                {
                  goto LABEL_53;
                }

                goto LABEL_38;
              case 3:
                if (v27 != 3)
                {
                  goto LABEL_53;
                }

                goto LABEL_38;
              case 4:
                if (v27 != 4)
                {
                  goto LABEL_53;
                }

                goto LABEL_38;
              case 5:
                if (v27 != 5)
                {
                  goto LABEL_53;
                }

                goto LABEL_38;
              case 6:
                if (v27 != 6)
                {
                  goto LABEL_53;
                }

                goto LABEL_38;
              case 7:
                if (v27 != 7)
                {
                  goto LABEL_53;
                }

                goto LABEL_38;
              default:
                if (v27)
                {
                  goto LABEL_53;
                }

                goto LABEL_38;
            }
          }

          if (v27 != v29)
          {
            goto LABEL_53;
          }

LABEL_38:
          v26 += 16;
          if (!--v19)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        break;
      }

LABEL_21:
      OUTLINED_FUNCTION_587();
      if (!v16)
      {
        goto LABEL_53;
      }

      v23 = v2[5] == v1[5] && v2[6] == v1[6];
      if (!v23 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_723();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v24);
      OUTLINED_FUNCTION_153();
      OUTLINED_FUNCTION_366();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if ((v3 * v5))
      {
        OUTLINED_FUNCTION_262();
        if (!v16)
        {
          continue;
        }
      }

      goto LABEL_54;
    }

    __break(1u);
  }

  else
  {
LABEL_54:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

uint64_t sub_1B8D6379C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 2:
            if (v5 != 2)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 3:
            if (v5 != 3)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 4:
            if (v5 != 4)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 5:
            if (v5 != 5)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 6:
            if (v5 != 6)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 7:
            if (v5 != 7)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          default:
            if (v5)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_10:
      if (!--v2)
      {
        return OUTLINED_FUNCTION_229();
      }
    }

    return OUTLINED_FUNCTION_228();
  }

  return OUTLINED_FUNCTION_229();
}

void sub_1B8D638B4()
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  v8 = type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(v7);
  v9 = OUTLINED_FUNCTION_6_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_0();
  if (v20 && v5 && v4 != v1)
  {
    OUTLINED_FUNCTION_45(v13);
    OUTLINED_FUNCTION_289(v14);
    while (1)
    {
      OUTLINED_FUNCTION_540();
      sub_1B8D745A4();
      if (v6 == v5)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_175();
      if (!v20 || (OUTLINED_FUNCTION_217(), !v20) || (v15 = *(v3 + 8), v16 = *(v2 + 8), OUTLINED_FUNCTION_125(), !v20))
      {
LABEL_32:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_33;
      }

      if (v17)
      {
        v20 = v18 == v19;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        OUTLINED_FUNCTION_480();
        while (v21)
        {
          OUTLINED_FUNCTION_475();
          if (!v20)
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_474();
          if (v20)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      OUTLINED_FUNCTION_586_0();
      if (!v20 || *(v3 + 20) != *(v2 + 20) || *(v3 + 24) != *(v2 + 24))
      {
        goto LABEL_32;
      }

      v22 = *(v0 + 40);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v23);
      v24 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v24)
      {
        OUTLINED_FUNCTION_262();
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    __break(1u);
  }

  else
  {
LABEL_33:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

uint64_t sub_1B8D63AC4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_229();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1B8D63B18()
{
  OUTLINED_FUNCTION_284();
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_301(*MEMORY[0x1E69E9840]);
  v149 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(v9);
  v10 = OUTLINED_FUNCTION_59_1(v149);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_54();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_159();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9020, &unk_1B964D810);
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_103();
  v150 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams(v21);
  v22 = OUTLINED_FUNCTION_19_0(v150);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_97();
  v27 = *(v8 + 16);
  if (v27 != *(v6 + 16) || !v27 || v8 == v6)
  {
    goto LABEL_130;
  }

  v143 = v0;
  OUTLINED_FUNCTION_60_0(v26);
  v29 = v8 + v28;
  v30 = v6 + v28;
  v144 = *(v31 + 72);
  v145 = v17;
  v146 = v4;
  while (1)
  {
    OUTLINED_FUNCTION_199();
    sub_1B8D745A4();
    if (!v27)
    {
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
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
    }

    v147 = v30;
    OUTLINED_FUNCTION_261();
    sub_1B8D745A4();
    v32 = *(v150 + 40);
    v33 = *(v17 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v34 = OUTLINED_FUNCTION_454();
    OUTLINED_FUNCTION_77(v34, v35);
    v148 = v29;
    if (v39)
    {
      OUTLINED_FUNCTION_32(v1 + v33);
      if (!v39)
      {
        goto LABEL_126;
      }

      v36 = OUTLINED_FUNCTION_257();
      sub_1B8D9207C(v36, v37, &unk_1B96A6290);
      v38 = v27;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_603();
    sub_1B8D92024();
    OUTLINED_FUNCTION_32(v1 + v33);
    if (v39)
    {
      break;
    }

    sub_1B8D920D4();
    v40 = *(v149 + 20);
    if (*(v4 + v40) != *(v143 + v40))
    {
      v41 = *(v4 + v40);

      OUTLINED_FUNCTION_288();
      v42 = sub_1B91F6CF8();

      if (!v42)
      {
        sub_1B8D745F8();
        OUTLINED_FUNCTION_425();
        sub_1B8D745F8();
        v138 = &qword_1EBAB9018;
        v139 = &unk_1B96A6290;
        goto LABEL_128;
      }
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v43);
    OUTLINED_FUNCTION_486();
    v44 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_444();
    sub_1B8D745F8();
    sub_1B8D9207C(v1, &qword_1EBAB9018, &unk_1B96A6290);
    v38 = v27;
    if ((v44 & 1) == 0)
    {
      goto LABEL_129;
    }

LABEL_15:
    OUTLINED_FUNCTION_210();
    if (v39)
    {
      v47 = v45 == v46;
    }

    else
    {
      v47 = 0;
    }

    if (!v47 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_129;
    }

    v48 = v3[2];
    v49 = *(v2 + 16);
    if (*(v2 + 24) == 1)
    {
      switch(v49)
      {
        case 1:
          if (v48 != 1)
          {
            goto LABEL_129;
          }

          goto LABEL_25;
        case 2:
          if (v48 != 2)
          {
            goto LABEL_129;
          }

          goto LABEL_25;
        case 3:
          if (v48 != 3)
          {
            goto LABEL_129;
          }

          goto LABEL_25;
        case 4:
          if (v48 != 4)
          {
            goto LABEL_129;
          }

          goto LABEL_25;
        case 5:
          if (v48 != 5)
          {
            goto LABEL_129;
          }

          goto LABEL_25;
        case 6:
          if (v48 != 6)
          {
            goto LABEL_129;
          }

          goto LABEL_25;
        default:
          if (v48)
          {
            goto LABEL_129;
          }

          goto LABEL_25;
      }
    }

    if (v48 != v49)
    {
      goto LABEL_129;
    }

LABEL_25:
    v50 = v3[4] == *(v2 + 32) && v3[5] == *(v2 + 40);
    if (!v50 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_129;
    }

    v51 = v3[6];
    v52 = v3[7];
    v53 = v52 >> 62;
    v55 = *(v2 + 48);
    v54 = *(v2 + 56);
    v56 = v54 >> 62;
    if (!v50)
    {
      v58 = 0;
      switch(v53)
      {
        case 0uLL:
          v58 = BYTE6(v52);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v51), v51))
          {
            goto LABEL_135;
          }

          v58 = HIDWORD(v51) - v51;
          break;
        case 2uLL:
          OUTLINED_FUNCTION_250();
          if (!v59)
          {
            break;
          }

          goto LABEL_134;
        case 3uLL:
          break;
        default:
          goto LABEL_152;
      }

LABEL_46:
      switch(v56)
      {
        case 1uLL:
          LODWORD(v60) = HIDWORD(v55) - v55;
          if (__OFSUB__(HIDWORD(v55), v55))
          {
            goto LABEL_133;
          }

          v60 = v60;
LABEL_55:
          if (v58 != v60)
          {
            goto LABEL_129;
          }

          if (v58 < 1)
          {
            goto LABEL_111;
          }

          break;
        case 2uLL:
          OUTLINED_FUNCTION_420();
          if (!v59)
          {
            goto LABEL_55;
          }

          goto LABEL_132;
        case 3uLL:
          if (v58)
          {
            goto LABEL_129;
          }

          goto LABEL_111;
        default:
          v60 = BYTE6(v54);
          goto LABEL_55;
      }

      v61 = v55 >> 32;
      switch(v53)
      {
        case 1:
          v142 = v38;
          OUTLINED_FUNCTION_290();
          if (v102 != v59)
          {
            goto LABEL_136;
          }

          v103 = v101;
          v104 = OUTLINED_FUNCTION_227();
          sub_1B8D91FCC(v104, v105);
          v106 = OUTLINED_FUNCTION_227();
          sub_1B8D91FCC(v106, v107);
          v108 = OUTLINED_FUNCTION_227();
          sub_1B8D91FCC(v108, v109);
          if (sub_1B964C070() && __OFSUB__(v103, sub_1B964C090()))
          {
            goto LABEL_139;
          }

          sub_1B964C080();
          OUTLINED_FUNCTION_223();
          OUTLINED_FUNCTION_516();
          v110 = OUTLINED_FUNCTION_227();
          sub_1B8D538A0(v110, v111);
          v112 = OUTLINED_FUNCTION_227();
          sub_1B8D538A0(v112, v113);
          v114 = OUTLINED_FUNCTION_227();
          sub_1B8D538A0(v114, v115);
          v38 = v142;
          if ((v151[0] & 1) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_111;
        case 2:
          v81 = *(v51 + 16);
          v141 = *(v51 + 24);
          v82 = OUTLINED_FUNCTION_227();
          sub_1B8D91FCC(v82, v83);
          v84 = OUTLINED_FUNCTION_227();
          sub_1B8D91FCC(v84, v85);
          v86 = OUTLINED_FUNCTION_227();
          sub_1B8D91FCC(v86, v87);
          if (sub_1B964C070() && __OFSUB__(v81, sub_1B964C090()))
          {
            goto LABEL_138;
          }

          if (__OFSUB__(v141, v81))
          {
            goto LABEL_137;
          }

          sub_1B964C080();
          OUTLINED_FUNCTION_223();
          OUTLINED_FUNCTION_516();
          v88 = OUTLINED_FUNCTION_227();
          sub_1B8D538A0(v88, v89);
          v90 = OUTLINED_FUNCTION_227();
          sub_1B8D538A0(v90, v91);
          v92 = OUTLINED_FUNCTION_227();
          sub_1B8D538A0(v92, v93);
          if ((v151[0] & 1) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_111;
        case 3:
          OUTLINED_FUNCTION_434();
          if (!v94)
          {
            goto LABEL_96;
          }

          if (v94 != 2)
          {
            if (v61 < v55)
            {
              goto LABEL_141;
            }

            v119 = OUTLINED_FUNCTION_227();
            sub_1B8D91FCC(v119, v120);
            v79 = sub_1B964C070();
            if (v79)
            {
              v121 = sub_1B964C090();
              if (__OFSUB__(v55, v121))
              {
                goto LABEL_147;
              }

              v79 += v55 - v121;
            }

            sub_1B964C080();
            if (!v79)
            {
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              JUMPOUT(0);
            }

            goto LABEL_103;
          }

          v95 = *(v55 + 16);
          v96 = *(v55 + 24);
          v97 = OUTLINED_FUNCTION_227();
          sub_1B8D91FCC(v97, v98);
          v99 = sub_1B964C070();
          if (v99)
          {
            v100 = sub_1B964C090();
            if (__OFSUB__(v95, v100))
            {
              goto LABEL_145;
            }

            v99 += v95 - v100;
          }

          if (__OFSUB__(v96, v95))
          {
            goto LABEL_143;
          }

          sub_1B964C080();
          if (!v99)
          {
            goto LABEL_149;
          }

          goto LABEL_109;
        default:
          OUTLINED_FUNCTION_106();
          v151[2] = v62;
          v151[3] = v63;
          v151[4] = v64;
          v151[5] = v65;
          v151[6] = v66;
          v151[7] = v67;
          v152 = v52;
          v153 = BYTE2(v52);
          v154 = BYTE3(v52);
          OUTLINED_FUNCTION_291();
          if (v76)
          {
            if (v76 == 1)
            {
              if (v61 < v55)
              {
                goto LABEL_140;
              }

              v77 = OUTLINED_FUNCTION_227();
              sub_1B8D91FCC(v77, v78);
              v79 = sub_1B964C070();
              if (v79)
              {
                v80 = sub_1B964C090();
                if (__OFSUB__(v55, v80))
                {
                  goto LABEL_146;
                }

                v79 += v55 - v80;
              }

              sub_1B964C080();
              if (!v79)
              {
                goto LABEL_151;
              }

LABEL_103:
              OUTLINED_FUNCTION_241();
              v123 = v151;
              v124 = v79;
            }

            else
            {
              v125 = *(v55 + 16);
              v126 = *(v55 + 24);
              v127 = OUTLINED_FUNCTION_227();
              sub_1B8D91FCC(v127, v128);
              v99 = sub_1B964C070();
              if (v99)
              {
                v129 = sub_1B964C090();
                if (__OFSUB__(v125, v129))
                {
                  goto LABEL_144;
                }

                v99 += v125 - v129;
              }

              if (__OFSUB__(v126, v125))
              {
                goto LABEL_142;
              }

              sub_1B964C080();
              if (!v99)
              {
                goto LABEL_150;
              }

LABEL_109:
              v123 = OUTLINED_FUNCTION_119();
              v124 = v99;
            }

            v130 = memcmp(v123, v124, v122);
            v131 = OUTLINED_FUNCTION_227();
            sub_1B8D538A0(v131, v132);
            if (v130)
            {
              goto LABEL_129;
            }
          }

          else
          {
LABEL_96:
            OUTLINED_FUNCTION_10_1(v68, v69, v70, v71, v72, v73, v74, v75);
            if (OUTLINED_FUNCTION_47_0(v116, v117, v118))
            {
              goto LABEL_129;
            }
          }

          break;
      }

      goto LABEL_111;
    }

    v58 = 0;
    if (v51)
    {
      goto LABEL_46;
    }

    if (v52 != 0xC000000000000000 || v54 >> 62 != 3)
    {
      goto LABEL_46;
    }

    v58 = 0;
    if (v55 || v54 != 0xC000000000000000)
    {
      goto LABEL_46;
    }

LABEL_111:
    v133 = v3[8];
    v134 = *(v2 + 64);
    if (*(v2 + 72) == 1)
    {
      if (v134)
      {
        if (v134 == 1)
        {
          if (v133 != 1)
          {
            goto LABEL_129;
          }
        }

        else if (v133 != 2)
        {
          goto LABEL_129;
        }
      }

      else if (v133)
      {
        goto LABEL_129;
      }
    }

    else if (v133 != v134)
    {
      goto LABEL_129;
    }

    v135 = *(v150 + 36);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v136);
    OUTLINED_FUNCTION_613();
    OUTLINED_FUNCTION_435();
    v137 = sub_1B964C850();
    OUTLINED_FUNCTION_414();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_218();
    sub_1B8D745F8();
    if (v137)
    {
      v27 = v38 - 1;
      v17 = v145;
      v30 = v147 + v144;
      v29 = v148 + v144;
      v4 = v146;
      if (v38 != 1)
      {
        continue;
      }
    }

    goto LABEL_130;
  }

  OUTLINED_FUNCTION_510();
  sub_1B8D745F8();
LABEL_126:
  v138 = &qword_1EBAB9020;
  v139 = &unk_1B964D810;
LABEL_128:
  sub_1B8D9207C(v1, v138, v139);
LABEL_129:
  OUTLINED_FUNCTION_414();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_218();
  sub_1B8D745F8();
LABEL_130:
  v140 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D649C4()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  v7 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section(v6);
  v8 = OUTLINED_FUNCTION_6_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_0();
  if (v17 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_11_1(v12);
    while (1)
    {
      v13 = v3 * v5;
      OUTLINED_FUNCTION_147();
      sub_1B8D745A4();
      if (v5 == v4)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      v14 = *v2;
      OUTLINED_FUNCTION_95_0(*v1);
      if (!v17)
      {
        goto LABEL_43;
      }

      if (v13)
      {
        v17 = v16 == v15;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        OUTLINED_FUNCTION_299();
        while (v13)
        {
          OUTLINED_FUNCTION_109();
          v20 = v17 && v18 == v19;
          if (!v20 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_108();
          if (v17)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        break;
      }

LABEL_22:
      OUTLINED_FUNCTION_174();
      v23 = v17 && v21 == v22;
      if (!v23 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_693();
      if (*(v1 + 32) == 1)
      {
        switch(v25)
        {
          case 1:
            if (v24 != 1)
            {
              goto LABEL_43;
            }

            goto LABEL_32;
          case 2:
            if (v24 != 2)
            {
              goto LABEL_43;
            }

            goto LABEL_32;
          case 3:
            if (v24 != 3)
            {
              goto LABEL_43;
            }

            goto LABEL_32;
          case 4:
            if (v24 != 4)
            {
              goto LABEL_43;
            }

            goto LABEL_32;
          default:
            if (v24)
            {
              goto LABEL_43;
            }

            goto LABEL_32;
        }
      }

      if (v24 != v25)
      {
LABEL_43:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_44;
      }

LABEL_32:
      OUTLINED_FUNCTION_636();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v26);
      v27 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v27)
      {
        OUTLINED_FUNCTION_262();
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_44;
    }

    __break(1u);
  }

  else
  {
LABEL_44:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D64C24()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_94();
  v51 = type metadata accessor for Searchfoundation_FlightLeg(v6);
  v7 = OUTLINED_FUNCTION_30_1(v51);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_68();
  v15 = type metadata accessor for Searchfoundation_Flight(v14);
  v16 = OUTLINED_FUNCTION_19_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_567();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_570();
  if (v25 && v3 && v1 != v0)
  {
    v21 = 0;
    OUTLINED_FUNCTION_60_0(v20);
    v23 = *(v22 + 72);
    v48 = v3;
    v47 = v23;
    while (1)
    {
      v24 = v23 * v21;
      OUTLINED_FUNCTION_402();
      sub_1B8D745A4();
      if (v21 == v3)
      {
        break;
      }

      v49 = v21;
      OUTLINED_FUNCTION_402();
      sub_1B8D745A4();
      v25 = *v4 == *v5 && v4[1] == v5[1];
      if (!v25 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_61;
      }

      v26 = v4[2] == v5[2] && v4[3] == v5[3];
      if (!v26 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_61;
      }

      v27 = v4[4] == v5[4] && v4[5] == v5[5];
      if (!v27 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_61;
      }

      v28 = v4[6] == v5[6] && v4[7] == v5[7];
      if (!v28 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_61;
      }

      v29 = v4[8];
      OUTLINED_FUNCTION_190(v5[8]);
      if (!v25)
      {
        goto LABEL_61;
      }

      if (v24 && v31 != v30)
      {
        OUTLINED_FUNCTION_96();
        v34 = v32 + v33;
        v36 = v35 + v33;
        v50 = *(v37 + 72);
        while (1)
        {
          OUTLINED_FUNCTION_398();
          OUTLINED_FUNCTION_227();
          sub_1B8D745A4();
          OUTLINED_FUNCTION_398();
          OUTLINED_FUNCTION_449();
          sub_1B8D745A4();
          if (*(v2 + *(v51 + 20)) != *(v12 + *(v51 + 20)))
          {

            OUTLINED_FUNCTION_542();
            sub_1B94A7CF0();
            OUTLINED_FUNCTION_647();

            if ((v5 & 1) == 0)
            {
              break;
            }
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v38);
          OUTLINED_FUNCTION_485();
          v39 = sub_1B964C850();
          sub_1B8D745F8();
          sub_1B8D745F8();
          if ((v39 & 1) == 0)
          {
            goto LABEL_61;
          }

          v36 += v50;
          v34 += v50;
          if (!--v24)
          {
            goto LABEL_36;
          }
        }

        sub_1B8D745F8();
        OUTLINED_FUNCTION_195();
        sub_1B8D745F8();
LABEL_61:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_197();
        sub_1B8D745F8();
        goto LABEL_62;
      }

LABEL_36:
      v40 = v4[9] == v5[9] && v4[10] == v5[10];
      if (!v40 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_61;
      }

      v41 = v4[11] == v5[11] && v4[12] == v5[12];
      if (!v41 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_61;
      }

      v42 = v4[13] == v5[13] && v4[14] == v5[14];
      if (!v42 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_61;
      }

      v43 = v4[15] == v5[15] && v4[16] == v5[16];
      if (!v43 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_61;
      }

      v44 = *(v15 + 52);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v45);
      OUTLINED_FUNCTION_310();
      v46 = OUTLINED_FUNCTION_627();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_245();
      sub_1B8D745F8();
      if (v46)
      {
        v21 = v49 + 1;
        v3 = v48;
        v23 = v47;
        if (v49 + 1 != v48)
        {
          continue;
        }
      }

      goto LABEL_62;
    }

    __break(1u);
  }

  else
  {
LABEL_62:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D650D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v24;
  a20 = v25;
  v26 = OUTLINED_FUNCTION_94();
  v27 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(v26);
  v28 = OUTLINED_FUNCTION_183(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_21();
  v31 = OUTLINED_FUNCTION_201();
  v170 = type metadata accessor for Searchfoundation_RFShowMoreOnTap(v31);
  v32 = OUTLINED_FUNCTION_59_1(v170);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE8, &qword_1B96E0CB0);
  OUTLINED_FUNCTION_183(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_247_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF0, &unk_1B964D5F0);
  OUTLINED_FUNCTION_59_1(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_139();
  v45 = type metadata accessor for Searchfoundation_RFFormattedText(0);
  v183 = OUTLINED_FUNCTION_30_1(v45);
  v184 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_44_0();
  v193 = v49;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_266_0();
  v185 = v51;
  v52 = OUTLINED_FUNCTION_201();
  v172 = type metadata accessor for Searchfoundation_RFTextElement(v52);
  v53 = OUTLINED_FUNCTION_30_1(v172);
  v171 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44_0();
  v179 = v57;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_266_0();
  v178 = v59;
  v60 = OUTLINED_FUNCTION_201();
  v61 = type metadata accessor for Searchfoundation_RFTextProperty(v60);
  v62 = OUTLINED_FUNCTION_59_1(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_247_0(v70);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1(v173);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_103();
  v180 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
  v74 = OUTLINED_FUNCTION_59_1(v180);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_381(v77);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E08, &qword_1B964D608);
  OUTLINED_FUNCTION_59_1(v182);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_169(v81);
  v82 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v83 = OUTLINED_FUNCTION_49(v82);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_251(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  OUTLINED_FUNCTION_183(v89);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_136(v93);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E18, &qword_1B964D618);
  OUTLINED_FUNCTION_59_1(v191);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_458();
  v188 = type metadata accessor for Searchfoundation_RFExpandingComponentContent(0);
  v97 = OUTLINED_FUNCTION_19_0(v188);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_168_0();
  v101 = *(v21 + 16);
  OUTLINED_FUNCTION_231_0();
  if (!v108 || !v101 || v21 == v20)
  {
LABEL_81:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
    return;
  }

  OUTLINED_FUNCTION_45(v102);
  OUTLINED_FUNCTION_506();
  v176 = *(v103 + 72);
  v177 = v104;
  v167 = v22;
  v166 = v61;
  v181 = v101;
  while (1)
  {
    OUTLINED_FUNCTION_470(v177);
    OUTLINED_FUNCTION_717();
    if (v41 == v101)
    {
      __break(1u);
      goto LABEL_84;
    }

    sub_1B8D745A4();
    v105 = *(v191 + 48);
    OUTLINED_FUNCTION_449();
    sub_1B8D92024();
    sub_1B8D92024();
    v106 = OUTLINED_FUNCTION_454();
    OUTLINED_FUNCTION_178(v106, v107, v192);
    if (!v108)
    {
      break;
    }

    OUTLINED_FUNCTION_118(v23 + v105);
    v101 = v181;
    if (!v108)
    {
      goto LABEL_66;
    }

LABEL_61:
    v153 = OUTLINED_FUNCTION_375();
    sub_1B8D9207C(v153, v154, &qword_1B964D610);
    OUTLINED_FUNCTION_624(v188);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v155);
    v156 = OUTLINED_FUNCTION_712();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_514();
    sub_1B8D745F8();
    if ((v156 & 1) != 0 && ++v41 != v101)
    {
      continue;
    }

    goto LABEL_81;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v23 + v105);
  if (v108)
  {
    OUTLINED_FUNCTION_141();
    sub_1B8D745F8();
LABEL_66:
    sub_1B8D9207C(v23, &qword_1EBAB8E18, &qword_1B964D618);
LABEL_80:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_571();
    goto LABEL_81;
  }

  sub_1B8D920D4();
  v109 = *(v182 + 48);
  v110 = v186;
  sub_1B8D745A4();
  sub_1B8D745A4();
  OUTLINED_FUNCTION_601();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_308();
    OUTLINED_FUNCTION_513(&a16);
    sub_1B8D745A4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_293();
    sub_1B8D920D4();
    OUTLINED_FUNCTION_303();
    static Searchfoundation_RFReferenceFootnoteCardSection.== infix(_:_:)();
    v112 = v111;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_622();
    v101 = v181;
    if ((v112 & 1) == 0)
    {
      OUTLINED_FUNCTION_141();
LABEL_78:
      sub_1B8D745F8();
      goto LABEL_79;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_308();
  sub_1B8D745A4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_68:
    sub_1B8D745F8();
    sub_1B8D9207C(v110, &qword_1EBAB8E08, &qword_1B964D608);
LABEL_79:
    OUTLINED_FUNCTION_383();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_571();
    sub_1B8D9207C(v23, &qword_1EBAB8E10, &qword_1B964D610);
    goto LABEL_80;
  }

  sub_1B8D920D4();
  v113 = *(v180 + 28);
  OUTLINED_FUNCTION_447(&a14);
  v114 = v166;
  sub_1B8D92024();
  OUTLINED_FUNCTION_577();
  OUTLINED_FUNCTION_99_0(v167);
  if (v108)
  {
    OUTLINED_FUNCTION_99_0(&v109[v167]);
    v101 = v181;
    if (!v108)
    {
      goto LABEL_70;
    }

    sub_1B8D9207C(v167, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_574();
LABEL_56:
    if (*v114 != *v109)
    {
      goto LABEL_77;
    }

    if (v114[1] != v109[1])
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_524(v180);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v152);
    OUTLINED_FUNCTION_310();
    if ((sub_1B964C850() & 1) == 0)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_384();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_287();
    sub_1B8D745F8();
LABEL_60:
    OUTLINED_FUNCTION_383();
    sub_1B8D745F8();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_571();
    goto LABEL_61;
  }

  LOBYTE(v115) = v175;
  OUTLINED_FUNCTION_577();
  OUTLINED_FUNCTION_99_0(&v109[v167]);
  v101 = v181;
  if (v116)
  {
    sub_1B8D745F8();
LABEL_70:
    v157 = &qword_1EBAB8E00;
    v158 = &qword_1B964D600;
    v159 = v167;
    goto LABEL_76;
  }

  sub_1B8D920D4();
  v117 = *v174;
  v118 = *(*v175 + 16);
  v119 = v178;
  if (v118 != *(*v174 + 16))
  {
    goto LABEL_75;
  }

  if (!v118 || *v175 == v117)
  {
LABEL_54:
    if (v175[8] == v174[8])
    {
      v109 = *(v114 + 6);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v150);
      v114 = v175;
      OUTLINED_FUNCTION_525();
      OUTLINED_FUNCTION_362();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_245();
      sub_1B8D745F8();
      v151 = OUTLINED_FUNCTION_652();
      sub_1B8D9207C(v151, &qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_574();
      if ((v115 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_75:
    sub_1B8D745F8();
    sub_1B8D745F8();
    v159 = OUTLINED_FUNCTION_652();
LABEL_76:
    sub_1B8D9207C(v159, v157, v158);
    OUTLINED_FUNCTION_574();
LABEL_77:
    OUTLINED_FUNCTION_384();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_287();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_141();
    goto LABEL_78;
  }

  v115 = 0;
  OUTLINED_FUNCTION_93(v171);
  v164 = v120;
  v163 = v117;
  v162 = v121;
  while (1)
  {
    if (v115 >= *(v120 + 16))
    {
      goto LABEL_86;
    }

    v122 = *(v171 + 72) * v115;
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_244(&v187);
    sub_1B8D745A4();
    v165 = v115;
    if (v115 >= *(v117 + 16))
    {
      goto LABEL_87;
    }

    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_244(&v186);
    OUTLINED_FUNCTION_683();
    sub_1B8D745A4();
    v123 = *v119;
    v124 = *v122;
    v125 = v185;
    if (*(*v119 + 16) != *(*v122 + 16))
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_499();
    if (v126)
    {
      if (v123 != v124)
      {
        break;
      }
    }

LABEL_39:
    if (*(v178 + 2) != *(v179 + 8))
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_536();
    v136 = *(v135 + 28);
    OUTLINED_FUNCTION_447(&v189);
    OUTLINED_FUNCTION_513(&v190);
    sub_1B8D92024();
    OUTLINED_FUNCTION_631();
    v137 = OUTLINED_FUNCTION_256();
    OUTLINED_FUNCTION_81(v137, v138);
    if (v108)
    {
      OUTLINED_FUNCTION_37_0(v117 + v122);
      v139 = v117;
      if (!v108)
      {
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_600();
      sub_1B8D9207C(v140, v141, v142);
    }

    else
    {
      OUTLINED_FUNCTION_631();
      OUTLINED_FUNCTION_37_0(v117 + v122);
      if (v143)
      {
        OUTLINED_FUNCTION_127();
        sub_1B8D745F8();
        v139 = v117;
LABEL_72:
        v160 = &qword_1EBAB8DF0;
        v161 = &unk_1B964D5F0;
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_128_0();
      sub_1B8D920D4();
      v144 = *v169 == *v168 && v169[1] == v168[1];
      if (!v144 && (sub_1B964C9F0() & 1) == 0)
      {
        OUTLINED_FUNCTION_331();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_200();
        sub_1B8D745F8();
        v160 = &qword_1EBAB8DE8;
        v161 = &qword_1B96E0CB0;
        v139 = v117;
LABEL_73:
        sub_1B8D9207C(v139, v160, v161);
LABEL_74:
        sub_1B8D745F8();
        sub_1B8D745F8();
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_711();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v145);
      OUTLINED_FUNCTION_612();
      OUTLINED_FUNCTION_552();
      OUTLINED_FUNCTION_363();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_196();
      sub_1B8D745F8();
      v146 = OUTLINED_FUNCTION_507();
      sub_1B8D9207C(v146, v147, &qword_1B96E0CB0);
      if ((v170 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    OUTLINED_FUNCTION_536();
    OUTLINED_FUNCTION_524(v148);
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v149);
    v119 = v178;
    OUTLINED_FUNCTION_552();
    OUTLINED_FUNCTION_135_1();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_196();
    sub_1B8D745F8();
    v114 = v166;
    v101 = v181;
    v120 = v164;
    v117 = v163;
    if ((v170 & 1) == 0)
    {
      goto LABEL_75;
    }

    v115 = v165 + 1;
    if (v165 + 1 == v162)
    {
      goto LABEL_54;
    }
  }

  v122 = 0;
  OUTLINED_FUNCTION_93(v184);
  while (v122 < *(v123 + 16))
  {
    v127 = *(v184 + 72) * v122;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_448(&v194);
    sub_1B8D745A4();
    if (v122 >= *(v124 + 16))
    {
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_448(&v193);
    v128 = v193;
    sub_1B8D745A4();
    v129 = *(v183 + 20);
    v130 = *(v125 + v129);
    if (v130 != *(v128 + v129))
    {
      v131 = *(v125 + v129);

      OUTLINED_FUNCTION_543();
      sub_1B95D2DA8();
      OUTLINED_FUNCTION_649();

      if ((v125 & 1) == 0)
      {
        OUTLINED_FUNCTION_129_0();
        sub_1B8D745F8();
        sub_1B8D745F8();
        goto LABEL_74;
      }
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v132);
    OUTLINED_FUNCTION_653();
    sub_1B964C850();
    OUTLINED_FUNCTION_361();
    v117 = v133;
    v125 = v185;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_461();
    sub_1B8D745F8();
    if ((v130 & 1) == 0)
    {
      goto LABEL_74;
    }

    ++v122;
    OUTLINED_FUNCTION_499();
    if (v134 == v122)
    {
      goto LABEL_39;
    }
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}