uint64_t static Searchfoundation_PersonHeaderCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD02A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_PersonHeaderCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 51)
    {
      sub_1B952B9A4();
    }
  }

  return result;
}

uint64_t sub_1B952B9A4()
{
  v0 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection() + 20);
  type metadata accessor for Searchfoundation_Person();
  sub_1B952C1F8(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);
  return sub_1B964C580();
}

uint64_t Searchfoundation_PersonHeaderCardSection.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Searchfoundation_Person();
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Searchfoundation_PersonHeaderCardSection();
  sub_1B9495798(v0 + *(v14 + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBACC5A8, &unk_1B96CD450);
  }

  else
  {
    sub_1B9495808(v7, v13);
    sub_1B952C1F8(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);
    sub_1B964C740();
    result = sub_1B9495C1C(v13);
    if (v1)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Searchfoundation_PersonHeaderCardSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Person();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v27 - v14);
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5B0, &qword_1B96B9920) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  v21 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection() + 20);
  v22 = v16[14];
  sub_1B9495798(a1 + v21, v20);
  sub_1B9495798(a2 + v21, &v20[v22]);
  OUTLINED_FUNCTION_117(v20);
  if (v23)
  {
    OUTLINED_FUNCTION_117(&v20[v22]);
    if (v23)
    {
      sub_1B8D9207C(v20, &qword_1EBACC5A8, &unk_1B96CD450);
LABEL_12:
      sub_1B964C2B0();
      sub_1B952C1F8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
      v24 = sub_1B964C850();
      return v24 & 1;
    }

    goto LABEL_9;
  }

  sub_1B9495798(v20, v15);
  OUTLINED_FUNCTION_117(&v20[v22]);
  if (v23)
  {
    sub_1B9495C1C(v15);
LABEL_9:
    sub_1B8D9207C(v20, &qword_1EBACC5B0, &qword_1B96B9920);
    goto LABEL_10;
  }

  sub_1B9495808(&v20[v22], v9);
  v25 = static Searchfoundation_Person.== infix(_:_:)(v15, v9);
  sub_1B9495C1C(v9);
  sub_1B9495C1C(v15);
  sub_1B8D9207C(v20, &qword_1EBACC5A8, &unk_1B96CD450);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

