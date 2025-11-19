__n128 __swift_memcpy78_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_217E9A59C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 78))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 73);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_217E9A5F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 78) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 78) = 0;
    }

    if (a2)
    {
      *(result + 73) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClassicTagMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassicTagMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217E9A7C4()
{
  result = qword_27CBF54A8;
  if (!qword_27CBF54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF54A8);
  }

  return result;
}

unint64_t sub_217E9A81C()
{
  result = qword_27CBF54B0;
  if (!qword_27CBF54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF54B0);
  }

  return result;
}

unint64_t sub_217E9A874()
{
  result = qword_27CBF54B8;
  if (!qword_27CBF54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF54B8);
  }

  return result;
}

uint64_t sub_217E9A8C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746152776F6C66 && a2 == 0xE800000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5C9A0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974696C617571 && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79676F6C6F746E6FLL && a2 == 0xED00006C6576654CLL || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E6176656C6572 && a2 == 0xEF676E6974615265 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x646567616E616DLL && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x57646567616E616DLL && a2 == 0xED000072656E6E69 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C626170756F7267 && a2 == 0xE900000000000065 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5C9C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F5C9E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_217E9AC70()
{
  sub_217E9B52C(v0, &v2);
  if (v3 == 2)
  {
    return v2;
  }

  sub_217E9B564(&v2);
  return 0;
}

uint64_t sub_217E9ACBC()
{
  sub_217E9B52C(v0, &v2);
  if (v3 == 3)
  {
    return v2;
  }

  sub_217E9B564(&v2);
  return 0;
}

uint64_t sub_217E9AD08()
{
  sub_217E9B52C(v0, &v2);
  if (v3 == 4)
  {
    return v2;
  }

  sub_217E9B564(&v2);
  return 0;
}

uint64_t sub_217E9AD54()
{
  sub_217E9B52C(v0, &v2);
  if (v3 == 5)
  {
    return v2;
  }

  sub_217E9B564(&v2);
  return 0;
}

uint64_t sub_217E9ADA0()
{
  sub_217E9B52C(v0, &v2);
  if (v3 == 7)
  {
    return v2;
  }

  sub_217E9B564(&v2);
  return 0;
}

double sub_217E9ADEC@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 9)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9AE4C@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 10)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9AEAC@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 11)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9AF0C@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 16)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9AF6C@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 17)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9AFCC@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 12)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9B02C@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 14)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_217E9B08C()
{
  sub_217E9B52C(v0, &v2);
  if (v3 == 8)
  {
    return v2;
  }

  sub_217E9B564(&v2);
  return 0;
}

double sub_217E9B0D8@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 19)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9B138@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 20)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double sub_217E9B198@<D0>(_OWORD *a1@<X8>)
{
  sub_217E9B52C(v1, v4);
  if (v5 == 21)
  {
    sub_217E9B6D8(v4, a1);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_217E9B1F8()
{
  sub_217E9B52C(v0, v3);
  switch(v4)
  {
    case 1:
      sub_217E9B564(v3);
      result = 0x456E6F6973736573;
      break;
    case 2:
      sub_217E9B564(v3);
      result = 1702131053;
      break;
    case 3:
      sub_217E9B564(v3);
      result = 0x6574756D6E75;
      break;
    case 4:
      sub_217E9B564(v3);
      result = 0x776F6C6C6F66;
      break;
    case 5:
      sub_217E9B564(v3);
      result = 0x776F6C6C6F666E75;
      break;
    case 6:
      sub_217E9B564(v3);
      result = 0x65726F6E6769;
      break;
    case 7:
      sub_217E9B564(v3);
      result = 0x7765695664656566;
      break;
    case 8:
      sub_217E9B564(v3);
      result = 0x61547374726F7073;
      break;
    case 9:
      __swift_destroy_boxed_opaque_existential_2(v3);
      result = 0x53656C6369747261;
      break;
    case 10:
      sub_217E9B564(v3);
      result = 0x56656C6369747261;
      break;
    case 11:
      __swift_destroy_boxed_opaque_existential_2(v3);
      result = 0x52656C6369747261;
      break;
    case 12:
      sub_217E9B564(v3);
      result = 1701538156;
      break;
    case 13:
      sub_217E9B564(v3);
      result = 0x656B696C6E75;
      break;
    case 14:
      sub_217E9B564(v3);
      result = 0x656B696C736964;
      break;
    case 15:
      sub_217E9B564(v3);
      result = 0x6B696C7369646E75;
      break;
    case 16:
      sub_217E9B564(v3);
      result = 0x6572616873;
      break;
    case 17:
      sub_217E9B564(v3);
      result = 0x6465766173;
      break;
    case 18:
      sub_217E9B564(v3);
      result = 0x64657661736E75;
      break;
    case 19:
      sub_217E9B564(v3);
      v2 = 0x566B63617274;
      goto LABEL_24;
    case 20:
      sub_217E9B564(v3);
      v2 = 0x4C6B63617274;
LABEL_24:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7369000000000000;
      break;
    case 21:
      sub_217E9B564(v3);
      result = 0x6E69466B63617274;
      break;
    default:
      sub_217E9B564(v3);
      result = 0x536E6F6973736573;
      break;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_2(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_217E9B60C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEB && *(a1 + 57))
  {
    return (*a1 + 235);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0x16)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217E9B648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEA)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 235;
    if (a3 >= 0xEB)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEB)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_217E9B69C(uint64_t result, unsigned int a2)
{
  if (a2 > 0x15)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 22;
    LOBYTE(a2) = 22;
  }

  *(result + 56) = a2;
  return result;
}

_OWORD *sub_217E9B6D8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

XavierNews::ClassicHeadlineCohortData __swiftcall ClassicHeadlineCohortData.init(rawClicks:clicks:impressions:)(Swift::Double rawClicks, Swift::Double clicks, Swift::Double impressions)
{
  *v3 = rawClicks;
  v3[1] = clicks;
  v3[2] = impressions;
  result.impressions = impressions;
  result.clicks = clicks;
  result.rawClicks = rawClicks;
  return result;
}

uint64_t ClassicArticleData.articleID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ClassicArticleData.articleLength.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ClassicArticleData.halfLifeOverride.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t ClassicArticleData.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClassicArticleData() + 52);

  return sub_217E9B804(v3, a1);
}

uint64_t type metadata accessor for ClassicArticleData()
{
  result = qword_280C29538;
  if (!qword_280C29538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E9B804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClassicArticleData.publisherID.getter()
{
  v1 = (v0 + *(type metadata accessor for ClassicArticleData() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ClassicArticleData.sourceFeedID.getter()
{
  v1 = (v0 + *(type metadata accessor for ClassicArticleData() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ClassicArticleData.topicIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClassicArticleData() + 64));
}

uint64_t ClassicArticleData.cohorts.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClassicArticleData() + 68));
}

uint64_t ClassicArticleData.conversionData.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClassicArticleData() + 72));
}

uint64_t ClassicArticleData.tagMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClassicArticleData() + 92));
}

uint64_t ClassicArticleData.init(adCategories:articleID:articleLength:halfLife:halfLifeOverride:hasVideo:isANF:isPaid:isBundlePaid:publishDate:publisherID:sourceFeedID:topicIDs:cohorts:conversionData:isAudio:featured:isFeatureCandidate:isEvergreen:tagMetadata:reduceVisibility:webConverted:conditionalScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char a24, char a25, char a26, uint64_t a27, char a28, char a29)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a10;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7 & 1;
  *(a9 + 57) = a8;
  *(a9 + 58) = a12;
  *(a9 + 59) = a13;
  *(a9 + 60) = a14;
  v31 = type metadata accessor for ClassicArticleData();
  result = sub_217E9BC34(a15, a9 + v31[13]);
  v33 = (a9 + v31[14]);
  *v33 = a16;
  v33[1] = a17;
  v34 = (a9 + v31[15]);
  *v34 = a18;
  v34[1] = a19;
  *(a9 + v31[16]) = a20;
  *(a9 + v31[17]) = a21;
  *(a9 + v31[18]) = a22;
  *(a9 + v31[19]) = a23;
  *(a9 + v31[20]) = a24;
  *(a9 + v31[21]) = a25;
  *(a9 + v31[22]) = a26;
  *(a9 + v31[23]) = a27;
  *(a9 + v31[24]) = a28;
  *(a9 + v31[25]) = a29;
  *(a9 + v31[26]) = a11;
  return result;
}

uint64_t sub_217E9BC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ClassicArticleData.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_217F4AB24();
}

uint64_t static ClassicArticleData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_217F4B144();
  }
}

unint64_t sub_217E9BCDC(char a1)
{
  result = 0x6F67657461436461;
  switch(a1)
  {
    case 1:
      result = 0x49656C6369747261;
      break;
    case 2:
      result = 0x4C656C6369747261;
      break;
    case 3:
      result = 0x6566694C666C6168;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6F65646956736168;
      break;
    case 6:
      result = 0x464E417369;
      break;
    case 7:
      result = 0x646961507369;
      break;
    case 8:
      result = 0x656C646E75427369;
      break;
    case 9:
      result = 0x446873696C627570;
      break;
    case 10:
      result = 0x656873696C627570;
      break;
    case 11:
      result = 0x6546656372756F73;
      break;
    case 12:
      result = 0x7344496369706F74;
      break;
    case 13:
      result = 0x7374726F686F63;
      break;
    case 14:
      result = 0x69737265766E6F63;
      break;
    case 15:
      result = 0x6F696475417369;
      break;
    case 16:
      result = 0x6465727574616566;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x7267726576457369;
      break;
    case 19:
      result = 0x646174654D676174;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x65766E6F43626577;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217E9BF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217E9F47C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217E9BFCC(uint64_t a1)
{
  v2 = sub_217E9C6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217E9C008(uint64_t a1)
{
  v2 = sub_217E9C6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClassicArticleData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C8, &qword_217F4D508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v39 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E9C6F8();
  sub_217F4B294();
  v41 = *v3;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54D8, &qword_217F4D510);
  sub_217E9D6B8(&qword_27CBF54E0);
  sub_217F4B054();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  LOBYTE(v41) = 1;
  sub_217F4B084();
  v14 = v3[3];
  v15 = *(v3 + 32);
  LOBYTE(v41) = 2;
  sub_217F4B074();
  v16 = v3[5];
  LOBYTE(v41) = 3;
  sub_217F4B0A4();
  v17 = v3[6];
  v18 = *(v3 + 56);
  LOBYTE(v41) = 4;
  sub_217F4B034();
  v19 = *(v3 + 57);
  LOBYTE(v41) = 5;
  sub_217F4B094();
  v20 = *(v3 + 58);
  LOBYTE(v41) = 6;
  sub_217F4B024();
  v21 = *(v3 + 59);
  LOBYTE(v41) = 7;
  sub_217F4B094();
  v22 = *(v3 + 60);
  LOBYTE(v41) = 8;
  sub_217F4B094();
  v39 = v6;
  v23 = type metadata accessor for ClassicArticleData();
  v24 = v23[13];
  LOBYTE(v41) = 9;
  sub_217F4A9F4();
  sub_217E9E70C(qword_280C28FC8, MEMORY[0x277CC9578]);
  sub_217F4B054();
  v25 = (v3 + v23[14]);
  v26 = *v25;
  v27 = v25[1];
  LOBYTE(v41) = 10;
  sub_217F4B084();
  v28 = (v3 + v23[15]);
  v29 = *v28;
  v30 = v28[1];
  LOBYTE(v41) = 11;
  sub_217F4B014();
  v41 = *(v3 + v23[16]);
  v40 = 12;
  sub_217F4B0C4();
  v41 = *(v3 + v23[17]);
  v40 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54E8, &qword_217F4D518);
  sub_217E9C74C();
  sub_217F4B0C4();
  v41 = *(v3 + v23[18]);
  v40 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5508, &qword_217F4D520);
  sub_217E9D838(&qword_27CBF5500, sub_217E9C860);
  sub_217F4B0C4();
  v31 = *(v3 + v23[19]);
  LOBYTE(v41) = 15;
  sub_217F4B094();
  v32 = *(v3 + v23[20]);
  LOBYTE(v41) = 16;
  sub_217F4B094();
  v33 = *(v3 + v23[21]);
  LOBYTE(v41) = 17;
  sub_217F4B094();
  v34 = *(v3 + v23[22]);
  LOBYTE(v41) = 18;
  sub_217F4B094();
  v41 = *(v3 + v23[23]);
  v40 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5518, &qword_217F4D528);
  sub_217E9C8B4(&qword_27CBF5520, sub_217E9C938);
  sub_217F4B0C4();
  v35 = *(v3 + v23[24]);
  LOBYTE(v41) = 20;
  sub_217F4B094();
  v36 = *(v3 + v23[25]);
  LOBYTE(v41) = 21;
  sub_217F4B094();
  v37 = *(v3 + v23[26]);
  LOBYTE(v41) = 22;
  sub_217F4B0A4();
  return (*(v39 + 8))(v10, v5);
}

unint64_t sub_217E9C6F8()
{
  result = qword_27CBF54D0;
  if (!qword_27CBF54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF54D0);
  }

  return result;
}

