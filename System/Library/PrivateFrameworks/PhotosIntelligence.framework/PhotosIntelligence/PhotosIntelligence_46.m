void QueryToken.groundedLocations()()
{
  OUTLINED_FUNCTION_134();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_31();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_26_38();
  while (1)
  {
    if (v2 == v1)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_573();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_15_1();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {

LABEL_7:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    ++v1;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v0, v7);
  }

  __break(1u);
}

void QueryToken.publicEvent()()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14_0();
  v4 = v3 - v2;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v6 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_100_10();
  sub_1C754F14C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = 0;
  v12 = *(v0 + 16);
  while (1)
  {
    if (v12 == v11)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_573();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v15 = OUTLINED_FUNCTION_90();
      sub_1C6FD7FC8(v15, v16);
      OUTLINED_FUNCTION_35();
      sub_1C7091CBC();
LABEL_7:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    ++v11;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v4, v14);
  }

  __break(1u);
}

Swift::Void __swiftcall QueryToken.addDisambiguationSuggestionDataSource(with:)(PhotosIntelligence::QueryDisambiguationSuggestionDataSource with)
{
  v2 = *with.events._rawValue;
  sub_1C75504FC();

  *(v1 + 112) = v2;
}

void QueryToken.groundedGenericLocation()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v7 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_100_10();
  v8 = type metadata accessor for GroundedGenericLocation();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = 0;
  v13 = *(v1 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      goto LABEL_7;
    }

    if (v12 >= *(v1 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_55();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C6FD7FC8(v0, &qword_1EC2189C8);
      OUTLINED_FUNCTION_41_31();
      sub_1C72DD0B8();
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
LABEL_7:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    ++v12;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v5, v14);
  }

  __break(1u);
}

uint64_t QueryToken.shortDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  memcpy(v15, (v0 + 33), sizeof(v15));
  v14 = *(v0 + 104);
  v16 = v14;
  sub_1C72D36F8();
  v4 = 0xEE0073756F756769;
  v5 = 0x626D41796C6C7566;
  v6 = 0xE700000000000000;
  v7 = 0x6E776F6E6B6E75;
  if (v3 == 1)
  {
    v7 = 0xD000000000000012;
    v6 = 0x80000001C75A9F20;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x6769626D41746F6ELL;
  }

  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xEC00000073756F75;
  }

  sub_1C755180C();
  v10 = OUTLINED_FUNCTION_55();
  MEMORY[0x1CCA5CD70](v10);
  MEMORY[0x1CCA5CD70](2564140, 0xE300000000000000);
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](2108455, 0xE300000000000000);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  MEMORY[0x1CCA5CD70](v8, v9);

  MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
  if (v14)
  {
    v11 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v11);

    v12 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_256();
  }

  MEMORY[0x1CCA5CD70](v12, v9);

  MEMORY[0x1CCA5CD70](0x2973746573736120, 0xE800000000000000);
  return 0;
}

void QueryToken.selectedEventMomentUUIDs()()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v7);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v9 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v10 = *(v0 + 80);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    OUTLINED_FUNCTION_191();
    while (v12 < *(v10 + 16))
    {
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      OUTLINED_FUNCTION_4_76();
      sub_1C72DD0B8();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0);
        OUTLINED_FUNCTION_24_32();
        sub_1C72DD0B8();
        sub_1C6FD7FC8(v5, &qword_1EC216320);
        OUTLINED_FUNCTION_103();
        sub_1C72DD0B8();
        if (!swift_getEnumCaseMultiPayload())
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_23_36();
        v14 = v1;
      }

      else
      {
        OUTLINED_FUNCTION_5_68();
        v14 = v5;
      }

      sub_1C72DDC7C(v14, v13);
      if (v11 == ++v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_25_0();
  }
}

void QueryToken.description.getter()
{
  v1 = *v0;
  v51 = v0[1];
  v2 = v0[3];
  v49 = v0[2];
  v3 = *(v0 + 32);
  v75[0] = *(v0 + 33);
  *(v75 + 3) = *(v0 + 9);
  v74 = *(v0 + 56);
  *(v73 + 3) = *(v0 + 15);
  v73[0] = *(v0 + 57);
  v4 = v0[8];
  v5 = v0[9];
  v52 = v0[10];
  v6 = v0[12];
  v44 = v0[13];
  v45 = v0[14];
  v46 = v5;
  v50 = v1;
  v47 = v6;
  v48 = v0[11];
  if (!v6)
  {
    v55 = 0;
    v57 = 0xE000000000000000;
LABEL_18:
    sub_1C755180C();
    v71 = 0;
    v72 = 0xE000000000000000;
    MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75A9F40);
    MEMORY[0x1CCA5CD70](v1, v51);
    MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A9F60);
    MEMORY[0x1CCA5CD70](v49, v2);
    MEMORY[0x1CCA5CD70](0x6F73202020200A2CLL, 0xEE00203A65637275);
    v23 = 0x80000001C7596470;
    if (v3 == 1)
    {
      v24 = 0xD000000000000012;
    }

    else
    {
      v24 = 0xD000000000000013;
    }

    if (v3 != 1)
    {
      v23 = 0x80000001C7596490;
    }

    if (v3)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x6E6E417972657571;
    }

    if (v3)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0xEF6E6F697461746FLL;
    }

    MEMORY[0x1CCA5CD70](v25, v26);

    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A9F80);
    if (v4)
    {
      v59 = v4;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      OUTLINED_FUNCTION_86_10();
    }

    v27 = OUTLINED_FUNCTION_103();
    MEMORY[0x1CCA5CD70](v27);

    MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75A9FA0);
    if (v5)
    {
      v59 = v5;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      OUTLINED_FUNCTION_86_10();
    }

    v28 = OUTLINED_FUNCTION_103();
    MEMORY[0x1CCA5CD70](v28);

    MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C75A9FC0);
    OUTLINED_FUNCTION_83_7();
    OUTLINED_FUNCTION_67_17();
    sub_1C72D36F8();
    v29 = PLDebugStringForAmbiguityType();
    v30 = sub_1C755068C();
    v32 = v31;

    MEMORY[0x1CCA5CD70](v30, v32);

    MEMORY[0x1CCA5CD70](0xD00000000000001FLL, 0x80000001C75A9FE0);
    v59 = v50;
    v60 = v51;
    v61 = v49;
    v62 = v2;
    v63 = v3;
    OUTLINED_FUNCTION_83_7();
    OUTLINED_FUNCTION_67_17();
    v64 = v4;
    v65 = v46;
    v66 = v52;
    v67 = v48;
    v68 = v47;
    v69 = v44;
    v70 = v45;
    sub_1C72D47F8(&v58);
    QueryTokenAmbiguityReason.rawValue.getter();
    v34 = v33;
    MEMORY[0x1CCA5CD70]();

    MEMORY[0x1CCA5CD70](0x6172202020200A2CLL, 0xED0000203A65676ELL);
    if (v74)
    {
      v35 = OUTLINED_FUNCTION_256();
    }

    else
    {
      v35 = sub_1C755142C();
      v34 = v36;
    }

    MEMORY[0x1CCA5CD70](v35, v34);

    MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C75AA000);
    if (v44)
    {
      v59 = 0;
      v60 = 0xE000000000000000;
      v58 = *(v44 + 16);
      v37 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v37);

      v38 = v59;
      v34 = v60;
    }

    else
    {
      v38 = OUTLINED_FUNCTION_256();
    }

    MEMORY[0x1CCA5CD70](v38, v34);

    MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75AA030);
    TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
    v40 = MEMORY[0x1CCA5D090](v52, TokenSuggestion);
    MEMORY[0x1CCA5CD70](v40);

    MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C75AA050);
    v41 = v57;
    MEMORY[0x1CCA5CD70](v55, v57);

    MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C75AA070);
    if (v45)
    {
      v59 = v45;
      DisambiguationSuggestionData = QueryDisambiguationSuggestionDataSource.description.getter();
      v41 = v43;
    }

    else
    {
      DisambiguationSuggestionData = OUTLINED_FUNCTION_256();
    }

    MEMORY[0x1CCA5CD70](DisambiguationSuggestionData, v41);

    MEMORY[0x1CCA5CD70](32010, 0xE200000000000000);
    return;
  }

  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_17:
    v59 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    v55 = sub_1C75505FC();
    v57 = v22;

    goto LABEL_18;
  }

  v71 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C();
  v8 = v71;
  v10 = sub_1C70D4544(v6);
  v11 = v6 + 64;
  v12 = v7 - 1;
  v53 = v6 + 64;
  if ((v10 & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(v6 + 32))
    {
      if ((*(v11 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_44;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_45;
      }

      v54 = v12;
      v56 = v9;
      v13 = (*(v6 + 48) + 16 * v10);
      v14 = v13[1];
      v15 = *(*(v6 + 56) + 8 * v10);
      v59 = *v13;
      v60 = v14;
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v58 = *(v15 + 16);
      v16 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v16);

      MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);

      v17 = v59;
      v71 = v8;
      v18 = v6;
      v19 = *(v8 + 16);
      if (v19 >= *(v8 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v8 = v71;
      }

      *(v8 + 16) = v19 + 1;
      v20 = v8 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v14;
      if (v10 >= -(-1 << *(v18 + 32)))
      {
        goto LABEL_46;
      }

      v11 = v53;
      if ((*(v53 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_47;
      }

      v6 = v18;
      if (v56 != *(v18 + 36))
      {
        goto LABEL_48;
      }

      v21 = sub_1C755162C();
      if (!v54)
      {
        v1 = v50;
        v5 = v46;
        goto LABEL_17;
      }

      v10 = v21;
      v9 = *(v18 + 36);
      v12 = v54 - 1;
      if (v21 < 0)
      {
        break;
      }
    }
  }

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
}

PhotosIntelligence::QueryTokenAmbiguityReason_optional __swiftcall QueryTokenAmbiguityReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551DFC();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void QueryTokenAmbiguityReason.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
      OUTLINED_FUNCTION_87_15();
      break;
    case 2:
    case 7:
      OUTLINED_FUNCTION_10_2();
      break;
    default:
      return;
  }
}

void sub_1C72D2D88(void *a1@<X8>)
{
  QueryTokenAmbiguityReason.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

PhotosIntelligence::QueryTokenDataSourceType_optional __swiftcall QueryTokenDataSourceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t QueryTokenDataSourceType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6E417972657571;
  }
}

uint64_t sub_1C72D2F34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C75AA0A0 == a2;
  if (v3 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_84_10() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v8 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0x6D614E7361696C61 && a2 == 0xEA00000000007365;
        if (v9 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
          if (v10 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == OUTLINED_FUNCTION_88_11() && a2 == v11;
            if (v12 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == 0xD000000000000015 && 0x80000001C75AA0C0 == a2;
              if (v13 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = a1 == 0xD00000000000001FLL && 0x80000001C75AA0E0 == a2;
                if (v14 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = a1 == 0xD000000000000010 && 0x80000001C75AA100 == a2;
                  if (v15 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000022 && 0x80000001C75AA120 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v17 = OUTLINED_FUNCTION_6_2();

                    if (v17)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

void sub_1C72D31A0()
{
  OUTLINED_FUNCTION_84_10();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 9:
      return;
    case 5:
      OUTLINED_FUNCTION_88_11();
      break;
    default:
      OUTLINED_FUNCTION_10_2();
      break;
  }
}

uint64_t sub_1C72D32E8@<X0>(uint64_t *a1@<X8>)
{
  result = QueryTokenDataSourceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C72D33D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C72D2F34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72D3408(uint64_t a1)
{
  v2 = sub_1C72DD110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72D3444(uint64_t a1)
{
  v2 = sub_1C72DD110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryToken.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t QueryToken.localizedText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t QueryToken.range.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

uint64_t QueryToken.aliasNames.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t QueryToken.debugAliasNames.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t QueryToken.suggestions.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

void sub_1C72D36F8()
{
  OUTLINED_FUNCTION_33();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328);
  OUTLINED_FUNCTION_76(v9);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_119(v11);
  v152 = sub_1C754F14C();
  OUTLINED_FUNCTION_3_0();
  v146 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v16 = OUTLINED_FUNCTION_119(v15 - v14);
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(v16);
  OUTLINED_FUNCTION_3_0();
  v157 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_140_1();
  v23 = OUTLINED_FUNCTION_119(v22);
  v149 = type metadata accessor for PersonalEventBackingItem(v23);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_140_1();
  v27 = OUTLINED_FUNCTION_119(v26);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v27);
  v29 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v31 = v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_76_14();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v139 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v40);
  v41 = v0[1];
  v168 = *v0;
  v169 = v41;
  v42 = *(v0 + 32);
  v43 = *(v0 + 49);
  v166 = *(v0 + 33);
  *v167 = v43;
  *&v167[15] = v0[4];
  v44 = *(v0 + 10);
  v165 = *(v0 + 88);
  v45 = *(v0 + 13);
  v46 = *(v0 + 14);
  if (v42 == 1)
  {
LABEL_21:
  }

  else
  {
    OUTLINED_FUNCTION_72_16();
    v47 = sub_1C7551DBC();

    if ((v47 & 1) == 0)
    {
      v140 = v46;
      v141 = v45;
      v48 = 0;
      v49 = *(v44 + 16);
      v50 = qword_1EDD0E0A8;
      while (v49 != v48)
      {
        if (v48 >= *(v44 + 16))
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:

LABEL_84:
          sub_1C706D154(v50);

          goto LABEL_3;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E0A0 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        if (v51)
        {
          sub_1C72DD0B8();
          v57 = v143;
          OUTLINED_FUNCTION_35();
          sub_1C72DD0B8();
          v58 = sub_1C754E5EC();
          v161 = v58;
          OUTLINED_FUNCTION_42_28();
          v162 = sub_1C72DE07C(v59);
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v159);
          (*(*(v58 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E69BDD48], v58);
          LOBYTE(v58) = sub_1C754E3AC();
          __swift_destroy_boxed_opaque_existential_1(v159);
          if (v58)
          {
            v61 = v153;
            sub_1C72DD0B8();
            if (swift_getEnumCaseMultiPayload() == 9)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0);
              OUTLINED_FUNCTION_24_32();
              sub_1C72DD0B8();
              sub_1C6FD7FC8(v61, &qword_1EC216320);
              v62 = v150;
              sub_1C72DD0B8();
              switch(swift_getEnumCaseMultiPayload())
              {
                case 1u:
                  sub_1C754DABC();
                  OUTLINED_FUNCTION_12();
                  (*(v111 + 8))(v62);
                  break;
                case 2u:
                  v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298) + 48);
                  v113 = sub_1C754DABC();
                  OUTLINED_FUNCTION_12();
                  v115 = *(v114 + 8);
                  v115(v62 + v112, v113);
                  v115(v62, v113);
                  break;
                case 3u:
                  goto LABEL_3;
                default:
                  goto LABEL_21;
              }
            }

            else
            {
              sub_1C72DDC7C(v61, type metadata accessor for QueryTokenCategoryType);
            }
          }

          else
          {
            sub_1C72DDC7C(v57, type metadata accessor for QueryTokenSuggestion);
          }

          goto LABEL_3;
        }

        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v38, v52);
        ++v48;
      }

      v53 = 0;
      v50 = qword_1EDD0E0D0;
      while (v49 != v53)
      {
        if (v53 >= *(v44 + 16))
        {
          goto LABEL_80;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E0C8 != -1)
        {
          OUTLINED_FUNCTION_73_16();
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        v55 = v54;
        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v2, v56);
        ++v53;
        if (v55)
        {
          v68 = sub_1C754E5EC();
          v161 = v68;
          OUTLINED_FUNCTION_42_28();
          v162 = sub_1C72DE07C(v69);
          v70 = __swift_allocate_boxed_opaque_existential_0(v159);
          (*(*(v68 - 8) + 104))(v70, *MEMORY[0x1E69BDD48], v68);
          v71 = sub_1C754E3AC();
          __swift_destroy_boxed_opaque_existential_1(v159);
          if (v71)
          {
            OUTLINED_FUNCTION_17_60();
            v163 = *(v72 - 256);
            v164 = v140;
            v73 = v151;
            QueryToken.publicEvent()();
            v74 = OUTLINED_FUNCTION_15_6();
            v75 = v152;
            if (__swift_getEnumTagSinglePayload(v74, v76, v152) == 1)
            {
              sub_1C6FD7FC8(v73, &qword_1EC216328);
            }

            else
            {
              v100 = v146;
              v101 = v145;
              (*(v146 + 32))(v145, v73, v75);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217890);
              v102 = *(v100 + 72);
              v103 = (*(v100 + 80) + 32) & ~*(v100 + 80);
              v104 = swift_allocObject();
              *(v104 + 16) = xmmword_1C75604F0;
              v105 = v104 + v103;
              v106 = *(v100 + 104);
              v106(v105, *MEMORY[0x1E69C17C0], v75);
              v107 = (v106)(v105 + v102, *MEMORY[0x1E69C17B0], v75);
              MEMORY[0x1EEE9AC00](v107);
              *(&v139 - 2) = v101;
              sub_1C70734EC(sub_1C710104C, (&v139 - 4), v104);
              swift_setDeallocating();
              sub_1C6FDC924();
              v108 = OUTLINED_FUNCTION_160();
              v109(v108);
            }
          }

          goto LABEL_3;
        }
      }

      v63 = 0;
      v64 = v154;
      while (v49 != v63)
      {
        if (v63 >= *(v44 + 16))
        {
          __break(1u);
LABEL_83:

          v50 = MEMORY[0x1E69E7CC0];
          goto LABEL_84;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E058 != -1)
        {
          OUTLINED_FUNCTION_73_16();
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        v66 = v65;
        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v1, v67);
        ++v63;
        if (v66)
        {
          OUTLINED_FUNCTION_17_60();
          OUTLINED_FUNCTION_79_12(v82);
          QueryToken.personUUIDs()();

          goto LABEL_3;
        }
      }

      v77 = 0;
      while (1)
      {
        v78 = *(v44 + 16);
        if (v49 == v77)
        {
          break;
        }

        if (v77 >= v78)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E078 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        v80 = v79;
        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v64, v81);
        ++v77;
        if (v80)
        {
          OUTLINED_FUNCTION_17_60();
          OUTLINED_FUNCTION_79_12(v95);
          QueryToken.groundingDateInfo()();
          v96 = v147;
          OUTLINED_FUNCTION_45_7();
          sub_1C7091CBC();
          v97 = v148;
          OUTLINED_FUNCTION_45_7();
          sub_1C7091CBC();
          v98 = sub_1C754DABC();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v96, 1, v98);
          if (EnumTagSinglePayload == 1)
          {
            __swift_getEnumTagSinglePayload(v97, 1, v98);
          }

          sub_1C6FD7FC8(v96, &qword_1EC218C50);
          sub_1C6FD7FC8(v97, &qword_1EC218C50);
          goto LABEL_3;
        }
      }

      v83 = MEMORY[0x1E69E7CC0];
      if (v78)
      {
        v159[0] = MEMORY[0x1E69E7CC0];
        v83 = v159;
        sub_1C716D5F0(0, v78, 0);
        OUTLINED_FUNCTION_74_3();
        OUTLINED_FUNCTION_191();
        v85 = v44 + v84;
        v86 = *(v31 + 72);
        do
        {
          v87 = v156;
          sub_1C72DE0BC();
          OUTLINED_FUNCTION_40_33();
          sub_1C72DE0BC();
          OUTLINED_FUNCTION_2_94();
          sub_1C72DDC7C(v87, v88);
          v159[0] = v159;
          v89 = v160 + 1;
          if (v160 >= v161 >> 1)
          {
            v83 = v159;
            sub_1C716D5F0(v161 > 1, v160 + 1, 1);
            OUTLINED_FUNCTION_74_3();
          }

          v160 = v89;
          OUTLINED_FUNCTION_20_49();
          OUTLINED_FUNCTION_4_76();
          sub_1C72DD0B8();
          v85 += v86;
          --v78;
        }

        while (v78);
      }

      v90 = 0;
      v91 = v83[2];
      v92 = v155;
      while (1)
      {
        if (v91 == v90)
        {

          goto LABEL_64;
        }

        if (v90 >= v83[2])
        {
          goto LABEL_86;
        }

        OUTLINED_FUNCTION_20_49();
        OUTLINED_FUNCTION_40_33();
        sub_1C72DE0BC();
        if (qword_1EDD0E010 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E018);
        static QueryTokenCategoryType.~= infix(_:_:)();
        if (v93)
        {
          break;
        }

        OUTLINED_FUNCTION_5_68();
        sub_1C72DDC7C(v92, v94);
        ++v90;
      }

      OUTLINED_FUNCTION_4_76();
      v110 = v142;
      sub_1C72DD0B8();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_21;
      }

      sub_1C72DDC7C(v110, type metadata accessor for QueryTokenCategoryType);
