unint64_t sub_1A9441BAC()
{
  result = qword_1EB387410;
  if (!qword_1EB387410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387410);
  }

  return result;
}

uint64_t _s12TextToSpeech16PronuncationRuleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 40);
  v17 = *(a2 + 56);
  v18 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    v12 = 6385769;
  }

  else
  {
    v12 = 7823730;
  }

  if (v9)
  {
    v13 = 6385769;
  }

  else
  {
    v13 = 7823730;
  }

  if (v12 == v13)
  {
    swift_bridgeObjectRelease_n();
    if (v5 != v10)
    {
      return 0;
    }
  }

  else
  {
    v14 = sub_1A957D3E8();
    swift_bridgeObjectRelease_n();
    result = 0;
    if (v14 & 1) == 0 || ((v5 ^ v10))
    {
      return result;
    }
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {
    v22 = v6;
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v21 = v11;
      sub_1A93B73E0(v6);
      sub_1A93B73E0(v11);
      sub_1A93B73E0(v6);
      matched = _s12TextToSpeech13PostMatchRuleO2eeoiySbAC_ACtFZ_0(&v22, &v21);

      sub_1A93B7494(v6);
      if (matched)
      {
        goto LABEL_27;
      }

      return 0;
    }

    sub_1A93B73E0(v6);
    sub_1A93B73E0(v11);
    sub_1A93B73E0(v6);

LABEL_23:
    sub_1A93B7494(v6);
    sub_1A93B7494(v11);
    return 0;
  }

  sub_1A93B73E0(v6);
  sub_1A93B73E0(v11);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    goto LABEL_23;
  }

  sub_1A93B7494(v6);
LABEL_27:
  if (v20 == v18 && v19 == v17)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A9441E54()
{
  result = qword_1EB3955A0;
  if (!qword_1EB3955A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3955A0);
  }

  return result;
}

unint64_t sub_1A9441EA8()
{
  result = qword_1EB387420;
  if (!qword_1EB387420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387420);
  }

  return result;
}

unint64_t sub_1A9441EFC()
{
  result = qword_1EB387430;
  if (!qword_1EB387430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387430);
  }

  return result;
}

uint64_t type metadata accessor for PronunciationRuleSet()
{
  result = qword_1EB396AD0;
  if (!qword_1EB396AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s12TextToSpeech11SiriRuleSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_1A9436FA0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v8 && (v2 == v6 && v4 == v8 || (sub_1A957D3E8() & 1) != 0))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_7:
  if (v3 == v7 && v5 == v9)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

uint64_t _s12TextToSpeech20PronunciationRuleSetV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for PronunciationRuleSet();
  v6 = v5[5];
  if ((sub_1A957B098() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v24 = *(a2 + v12);
  v25 = v13;

  LOBYTE(v13) = _s12TextToSpeech21RulesetActivationRuleO2eeoiySbAC_ACtFZ_0(&v25, &v24);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v5[8];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18 || (*v15 != *v17 || v16 != v18) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if ((sub_1A9436C28(*(a1 + v5[9]), *(a2 + v5[9])) & 1) == 0 || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]))
  {
    return 0;
  }

  v20 = v5[12];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1])
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A94422BC()
{
  result = qword_1EB3955A8;
  if (!qword_1EB3955A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3955A8);
  }

  return result;
}

unint64_t sub_1A9442310()
{
  result = qword_1EB387450;
  if (!qword_1EB387450)
  {
    sub_1A93A7B68(&qword_1EB387448, &qword_1A958CA00);
    sub_1A9442394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387450);
  }

  return result;
}

unint64_t sub_1A9442394()
{
  result = qword_1EB387458;
  if (!qword_1EB387458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387458);
  }

  return result;
}

unint64_t sub_1A94423E8()
{
  result = qword_1EB387470;
  if (!qword_1EB387470)
  {
    sub_1A93A7B68(&qword_1EB387448, &qword_1A958CA00);
    sub_1A944246C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387470);
  }

  return result;
}

unint64_t sub_1A944246C()
{
  result = qword_1EB387478;
  if (!qword_1EB387478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387478);
  }

  return result;
}

uint64_t _s12TextToSpeech8SiriRuleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_1A957D3E8();
    result = 0;
    if (v13 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A94425E4()
{
  result = qword_1EB3955B0;
  if (!qword_1EB3955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3955B0);
  }

  return result;
}

uint64_t sub_1A9442638(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1A944268C()
{
  result = qword_1EB3955B8;
  if (!qword_1EB3955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3955B8);
  }

  return result;
}

unint64_t sub_1A94426E0()
{
  result = qword_1EB3874F0;
  if (!qword_1EB3874F0)
  {
    sub_1A93A7B68(&qword_1EB3874E8, &qword_1A958CA68);
    sub_1A9442764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3874F0);
  }

  return result;
}

unint64_t sub_1A9442764()
{
  result = qword_1EB3874F8;
  if (!qword_1EB3874F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3874F8);
  }

  return result;
}

unint64_t sub_1A94427B8()
{
  result = qword_1EB387508;
  if (!qword_1EB387508)
  {
    sub_1A93A7B68(&qword_1EB3874E8, &qword_1A958CA68);
    sub_1A944283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387508);
  }

  return result;
}

unint64_t sub_1A944283C()
{
  result = qword_1EB387510;
  if (!qword_1EB387510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387510);
  }

  return result;
}

uint64_t sub_1A9442890(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A94428E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1A944292C()
{
  result = qword_1EB3955C0[0];
  if (!qword_1EB3955C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3955C0);
  }

  return result;
}

unint64_t sub_1A9442980()
{
  result = qword_1EB387528;
  if (!qword_1EB387528)
  {
    sub_1A93A7B68(&qword_1EB387520, &unk_1A958CA80);
    sub_1A9442BB0(&qword_1EB385F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387528);
  }

  return result;
}

unint64_t sub_1A9442A2C()
{
  result = qword_1EB387538;
  if (!qword_1EB387538)
  {
    sub_1A93A7B68(&qword_1EB387530, &qword_1A958CA90);
    sub_1A9442AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387538);
  }

  return result;
}

unint64_t sub_1A9442AB0()
{
  result = qword_1EB387540;
  if (!qword_1EB387540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387540);
  }

  return result;
}

unint64_t sub_1A9442B04()
{
  result = qword_1EB387550;
  if (!qword_1EB387550)
  {
    sub_1A93A7B68(&qword_1EB387520, &unk_1A958CA80);
    sub_1A9442BB0(&qword_1EB3863D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387550);
  }

  return result;
}

uint64_t sub_1A9442BB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB386B68, &qword_1A9591620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9442C1C()
{
  result = qword_1EB387558;
  if (!qword_1EB387558)
  {
    sub_1A93A7B68(&qword_1EB387530, &qword_1A958CA90);
    sub_1A9442CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387558);
  }

  return result;
}

unint64_t sub_1A9442CA0()
{
  result = qword_1EB387560;
  if (!qword_1EB387560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387560);
  }

  return result;
}

unint64_t sub_1A9442CF8()
{
  result = qword_1EB387568;
  if (!qword_1EB387568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387568);
  }

  return result;
}

unint64_t sub_1A9442D50()
{
  result = qword_1EB387570;
  if (!qword_1EB387570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387570);
  }

  return result;
}

unint64_t sub_1A9442DEC()
{
  result = qword_1EB387588;
  if (!qword_1EB387588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387588);
  }

  return result;
}

unint64_t sub_1A9442E44()
{
  result = qword_1EB387590;
  if (!qword_1EB387590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387590);
  }

  return result;
}

unint64_t sub_1A9442EE0()
{
  result = qword_1EB3875A8;
  if (!qword_1EB3875A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3875A8);
  }

  return result;
}

unint64_t sub_1A9442F80()
{
  result = qword_1EB3875B8;
  if (!qword_1EB3875B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3875B8);
  }

  return result;
}

unint64_t sub_1A9442FD8()
{
  result = qword_1EB3875C0;
  if (!qword_1EB3875C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3875C0);
  }

  return result;
}

unint64_t sub_1A9443030()
{
  result = qword_1EB3875C8;
  if (!qword_1EB3875C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3875C8);
  }

  return result;
}

uint64_t sub_1A9443090(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A94430EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A94431A8(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_1A94431C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A9443220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1A9443280(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

uint64_t sub_1A94432BC(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A94432E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A9443330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A94433C8()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1A957B0B8();
  if (v1 <= 0x3F)
  {
    sub_1A94434DC(319, &qword_1EB3863D8, v0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A94434DC(319, &qword_1EB3875D0, &type metadata for PronuncationRule, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A94434DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A944353C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A9443584(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PronunciationRuleSet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PronunciationRuleSet.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A9443850()
{
  result = qword_1EB396BE0[0];
  if (!qword_1EB396BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB396BE0);
  }

  return result;
}

unint64_t sub_1A94438A8()
{
  result = qword_1EB396DF0;
  if (!qword_1EB396DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB396DF0);
  }

  return result;
}

unint64_t sub_1A9443900()
{
  result = qword_1EB397000[0];
  if (!qword_1EB397000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397000);
  }

  return result;
}

unint64_t sub_1A9443958()
{
  result = qword_1EB397210[0];
  if (!qword_1EB397210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397210);
  }

  return result;
}

unint64_t sub_1A94439B0()
{
  result = qword_1EB397420[0];
  if (!qword_1EB397420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397420);
  }

  return result;
}

unint64_t sub_1A9443AE0()
{
  result = qword_1EB397930[0];
  if (!qword_1EB397930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397930);
  }

  return result;
}

unint64_t sub_1A9443B38()
{
  result = qword_1EB397B40[0];
  if (!qword_1EB397B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397B40);
  }

  return result;
}

unint64_t sub_1A9443B90()
{
  result = qword_1EB397D50[0];
  if (!qword_1EB397D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397D50);
  }

  return result;
}

unint64_t sub_1A9443BE8()
{
  result = qword_1EB398060[0];
  if (!qword_1EB398060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398060);
  }

  return result;
}

unint64_t sub_1A9443C40()
{
  result = qword_1EB398270[0];
  if (!qword_1EB398270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398270);
  }

  return result;
}

unint64_t sub_1A9443C98()
{
  result = qword_1EB398480[0];
  if (!qword_1EB398480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398480);
  }

  return result;
}

unint64_t sub_1A9443CF0()
{
  result = qword_1EB398690[0];
  if (!qword_1EB398690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398690);
  }

  return result;
}

unint64_t sub_1A9443D48()
{
  result = qword_1EB3988A0[0];
  if (!qword_1EB3988A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3988A0);
  }

  return result;
}

unint64_t sub_1A9443DA0()
{
  result = qword_1EB398AB0[0];
  if (!qword_1EB398AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398AB0);
  }

  return result;
}

unint64_t sub_1A9443DF8()
{
  result = qword_1EB398CC0[0];
  if (!qword_1EB398CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398CC0);
  }

  return result;
}

unint64_t sub_1A9443E50()
{
  result = qword_1EB398ED0[0];
  if (!qword_1EB398ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398ED0);
  }

  return result;
}

unint64_t sub_1A9443EA8()
{
  result = qword_1EB398FE0;
  if (!qword_1EB398FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB398FE0);
  }

  return result;
}

unint64_t sub_1A9443F00()
{
  result = qword_1EB398FE8[0];
  if (!qword_1EB398FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398FE8);
  }

  return result;
}

unint64_t sub_1A9443F58()
{
  result = qword_1EB399070;
  if (!qword_1EB399070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399070);
  }

  return result;
}

unint64_t sub_1A9443FB0()
{
  result = qword_1EB399078;
  if (!qword_1EB399078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399078);
  }

  return result;
}

unint64_t sub_1A9444008()
{
  result = qword_1EB399100;
  if (!qword_1EB399100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399100);
  }

  return result;
}

unint64_t sub_1A9444060()
{
  result = qword_1EB399108[0];
  if (!qword_1EB399108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399108);
  }

  return result;
}

unint64_t sub_1A94440B8()
{
  result = qword_1EB399190;
  if (!qword_1EB399190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399190);
  }

  return result;
}

unint64_t sub_1A9444110()
{
  result = qword_1EB399198[0];
  if (!qword_1EB399198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399198);
  }

  return result;
}

unint64_t sub_1A9444168()
{
  result = qword_1EB399220;
  if (!qword_1EB399220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399220);
  }

  return result;
}

unint64_t sub_1A94441C0()
{
  result = qword_1EB399228[0];
  if (!qword_1EB399228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399228);
  }

  return result;
}

unint64_t sub_1A9444218()
{
  result = qword_1EB3992B0;
  if (!qword_1EB3992B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3992B0);
  }

  return result;
}

unint64_t sub_1A9444270()
{
  result = qword_1EB3992B8[0];
  if (!qword_1EB3992B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3992B8);
  }

  return result;
}

unint64_t sub_1A94442C8()
{
  result = qword_1EB399340;
  if (!qword_1EB399340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399340);
  }

  return result;
}

unint64_t sub_1A9444320()
{
  result = qword_1EB399348[0];
  if (!qword_1EB399348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399348);
  }

  return result;
}

unint64_t sub_1A9444378()
{
  result = qword_1EB3993D0;
  if (!qword_1EB3993D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3993D0);
  }

  return result;
}

unint64_t sub_1A94443D0()
{
  result = qword_1EB3993D8[0];
  if (!qword_1EB3993D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3993D8);
  }

  return result;
}

unint64_t sub_1A9444428()
{
  result = qword_1EB399460;
  if (!qword_1EB399460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399460);
  }

  return result;
}

unint64_t sub_1A9444480()
{
  result = qword_1EB399468[0];
  if (!qword_1EB399468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399468);
  }

  return result;
}

unint64_t sub_1A94444D8()
{
  result = qword_1EB3994F0;
  if (!qword_1EB3994F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3994F0);
  }

  return result;
}

unint64_t sub_1A9444530()
{
  result = qword_1EB3994F8[0];
  if (!qword_1EB3994F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3994F8);
  }

  return result;
}

unint64_t sub_1A9444588()
{
  result = qword_1EB399580;
  if (!qword_1EB399580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399580);
  }

  return result;
}

unint64_t sub_1A94445E0()
{
  result = qword_1EB399588[0];
  if (!qword_1EB399588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399588);
  }

  return result;
}

unint64_t sub_1A9444638()
{
  result = qword_1EB399610;
  if (!qword_1EB399610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399610);
  }

  return result;
}