unint64_t sub_217E9C74C()
{
  result = qword_27CBF54F0;
  if (!qword_27CBF54F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54E8, &qword_217F4D518);
    sub_217E9C80C();
    sub_217E9D838(&qword_27CBF5500, sub_217E9C860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF54F0);
  }

  return result;
}

unint64_t sub_217E9C80C()
{
  result = qword_27CBF54F8;
  if (!qword_27CBF54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF54F8);
  }

  return result;
}

unint64_t sub_217E9C860()
{
  result = qword_27CBF5510;
  if (!qword_27CBF5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5510);
  }

  return result;
}

uint64_t sub_217E9C8B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5518, &qword_217F4D528);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217E9C938()
{
  result = qword_27CBF5528;
  if (!qword_27CBF5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5528);
  }

  return result;
}

uint64_t ClassicArticleData.hashValue.getter()
{
  sub_217F4B224();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t ClassicArticleData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v36 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5530, &qword_217F4D530);
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v42, v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ClassicArticleData();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_217E9C6F8();
  v41 = v13;
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v38 = v18;
  v39 = v9;
  v37 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54D8, &qword_217F4D510);
  v44 = 0;
  sub_217E9D6B8(&qword_27CBF5538);
  sub_217F4AF54();
  v21 = v38;
  *v38 = v45;
  LOBYTE(v45) = 1;
  *(v21 + 1) = sub_217F4AF84();
  *(v21 + 2) = v22;
  LOBYTE(v45) = 2;
  v36 = 0;
  *(v21 + 3) = sub_217F4AF74();
  v21[32] = v23 & 1;
  LOBYTE(v45) = 3;
  sub_217F4AFA4();
  *(v21 + 5) = v24;
  LOBYTE(v45) = 4;
  *(v21 + 6) = sub_217F4AF34();
  v21[56] = v25 & 1;
  LOBYTE(v45) = 5;
  v21[57] = sub_217F4AF94() & 1;
  LOBYTE(v45) = 6;
  v21[58] = sub_217F4AF24();
  LOBYTE(v45) = 7;
  v38[59] = sub_217F4AF94() & 1;
  LOBYTE(v45) = 8;
  v38[60] = sub_217F4AF94() & 1;
  sub_217F4A9F4();
  LOBYTE(v45) = 9;
  sub_217E9E70C(&qword_27CBF5220, MEMORY[0x277CC9578]);
  sub_217F4AF54();
  sub_217E9BC34(v8, &v38[v37[13]]);
  LOBYTE(v45) = 10;
  v26 = sub_217F4AF84();
  v27 = &v38[v37[14]];
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v45) = 11;
  v29 = sub_217F4AF14();
  v30 = &v38[v37[15]];
  *v30 = v29;
  v30[1] = v31;
  v44 = 12;
  sub_217F4AFC4();
  *&v38[v37[16]] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54E8, &qword_217F4D518);
  v44 = 13;
  sub_217E9D724();
  sub_217F4AFC4();
  *&v38[v37[17]] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5508, &qword_217F4D520);
  v44 = 14;
  sub_217E9D838(&qword_27CBF5550, sub_217E9D8BC);
  sub_217F4AFC4();
  *&v38[v37[18]] = v45;
  LOBYTE(v45) = 15;
  v38[v37[19]] = sub_217F4AF94() & 1;
  LOBYTE(v45) = 16;
  v38[v37[20]] = sub_217F4AF94() & 1;
  LOBYTE(v45) = 17;
  v38[v37[21]] = sub_217F4AF94() & 1;
  LOBYTE(v45) = 18;
  v38[v37[22]] = sub_217F4AF94() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5518, &qword_217F4D528);
  v44 = 19;
  sub_217E9C8B4(&qword_27CBF5560, sub_217E9D910);
  sub_217F4AFC4();
  *&v38[v37[23]] = v45;
  LOBYTE(v45) = 20;
  v38[v37[24]] = sub_217F4AF94() & 1;
  LOBYTE(v45) = 21;
  v38[v37[25]] = sub_217F4AF94() & 1;
  LOBYTE(v45) = 22;
  sub_217F4AFA4();
  v33 = v32;
  (*(v39 + 8))(v41, v42);
  v34 = v38;
  *&v38[v37[26]] = v33;
  sub_217E9D964(v34, v40);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_217E9D9C8(v34);
}

uint64_t sub_217E9D4F4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_217E9D524()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_217E9D580(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_217E9D5C4()
{
  sub_217F4B224();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E9D608()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_217F4AB24();
}

uint64_t sub_217E9D610()
{
  sub_217F4B224();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E9D650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E9D6B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54D8, &qword_217F4D510);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217E9D724()
{
  result = qword_27CBF5540;
  if (!qword_27CBF5540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54E8, &qword_217F4D518);
    sub_217E9D7E4();
    sub_217E9D838(&qword_27CBF5550, sub_217E9D8BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5540);
  }

  return result;
}

unint64_t sub_217E9D7E4()
{
  result = qword_27CBF5548;
  if (!qword_27CBF5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5548);
  }

  return result;
}

uint64_t sub_217E9D838(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5508, &qword_217F4D520);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217E9D8BC()
{
  result = qword_27CBF5558;
  if (!qword_27CBF5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5558);
  }

  return result;
}

unint64_t sub_217E9D910()
{
  result = qword_27CBF5568;
  if (!qword_27CBF5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5568);
  }

  return result;
}

uint64_t sub_217E9D964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassicArticleData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E9D9C8(uint64_t a1)
{
  v2 = type metadata accessor for ClassicArticleData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E9DA54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_217F4B144();
  }
}

uint64_t ClassicArticleData.debugDescription.getter()
{
  v1 = v0;
  sub_217F4ADD4();

  MEMORY[0x21CEAEAC0](*(v1 + 8), *(v1 + 16));
  MEMORY[0x21CEAEAC0](0x73696C627550202CLL, 0xEC00000020726568);
  v2 = type metadata accessor for ClassicArticleData();
  MEMORY[0x21CEAEAC0](*(v1 + *(v2 + 56)), *(v1 + *(v2 + 56) + 8));
  MEMORY[0x21CEAEAC0](0x736369706F54202CLL, 0xE900000000000020);
  v3 = MEMORY[0x21CEAEBA0](*(v0 + *(v2 + 64)), MEMORY[0x277D837D0]);
  MEMORY[0x21CEAEAC0](v3);

  return 0x20656C6369747241;
}

XavierNews::ClassicHeadlineCohortType_optional __swiftcall ClassicHeadlineCohortType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217F4AEE4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ClassicHeadlineCohortType.rawValue.getter()
{
  if (*v0)
  {
    return 1684627824;
  }

  else
  {
    return 1701147238;
  }
}

uint64_t sub_217E9DC10(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684627824;
  }

  else
  {
    v2 = 1701147238;
  }

  if (*a2)
  {
    v3 = 1684627824;
  }

  else
  {
    v3 = 1701147238;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_217F4B144();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_217E9DC88()
{
  v1 = *v0;
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217E9DCF0()
{
  *v0;
  sub_217F4AB24();
}

uint64_t sub_217E9DD3C()
{
  v1 = *v0;
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217E9DDA0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_217F4AEE4();

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

void sub_217E9DE00(uint64_t *a1@<X8>)
{
  v2 = 1701147238;
  if (*v1)
  {
    v2 = 1684627824;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_217E9DF20()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E9DF68()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E9DFAC()
{
  v1 = 0x736B63696C63;
  if (*v0 != 1)
  {
    v1 = 0x6973736572706D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B63696C43776172;
  }
}

uint64_t sub_217E9E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217E9FBC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217E9E050(uint64_t a1)
{
  v2 = sub_217E9E278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217E9E08C(uint64_t a1)
{
  v2 = sub_217E9E278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClassicHeadlineCohortData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5570, &qword_217F4D538);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E9E278();
  sub_217F4B294();
  v18 = 0;
  sub_217F4B0A4();
  if (!v2)
  {
    v17 = 1;
    sub_217F4B0A4();
    v16 = 2;
    sub_217F4B0A4();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_217E9E278()
{
  result = qword_27CBF5578;
  if (!qword_27CBF5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5578);
  }

  return result;
}

uint64_t ClassicHeadlineCohortData.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEAF1D0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x21CEAF1D0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x21CEAF1D0](*&v5);
}

uint64_t ClassicHeadlineCohortData.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_217F4B224();
  ClassicHeadlineCohortData.hash(into:)();
  return sub_217F4B254();
}

uint64_t ClassicHeadlineCohortData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5580, &qword_217F4D540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E9E278();
  sub_217F4B274();
  if (!v2)
  {
    v19[15] = 0;
    sub_217F4AFA4();
    v13 = v12;
    v19[14] = 1;
    sub_217F4AFA4();
    v16 = v15;
    v19[13] = 2;
    sub_217F4AFA4();
    v18 = v17;
    (*(v6 + 8))(v10, v5);
    *a2 = v13;
    a2[1] = v16;
    a2[2] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217E9E598()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_217F4B224();
  ClassicHeadlineCohortData.hash(into:)();
  return sub_217F4B254();
}

uint64_t sub_217E9E5F0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_217F4B224();
  ClassicHeadlineCohortData.hash(into:)();
  return sub_217F4B254();
}

uint64_t sub_217E9E640(uint64_t a1)
{
  *(a1 + 8) = sub_217E9E70C(&qword_280C29550, type metadata accessor for ClassicArticleData);
  result = sub_217E9E70C(&qword_280C29560, type metadata accessor for ClassicArticleData);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_217E9E70C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_217E9E758()
{
  result = qword_280C293C8;
  if (!qword_280C293C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C293C8);
  }

  return result;
}

unint64_t sub_217E9E7B0()
{
  result = qword_27CBF5588;
  if (!qword_27CBF5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5588);
  }

  return result;
}

void sub_217E9E980()
{
  sub_217E9EBD0();
  if (v0 <= 0x3F)
  {
    v1 = MEMORY[0x277D837D0];
    sub_217E9EC8C(319, &qword_280C29050, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_217E9EC8C(319, &qword_280C29060, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_217E9EC8C(319, &qword_280C29068, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_217E9EC34();
          if (v5 <= 0x3F)
          {
            sub_217E9EC8C(319, &qword_280C29080, v1, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_217E9EC8C(319, &qword_280C29078, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_217E9ECDC();
                if (v8 <= 0x3F)
                {
                  sub_217E9EDA8(319, &qword_280C29088);
                  if (v9 <= 0x3F)
                  {
                    sub_217E9EDA8(319, &qword_280C29090);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_217E9EBD0()
{
  if (!qword_280C29070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54D8, &qword_217F4D510);
    v0 = sub_217F4AD74();
    if (!v1)
    {
      atomic_store(v0, &qword_280C29070);
    }
  }
}

void sub_217E9EC34()
{
  if (!qword_280C29568[0])
  {
    sub_217F4A9F4();
    v0 = sub_217F4AD74();
    if (!v1)
    {
      atomic_store(v0, qword_280C29568);
    }
  }
}

void sub_217E9EC8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_217E9ECDC()
{
  if (!qword_280C29098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5508, &qword_217F4D520);
    sub_217E9ED54();
    v0 = sub_217F4AAB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C29098);
    }
  }
}

unint64_t sub_217E9ED54()
{
  result = qword_280C293D0[0];
  if (!qword_280C293D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C293D0);
  }

  return result;
}

void sub_217E9EDA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_217F4AAB4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClassicHeadlineCohortType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for ClassicHeadlineCohortType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClassicHeadlineCohortData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClassicHeadlineCohortData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ClassicHeadlineCohortData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassicHeadlineCohortData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClassicArticleData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassicArticleData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217E9F270()
{
  result = qword_27CBF5590;
  if (!qword_27CBF5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5590);
  }

  return result;
}

unint64_t sub_217E9F2C8()
{
  result = qword_27CBF5598;
  if (!qword_27CBF5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5598);
  }

  return result;
}

unint64_t sub_217E9F320()
{
  result = qword_27CBF55A0;
  if (!qword_27CBF55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55A0);
  }

  return result;
}

unint64_t sub_217E9F378()
{
  result = qword_27CBF55A8;
  if (!qword_27CBF55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55A8);
  }

  return result;
}

unint64_t sub_217E9F3D0()
{
  result = qword_27CBF55B0;
  if (!qword_27CBF55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55B0);
  }

  return result;
}

unint64_t sub_217E9F428()
{
  result = qword_27CBF55B8;
  if (!qword_27CBF55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55B8);
  }

  return result;
}