LABEL_64:
      v116 = 0;
      v117 = v144;
      while (v49 != v116)
      {
        if (v116 >= *(v44 + 16))
        {
          goto LABEL_87;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E038 != -1)
        {
          OUTLINED_FUNCTION_73_16();
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        v119 = v118;
        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v117, v120);
        ++v116;
        if (v119)
        {
          *&v121 = OUTLINED_FUNCTION_38_28().n128_u64[0];
          OUTLINED_FUNCTION_92_12(v121, v122);
          v123 = v141;
          v124 = v140;
          v163 = v141;
          v164 = v140;
          v50 = v159;
          QueryToken.selectedLocationAssetUUIDs()();
          v126 = *(v125 + 16);

          if (v126 || !v123 || !*(v123 + 16))
          {
            break;
          }

          *&v127 = OUTLINED_FUNCTION_38_28().n128_u64[0];
          OUTLINED_FUNCTION_92_12(v127, v128);
          v163 = v123;
          v164 = v124;
          QueryToken.groundedLocations()();
          v130 = v129;
          v131 = *(v129 + 16);
          if (!v131)
          {
            goto LABEL_83;
          }

          v159[0] = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          OUTLINED_FUNCTION_74_3();
          v132 = (v130 + 40);
          do
          {
            v134 = *(v132 - 1);
            v133 = *v132;
            v159[0] = v159;
            v135 = v160;
            v136 = v161;
            v137 = v160 + 1;
            sub_1C75504FC();
            if (v135 >= v136 >> 1)
            {
              v50 = v159;
              sub_1C6F7ED9C();
              OUTLINED_FUNCTION_74_3();
            }

            v160 = v137;
            v138 = &v159[2 * v135];
            v138[4] = v134;
            v138[5] = v133;
            v132 += 8;
            --v131;
          }

          while (v131);
          goto LABEL_81;
        }
      }
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C72D47F8(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for QueryTokenSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v60 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  memcpy(__dst, v1, sizeof(__dst));
  v19 = *(v1 + 80);
  v20 = *(v1 + 88);
  v69[0] = *(v1 + 89);
  *(v69 + 15) = *(v1 + 104);
  if ((sub_1C6FA05D0(v20, 0) & 1) == 0)
  {
    goto LABEL_57;
  }

  memcpy(v65, v1, sizeof(v65));
  v66 = v19;
  v67 = v20;
  *v68 = *(v1 + 89);
  *&v68[15] = *(v1 + 104);
  sub_1C72D36F8();
  if (!v21)
  {
    LOBYTE(v20) = 0;
LABEL_57:
    *a1 = v20;
    return;
  }

  v60 = v5;
  v61 = v20;
  v62 = a1;
  v22 = 0;
  v23 = *(v19 + 16);
  while (1)
  {
    if (v23 == v22)
    {
      v27 = 0;
      while (v23 != v27)
      {
        if (v27 >= *(v19 + 16))
        {
          goto LABEL_59;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E078 != -1)
        {
          swift_once();
        }

        TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E080);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v30 = v29;
        sub_1C72DDC7C(v15, type metadata accessor for QueryTokenSuggestion);
        ++v27;
        if (v30)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v37 = v36 == 2;
          v38 = 3;
LABEL_42:
          if (v37)
          {
            LOBYTE(v20) = v38;
          }

          else
          {
            LOBYTE(v20) = v38 + 1;
          }

          goto LABEL_56;
        }
      }

      v32 = 0;
      while (v23 != v32)
      {
        if (v32 >= *(v19 + 16))
        {
          goto LABEL_60;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E010 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(v33, qword_1EDD0E018);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v35 = v34;
        sub_1C72DDC7C(v12, type metadata accessor for QueryTokenSuggestion);
        ++v32;
        if (v35)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v45 = v44 == 0;
          v46 = 5;
LABEL_53:
          if (v45)
          {
            LOBYTE(v20) = 0;
          }

          else
          {
            LOBYTE(v20) = v46;
          }

          goto LABEL_56;
        }
      }

      v39 = 0;
      v40 = v64;
      while (v23 != v39)
      {
        if (v39 >= *(v19 + 16))
        {
          goto LABEL_61;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E038 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(v41, qword_1EDD0E040);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v43 = v42;
        sub_1C72DDC7C(v40, type metadata accessor for QueryTokenSuggestion);
        ++v39;
        if (v43)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v37 = v52 == 2;
          v38 = 1;
          goto LABEL_42;
        }
      }

      v47 = 0;
      v48 = v63;
      while (v23 != v47)
      {
        if (v47 >= *(v19 + 16))
        {
          goto LABEL_62;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E0A0 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(v49, qword_1EDD0E0A8);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v51 = v50;
        sub_1C72DDC7C(v48, type metadata accessor for QueryTokenSuggestion);
        ++v47;
        if (v51)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v45 = v58 == 0;
          v46 = 11;
          goto LABEL_53;
        }
      }

      v53 = 0;
      v54 = v60;
      while (v23 != v53)
      {
        if (v53 >= *(v19 + 16))
        {
          goto LABEL_63;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E0C8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(v55, qword_1EDD0E0D0);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v57 = v56;
        sub_1C72DDC7C(v54, type metadata accessor for QueryTokenSuggestion);
        ++v53;
        if (v57)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v45 = v59 == 0;
          v46 = 12;
          goto LABEL_53;
        }
      }

      LOBYTE(v20) = 0;
      goto LABEL_56;
    }

    if (v22 >= *(v19 + 16))
    {
      break;
    }

    sub_1C72DE0BC();
    if (qword_1EDD0E058 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for QueryTokenCategoryType(0);
    __swift_project_value_buffer(v24, qword_1EDD0E060);
    static QueryTokenCategoryType.~= infix(_:_:)();
    v26 = v25;
    sub_1C72DDC7C(v18, type metadata accessor for QueryTokenSuggestion);
    ++v22;
    if (v26)
    {
      memcpy(v65, __dst, sizeof(v65));
      v66 = v19;
      v67 = v61;
      *v68 = v69[0];
      *&v68[15] = *(v69 + 15);
      sub_1C72D36F8();
      if (v31 == 2)
      {
        LOBYTE(v20) = 7;
      }

      else
      {
        LOBYTE(v20) = 6;
      }

LABEL_56:
      a1 = v62;
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t sub_1C72D50CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v15 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  result = sub_1C75504FC();
  v10 = 0;
  if (v6)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_1C706D154(v15);
      sub_1C703FD7C();
      v14 = v13;

      *a2 = v14;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v6 &= v6 - 1;
        v12 = sub_1C75504FC();
        result = sub_1C6FD25FC(v12);
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72D51E4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A4E8);
  __swift_project_value_buffer(v0, qword_1EC21A4E8);
  return sub_1C754FEFC();
}

uint64_t QueryToken.init(localizedText:source:aliasNames:range:suggestions:retrievalResults:disambiguationSuggestionDataSource:debugAliasNames:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v18 = *a3;
  v19 = *a11;
  *(a9 + 88) = 0;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 96) = 0;
  sub_1C72D533C();
  *a9 = v20;
  *(a9 + 8) = v21;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v18;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7 & 1;
  *(a9 + 64) = a4;
  *(a9 + 72) = a12;
  *(a9 + 80) = a8;

  *(a9 + 112) = v19;
  sub_1C72D5900(a9, a10);
}

void sub_1C72D533C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A548);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36();
  v53 = v9;
  OUTLINED_FUNCTION_37_3();
  sub_1C755024C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37_3();
  sub_1C755023C();
  OUTLINED_FUNCTION_3_0();
  v54 = v12;
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_140_1();
  v52 = v17;
  v18 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v18);
  v20 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_31();
  v58 = 0x3A74786574;
  v59 = 0xE500000000000000;
  MEMORY[0x1CCA5CD70](v6, v4);
  v23 = 0x3A74786574;
  v24 = 0xE500000000000000;
  v25 = *(v2 + 16);
  if (v25)
  {
    OUTLINED_FUNCTION_191();
    v27 = v2 + v26;
    v28 = *(v22 + 72);
    do
    {
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      strcpy(&v57, "|suggestion:");
      BYTE13(v57) = 0;
      HIWORD(v57) = -5120;
      sub_1C755180C();

      strcpy(&v56, "categoryType: ");
      HIBYTE(v56) = -18;
      QueryTokenCategoryType.description.getter();
      MEMORY[0x1CCA5CD70]();

      MEMORY[0x1CCA5CD70](v56, *(&v56 + 1));

      MEMORY[0x1CCA5CD70](v57, *(&v57 + 1));

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v0, v29);
      v27 += v28;
      --v25;
    }

    while (v25);
    v23 = v58;
    v24 = v59;
  }

  v30 = sub_1C72DC29C(v23, v24);
  v32 = v31;
  sub_1C72DE07C(&unk_1EC21A550);
  sub_1C755022C();
  sub_1C6FEB1B0(v30, v32);
  sub_1C72DCCFC(v30, v32);
  v50 = v32;
  v51 = v30;
  sub_1C6FC1640(v30, v32);
  sub_1C755021C();
  v33 = OUTLINED_FUNCTION_103();
  v34(v33);
  v35 = *(v54 + 16);
  v35(v53, v52, v55);
  v36 = 8;
  *(v53 + *(v7 + 36)) = 8;
  *&v56 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C();
  v37 = v56;
  v35(v15, v53, v55);
  sub_1C72DE07C(&unk_1EC21A558);
  sub_1C75509AC();
  v39 = *(&v57 + 1);
  v38 = v57;
  v40 = MEMORY[0x1E69E7558];
  while (1)
  {
    v41 = *(v38 + 16);
    if (v39 == v41)
    {
LABEL_11:
      sub_1C6FD7FC8(v53, &qword_1EC21A548);

      *&v57 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      sub_1C75505FC();
      sub_1C6FC1640(v51, v50);

      (*(v54 + 8))(v52, v55);
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_25_0();
      return;
    }

    if (v39 >= v41)
    {
      break;
    }

    v42 = *(v38 + v39 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1C755BAB0;
    *(v43 + 56) = MEMORY[0x1E69E7508];
    *(v43 + 64) = v40;
    *(v43 + 32) = v42;
    v44 = sub_1C75506BC();
    v46 = v45;
    *&v56 = v37;
    v48 = *(v37 + 16);
    v47 = *(v37 + 24);
    if (v48 >= v47 >> 1)
    {
      OUTLINED_FUNCTION_15(v47);
      sub_1C6F7ED9C();
      v37 = v56;
    }

    --v36;
    *(v37 + 16) = v48 + 1;
    v49 = v37 + 16 * v48;
    *(v49 + 32) = v44;
    *(v49 + 40) = v46;
    ++v39;
    if (!v36)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C72D5900(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = a2;
  sub_1C75504FC();

  v3 = *(a1 + 96);
  if (v3)
  {
    v6 = *(a1 + 96);
    sub_1C72D50CC(&v6, &v5);
    v3 = v5;
  }

  *(a1 + 104) = v3;
}

uint64_t QueryToken.init(queryAnnotation:substring:source:aliasNames:range:debugAliasNames:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a6;
  v36 = a7;
  v34 = a10;
  v16 = *a4;
  v17 = [a1 suggestion];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v19, &v37 + 7);
    sub_1C72D5B04();
  }

  else
  {
    v21 = [a1 QUToken];
    if (!v21)
    {
      v26 = MEMORY[0x1E69E7CC0];
      goto LABEL_6;
    }

    v18 = v21;
    sub_1C72D5FAC(v21, a2, a3, a5, v22, v23, v24, v25, v33, a10, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  }

  v26 = v20;

LABEL_6:
  sub_1C72D533C();
  v28 = v27;
  v30 = v29;

  LOBYTE(v38) = a8 & 1;

  v32 = v38;
  *a9 = v28;
  *(a9 + 8) = v30;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = v16;
  *(a9 + 40) = v35;
  *(a9 + 48) = v36;
  *(a9 + 56) = v32;
  *(a9 + 64) = a5;
  *(a9 + 72) = v34;
  *(a9 + 80) = v26;
  *(a9 + 88) = 0;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 96) = 0;
  return result;
}

void sub_1C72D5B04()
{
  OUTLINED_FUNCTION_33();
  v81 = v2;
  v82 = v3;
  v80 = v4;
  v6 = v5;
  v83 = v7;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v9 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v80 - v16);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_76_14();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v80 - v22);
  v24 = *v6;
  switch(*v6)
  {
    case 1:
      v55 = sub_1C71CCABC(v83);
      v56 = MEMORY[0x1E69E7CC0];
      if (v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = MEMORY[0x1E69E7CC0];
      }

      *v23 = v57;
      type metadata accessor for QueryTokenCategoryType(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      v58 = OUTLINED_FUNCTION_52_24();
      sub_1C6FB35C8(v58, v59, v60, v56);
      OUTLINED_FUNCTION_55_24();
      if (v38)
      {
        v76 = OUTLINED_FUNCTION_2_0(v61);
        sub_1C6FB35C8(v76, v77, v78, v6);
        v6 = v79;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v23, v62);
      *(v6 + 16) = v56;
      OUTLINED_FUNCTION_20_49();
      OUTLINED_FUNCTION_3_86();
      goto LABEL_23;
    case 3:
      sub_1C72D99D8(v83, v80, v81, v82);
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      v33 = OUTLINED_FUNCTION_52_24();
      sub_1C6FB35C8(v33, v34, v35, v36);
      OUTLINED_FUNCTION_55_24();
      if (v38)
      {
        v63 = OUTLINED_FUNCTION_2_0(v37);
        sub_1C6FB35C8(v63, v64, v65, v6);
        v6 = v66;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v1, v39);
      *(v6 + 16) = v12;
      OUTLINED_FUNCTION_20_49();
      OUTLINED_FUNCTION_3_86();
      goto LABEL_23;
    case 7:
      sub_1C72DA0C8(v83, v17);
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      v40 = OUTLINED_FUNCTION_52_24();
      sub_1C6FB35C8(v40, v41, v42, v43);
      OUTLINED_FUNCTION_55_24();
      if (v38)
      {
        v67 = OUTLINED_FUNCTION_2_0(v44);
        sub_1C6FB35C8(v67, v68, v69, v6);
        v6 = v70;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v17, v45);
      *(v6 + 16) = v12;
      OUTLINED_FUNCTION_20_49();
      OUTLINED_FUNCTION_3_86();
      goto LABEL_23;
    case 0xB:
      sub_1C72DA41C(v83, v0);
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      v46 = OUTLINED_FUNCTION_52_24();
      sub_1C6FB35C8(v46, v47, v48, v49);
      v51 = v50;
      v53 = *(v50 + 16);
      v52 = *(v50 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_15(v52);
        OUTLINED_FUNCTION_90_9();
        sub_1C6FB35C8(v71, v72, v73, v74);
        v51 = v75;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v0, v54);
      *(v51 + 16) = v53 + 1;
      OUTLINED_FUNCTION_20_49();
      OUTLINED_FUNCTION_3_86();
LABEL_23:
      sub_1C72DD0B8();
      break;
    default:
      if (qword_1EC213FF0 != -1)
      {
        OUTLINED_FUNCTION_51_19();
      }

      v25 = sub_1C754FF1C();
      __swift_project_value_buffer(v25, qword_1EC21A4E8);
      v26 = sub_1C754FEEC();
      v27 = sub_1C755119C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v85 = v29;
        *v28 = 136315138;
        v84 = v24;
        TokenCategoryType = QueryTokenCategoryTypeString.rawValue.getter();
        v32 = sub_1C6F765A4(TokenCategoryType, v31, &v85);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_1C6F5C000, v26, v27, "Create QueryTokenSuggestion object for category type %s using PHSearchSuggestion is not supported", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      break;
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C72D5FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328);
  OUTLINED_FUNCTION_76(v24);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2189C8);
  OUTLINED_FUNCTION_76(v27);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_119(v29);
  v466 = type metadata accessor for GroundedGenericLocation();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_108_0(v32 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A538);
  v34 = OUTLINED_FUNCTION_76(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_119(v37);
  v450 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_108_0(v42 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  v44 = OUTLINED_FUNCTION_76(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_14_2();
  v486 = v45;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_140_1();
  v485 = v47;
  v48 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v48);
  OUTLINED_FUNCTION_3_0();
  v488 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_14_2();
  v483 = v51;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_130();
  v482 = v53;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_130();
  v481 = v55;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_130();
  v480 = v57;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_119(v90);
  v493 = sub_1C754E25C();
  OUTLINED_FUNCTION_3_0();
  v92 = v91;
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_14_0();
  v492 = v95 - v94;
  OUTLINED_FUNCTION_37_3();
  v96 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v98 = v97;
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_14_0();
  v102 = v101 - v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A540);
  OUTLINED_FUNCTION_27_0();
  *&v104 = MEMORY[0x1EEE9AC00](v103).n128_u64[0];
  v106 = &v446 - v105;
  v107 = [v23 entityCategoryTypes];
  sub_1C754E29C();

  sub_1C754E27C();
  (*(v98 + 8))(v102, v96);
  v108 = sub_1C72DE07C(&qword_1EDD0CB70);
  v491 = (v92 + 8);
  v465 = v39 + 16;
  v451 = (v39 + 8);
  v494 = MEMORY[0x1E69E7CC0];
  v484 = v23;
  v487 = v39;
  v489 = v96;
  v490 = v106;
  while (2)
  {
    v109 = v492;
    sub_1C755107C();
    sub_1C72DE07C(&qword_1EDD0CB80);
    v110 = v493;
    v111 = sub_1C755063C();
    (*v491)(v109, v110);
    if (v111)
    {
      sub_1C6FD7FC8(v106, &qword_1EC21A540);
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
      v112 = v106;
      v113 = sub_1C75510CC();
      v114 = v108;
      v108 = *v115;
      v113(v496, 0);
      v106 = v114;
      sub_1C755108C();
      if ((v108 & 0x8000000000000000) == 0)
      {
        v116 = [v23 metadataForCategoryType_];
        if (v116)
        {
          v112 = v116;
          v124 = sub_1C7550B5C();
        }

        else
        {
          v124 = MEMORY[0x1E69E7CC0];
        }

        switch(v108)
        {
          case 1uLL:
            if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
            {
              sub_1C71BBE78();
              OUTLINED_FUNCTION_68();
              if (v112)
              {
                v157 = v112;
              }

              else
              {
                v157 = MEMORY[0x1E69E7CC0];
              }

              v158 = *(v157 + 2);
              if (v158 == 2)
              {
                v256 = OUTLINED_FUNCTION_56_22();
                sub_1C6FB632C(v256);
                v257 = sub_1C754DABC();
                OUTLINED_FUNCTION_12();
                v259 = *(v258 + 16);
                v260 = v258 + 16;
                OUTLINED_FUNCTION_191();
                v262 = &v157[v261];
                v259(v485, &v157[v261], v257);
                OUTLINED_FUNCTION_90_9();
                __swift_storeEnumTagSinglePayload(v263, v264, v265, v266);
                sub_1C6FB632C(1);
                v259(v486, &v262[*(v260 + 56)], v257);

                OUTLINED_FUNCTION_90_9();
                goto LABEL_212;
              }

              if (v158 == 1)
              {
                v159 = OUTLINED_FUNCTION_56_22();
                sub_1C6FB632C(v159);
                v160 = sub_1C754DABC();
                OUTLINED_FUNCTION_12();
                (*(v161 + 16))(v485, &v157[(*(v161 + 80) + 32) & ~*(v161 + 80)], v160);

                OUTLINED_FUNCTION_90_9();
                __swift_storeEnumTagSinglePayload(v162, v163, v164, v165);
                OUTLINED_FUNCTION_84();
                v169 = v160;
LABEL_212:
                __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
LABEL_213:
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0);
                sub_1C6FD7F70();
                sub_1C6FD7F70();
                type metadata accessor for QueryTokenCategoryType(0);
                swift_storeEnumTagMultiPayload();
                OUTLINED_FUNCTION_1_101();
                sub_1C72DE0BC();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v338 = OUTLINED_FUNCTION_8_64();
                  sub_1C6FB35C8(v338, v339, v340, v341);
                  v494 = v342;
                }

                v108 = v106;
                OUTLINED_FUNCTION_9_68();
                v106 = v490;
                if (v140)
                {
                  v343 = OUTLINED_FUNCTION_2_0(v267);
                  sub_1C6FB35C8(v343, v344, v345, v494);
                  v494 = v346;
                }

                OUTLINED_FUNCTION_2_94();
                sub_1C72DDC7C(v470, v268);
                sub_1C6FD7FC8(v486, &qword_1EC218C50);
                sub_1C6FD7FC8(v485, &qword_1EC218C50);
                OUTLINED_FUNCTION_0_134();
                goto LABEL_218;
              }
            }

            else
            {
              sub_1C71BBEB4();
              OUTLINED_FUNCTION_68();
              if (v112)
              {
                v213 = v112;
              }

              else
              {
                v213 = MEMORY[0x1E69E7CC0];
              }

              v214 = *(v213 + 2);
              if (v214 == 2)
              {
                v269 = OUTLINED_FUNCTION_56_22();
                sub_1C6FB632C(v269);
                OUTLINED_FUNCTION_191();
                v271 = &v213[v270];
                v272 = *(v39 + 16);
                v273 = v449;
                v448 = v271;
                v274 = v450;
                v452 = v272;
                (v272)(v449);
                sub_1C703E8A0();
                if (qword_1EC214168 != -1)
                {
                  OUTLINED_FUNCTION_44_26();
                  swift_once();
                }

                v275 = sub_1C754E24C();
                __swift_project_value_buffer(v275, qword_1EC21C0C8);
                sub_1C754E1BC();

                v447 = *(v487 + 8);
                v276 = OUTLINED_FUNCTION_108_9();
                v277(v276);
                v278 = sub_1C754DABC();
                OUTLINED_FUNCTION_25_8();
                __swift_storeEnumTagSinglePayload(v279, v280, v281, v278);
                sub_1C6FB632C(1);
                v452(v273, v448 + *(v487 + 72), v274);

                sub_1C703E8A0();
                sub_1C754E1BC();

                v282 = OUTLINED_FUNCTION_108_9();
                v447(v282);
                v39 = v487;
                OUTLINED_FUNCTION_25_8();
                __swift_storeEnumTagSinglePayload(v283, v284, v285, v278);
                goto LABEL_213;
              }

              v215 = v450;
              if (v214 == 1)
              {
                v216 = OUTLINED_FUNCTION_56_22();
                sub_1C6FB632C(v216);
                OUTLINED_FUNCTION_191();
                v218 = v449;
                (*(v39 + 16))(v449, &v213[v217], v215);

                sub_1C703E8A0();
                if (qword_1EC214168 != -1)
                {
                  OUTLINED_FUNCTION_44_26();
                  swift_once();
                }

                v219 = sub_1C754E24C();
                __swift_project_value_buffer(v219, qword_1EC21C0C8);
                v220 = v485;
                sub_1C754E1BC();

                (*v451)(v218, v215);
                v221 = sub_1C754DABC();
                v222 = v220;
                v223 = 0;
                goto LABEL_198;
              }
            }

            v221 = sub_1C754DABC();
            v222 = v485;
            v223 = 1;
LABEL_198:
            __swift_storeEnumTagSinglePayload(v222, v223, 1, v221);
            OUTLINED_FUNCTION_84();
            v169 = v221;
            goto LABEL_212;
          case 3uLL:
            sub_1C71BBD84(v124, v117, v118, v119, v120, v121, v122, v123, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465);
            OUTLINED_FUNCTION_68();
            v142 = MEMORY[0x1E69E7CC0];
            if (v112)
            {
              v142 = v112;
            }

            *v469 = v142;
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v304 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v304, v305, v306, v307);
              v494 = v308;
            }

            OUTLINED_FUNCTION_9_68();
            v108 = v114;
            if (v140)
            {
              v309 = OUTLINED_FUNCTION_2_0(v143);
              sub_1C6FB35C8(v309, v310, v311, v494);
              v494 = v312;
            }

            v106 = v490;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v469, v144);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 4uLL:
            sub_1C71BC154(v124);
            OUTLINED_FUNCTION_68();
            sub_1C706EC80();
            v179 = sub_1C71CDA68(v178);
            v180 = v471;
            *v471 = v179;
            v180[1] = MEMORY[0x1E69E7CD0];
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v365 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v365, v366, v367, v368);
              v494 = v369;
            }

            OUTLINED_FUNCTION_9_68();
            v108 = v114;
            if (v140)
            {
              v370 = OUTLINED_FUNCTION_2_0(v181);
              sub_1C6FB35C8(v370, v371, v372, v494);
              v494 = v373;
            }

            v106 = v490;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v471, v182);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 5uLL:
            if (!*(v124 + 16))
            {

              OUTLINED_FUNCTION_144_0(&v485);
              OUTLINED_FUNCTION_84();
              __swift_storeEnumTagSinglePayload(v239, v240, v241, v466);
              v108 = v114;
LABEL_189:
              sub_1C6FD7FC8(v124, &qword_1EC2189C8);
              v106 = v490;
              continue;
            }

            sub_1C6F774EC(v124 + 32, v496);

            OUTLINED_FUNCTION_144_0(&v485);
            v193 = v466;
            swift_dynamicCast();
            OUTLINED_FUNCTION_90_9();
            __swift_storeEnumTagSinglePayload(v194, v195, v196, v197);
            v198 = OUTLINED_FUNCTION_15_6();
            v108 = v114;
            if (__swift_getEnumTagSinglePayload(v198, v199, v193) == 1)
            {
              goto LABEL_189;
            }

            OUTLINED_FUNCTION_41_31();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DD0B8();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DE0BC();
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v106 = v490;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v419 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v419, v420, v421, v422);
              v494 = v423;
            }

            OUTLINED_FUNCTION_9_68();
            if (v140)
            {
              v424 = OUTLINED_FUNCTION_2_0(v201);
              sub_1C6FB35C8(v424, v425, v426, v494);
              v494 = v427;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v459, v202);
            sub_1C72DDC7C(v461, type metadata accessor for GroundedGenericLocation);
            OUTLINED_FUNCTION_0_134();