uint64_t Searchfoundation_PersonHeaderCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_PersonHeaderCardSection();
  sub_1B952C1F8(&qword_1EBAD02B8, type metadata accessor for Searchfoundation_PersonHeaderCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B952BF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B952C1F8(&qword_1EBAD02D0, type metadata accessor for Searchfoundation_PersonHeaderCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952BFC0(uint64_t a1)
{
  v2 = sub_1B952C1F8(&qword_1EBACE6A0, type metadata accessor for Searchfoundation_PersonHeaderCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B952C030()
{
  sub_1B952C1F8(&qword_1EBACE6A0, type metadata accessor for Searchfoundation_PersonHeaderCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B952C1F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_49()
{

  return type metadata accessor for Searchfoundation_PersonHeaderCardSection();
}

uint64_t Searchfoundation_Person.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  a1[6] = MEMORY[0x1E69E7CC0];
  a1[7] = v1;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  v2 = a1 + *(type metadata accessor for Searchfoundation_Person() + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Searchfoundation_Person()
{
  result = qword_1ED9F9710;
  if (!qword_1ED9F9710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_Person.personIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Person.personIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_Person.contactIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Person.contactIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_Person.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Person.displayName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_Person.phoneNumbers.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Searchfoundation_Person.emailAddresses.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Searchfoundation_Person.photosIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Person.photosIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Searchfoundation_Person.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_Person() + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_Person.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_Person() + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B952C704()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD02D8);
  __swift_project_value_buffer(v0, qword_1EBAD02D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "personIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "contactIdentifier";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayName";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "phoneNumbers";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "emailAddresses";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_Person._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD02D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_Person.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 6:
        sub_1B964C530();
        break;
      case 4:
      case 5:
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_Person.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v9 = v0[4];
      v10 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        if (!*(v0[6] + 16) || (result = OUTLINED_FUNCTION_4_58(), !v1))
        {
          if (!*(v0[7] + 16) || (result = OUTLINED_FUNCTION_4_58(), !v1))
          {
            v12 = v0[8];
            v13 = v0[9];
            OUTLINED_FUNCTION_1();
            if (!v14 || (result = OUTLINED_FUNCTION_3(), !v1))
            {
              v15 = v0 + *(type metadata accessor for Searchfoundation_Person() + 40);
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_Person.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(a1[6], a2[6]) & 1) == 0 || (sub_1B8D6123C(a1[7], a2[7]) & 1) == 0)
  {
    return 0;
  }

  v7 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Searchfoundation_Person() + 40);
  sub_1B964C2B0();
  sub_1B8CD35C0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_Person.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_Person();
  sub_1B8CD35C0(&qword_1EBAD02F0, type metadata accessor for Searchfoundation_Person);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B952CE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD35C0(&qword_1EBAD0308, type metadata accessor for Searchfoundation_Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952CEE8(uint64_t a1)
{
  v2 = sub_1B8CD35C0(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B952CF58()
{
  sub_1B8CD35C0(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);

  return sub_1B964C5D0();
}

void sub_1B952D120()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_58()
{

  return sub_1B964C6E0();
}

void Searchfoundation_PhotosAggregatedInfo.totalNumberOfAssets.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_PhotosAggregatedInfo.totalNumberOfAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Searchfoundation_PhotosAggregatedInfo.totalNumberOfEmbeddingMatchedAssets.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_PhotosAggregatedInfo.totalNumberOfEmbeddingMatchedAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Searchfoundation_PhotosAggregatedInfo.totalNumberOfMetadataMatchedAssets.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_PhotosAggregatedInfo.totalNumberOfMetadataMatchedAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosAggregatedInfo() + 28);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_PhotosAggregatedInfo()
{
  result = qword_1EBAD0350;
  if (!qword_1EBAD0350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosAggregatedInfo() + 28);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_PhotosAggregatedInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v1 = a1 + *(type metadata accessor for Searchfoundation_PhotosAggregatedInfo() + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B952D49C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0310);
  __swift_project_value_buffer(v0, qword_1EBAD0310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "totalNumberOfAssets";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfEmbeddingMatchedAssets";
  *(v10 + 1) = 35;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfMetadataMatchedAssets";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_PhotosAggregatedInfo._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_PhotosAggregatedInfo.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B952D8A8();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B952D840();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B952D7D8();
        break;
    }
  }

  return result;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v7 = *(v0 + 8), sub_1B952DD64(), result = OUTLINED_FUNCTION_3_31(), !v1))
  {
    if (!v0[2] || (v5 = v0[2], v8 = *(v0 + 24), sub_1B952DD64(), result = OUTLINED_FUNCTION_3_31(), !v1))
    {
      if (!v0[4] || (v6 = v0[4], v9 = *(v0 + 40), sub_1B952DD64(), result = OUTLINED_FUNCTION_3_31(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Searchfoundation_PhotosAggregatedInfo() + 28);
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_PhotosAggregatedInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!sub_1B8D92198(*a1, *(a1 + 8), *a2))
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (!sub_1B8D92198(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    return 0;
  }

  v6 = *(a2 + 40);
  if (!sub_1B8D92198(*(a1 + 32), *(a1 + 40), *(a2 + 32)))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Searchfoundation_PhotosAggregatedInfo() + 28);
  sub_1B964C2B0();
  sub_1B8CD3608(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_PhotosAggregatedInfo.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_PhotosAggregatedInfo();
  sub_1B8CD3608(&qword_1EBAD0330, type metadata accessor for Searchfoundation_PhotosAggregatedInfo);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B952DBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3608(&qword_1EBAD0360, type metadata accessor for Searchfoundation_PhotosAggregatedInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952DC74(uint64_t a1)
{
  v2 = sub_1B8CD3608(&qword_1EBAD0340, type metadata accessor for Searchfoundation_PhotosAggregatedInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B952DCE4()
{
  sub_1B8CD3608(&qword_1EBAD0340, type metadata accessor for Searchfoundation_PhotosAggregatedInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B952DD64()
{
  result = qword_1EBAD0328;
  if (!qword_1EBAD0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0328);
  }

  return result;
}

uint64_t sub_1B952DF00()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void Searchfoundation_PhotosAttributes.photosSuggestionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_PhotosAttributes.photosSuggestionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosAttributes.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosAttributes() + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_PhotosAttributes()
{
  result = qword_1EBAD03A8;
  if (!qword_1EBAD03A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_PhotosAttributes.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosAttributes() + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_PhotosAttributes.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for Searchfoundation_PhotosAttributes() + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B952E2AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0368);
  __swift_project_value_buffer(v0, qword_1EBAD0368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "positionIndex";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isEmbeddingMatched";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isMetadataMatched";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isVideo";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isFavorite";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosSuggestionType";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_PhotosAttributes._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_PhotosAttributes.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B964C560();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        sub_1B964C400();
        break;
      case 6:
        sub_1B952E6EC();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_PhotosAttributes.traverse<A>(visitor:)()
{
  v2 = v1;
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), (v2 = v1) == 0))
  {
    if (*(v0 + 8) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v2 = v1) == 0))
    {
      if (*(v0 + 9) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v2 = v1) == 0))
      {
        if (*(v0 + 10) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v2 = v1) == 0))
        {
          if (*(v0 + 11) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v2 = v1) == 0))
          {
            if (!*(v0 + 16) || (v5 = *(v0 + 16), v6 = *(v0 + 24), sub_1B952EC14(), result = sub_1B964C680(), !v2))
            {
              v4 = v0 + *(type metadata accessor for Searchfoundation_PhotosAttributes() + 40);
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_PhotosAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  if (*(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  if (*(a1 + 11) != *(a2 + 11))
  {
    return 0;
  }

  v2 = *(a2 + 24);
  if (!sub_1B8D92198(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    return 0;
  }

  v3 = *(type metadata accessor for Searchfoundation_PhotosAttributes() + 40);
  sub_1B964C2B0();
  sub_1B8CD3650(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_PhotosAttributes.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_PhotosAttributes();
  sub_1B8CD3650(&qword_1EBAD0388, type metadata accessor for Searchfoundation_PhotosAttributes);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B952EAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3650(&qword_1EBAD03B8, type metadata accessor for Searchfoundation_PhotosAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952EB24(uint64_t a1)
{
  v2 = sub_1B8CD3650(&qword_1EBAD0398, type metadata accessor for Searchfoundation_PhotosAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B952EB94()
{
  sub_1B8CD3650(&qword_1EBAD0398, type metadata accessor for Searchfoundation_PhotosAttributes);

  return sub_1B964C5D0();
}

unint64_t sub_1B952EC14()
{
  result = qword_1EBAD0380;
  if (!qword_1EBAD0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0380);
  }

  return result;
}

uint64_t sub_1B952EDB0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t Searchfoundation_PhotosLibraryBucket.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xB;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B952EE8C@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_PhotosLibraryBucket.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B952EEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95302A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_PhotosLibraryBucket.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD03C0 = a1;
}

uint64_t sub_1B952F008@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_PhotosLibraryBucket.allCases.getter();
  *a1 = result;
  return result;
}

void Searchfoundation_PhotosRankingInfo.totalNumberOfAssetsIndexed.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_PhotosRankingInfo.totalNumberOfAssetsIndexed.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Searchfoundation_PhotosRankingInfo.totalNumberOfAssetsInLibrary.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_PhotosRankingInfo.totalNumberOfAssetsInLibrary.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Searchfoundation_PhotosRankingInfo.totalNumberOfEmbeddingMatchedAssets.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_PhotosRankingInfo.totalNumberOfEmbeddingMatchedAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

void Searchfoundation_PhotosRankingInfo.totalNumberOfMetadataMatchedAssets.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_PhotosRankingInfo.totalNumberOfMetadataMatchedAssets.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

void Searchfoundation_PhotosRankingInfo.assetEstimationOffAmount.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_PhotosRankingInfo.assetEstimationOffAmount.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_PhotosRankingInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosRankingInfo() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_PhotosRankingInfo()
{
  result = qword_1EBAD0448;
  if (!qword_1EBAD0448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_PhotosRankingInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_PhotosRankingInfo() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_PhotosRankingInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v1 = a1 + *(type metadata accessor for Searchfoundation_PhotosRankingInfo() + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B952F35C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD03C8);
  __swift_project_value_buffer(v0, qword_1EBAD03C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v4 = "PhotosLibraryBucketUnknown";
  *(v4 + 8) = 26;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 1;
  *v8 = "PhotosLibraryBucket500OrLess";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PhotosLibraryBucket500To2K";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PhotosLibraryBucket2KTo5K";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PhotosLibraryBucket5KTo10K";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PhotosLibraryBucket10KTo20K";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PhotosLibraryBucket20KTo30K";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "PhotosLibraryBucket30KTo40K";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhotosLibraryBucket40KTo50K";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PhotosLibraryBucket50KTo100K";
  *(v24 + 1) = 28;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PhotosLibraryBucketMoreThan100K";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B952F77C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD03E0);
  __swift_project_value_buffer(v0, qword_1EBAD03E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "totalNumberOfAssetsIndexed";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfAssetsInLibrary";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfEmbeddingMatchedAssets";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "totalNumberOfMetadataMatchedAssets";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "assetEstimationOffAmount";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PhotosRankingInfo.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B952FAE4();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B952FB4C();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B952D8A8();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B952FBB4();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B952FC1C();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_PhotosRankingInfo.traverse<A>(visitor:)()
{
  if (!*v0 || (v2 = *(v0 + 8), OUTLINED_FUNCTION_94_4(), sub_1B95302A8(), result = OUTLINED_FUNCTION_3_31(), !v1))
  {
    if (!*(v0 + 16) || (v4 = *(v0 + 24), OUTLINED_FUNCTION_94_4(), sub_1B95302A8(), result = OUTLINED_FUNCTION_3_31(), !v1))
    {
      if (!*(v0 + 32) || (v5 = *(v0 + 40), OUTLINED_FUNCTION_94_4(), sub_1B952DD64(), result = OUTLINED_FUNCTION_3_31(), !v1))
      {
        if (!*(v0 + 48) || (v6 = *(v0 + 56), OUTLINED_FUNCTION_94_4(), sub_1B952DD64(), result = OUTLINED_FUNCTION_3_31(), !v1))
        {
          if (!*(v0 + 64) || (v7 = *(v0 + 72), OUTLINED_FUNCTION_94_4(), sub_1B952DD64(), result = OUTLINED_FUNCTION_3_31(), !v1))
          {
            v8 = v0 + *(type metadata accessor for Searchfoundation_PhotosRankingInfo() + 36);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_PhotosRankingInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v4 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v4 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v4 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v4 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v4 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v4 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v4 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v4 == v5)
  {
LABEL_6:
    v6 = a1[2];
    v7 = a2[2];
    if (*(a2 + 24) == 1)
    {
      switch(v7)
      {
        case 1:
          if (v6 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v6 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v6 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v6 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v6 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        case 7:
          if (v6 != 7)
          {
            return 0;
          }

          goto LABEL_11;
        case 8:
          if (v6 != 8)
          {
            return 0;
          }

          goto LABEL_11;
        case 9:
          if (v6 != 9)
          {
            return 0;
          }

          goto LABEL_11;
        case 10:
          if (v6 != 10)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v6)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v6 == v7)
    {
LABEL_11:
      v8 = *(a2 + 40);
      if (sub_1B8D92198(a1[4], *(a1 + 40), a2[4]))
      {
        v9 = *(a2 + 56);
        if (sub_1B8D92198(a1[6], *(a1 + 56), a2[6]))
        {
          v10 = *(a2 + 72);
          if (sub_1B8D92198(a1[8], *(a1 + 72), a2[8]))
          {
            v11 = *(type metadata accessor for Searchfoundation_PhotosRankingInfo() + 36);
            sub_1B964C2B0();
            sub_1B8CD3698(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
            return sub_1B964C850() & 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t Searchfoundation_PhotosRankingInfo.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_PhotosRankingInfo();
  sub_1B8CD3698(&qword_1EBAD0400, type metadata accessor for Searchfoundation_PhotosRankingInfo);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9530138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3698(&qword_1EBAD0458, type metadata accessor for Searchfoundation_PhotosRankingInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95301B8(uint64_t a1)
{
  v2 = sub_1B8CD3698(&qword_1EBAD0438, type metadata accessor for Searchfoundation_PhotosRankingInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9530228()
{
  sub_1B8CD3698(&qword_1EBAD0438, type metadata accessor for Searchfoundation_PhotosRankingInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B95302A8()
{
  result = qword_1EBAD03F8;
  if (!qword_1EBAD03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD03F8);
  }

  return result;
}

unint64_t sub_1B9530300()
{
  result = qword_1EBAD0408;
  if (!qword_1EBAD0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0408);
  }

  return result;
}

unint64_t sub_1B9530358()
{
  result = qword_1EBAD0410;
  if (!qword_1EBAD0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0410);
  }

  return result;
}

unint64_t sub_1B95303B0()
{
  result = qword_1EBAD0418;
  if (!qword_1EBAD0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0418);
  }

  return result;
}

unint64_t sub_1B9530408()
{
  result = qword_1EBAD0420;
  if (!qword_1EBAD0420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0428, &qword_1B96D6188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0420);
  }

  return result;
}

uint64_t sub_1B95305C4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t Searchfoundation_PhotosRetrievalBucket.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xF;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9530698@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_PhotosRetrievalBucket.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95306CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B952DD64();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_PhotosRetrievalBucket.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD0460 = a1;
}

uint64_t sub_1B9530814@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_PhotosRetrievalBucket.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B953083C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0468);
  __swift_project_value_buffer(v0, qword_1EBAD0468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 0;
  *v4 = "PhotosRetrievalBucketUnknown";
  *(v4 + 8) = 28;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 1;
  *v8 = "PhotosRetrievalBucket10OrLess";
  *(v8 + 8) = 29;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PhotosRetrievalBucket10To50";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PhotosRetrievalBucket50To100";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PhotosRetrievalBucket100To250";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PhotosRetrievalBucket250To500";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PhotosRetrievalBucket500To2K";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "PhotosRetrievalBucket2KTo5K";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhotosRetrievalBucket5KTo10K";
  *(v22 + 1) = 28;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PhotosRetrievalBucket10KTo20K";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PhotosRetrievalBucket20KTo30K";
  *(v26 + 1) = 29;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "PhotosRetrievalBucket30KTo40K";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "PhotosRetrievalBucket40KTo50K";
  *(v30 + 1) = 29;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "PhotosRetrievalBucket50KTo100K";
  *(v32 + 1) = 30;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "PhotosRetrievalBucketMoreThan100K";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_PhotosRetrievalBucket._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0468);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9530DA8()
{
  result = qword_1EBAD0480;
  if (!qword_1EBAD0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0480);
  }

  return result;
}

unint64_t sub_1B9530E00()
{
  result = qword_1EBAD0488;
  if (!qword_1EBAD0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0488);
  }

  return result;
}

unint64_t sub_1B9530E58()
{
  result = qword_1EBAD0490;
  if (!qword_1EBAD0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0490);
  }

  return result;
}

unint64_t sub_1B9530EB0()
{
  result = qword_1EBAD0498;
  if (!qword_1EBAD0498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD04A0, &qword_1B96D64F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0498);
  }

  return result;
}

unint64_t Searchfoundation_PhotosSuggestionType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9530F6C@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_PhotosSuggestionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9530FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B952EC14();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_PhotosSuggestionType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD04A8 = a1;
}

uint64_t sub_1B95310E8@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_PhotosSuggestionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9531110()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD04B0);
  __swift_project_value_buffer(v0, qword_1EBAD04B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PhotosSuggestionTypeUnknown";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PhotosSuggestionTypeRecentlyViewed";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PhotosSuggestionTypeRecentlyEdited";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PhotosSuggestionTypeRecentlyShared";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PhotosSuggestionTypeRecentlySearched";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PhotosSuggestionTypeSearchPrompt";
  *(v18 + 1) = 32;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PhotosSuggestionTypeCompletion";
  *(v20 + 1) = 30;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "PhotosSuggestionTypeNextToken";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_PhotosSuggestionType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB86F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD04B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B95314F8()
{
  result = qword_1EBAD04C8;
  if (!qword_1EBAD04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD04C8);
  }

  return result;
}

unint64_t sub_1B9531550()
{
  result = qword_1EBAD04D0;
  if (!qword_1EBAD04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD04D0);
  }

  return result;
}

unint64_t sub_1B95315A8()
{
  result = qword_1EBAD04D8;
  if (!qword_1EBAD04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD04D8);
  }

  return result;
}

unint64_t sub_1B9531600()
{
  result = qword_1EBAD04E0;
  if (!qword_1EBAD04E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD04E8, &qword_1B96D66C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD04E0);
  }

  return result;
}

uint64_t Searchfoundation_ProductCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = xmmword_1B9652FE0;
  v2 = type metadata accessor for Searchfoundation_ProductCardSection();
  v3 = a1 + *(v2 + 52);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 56);
  v5 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t type metadata accessor for Searchfoundation_ProductCardSection()
{
  result = qword_1ED9F1850;
  if (!qword_1ED9F1850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_ProductCardSection.punchoutOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ProductCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ProductCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ProductCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_ProductCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_ProductCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Searchfoundation_ProductCardSection();
  sub_1B92C7198(v1 + *(v8 + 56), v2);
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(v9 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45();
  }

  *(a1 + v12) = qword_1ED9CD1C8;
  v13 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v9);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t sub_1B9531B38(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v5);
  return Searchfoundation_ProductCardSection.backgroundColor.setter(v5);
}

uint64_t Searchfoundation_ProductCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ProductCardSection() + 56);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_ProductCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ProductCardSection() + 56);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

BOOL Searchfoundation_ProductCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_ProductCardSection();
  sub_1B92C7198(v0 + *(v6 + 56), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v7 = OUTLINED_FUNCTION_493();
  v10 = __swift_getEnumTagSinglePayload(v7, v8, v9) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_ProductCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_ProductCardSection() + 56);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_ProductCardSection.productJson.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ProductCardSection.productJson.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_ProductCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_ProductCardSection() + 52);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_ProductCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ProductCardSection() + 52);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_1B95320BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD04F0);
  __swift_project_value_buffer(v0, qword_1EBAD04F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "punchoutOptions";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "punchoutPickerTitle";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "punchoutPickerDismissText";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "canBeHidden";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hasTopPadding";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hasBottomPadding";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "type";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "separatorStyle";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "backgroundColor";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 1000;
  *v26 = "productJSON";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ProductCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8700 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD04F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_ProductCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9532628();
        break;
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B92C7E00();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B95326C8();
        break;
      default:
        if (result == 1000)
        {
          OUTLINED_FUNCTION_12();
          sub_1B964C470();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B9532628()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B95332B4(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B95326C8()
{
  v0 = *(type metadata accessor for Searchfoundation_ProductCardSection() + 56);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B95332B4(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t Searchfoundation_ProductCardSection.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v0 + 16))
  {
    v34 = v0;
    v15 = v8;
    v16 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B95332B4(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
    result = sub_1B964C730();
    if (v1)
    {
      return result;
    }

    v14 = v16;
    v8 = v15;
    v2 = v34;
  }

  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  if (!v20 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v21 = *(v2 + 24);
    v22 = *(v2 + 32);
    OUTLINED_FUNCTION_1();
    if (!v23 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      if (*(v2 + 40) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
      {
        if (*(v2 + 41) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
        {
          if (*(v2 + 42) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
          {
            v24 = *(v2 + 48);
            v25 = *(v2 + 56);
            OUTLINED_FUNCTION_1();
            if (!v26 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
            {
              if (!*(v2 + 64) || (v27 = *(v2 + 72), v32 = *(v2 + 64), v33 = v27, sub_1B92C8A2C(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v1))
              {
                v28 = type metadata accessor for Searchfoundation_ProductCardSection();
                sub_1B92C7198(v2 + *(v28 + 56), v8);
                if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
                {
                  sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  v34 = v28;
                  sub_1B92C8908(v8, v14);
                  sub_1B95332B4(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                  OUTLINED_FUNCTION_79_0();
                  sub_1B964C740();
                  result = sub_1B92C89D0(v14);
                  if (v1)
                  {
                    return result;
                  }

                  v28 = v34;
                }

                if (sub_1B8D99EA8(*(v2 + 80), *(v2 + 88)) || (v29 = *(v2 + 80), v30 = *(v2 + 88), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
                {
                  v31 = v2 + *(v28 + 52);
                  OUTLINED_FUNCTION_12();
                  return sub_1B964C290();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_ProductCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1;
  v20 = *v0;
  sub_1B8D67B1C();
  if ((v21 & 1) == 0)
  {
    goto LABEL_33;
  }

  v22 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  v23 = v1[3] == v0[3] && v1[4] == v0[4];
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_33;
  }

  v24 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  v25 = *(v0 + 72);
  if (!sub_1B8D92198(v1[8], *(v1 + 72), v0[8]))
  {
    goto LABEL_33;
  }

  v26 = type metadata accessor for Searchfoundation_ProductCardSection();
  v27 = *(v26 + 56);
  v28 = *(v15 + 48);
  sub_1B92C7198(v1 + v27, v2);
  sub_1B92C7198(v0 + v27, v2 + v28);
  v29 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v29, v30, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  sub_1B92C7198(v2, v14);
  if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) == 1)
  {
    sub_1B92C89D0(v14);
LABEL_26:
    v31 = &qword_1EBACB058;
    v32 = &unk_1B96CA9D0;
LABEL_27:
    sub_1B8D9207C(v2, v31, v32);
LABEL_33:
    v43 = 0;
    return v43 & 1;
  }

  sub_1B92C8908(v2 + v28, v8);
  v33 = *(v3 + 20);
  if (*&v14[v33] != *&v8[v33])
  {
    v34 = *&v14[v33];

    sub_1B947FDE4();
    v36 = v35;

    if ((v36 & 1) == 0)
    {
      sub_1B92C89D0(v8);
      sub_1B92C89D0(v14);
      v31 = &qword_1EBACB050;
      v32 = &unk_1B96B7BD0;
      goto LABEL_27;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_70();
  sub_1B95332B4(v37, v38);
  v39 = sub_1B964C850();
  sub_1B92C89D0(v8);
  sub_1B92C89D0(v14);
  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  if ((MEMORY[0x1BFADC060](v1[10], v1[11], v0[10], v0[11]) & 1) == 0)
  {
    goto LABEL_33;
  }

  v40 = *(v26 + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_70();
  sub_1B95332B4(v41, v42);
  v43 = sub_1B964C850();
  return v43 & 1;
}

uint64_t Searchfoundation_ProductCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_ProductCardSection();
  sub_1B95332B4(&qword_1EBAD0508, type metadata accessor for Searchfoundation_ProductCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9532FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95332B4(&qword_1EBAD0520, type metadata accessor for Searchfoundation_ProductCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B953307C(uint64_t a1)
{
  v2 = sub_1B95332B4(&qword_1EBACE6B8, type metadata accessor for Searchfoundation_ProductCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95330EC()
{
  sub_1B95332B4(&qword_1EBACE6B8, type metadata accessor for Searchfoundation_ProductCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95332B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9533320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9535BBC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9533404@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_StorefrontType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9533454@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_AvailabilityStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9533488(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9535C10();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B953356C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_AvailabilityStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_DistanceUnit.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B95335DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9535C64();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B95336C0@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_DistanceUnit.allCases.getter();
  *a1 = result;
  return result;
}

void Searchfoundation_ProductInventory.type.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_ProductInventory.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Searchfoundation_ProductInventory.availabilityStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_ProductInventory.availabilityStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

void Searchfoundation_ProductInventory.distanceUnit.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_ProductInventory.distanceUnit.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Searchfoundation_ProductInventory.timestamp.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  v7 = type metadata accessor for Searchfoundation_ProductInventory(0);
  OUTLINED_FUNCTION_115(*(v7 + 48));
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Date(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (v11)
  {
    *a1 = 0;
    v12 = a1 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v13, v14, v8);
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_86();
    OUTLINED_FUNCTION_182();
    return sub_1B9534470();
  }

  return result;
}

uint64_t Searchfoundation_ProductInventory.timestamp.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_ProductInventory(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_1_86();
  sub_1B9534470();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Searchfoundation_ProductInventory.timestamp.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Date(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ProductInventory(0) + 48);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v15 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_86();
    sub_1B9534470();
  }

  return sub_1B9533ADC;
}

uint64_t Searchfoundation_ProductInventory.hasTimestamp.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Searchfoundation_ProductInventory(0);
  OUTLINED_FUNCTION_115(*(v4 + 48));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Date(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &qword_1B964D630);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_ProductInventory.clearTimestamp()()
{
  v1 = type metadata accessor for Searchfoundation_ProductInventory(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBAB8E30, &qword_1B964D630);
  type metadata accessor for Searchfoundation_Date(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_ProductInventory.storeName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ProductInventory.storeName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Searchfoundation_ProductInventory.storeAddress.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ProductInventory.storeAddress.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_ProductInventory.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_ProductInventory(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_ProductInventory.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_ProductInventory(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_ProductInventory.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_ProductInventory(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ProductInventory.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  v2 = type metadata accessor for Searchfoundation_ProductInventory(0);
  v3 = a1 + *(v2 + 44);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 48);
  type metadata accessor for Searchfoundation_Date(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Searchfoundation_ProductInventoryResult.availability.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Searchfoundation_ProductInventoryResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_ProductInventoryResult(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_ProductInventoryResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_ProductInventoryResult(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_ProductInventoryResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_ProductInventoryResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ProductInventoryResult.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Searchfoundation_ProductInventoryResult(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_ProductAvailability.results.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_ProductAvailability.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_ProductAvailability(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_ProductAvailability.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_ProductAvailability(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_ProductAvailability.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_ProductAvailability(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ProductAvailability.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Searchfoundation_ProductAvailability(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_Product.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Product.identifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_Product.productIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Product.productIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_Product.availabilityURL.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  v7 = type metadata accessor for Searchfoundation_Product(0);
  OUTLINED_FUNCTION_115(*(v7 + 36));
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_URL();
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v12 = a1 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v13, v14, v8);
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_71();
    OUTLINED_FUNCTION_182();
    return sub_1B9534470();
  }

  return result;
}

uint64_t sub_1B9534470()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B95344C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B9534880();
  return a7(v13);
}

uint64_t Searchfoundation_Product.availabilityURL.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_Product(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_2_71();
  sub_1B9534470();
  type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Searchfoundation_Product.availabilityURL.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_URL();
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_Product(0) + 36);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v15 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_71();
    sub_1B9534470();
  }

  return sub_1B953474C;
}

void sub_1B9534774(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    v13 = (*a1)[4];
    sub_1B9534880();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B9534470();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v11);
    sub_1B95348D8();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B9534470();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_1B9534880()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B95348D8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_Product.hasAvailabilityURL.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Searchfoundation_Product(0);
  OUTLINED_FUNCTION_115(*(v4 + 36));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_URL();
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &unk_1B964D620);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_Product.clearAvailabilityURL()()
{
  v1 = type metadata accessor for Searchfoundation_Product(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB8E20, &unk_1B964D620);
  type metadata accessor for Searchfoundation_URL();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_Product.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Product.displayName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_Product.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_Product(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_Product.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_Product(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_Product.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_Product(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_Product.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  v2 = type metadata accessor for Searchfoundation_Product(0);
  v3 = a1 + *(v2 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 36);
  type metadata accessor for Searchfoundation_URL();
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B9534C58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0540);
  __swift_project_value_buffer(v0, qword_1EBAD0540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PhysicalStore";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Online";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9534E48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0558);
  __swift_project_value_buffer(v0, qword_1EBAD0558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NotAvailable";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Available";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LimitedAvailability";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PreOrderAvailable";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95350B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0570);
  __swift_project_value_buffer(v0, qword_1EBAD0570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Kilometer";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Mile";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95352B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0588);
  __swift_project_value_buffer(v0, qword_1EBAD0588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "storeId";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "availabilityStatus";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "distance";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "distanceUnit";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timestamp";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "storeName";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "storeAddress";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ProductInventory.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B95356EC();
        break;
      case 2:
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9535754();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95357BC();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B9535824();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9535824()
{
  v0 = *(type metadata accessor for Searchfoundation_ProductInventory(0) + 48);
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B95360C0(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  return sub_1B964C580();
}

uint64_t Searchfoundation_ProductInventory.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for Searchfoundation_Date(0);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  if (!*v1 || (v14 = *(v3 + 8), v29 = *v1, v30 = v14, sub_1B9535BBC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), (v0 = v2) == 0))
  {
    v16 = *(v3 + 16);
    v17 = *(v3 + 24);
    OUTLINED_FUNCTION_1();
    if (!v18 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
    {
      if (!*(v3 + 32) || (v19 = *(v3 + 40), v29 = *(v3 + 32), v30 = v19, sub_1B9535C10(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), (v0 = v2) == 0))
      {
        if (*(v3 + 44) == 0.0 || (v2 = v0, OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
        {
          if (!*(v3 + 48) || (v20 = *(v3 + 56), v29 = *(v3 + 48), v30 = v20, sub_1B9535C64(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v2))
          {
            v31 = type metadata accessor for Searchfoundation_ProductInventory(0);
            v21 = *(v31 + 48);
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
            {
              sub_1B8D9207C(v9, &qword_1EBAB8E30, &qword_1B964D630);
            }

            else
            {
              OUTLINED_FUNCTION_1_86();
              sub_1B9534470();
              sub_1B95360C0(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
              OUTLINED_FUNCTION_687();
              sub_1B964C740();
              result = sub_1B95348D8();
              if (v2)
              {
                return result;
              }
            }

            v22 = *(v3 + 64);
            v23 = *(v3 + 72);
            OUTLINED_FUNCTION_1();
            if (!v24 || (result = OUTLINED_FUNCTION_3(), !v2))
            {
              v25 = *(v3 + 80);
              v26 = *(v3 + 88);
              OUTLINED_FUNCTION_1();
              if (!v27 || (result = OUTLINED_FUNCTION_3(), !v2))
              {
                v28 = *(v31 + 44);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B9535BBC()
{
  result = qword_1EBAD05E8;
  if (!qword_1EBAD05E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD05E8);
  }

  return result;
}

unint64_t sub_1B9535C10()
{
  result = qword_1EBAD05F0;
  if (!qword_1EBAD05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD05F0);
  }

  return result;
}

unint64_t sub_1B9535C64()
{
  result = qword_1EBAD05F8;
  if (!qword_1EBAD05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD05F8);
  }

  return result;
}

uint64_t static Searchfoundation_ProductInventory.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Date(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_88();
  v20 = *v1;
  v21 = *v0;
  if (*(v1 + 8))
  {
    v20 = *v1 != 0;
  }

  if (*(v0 + 8) == 1)
  {
    if (v21)
    {
      if (v20 != 1)
      {
        goto LABEL_36;
      }
    }

    else if (v20)
    {
      goto LABEL_36;
    }
  }

  else if (v20 != v21)
  {
    goto LABEL_36;
  }

  v22 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_36;
  }

  v23 = *(v0 + 40);
  if (!sub_1B8D92198(v1[4], *(v1 + 40), v0[4]) || *(v1 + 11) != *(v0 + 11))
  {
    goto LABEL_36;
  }

  v24 = v1[6];
  v25 = v0[6];
  if (*(v1 + 56))
  {
    v24 = v24 != 0;
  }

  if (*(v0 + 56) == 1)
  {
    if (v25)
    {
      if (v24 != 1)
      {
        goto LABEL_36;
      }
    }

    else if (v24)
    {
      goto LABEL_36;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_36;
  }

  v43 = type metadata accessor for Searchfoundation_ProductInventory(0);
  v26 = *(v43 + 48);
  v27 = *(v16 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v22)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v27);
    if (!v28)
    {
      OUTLINED_FUNCTION_1_86();
      sub_1B9534470();
      if (*v15 == *v9)
      {
        v33 = *(v3 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_104();
        sub_1B95360C0(v34, v35);
        v36 = OUTLINED_FUNCTION_198_0();
        sub_1B95348D8();
        sub_1B95348D8();
        sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_40;
      }

      sub_1B95348D8();
      sub_1B95348D8();
      v29 = &qword_1EBAB8E30;
      v30 = &qword_1B964D630;
LABEL_35:
      sub_1B8D9207C(v2, v29, v30);
      goto LABEL_36;
    }

    sub_1B95348D8();
LABEL_34:
    v29 = &qword_1EBAB8E38;
    v30 = &qword_1B96CD870;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_37_0(v2 + v27);
  if (!v22)
  {
    goto LABEL_34;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_40:
  v37 = v1[8] == v0[8] && v1[9] == v0[9];
  if (v37 || (sub_1B964C9F0() & 1) != 0)
  {
    v38 = v1[10] == v0[10] && v1[11] == v0[11];
    if (v38 || (sub_1B964C9F0() & 1) != 0)
    {
      v39 = *(v43 + 44);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_104();
      sub_1B95360C0(v40, v41);
      v31 = OUTLINED_FUNCTION_199_0();
      return v31 & 1;
    }
  }

LABEL_36:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1B95360C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B95361AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95360C0(&qword_1EBAD0760, type metadata accessor for Searchfoundation_ProductInventory);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B953622C(uint64_t a1)
{
  v2 = sub_1B95360C0(&qword_1EBAD0608, type metadata accessor for Searchfoundation_ProductInventory);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B953629C()
{
  sub_1B95360C0(&qword_1EBAD0608, type metadata accessor for Searchfoundation_ProductInventory);

  return sub_1B964C5D0();
}

uint64_t sub_1B9536334()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD05A0);
  __swift_project_value_buffer(v0, qword_1EBAD05A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "productIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "availability";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ProductInventoryResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9536584();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9536584()
{
  type metadata accessor for Searchfoundation_ProductInventory(0);
  sub_1B95360C0(&qword_1EBAD0608, type metadata accessor for Searchfoundation_ProductInventory);
  return sub_1B964C570();
}

uint64_t Searchfoundation_ProductInventoryResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Searchfoundation_ProductInventory(0), sub_1B95360C0(&qword_1EBAD0608, type metadata accessor for Searchfoundation_ProductInventory), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v7 = *(type metadata accessor for Searchfoundation_ProductInventoryResult(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Searchfoundation_ProductInventoryResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v5 = v0[2];
  sub_1B8D6E188();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Searchfoundation_ProductInventoryResult(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_104();
  sub_1B95360C0(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9536848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95360C0(&qword_1EBAD0758, type metadata accessor for Searchfoundation_ProductInventoryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95368C8(uint64_t a1)
{
  v2 = sub_1B95360C0(&qword_1EBAD0618, type metadata accessor for Searchfoundation_ProductInventoryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9536938()
{
  sub_1B95360C0(&qword_1EBAD0618, type metadata accessor for Searchfoundation_ProductInventoryResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B95369D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD05B8);
  __swift_project_value_buffer(v0, qword_1EBAD05B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "results";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Searchfoundation_ProductAvailability.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9536BA8();
    }
  }

  return result;
}

uint64_t sub_1B9536BA8()
{
  type metadata accessor for Searchfoundation_ProductInventoryResult(0);
  sub_1B95360C0(&qword_1EBAD0618, type metadata accessor for Searchfoundation_ProductInventoryResult);
  return sub_1B964C570();
}

uint64_t Searchfoundation_ProductAvailability.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_ProductInventoryResult(0), sub_1B95360C0(&qword_1EBAD0618, type metadata accessor for Searchfoundation_ProductInventoryResult), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Searchfoundation_ProductAvailability(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Searchfoundation_ProductAvailability.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  sub_1B8D74F68();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Searchfoundation_ProductAvailability(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_104();
  sub_1B95360C0(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9536E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95360C0(&qword_1EBAD0750, type metadata accessor for Searchfoundation_ProductAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9536EAC(uint64_t a1)
{
  v2 = sub_1B95360C0(&qword_1EBAD06D0, type metadata accessor for Searchfoundation_ProductAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9536F1C()
{
  sub_1B95360C0(&qword_1EBAD06D0, type metadata accessor for Searchfoundation_ProductAvailability);

  return sub_1B964C5D0();
}

uint64_t sub_1B9536FB4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD05D0);
  __swift_project_value_buffer(v0, qword_1EBAD05D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "productIdentifier";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "availabilityURL";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "displayName";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "buyable";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_Product.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9537300();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9537300()
{
  v0 = *(type metadata accessor for Searchfoundation_Product(0) + 36);
  type metadata accessor for Searchfoundation_URL();
  sub_1B95360C0(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  return sub_1B964C580();
}

uint64_t Searchfoundation_Product.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Searchfoundation_URL();
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = *v1;
  v16 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v17 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
  {
    v19 = *(v4 + 16);
    v20 = *(v4 + 24);
    OUTLINED_FUNCTION_1();
    if (!v21 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
    {
      v29 = v3;
      v28 = type metadata accessor for Searchfoundation_Product(0);
      v22 = *(v28 + 36);
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_1B8D9207C(v10, &qword_1EBAB8E20, &unk_1B964D620);
      }

      else
      {
        sub_1B9534470();
        sub_1B95360C0(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
        v2 = v0;
        sub_1B964C740();
        result = sub_1B95348D8();
        if (v0)
        {
          return result;
        }
      }

      v23 = *(v4 + 32);
      v24 = *(v4 + 40);
      OUTLINED_FUNCTION_1();
      if (!v25 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
      {
        if (*(v4 + 48) != 1 || (result = sub_1B964C670(), !v0))
        {
          v26 = *(v28 + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_Product.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_URL();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v38 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_88();
  v20 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v39 = type metadata accessor for Searchfoundation_Product(0);
  v22 = *(v39 + 36);
  v23 = *(v16 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v20)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v23);
    if (!v24)
    {
      OUTLINED_FUNCTION_2_71();
      sub_1B9534470();
      v29 = *v15 == *v9 && v15[1] == v9[1];
      if (v29 || (sub_1B964C9F0() & 1) != 0)
      {
        v30 = *(v3 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_104();
        sub_1B95360C0(v31, v32);
        v33 = OUTLINED_FUNCTION_198_0();
        sub_1B95348D8();
        sub_1B95348D8();
        sub_1B8D9207C(v2, &qword_1EBAB8E20, &unk_1B964D620);
        if ((v33 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }

      sub_1B95348D8();
      sub_1B95348D8();
      v25 = &qword_1EBAB8E20;
      v26 = &unk_1B964D620;
LABEL_20:
      sub_1B8D9207C(v2, v25, v26);
      goto LABEL_21;
    }

    sub_1B95348D8();
LABEL_19:
    v25 = &qword_1EBAB8E28;
    v26 = &unk_1B96B7BB0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_37_0(v2 + v23);
  if (!v20)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_29:
  v34 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (v34 || (sub_1B964C9F0()) && *(v1 + 48) == *(v0 + 48))
  {
    v35 = *(v39 + 32);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_104();
    sub_1B95360C0(v36, v37);
    v27 = OUTLINED_FUNCTION_199_0();
    return v27 & 1;
  }

LABEL_21:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1B95379C4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B95360C0(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9537AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95360C0(&qword_1EBAD0748, type metadata accessor for Searchfoundation_Product);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9537B28(uint64_t a1)
{
  v2 = sub_1B95360C0(&qword_1EBAD06E8, type metadata accessor for Searchfoundation_Product);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9537B98()
{
  sub_1B95360C0(&qword_1EBAD06E8, type metadata accessor for Searchfoundation_Product);

  return sub_1B964C5D0();
}

unint64_t sub_1B9537C1C()
{
  result = qword_1EBAD0630;
  if (!qword_1EBAD0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0630);
  }

  return result;
}

unint64_t sub_1B9537C74()
{
  result = qword_1EBAD0638;
  if (!qword_1EBAD0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0638);
  }

  return result;
}

unint64_t sub_1B9537CCC()
{
  result = qword_1EBAD0640;
  if (!qword_1EBAD0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0640);
  }

  return result;
}

unint64_t sub_1B9537D54()
{
  result = qword_1EBAD0658;
  if (!qword_1EBAD0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0658);
  }

  return result;
}

unint64_t sub_1B9537DAC()
{
  result = qword_1EBAD0660;
  if (!qword_1EBAD0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0660);
  }

  return result;
}

unint64_t sub_1B9537E04()
{
  result = qword_1EBAD0668;
  if (!qword_1EBAD0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0668);
  }

  return result;
}

unint64_t sub_1B9537E8C()
{
  result = qword_1EBAD0680;
  if (!qword_1EBAD0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0680);
  }

  return result;
}

unint64_t sub_1B9537EE4()
{
  result = qword_1EBAD0688;
  if (!qword_1EBAD0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0688);
  }

  return result;
}

unint64_t sub_1B9537F3C()
{
  result = qword_1EBAD0690;
  if (!qword_1EBAD0690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0690);
  }

  return result;
}

void sub_1B9538498()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B953867C(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B95385B8()
{
  sub_1B953867C(319, &qword_1EBAD0718, type metadata accessor for Searchfoundation_ProductInventory, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B953867C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9538708()
{
  sub_1B953867C(319, &qword_1EBAD0730, type metadata accessor for Searchfoundation_ProductInventoryResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B95387E4()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B953867C(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Searchfoundation_Punchout.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  v3 = type metadata accessor for Searchfoundation_Punchout();
  v4 = a1 + *(v3 + 48);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 52);
  v6 = type metadata accessor for Searchfoundation_UserActivityData(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t type metadata accessor for Searchfoundation_Punchout()
{
  result = qword_1ED9F9680;
  if (!qword_1ED9F9680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_Punchout.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Punchout.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_Punchout.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Punchout.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_Punchout.label.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Punchout.label.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_Punchout.urls.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Searchfoundation_Punchout.userActivityData.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Searchfoundation_Punchout();
  sub_1B9538E08(v1 + *(v8 + 52), v2);
  v9 = type metadata accessor for Searchfoundation_UserActivityData(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (!v12)
  {
    return sub_1B9538E78(v2, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  v13 = a1 + *(v9 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v14 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v14, v15, v9);
  if (!v12)
  {
    return sub_1B8D9207C(v2, &qword_1EBAD0768, &qword_1B96D74A0);
  }

  return result;
}

uint64_t sub_1B9538D00(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_UserActivityData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B953911C(a1, v5);
  return Searchfoundation_Punchout.userActivityData.setter(v5);
}

uint64_t Searchfoundation_Punchout.userActivityData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_Punchout() + 52);
  sub_1B8D9207C(v1 + v3, &qword_1EBAD0768, &qword_1B96D74A0);
  sub_1B9538E78(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_UserActivityData(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t sub_1B9538E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9538E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_UserActivityData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Searchfoundation_Punchout.userActivityData.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_UserActivityData(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_Punchout() + 52);
  *(v3 + 10) = v11;
  sub_1B9538E08(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = MEMORY[0x1E69E7CC0];
    v15 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAD0768, &qword_1B96D74A0);
    }
  }

  else
  {
    sub_1B9538E78(v6, v10);
  }

  return sub_1B953903C;
}

void sub_1B953903C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B953911C((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAD0768, &qword_1B96D74A0);
    sub_1B9538E78(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B9539180(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAD0768, &qword_1B96D74A0);
    sub_1B9538E78(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B953911C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_UserActivityData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9539180(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_UserActivityData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Searchfoundation_Punchout.hasUserActivityData.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_Punchout();
  sub_1B9538E08(v0 + *(v6 + 52), v1);
  type metadata accessor for Searchfoundation_UserActivityData(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAD0768, &qword_1B96D74A0);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_Punchout.clearUserActivityData()()
{
  v1 = *(type metadata accessor for Searchfoundation_Punchout() + 52);
  sub_1B8D9207C(v0 + v1, &qword_1EBAD0768, &qword_1B96D74A0);
  v2 = type metadata accessor for Searchfoundation_UserActivityData(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_Punchout.actionTarget.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Punchout.actionTarget.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Searchfoundation_Punchout.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_Punchout() + 48);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_Punchout.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_Punchout() + 48);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_1B9539550()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5500);
  __swift_project_value_buffer(v0, qword_1EBAB5500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "bundleIdentifier";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "label";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urls";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "userActivityData";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "actionTarget";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "isRunnableInBackground";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "hasClip";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "forceOpenInBrowser";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_Punchout._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB54F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAB5500);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_Punchout.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 6:
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9539A4C();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9539AEC();
        break;
      case 7:
      case 8:
      case 9:
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9539A4C()
{
  type metadata accessor for Searchfoundation_URL();
  sub_1B953A76C(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  return sub_1B964C570();
}

uint64_t sub_1B9539AEC()
{
  v0 = *(type metadata accessor for Searchfoundation_Punchout() + 52);
  type metadata accessor for Searchfoundation_UserActivityData(0);
  sub_1B953A76C(&qword_1EBAD0770, type metadata accessor for Searchfoundation_UserActivityData);
  return sub_1B964C580();
}

uint64_t Searchfoundation_Punchout.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Searchfoundation_UserActivityData(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v0;
  v15 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v16 || (result = OUTLINED_FUNCTION_95_1(), !v1))
  {
    v18 = v0[2];
    v19 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v20 || (result = OUTLINED_FUNCTION_95_1(), !v1))
    {
      v21 = v0[4];
      v22 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v23 || (result = OUTLINED_FUNCTION_95_1(), !v1))
      {
        if (!*(v0[6] + 16) || (v29 = type metadata accessor for Searchfoundation_URL(), sub_1B953A76C(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
        {
          v29 = type metadata accessor for Searchfoundation_Punchout();
          sub_1B9538E08(v0 + *(v29 + 52), v7);
          if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
          {
            sub_1B8D9207C(v7, &qword_1EBAD0768, &qword_1B96D74A0);
          }

          else
          {
            sub_1B9538E78(v7, v13);
            sub_1B953A76C(&qword_1EBAD0770, type metadata accessor for Searchfoundation_UserActivityData);
            OUTLINED_FUNCTION_687();
            sub_1B964C740();
            result = sub_1B9539180(v13);
            if (v1)
            {
              return result;
            }
          }

          v24 = v0[7];
          v25 = v0[8];
          OUTLINED_FUNCTION_1();
          if (!v26 || (result = OUTLINED_FUNCTION_95_1(), !v1))
          {
            if (*(v0 + 72) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
            {
              if (*(v0 + 73) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
              {
                if (*(v0 + 74) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
                {
                  v27 = v0 + *(v29 + 48);
                  return sub_1B964C290();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_Punchout.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_UserActivityData(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0768, &qword_1B96D74A0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v47 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0778, &qword_1B96D74A8);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v22 = *(v1 + 48);
  v23 = *(v0 + 48);
  sub_1B8D7C334();
  if ((v24 & 1) == 0)
  {
    goto LABEL_45;
  }

  v25 = type metadata accessor for Searchfoundation_Punchout();
  v26 = *(v25 + 52);
  v27 = *(v15 + 48);
  sub_1B9538E08(v1 + v26, v2);
  sub_1B9538E08(v0 + v26, v2 + v27);
  v28 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v28, v29, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_178(v2 + v27, 1, v3);
    if (v19)
    {
      sub_1B8D9207C(v2, &qword_1EBAD0768, &qword_1B96D74A0);
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  sub_1B9538E08(v2, v14);
  OUTLINED_FUNCTION_178(v2 + v27, 1, v3);
  if (v35)
  {
    sub_1B9539180(v14);
LABEL_34:
    v36 = &qword_1EBAD0778;
    v37 = &qword_1B96D74A8;
LABEL_44:
    sub_1B8D9207C(v2, v36, v37);
LABEL_45:
    v34 = 0;
    return v34 & 1;
  }

  sub_1B9538E78(v2 + v27, v8);
  v38 = *v14 == *v8 && v14[1] == v8[1];
  if (!v38 && (sub_1B964C9F0() & 1) == 0 || (v39 = v14[2], v40 = v8[2], sub_1B8D7BEB0(), (v41 & 1) == 0))
  {
    sub_1B9539180(v8);
    sub_1B9539180(v14);
    v36 = &qword_1EBAD0768;
    v37 = &qword_1B96D74A0;
    goto LABEL_44;
  }

  v42 = *(v3 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_72();
  sub_1B953A76C(v43, v44);
  v45 = sub_1B964C850();
  sub_1B9539180(v8);
  sub_1B9539180(v14);
  sub_1B8D9207C(v2, &qword_1EBAD0768, &qword_1B96D74A0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_22:
  v30 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v30 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 72) != *(v0 + 72) || *(v1 + 73) != *(v0 + 73) || *(v1 + 74) != *(v0 + 74))
  {
    goto LABEL_45;
  }

  v31 = *(v25 + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_72();
  sub_1B953A76C(v32, v33);
  v34 = sub_1B964C850();
  return v34 & 1;
}

uint64_t Searchfoundation_Punchout.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B953A76C(&qword_1EBAD0780, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B953A328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B953A76C(&qword_1EBAD0790, type metadata accessor for Searchfoundation_Punchout);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B953A3A8(uint64_t a1)
{
  v2 = sub_1B953A76C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B953A418()
{
  sub_1B953A76C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

  return sub_1B964C5D0();
}

void sub_1B953A5E0()
{
  sub_1B953A708(319, &qword_1ED9EB340, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B953A708(319, &qword_1ED9F8CC8, type metadata accessor for Searchfoundation_UserActivityData, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B953A708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B953A76C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B953A80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B953ECAC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_QueryUnderstandingQueryIntentType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B953A8FC@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_QueryUnderstandingQueryIntentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B953A94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B953EC58();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_SpotlightQueryIntentType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B953AA3C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_SpotlightQueryIntentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.queryIntentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Searchfoundation_QueryUnderstandingParse() + 20));
  result = OUTLINED_FUNCTION_10_4();
  v5 = *(v3 + 24);
  *a1 = *(v3 + 16);
  *(a1 + 8) = v5;
  return result;
}

uint64_t type metadata accessor for Searchfoundation_QueryUnderstandingParse()
{
  result = qword_1EBAD0868;
  if (!qword_1EBAD0868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.queryIntentType.setter(uint64_t *a1)
{
  v5 = *(OUTLINED_FUNCTION_26_26(a1) + 20);
  v6 = *(v2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v9);
    *(v1 + v5) = v8;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.queryIntentType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = *(OUTLINED_FUNCTION_24_28(v2) + 20);
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953AC14(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_4_15(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 88);
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasUnspecifiedTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 25);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasUnspecifiedTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 25) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasUnspecifiedTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 25);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953ADB4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 25) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSortCriteriaTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 26);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSortCriteriaTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 26) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSortCriteriaTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 26);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953AF38(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 26) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasLocationTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 27);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasLocationTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 27) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasLocationTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 27);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B0BC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 27) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasActionTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 28);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasActionTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 28) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasActionTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 28);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B240(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 28) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasMediaTypeTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 29);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasMediaTypeTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 29) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasMediaTypeTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 29);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B3C4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 29) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasVisualQualityTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 30);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasVisualQualityTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 30) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasVisualQualityTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 30);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B548(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 30) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasNounTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 31);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasNounTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 31) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasNounTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 31);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B6CC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 31) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasTimeTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 32);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasTimeTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 32) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasTimeTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B850(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 32) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasEventTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 33);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasEventTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 33) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasEventTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 33);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953B9D4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 33) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasGenericLocationTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 34);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasGenericLocationTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 34) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasGenericLocationTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 34);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953BB58(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 34) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasCaptureDeviceTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 35);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasCaptureDeviceTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 35) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasCaptureDeviceTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 35);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953BCDC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 35) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasFavoritedTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 36);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasFavoritedTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 36) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasFavoritedTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 36);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953BE60(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 36) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSourceAppTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 37);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSourceAppTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 37) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasSourceAppTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 37);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953BFE4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 37) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 38);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 38) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 38);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C168(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 38) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonSenderTokens_p.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 39);
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonSenderTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 39) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hasPersonSenderTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 39);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C2EC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 39) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.spotlightQueryIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Searchfoundation_QueryUnderstandingParse() + 20));
  result = OUTLINED_FUNCTION_10_4();
  v5 = *(v3 + 48);
  *a1 = *(v3 + 40);
  *(a1 + 8) = v5;
  return result;
}

void *sub_1B953C3BC@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B953C404(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t Searchfoundation_QueryUnderstandingParse.spotlightQueryIntent.setter(uint64_t *a1)
{
  v5 = *(OUTLINED_FUNCTION_26_26(a1) + 20);
  v6 = *(v2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v9);
    *(v1 + v5) = v8;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.spotlightQueryIntent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = *(OUTLINED_FUNCTION_24_28(v2) + 20);
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 48);
  *(v1 + 72) = *(v4 + 40);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C538(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_4_15(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 88);
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.isUnsafeQuery.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 49);
}

uint64_t Searchfoundation_QueryUnderstandingParse.isUnsafeQuery.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 49) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.isUnsafeQuery.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 49);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C6D8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 49) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.isBlocklistedQuery.getter()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  OUTLINED_FUNCTION_402_0(UnderstandingParse);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 50);
}

uint64_t Searchfoundation_QueryUnderstandingParse.isBlocklistedQuery.setter()
{
  v3 = OUTLINED_FUNCTION_9_43();
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 50) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.isBlocklistedQuery.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_3_77(v3);
  OUTLINED_FUNCTION_124_0(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 50);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B953C85C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_40();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 50) = v3;

  free(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B964C2B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Searchfoundation_QueryUnderstandingParse.unknownFields.setter()
{
  v0 = *(*(sub_1B964C2B0() - 8) + 40);
  v1 = OUTLINED_FUNCTION_288();

  return v2(v1);
}

uint64_t Searchfoundation_QueryUnderstandingParse.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_QueryUnderstandingParse() + 20);
  if (qword_1EBAB8758 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBAD07F0;
}

uint64_t sub_1B953CA44()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD07A8);
  __swift_project_value_buffer(v0, qword_1EBAD07A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QueryUnderstandingQueryIntentTypeUnknown";
  *(v6 + 8) = 40;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "QueryUnderstandingQueryIntentTypeUnrelated";
  *(v10 + 8) = 42;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "QueryUnderstandingQueryIntentTypePhotoSearch";
  *(v12 + 1) = 44;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "QueryUnderstandingQueryIntentTypePhotoSearchOCR";
  *(v14 + 1) = 47;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B953CCAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD07C0);
  __swift_project_value_buffer(v0, qword_1EBAD07C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SpotlightQueryIntentTypeUnknown";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SpotlightQueryIntentTypeLocal";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SpotlightQueryIntentTypeStrong_Local";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SpotlightQueryIntentTypeServer";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SpotlightQueryIntentTypeStrong_Server";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B953CF70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD07D8);
  __swift_project_value_buffer(v0, qword_1EBAD07D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B965A600;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "queryIntentType";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "hasUnspecifiedTokens";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "hasSortCriteriaTokens";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "hasLocationTokens";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasActionTokens";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasMediaTypeTokens";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "hasVisualQualityTokens";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "hasNounTokens";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "hasTimeTokens";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "hasEventTokens";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "hasGenericLocationTokens";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "hasCaptureDeviceTokens";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "hasFavoritedTokens";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "hasSourceAppTokens";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "hasPersonTokens";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "hasPersonSenderTokens";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "spotlightQueryIntent";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "isUnsafeQuery";
  *(v40 + 1) = 13;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "isBlocklistedQuery";
  *(v42 + 1) = 18;
  v42[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B953D564()
{
  type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 33) = 0;
  *(result + 25) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1;
  *(result + 49) = 0;
  qword_1EBAD07F0 = result;
  return result;
}

uint64_t Searchfoundation_QueryUnderstandingParse.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Searchfoundation_QueryUnderstandingParse() + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8FD975C(v6);
  }

  return sub_1B953D650();
}

uint64_t sub_1B953D650()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B953D8D4();
        break;
      case 2:
        sub_1B8FDA2D4();
        break;
      case 3:
        sub_1B8FDA358();
        break;
      case 4:
        sub_1B8FDA3DC();
        break;
      case 5:
        sub_1B8FDA460();
        break;
      case 6:
        sub_1B8FDA4E4();
        break;
      case 7:
        sub_1B8FDA568();
        break;
      case 8:
        sub_1B8FDA5EC();
        break;
      case 9:
        sub_1B8FDA670();
        break;
      case 10:
        sub_1B8FDA6F4();
        break;
      case 11:
        sub_1B8FDA778();
        break;
      case 12:
        sub_1B8FDA7FC();
        break;
      case 13:
        sub_1B8FDA880();
        break;
      case 14:
        sub_1B8FDA904();
        break;
      case 15:
        sub_1B8FDA988();
        break;
      case 16:
        sub_1B8FDAA0C();
        break;
      case 17:
        sub_1B953D968();
        break;
      case 18:
        sub_1B953D9FC();
        break;
      case 19:
        sub_1B8FDAB78();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B953D8D4()
{
  swift_beginAccess();
  sub_1B953ECAC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B953D968()
{
  swift_beginAccess();
  sub_1B953EC58();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B953D9FC()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Searchfoundation_QueryUnderstandingParse.traverse<A>(visitor:)()
{
  UnderstandingParse = type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  result = sub_1B953DAEC(*(v0 + *(UnderstandingParse + 20)));
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B953DAEC(uint64_t a1)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (v6 = *(a1 + 16), v7 = *(a1 + 24), sub_1B953ECAC(), result = sub_1B964C680(), !v1))
  {
    swift_beginAccess();
    if (*(a1 + 25) != 1 || (result = sub_1B964C670(), !v1))
    {
      swift_beginAccess();
      if (*(a1 + 26) != 1 || (result = sub_1B964C670(), !v1))
      {
        swift_beginAccess();
        if (*(a1 + 27) != 1 || (result = sub_1B964C670(), !v1))
        {
          swift_beginAccess();
          if (*(a1 + 28) != 1 || (result = sub_1B964C670(), !v1))
          {
            swift_beginAccess();
            if (*(a1 + 29) != 1 || (result = sub_1B964C670(), !v1))
            {
              swift_beginAccess();
              if (*(a1 + 30) != 1 || (result = sub_1B964C670(), !v1))
              {
                swift_beginAccess();
                if (*(a1 + 31) != 1 || (result = sub_1B964C670(), !v1))
                {
                  swift_beginAccess();
                  if (*(a1 + 32) != 1 || (result = sub_1B964C670(), !v1))
                  {
                    swift_beginAccess();
                    if (*(a1 + 33) != 1 || (result = sub_1B964C670(), !v1))
                    {
                      swift_beginAccess();
                      if (*(a1 + 34) != 1 || (result = sub_1B964C670(), !v1))
                      {
                        swift_beginAccess();
                        if (*(a1 + 35) != 1 || (result = sub_1B964C670(), !v1))
                        {
                          swift_beginAccess();
                          if (*(a1 + 36) != 1 || (result = sub_1B964C670(), !v1))
                          {
                            swift_beginAccess();
                            if (*(a1 + 37) != 1 || (result = sub_1B964C670(), !v1))
                            {
                              swift_beginAccess();
                              if (*(a1 + 38) != 1 || (result = sub_1B964C670(), !v1))
                              {
                                swift_beginAccess();
                                if (*(a1 + 39) != 1 || (result = sub_1B964C670(), !v1))
                                {
                                  swift_beginAccess();
                                  if (!*(a1 + 40) || (v4 = *(a1 + 40), v5 = *(a1 + 48), sub_1B953EC58(), result = sub_1B964C680(), !v1))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 49) != 1 || (result = sub_1B964C670(), !v1))
                                    {
                                      result = swift_beginAccess();
                                      if (*(a1 + 50) == 1)
                                      {
                                        return sub_1B964C670();
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_QueryUnderstandingParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Searchfoundation_QueryUnderstandingParse() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (sub_1B953E0D4(v5, v6) & 1) == 0)
  {
    return 0;
  }

  sub_1B964C2B0();
  sub_1B8CD36E0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B953E0D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_29;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_29;
  }

LABEL_6:
  swift_beginAccess();
  v6 = *(a1 + 25);
  swift_beginAccess();
  if (v6 != *(a2 + 25))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v7 = *(a1 + 26);
  swift_beginAccess();
  if (v7 != *(a2 + 26))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v8 = *(a1 + 27);
  swift_beginAccess();
  if (v8 != *(a2 + 27))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v9 = *(a1 + 28);
  swift_beginAccess();
  if (v9 != *(a2 + 28))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v10 = *(a1 + 29);
  swift_beginAccess();
  if (v10 != *(a2 + 29))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v11 = *(a1 + 30);
  swift_beginAccess();
  if (v11 != *(a2 + 30))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v12 = *(a1 + 31);
  swift_beginAccess();
  if (v12 != *(a2 + 31))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v13 = *(a1 + 32);
  swift_beginAccess();
  if (v13 != *(a2 + 32))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v14 = *(a1 + 33);
  swift_beginAccess();
  if (v14 != *(a2 + 33))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v15 = *(a1 + 34);
  swift_beginAccess();
  if (v15 != *(a2 + 34))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v16 = *(a1 + 35);
  swift_beginAccess();
  if (v16 != *(a2 + 35))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v17 = *(a1 + 36);
  swift_beginAccess();
  if (v17 != *(a2 + 36))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v18 = *(a1 + 37);
  swift_beginAccess();
  if (v18 != *(a2 + 37))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v19 = *(a1 + 38);
  swift_beginAccess();
  if (v19 != *(a2 + 38))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v20 = *(a1 + 39);
  swift_beginAccess();
  if (v20 != *(a2 + 39))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  swift_beginAccess();
  v23 = *(a2 + 48);
  if (!sub_1B8D92198(v21, v22, *(a2 + 40)) || (swift_beginAccess(), v24 = *(a1 + 49), swift_beginAccess(), v24 != *(a2 + 49)))
  {
LABEL_29:
    v26 = 0;
    return v26 & 1;
  }

  swift_beginAccess();
  v25 = *(a1 + 50);
  swift_beginAccess();
  v26 = v25 ^ *(a2 + 50) ^ 1;
  return v26 & 1;
}

uint64_t Searchfoundation_QueryUnderstandingParse.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_QueryUnderstandingParse();
  sub_1B8CD36E0(&qword_1EBAD07F8, type metadata accessor for Searchfoundation_QueryUnderstandingParse);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B953E68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD36E0(&qword_1EBAD0878, type metadata accessor for Searchfoundation_QueryUnderstandingParse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B953E70C(uint64_t a1)
{
  v2 = sub_1B8CD36E0(&qword_1EBAD0858, type metadata accessor for Searchfoundation_QueryUnderstandingParse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B953E77C()
{
  sub_1B8CD36E0(&qword_1EBAD0858, type metadata accessor for Searchfoundation_QueryUnderstandingParse);

  return sub_1B964C5D0();
}

unint64_t sub_1B953E7FC()
{
  result = qword_1EBAD0800;
  if (!qword_1EBAD0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0800);
  }

  return result;
}

unint64_t sub_1B953E854()
{
  result = qword_1EBAD0808;
  if (!qword_1EBAD0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0808);
  }

  return result;
}

unint64_t sub_1B953E8AC()
{
  result = qword_1EBAD0810;
  if (!qword_1EBAD0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0810);
  }

  return result;
}

unint64_t sub_1B953E934()
{
  result = qword_1EBAD0828;
  if (!qword_1EBAD0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0828);
  }

  return result;
}

unint64_t sub_1B953E98C()
{
  result = qword_1EBAD0830;
  if (!qword_1EBAD0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0830);
  }

  return result;
}

unint64_t sub_1B953E9E4()
{
  result = qword_1EBAD0838;
  if (!qword_1EBAD0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0838);
  }

  return result;
}

uint64_t sub_1B953EBD4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B953EC58()
{
  result = qword_1EBAD0880;
  if (!qword_1EBAD0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0880);
  }

  return result;
}

unint64_t sub_1B953ECAC()
{
  result = qword_1EBAD0888;
  if (!qword_1EBAD0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0888);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_77(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse();
}

uint64_t OUTLINED_FUNCTION_9_43()
{

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse();
}

uint64_t OUTLINED_FUNCTION_10_40()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse._StorageClass();
}

uint64_t OUTLINED_FUNCTION_24_28(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse();
}

uint64_t OUTLINED_FUNCTION_26_26(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  return type metadata accessor for Searchfoundation_QueryUnderstandingParse();
}

uint64_t Searchfoundation_ResponseWrapperCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  v3 = a1 + v2[6];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[7];
  type metadata accessor for Searchfoundation_CATModel(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[8];
  type metadata accessor for Searchfoundation_PatternModel(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Searchfoundation_CATModel.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_132_2();
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = xmmword_1B9652FE0;
  v3 = a1 + *(type metadata accessor for Searchfoundation_CATModel(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_ResponseWrapperCardSection.catModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 28));
  sub_1B8DD9078(v9, v10, &qword_1EBACC628, &qword_1B96B99A0);
  v11 = type metadata accessor for Searchfoundation_CATModel(0);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v11);
  if (v14)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = 0;
    *(a1 + 24) = v15;
    *(a1 + 32) = xmmword_1B9652FE0;
    v16 = a1 + *(v11 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v17, v18, v11);
    if (!v14)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC628, &qword_1B96B99A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_87();
    v19 = OUTLINED_FUNCTION_182();
    return sub_1B953F604(v19, v20, v21);
  }

  return result;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.catModel.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v2) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_1_87();
  sub_1B953F604(v0, v1 + v3, v4);
  type metadata accessor for Searchfoundation_CATModel(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Searchfoundation_ResponseWrapperCardSection.catModel.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_CATModel(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0) + 28);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBACC628, &qword_1B96B99A0);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    *(v10 + 2) = xmmword_1B9652FE0;
    v17 = v10 + *(v7 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBACC628, &qword_1B96B99A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_87();
    v20 = OUTLINED_FUNCTION_461();
    sub_1B953F604(v20, v21, v22);
  }

  return sub_1B953F1E8;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.hasCatModel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v4);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 28));
  OUTLINED_FUNCTION_63_4(v6, v7);
  type metadata accessor for Searchfoundation_CATModel(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &qword_1B96B99A0);
  return v12;
}

Swift::Void __swiftcall Searchfoundation_ResponseWrapperCardSection.clearCatModel()()
{
  v1 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBACC628, &qword_1B96B99A0);
  type metadata accessor for Searchfoundation_CATModel(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_ResponseWrapperCardSection.visualCatoutput.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ResponseWrapperCardSection.visualCatoutput.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.patternModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 32));
  sub_1B8DD9078(v9, v10, &qword_1EBAD08D8, &qword_1B96D7C08);
  v11 = type metadata accessor for Searchfoundation_PatternModel(0);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v11);
  if (v14)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = xmmword_1B9652FE0;
    *(a1 + 32) = 0;
    *(a1 + 40) = v15;
    *(a1 + 48) = 0;
    *(a1 + 56) = v15;
    v16 = a1 + *(v11 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v17, v18, v11);
    if (!v14)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD08D8, &qword_1B96D7C08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_59();
    v19 = OUTLINED_FUNCTION_182();
    return sub_1B953F604(v19, v20, v21);
  }

  return result;
}

uint64_t sub_1B953F4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - v14;
  sub_1B953F910(a1, &v17 - v14, a6);
  return a7(v15);
}

uint64_t Searchfoundation_ResponseWrapperCardSection.patternModel.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v2) + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_4_59();
  sub_1B953F604(v0, v1 + v3, v4);
  type metadata accessor for Searchfoundation_PatternModel(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Searchfoundation_PatternModel.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_132_2();
  *(a1 + 16) = xmmword_1B9652FE0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  v3 = a1 + *(type metadata accessor for Searchfoundation_PatternModel(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B953F604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

void (*Searchfoundation_ResponseWrapperCardSection.patternModel.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_PatternModel(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0) + 32);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBAD08D8, &qword_1B96D7C08);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    *(v10 + 1) = xmmword_1B9652FE0;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    v17 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBAD08D8, &qword_1B96D7C08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_59();
    v20 = OUTLINED_FUNCTION_461();
    sub_1B953F604(v20, v21, v22);
  }

  return sub_1B953F7DC;
}

void sub_1B953F804(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = (*a1)[2];
  v14 = **a1;
  if (a2)
  {
    sub_1B953F910((*a1)[4], v10, a5);
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B953F604(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    sub_1B953F96C();
  }

  else
  {
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B953F604(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t sub_1B953F910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

uint64_t sub_1B953F96C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.hasPatternModel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v4);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 32));
  OUTLINED_FUNCTION_63_4(v6, v7);
  type metadata accessor for Searchfoundation_PatternModel(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &qword_1B96D7C08);
  return v12;
}

Swift::Void __swiftcall Searchfoundation_ResponseWrapperCardSection.clearPatternModel()()
{
  v1 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAD08D8, &qword_1B96D7C08);
  type metadata accessor for Searchfoundation_PatternModel(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_ResponseWrapperCardSection.patternModels.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Searchfoundation_ResponseWrapperCardSection.unknownFields.getter()
{
  v0 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0) + 24);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Searchfoundation_ResponseWrapperCardSection.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_ResponseWrapperCardSection.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(v0) + 24);
  return nullsub_1;
}

uint64_t Searchfoundation_CATModel.catIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_CATModel.catIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_CATModel.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_CATModel.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_CATModel.params.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_CATModel.params.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_CATModel.unknownFields.getter()
{
  v0 = *(type metadata accessor for Searchfoundation_CATModel(0) + 28);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Searchfoundation_CATModel.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_CATModel(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_CATModel.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_CATModel(v0) + 28);
  return nullsub_1;
}

uint64_t Searchfoundation_PatternModel.patternParameters.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_PatternModel.patternParameters.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_PatternModel.patternBundleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_PatternModel.patternBundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_PatternModel.patternTemplateDirectory.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_PatternModel.patternTemplateDirectory.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Searchfoundation_PatternModel.unknownFields.getter()
{
  v0 = *(type metadata accessor for Searchfoundation_PatternModel(0) + 32);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Searchfoundation_PatternModel.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_PatternModel(v2) + 32);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_PatternModel.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_PatternModel(v0) + 32);
  return nullsub_1;
}

uint64_t sub_1B954018C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0890);
  __swift_project_value_buffer(v0, qword_1EBAD0890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "catModel";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visualCATOutput";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pattern_model";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "pattern_models";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ResponseWrapperCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B95404A8();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B954055C();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9540610();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95404A8()
{
  v0 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0) + 28);
  type metadata accessor for Searchfoundation_CATModel(0);
  sub_1B9540A74(&qword_1EBACC928, type metadata accessor for Searchfoundation_CATModel);
  return sub_1B964C580();
}

uint64_t sub_1B954055C()
{
  v0 = *(type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0) + 32);
  type metadata accessor for Searchfoundation_PatternModel(0);
  sub_1B9540A74(&qword_1EBAD08E0, type metadata accessor for Searchfoundation_PatternModel);
  return sub_1B964C580();
}

uint64_t sub_1B9540610()
{
  type metadata accessor for Searchfoundation_PatternModel(0);
  sub_1B9540A74(&qword_1EBAD08E0, type metadata accessor for Searchfoundation_PatternModel);
  return sub_1B964C570();
}

uint64_t Searchfoundation_ResponseWrapperCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v47 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_22_3();
  v46 = type metadata accessor for Searchfoundation_PatternModel(v10);
  v11 = OUTLINED_FUNCTION_59_1(v46);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v44 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for Searchfoundation_CATModel(0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v28 = v27 - v26;
  v45 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  sub_1B8DD9078(v3 + v45[7], v21, &qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v29, v30, v31) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACC628, &qword_1B96B99A0);
  }

  else
  {
    sub_1B953F604(v21, v28, type metadata accessor for Searchfoundation_CATModel);
    sub_1B9540A74(&qword_1EBACC928, type metadata accessor for Searchfoundation_CATModel);
    sub_1B964C740();
    result = sub_1B953F96C();
    if (v4)
    {
      return result;
    }
  }

  v33 = sub_1B8D99EA8(*v3, v3[1]);
  v34 = v46;
  if (v33 || (v35 = *v3, v36 = v3[1], result = sub_1B964C6A0(), !v4))
  {
    sub_1B8DD9078(v3 + v45[8], v5, &qword_1EBAD08D8, &qword_1B96D7C08);
    v37 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v37, v38, v34) == 1)
    {
      sub_1B8D9207C(v5, &qword_1EBAD08D8, &qword_1B96D7C08);
    }

    else
    {
      sub_1B953F604(v5, v44, type metadata accessor for Searchfoundation_PatternModel);
      OUTLINED_FUNCTION_8_46();
      sub_1B9540A74(v39, v40);
      OUTLINED_FUNCTION_29_33();
      sub_1B964C740();
      result = sub_1B953F96C();
      if (v4)
      {
        return result;
      }
    }

    if (!*(v3[2] + 16) || (OUTLINED_FUNCTION_8_46(), sub_1B9540A74(v41, v42), OUTLINED_FUNCTION_29_33(), result = sub_1B964C730(), !v4))
    {
      v43 = v3 + v45[6];
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t sub_1B9540A74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Searchfoundation_ResponseWrapperCardSection.== infix(_:_:)(void *a1, void *a2)
{
  v80 = type metadata accessor for Searchfoundation_PatternModel(0);
  v4 = OUTLINED_FUNCTION_59_1(v80);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v76 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08D8, &qword_1B96D7C08);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v75 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD08E8, &unk_1B96D7C10);
  OUTLINED_FUNCTION_59_1(v78);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v75 - v17;
  v18 = type metadata accessor for Searchfoundation_CATModel(0);
  v19 = OUTLINED_FUNCTION_59_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_183(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v75 - v29);
  v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC630, &qword_1B96B99A8) - 8);
  v32 = *(*v31 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v75 - v34;
  v79 = type metadata accessor for Searchfoundation_ResponseWrapperCardSection(0);
  v36 = *(v79 + 28);
  v37 = v31[14];
  v82 = a1;
  OUTLINED_FUNCTION_63_4(a1 + v36, v35);
  OUTLINED_FUNCTION_63_4(a2 + v36, &v35[v37]);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v38, v39, v40);
  if (v53)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v41, v42, v43);
    if (v53)
    {
      sub_1B8D9207C(v35, &qword_1EBACC628, &qword_1B96B99A0);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  sub_1B8DD9078(v35, v30, &qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v50, v51, v52);
  if (v53)
  {
    sub_1B953F96C();
LABEL_15:
    v54 = &qword_1EBACC630;
    v55 = &qword_1B96B99A8;
LABEL_30:
    v62 = v35;
LABEL_31:
    sub_1B8D9207C(v62, v54, v55);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_87();
  sub_1B953F604(&v35[v37], v24, v56);
  v57 = *v30 == *v24 && v30[1] == v24[1];
  if (!v57 && (sub_1B964C9F0() & 1) == 0 || (v30[2] == v24[2] ? (v58 = v30[3] == v24[3]) : (v58 = 0), !v58 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v30[4], v30[5], v24[4], v24[5]) & 1) == 0))
  {
    sub_1B953F96C();
    sub_1B953F96C();
    v54 = &qword_1EBACC628;
    v55 = &qword_1B96B99A0;
    goto LABEL_30;
  }

  v59 = *(v18 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_105();
  sub_1B9540A74(v60, v61);
  LOBYTE(v59) = sub_1B964C850();
  sub_1B953F96C();
  sub_1B953F96C();
  sub_1B8D9207C(v35, &qword_1EBACC628, &qword_1B96B99A0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_6:
  v44 = v82;
  if ((MEMORY[0x1BFADC060](*v82, v82[1], *a2, a2[1]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v45 = v79;
  v46 = *(v79 + 32);
  v47 = *(v78 + 48);
  v48 = v81;
  sub_1B8DD9078(v44 + v46, v81, &qword_1EBAD08D8, &qword_1B96D7C08);
  sub_1B8DD9078(a2 + v46, v48 + v47, &qword_1EBAD08D8, &qword_1B96D7C08);
  v49 = v80;
  OUTLINED_FUNCTION_178(v48, 1, v80);
  if (!v53)
  {
    sub_1B8DD9078(v48, v77, &qword_1EBAD08D8, &qword_1B96D7C08);
    OUTLINED_FUNCTION_178(v48 + v47, 1, v49);
    if (!v65)
    {
      sub_1B953F604(v48 + v47, v76, type metadata accessor for Searchfoundation_PatternModel);
      v66 = OUTLINED_FUNCTION_461();
      v68 = static Searchfoundation_PatternModel.== infix(_:_:)(v66, v67);
      sub_1B953F96C();
      OUTLINED_FUNCTION_182();
      sub_1B953F96C();
      sub_1B8D9207C(v48, &qword_1EBAD08D8, &qword_1B96D7C08);
      if ((v68 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_39;
    }

    sub_1B953F96C();
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_178(v48 + v47, 1, v49);
  if (!v53)
  {
LABEL_37:
    v54 = &qword_1EBAD08E8;
    v55 = &unk_1B96D7C10;
    v62 = v48;
    goto LABEL_31;
  }

  sub_1B8D9207C(v48, &qword_1EBAD08D8, &qword_1B96D7C08);
LABEL_39:
  v69 = v44[2];
  v70 = a2[2];
  sub_1B8D687DC();
  if (v71)
  {
    v72 = *(v45 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_105();
    sub_1B9540A74(v73, v74);
    v63 = sub_1B964C850();
    return v63 & 1;
  }

LABEL_32:
  v63 = 0;
  return v63 & 1;
}

uint64_t sub_1B9541128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9540A74(&qword_1EBAD0948, type metadata accessor for Searchfoundation_ResponseWrapperCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95411A8(uint64_t a1)
{
  v2 = sub_1B9540A74(&qword_1EBACE668, type metadata accessor for Searchfoundation_ResponseWrapperCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9541218()
{
  sub_1B9540A74(&qword_1EBACE668, type metadata accessor for Searchfoundation_ResponseWrapperCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95412B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD08A8);
  __swift_project_value_buffer(v0, qword_1EBAD08A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "catIdentifier";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "params";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CATModel.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C470();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_CATModel.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      v10 = v0[4];
      v11 = v2[5];
      v12 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v12, v13) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
      {
        v14 = v2 + *(type metadata accessor for Searchfoundation_CATModel(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_CATModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v3[4], v3[5], v2[4], v2[5]) & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Searchfoundation_CATModel(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_105();
  sub_1B9540A74(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9541790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9540A74(&qword_1EBAD0940, type metadata accessor for Searchfoundation_CATModel);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9541810(uint64_t a1)
{
  v2 = sub_1B9540A74(&qword_1EBACC928, type metadata accessor for Searchfoundation_CATModel);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9541880()
{
  sub_1B9540A74(&qword_1EBACC928, type metadata accessor for Searchfoundation_CATModel);

  return sub_1B964C5D0();
}

uint64_t sub_1B9541918()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD08C0);
  __swift_project_value_buffer(v0, qword_1EBAD08C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pattern_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pattern_parameters";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pattern_bundle_id";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pattern_template_directory";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PatternModel.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_PatternModel.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = v0[2];
    v8 = v2[3];
    v9 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v9, v10) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      v11 = v2[4];
      v12 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v13 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        v14 = v2[6];
        v15 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v16 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
        {
          v17 = v2 + *(type metadata accessor for Searchfoundation_PatternModel(0) + 32);
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_PatternModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1BFADC060](v3[2], v3[3], v2[2], v2[3]) & 1) == 0)
  {
    return 0;
  }

  v7 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for Searchfoundation_PatternModel(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_105();
  sub_1B9540A74(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9541E34(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B9540A74(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9541F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9540A74(&qword_1EBAD0938, type metadata accessor for Searchfoundation_PatternModel);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9541F94(uint64_t a1)
{
  v2 = sub_1B9540A74(&qword_1EBAD08E0, type metadata accessor for Searchfoundation_PatternModel);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9542004()
{
  sub_1B9540A74(&qword_1EBAD08E0, type metadata accessor for Searchfoundation_PatternModel);

  return sub_1B964C5D0();
}

void sub_1B954240C()
{
  sub_1B9542560(319, &qword_1ED9D3A18, type metadata accessor for Searchfoundation_PatternModel, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9542560(319, &qword_1ED9F96C0, type metadata accessor for Searchfoundation_CATModel, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B9542560(319, &qword_1ED9F2090, type metadata accessor for Searchfoundation_PatternModel, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9542560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B95425EC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t Searchfoundation_ResultPlacement.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9542794@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_ResultPlacement.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95427C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9542DA0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_ResultPlacement.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD0950 = a1;
}

uint64_t sub_1B9542910@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ResultPlacement.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9542938()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0958);
  __swift_project_value_buffer(v0, qword_1EBAD0958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ResultPlacementUnspecified";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ResultPlacementTop";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ResultPlacementBottom";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ResultPlacementTopHit";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ResultPlacement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8778 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0958);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9542C20()
{
  result = qword_1EBAD0970;
  if (!qword_1EBAD0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0970);
  }

  return result;
}

unint64_t sub_1B9542C78()
{
  result = qword_1EBAD0978;
  if (!qword_1EBAD0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0978);
  }

  return result;
}

unint64_t sub_1B9542CD0()
{
  result = qword_1EBAD0980;
  if (!qword_1EBAD0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0980);
  }

  return result;
}

unint64_t sub_1B9542D28()
{
  result = qword_1EBAD0988;
  if (!qword_1EBAD0988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0990, &qword_1B96D81F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0988);
  }

  return result;
}

unint64_t sub_1B9542DA0()
{
  result = qword_1EBAD0998;
  if (!qword_1EBAD0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0998);
  }

  return result;
}

unint64_t Searchfoundation_ResultType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x28;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9542E38@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_ResultType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9542E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9543CB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_ResultType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD09A0 = a1;
}

uint64_t sub_1B9542FB4@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ResultType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9542FDC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD09A8);
  __swift_project_value_buffer(v0, qword_1EBAD09A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1B966F8A0;
  v4 = v86 + v3 + v1[14];
  *(v86 + v3) = 0;
  *v4 = "ResultTypeUnknown";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v86 + v3 + v2 + v1[14];
  *(v86 + v3 + v2) = 1;
  *v8 = "ResultTypeServer";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v86 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ResultTypeLocal";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v86 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ResultTypeCoreSpotlight";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v86 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ResultTypeNSUserActivity";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v86 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ResultTypeSafariTopHit";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v86 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ResultTypeCalculator";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v86 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ResultTypeConversion";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v7();
  v21 = (v86 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ResultTypeDictionaryDefinition";
  *(v22 + 1) = 30;
  v22[16] = 2;
  v7();
  v23 = (v86 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ResultTypeGoogle";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v86 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ResultTypeYahoo";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  v27 = (v86 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ResultTypeBing";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v86 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ResultTypeDuckDuckGo";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v7();
  v31 = (v86 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ResultTypeYandex";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v86 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ResultTypeBaidu";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v86 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ResultTypeProactiveSuggestion";
  *(v36 + 1) = 29;
  v36[16] = 2;
  v7();
  v37 = (v86 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "ResultTypeLocalSuggestion";
  *(v38 + 1) = 25;
  v38[16] = 2;
  v7();
  v39 = (v86 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "ResultTypeServerSuggestion";
  *(v40 + 1) = 26;
  v40[16] = 2;
  v7();
  v41 = (v86 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "ResultTypeQihoo";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v7();
  v43 = (v86 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "ResultTypeSogou";
  *(v44 + 1) = 15;
  v44[16] = 2;
  v7();
  v45 = (v86 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "ResultTypeSiriAction";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v7();
  v47 = (v86 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "ResultTypeSiriSuggestion";
  *(v48 + 1) = 24;
  v48[16] = 2;
  v7();
  v49 = (v86 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "ResultTypeInstalledClip";
  *(v50 + 1) = 23;
  v50[16] = 2;
  v7();
  v51 = (v86 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "ResultTypeUninstalledClip";
  *(v52 + 1) = 25;
  v52[16] = 2;
  v7();
  v53 = (v86 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "ResultTypeWebClip";
  *(v54 + 1) = 17;
  v54[16] = 2;
  v7();
  v55 = (v86 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "ResultTypeEcosia";
  *(v56 + 1) = 16;
  v56[16] = 2;
  v7();
  v57 = (v86 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "ResultTypeServerAlternative";
  *(v58 + 1) = 27;
  v58[16] = 2;
  v7();
  v59 = (v86 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "ResultTypeServerSiriSuggestion";
  *(v60 + 1) = 30;
  v60[16] = 2;
  v7();
  v61 = (v86 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "ResultTypeWebSuggestion";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v86 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "ResultTypeWebAsTypedSuggestion";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v86 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "ResultTypeUserTypedSuggestion";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  v67 = (v86 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "ResultTypeCoreSpotlightSuggestion";
  *(v68 + 1) = 33;
  v68[16] = 2;
  v7();
  v69 = (v86 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "ResultTypeContactsSuggestion";
  *(v70 + 1) = 28;
  v70[16] = 2;
  v7();
  v71 = (v86 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "ResultTypeApplicationSuggestion";
  *(v72 + 1) = 31;
  v72[16] = 2;
  v7();
  v73 = (v86 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "ResultTypeNLPSuggestion";
  *(v74 + 1) = 23;
  v74[16] = 2;
  v7();
  v75 = (v86 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "ResultTypePhotoSuggestion";
  *(v76 + 1) = 25;
  v76[16] = 2;
  v7();
  v77 = (v86 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "ResultTypeContacts";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v86 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "ResultTypePeople";
  *(v80 + 1) = 16;
  v80[16] = 2;
  v7();
  v81 = (v86 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "ResultTypePeopleSuggestion";
  *(v82 + 1) = 26;
  v82[16] = 2;
  v7();
  v83 = (v86 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "ResultTypeTopicSuggestion";
  *(v84 + 1) = 25;
  v84[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ResultType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8780 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD09A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9543B30()
{
  result = qword_1EBAD09C0;
  if (!qword_1EBAD09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD09C0);
  }

  return result;
}

unint64_t sub_1B9543B88()
{
  result = qword_1EBAD09C8;
  if (!qword_1EBAD09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD09C8);
  }

  return result;
}

unint64_t sub_1B9543BE0()
{
  result = qword_1EBAD09D0;
  if (!qword_1EBAD09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD09D0);
  }

  return result;
}

unint64_t sub_1B9543C38()
{
  result = qword_1EBAD09D8;
  if (!qword_1EBAD09D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD09E0, &qword_1B96D8398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD09D8);
  }

  return result;
}

unint64_t sub_1B9543CB0()
{
  result = qword_1EBAD09E8;
  if (!qword_1EBAD09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD09E8);
  }

  return result;
}

unint64_t Searchfoundation_RFHorizontalAlignment.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9543D48@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFHorizontalAlignment.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9543D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9544358();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFHorizontalAlignment.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD09F0 = a1;
}

uint64_t sub_1B9543EC4@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFHorizontalAlignment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9543EEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD09F8);
  __swift_project_value_buffer(v0, qword_1EBAD09F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_HORIZONTAL_ALIGNMENT_UNSPECIFIED";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_HORIZONTAL_ALIGNMENT_LEADING";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_HORIZONTAL_ALIGNMENT_CENTER";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_HORIZONTAL_ALIGNMENT_TRAILING";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFHorizontalAlignment._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8788 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD09F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B95441D8()
{
  result = qword_1EBAD0A10;
  if (!qword_1EBAD0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0A10);
  }

  return result;
}

unint64_t sub_1B9544230()
{
  result = qword_1EBAD0A18;
  if (!qword_1EBAD0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0A18);
  }

  return result;
}

unint64_t sub_1B9544288()
{
  result = qword_1EBAD0A20;
  if (!qword_1EBAD0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0A20);
  }

  return result;
}

unint64_t sub_1B95442E0()
{
  result = qword_1EBAD0A28;
  if (!qword_1EBAD0A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0A30, &qword_1B96D85B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0A28);
  }

  return result;
}

unint64_t sub_1B9544358()
{
  result = qword_1EBAD0A38;
  if (!qword_1EBAD0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0A38);
  }

  return result;
}

unint64_t Searchfoundation_RFColorName.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x12;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B95443F0@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFColorName.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9544424(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9548680();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFColorName.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD0A40 = a1;
}

uint64_t (*static Searchfoundation_RFColorName.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9544568@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFColorName.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95445C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Searchfoundation_RFColor.rgbValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_9();
  v9 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_178(v1, 1, v9);
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAD0A90, &qword_1B96D8670);
LABEL_6:
    *a1 = 0;
    *(a1 + 8) = 0;
    v12 = a1 + *(type metadata accessor for Searchfoundation_RFRGBValue(0) + 28);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B9544B24();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_2_73();
  OUTLINED_FUNCTION_288();
  return sub_1B954518C();
}

uint64_t Searchfoundation_RFColor.rgbValue.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAD0A90, &qword_1B96D8670);
  OUTLINED_FUNCTION_2_73();
  OUTLINED_FUNCTION_432();
  sub_1B954518C();
  v1 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t Searchfoundation_RFRGBValue.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Searchfoundation_RFRGBValue(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Searchfoundation_RFColor.rgbValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFRGBValue(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[3] = v10;
  sub_1B8D92024();
  v11 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  v3[4] = v11;
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v11);
  if (v14)
  {
    sub_1B8D9207C(v6, &qword_1EBAD0A90, &qword_1B96D8670);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_2_73();
      sub_1B954518C();
      return sub_1B95449EC;
    }

    sub_1B9544B24();
  }

  *v10 = 0;
  v10[2] = 0;
  v16 = v10 + *(v7 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  return sub_1B95449EC;
}