unint64_t sub_1A9444690()
{
  result = qword_1EB399618[0];
  if (!qword_1EB399618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399618);
  }

  return result;
}

unint64_t sub_1A94446E8()
{
  result = qword_1EB3996A0;
  if (!qword_1EB3996A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3996A0);
  }

  return result;
}

unint64_t sub_1A9444740()
{
  result = qword_1EB3996A8[0];
  if (!qword_1EB3996A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3996A8);
  }

  return result;
}

unint64_t sub_1A9444798()
{
  result = qword_1EB399730;
  if (!qword_1EB399730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399730);
  }

  return result;
}

unint64_t sub_1A94447F0()
{
  result = qword_1EB399738[0];
  if (!qword_1EB399738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399738);
  }

  return result;
}

unint64_t sub_1A9444848()
{
  result = qword_1EB3997C0;
  if (!qword_1EB3997C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3997C0);
  }

  return result;
}

unint64_t sub_1A94448A0()
{
  result = qword_1EB3997C8[0];
  if (!qword_1EB3997C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3997C8);
  }

  return result;
}

unint64_t sub_1A94448F8()
{
  result = qword_1EB399850;
  if (!qword_1EB399850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399850);
  }

  return result;
}

unint64_t sub_1A9444950()
{
  result = qword_1EB399858[0];
  if (!qword_1EB399858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399858);
  }

  return result;
}

unint64_t sub_1A94449A8()
{
  result = qword_1EB3998E0;
  if (!qword_1EB3998E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3998E0);
  }

  return result;
}

unint64_t sub_1A9444A00()
{
  result = qword_1EB3998E8[0];
  if (!qword_1EB3998E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3998E8);
  }

  return result;
}

uint64_t sub_1A9444A54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7053664F74726170 && a2 == 0xEC00000068636565;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581857 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A9444BB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001A95C2D50 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69736568746E7973 && a2 == 0xEB0000000072657ALL || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6581857 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1A957D3E8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A9444DB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865676572 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEF65707954746E65 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6374614D74736F70 && a2 == 0xE900000000000068 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A9444FC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617669746361 && a2 == 0xEE00656C75526E6FLL || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6974617265706FLL && a2 == 0xEE00786567655267 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1A94452A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865676572 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A9445408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A95C2D70 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

unint64_t sub_1A9445524()
{
  result = qword_1EB387618;
  if (!qword_1EB387618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387618);
  }

  return result;
}

uint64_t sub_1A9445608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1A9445BD4();
  result = sub_1A957CC48();
  *a4 = result;
  return result;
}

id sub_1A9445670()
{
  sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A958EA40;
  if (qword_1EB399970 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB3A7C28;
  *(v0 + 32) = qword_1EB3A7C28;
  v2 = qword_1EB399978;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB3A7C30;
  *(v0 + 40) = qword_1EB3A7C30;
  qword_1EB399990 = v0;

  return v4;
}

id sub_1A9445750()
{
  if (qword_1EB399980 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB3A7C38;

  return v1;
}

uint64_t sub_1A94457AC(int a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v33 = a1;
  v9 = sub_1A957AFD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB399988 != -1)
  {
    v13 = swift_once();
  }

  v34 = a2;
  MEMORY[0x1EEE9AC00](v13, v14);
  *(&v31 - 2) = &v34;
  result = sub_1A9445A54(sub_1A9445B7C, (&v31 - 4), v17);
  if (result)
  {
    if (a3)
    {
      sub_1A957AF38();
      v19 = sub_1A957AF48();
      v21 = v20;
      (*(v10 + 8))(v16, v9);
      v34 = v19;
      v35 = v21;
      MEMORY[0x1AC585140](32, 0xE100000000000000);
      MEMORY[0x1AC585140](v31, v32);
      MEMORY[0x1AC585140](8250, 0xE200000000000000);
      v22 = v34;
      v23 = v35;
      v24 = sub_1A957C128();
      v26 = v25;
      v34 = v22;
      v35 = v23;

      MEMORY[0x1AC585140](v24, v26);

      v27 = v34;
      v28 = v35;
    }

    else
    {
      v27 = sub_1A957C128();
      v28 = v29;
    }

    sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1A9587160;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1A93B3A38();
    *(v30 + 32) = v27;
    *(v30 + 40) = v28;
    sub_1A957BC58();
  }

  return result;
}

uint64_t sub_1A9445A54(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1AC585DE0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1A957CE48();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1A9445B7C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1A9445BD4();
  return sub_1A957CC18() & 1;
}

unint64_t sub_1A9445BD4()
{
  result = qword_1EB387630;
  if (!qword_1EB387630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB387630);
  }

  return result;
}

uint64_t TTSMarkupSpeech.transformed(_:)@<X0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12[3] = a3;
  v12[4] = a4;
  v10 = sub_1A93981E4(v12);
  (*(*(a3 - 8) + 16))(v10, v5, a3);
  sub_1A9445CBC(a1, a2, v12, a5);
  return sub_1A9378138(v12);
}

uint64_t sub_1A9445CBC@<X0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v36 = a2;
  v37 = a1;
  sub_1A9379534(a3, v43);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v6 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  result = swift_dynamicCast();
  if (result)
  {
    v34 = v6;
    v35 = a4;
    v8 = *&v42[0];
    v9 = *(*&v42[0] + 16);
    if (v9)
    {
      v10 = 0;
      v11 = *&v42[0] + 32;
      v12 = MEMORY[0x1E69E7CC0];
      while (v10 < *(v8 + 16))
      {
        sub_1A9379534(v11, v43);
        sub_1A9445CBC(&v39, v37, v36, v43);
        sub_1A9378138(v43);
        if (*(&v40 + 1))
        {
          sub_1A932D070(&v39, v42);
          sub_1A932D070(v42, &v39);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v12 = sub_1A93ADC90(0, v12[2] + 1, 1, v12);
            v38 = v12;
          }

          v15 = v12[2];
          v14 = v12[3];
          if (v15 >= v14 >> 1)
          {
            v12 = sub_1A93ADC90((v14 > 1), v15 + 1, 1, v12);
            v38 = v12;
          }

          v16 = *(&v40 + 1);
          v17 = v41;
          v18 = sub_1A9396054(&v39, *(&v40 + 1));
          v19 = *(*(v16 - 8) + 64);
          MEMORY[0x1EEE9AC00](v18, v18);
          v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v22 + 16))(v21);
          sub_1A944A8F4(v15, v21, &v38, v16, v17);
          result = sub_1A9378138(&v39);
        }

        else
        {
          result = sub_1A937B960(&v39, &qword_1EB3868E8, &unk_1A958F280);
        }

        ++v10;
        v11 += 40;
        if (v9 == v10)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
LABEL_18:

      if (v12[2])
      {
        v31 = v35;
        v35[3] = v34;
        v31[4] = &protocol witness table for <A> [A];
        *v31 = v12;
      }

      else
      {
        v32 = v35;
        v35[4] = 0;
        *v32 = 0u;
        v32[1] = 0u;
      }
    }
  }

  else
  {
    sub_1A9379534(a3, v42);
    sub_1A937829C(&qword_1EB387678, &qword_1A958EAB8);
    if (swift_dynamicCast())
    {
      sub_1A932D070(&v39, v43);
      v23 = v44;
      v24 = v45;
      sub_1A93780F4(v43, v44);
      (*(v24 + 16))(&v39, v23, v24);
      if (*(&v40 + 1))
      {
        sub_1A932D070(&v39, v42);
        sub_1A9445CBC(&v39, v37, v36, v42);
        v25 = v44;
        v26 = v45;
        sub_1A9396054(v43, v44);
        (*(v26 + 24))(&v39, v25, v26);
        v27 = v44;
        v28 = v45;
        v29 = sub_1A93780F4(v43, v44);
        *(&v40 + 1) = v27;
        v41 = *(v28 + 8);
        v30 = sub_1A93981E4(&v39);
        (*(*(v27 - 8) + 16))(v30, v29, v27);
        v37(&v39);
        sub_1A9378138(v42);
        sub_1A9378138(&v39);
        return sub_1A9378138(v43);
      }

      sub_1A937B960(&v39, &qword_1EB3868E8, &unk_1A958F280);
      sub_1A9378138(v43);
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_1A937B960(&v39, &qword_1EB387680, qword_1A958EAC0);
    }

    return (v37)(a3);
  }

  return result;
}

uint64_t TTSMarkupSpeech.transformed<A>(of:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v13[3] = a3;
  v13[4] = a5;
  v10 = sub_1A93981E4(v13);
  (*(*(a3 - 8) + 16))(v10, v7, a3);
  sub_1A9445CBC(sub_1A94464C0, v12, v13, a7);
  return sub_1A9378138(v13);
}

uint64_t sub_1A94461E0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a4;
  v34 = a2;
  v8 = sub_1A957CC58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v32 - v17;
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16, v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9379534(a1, v35);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v24 = swift_dynamicCast();
  v25 = *(v19 + 56);
  if (v24)
  {
    v32 = a5;
    v25(v18, 0, 1, a3);
    v26 = *(v19 + 32);
    v26(v23, v18, a3);
    v34(v23);
    if ((*(v19 + 48))(v14, 1, a3) == 1)
    {
      (*(v19 + 8))(v23, a3);
      result = (*(v9 + 8))(v14, v8);
      v28 = v32;
      *(v32 + 32) = 0;
      *v28 = 0u;
      v28[1] = 0u;
    }

    else
    {
      v29 = v32;
      v30 = v33;
      *(v32 + 24) = a3;
      v29[4] = v30;
      v31 = sub_1A93981E4(v29);
      v26(v31, v14, a3);
      return (*(v19 + 8))(v23, a3);
    }
  }

  else
  {
    v25(v18, 1, 1, a3);
    (*(v9 + 8))(v18, v8);
    return sub_1A9379534(a1, a5);
  }

  return result;
}

uint64_t TTSMarkupSpeech.transformed<A>(of:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = v7;
  v16 = sub_1A957CC58();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27[-v19];
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a1;
  v33 = a2;
  v34[3] = a3;
  v34[4] = a5;
  v21 = sub_1A93981E4(v34);
  v22 = *(a3 - 8);
  v23 = *(v22 + 16);
  v23(v21, v8, a3);
  sub_1A9445CBC(sub_1A94468D4, v27, v34, v35);
  sub_1A9378138(v34);
  sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
  v24 = swift_dynamicCast();
  v25 = *(v22 + 56);
  if (v24)
  {
    v25(v20, 0, 1, a3);
    return (*(v22 + 32))(a7, v20, a3);
  }

  else
  {
    v25(v20, 1, 1, a3);
    return (v23)(a7, v8, a3);
  }
}

uint64_t sub_1A94466A8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1A957CC58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v24[-v13 - 8];
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A9379534(a1, v24);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v21(v14, 0, 1, a3);
    (*(v15 + 32))(v19, v14, a3);
    a2(v19);
    return (*(v15 + 8))(v19, a3);
  }

  else
  {
    v21(v14, 1, 1, a3);
    (*(v9 + 8))(v14, v8);
    return sub_1A9379534(a1, a4);
  }
}

uint64_t sub_1A94468E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6[2] = a1;
  v6[3] = a2;
  return TTSMarkupSpeech.transformed(_:)(sub_1A944691C, v6, a3, a4, a5);
}

double sub_1A944691C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_1A9379534(a1, v15);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  sub_1A937829C(&qword_1EB387668, &qword_1A958EAA8);
  if (swift_dynamicCast())
  {
    sub_1A932D070(v13, v16);
    if (v6(v16))
    {
      v7 = v17;
      v8 = v18;
      v9 = sub_1A93780F4(v16, v17);
      v10 = *(v8 + 8);
      *(a2 + 24) = v7;
      *(a2 + 32) = v10;
      v11 = sub_1A93981E4(a2);
      (*(*(v7 - 8) + 16))(v11, v9, v7);
      sub_1A9378138(v16);
    }

    else
    {
      sub_1A9378138(v16);
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1A937B960(v13, &qword_1EB387670, &qword_1A958EAB0);
    sub_1A9379534(a1, a2);
  }

  return result;
}

uint64_t TTSMarkup.SpeechText.transformed(_:)@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t *, uint64_t (*)(), void *)@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 8);
  v7[0] = *v2;
  v7[1] = v5;
  v8 = *(v2 + 16);

  return sub_1A9446AD4(v7, a1, a2);
}