LABEL_218:
            sub_1C72DD0B8();
            continue;
          case 6uLL:

            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_144_0(&v495);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v347 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v347, v348, v349, v350);
              v494 = v351;
            }

            OUTLINED_FUNCTION_9_68();
            v108 = v114;
            if (v140)
            {
              v352 = OUTLINED_FUNCTION_2_0(v170);
              sub_1C6FB35C8(v352, v353, v354, v494);
              v494 = v355;
            }

            v106 = v490;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v472, v171);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 7uLL:
            if (*(v124 + 16))
            {
              sub_1C6F774EC(v124 + 32, v496);

              if (swift_dynamicCast())
              {
                sub_1C75506FC();
                v210 = v209;

                if (v210)
                {
                  sub_1C754F11C();

                  goto LABEL_192;
                }
              }
            }

            else
            {
            }

            sub_1C754F14C();
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v242, v243, v244, v245);
LABEL_192:
            OUTLINED_FUNCTION_63_17();
            sub_1C7091CBC();
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            v108 = v114;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v392 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v392, v393, v394, v395);
              v494 = v396;
            }

            v106 = v490;
            OUTLINED_FUNCTION_9_68();
            if (v140)
            {
              v397 = OUTLINED_FUNCTION_2_0(v246);
              sub_1C6FB35C8(v397, v398, v399, v494);
              v494 = v400;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v473, v247);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 8uLL:
            sub_1C71BC2A4();
            OUTLINED_FUNCTION_68();
            v147 = MEMORY[0x1E69E7CC0];
            if (v112)
            {
              v148 = v112;
            }

            else
            {
              v148 = MEMORY[0x1E69E7CC0];
            }

            if (sub_1C6FB6304())
            {
              sub_1C6FB6330(0, (v148 & 0xC000000000000001) == 0, v148);
              if ((v148 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1CCA5DDD0](0, v148);
              }

              else
              {
                v149 = v148[4];
              }

              OUTLINED_FUNCTION_68();
              v150 = (v148 & 0xC000000000000001);
              sub_1C72DCFB8(v150);
              if (v151)
              {
                sub_1C75506FC();
                v153 = v152;
              }

              else
              {
                v153 = 0;
              }

              v251 = [v150 momentUUIDs];
              v147 = sub_1C7550B5C();
            }

            else
            {

              v153 = 0;
              v150 = 0;
            }

            v252 = sub_1C706D154(v147);
            static QueryToken.personalEventSuggestion(from:momentUUIDs:)(v153, v252, v474);

            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v322 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v322, v323, v324, v325);
              v494 = v326;
            }

            v39 = v487;
            v108 = v114;
            v254 = *(v494 + 16);
            v253 = *(v494 + 24);
            v106 = v490;
            if (v254 >= v253 >> 1)
            {
              v327 = OUTLINED_FUNCTION_15(v253);
              sub_1C6FB35C8(v327, v254 + 1, 1, v494);
              v494 = v328;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v474, v255);
            *(v494 + 16) = v254 + 1;
            OUTLINED_FUNCTION_6_75();
            OUTLINED_FUNCTION_3_86();
            goto LABEL_218;
          case 9uLL:

            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_144_0(&a9);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v383 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v383, v384, v385, v386);
              v494 = v387;
            }

            OUTLINED_FUNCTION_9_68();
            v108 = v114;
            if (v140)
            {
              v388 = OUTLINED_FUNCTION_2_0(v207);
              sub_1C6FB35C8(v388, v389, v390, v494);
              v494 = v391;
            }

            v106 = v490;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v475, v208);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xAuLL:

            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_144_0(&a11);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v295 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v295, v296, v297, v298);
              v494 = v299;
            }

            OUTLINED_FUNCTION_9_68();
            v108 = v114;
            if (v140)
            {
              v300 = OUTLINED_FUNCTION_2_0(v139);
              sub_1C6FB35C8(v300, v301, v302, v494);
              v494 = v303;
            }

            v106 = v490;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v476, v141);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xBuLL:

            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_144_0(&a13);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v313 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v313, v314, v315, v316);
              v494 = v317;
            }

            OUTLINED_FUNCTION_9_68();
            v108 = v114;
            if (v140)
            {
              v318 = OUTLINED_FUNCTION_2_0(v145);
              sub_1C6FB35C8(v318, v319, v320, v494);
              v494 = v321;
            }

            v106 = v490;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v477, v146);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xCuLL:
            sub_1C71BBD84(v124, v117, v118, v119, v120, v121, v122, v123, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465);
            OUTLINED_FUNCTION_68();
            v183 = MEMORY[0x1E69E7CC0];
            if (v112)
            {
              v184 = v112;
            }

            else
            {
              v184 = MEMORY[0x1E69E7CC0];
            }

            v185 = v184[2];
            if (v185)
            {
              v496[0] = MEMORY[0x1E69E7CC0];
              sub_1C716E7B4();
              v183 = v496[0];
              v186 = (v184 + 5);
              do
              {
                sub_1C75504FC();
                v187 = sub_1C755065C();
                v188 = PHMemoryMoodForString();

                v496[0] = v183;
                v190 = *(v183 + 16);
                v189 = *(v183 + 24);
                if (v190 >= v189 >> 1)
                {
                  OUTLINED_FUNCTION_15(v189);
                  OUTLINED_FUNCTION_321();
                  sub_1C716E7B4();
                  v183 = v496[0];
                }

                *(v183 + 16) = v190 + 1;
                *(v183 + 8 * v190 + 32) = v188;
                v186 += 16;
                --v185;
              }

              while (v185);
            }

            *v478 = v183;
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            v108 = v106;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v374 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v374, v375, v376, v377);
              v494 = v378;
            }

            v23 = v484;
            v39 = v487;
            v106 = v490;
            OUTLINED_FUNCTION_9_68();
            if (v140)
            {
              v379 = OUTLINED_FUNCTION_2_0(v191);
              sub_1C6FB35C8(v379, v380, v381, v494);
              v494 = v382;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v478, v192);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xDuLL:
            if (*(v124 + 16))
            {
              sub_1C6F774EC(v124 + 32, v496);

              swift_dynamicCast();
            }

            else
            {
            }

            v108 = v114;
            sub_1C755065C();
            OUTLINED_FUNCTION_68();
            v235 = PHMemoryCurationLengthForString();

            *v479 = v235;
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            v236 = swift_isUniquelyReferenced_nonNull_native();
            v106 = v490;
            if ((v236 & 1) == 0)
            {
              v286 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v286, v287, v288, v289);
              v494 = v290;
            }

            OUTLINED_FUNCTION_9_68();
            if (v140)
            {
              v291 = OUTLINED_FUNCTION_2_0(v237);
              sub_1C6FB35C8(v291, v292, v293, v494);
              v494 = v294;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v479, v238);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0xEuLL:
            sub_1C71BBD84(v124, v117, v118, v119, v120, v121, v122, v123, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465);
            OUTLINED_FUNCTION_68();
            v154 = MEMORY[0x1E69E7CC0];
            if (v112)
            {
              v154 = v112;
            }

            *v480 = v154;
            type metadata accessor for QueryTokenCategoryType(0);
            OUTLINED_FUNCTION_63_2();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v329 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v329, v330, v331, v332);
              v494 = v333;
            }

            OUTLINED_FUNCTION_9_68();
            v108 = v114;
            if (v140)
            {
              v334 = OUTLINED_FUNCTION_2_0(v155);
              sub_1C6FB35C8(v334, v335, v336, v494);
              v494 = v337;
            }

            v106 = v490;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v480, v156);
            OUTLINED_FUNCTION_0_134();
            sub_1C72DD0B8();
            continue;
          case 0xFuLL:
            sub_1C71BBD84(v124, v117, v118, v119, v120, v121, v122, v123, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465);
            OUTLINED_FUNCTION_68();
            v125 = MEMORY[0x1E69E7CC0];
            if (v112)
            {
              v126 = v112;
            }

            else
            {
              v126 = MEMORY[0x1E69E7CC0];
            }

            v127 = *(v126 + 2);
            if (v127)
            {
              v496[0] = MEMORY[0x1E69E7CC0];
              sub_1C716E88C();
              v108 = v496[0];
              v452 = v126;
              v128 = (v126 + 40);
              do
              {
                v130 = *(v128 - 1);
                v129 = *v128;
                v131 = v130 == 2036490562 && v129 == 0xE400000000000000;
                if (v131 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                {
                  v132 = 1;
                }

                else
                {
                  v135 = v130 == 0x646C696843 && v129 == 0xE500000000000000;
                  if (v135 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                  {
                    v132 = 2;
                  }

                  else
                  {
                    v136 = v130 == 0x644120676E756F59 && v129 == 0xEB00000000746C75;
                    if (v136 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                    {
                      v132 = 3;
                    }

                    else
                    {
                      v137 = v130 == 0x726F696E6553 && v129 == 0xE600000000000000;
                      if (v137 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                      {
                        v132 = 4;
                      }

                      else if (v130 == 0x746C756441 && v129 == 0xE500000000000000)
                      {
                        v132 = 5;
                      }

                      else if (OUTLINED_FUNCTION_6_2())
                      {
                        v132 = 5;
                      }

                      else
                      {
                        v132 = 0;
                      }
                    }
                  }
                }

                v496[0] = v108;
                v134 = *(v108 + 16);
                v133 = *(v108 + 24);
                if (v134 >= v133 >> 1)
                {
                  OUTLINED_FUNCTION_15(v133);
                  sub_1C716E88C();
                  v108 = v496[0];
                }

                *(v108 + 16) = v134 + 1;
                *(v108 + 2 * v134 + 32) = v132;
                v128 += 2;
                --v127;
              }

              while (v127);
            }

            else
            {

              v108 = v125;
            }

            v224 = *(v108 + 16);
            if (v224)
            {
              v225 = (v108 + 32);
              v226 = v125;
              do
              {
                v228 = *v225++;
                v227 = v228;
                if (v228)
                {
                  v229 = swift_isUniquelyReferenced_nonNull_native();
                  v496[0] = v226;
                  if ((v229 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_99();
                    sub_1C716E88C();
                    v226 = v496[0];
                  }

                  v231 = *(v226 + 16);
                  v230 = *(v226 + 24);
                  if (v231 >= v230 >> 1)
                  {
                    OUTLINED_FUNCTION_15(v230);
                    sub_1C716E88C();
                    v226 = v496[0];
                  }

                  *(v226 + 16) = v231 + 1;
                  *(v226 + 2 * v231 + 32) = v227;
                }

                --v224;
              }

              while (v224);
            }

            else
            {
              v226 = v125;
            }

            if (*(v226 + 16))
            {
              *v467 = v226;
              type metadata accessor for QueryTokenCategoryType(0);
              OUTLINED_FUNCTION_63();
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_1_101();
              sub_1C72DE0BC();
              v232 = swift_isUniquelyReferenced_nonNull_native();
              v23 = v484;
              v39 = v487;
              v108 = v106;
              if ((v232 & 1) == 0)
              {
                v401 = OUTLINED_FUNCTION_8_64();
                sub_1C6FB35C8(v401, v402, v403, v404);
                v494 = v405;
              }

              v106 = v490;
              OUTLINED_FUNCTION_9_68();
              if (v140)
              {
                v406 = OUTLINED_FUNCTION_2_0(v233);
                sub_1C6FB35C8(v406, v407, v408, v494);
                v494 = v409;
              }

              OUTLINED_FUNCTION_2_94();
              sub_1C72DDC7C(v467, v234);
              OUTLINED_FUNCTION_0_134();
              goto LABEL_218;
            }

            v23 = v484;
            v39 = v487;
LABEL_9:
            OUTLINED_FUNCTION_98_12();
            continue;
          case 0x10uLL:

            type metadata accessor for QueryTokenCategoryType(0);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v356 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v356, v357, v358, v359);
              v494 = v360;
            }

            OUTLINED_FUNCTION_9_68();
            v108 = v114;
            if (v140)
            {
              v361 = OUTLINED_FUNCTION_2_0(v172);
              sub_1C6FB35C8(v361, v362, v363, v494);
              v494 = v364;
            }

            v106 = v490;
            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v482, v173);
            OUTLINED_FUNCTION_0_134();
            sub_1C72DD0B8();
            continue;
          case 0x12uLL:
            sub_1C71BBD84(v124, v117, v118, v119, v120, v121, v122, v123, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465);
            OUTLINED_FUNCTION_68();
            OUTLINED_FUNCTION_98_12();
            if (!v112)
            {
              continue;
            }

            OUTLINED_FUNCTION_75_11();
            static QueryToken.partOfDaySuggestion(from:)();

            v203 = OUTLINED_FUNCTION_15_6();
            OUTLINED_FUNCTION_111_7(v203, v204);
            if (v131)
            {
              goto LABEL_153;
            }

            OUTLINED_FUNCTION_3_86();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DD0B8();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v428 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v428, v429, v430, v431);
              v494 = v432;
            }

            OUTLINED_FUNCTION_9_68();
            if (v140)
            {
              v433 = OUTLINED_FUNCTION_2_0(v205);
              sub_1C6FB35C8(v433, v434, v435, v494);
              v494 = v436;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v453, v206);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0x13uLL:
            sub_1C71BBD84(v124, v117, v118, v119, v120, v121, v122, v123, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465);
            OUTLINED_FUNCTION_68();
            OUTLINED_FUNCTION_98_12();
            if (!v112)
            {
              continue;
            }

            OUTLINED_FUNCTION_75_11();
            static QueryToken.partOfWeekSuggestion(from:)();

            v211 = OUTLINED_FUNCTION_15_6();
            OUTLINED_FUNCTION_111_7(v211, v212);
            if (v131)
            {
              goto LABEL_153;
            }

            OUTLINED_FUNCTION_3_86();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DD0B8();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            v248 = swift_isUniquelyReferenced_nonNull_native();
            if ((v248 & 1) == 0)
            {
              v437 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v437, v438, v439, v440);
              v494 = v441;
            }

            OUTLINED_FUNCTION_9_68();
            if (v140)
            {
              v442 = OUTLINED_FUNCTION_2_0(v249);
              sub_1C6FB35C8(v442, v443, v444, v494);
              v494 = v445;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v455, v250);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          case 0x14uLL:
            sub_1C71BBD84(v124, v117, v118, v119, v120, v121, v122, v123, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465);
            OUTLINED_FUNCTION_68();
            OUTLINED_FUNCTION_98_12();
            if (!v112)
            {
              continue;
            }

            OUTLINED_FUNCTION_75_11();
            static QueryToken.seasonSuggestion(from:)();

            v174 = OUTLINED_FUNCTION_15_6();
            OUTLINED_FUNCTION_111_7(v174, v175);
            if (v131)
            {
LABEL_153:
              sub_1C6FD7FC8(v124, &qword_1EC21A538);
              continue;
            }

            OUTLINED_FUNCTION_3_86();
            OUTLINED_FUNCTION_63_17();
            sub_1C72DD0B8();
            OUTLINED_FUNCTION_1_101();
            sub_1C72DE0BC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v410 = OUTLINED_FUNCTION_8_64();
              sub_1C6FB35C8(v410, v411, v412, v413);
              v494 = v414;
            }

            OUTLINED_FUNCTION_9_68();
            if (v140)
            {
              v415 = OUTLINED_FUNCTION_2_0(v176);
              sub_1C6FB35C8(v415, v416, v417, v494);
              v494 = v418;
            }

            OUTLINED_FUNCTION_2_94();
            sub_1C72DDC7C(v457, v177);
            OUTLINED_FUNCTION_0_134();
            goto LABEL_218;
          default:

            goto LABEL_9;
        }
      }

      __break(1u);
    }

    break;
  }
}