uint64_t sub_217E9F47C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000044 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C656C6369747261 && a2 == 0xED00006874676E65 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6566694C666C6168 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5CA00 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F65646956736168 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x464E417369 && a2 == 0xE500000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEC00000064696150 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_217F4B144() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xEB00000000444972 || (sub_217F4B144() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6546656372756F73 && a2 == 0xEC00000044496465 || (sub_217F4B144() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7344496369706F74 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7374726F686F63 && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00617461446E6FLL || (sub_217F4B144() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F696475417369 && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6465727574616566 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5C460 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x7267726576457369 && a2 == 0xEB000000006E6565 || (sub_217F4B144() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x646174654D676174 && a2 == 0xEB00000000617461 || (sub_217F4B144() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5CA20 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x65766E6F43626577 && a2 == 0xEC00000064657472 || (sub_217F4B144() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5CA40 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_217E9FBC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B63696C43776172 && a2 == 0xE900000000000073;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B63696C63 && a2 == 0xE600000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

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

unint64_t sub_217E9FCE8()
{
  result = qword_27CBF55C0;
  if (!qword_27CBF55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55C0);
  }

  return result;
}

uint64_t sub_217E9FDB0()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E9FE10()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E9FE84()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E9FF20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  if (qword_280C28E90 != -1)
  {
LABEL_67:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_217F4C8A0;
  v8 = a1[2];
  v86 = v8;
  v9 = sub_217F4B104();
  v11 = v10;
  v12 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v13 = sub_217E86438();
  *(v7 + 64) = v13;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v14 = MEMORY[0x21CEAEBA0](a4, &_s14descr2829CD401O17TagClusteringRuleON);
  *(v7 + 96) = v12;
  *(v7 + 104) = v13;
  v73 = v13;
  *(v7 + 72) = v14;
  *(v7 + 80) = v15;
  sub_217F4AD54();
  sub_217F4AA44();

  v74 = v8;
  if (v8)
  {
    v16 = 0;
    v75 = a1 + 4;
    v17 = a4 + 32;
    v18 = MEMORY[0x277D84F90];
    v78 = MEMORY[0x277D84F90];
    v72 = a4;
    while (1)
    {
      v21 = &v75[6 * v16];
      v79 = *v21;
      v22 = v21[2];
      v23 = v21[3];
      a1 = v21[4];
      v83 = *(v21 + 40);
      v81 = v21[1];
      if ((a3 & 1) == 0 && *(v18 + 2) >= a2)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_217E8D604(0, *(v78 + 2) + 1, 1, v78);
        }

        v43 = *(v78 + 2);
        v42 = *(v78 + 3);
        if (v43 >= v42 >> 1)
        {
          v78 = sub_217E8D604((v42 > 1), v43 + 1, 1, v78);
        }

        *(v78 + 2) = v43 + 1;
        v44 = &v78[48 * v43];
        *(v44 + 4) = v79;
        *(v44 + 5) = v81;
        *(v44 + 6) = v22;
        *(v44 + 7) = v23;
        *(v44 + 8) = a1;
        v44[72] = v83;
        v44[73] = 1;
        goto LABEL_5;
      }

      v77 = v16;
      v24 = *(a4 + 16);
      if (!v24)
      {
LABEL_33:
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_217E8D604(0, *(v18 + 2) + 1, 1, v18);
        }

        a4 = v72;
        v16 = v77;
        v41 = *(v18 + 2);
        v40 = *(v18 + 3);
        if (v41 >= v40 >> 1)
        {
          v18 = sub_217E8D604((v40 > 1), v41 + 1, 1, v18);
        }

        *(v18 + 2) = v41 + 1;
        v19 = &v18[48 * v41];
        *(v19 + 4) = v79;
        *(v19 + 5) = v81;
        *(v19 + 6) = v22;
        *(v19 + 7) = v23;
        *(v19 + 8) = a1;
        *(v19 + 36) = v83;
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_217F4BC20;

        *(v20 + 56) = MEMORY[0x277D837D0];
        *(v20 + 64) = v73;
        *(v20 + 32) = v79;
        *(v20 + 40) = v81;
        sub_217F4AD54();
        sub_217F4AA44();

        goto LABEL_5;
      }

      v25 = 0;
      v80 = v18 + 72;
      v82 = v18 + 64;
      while (1)
      {
        v26 = (v17 + 16 * v25);
        v27 = *v26;
        if (v26[1])
        {
          break;
        }

        if (v83 == 1)
        {
          v34 = 0;
          v35 = *(v18 + 2) + 1;
          v36 = v80;
          while (--v35)
          {
            v37 = *v36;
            v36 += 48;
            v38 = v37 == 1;
            v32 = __OFADD__(v34, v38);
            v34 += v38;
            if (v32)
            {
              __break(1u);
              goto LABEL_67;
            }
          }

          if (v34 >= v27)
          {
            v39 = 0;
            goto LABEL_43;
          }
        }

LABEL_11:
        if (++v25 == v24)
        {
          goto LABEL_33;
        }
      }

      if (!a1)
      {
        goto LABEL_11;
      }

      a4 = v17;
      v28 = 0;
      v29 = v18;
      v18 = (*(v18 + 2) + 1);
      v30 = v82;
      while (--v18)
      {
        if (*v30)
        {
          if (*(v30 - 1) == v23 && *v30 == a1)
          {
            v31 = 1;
          }

          else
          {
            v31 = sub_217F4B144() & 1;
          }
        }

        else
        {
          v31 = 0;
        }

        v30 += 48;
        v32 = __OFADD__(v28, v31);
        v28 += v31;
        if (v32)
        {
          __break(1u);
          goto LABEL_65;
        }
      }

      v18 = v29;
      v17 = a4;
      if (v28 < v27)
      {
        goto LABEL_11;
      }

      v39 = 1;
LABEL_43:
      sub_217EA0884();
      v45 = swift_allocError();
      *v46 = v39;
      swift_willThrow();
      v86 = v45;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CEAF520](v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5268, &unk_217F4BF20);
      a4 = v72;
      if (swift_dynamicCast())
      {
        MEMORY[0x21CEAF510](v45);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_217F4BC20;

        *(v47 + 56) = MEMORY[0x277D837D0];
        *(v47 + 64) = v73;
        *(v47 + 32) = v79;
        *(v47 + 40) = v81;
        sub_217F4AD54();
        if (v84)
        {
          sub_217F4AA44();
          v48 = 3;
        }

        else
        {
          v48 = 2;
          sub_217F4AA44();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_217E8D604(0, *(v78 + 2) + 1, 1, v78);
        }

        v54 = *(v78 + 2);
        v53 = *(v78 + 3);
        if (v54 >= v53 >> 1)
        {
          v78 = sub_217E8D604((v53 > 1), v54 + 1, 1, v78);
        }

        *(v78 + 2) = v54 + 1;
        v55 = &v78[48 * v54];
        *(v55 + 4) = v79;
        *(v55 + 5) = v81;
        *(v55 + 6) = v22;
        *(v55 + 7) = v23;
        *(v55 + 8) = a1;
        v55[72] = v83;
        v55[73] = v48;
        MEMORY[0x21CEAF510](v86);
        v16 = v77;
      }

      else
      {
        MEMORY[0x21CEAF510](v45);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_217F4BC20;

        *(v49 + 56) = MEMORY[0x277D837D0];
        *(v49 + 64) = v73;
        *(v49 + 32) = v79;
        *(v49 + 40) = v81;
        sub_217F4AD54();
        sub_217F4AA44();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_217E8D604(0, *(v78 + 2) + 1, 1, v78);
        }

        v51 = *(v78 + 2);
        v50 = *(v78 + 3);
        if (v51 >= v50 >> 1)
        {
          v78 = sub_217E8D604((v50 > 1), v51 + 1, 1, v78);
        }

        MEMORY[0x21CEAF510](v45);
        *(v78 + 2) = v51 + 1;
        v52 = &v78[48 * v51];
        *(v52 + 4) = v79;
        *(v52 + 5) = v81;
        *(v52 + 6) = v22;
        *(v52 + 7) = v23;
        *(v52 + 8) = a1;
        v52[72] = v83;
        v52[73] = 4;
        v16 = v77;
      }

LABEL_5:
      if (++v16 == v74)
      {
        goto LABEL_58;
      }
    }
  }

  v78 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
LABEL_58:
  a1 = swift_allocObject();
  *(a1 + 1) = xmmword_217F4BC20;
  v86 = 0;
  v87 = 0xE000000000000000;
  v56 = *(v18 + 2);
  if (v56)
  {
    v85 = MEMORY[0x277D84F90];

    sub_217EA0864(0, v56, 0);
    v57 = v85;
    v58 = v18;
    v59 = (v18 + 40);
    do
    {
      v61 = *(v59 - 1);
      v60 = *v59;
      v62 = *(v85 + 16);
      v63 = *(v85 + 24);

      if (v62 >= v63 >> 1)
      {
        sub_217EA0864((v63 > 1), v62 + 1, 1);
      }

      *(v85 + 16) = v62 + 1;
      v64 = v85 + 16 * v62;
      *(v64 + 32) = v61;
      *(v64 + 40) = v60;
      v59 += 6;
      --v56;
    }

    while (v56);
    v18 = v58;
  }

  else
  {
LABEL_65:

    v57 = MEMORY[0x277D84F90];
  }

  v65 = MEMORY[0x277D837D0];
  v66 = MEMORY[0x21CEAEBA0](v57, MEMORY[0x277D837D0]);
  v68 = v67;

  MEMORY[0x21CEAEAC0](v66, v68);

  a1[7] = v65;
  a1[8] = v73;
  a1[4] = v86;
  a1[5] = v87;
  sub_217F4AD54();
  sub_217F4AA44();

  *a5 = v18;
  a5[1] = v78;
  return result;
}

void *sub_217EA0844(void *a1, int64_t a2, char a3)
{
  result = sub_217EA0DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0864(char *a1, int64_t a2, char a3)
{
  result = sub_217EA10E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_217EA0884()
{
  result = qword_27CBF55C8;
  if (!qword_27CBF55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55C8);
  }

  return result;
}

unint64_t sub_217EA08DC()
{
  result = qword_27CBF55D0;
  if (!qword_27CBF55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF55D0);
  }

  return result;
}

uint64_t _s14descr2829CD401O18TagClusteringErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t _s14descr2829CD401O18TagClusteringErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t _s14descr2829CD401O17TagClusteringRuleOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s14descr2829CD401O17TagClusteringRuleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t _s14descr2829CD401O18SportsTagClustererVwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s14descr2829CD401O18SportsTagClustererVwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