uint64_t sub_1A9446AD4@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t *, uint64_t (*)(), void *)@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1[1];
  v19 = *a1;
  v4 = a1[2];
  v20 = a1[3];
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v19;
  v9[4] = v3;
  v9[5] = v4;
  v9[6] = v20;
  v9[7] = v8;
  v9[8] = v5;
  sub_1A93847E0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  a2(v3, v4, __dst, sub_1A944AA74, v9);

  swift_beginAccess();
  sub_1A9447590((v5 + 16));
  swift_endAccess();
  swift_beginAccess();
  sub_1A94476FC((v7 + 16));
  swift_endAccess();
  swift_beginAccess();
  v22 = (v8 + 16);
  sub_1A944776C((v8 + 16));
  swift_endAccess();
  *&v25 = v4;
  *(&v25 + 1) = v20;

  TransformableString.withTransformation<A>(_:)(sub_1A944AA7C);
  sub_1A9473530(__dst);

  v18 = v25;
  sub_1A937829C(&qword_1EB386B50, &unk_1A95891A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A9587160;
  *(v10 + 56) = &type metadata for TTSMarkup.SpeechText;
  *(v10 + 64) = &protocol witness table for TTSMarkup.SpeechText;
  v11 = swift_allocObject();
  *(v10 + 32) = v11;
  *(v11 + 16) = v19;
  *(v11 + 24) = v3;
  *(v11 + 32) = v18;
  v23 = 0;
  v24 = v10;
  v12 = *(v7 + 16);
  v13 = *(v12 + 16);

  if (v13)
  {
    v15 = 0;
    v16 = v12 + 32;
    while (v15 < *(v12 + 16))
    {
      sub_1A9448584(v16, __dst);
      ++v15;
      sub_1A94479C4(__dst, v22, &v23, &v24, v19, v3, v4, v20);
      result = sub_1A937B960(__dst, &qword_1EB387638, &qword_1A958EA50);
      v16 += 56;
      if (v13 == v15)
      {
        v10 = v24;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    a3[3] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    a3[4] = &protocol witness table for <A> [A];

    *a3 = v10;
  }

  return result;
}

uint64_t TTSMarkup.SpeechText.transformed(_:)@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t (*)(uint64_t, void *, uint64_t), void *)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[3];
  v20 = v2[2];
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v20;
  v10[6] = v5;
  v10[7] = v9;
  v10[8] = v6;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  a1(v3, v20, sub_1A944758C, v10);

  swift_beginAccess();
  sub_1A9447590((v6 + 16));
  swift_endAccess();
  swift_beginAccess();
  v11 = v8 + 16;
  sub_1A94476FC((v8 + 16));
  swift_endAccess();
  swift_beginAccess();
  sub_1A944776C((v9 + 16));
  swift_endAccess();
  v25 = v3;
  *&v26 = v20;
  *(&v26 + 1) = v5;

  TransformableString.withTransformation<A>(_:)(sub_1A944855C);
  sub_1A9473530(v23);

  v21 = v26;
  sub_1A937829C(&qword_1EB386B50, &unk_1A95891A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A9587160;
  *(v12 + 56) = &type metadata for TTSMarkup.SpeechText;
  *(v12 + 64) = &protocol witness table for TTSMarkup.SpeechText;
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  *(v13 + 16) = v4;
  *(v13 + 24) = v3;
  *(v13 + 32) = v21;
  v24 = 0;
  v25 = v12;
  v14 = *(v8 + 16);
  v15 = *(*v11 + 16);

  if (v15)
  {
    v17 = 0;
    v18 = v14 + 32;
    while (v17 < *(v14 + 16))
    {
      sub_1A9448584(v18, v23);
      ++v17;
      sub_1A94479C4(v23, (v9 + 16), &v24, &v25, v4, v3, v20, v5);
      result = sub_1A937B960(v23, &qword_1EB387638, &qword_1A958EA50);
      v18 += 56;
      if (v15 == v17)
      {
        v12 = v25;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    a2[3] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    a2[4] = &protocol witness table for <A> [A];

    *a2 = v12;
  }

  return result;
}

uint64_t sub_1A9447298(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A944A98C(a3, v39);
  if (v40)
  {
    v13 = *(&v39[0] + 1);
    a4 = *&v39[0];
    sub_1A957C3B8();
    v14 = sub_1A957CC78();

    if ((v13 & 0x1000000000000000) != 0)
    {
      v34 = sub_1A957C2B8();
      v16 = v14 - v34;
      if (!__OFSUB__(v14, v34))
      {
LABEL_7:
        swift_beginAccess();
        v17 = *(a7 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a7 + 16) = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_1A94485F4(0, *(v17 + 2) + 1, 1, v17);
          *(a7 + 16) = v17;
        }

        v20 = *(v17 + 2);
        v19 = *(v17 + 3);
        if (v20 >= v19 >> 1)
        {
          v17 = sub_1A94485F4((v19 > 1), v20 + 1, 1, v17);
        }

        *(v17 + 2) = v20 + 1;
        v21 = &v17[24 * v20];
        *(v21 + 4) = a1;
        *(v21 + 5) = a2;
        *(v21 + 6) = v16;
        *(a7 + 16) = v17;
        swift_endAccess();
        swift_beginAccess();
        v22 = *(a8 + 16);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        *(a8 + 16) = v22;
        if ((v23 & 1) == 0)
        {
          v22 = sub_1A9448860(0, v22[2] + 1, 1, v22);
          *(a8 + 16) = v22;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_1A9448860((v24 > 1), v25 + 1, 1, v22);
        }

        v22[2] = v25 + 1;
        v26 = &v22[4 * v25];
        v26[4] = a1;
        v26[5] = a2;
        v26[6] = a4;
        v26[7] = v13;
        *(a8 + 16) = v22;
        return swift_endAccess();
      }
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v15 = a4 & 0xFFFFFFFFFFFFLL;
      }

      v16 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_1A932D070(v39, v38);
  *&v35 = a1;
  *(&v35 + 1) = a2;
  sub_1A9379534(v38, v36);
  swift_beginAccess();
  a2 = *(a4 + 16);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = a2;
  if ((v28 & 1) == 0)
  {
LABEL_23:
    a2 = sub_1A9448710(0, a2[2] + 1, 1, a2);
    *(a4 + 16) = a2;
  }

  v30 = a2[2];
  v29 = a2[3];
  if (v30 >= v29 >> 1)
  {
    a2 = sub_1A9448710((v29 > 1), v30 + 1, 1, a2);
  }

  a2[2] = v30 + 1;
  v31 = &a2[7 * v30];
  v32 = v36[0];
  v33 = v36[1];
  v31[10] = v37;
  *(v31 + 3) = v32;
  *(v31 + 4) = v33;
  *(v31 + 2) = v35;
  *(a4 + 16) = a2;
  swift_endAccess();
  return sub_1A9378138(v38);
}

uint64_t sub_1A9447590(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A944A774(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_1A957D388();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[1];
          if (v13 >> 14 >= *(v12 - 3) >> 14)
          {
            break;
          }

          v14 = v12[4];
          v15 = *(v12 + 1);
          v16 = *(v12 - 1);
          *(v12 + 1) = *(v12 - 3);
          *(v12 + 3) = v16;
          *(v12 - 3) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1A937829C(&qword_1EB387658, &qword_1A958EA98);
      v7 = sub_1A957C518();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1A94499B0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A94476FC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A944A760(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1A9448994(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A944776C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A944A74C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1A957D388();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >> 14 >= *v13 >> 14)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
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
      sub_1A937829C(&qword_1EB387648, &qword_1A958EA88);
      v7 = sub_1A957C518();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1A9448C04(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A94478DC(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(v5 + 16);

  if (!v6)
  {
  }

  v8 = 0;
  v9 = (v5 + 56);
  while (v8 < *(v5 + 16))
  {
    ++v8;
    v11 = *(v9 - 1);
    v10 = *v9;
    v13 = *(v9 - 3);
    v12 = *(v9 - 2);

    a1(v13, v12, v11, v10);

    v9 += 4;
    if (v6 == v8)
    {
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A94479C4(uint64_t *a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(&v82 + 1) = a8;
  *&v82 = a7;
  v80 = a6;
  v81 = a5;
  swift_beginAccess();
  v17 = *a2;
  if (*(*a2 + 16))
  {
    v8 = v89;
    v10 = 24;
    do
    {
      v18 = *(v17 + 40);
      sub_1A9448584(a1, v89);
      v11 = *v89;
      v9 = v18 >> 14;
      sub_1A9378138(&v89[16]);
      if (v9 >= v11 >> 14)
      {
        break;
      }

      swift_beginAccess();
      v9 = *a2;
      v19 = *(*a2 + 16);
      if (!v19)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v11 = *(v9 + 48);
      v20 = v19 - 1;
      v21 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if (!isUniquelyReferenced_nonNull_native || v20 > *(v9 + 24) >> 1)
      {
        if (*(v9 + 16) <= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = *(v9 + 16);
        }

        v9 = sub_1A94485F4(isUniquelyReferenced_nonNull_native, v23, 1, v9);
        *a2 = v9;
      }

      v12 = *(v9 + 16);
      memmove((v9 + 32), (v9 + 56), 24 * v12 - 24);
      *(v9 + 16) = v12 - 1;
      *a2 = v9;
      swift_endAccess();
      if (__OFADD__(*a3, v11))
      {
        goto LABEL_36;
      }

      *a3 += v11;
      v17 = *a2;
    }

    while (*(*a2 + 16));
  }

  a2 = *a4;
  if (*(*a4 + 16))
  {
    v24 = *a4;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = a2[2];
      if (v25)
      {
        goto LABEL_16;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v33 = MEMORY[0x1AC5851A0](15, v10, v9, a4);
      goto LABEL_27;
    }
  }

  else
  {
LABEL_37:
    __break(1u);
  }

  a2 = sub_1A944A788(a2);
  v25 = a2[2];
  if (!v25)
  {
    goto LABEL_39;
  }

LABEL_16:
  v26 = v25 - 1;
  sub_1A932D070(&a2[5 * v25 - 1], &v87);
  a2[2] = v26;
  *a4 = a2;
  sub_1A932D070(&v87, v89);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v79 = a4;
  v77 = *(&v87 + 1);
  v78 = v87;
  v74 = *(&v88 + 1);
  v76 = v88;
  a4 = v81;
  *&v83 = a1;
  *v89 = v81;
  *&v89[8] = v80;
  v11 = *(&v82 + 1);
  v9 = v82;
  *&v89[16] = v82;
  sub_1A9473844();
  v28 = *a1;
  v29 = a1[1];
  sub_1A957C3B8();

  v75 = sub_1A957CC78();

  *&v87 = v81;
  *(&v87 + 1) = v80;
  v88 = v82;
  sub_1A9473844();
  v84 = v81;
  v85 = v80;
  v86 = v82;
  sub_1A9473844();

  sub_1A9448584(a1, v89);
  sub_1A9378138(&v89[16]);
  sub_1A957C3B8();
  v31 = v30;
  v33 = v32;
  v12 = v34;

  v8 = sub_1A957CC78();

  v10 = v8 - *a3;
  if (__OFSUB__(v8, *a3))
  {
    goto LABEL_40;
  }

  a4 = v76;
  v9 = v77;
  LODWORD(v8) = (v76 & 0x1000000000000000) == 0 || (v77 & 0x800000000000000) != 0;
  v12 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x1000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v35 = v77 & 0xFFFFFFFFFFFFLL;
  if ((v76 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v76) & 0xF;
  }

  if (v35 < v10)
  {
    __break(1u);
    goto LABEL_70;
  }

  v33 = (v10 << 16) | 4;
LABEL_27:
  result = v33;
  if ((v33 & 0xC) != 4 << v8)
  {
    if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = sub_1A938156C(v33, v9, a4);
  if ((a4 & 0x1000000000000000) == 0)
  {
LABEL_29:
    v36 = v75 + (result >> 16);
    if (__OFADD__(v75, result >> 16))
    {
      __break(1u);
    }

    else if ((v36 & 0x8000000000000000) == 0)
    {
      v37 = v9 & 0xFFFFFFFFFFFFLL;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v37 = v12;
      }

      if (v37 >= v36)
      {
        v31 = (v36 << 16) | 4;
        goto LABEL_45;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_76;
  }

LABEL_44:
  v31 = MEMORY[0x1AC5851A0](result, v75, v9, a4);
LABEL_45:
  if (v33 >> 14 > v31 >> 14)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v75 = v10;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v38 = v12;
  }

  else
  {
    v38 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v11 = 7;
  }

  else
  {
    v11 = 11;
  }

  if (v33 >> 14 > 4 * v38)
  {
    goto LABEL_71;
  }

  sub_1A957C3B8();
  v12 = sub_1A957CC78();

  if (__OFADD__(*a3, v12))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  *a3 += v12;
  v39 = swift_allocObject();
  *(v39 + 16) = 15;
  *(v39 + 24) = v31;
  *v89 = v9;
  *&v89[8] = a4;
  v40 = v74;
  *&v89[16] = v74;
  MEMORY[0x1EEE9AC00](v39, v41);
  v42 = v78;

  TransformableString.withTransformation<A>(_:)(sub_1A944AA7C);
  v43 = *v89;
  sub_1A9473530(&v87);

  *(&v87 + 1) = v43;
  v88 = *&v89[8];

  *&v87 = v78;
  v44 = swift_allocObject();
  *(v44 + 16) = v33;
  *(v44 + 24) = v11 | (v38 << 16);
  v84 = v9;
  v85 = a4;
  *&v86 = v40;
  MEMORY[0x1EEE9AC00](v44, v45);

  TransformableString.withTransformation<A>(_:)(sub_1A944AA7C);
  v33 = v9;
  v12 = v40;
  sub_1A9473530(v89);

  *&v89[8] = v9;
  *&v89[16] = a4;
  *&v89[24] = v40;

  KeyPath = swift_getKeyPath();
  *v89 = v42;
  *&v89[8] = v9;
  *&v89[16] = a4;
  *&v89[24] = v40;
  v9 = &type metadata for TTSMarkup.SpeechText;
  TTSMarkupSpeech.subscript.getter(KeyPath, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

  if (a4 == 1)
  {
    v11 = v79;
    a1 = v83;
    goto LABEL_58;
  }

  result = swift_getKeyPath();
  v11 = v79;
  a1 = v83;
  if (__OFADD__(v84, v75))
  {
LABEL_77:
    __break(1u);
    return result;
  }

  *v89 = v84 + v75;
  v89[8] = 0;
  TTSMarkupSpeech.subscript.setter(v89, result, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
LABEL_58:
  v31 = *v11;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v31;
  a3 = a4;
  if ((v47 & 1) == 0)
  {
LABEL_73:
    v31 = sub_1A93ADC90(0, *(v31 + 16) + 1, 1, v31);
    *v11 = v31;
  }

  v49 = *(v31 + 16);
  v48 = *(v31 + 24);
  if (v49 >= v48 >> 1)
  {
    v31 = sub_1A93ADC90((v48 > 1), v49 + 1, 1, v31);
    *v11 = v31;
  }

  *&v89[24] = v9;
  *&v90 = &protocol witness table for TTSMarkup.SpeechText;
  v50 = swift_allocObject();
  *v89 = v50;
  v50[2] = v78;
  v50[3] = v33;
  v50[4] = a3;
  v50[5] = v12;
  *(v31 + 16) = v49 + 1;
  sub_1A932D070(v89, v31 + 40 * v49 + 32);
  v51 = a1[5];
  v52 = a1[6];
  v53 = sub_1A93780F4(a1 + 2, v51);
  v54 = *(v51 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53, v56);
  sub_1A9448584(a1, v89);
  v57 = swift_allocObject();
  v58 = v80;
  *(v57 + 16) = v81;
  *(v57 + 24) = v58;
  v59 = *(&v82 + 1);
  *(v57 + 32) = v82;
  *(v57 + 40) = v59;
  v60 = *&v89[16];
  *(v57 + 48) = *v89;
  *(v57 + 64) = v60;
  *(v57 + 80) = v90;
  *(v57 + 96) = v91;

  TTSMarkupSpeech.tap(_:)(sub_1A944A7D8, v57, v51, v52, &v74 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));

  v61 = v79;
  v62 = *v79;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *v61 = v62;
  if ((v63 & 1) == 0)
  {
    v63 = sub_1A93ADC90(0, v62[2] + 1, 1, v62);
    v62 = v63;
    *v79 = v63;
  }

  v66 = v62[2];
  v65 = v62[3];
  if (v66 >= v65 >> 1)
  {
    v63 = sub_1A93ADC90((v65 > 1), v66 + 1, 1, v62);
    *v79 = v63;
  }

  MEMORY[0x1EEE9AC00](v63, v64);
  (*(v54 + 16))(&v74 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), &v74 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
  v67 = v79;
  sub_1A944A8F4(v66, &v74 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v79, v51, v52);
  (*(v54 + 8))(&v74 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
  v68 = v67;
  v69 = *v67;
  v70 = v87;
  v83 = v88;
  *v67 = v69;
  v72 = v69[2];
  v71 = v69[3];
  if (v72 >= v71 >> 1)
  {
    v69 = sub_1A93ADC90((v71 > 1), v72 + 1, 1, v69);
    *v68 = v69;
  }

  *&v89[24] = &type metadata for TTSMarkup.SpeechText;
  *&v90 = &protocol witness table for TTSMarkup.SpeechText;
  v73 = swift_allocObject();
  *v89 = v73;
  *(v73 + 16) = v70;
  *(v73 + 32) = v83;
  v69[2] = v72 + 1;
  return sub_1A932D070(v89, &v69[5 * v72 + 4]);
}

uint64_t sub_1A94484E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  result = sub_1A9450BAC();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A944855C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1A9448584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB387638, &qword_1A958EA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1A94485F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387640, &qword_1A958EA80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_1A9448710(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387650, &qword_1A958EA90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387638, &qword_1A958EA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A9448860(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387660, &qword_1A958EAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1A937829C(&qword_1EB387658, &qword_1A958EA98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A9448994(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A937829C(&qword_1EB387638, &qword_1A958EA50);
        v5 = sub_1A957C518();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A94491D4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A9448A9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A9448A9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3;
    v6 = result - a3;
LABEL_5:
    v25 = a3;
    v17 = v6;
    v18 = v5;
    while (1)
    {
      sub_1A9448584(v5, v24);
      v7 = v5 - 56;
      sub_1A9448584(v5 - 56, v23);
      sub_1A9448584(v24, &v21);
      v8 = v21;
      sub_1A9448584(v23, &v19);
      v9 = v19;
      sub_1A9378138(v20);
      sub_1A9378138(v22);
      sub_1A937B960(v23, &qword_1EB387638, &qword_1A958EA50);
      result = sub_1A937B960(v24, &qword_1EB387638, &qword_1A958EA50);
      if (v8 >> 14 >= v9 >> 14)
      {
LABEL_4:
        a3 = v25 + 1;
        v5 = v18 + 56;
        v6 = v17 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *(v5 + 48);
      v12 = *(v5 + 16);
      v11 = *(v5 + 32);
      v13 = *v5;
      v14 = *(v5 - 40);
      *v5 = *v7;
      *(v5 + 16) = v14;
      *(v5 + 32) = *(v5 - 24);
      *(v5 + 48) = *(v5 - 8);
      *v7 = v13;
      *(v5 - 40) = v12;
      *(v5 - 24) = v11;
      v5 -= 56;
      *(v7 + 48) = v10;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9448C04(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *v92;
    if (!v92)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1A938911C(v8);
      v8 = result;
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1A9449F44((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v92);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_112;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_113;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_114;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = 24 * v9;
      v12 = (*a3 + 24 * v9);
      v14 = *v12;
      v13 = v12 + 6;
      v15 = v10 >> 14;
      v16 = v14 >> 14;
      v17 = v9 + 2;
      while (v5 != v17)
      {
        v18 = *v13;
        v13 += 3;
        v19 = (v15 < v16) ^ (v18 >> 14 >= v10 >> 14);
        ++v17;
        v10 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v17 - 1;
          if (v15 >= v16)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v15 >= v16)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 24 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v23 = (v28 + v11);
            v24 = v28 + v21;
            v25 = *(v23 + 2);
            v26 = *v23;
            v27 = *(v24 - 8);
            *v23 = *(v24 - 24);
            *(v23 + 2) = v27;
            *(v24 - 24) = v26;
            *(v24 - 8) = v25;
          }

          ++v22;
          --v20;
          v21 -= 24;
          v11 += 24;
        }

        while (v22 < v7 + v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v38 = *(v8 + 2);
    v37 = *(v8 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1A9389130((v37 > 1), v38 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v39;
    v40 = &v8[16 * v38];
    *(v40 + 4) = v9;
    *(v40 + 5) = v7;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_125;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v8[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v8[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v69 = &v8[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_71:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v8[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_78:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v81 = *&v8[16 * v80 + 32];
        v82 = *&v8[16 * v42 + 40];
        sub_1A9449F44((*a3 + 24 * v81), (*a3 + 24 * *&v8[16 * v42 + 32]), *a3 + 24 * v82, v41);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A938911C(v8);
        }

        if (v80 >= *(v8 + 2))
        {
          goto LABEL_100;
        }

        v83 = &v8[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        result = sub_1A93CE710(v42);
        v39 = *(v8 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v8[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v8[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v8[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 24 * v7 - 24;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 24 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >> 14 >= *v34 >> 14)
    {
LABEL_29:
      ++v7;
      v30 += 24;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 32);
    *(v34 + 24) = *v34;
    *(v34 + 40) = *(v34 + 16);
    *v34 = v32;
    *(v34 + 8) = v35;
    v34 -= 24;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1A94491D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v9 = *v101;
    if (!*v101)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_1A938911C(v8);
      v8 = result;
    }

    v93 = v5;
    v114 = v8;
    v94 = *(v8 + 2);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v5 = *&v8[16 * v94];
        v95 = *&v8[16 * v94 + 24];
        sub_1A944A188((*a3 + 56 * v5), (*a3 + 56 * *&v8[16 * v94 + 16]), *a3 + 56 * v95, v9);
        if (v93)
        {
        }

        if (v95 < v5)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A938911C(v8);
        }

        if (v94 - 2 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v96 = &v8[16 * v94];
        *v96 = v5;
        *(v96 + 1) = v95;
        v114 = v8;
        result = sub_1A93CE710(v94 - 1);
        v8 = v114;
        v94 = *(v114 + 2);
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v99 = v8;
      v10 = *a3;
      sub_1A9448584(*a3 + 56 * (v7 + 1), v113);
      v11 = v10 + 56 * v7;
      sub_1A9448584(v11, v112);
      sub_1A9448584(v113, v110);
      v12 = v110[0];
      sub_1A9448584(v112, v108);
      v103 = v108[0] >> 14;
      v105 = v12 >> 14;
      sub_1A9378138(v109);
      sub_1A9378138(v111);
      sub_1A937B960(v112, &qword_1EB387638, &qword_1A958EA50);
      result = sub_1A937B960(v113, &qword_1EB387638, &qword_1A958EA50);
      v13 = v7 + 2;
      v14 = v11 + 112;
      while (v6 != v13)
      {
        v8 = v6;
        sub_1A9448584(v14, v113);
        sub_1A9448584(v14 - 56, v112);
        sub_1A9448584(v113, v110);
        v15 = v110[0];
        sub_1A9448584(v112, v108);
        v16 = v108[0];
        sub_1A9378138(v109);
        sub_1A9378138(v111);
        sub_1A937B960(v112, &qword_1EB387638, &qword_1A958EA50);
        result = sub_1A937B960(v113, &qword_1EB387638, &qword_1A958EA50);
        ++v13;
        v14 += 56;
        if (v105 < v103 == v15 >> 14 >= v16 >> 14)
        {
          v6 = v13 - 1;
          break;
        }
      }

      v9 = v7;
      v17 = 56 * v7;
      if (v105 >= v103)
      {
        goto LABEL_19;
      }

      if (v6 < v7)
      {
        goto LABEL_120;
      }

      if (v7 >= v6)
      {
LABEL_19:
        v8 = v99;
      }

      else
      {
        v18 = 56 * v6 - 56;
        v19 = v6;
        v20 = v7;
        v8 = v99;
        do
        {
          if (v20 != --v19)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v21 = (v30 + v17);
            v22 = *(v30 + v17 + 48);
            v23 = (v30 + v18);
            v25 = v21[1];
            v24 = v21[2];
            v26 = *v21;
            v28 = v23[1];
            v27 = v23[2];
            v29 = *v23;
            *(v21 + 6) = *(v23 + 6);
            v21[1] = v28;
            v21[2] = v27;
            *v21 = v29;
            *v23 = v26;
            v23[1] = v25;
            v23[2] = v24;
            *(v23 + 6) = v22;
          }

          ++v20;
          v18 -= 56;
          v17 += 56;
        }

        while (v20 < v19);
      }
    }

    v31 = a3[1];
    if (v6 < v31)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_119;
      }

      if (v6 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_121;
        }

        if (v9 + a4 >= v31)
        {
          v32 = a3[1];
        }

        else
        {
          v32 = (v9 + a4);
        }

        if (v32 < v9)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v6 != v32)
        {
          break;
        }
      }
    }

    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_118;
    }

LABEL_30:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v34 = *(v8 + 2);
    v33 = *(v8 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_1A9389130((v33 > 1), v34 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v35;
    v36 = &v8[16 * v34];
    *(v36 + 4) = v9;
    *(v36 + 5) = v7;
    v37 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v8 + 4);
          v40 = *(v8 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_49:
          if (v42)
          {
            goto LABEL_107;
          }

          v55 = &v8[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_110;
          }

          v61 = &v8[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_114;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v65 = &v8[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_63:
        if (v60)
        {
          goto LABEL_109;
        }

        v68 = &v8[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_112;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_70:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
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
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v77 = *&v8[16 * v76 + 32];
        v9 = *&v8[16 * v38 + 40];
        sub_1A944A188((*a3 + 56 * v77), (*a3 + 56 * *&v8[16 * v38 + 32]), *a3 + 56 * v9, v37);
        if (v5)
        {
        }

        if (v9 < v77)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A938911C(v8);
        }

        if (v76 >= *(v8 + 2))
        {
          goto LABEL_104;
        }

        v78 = &v8[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v9;
        v114 = v8;
        result = sub_1A93CE710(v38);
        v8 = v114;
        v35 = *(v114 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v8[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_105;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_106;
      }

      v50 = &v8[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_108;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_111;
      }

      if (v54 >= v46)
      {
        v72 = &v8[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_115;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v97 = v5;
  v79 = v9;
  v80 = *a3;
  v81 = *a3 + 56 * v6;
  v100 = v79;
  v82 = &v79[-v6];
  v102 = v32;
LABEL_81:
  v104 = v81;
  v106 = v6;
  v83 = v82;
  while (1)
  {
    sub_1A9448584(v81, v113);
    v84 = v81 - 56;
    sub_1A9448584(v81 - 56, v112);
    sub_1A9448584(v113, v110);
    v85 = v110[0];
    sub_1A9448584(v112, v108);
    v86 = v108[0];
    sub_1A9378138(v109);
    sub_1A9378138(v111);
    sub_1A937B960(v112, &qword_1EB387638, &qword_1A958EA50);
    result = sub_1A937B960(v113, &qword_1EB387638, &qword_1A958EA50);
    if (v85 >> 14 >= v86 >> 14)
    {
LABEL_80:
      v6 = v106 + 1;
      v81 = v104 + 56;
      --v82;
      v7 = v102;
      if ((v106 + 1) != v102)
      {
        goto LABEL_81;
      }

      v5 = v97;
      v9 = v100;
      if (v102 < v100)
      {
        goto LABEL_118;
      }

      goto LABEL_30;
    }

    if (!v80)
    {
      break;
    }

    v87 = *(v81 + 48);
    v89 = *(v81 + 16);
    v88 = *(v81 + 32);
    v90 = *v81;
    v91 = *(v81 - 40);
    *v81 = *v84;
    *(v81 + 16) = v91;
    *(v81 + 32) = *(v81 - 24);
    *(v81 + 48) = *(v81 - 8);
    *v84 = v90;
    *(v81 - 40) = v89;
    *(v81 - 24) = v88;
    v81 -= 56;
    *(v84 + 48) = v87;
    if (__CFADD__(v83++, 1))
    {
      goto LABEL_80;
    }
  }

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
  return result;
}

uint64_t sub_1A94499B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v96 = *v96;
    if (!v96)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1A938911C(v9);
      v9 = result;
    }

    v88 = v9 + 16;
    v89 = *(v9 + 2);
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = &v9[16 * v89];
        v91 = *v90;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1A944A540((*a3 + 32 * *v90), (*a3 + 32 * *v92), (*a3 + 32 * v93), v96);
        if (v4)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_112;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_113;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_114;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 32 * v8);
      v12 = 32 * v10;
      v13 = (*a3 + 32 * v10);
      v15 = *v13;
      v14 = v13 + 8;
      v16 = v11 >> 14;
      v17 = v15 >> 14;
      v18 = v10 + 2;
      while (v6 != v18)
      {
        v19 = *v14;
        v14 += 4;
        v20 = (v16 < v17) ^ (v19 >> 14 >= v11 >> 14);
        ++v18;
        v11 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v18 - 1;
          if (v16 >= v17)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v16 >= v17)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 32 * v8 - 32;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v22)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v30 + v12);
            v25 = (v30 + v21);
            v26 = *(v24 + 2);
            v27 = *(v24 + 3);
            v28 = *v24;
            v29 = v25[1];
            *v24 = *v25;
            v24[1] = v29;
            *v25 = v28;
            *(v25 + 2) = v26;
            *(v25 + 3) = v27;
          }

          ++v23;
          v21 -= 32;
          v12 += 32;
        }

        while (v23 < v22);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v42 = *(v9 + 2);
    v41 = *(v9 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1A9389130((v41 > 1), v42 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v43;
    v44 = &v9[16 * v42];
    *(v44 + 4) = v10;
    *(v44 + 5) = v8;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_125;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_103;
          }

          v63 = &v9[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_110;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = &v9[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_105;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_108;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v85 = *&v9[16 * v84 + 32];
        v86 = *&v9[16 * v46 + 40];
        sub_1A944A540((*a3 + 32 * v85), (*a3 + 32 * *&v9[16 * v46 + 32]), (*a3 + 32 * v86), v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1A938911C(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v87 = &v9[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_1A93CE710(v46);
        v43 = *(v9 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_101;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_102;
      }

      v58 = &v9[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_104;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_111;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v8 - 32;
  v33 = v10 - v8;
LABEL_30:
  v34 = *(v31 + 32 * v8);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 >> 14 >= *v36 >> 14)
    {
LABEL_29:
      ++v8;
      v32 += 32;
      --v33;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 56);
    v38 = *(v36 + 40);
    v39 = *(v36 + 16);
    *(v36 + 32) = *v36;
    *(v36 + 48) = v39;
    *v36 = v34;
    *(v36 + 8) = v38;
    *(v36 + 24) = v37;
    v36 -= 32;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1A9449F44(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 >> 14 < *v4 >> 14)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 >> 14 < *v16 >> 14)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1A944A188(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 56;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 56;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[56 * v11] <= a4)
    {
      memmove(a4, a2, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      v20 = v6;
    }

    else
    {
      v37 = v7;
      v45 = v4;
      do
      {
        v21 = (v6 - 56);
        v22 = (v12 - 56);
        v5 -= 56;
        v38 = v6 - 56;
        while (1)
        {
          v25 = v22 + 56;
          v26 = (v5 + 56);
          sub_1A9448584(v22, v44);
          sub_1A9448584(v21, v43);
          sub_1A9448584(v44, v41);
          v27 = v41[0];
          sub_1A9448584(v43, v39);
          v28 = v39[0];
          sub_1A9378138(v40);
          sub_1A9378138(v42);
          sub_1A937B960(v43, &qword_1EB387638, &qword_1A958EA50);
          sub_1A937B960(v44, &qword_1EB387638, &qword_1A958EA50);
          if (v27 >> 14 < v28 >> 14)
          {
            break;
          }

          if (v26 != v25)
          {
            v29 = *v22;
            v30 = *(v22 + 16);
            v31 = *(v22 + 32);
            *(v5 + 48) = *(v22 + 48);
            *(v5 + 16) = v30;
            *(v5 + 32) = v31;
            *v5 = v29;
          }

          v23 = v22 - 56;
          v5 -= 56;
          v24 = v22 > v45;
          v22 -= 56;
          v21 = (v6 - 56);
          if (!v24)
          {
            v12 = (v23 + 56);
            v20 = v6;
            v4 = v45;
            goto LABEL_34;
          }
        }

        v20 = v6 - 56;
        if (v26 != v6)
        {
          v32 = *v38;
          v33 = *(v6 - 40);
          v34 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v33;
          *(v5 + 32) = v34;
          *v5 = v32;
        }

        v4 = v45;
        if (v25 <= v45)
        {
          break;
        }

        v12 = (v22 + 56);
        v6 -= 56;
      }

      while (v38 > v37);
      v12 = (v22 + 56);
    }
  }

  else
  {
    if (a4 != __src || &__src[56 * v9] <= a4)
    {
      memmove(a4, __src, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        sub_1A9448584(v6, v44);
        sub_1A9448584(v4, v43);
        sub_1A9448584(v44, v41);
        v13 = v41[0];
        sub_1A9448584(v43, v39);
        v14 = v39[0];
        sub_1A9378138(v40);
        sub_1A9378138(v42);
        sub_1A937B960(v43, &qword_1EB387638, &qword_1A958EA50);
        sub_1A937B960(v44, &qword_1EB387638, &qword_1A958EA50);
        if (v13 >> 14 >= v14 >> 14)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 56;
        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 56;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 56;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      v17 = *v15;
      v18 = *(v15 + 1);
      v19 = *(v15 + 2);
      *(v7 + 6) = *(v15 + 6);
      *(v7 + 1) = v18;
      *(v7 + 2) = v19;
      *v7 = v17;
      goto LABEL_13;
    }

LABEL_15:
    v20 = v7;
  }

LABEL_34:
  v35 = (v12 - v4) / 56;
  if (v20 != v4 || v20 >= &v4[56 * v35])
  {
    memmove(v20, v4, 56 * v35);
  }

  return 1;
}

uint64_t sub_1A944A540(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 >> 14 < *v4 >> 14)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 4);
      v19 -= 32;
      if (v21 >> 14 < *v18 >> 14)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_1A944A7D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 16) & 0xE0000000000000FFLL) == 0x2000000000000000)
  {
    v5 = v3[2];
    v6 = v3[4];
    v7 = v3[5];
    v8 = *(result + 24);
    v22.n128_u64[0] = v3[3];
    v4 = v22.n128_u64[0];
    v22.n128_u64[1] = v6;
    v23 = v7;
    v9 = v3[6];
    v10 = v3[7];

    v12 = TransformableString.translate(_:)(v9, v10);
    v14 = v13;

    v19.n128_u64[0] = v12;
    v19.n128_u64[1] = v14;
    LOBYTE(v20) = 0;
    sub_1A9474C48(&v19, v8, &v22);
    v15 = v22;
    v16 = v24;
    LOBYTE(v10) = v23;
    v17 = v23 | 0x2000000000000000;
    v22.n128_u64[0] = v5;
    v22.n128_u64[1] = v4;
    v23 = v6;
    v24 = v7;
    v19 = v15;
    v20 = v17;
    v21 = v16;
    TTSMarkupSpeech.handleEventTaps(event:ssml:)(&v19, a2, a3, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
    return sub_1A9410F88(v15.n128_i64[0], v15.n128_i64[1], v10);
  }

  return result;
}

uint64_t sub_1A944A8F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1A93981E4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1A932D070(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1A944A9E8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

double AudioEffectConfiguration.spec.getter@<D0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = sub_1A957BA38();
  TTSAudioEffect.init(rawValue:)(v2);
  if (v8 == 2)
  {
    *(a1 + 80) = 0;
    result = 0.0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    TTSAudioEffect.spec.getter(v6);
    v4 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v4;
    *(a1 + 64) = v6[4];
    *(a1 + 80) = v7;
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t sub_1A944AB0C()
{
  v3 = *(*v0 + 168);

  return v3(v1);
}

uint64_t sub_1A944AB60()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_1A944AB98(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;

  return sub_1A944B214();
}

uint64_t (*sub_1A944ABE4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A944AC38;
}

uint64_t sub_1A944AC38(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1A944B214();
  }

  return result;
}

uint64_t sub_1A944AC6C()
{
  v1 = sub_1A957BA58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v23 - v10;
  result = (*(*v0 + 160))(v9);
  v13 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v14 = 0;
    v23 = (v2 + 8);
    v27 = (v2 + 32);
    v28 = v2 + 16;
    v15 = MEMORY[0x1E69E7CC0];
    v25 = v7;
    v26 = v1;
    v24 = result;
    while (v14 < *(v13 + 16))
    {
      v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v17 = *(v2 + 72);
      (*(v2 + 16))(v11, v13 + v16 + v17 * v14, v1);
      if (sub_1A957BA48())
      {
        v18 = *v27;
        (*v27)(v7, v11, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A944EF6C(0, *(v15 + 16) + 1, 1);
          v15 = v30;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1A944EF6C(v20 > 1, v21 + 1, 1);
          v15 = v30;
        }

        *(v15 + 16) = v21 + 1;
        v22 = v15 + v16 + v21 * v17;
        v7 = v25;
        v1 = v26;
        result = (v18)(v22, v25, v26);
        v13 = v24;
      }

      else
      {
        result = (*v23)(v11, v1);
      }

      if (v29 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v15;
  }

  return result;
}

uint64_t sub_1A944AEE4()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t sub_1A944AF30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[19];
  v2[18] = a1;
  v2[19] = a2;

  return (*(*v2 + 392))(0);
}

uint64_t (*sub_1A944AFC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A944B014;
}

uint64_t sub_1A944B014(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*(**(a1 + 24) + 392))(0);
  }

  return result;
}

uint64_t sub_1A944B074()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
}

uint64_t sub_1A944B0AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t sub_1A944B144()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
}

uint64_t sub_1A944B17C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  *(v1 + 168) = a1;
}

uint64_t sub_1A944B214()
{
  v1 = sub_1A957BA58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A944AC6C();
  v8 = *(v7 + 16);
  if (v8)
  {
    v31 = v0;
    v11 = *(v2 + 16);
    v9 = v2 + 16;
    v10 = v11;
    v12 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v30[1] = v7;
    v13 = v7 + v12;
    v14 = *(v9 + 56);
    v15 = (v9 - 8);
    v16 = MEMORY[0x1E69E7CC0];
    v32 = v11;
    v11(v6, v7 + v12, v1);
    while (1)
    {
      v17._countAndFlagsBits = sub_1A957BA38();
      TTSAudioEffect.init(rawValue:)(v17);
      if (v42 == 2)
      {
        (*v15)(v6, v1);
      }

      else
      {
        v35 = v42 & 1;
        v18 = TTSAudioEffect.spec.getter(v33);
        (*v15)(v6, v1, v18);
        v38 = v33[2];
        v39 = v33[3];
        v40 = v33[4];
        v41 = v34;
        v36 = v33[0];
        v37 = v33[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1A944F298(0, *(v16 + 2) + 1, 1, v16);
        }

        v20 = *(v16 + 2);
        v19 = *(v16 + 3);
        if (v20 >= v19 >> 1)
        {
          v16 = sub_1A944F298((v19 > 1), v20 + 1, 1, v16);
        }

        *(v16 + 2) = v20 + 1;
        v21 = &v16[88 * v20];
        v22 = v37;
        *(v21 + 2) = v36;
        *(v21 + 3) = v22;
        v23 = v38;
        v24 = v39;
        v25 = v40;
        *(v21 + 14) = v41;
        *(v21 + 5) = v24;
        *(v21 + 6) = v25;
        *(v21 + 4) = v23;
        v10 = v32;
      }

      v13 += v14;
      if (!--v8)
      {
        break;
      }

      v10(v6, v13, v1);
    }

    v0 = v31;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v0 + 120);

  v27 = sub_1A944EDE0(v16, v26);

  if (v27)
  {
  }

  else
  {
    v28 = *(v0 + 120);
    *(v0 + 120) = v16;

    sub_1A944B9D4();
  }

  return sub_1A944D51C();
}

uint64_t sub_1A944B4CC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A944B50C(a1);
  return v2;
}

uint64_t sub_1A944B50C(uint64_t a1)
{
  v3 = sub_1A957BA58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v46 - v15;
  swift_defaultActor_initialize();
  v17 = MEMORY[0x1E69E7CC0];
  v1[16] = MEMORY[0x1E69E7CC0];
  v1[17] = v17;
  v1[22] = 0;
  v1[18] = 0;
  v1[19] = 0;
  v1[14] = a1;
  v1[15] = v17;
  v47 = v1;
  v18 = *(a1 + 16);

  v55 = v13;
  v54 = v18;
  if (v18)
  {
    v20 = 0;
    v53 = v4 + 16;
    v48 = (v4 + 8);
    v52 = (v4 + 32);
    v51 = v4;
    v50 = a1;
    v49 = v9;
    while (v20 < *(a1 + 16))
    {
      v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v22 = *(v4 + 72);
      (*(v4 + 16))(v16, a1 + v21 + v22 * v20, v3);
      if (sub_1A957BA48())
      {
        v23 = *v52;
        (*v52)(v9, v16, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v59 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A944EF6C(0, *(v17 + 16) + 1, 1);
          v17 = v59;
        }

        v26 = *(v17 + 16);
        v25 = *(v17 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1A944EF6C(v25 > 1, v26 + 1, 1);
          v17 = v59;
        }

        *(v17 + 16) = v26 + 1;
        v9 = v49;
        result = (v23)(v17 + v21 + v26 * v22, v49, v3);
        v4 = v51;
        a1 = v50;
      }

      else
      {
        result = (*v48)(v16, v3);
      }

      ++v20;
      v13 = v55;
      if (v54 == v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v27 = *(v17 + 16);
    if (v27)
    {
      v29 = *(v4 + 16);
      v28 = v4 + 16;
      v54 = v29;
      v30 = v17 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
      v31 = *(v28 + 56);
      v32 = (v28 - 8);
      v33 = MEMORY[0x1E69E7CC0];
      v29(v13, v30, v3);
      while (1)
      {
        v34._countAndFlagsBits = sub_1A957BA38();
        TTSAudioEffect.init(rawValue:)(v34);
        if (v65 == 2)
        {
          (*v32)(v13, v3);
        }

        else
        {
          v58 = v65 & 1;
          v35 = TTSAudioEffect.spec.getter(v56);
          (*v32)(v13, v3, v35);
          v61 = v56[2];
          v62 = v56[3];
          v63 = v56[4];
          v64 = v57;
          v59 = v56[0];
          v60 = v56[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1A944F298(0, *(v33 + 2) + 1, 1, v33);
          }

          v37 = *(v33 + 2);
          v36 = *(v33 + 3);
          if (v37 >= v36 >> 1)
          {
            v33 = sub_1A944F298((v36 > 1), v37 + 1, 1, v33);
          }

          *(v33 + 2) = v37 + 1;
          v38 = &v33[88 * v37];
          v39 = v60;
          *(v38 + 2) = v59;
          *(v38 + 3) = v39;
          v40 = v61;
          v41 = v62;
          v42 = v63;
          *(v38 + 14) = v64;
          *(v38 + 5) = v41;
          *(v38 + 6) = v42;
          *(v38 + 4) = v40;
          v13 = v55;
        }

        v30 += v31;
        if (!--v27)
        {
          break;
        }

        v54(v13, v30, v3);
      }
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
    }

    v43 = v47;
    v44 = v47[15];
    v47[15] = v33;

    v45 = MEMORY[0x1E69E7CC0];
    v43[20] = sub_1A94506C0(MEMORY[0x1E69E7CC0]);
    v43[21] = sub_1A94507A0(v45);
    sub_1A944B9D4();
    return v43;
  }

  return result;
}

uint64_t sub_1A944B9D4()
{
  v1 = *(sub_1A944AC6C() + 16);

  if (!v1)
  {
    v158 = *(*v0 + 272);

    return v158(0, 0);
  }

  v190 = 0x75706E496E69616DLL;
  v202 = 0xD000000000000045;
  v203 = 0x80000001A95C2F40;
  swift_beginAccess();
  v2 = v0[16];
  v3 = MEMORY[0x1E69E7CC0];
  v0[16] = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v4 = v0[17];
  v0[17] = v3;

  v165 = v0;
  v5 = v0[15];
  v162 = *(v5 + 16);
  if (!v162)
  {
    v38 = 0xE900000000000074;
    goto LABEL_118;
  }

  v163 = v5 + 32;

  v6 = 0;
  v170 = 0;
  v167 = 0;
  v191 = 0xE900000000000074;
LABEL_4:
  v7 = v163 + 88 * v167;
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = *(v7 + 32);
  v199 = *(v7 + 48);
  v11 = *(v7 + 16);
  v198[0] = *v7;
  v198[1] = v11;
  v201 = v9;
  v200 = v8;
  v198[2] = v10;
  v197 = *(&v199 + 1);
  sub_1A937BE84(v198, v208);
  *&v208[0] = 0x6870617267;
  *(&v208[0] + 1) = 0xE500000000000000;
  *&v205 = v167;
  v12 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v12);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v196 = v208[0];
  *&v208[0] = 0;
  *(&v208[0] + 1) = 0xE000000000000000;
  sub_1A957CF08();

  *&v208[0] = 0xD00000000000001BLL;
  *(&v208[0] + 1) = 0x80000001A95C2FC0;
  *&v205 = v167;
  v13 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v13);

  MEMORY[0x1AC585140](0xD000000000000011, 0x80000001A95C2FE0);
  v207 = v208[0];
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_131;
  }

  if (HIDWORD(v6))
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_142;
  }

  ++v167;
  *&v208[0] = 0;
  *(&v208[0] + 1) = 0xE000000000000000;
  sub_1A957CF08();

  *&v208[0] = 0x79747265706F7270;
  *(&v208[0] + 1) = 0xE900000000000020;
  LODWORD(v205) = v6;
  v14 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v14);

  MEMORY[0x1AC585140](0x3030303030783020, 0xEE00200A20303030);
  MEMORY[0x1AC585140](*&v208[0], *(&v208[0] + 1));

  v15 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v208[0] = v15;
  sub_1A944FDD4(v6, 0x737361707962, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v17 = *&v208[0];
  v18 = 1 << *(v197 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v172 = v19 & *(v197 + 64);
  v164 = (v18 + 63) >> 6;

  v21 = 0;
  v166 = v190;
  v168 = v20;
  v22 = v15;
  v171 = v6;
LABEL_11:
  v192 = v17;
  v23 = v172;
  if (v172)
  {
    v194 = v22;
    v24 = v21;
    goto LABEL_17;
  }

  do
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_125;
    }

    if (v24 >= v164)
    {

      v140 = v207;

      sub_1A94509C8(v198);
      swift_beginAccess();
      v141 = v165[16];

      v142 = swift_isUniquelyReferenced_nonNull_native();
      v165[16] = v141;
      if (v142)
      {
        v143 = v165;
      }

      else
      {
        v154 = sub_1A944F164(0, v141[2] + 1, 1, v141);
        v143 = v165;
        v141 = v154;
        v165[16] = v154;
      }

      v145 = v141[2];
      v144 = v141[3];
      if (v145 >= v144 >> 1)
      {
        v155 = sub_1A944F164((v144 > 1), v145 + 1, 1, v141);
        v143 = v165;
        v141 = v155;
      }

      v141[2] = v145 + 1;
      v141[v145 + 4] = v22;
      v143[16] = v141;
      swift_endAccess();
      swift_beginAccess();
      v146 = v165[17];

      v147 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v165;
      v165[17] = v146;
      if ((v147 & 1) == 0)
      {
        v156 = sub_1A944F164(0, v146[2] + 1, 1, v146);
        v148 = v165;
        v146 = v156;
        v165[17] = v156;
      }

      v150 = v146[2];
      v149 = v146[3];
      if (v150 >= v149 >> 1)
      {
        v157 = sub_1A944F164((v149 > 1), v150 + 1, 1, v146);
        v148 = v165;
        v146 = v157;
      }

      v146[2] = v150 + 1;
      v146[v150 + 4] = v17;
      v148[17] = v146;
      swift_endAccess();
      v151 = *(v17 + 16);
      v152 = __OFADD__(v6, v151);
      v6 += v151;
      if (v152)
      {
        goto LABEL_133;
      }

      v153 = *(v22 + 16);
      v152 = __OFADD__(v170, v153);
      v170 += v153;
      if (v152)
      {
        goto LABEL_134;
      }

      v38 = v168;

      MEMORY[0x1AC585140](v140, *(&v140 + 1));

      if (v167 == v162)
      {
        goto LABEL_123;
      }

      v190 = v166;
      v191 = v168;
      goto LABEL_4;
    }

    v23 = *(v197 + 64 + 8 * v24);
    ++v21;
  }

  while (!v23);
  v194 = v22;
LABEL_17:
  v173 = v23;
  v169 = v24;
  v25 = __clz(__rbit64(v23)) | (v24 << 6);
  v26 = (*(v197 + 48) + 16 * v25);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v197 + 56) + 88 * v25;
  v30 = *(v29 + 16);
  v208[0] = *v29;
  v208[1] = v30;
  v32 = *(v29 + 48);
  v31 = *(v29 + 64);
  v33 = *(v29 + 32);
  v211 = *(v29 + 80);
  v209 = v32;
  v210 = v31;
  v208[2] = v33;
  v206 = v196;

  sub_1A9450A1C(v208, &v205);

  MEMORY[0x1AC585140](v27, v28);
  v34 = v206;
  *&v205 = 0;
  *(&v205 + 1) = 0xE000000000000000;
  sub_1A957CF08();

  *&v205 = 544763746;
  *(&v205 + 1) = 0xE400000000000000;
  MEMORY[0x1AC585140](v34, *(&v34 + 1));
  MEMORY[0x1AC585140](32, 0xE100000000000000);
  v35 = sub_1A95040E4();
  MEMORY[0x1AC585140](v35);

  MEMORY[0x1AC585140](32, 0xE100000000000000);
  v36 = *(&v210 + 1);
  v212 = *(&v210 + 1);
  *&v206 = *(*(&v210 + 1) + 16);
  v37 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v37);

  MEMORY[0x1AC585140](32, 0xE100000000000000);
  v38 = v211;
  v213 = v211;
  *&v206 = *(v211 + 16);
  v39 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v39);

  MEMORY[0x1AC585140](2592, 0xE200000000000000);
  MEMORY[0x1AC585140](v205, *(&v205 + 1));

  *&v205 = 0xD000000000000012;
  *(&v205 + 1) = 0x80000001A95C3000;
  LODWORD(v206) = v6;
  v40 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v40);

  MEMORY[0x1AC585140](10272, 0xE200000000000000);
  MEMORY[0x1AC585140](v34, *(&v34 + 1));
  MEMORY[0x1AC585140](0xA2029313220, 0xE600000000000000);
  MEMORY[0x1AC585140](v205, *(&v205 + 1));

  v41 = *(v36 + 16);

  if (v41)
  {
    v42 = 0;
    v43 = (v36 + 40);
    do
    {
      if (v42 >= *(v36 + 16))
      {
        goto LABEL_121;
      }

      v46 = *v43;
      if (*v43)
      {
        if (v46 == 1)
        {
          goto LABEL_142;
        }

        v47 = *(v43 - 1);
        v48 = *(v197 + 16);
        v49 = *v43;

        if (!v48)
        {
          goto LABEL_142;
        }

        sub_1A937A490(v47, v46);
        if ((v50 & 1) == 0)
        {
          goto LABEL_142;
        }

        v205 = v196;

        MEMORY[0x1AC585140](v47, v46);
        sub_1A9450A78(v47, v46);
        v44 = *(&v205 + 1);
        v45 = v205;
      }

      else
      {
        v44 = v191;

        v45 = v190;
      }

      ++v42;
      *&v205 = 0;
      *(&v205 + 1) = 0xE000000000000000;
      sub_1A957CF08();

      *&v205 = 0x2065726977;
      *(&v205 + 1) = 0xE500000000000000;
      MEMORY[0x1AC585140](v45, v44);

      MEMORY[0x1AC585140](32, 0xE100000000000000);
      MEMORY[0x1AC585140](v34, *(&v34 + 1));
      MEMORY[0x1AC585140](0x6D726F4673756220, 0xEA00000000007461);
      MEMORY[0x1AC585140](v205, *(&v205 + 1));

      MEMORY[0x1AC585140](10, 0xE100000000000000);
      v43 += 2;
    }

    while (v41 != v42);
  }

  sub_1A9450A8C(&v212);
  v51 = *(v38 + 16);

  if (v51)
  {
    v52 = 0;
    do
    {
      v53 = (v38 + 40 + 16 * v52);
      while (1)
      {
        if (v52 >= *(v38 + 16))
        {
          goto LABEL_122;
        }

        v54 = *v53;
        v55 = v52 + 1;
        if (*v53 == 1)
        {
          break;
        }

        if (!v54)
        {
          goto LABEL_142;
        }

        v56 = *(v53 - 1);
        v57 = *(v197 + 16);
        v58 = *v53;

        if (!v57)
        {
          goto LABEL_142;
        }

        sub_1A937A490(v56, v54);
        if ((v59 & 1) == 0)
        {
          goto LABEL_142;
        }

        v205 = v196;

        MEMORY[0x1AC585140](v56, v54);
        sub_1A9450A78(v56, v54);
        v61 = *(&v205 + 1);
        v60 = v205;
        *&v205 = 0x2065726977;
        *(&v205 + 1) = 0xE500000000000000;
        MEMORY[0x1AC585140](v34, *(&v34 + 1));
        MEMORY[0x1AC585140](32, 0xE100000000000000);
        MEMORY[0x1AC585140](v60, v61);

        MEMORY[0x1AC585140](0x6D726F4673756220, 0xEA00000000007461);
        MEMORY[0x1AC585140](v205, *(&v205 + 1));

        MEMORY[0x1AC585140](10, 0xE100000000000000);
        v53 += 2;
        v52 = v55;
        if (v51 == v55)
        {
          goto LABEL_40;
        }
      }

      MEMORY[0x1AC585140](10, 0xE100000000000000);
      v168 = *(&v34 + 1);
      v166 = v34;
    }

    while (v51 - 1 != v52++);
    v168 = *(&v34 + 1);
    v166 = v34;
  }

LABEL_40:
  v172 = (v173 - 1) & v173;
  sub_1A9450A8C(&v213);

  v63 = *(&v209 + 1) + 64;
  v64 = 1 << *(*(&v209 + 1) + 32);
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  else
  {
    v65 = -1;
  }

  v66 = v65 & *(*(&v209 + 1) + 64);
  v67 = (v64 + 63) >> 6;
  v181 = *(&v209 + 1);

  v68 = 0;
  v17 = v192;
  v22 = v194;
  v177 = v67;
  v179 = v63;
LABEL_46:
  v195 = v22;
  if (v66)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v72 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      __break(1u);
      goto LABEL_120;
    }

    if (v72 >= v67)
    {
      break;
    }

    v66 = *(v63 + 8 * v72);
    ++v68;
    if (v66)
    {
      v68 = v72;
LABEL_51:
      v73 = __clz(__rbit64(v66)) | (v68 << 6);
      v74 = *(*(v181 + 48) + 4 * v73);
      v75 = *(v181 + 56) + 40 * v73;
      v76 = *v75;
      v38 = *(v75 + 8);
      v187 = *(v75 + 16);
      v189 = *(v75 + 20);
      v185 = *(v75 + 23);
      v183 = *(v75 + 21);
      v77 = *(v75 + 16);
      v78 = *(v75 + 24);
      v79 = *(v75 + 32) | (*(v75 + 36) << 32);
      v80 = *(v75 + 37);
      *&v205 = 40;
      *(&v205 + 1) = 0xE100000000000000;
      v81 = v76;
      sub_1A9327228();
      MEMORY[0x1AC585140](v34, *(&v34 + 1));
      MEMORY[0x1AC585140](32, 0xE100000000000000);
      *&v206 = v74;
      v82 = sub_1A957D3A8();
      MEMORY[0x1AC585140](v82);

      MEMORY[0x1AC585140](41, 0xE100000000000000);
      v83 = *(&v205 + 1);
      if ((v80 & 1) == 0)
      {
        v174 = v205;
        v88 = *(v197 + 16);

        if (v88)
        {
          sub_1A937A490(v81, v38);
          if (v89)
          {
            *&v205 = 1701996919;
            *(&v205 + 1) = 0xE400000000000000;
            *&v206 = 0x6D61726170;
            *(&v206 + 1) = 0xE500000000000000;
            sub_1A93820F4();
            v90 = sub_1A957CCD8();
            MEMORY[0x1AC585140](v90);

            MEMORY[0x1AC585140](10272, 0xE200000000000000);
            v206 = v196;

            MEMORY[0x1AC585140](v81, v38);
            sub_1A9328CAC();
            MEMORY[0x1AC585140](v206, *(&v206 + 1));

            MEMORY[0x1AC585140](32, 0xE100000000000000);
            LODWORD(v206) = v187;
            v91 = sub_1A957D3A8();
            MEMORY[0x1AC585140](v91);

            MEMORY[0x1AC585140](8233, 0xE200000000000000);
            MEMORY[0x1AC585140](v174, *(&v174 + 1));

            MEMORY[0x1AC585140](10, 0xE100000000000000);
            v22 = v195;

            v71 = *(&v205 + 1);
            v70 = v205;
            goto LABEL_45;
          }
        }

        *&v205 = 0xD000000000000011;
        *(&v205 + 1) = 0x80000001A95C3090;
        v160 = v81;
        v161 = v38;
LABEL_141:
        MEMORY[0x1AC585140](v160, v161);
LABEL_142:
        result = sub_1A957D0A8();
        __break(1u);
        return result;
      }

      v84 = v205;
      if (v38)
      {
        v85 = v195;

        v86 = v81;
        v87 = *(v195 + 16);
        if (!v87)
        {
LABEL_62:
          v95 = v87 + v170;
          if (!__OFADD__(v87, v170))
          {
            if ((v95 & 0x8000000000000000) == 0)
            {
              if (!HIDWORD(v95))
              {
                goto LABEL_65;
              }

LABEL_127:
              __break(1u);
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
              goto LABEL_132;
            }

LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_125:
          __break(1u);
          goto LABEL_126;
        }
      }

      else
      {
        v205 = v34;

        MEMORY[0x1AC585140](46, 0xE100000000000000);
        MEMORY[0x1AC585140](0x6D61726170, 0xE500000000000000);
        MEMORY[0x1AC585140](46, 0xE100000000000000);
        *&v206 = v74;
        v85 = v195;
        v92 = sub_1A957D3A8();
        MEMORY[0x1AC585140](v92);

        v38 = *(&v205 + 1);
        v86 = v205;
        v87 = *(v195 + 16);
        if (!v87)
        {
          goto LABEL_62;
        }
      }

      v93 = sub_1A937A490(v86, v38);
      if ((v94 & 1) == 0)
      {
        v87 = *(v85 + 16);
        goto LABEL_62;
      }

      LODWORD(v95) = *(*(v85 + 56) + 4 * v93);
LABEL_65:
      *&v205 = 0x7061724765726977;
      *(&v205 + 1) = 0xE900000000000068;
      *&v206 = 0x6D61726170;
      *(&v206 + 1) = 0xE500000000000000;
      sub_1A93820F4();
      v96 = sub_1A957CCD8();
      MEMORY[0x1AC585140](v96);

      MEMORY[0x1AC585140](32, 0xE100000000000000);
      LODWORD(v206) = v95;
      v97 = sub_1A957D3A8();
      MEMORY[0x1AC585140](v97);

      MEMORY[0x1AC585140](32, 0xE100000000000000);
      MEMORY[0x1AC585140](v84, v83);

      MEMORY[0x1AC585140](2112288, 0xE300000000000000);
      MEMORY[0x1AC585140](v86, v38);
      MEMORY[0x1AC585140](2592, 0xE200000000000000);
      v71 = *(&v205 + 1);
      v98 = v205;
      v22 = v195;
      if (*(v195 + 16) && (sub_1A937A490(v86, v38), (v99 & 1) != 0))
      {

        v70 = v98;
      }

      else
      {
        *&v205 = 0x206D61726170;
        *(&v205 + 1) = 0xE600000000000000;
        LODWORD(v206) = v95;
        v100 = sub_1A957D3A8();
        MEMORY[0x1AC585140](v100);

        if ((v189 & 1) == 0)
        {
          v204 = v187;
          *&v206 = 32;
          *(&v206 + 1) = 0xE100000000000000;
          v101 = off_1F1CFBCE0();
          MEMORY[0x1AC585140](v101);

          MEMORY[0x1AC585140](v206, *(&v206 + 1));
        }

        v69 = swift_isUniquelyReferenced_nonNull_native();
        *&v206 = v195;
        sub_1A944FDD4(v95, v86, v38, v69);

        v22 = v206;
        v206 = v205;

        MEMORY[0x1AC585140](10, 0xE100000000000000);

        MEMORY[0x1AC585140](v98, v71);

        v71 = *(&v206 + 1);
        v70 = v206;
      }

LABEL_45:
      v66 &= v66 - 1;
      MEMORY[0x1AC585140](v70, v71);

      v17 = v192;
      v67 = v177;
      v63 = v179;
      goto LABEL_46;
    }
  }

  v102 = v210;

  sub_1A9450AF4(v208);
  v103 = 0;
  v104 = v102 + 64;
  v176 = v102 + 64;
  v178 = v102;
  v105 = 1 << *(v102 + 32);
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  else
  {
    v106 = -1;
  }

  v107 = v106 & *(v102 + 64);
  v108 = (v105 + 63) >> 6;
  v175 = v108;
  while (2)
  {
    if (v107)
    {
      v193 = v17;
LABEL_82:
      v114 = __clz(__rbit64(v107)) | (v103 << 6);
      v115 = *(*(v178 + 48) + 4 * v114);
      v116 = *(v178 + 56) + 40 * v114;
      v117 = *v116;
      v118 = *(v116 + 8);
      v184 = *(v116 + 16);
      v186 = *(v116 + 20);
      v182 = *(v116 + 23);
      v180 = *(v116 + 21);
      v119 = *(v116 + 16);
      v120 = *(v116 + 24);
      v121 = *(v116 + 32) | (*(v116 + 36) << 32);
      v122 = *(v116 + 37);
      *&v205 = 40;
      *(&v205 + 1) = 0xE100000000000000;
      v123 = v117;
      sub_1A9327228();
      MEMORY[0x1AC585140](v34, *(&v34 + 1));
      MEMORY[0x1AC585140](32, 0xE100000000000000);
      *&v206 = v115;
      v124 = sub_1A957D3A8();
      MEMORY[0x1AC585140](v124);

      MEMORY[0x1AC585140](41, 0xE100000000000000);
      v188 = v205;
      if (v122)
      {
        if (v118)
        {
          v17 = v193;

          v125 = v123;
          v126 = *(v193 + 16);
          if (!v126)
          {
LABEL_93:
            v134 = v126 + v171;
            if (__OFADD__(v126, v171))
            {
              goto LABEL_128;
            }

            if ((v134 & 0x8000000000000000) != 0)
            {
              goto LABEL_129;
            }

            if (HIDWORD(v134))
            {
              goto LABEL_130;
            }

            goto LABEL_96;
          }
        }

        else
        {
          v205 = v34;

          v17 = v193;

          MEMORY[0x1AC585140](46, 0xE100000000000000);
          MEMORY[0x1AC585140](0x79747265706F7270, 0xE800000000000000);
          MEMORY[0x1AC585140](46, 0xE100000000000000);
          *&v206 = v115;
          v131 = sub_1A957D3A8();
          MEMORY[0x1AC585140](v131);

          v118 = *(&v205 + 1);
          v125 = v205;
          v126 = *(v193 + 16);
          if (!v126)
          {
            goto LABEL_93;
          }
        }

        v132 = sub_1A937A490(v125, v118);
        if ((v133 & 1) == 0)
        {
          v126 = *(v17 + 16);
          goto LABEL_93;
        }

        LODWORD(v134) = *(*(v17 + 56) + 4 * v132);
LABEL_96:
        *&v205 = 0;
        *(&v205 + 1) = 0xE000000000000000;
        sub_1A957CF08();

        *&v205 = 0x7061724765726977;
        *(&v205 + 1) = 0xE900000000000068;
        *&v206 = 0x79747265706F7270;
        *(&v206 + 1) = 0xE800000000000000;
        sub_1A93820F4();
        v135 = sub_1A957CCD8();
        MEMORY[0x1AC585140](v135);

        MEMORY[0x1AC585140](32, 0xE100000000000000);
        LODWORD(v206) = v134;
        v136 = sub_1A957D3A8();
        MEMORY[0x1AC585140](v136);

        MEMORY[0x1AC585140](32, 0xE100000000000000);
        MEMORY[0x1AC585140](v188, *(&v188 + 1));

        MEMORY[0x1AC585140](2112288, 0xE300000000000000);
        MEMORY[0x1AC585140](v125, v118);
        MEMORY[0x1AC585140](2592, 0xE200000000000000);
        v112 = *(&v205 + 1);
        v38 = v205;
        if (*(v17 + 16) && (sub_1A937A490(v125, v118), (v137 & 1) != 0))
        {

          v111 = v38;
        }

        else
        {
          *&v205 = 0x79747265706F7270;
          *(&v205 + 1) = 0xE900000000000020;
          LODWORD(v206) = v134;
          v138 = sub_1A957D3A8();
          MEMORY[0x1AC585140](v138);

          if ((v186 & 1) == 0)
          {
            v204 = v184;
            *&v206 = 32;
            *(&v206 + 1) = 0xE100000000000000;
            v139 = off_1F1CFBD08(MEMORY[0x1E69E7668]);
            MEMORY[0x1AC585140](v139);

            MEMORY[0x1AC585140](v206, *(&v206 + 1));
          }

          v109 = swift_isUniquelyReferenced_nonNull_native();
          *&v206 = v17;
          sub_1A944FDD4(v134, v125, v118, v109);

          v110 = v206;
          v206 = v205;

          MEMORY[0x1AC585140](10, 0xE100000000000000);

          MEMORY[0x1AC585140](v38, v112);

          v112 = *(&v206 + 1);
          v111 = v206;
          v17 = v110;
        }
      }

      else
      {
        v127 = *(v197 + 16);

        if (!v127 || (sub_1A937A490(v123, v118), (v128 & 1) == 0))
        {
          *&v205 = 0xD000000000000011;
          *(&v205 + 1) = 0x80000001A95C3090;
          v160 = v123;
          v161 = v118;
          goto LABEL_141;
        }

        v38 = v184;
        *&v205 = 1701996919;
        *(&v205 + 1) = 0xE400000000000000;
        *&v206 = 0x79747265706F7270;
        *(&v206 + 1) = 0xE800000000000000;
        sub_1A93820F4();
        v129 = sub_1A957CCD8();
        MEMORY[0x1AC585140](v129);

        MEMORY[0x1AC585140](10272, 0xE200000000000000);
        v206 = v196;

        MEMORY[0x1AC585140](v123, v118);
        sub_1A9328CAC();
        MEMORY[0x1AC585140](v206, *(&v206 + 1));

        MEMORY[0x1AC585140](32, 0xE100000000000000);
        LODWORD(v206) = v184;
        v130 = sub_1A957D3A8();
        MEMORY[0x1AC585140](v130);

        MEMORY[0x1AC585140](8233, 0xE200000000000000);
        MEMORY[0x1AC585140](v188, *(&v188 + 1));

        MEMORY[0x1AC585140](10, 0xE100000000000000);
        v17 = v193;

        v112 = *(&v205 + 1);
        v111 = v205;
      }

      v107 &= v107 - 1;
      MEMORY[0x1AC585140](v111, v112);

      v22 = v195;
      v108 = v175;
      v104 = v176;
      continue;
    }

    break;
  }

  while (1)
  {
    v113 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      break;
    }

    if (v113 >= v108)
    {

      v21 = v169;
      v6 = v171;
      goto LABEL_11;
    }

    v107 = *(v104 + 8 * v113);
    ++v103;
    if (v107)
    {
      v193 = v17;
      v103 = v113;
      goto LABEL_82;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:

  v190 = v166;
LABEL_118:
  *&v208[0] = 0;
  *(&v208[0] + 1) = 0xE000000000000000;
  sub_1A957CF08();

  *&v208[0] = 0x2065726977;
  *(&v208[0] + 1) = 0xE500000000000000;
  MEMORY[0x1AC585140](v190, v38);

  MEMORY[0x1AC585140](0xD000000000000027, 0x80000001A95C2F90);
  MEMORY[0x1AC585140](*&v208[0], *(&v208[0] + 1));

  (*(*v165 + 272))(v202, v203);
  return sub_1A944D51C();
}

uint64_t sub_1A944D51C()
{
  v1 = sub_1A957BA58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v165 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v156 - v8;
  v169 = v0;
  v10 = sub_1A944AC6C();
  v11 = sub_1A94506C0(MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 16);
  v161 = v1;
  v166 = v2;
  if (!v12)
  {
LABEL_55:

    (*(*v169 + 296))(v11);
    v82 = sub_1A944AC6C();
    v163 = sub_1A94507A0(MEMORY[0x1E69E7CC0]);
    v83 = *(v82 + 16);
    v84 = v165;
    if (v83)
    {
      v85 = 0;
      v86 = v166;
      v87 = v82 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
      v162 = (v166 + 8);
      v160 = v82;
      v159 = v83;
      v158 = v87;
      v157 = v166 + 16;
      do
      {
        if (v85 >= *(v82 + 16))
        {
          goto LABEL_120;
        }

        (*(v86 + 16))(v84, v87 + *(v86 + 72) * v85, v1);
        v88._countAndFlagsBits = sub_1A957BA38();
        TTSAudioEffect.init(rawValue:)(v88);
        if (v184 == 2)
        {
          (*v162)(v84, v1);
        }

        else
        {
          v177 = v184 & 1;
          TTSAudioEffect.spec.getter(&v171);
          v89 = v176;
          v183 = v176;
          v180 = v173;
          v181 = v174;
          v182 = v175;
          v178 = v171;
          v179 = v172;

          sub_1A94509C8(&v178);
          v90 = sub_1A957BA28();
          v91 = 0;
          v93 = v90 + 64;
          v92 = *(v90 + 64);
          v168 = v90;
          v94 = 1 << *(v90 + 32);
          if (v94 < 64)
          {
            v95 = ~(-1 << v94);
          }

          else
          {
            v95 = -1;
          }

          v96 = v95 & v92;
          v97 = (v94 + 63) >> 6;
          v167 = v85;
          while (v96)
          {
            v99 = v91;
LABEL_72:
            v100 = __clz(__rbit64(v96)) | (v99 << 6);
            v101 = (v168[6] + 16 * v100);
            v102 = *v101;
            v103 = v101[1];
            v104 = *(v168[7] + 4 * v100);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v171 = v89;
            v106 = sub_1A937A490(v102, v103);
            v108 = v89;
            v109 = *(v89 + 16);
            v110 = (v107 & 1) == 0;
            v44 = __OFADD__(v109, v110);
            v111 = v109 + v110;
            if (v44)
            {
              goto LABEL_115;
            }

            v112 = v107;
            if (*(v108 + 24) >= v111)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v117 = v106;
                sub_1A944FF38();
                v106 = v117;
              }
            }

            else
            {
              sub_1A944F3C0(v111, isUniquelyReferenced_nonNull_native);
              v106 = sub_1A937A490(v102, v103);
              if ((v112 & 1) != (v113 & 1))
              {
                goto LABEL_126;
              }
            }

            v96 &= v96 - 1;
            if (v112)
            {
              v98 = v106;

              v89 = v171;
              *(*(v171 + 56) + 4 * v98) = v104;
            }

            else
            {
              v89 = v171;
              *(v171 + 8 * (v106 >> 6) + 64) |= 1 << v106;
              v114 = (*(v89 + 48) + 16 * v106);
              *v114 = v102;
              v114[1] = v103;
              *(*(v89 + 56) + 4 * v106) = v104;
              v115 = *(v89 + 16);
              v44 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v44)
              {
                goto LABEL_119;
              }

              *(v89 + 16) = v116;
            }

            v91 = v99;
            v85 = v167;
          }

          while (1)
          {
            v99 = v91 + 1;
            if (__OFADD__(v91, 1))
            {
              goto LABEL_110;
            }

            if (v99 >= v97)
            {
              break;
            }

            v96 = *(v93 + 8 * v99);
            ++v91;
            if (v96)
            {
              goto LABEL_72;
            }
          }

          v118 = v89 + 64;
          v119 = 1 << *(v89 + 32);
          if (v119 < 64)
          {
            v120 = ~(-1 << v119);
          }

          else
          {
            v120 = -1;
          }

          v121 = v120 & *(v89 + 64);
          v122 = v163;

          swift_beginAccess();
          v123 = 0;
          v124 = (v119 + 63) >> 6;
          v168 = v122;
          v84 = v165;
          v164 = v89;
          while (v121)
          {
            v125 = v121;
LABEL_91:
            v127 = v169[17];
            if (v85 >= *(v127 + 16))
            {
              goto LABEL_116;
            }

            v121 = (v125 - 1) & v125;
            v128 = *(v127 + 8 * v85 + 32);
            if (*(v128 + 16))
            {
              v129 = __clz(__rbit64(v125)) | (v123 << 6);
              v130 = *(v89 + 56);
              v131 = (*(v89 + 48) + 16 * v129);
              v132 = *v131;
              v133 = v131[1];
              v134 = *(v130 + 4 * v129);

              v135 = sub_1A937A490(v132, v133);
              v137 = v136;

              if (v137)
              {
                LODWORD(v156) = v134;
                v138 = *(*(v128 + 56) + 4 * v135);

                v139 = v168;
                v140 = swift_isUniquelyReferenced_nonNull_native();
                *&v171 = v139;
                v141 = sub_1A937BEE0(v138);
                v143 = v139[2];
                v144 = (v142 & 1) == 0;
                v44 = __OFADD__(v143, v144);
                v145 = v143 + v144;
                if (v44)
                {
                  goto LABEL_123;
                }

                v146 = v142;
                if (v139[3] >= v145)
                {
                  if ((v140 & 1) == 0)
                  {
                    v152 = v141;
                    sub_1A94500A0();
                    v141 = v152;
                  }
                }

                else
                {
                  sub_1A944F660(v145, v140);
                  v141 = sub_1A937BEE0(v138);
                  if ((v146 & 1) != (v147 & 1))
                  {
                    goto LABEL_127;
                  }
                }

                v148 = v156;
                v168 = v171;
                if (v146)
                {
                  *(*(v171 + 56) + 4 * v141) = v156;
                }

                else
                {
                  v149 = v168;
                  *(v171 + 8 * (v141 >> 6) + 64) |= 1 << v141;
                  *(v149[6] + 4 * v141) = v138;
                  *(v149[7] + 4 * v141) = v148;
                  v150 = v149[2];
                  v44 = __OFADD__(v150, 1);
                  v151 = v150 + 1;
                  if (v44)
                  {
                    goto LABEL_125;
                  }

                  v149[2] = v151;
                }
              }

              else
              {
              }

              v84 = v165;
              v89 = v164;
            }
          }

          while (1)
          {
            v126 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              goto LABEL_111;
            }

            if (v126 >= v124)
            {
              break;
            }

            v125 = *(v118 + 8 * v126);
            ++v123;
            if (v125)
            {
              v123 = v126;
              goto LABEL_91;
            }
          }

          v1 = v161;
          (*v162)(v84, v161);

          v163 = v168;
          v82 = v160;
          v83 = v159;
          v87 = v158;
        }

        ++v85;
        v86 = v166;
      }

      while (v85 != v83);
    }

    v153 = v169;
    v154 = (*(*v169 + 320))(v163);
    return (*(*v153 + 408))(v154);
  }

  v13 = 0;
  v14 = 0;
  v15 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v163 = (v2 + 8);
  v160 = v9;
  v159 = v10;
  v158 = v12;
  v157 = v15;
  v156 = v2 + 16;
  while (1)
  {
    if (v13 >= *(v10 + 16))
    {
      goto LABEL_118;
    }

    v168 = v14;
    (*(v2 + 16))(v9, v15 + *(v2 + 72) * v13, v1);
    v16._countAndFlagsBits = sub_1A957BA38();
    TTSAudioEffect.init(rawValue:)(v16);
    if (v170 != 2)
    {
      break;
    }

    (*v163)(v9, v1);
    v14 = v168;
LABEL_4:
    ++v13;
    v2 = v166;
    if (v13 == v12)
    {
      goto LABEL_55;
    }
  }

  v162 = v13;
  v164 = v11;
  v184 = v170 & 1;
  TTSAudioEffect.spec.getter(&v171);
  v181 = v174;
  v182 = v175;
  v183 = v176;
  v178 = v171;
  v179 = v172;
  v180 = v173;
  v17 = *(&v175 + 1);

  sub_1A94509C8(&v178);
  v18 = sub_1A957BA18();
  v19 = 0;
  v21 = v18 + 64;
  v20 = *(v18 + 64);
  v167 = v18;
  v22 = 1 << *(v18 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  if ((v23 & v20) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  while (1)
  {
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      v46 = v17 + 64;
      v47 = 1 << *(v17 + 32);
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v49 = v48 & *(v17 + 64);
      v50 = v164;

      swift_beginAccess();
      v51 = 0;
      v52 = (v47 + 63) >> 6;
      v167 = v50;
      v1 = v161;
LABEL_31:
      v53 = v168;
      while (v49)
      {
        v54 = v49;
        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_113;
        }

LABEL_39:
        v56 = v169[16];
        if (v53 >= *(v56 + 16))
        {
          goto LABEL_114;
        }

        v49 = (v54 - 1) & v54;
        v57 = *(v56 + 8 * v53 + 32);
        if (*(v57 + 16))
        {
          v58 = __clz(__rbit64(v54)) | (v51 << 6);
          v59 = *(v17 + 56);
          v60 = v17;
          v61 = (*(v17 + 48) + 16 * v58);
          v62 = *v61;
          v63 = v61[1];
          v64 = *(v59 + 4 * v58);

          v65 = sub_1A937A490(v62, v63);
          v67 = v66;

          if (v67)
          {
            v68 = *(*(v57 + 56) + 4 * v65);

            v69 = v167;
            v70 = swift_isUniquelyReferenced_nonNull_native();
            *&v171 = v69;
            v71 = sub_1A937BEE0(v68);
            v73 = *(v69 + 16);
            v74 = (v72 & 1) == 0;
            v44 = __OFADD__(v73, v74);
            v75 = v73 + v74;
            if (v44)
            {
              goto LABEL_122;
            }

            v76 = v72;
            if (*(v69 + 24) >= v75)
            {
              if ((v70 & 1) == 0)
              {
                v81 = v71;
                sub_1A94501EC();
                v71 = v81;
              }
            }

            else
            {
              sub_1A944F8C8(v75, v70);
              v71 = sub_1A937BEE0(v68);
              if ((v76 & 1) != (v77 & 1))
              {
                goto LABEL_127;
              }
            }

            v17 = v60;
            v78 = v171;
            v167 = v171;
            if (v76)
            {
              *(*(v171 + 56) + 4 * v71) = v64;
            }

            else
            {
              *(v171 + 8 * (v71 >> 6) + 64) |= 1 << v71;
              *(v78[6] + 4 * v71) = v68;
              *(v78[7] + 4 * v71) = v64;
              v79 = v78[2];
              v44 = __OFADD__(v79, 1);
              v80 = v79 + 1;
              if (v44)
              {
                goto LABEL_124;
              }

              v78[2] = v80;
            }

            goto LABEL_31;
          }

          v53 = v168;
          v17 = v60;
        }
      }

      while (1)
      {
        v55 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_109;
        }

        if (v55 >= v52)
        {
          break;
        }

        v54 = *(v46 + 8 * v55);
        ++v51;
        if (v54)
        {
          v51 = v55;
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }

          goto LABEL_39;
        }
      }

      v9 = v160;
      (*v163)(v160, v1);

      v14 = (v168 + 1);
      if (__OFADD__(v168, 1))
      {
        goto LABEL_121;
      }

      v11 = v167;
      v10 = v159;
      v12 = v158;
      v13 = v162;
      v15 = v157;
      goto LABEL_4;
    }

    v24 = *(v21 + 8 * v26);
    ++v19;
    if (v24)
    {
      while (1)
      {
        v27 = __clz(__rbit64(v24)) | (v26 << 6);
        v28 = (*(v167 + 48) + 16 * v27);
        v29 = *v28;
        v30 = v28[1];
        v31 = *(*(v167 + 56) + 4 * v27);

        v32 = swift_isUniquelyReferenced_nonNull_native();
        *&v171 = v17;
        v34 = sub_1A937A490(v29, v30);
        v35 = v17;
        v36 = *(v17 + 16);
        v37 = (v33 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_112;
        }

        v39 = v33;
        if (*(v35 + 24) >= v38)
        {
          if ((v32 & 1) == 0)
          {
            sub_1A9450338();
          }
        }

        else
        {
          sub_1A944FB30(v38, v32);
          v40 = sub_1A937A490(v29, v30);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_126;
          }

          v34 = v40;
        }

        v24 &= v24 - 1;
        if (v39)
        {
          break;
        }

        v17 = v171;
        *(v171 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v42 = (*(v17 + 48) + 16 * v34);
        *v42 = v29;
        v42[1] = v30;
        *(*(v17 + 56) + 4 * v34) = v31;
        v43 = *(v17 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_117;
        }

        *(v17 + 16) = v45;
        v19 = v26;
        if (!v24)
        {
          goto LABEL_14;
        }

LABEL_13:
        v26 = v19;
      }

      v17 = v171;
      *(*(v171 + 56) + 4 * v34) = v31;
      v19 = v26;
      if (v24)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
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
  sub_1A957D438();
  __break(1u);
LABEL_127:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

void *sub_1A944E320()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

void sub_1A944E364(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

void sub_1A944E3FC()
{
  v17 = (*(*v0 + 384))();
  if (v17)
  {
    v1 = (*(*v0 + 288))();
    v2 = v1;
    v3 = 0;
    v4 = v1 + 64;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    v16 = xmmword_1A9587160;
    while (v7)
    {
LABEL_10:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = (v3 << 8) | (4 * v10);
      v12 = AudioUnitSetParameter([v17 audioUnit], *(*(v2 + 48) + v11), 0, 0, *(*(v2 + 56) + v11), 4u);
      if (v12 != sub_1A957BE28())
      {
        v13 = AXTTSLogCommon();
        if (!v13)
        {
LABEL_18:
          __break(1u);
          return;
        }

        v14 = v13;
        sub_1A957CA78();
        sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
        v15 = swift_allocObject();
        *(v15 + 16) = v16;
        *(v15 + 56) = MEMORY[0x1E69E72F0];
        *(v15 + 64) = MEMORY[0x1E69E7358];
        *(v15 + 32) = v12;
        sub_1A957BC48();
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v9 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v9);
      ++v3;
      if (v7)
      {
        v3 = v9;
        goto LABEL_10;
      }
    }
  }
}

id sub_1A944E650()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  result = (*(*v0 + 384))();
  if (result)
  {
    goto LABEL_2;
  }

  v3 = (*(*v0 + 264))();
  if (!v4)
  {
    result = 0;
    goto LABEL_2;
  }

  v5 = v3;
  v6 = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v5;
  v9[4] = v6;
  aBlock[4] = sub_1A945087C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CED748;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v8 catchException:v10 error:aBlock];
  _Block_release(v10);
  if (v11)
  {
    v12 = aBlock[0];

    swift_beginAccess();
    v13 = *(v7 + 16);
    v14 = *(*v0 + 392);
    v15 = v13;
    v16 = v14(v13);
    (*(*v0 + 408))(v16);
    v17 = *(v7 + 16);
    v18 = v17;

    result = v17;
LABEL_2:
    v2 = *MEMORY[0x1E69E9840];
    return result;
  }

  v19 = aBlock[0];
  v20 = sub_1A957AEF8();

  swift_willThrow();

  result = AXTTSLogCommon();
  if (result)
  {
    v21 = result;

    sub_1A957CA78();
    sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A9587160;
    swift_getErrorValue();
    v23 = sub_1A957D478();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1A93B3A38();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_1A957BC48();

    result = 0;
    goto LABEL_2;
  }

  __break(1u);
  return result;
}

id sub_1A944E9D8(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  if (a2)
  {
    v12 = sub_1A957C0C8();
  }

  v3 = [v2 audioUnit];
  v4 = sub_1A944EBC8();
  v5 = AudioUnitSetProperty(v3, v4, 0, 0, &v12, 8u);
  result = sub_1A957BE28();
  if (v5 == result)
  {
    goto LABEL_6;
  }

  result = AXTTSLogCommon();
  if (result)
  {
    v7 = result;
    sub_1A957CA78();
    sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E72F0];
    *(v8 + 16) = xmmword_1A9587160;
    v10 = MEMORY[0x1E69E7358];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = v5;
    sub_1A957BC48();

LABEL_6:
    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A944EB3C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  v4 = *(v0 + 136);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  v7 = *(v0 + 168);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1A944EB9C()
{
  sub_1A944EB3C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A944EBC8()
{
  v0 = sub_1A957C168();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  sub_1A957C148();
  v6 = sub_1A957C108();
  v8 = v7;
  result = (*(v1 + 8))(v5, v0);
  if (v8 >> 60 != 15)
  {
    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_10;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (v13)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v14 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (v10)
    {
      if (__OFSUB__(HIDWORD(v6), v6))
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (HIDWORD(v6) - v6 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (BYTE6(v8) != 4)
    {
      goto LABEL_10;
    }

    sub_1A9450950(v6, v8);
    sub_1A94504A0(v6, v8, v6, v8, &v16);
LABEL_10:
    sub_1A945093C(v6, v8);
  }

  result = v16;
  if (HIDWORD(v16))
  {
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

unsigned __int8 *sub_1A944ED6C(unsigned __int8 *result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return result;
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a3);
    goto LABEL_12;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = v5;
LABEL_11:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (v5)
  {
    v9 = *a4;
    do
    {
      v10 = *result++;
      v9 = v10 | (v9 << 8);
      *a4 = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1A944EDE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_1A937BE84(v27, v14);
    sub_1A937BE84(v32, v14);
    sub_1A9450B48();
    v12 = sub_1A957C098();
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_1A94509C8(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_1A94509C8(v39);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

size_t sub_1A944EF6C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A944EF8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A944EF8C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB3876C8, &unk_1A958EB70);
  v10 = *(sub_1A957BA58() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1A957BA58() - 8);
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

void *sub_1A944F164(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB3876B0, &qword_1A958EB60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1A937829C(&qword_1EB3876B8, &qword_1A95970E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A944F298(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB3876A8, &qword_1A958EB58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A944F3C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB3876A0, &unk_1A9598930);
  v38 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A944F660(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387698, &qword_1A958EB50);
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      result = MEMORY[0x1AC586390](*(v8 + 40), v21, 4);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1A944F8C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387688, &qword_1A958EB40);
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      result = MEMORY[0x1AC586390](*(v8 + 40), v21, 4);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1A944FB30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387690, &qword_1A958EB48);
  v37 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1A944FDD4(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A944F3C0(v16, a4 & 1);
      v20 = *v5;
      result = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A944FF38();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void *sub_1A944FF38()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3876A0, &unk_1A9598930);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A94500A0()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387698, &qword_1A958EB50);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A94501EC()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387688, &qword_1A958EB40);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}