Swift::Void __swiftcall QueryToken.addRetrievalResults(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v3 = *(v1 + 96);
  if (v3)
  {
    v4 = a1._rawValue + 64;
    OUTLINED_FUNCTION_11();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    sub_1C75504FC();
    sub_1C75504FC();
    v10 = 0;
    v23 = v9;
    v24 = rawValue + 64;
    v25 = rawValue;
    if (v7)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_3:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v11 >= v9)
      {

        v1 = v22;
        *(v22 + 96) = v3;
        v27 = v3;
        goto LABEL_17;
      }

      v7 = *&v4[8 * v11];
      ++v10;
    }

    while (!v7);
    v10 = v11;
LABEL_7:
    while (1)
    {
      v12 = __clz(__rbit64(v7)) | (v10 << 6);
      v13 = (*(rawValue + 6) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(rawValue + 7) + 8 * v12);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v27 = v3;
      sub_1C6F78124(v14, v15);
      if (__OFADD__(*(v3 + 16), (v17 & 1) == 0))
      {
        break;
      }

      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
      v3 = v27;
      if (sub_1C7551A2C())
      {
        sub_1C6F78124(v14, v15);
        if ((v18 & 1) != (v19 & 1))
        {
          goto LABEL_20;
        }
      }

      if (v18)
      {
      }

      else
      {
        v20 = OUTLINED_FUNCTION_15_1();
        sub_1C6FCABE4(v20);
      }

      v4 = v24;
      rawValue = v25;
      v7 &= v7 - 1;
      sub_1C739796C(v16);

      v9 = v23;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    *(v1 + 96) = a1;
    v27 = a1._rawValue;
    sub_1C75504FC();
LABEL_17:
    sub_1C72D50CC(&v27, &v26);
    v21 = v26;

    *(v1 + 104) = v21;
  }
}

Swift::Void __swiftcall QueryToken.resetRetrievalResults()()
{

  *(v0 + 96) = 0;

  *(v0 + 104) = 0;
}

Swift::Void __swiftcall QueryToken.replaceRetrievalResults(with:)(Swift::OpaquePointer with)
{
  v1[12]._rawValue = with._rawValue;
  sub_1C75504FC();

  rawValue = with._rawValue;
  sub_1C72D50CC(&rawValue, &v4);
  v3 = v4;

  v1[13]._rawValue = v3;
}

void QueryToken.disambiguate(withUserSuggestion:categoryType:)()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v7 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  v69 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  LOBYTE(v72) = *v3;
  v70 = v0;
  sub_1C72D5B04();
  v16 = v15;
  v17 = *(v15 + 2);
  if (v17)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1C716E928();
    v18 = v72;
    OUTLINED_FUNCTION_191();
    v67 = v16;
    v68 = v19;
    v20 = v16 + v19;
    v21 = *(v9 + 72);
    do
    {
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      QueryTokenCategoryType.string.getter(&v71);
      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v14, v22);
      v23 = v71;
      v72 = v18;
      v25 = *(v18 + 2);
      v24 = *(v18 + 3);
      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_15(v24);
        OUTLINED_FUNCTION_321();
        sub_1C716E928();
        v18 = v72;
      }

      *(v18 + 2) = v25 + 1;
      *(v18 + v25 + 32) = v23;
      v20 += v21;
      --v17;
    }

    while (v17);
    if (qword_1EC213CA0 != -1)
    {
LABEL_41:
      swift_once();
    }

    v26 = off_1EC216240;
    v27 = v25 + 1;
    v28 = MEMORY[0x1E69E7CC0];
    v29 = 32;
    do
    {
      if (v26[2])
      {
        v30 = sub_1C6FC3264();
        if (v31)
        {
          v32 = *(v26[7] + 8 * v30);
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_99();
            sub_1C6FB45B4();
            v28 = v35;
          }

          v34 = *(v28 + 16);
          v33 = *(v28 + 24);
          if (v34 >= v33 >> 1)
          {
            OUTLINED_FUNCTION_15(v33);
            OUTLINED_FUNCTION_321();
            sub_1C6FB45B4();
            v28 = v36;
          }

          *(v28 + 16) = v34 + 1;
          *(v28 + 8 * v34 + 32) = v32;
        }
      }

      ++v29;
      --v27;
    }

    while (v27);

    v37 = 0;
    v72 = MEMORY[0x1E69E7CC0];
    v25 = *(v28 + 16);
    while (v25 != v37)
    {
      if (v37 >= *(v28 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v38 = v37 + 1;
      v39 = sub_1C75504FC();
      sub_1C6FD3968(v39);
      v37 = v38;
    }

    v40 = 0;
    v41 = v72;
    isa = v70[10].isa;
    v25 = *(isa + 2);
    v43 = isa + v68;
    v44 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v45 = &v43[v21 * v40];
    while (v25 != v40)
    {
      if (v40 >= *(isa + 2))
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      QueryTokenCategoryType.string.getter(&v71);
      if (sub_1C705D134(v71, v41))
      {
        OUTLINED_FUNCTION_3_86();
        sub_1C72DD0B8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v44;
        v66 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = OUTLINED_FUNCTION_99();
          sub_1C716E8D0(v48, v49, v50);
          v44 = v72;
        }

        v52 = *(v44 + 2);
        v51 = *(v44 + 3);
        if (v52 >= v51 >> 1)
        {
          OUTLINED_FUNCTION_15(v51);
          OUTLINED_FUNCTION_321();
          sub_1C716E8D0(v53, v54, v55);
          v44 = v72;
        }

        ++v40;
        *(v44 + 2) = v52 + 1;
        OUTLINED_FUNCTION_3_86();
        sub_1C72DD0B8();
        v43 = v66;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_2_94();
      sub_1C72DDC7C(v1, v46);
      v45 += v21;
      ++v40;
    }

    v72 = v67;
    sub_1C6FD383C();

    v56 = v70;
    v70[10].isa = v72;
    LOBYTE(v56[4].isa) = 1;
    OUTLINED_FUNCTION_25_0();
  }

  else
  {

    if (qword_1EC213FF0 != -1)
    {
      OUTLINED_FUNCTION_51_19();
    }

    v57 = sub_1C754FF1C();
    __swift_project_value_buffer(v57, qword_1EC21A4E8);
    v58 = v5;
    v70 = sub_1C754FEEC();
    v59 = sub_1C755117C();

    if (os_log_type_enabled(v70, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      *(v60 + 4) = v58;
      *v61 = v58;
      v62 = v58;
      _os_log_impl(&dword_1C6F5C000, v70, v59, "No query token suggestions to add with the given user search suggestion = %@", v60, 0xCu);
      sub_1C6FD7FC8(v61, &qword_1EC215190);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t QueryToken.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A500);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_1C72DD110();
  sub_1C7551FFC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    LOBYTE(v30) = 1;
    OUTLINED_FUNCTION_62_17();
    v8 = sub_1C7551BBC();
    v28 = v9;
    sub_1C72DD164();
    OUTLINED_FUNCTION_62_17();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C72DD364(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_19_55();
    sub_1C7551BAC();
    v10 = v30;
    type metadata accessor for _NSRange(0);
    OUTLINED_FUNCTION_46_24();
    sub_1C72DE07C(v11);
    OUTLINED_FUNCTION_19_55();
    sub_1C7551BAC();
    v26 = v31;
    v27 = v30;
    v50 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0);
    LOBYTE(v29[0]) = 5;
    sub_1C72DD3BC(&unk_1EDD06B68);
    OUTLINED_FUNCTION_19_55();
    sub_1C7551C1C();
    v25 = v8;
    v12 = v30;
    LOBYTE(v30) = 0;
    OUTLINED_FUNCTION_62_17();
    v13 = sub_1C7551B6C();
    if (!v14)
    {
      sub_1C72D533C();
    }

    v23 = v13;
    v24 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B0);
    sub_1C72DD1B8();
    OUTLINED_FUNCTION_19_55();
    sub_1C7551BAC();
    v15 = v30;
    LOBYTE(v29[0]) = 9;
    sub_1C72DD2BC();
    OUTLINED_FUNCTION_62_17();
    sub_1C7551BAC();
    v22 = v30;

    if (v30)
    {
      sub_1C75504FC();
      sub_1C72D50CC(&v30, v29);
      v21 = v29[0];
      v16 = OUTLINED_FUNCTION_69_0();
      v17(v16);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_69_0();
      v19(v18);
      v21 = 0;
    }

    v29[0] = v23;
    v29[1] = v24;
    v29[2] = v25;
    v29[3] = v28;
    LOBYTE(v29[4]) = 1;
    *(&v29[4] + 1) = v51[0];
    HIDWORD(v29[4]) = *(v51 + 3);
    v29[5] = v27;
    v29[6] = v26;
    v20 = v50;
    LOBYTE(v29[7]) = v50;
    *(&v29[7] + 1) = *v49;
    HIDWORD(v29[7]) = *&v49[3];
    v29[8] = v10;
    v29[9] = 0;
    v29[10] = v12;
    LOBYTE(v29[11]) = 0;
    *(&v29[11] + 1) = *v48;
    HIDWORD(v29[11]) = *&v48[3];
    v29[12] = v15;
    v29[13] = v21;
    v29[14] = v22;
    memcpy(a2, v29, 0x78uLL);
    sub_1C6FCA6E4(v29, &v30);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = v28;
    v34 = 1;
    *v35 = v51[0];
    *&v35[3] = *(v51 + 3);
    v36 = v27;
    v37 = v26;
    v38 = v20;
    *v39 = *v49;
    *&v39[3] = *&v49[3];
    v40 = v10;
    v41 = 0;
    v42 = v12;
    v43 = 0;
    *v44 = *v48;
    *&v44[3] = *&v48[3];
    v45 = v15;
    v46 = v21;
    v47 = v22;
    return sub_1C6FDD548(&v30);
  }
}

uint64_t QueryToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A508);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v38 = v1[3];
  v39 = v11;
  v37 = *(v1 + 32);
  v59[0] = *(v1 + 33);
  *(v59 + 3) = *(v1 + 9);
  v12 = v1[6];
  v34 = v1[5];
  v33 = v12;
  v35 = *(v1 + 56);
  v58[0] = *(v1 + 57);
  *(v58 + 3) = *(v1 + 15);
  v13 = v1[9];
  v36 = v1[8];
  v29 = v13;
  v14 = v1[11];
  v32 = v1[10];
  v28 = v14;
  v15 = v1[13];
  v30 = v1[12];
  v31 = v15;
  v16 = v1[14];
  v17 = a1[3];
  v18 = a1;
  v19 = v9;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1C72DD110();
  v20 = v10;
  sub_1C755200C();
  LOBYTE(v40) = 0;
  OUTLINED_FUNCTION_55();
  v21 = v60;
  sub_1C7551CCC();
  if (!v21)
  {
    v22 = v37;
    LOBYTE(v40) = 1;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    LOBYTE(v40) = v22;
    v57 = 2;
    sub_1C72DD310();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v40 = v36;
    v57 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C72DD364(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_14_51();
    sub_1C7551CBC();
    v40 = v34;
    v41 = v33;
    LOBYTE(v42) = v35 & 1;
    v57 = 4;
    type metadata accessor for _NSRange(0);
    OUTLINED_FUNCTION_46_24();
    sub_1C72DE07C(v23);
    OUTLINED_FUNCTION_14_51();
    sub_1C7551CBC();
    v40 = v32;
    v57 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0);
    sub_1C72DD3BC(&unk_1EDD06B70);
    OUTLINED_FUNCTION_14_51();
    sub_1C7551D2C();
    v40 = v19;
    v41 = v20;
    v42 = v39;
    v43 = v38;
    v44 = v22;
    *v45 = v59[0];
    *&v45[3] = *(v59 + 3);
    v46 = v34;
    v47 = v33;
    v48 = v35;
    *v49 = v58[0];
    *&v49[3] = *(v58 + 3);
    v50 = v36;
    v51 = v29;
    v52 = v32;
    v53 = v28;
    v24 = v30;
    v54 = v30;
    v55 = v31;
    v56 = v16;
    sub_1C72D36F8();
    v40 = v25;
    v57 = 6;
    type metadata accessor for PHSearchAmbiguityType(0);
    sub_1C72DE07C(&unk_1EDD0CDF0);
    OUTLINED_FUNCTION_14_51();
    sub_1C7551D2C();
    LOBYTE(v40) = 7;
    OUTLINED_FUNCTION_97();
    sub_1C7551D0C();
    v40 = v24;
    v57 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B0);
    sub_1C72DD450();
    OUTLINED_FUNCTION_14_51();
    sub_1C7551CBC();
    v40 = v16;
    v57 = 9;
    sub_1C72DD4FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t QueryToken.hash(into:)()
{
  sub_1C75505AC();
  v0 = OUTLINED_FUNCTION_90();

  return sub_1C7041CDC(v0, v1);
}

void QueryToken.personUUIDs()()
{
  OUTLINED_FUNCTION_134();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_31();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_26_38();
  while (1)
  {
    if (v2 == v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    OUTLINED_FUNCTION_573();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_15_1();
    sub_1C72DD0B8();
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_6;
    }

    ++v1;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v0, v7);
  }

  __break(1u);
}

void QueryToken.groundingDateInfo()()
{
  OUTLINED_FUNCTION_33();
  v40 = v1;
  v41 = v2;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v39 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  v38 = v11;
  v12 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v12);
  v14 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D50);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_76_14();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v19 = *(v0 + 80);
  v21 = *(v20 + 48);
  v22 = sub_1C754DABC();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v37 = v21;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  v29 = 0;
  v30 = *(v19 + 16);
  while (1)
  {
    if (v30 == v29)
    {
      goto LABEL_7;
    }

    if (v29 >= *(v19 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0);
      v32 = v38;
      OUTLINED_FUNCTION_45_7();
      sub_1C7091CBC();
      v33 = v39;
      OUTLINED_FUNCTION_45_7();
      sub_1C7091CBC();
      sub_1C72DD550(v32, v18);
      sub_1C72DD550(v33, &v18[v37]);
LABEL_7:
      OUTLINED_FUNCTION_45_7();
      sub_1C6FD7F70();
      sub_1C7091CBC();
      sub_1C7091CBC();
      OUTLINED_FUNCTION_35();
      sub_1C6FD7FC8(v34, v35);
      OUTLINED_FUNCTION_25_0();
      return;
    }

    ++v29;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v6, v31);
  }

  __break(1u);
}

void QueryToken.selectedLocationAssetUUIDs()()
{
  OUTLINED_FUNCTION_134();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_31();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_26_38();
  while (1)
  {
    if (v2 == v1)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_573();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_15_1();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {

LABEL_7:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    ++v1;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v0, v7);
  }

  __break(1u);
}

uint64_t sub_1C72D99D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C754DF6C();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A538);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v61 - v30;
  *&v33 = MEMORY[0x1EEE9AC00](v32).n128_u64[0];
  v35 = &v61 - v34;
  if (a4)
  {
    v62 = a1;
    v63 = v25;
    static QueryToken.partOfDaySuggestion(from:)();
    TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
    if (__swift_getEnumTagSinglePayload(v35, 1, TokenSuggestion) != 1)
    {
      return sub_1C72DD0B8();
    }

    sub_1C6FD7FC8(v35, &qword_1EC21A538);
    static QueryToken.partOfWeekSuggestion(from:)();
    if (__swift_getEnumTagSinglePayload(v31, 1, TokenSuggestion) != 1)
    {
      return sub_1C72DD0B8();
    }

    sub_1C6FD7FC8(v31, &qword_1EC21A538);
    static QueryToken.seasonSuggestion(from:)();
    if (__swift_getEnumTagSinglePayload(v28, 1, TokenSuggestion) != 1)
    {
      return sub_1C72DD0B8();
    }

    sub_1C6FD7FC8(v28, &qword_1EC21A538);
    a1 = v62;
    v25 = v63;
  }

  v64 = v19;
  v37 = [a1 startDate];
  if (v37)
  {
    v38 = v37;
    sub_1C754DF2C();

    v40 = v69;
    v39 = v70;
    v41 = v66;
    (*(v69 + 32))(v66, v12, v70);
    sub_1C703E8A0();
    v42 = v68;
    if (qword_1EC214168 != -1)
    {
      swift_once();
    }

    v43 = sub_1C754E24C();
    __swift_project_value_buffer(v43, qword_1EC21C0C8);
    sub_1C754E1BC();

    (*(v40 + 8))(v41, v39);
    v44 = sub_1C754DABC();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v44);
  }

  else
  {
    v45 = [a1 startDateComponents];
    v42 = v68;
    v40 = v69;
    if (v45)
    {
      v46 = v45;
      sub_1C754DA0C();

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v39 = v70;
    v49 = sub_1C754DABC();
    __swift_storeEnumTagSinglePayload(v22, v47, 1, v49);
    sub_1C7091CBC();
  }

  v50 = [a1 endDate];
  if (v50)
  {
    v51 = v50;
    v52 = v67;
    sub_1C754DF2C();

    (*(v40 + 32))(v42, v52, v39);
    sub_1C703E8A0();
    if (qword_1EC214168 != -1)
    {
      swift_once();
    }

    v53 = sub_1C754E24C();
    __swift_project_value_buffer(v53, qword_1EC21C0C8);
    v54 = v64;
    sub_1C754E1BC();

    (*(v40 + 8))(v42, v39);
    v55 = sub_1C754DABC();
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
  }

  else
  {
    v56 = [a1 endDateComponents];
    if (v56)
    {
      v57 = v56;
      v58 = v65;
      sub_1C754DA0C();

      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v65;
    }

    v60 = sub_1C754DABC();
    __swift_storeEnumTagSinglePayload(v58, v59, 1, v60);
    sub_1C7091CBC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0);
  sub_1C7091CBC();
  sub_1C7091CBC();
  type metadata accessor for QueryTokenCategoryType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C72DA0C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = sub_1C72DCEF8(a1);
  v4 = &selRef_addingKeyAssetForObject_toAssets_options_;
  v5 = [a1 text];
  v6 = sub_1C755068C();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_1C6FB1814();
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12 >= *(v10 + 24) >> 1)
    {
      sub_1C6FB1814();
      v11 = v40;
    }

    *(v11 + 16) = v12 + 1;
    v13 = v11 + 16 * v12;
    *(v13 + 32) = v6;
    *(v13 + 40) = v8;
    v4 = &selRef_addingKeyAssetForObject_toAssets_options_;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1C72DCF58(a1);
  v42 = a2;
  if (v14)
  {
    v15 = v14;
    result = sub_1C6FB6304();
    if (result)
    {
      v17 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v17; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1CCA5DDD0](i, v15);
        }

        else
        {
          v19 = *(v15 + 8 * i + 32);
        }

        v20 = v19;
        v21 = [v19 v4[15]];
        v22 = sub_1C755068C();
        v24 = v23;

        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          v26 = [v20 v4[15]];
          v27 = sub_1C755068C();
          v29 = v28;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v11 = v32;
          }

          v30 = *(v11 + 16);
          if (v30 >= *(v11 + 24) >> 1)
          {
            sub_1C6FB1814();
            v11 = v33;
          }

          *(v11 + 16) = v30 + 1;
          v31 = v11 + 16 * v30;
          *(v31 + 32) = v27;
          *(v31 + 40) = v29;
          v4 = &selRef_addingKeyAssetForObject_toAssets_options_;
        }

        else
        {
        }
      }
    }
  }

  if (v41)
  {
    v34 = v41;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v35 = sub_1C75505FC();
  v37 = v36;

  sub_1C6FB5E8C();
  sub_1C75504FC();
  v38 = sub_1C755152C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217298);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C755BAB0;
  *(v39 + 32) = v35;
  *(v39 + 40) = v37;
  *(v39 + 48) = v35;
  *(v39 + 56) = v37;
  *(v39 + 64) = v38;
  *(v39 + 72) = 0;
  *(v39 + 80) = 0;
  *(v39 + 88) = 4;
  *v42 = v39;
  v42[1] = v34;
  type metadata accessor for QueryTokenCategoryType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C72DA41C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v99 = sub_1C754DABC();
  v103 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v87 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v87 - v7;
  v107 = type metadata accessor for PersonalEventBackingItem(0);
  MEMORY[0x1EEE9AC00](v107);
  v101 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1C754DF6C();
  v104 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v87 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v87 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v87 - v32;
  *&v35 = MEMORY[0x1EEE9AC00](v34).n128_u64[0];
  v37 = &v87 - v36;
  v38 = a1;
  v39 = [a1 momentUUIDs];
  v40 = sub_1C7550B5C();

  v41 = sub_1C706D154(v40);
  if (!*(v41 + 16))
  {
    v87 = v33;
    v88 = v27;
    v47 = v95;
    v46 = v96;
    v48 = v97;
    v90 = v30;
    v91 = v24;
    v105 = v37;
    v92 = v21;
    v89 = v18;
    v49 = v99;

    v50 = [v38 startDate];
    if (v50)
    {
      v51 = v50;
      sub_1C754DF2C();

      v52 = v104;
      (*(v104 + 32))(v47, v46, v48);
      sub_1C703E8A0();
      v53 = v105;
      if (qword_1EC214168 != -1)
      {
        swift_once();
      }

      v54 = sub_1C754E24C();
      __swift_project_value_buffer(v54, qword_1EC21C0C8);
      sub_1C754E1BC();

      (*(v52 + 8))(v47, v48);
      v55 = v53;
      v56 = v49;
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v49);
    }

    else
    {
      v57 = [v38 startDateComponents];
      if (v57)
      {
        v58 = v57;
        v59 = v87;
        sub_1C754DA0C();

        v60 = 0;
        v56 = v49;
      }

      else
      {
        v60 = 1;
        v56 = v49;
        v59 = v87;
      }

      __swift_storeEnumTagSinglePayload(v59, v60, 1, v56);
      sub_1C7091CBC();
    }

    v61 = v98;
    v62 = [v38 endDate];
    v63 = v100;
    if (v62)
    {
      v64 = v62;
      sub_1C754DF2C();

      v65 = v104;
      v66 = v94;
      (*(v104 + 32))(v94, v61, v48);
      sub_1C703E8A0();
      if (qword_1EC214168 != -1)
      {
        swift_once();
      }

      v67 = sub_1C754E24C();
      __swift_project_value_buffer(v67, qword_1EC21C0C8);
      v68 = v90;
      sub_1C754E1BC();
      v69 = v68;

      (*(v65 + 8))(v66, v48);
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v56);
      v70 = v101;
      v71 = v102;
    }

    else
    {
      v72 = [v38 endDateComponents];
      if (v72)
      {
        v73 = v72;
        v74 = v88;
        sub_1C754DA0C();

        v75 = 0;
        v70 = v101;
        v71 = v102;
      }

      else
      {
        v75 = 1;
        v70 = v101;
        v71 = v102;
        v74 = v88;
      }

      __swift_storeEnumTagSinglePayload(v74, v75, 1, v56);
      v69 = v90;
      sub_1C7091CBC();
    }

    v76 = v103;
    v77 = v91;
    v78 = v92;
    sub_1C6FD7F70();
    if (__swift_getEnumTagSinglePayload(v77, 1, v56) == 1)
    {
      sub_1C6FD7FC8(v69, &qword_1EC218C50);
      v79 = v77;
    }

    else
    {
      v80 = *(v76 + 32);
      v80(v71, v77, v56);
      sub_1C7091CBC();
      if (__swift_getEnumTagSinglePayload(v78, 1, v56) != 1)
      {
        sub_1C6FD7FC8(v105, &qword_1EC218C50);
        v80(v63, v78, v56);
        v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298) + 48);
        v80(v70, v71, v56);
        v80(&v70[v84], v63, v56);