char *sub_217EA0C40(char *a1, int64_t a2, char a3)
{
  result = sub_217EA11EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0C60(void *a1, int64_t a2, char a3)
{
  result = sub_217EA12F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0C80(char *a1, int64_t a2, char a3)
{
  result = sub_217EA142C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0CA0(char *a1, int64_t a2, char a3)
{
  result = sub_217EA1548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0CC0(char *a1, int64_t a2, char a3)
{
  result = sub_217EA164C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0CE0(char *a1, int64_t a2, char a3)
{
  result = sub_217EA176C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0D00(char *a1, int64_t a2, char a3)
{
  result = sub_217EA1888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0D20(char *a1, int64_t a2, char a3)
{
  result = sub_217EA197C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0D40(void *a1, int64_t a2, char a3)
{
  result = sub_217EA1A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0D60(void *a1, int64_t a2, char a3)
{
  result = sub_217EA1D2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217EA0D80(char *a1, int64_t a2, char a3)
{
  result = sub_217EA1E74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0DA0(void *a1, int64_t a2, char a3)
{
  result = sub_217EA1F98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217EA0DC0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55E8, &qword_217F4DC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55F0, &qword_217F4DCA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_217EA0F08(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5468, &unk_217F4DD10);
  v10 = *(type metadata accessor for ReadonlyAggregate(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  v15 = *(type metadata accessor for ReadonlyAggregate(0) - 8);
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

char *sub_217EA10E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217EA11EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5630, &qword_217F4DCF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

void *sub_217EA12F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5638, &qword_217F4DD00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5640, &qword_217F4DD08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217EA142C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5428, &qword_217F4DCF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_217EA1548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5360, &qword_217F4CBC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_217EA164C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5620, &qword_217F4DCE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_217EA176C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53E0, &qword_217F4CC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217EA1888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5628, &qword_217F4DCE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_217EA197C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53D8, &qword_217F4CC48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA1A9C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5610, &qword_217F4DCD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5618, &qword_217F4DCD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA1BE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53E8, &qword_217F4CC58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5608, &unk_217F4DCC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA1D2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55F8, &qword_217F4DCA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5600, &unk_217F4DCB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217EA1E74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5348, &unk_217F4CBB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217EA1F98(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55D8, &qword_217F4DC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF55E0, &qword_217F4DC90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_217EA2134())(double *)
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217F4DD20;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_217EA339C;
  *(v1 + 24) = v0;
  return sub_217EA33D0;
}

uint64_t (*sub_217EA2210())(double *a1)
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217F4DD30;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_217EA3398;
  *(v1 + 24) = v0;
  return sub_217EA332C;
}

uint64_t (*sub_217EA22D4(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_217EA23FC;
}

uint64_t sub_217EA2328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 40))(a2, a3);
  swift_getAssociatedTypeWitness();
  sub_217F4AC94();
  swift_getWitnessTable();
  v3 = sub_217F4AB44();

  return v3 & 1;
}

uint64_t (*sub_217EA2404(uint64_t a1))(void *a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_217EA22D4(v1, v2);
  v4 = v3;
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = sub_217EA23FC;
  v5[5] = v4;
  return sub_217EA32FC;
}

BOOL sub_217EA254C(uint64_t a1)
{
  v1 = *a1 >= 0.0;
  if (*a1 > 1.0)
  {
    v1 = 0;
  }

  return *(a1 + 8) >= 0 && v1;
}

uint64_t sub_217EA25AC(float64x2_t *a1)
{
  v1 = a1[1];
  __asm { FMOV            V2.2D, #1.0 }

  LODWORD(_Q2.f64[0]) = vuzp1_s8(vmovn_s32(vuzp1q_s32(vcgeq_f64(_Q2, *a1), vcgeq_f64(_Q2, v1))), *&a1->f64[0]).u32[0];
  v7 = vmovn_s32(vuzp1q_s32(vcgezq_f64(*a1), vcgezq_f64(v1)));
  HIDWORD(_Q2.f64[0]) = vuzp1_s8(v7, v7).i32[1];
  return vminv_u8(vcltz_s8(vshl_n_s8(*&_Q2.f64[0], 7uLL))) & 1;
}

uint64_t sub_217EA2668(uint64_t result)
{
  v1 = 0;
  v2 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if ((*(*(result + 48) + ((v7 << 9) | (8 * v8))) & 0x8000000000000000) != 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  v9 = 0;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(result + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = v9;
LABEL_21:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    if (*(*(result + 56) + ((v14 << 9) | (8 * v15))) < 0.0)
    {
      return 0;
    }
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      return 1;
    }

    v12 = *(v2 + 8 * v14);
    ++v9;
    if (v12)
    {
      v9 = v14;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

BOOL sub_217EA2804(double *a1)
{
  result = 0;
  if (*a1 >= 0.0 && a1[1] >= 0.0 && a1[2] >= 0.0)
  {
    return a1[3] >= 0.0;
  }

  return result;
}

uint64_t sub_217EA290C(uint64_t a1, uint64_t a2)
{
  v5 = a2 + 16;
  v4 = *(a2 + 16);
  v3 = *(v5 + 8);
  v6 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

unint64_t sub_217EA298C()
{
  result = qword_27CBF5648;
  if (!qword_27CBF5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5648);
  }

  return result;
}

unint64_t sub_217EA29E4()
{
  result = qword_280C27A38;
  if (!qword_280C27A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27A38);
  }

  return result;
}

unint64_t sub_217EA2A3C()
{
  result = qword_27CBF5650;
  if (!qword_27CBF5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5650);
  }

  return result;
}

unint64_t sub_217EA2A94()
{
  result = qword_27CBF5658;
  if (!qword_27CBF5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5658);
  }

  return result;
}

unint64_t sub_217EA2AEC()
{
  result = qword_280C27E40;
  if (!qword_280C27E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27E40);
  }

  return result;
}

unint64_t sub_217EA2B44()
{
  result = qword_27CBF5660;
  if (!qword_27CBF5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5660);
  }

  return result;
}

unint64_t sub_217EA2B9C()
{
  result = qword_27CBF5668;
  if (!qword_27CBF5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5668);
  }

  return result;
}

unint64_t sub_217EA2BF4()
{
  result = qword_27CBF5670;
  if (!qword_27CBF5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5670);
  }

  return result;
}

unint64_t sub_217EA2C4C()
{
  result = qword_27CBF5678;
  if (!qword_27CBF5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5678);
  }

  return result;
}

unint64_t sub_217EA2CA4()
{
  result = qword_27CBF5680;
  if (!qword_27CBF5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5680);
  }

  return result;
}

unint64_t sub_217EA2CFC()
{
  result = qword_27CBF5688;
  if (!qword_27CBF5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5688);
  }

  return result;
}

unint64_t sub_217EA2D54()
{
  result = qword_27CBF5690;
  if (!qword_27CBF5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5690);
  }

  return result;
}

uint64_t sub_217EA2E30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF56A0, qword_217F4DE10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217EA2EA4()
{
  result = qword_27CBF56B0;
  if (!qword_27CBF56B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF56A0, qword_217F4DE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56B0);
  }

  return result;
}

unint64_t sub_217EA2F24()
{
  result = qword_27CBF56B8;
  if (!qword_27CBF56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56B8);
  }

  return result;
}

unint64_t sub_217EA2F7C()
{
  result = qword_27CBF56C0;
  if (!qword_27CBF56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56C0);
  }

  return result;
}

unint64_t sub_217EA2FD4()
{
  result = qword_27CBF56C8;
  if (!qword_27CBF56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56C8);
  }

  return result;
}

unint64_t sub_217EA302C()
{
  result = qword_27CBF56D0;
  if (!qword_27CBF56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56D0);
  }

  return result;
}

unint64_t sub_217EA3084()
{
  result = qword_27CBF56D8;
  if (!qword_27CBF56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56D8);
  }

  return result;
}

unint64_t sub_217EA30DC()
{
  result = qword_27CBF56E0[0];
  if (!qword_27CBF56E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF56E0);
  }

  return result;
}

uint64_t sub_217EA3220(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_217EA3270(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_217EA32FC(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1) & 1;
}

uint64_t sub_217EA332C(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1) & 1;
}

uint64_t GroupableHeadline.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GroupableHeadline.publisherID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GroupableHeadline.thumbnailPerceptualHash.getter()
{
  v1 = *(v0 + 72);
  sub_217EA34A8(v1, *(v0 + 80));
  return v1;
}

uint64_t sub_217EA34A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217EA34BC(a1, a2);
  }

  return a1;
}

uint64_t sub_217EA34BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t GroupableHeadline.init(identifier:publisherID:topicIDs:managedTopicIDs:managedWinnerTopicIDs:score:accessible:bundlePaid:aigc:evergreen:thumbnailPerceptualHash:groupingReason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11, char a12, char a13, uint64_t a14, uint64_t a15, char *a16)
{
  v16 = *a16;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a10;
  *(a9 + 64) = a8;
  *(a9 + 65) = a13;
  *(a9 + 66) = a11;
  *(a9 + 67) = a12;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 88) = v16;
  return result;
}

double GroupableHeadline.computedScore(tagID:config:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 928);
  v7 = *(a3 + 936);
  v8 = *(v3 + 40);
  v9 = *(v3 + 56);
  if ((sub_217EA3608(a1, a2, *(v3 + 48)) & 1) == 0)
  {
    if (sub_217EA3608(a1, a2, v8))
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }
  }

  return v9 * v7;
}

uint64_t sub_217EA3608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_217F4B224();
  sub_217F4AB24();
  v7 = sub_217F4B254();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_217F4B144() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static GroupableHeadline.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217F4B144();
  }
}

uint64_t sub_217EA3730(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217F4B144();
  }
}

uint64_t GroupableHeadline.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_217F4AB24();
}

uint64_t GroupableHeadline.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217EA37B4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217EA3800()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_217F4AB24();
}

uint64_t sub_217EA3808()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t GroupableHeadline.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[7];
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](2114633, 0xE300000000000000);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x736369706F54202CLL, 0xE900000000000020);
  v5 = sub_217F4ACC4();
  MEMORY[0x21CEAEAC0](v5);

  MEMORY[0x21CEAEAC0](0x2065726F6353202CLL, 0xE800000000000000);
  sub_217F4ACB4();
  return 0;
}

unint64_t sub_217EA395C()
{
  result = qword_280C28820;
  if (!qword_280C28820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28820);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_217EA3A1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217EA3A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217EA3ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  sub_217EA0C40(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_217F4AD84();
  v7 = result;
  v8 = 0;
  v26 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v24 = *v11;
    v25 = *(*(a1 + 56) + 16 * v7);
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_217EA0C40((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    v15 = v27 + 32 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    *(v15 + 48) = v25;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_217EB9F3C(v7, v26, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_217EB9F3C(v7, v26, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217EA3D24()
{
  if (*v0)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

uint64_t sub_217EA3D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217EA3E2C(uint64_t a1)
{
  v2 = sub_217EA4364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA3E68(uint64_t a1)
{
  v2 = sub_217EA4364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA3EBC(uint64_t a1)
{
  v2 = sub_217EA440C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA3EF8(uint64_t a1)
{
  v2 = sub_217EA440C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA3F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000217F5CFE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217F4B144();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217EA3FF8(uint64_t a1)
{
  v2 = sub_217EA43B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA4034(uint64_t a1)
{
  v2 = sub_217EA43B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Mode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5768, &qword_217F4E260);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v25 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5770, &qword_217F4E268);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5778, &qword_217F4E270);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EA4364();
  sub_217F4B294();
  if (v18 == 2)
  {
    v28 = 0;
    sub_217EA440C();
    sub_217F4B004();
    (*(v23 + 8))(v11, v24);
  }

  else
  {
    v29 = 1;
    sub_217EA43B8();
    v21 = v25;
    sub_217F4B004();
    v22 = v27;
    sub_217F4B094();
    (*(v26 + 8))(v21, v22);
  }

  return (*(v13 + 8))(v17, v12);
}

unint64_t sub_217EA4364()
{
  result = qword_280C28E60;
  if (!qword_280C28E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E60);
  }

  return result;
}

unint64_t sub_217EA43B8()
{
  result = qword_280C28E38;
  if (!qword_280C28E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E38);
  }

  return result;
}

unint64_t sub_217EA440C()
{
  result = qword_27CBF5780;
  if (!qword_27CBF5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5780);
  }

  return result;
}

uint64_t ClusteringJournal.Mode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5788, &qword_217F4E278);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5790, &qword_217F4E280);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5798, &qword_217F4E288);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v35 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_217EA4364();
  v20 = v39;
  sub_217F4B274();
  if (!v20)
  {
    v39 = v7;
    v21 = v13;
    v22 = v38;
    v23 = sub_217F4AFE4();
    v24 = v12;
    if (*(v23 + 16) == 1)
    {
      v25 = v13;
      if (*(v23 + 32))
      {
        v42 = 1;
        sub_217EA43B8();
        v26 = v24;
        sub_217F4AEF4();
        v32 = v6;
        v33 = v35;
        v34 = sub_217F4AF94();
        (*(v37 + 8))(v32, v33);
        (*(v25 + 8))(v17, v26);
        swift_unknownObjectRelease();
        *v22 = v34 & 1;
      }

      else
      {
        v41 = 0;
        sub_217EA440C();
        sub_217F4AEF4();
        (*(v36 + 8))(v11, v39);
        (*(v13 + 8))(v17, v24);
        swift_unknownObjectRelease();
        *v22 = 2;
      }
    }

    else
    {
      v27 = sub_217F4AE04();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290) + 48);
      *v29 = &type metadata for ClusteringJournal.Mode;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v21 + 8))(v17, v12);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_217EA4904()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClusteringJournal.Inventory.Item.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_217EA49A8()
{
  v1 = 0x656E696C64616568;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449676174;
  }
}

uint64_t sub_217EA4A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB43B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EA4A3C(uint64_t a1)
{
  v2 = sub_217EA4C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA4A78(uint64_t a1)
{
  v2 = sub_217EA4C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Inventory.Item.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57A0, &qword_217F4E298);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EA4C68();
  sub_217F4B294();
  v18 = 0;
  v13 = v15[3];
  sub_217F4B084();
  if (v13)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v17 = 1;
  sub_217F4B0B4();
  v16 = 2;
  sub_217F4B0B4();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_217EA4C68()
{
  result = qword_280C28A00;
  if (!qword_280C28A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28A00);
  }

  return result;
}