LABEL_29:
        v85 = v106;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0);
        v86 = sub_1C754F24C();
        __swift_storeEnumTagSinglePayload(v85, 1, 1, v86);
        sub_1C72DD0B8();
        type metadata accessor for QueryTokenCategoryType(0);
        return swift_storeEnumTagMultiPayload();
      }

      (*(v76 + 8))(v71, v56);
      v79 = v78;
    }

    sub_1C6FD7FC8(v79, &qword_1EC218C50);
    v81 = v89;
    sub_1C7091CBC();
    if (__swift_getEnumTagSinglePayload(v81, 1, v56) == 1)
    {
      sub_1C6FD7FC8(v81, &qword_1EC218C50);
    }

    else
    {
      v82 = *(v76 + 32);
      v83 = v93;
      v82(v93, v81, v56);
      v82(v70, v83, v56);
    }

    goto LABEL_29;
  }

  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
  v43 = sub_1C754F24C();
  v44 = v106;
  __swift_storeEnumTagSinglePayload(v106, 1, 1, v43);
  *(v44 + v42) = v41;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for QueryTokenCategoryType(0);

  return swift_storeEnumTagMultiPayload();
}

void static QueryToken.partOfDaySuggestion(from:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v49 = v2;
  v46[1] = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v46[0] = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A2D8);
  OUTLINED_FUNCTION_76(v6);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v46 - v8;
  v10 = sub_1C754F65C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v51 = v13 - v12;
  v14 = 0;
  v15 = *(v1 + 16);
  v48 = v16;
  v50 = (v16 + 32);
  v17 = v1 + 40;
  v52 = MEMORY[0x1E69E7CC0];
  for (i = v1 + 40; ; v17 = i)
  {
    v18 = ~v14;
    v19 = v17 + 16 * v14;
    v20 = v15 - v14;
    if (!v20)
    {
      break;
    }

    while (1)
    {
      v21 = v15;
      sub_1C75504FC();
      sub_1C754F63C();

      OUTLINED_FUNCTION_48_22(v9);
      if (!v22)
      {
        break;
      }

      sub_1C6FD7FC8(v9, &qword_1EC21A2D8);
      --v18;
      v19 += 16;
      --v20;
      v15 = v21;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    v23 = *v50;
    (*v50)(v51, v9, v10);
    v24 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = OUTLINED_FUNCTION_99();
      sub_1C6FB4074(v30, v31, v32, v24);
      v24 = v33;
    }

    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v27 >= v26 >> 1)
    {
      v34 = OUTLINED_FUNCTION_2_0(v26);
      sub_1C6FB4074(v34, v35, v36, v24);
      v52 = v37;
    }

    else
    {
      v52 = v24;
    }

    v14 = -v18;
    *(v52 + 16) = v27 + 1;
    OUTLINED_FUNCTION_6_75();
    v23(v28 + v29 * v27);
    v15 = v21;
  }

LABEL_13:
  if (*(v52 + 16))
  {
    *v46[0] = v52;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    type metadata accessor for QueryTokenSuggestion(0);
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  }

  else
  {
    type metadata accessor for QueryTokenSuggestion(0);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  }

  OUTLINED_FUNCTION_25_0();
}

void static QueryToken.partOfWeekSuggestion(from:)()
{
  OUTLINED_FUNCTION_33();
  v41 = v3;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v5 = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_99_11();
  v9 = sub_1C754F09C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  v42 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_60_17(v13);
  v43 = MEMORY[0x1E69E7CC0];
  for (i = v15; ; v15 = i)
  {
    v16 = (v15 + 16 * v2);
    if (v14 == v2)
    {
      break;
    }

    while (1)
    {
      v17 = v14;
      v18 = *(v16 - 1);
      v0 = *v16;
      sub_1C75504FC();
      sub_1C754F07C();

      OUTLINED_FUNCTION_48_22(v1);
      if (!v19)
      {
        break;
      }

      sub_1C6FD7FC8(v1, &qword_1EC21A2D0);
      OUTLINED_FUNCTION_96_9();
    }

    v20 = OUTLINED_FUNCTION_95_13();
    v18(v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = OUTLINED_FUNCTION_8_64();
      sub_1C6FB40B4(v26, v27, v28, v29);
      v43 = v30;
    }

    OUTLINED_FUNCTION_91_11();
    if (v23)
    {
      v31 = OUTLINED_FUNCTION_15(v22);
      sub_1C6FB40B4(v31, v0, 1, v43);
      v43 = v32;
    }

    ++v2;
    *(v43 + 16) = v0;
    OUTLINED_FUNCTION_6_75();
    (v18)(v24 + v25 * v16, v42, v9);
    v14 = v17;
  }

  v33 = OUTLINED_FUNCTION_94_13();
  sub_1C710DB60(v33, v34);

  OUTLINED_FUNCTION_48_22(v0);
  if (v19)
  {
    sub_1C6FD7FC8(v0, &qword_1EC21A2D0);
    v38 = 1;
    v37 = v41;
  }

  else
  {
    v35 = OUTLINED_FUNCTION_71_12();
    v16(v35);
    v36 = OUTLINED_FUNCTION_101_10();
    v16(v36);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_76();
    v37 = v41;
    sub_1C72DD0B8();
    v38 = 0;
  }

  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  __swift_storeEnumTagSinglePayload(v37, v38, 1, TokenSuggestion);
  OUTLINED_FUNCTION_25_0();
}

void static QueryToken.seasonSuggestion(from:)()
{
  OUTLINED_FUNCTION_33();
  v41 = v3;
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v5 = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_99_11();
  v9 = sub_1C754F5FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  v42 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_60_17(v13);
  v43 = MEMORY[0x1E69E7CC0];
  for (i = v15; ; v15 = i)
  {
    v16 = (v15 + 16 * v2);
    if (v14 == v2)
    {
      break;
    }

    while (1)
    {
      v17 = v14;
      v18 = *(v16 - 1);
      v0 = *v16;
      sub_1C75504FC();
      sub_1C754F5DC();

      OUTLINED_FUNCTION_48_22(v1);
      if (!v19)
      {
        break;
      }

      sub_1C6FD7FC8(v1, &qword_1EC21A2C8);
      OUTLINED_FUNCTION_96_9();
    }

    v20 = OUTLINED_FUNCTION_95_13();
    v18(v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = OUTLINED_FUNCTION_8_64();
      sub_1C6FB40F4(v26, v27, v28, v29);
      v43 = v30;
    }

    OUTLINED_FUNCTION_91_11();
    if (v23)
    {
      v31 = OUTLINED_FUNCTION_15(v22);
      sub_1C6FB40F4(v31, v0, 1, v43);
      v43 = v32;
    }

    ++v2;
    *(v43 + 16) = v0;
    OUTLINED_FUNCTION_6_75();
    (v18)(v24 + v25 * v16, v42, v9);
    v14 = v17;
  }

  v33 = OUTLINED_FUNCTION_94_13();
  sub_1C710DB78(v33, v34);

  OUTLINED_FUNCTION_48_22(v0);
  if (v19)
  {
    sub_1C6FD7FC8(v0, &qword_1EC21A2C8);
    v38 = 1;
    v37 = v41;
  }

  else
  {
    v35 = OUTLINED_FUNCTION_71_12();
    v16(v35);
    v36 = OUTLINED_FUNCTION_101_10();
    v16(v36);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_76();
    v37 = v41;
    sub_1C72DD0B8();
    v38 = 0;
  }

  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  __swift_storeEnumTagSinglePayload(v37, v38, 1, TokenSuggestion);
  OUTLINED_FUNCTION_25_0();
}

uint64_t static QueryToken.publicEventSuggestion(from:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v5);
  if (a2)
  {
    sub_1C754F11C();
    sub_1C7091CBC();
  }

  else
  {
    sub_1C754F14C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  sub_1C7091CBC();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_63_2();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static QueryToken.personalEventSuggestion(from:momentUUIDs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v8);
  if (a1)
  {
    OUTLINED_FUNCTION_103();
    sub_1C754F21C();
    sub_1C7091CBC();
  }

  else
  {
    sub_1C754F24C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
  sub_1C7091CBC();
  *(a3 + v13) = a2;
  type metadata accessor for PersonalEventBackingItem(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_63();
  swift_storeEnumTagMultiPayload();
  return sub_1C75504FC();
}

uint64_t QueryToken.hashValue.getter()
{
  v1 = *(v0 + 80);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7041CDC(v3, v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DB994()
{
  v1 = *(v0 + 80);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7041CDC(v3, v1);
  return sub_1C7551FAC();
}

void QueryToken.season()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v7 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_100_10();
  v8 = sub_1C754F5FC();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = 0;
  v13 = *(v1 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      goto LABEL_7;
    }

    if (v12 >= *(v1 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_55();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C6FD7FC8(v0, &qword_1EC21A2C8);
      (*(*(v8 - 8) + 32))(v0, v5, v8);
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
LABEL_7:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    ++v12;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v5, v14);
  }

  __break(1u);
}

void QueryToken.personalEvent()()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_31();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v4 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_100_10();
  sub_1C754F24C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = 0;
  v10 = *(v0 + 16);
  while (1)
  {
    if (v10 == v9)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_573();
    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_15_1();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v13 = OUTLINED_FUNCTION_90();
      sub_1C6FD7FC8(v13, v14);
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
      OUTLINED_FUNCTION_35();
      sub_1C7091CBC();
      OUTLINED_FUNCTION_23_36();
      sub_1C72DDC7C(v1 + v15, v16);
LABEL_7:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    ++v9;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v1, v12);
  }

  __break(1u);
}

void QueryToken.selectedEventDateComponents()()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v63 = v3;
  v4 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v59 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v58 = v8 - v7;
  v9 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for QueryTokenCategoryType(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v61 = type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  v62 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v18 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  OUTLINED_FUNCTION_76(v19);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v23 = *(v0 + 80);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v4);
  v60 = v2;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v4);
  v30 = 0;
  v31 = *(v23 + 16);
  while (1)
  {
    if (v31 == v30)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_573();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0);
      OUTLINED_FUNCTION_24_32();
      sub_1C72DD0B8();
      sub_1C6FD7FC8(v13, &qword_1EC216320);
      v34 = v62;
      sub_1C72DD0B8();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v46 = v60;
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v47, v48);
        OUTLINED_FUNCTION_35();
        sub_1C6FD7FC8(v49, v50);
        v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298) + 48);
        v52 = *(v59 + 32);
        v52(v58, v34, v4);
        v52(v46, v34 + v51, v4);
        v53 = OUTLINED_FUNCTION_55();
        (v52)(v53);
        OUTLINED_FUNCTION_25_8();
        __swift_storeEnumTagSinglePayload(v54, v55, v56, v4);
        v44 = v46;
        v45 = 0;
LABEL_10:
        __swift_storeEnumTagSinglePayload(v44, v45, 1, v4);
      }

      else
      {
        if (EnumCaseMultiPayload == 1)
        {
          v36 = v60;
          OUTLINED_FUNCTION_35();
          sub_1C6FD7FC8(v37, v38);
          OUTLINED_FUNCTION_35();
          sub_1C6FD7FC8(v39, v40);
          (*(v59 + 32))(v22, v34, v4);
          OUTLINED_FUNCTION_25_8();
          __swift_storeEnumTagSinglePayload(v41, v42, v43, v4);
          v44 = v36;
          v45 = 1;
          goto LABEL_10;
        }

        OUTLINED_FUNCTION_23_36();
        sub_1C72DDC7C(v34, v57);
      }

LABEL_12:
      sub_1C7091CBC();
      OUTLINED_FUNCTION_25_0();
      return;
    }

    ++v30;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v13, v33);
  }

  __break(1u);
}

PhotosIntelligence::QuerySortOrder __swiftcall QueryToken.sortOrder()()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = (v5 - v4);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v8 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_26_38();
  while (1)
  {
    if (v2 == v1)
    {
      v12 = 0;
LABEL_8:
      *v0 = v12;
      OUTLINED_FUNCTION_135_0();
      return result;
    }

    OUTLINED_FUNCTION_573();
    if (v10)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      v12 = *v6;
      goto LABEL_8;
    }

    ++v1;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v6, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72DC29C(uint64_t a1, unint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  *&v36 = a1;
  *(&v36 + 1) = a2;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A560);
  if (swift_dynamicCast())
  {
    sub_1C6F699F8(v34, &v37);
    __swift_project_boxed_opaque_existential_1(&v37, v38);
    sub_1C754DB0C();
    v34[0] = v36;
    __swift_destroy_boxed_opaque_existential_1(&v37);
    goto LABEL_59;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_1C6FD7FC8(v34, &qword_1EC21A568);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v34[0] = a1;
    *(&v34[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v34;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1C75518FC();
  }

  sub_1C72DC7A4(v4, v5, &v37);
  v6 = *(&v37 + 1);
  v7 = v37;
  if (*(&v37 + 1) >> 60 != 15)
  {
    v34[0] = v37;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v34[0] = MEMORY[0x1CCA5A2C0](v8);
  *(&v34[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v34[0]);
  v10 = sub_1C72DC8C0(sub_1C72DE000);
  v12 = *(&v34[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v34[0]);
  switch(*(&v34[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v34[0]) - LODWORD(v34[0]);
      if (__OFSUB__(DWORD1(v34[0]), v34[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v34[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v34[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v34[0] + 16);
      v20 = *(*&v34[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1C754DD9C();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v33 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v36 + 7) = 0;
      *&v36 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v34[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_1C7491B74(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_1C755089C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1C75508DC();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v37 = v13;
      *(&v37 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v37 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1C75518FC();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_1C7491B74(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_1C75508AC();
LABEL_46:
    *(&v36 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v37 = v36;
      *(&v37 + 6) = *(&v36 + 6);
      sub_1C754DDBC();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v37 = v36;
    *(&v37 + 6) = *(&v36 + 6);
    sub_1C754DDBC();
    sub_1C70B5C10(v33, v6);
    goto LABEL_58;
  }

  sub_1C70B5C10(v33, v6);
LABEL_59:
  v31 = v34[0];
  sub_1C6FEB1B0(*&v34[0], *(&v34[0] + 1));

  sub_1C6FC1640(v31, *(&v31 + 1));
  return v31;
}

uint64_t sub_1C72DC7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1C754DD3C();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1C754D9CC();
      swift_allocObject();
      v8 = sub_1C754D98C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1C754DD8C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1C72DC86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1C72DCDE0(sub_1C72DE05C, v5, a1, a2);
}

uint64_t sub_1C72DC8C0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C6FC1640(v6, v5);
      *v4 = xmmword_1C7580720;
      sub_1C6FC1640(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1C754D99C() && __OFSUB__(v6, sub_1C754D9BC()))
      {
        goto LABEL_24;
      }

      sub_1C754D9CC();
      swift_allocObject();
      v13 = sub_1C754D97C();

      v11 = v13;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1C72DCE44(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C6FC1640(v6, v5);
      v16 = v6;
      v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1C7580720;
      sub_1C6FC1640(0, 0xC000000000000000);
      sub_1C754DD4C();
      v6 = v16;
      v9 = sub_1C72DCE44(*(v16 + 16), *(v16 + 24), a1);
      if (v2)
      {
        v10 = v17 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v17 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v18, 0, 15);
      a1(&v16, v18, v18);
      if (!v2)
      {
        return v16;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_1C6FC1640(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        v3 = v16;
      }

      v8 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v4 = v18[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_1C72DCC84@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1C754DD3C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1CCA5A270]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1CCA5A290]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1C72DCCFC(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1C72DDEE8(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1C72DDE14();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_1C72DCD98(uint64_t result)
{
  if (result)
  {
    result = sub_1C755181C();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C72DCDE0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1C72DCE44(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C754D99C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C754D9BC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1C754D9AC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1C72DCEF8(void *a1)
{
  v1 = [a1 locationAssetUUIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C7550F8C();

  return v3;
}

uint64_t sub_1C72DCF58(void *a1)
{
  v1 = [a1 nextTokenSuggestions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C72DDC38();
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t sub_1C72DCFB8(void *a1)
{
  v2 = [a1 meaningLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C755068C();

  return v3;
}

void *sub_1C72DD028(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    *result = *(*(a5 + 56) + 8 * a2);
    sub_1C75504FC();
    sub_1C75504FC();
    return OUTLINED_FUNCTION_90();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C72DD0B8()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C72DD110()
{
  result = qword_1EDD0F860[0];
  if (!qword_1EDD0F860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0F860);
  }

  return result;
}

unint64_t sub_1C72DD164()
{
  result = qword_1EDD095C8;
  if (!qword_1EDD095C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD095C8);
  }

  return result;
}

unint64_t sub_1C72DD1B8()
{
  result = qword_1EDD06C10;
  if (!qword_1EDD06C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2150B0);
    sub_1C72DD264(&qword_1EDD0CEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06C10);
  }

  return result;
}

unint64_t sub_1C72DD264(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0);
    result = OUTLINED_FUNCTION_109_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C72DD2BC()
{
  result = qword_1EDD06F10;
  if (!qword_1EDD06F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06F10);
  }

  return result;
}

unint64_t sub_1C72DD310()
{
  result = qword_1EDD095D0;
  if (!qword_1EDD095D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD095D0);
  }

  return result;
}

unint64_t sub_1C72DD364(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00);
    result = OUTLINED_FUNCTION_109_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C72DD3BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2155D0);
    v3 = OUTLINED_FUNCTION_73_16();
    sub_1C72DE07C(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C72DD450()
{
  result = qword_1EDD06C18;
  if (!qword_1EDD06C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2150B0);
    sub_1C72DD264(&qword_1EDD0CEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06C18);
  }

  return result;
}

unint64_t sub_1C72DD4FC()
{
  result = qword_1EDD06F18[0];
  if (!qword_1EDD06F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD06F18);
  }

  return result;
}

uint64_t sub_1C72DD550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C72DD5C4()
{
  result = qword_1EC21A510;
  if (!qword_1EC21A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A510);
  }

  return result;
}

unint64_t sub_1C72DD61C()
{
  result = qword_1EC21A518;
  if (!qword_1EC21A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A518);
  }

  return result;
}

unint64_t sub_1C72DD674()
{
  result = qword_1EDD0C910;
  if (!qword_1EDD0C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryTokenAmbiguityReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for QueryTokenAmbiguityReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryTokenDataSourceType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C72DD908(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1C72DD948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C72DD9B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C72DDA8C()
{
  result = qword_1EC21A520;
  if (!qword_1EC21A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A520);
  }

  return result;
}

unint64_t sub_1C72DDAE4()
{
  result = qword_1EDD0F850;
  if (!qword_1EDD0F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F850);
  }

  return result;
}

unint64_t sub_1C72DDB3C()
{
  result = qword_1EDD0F858;
  if (!qword_1EDD0F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F858);
  }

  return result;
}

unint64_t sub_1C72DDB90()
{
  result = qword_1EDD0DC08[0];
  if (!qword_1EDD0DC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0DC08);
  }

  return result;
}

unint64_t sub_1C72DDBE4()
{
  result = qword_1EC21A528;
  if (!qword_1EC21A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A528);
  }

  return result;
}

unint64_t sub_1C72DDC38()
{
  result = qword_1EC217FE0;
  if (!qword_1EC217FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC217FE0);
  }

  return result;
}

uint64_t sub_1C72DDC7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C72DDCD4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 56) + 16 * a2;
    v6 = *v5;
    v7 = *(v5 + 8);
    *result = *v5;
    *(result + 8) = v7;
    sub_1C75504FC();
    sub_1C6FBC70C(v6);
    return OUTLINED_FUNCTION_90();
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1C72DDD74(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    *result = *v6;
    result[1] = v7;
    *(result + 16) = v8;
    v9 = v5;
    v10 = OUTLINED_FUNCTION_90();
    sub_1C725C8BC(v10, v11, v8);
    return v9;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C72DDE14()
{
  sub_1C755024C();
  sub_1C72DE07C(&unk_1EC21A550);
  return sub_1C755020C();
}

uint64_t sub_1C72DDEE8(uint64_t a1, uint64_t a2)
{
  result = sub_1C754D99C();
  if (!result || (result = sub_1C754D9BC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C754D9AC();
      sub_1C755024C();
      sub_1C72DE07C(&unk_1EC21A550);
      return sub_1C755020C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C72DDFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1C72DC86C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1C72DE01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C72DCD98(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1C72DE07C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_63();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C72DE0BC()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_60_17(uint64_t a1@<X8>)
{
  *(v2 - 160) = a1;
  *(v2 - 128) = v1;
  *(v2 - 96) = v1 + 32;
}

void OUTLINED_FUNCTION_79_12(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 520);
  *(v1 - 216) = v2;
  *(v1 - 208) = v3;
}

uint64_t OUTLINED_FUNCTION_86_10()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_89_12()
{

  return type metadata accessor for QueryTokenCategoryType(0);
}

void OUTLINED_FUNCTION_92_12(double a1, __n128 a2)
{
  *(v4 - 288) = v2;
  *(v4 - 240) = v3;
  *(v4 - 232) = a2;
}

uint64_t sub_1C72DE340()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE3F0()
{
  sub_1C7551F3C();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE488()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE55C()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE5E0()
{
  sub_1C7551F3C();
  OUTLINED_FUNCTION_14_33();
  return sub_1C7551FAC();
}

uint64_t sub_1C72DE638()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t sub_1C72DE6AC()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE740()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE7AC()
{
  OUTLINED_FUNCTION_110_6();
  TextSanitizer.SupportedLanguage.rawValue.getter();
  sub_1C75505AC();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE818()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE894()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DE924()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEA10()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEAA0()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEB28()
{
  sub_1C7551F3C();
  sub_1C75505AC();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEBF0()
{
  OUTLINED_FUNCTION_110_6();
  v0 = ActivityFeatureCode.rawValue.getter();
  sub_1C75513FC();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DECB4()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DED48()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEDB4()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEE5C()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEF2C(uint64_t a1, char a2)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](qword_1C7581328[a2]);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DEF7C()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DEFEC()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF0A4(uint64_t a1, unsigned __int8 a2)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](a2);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF0E8()
{
  sub_1C7551F3C();
  OUTLINED_FUNCTION_14_33();
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF128(uint64_t a1, unsigned __int8 a2)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](a2 - 1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF248()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF2DC()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF3A0()
{
  v1 = OUTLINED_FUNCTION_164_3();
  v0(v1);
  OUTLINED_FUNCTION_109_4();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF404()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF4C0()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF53C()
{
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_111_8();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF5E8()
{
  OUTLINED_FUNCTION_164_3();
  v0(v3, v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF640()
{
  OUTLINED_FUNCTION_164_3();
  v0(v1);
  OUTLINED_FUNCTION_109_4();

  return sub_1C7551FAC();
}

uint64_t sub_1C72DF688()
{
  OUTLINED_FUNCTION_110_6();
  sub_1C7551F6C();
  return sub_1C7551FAC();
}

uint64_t sub_1C72DF6C4(uint64_t a1, uint64_t a2)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](a2);
  return sub_1C7551FAC();
}

uint64_t static TextSanitizer.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 89) = *a5;
  return OUTLINED_FUNCTION_1_0();
}

void sub_1C72DF728()
{
  v2 = v0[4];
  v54 = v2 + 56;
  sub_1C75504FC();
  v3 = MEMORY[0x1E69E7CD0];
  v53 = v0;
  while (1)
  {
    sub_1C755088C();
    if (!v4)
    {
LABEL_58:
      v0[6] = v3;
      v0[7] = v3;

      if (!*(v2 + 16) || (sub_1C7551F3C(), sub_1C75505AC(), sub_1C7551FAC(), OUTLINED_FUNCTION_9_69(), ((*(v54 + v42) >> v0) & 1) == 0))
      {
LABEL_64:
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_38_4();

        __asm { BRAA            X2, X16 }
      }

      v43 = ~v41;
      while (*(v0 + *(v2 + 48)) != 1)
      {
        v44 = sub_1C7551DBC();

        if (v44)
        {
          goto LABEL_68;
        }

        v0 = ((v0 + 1) & v43);
        OUTLINED_FUNCTION_70_16();
        if (((*(v54 + v45) >> v0) & 1) == 0)
        {
          goto LABEL_64;
        }
      }

LABEL_68:
      v48 = *(v53 + 89);
      static TextSanitizer.availableSupportedLocales()();
      v53[8] = v49;
      *(v53 + 88) = v48;
      v50 = swift_task_alloc();
      v53[9] = v50;
      *v50 = v53;
      v50[1] = sub_1C72DFCBC;
      OUTLINED_FUNCTION_61_3(v53[2]);
      OUTLINED_FUNCTION_38_4();

      static TextSanitizer.validateCharacters(_:locales:storyGenerationCache:useCaseIdentifier:)();
      return;
    }

    if (*(v2 + 16))
    {
      sub_1C7551F3C();
      OUTLINED_FUNCTION_62_18();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_3_42();
      if ((*(v54 + v6) >> v1))
      {
        break;
      }
    }

LABEL_13:

LABEL_57:
    sub_1C7036C14(v0[4], v3);
    if (v40)
    {
      goto LABEL_58;
    }
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(v2 + 48) + v1) ? 0x80000001C75964E0 : 0xE500000000000000;
    if ((*(*(v2 + 48) + v1) & 1) == 0 && v8 == 0xE500000000000000)
    {
      break;
    }

    OUTLINED_FUNCTION_182_2();
    v9 = OUTLINED_FUNCTION_132_6();

    if (v9)
    {
      goto LABEL_15;
    }

    v1 = (v1 + 1) & v7;
    OUTLINED_FUNCTION_62_0();
    if (((*(v54 + v10) >> v1) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  if (v3[2])
  {
    sub_1C7551F3C();
    OUTLINED_FUNCTION_62_18();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_42();
    if ((*(v3 + v12 + 56) >> v1))
    {
      v13 = ~v11;
      while (1)
      {
        v14 = *(v3[6] + v1) ? 0x80000001C75964E0 : 0xE500000000000000;
        if ((*(v3[6] + v1) & 1) == 0 && v14 == 0xE500000000000000)
        {
          break;
        }

        OUTLINED_FUNCTION_182_2();
        v15 = OUTLINED_FUNCTION_132_6();

        if (v15)
        {
          goto LABEL_42;
        }

        v1 = (v1 + 1) & v13;
        OUTLINED_FUNCTION_33_30();
        if ((v16 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_42;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_282();
  v17 = sub_1C755065C();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (!IsSingleEmoji)
  {
LABEL_43:
    v0 = v53;
    goto LABEL_57;
  }

  sub_1C7551F3C();
  OUTLINED_FUNCTION_62_18();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_150_6();
  if (v20)
  {
    v21 = ~v19;
    while (1)
    {
      OUTLINED_FUNCTION_180_2();
      v25 = v24 ? v23 : 0x80000001C75964E0;
      if ((v22 & 1) == 0 && v25 == v23)
      {
        break;
      }

      OUTLINED_FUNCTION_182_2();
      v26 = OUTLINED_FUNCTION_132_6();

      if (v26)
      {
        goto LABEL_43;
      }

      IsSingleEmoji = (IsSingleEmoji + 1) & v21;
      OUTLINED_FUNCTION_34_11();
      if (((*(v3 + v27 + 56) >> IsSingleEmoji) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v3[3] > v3[2])
  {
    v0 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C72F2D54();
    }

    goto LABEL_55;
  }

  v0 = v53;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1C72E7B80();
  }

  else
  {
    sub_1C72F6128();
  }

  sub_1C7551F3C();
  OUTLINED_FUNCTION_62_18();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_150_6();
  if ((v30 & 1) == 0)
  {
LABEL_55:
    OUTLINED_FUNCTION_34_11();
    *(v3 + v37 + 56) |= 1 << IsSingleEmoji;
    *(v3[6] + IsSingleEmoji) = 0;
    OUTLINED_FUNCTION_54_3();
    if (v39)
    {
      __break(1u);
      return;
    }

    v3[2] = v38;
    goto LABEL_57;
  }

  v31 = ~v29;
  while (1)
  {
    OUTLINED_FUNCTION_180_2();
    v34 = v24 ? v33 : 0x80000001C75964E0;
    if ((v32 & 1) == 0 && v34 == v33)
    {
      break;
    }

    OUTLINED_FUNCTION_182_2();
    v35 = OUTLINED_FUNCTION_132_6();

    if (v35)
    {
      goto LABEL_72;
    }

    IsSingleEmoji = (IsSingleEmoji + 1) & v31;
    OUTLINED_FUNCTION_34_11();
    if (((*(v3 + v36 + 56) >> IsSingleEmoji) & 1) == 0)
    {
      v0 = v53;
      goto LABEL_55;
    }
  }

LABEL_72:
  OUTLINED_FUNCTION_38_4();

  sub_1C7551E3C();
}

uint64_t sub_1C72DFCBC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 90) = v3 & 1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72DFDEC()
{
  v1 = *(v0 + 56);
  if ((*(v0 + 90) & 1) == 0)
  {
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    v2 = v1 + 56;
    OUTLINED_FUNCTION_79_1();
    v5 = v4 & ~v3;
    if ((*(v2 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v6 = ~v3;
      v7 = *(v0 + 56);
      while (*(*(v7 + 48) + v5) != 1)
      {
        v8 = sub_1C7551DBC();

        if (v8)
        {
          goto LABEL_9;
        }

        v5 = (v5 + 1) & v6;
        if (((*(v2 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

LABEL_9:
      v1 = *(v0 + 56);
    }

    else
    {
LABEL_7:
      v9 = *(v0 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1C72EDCDC(1, v5, isUniquelyReferenced_nonNull_native);
      v1 = v9;
    }
  }

  OUTLINED_FUNCTION_116();

  return v11(v1);
}

uint64_t sub_1C72DFF64()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t static TextSanitizer.validateCharacterCategories(_:storyGenerationCache:useCaseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 65) = *a4;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72DFFE0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 65);
  sub_1C707DB58(&unk_1F469DFD0);
  v3 = v2;
  *(v0 + 40) = v2;
  *(v0 + 64) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1C72E00A0;
  v5 = OUTLINED_FUNCTION_61_3(*(v0 + 16));

  return static TextSanitizer.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(v5, v6, v3, v7, (v0 + 64));
}

uint64_t sub_1C72E00A0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_116();

    return v10(v3);
  }
}

uint64_t TextSanitizer.SupportedLanguage.locale.getter()
{
  TextSanitizer.SupportedLanguage.rawValue.getter();

  return sub_1C754E03C();
}

uint64_t TextSanitizer.SupportedLanguage.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1C7551DFC();

  v3 = 17;
  if (v1 < 0x11)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1C72E0348@<X0>(uint64_t *a1@<X8>)
{
  result = TextSanitizer.SupportedLanguage.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE200000000000000;
  return result;
}

void static TextSanitizer.availableSupportedLanguageCodes()(__n128 a1)
{
  v1 = sub_1C72E0384(a1);
  sub_1C739E244(v1);

  sub_1C706D4E4();
}

void static TextSanitizer.availableSupportedLocales()()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v47 - v2;
  v4 = sub_1C754E13C();
  OUTLINED_FUNCTION_3_0();
  v64 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v61 = v8 - v7;
  OUTLINED_FUNCTION_37_3();
  v9 = sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v47 - v17;
  OUTLINED_FUNCTION_37_3();
  v60 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_78();
  v50 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v49 = &v47 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v54 = &v47 - v27;
  v28 = sub_1C72E0384(v26);
  sub_1C739E244(v28);

  sub_1C706D4E4();
  v30 = v29;
  v31 = MEMORY[0x1CCA5A5D0]();
  v32 = v31;
  v66 = MEMORY[0x1E69E7CD0];
  v59 = *(v31 + 16);
  if (v59)
  {
    v33 = 0;
    v56 = (v64 + 8);
    v57 = v31 + 32;
    v51 = (v11 + 32);
    v52 = v4;
    v63 = v30 + 56;
    v64 = v30;
    v62 = v11 + 16;
    v48 = (v19 + 16);
    v55 = (v19 + 8);
    v34 = v54;
    v53 = v3;
    v58 = v31;
    while (v33 < *(v32 + 16))
    {
      sub_1C75504FC();
      OUTLINED_FUNCTION_90();
      sub_1C754E03C();
      v35 = v61;
      sub_1C754E14C();
      sub_1C754E12C();
      (*v56)(v35, v4);
      if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
      {
        (*v55)(v34, v60);
        sub_1C72FBFC0(v3, &qword_1EC2177A8);
      }

      else
      {
        (*v51)(v65, v3, v9);
        if (*(v64 + 16))
        {
          OUTLINED_FUNCTION_5_69();
          sub_1C72FC014(&qword_1EC215FD8, v36);
          sub_1C755058C();
          OUTLINED_FUNCTION_9_2();
          v39 = ~v38;
          while (1)
          {
            v40 = v37 & v39;
            if (((*(v63 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v39)) & 1) == 0)
            {
              break;
            }

            (*(v11 + 16))(v15, *(v64 + 48) + *(v11 + 72) * v40, v9);
            OUTLINED_FUNCTION_5_69();
            sub_1C72FC014(&qword_1EC215FE0, v41);
            v42 = sub_1C755063C();
            v43 = *(v11 + 8);
            v43(v15, v9);
            v37 = v40 + 1;
            if (v42)
            {
              v44 = v60;
              (*v48)(v50, v54, v60);
              v45 = v49;
              sub_1C70F13B8();
              v46 = *v55;
              (*v55)(v45, v44);
              v43(v65, v9);
              v34 = v54;
              v46(v54, v44);
              goto LABEL_12;
            }
          }
        }

        (*(v11 + 8))(v65, v9);
        v34 = v54;
        (*v55)(v54, v60);
LABEL_12:
        v4 = v52;
        v3 = v53;
      }

      ++v33;
      v32 = v58;
      if (v33 == v59)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t TextSanitizer.CharacterCategory.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1C7551B2C();

  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t TextSanitizer.CharacterCategory.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x696A6F6D65;
  }
}

uint64_t sub_1C72E0C68@<X0>(uint64_t *a1@<X8>)
{
  result = TextSanitizer.CharacterCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TextSanitizer.LanguageValidationCategory.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1C7551B2C();

  v3 = 4;
  if (v1 < 4)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

unint64_t TextSanitizer.LanguageValidationCategory.rawValue.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C72E0E88@<X0>(unint64_t *a1@<X8>)
{
  result = TextSanitizer.LanguageValidationCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v110 = a4;
  v122[9] = *MEMORY[0x1E69E9840];
  v118 = sub_1C754E13C();
  OUTLINED_FUNCTION_3_0();
  v111 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v117 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  OUTLINED_FUNCTION_76(v11);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v99 - v13;
  OUTLINED_FUNCTION_37_3();
  sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v119 = v15;
  v120 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v112 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v99 - v22;
  if (qword_1EDD0F478 != -1)
  {
    OUTLINED_FUNCTION_2_95();
    swift_once();
  }

  v24 = sub_1C754FF1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDD28DD0);
  sub_1C75504FC();
  sub_1C75504FC();
  v114 = v25;
  v26 = sub_1C754FEEC();
  v27 = sub_1C75511BC();

  v28 = os_log_type_enabled(v26, v27);
  v121 = a3;
  v109 = v20;
  if (v28)
  {
    OUTLINED_FUNCTION_11_3();
    v29 = swift_slowAlloc();
    v113 = v23;
    v30 = v29;
    OUTLINED_FUNCTION_40_25();
    v122[0] = swift_slowAlloc();
    *v30 = 136643075;
    *(v30 + 4) = sub_1C6F765A4(a1, a2, v122);
    *(v30 + 12) = 2080;
    v31 = sub_1C7550F9C();
    v33 = a1;
    v34 = sub_1C6F765A4(v31, v32, v122);
    a3 = v121;

    *(v30 + 14) = v34;
    a1 = v33;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "[validateLanguageWithLexicon] Validating the language of %{sensitive}s being part of the supported language identifiers: %s", v30, 0x16u);
    swift_arrayDestroy();
    v35 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v35);
    v23 = v113;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v36 = StoryGenerationCache.cachedLexiconLanguageIdentifier()();
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = [objc_allocWithZone(MEMORY[0x1E69ABFB0]) init];
    if (!v37)
    {
      sub_1C72FB180();
      swift_allocError();
      *v95 = 1;
      swift_willThrow();
      return;
    }
  }

  StoryGenerationCache.cacheLexiconLanguageIdentifier(languageIdentifier:)(v37);
  v38 = a1;
  v39 = sub_1C755065C();
  v122[0] = 0;
  v40 = [v37 detectLanguagesInString:v39 error:v122];

  if (v122[0])
  {
    v122[0];

    swift_willThrow();
  }

  else
  {
    v41 = v111;
    v104 = v37;
    v103 = v38;
    v42 = sub_1C7550B5C();

    v115 = v42;
    v105 = *(v42 + 16);
    if (v105)
    {
      v44 = 0;
      v107 = v115 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
      v106 = v41 + 1;
      v102 = a3 + 56;
      v111 = (v119 + 8);
      *&v43 = 136315138;
      v99 = v43;
      v108 = v119 + 16;
      v100 = a2;
      v113 = v23;
      do
      {
        OUTLINED_FUNCTION_171_1();
        if (v45)
        {
          __break(1u);
        }

        v46 = *(v119 + 16);
        v46(v23, v107 + *(v119 + 72) * v44, v120);
        v47 = v117;
        sub_1C754E14C();
        v48 = v116;
        sub_1C754E12C();
        (*v106)(v47, v118);
        v49 = sub_1C754E07C();
        if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
        {
          sub_1C72FBFC0(v48, &qword_1EC2177A8);
          v50 = v112;
          v46(v112, v23, v120);
          v51 = sub_1C754FEEC();
          v52 = sub_1C755119C();
          if (os_log_type_enabled(v51, v52))
          {
            OUTLINED_FUNCTION_13_3();
            v53 = swift_slowAlloc();
            OUTLINED_FUNCTION_98();
            v101 = swift_slowAlloc();
            v122[0] = v101;
            *v53 = v99;
            OUTLINED_FUNCTION_4_77();
            sub_1C72FC014(&qword_1EDD0CB88, v54);
            sub_1C7551D8C();
            v55 = *v111;
            (*v111)(v50, v120);
            v56 = OUTLINED_FUNCTION_90();
            v59 = sub_1C6F765A4(v56, v57, v58);

            *(v53 + 4) = v59;
            _os_log_impl(&dword_1C6F5C000, v51, v52, "[validateLanguageWithLexicon] Could not get the detected language from detected locale: %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v101);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            v23 = v113;
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();

            v55(v23, v120);
          }

          else
          {

            v73 = *v111;
            v74 = v120;
            (*v111)(v50, v120);
            v73(v23, v74);
          }
        }

        else
        {
          v60 = v23;
          v61 = sub_1C754E05C();
          v62 = v48;
          v64 = v63;
          (*(*(v49 - 8) + 8))(v62, v49);
          if (*(v121 + 16))
          {
            sub_1C7551F3C();
            sub_1C75505AC();
            sub_1C7551FAC();
            OUTLINED_FUNCTION_9_2();
            v67 = ~v66;
            while (1)
            {
              v68 = v65 & v67;
              OUTLINED_FUNCTION_33_30();
              if ((v69 & 1) == 0)
              {
                break;
              }

              v70 = (*(v121 + 48) + 16 * v68);
              if (*v70 != v61 || v70[1] != v64)
              {
                OUTLINED_FUNCTION_84_8();
                v72 = sub_1C7551DBC();
                v65 = v68 + 1;
                if ((v72 & 1) == 0)
                {
                  continue;
                }
              }

              v83 = v109;
              v46(v109, v60, v120);
              sub_1C75504FC();
              v84 = sub_1C754FEEC();
              v85 = sub_1C75511BC();

              if (os_log_type_enabled(v84, v85))
              {
                OUTLINED_FUNCTION_11_3();
                v86 = swift_slowAlloc();
                OUTLINED_FUNCTION_40_25();
                v122[0] = swift_slowAlloc();
                *(v86 + 4) = OUTLINED_FUNCTION_166_4(4.9655e-34);
                *(v86 + 12) = 2080;
                OUTLINED_FUNCTION_4_77();
                sub_1C72FC014(v87, v88);
                v89 = v83;
                v90 = v120;
                sub_1C7551D8C();
                v91 = OUTLINED_FUNCTION_51();
                v93 = v92;
                v94 = *v111;
                (*v111)(v91, v90);
                sub_1C6F765A4(v89, v93, v122);
                OUTLINED_FUNCTION_51();

                *(v86 + 14) = v89;
                _os_log_impl(&dword_1C6F5C000, v84, v85, "[validateLanguageWithLexicon] '%{sensitive}s' valid detected locale: %s", v86, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_235();
                MEMORY[0x1CCA5F8E0]();
                OUTLINED_FUNCTION_235();
                MEMORY[0x1CCA5F8E0]();

                v94(v113, v90);
              }

              else
              {

                v96 = *v111;
                v97 = v120;
                (*v111)(v83, v120);
                v96(v60, v97);
              }

              v98 = 0;
              goto LABEL_37;
            }
          }

          v23 = v60;
          (*v111)(v60, v120);
        }

        ++v44;
      }

      while (v44 != v105);
    }

    sub_1C75504FC();
    sub_1C75504FC();
    v75 = sub_1C754FEEC();
    v76 = sub_1C75511BC();

    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_11_3();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_25();
      v122[0] = swift_slowAlloc();
      *(v77 + 4) = OUTLINED_FUNCTION_166_4(4.9655e-34);
      *(v77 + 12) = 2080;
      MEMORY[0x1CCA5D090](v115, v120);

      v78 = OUTLINED_FUNCTION_55();
      v81 = sub_1C6F765A4(v78, v79, v80);

      *(v77 + 14) = v81;
      _os_log_impl(&dword_1C6F5C000, v75, v76, "[validateLanguageWithLexicon] The language of '%{sensitive}s' is not supported, detected locales: %s", v77, 0x16u);
      swift_arrayDestroy();
      v82 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v82);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v98 = 1;
LABEL_37:
    *v110 = v98;
  }
}

uint64_t static TextSanitizer.validateLanguageWithLanguageRecognizer(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 456) = v3;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  *(v0 + 24) = v8;
  *(v0 + 32) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A578);
  OUTLINED_FUNCTION_76(v10);
  *(v0 + 72) = OUTLINED_FUNCTION_77();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A580);
  *(v0 + 80) = v11;
  OUTLINED_FUNCTION_76(v11);
  *(v0 + 88) = OUTLINED_FUNCTION_281_1();
  *(v0 + 96) = swift_task_alloc();
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();
  *(v0 + 128) = swift_task_alloc();
  *(v0 + 136) = swift_task_alloc();
  *(v0 + 144) = swift_task_alloc();
  v12 = sub_1C754FC3C();
  *(v0 + 152) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v0 + 160) = v13;
  *(v0 + 168) = OUTLINED_FUNCTION_77();
  v14 = sub_1C754FC4C();
  *(v0 + 176) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v0 + 184) = v15;
  *(v0 + 192) = OUTLINED_FUNCTION_77();
  v16 = sub_1C754FCEC();
  *(v0 + 200) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v0 + 208) = v17;
  *(v0 + 216) = OUTLINED_FUNCTION_77();
  v18 = sub_1C754FC6C();
  *(v0 + 224) = v18;
  OUTLINED_FUNCTION_18(v18);
  *(v0 + 232) = v19;
  *(v0 + 240) = OUTLINED_FUNCTION_77();
  v20 = sub_1C754FD2C();
  *(v0 + 248) = v20;
  OUTLINED_FUNCTION_18(v20);
  *(v0 + 256) = v21;
  *(v0 + 264) = OUTLINED_FUNCTION_281_1();
  *(v0 + 272) = swift_task_alloc();
  v22 = sub_1C754EC4C();
  *(v0 + 280) = v22;
  OUTLINED_FUNCTION_18(v22);
  *(v0 + 288) = v23;
  *(v0 + 296) = OUTLINED_FUNCTION_77();
  v24 = sub_1C754DFFC();
  *(v0 + 304) = v24;
  OUTLINED_FUNCTION_18(v24);
  *(v0 + 312) = v25;
  *(v0 + 320) = OUTLINED_FUNCTION_281_1();
  *(v0 + 328) = swift_task_alloc();
  *(v0 + 336) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A588);
  OUTLINED_FUNCTION_76(v26);
  *(v0 + 344) = OUTLINED_FUNCTION_77();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A590);
  OUTLINED_FUNCTION_76(v27);
  *(v0 + 352) = OUTLINED_FUNCTION_77();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A598);
  OUTLINED_FUNCTION_76(v28);
  *(v0 + 360) = OUTLINED_FUNCTION_77();
  v29 = sub_1C754EC1C();
  OUTLINED_FUNCTION_76(v29);
  *(v0 + 368) = OUTLINED_FUNCTION_77();
  v30 = sub_1C754EC9C();
  *(v0 + 376) = v30;
  OUTLINED_FUNCTION_18(v30);
  *(v0 + 384) = v31;
  *(v0 + 392) = OUTLINED_FUNCTION_77();
  v32 = sub_1C754EA9C();
  *(v0 + 400) = v32;
  OUTLINED_FUNCTION_18(v32);
  *(v0 + 408) = v33;
  *(v0 + 416) = OUTLINED_FUNCTION_77();
  *(v0 + 457) = *v2;
  v34 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1C72E1F5C()
{
  v51 = v0;
  if (qword_1EDD0F478 != -1)
  {
    OUTLINED_FUNCTION_2_95();
    swift_once();
  }

  v1 = sub_1C754FF1C();
  *(v0 + 424) = __swift_project_value_buffer(v1, qword_1EDD28DD0);
  sub_1C75504FC();
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 32);
    OUTLINED_FUNCTION_11_3();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_40_25();
    v50 = swift_slowAlloc();
    *v6 = 136643075;
    *(v6 + 4) = sub_1C6F765A4(v5, v4, &v50);
    *(v6 + 12) = 2080;
    sub_1C754E07C();
    OUTLINED_FUNCTION_5_69();
    sub_1C72FC014(v7, v8);
    v9 = sub_1C7550F9C();
    v11 = sub_1C6F765A4(v9, v10, &v50);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "[validateLanguageWithLanguageRecognizer] Validating the language of %{sensitive}s being part of the supported language codes: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v12 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v12);
  }

  v13 = *(v0 + 408);
  v14 = *(v0 + 416);
  v15 = *(v0 + 400);
  v16 = *(v0 + 360);
  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v45 = *(v0 + 336);
  v49 = *(v0 + 328);
  v19 = *(v0 + 312);
  v46 = *(v0 + 304);
  sub_1C75504FC();
  OUTLINED_FUNCTION_96_10();
  sub_1C754EA8C();
  v20 = sub_1C754EBDC();
  OUTLINED_FUNCTION_213_2(v16, v21, v22, v20);
  (*(v13 + 16))(v17, v14, v15);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v15);
  v23 = sub_1C754EAFC();
  OUTLINED_FUNCTION_213_2(v18, v24, v25, v23);
  OUTLINED_FUNCTION_323();
  sub_1C754EBFC();
  sub_1C754EC2C();
  sub_1C754DFEC();
  v26 = *(v19 + 16);
  v26(v49, v45, v46);
  v27 = sub_1C754FEEC();
  v28 = sub_1C75511BC();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_13_3();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v29 = 136315138;
    OUTLINED_FUNCTION_74_12();
    sub_1C72FC014(v30, v31);
    v47 = v28;
    v32 = v26;
    v33 = sub_1C7551D8C();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_95_14();
    v18(v36);
    v37 = v33;
    v26 = v32;
    v38 = sub_1C6F765A4(v37, v35, &v50);

    *(v29 + 4) = v38;
    OUTLINED_FUNCTION_210_2(&dword_1C6F5C000, "[validateLanguageWithLanguageRecognizer] Calling languageRecognizer scrub with userRequestIdentifier: %s", v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v39 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v39);
  }

  else
  {

    v40 = OUTLINED_FUNCTION_95_14();
    v18(v40);
  }

  *(v0 + 432) = v18;
  switch(*(v0 + 457))
  {
    case 5:
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_11_56();
      break;
  }

  v26(*(v0 + 320), *(v0 + 336), *(v0 + 304));
  v41 = [objc_opt_self() processInfo];
  [v41 processIdentifier];

  OUTLINED_FUNCTION_67_18();
  sub_1C754EC3C();
  v42 = swift_task_alloc();
  *(v0 + 440) = v42;
  *v42 = v0;
  v42[1] = sub_1C72E24F0;
  v43 = OUTLINED_FUNCTION_61_3(*(v0 + 32));

  return MEMORY[0x1EEE0B2A8](v43);
}

uint64_t sub_1C72E24F0()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 448) = v0;

  if (!v0)
  {
  }

  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C72E266C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 24);
  (*(v0 + 432))(*(v0 + 336), *(v0 + 304));
  (*(v3 + 8))(v1, v2);
  v5 = OUTLINED_FUNCTION_66_2();
  v6(v5);
  *v4 = 0;
  OUTLINED_FUNCTION_104_8();

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C72E284C()
{
  v148 = v0;
  v1 = *(v0 + 448);
  v2 = (v0 + 248);
  (*(v0 + 432))(*(v0 + 336), *(v0 + 304));
  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if ((OUTLINED_FUNCTION_162_5() & 1) == 0)
  {
    v31 = *(v0 + 408);
    v124 = *(v0 + 400);
    v32 = *(v0 + 376);
    v33 = *(v0 + 384);
    v34 = *(v0 + 392);
    v118 = *(v0 + 416);
LABEL_13:
    (*(v33 + 8))(v34, v32);
    (*(v31 + 8))(v118, v124);

    OUTLINED_FUNCTION_43();
LABEL_14:

    return v49();
  }

  v5 = *(v0 + 208);
  v4 = *(v0 + 216);

  v6 = OUTLINED_FUNCTION_67_18();
  v7(v6);
  sub_1C754FD0C();
  v8 = v5 + 88;
  v9 = OUTLINED_FUNCTION_15_1();
  if (v10(v9) != *MEMORY[0x1E69A0A58])
  {
    v35 = (v0 + 264);
    v36 = v0 + 256;
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    OUTLINED_FUNCTION_13_61();
    sub_1C72FC014(v37, v38);
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_11_47();
    v39();
    swift_willThrow();
    v12 = (v0 + 416);
    v40 = (v0 + 408);
    v15 = (v0 + 400);
    v41 = (v0 + 384);
LABEL_12:
    v118 = *v12;
    v124 = *v15;
    v31 = *v40;
    v33 = *v41;
    (*(*v36 + 8))(*v35, *v2);
    v34 = OUTLINED_FUNCTION_90();
    goto LABEL_13;
  }

  v12 = (v0 + 192);
  v11 = *(v0 + 192);
  OUTLINED_FUNCTION_175_2();
  v140 = v13;
  v15 = (v0 + 176);
  v14 = *(v0 + 176);
  (*(*(v0 + 208) + 96))(v4, *(v0 + 200));
  v16 = OUTLINED_FUNCTION_173_3();
  v17(v16);
  sub_1C754FC5C();
  if ((*(v8 + 88))(v11, v14) != *MEMORY[0x1E69A09F8])
  {
    OUTLINED_FUNCTION_13_61();
    sub_1C72FC014(v42, v43);
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_11_47();
    v44();
    swift_willThrow();
    v45 = OUTLINED_FUNCTION_15_1();
    v46(v45);
    v47 = OUTLINED_FUNCTION_66_2();
    v48(v47);
    v41 = (v0 + 408);
    v35 = (v0 + 392);
    v36 = v0 + 384;
    v2 = (v0 + 376);
    v40 = v140;
    goto LABEL_12;
  }

  v18 = *(v0 + 48);
  (*(*(v0 + 184) + 96))(*(v0 + 192), *(v0 + 176));
  v19 = OUTLINED_FUNCTION_67_18();
  v20(v19);
  v21 = sub_1C754FC2C();
  sub_1C75504FC();
  v22 = sub_1C72FB1D4(v21, v18);

  v23 = v22 + 64;
  v24 = -1 << v22[32];
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v22 + 8);
  v144 = v22;
  if (!v26)
  {
    v51 = 0;
    v30 = (63 - v24) >> 6;
    while (v30 - 1 != v51)
    {
      v27 = v51 + 1;
      v52 = *&v22[8 * v51 + 72];
      v26 -= 64;
      ++v51;
      if (v52)
      {
        v29 = (v52 - 1) & v52;
        v28 = __clz(__rbit64(v52)) - v26;
        goto LABEL_21;
      }
    }

    v70 = 1;
LABEL_32:
    v72 = *(v0 + 72);
    v71 = *(v0 + 80);
    __swift_storeEnumTagSinglePayload(v72, v70, 1, v71);

    if (__swift_getEnumTagSinglePayload(v72, 1, v71) == 1)
    {
      v73 = *(v0 + 408);
      v142 = *(v0 + 400);
      v145 = *(v0 + 416);
      v75 = *(v0 + 376);
      v74 = *(v0 + 384);
      v132 = *(v0 + 392);
      v135 = *(v0 + 72);
      v138 = *(v0 + 24);
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v76 = OUTLINED_FUNCTION_323();
      v77(v76);
      v78 = OUTLINED_FUNCTION_55();
      v79(v78);
      (*(v74 + 8))(v132, v75);
      (*(v73 + 8))(v145, v142);
      sub_1C72FBFC0(v135, &unk_1EC21A578);
      *v138 = 2;
    }

    else
    {
      sub_1C72FB398(*(v0 + 72), *(v0 + 144));
      OUTLINED_FUNCTION_84_8();
      sub_1C712A774(v80, v81, v82);
      OUTLINED_FUNCTION_84_8();
      sub_1C712A774(v83, v84, v85);
      v86 = sub_1C754FEEC();
      v87 = sub_1C75511BC();
      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v0 + 408);
      v90 = *(v0 + 416);
      v91 = *(v0 + 400);
      v92 = *(v0 + 384);
      v143 = *(v0 + 376);
      v146 = *(v0 + 392);
      v136 = *(v0 + 264);
      v139 = *(v0 + 256);
      v131 = *(v0 + 232);
      v133 = *(v0 + 248);
      v127 = *(v0 + 224);
      v129 = *(v0 + 240);
      v93 = *(v0 + 160);
      v125 = *(v0 + 152);
      v126 = *(v0 + 168);
      v94 = *(v0 + 96);
      v95 = *(v0 + 104);
      if (v88)
      {
        log = v86;
        v121 = v87;
        v96 = *(v0 + 80);
        v97 = *(v0 + 88);
        OUTLINED_FUNCTION_11_3();
        v123 = v91;
        v98 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v119 = swift_slowAlloc();
        v147[0] = v119;
        *v98 = 134218242;
        sub_1C72FB398(v95, v97);
        v99 = *(v97 + *(v96 + 48));
        v100 = sub_1C754E07C();
        OUTLINED_FUNCTION_12();
        v102 = *(v101 + 8);
        v102(v97, v100);
        *(v98 + 4) = v99;
        *(v98 + 12) = 2080;
        sub_1C712A774(v94, v97, &qword_1EC21A580);
        v120 = v90;
        v103 = sub_1C754E05C();
        v117 = v92;
        v105 = v104;
        sub_1C72FBFC0(v94, &qword_1EC21A580);
        v102(v97, v100);
        v106 = sub_1C6F765A4(v103, v105, v147);

        *(v98 + 14) = v106;
        _os_log_impl(&dword_1C6F5C000, log, v121, "[validateLanguageWithLanguageRecognizer] Unsupported languages max score: %f found for: %s", v98, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v119);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        (*(v93 + 8))(v126, v125);
        (*(v131 + 8))(v129, v127);
        (*(v139 + 8))(v136, v133);
        (*(v117 + 8))(v146, v143);
        (*(v89 + 8))(v120, v123);
      }

      else
      {

        OUTLINED_FUNCTION_11_47();
        sub_1C72FBFC0(v107, v108);
        OUTLINED_FUNCTION_11_47();
        sub_1C72FBFC0(v109, v110);
        (*(v93 + 8))(v126, v125);
        (*(v131 + 8))(v129, v127);
        (*(v139 + 8))(v136, v133);
        (*(v92 + 8))(v146, v143);
        v111 = OUTLINED_FUNCTION_55();
        v112(v111);
      }

      v113 = *(v0 + 144);
      v114 = *(v0 + 24);
      v115 = *(v113 + *(*(v0 + 80) + 48));
      sub_1C72FBFC0(v113, &qword_1EC21A580);
      if (v115 >= 0.9)
      {
        v116 = 1;
      }

      else
      {
        v116 = 2;
      }

      *v114 = v116;
    }

    OUTLINED_FUNCTION_104_8();

    OUTLINED_FUNCTION_43();
    goto LABEL_14;
  }

  v27 = 0;
  v28 = __clz(__rbit64(v26));
  v29 = (v26 - 1) & v26;
  v30 = (63 - v24) >> 6;
LABEL_21:
  v53 = *(v0 + 128);
  v128 = *(v0 + 136);
  v54 = *(v0 + 80);
  v55 = *(v22 + 6);
  sub_1C754E07C();
  OUTLINED_FUNCTION_12();
  v130 = *(v56 + 72);
  v137 = v57;
  v134 = *(v56 + 16);
  v134(v53, v55 + v130 * v28);
  v141 = v54;
  *(v53 + *(v54 + 48)) = *(*(v22 + 7) + 8 * v28);
  sub_1C72FB398(v53, v128);

  while (v29)
  {
    v58 = v27;
LABEL_27:
    v59 = *(v0 + 136);
    v61 = *(v0 + 112);
    v60 = *(v0 + 120);
    OUTLINED_FUNCTION_88();
    v63 = v62 | (v58 << 6);
    (v134)(v61, *(v144 + 6) + v63 * v130, v137);
    *(v61 + *(v141 + 48)) = *(*(v144 + 7) + 8 * v63);
    v64 = OUTLINED_FUNCTION_282();
    sub_1C72FB398(v64, v65);
    if (*(v59 + *(v141 + 48)) >= *(v60 + *(v141 + 48)))
    {
      result = sub_1C72FBFC0(*(v0 + 120), &qword_1EC21A580);
    }

    else
    {
      sub_1C72FBFC0(*(v0 + 136), &qword_1EC21A580);
      v66 = OUTLINED_FUNCTION_282();
      result = sub_1C72FB398(v66, v67);
    }

    v27 = v58;
  }

  while (1)
  {
    v58 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v58 >= v30)
    {
      v68 = *(v0 + 136);
      v69 = *(v0 + 72);

      sub_1C72FB398(v68, v69);
      v70 = 0;
      goto LABEL_32;
    }

    v29 = *&v23[8 * v58];
    ++v27;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t static TextSanitizer.validateLanguage(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_189_1();
  *(v0 + 32) = *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v3[1] = sub_1C72E35BC;
  OUTLINED_FUNCTION_183_1();

  return static TextSanitizer.validateLanguageWithLanguageRecognizer(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)();
}

uint64_t sub_1C72E35BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t static TextSanitizer.validateLanguage(_:useCaseIdentifier:topK:tokenThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 81) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  *(v7 + 82) = *a4;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72E3700()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 82);
  v3 = sub_1C72E0384(v2);
  sub_1C739E244(v3);

  sub_1C706D4E4();
  *(v0 + 56) = v4;
  *(v0 + 80) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1C72E37F0;

  return static TextSanitizer.validateLanguageWithLanguageRecognizer(_:useCaseIdentifier:languageCodes:topK:tokenThreshold:)();
}

uint64_t sub_1C72E37F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t static TextSanitizer.validateCharactersWithCharacterSets(_:locales:useCaseIdentifier:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 24) = v5;
  v6 = sub_1C754FC1C();
  *(v0 + 48) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 56) = v7;
  *(v0 + 64) = OUTLINED_FUNCTION_281_1();
  *(v0 + 72) = swift_task_alloc();
  v8 = sub_1C754FC4C();
  *(v0 + 80) = v8;
  OUTLINED_FUNCTION_18(v8);
  *(v0 + 88) = v9;
  *(v0 + 96) = OUTLINED_FUNCTION_77();
  v10 = sub_1C754FCEC();
  *(v0 + 104) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v0 + 112) = v11;
  *(v0 + 120) = OUTLINED_FUNCTION_77();
  v12 = sub_1C754FC6C();
  *(v0 + 128) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v0 + 136) = v13;
  *(v0 + 144) = OUTLINED_FUNCTION_77();
  v14 = sub_1C754FD2C();
  *(v0 + 152) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v0 + 160) = v15;
  *(v0 + 168) = OUTLINED_FUNCTION_281_1();
  *(v0 + 176) = swift_task_alloc();
  v16 = sub_1C754EC4C();
  *(v0 + 184) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v0 + 192) = v17;
  *(v0 + 200) = OUTLINED_FUNCTION_77();
  v18 = sub_1C754DFFC();
  *(v0 + 208) = v18;
  OUTLINED_FUNCTION_18(v18);
  *(v0 + 216) = v19;
  *(v0 + 224) = OUTLINED_FUNCTION_281_1();
  *(v0 + 232) = swift_task_alloc();
  *(v0 + 240) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A588);
  OUTLINED_FUNCTION_76(v20);
  *(v0 + 248) = OUTLINED_FUNCTION_77();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A590);
  OUTLINED_FUNCTION_76(v21);
  *(v0 + 256) = OUTLINED_FUNCTION_77();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A598);
  OUTLINED_FUNCTION_76(v22);
  *(v0 + 264) = OUTLINED_FUNCTION_77();
  v23 = sub_1C754EC1C();
  OUTLINED_FUNCTION_76(v23);
  *(v0 + 272) = OUTLINED_FUNCTION_77();
  v24 = sub_1C754EC9C();
  *(v0 + 280) = v24;
  OUTLINED_FUNCTION_18(v24);
  *(v0 + 288) = v25;
  *(v0 + 296) = OUTLINED_FUNCTION_77();
  *(v0 + 336) = *v2;
  v26 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1C72E3CD0()
{
  v36 = v0;
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = sub_1C754EBDC();
  OUTLINED_FUNCTION_213_2(v2, v6, v7, v5);
  v8 = sub_1C754EA9C();
  OUTLINED_FUNCTION_213_2(v3, v9, v10, v8);
  v11 = sub_1C75504FC();
  sub_1C71CD7B8(v11);
  sub_1C754EAEC();
  v12 = sub_1C754EAFC();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v12);
  OUTLINED_FUNCTION_15_1();
  sub_1C754EBFC();
  sub_1C754EC2C();
  sub_1C754DFEC();
  if (qword_1EDD0F478 != -1)
  {
    OUTLINED_FUNCTION_2_95();
    swift_once();
  }

  v13 = *(v0 + 216);
  v14 = sub_1C754FF1C();
  *(v0 + 304) = __swift_project_value_buffer(v14, qword_1EDD28DD0);
  v15 = *(v13 + 16);
  v16 = OUTLINED_FUNCTION_67_18();
  v15(v16);
  v17 = sub_1C754FEEC();
  v18 = sub_1C75511BC();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_13_3();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v19 = 136315138;
    OUTLINED_FUNCTION_74_12();
    sub_1C72FC014(v20, v21);
    v22 = sub_1C7551D8C();
    v34 = v15;
    v24 = v23;
    v25 = OUTLINED_FUNCTION_95_14();
    v1(v25);
    v26 = sub_1C6F765A4(v22, v24, &v35);
    v15 = v34;

    *(v19 + 4) = v26;
    OUTLINED_FUNCTION_210_2(&dword_1C6F5C000, "[validateCharactersWithCharacterSets] Calling languageScriptValidator scrub with userRequestIdentifier: %s", v18);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v27 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v27);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_95_14();
    v1(v28);
  }

  *(v0 + 312) = v1;
  switch(*(v0 + 336))
  {
    case 5:
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_11_56();
      break;
  }

  (v15)(*(v0 + 224), *(v0 + 240), *(v0 + 208));
  v29 = [objc_opt_self() processInfo];
  [v29 processIdentifier];

  OUTLINED_FUNCTION_67_18();
  sub_1C754EC3C();
  v30 = swift_task_alloc();
  *(v0 + 320) = v30;
  *v30 = v0;
  v30[1] = sub_1C72E40CC;
  v31 = OUTLINED_FUNCTION_61_3(*(v0 + 24));

  return MEMORY[0x1EEE0B2A8](v31);
}

uint64_t sub_1C72E40CC()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 328) = v0;

  if (!v0)
  {
  }

  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C72E4248()
{
  (*(v0 + 312))(*(v0 + 240), *(v0 + 208));
  v1 = OUTLINED_FUNCTION_66_2();
  v2(v1);
  OUTLINED_FUNCTION_105_9();

  OUTLINED_FUNCTION_116();
  v3 = OUTLINED_FUNCTION_178_1();

  return v4(v3);
}