uint64_t ClusteringJournal.Inventory.Item.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57A8, &unk_217F4E2A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EA4C68();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_217F4AF84();
  v14 = v13;
  v15 = v12;
  v21 = 1;
  v19 = sub_217F4AFB4();
  v20 = 2;
  v17 = sub_217F4AFB4();
  (*(v6 + 8))(v10, v5);
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v19;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217EA4F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v63 = MEMORY[0x277D84F90];
    sub_217EA0864(0, v4, 0);
    v5 = v63;
    v6 = (a2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v63 + 16);
      v10 = *(v63 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_217EA0864((v10 > 1), v9 + 1, 1);
      }

      *(v63 + 16) = v9 + 1;
      v11 = v63 + 16 * v9;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 4;
      --v4;
    }

    while (v4);

    v12 = a1;
  }

  else
  {
    v12 = a1;

    v5 = MEMORY[0x277D84F90];
  }

  v13 = sub_217E97288(v5);

  v53 = *(v12 + 16);
  if (!v53)
  {

    v17 = MEMORY[0x277D84F98];
    goto LABEL_41;
  }

  v15 = 0;
  v52 = v12 + 32;
  v16 = v13 + 56;
  v17 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v15 >= *(v12 + 16))
    {
      goto LABEL_45;
    }

    v57 = v17;
    v56 = v15;
    v18 = v52 + 96 * v15;
    v19 = *(v18 + 24);
    v20 = *(v18 + 32);
    v22 = *(v18 + 40);
    v21 = *(v18 + 48);
    v59 = *(v18 + 64);
    v55 = *(v18 + 66);
    v23 = *(v18 + 80);
    v58 = *(v18 + 72);
    v25 = *(v18 + 8);
    v24 = *(v18 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217F4BC20;
    *(inited + 32) = v24;
    *(inited + 40) = v19;
    v27 = *(v20 + 16);

    v61 = v21;

    sub_217EA34A8(v58, v23);

    v64 = sub_217E8DB18(0, v27 + 1, 0, MEMORY[0x277D84F90]);

    sub_217E80724(v28);
    sub_217E80630(inited);
    v29 = v64;
    v62 = *(v64 + 2);
    if (v62)
    {
      break;
    }

    v17 = v57;
LABEL_11:
    v12 = a1;
    v15 = v56 + 1;
    result = sub_217EB9ED4(v58, v23);
    if (v56 + 1 == v53)
    {

LABEL_41:
      v50 = sub_217EA3ACC(v17);

      *a3 = v50;
      return result;
    }
  }

  v30 = 0;
  v60 = (v59 ^ 1) & v55;
  v31 = v25;
  v17 = v57;
  result = v61;
  while (v30 < *(v29 + 2))
  {
    if (!*(v13 + 16))
    {
      goto LABEL_17;
    }

    v32 = v31;
    v33 = &v64[16 * v30 + 32];
    v34 = *v33;
    v35 = v33[1];
    v36 = *(v13 + 40);
    sub_217F4B224();

    sub_217F4AB24();
    v37 = sub_217F4B254();
    v38 = -1 << *(v13 + 32);
    v39 = v37 & ~v38;
    if ((*(v16 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
    {
      v40 = ~v38;
      while (1)
      {
        v41 = (*(v13 + 48) + 16 * v39);
        result = *v41;
        if (*v41 == v34 && v41[1] == v35)
        {
          break;
        }

        result = sub_217F4B144();
        if (result)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v16 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v43 = *(v17 + 16);
      if (v43)
      {
        result = sub_217E8E88C(v34, v35);
        if (v44)
        {
          v45 = v17;
          v46 = (*(v17 + 56) + 16 * result);
          v47 = *v46 + 1;
          if (__OFADD__(*v46, 1))
          {
            goto LABEL_44;
          }

          v43 = v46[1];
          goto LABEL_36;
        }

        v45 = v17;
        v43 = 0;
      }

      else
      {
        v45 = v17;
      }

      v47 = 1;
LABEL_36:
      v48 = v43 + v60;
      if (__OFADD__(v43, v60))
      {
        goto LABEL_43;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_217F19B9C(v47, v48, v34, v35, isUniquelyReferenced_nonNull_native);

      v17 = v45;
      goto LABEL_16;
    }

LABEL_15:

LABEL_16:
    v31 = v32;
    v29 = v64;
    result = v61;
LABEL_17:
    if (++v30 == v62)
    {

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t ClusteringJournal.Inventory.data.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_217EA0C60(0, v2, 0);
    v3 = v15;
    v4 = (v1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v15 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_217EA0C60((v9 > 1), v10 + 1, 1);
        v3 = v15;
      }

      v4 += 4;
      *(v3 + 16) = v10 + 1;
      v11 = (v3 + 32 * v10);
      v11[4] = v6;
      v11[5] = v5;
      v11[6] = v7;
      v11[7] = v8;
      --v2;
    }

    while (v2);
  }

  else if (!*(MEMORY[0x277D84F90] + 16))
  {
    v12 = MEMORY[0x277D84F98];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5438, &qword_217F4CCA8);
  v12 = sub_217F4AED4();
LABEL_9:
  v15 = v12;

  sub_217EB23A4(v13, 1, &v15);

  return v15;
}

uint64_t sub_217EA5564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EA55F4(uint64_t a1)
{
  v2 = sub_217EB273C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA5630(uint64_t a1)
{
  v2 = sub_217EB273C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Inventory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57B0, &qword_217F4E2B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB273C();

  sub_217F4B294();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57B8, &qword_217F4E2B8);
  sub_217EB2790();
  sub_217F4B0C4();

  return (*(v4 + 8))(v8, v3);
}

uint64_t ClusteringJournal.Inventory.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57C0, &qword_217F4E2C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB273C();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57B8, &qword_217F4E2B8);
    sub_217EB2868();
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ClusteringJournal.Result.Article.articleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_217EA59C8()
{
  if (*v0)
  {
    result = 0x65726F6373;
  }

  else
  {
    result = 0x49656C6369747261;
  }

  *v0;
  return result;
}

uint64_t sub_217EA5A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217EA5AF0(uint64_t a1)
{
  v2 = sub_217EB2940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA5B2C(uint64_t a1)
{
  v2 = sub_217EB2940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.Article.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57D8, &qword_217F4E2C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB2940();
  sub_217F4B294();
  v17 = 0;
  v13 = v15;
  sub_217F4B084();
  if (!v13)
  {
    v16 = 1;
    sub_217F4B0A4();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t ClusteringJournal.Result.Article.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57E0, &qword_217F4E2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB2940();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19[15] = 0;
  v12 = sub_217F4AF84();
  v14 = v13;
  v15 = v12;
  v19[14] = 1;
  sub_217F4AFA4();
  v17 = v16;
  (*(v6 + 8))(v10, v5);
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ClusteringJournal.Result.Requirements.bundlePaidQuotas.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_217EB2994(v7, &v6);
}

unint64_t sub_217EA5F70()
{
  v1 = 0x7473756C436E696DLL;
  v2 = 0x7473756C4378616DLL;
  if (*v0 != 2)
  {
    v2 = 0x73656C7572;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_217EA5FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB44D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EA6028(uint64_t a1)
{
  v2 = sub_217EB29F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA6064(uint64_t a1)
{
  v2 = sub_217EB29F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.Requirements.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57E8, &qword_217F4E2D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v16 - v8;
  v10 = v1[1];
  v28 = *v1;
  v29 = v10;
  v11 = v1[3];
  v30 = v1[2];
  v31 = v11;
  v12 = *(v1 + 9);
  v32 = *(v1 + 8);
  v16[1] = v12;
  v16[0] = *(v1 + 10);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB2994(&v28, &v24);
  sub_217EB29F0();
  sub_217F4B294();
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v23 = 0;
  sub_217EA29E4();
  sub_217F4B0C4();
  if (v2)
  {
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v22 = v27;
    sub_217EB2A44(&v19);
  }

  else
  {
    v14 = v16[0];
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v22 = v27;
    sub_217EB2A44(&v19);
    LOBYTE(v18) = 1;
    sub_217F4B0B4();
    LOBYTE(v18) = 2;
    sub_217F4B0B4();
    v18 = v14;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57F0, &qword_217F4E2E0);
    sub_217EB2A98();
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t ClusteringJournal.Result.Requirements.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57F8, &qword_217F4E2E8);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19, v7);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB29F0();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = 0;
  sub_217EA298C();
  sub_217F4AFC4();
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  LOBYTE(v23[0]) = 1;
  v11 = sub_217F4AFB4();
  LOBYTE(v23[0]) = 2;
  v18 = sub_217F4AFB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF57F0, &qword_217F4E2E0);
  v36 = 3;
  sub_217EB2B70();
  sub_217F4AFC4();
  (*(v5 + 8))(v9, v19);
  v12 = v27;
  v13 = v32;
  v14 = v33;
  v20[0] = v32;
  v20[1] = v33;
  v15 = v35;
  v20[2] = v34;
  v20[3] = v35;
  v16 = v18;
  *&v21 = v11;
  *(&v21 + 1) = v18;
  v22 = v27;
  *(a2 + 32) = v34;
  *(a2 + 48) = v15;
  *(a2 + 80) = v12;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 64) = v21;
  sub_217EB2C48(v20, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v23[0] = v32;
  v23[1] = v33;
  v23[2] = v34;
  v23[3] = v35;
  v24 = v11;
  v25 = v16;
  v26 = v12;
  return sub_217EB2C80(v23);
}

uint64_t sub_217EA66D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EA6774(uint64_t a1)
{
  v2 = sub_217EB2FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA67B0(uint64_t a1)
{
  v2 = sub_217EB2FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA67EC()
{
  v1 = 0x6369706F74;
  if (*v0 != 1)
  {
    v1 = 0x6C656E6E616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x59726F4665726F6DLL;
  }
}

uint64_t sub_217EA6848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB4654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EA687C(uint64_t a1)
{
  v2 = sub_217EB2F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA68B8(uint64_t a1)
{
  v2 = sub_217EB2F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA690C(uint64_t a1)
{
  v2 = sub_217EB3068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA6948(uint64_t a1)
{
  v2 = sub_217EB3068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA69A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496369706F74 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EA6A38(uint64_t a1)
{
  v2 = sub_217EB3014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA6A74(uint64_t a1)
{
  v2 = sub_217EB3014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.Group.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5810, &qword_217F4E2F0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v36 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5818, &qword_217F4E2F8);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5820, &qword_217F4E300);
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v31 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5828, &qword_217F4E308);
  v17 = *(v41 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v41, v19);
  v21 = &v31 - v20;
  v22 = *v1;
  v39 = v1[1];
  v40 = v22;
  v23 = *(v1 + 16);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB2F6C();
  sub_217F4B294();
  if (!v23)
  {
    v43 = 1;
    sub_217EB3014();
    v26 = v41;
    sub_217F4B004();
    v28 = v35;
    sub_217F4B084();
    (*(v34 + 8))(v11, v28);
    return (*(v17 + 8))(v21, v26);
  }

  if (v23 == 1)
  {
    v44 = 2;
    sub_217EB2FC0();
    v25 = v36;
    v26 = v41;
    sub_217F4B004();
    v27 = v38;
    sub_217F4B084();
    (*(v37 + 8))(v25, v27);
    return (*(v17 + 8))(v21, v26);
  }

  v42 = 0;
  sub_217EB3068();
  v30 = v41;
  sub_217F4B004();
  (*(v32 + 8))(v16, v33);
  return (*(v17 + 8))(v21, v30);
}

uint64_t ClusteringJournal.Result.Group.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x21CEAF1C0](0);
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x21CEAF1C0](v3);

  return sub_217F4AB24();
}

uint64_t ClusteringJournal.Result.Group.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_217F4B224();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x21CEAF1C0](0);
      return sub_217F4B254();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x21CEAF1C0](v4);
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t ClusteringJournal.Result.Group.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5830, &qword_217F4E310);
  v56 = *(v54 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v54, v4);
  v60 = &v51 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5838, &qword_217F4E318);
  v57 = *(v55 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v55, v7);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5840, &qword_217F4E320);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5848, &qword_217F4E328);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v51 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_217EB2F6C();
  v23 = v61;
  sub_217F4B274();
  if (!v23)
  {
    v52 = 0;
    v53 = v16;
    v24 = v59;
    v25 = v60;
    v61 = v20;
    v26 = sub_217F4AFE4();
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v26 + 32);
      if (v27 == 1 && v28 != 3)
      {
        if (*(v26 + 32))
        {
          if (v28 == 1)
          {
            v64 = 1;
            sub_217EB3014();
            v36 = v9;
            v37 = v61;
            v38 = v52;
            sub_217F4AEF4();
            if (!v38)
            {
              v39 = v55;
              v59 = sub_217F4AF84();
              v46 = v45;
              (*(v57 + 8))(v36, v39);
              (*(v53 + 8))(v37, v15);
              swift_unknownObjectRelease();
              v47 = 0;
              v48 = v58;
LABEL_20:
              *v48 = v59;
              *(v48 + 8) = v46;
              *(v48 + 16) = v47;
              return __swift_destroy_boxed_opaque_existential_1(v62);
            }

            (*(v53 + 8))(v37, v15);
            goto LABEL_18;
          }

          v65 = 2;
          sub_217EB2FC0();
          v40 = v61;
          v42 = v52;
          sub_217F4AEF4();
          v48 = v58;
          if (!v42)
          {
            v43 = v54;
            v59 = sub_217F4AF84();
            v44 = v53;
            v52 = 0;
            v46 = v49;
            (*(v56 + 8))(v25, v43);
            (*(v44 + 8))(v61, v15);
            swift_unknownObjectRelease();
            v47 = 1;
            goto LABEL_20;
          }
        }

        else
        {
          v63 = 0;
          sub_217EB3068();
          v40 = v61;
          v41 = v52;
          sub_217F4AEF4();
          if (!v41)
          {
            (*(v24 + 8))(v14, v10);
            (*(v53 + 8))(v40, v15);
            swift_unknownObjectRelease();
            v59 = 0;
            v46 = 0;
            v47 = 2;
            v48 = v58;
            goto LABEL_20;
          }
        }

        (*(v53 + 8))(v40, v15);
LABEL_18:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v62);
      }
    }

    v30 = sub_217F4AE04();
    swift_allocError();
    v31 = v15;
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290) + 48);
    *v33 = &type metadata for ClusteringJournal.Result.Group;
    v35 = v61;
    sub_217F4AF04();
    sub_217F4ADE4();
    (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    (*(v53 + 8))(v35, v31);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_217EA7644()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_217F4B224();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x21CEAF1C0](0);
      return sub_217F4B254();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x21CEAF1C0](v4);
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217EA76D0()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x21CEAF1C0](0);
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x21CEAF1C0](v3);

  return sub_217F4AB24();
}