uint64_t sub_1C72E4390()
{
  v75 = v0;
  v1 = *(v0 + 328);
  v2 = (v0 + 152);
  (*(v0 + 312))(*(v0 + 240), *(v0 + 208));
  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if (OUTLINED_FUNCTION_162_5())
  {
    v4 = (v0 + 168);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);

    v7 = OUTLINED_FUNCTION_66_2();
    v8(v7);
    sub_1C754FD0C();
    v9 = v6 + 88;
    v10 = OUTLINED_FUNCTION_15_1();
    if (v11(v10) == *MEMORY[0x1E69A0A58])
    {
      v13 = (v0 + 96);
      v12 = *(v0 + 96);
      OUTLINED_FUNCTION_175_2();
      v71 = v14;
      v15 = *(v0 + 80);
      (*(*(v0 + 112) + 96))(v5, *(v0 + 104));
      v16 = OUTLINED_FUNCTION_173_3();
      v17(v16);
      sub_1C754FC5C();
      if ((*(v9 + 88))(v12, v15) == *MEMORY[0x1E69A09F0])
      {
        v18 = *(v0 + 96);
        v19 = *(v0 + 72);
        v21 = *(v0 + 56);
        v20 = *(v0 + 64);
        v22 = *(v0 + 48);
        (*(*(v0 + 88) + 96))(v18, *(v0 + 80));
        (*(v21 + 32))(v19, v18, v22);
        (*(v21 + 16))(v20, v19, v22);
        v23 = sub_1C754FEEC();
        v24 = sub_1C75511BC();
        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 288);
        v27 = *(v0 + 296);
        v28 = *(v0 + 280);
        v72 = *(v0 + 168);
        v73 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 152);
        v29 = *(v0 + 136);
        v67 = *(v0 + 72);
        v68 = *(v0 + 128);
        v30 = *(v0 + 48);
        v31 = *(v0 + 56);
        if (v25)
        {
          OUTLINED_FUNCTION_13_3();
          v63 = v24;
          v32 = swift_slowAlloc();
          OUTLINED_FUNCTION_98();
          v66 = v26;
          v33 = swift_slowAlloc();
          v74 = v33;
          *v32 = 136315138;
          v64 = v28;
          v65 = v27;
          v34 = sub_1C754FC0C();
          v36 = v35;
          v37 = *(v31 + 8);
          v38 = OUTLINED_FUNCTION_66_2();
          v37(v38);
          v39 = sub_1C6F765A4(v34, v36, &v74);

          *(v32 + 4) = v39;
          _os_log_impl(&dword_1C6F5C000, v23, v63, "[validateLocaleCharactersUsingCharacterSets] Character set rejection: %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          v40 = OUTLINED_FUNCTION_4_0();
          MEMORY[0x1CCA5F8E0](v40);

          (v37)(v67, v30);
          (*(v29 + 8))(v69, v68);
          (*(v73 + 8))(v72, v70);
          (*(v66 + 8))(v65, v64);
        }

        else
        {

          v61 = *(v31 + 8);
          v62 = OUTLINED_FUNCTION_66_2();
          v61(v62);
          (v61)(v67, v30);
          (*(v29 + 8))(v69, v68);
          (*(v73 + 8))(v72, v70);
          (*(v26 + 8))(v27, v28);
        }

        OUTLINED_FUNCTION_105_9();

        OUTLINED_FUNCTION_116();
        v59 = OUTLINED_FUNCTION_178_1();
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_13_61();
      sub_1C72FC014(v50, v51);
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_11_47();
      v52();
      swift_willThrow();
      v53 = OUTLINED_FUNCTION_15_1();
      v54(v53);
      v55 = OUTLINED_FUNCTION_66_2();
      v56(v55);
      v4 = (v0 + 296);
      v49 = v0 + 288;
      v2 = (v0 + 280);
      v48 = (v0 + 80);
      v47 = v71;
    }

    else
    {
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      OUTLINED_FUNCTION_13_61();
      sub_1C72FC014(v44, v45);
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_11_47();
      v46();
      swift_willThrow();
      v13 = (v0 + 296);
      v47 = (v0 + 288);
      v48 = (v0 + 280);
      v49 = v0 + 160;
    }

    v43 = *v13;
    v57 = *v48;
    v41 = *v47;
    (*(*v49 + 8))(*v4, *v2);
    v42 = v57;
  }

  else
  {
    v41 = *(v0 + 288);
    v42 = *(v0 + 280);
    v43 = *(v0 + 296);
  }

  (*(v41 + 8))(v43, v42);

  OUTLINED_FUNCTION_116();
  v59 = 0;
LABEL_11:

  return v58(v59);
}

uint64_t static TextSanitizer.validateCharactersWordByWord(_:storyGenerationCache:locales:useCaseIdentifier:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 88) = v3;
  *(v0 + 96) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  v7 = sub_1C754E13C();
  *(v0 + 104) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v0 + 112) = v8;
  *(v0 + 120) = OUTLINED_FUNCTION_77();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  OUTLINED_FUNCTION_76(v9);
  *(v0 + 128) = OUTLINED_FUNCTION_77();
  v10 = sub_1C754E15C();
  *(v0 + 136) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v0 + 144) = v11;
  *(v0 + 152) = OUTLINED_FUNCTION_77();
  *(v0 + 242) = *v2;
  v12 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1C72E4B98()
{
  v1 = v0[12];
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[12] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v53 = v0[12];
  v54 = v0[18];
  sub_1C75504FC();
  v9 = 0;
  v52 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = v0[19];
    v12 = v0[16];
    OUTLINED_FUNCTION_8_2();
    (*(v54 + 16))(v11, *(v53 + 48) + *(v54 + 72) * (v13 | (v9 << 6)));
    sub_1C754E14C();
    sub_1C754E12C();
    v14 = OUTLINED_FUNCTION_323();
    v15(v14);
    v16 = sub_1C754E07C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v16);
    v18 = v0[16];
    if (EnumTagSinglePayload == 1)
    {
      v19 = OUTLINED_FUNCTION_193_1();
      v20(v19);
      sub_1C72FBFC0(v18, &qword_1EC2177A8);
    }

    else
    {
      v21 = sub_1C754E05C();
      v51 = v22;
      v23 = OUTLINED_FUNCTION_193_1();
      v24(v23);
      (*(*(v16 - 8) + 8))(v18, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v52 = v27;
      }

      v25 = *(v52 + 16);
      if (v25 >= *(v52 + 24) >> 1)
      {
        sub_1C6FB1814();
        v52 = v28;
      }

      *(v52 + 16) = v25 + 1;
      v26 = v52 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v51;
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v30 = v0[9];
  v29 = v0[10];

  v31 = sub_1C706D154(v52);
  v0[20] = v31;
  v0[8] = MEMORY[0x1E69E7CD0];
  sub_1C6F65BE8(0, &qword_1EC21A5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A5A8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C755BAB0;
  v33 = *MEMORY[0x1E696A528];
  *(v32 + 32) = *MEMORY[0x1E696A528];
  v34 = v33;
  v35 = sub_1C72E58A0(v32, 0);
  v0[21] = v35;
  sub_1C6F9EDB0(v30, v29, v35);
  v36 = sub_1C755065C();
  v37 = [v36 length];

  v38 = swift_allocObject();
  v0[22] = v38;
  v38[2] = v30;
  v38[3] = v29;
  v38[4] = v0 + 8;
  v38[5] = v31;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1C72FB9B8;
  *(v39 + 24) = v38;
  v0[6] = sub_1C72FB9C4;
  v0[7] = v39;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C72E5EBC;
  v0[5] = &block_descriptor_28;
  v40 = _Block_copy(v0 + 2);
  sub_1C75504FC();
  sub_1C75504FC();

  [v35 enumerateTagsInRange:0 unit:v37 scheme:0 options:v34 usingBlock:{14, v40}];
  _Block_release(v40);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v41 = v0[8];
  v0[23] = v41;
  v42 = *(v41 + 32);
  *(v0 + 243) = v42;
  v43 = -1;
  v44 = -1 << v42;
  if (-(-1 << v42) < 64)
  {
    v43 = ~(-1 << -v44);
  }

  v45 = v43 & *(v41 + 56);
  sub_1C75504FC();
  if (v45)
  {
    v46 = 0;
LABEL_23:
    v0[24] = v45;
    v0[25] = v46;
    OUTLINED_FUNCTION_135_6((v46 << 10) | (16 * __clz(__rbit64(v45))));
    *(v44 + 240) = v48;
    sub_1C75504FC();
    v49 = swift_task_alloc();
    v0[28] = v49;
    *v49 = v0;
    OUTLINED_FUNCTION_63_18(v49);

    static TextSanitizer.validateCharactersWithCharacterSets(_:locales:useCaseIdentifier:)();
  }

  else
  {
    v47 = 0;
    while (((63 - v44) >> 6) - 1 != v47)
    {
      v46 = v47 + 1;
      v45 = *(v41 + 8 * v47++ + 64);
      if (v45)
      {
        goto LABEL_23;
      }
    }

    OUTLINED_FUNCTION_116();

    v50(1);
  }
}

uint64_t sub_1C72E51A0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 232) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 244) = v3 & 1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72E52B4()
{
  v25 = v1;
  if ((*(v1 + 244) & 1) == 0)
  {
    v0 = *(v1 + 232);
    static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(*(v1 + 208), *(v1 + 216), *(v1 + 160), (v1 + 241));
    if (!v0)
    {

      v18 = "unsupportedCharacters";
      switch(*(v1 + 241))
      {
        case 1:
        case 3:
          goto LABEL_23;
        case 2:
          v18 = "confidentlyNotSupported";
          goto LABEL_18;
        default:
LABEL_18:
          if ((v18 | 0x8000000000000000) == 0x80000001C7596500)
          {
            goto LABEL_2;
          }

LABEL_23:
          v20 = sub_1C7551DBC();

          if (v20)
          {
            goto LABEL_3;
          }

          v21 = *(v1 + 168);

          break;
      }

LABEL_25:

      OUTLINED_FUNCTION_116();
LABEL_26:
      OUTLINED_FUNCTION_20_3();

      __asm { BRAA            X2, X16 }
    }

    if (qword_1EDD0F478 == -1)
    {
LABEL_7:
      v4 = sub_1C754FF1C();
      __swift_project_value_buffer(v4, qword_1EDD28DD0);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      v5 = sub_1C754FEEC();
      v6 = sub_1C755119C();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v1 + 216);
      if (v7)
      {
        v9 = *(v1 + 208);
        OUTLINED_FUNCTION_13_3();
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v11 = swift_slowAlloc();
        v24 = v11;
        *v10 = 136642819;
        v12 = sub_1C6F765A4(v9, v8, &v24);

        *(v10 + 4) = v12;
        _os_log_impl(&dword_1C6F5C000, v5, v6, "[validateCharactersWordByWord] Failed to localize with the lexicon for the word: '%{sensitive}s'", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      v19 = *(v1 + 168);
      swift_willThrow();

      OUTLINED_FUNCTION_116();
      goto LABEL_26;
    }

LABEL_30:
    OUTLINED_FUNCTION_2_95();
    swift_once();
    goto LABEL_7;
  }

LABEL_2:

LABEL_3:
  v2 = *(v1 + 200);
  v3 = (*(v1 + 192) - 1) & *(v1 + 192);
  if (!v3)
  {
    while (1)
    {
      v13 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v13 >= (((1 << *(v1 + 243)) + 63) >> 6))
      {

        goto LABEL_25;
      }

      v3 = *(*(v1 + 184) + 8 * v13 + 56);
      ++v2;
      if (v3)
      {
        v2 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_13:
  *(v1 + 192) = v3;
  *(v1 + 200) = v2;
  OUTLINED_FUNCTION_135_6((v2 << 10) | (16 * __clz(__rbit64(v3))));
  *(v0 + 240) = v14;
  sub_1C75504FC();
  v15 = swift_task_alloc();
  *(v1 + 224) = v15;
  *v15 = v1;
  OUTLINED_FUNCTION_63_18();
  OUTLINED_FUNCTION_20_3();

  return static TextSanitizer.validateCharactersWithCharacterSets(_:locales:useCaseIdentifier:)();
}

void sub_1C72E56CC()
{
  if (qword_1EDD0F478 != -1)
  {
    OUTLINED_FUNCTION_2_95();
    swift_once();
  }

  v1 = sub_1C754FF1C();
  __swift_project_value_buffer(v1, qword_1EDD28DD0);
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C755119C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  if (v4)
  {
    v6 = v0[26];
    OUTLINED_FUNCTION_13_3();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136642819;
    v9 = sub_1C6F765A4(v6, v5, &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "[validateCharactersWordByWord] Failed to localize with character sets for the word: '%{sensitive}s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v10 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_20_3();

  __asm { BRAA            X2, X16 }
}