uint64_t sub_217EA7758()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_217F4B224();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x21CEAF1C0](0);
      return sub_217F4B254();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x21CEAF1C0](v4);
  sub_217F4AB24();
  return sub_217F4B254();
}

unint64_t sub_217EA77E4()
{
  v1 = 0x63696E6167726FLL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x6465746F6D6F7270;
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

uint64_t sub_217EA7864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB4770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EA7898(uint64_t a1)
{
  v2 = sub_217EB30BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA78D4(uint64_t a1)
{
  v2 = sub_217EB30BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA791C(uint64_t a1)
{
  v2 = sub_217EB320C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA7958(uint64_t a1)
{
  v2 = sub_217EB320C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA79A0(uint64_t a1)
{
  v2 = sub_217EB3164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA79DC(uint64_t a1)
{
  v2 = sub_217EB3164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA7A24(uint64_t a1)
{
  v2 = sub_217EB31B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA7A60(uint64_t a1)
{
  v2 = sub_217EB31B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA7A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953459315 && a2 == 0xE400000000000000;
  if (v5 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E49656372756F73 && a2 == 0xEB00000000786564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217EA7B88(uint64_t a1)
{
  v2 = sub_217EB3110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA7BC4(uint64_t a1)
{
  v2 = sub_217EB3110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.AcceptanceReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5850, &qword_217F4E330);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v51 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5858, &qword_217F4E338);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5860, &qword_217F4E340);
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5868, &qword_217F4E348);
  v46 = *(v17 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5870, &qword_217F4E350);
  v23 = *(v22 - 8);
  v57 = v22;
  v58 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v26 = *v1;
  v54 = v1[1];
  v55 = v26;
  v27 = *(v1 + 16);
  v29 = a1[3];
  v28 = a1[4];
  v30 = a1;
  v32 = &v46 - v31;
  __swift_project_boxed_opaque_existential_1(v30, v29);
  sub_217EB30BC();
  sub_217F4B294();
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v67 = 2;
      sub_217EB3164();
      v33 = v57;
      sub_217F4B004();
      v66 = 0;
      v37 = v56;
      v17 = v50;
      sub_217F4B0B4();
      if (v37)
      {
        v35 = *(v49 + 8);
        v36 = v11;
        goto LABEL_13;
      }

      v65 = 1;
      sub_217F4B0B4();
      v35 = *(v49 + 8);
      v36 = v11;
    }

    else
    {
      v70 = 3;
      sub_217EB3110();
      v43 = v51;
      v33 = v57;
      sub_217F4B004();
      v69 = 0;
      v44 = v56;
      v17 = v53;
      sub_217F4B0B4();
      if (v44)
      {
        v35 = *(v52 + 8);
        v36 = v43;
        goto LABEL_13;
      }

      v68 = 1;
      sub_217F4B0B4();
      v35 = *(v52 + 8);
      v36 = v43;
    }

LABEL_17:
    v45 = v17;
    goto LABEL_18;
  }

  if (!v27)
  {
    v61 = 0;
    sub_217EB320C();
    v33 = v57;
    sub_217F4B004();
    v60 = 0;
    v34 = v56;
    sub_217F4B0B4();
    if (v34)
    {
      v35 = *(v46 + 8);
      v36 = v21;
LABEL_13:
      v45 = v17;
LABEL_18:
      v35(v36, v45);
      return (*(v58 + 8))(v32, v33);
    }

    v59 = 1;
    sub_217F4B0B4();
    v35 = *(v46 + 8);
    v36 = v21;
    goto LABEL_17;
  }

  v64 = 1;
  sub_217EB31B8();
  v38 = v32;
  v39 = v57;
  sub_217F4B004();
  v63 = 0;
  v40 = v56;
  v41 = v48;
  sub_217F4B0B4();
  if (!v40)
  {
    v62 = 1;
    sub_217F4B0B4();
  }

  (*(v47 + 8))(v16, v41);
  return (*(v58 + 8))(v38, v39);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.AcceptanceReason.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5880, &qword_217F4E358);
  v83 = *(v86 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v86, v4);
  v85 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5888, &qword_217F4E360);
  v7 = *(v6 - 8);
  v81 = v6;
  v82 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v84 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5890, &qword_217F4E368);
  v12 = *(v11 - 8);
  v79 = v11;
  v80 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5898, &qword_217F4E370);
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58A0, &qword_217F4E378);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v72 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_217EB30BC();
  v30 = v87;
  sub_217F4B274();
  if (!v30)
  {
    v73 = v17;
    v74 = 0;
    v32 = v84;
    v31 = v85;
    v33 = v86;
    v87 = v23;
    v75 = v27;
    v76 = v22;
    v34 = sub_217F4AFE4();
    v35 = *(v34 + 16);
    if (!v35 || ((v36 = *(v34 + 32), v35 == 1) ? (v37 = v36 == 4) : (v37 = 1), v37))
    {
      v38 = sub_217F4AE04();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290) + 48);
      *v40 = &type metadata for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.AcceptanceReason;
      v42 = v75;
      v43 = v76;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v87 + 8))(v42, v43);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v34 + 32) <= 1u)
      {
        if (!*(v34 + 32))
        {
          v91 = 0;
          sub_217EB320C();
          v44 = v21;
          v45 = v75;
          v46 = v76;
          v47 = v74;
          sub_217F4AEF4();
          if (v47)
          {
            v48 = *(v87 + 8);
            v49 = v45;
LABEL_18:
            v48(v49, v46);
LABEL_25:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v88);
          }

          v90 = 0;
          v63 = v73;
          v64 = sub_217F4AFB4();
          v65 = v87;
          v74 = v64;
          v89 = 1;
          v70 = sub_217F4AFB4();
          (*(v78 + 8))(v44, v63);
          (*(v65 + 8))(v75, v46);
          swift_unknownObjectRelease();
LABEL_28:
          v71 = v77;
          *v77 = v74;
          v71[1] = v70;
          *(v71 + 16) = v36;
          return __swift_destroy_boxed_opaque_existential_1(v88);
        }

        v94 = 1;
        sub_217EB31B8();
        v56 = v16;
        v57 = v75;
        v46 = v76;
        v58 = v74;
        sub_217F4AEF4();
        if (v58)
        {
          v48 = *(v87 + 8);
          v49 = v57;
          goto LABEL_18;
        }

        v93 = 0;
        v66 = v79;
        v74 = sub_217F4AFB4();
        v92 = 1;
        v70 = sub_217F4AFB4();
        (*(v80 + 8))(v56, v66);
        (*(v87 + 8))(v57, v76);
LABEL_27:
        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      if (v36 == 2)
      {
        v97 = 2;
        sub_217EB3164();
        v50 = v32;
        v52 = v75;
        v51 = v76;
        v53 = v74;
        sub_217F4AEF4();
        v54 = v87;
        if (v53)
        {
          (*(v87 + 8))(v52, v51);
          goto LABEL_25;
        }

        v96 = 0;
        v55 = v81;
        v74 = sub_217F4AFB4();
        v95 = 1;
        v70 = sub_217F4AFB4();
        (*(v82 + 8))(v50, v55);
        (*(v54 + 8))(v52, v51);
        goto LABEL_27;
      }

      v100 = 3;
      sub_217EB3110();
      v59 = v75;
      v60 = v76;
      v61 = v74;
      sub_217F4AEF4();
      v62 = v87;
      if (!v61)
      {
        v99 = 0;
        v74 = sub_217F4AFB4();
        v98 = 1;
        v67 = sub_217F4AFB4();
        v68 = v75;
        v70 = v67;
        (*(v83 + 8))(v31, v33);
        (*(v62 + 8))(v68, v76);
        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      (*(v87 + 8))(v59, v60);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v88);
}

unint64_t sub_217EA8AF0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000012;
    v6 = 0xD00000000000001FLL;
    if (a1 != 8)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (a1 != 7)
    {
      v6 = v5;
    }

    v7 = 0x7669446369706F74;
    if (a1 != 5)
    {
      v7 = 0x746174696C617571;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6565726772657665;
    v2 = 0x7373656363616E69;
    v3 = 0x4578614D63676961;
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
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
}

uint64_t sub_217EA8CA4(uint64_t a1)
{
  v2 = sub_217EB34AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA8CE0(uint64_t a1)
{
  v2 = sub_217EB34AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA8D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB48E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EA8D64(uint64_t a1)
{
  v2 = sub_217EB3260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA8DA0(uint64_t a1)
{
  v2 = sub_217EB3260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA8DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C6369747261 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EA8E90(uint64_t a1)
{
  v2 = sub_217EB335C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA8ECC(uint64_t a1)
{
  v2 = sub_217EB335C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA8F14(uint64_t a1)
{
  v2 = sub_217EB3680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA8F50(uint64_t a1)
{
  v2 = sub_217EB3680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA8FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000217F5D120 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217F4B144();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217EA9050(uint64_t a1)
{
  v2 = sub_217EB35A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA908C(uint64_t a1)
{
  v2 = sub_217EB35A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA90D4(uint64_t a1)
{
  v2 = sub_217EB33B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA9110(uint64_t a1)
{
  v2 = sub_217EB33B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA9158(uint64_t a1)
{
  v2 = sub_217EB3554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA9194(uint64_t a1)
{
  v2 = sub_217EB3554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA91D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217EA92B4(uint64_t a1)
{
  v2 = sub_217EB3500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA92F0(uint64_t a1)
{
  v2 = sub_217EB3500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA932C()
{
  v1 = 0x54646574696D696CLL;
  if (*v0 != 1)
  {
    v1 = 0x74696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6369747261;
  }
}

uint64_t sub_217EA938C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB4C38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EA93C0(uint64_t a1)
{
  v2 = sub_217EB3404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA93FC(uint64_t a1)
{
  v2 = sub_217EB3404();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217EA9438()
{
  v1 = *v0;
  v2 = 0x656C6369747261;
  v3 = 0xD000000000000012;
  v4 = 0x6D69536369706F74;
  if (v1 != 4)
  {
    v4 = 0x6C6F687365726874;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6953776F646E6977;
  if (v1 != 1)
  {
    v5 = 0x6369706F546C6C61;
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

uint64_t sub_217EA9518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB4D50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EA9558(uint64_t a1)
{
  v2 = sub_217EB3458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA9594(uint64_t a1)
{
  v2 = sub_217EB3458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EA95D0()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x656C6369747261;
  }

  *v0;
  return result;
}

uint64_t sub_217EA9608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217EA96EC(uint64_t a1)
{
  v2 = sub_217EB32B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EA9728(uint64_t a1)
{
  v2 = sub_217EB32B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58A8, &qword_217F4E380);
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v93 = v71 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58B0, &qword_217F4E388);
  v87 = *(v91 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v91, v8);
  v85 = v71 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58B8, &qword_217F4E390);
  v86 = *(v89 - 8);
  v10 = *(v86 + 64);
  MEMORY[0x28223BE20](v89, v11);
  v83 = v71 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58C0, &qword_217F4E398);
  v88 = *(v90 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v90, v14);
  v84 = v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58C8, &qword_217F4E3A0);
  v17 = *(v16 - 8);
  v94 = v16;
  v95 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v92 = v71 - v20;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58D0, &qword_217F4E3A8);
  v81 = *(v82 - 8);
  v21 = *(v81 + 64);
  MEMORY[0x28223BE20](v82, v22);
  v80 = v71 - v23;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58D8, &qword_217F4E3B0);
  v78 = *(v79 - 8);
  v24 = *(v78 + 64);
  MEMORY[0x28223BE20](v79, v25);
  v77 = v71 - v26;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58E0, &qword_217F4E3B8);
  v75 = *(v76 - 8);
  v27 = *(v75 + 64);
  MEMORY[0x28223BE20](v76, v28);
  v74 = v71 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58E8, &qword_217F4E3C0);
  v73 = *(v30 - 8);
  v31 = *(v73 + 64);
  MEMORY[0x28223BE20](v30, v32);
  v34 = v71 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58F0, &qword_217F4E3C8);
  v72 = *(v35 - 8);
  v36 = *(v72 + 64);
  MEMORY[0x28223BE20](v35, v37);
  v39 = v71 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF58F8, &qword_217F4E3D0);
  v41 = *(v40 - 8);
  v102 = v40;
  v103 = v41;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v44 = *v1;
  v99 = v1[1];
  v100 = v44;
  v45 = v1[2];
  v46 = v1[4];
  v98 = v1[3];
  v71[2] = v46;
  v71[1] = v1[5];
  v48 = v1[6];
  v47 = v1[7];
  v49 = *(v1 + 64);
  v50 = a1[3];
  v51 = a1[4];
  v52 = a1;
  v54 = v71 - v53;
  __swift_project_boxed_opaque_existential_1(v52, v50);
  sub_217EB3260();
  sub_217F4B294();
  if (v49 > 4)
  {
    if (v49 <= 6)
    {
      if (v49 == 5)
      {
        LOBYTE(v105) = 5;
        sub_217EB3458();
        v55 = v92;
        v56 = v102;
        sub_217F4B004();
        v105 = v100;
        v106 = v99;
        v107 = v45;
        v104 = 0;
        sub_217EB3308();
        v57 = v94;
        v62 = v101;
        sub_217F4B0C4();
        if (!v62)
        {
          LOBYTE(v105) = 1;
          sub_217F4B0B4();
          LOBYTE(v105) = 2;
          sub_217F4B0B4();
          LOBYTE(v105) = 3;
          sub_217F4B0B4();
          LOBYTE(v105) = 4;
          sub_217F4B0A4();
          LOBYTE(v105) = 5;
          sub_217F4B0A4();
        }

        v70 = v95;
        goto LABEL_39;
      }

      LOBYTE(v105) = 6;
      sub_217EB3404();
      v55 = v84;
      v56 = v102;
      sub_217F4B004();
      v105 = v100;
      v106 = v99;
      v107 = v45;
      v104 = 0;
      sub_217EB3308();
      v57 = v90;
      v69 = v101;
      sub_217F4B0C4();
      if (v69)
      {
        v59 = &v112;
        goto LABEL_33;
      }

      LOBYTE(v105) = 1;
      sub_217F4B084();
      LOBYTE(v105) = 2;
      sub_217F4B0B4();
      v60 = &v112;
    }

    else if (v49 == 7)
    {
      LOBYTE(v105) = 7;
      sub_217EB33B0();
      v55 = v83;
      v56 = v102;
      sub_217F4B004();
      v105 = v100;
      v106 = v99;
      v107 = v45;
      v104 = 0;
      sub_217EB3308();
      v57 = v89;
      v64 = v101;
      sub_217F4B0C4();
      if (v64)
      {
        v59 = &v110;
        goto LABEL_33;
      }

      LOBYTE(v105) = 1;
      sub_217F4B0B4();
      v60 = &v110;
    }

    else
    {
      if (v49 != 8)
      {
        LOBYTE(v105) = 9;
        sub_217EB32B4();
        v55 = v93;
        v56 = v102;
        sub_217F4B004();
        v105 = v100;
        v106 = v99;
        v107 = v45;
        v104 = 0;
        sub_217EB3308();
        v57 = v97;
        v66 = v101;
        sub_217F4B0C4();
        if (!v66)
        {
          LOBYTE(v105) = 1;
          sub_217F4B084();
        }

        v70 = v96;
        goto LABEL_39;
      }

      LOBYTE(v105) = 8;
      sub_217EB335C();
      v55 = v85;
      v56 = v102;
      sub_217F4B004();
      v105 = v100;
      v106 = v99;
      v107 = v45;
      sub_217EB3308();
      v57 = v91;
      sub_217F4B0C4();
      v60 = &v111;
    }

    goto LABEL_38;
  }

  if (v49 > 1)
  {
    if (v49 == 2)
    {
      LOBYTE(v105) = 2;
      sub_217EB3554();
      v55 = v74;
      v56 = v102;
      sub_217F4B004();
      v105 = v100;
      v106 = v99;
      v107 = v45;
      v104 = 0;
      sub_217EB3308();
      v57 = v76;
      v63 = v101;
      sub_217F4B0C4();
      if (v63)
      {
        v59 = &v107;
        goto LABEL_33;
      }

      LOBYTE(v105) = 1;
      sub_217F4B0B4();
      v60 = &v107;
    }

    else if (v49 == 3)
    {
      LOBYTE(v105) = 3;
      sub_217EB3500();
      v55 = v77;
      v56 = v102;
      sub_217F4B004();
      v105 = v100;
      v106 = v99;
      v107 = v45;
      v104 = 0;
      sub_217EB3308();
      v57 = v79;
      v58 = v101;
      sub_217F4B0C4();
      if (v58)
      {
        v59 = &v108;
LABEL_33:
        v70 = *(v59 - 32);
LABEL_39:
        (*(v70 + 8))(v55, v57);
        return (*(v103 + 8))(v54, v56);
      }

      LOBYTE(v105) = 1;
      sub_217F4B0B4();
      v60 = &v108;
    }

    else
    {
      LOBYTE(v105) = 4;
      sub_217EB34AC();
      v55 = v80;
      v56 = v102;
      sub_217F4B004();
      v105 = v100;
      v106 = v99;
      v107 = v45;
      v104 = 0;
      sub_217EB3308();
      v57 = v82;
      v65 = v101;
      sub_217F4B0C4();
      if (v65)
      {
        v59 = &v109;
        goto LABEL_33;
      }

      LOBYTE(v105) = 1;
      sub_217F4B0B4();
      v60 = &v109;
    }

LABEL_38:
    v70 = *(v60 - 32);
    goto LABEL_39;
  }

  if (v49)
  {
    LOBYTE(v105) = 1;
    sub_217EB35A8();
    v67 = v102;
    sub_217F4B004();
    v105 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5928, &qword_217F4E3D8);
    sub_217EB35FC();
    sub_217F4B0C4();
    (*(v73 + 8))(v34, v30);
    return (*(v103 + 8))(v54, v67);
  }

  LOBYTE(v105) = 0;
  sub_217EB3680();
  v56 = v102;
  sub_217F4B004();
  v105 = v100;
  v106 = v99;
  v107 = v45;
  v104 = 0;
  sub_217EB3308();
  v61 = v101;
  sub_217F4B0C4();
  if (!v61)
  {
    LOBYTE(v105) = 1;
    sub_217F4B0B4();
  }

  (*(v72 + 8))(v39, v35);
  return (*(v103 + 8))(v54, v56);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5930, &qword_217F4E3E0);
  v137 = *(v130 - 8);
  v6 = *(v137 + 64);
  MEMORY[0x28223BE20](v130, v7);
  v141 = &v118 - v8;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5938, &qword_217F4E3E8);
  v132 = *(v131 - 8);
  v9 = *(v132 + 64);
  MEMORY[0x28223BE20](v131, v10);
  v142 = &v118 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5940, &qword_217F4E3F0);
  v134 = *(v135 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x28223BE20](v135, v13);
  v148 = &v118 - v14;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5948, &qword_217F4E3F8);
  v136 = *(v133 - 8);
  v15 = *(v136 + 64);
  MEMORY[0x28223BE20](v133, v16);
  v147 = &v118 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5950, &qword_217F4E400);
  v19 = *(v18 - 8);
  v138 = v18;
  v139 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v143 = &v118 - v22;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5958, &qword_217F4E408);
  v129 = *(v126 - 8);
  v23 = *(v129 + 64);
  MEMORY[0x28223BE20](v126, v24);
  v146 = &v118 - v25;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5960, &qword_217F4E410);
  v127 = *(v128 - 8);
  v26 = *(v127 + 64);
  MEMORY[0x28223BE20](v128, v27);
  v140 = &v118 - v28;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5968, &qword_217F4E418);
  v124 = *(v125 - 8);
  v29 = *(v124 + 64);
  MEMORY[0x28223BE20](v125, v30);
  v145 = &v118 - v31;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5970, &qword_217F4E420);
  v121 = *(v122 - 8);
  v32 = *(v121 + 64);
  MEMORY[0x28223BE20](v122, v33);
  v35 = &v118 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5978, &qword_217F4E428);
  v123 = *(v36 - 8);
  v37 = *(v123 + 64);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v118 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5980, &qword_217F4E430);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v118 - v45;
  v48 = a1[3];
  v47 = a1[4];
  v150 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_217EB3260();
  v49 = v149;
  sub_217F4B274();
  if (v49)
  {
    return __swift_destroy_boxed_opaque_existential_1(v150);
  }

  v119 = v35;
  v118 = v36;
  v51 = v145;
  v50 = v146;
  v52 = v147;
  v53 = v148;
  v120 = 0;
  v149 = v42;
  v54 = sub_217F4AFE4();
  if (*(v54 + 16) != 1 || (v55 = *(v54 + 32), v55 == 10))
  {
    v60 = sub_217F4AE04();
    swift_allocError();
    v62 = v61;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290) + 48);
    *v62 = &type metadata for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason;
    sub_217F4AF04();
    sub_217F4ADE4();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D84160], v60);
    swift_willThrow();
    (*(v149 + 8))(v46, v41);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v150);
  }

  if (*(v54 + 32) <= 4u)
  {
    if (*(v54 + 32) > 1u)
    {
      v56 = v120;
      if (v55 == 2)
      {
        LOBYTE(v152) = 2;
        sub_217EB3554();
        v71 = v51;
        sub_217F4AEF4();
        if (!v56)
        {
          v151 = 0;
          sub_217EB36D4();
          v72 = v125;
          sub_217F4AFC4();
          v88 = v153;
          v142 = v152;
          v4 = v154;
          v151 = 1;
          v85 = sub_217F4AFB4();
          v120 = 0;
          v57 = v124 + 8;
          v101 = v85;
          (*(v124 + 8))(v71, v72);
          (*(v149 + 8))(v46, v41);
          goto LABEL_43;
        }
      }

      else
      {
        v148 = v54;
        if (v55 == 3)
        {
          LOBYTE(v152) = 3;
          sub_217EB3500();
          v57 = v140;
          sub_217F4AEF4();
          v58 = v149;
          if (!v56)
          {
            v151 = 0;
            sub_217EB36D4();
            v59 = v128;
            sub_217F4AFC4();
            v88 = v153;
            v142 = v152;
            v4 = v154;
            v151 = 1;
            v89 = sub_217F4AFB4();
            v120 = 0;
            v101 = v89;
            (*(v127 + 8))(v57, v59);
            (*(v58 + 8))(v46, v41);
LABEL_43:
            swift_unknownObjectRelease();
            v116 = v101;
            goto LABEL_44;
          }

          goto LABEL_26;
        }

        LOBYTE(v152) = 4;
        sub_217EB34AC();
        sub_217F4AEF4();
        v74 = v149;
        if (!v56)
        {
          v151 = 0;
          sub_217EB36D4();
          v57 = v126;
          sub_217F4AFC4();
          v75 = v50;
          v90 = v153;
          v142 = v152;
          v4 = v154;
          v151 = 1;
          v91 = sub_217F4AFB4();
          v120 = 0;
          v102 = v91;
          (*(v129 + 8))(v75, v57);
          (*(v74 + 8))(v46, v41);
          swift_unknownObjectRelease();
          v116 = v102;
          v68 = v144;
          v88 = v90;
          v115 = v142;
          goto LABEL_48;
        }
      }

      goto LABEL_18;
    }

    v148 = v54;
    v67 = v120;
    if (v55)
    {
      LOBYTE(v152) = 1;
      sub_217EB35A8();
      v57 = v119;
      sub_217F4AEF4();
      if (v67)
      {
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5928, &qword_217F4E3D8);
      sub_217EB3728();
      v88 = v122;
      sub_217F4AFC4();
      v120 = 0;
      (*(v121 + 8))(v57, v88);
      (*(v149 + 8))(v46, v41);
      swift_unknownObjectRelease();
      v115 = v152;
    }

    else
    {
      LOBYTE(v152) = 0;
      sub_217EB3680();
      sub_217F4AEF4();
      if (v67)
      {
LABEL_18:
        (*(v149 + 8))(v46, v41);
        goto LABEL_45;
      }

      v151 = 0;
      sub_217EB36D4();
      v83 = v118;
      sub_217F4AFC4();
      v115 = v152;
      v88 = v153;
      v4 = v154;
      v151 = 1;
      v95 = sub_217F4AFB4();
      v120 = 0;
      v57 = v123 + 8;
      v107 = v95;
      (*(v123 + 8))(v40, v83);
      (*(v149 + 8))(v46, v41);
      swift_unknownObjectRelease();
      v116 = v107;
    }

    v68 = v144;
    goto LABEL_48;
  }

  if (*(v54 + 32) > 6u)
  {
    if (v55 == 7)
    {
      LOBYTE(v152) = 7;
      sub_217EB33B0();
      v73 = v120;
      sub_217F4AEF4();
      v58 = v149;
      if (!v73)
      {
        v151 = 0;
        sub_217EB36D4();
        v57 = v135;
        sub_217F4AFC4();
        v142 = v152;
        v86 = v53;
        v88 = v153;
        v4 = v154;
        v151 = 1;
        v87 = sub_217F4AFB4();
        v120 = 0;
        v100 = v87;
        (*(v134 + 8))(v86, v57);
        (*(v58 + 8))(v46, v41);
        swift_unknownObjectRelease();
        v116 = v100;
LABEL_44:
        v68 = v144;
        v115 = v142;
        goto LABEL_48;
      }

LABEL_26:
      (*(v58 + 8))(v46, v41);
      goto LABEL_45;
    }

    v57 = v41;
    v148 = v54;
    v64 = v149;
    if (v55 == 8)
    {
      LOBYTE(v152) = 8;
      sub_217EB335C();
      v65 = v142;
      v66 = v120;
      sub_217F4AEF4();
      if (!v66)
      {
        sub_217EB36D4();
        v80 = v131;
        sub_217F4AFC4();
        v120 = 0;
        (*(v132 + 8))(v65, v80);
        (*(v64 + 8))(v46, v57);
        swift_unknownObjectRelease();
        v115 = v152;
        v88 = v153;
        v4 = v154;
        v68 = v144;
        goto LABEL_48;
      }
    }

    else
    {
      LOBYTE(v152) = 9;
      sub_217EB32B4();
      v76 = v141;
      v77 = v120;
      sub_217F4AEF4();
      if (!v77)
      {
        v151 = 0;
        sub_217EB36D4();
        v81 = v130;
        sub_217F4AFC4();
        v82 = v76;
        v142 = v152;
        v145 = v153;
        v4 = v154;
        v151 = 1;
        v92 = sub_217F4AF84();
        v120 = 0;
        v104 = v103;
        v105 = *(v137 + 8);
        v140 = v92;
        v105(v82, v81);
        (*(v64 + 8))(v46, v57);
        swift_unknownObjectRelease();
        v68 = v144;
        v88 = v145;
        v116 = v140;
        v115 = v142;
        v57 = v104;
        goto LABEL_48;
      }
    }

    (*(v64 + 8))(v46, v57);
LABEL_45:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v150);
  }

  v146 = v41;
  v148 = v54;
  v68 = v144;
  if (v55 != 5)
  {
    LOBYTE(v152) = 6;
    sub_217EB3404();
    v78 = v52;
    v69 = v146;
    v79 = v120;
    sub_217F4AEF4();
    if (!v79)
    {
      v151 = 0;
      sub_217EB36D4();
      v84 = v133;
      sub_217F4AFC4();
      v96 = v153;
      v142 = v152;
      v4 = v154;
      v151 = 1;
      v97 = v78;
      v98 = sub_217F4AF84();
      v99 = v136;
      v57 = v108;
      v140 = v98;
      v145 = v96;
      v151 = 2;
      v109 = sub_217F4AFB4();
      v120 = 0;
      v112 = v109;
      (*(v99 + 8))(v97, v84);
      (*(v149 + 8))(v46, v146);
      swift_unknownObjectRelease();
      v117 = v112;
      v88 = v145;
      v115 = v142;
      v116 = v140;
      goto LABEL_48;
    }

LABEL_34:
    (*(v149 + 8))(v46, v69);
    goto LABEL_45;
  }

  LOBYTE(v152) = 5;
  sub_217EB3458();
  v69 = v146;
  v70 = v120;
  sub_217F4AEF4();
  if (v70)
  {
    goto LABEL_34;
  }

  v151 = 0;
  sub_217EB36D4();
  sub_217F4AFC4();
  v94 = v152;
  v93 = v153;
  v4 = v154;
  v151 = 1;
  v140 = sub_217F4AFB4();
  v145 = v93;
  v151 = 2;
  v57 = sub_217F4AFB4();
  v151 = 3;
  v110 = sub_217F4AFB4();
  v120 = 0;
  v111 = v110;
  v142 = v94;
  v151 = 4;
  sub_217F4AFA4();
  v120 = 0;
  v2 = v113;
  v151 = 5;
  sub_217F4AFA4();
  v120 = 0;
  v3 = v114;
  (*(v139 + 8))(v143, v138);
  (*(v149 + 8))(v46, v146);
  swift_unknownObjectRelease();
  v68 = v144;
  v88 = v145;
  v115 = v142;
  v116 = v140;
  v117 = v111;
LABEL_48:
  *v68 = v115;
  *(v68 + 8) = v88;
  *(v68 + 16) = v4;
  *(v68 + 24) = v116;
  *(v68 + 32) = v57;
  *(v68 + 40) = v117;
  *(v68 + 48) = v2;
  *(v68 + 56) = v3;
  *(v68 + 64) = v55;
  return __swift_destroy_boxed_opaque_existential_1(v150);
}

uint64_t sub_217EABE54()
{
  if (*v0)
  {
    result = 0x6E6F73616572;
  }

  else
  {
    result = 0x656C6369747261;
  }

  *v0;
  return result;
}

uint64_t sub_217EABE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217EABF70(uint64_t a1)
{
  v2 = sub_217EB38A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EABFAC(uint64_t a1)
{
  v2 = sub_217EB38A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EABFE8()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217EAC030()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217EAC074()
{
  if (*v0)
  {
    return 0x64657463656A6572;
  }

  else
  {
    return 0x6465747065636361;
  }
}

uint64_t sub_217EAC0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465747065636361 && a2 == 0xE800000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656A6572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217EAC190(uint64_t a1)
{
  v2 = sub_217EB37AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EAC1CC(uint64_t a1)
{
  v2 = sub_217EB37AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EAC224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EAC2B4(uint64_t a1)
{
  v2 = sub_217EB3800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EAC2F0(uint64_t a1)
{
  v2 = sub_217EB3800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5998, &qword_217F4E438);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59A0, &qword_217F4E440);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v33 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59A8, &qword_217F4E448);
  v44 = *(v46 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v46, v13);
  v14 = v1[1];
  v41 = *v1;
  v42 = v14;
  v15 = v1[3];
  v43 = v1[2];
  v16 = v1[4];
  v17 = v1[5];
  v18 = v1[7];
  v35 = v1[6];
  v34 = v18;
  v19 = *(v1 + 64);
  v20 = a1[3];
  v21 = a1[4];
  v22 = a1;
  v24 = &v33 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v20);
  sub_217EB37AC();
  sub_217F4B294();
  if (v19 < 0)
  {
    v29 = v19 & 0x7F;
    LOBYTE(v47) = 1;
    sub_217EB3800();
    v30 = v36;
    v31 = v46;
    sub_217F4B004();
    v47 = v41;
    v48 = v42;
    v49 = v43;
    v50 = v15;
    v51 = v16;
    v52 = v17;
    v53 = v35;
    v54 = v34;
    v55 = v29;
    sub_217EB3854();
    v32 = v38;
    sub_217F4B0C4();
    (*(v37 + 8))(v30, v32);
    return (*(v44 + 8))(v24, v31);
  }

  else
  {
    LOBYTE(v47) = 0;
    sub_217EB38A8();
    v25 = v46;
    sub_217F4B004();
    v47 = v41;
    v48 = v42;
    v49 = v43;
    v56 = 0;
    sub_217EB3308();
    v26 = v40;
    v27 = v45;
    sub_217F4B0C4();
    if (!v27)
    {
      v47 = v15;
      v48 = v16;
      LOBYTE(v49) = v17;
      v56 = 1;
      sub_217EB38FC();
      sub_217F4B0C4();
    }

    (*(v39 + 8))(v11, v26);
    return (*(v44 + 8))(v24, v25);
  }
}

uint64_t ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59B0, &qword_217F4E450);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59B8, &qword_217F4E458);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59C0, &qword_217F4E460);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_217EB37AC();
  v21 = v45;
  sub_217F4B274();
  if (!v21)
  {
    v45 = v14;
    v22 = v44;
    v23 = sub_217F4AFE4();
    v24 = v23;
    if (*(v23 + 16) == 1)
    {
      if (*(v23 + 32))
      {
        LOBYTE(v49) = 1;
        sub_217EB3800();
        sub_217F4AEF4();
        sub_217EB3950();
        v25 = v42;
        sub_217F4AFC4();
        (*(v41 + 8))(v7, v25);
        (*(v45 + 8))(v18, v13);
        swift_unknownObjectRelease();
        v26 = v49;
        v27 = v50;
        v28 = v51;
        v29 = v52;
        v30 = v53;
        v31 = v54;
        v32 = v55 & 0xF | 0x80;
      }

      else
      {
        LOBYTE(v49) = 0;
        sub_217EB38A8();
        sub_217F4AEF4();
        LOBYTE(v47) = 0;
        sub_217EB36D4();
        v38 = v12;
        sub_217F4AFC4();
        v39 = v45;
        v41 = v24;
        v42 = v13;
        v40 = v8;
        v26 = v49;
        v27 = v50;
        v28 = v51;
        v56 = 1;
        sub_217EB39A4();
        sub_217F4AFC4();
        (*(v43 + 8))(v38, v40);
        (*(v39 + 8))(v18, v42);
        swift_unknownObjectRelease();
        v32 = 0;
        v29 = v47;
        v31 = v48;
        *&v30 = v48;
      }

      *v22 = v26;
      *(v22 + 8) = v27;
      *(v22 + 16) = v28;
      *(v22 + 24) = v29;
      *(v22 + 40) = v30;
      *(v22 + 56) = v31;
      *(v22 + 64) = v32;
    }

    else
    {
      v33 = sub_217F4AE04();
      swift_allocError();
      v35 = v34;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290) + 48);
      *v35 = &type metadata for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v45 + 8))(v18, v13);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_217EACD0C()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696C64616568;
  }
}

uint64_t sub_217EACD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB4F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EACDA0(uint64_t a1)
{
  v2 = sub_217EB39F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EACDDC(uint64_t a1)
{
  v2 = sub_217EB39F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EACE30(uint64_t a1)
{
  v2 = sub_217EB3AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EACE6C(uint64_t a1)
{
  v2 = sub_217EB3AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EACEC0(uint64_t a1)
{
  v2 = sub_217EB3A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EACEFC(uint64_t a1)
{
  v2 = sub_217EB3A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EACF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EACFD8(uint64_t a1)
{
  v2 = sub_217EB3AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EAD014(uint64_t a1)
{
  v2 = sub_217EB3AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59D8, &qword_217F4E468);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v34 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59E0, &qword_217F4E470);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59E8, &qword_217F4E478);
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v31 = &v30 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59F0, &qword_217F4E480);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v30 - v20;
  v37 = v1;
  v22 = *(v1 + 64);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB39F8();
  sub_217F4B294();
  if (v22 > 0xEF)
  {
    LOBYTE(v40) = 1;
    sub_217EB3AA0();
    sub_217F4B004();
    (*(v38 + 8))(v11, v39);
    return (*(v17 + 8))(v21, v16);
  }

  if ((v22 & 0xF0) == 0x70)
  {
    LOBYTE(v40) = 2;
    sub_217EB3A4C();
    v24 = v34;
    sub_217F4B004();
    (*(v35 + 8))(v24, v36);
    return (*(v17 + 8))(v21, v16);
  }

  LOBYTE(v40) = 0;
  sub_217EB3AF4();
  v26 = v31;
  sub_217F4B004();
  v27 = v37[1];
  v40 = *v37;
  v41 = v27;
  v28 = v37[3];
  v42 = v37[2];
  v43 = v28;
  v44 = v22;
  sub_217EB3B48();
  v29 = v33;
  sub_217F4B0C4();
  (*(v32 + 8))(v26, v29);
  return (*(v17 + 8))(v21, v16);
}

uint64_t ClusteringJournal.Result.ClusteringEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF59F8, &qword_217F4E488);
  v49 = *(v51 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v51, v4);
  v54 = &v46 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A00, &qword_217F4E490);
  v48 = *(v52 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v52, v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A08, &qword_217F4E498);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A10, &qword_217F4E4A0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v46 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_217EB39F8();
  v23 = v55;
  sub_217F4B274();
  if (!v23)
  {
    v47 = v10;
    v24 = v54;
    v55 = v16;
    v25 = v20;
    v26 = sub_217F4AFE4();
    v27 = *(v26 + 16);
    if (!v27 || ((v28 = *(v26 + 32), v27 == 1) ? (v29 = v28 == 3) : (v29 = 1), v29))
    {
      v30 = sub_217F4AE04();
      swift_allocError();
      v31 = v15;
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290) + 48);
      *v33 = &type metadata for ClusteringJournal.Result.ClusteringEvent;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v55 + 8))(v25, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v26 + 32))
      {
        if (v28 == 1)
        {
          LOBYTE(v56) = 1;
          sub_217EB3AA0();
          sub_217F4AEF4();
          v35 = v55;
          (*(v48 + 8))(v9, v52);
          (*(v35 + 8))(v25, v15);
          swift_unknownObjectRelease();
          v40 = 0uLL;
          v41 = -16;
        }

        else
        {
          LOBYTE(v56) = 2;
          sub_217EB3A4C();
          v37 = v24;
          sub_217F4AEF4();
          v38 = v55;
          (*(v49 + 8))(v37, v51);
          (*(v38 + 8))(v20, v15);
          swift_unknownObjectRelease();
          v40 = 0uLL;
          v41 = 112;
        }

        v43 = 0uLL;
        v44 = 0uLL;
        v45 = 0uLL;
        v36 = v53;
      }

      else
      {
        LOBYTE(v56) = 0;
        sub_217EB3AF4();
        sub_217F4AEF4();
        v36 = v53;
        sub_217EB3B9C();
        v42 = v47;
        sub_217F4AFC4();
        (*(v50 + 8))(v14, v42);
        (*(v55 + 8))(v25, v15);
        swift_unknownObjectRelease();
        v40 = v56;
        v43 = v57;
        v44 = v58;
        v45 = v59;
        v41 = v60;
      }

      *v36 = v40;
      *(v36 + 16) = v43;
      *(v36 + 32) = v44;
      *(v36 + 48) = v45;
      *(v36 + 64) = v41;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_217EADA7C()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637573;
  }
}